import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
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
import Seq.B008.C001
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
# A324900: Fully multiplicative with a(prime(k)) = Lucas(2*(k+1)) for k-th prime p, where Lucas(n) = A000032(n).

The programs for A324900, there is no canonical definition to state claims against.
-/

/-! ## A324900.P16002540896523018930

`∏{e}[A181821(n+1), A288219(2*#)]`
-/

namespace A324900.P16002540896523018930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A288219 (2 * Nat.factorization (f1 n).natAbs p)

end

end A324900.P16002540896523018930

/-! ## A324900.P17452956600454243888

`∏{e}[A181821(n+1)², A288219(#)]`
-/

namespace A324900.P17452956600454243888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A288219 (Nat.factorization (f1 n).natAbs p)

end

end A324900.P17452956600454243888

/-! ## A324900.P10019612387607517541

`A351348(A025487(n+1)*A046056(n+1))`
-/

namespace A324900.P10019612387607517541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351348 (A025487 (n + 1) * A046056 (n + 1)).toNat

end

end A324900.P10019612387607517541

/-!
# A324901: a(n) = A007895(A324900(n)).

The programs for A324901, there is no canonical definition to state claims against.
-/

/-! ## A324901.P649565103396182953

`A007895(A324900(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324901.P649565103396182953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A324900 (n + 1)).toNat

end

end A324901.P649565103396182953

/-! ## A324901.P11923953880356424750

`A007895(∏{e}[A181821(n+1)², A288219(#)])`
-/

namespace A324901.P11923953880356424750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A288219 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A324901.P11923953880356424750

/-! ## A324901.P9296071598052996035

`A007895(∏{e}[A181821(n+1), A288219(2*#)])`
-/

namespace A324901.P9296071598052996035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A288219 (2 * Nat.factorization (f1 n).natAbs p)).toNat

end

end A324901.P9296071598052996035

/-! ## A324901.P13936937050691930586

`A115572(A034891(n))+A104639(n+1)`
-/

namespace A324901.P13936937050691930586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115572 (A034891 n).toNat + A104639 (n + 1)

end

end A324901.P13936937050691930586

/-! ## A324901.P9056832305663484232

`A353334(n+1)+A257991(A208392(n+1))`
-/

namespace A324901.P9056832305663484232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353334 (n + 1) + A257991 (A208392 (n + 1)).toNat

end

end A324901.P9056832305663484232

/-!
# A324902: The 2-adic valuation of A318456(n), where A318456(n) = n OR (sigma(n)-n).

The programs for A324902, the canonical program `A324902.P6713213474126694737` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324902 has offset 1).

The definition of A324902 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318456, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324902.P3996164598414064573

`val(A318456(n+1), 2)`
-/

namespace A324902.P3996164598414064573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318456 (n + 1)).toNat 2

end

end A324902.P3996164598414064573

namespace A324902

/-- `val(A318456(n+1), 2)` -/
def P3996164598414064573.Spec : Prop :=
  ∀ n, (P3996164598414064573.a n : ℤ) = A324902 (n + 1)

end A324902

/-! ## A324902.P833215125663181928

`A324904(n+1)-A324903(n+1)`
-/

namespace A324902.P833215125663181928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324904 (n + 1) - A324903 (n + 1)

end

end A324902.P833215125663181928

namespace A324902

/-- `A324904(n+1)-A324903(n+1)` -/
def P833215125663181928.Spec : Prop :=
  ∀ n, P833215125663181928.a n = A324902 (n + 1)

theorem P833215125663181928.correct : P833215125663181928.Spec := by
  intro n
  simp only [A324902, Nat.add_sub_cancel, A324902.P833215125663181928.a, A324902.P6713213474126694737.a, A007814, A007814.P13537437864234730737.a, A318456, A318456.P17030501601055005383.f1, A318456.P17030501601055005383.a, A324903, A324903.P14499500524068216409.a, A324904, A324904.P9223201305748335672.a, A001511, A001511.P17146462531039486101.a, A017665, A017665.P1720905539505039507.f1, A017665.P1720905539505039507.a, A059841, A059841.P2666504972441551157.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324902

/-! ## A324902.P6713213474126694737

`A007814(A318456(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A324902

/-- `A007814(A318456(n+1))` -/
def P6713213474126694737.Spec : Prop :=
  ∀ n, P6713213474126694737.a n = A324902 (n + 1)

theorem P6713213474126694737.correct : P6713213474126694737.Spec := by
  intro n
  simp only [A324902, Nat.add_sub_cancel]

end A324902

/-! ## A324902.P4266749213246632538

`val(or(n+1, ∑{d}[n+1, #]), 2)`
-/

namespace A324902.P4266749213246632538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor (n + 1) (∑ d ∈ Nat.divisors (f1 n), d)) 2

end

end A324902.P4266749213246632538

namespace A324902

/-- `val(or(n+1, ∑{d}[n+1, #]), 2)` -/
def P4266749213246632538.Spec : Prop :=
  ∀ n, (P4266749213246632538.a n : ℤ) = A324902 (n + 1)

end A324902

/-! ## A324902.P10211097454016893893

`log2(gcd(and(n+1, -(n+1)), ∑{d}[n+1, #]))`
-/

namespace A324902.P10211097454016893893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))) ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) : ℝ)

end

end A324902.P10211097454016893893

namespace A324902

/-- `log2(gcd(and(n+1, -(n+1)), ∑{d}[n+1, #]))` -/
def P10211097454016893893.Spec : Prop :=
  ∀ n, P10211097454016893893.a n = (A324902 (n + 1) : ℝ)

end A324902

/-! ## A324902.P3851919228218016677

`val(A009194(n+1), 2)`
-/

namespace A324902.P3851919228218016677
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A009194 (n + 1)).toNat 2

end

end A324902.P3851919228218016677

namespace A324902

/-- `val(A009194(n+1), 2)` -/
def P3851919228218016677.Spec : Prop :=
  ∀ n, (P3851919228218016677.a n : ℤ) = A324902 (n + 1)

end A324902

/-! ## A324902.P13600416348096953698

`val(A074389(n+1), 2)`
-/

namespace A324902.P13600416348096953698
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A074389 (n + 1)).toNat 2

end

end A324902.P13600416348096953698

namespace A324902

/-- `val(A074389(n+1), 2)` -/
def P13600416348096953698.Spec : Prop :=
  ∀ n, (P13600416348096953698.a n : ℤ) = A324902 (n + 1)

end A324902

/-! ## A324902.P17935670681685500660

`val(A325632(n+1), 2)`
-/

namespace A324902.P17935670681685500660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A325632 (n + 1)).toNat 2

end

end A324902.P17935670681685500660

namespace A324902

/-- `val(A325632(n+1), 2)` -/
def P17935670681685500660.Spec : Prop :=
  ∀ n, (P17935670681685500660.a n : ℤ) = A324902 (n + 1)

end A324902

/-! ## A324902.P6967867798018329113

`val(A325633(n+1), 2)`
-/

namespace A324902.P6967867798018329113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A325633 (n + 1)).toNat 2

end

end A324902.P6967867798018329113

namespace A324902

/-- `val(A325633(n+1), 2)` -/
def P6967867798018329113.Spec : Prop :=
  ∀ n, (P6967867798018329113.a n : ℤ) = A324902 (n + 1)

end A324902

/-! ## A324902.P16010882326929076646

`val(A325634(n+1), 2)`
-/

namespace A324902.P16010882326929076646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A325634 (n + 1)).toNat 2

end

end A324902.P16010882326929076646

namespace A324902

/-- `val(A325634(n+1), 2)` -/
def P16010882326929076646.Spec : Prop :=
  ∀ n, (P16010882326929076646.a n : ℤ) = A324902 (n + 1)

end A324902

/-! ## A324902.P3379689143401047808

`val(A325640(n+1), 2)`
-/

namespace A324902.P3379689143401047808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A325640 (n + 1)).toNat 2

end

end A324902.P3379689143401047808

namespace A324902

/-- `val(A325640(n+1), 2)` -/
def P3379689143401047808.Spec : Prop :=
  ∀ n, (P3379689143401047808.a n : ℤ) = A324902 (n + 1)

end A324902

/-! ## A324902.P17002007410041880900

`val(A353666(n+1), 2)`
-/

namespace A324902.P17002007410041880900
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A353666 (n + 1)).toNat 2

end

end A324902.P17002007410041880900

namespace A324902

/-- `val(A353666(n+1), 2)` -/
def P17002007410041880900.Spec : Prop :=
  ∀ n, (P17002007410041880900.a n : ℤ) = A324902 (n + 1)

end A324902

/-! ## A324902.P3547037530763385711

`val(A353688(n+1), 2)`
-/

namespace A324902.P3547037530763385711
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A353688 (n + 1)).toNat 2

end

end A324902.P3547037530763385711

namespace A324902

/-- `val(A353688(n+1), 2)` -/
def P3547037530763385711.Spec : Prop :=
  ∀ n, (P3547037530763385711.a n : ℤ) = A324902 (n + 1)

end A324902

/-! ## A324902.P15775406931880921415

`val(A326062(2*(n+1)), 2)`
-/

namespace A324902.P15775406931880921415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A326062 (2 * (n + 1))).toNat 2

end

end A324902.P15775406931880921415

namespace A324902

/-- `val(A326062(2*(n+1)), 2)` -/
def P15775406931880921415.Spec : Prop :=
  ∀ n, (P15775406931880921415.a n : ℤ) = A324902 (n + 1)

end A324902

/-! ## A324902.P4440057548653603825

`val(gcd(n+1, A000203(n+1)), 2)`
-/

namespace A324902.P4440057548653603825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Int.gcd (n + 1 : ℤ) (A000203 (n + 1))) 2

end

end A324902.P4440057548653603825

namespace A324902

/-- `val(gcd(n+1, A000203(n+1)), 2)` -/
def P4440057548653603825.Spec : Prop :=
  ∀ n, (P4440057548653603825.a n : ℤ) = A324902 (n + 1)

end A324902

/-! ## A324902.P18103168577064912350

`log2(gcd(∑{d}[n+1, #]+1+n, A006519(n+1)))`
-/

namespace A324902.P18103168577064912350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d + 1 + n : ℕ) : ℤ) (A006519 (n + 1)) : ℝ)

end

end A324902.P18103168577064912350

namespace A324902

/-- `log2(gcd(∑{d}[n+1, #]+1+n, A006519(n+1)))` -/
def P18103168577064912350.Spec : Prop :=
  ∀ n, P18103168577064912350.a n = (A324902 (n + 1) : ℝ)

end A324902

/-! ## A324902.P8608857716930156055

`A324904(A152271(n))`
-/

namespace A324902.P8608857716930156055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324904 (A152271 n).toNat

end

end A324902.P8608857716930156055

namespace A324902

/-- `A324904(A152271(n))` -/
def P8608857716930156055.Spec : Prop :=
  ∀ n, P8608857716930156055.a n = A324902 (n + 1)

end A324902

/-! ## A324902.P1886288633232910684

`A007814(A009194(1+n))`
-/

namespace A324902.P1886288633232910684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A009194 (1 + n)).toNat

end

end A324902.P1886288633232910684

namespace A324902

/-- `A007814(A009194(1+n))` -/
def P1886288633232910684.Spec : Prop :=
  ∀ n, P1886288633232910684.a n = A324902 (n + 1)

end A324902

/-! ## A324902.P9262958284788423099

`A007814(A074389(n+1))`
-/

namespace A324902.P9262958284788423099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A074389 (n + 1)).toNat

end

end A324902.P9262958284788423099

namespace A324902

/-- `A007814(A074389(n+1))` -/
def P9262958284788423099.Spec : Prop :=
  ∀ n, P9262958284788423099.a n = A324902 (n + 1)

end A324902

/-! ## A324902.P17964170385376381874

`A007814(A325632(n+1))`
-/

namespace A324902.P17964170385376381874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A325632 (n + 1)).toNat

end

end A324902.P17964170385376381874

namespace A324902

/-- `A007814(A325632(n+1))` -/
def P17964170385376381874.Spec : Prop :=
  ∀ n, P17964170385376381874.a n = A324902 (n + 1)

end A324902

/-!
# A324903: a(n) = 1 if A007814(sigma(n)) > A007814(n), 0 otherwise. Here A007814(n) gives the 2-adic valuation of n.

The programs for A324903, the canonical program `A324903.P14499500524068216409` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324903 has offset 1).

The definition of A324903 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A017665, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324903.P11815653606424839497

`A361023(2*(n+1))`
-/

namespace A324903.P11815653606424839497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361023 (2 * (n + 1))

end

end A324903.P11815653606424839497

namespace A324903

/-- `A361023(2*(n+1))` -/
def P11815653606424839497.Spec : Prop :=
  ∀ n, P11815653606424839497.a n = A324903 (n + 1)

end A324903

/-! ## A324903.P9757016463603190244

`A324904(n+1)-A324902(n+1)`
-/

namespace A324903.P9757016463603190244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324904 (n + 1) - A324902 (n + 1)

end

end A324903.P9757016463603190244

namespace A324903

/-- `A324904(n+1)-A324902(n+1)` -/
def P9757016463603190244.Spec : Prop :=
  ∀ n, P9757016463603190244.a n = A324903 (n + 1)

theorem P9757016463603190244.correct : P9757016463603190244.Spec := by
  intro n
  simp only [A324903, Nat.add_sub_cancel, A324903.P9757016463603190244.a, A324903.P14499500524068216409.a, A017665, A017665.P1720905539505039507.f1, A017665.P1720905539505039507.a, A059841, A059841.P2666504972441551157.a, A324902, A324902.P6713213474126694737.a, A324904, A324904.P9223201305748335672.a, A007814, A007814.P13537437864234730737.a, A318456, A318456.P17030501601055005383.f1, A318456.P17030501601055005383.a, A001511, A001511.P17146462531039486101.a, A006519, A006519.P10435570611646570274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324903

/-! ## A324903.P7016418775981213562

`A361023(n+1)-A361024(n+1)`
-/

namespace A324903.P7016418775981213562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361023 (n + 1) - A361024 (n + 1)

end

end A324903.P7016418775981213562

namespace A324903

/-- `A361023(n+1)-A361024(n+1)` -/
def P7016418775981213562.Spec : Prop :=
  ∀ n, P7016418775981213562.a n = A324903 (n + 1)

theorem P7016418775981213562.correct : P7016418775981213562.Spec := by
  intro n
  simp only [A324903, Nat.add_sub_cancel, A324903.P7016418775981213562.a, A324903.P14499500524068216409.a, A017665, A017665.P1720905539505039507.f1, A017665.P1720905539505039507.a, A059841, A059841.P2666504972441551157.a, A361023, A361023.P14930666905499730848.a, A361024, A361024.P7432656464654402567.a, A000035, A000035.P2023072528413494694.a, A017666, A017666.P11271370801176685649.f1, A017666.P11271370801176685649.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324903

/-! ## A324903.P8608852061207204977

`A324902(2*(n+1))-A324902(n+1)`
-/

namespace A324903.P8608852061207204977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324902 (2 * (n + 1)) - A324902 (n + 1)

end

end A324903.P8608852061207204977

namespace A324903

/-- `A324902(2*(n+1))-A324902(n+1)` -/
def P8608852061207204977.Spec : Prop :=
  ∀ n, P8608852061207204977.a n = A324903 (n + 1)

end A324903

/-! ## A324903.P5435864192965394041

`A169813(A325635(n+1)/A325634(n+1))`
-/

namespace A324903.P5435864192965394041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169813 (SequenceMachineLib.roundAway ((A325635 (n + 1) : ℚ) / (A325634 (n + 1) : ℚ))).toNat

end

end A324903.P5435864192965394041

namespace A324903

/-- `A169813(A325635(n+1)/A325634(n+1))` -/
def P5435864192965394041.Spec : Prop :=
  ∀ n, P5435864192965394041.a n = A324903 (n + 1)

end A324903

/-! ## A324903.P11232517892337836704

`A059841(A098987(n+1))`
-/

namespace A324903.P11232517892337836704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A098987 (n + 1)).toNat

end

end A324903.P11232517892337836704

namespace A324903

/-- `A059841(A098987(n+1))` -/
def P11232517892337836704.Spec : Prop :=
  ∀ n, P11232517892337836704.a n = A324903 (n + 1)

end A324903

/-! ## A324903.P14499500524068216409

`A059841(A017665(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A324903

/-- `A059841(A017665(n+1))` -/
def P14499500524068216409.Spec : Prop :=
  ∀ n, P14499500524068216409.a n = A324903 (n + 1)

theorem P14499500524068216409.correct : P14499500524068216409.Spec := by
  intro n
  simp only [A324903, Nat.add_sub_cancel]

end A324903

/-! ## A324903.P1752615136355570439

`A324883(A005940(1+n+1))`
-/

namespace A324903.P1752615136355570439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324883 (A005940 (1 + (n + 1))).toNat

end

end A324903.P1752615136355570439

namespace A324903

/-- `A324883(A005940(1+n+1))` -/
def P1752615136355570439.Spec : Prop :=
  ∀ n, P1752615136355570439.a n = A324903 (n + 1)

end A324903

/-! ## A324903.P11578546334058140902

`A000035(A249670(n+1)+A017666(n+1))`
-/

namespace A324903.P11578546334058140902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A249670 (n + 1) + A017666 (n + 1)).toNat

end

end A324903.P11578546334058140902

namespace A324903

/-- `A000035(A249670(n+1)+A017666(n+1))` -/
def P11578546334058140902.Spec : Prop :=
  ∀ n, P11578546334058140902.a n = A324903 (n + 1)

end A324903

/-! ## A324903.P219511415428960716

`A378996(n+1)%2`
-/

namespace A324903.P219511415428960716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A378996 (n + 1)) 2

end

end A324903.P219511415428960716

namespace A324903

/-- `A378996(n+1)%2` -/
def P219511415428960716.Spec : Prop :=
  ∀ n, P219511415428960716.a n = A324903 (n + 1)

end A324903

/-! ## A324903.P3561824035625366324

`(A353668(n+1)+1)%2`
-/

namespace A324903.P3561824035625366324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A353668 (n + 1) + 1) 2

end

end A324903.P3561824035625366324

namespace A324903

/-- `(A353668(n+1)+1)%2` -/
def P3561824035625366324.Spec : Prop :=
  ∀ n, P3561824035625366324.a n = A324903 (n + 1)

end A324903

/-! ## A324903.P14563419304150349386

`A121262(2*A017665(n+1))`
-/

namespace A324903.P14563419304150349386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (2 * A017665 (n + 1)).toNat

end

end A324903.P14563419304150349386

namespace A324903

/-- `A121262(2*A017665(n+1))` -/
def P14563419304150349386.Spec : Prop :=
  ∀ n, P14563419304150349386.a n = A324903 (n + 1)

end A324903

/-! ## A324903.P328325536835295519

`A152822(2*A017665(n+1))`
-/

namespace A324903.P328325536835295519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152822 (2 * A017665 (n + 1)).toNat

end

end A324903.P328325536835295519

namespace A324903

/-- `A152822(2*A017665(n+1))` -/
def P328325536835295519.Spec : Prop :=
  ∀ n, P328325536835295519.a n = A324903 (n + 1)

end A324903

/-! ## A324903.P4373740857977424366

`A121262(2*A098987(n+1))`
-/

namespace A324903.P4373740857977424366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (2 * A098987 (n + 1)).toNat

end

end A324903.P4373740857977424366

namespace A324903

/-- `A121262(2*A098987(n+1))` -/
def P4373740857977424366.Spec : Prop :=
  ∀ n, P4373740857977424366.a n = A324903 (n + 1)

end A324903

/-! ## A324903.P14376079281124125888

`and(A043545(n), A378996(n+1))`
-/

namespace A324903.P14376079281124125888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A043545 n) (A378996 (n + 1))

end

end A324903.P14376079281124125888

namespace A324903

/-- `and(A043545(n), A378996(n+1))` -/
def P14376079281124125888.Spec : Prop :=
  ∀ n, P14376079281124125888.a n = A324903 (n + 1)

end A324903

/-! ## A324903.P15534154988445588512

`and(A057427(n), A378996(n+1))`
-/

namespace A324903.P15534154988445588512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057427 n) (A378996 (n + 1))

end

end A324903.P15534154988445588512

namespace A324903

/-- `and(A057427(n), A378996(n+1))` -/
def P15534154988445588512.Spec : Prop :=
  ∀ n, P15534154988445588512.a n = A324903 (n + 1)

end A324903

/-! ## A324903.P2767571180423828971

`and(A060576(n), A378996(n+1))`
-/

namespace A324903.P2767571180423828971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A060576 n) (A378996 (n + 1))

end

end A324903.P2767571180423828971

namespace A324903

/-- `and(A060576(n), A378996(n+1))` -/
def P2767571180423828971.Spec : Prop :=
  ∀ n, P2767571180423828971.a n = A324903 (n + 1)

end A324903

/-! ## A324903.P7973860438699990355

`and(A157928(n), A378996(n+1))`
-/

namespace A324903.P7973860438699990355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157928 n) (A378996 (n + 1))

end

end A324903.P7973860438699990355

namespace A324903

/-- `and(A157928(n), A378996(n+1))` -/
def P7973860438699990355.Spec : Prop :=
  ∀ n, P7973860438699990355.a n = A324903 (n + 1)

end A324903

/-! ## A324903.P11351483121550291138

`A020639(A017665(n+1)+1)%2`
-/

namespace A324903.P11351483121550291138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A017665 (n + 1) + 1).toNat) 2

end

end A324903.P11351483121550291138

namespace A324903

/-- `A020639(A017665(n+1)+1)%2` -/
def P11351483121550291138.Spec : Prop :=
  ∀ n, P11351483121550291138.a n = A324903 (n + 1)

end A324903

/-! ## A324903.P17088219080237138157

`A327041(and(1, A017665(n+1)-1))`
-/

namespace A324903.P17088219080237138157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327041 (Int.land 1 (A017665 (n + 1) - 1)).toNat

end

end A324903.P17088219080237138157

namespace A324903

/-- `A327041(and(1, A017665(n+1)-1))` -/
def P17088219080237138157.Spec : Prop :=
  ∀ n, P17088219080237138157.a n = A324903 (n + 1)

end A324903

/-!
# A324904: The 2-adic valuation of A318466(n), where A318466(n) = 2*n OR sigma(n).

The programs for A324904, the canonical program `A324904.P9223201305748335672` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324904 has offset 1).

The definition of A324904 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324902, A324903, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324904.P7101959542502937412

`val(A318466(n+1), 2)`
-/

namespace A324904.P7101959542502937412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318466 (n + 1)).toNat 2

end

end A324904.P7101959542502937412

namespace A324904

/-- `val(A318466(n+1), 2)` -/
def P7101959542502937412.Spec : Prop :=
  ∀ n, (P7101959542502937412.a n : ℤ) = A324904 (n + 1)

end A324904

/-! ## A324904.P9223201305748335672

`A324902(n+1)+A324903(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A324904

/-- `A324902(n+1)+A324903(n+1)` -/
def P9223201305748335672.Spec : Prop :=
  ∀ n, P9223201305748335672.a n = A324904 (n + 1)

theorem P9223201305748335672.correct : P9223201305748335672.Spec := by
  intro n
  simp only [A324904, Nat.add_sub_cancel]

end A324904

/-! ## A324904.P8980671668643997837

`A007814(A318466(n+1))`
-/

namespace A324904.P8980671668643997837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A318466 (n + 1)).toNat

end

end A324904.P8980671668643997837

namespace A324904

/-- `A007814(A318466(n+1))` -/
def P8980671668643997837.Spec : Prop :=
  ∀ n, P8980671668643997837.a n = A324904 (n + 1)

end A324904

/-! ## A324904.P6947666817953913224

`val(gcd(2*(n+1), ∑{d}[n+1, #]), 2)`
-/

namespace A324904.P6947666817953913224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.gcd (2 * (n + 1)) (∑ d ∈ Nat.divisors (f1 n), d)) 2

end

end A324904.P6947666817953913224

namespace A324904

/-- `val(gcd(2*(n+1), ∑{d}[n+1, #]), 2)` -/
def P6947666817953913224.Spec : Prop :=
  ∀ n, (P6947666817953913224.a n : ℤ) = A324904 (n + 1)

end A324904

/-! ## A324904.P14121035732002796373

`val(or(2*(n+1), ∑{d}[n+1, #]), 2)`
-/

namespace A324904.P14121035732002796373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor (2 * (n + 1)) (∑ d ∈ Nat.divisors (f1 n), d)) 2

end

end A324904.P14121035732002796373

namespace A324904

/-- `val(or(2*(n+1), ∑{d}[n+1, #]), 2)` -/
def P14121035732002796373.Spec : Prop :=
  ∀ n, (P14121035732002796373.a n : ℤ) = A324904 (n + 1)

end A324904

/-! ## A324904.P9434310738729178333

`A324902(2*(n+1))`
-/

namespace A324904.P9434310738729178333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324902 (2 * (n + 1))

end

end A324904.P9434310738729178333

namespace A324904

/-- `A324902(2*(n+1))` -/
def P9434310738729178333.Spec : Prop :=
  ∀ n, P9434310738729178333.a n = A324904 (n + 1)

end A324904

/-! ## A324904.P205241709176473586

`val(A325635(n+1), 2)`
-/

namespace A324904.P205241709176473586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A325635 (n + 1)).toNat 2

end

end A324904.P205241709176473586

namespace A324904

/-- `val(A325635(n+1), 2)` -/
def P205241709176473586.Spec : Prop :=
  ∀ n, (P205241709176473586.a n : ℤ) = A324904 (n + 1)

end A324904

/-! ## A324904.P12847146240840680481

`val(A325636(n+1), 2)`
-/

namespace A324904.P12847146240840680481
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A325636 (n + 1)).toNat 2

end

end A324904.P12847146240840680481

namespace A324904

/-- `val(A325636(n+1), 2)` -/
def P12847146240840680481.Spec : Prop :=
  ∀ n, (P12847146240840680481.a n : ℤ) = A324904 (n + 1)

end A324904

/-! ## A324904.P12924463198058099162

`val(A378994(n+1), 2)`
-/

namespace A324904.P12924463198058099162
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A378994 (n + 1)).toNat 2

end

end A324904.P12924463198058099162

namespace A324904

/-- `val(A378994(n+1), 2)` -/
def P12924463198058099162.Spec : Prop :=
  ∀ n, (P12924463198058099162.a n : ℤ) = A324904 (n + 1)

end A324904

/-! ## A324904.P15097129004178383601

`val(A074389(2*(n+1)), 2)`
-/

namespace A324904.P15097129004178383601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A074389 (2 * (n + 1))).toNat 2

end

end A324904.P15097129004178383601

namespace A324904

/-- `val(A074389(2*(n+1)), 2)` -/
def P15097129004178383601.Spec : Prop :=
  ∀ n, (P15097129004178383601.a n : ℤ) = A324904 (n + 1)

end A324904

/-! ## A324904.P14497895590322321728

`val(A318456(2*(n+1)), 2)`
-/

namespace A324904.P14497895590322321728
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A318456 (2 * (n + 1))).toNat 2

end

end A324904.P14497895590322321728

namespace A324904

/-- `val(A318456(2*(n+1)), 2)` -/
def P14497895590322321728.Spec : Prop :=
  ∀ n, (P14497895590322321728.a n : ℤ) = A324904 (n + 1)

end A324904

/-! ## A324904.P4729129529400196052

`val(A325632(2*(n+1)), 2)`
-/

namespace A324904.P4729129529400196052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A325632 (2 * (n + 1))).toNat 2

end

end A324904.P4729129529400196052

namespace A324904

/-- `val(A325632(2*(n+1)), 2)` -/
def P4729129529400196052.Spec : Prop :=
  ∀ n, (P4729129529400196052.a n : ℤ) = A324904 (n + 1)

end A324904

/-! ## A324904.P12167825117575070647

`val(A325633(2*(n+1)), 2)`
-/

namespace A324904.P12167825117575070647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A325633 (2 * (n + 1))).toNat 2

end

end A324904.P12167825117575070647

namespace A324904

/-- `val(A325633(2*(n+1)), 2)` -/
def P12167825117575070647.Spec : Prop :=
  ∀ n, (P12167825117575070647.a n : ℤ) = A324904 (n + 1)

end A324904

/-! ## A324904.P4583733460670920465

`val(A325634(2*(n+1)), 2)`
-/

namespace A324904.P4583733460670920465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A325634 (2 * (n + 1))).toNat 2

end

end A324904.P4583733460670920465

namespace A324904

/-- `val(A325634(2*(n+1)), 2)` -/
def P4583733460670920465.Spec : Prop :=
  ∀ n, (P4583733460670920465.a n : ℤ) = A324904 (n + 1)

end A324904

/-! ## A324904.P7138355325324956604

`val(A325640(2*(n+1)), 2)`
-/

namespace A324904.P7138355325324956604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A325640 (2 * (n + 1))).toNat 2

end

end A324904.P7138355325324956604

namespace A324904

/-- `val(A325640(2*(n+1)), 2)` -/
def P7138355325324956604.Spec : Prop :=
  ∀ n, (P7138355325324956604.a n : ℤ) = A324904 (n + 1)

end A324904

/-! ## A324904.P13622309972477024469

`val(A353666(2*(n+1)), 2)`
-/

namespace A324904.P13622309972477024469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A353666 (2 * (n + 1))).toNat 2

end

end A324904.P13622309972477024469

namespace A324904

/-- `val(A353666(2*(n+1)), 2)` -/
def P13622309972477024469.Spec : Prop :=
  ∀ n, (P13622309972477024469.a n : ℤ) = A324904 (n + 1)

end A324904

/-! ## A324904.P10216261005299222389

`A007814(A378994(n+1))`
-/

namespace A324904.P10216261005299222389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A378994 (n + 1)).toNat

end

end A324904.P10216261005299222389

namespace A324904

/-- `A007814(A378994(n+1))` -/
def P10216261005299222389.Spec : Prop :=
  ∀ n, P10216261005299222389.a n = A324904 (n + 1)

end A324904

/-! ## A324904.P4385080001172902270

`A007814(A074389(2*(n+1)))`
-/

namespace A324904.P4385080001172902270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A074389 (2 * (n + 1))).toNat

end

end A324904.P4385080001172902270

namespace A324904

/-- `A007814(A074389(2*(n+1)))` -/
def P4385080001172902270.Spec : Prop :=
  ∀ n, P4385080001172902270.a n = A324904 (n + 1)

end A324904

/-! ## A324904.P17869243601115104119

`A007814(A325632(2*(n+1)))`
-/

namespace A324904.P17869243601115104119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A325632 (2 * (n + 1))).toNat

end

end A324904.P17869243601115104119

namespace A324904

/-- `A007814(A325632(2*(n+1)))` -/
def P17869243601115104119.Spec : Prop :=
  ∀ n, P17869243601115104119.a n = A324904 (n + 1)

end A324904

/-! ## A324904.P16119991121470458821

`A007814(A325633(2*(n+1)))`
-/

namespace A324904.P16119991121470458821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A325633 (2 * (n + 1))).toNat

end

end A324904.P16119991121470458821

namespace A324904

/-- `A007814(A325633(2*(n+1)))` -/
def P16119991121470458821.Spec : Prop :=
  ∀ n, P16119991121470458821.a n = A324904 (n + 1)

end A324904

/-!
# A324905: a(n) = A007895(A003965(n)).

The programs for A324905, there is no canonical definition to state claims against.
-/

/-! ## A324905.P11797482530895677312

`A007895(A003965(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A324905.P11797482530895677312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A003965 (n + 1)).toNat

end

end A324905.P11797482530895677312

/-! ## A324905.P12694501673384582093

`∑{e}[A277006(∑{d}[n+1, A003980(#)]), #]`
-/

namespace A324905.P12694501673384582093
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277006 (∑ d ∈ Nat.divisors (f2 n), A003980 d).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A324905.P12694501673384582093

/-! ## A324905.P15996785594603012727

`A007895(∑{d}[n+1, A003980(#)])`
-/

namespace A324905.P15996785594603012727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (∑ d ∈ Nat.divisors (f1 n), A003980 d).toNat

end

end A324905.P15996785594603012727

/-! ## A324905.P3957988204179426314

`A007895(∏{e}[A181821(n+1), A000045(#+2)])`
-/

namespace A324905.P3957988204179426314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p + 2)).toNat

end

end A324905.P3957988204179426314

/-! ## A324905.P698403656662560673

`∑{d}[n+1, A003980(#)]-A219641(A003965(n+1))`
-/

namespace A324905.P698403656662560673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003980 d - A219641 (A003965 (n + 1)).toNat

end

end A324905.P698403656662560673

/-! ## A324905.P16164510301987914470

`A007895(∑{d}[n+1, A008683(#)*A003981((n+1)/#)])`
-/

namespace A324905.P16164510301987914470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (∑ d ∈ Nat.divisors (f1 n), A008683 d * A003981 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat).toNat

end

end A324905.P16164510301987914470

/-! ## A324905.P16973091683519576508

`∑{d}[n+1, A003980(#)]-A219641(∑{d}[n+1, A003980(#)])`
-/

namespace A324905.P16973091683519576508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003980 d - A219641 (∑ d ∈ Nat.divisors (f2 n), A003980 d).toNat

end

end A324905.P16973091683519576508

/-!
# A324906: Number of trailing 1-bits in the binary representation of A318466(n), where A318466(n) = 2*n OR sigma(n).

The programs for A324906, the canonical program `A324906.P2435466228713464625` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324906 has offset 1).

The definition of A324906 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A318466, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324906.P12651288287692571235

`val(1+A318466(n+1), 2)`
-/

namespace A324906.P12651288287692571235
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (1 + A318466 (n + 1)).toNat 2

end

end A324906.P12651288287692571235

namespace A324906

/-- `val(1+A318466(n+1), 2)` -/
def P12651288287692571235.Spec : Prop :=
  ∀ n, (P12651288287692571235.a n : ℤ) = A324906 (n + 1)

end A324906

/-! ## A324906.P2435466228713464625

`A007814(1+A318466(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A324906

/-- `A007814(1+A318466(n+1))` -/
def P2435466228713464625.Spec : Prop :=
  ∀ n, P2435466228713464625.a n = A324906 (n + 1)

theorem P2435466228713464625.correct : P2435466228713464625.Spec := by
  intro n
  simp only [A324906, Nat.add_sub_cancel]

end A324906

/-! ## A324906.P15784634766324135500

`val(or(2*(n+1), ∑{d}[n+1, #])+1, 2)`
-/

namespace A324906.P15784634766324135500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.lor (2 * (n + 1)) (∑ d ∈ Nat.divisors (f1 n), d) + 1) 2

end

end A324906.P15784634766324135500

namespace A324906

/-- `val(or(2*(n+1), ∑{d}[n+1, #])+1, 2)` -/
def P15784634766324135500.Spec : Prop :=
  ∀ n, (P15784634766324135500.a n : ℤ) = A324906 (n + 1)

end A324906

/-! ## A324906.P6002679688924220983

`A001511(A318466(n+1)+1)-1`
-/

namespace A324906.P6002679688924220983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A318466 (n + 1) + 1).toNat - 1

end

end A324906.P6002679688924220983

namespace A324906

/-- `A001511(A318466(n+1)+1)-1` -/
def P6002679688924220983.Spec : Prop :=
  ∀ n, P6002679688924220983.a n = A324906 (n + 1)

theorem P6002679688924220983.correct : P6002679688924220983.Spec := by
  intro n
  simp only [A324906, Nat.add_sub_cancel, A324906.P6002679688924220983.a, A324906.P2435466228713464625.a, A001511, A001511.P17146462531039486101.a, A007814, A007814.P13537437864234730737.a, A318466, A318466.P1286881770202632453.f1, A318466.P1286881770202632453.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324906

/-! ## A324906.P14812732917430558630

`A007814(or(2*(n+1), A000203(n+1))+1)`
-/

namespace A324906.P14812732917430558630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (Int.lor (2 * (n + 1) : ℤ) (A000203 (n + 1)) + 1).toNat

end

end A324906.P14812732917430558630

namespace A324906

/-- `A007814(or(2*(n+1), A000203(n+1))+1)` -/
def P14812732917430558630.Spec : Prop :=
  ∀ n, P14812732917430558630.a n = A324906 (n + 1)

end A324906

/-! ## A324906.P7214477512193567129

`A050605(2*A318466(n+1))`
-/

namespace A324906.P7214477512193567129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (2 * A318466 (n + 1)).toNat

end

end A324906.P7214477512193567129

namespace A324906

/-- `A050605(2*A318466(n+1))` -/
def P7214477512193567129.Spec : Prop :=
  ∀ n, P7214477512193567129.a n = A324906 (n + 1)

end A324906

/-! ## A324906.P14400902642389411224

`A050605(A318466(n+1)+A318466(n+1)+1)`
-/

namespace A324906.P14400902642389411224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 (A318466 (n + 1) + (A318466 (n + 1) + 1)).toNat

end

end A324906.P14400902642389411224

namespace A324906

/-- `A050605(A318466(n+1)+A318466(n+1)+1)` -/
def P14400902642389411224.Spec : Prop :=
  ∀ n, P14400902642389411224.a n = A324906 (n + 1)

end A324906

/-!
# A324907: a(n) = A007895(A113175(n)).

The programs for A324907, there is no canonical definition to state claims against.
-/

/-! ## A324907.P14888224813317796379

`gcd(A252753(A325135(n+1)), A336702(n+1))`
-/

namespace A324907.P14888224813317796379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A252753 (A325135 (n + 1)).toNat) (A336702 (n + 1))

end

end A324907.P14888224813317796379

/-! ## A324907.P7888968387902341460

`A325135(n+1)%dr(A128364(n+1)+1)+1`
-/

namespace A324907.P7888968387902341460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325135 (n + 1)) (SequenceMachineLib.digitalRoot (A128364 (n + 1) + 1) : ℤ) + 1

end

end A324907.P7888968387902341460

/-! ## A324907.P10549775262521136369

`gcd(A000120(A300123(n+1)), A003963(n+1))`
-/

namespace A324907.P10549775262521136369
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000120 (A300123 (n + 1)).toNat) (A003963 (n + 1))

end

end A324907.P10549775262521136369

/-! ## A324907.P15752615186862488139

`and(A317174(n+1), A331295(n+1))`
-/

namespace A324907.P15752615186862488139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A317174 (n + 1)) (A331295 (n + 1))

end

end A324907.P15752615186862488139

/-! ## A324907.P6851641664472788140

`gcd(A031515(n+1), A325133(n+1))`
-/

namespace A324907.P6851641664472788140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A031515 (n + 1)) (A325133 (n + 1))

end

end A324907.P6851641664472788140

/-!
# A324908: a(n) = 1 if n is an odd number which is not a square, 0 otherwise.

The programs for A324908, the canonical program `A324908.P5093313347073934333` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324908 has offset 1).

The definition of A324908 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324908.P7927886926000550254

`A007814(1+A318458(n+1))`
-/

namespace A324908.P7927886926000550254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (1 + A318458 (n + 1)).toNat

end

end A324908.P7927886926000550254

namespace A324908

/-- `A007814(1+A318458(n+1))` -/
def P7927886926000550254.Spec : Prop :=
  ∀ n, P7927886926000550254.a n = A324908 (n + 1)

end A324908

/-! ## A324908.P5093313347073934333

`A000035(n+1)*(1-A010052(n+1))`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A324908

/-- `A000035(n+1)*(1-A010052(n+1))` -/
def P5093313347073934333.Spec : Prop :=
  ∀ n, P5093313347073934333.a n = A324908 (n + 1)

theorem P5093313347073934333.correct : P5093313347073934333.Spec := by
  intro n
  simp only [A324908, Nat.add_sub_cancel]

end A324908

/-! ## A324908.P9689203638020951885

`(n+1)%(2-Δ[floor(sqrt(n))])`
-/

namespace A324908.P9689203638020951885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A324908.P9689203638020951885

namespace A324908

/-- `(n+1)%(2-Δ[floor(sqrt(n))])` -/
def P9689203638020951885.Spec : Prop :=
  ∀ n, P9689203638020951885.a n = A324908 (n + 1)

end A324908

/-! ## A324908.P8121995448129659691

`gcd(n, 2-Δ[floor(sqrt(n))])-1`
-/

namespace A324908.P8121995448129659691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) : ℤ) - 1

end

end A324908.P8121995448129659691

namespace A324908

/-- `gcd(n, 2-Δ[floor(sqrt(n))])-1` -/
def P8121995448129659691.Spec : Prop :=
  ∀ n, P8121995448129659691.a n = A324908 (n + 1)

end A324908

/-! ## A324908.P8609016462022969143

`and(1-n, 1-Δ[floor(sqrt(n))])`
-/

namespace A324908.P8609016462022969143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (n : ℤ)) (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A324908.P8609016462022969143

namespace A324908

/-- `and(1-n, 1-Δ[floor(sqrt(n))])` -/
def P8609016462022969143.Spec : Prop :=
  ∀ n, P8609016462022969143.a n = A324908 (n + 1)

end A324908

/-! ## A324908.P16302990114427429903

`(1-Δ[floor(sqrt(n))])*char[2*n]`
-/

namespace A324908.P16302990114427429903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A324908.P16302990114427429903

namespace A324908

/-- `(1-Δ[floor(sqrt(n))])*char[2*n]` -/
def P16302990114427429903.Spec : Prop :=
  ∀ n, P16302990114427429903.a n = A324908 (n + 1)

end A324908

/-! ## A324908.P1649498191728927990

`-(xor(n, -1)%(2-Δ[floor(sqrt(n))]))`
-/

namespace A324908.P1649498191728927990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (Int.xor (n : ℤ) (-1)) (2 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A324908.P1649498191728927990

namespace A324908

/-- `-(xor(n, -1)%(2-Δ[floor(sqrt(n))]))` -/
def P1649498191728927990.Spec : Prop :=
  ∀ n, P1649498191728927990.a n = A324908 (n + 1)

end A324908

/-! ## A324908.P1605567727967658143

`(∑[(-1)^(n%3)]%(2-Δ[floor(sqrt(n))]))²`
-/

namespace A324908.P1605567727967658143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (2 - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))) ^ 2

end

end A324908.P1605567727967658143

namespace A324908

/-- `(∑[(-1)^(n%3)]%(2-Δ[floor(sqrt(n))]))²` -/
def P1605567727967658143.Spec : Prop :=
  ∀ n, P1605567727967658143.a n = A324908 (n + 1)

end A324908

/-! ## A324908.P9246331494075595715

`1-A354034(n+1)`
-/

namespace A324908.P9246331494075595715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A354034 (n + 1)

end

end A324908.P9246331494075595715

namespace A324908

/-- `1-A354034(n+1)` -/
def P9246331494075595715.Spec : Prop :=
  ∀ n, P9246331494075595715.a n = A324908 (n + 1)

end A324908

/-! ## A324908.P10572634158237425078

`val(A324534(n+1), 2)`
-/

namespace A324908.P10572634158237425078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A324534 (n + 1)).toNat 2

end

end A324908.P10572634158237425078

namespace A324908

/-- `val(A324534(n+1), 2)` -/
def P10572634158237425078.Spec : Prop :=
  ∀ n, (P10572634158237425078.a n : ℤ) = A324908 (n + 1)

end A324908

/-! ## A324908.P8798234589063855290

`val(A324644(n+1), 2)`
-/

namespace A324908.P8798234589063855290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A324644 (n + 1)).toNat 2

end

end A324908.P8798234589063855290

namespace A324908

/-- `val(A324644(n+1), 2)` -/
def P8798234589063855290.Spec : Prop :=
  ∀ n, (P8798234589063855290.a n : ℤ) = A324908 (n + 1)

end A324908

/-! ## A324908.P4746433799502458160

`val(A324645(n+1), 2)`
-/

namespace A324908.P4746433799502458160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A324645 (n + 1)).toNat 2

end

end A324908.P4746433799502458160

namespace A324908

/-- `val(A324645(n+1), 2)` -/
def P4746433799502458160.Spec : Prop :=
  ∀ n, (P4746433799502458160.a n : ℤ) = A324908 (n + 1)

end A324908

/-! ## A324908.P15912042745288754822

`val(A351557(n+1), 2)`
-/

namespace A324908.P15912042745288754822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A351557 (n + 1)).toNat 2

end

end A324908.P15912042745288754822

namespace A324908

/-- `val(A351557(n+1), 2)` -/
def P15912042745288754822.Spec : Prop :=
  ∀ n, (P15912042745288754822.a n : ℤ) = A324908 (n + 1)

end A324908

/-! ## A324908.P7925779197472918769

`A323158(A141310(n))`
-/

namespace A324908.P7925779197472918769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323158 (A141310 n).toNat

end

end A324908.P7925779197472918769

namespace A324908

/-- `A323158(A141310(n))` -/
def P7925779197472918769.Spec : Prop :=
  ∀ n, P7925779197472918769.a n = A324908 (n + 1)

end A324908

/-! ## A324908.P11036547721970335376

`A324902(A341522(n))`
-/

namespace A324908.P11036547721970335376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324902 (A341522 n).toNat

end

end A324908.P11036547721970335376

namespace A324908

/-- `A324902(A341522(n))` -/
def P11036547721970335376.Spec : Prop :=
  ∀ n, P11036547721970335376.a n = A324908 (n + 1)

end A324908

/-! ## A324908.P12827585857148273096

`A049240(A093178(n+1))`
-/

namespace A324908.P12827585857148273096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (A093178 (n + 1)).toNat

end

end A324908.P12827585857148273096

namespace A324908

/-- `A049240(A093178(n+1))` -/
def P12827585857148273096.Spec : Prop :=
  ∀ n, P12827585857148273096.a n = A324908 (n + 1)

end A324908

/-! ## A324908.P1814410887238364474

`A049240(A147661(n+1))`
-/

namespace A324908.P1814410887238364474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049240 (A147661 (n + 1)).toNat

end

end A324908.P1814410887238364474

namespace A324908

/-- `A049240(A147661(n+1))` -/
def P1814410887238364474.Spec : Prop :=
  ∀ n, P1814410887238364474.a n = A324908 (n + 1)

end A324908

/-! ## A324908.P8304868671181711179

`A000035(A318458(n+1))`
-/

namespace A324908.P8304868671181711179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A318458 (n + 1)).toNat

end

end A324908.P8304868671181711179

namespace A324908

/-- `A000035(A318458(n+1))` -/
def P8304868671181711179.Spec : Prop :=
  ∀ n, P8304868671181711179.a n = A324908 (n + 1)

end A324908

/-! ## A324908.P1465403876808163924

`A000035(A351559(n+1))`
-/

namespace A324908.P1465403876808163924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A351559 (n + 1)).toNat

end

end A324908.P1465403876808163924

namespace A324908

/-- `A000035(A351559(n+1))` -/
def P1465403876808163924.Spec : Prop :=
  ∀ n, P1465403876808163924.a n = A324908 (n + 1)

end A324908

/-! ## A324908.P11999624636708392190

`A000035(A265400(n+2))`
-/

namespace A324908.P11999624636708392190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A265400 (n + 2)).toNat

end

end A324908.P11999624636708392190

namespace A324908

/-- `A000035(A265400(n+2))` -/
def P11999624636708392190.Spec : Prop :=
  ∀ n, P11999624636708392190.a n = A324908 (n + 1)

end A324908

/-!
# A324909: Odd numbers k for which sigma(k^2) == 3 (mod 4).

The programs for A324909, the canonical program `A324909.P7075313633679390802` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324909 has offset 1).

The definition of A324909 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A324899, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324909.P7075313633679390802

`sqrt(A324899(n+1))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A324909

/-- `sqrt(A324899(n+1))` -/
def P7075313633679390802.Spec : Prop :=
  ∀ n, P7075313633679390802.a n = (A324909 (n + 1) : ℝ)

end A324909

/-! ## A324909.P17267038766170672107

`eq[1, A358773(2*n)]`
-/

namespace A324909.P17267038766170672107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358773 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324909.P17267038766170672107

namespace A324909

/-- `eq[1, A358773(2*n)]` -/
def P17267038766170672107.Spec : Prop :=
  ∀ n, (P17267038766170672107.a n : ℤ) = A324909 (n + 1)

end A324909

/-! ## A324909.P13185523815898480174

`lt[1, A353493(2*n)]`
-/

namespace A324909.P13185523815898480174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A324909.P13185523815898480174

namespace A324909

/-- `lt[1, A353493(2*n)]` -/
def P13185523815898480174.Spec : Prop :=
  ∀ n, (P13185523815898480174.a n : ℤ) = A324909 (n + 1)

end A324909

/-! ## A324909.P11947907774031926814

`eq[A010873(2*(n+1)), A358771(2*n)]`
-/

namespace A324909.P11947907774031926814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358771 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324909.P11947907774031926814

namespace A324909

/-- `eq[A010873(2*(n+1)), A358771(2*n)]` -/
def P11947907774031926814.Spec : Prop :=
  ∀ n, (P11947907774031926814.a n : ℤ) = A324909 (n + 1)

end A324909

/-! ## A324909.P4724560512193521078

`filter[A309812(n+1), A354035(#)]`
-/

namespace A324909.P4724560512193521078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354035 (f1 j).toNat = 1) n)

end

end A324909.P4724560512193521078

namespace A324909

/-- `filter[A309812(n+1), A354035(#)]` -/
def P4724560512193521078.Spec : Prop :=
  ∀ n, P4724560512193521078.a n = A324909 (n + 1)

end A324909

/-! ## A324909.P10169422838332184678

`filter[A327922(n+1), A354035(#)]`
-/

namespace A324909.P10169422838332184678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354035 (f1 j).toNat = 1) n)

end

end A324909.P10169422838332184678

namespace A324909

/-- `filter[A327922(n+1), A354035(#)]` -/
def P10169422838332184678.Spec : Prop :=
  ∀ n, P10169422838332184678.a n = A324909 (n + 1)

end A324909

/-! ## A324909.P1969627597203739052

`∩[2*n+1, A209922(n+1)]`
-/

namespace A324909.P1969627597203739052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324909.P1969627597203739052

namespace A324909

/-- `∩[2*n+1, A209922(n+1)]` -/
def P1969627597203739052.Spec : Prop :=
  ∀ n, (P1969627597203739052.a n : ℤ) = A324909 (n + 1)

end A324909

/-! ## A324909.P2464843539236725803

`filter[A088828(n+1), A354035(#)]`
-/

namespace A324909.P2464843539236725803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088828 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354035 (f1 j).toNat = 1) n)

end

end A324909.P2464843539236725803

namespace A324909

/-- `filter[A088828(n+1), A354035(#)]` -/
def P2464843539236725803.Spec : Prop :=
  ∀ n, P2464843539236725803.a n = A324909 (n + 1)

end A324909

/-! ## A324909.P13027923882432693611

`filter[A020735(n+1), A354035(#)]`
-/

namespace A324909.P13027923882432693611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354035 (f1 j).toNat = 1) n)

end

end A324909.P13027923882432693611

namespace A324909

/-- `filter[A020735(n+1), A354035(#)]` -/
def P13027923882432693611.Spec : Prop :=
  ∀ n, P13027923882432693611.a n = A324909 (n + 1)

end A324909

/-! ## A324909.P14123340922723401842

`filter[A062545(n+1), A354035(#)]`
-/

namespace A324909.P14123340922723401842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354035 (f1 j).toNat = 1) n)

end

end A324909.P14123340922723401842

namespace A324909

/-- `filter[A062545(n+1), A354035(#)]` -/
def P14123340922723401842.Spec : Prop :=
  ∀ n, P14123340922723401842.a n = A324909 (n + 1)

end A324909

/-! ## A324909.P8711733142096887128

`filter[A144396(n+1), A354035(#)]`
-/

namespace A324909.P8711733142096887128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354035 (f1 j).toNat = 1) n)

end

end A324909.P8711733142096887128

namespace A324909

/-- `filter[A144396(n+1), A354035(#)]` -/
def P8711733142096887128.Spec : Prop :=
  ∀ n, P8711733142096887128.a n = A324909 (n + 1)

end A324909

/-! ## A324909.P8535171952338298377

`∩[A209922(n+1), A062545(n)]`
-/

namespace A324909.P8535171952338298377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324909.P8535171952338298377

namespace A324909

/-- `∩[A209922(n+1), A062545(n)]` -/
def P8535171952338298377.Spec : Prop :=
  ∀ n, (P8535171952338298377.a n : ℤ) = A324909 (n + 1)

end A324909

/-! ## A324909.P3870447573627514669

`filter[A223134(n), A354035(#)]`
-/

namespace A324909.P3870447573627514669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354035 (f1 j).toNat = 1) n)

end

end A324909.P3870447573627514669

namespace A324909

/-- `filter[A223134(n), A354035(#)]` -/
def P3870447573627514669.Spec : Prop :=
  ∀ n, P3870447573627514669.a n = A324909 (n + 1)

end A324909

/-! ## A324909.P16963005495005549698

`filter[A267872(n), A354035(#)]`
-/

namespace A324909.P16963005495005549698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354035 (f1 j).toNat = 1) n)

end

end A324909.P16963005495005549698

namespace A324909

/-- `filter[A267872(n), A354035(#)]` -/
def P16963005495005549698.Spec : Prop :=
  ∀ n, P16963005495005549698.a n = A324909 (n + 1)

end A324909

/-! ## A324909.P765295807437069019

`filter[A004273(n+1), A354035(#)]`
-/

namespace A324909.P765295807437069019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354035 (f1 j).toNat = 1) n)

end

end A324909.P765295807437069019

namespace A324909

/-- `filter[A004273(n+1), A354035(#)]` -/
def P765295807437069019.Spec : Prop :=
  ∀ n, P765295807437069019.a n = A324909 (n + 1)

end A324909

/-! ## A324909.P7234043522651413401

`filter[A130773(n+1), A354035(#)]`
-/

namespace A324909.P7234043522651413401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354035 (f1 j).toNat = 1) n)

end

end A324909.P7234043522651413401

namespace A324909

/-- `filter[A130773(n+1), A354035(#)]` -/
def P7234043522651413401.Spec : Prop :=
  ∀ n, P7234043522651413401.a n = A324909 (n + 1)

end A324909

/-! ## A324909.P13930993114745631294

`filter[A140139(n+1), A354035(#)]`
-/

namespace A324909.P13930993114745631294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354035 (f1 j).toNat = 1) n)

end

end A324909.P13930993114745631294

namespace A324909

/-- `filter[A140139(n+1), A354035(#)]` -/
def P13930993114745631294.Spec : Prop :=
  ∀ n, P13930993114745631294.a n = A324909 (n + 1)

end A324909

/-! ## A324909.P727091290907622453

`eq[A040007(n), A353493(2*n)]`
-/

namespace A324909.P727091290907622453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353493 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324909.P727091290907622453

namespace A324909

/-- `eq[A040007(n), A353493(2*n)]` -/
def P727091290907622453.Spec : Prop :=
  ∀ n, (P727091290907622453.a n : ℤ) = A324909 (n + 1)

end A324909

/-! ## A324909.P6815029515816307838

`∩[A209922(n+1), A223134(n)]`
-/

namespace A324909.P6815029515816307838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209922 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324909.P6815029515816307838

namespace A324909

/-- `∩[A209922(n+1), A223134(n)]` -/
def P6815029515816307838.Spec : Prop :=
  ∀ n, (P6815029515816307838.a n : ℤ) = A324909 (n + 1)

end A324909

/-! ## A324909.P4748330386941282954

`filter[A004280(n+1), A354035(#)]`
-/

namespace A324909.P4748330386941282954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354035 (f1 j).toNat = 1) n)

end

end A324909.P4748330386941282954

namespace A324909

/-- `filter[A004280(n+1), A354035(#)]` -/
def P4748330386941282954.Spec : Prop :=
  ∀ n, P4748330386941282954.a n = A324909 (n + 1)

end A324909

/-!
# A324910: Multiplicative with a(p^e) = (2^e)-1.

The programs for A324910, the canonical program `A324910.P7917163874809999743` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324910 has offset 1).

The definition of A324910 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A156552, A246674, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324910.P7917163874809999743

`A246674(A156552(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A324910

/-- `A246674(A156552(n+1))` -/
def P7917163874809999743.Spec : Prop :=
  ∀ n, P7917163874809999743.a n = A324910 (n + 1)

theorem P7917163874809999743.correct : P7917163874809999743.Spec := by
  intro n
  simp only [A324910, Nat.add_sub_cancel]

end A324910

/-! ## A324910.P16626291679582433441

`∏{e}[n+1, 2^#-1]`
-/

namespace A324910.P16626291679582433441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((2 ^ Nat.factorization (f1 n) p : ℤ) - 1)

end

end A324910.P16626291679582433441

namespace A324910

/-- `∏{e}[n+1, 2^#-1]` -/
def P16626291679582433441.Spec : Prop :=
  ∀ n, P16626291679582433441.a n = A324910 (n + 1)

end A324910

/-! ## A324910.P7651606611811615345

`A182139(A003557(n+1))`
-/

namespace A324910.P7651606611811615345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182139 (A003557 (n + 1)).toNat

end

end A324910.P7651606611811615345

namespace A324910

/-- `A182139(A003557(n+1))` -/
def P7651606611811615345.Spec : Prop :=
  ∀ n, P7651606611811615345.a n = A324910 (n + 1)

end A324910

/-! ## A324910.P9189942107283236557

`A182139(A336551(n+1)+1)`
-/

namespace A324910.P9189942107283236557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182139 (A336551 (n + 1) + 1).toNat

end

end A324910.P9189942107283236557

namespace A324910

/-- `A182139(A336551(n+1)+1)` -/
def P9189942107283236557.Spec : Prop :=
  ∀ n, P9189942107283236557.a n = A324910 (n + 1)

end A324910

/-! ## A324910.P16844892789866602211

`A000027(∏{e}[n+1, A000225(#)])`
-/

namespace A324910.P16844892789866602211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (f1 n), A000225 (Nat.factorization (f1 n) p)).toNat

end

end A324910.P16844892789866602211

namespace A324910

/-- `A000027(∏{e}[n+1, A000225(#)])` -/
def P16844892789866602211.Spec : Prop :=
  ∀ n, P16844892789866602211.a n = A324910 (n + 1)

end A324910

/-! ## A324910.P4497180588378797509

`∑{d}[A003557(n+1), sqrt(A165825(#))]`
-/

namespace A324910.P4497180588378797509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Real.sqrt (A165825 d : ℝ)

end

end A324910.P4497180588378797509

namespace A324910

/-- `∑{d}[A003557(n+1), sqrt(A165825(#))]` -/
def P4497180588378797509.Spec : Prop :=
  ∀ n, P4497180588378797509.a n = (A324910 (n + 1) : ℝ)

end A324910

/-! ## A324910.P9042093288764676298

`A182139((n+1)/A007947(n+1))`
-/

namespace A324910.P9042093288764676298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182139 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A324910.P9042093288764676298

namespace A324910

/-- `A182139((n+1)/A007947(n+1))` -/
def P9042093288764676298.Spec : Prop :=
  ∀ n, P9042093288764676298.a n = A324910 (n + 1)

end A324910

/-! ## A324910.P7441537113223904379

`∑{d}[n+1, A162510(#)*A361430((n+1)/#)]`
-/

namespace A324910.P7441537113223904379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162510 d * A361430 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A324910.P7441537113223904379

namespace A324910

/-- `∑{d}[n+1, A162510(#)*A361430((n+1)/#)]` -/
def P7441537113223904379.Spec : Prop :=
  ∀ n, P7441537113223904379.a n = A324910 (n + 1)

end A324910

/-! ## A324910.P13158336796887808838

`gcd(A324911(n+1), A331519(n))`
-/

namespace A324910.P13158336796887808838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324911 (n + 1)) (A331519 n)

end

end A324910.P13158336796887808838

namespace A324910

/-- `gcd(A324911(n+1), A331519(n))` -/
def P13158336796887808838.Spec : Prop :=
  ∀ n, (P13158336796887808838.a n : ℤ) = A324910 (n + 1)

end A324910

/-! ## A324910.P2699306408399063348

`A246674(A322993(n+1))`
-/

namespace A324910.P2699306408399063348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246674 (A322993 (n + 1)).toNat

end

end A324910.P2699306408399063348

namespace A324910

/-- `A246674(A322993(n+1))` -/
def P2699306408399063348.Spec : Prop :=
  ∀ n, P2699306408399063348.a n = A324910 (n + 1)

end A324910

/-!
# A324912: Binary weight of A324911(n).

The programs for A324912, the canonical program `A324912.P11292879792809766893` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324912 has offset 1).

The definition of A324912 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324912.P11292879792809766893

`A000120(A324910(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A324912

/-- `A000120(A324910(n+1))` -/
def P11292879792809766893.Spec : Prop :=
  ∀ n, P11292879792809766893.a n = A324912 (n + 1)

theorem P11292879792809766893.correct : P11292879792809766893.Spec := by
  intro n
  simp only [A324912, Nat.add_sub_cancel]

end A324912

/-! ## A324912.P12368970190603091504

`A028310(A051903(n+1)%A301686(3*n))`
-/

namespace A324912.P12368970190603091504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A051903 (n + 1)) (A301686 (3 * n))).toNat

end

end A324912.P12368970190603091504

namespace A324912

/-- `A028310(A051903(n+1)%A301686(3*n))` -/
def P12368970190603091504.Spec : Prop :=
  ∀ n, P12368970190603091504.a n = A324912 (n + 1)

end A324912

/-! ## A324912.P13992917382511632012

`A051903(n+1)^A338117(A106856(n+1))`
-/

namespace A324912.P13992917382511632012
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051903 (n + 1) : ℚ) ^ (A338117 (A106856 (n + 1)).toNat : ℤ)

end

end A324912.P13992917382511632012

namespace A324912

/-- `A051903(n+1)^A338117(A106856(n+1))` -/
def P13992917382511632012.Spec : Prop :=
  ∀ n, P13992917382511632012.a n = (A324912 (n + 1) : ℚ)

end A324912

/-! ## A324912.P11905330854312020299

`A085341(A158709(n+1))+A051903(n+1)`
-/

namespace A324912.P11905330854312020299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085341 (A158709 (n + 1)).toNat + A051903 (n + 1)

end

end A324912.P11905330854312020299

namespace A324912

/-- `A085341(A158709(n+1))+A051903(n+1)` -/
def P11905330854312020299.Spec : Prop :=
  ∀ n, P11905330854312020299.a n = A324912 (n + 1)

end A324912

/-! ## A324912.P1809858217797980244

`or(A010054(A006881(3*n+5)), A051903(n+1))`
-/

namespace A324912.P1809858217797980244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A006881 (3 * n + 5)).toNat) (A051903 (n + 1))

end

end A324912.P1809858217797980244

namespace A324912

/-- `or(A010054(A006881(3*n+5)), A051903(n+1))` -/
def P1809858217797980244.Spec : Prop :=
  ∀ n, P1809858217797980244.a n = A324912 (n + 1)

end A324912

/-! ## A324912.P8498650984067910451

`A317941(A015917(2*n+1))+A066301(n+1)`
-/

namespace A324912.P8498650984067910451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317941 (A015917 (2 * n + 1)).toNat + A066301 (n + 1)

end

end A324912.P8498650984067910451

namespace A324912

/-- `A317941(A015917(2*n+1))+A066301(n+1)` -/
def P8498650984067910451.Spec : Prop :=
  ∀ n, P8498650984067910451.a n = A324912 (n + 1)

end A324912

/-! ## A324912.P14086131228366099848

`A209229(A171821(2*n+1))+A051903(n+1)`
-/

namespace A324912.P14086131228366099848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A171821 (2 * n + 1)).toNat + A051903 (n + 1)

end

end A324912.P14086131228366099848

namespace A324912

/-- `A209229(A171821(2*n+1))+A051903(n+1)` -/
def P14086131228366099848.Spec : Prop :=
  ∀ n, P14086131228366099848.a n = A324912 (n + 1)

end A324912

/-! ## A324912.P9644107589132152307

`A051903(n+1)+A008683(A324652(n+1))`
-/

namespace A324912.P9644107589132152307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) + A008683 (A324652 (n + 1)).toNat

end

end A324912.P9644107589132152307

namespace A324912

/-- `A051903(n+1)+A008683(A324652(n+1))` -/
def P9644107589132152307.Spec : Prop :=
  ∀ n, P9644107589132152307.a n = A324912 (n + 1)

end A324912

/-! ## A324912.P3260628092042808259

`A288636(A092216(2*(n+1)))+A066301(n+1)`
-/

namespace A324912.P3260628092042808259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288636 (A092216 (2 * (n + 1))).toNat + A066301 (n + 1)

end

end A324912.P3260628092042808259

namespace A324912

/-- `A288636(A092216(2*(n+1)))+A066301(n+1)` -/
def P3260628092042808259.Spec : Prop :=
  ∀ n, P3260628092042808259.a n = A324912 (n + 1)

end A324912

/-! ## A324912.P2981787779462514712

`A317941(A069687(n+1))+A066301(n+1)`
-/

namespace A324912.P2981787779462514712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317941 (A069687 (n + 1)).toNat + A066301 (n + 1)

end

end A324912.P2981787779462514712

namespace A324912

/-- `A317941(A069687(n+1))+A066301(n+1)` -/
def P2981787779462514712.Spec : Prop :=
  ∀ n, P2981787779462514712.a n = A324912 (n + 1)

end A324912

/-! ## A324912.P500956541336737201

`A051903(n+1)+A000035(2*A001912(n+1)-A214516(n+1))`
-/

namespace A324912.P500956541336737201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) + A000035 (2 * A001912 (n + 1) - A214516 (n + 1)).toNat

end

end A324912.P500956541336737201

namespace A324912

/-- `A051903(n+1)+A000035(2*A001912(n+1)-A214516(n+1))` -/
def P500956541336737201.Spec : Prop :=
  ∀ n, P500956541336737201.a n = A324912 (n + 1)

end A324912

/-! ## A324912.P2302585150306365490

`A051903(n+1)+A000035(A298036(n))`
-/

namespace A324912.P2302585150306365490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) + A000035 (A298036 n).toNat

end

end A324912.P2302585150306365490

namespace A324912

/-- `A051903(n+1)+A000035(A298036(n))` -/
def P2302585150306365490.Spec : Prop :=
  ∀ n, P2302585150306365490.a n = A324912 (n + 1)

end A324912

/-! ## A324912.P8297083572019548793

`A209229(A139827(n+1))+A051903(n+1)`
-/

namespace A324912.P8297083572019548793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A139827 (n + 1)).toNat + A051903 (n + 1)

end

end A324912.P8297083572019548793

namespace A324912

/-- `A209229(A139827(n+1))+A051903(n+1)` -/
def P8297083572019548793.Spec : Prop :=
  ∀ n, P8297083572019548793.a n = A324912 (n + 1)

end A324912

/-! ## A324912.P14619618144126442302

`A285128(A000068(n+1))+A051903(n+1)`
-/

namespace A324912.P14619618144126442302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285128 (A000068 (n + 1)).toNat + A051903 (n + 1)

end

end A324912.P14619618144126442302

namespace A324912

/-- `A285128(A000068(n+1))+A051903(n+1)` -/
def P14619618144126442302.Spec : Prop :=
  ∀ n, P14619618144126442302.a n = A324912 (n + 1)

end A324912

/-! ## A324912.P1990513209920594466

`A051903(n+1)+A049084(A111069(n+1))`
-/

namespace A324912.P1990513209920594466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) + A049084 (A111069 (n + 1)).toNat

end

end A324912.P1990513209920594466

namespace A324912

/-- `A051903(n+1)+A049084(A111069(n+1))` -/
def P1990513209920594466.Spec : Prop :=
  ∀ n, P1990513209920594466.a n = A324912 (n + 1)

end A324912

/-! ## A324912.P5940346848878935410

`A066301(n+1)+A057427(lt[2, A066301(n+1)])`
-/

namespace A324912.P5940346848878935410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066301 (n + 1) + A057427 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A324912.P5940346848878935410

namespace A324912

/-- `A066301(n+1)+A057427(lt[2, A066301(n+1)])` -/
def P5940346848878935410.Spec : Prop :=
  ∀ n, P5940346848878935410.a n = A324912 (n + 1)

end A324912

/-! ## A324912.P3062361742674126743

`A353637(A166501(n+1))+A051903(n+1)`
-/

namespace A324912.P3062361742674126743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353637 (A166501 (n + 1)).toNat + A051903 (n + 1)

end

end A324912.P3062361742674126743

namespace A324912

/-- `A353637(A166501(n+1))+A051903(n+1)` -/
def P3062361742674126743.Spec : Prop :=
  ∀ n, P3062361742674126743.a n = A324912 (n + 1)

end A324912

/-! ## A324912.P13423408640558915253

`A051903(n+1)+A007949(A049282(n+1))`
-/

namespace A324912.P13423408640558915253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) + A007949 (A049282 (n + 1)).toNat

end

end A324912.P13423408640558915253

namespace A324912

/-- `A051903(n+1)+A007949(A049282(n+1))` -/
def P13423408640558915253.Spec : Prop :=
  ∀ n, P13423408640558915253.a n = A324912 (n + 1)

end A324912

/-! ## A324912.P13399304938719812081

`A051903((n+1)*A053589(n+2))`
-/

namespace A324912.P13399304938719812081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 ((n + 1 : ℤ) * A053589 (n + 2)).toNat

end

end A324912.P13399304938719812081

namespace A324912

/-- `A051903((n+1)*A053589(n+2))` -/
def P13399304938719812081.Spec : Prop :=
  ∀ n, P13399304938719812081.a n = A324912 (n + 1)

end A324912

/-! ## A324912.P1230569129327849745

`∏{e}[A304180(n+1), #]`
-/

namespace A324912.P1230569129327849745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304180 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A324912.P1230569129327849745

namespace A324912

/-- `∏{e}[A304180(n+1), #]` -/
def P1230569129327849745.Spec : Prop :=
  ∀ n, (P1230569129327849745.a n : ℤ) = A324912 (n + 1)

end A324912

/-!
# A324913: a(n) = Sum_{k=1..n} 2^k * phi(k), where phi is the Euler totient function A000010.

The programs for A324913, the canonical program `A324913.P16517888723639947016` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324913 has offset 1).

The definition of A324913 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 323 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324913.P3195254448882902752

`∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*2^(n+1)]`
-/

namespace A324913.P3195254448882902752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (2 ^ (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324913.P3195254448882902752

namespace A324913

/-- `∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*2^(n+1)]` -/
def P3195254448882902752.Spec : Prop :=
  ∀ n, P3195254448882902752.a n = (A324913 (n + 1) : ℚ)

end A324913

/-! ## A324913.P8213331626925350385

`∑[2^(n+1)*Δ[A002088(n)]]`
-/

namespace A324913.P8213331626925350385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324913.P8213331626925350385

namespace A324913

/-- `∑[2^(n+1)*Δ[A002088(n)]]` -/
def P8213331626925350385.Spec : Prop :=
  ∀ n, P8213331626925350385.a n = A324913 (n + 1)

end A324913

/-! ## A324913.P6341847937815900028

`∑[2^(n+1)*A000010(n+1)]`
-/

namespace A324913.P6341847937815900028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324913.P6341847937815900028

namespace A324913

/-- `∑[2^(n+1)*A000010(n+1)]` -/
def P6341847937815900028.Spec : Prop :=
  ∀ n, P6341847937815900028.a n = A324913 (n + 1)

end A324913

/-! ## A324913.P16517888723639947016

`∑[2^n*A140434(n+1)]+1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A324913

/-- `∑[2^n*A140434(n+1)]+1` -/
def P16517888723639947016.Spec : Prop :=
  ∀ n, P16517888723639947016.a n = A324913 (n + 1)

theorem P16517888723639947016.correct : P16517888723639947016.Spec := by
  intro n
  simp only [A324913, Nat.add_sub_cancel]

end A324913

/-! ## A324913.P9861867191065600825

`∑[2^n*A319998(2*(n+1))]`
-/

namespace A324913.P9861867191065600825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A319998 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324913.P9861867191065600825

namespace A324913

/-- `∑[2^n*A319998(2*(n+1))]` -/
def P9861867191065600825.Spec : Prop :=
  ∀ n, P9861867191065600825.a n = A324913 (n + 1)

end A324913

/-!
# A324914: a(n) = Sum_{k=1..n} 2^k * tau(k), where tau(k) = A000005(k).

The programs for A324914, the canonical program `A324914.P16291875900714367675` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324914 has offset 1).

The definition of A324914 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324914.P7950161906629144712

`∑[∑{d}[n+1, 2^lcm(#, n+1)]]`
-/

namespace A324914.P7950161906629144712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), 2 ^ Nat.lcm d (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324914.P7950161906629144712

namespace A324914

/-- `∑[∑{d}[n+1, 2^lcm(#, n+1)]]` -/
def P7950161906629144712.Spec : Prop :=
  ∀ n, (P7950161906629144712.a n : ℤ) = A324914 (n + 1)

end A324914

/-! ## A324914.P16291875900714367675

`∑[2^(n+1)*∏{e}[n+1, #+1]]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A324914

/-- `∑[2^(n+1)*∏{e}[n+1, #+1]]` -/
def P16291875900714367675.Spec : Prop :=
  ∀ n, (P16291875900714367675.a n : ℤ) = A324914 (n + 1)

theorem P16291875900714367675.correct : P16291875900714367675.Spec := by
  intro n
  simp only [A324914, Nat.add_sub_cancel]

end A324914

/-! ## A324914.P10849773329911352522

`∑[A323351(n+1)]`
-/

namespace A324914.P10849773329911352522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324914.P10849773329911352522

namespace A324914

/-- `∑[A323351(n+1)]` -/
def P10849773329911352522.Spec : Prop :=
  ∀ n, P10849773329911352522.a n = A324914 (n + 1)

theorem P10849773329911352522.correct : P10849773329911352522.Spec := by
  intro n
  simp only [A324914, Nat.add_sub_cancel, A324914.P10849773329911352522.f1, A324914.P10849773329911352522.a, A324914.P16291875900714367675.f2, A324914.P16291875900714367675.f1, A324914.P16291875900714367675.a, A323351, A323351.P3034822390063686642.f1, A323351.P3034822390063686642.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324914

/-! ## A324914.P15370338167643202008

`∑[2^(n+1)*Δ[A006218(n)]]`
-/

namespace A324914.P15370338167643202008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324914.P15370338167643202008

namespace A324914

/-- `∑[2^(n+1)*Δ[A006218(n)]]` -/
def P15370338167643202008.Spec : Prop :=
  ∀ n, P15370338167643202008.a n = A324914 (n + 1)

end A324914

/-! ## A324914.P2774652562812805738

`∑[2^(n+1)*A000005(n+1)]`
-/

namespace A324914.P2774652562812805738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324914.P2774652562812805738

namespace A324914

/-- `∑[2^(n+1)*A000005(n+1)]` -/
def P2774652562812805738.Spec : Prop :=
  ∀ n, P2774652562812805738.a n = A324914 (n + 1)

theorem P2774652562812805738.correct : P2774652562812805738.Spec := by
  intro n
  simp only [A324914, Nat.add_sub_cancel, A324914.P2774652562812805738.f1, A324914.P2774652562812805738.a, A324914.P16291875900714367675.f2, A324914.P16291875900714367675.f1, A324914.P16291875900714367675.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A324914

/-! ## A324914.P11493596577517767035

`∑[(A032741(n+1)+1)*2^(n+1)]`
-/

namespace A324914.P11493596577517767035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A032741 (n + 1) + 1) * (2 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324914.P11493596577517767035

namespace A324914

/-- `∑[(A032741(n+1)+1)*2^(n+1)]` -/
def P11493596577517767035.Spec : Prop :=
  ∀ n, P11493596577517767035.a n = A324914 (n + 1)

theorem P11493596577517767035.correct : P11493596577517767035.Spec := by
  intro n
  simp only [A324914, Nat.add_sub_cancel, A324914.P11493596577517767035.f1, A324914.P11493596577517767035.a, A324914.P16291875900714367675.f2, A324914.P16291875900714367675.f1, A324914.P16291875900714367675.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A324914

/-! ## A324914.P8276898062023324993

`2*∑[∏{e}[n+1, #+1]*A000079(n)]`
-/

namespace A324914.P8276898062023324993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ) * A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324914.P8276898062023324993

namespace A324914

/-- `2*∑[∏{e}[n+1, #+1]*A000079(n)]` -/
def P8276898062023324993.Spec : Prop :=
  ∀ n, P8276898062023324993.a n = A324914 (n + 1)

end A324914

/-! ## A324914.P9394928031873271989

`∑[Δ[A006218(n)]*A011782(n+2)]`
-/

namespace A324914.P9394928031873271989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A011782 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324914.P9394928031873271989

namespace A324914

/-- `∑[Δ[A006218(n)]*A011782(n+2)]` -/
def P9394928031873271989.Spec : Prop :=
  ∀ n, P9394928031873271989.a n = A324914 (n + 1)

end A324914

/-! ## A324914.P15849354964947349500

`∑[A000005(n+1)*A000079(n+1)]`
-/

namespace A324914.P15849354964947349500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324914.P15849354964947349500

namespace A324914

/-- `∑[A000005(n+1)*A000079(n+1)]` -/
def P15849354964947349500.Spec : Prop :=
  ∀ n, P15849354964947349500.a n = A324914 (n + 1)

theorem P15849354964947349500.correct : P15849354964947349500.Spec := by
  intro n
  simp only [A324914, Nat.add_sub_cancel, A324914.P15849354964947349500.f1, A324914.P15849354964947349500.a, A324914.P16291875900714367675.f2, A324914.P16291875900714367675.f1, A324914.P16291875900714367675.a, A000005, A000005.P16091521709108585461.a, A000079, A000079.P10855139691139572931.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324914

/-! ## A324914.P16153522455325024710

`∑[A000005(n+1)*A155559(n+1)]`
-/

namespace A324914.P16153522455325024710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A155559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324914.P16153522455325024710

namespace A324914

/-- `∑[A000005(n+1)*A155559(n+1)]` -/
def P16153522455325024710.Spec : Prop :=
  ∀ n, P16153522455325024710.a n = A324914 (n + 1)

end A324914

/-! ## A324914.P8127072760188669256

`∑[A000005(n+1)*A011782(n+2)]`
-/

namespace A324914.P8127072760188669256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A011782 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324914.P8127072760188669256

namespace A324914

/-- `∑[A000005(n+1)*A011782(n+2)]` -/
def P8127072760188669256.Spec : Prop :=
  ∀ n, P8127072760188669256.a n = A324914 (n + 1)

end A324914

/-! ## A324914.P8638927774585070996

`∑[A000005(n+1)*A131577(n+2)]`
-/

namespace A324914.P8638927774585070996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A131577 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324914.P8638927774585070996

namespace A324914

/-- `∑[A000005(n+1)*A131577(n+2)]` -/
def P8638927774585070996.Spec : Prop :=
  ∀ n, P8638927774585070996.a n = A324914 (n + 1)

end A324914

/-! ## A324914.P17858934313542135929

`∑[2*A000005(n+1)*Δ[A000051(n)]]`
-/

namespace A324914.P17858934313542135929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (n + 1) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324914.P17858934313542135929

namespace A324914

/-- `∑[2*A000005(n+1)*Δ[A000051(n)]]` -/
def P17858934313542135929.Spec : Prop :=
  ∀ n, P17858934313542135929.a n = A324914 (n + 1)

theorem P17858934313542135929.correct : P17858934313542135929.Spec := by
  intro n
  simp only [A324914, Nat.add_sub_cancel, A324914.P17858934313542135929.f2, A324914.P17858934313542135929.f1, A324914.P17858934313542135929.a, A324914.P16291875900714367675.f2, A324914.P16291875900714367675.f1, A324914.P16291875900714367675.a, A000005, A000005.P16091521709108585461.a, A000051, A000051.P14067217022188782580.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324914

/-! ## A324914.P4922998165364818545

`∑[2*A000005(n+1)*Δ[A000225(n)]]`
-/

namespace A324914.P4922998165364818545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000005 (n + 1) * (f2 (n + 1) - f2 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324914.P4922998165364818545

namespace A324914

/-- `∑[2*A000005(n+1)*Δ[A000225(n)]]` -/
def P4922998165364818545.Spec : Prop :=
  ∀ n, P4922998165364818545.a n = A324914 (n + 1)

theorem P4922998165364818545.correct : P4922998165364818545.Spec := by
  intro n
  simp only [A324914, Nat.add_sub_cancel, A324914.P4922998165364818545.f2, A324914.P4922998165364818545.f1, A324914.P4922998165364818545.a, A324914.P16291875900714367675.f2, A324914.P16291875900714367675.f1, A324914.P16291875900714367675.a, A000005, A000005.P16091521709108585461.a, A000225, A000225.P6535533121115206393.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324914

/-! ## A324914.P5610830870552229174

`∑[2*A000005(n+1)*A016116(2*n)]`
-/

namespace A324914.P5610830870552229174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (n + 1) * A016116 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324914.P5610830870552229174

namespace A324914

/-- `∑[2*A000005(n+1)*A016116(2*n)]` -/
def P5610830870552229174.Spec : Prop :=
  ∀ n, P5610830870552229174.a n = A324914 (n + 1)

end A324914

/-! ## A324914.P9836017395152039917

`∑[A038040(n+1)/(n+1)*A000079(n+1)]`
-/

namespace A324914.P9836017395152039917
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (n + 1 : ℚ) * (A000079 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324914.P9836017395152039917

namespace A324914

/-- `∑[A038040(n+1)/(n+1)*A000079(n+1)]` -/
def P9836017395152039917.Spec : Prop :=
  ∀ n, P9836017395152039917.a n = (A324914 (n + 1) : ℚ)

theorem P9836017395152039917.correct : P9836017395152039917.Spec := by
  intro n
  simp only [A324914, Nat.add_sub_cancel, A324914.P9836017395152039917.f1, A324914.P9836017395152039917.a, A324914.P16291875900714367675.f2, A324914.P16291875900714367675.f1, A324914.P16291875900714367675.a, A000079, A000079.P10855139691139572931.a, A038040, A038040.P16512896840577774730.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324914

/-! ## A324914.P6562168074525403818

`∑[A000079(n)*A004277(A000005(n+1))]`
-/

namespace A324914.P6562168074525403818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A004277 (A000005 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324914.P6562168074525403818

namespace A324914

/-- `∑[A000079(n)*A004277(A000005(n+1))]` -/
def P6562168074525403818.Spec : Prop :=
  ∀ n, P6562168074525403818.a n = A324914 (n + 1)

end A324914

/-!
# A324915: a(n) = Sum_{k=1..n} 2^k * sigma(k), where sigma(k) = A000203(k).

The programs for A324915, the canonical program `A324915.P874972756972703710` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324915 has offset 1).

The definition of A324915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 322 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324915.P874972756972703710

`∑[2^(n+1)*∑{d}[n+1, #]]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A324915

/-- `∑[2^(n+1)*∑{d}[n+1, #]]` -/
def P874972756972703710.Spec : Prop :=
  ∀ n, (P874972756972703710.a n : ℤ) = A324915 (n + 1)

theorem P874972756972703710.correct : P874972756972703710.Spec := by
  intro n
  simp only [A324915, Nat.add_sub_cancel]

end A324915

/-! ## A324915.P13536815178101730654

`∑[2^(log2(∑{d}[n+1, #])+n+1)]`
-/

namespace A324915.P13536815178101730654
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (Real.logb 2 ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℝ) + (n + 1 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324915.P13536815178101730654

namespace A324915

/-- `∑[2^(log2(∑{d}[n+1, #])+n+1)]` -/
def P13536815178101730654.Spec : Prop :=
  ∀ n, P13536815178101730654.a n = (A324915 (n + 1) : ℝ)

end A324915

/-! ## A324915.P8499116719472986098

`a(n-1)+2^(n+1)*∑{d}[n+1, #]` with `a(0)=2`
-/

namespace A324915.P8499116719472986098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + 2 ^ (n + 1) * (∑ d ∈ Nat.divisors (f1 n), d)

end

end A324915.P8499116719472986098

namespace A324915

/-- `a(n-1)+2^(n+1)*∑{d}[n+1, #]` -/
def P8499116719472986098.Spec : Prop :=
  ∀ n, (P8499116719472986098.a n : ℤ) = A324915 (n + 1)

end A324915

/-! ## A324915.P6753953186867297428

`∑[2^n*A074400(n+1)]`
-/

namespace A324915.P6753953186867297428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A074400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324915.P6753953186867297428

namespace A324915

/-- `∑[2^n*A074400(n+1)]` -/
def P6753953186867297428.Spec : Prop :=
  ∀ n, P6753953186867297428.a n = A324915 (n + 1)

theorem P6753953186867297428.correct : P6753953186867297428.Spec := by
  intro n
  simp only [A324915, Nat.add_sub_cancel, A324915.P6753953186867297428.f1, A324915.P6753953186867297428.a, A324915.P874972756972703710.f2, A324915.P874972756972703710.f1, A324915.P874972756972703710.a, A074400, A074400.P16312391460013478761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324915

/-! ## A324915.P16321104803521236860

`∑[2^(n+1)*Δ[A160664(n)]]`
-/

namespace A324915.P16321104803521236860
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324915.P16321104803521236860

namespace A324915

/-- `∑[2^(n+1)*Δ[A160664(n)]]` -/
def P16321104803521236860.Spec : Prop :=
  ∀ n, P16321104803521236860.a n = A324915 (n + 1)

end A324915

/-!
# A324916: Triangle read by rows: T(n,k) is the number of 3-stack-sortable permutations of [n] with k descents (0 <= k <= n-1).

The programs for A324916, there is no canonical definition to state claims against.
-/

/-! ## A324916.P17836913437829093851

`A008292(n+1)-A014081(A014374(n))`
-/

namespace A324916.P17836913437829093851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) - A014081 (A014374 n).toNat

end

end A324916.P17836913437829093851

/-! ## A324916.P11353601251808254078

`A008292(n+1)-A283826(A068045(n))`
-/

namespace A324916.P11353601251808254078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) - A283826 (A068045 n).toNat

end

end A324916.P11353601251808254078

/-! ## A324916.P16973769545311827212

`A008292(n+1)-A352612(A212390(n))`
-/

namespace A324916.P16973769545311827212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) - A352612 (A212390 n).toNat

end

end A324916.P16973769545311827212

/-! ## A324916.P4179078282093932969

`A003963(A108267(n)^A349163(n+5))`
-/

namespace A324916.P4179078282093932969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (SequenceMachineLib.roundAway ((A108267 n : ℚ) ^ (A349163 (n + 5) : ℤ))).toNat

end

end A324916.P4179078282093932969

/-! ## A324916.P13258717511231665000

`A285357(n+1)-A055641(A108050(n+1))`
-/

namespace A324916.P13258717511231665000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285357 (n + 1) - A055641 (A108050 (n + 1)).toNat

end

end A324916.P13258717511231665000

/-!
# A324917: a(n) = A134664(n) mod 2.

The programs for A324917, there is no canonical definition to state claims against.
-/

/-! ## A324917.P13137692946286701566

`A134664(n+1)%2`
-/

namespace A324917.P13137692946286701566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134664 (n + 1)) 2

end

end A324917.P13137692946286701566

/-! ## A324917.P9640362692850340517

`and(1, A134664(A000027(n+1)))`
-/

namespace A324917.P9640362692850340517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A134664 (A000027 (n + 1)).toNat)

end

end A324917.P9640362692850340517

/-! ## A324917.P3053977357319414727

`and(A134664(n+1), A185116(n))`
-/

namespace A324917.P3053977357319414727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134664 (n + 1)) (A185116 n)

end

end A324917.P3053977357319414727

/-! ## A324917.P793947448542546551

`and(1, A134664(A080513(2*n)))²`
-/

namespace A324917.P793947448542546551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A134664 (A080513 (2 * n)).toNat) ^ 2

end

end A324917.P793947448542546551

/-! ## A324917.P8219202007486809833

`and(Δ[A080513(n)], A134664(n+1))`
-/

namespace A324917.P8219202007486809833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A134664 (n + 1))

end

end A324917.P8219202007486809833

/-! ## A324917.P9837885673751145481

`and(char[A106611(n)], A134664(n+1))`
-/

namespace A324917.P9837885673751145481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A134664 (n + 1))

end

end A324917.P9837885673751145481

/-! ## A324917.P17947186958057597487

`and(char[A163905(n)], A134664(n+1))`
-/

namespace A324917.P17947186958057597487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163905 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A134664 (n + 1))

end

end A324917.P17947186958057597487

/-! ## A324917.P7556629135264325833

`and(char[A282062(n)], A134664(n+1))`
-/

namespace A324917.P7556629135264325833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282062 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A134664 (n + 1))

end

end A324917.P7556629135264325833

/-! ## A324917.P5117477084894304745

`and(char[A317050(n)], A134664(n+1))`
-/

namespace A324917.P5117477084894304745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317050 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A134664 (n + 1))

end

end A324917.P5117477084894304745

/-! ## A324917.P13200680836940791516

`and(char[A328622(n)], A134664(n+1))`
-/

namespace A324917.P13200680836940791516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328622 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A134664 (n + 1))

end

end A324917.P13200680836940791516

/-!
# A324918: Partial sums of A324917.

The programs for A324918, there is no canonical definition to state claims against.
-/

/-! ## A324918.P12689400815083384667

`∑[A324917(n+1)]`
-/

namespace A324918.P12689400815083384667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324918.P12689400815083384667

/-! ## A324918.P7395449386059119100

`∑[A134664(n+1)%2]`
-/

namespace A324918.P7395449386059119100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134664 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324918.P7395449386059119100

/-! ## A324918.P7453766898965157292

`A324917(xor(1, n+1)+1)+a(n-1)` with `a(0)=1`
-/

namespace A324918.P7453766898965157292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A324917 (Nat.xor 1 (n + 1) + 1) + a (n - 1)

end

end A324918.P7453766898965157292

/-! ## A324918.P15403888467739690408

`A324917(Δ[n²]%2+n)+a(n-1)` with `a(0)=1`
-/

namespace A324918.P15403888467739690408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A324917 (Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2 + (n : ℤ)).toNat + a (n - 1)

end

end A324918.P15403888467739690408

/-! ## A324918.P3272941814494474069

`∑[and(A134664(n+1), A185116(n))]`
-/

namespace A324918.P3272941814494474069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134664 (n + 1)) (A185116 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324918.P3272941814494474069

/-! ## A324918.P8956789413009748532

`a(n-1)+and(A132074(n), A324917(n+1))` with `a(0)=1`
-/

namespace A324918.P8956789413009748532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.land (A132074 n) (A324917 (n + 1))

end

end A324918.P8956789413009748532

/-! ## A324918.P15383107033073230829

`A324917(n+1)+A222245(A222245(a(n-1)))` with `a(0)=1`
-/

namespace A324918.P15383107033073230829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A324917 (n + 1) + A222245 (A222245 (a (n - 1)).toNat).toNat

end

end A324918.P15383107033073230829

/-!
# A324919: a(n) is the number of I^n-symmetric chains that are not I^k-symmetric for any k dividing n.

The programs for A324919, there is no canonical definition to state claims against.
-/

/-! ## A324919.P10778919035799702480

`∑{d}[n+1, A008683(#)*A129744((n+1)/#)]`
-/

namespace A324919.P10778919035799702480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A129744 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A324919.P10778919035799702480

/-! ## A324919.P10170564787060180492

`∑{d}[n+1, A069158(#)*A129744((n+1)/#)]`
-/

namespace A324919.P10170564787060180492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069158 d * A129744 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A324919.P10170564787060180492

/-! ## A324919.P2242459851241189625

`∑{d}[n+1, A129744(#)*A133639((n+1)/#)]`
-/

namespace A324919.P2242459851241189625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129744 d * A133639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A324919.P2242459851241189625

/-! ## A324919.P12103133288402482722

`∑{d}[n+1, A129744(#)*A197774((n+1)/#)]`
-/

namespace A324919.P12103133288402482722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129744 d * A197774 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A324919.P12103133288402482722

/-! ## A324919.P17230839508878724348

`∑{d}[n+1, A129744(#)*A219009((n+1)/#)]`
-/

namespace A324919.P17230839508878724348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129744 d * A219009 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A324919.P17230839508878724348

/-!
# A324920: a(n) is the number of iterations of the integer splitting function (A056737) necessary to reach zero.

The programs for A324920, there is no canonical definition to state claims against.
-/

/-! ## A324920.P12642705471246971098

`a(A056737(n))+1` with `a(0)=0`
-/

namespace A324920.P12642705471246971098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A056737 n).toNat + 1

end

end A324920.P12642705471246971098

/-! ## A324920.P12177968639302296342

`A005496(a(A056737(n)))` with `a(0)=0`
-/

namespace A324920.P12177968639302296342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005496 (a (A056737 n).toNat).toNat

end

end A324920.P12177968639302296342

/-! ## A324920.P8804335888289506042

`A005555(a(A056737(n)))` with `a(0)=0`
-/

namespace A324920.P8804335888289506042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005555 (a (A056737 n).toNat).toNat

end

end A324920.P8804335888289506042

/-! ## A324920.P1451191309056924836

`A008728(a(A056737(n)))` with `a(0)=0`
-/

namespace A324920.P1451191309056924836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008728 (a (A056737 n).toNat).toNat

end

end A324920.P1451191309056924836

/-! ## A324920.P1848789896926967826

`A008729(a(A056737(n)))` with `a(0)=0`
-/

namespace A324920.P1848789896926967826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008729 (a (A056737 n).toNat).toNat

end

end A324920.P1848789896926967826

/-! ## A324920.P2040759024173377549

`A077168(a(A056737(n)))` with `a(0)=0`
-/

namespace A324920.P2040759024173377549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A077168 (a (A056737 n).toNat).toNat

end

end A324920.P2040759024173377549

/-! ## A324920.P7102120095092268361

`A199343(a(A056737(n)))` with `a(0)=0`
-/

namespace A324920.P7102120095092268361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A199343 (a (A056737 n).toNat).toNat

end

end A324920.P7102120095092268361

/-! ## A324920.P3900231841128776635

`A256079(a(A056737(n)))` with `a(0)=0`
-/

namespace A324920.P3900231841128776635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A256079 (a (A056737 n).toNat).toNat

end

end A324920.P3900231841128776635

/-! ## A324920.P17700349205410789490

`A291769(a(A056737(n)))` with `a(0)=0`
-/

namespace A324920.P17700349205410789490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A291769 (a (A056737 n).toNat).toNat

end

end A324920.P17700349205410789490

/-! ## A324920.P5156343011053133324

`A000433(a(A056737(n))-log2(1/2))` with `a(0)=0`
-/

namespace A324920.P5156343011053133324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000433 (SequenceMachineLib.roundAway ((a (A056737 n).toNat : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

end

end A324920.P5156343011053133324

/-! ## A324920.P9491289805793261445

`round(a(A056737(n))-(A000007(n)-1))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A324920.P9491289805793261445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (A056737 n).toNat - (A000007 n - 1)

end

end A324920.P9491289805793261445

/-!
# A324921: Index of first occurrence of n in A324920.

The programs for A324921, there is no canonical definition to state claims against.
-/

/-! ## A324921.P13337269712029602496

`A023446(or(4, A307034(n)))`
-/

namespace A324921.P13337269712029602496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (Int.lor 4 (A307034 n)).toNat

end

end A324921.P13337269712029602496

/-! ## A324921.P4275258628661196459

`A307034(n)-A096527(A260613(n))`
-/

namespace A324921.P4275258628661196459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307034 n - A096527 (A260613 n).toNat

end

end A324921.P4275258628661196459

/-!
# A324922: a(n) = unique m such that m/A003963(m) = n, where A003963 is product of prime indices.

The programs for A324922, the canonical program `A324922.P11869538492641672189` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324922 has offset 1).

The definition of A324922 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324922.P8857390687663274787

`(n+1)*a(A003963(n+1)-1)` with `a(0)=1`
-/

namespace A324922.P8857390687663274787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (A003963 (n + 1) - 1).toNat

end

end A324922.P8857390687663274787

namespace A324922

/-- `(n+1)*a(A003963(n+1)-1)` -/
def P8857390687663274787.Spec : Prop :=
  ∀ n, (P8857390687663274787.a n : ℤ) = A324922 (n + 1)

end A324922

/-! ## A324922.P1109446205574011491

`(n+1)*a(A023443(A003963(n+1)))` with `a(0)=1`
-/

namespace A324922.P1109446205574011491
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (A023443 (A003963 (n + 1)).toNat).toNat

end

end A324922.P1109446205574011491

namespace A324922

/-- `(n+1)*a(A023443(A003963(n+1)))` -/
def P1109446205574011491.Spec : Prop :=
  ∀ n, (P1109446205574011491.a n : ℤ) = A324922 (n + 1)

end A324922

/-! ## A324922.P3714218167549986028

`(n+1)*a(A064553(A064989(n+1))-1)` with `a(0)=1`
-/

namespace A324922.P3714218167549986028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (A064553 (A064989 (n + 1)).toNat - 1).toNat

end

end A324922.P3714218167549986028

namespace A324922

/-- `(n+1)*a(A064553(A064989(n+1))-1)` -/
def P3714218167549986028.Spec : Prop :=
  ∀ n, (P3714218167549986028.a n : ℤ) = A324922 (n + 1)

end A324922

/-! ## A324922.P11869538492641672189

`(n+1)*a(∑{d}[n+1, A008683(#)*A003977((n+1)/#)]-1)` with `a(0)=1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A324922

/-- `(n+1)*a(∑{d}[n+1, A008683(#)*A003977((n+1)/#)]-1)` -/
def P11869538492641672189.Spec : Prop :=
  ∀ n, (P11869538492641672189.a n : ℤ) = A324922 (n + 1)

theorem P11869538492641672189.correct : P11869538492641672189.Spec := by
  intro n
  simp only [A324922, Nat.add_sub_cancel]

end A324922

/-! ## A324922.P13173854848519165308

`(n+1)*a(A156061(n+1)*A290104(n+1)/A290105(n+1)-1)` with `a(0)=1`
-/

namespace A324922.P13173854848519165308
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (SequenceMachineLib.roundAway ((A156061 (n + 1) * A290104 (n + 1) : ℚ) / (A290105 (n + 1) : ℚ) - 1)).toNat

end

end A324922.P13173854848519165308

namespace A324922

/-- `(n+1)*a(A156061(n+1)*A290104(n+1)/A290105(n+1)-1)` -/
def P13173854848519165308.Spec : Prop :=
  ∀ n, (P13173854848519165308.a n : ℤ) = A324922 (n + 1)

end A324922

/-! ## A324922.P6384634431138016

`(n+1)*a(A290106(A064549(n+1))-1)` with `a(0)=1`
-/

namespace A324922.P6384634431138016
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) * a (A290106 (A064549 (n + 1)).toNat - 1).toNat

end

end A324922.P6384634431138016

namespace A324922

/-- `(n+1)*a(A290106(A064549(n+1))-1)` -/
def P6384634431138016.Spec : Prop :=
  ∀ n, (P6384634431138016.a n : ℤ) = A324922 (n + 1)

end A324922

/-! ## A324922.P5535841925637711117

`A324850(A324934(n+1))`
-/

namespace A324922.P5535841925637711117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324850 (A324934 (n + 1)).toNat

end

end A324922.P5535841925637711117

namespace A324922

/-- `A324850(A324934(n+1))` -/
def P5535841925637711117.Spec : Prop :=
  ∀ n, P5535841925637711117.a n = A324922 (n + 1)

end A324922

/-!
# A324923: Number of distinct factors in the factorization of n into factors q(i) = prime(i)/i, i > 0.

The programs for A324923, there is no canonical definition to state claims against.
-/

/-! ## A324923.P1623741300054318349

`A317713(n+1)-1`
-/

namespace A324923.P1623741300054318349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317713 (n + 1) - 1

end

end A324923.P1623741300054318349

/-! ## A324923.P10005399864428491899

`A196050(n+1)-A366386(n+1)`
-/

namespace A324923.P10005399864428491899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196050 (n + 1) - A366386 (n + 1)

end

end A324923.P10005399864428491899

/-! ## A324923.P16015745056866945642

`A166931(n+1)%A317713(n+1)`
-/

namespace A324923.P16015745056866945642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166931 (n + 1)) (A317713 (n + 1))

end

end A324923.P16015745056866945642

/-! ## A324923.P13790016169524479637

`A127229(n+5)%A317713(n+1)`
-/

namespace A324923.P13790016169524479637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A317713 (n + 1))

end

end A324923.P13790016169524479637

/-! ## A324923.P2493181518153780294

`A061775(n+1)-(A366386(n+1)+1)`
-/

namespace A324923.P2493181518153780294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (n + 1) - (A366386 (n + 1) + 1)

end

end A324923.P2493181518153780294

/-! ## A324923.P6400160171143641031

`A058197(n+1)%A317713(n+1)`
-/

namespace A324923.P6400160171143641031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A317713 (n + 1))

end

end A324923.P6400160171143641031

/-! ## A324923.P14151779741078276240

`A083800(n+1)%A317713(n+1)`
-/

namespace A324923.P14151779741078276240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A317713 (n + 1))

end

end A324923.P14151779741078276240

/-! ## A324923.P5888345832621016216

`A070198(n)%A317713(n+1)`
-/

namespace A324923.P5888345832621016216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A317713 (n + 1))

end

end A324923.P5888345832621016216

/-! ## A324923.P5279786701758439272

`A079782(n+1)%A317713(n+1)`
-/

namespace A324923.P5279786701758439272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A317713 (n + 1))

end

end A324923.P5279786701758439272

/-! ## A324923.P6982239186095048310

`A083685(n+1)%A317713(n+1)`
-/

namespace A324923.P6982239186095048310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A317713 (n + 1))

end

end A324923.P6982239186095048310

/-! ## A324923.P141870777455206567

`A121934(n+1)%A317713(n+1)`
-/

namespace A324923.P141870777455206567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A317713 (n + 1))

end

end A324923.P141870777455206567

/-! ## A324923.P7577798535360988722

`A030494(n+1)%A317713(n+1)`
-/

namespace A324923.P7577798535360988722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A317713 (n + 1))

end

end A324923.P7577798535360988722

/-! ## A324923.P10101350490457748894

`∑{e}[A324922(n+1), gcd(7, #)]`
-/

namespace A324923.P10101350490457748894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.gcd 7 (Nat.factorization (f1 n).natAbs p)

end

end A324923.P10101350490457748894

/-! ## A324923.P1938801850613310518

`∑{p}[A324922(n+1), A001222(#)]`
-/

namespace A324923.P1938801850613310518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A324923.P1938801850613310518

/-! ## A324923.P1346334347627540080

`∑{p}[A324922(n+1), A008834(#)]`
-/

namespace A324923.P1346334347627540080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A008834 p

end

end A324923.P1346334347627540080

/-! ## A324923.P15923409188699629245

`A001222(∏{p}[A324922(n+1), #])`
-/

namespace A324923.P15923409188699629245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A324923.P15923409188699629245

/-! ## A324923.P7535802323328744455

`∑{e}[A324922(n+1), A290105(#)]`
-/

namespace A324923.P7535802323328744455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A290105 (Nat.factorization (f1 n).natAbs p)

end

end A324923.P7535802323328744455

/-! ## A324923.P3692780500853874331

`∑{e}[A324922(n+1), A206494(A206494(#))]`
-/

namespace A324923.P3692780500853874331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A206494 (A206494 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A324923.P3692780500853874331

/-! ## A324923.P12830958873980794487

`A072828(n+1)%A317713(n+1)`
-/

namespace A324923.P12830958873980794487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A317713 (n + 1))

end

end A324923.P12830958873980794487

/-! ## A324923.P11581154598202934583

`A198277(n)%A317713(n+1)`
-/

namespace A324923.P11581154598202934583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A317713 (n + 1))

end

end A324923.P11581154598202934583

/-!
# A324924: Irregular triangle read by rows giving the factorization of n into factors q(i) = prime(i)/i, i > 0.

The programs for A324924, there is no canonical definition to state claims against.
-/

/-! ## A324924.P16809496048816167577

`gcd(A031980(A018144(n)), A031985(n+1))`
-/

namespace A324924.P16809496048816167577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A031980 (A018144 n).toNat) (A031985 (n + 1))

end

end A324924.P16809496048816167577

/-! ## A324924.P6766852930996596927

`gcd(A012257(2*n+3), A264569(A182181(2*(n+1))))`
-/

namespace A324924.P6766852930996596927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A012257 (2 * n + 3)) (A264569 (A182181 (2 * (n + 1))).toNat)

end

end A324924.P6766852930996596927

/-! ## A324924.P1389131344092304097

`A000188(∑[∑[floor(n/12)]!]+1)`
-/

namespace A324924.P1389131344092304097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 12⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A324924.P1389131344092304097

/-! ## A324924.P274044203232858989

`gcd(∑[A219049(n+4)], A069359(n+2))`
-/

namespace A324924.P274044203232858989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219049 (n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A069359 (n + 2))

end

end A324924.P274044203232858989

/-! ## A324924.P6354904893115111001

`A124010(lt[A389553(2*n+3), A326031(n)])`
-/

namespace A324924.P6354904893115111001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389553 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326031 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124010 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A324924.P6354904893115111001

/-!
# A324926: Numbers not divisible by any prime indices of their prime indices.

The programs for A324926, there is no canonical definition to state claims against.
-/

/-! ## A324926.P12023340797474686675

`record[A247503(A008619(A113221(n)))]`
-/

namespace A324926.P12023340797474686675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A008619 (A113221 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324926.P12023340797474686675

/-! ## A324926.P13676072247707098829

`record[A247503(A004719(A139338(n+1)))]`
-/

namespace A324926.P13676072247707098829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A004719 (A139338 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324926.P13676072247707098829

/-! ## A324926.P11870428637956727963

`A066208(lt[A305713(n+1), A305419(n+1)])`
-/

namespace A324926.P11870428637956727963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066208 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A324926.P11870428637956727963

/-! ## A324926.P14126830639172080534

`eq[char[A247503(n+1)], A124778(n)]`
-/

namespace A324926.P14126830639172080534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A324926.P14126830639172080534

/-! ## A324926.P7573097336819408589

`eq[char[A319525(n+1)], A124778(n)]`
-/

namespace A324926.P7573097336819408589
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319525 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A324926.P7573097336819408589

/-!
# A324927: Matula-Goebel numbers of rooted trees of depth 2. Numbers that are not powers of 2 but whose prime indices are all powers of 2.

The programs for A324927, there is no canonical definition to state claims against.
-/

/-! ## A324927.P7256757742554528750

`eq[2, A109082(n+1)]+1`
-/

namespace A324927.P7256757742554528750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324927.P7256757742554528750

/-! ## A324927.P6692963603793254245

`eq[3, A358552(n+1)]+1`
-/

namespace A324927.P6692963603793254245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358552 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324927.P6692963603793254245

/-! ## A324927.P8076336801667588496

`eq[1, 33%A198328(n+1)]+1`
-/

namespace A324927.P8076336801667588496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 33 (A198328 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324927.P8076336801667588496

/-! ## A324927.P8955407925395810451

`eq[2, A109082(floor(2/acot(n))-n)]`
-/

namespace A324927.P8955407925395810451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324927.P8955407925395810451

/-! ## A324927.P7112239541568069283

`eq[4, a(A003963(n+1)-1)+1]+1` with `a(0)=2`
-/

namespace A324927.P7112239541568069283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (A003963 (n + 1) - 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324927.P7112239541568069283

/-! ## A324927.P17715471401701104967

`eq[2, A109082(A004277(n))]`
-/

namespace A324927.P17715471401701104967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324927.P17715471401701104967

/-! ## A324927.P13087051649729349717

`eq[2, A109082(A008574(n))]`
-/

namespace A324927.P13087051649729349717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324927.P13087051649729349717

/-! ## A324927.P5267326023788434955

`eq[2, A109082(A022144(n))]`
-/

namespace A324927.P5267326023788434955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324927.P5267326023788434955

/-! ## A324927.P13428057673707378982

`eq[2, A109082(A028310(n))]`
-/

namespace A324927.P13428057673707378982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324927.P13428057673707378982

/-! ## A324927.P16089520329066505300

`filter[A318400(n+1), A347523(#)]`
-/

namespace A324927.P16089520329066505300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A324927.P16089520329066505300

/-!
# A324928: Matula-Goebel numbers of rooted trees of depth 3.

The programs for A324928, there is no canonical definition to state claims against.
-/

/-! ## A324928.P15075391770086030514

`eq[3, A109082(n+1)]+1`
-/

namespace A324928.P15075391770086030514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324928.P15075391770086030514

/-! ## A324928.P6053891532983763971

`eq[4, A358552(n+1)]+1`
-/

namespace A324928.P6053891532983763971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358552 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A324928.P6053891532983763971

/-! ## A324928.P16036165488899172912

`eq[4, a(A003963(n+1)-1)+1]+1` with `a(0)=1`
-/

namespace A324928.P16036165488899172912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (A003963 (n + 1) - 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324928.P16036165488899172912

/-! ## A324928.P14234050523651613321

`eq[0, (a(A156061(n+1)-1)+1)%4]+1` with `a(0)=1`
-/

namespace A324928.P14234050523651613321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  (f2 (A156061 (n + 1) - 1).toNat + 1) % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324928.P14234050523651613321

/-! ## A324928.P5688755229066265413

`eq[3, A109082(A004277(n))]`
-/

namespace A324928.P5688755229066265413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324928.P5688755229066265413

/-! ## A324928.P11447146848511737404

`eq[3, A109082(A008458(n))]`
-/

namespace A324928.P11447146848511737404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324928.P11447146848511737404

/-! ## A324928.P10878157567815163114

`eq[3, A109082(A008486(n))]`
-/

namespace A324928.P10878157567815163114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324928.P10878157567815163114

/-! ## A324928.P12676461314464069817

`eq[3, A109082(A008574(n))]`
-/

namespace A324928.P12676461314464069817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324928.P12676461314464069817

/-! ## A324928.P7049835653348008002

`eq[3, A109082(A022144(n))]`
-/

namespace A324928.P7049835653348008002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324928.P7049835653348008002

/-! ## A324928.P17594784640307456882

`eq[1, A109082(A028310(n))-2]`
-/

namespace A324928.P17594784640307456882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A028310 n).toNat - 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324928.P17594784640307456882

/-!
# A324929: Numbers whose product of prime indices is even.

The programs for A324929, there is no canonical definition to state claims against.
-/

/-! ## A324929.P2124253365327839359

`lt[1, A248101(∏{p}[n, #])]`
-/

namespace A324929.P2124253365327839359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (∏ p ∈ Nat.primeFactors (f3 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A324929.P2124253365327839359

/-! ## A324929.P14806488310834279907

`lt[log2(a(A324967(n))), 1]` with `a(0)=3`
-/

namespace A324929.P14806488310834279907
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [3] fun n f1 =>
  Real.logb 2 (f1 (A324967 n).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A324929.P14806488310834279907

/-! ## A324929.P13140194146424259801

`comp[C(A247503(n+1), n)]`
-/

namespace A324929.P13140194146424259801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A247503 (n + 1)).toNat n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A324929.P13140194146424259801

/-! ## A324929.P12652265226082172260

`lt[0, A257992(n+1)]+1`
-/

namespace A324929.P12652265226082172260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A324929.P12652265226082172260

/-! ## A324929.P3752901157034816151

`lt[0, A344931(n+1)]+1`
-/

namespace A324929.P3752901157034816151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344931 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A324929.P3752901157034816151

/-! ## A324929.P12896812190437108221

`lt[1, A248101(n+1)]+1`
-/

namespace A324929.P12896812190437108221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A324929.P12896812190437108221

/-! ## A324929.P487308338436158350

`lt[1, A319522(n+1)]+1`
-/

namespace A324929.P487308338436158350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319522 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A324929.P487308338436158350

/-! ## A324929.P12297676767274393964

`lt[A247503(A008458(n)), n]`
-/

namespace A324929.P12297676767274393964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247503 (A008458 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A324929.P12297676767274393964

/-! ## A324929.P3740706156754287156

`eq[1, A000010(a(A257992(n)))]` with `a(0)=3`
-/

namespace A324929.P3740706156754287156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A257992 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324929.P3740706156754287156

/-! ## A324929.P9518254358660323492

`eq[1, A000045(a(A257992(n)))]` with `a(0)=3`
-/

namespace A324929.P9518254358660323492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A257992 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A324929.P9518254358660323492

/-!
# A324930: Total weight of the multiset of multisets of multisets with MMM number n. Totally additive with a(prime(n)) = A302242(n).

The programs for A324930, there is no canonical definition to state claims against.
-/

/-! ## A324930.P15995988565432701069

`∑{e}[A325032(n+1), #]`
-/

namespace A324930.P15995988565432701069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325032 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A324930.P15995988565432701069

/-! ## A324930.P17966822278695555922

`A302242(A003963(n+1))`
-/

namespace A324930.P17966822278695555922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A003963 (n + 1)).toNat

end

end A324930.P17966822278695555922

/-! ## A324930.P13314980400859481539

`A001222(A325032(n+1))`
-/

namespace A324930.P13314980400859481539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A325032 (n + 1)).toNat

end

end A324930.P13314980400859481539

/-! ## A324930.P692738793966613350

`A302242(A366789(n+1))`
-/

namespace A324930.P692738793966613350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302242 (A366789 (n + 1)).toNat

end

end A324930.P692738793966613350

/-! ## A324930.P6391009305406989084

`∑{e}[A003963(A003963(2*(n+1))), #]`
-/

namespace A324930.P6391009305406989084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A003963 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A324930.P6391009305406989084

/-! ## A324930.P8516220464320986772

`A001222(A003963(2*A003963(n+1)))`
-/

namespace A324930.P8516220464320986772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003963 (2 * A003963 (n + 1)).toNat).toNat

end

end A324930.P8516220464320986772

/-! ## A324930.P14585324827166982630

`A001222(A003963(lcm(2, A003963(n+1))))`
-/

namespace A324930.P14585324827166982630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003963 (Int.lcm 2 (A003963 (n + 1)))).toNat

end

end A324930.P14585324827166982630

/-! ## A324930.P8374124991987854923

`A001222(sqrt(A003963(A003963((n+1)²))))`
-/

namespace A324930.P8374124991987854923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (A003963 (A003963 ((n + 1) ^ 2)).toNat : ℝ))).toNat

end

end A324930.P8374124991987854923

/-! ## A324930.P946296305477064297

`∑{e}[A181821(A003963(n+1)), A001222(#)]`
-/

namespace A324930.P946296305477064297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A003963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (Nat.factorization (f1 n).natAbs p)

end

end A324930.P946296305477064297

/-! ## A324930.P3912833622843048954

`A001222(A003963(A003963(A004277(n+1))))`
-/

namespace A324930.P3912833622843048954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A003963 (A003963 (A004277 (n + 1)).toNat).toNat).toNat

end

end A324930.P3912833622843048954

/-!
# A324931: Integers in the list of quotients of positive integers by their product of prime indices.

The programs for A324931, the canonical program `A324931.P13123715224171136249` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324931 has offset 1).

The definition of A324931 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003963, A324850, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324931.P13123715224171136249

`A324850(n+1)/A003963(A324850(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A324931

/-- `A324850(n+1)/A003963(A324850(n+1))` -/
def P13123715224171136249.Spec : Prop :=
  ∀ n, P13123715224171136249.a n = (A324931 (n + 1) : ℚ)

end A324931

/-! ## A324931.P5459966378201802377

`A324932(A324850(n+1))`
-/

namespace A324931.P5459966378201802377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (A324850 (n + 1)).toNat

end

end A324931.P5459966378201802377

namespace A324931

/-- `A324932(A324850(n+1))` -/
def P5459966378201802377.Spec : Prop :=
  ∀ n, P5459966378201802377.a n = A324931 (n + 1)

end A324931

/-! ## A324931.P14982174891505246869

`A324932(eq[1, char[A324922(n+1)]])`
-/

namespace A324931.P14982174891505246869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324922 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A324931.P14982174891505246869

namespace A324931

/-- `A324932(eq[1, char[A324922(n+1)]])` -/
def P14982174891505246869.Spec : Prop :=
  ∀ n, P14982174891505246869.a n = A324931 (n + 1)

end A324931

/-! ## A324931.P12288903584867500622

`A324932(record[(n+1)/A324933(n+1)])`
-/

namespace A324931.P12288903584867500622
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A324933 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A324931.P12288903584867500622

namespace A324931

/-- `A324932(record[(n+1)/A324933(n+1)])` -/
def P12288903584867500622.Spec : Prop :=
  ∀ n, P12288903584867500622.a n = A324931 (n + 1)

end A324931

/-!
# A324932: Numerator in the division of n by the product of prime indices of n.

The programs for A324932, the canonical program `A324932.P11249719822832322357` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324932 has offset 1).

The definition of A324932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324932.P11249719822832322357

`(n+1)/gcd(n+1, A003963(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A324932

/-- `(n+1)/gcd(n+1, A003963(n+1))` -/
def P11249719822832322357.Spec : Prop :=
  ∀ n, P11249719822832322357.a n = (A324932 (n + 1) : ℚ)

end A324932

/-! ## A324932.P15531504974227100430

`(n+1)/gcd(A003963(n+1), A131738(n))`
-/

namespace A324932.P15531504974227100430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A003963 (n + 1)) (A131738 n) : ℚ)

end

end A324932.P15531504974227100430

namespace A324932

/-- `(n+1)/gcd(A003963(n+1), A131738(n))` -/
def P15531504974227100430.Spec : Prop :=
  ∀ n, P15531504974227100430.a n = (A324932 (n + 1) : ℚ)

end A324932

/-! ## A324932.P12939220495450417695

`(n+1)/A003963(n+1)*A324933(n+1)`
-/

namespace A324932.P12939220495450417695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003963 (n + 1) : ℚ) * (A324933 (n + 1) : ℚ)

end

end A324932.P12939220495450417695

namespace A324932

/-- `(n+1)/A003963(n+1)*A324933(n+1)` -/
def P12939220495450417695.Spec : Prop :=
  ∀ n, P12939220495450417695.a n = (A324932 (n + 1) : ℚ)

end A324932

/-! ## A324932.P16836072681397275631

`lcm(A000027(n+1), A003963(n+1))/A003963(n+1)`
-/

namespace A324932.P16836072681397275631
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000027 (n + 1)) (A003963 (n + 1)) : ℚ) / (A003963 (n + 1) : ℚ)

end

end A324932.P16836072681397275631

namespace A324932

/-- `lcm(A000027(n+1), A003963(n+1))/A003963(n+1)` -/
def P16836072681397275631.Spec : Prop :=
  ∀ n, P16836072681397275631.a n = (A324932 (n + 1) : ℚ)

end A324932

/-! ## A324932.P491725552816731042

`A054531(A003963(n+1)+∑[n])`
-/

namespace A324932.P491725552816731042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A003963 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A324932.P491725552816731042

namespace A324932

/-- `A054531(A003963(n+1)+∑[n])` -/
def P491725552816731042.Spec : Prop :=
  ∀ n, P491725552816731042.a n = A324932 (n + 1)

end A324932

/-! ## A324932.P10562869029728505988

`A277227(A003963(n+1)+A000124(n))`
-/

namespace A324932.P10562869029728505988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A003963 (n + 1) + A000124 n).toNat

end

end A324932.P10562869029728505988

namespace A324932

/-- `A277227(A003963(n+1)+A000124(n))` -/
def P10562869029728505988.Spec : Prop :=
  ∀ n, P10562869029728505988.a n = A324932 (n + 1)

end A324932

/-! ## A324932.P12146994065808393749

`lcm(n+1, A319567(n))/A319567(n)`
-/

namespace A324932.P12146994065808393749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A319567 n) : ℚ) / (A319567 n : ℚ)

end

end A324932.P12146994065808393749

namespace A324932

/-- `lcm(n+1, A319567(n))/A319567(n)` -/
def P12146994065808393749.Spec : Prop :=
  ∀ n, P12146994065808393749.a n = (A324932 (n + 1) : ℚ)

end A324932

/-!
# A324933: Denominator in the division of n by the product of prime indices of n.

The programs for A324933, the canonical program `A324933.P518208270905765173` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324933 has offset 1).

The definition of A324933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324933.P518208270905765173

`lcm(n+1, A003963(n+1))/(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A324933

/-- `lcm(n+1, A003963(n+1))/(n+1)` -/
def P518208270905765173.Spec : Prop :=
  ∀ n, P518208270905765173.a n = (A324933 (n + 1) : ℚ)

end A324933

/-! ## A324933.P9237184083390832315

`A003963(n+1)/(n+1)*A324932(n+1)`
-/

namespace A324933.P9237184083390832315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (n + 1) : ℚ) / (n + 1 : ℚ) * (A324932 (n + 1) : ℚ)

end

end A324933.P9237184083390832315

namespace A324933

/-- `A003963(n+1)/(n+1)*A324932(n+1)` -/
def P9237184083390832315.Spec : Prop :=
  ∀ n, P9237184083390832315.a n = (A324933 (n + 1) : ℚ)

end A324933

/-! ## A324933.P7019042543272598832

`A003963(n+1)/gcd(A003963(n+1), A131738(n))`
-/

namespace A324933.P7019042543272598832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (n + 1) : ℚ) / (Int.gcd (A003963 (n + 1)) (A131738 n) : ℚ)

end

end A324933.P7019042543272598832

namespace A324933

/-- `A003963(n+1)/gcd(A003963(n+1), A131738(n))` -/
def P7019042543272598832.Spec : Prop :=
  ∀ n, P7019042543272598832.a n = (A324933 (n + 1) : ℚ)

end A324933

/-! ## A324933.P17739802979334037440

`A003963(n+1)/gcd(n+1, A003963(A026741(n+1)))`
-/

namespace A324933.P17739802979334037440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A003963 (A026741 (n + 1)).toNat) : ℚ)

end

end A324933.P17739802979334037440

namespace A324933

/-- `A003963(n+1)/gcd(n+1, A003963(A026741(n+1)))` -/
def P17739802979334037440.Spec : Prop :=
  ∀ n, P17739802979334037440.a n = (A324933 (n + 1) : ℚ)

end A324933

/-! ## A324933.P4793831079077241099

`A003963(n+1)/gcd(A000027(n+1), A003963(2*n+2))`
-/

namespace A324933.P4793831079077241099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A003963 (2 * n + 2)) : ℚ)

end

end A324933.P4793831079077241099

namespace A324933

/-- `A003963(n+1)/gcd(A000027(n+1), A003963(2*n+2))` -/
def P4793831079077241099.Spec : Prop :=
  ∀ n, P4793831079077241099.a n = (A324933 (n + 1) : ℚ)

end A324933

/-! ## A324933.P10561045889256796487

`A164306(A003963(n+1)+∑[n])`
-/

namespace A324933.P10561045889256796487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A003963 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A324933.P10561045889256796487

namespace A324933

/-- `A164306(A003963(n+1)+∑[n])` -/
def P10561045889256796487.Spec : Prop :=
  ∀ n, P10561045889256796487.a n = A324933 (n + 1)

end A324933

/-! ## A324933.P7708360090069621799

`A324932(A324922(A324932(n+1))/(n+1))`
-/

namespace A324933.P7708360090069621799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324932 (SequenceMachineLib.roundAway ((A324922 (A324932 (n + 1)).toNat : ℚ) / (n + 1 : ℚ))).toNat

end

end A324933.P7708360090069621799

namespace A324933

/-- `A324932(A324922(A324932(n+1))/(n+1))` -/
def P7708360090069621799.Spec : Prop :=
  ∀ n, P7708360090069621799.a n = A324933 (n + 1)

end A324933

/-!
# A324935: Matula-Goebel numbers of rooted trees whose non-leaf terminal subtrees are all different.

The programs for A324935, there is no canonical definition to state claims against.
-/

/-! ## A324935.P6610867631722733174

`∪[A324978(n+1), A209638(n)]`
-/

namespace A324935.P6610867631722733174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209638 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A324935.P6610867631722733174

/-! ## A324935.P11506106560597519684

`∪[A324968(n+1), A324978(n+1)]`
-/

namespace A324935.P11506106560597519684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A324935.P11506106560597519684

/-! ## A324935.P10107185307199226996

`eq[A324923(n+1), A342507(n+1)]+1`
-/

namespace A324935.P10107185307199226996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324923 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A324935.P10107185307199226996

/-! ## A324935.P7191806780495724237

`lt[A342507(n+1), A317713(n+1)]+1`
-/

namespace A324935.P7191806780495724237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317713 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A324935.P7191806780495724237

/-! ## A324935.P4116204458681293852

`lt[A342507(n+1), A001221(A324922(n+1))+1]+1`
-/

namespace A324935.P4116204458681293852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A324922 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A324935.P4116204458681293852

/-!
# A324936: Number of unlabeled rooted trees with n vertices whose non-leaf terminal subtrees are all different.

The programs for A324936, there is no canonical definition to state claims against.
-/

/-! ## A324936.P6576714332691298516

`A324979(n+1)+A324969(n+1)`
-/

namespace A324936.P6576714332691298516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324979 (n + 1) + A324969 (n + 1)

end

end A324936.P6576714332691298516

/-! ## A324936.P9571344076479480109

`A324979(n+1)+gcd(C(2, n), A000045(n))`
-/

namespace A324936.P9571344076479480109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324979 (n + 1) + (Int.gcd (Nat.choose 2 n : ℤ) (A000045 n) : ℤ)

end

end A324936.P9571344076479480109

/-! ## A324936.P15241528339081163212

`A324979(n+1)+A000045(round(sqrt(n²+1)))`
-/

namespace A324936.P15241528339081163212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324979 (n + 1) + A000045 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A324936.P15241528339081163212

/-! ## A324936.P11067539796493308953

`A324979(n+1)+∏{d}[n, A001222(#)]+A000045(n)`
-/

namespace A324936.P11067539796493308953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324979 (n + 1) + (∏ d ∈ Nat.divisors (f1 n), A001222 d + A000045 n)

end

end A324936.P11067539796493308953

/-! ## A324936.P1453941360758655807

`A324979(n+1)+∏{e}[A020639(n+1), A000045(n*#)]`
-/

namespace A324936.P1453941360758655807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324979 (n + 1) + ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (n * Nat.factorization (f1 n).natAbs p)

end

end A324936.P1453941360758655807

/-!
# A324937: Triangle read by rows: T(n, k) = 2*n*k + n + k - 8.

The programs for A324937, the canonical program `A324937.P9655067151488371646` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324937 has offset 1).

The definition of A324937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324937.P9655067151488371646

`A155551(n+1)+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A324937

/-- `A155551(n+1)+1` -/
def P9655067151488371646.Spec : Prop :=
  ∀ n, P9655067151488371646.a n = A324937 (n + 1)

theorem P9655067151488371646.correct : P9655067151488371646.Spec := by
  intro n
  simp only [A324937, Nat.add_sub_cancel]

end A324937

/-! ## A324937.P3389328000387747075

`A144670(n+1)-1`
-/

namespace A324937.P3389328000387747075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144670 (n + 1) - 1

end

end A324937.P3389328000387747075

namespace A324937

/-- `A144670(n+1)-1` -/
def P3389328000387747075.Spec : Prop :=
  ∀ n, P3389328000387747075.a n = A324937 (n + 1)

theorem P3389328000387747075.correct : P3389328000387747075.Spec := by
  intro n
  simp only [A324937, Nat.add_sub_cancel, A324937.P3389328000387747075.a, A324937.P9655067151488371646.a, A144670, A144670.P16046816963376564463.a, A155551, A155551.P164788176589614961.a, A155550, A155550.P1170858249237067651.a, A155546, A155546.P2386952917106834247.a, A154684, A154684.P4294763165931368592.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324937

/-! ## A324937.P13522424572907373479

`A155550(n+1)-2`
-/

namespace A324937.P13522424572907373479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155550 (n + 1) - 2

end

end A324937.P13522424572907373479

namespace A324937

/-- `A155550(n+1)-2` -/
def P13522424572907373479.Spec : Prop :=
  ∀ n, P13522424572907373479.a n = A324937 (n + 1)

theorem P13522424572907373479.correct : P13522424572907373479.Spec := by
  intro n
  simp only [A324937, Nat.add_sub_cancel, A324937.P13522424572907373479.a, A324937.P9655067151488371646.a, A155550, A155550.P1170858249237067651.a, A155551, A155551.P164788176589614961.a, A155546, A155546.P2386952917106834247.a, A154684, A154684.P4294763165931368592.a, A131421, A131421.P18127152066384474577.a, A151890, A151890.P12585172383525440924.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324937

/-! ## A324937.P6456635065796064313

`A155546(n+1)-3`
-/

namespace A324937.P6456635065796064313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155546 (n + 1) - 3

end

end A324937.P6456635065796064313

namespace A324937

/-- `A155546(n+1)-3` -/
def P6456635065796064313.Spec : Prop :=
  ∀ n, P6456635065796064313.a n = A324937 (n + 1)

theorem P6456635065796064313.correct : P6456635065796064313.Spec := by
  intro n
  simp only [A324937, Nat.add_sub_cancel, A324937.P6456635065796064313.a, A324937.P9655067151488371646.a, A155546, A155546.P2386952917106834247.a, A155551, A155551.P164788176589614961.a, A154684, A154684.P4294763165931368592.a, A155550, A155550.P1170858249237067651.a, A131421, A131421.P18127152066384474577.a, A151890, A151890.P12585172383525440924.a, A051162, A051162.P14261216125704105833.a, A143218, A143218.P4624166105486444444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324937

/-! ## A324937.P18204313333545228632

`A155724(n+1)-4`
-/

namespace A324937.P18204313333545228632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155724 (n + 1) - 4

end

end A324937.P18204313333545228632

namespace A324937

/-- `A155724(n+1)-4` -/
def P18204313333545228632.Spec : Prop :=
  ∀ n, P18204313333545228632.a n = A324937 (n + 1)

theorem P18204313333545228632.correct : P18204313333545228632.Spec := by
  intro n
  simp only [A324937, Nat.add_sub_cancel, A324937.P18204313333545228632.a, A324937.P9655067151488371646.a, A155551, A155551.P164788176589614961.a, A155724, A155724.P4877932996777807972.a, A155546, A155546.P2386952917106834247.a, A155550, A155550.P1170858249237067651.a, A154684, A154684.P4294763165931368592.a, A131421, A131421.P18127152066384474577.a, A151890, A151890.P12585172383525440924.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324937

/-! ## A324937.P15911700949266704563

`A154684(n+1)-5`
-/

namespace A324937.P15911700949266704563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1) - 5

end

end A324937.P15911700949266704563

namespace A324937

/-- `A154684(n+1)-5` -/
def P15911700949266704563.Spec : Prop :=
  ∀ n, P15911700949266704563.a n = A324937 (n + 1)

theorem P15911700949266704563.correct : P15911700949266704563.Spec := by
  intro n
  simp only [A324937, Nat.add_sub_cancel, A324937.P15911700949266704563.a, A324937.P9655067151488371646.a, A154684, A154684.P4294763165931368592.a, A155551, A155551.P164788176589614961.a, A131421, A131421.P18127152066384474577.a, A151890, A151890.P12585172383525440924.a, A155550, A155550.P1170858249237067651.a, A051162, A051162.P14261216125704105833.a, A143218, A143218.P4624166105486444444.a, A155546, A155546.P2386952917106834247.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A025581, A025581.P420762180635059694.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A324937

/-! ## A324937.P11412917165161576370

`A154680(n+1)-6`
-/

namespace A324937.P11412917165161576370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154680 (n + 1) - 6

end

end A324937.P11412917165161576370

namespace A324937

/-- `A154680(n+1)-6` -/
def P11412917165161576370.Spec : Prop :=
  ∀ n, P11412917165161576370.a n = A324937 (n + 1)

theorem P11412917165161576370.correct : P11412917165161576370.Spec := by
  intro n
  simp only [A324937, Nat.add_sub_cancel, A324937.P11412917165161576370.a, A324937.P9655067151488371646.a, A154680, A154680.P927006277095668491.a, A155551, A155551.P164788176589614961.a, A154684, A154684.P4294763165931368592.a, A155550, A155550.P1170858249237067651.a, A131421, A131421.P18127152066384474577.a, A151890, A151890.P12585172383525440924.a, A155546, A155546.P2386952917106834247.a, A051162, A051162.P14261216125704105833.a, A143218, A143218.P4624166105486444444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324937

/-! ## A324937.P9866318321199604517

`A144562(n+1)-7`
-/

namespace A324937.P9866318321199604517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144562 (n + 1) - 7

end

end A324937.P9866318321199604517

namespace A324937

/-- `A144562(n+1)-7` -/
def P9866318321199604517.Spec : Prop :=
  ∀ n, P9866318321199604517.a n = A324937 (n + 1)

theorem P9866318321199604517.correct : P9866318321199604517.Spec := by
  intro n
  simp only [A324937, Nat.add_sub_cancel, A324937.P9866318321199604517.a, A324937.P9655067151488371646.a, A144562, A144562.P12796245676937325510.a, A155551, A155551.P164788176589614961.a, A083487, A083487.P5442048011972979188.a, A155550, A155550.P1170858249237067651.a, A154684, A154684.P4294763165931368592.a, A155546, A155546.P2386952917106834247.a, A131421, A131421.P18127152066384474577.a, A151890, A151890.P12585172383525440924.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324937

/-! ## A324937.P13416116626394751108

`A083487(n+1)-8`
-/

namespace A324937.P13416116626394751108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083487 (n + 1) - 8

end

end A324937.P13416116626394751108

namespace A324937

/-- `A083487(n+1)-8` -/
def P13416116626394751108.Spec : Prop :=
  ∀ n, P13416116626394751108.a n = A324937 (n + 1)

theorem P13416116626394751108.correct : P13416116626394751108.Spec := by
  intro n
  simp only [A324937, Nat.add_sub_cancel, A324937.P13416116626394751108.a, A324937.P9655067151488371646.a, A083487, A083487.P5442048011972979188.a, A155551, A155551.P164788176589614961.a, A154684, A154684.P4294763165931368592.a, A155550, A155550.P1170858249237067651.a, A131421, A131421.P18127152066384474577.a, A151890, A151890.P12585172383525440924.a, A155546, A155546.P2386952917106834247.a, A051162, A051162.P14261216125704105833.a, A143218, A143218.P4624166105486444444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324937

/-! ## A324937.P14055775527188689682

`A144650(n+1)-9`
-/

namespace A324937.P14055775527188689682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144650 (n + 1) - 9

end

end A324937.P14055775527188689682

namespace A324937

/-- `A144650(n+1)-9` -/
def P14055775527188689682.Spec : Prop :=
  ∀ n, P14055775527188689682.a n = A324937 (n + 1)

theorem P14055775527188689682.correct : P14055775527188689682.Spec := by
  intro n
  simp only [A324937, Nat.add_sub_cancel, A324937.P14055775527188689682.a, A324937.P9655067151488371646.a, A144650, A144650.P16604839193950878399.a, A155551, A155551.P164788176589614961.a, A083487, A083487.P5442048011972979188.a, A155550, A155550.P1170858249237067651.a, A154684, A154684.P4294763165931368592.a, A155546, A155546.P2386952917106834247.a, A131421, A131421.P18127152066384474577.a, A151890, A151890.P12585172383525440924.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324937

/-! ## A324937.P17911216959619280790

`A154631(n+1)-13`
-/

namespace A324937.P17911216959619280790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154631 (n + 1) - 13

end

end A324937.P17911216959619280790

namespace A324937

/-- `A154631(n+1)-13` -/
def P17911216959619280790.Spec : Prop :=
  ∀ n, P17911216959619280790.a n = A324937 (n + 1)

theorem P17911216959619280790.correct : P17911216959619280790.Spec := by
  intro n
  simp only [A324937, Nat.add_sub_cancel, A324937.P17911216959619280790.a, A324937.P9655067151488371646.a, A154631, A154631.P9638786672000276920.a, A155551, A155551.P164788176589614961.a, A154685, A154685.P3732548200043120087.a, A155550, A155550.P1170858249237067651.a, A154684, A154684.P4294763165931368592.a, A155546, A155546.P2386952917106834247.a, A131421, A131421.P18127152066384474577.a, A151890, A151890.P12585172383525440924.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324937

/-! ## A324937.P13790047838084845819

`A155151(n+1)-A155704(n+1)`
-/

namespace A324937.P13790047838084845819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) - A155704 (n + 1)

end

end A324937.P13790047838084845819

namespace A324937

/-- `A155151(n+1)-A155704(n+1)` -/
def P13790047838084845819.Spec : Prop :=
  ∀ n, P13790047838084845819.a n = A324937 (n + 1)

theorem P13790047838084845819.correct : P13790047838084845819.Spec := by
  intro n
  simp only [A324937, Nat.add_sub_cancel, A324937.P13790047838084845819.a, A324937.P9655067151488371646.a, A155151, A155151.P15562018363835472075.a, A155551, A155551.P164788176589614961.a, A155704, A155704.P17941847991558611743.a, A144650, A144650.P16604839193950878399.a, A154685, A154685.P3732548200043120087.a, A155550, A155550.P1170858249237067651.a, A083487, A083487.P5442048011972979188.a, A154684, A154684.P4294763165931368592.a, A155546, A155546.P2386952917106834247.a, A131421, A131421.P18127152066384474577.a, A151890, A151890.P12585172383525440924.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324937

/-! ## A324937.P13151104713400424446

`A155156(n+1)-A163657(n+1)`
-/

namespace A324937.P13151104713400424446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) - A163657 (n + 1)

end

end A324937.P13151104713400424446

namespace A324937

/-- `A155156(n+1)-A163657(n+1)` -/
def P13151104713400424446.Spec : Prop :=
  ∀ n, P13151104713400424446.a n = A324937 (n + 1)

theorem P13151104713400424446.correct : P13151104713400424446.Spec := by
  intro n
  simp only [A324937, Nat.add_sub_cancel, A324937.P13151104713400424446.a, A324937.P9655067151488371646.a, A155156, A155156.P2516037963333073016.a, A155551, A155551.P164788176589614961.a, A163657, A163657.P2784034745379012211.a, A083487, A083487.P5442048011972979188.a, A155550, A155550.P1170858249237067651.a, A163652, A163652.P16440456399062423218.a, A154684, A154684.P4294763165931368592.a, A154685, A154685.P3732548200043120087.a, A155546, A155546.P2386952917106834247.a, A131421, A131421.P18127152066384474577.a, A151890, A151890.P12585172383525440924.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324937

/-! ## A324937.P7991918385315420747

`A163676(n+1)-A163672(n+1)`
-/

namespace A324937.P7991918385315420747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163676 (n + 1) - A163672 (n + 1)

end

end A324937.P7991918385315420747

namespace A324937

/-- `A163676(n+1)-A163672(n+1)` -/
def P7991918385315420747.Spec : Prop :=
  ∀ n, P7991918385315420747.a n = A324937 (n + 1)

theorem P7991918385315420747.correct : P7991918385315420747.Spec := by
  intro n
  simp only [A324937, Nat.add_sub_cancel, A324937.P7991918385315420747.a, A324937.P9655067151488371646.a, A155551, A155551.P164788176589614961.a, A163672, A163672.P97015289542930309.a, A163676, A163676.P4041084556409764895.a, A154684, A154684.P4294763165931368592.a, A155550, A155550.P1170858249237067651.a, A163652, A163652.P16440456399062423218.a, A131421, A131421.P18127152066384474577.a, A151890, A151890.P12585172383525440924.a, A154685, A154685.P3732548200043120087.a, A155546, A155546.P2386952917106834247.a, A051162, A051162.P14261216125704105833.a, A143218, A143218.P4624166105486444444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324937

/-! ## A324937.P7483557429630018103

`A172292(n+1)-A163674(n+1)`
-/

namespace A324937.P7483557429630018103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172292 (n + 1) - A163674 (n + 1)

end

end A324937.P7483557429630018103

namespace A324937

/-- `A172292(n+1)-A163674(n+1)` -/
def P7483557429630018103.Spec : Prop :=
  ∀ n, P7483557429630018103.a n = A324937 (n + 1)

theorem P7483557429630018103.correct : P7483557429630018103.Spec := by
  intro n
  simp only [A324937, Nat.add_sub_cancel, A324937.P7483557429630018103.a, A324937.P9655067151488371646.a, A155551, A155551.P164788176589614961.a, A163674, A163674.P10701403474106452160.a, A172292, A172292.P11252882940955182599.a, A155550, A155550.P1170858249237067651.a, A163657, A163657.P2784034745379012211.a, A163676, A163676.P4041084556409764895.a, A154684, A154684.P4294763165931368592.a, A155546, A155546.P2386952917106834247.a, A163652, A163652.P16440456399062423218.a, A131421, A131421.P18127152066384474577.a, A151890, A151890.P12585172383525440924.a, A154685, A154685.P3732548200043120087.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324937

/-! ## A324937.P6473569795668901118

`A155151(n+1)-(A163674(n+1)+1)`
-/

namespace A324937.P6473569795668901118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155151 (n + 1) - (A163674 (n + 1) + 1)

end

end A324937.P6473569795668901118

namespace A324937

/-- `A155151(n+1)-(A163674(n+1)+1)` -/
def P6473569795668901118.Spec : Prop :=
  ∀ n, P6473569795668901118.a n = A324937 (n + 1)

theorem P6473569795668901118.correct : P6473569795668901118.Spec := by
  intro n
  simp only [A324937, Nat.add_sub_cancel, A324937.P6473569795668901118.a, A324937.P9655067151488371646.a, A155151, A155151.P15562018363835472075.a, A155551, A155551.P164788176589614961.a, A163674, A163674.P10701403474106452160.a, A144650, A144650.P16604839193950878399.a, A155550, A155550.P1170858249237067651.a, A163657, A163657.P2784034745379012211.a, A083487, A083487.P5442048011972979188.a, A155546, A155546.P2386952917106834247.a, A163652, A163652.P16440456399062423218.a, A154684, A154684.P4294763165931368592.a, A154685, A154685.P3732548200043120087.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324937

/-! ## A324937.P17138497636814420920

`A155156(n+1)+1-A163674(n+1)`
-/

namespace A324937.P17138497636814420920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) + (1 - A163674 (n + 1))

end

end A324937.P17138497636814420920

namespace A324937

/-- `A155156(n+1)+1-A163674(n+1)` -/
def P17138497636814420920.Spec : Prop :=
  ∀ n, P17138497636814420920.a n = A324937 (n + 1)

theorem P17138497636814420920.correct : P17138497636814420920.Spec := by
  intro n
  simp only [A324937, Nat.add_sub_cancel, A324937.P17138497636814420920.a, A324937.P9655067151488371646.a, A155156, A155156.P2516037963333073016.a, A155551, A155551.P164788176589614961.a, A163674, A163674.P10701403474106452160.a, A083487, A083487.P5442048011972979188.a, A155550, A155550.P1170858249237067651.a, A163657, A163657.P2784034745379012211.a, A154684, A154684.P4294763165931368592.a, A155546, A155546.P2386952917106834247.a, A163652, A163652.P16440456399062423218.a, A131421, A131421.P18127152066384474577.a, A151890, A151890.P12585172383525440924.a, A154685, A154685.P3732548200043120087.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324937

/-! ## A324937.P1325607113897397122

`A155156(n+1)-(A163672(n+1)+1)`
-/

namespace A324937.P1325607113897397122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155156 (n + 1) - (A163672 (n + 1) + 1)

end

end A324937.P1325607113897397122

namespace A324937

/-- `A155156(n+1)-(A163672(n+1)+1)` -/
def P1325607113897397122.Spec : Prop :=
  ∀ n, P1325607113897397122.a n = A324937 (n + 1)

theorem P1325607113897397122.correct : P1325607113897397122.Spec := by
  intro n
  simp only [A324937, Nat.add_sub_cancel, A324937.P1325607113897397122.a, A324937.P9655067151488371646.a, A155156, A155156.P2516037963333073016.a, A155551, A155551.P164788176589614961.a, A163672, A163672.P97015289542930309.a, A083487, A083487.P5442048011972979188.a, A155550, A155550.P1170858249237067651.a, A163652, A163652.P16440456399062423218.a, A154684, A154684.P4294763165931368592.a, A154685, A154685.P3732548200043120087.a, A155546, A155546.P2386952917106834247.a, A131421, A131421.P18127152066384474577.a, A151890, A151890.P12585172383525440924.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324937

/-! ## A324937.P16835422778725365446

`A163676(n+1)+1-A163657(n+1)`
-/

namespace A324937.P16835422778725365446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163676 (n + 1) + (1 - A163657 (n + 1))

end

end A324937.P16835422778725365446

namespace A324937

/-- `A163676(n+1)+1-A163657(n+1)` -/
def P16835422778725365446.Spec : Prop :=
  ∀ n, P16835422778725365446.a n = A324937 (n + 1)

theorem P16835422778725365446.correct : P16835422778725365446.Spec := by
  intro n
  simp only [A324937, Nat.add_sub_cancel, A324937.P16835422778725365446.a, A324937.P9655067151488371646.a, A155551, A155551.P164788176589614961.a, A163657, A163657.P2784034745379012211.a, A163676, A163676.P4041084556409764895.a, A154684, A154684.P4294763165931368592.a, A155550, A155550.P1170858249237067651.a, A163652, A163652.P16440456399062423218.a, A131421, A131421.P18127152066384474577.a, A151890, A151890.P12585172383525440924.a, A154685, A154685.P3732548200043120087.a, A155546, A155546.P2386952917106834247.a, A051162, A051162.P14261216125704105833.a, A143218, A143218.P4624166105486444444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324937

/-! ## A324937.P5190688175942934144

`A163676(n+1)-(A163652(n+1)+1)`
-/

namespace A324937.P5190688175942934144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163676 (n + 1) - (A163652 (n + 1) + 1)

end

end A324937.P5190688175942934144

namespace A324937

/-- `A163676(n+1)-(A163652(n+1)+1)` -/
def P5190688175942934144.Spec : Prop :=
  ∀ n, P5190688175942934144.a n = A324937 (n + 1)

theorem P5190688175942934144.correct : P5190688175942934144.Spec := by
  intro n
  simp only [A324937, Nat.add_sub_cancel, A324937.P5190688175942934144.a, A324937.P9655067151488371646.a, A155551, A155551.P164788176589614961.a, A163652, A163652.P16440456399062423218.a, A163676, A163676.P4041084556409764895.a, A154684, A154684.P4294763165931368592.a, A154685, A154685.P3732548200043120087.a, A155550, A155550.P1170858249237067651.a, A131421, A131421.P18127152066384474577.a, A151890, A151890.P12585172383525440924.a, A155546, A155546.P2386952917106834247.a, A051162, A051162.P14261216125704105833.a, A143218, A143218.P4624166105486444444.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A324937

/-!
# A324938: a(n) = the number of values of m such that the sum of proper unitary divisors of m (A034460) is n.

The programs for A324938, there is no canonical definition to state claims against.
-/

/-! ## A324938.P13660535439641050308

`A362181(round(acot(n)+n))%A352225(n+1)`
-/

namespace A324938.P13660535439641050308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362181 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat) (A352225 (n + 1))

end

end A324938.P13660535439641050308

/-! ## A324938.P2271364463789767158

`A362181(A233583(n+1))%A252283(2*(n+1))`
-/

namespace A324938.P2271364463789767158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362181 (A233583 (n + 1)).toNat) (A252283 (2 * (n + 1)))

end

end A324938.P2271364463789767158

/-! ## A324938.P17195346549762162745

`A175933(A181058(n+1))`
-/

namespace A324938.P17195346549762162745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175933 (A181058 (n + 1)).toNat

end

end A324938.P17195346549762162745

/-! ## A324938.P4614944669546269271

`A339871(A243306(n+1))`
-/

namespace A324938.P4614944669546269271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339871 (A243306 (n + 1)).toNat

end

end A324938.P4614944669546269271

/-! ## A324938.P3190515516821043582

`∑{e}[A098742((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]), #]`
-/

namespace A324938.P3190515516821043582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098742 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A324938.P3190515516821043582

/-!
# A324939: Triangle T(n,k) read by rows in which n-th row lists in increasing order all compositions [c_1, c_2, ..., c_q] of n encoded as Product_{i=1..q} prime(i)^(c_i); n>=0, 1<=k<=A011782(n).

The programs for A324939, there is no canonical definition to state claims against.
-/

/-! ## A324939.P6986950923255261056

`filter[A330394(n), A341629(#)]`
-/

namespace A324939.P6986950923255261056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330394 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A324939.P6986950923255261056

/-! ## A324939.P3522803365718385632

`filter[A383174(n+1), A341629(#)]`
-/

namespace A324939.P3522803365718385632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341629 (f1 j).toNat = 1) n)

end

end A324939.P3522803365718385632

/-! ## A324939.P9624748197265210309

`A057335(A187769(n)%A289883(n+1))`
-/

namespace A324939.P9624748197265210309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (Int.tmod (A187769 n) (A289883 (n + 1))).toNat

end

end A324939.P9624748197265210309

/-! ## A324939.P11881164416964351473

`A057335(A209862(n)%A289883(n+1))`
-/

namespace A324939.P11881164416964351473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057335 (Int.tmod (A209862 n) (A289883 (n + 1))).toNat

end

end A324939.P11881164416964351473

/-! ## A324939.P16046414525628732129

`A057335(A209862(n))%A002148(A000032(n))`
-/

namespace A324939.P16046414525628732129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057335 (A209862 n).toNat) (A002148 (A000032 n).toNat)

end

end A324939.P16046414525628732129

/-!
# A324940: Numbers of the form x^2+7*y^2+7*z^2.

The programs for A324940, there is no canonical definition to state claims against.
-/

/-! ## A324940.P16649992975891490845

`comp[A306296(n+1)]`
-/

namespace A324940.P16649992975891490845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A324940.P16649992975891490845

/-! ## A324940.P17679436584733558028

`eq[1, gcd(7, A276287(n))]`
-/

namespace A324940.P17679436584733558028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 7 (A276287 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324940.P17679436584733558028

/-! ## A324940.P11053598501993679893

`eq[0, char[A306296(A306284(n+1))]]`
-/

namespace A324940.P11053598501993679893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306296 (A306284 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324940.P11053598501993679893

/-! ## A324940.P5795322858475159995

`comp[A306296(A028310(n))]*A054977(n)`
-/

namespace A324940.P5795322858475159995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306296 (A028310 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A054977 n

end

end A324940.P5795322858475159995

/-! ## A324940.P12742930843621303121

`comp[A306296(A028310(n))]%A016777(n)`
-/

namespace A324940.P12742930843621303121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306296 (A028310 n).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A016777 n)

end

end A324940.P12742930843621303121

/-! ## A324940.P16703330495086052539

`eq[0, char[A306296(A306271(n+1))]]`
-/

namespace A324940.P16703330495086052539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306296 (A306271 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324940.P16703330495086052539

/-!
# A324941: Largest prime factor of 17^n + 1.

The programs for A324941, the canonical program `A324941.P16565507281434966225` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324941 has offset 0).

The definition of A324941 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324941.P16565507281434966225

`A006530(A224384(n))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A324941

/-- `A006530(A224384(n))` -/
def P16565507281434966225.Spec : Prop :=
  ∀ n, P16565507281434966225.a n = A324941 n

theorem P16565507281434966225.correct : P16565507281434966225.Spec := by
  intro n
  simp only [A324941]

end A324941

/-!
# A324943: Number of path change-ringing sequences of length n for 4 bells.

The programs for A324943, there is no canonical definition to state claims against.
-/

/-! ## A324943.P4107316475651631818

`A127163(2^n)^ceil(sin(n)²)`
-/

namespace A324943.P4107316475651631818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127163 (2 ^ n) : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A324943.P4107316475651631818

/-! ## A324943.P4817943875406190294

`A139555(A255455(n))`
-/

namespace A324943.P4817943875406190294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139555 (A255455 n).toNat

end

end A324943.P4817943875406190294

/-!
# A324944: Number of cyclic change-ringing sequences of length n for 5 bells.

The programs for A324944, there is no canonical definition to state claims against.
-/

/-! ## A324944.P15113010161638012256

`A071585(xor(A034472(n), A074607(n)))`
-/

namespace A324944.P15113010161638012256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (Int.xor (A034472 n) (A074607 n)).toNat

end

end A324944.P15113010161638012256

/-!
# A324945: Number of path change-ringing sequences of length n for 5 bells.

The programs for A324945, there is no canonical definition to state claims against.
-/

/-! ## A324945.P13275268023331489605

`A248183(A111585(n)+A083953(n))`
-/

namespace A324945.P13275268023331489605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (A111585 n + A083953 n).toNat

end

end A324945.P13275268023331489605

/-!
# A324946: Number of cyclic change-ringing sequences of length n for 6 bells.

The programs for A324946, there is no canonical definition to state claims against.
-/

/-! ## A324946.P11549388153601281091

`A210357(A255276(n))*A244219(n+1)`
-/

namespace A324946.P11549388153601281091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210357 (A255276 n).toNat * A244219 (n + 1)

end

end A324946.P11549388153601281091

/-!
# A324947: Number of path change-ringing sequences of length n for 6 bells.

The programs for A324947, there is no canonical definition to state claims against.
-/

/-! ## A324947.P14825688844293690746

`2*A284753(A014824(n)+a(n-1))` with `a(0)=1`
-/

namespace A324947.P14825688844293690746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A284753 (A014824 n + a (n - 1)).toNat

end

end A324947.P14825688844293690746

/-!
# A324954: E.g.f.: Sum_{n>=0} x^n * (exp(n*x) + 1)^n / (1 + x*exp(n*x))^(n+1).

The programs for A324954, there is no canonical definition to state claims against.
-/

/-! ## A324954.P926834463732338988

`A364379(A000088(n)²)`
-/

namespace A324954.P926834463732338988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364379 (A000088 n ^ 2).toNat

end

end A324954.P926834463732338988

/-! ## A324954.P6371456802184070208

`A364379(A344489(n)²)`
-/

namespace A324954.P6371456802184070208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364379 (A344489 n ^ 2).toNat

end

end A324954.P6371456802184070208

/-!
# A324955: E.g.f.: Sum_{n>=0} x^n * (exp(n*x) + 1)^n / (1 - x*exp(n*x))^(n+1).

The programs for A324955, there is no canonical definition to state claims against.
-/

/-! ## A324955.P17817040793023682610

`A287664(A014507(n))-A008281(n)`
-/

namespace A324955.P17817040793023682610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287664 (A014507 n).toNat - A008281 n

end

end A324955.P17817040793023682610

/-!
# A324957: a(n) is the coefficient of y^(n-1) in Product_{k=0..n-2} (n + (n + k)*y + n*y^2), for n >= 1.

The programs for A324957, there is no canonical definition to state claims against.
-/

/-! ## A324957.P12314542513066520219

`A324956(∑[2*n]+1)`
-/

namespace A324957.P12314542513066520219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324956 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A324957.P12314542513066520219

/-! ## A324957.P9279030672681758461

`record[A324956(∑[A028242(n)])]`
-/

namespace A324957.P9279030672681758461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324956 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324957.P9279030672681758461

/-! ## A324957.P15132864997479263199

`record[A324956(A215630(n+1))]`
-/

namespace A324957.P15132864997479263199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324956 (A215630 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324957.P15132864997479263199

/-! ## A324957.P1594898944805953801

`record[A005369(n)*A324956(n+1)]`
-/

namespace A324957.P1594898944805953801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 n * A324956 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324957.P1594898944805953801

/-!
# A324959: a(n) is the coefficient of y^(n-1) in Product_{k=0..n-2} (n + (2*n + k)*y + n*y^2), for n >= 1.

The programs for A324959, there is no canonical definition to state claims against.
-/

/-! ## A324959.P1817621425000670372

`A324958(∑[2*n]+1)`
-/

namespace A324959.P1817621425000670372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324958 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A324959.P1817621425000670372

/-! ## A324959.P3368538864308381449

`record[A324958(∑[A028242(n)])]`
-/

namespace A324959.P3368538864308381449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324958 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324959.P3368538864308381449

/-! ## A324959.P12076966371479954136

`record[A118174(n)*A324958(n+1)]`
-/

namespace A324959.P12076966371479954136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118174 n * A324958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324959.P12076966371479954136

/-! ## A324959.P12673868737057459480

`record[gcd(A324958(n+1), A325010(n+1))]`
-/

namespace A324959.P12673868737057459480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A324958 (n + 1)) (A325010 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324959.P12673868737057459480

/-!
# A324961: a(n) is the coefficient of y^n in Product_{k=0..n-1} (1 + (k+2)*y + y^2), for n >= 0.

The programs for A324961, there is no canonical definition to state claims against.
-/

/-! ## A324961.P11489267884330151713

`A201826(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A324961.P11489267884330151713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A201826 n + (n : ℤ) * a (n - 1)

end

end A324961.P11489267884330151713

/-! ## A324961.P17182094638997900963

`A249790(∑[2*n])+n*a(n-1)` with `a(0)=1`
-/

namespace A324961.P17182094638997900963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A249790 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A324961.P17182094638997900963

/-! ## A324961.P12695327859467823

`gcd(A000038(n), A249790(n²+n))+n*a(n-1)` with `a(0)=1`
-/

namespace A324961.P12695327859467823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (A000038 n) (A249790 (n ^ 2 + n)) + n * a (n - 1)

end

end A324961.P12695327859467823

/-! ## A324961.P17207068169659809286

`n*a(n-1)+A001222(A000230(n))*A249790(n²+n)` with `a(0)=1`
-/

namespace A324961.P17207068169659809286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * a (n - 1) + A001222 (A000230 n).toNat * A249790 (n ^ 2 + n)

end

end A324961.P17207068169659809286

/-! ## A324961.P13036598906676290272

`A324960(∑[2*n])`
-/

namespace A324961.P13036598906676290272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324960 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A324961.P13036598906676290272

/-!
# A324962: a(n) is the coefficient of y^n in Product_{k=0..n} (1 + (k+2)*y + y^2), for n >= 0.

The programs for A324962, there is no canonical definition to state claims against.
-/

/-! ## A324962.P16555233229849257780

`A324960((n+1)²+n)`
-/

namespace A324962.P16555233229849257780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324960 ((n + 1) ^ 2 + n)

end

end A324962.P16555233229849257780

/-! ## A324962.P15047652127023598704

`record[char[∑[n]]*A324960(2*n+1)]`
-/

namespace A324962.P15047652127023598704
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) * A324960 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324962.P15047652127023598704

/-! ## A324962.P5012928555443837289

`record[A324960(A004652(n))]`
-/

namespace A324962.P5012928555443837289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324960 (A004652 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324962.P5012928555443837289

/-! ## A324962.P14616912679833126423

`record[A324960(A314049(n))]`
-/

namespace A324962.P14616912679833126423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324960 (A314049 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324962.P14616912679833126423

/-! ## A324962.P13548130991640212709

`record[A324960(∑[A004016(n)])]`
-/

namespace A324962.P13548130991640212709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324960 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324962.P13548130991640212709

/-!
# A324963: G.f.: A(x) = Sum_{n>=0} x^n*((1+x)^n + sqrt(A(x)))^n / (1 + x*sqrt(A(x))*(1+x)^n)^(n+1).

The programs for A324963, there is no canonical definition to state claims against.
-/

/-! ## A324963.P12574408038415529278

`A182418(A002024(n!))`
-/

namespace A324963.P12574408038415529278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182418 (A002024 (Nat.factorial n)).toNat

end

end A324963.P12574408038415529278

/-! ## A324963.P7077797880499711340

`A306242(A007317(n+1)+(n+1)/∏{p}[n+1, (n+1)/#])`
-/

namespace A324963.P7077797880499711340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306242 (SequenceMachineLib.roundAway ((A007317 (n + 1) : ℚ) + (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ)))).toNat

end

end A324963.P7077797880499711340

/-! ## A324963.P17742310138889399042

`A000720(A114296(n)+A007299(n))`
-/

namespace A324963.P17742310138889399042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A114296 n + A007299 n).toNat

end

end A324963.P17742310138889399042

/-!
# A324964: a(n) = A000139(n) mod 2; Characteristic function of odd fibbinary numbers (A022341).

The programs for A324964, the canonical program `A324964.P8088303540979074771` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324964 has offset 0).

The definition of A324964 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085357, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324964.P8088303540979074771

`A000035(n)*A085357(n)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A324964

/-- `A000035(n)*A085357(n)` -/
def P8088303540979074771.Spec : Prop :=
  ∀ n, P8088303540979074771.a n = A324964 n

theorem P8088303540979074771.correct : P8088303540979074771.Spec := by
  intro n
  simp only [A324964]

end A324964

/-! ## A324964.P10950471892271033933

`A000035(n)*A008966(A005940(1+n))`
-/

namespace A324964.P10950471892271033933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n * A008966 (A005940 (1 + n)).toNat

end

end A324964.P10950471892271033933

namespace A324964

/-- `A000035(n)*A008966(A005940(1+n))` -/
def P10950471892271033933.Spec : Prop :=
  ∀ n, P10950471892271033933.a n = A324964 n

end A324964

/-! ## A324964.P14799422740691517126

`char[xor(n, 3*n+1)]`
-/

namespace A324964.P14799422740691517126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (3 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A324964.P14799422740691517126

namespace A324964

/-- `char[xor(n, 3*n+1)]` -/
def P14799422740691517126.Spec : Prop :=
  ∀ n, (P14799422740691517126.a n : ℤ) = A324964 n

end A324964

/-! ## A324964.P16694656075452977676

`char[xor(n, Δ[n²])-n]`
-/

namespace A324964.P16694656075452977676
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A324964.P16694656075452977676

namespace A324964

/-- `char[xor(n, Δ[n²])-n]` -/
def P16694656075452977676.Spec : Prop :=
  ∀ n, (P16694656075452977676.a n : ℤ) = A324964 n

end A324964

/-! ## A324964.P5110160821203157529

`and(n, C(and(n, 3*n), n))`
-/

namespace A324964.P5110160821203157529
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.choose (Nat.land n (3 * n)) n)

end

end A324964.P5110160821203157529

namespace A324964

/-- `and(n, C(and(n, 3*n), n))` -/
def P5110160821203157529.Spec : Prop :=
  ∀ n, (P5110160821203157529.a n : ℤ) = A324964 n

end A324964

/-! ## A324964.P7337223196506057618

`ceil(atan(and(n, Δ[n²])))%2`
-/

namespace A324964.P7337223196506057618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈Real.arctan (Int.land (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℝ)⌉ 2

end

end A324964.P7337223196506057618

namespace A324964

/-- `ceil(atan(and(n, Δ[n²])))%2` -/
def P7337223196506057618.Spec : Prop :=
  ∀ n, P7337223196506057618.a n = A324964 n

end A324964

/-! ## A324964.P2869711533185209434

`and(1, ceil(atan(and(n, Δ[n²]))))`
-/

namespace A324964.P2869711533185209434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌈Real.arctan (Int.land (n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℝ)⌉

end

end A324964.P2869711533185209434

namespace A324964

/-- `and(1, ceil(atan(and(n, Δ[n²]))))` -/
def P2869711533185209434.Spec : Prop :=
  ∀ n, P2869711533185209434.a n = A324964 n

end A324964

/-! ## A324964.P17029068209270213405

`char[eq[1, and(n, 2*n+1)]]`
-/

namespace A324964.P17029068209270213405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A324964.P17029068209270213405

namespace A324964

/-- `char[eq[1, and(n, 2*n+1)]]` -/
def P17029068209270213405.Spec : Prop :=
  ∀ n, (P17029068209270213405.a n : ℤ) = A324964 n

end A324964

/-! ## A324964.P9772464728781085425

`round(n/xor(n+1, 3*n))`
-/

namespace A324964.P9772464728781085425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (Nat.xor (n + 1) (3 * n) : ℚ))

end

end A324964.P9772464728781085425

namespace A324964

/-- `round(n/xor(n+1, 3*n))` -/
def P9772464728781085425.Spec : Prop :=
  ∀ n, P9772464728781085425.a n = A324964 n

end A324964

/-! ## A324964.P5797280650547650223

`floor(acot(and(n-1, comp[2*n])))`
-/

namespace A324964.P5797280650547650223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Int.land ((n : ℤ) - 1) (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) : ℝ)⌋

end

end A324964.P5797280650547650223

namespace A324964

/-- `floor(acot(and(n-1, comp[2*n])))` -/
def P5797280650547650223.Spec : Prop :=
  ∀ n, P5797280650547650223.a n = A324964 n

end A324964

/-! ## A324964.P17365157535943607272

`C(2, and(n-1, Δ[n²])+2)`
-/

namespace A324964.P17365157535943607272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Int.land ((n : ℤ) - 1) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) + 2).toNat

end

end A324964.P17365157535943607272

namespace A324964

/-- `C(2, and(n-1, Δ[n²])+2)` -/
def P17365157535943607272.Spec : Prop :=
  ∀ n, (P17365157535943607272.a n : ℤ) = A324964 n

end A324964

/-! ## A324964.P4505758063471069997

`char[lt[and(2*n+1, n-1), 1]]`
-/

namespace A324964.P4505758063471069997
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) ((n : ℤ) - 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A324964.P4505758063471069997

namespace A324964

/-- `char[lt[and(2*n+1, n-1), 1]]` -/
def P4505758063471069997.Spec : Prop :=
  ∀ n, (P4505758063471069997.a n : ℤ) = A324964 n

end A324964

/-! ## A324964.P4599739801966331047

`floor(and(n+1, 3*n)/(n+1))`
-/

namespace A324964.P4599739801966331047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land (n + 1) (3 * n) : ℚ) / (n + 1 : ℚ)⌋

end

end A324964.P4599739801966331047

namespace A324964

/-- `floor(and(n+1, 3*n)/(n+1))` -/
def P4599739801966331047.Spec : Prop :=
  ∀ n, P4599739801966331047.a n = A324964 n

end A324964

/-! ## A324964.P2352270292619379293

`floor(γ^and(2*n+1, n-1))`
-/

namespace A324964.P2352270292619379293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.eulerMascheroniConstant ^ (Int.land (2 * n + 1 : ℤ) ((n : ℤ) - 1) : ℤ)⌋

end

end A324964.P2352270292619379293

namespace A324964

/-- `floor(γ^and(2*n+1, n-1))` -/
def P2352270292619379293.Spec : Prop :=
  ∀ n, P2352270292619379293.a n = A324964 n

end A324964

/-! ## A324964.P8760056289448910775

`floor(exp(-and(2*n+1, n-1)))`
-/

namespace A324964.P8760056289448910775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.exp (-Int.land (2 * n + 1 : ℤ) ((n : ℤ) - 1) : ℝ)⌋

end

end A324964.P8760056289448910775

namespace A324964

/-- `floor(exp(-and(2*n+1, n-1)))` -/
def P8760056289448910775.Spec : Prop :=
  ∀ n, P8760056289448910775.a n = A324964 n

end A324964

/-! ## A324964.P7485914322871380063

`round(exp(-and(2*n+1, n-1)))`
-/

namespace A324964.P7485914322871380063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.exp (-Int.land (2 * n + 1 : ℤ) ((n : ℤ) - 1) : ℝ))

end

end A324964.P7485914322871380063

namespace A324964

/-- `round(exp(-and(2*n+1, n-1)))` -/
def P7485914322871380063.Spec : Prop :=
  ∀ n, P7485914322871380063.a n = A324964 n

end A324964

/-! ## A324964.P12464159706812331266

`round(2^or(-(2*n), -(n+2)))`
-/

namespace A324964.P12464159706812331266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.lor (-(2 * n : ℤ)) (-(n + 2 : ℤ)) : ℤ))

end

end A324964.P12464159706812331266

namespace A324964

/-- `round(2^or(-(2*n), -(n+2)))` -/
def P12464159706812331266.Spec : Prop :=
  ∀ n, P12464159706812331266.a n = A324964 n

end A324964

/-! ## A324964.P4665285360053590363

`∏{d}[and(2*n+1, n-1), log(#)]`
-/

namespace A324964.P4665285360053590363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Real.log (d : ℝ)

end

end A324964.P4665285360053590363

namespace A324964

/-- `∏{d}[and(2*n+1, n-1), log(#)]` -/
def P4665285360053590363.Spec : Prop :=
  ∀ n, P4665285360053590363.a n = (A324964 n : ℝ)

end A324964

/-! ## A324964.P17028551803562624214

`floor(abs(cos(and(2*n+1, n-1))))`
-/

namespace A324964.P17028551803562624214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|Real.cos (Int.land (2 * n + 1 : ℤ) ((n : ℤ) - 1) : ℝ)|⌋

end

end A324964.P17028551803562624214

namespace A324964

/-- `floor(abs(cos(and(2*n+1, n-1))))` -/
def P17028551803562624214.Spec : Prop :=
  ∀ n, P17028551803562624214.a n = A324964 n

end A324964

/-! ## A324964.P2213775500185000260

`floor(cos(and(2*n+1, n-1))²)`
-/

namespace A324964.P2213775500185000260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos (Int.land (2 * n + 1 : ℤ) ((n : ℤ) - 1) : ℝ) ^ 2⌋

end

end A324964.P2213775500185000260

namespace A324964

/-- `floor(cos(and(2*n+1, n-1))²)` -/
def P2213775500185000260.Spec : Prop :=
  ∀ n, P2213775500185000260.a n = A324964 n

end A324964

/-!
# A324965: Partial sums of A324964.

The programs for A324965, the canonical program `A324965.P16302705719209160580` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324965 has offset 0).

The definition of A324965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324965.P15491789672293572586

`∑[char[xor(n, 3*n+1)]]`
-/

namespace A324965.P15491789672293572586
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (3 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324965.P15491789672293572586

namespace A324965

/-- `∑[char[xor(n, 3*n+1)]]` -/
def P15491789672293572586.Spec : Prop :=
  ∀ n, (P15491789672293572586.a n : ℤ) = A324965 n

end A324965

/-! ## A324965.P5674559688825926072

`∑[char[xor(n, Δ[n²])-n]]`
-/

namespace A324965.P5674559688825926072
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324965.P5674559688825926072

namespace A324965

/-- `∑[char[xor(n, Δ[n²])-n]]` -/
def P5674559688825926072.Spec : Prop :=
  ∀ n, (P5674559688825926072.a n : ℤ) = A324965 n

end A324965

/-! ## A324965.P16302705719209160580

`∑[and(n, C(and(n, 3*n), n))]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A324965

/-- `∑[and(n, C(and(n, 3*n), n))]` -/
def P16302705719209160580.Spec : Prop :=
  ∀ n, (P16302705719209160580.a n : ℤ) = A324965 n

theorem P16302705719209160580.correct : P16302705719209160580.Spec := by
  intro n
  simp only [A324965]

end A324965

/-! ## A324965.P1135613841196652690

`∑[char[eq[1, and(n, 2*n+1)]]]`
-/

namespace A324965.P1135613841196652690
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324965.P1135613841196652690

namespace A324965

/-- `∑[char[eq[1, and(n, 2*n+1)]]]` -/
def P1135613841196652690.Spec : Prop :=
  ∀ n, (P1135613841196652690.a n : ℤ) = A324965 n

end A324965

/-! ## A324965.P10863695566892339945

`∑[char[2*and(n, -(2*n))+1]]`
-/

namespace A324965.P10863695566892339945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n : ℤ) (-(2 * n : ℤ)) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324965.P10863695566892339945

namespace A324965

/-- `∑[char[2*and(n, -(2*n))+1]]` -/
def P10863695566892339945.Spec : Prop :=
  ∀ n, (P10863695566892339945.a n : ℤ) = A324965 n

end A324965

/-! ## A324965.P4310259764291045509

`∑[floor(acot(and(2*n+1, n-1)))]`
-/

namespace A324965.P4310259764291045509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Int.land (2 * n + 1 : ℤ) ((n : ℤ) - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324965.P4310259764291045509

namespace A324965

/-- `∑[floor(acot(and(2*n+1, n-1)))]` -/
def P4310259764291045509.Spec : Prop :=
  ∀ n, P4310259764291045509.a n = A324965 n

end A324965

/-! ## A324965.P5145025956607864807

`∑[char[record[or(n+1, 2*n)-n]]]`
-/

namespace A324965.P5145025956607864807
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor (n + 1) (2 * n) : ℤ) - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324965.P5145025956607864807

namespace A324965

/-- `∑[char[record[or(n+1, 2*n)-n]]]` -/
def P5145025956607864807.Spec : Prop :=
  ∀ n, (P5145025956607864807.a n : ℤ) = A324965 n

end A324965

/-! ## A324965.P3028772195606284353

`∑[floor(and(3*n, n+1)/(n+1))]`
-/

namespace A324965.P3028772195606284353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.land (3 * n) (n + 1) : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324965.P3028772195606284353

namespace A324965

/-- `∑[floor(and(3*n, n+1)/(n+1))]` -/
def P3028772195606284353.Spec : Prop :=
  ∀ n, P3028772195606284353.a n = A324965 n

end A324965

/-! ## A324965.P13752401398384308962

`∑[char[2*(or(n, 2*n)-n)+1]]`
-/

namespace A324965.P13752401398384308962
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((Nat.lor n (2 * n) : ℤ) - (n : ℤ)) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324965.P13752401398384308962

namespace A324965

/-- `∑[char[2*(or(n, 2*n)-n)+1]]` -/
def P13752401398384308962.Spec : Prop :=
  ∀ n, (P13752401398384308962.a n : ℤ) = A324965 n

end A324965

/-! ## A324965.P10519550816537534727

`∑[A324964(n)]`
-/

namespace A324965.P10519550816537534727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324965.P10519550816537534727

namespace A324965

/-- `∑[A324964(n)]` -/
def P10519550816537534727.Spec : Prop :=
  ∀ n, P10519550816537534727.a n = A324965 n

end A324965

/-! ## A324965.P2935129543076005058

`∑[char[A022341(n)]]`
-/

namespace A324965.P2935129543076005058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022341 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324965.P2935129543076005058

namespace A324965

/-- `∑[char[A022341(n)]]` -/
def P2935129543076005058.Spec : Prop :=
  ∀ n, (P2935129543076005058.a n : ℤ) = A324965 n

end A324965

/-! ## A324965.P2090008353070850549

`∑[and(n, A085357(n))]`
-/

namespace A324965.P2090008353070850549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A085357 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324965.P2090008353070850549

namespace A324965

/-- `∑[and(n, A085357(n))]` -/
def P2090008353070850549.Spec : Prop :=
  ∀ n, P2090008353070850549.a n = A324965 n

end A324965

/-! ## A324965.P11846300141183754650

`∑[and(n, char[A003714(n)])]`
-/

namespace A324965.P11846300141183754650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324965.P11846300141183754650

namespace A324965

/-- `∑[and(n, char[A003714(n)])]` -/
def P11846300141183754650.Spec : Prop :=
  ∀ n, (P11846300141183754650.a n : ℤ) = A324965 n

end A324965

/-! ## A324965.P2189212425083356821

`∑[char[A048678(2*n+1)]]`
-/

namespace A324965.P2189212425083356821
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324965.P2189212425083356821

namespace A324965

/-- `∑[char[A048678(2*n+1)]]` -/
def P2189212425083356821.Spec : Prop :=
  ∀ n, (P2189212425083356821.a n : ℤ) = A324965 n

end A324965

/-! ## A324965.P5906346839568766510

`∑[char[A184617(or(1, n))]]`
-/

namespace A324965.P5906346839568766510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 (Nat.lor 1 n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324965.P5906346839568766510

namespace A324965

/-- `∑[char[A184617(or(1, n))]]` -/
def P5906346839568766510.Spec : Prop :=
  ∀ n, (P5906346839568766510.a n : ℤ) = A324965 n

end A324965

/-! ## A324965.P3986994462315153102

`∑[char[A163809(2*n+1)]]`
-/

namespace A324965.P3986994462315153102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163809 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324965.P3986994462315153102

namespace A324965

/-- `∑[char[A163809(2*n+1)]]` -/
def P3986994462315153102.Spec : Prop :=
  ∀ n, (P3986994462315153102.a n : ℤ) = A324965 n

end A324965

/-! ## A324965.P9935389572395115139

`∑[char[A184617(2*n+1)]]`
-/

namespace A324965.P9935389572395115139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324965.P9935389572395115139

namespace A324965

/-- `∑[char[A184617(2*n+1)]]` -/
def P9935389572395115139.Spec : Prop :=
  ∀ n, (P9935389572395115139.a n : ℤ) = A324965 n

end A324965

/-! ## A324965.P1054685097452379879

`∑[char[A300889(2*n+1)]]`
-/

namespace A324965.P1054685097452379879
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300889 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324965.P1054685097452379879

namespace A324965

/-- `∑[char[A300889(2*n+1)]]` -/
def P1054685097452379879.Spec : Prop :=
  ∀ n, (P1054685097452379879.a n : ℤ) = A324965 n

end A324965

/-! ## A324965.P15544774534556826584

`∑[char[A090077(2*n+1)]]`
-/

namespace A324965.P15544774534556826584
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324965.P15544774534556826584

namespace A324965

/-- `∑[char[A090077(2*n+1)]]` -/
def P15544774534556826584.Spec : Prop :=
  ∀ n, (P15544774534556826584.a n : ℤ) = A324965 n

end A324965

/-! ## A324965.P12588290607728973517

`∑[char[A229763(2*n+1)]]`
-/

namespace A324965.P12588290607728973517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A324965.P12588290607728973517

namespace A324965

/-- `∑[char[A229763(2*n+1)]]` -/
def P12588290607728973517.Spec : Prop :=
  ∀ n, (P12588290607728973517.a n : ℤ) = A324965 n

end A324965

/-!
# A324966: Number of distinct odd prime indices of n.

The programs for A324966, the canonical program `A324966.P17813762556776200563` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324966 has offset 1).

The definition of A324966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324966.P18347287905901509988

`A001221(n+1)-A324967(n+1)`
-/

namespace A324966.P18347287905901509988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) - A324967 (n + 1)

end

end A324966.P18347287905901509988

namespace A324966

/-- `A001221(n+1)-A324967(n+1)` -/
def P18347287905901509988.Spec : Prop :=
  ∀ n, P18347287905901509988.a n = A324966 (n + 1)

theorem P18347287905901509988.correct : P18347287905901509988.Spec := by
  intro n
  simp only [A324966, Nat.add_sub_cancel, A324966.P18347287905901509988.a, A324966.P17813762556776200563.f1, A324966.P17813762556776200563.a, A001221, A001221.P10258181745752134128.a, A071986, A071986.P16196602093413610135.a, A324967, A324967.P4569383054327288296.a, A000035, A000035.P2023072528413494694.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A324966

/-! ## A324966.P17813762556776200563

`∑{p}[n+1, A071986(#)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A324966

/-- `∑{p}[n+1, A071986(#)]` -/
def P17813762556776200563.Spec : Prop :=
  ∀ n, P17813762556776200563.a n = A324966 (n + 1)

theorem P17813762556776200563.correct : P17813762556776200563.Spec := by
  intro n
  simp only [A324966, Nat.add_sub_cancel]

end A324966

/-! ## A324966.P10075822605787498670

`∑{p}[n+1, A131378(#)]`
-/

namespace A324966.P10075822605787498670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A131378 p

end

end A324966.P10075822605787498670

namespace A324966

/-- `∑{p}[n+1, A131378(#)]` -/
def P10075822605787498670.Spec : Prop :=
  ∀ n, P10075822605787498670.a n = A324966 (n + 1)

end A324966

/-! ## A324966.P1892115916634539466

`∑{p}[n+1, A244992(#)]`
-/

namespace A324966.P1892115916634539466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A244992 p

end

end A324966.P1892115916634539466

namespace A324966

/-- `∑{p}[n+1, A244992(#)]` -/
def P1892115916634539466.Spec : Prop :=
  ∀ n, P1892115916634539466.a n = A324966 (n + 1)

end A324966

/-! ## A324966.P8894281611213630984

`∑{p}[n+1, A257991(#)]`
-/

namespace A324966.P8894281611213630984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A257991 p

end

end A324966.P8894281611213630984

namespace A324966

/-- `∑{p}[n+1, A257991(#)]` -/
def P8894281611213630984.Spec : Prop :=
  ∀ n, P8894281611213630984.a n = A324966 (n + 1)

end A324966

/-! ## A324966.P17239577407721762424

`∑{p}[n+1, A324822(#)]`
-/

namespace A324966.P17239577407721762424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A324822 p

end

end A324966.P17239577407721762424

namespace A324966

/-- `∑{p}[n+1, A324822(#)]` -/
def P17239577407721762424.Spec : Prop :=
  ∀ n, P17239577407721762424.a n = A324966 (n + 1)

end A324966

/-! ## A324966.P5874880750870283782

`∑{p}[n+1, A324831(#)]`
-/

namespace A324966.P5874880750870283782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A324831 p

end

end A324966.P5874880750870283782

namespace A324966

/-- `∑{p}[n+1, A324831(#)]` -/
def P5874880750870283782.Spec : Prop :=
  ∀ n, P5874880750870283782.a n = A324966 (n + 1)

end A324966

/-! ## A324966.P11989153536577278817

`∑{p}[n+1, A329647(#)]`
-/

namespace A324966.P11989153536577278817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A329647 p

end

end A324966.P11989153536577278817

namespace A324966

/-- `∑{p}[n+1, A329647(#)]` -/
def P11989153536577278817.Spec : Prop :=
  ∀ n, P11989153536577278817.a n = A324966 (n + 1)

end A324966

/-! ## A324966.P1545995748414216575

`∑{p}[n+1, A345219(#)]`
-/

namespace A324966.P1545995748414216575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A345219 p

end

end A324966.P1545995748414216575

namespace A324966

/-- `∑{p}[n+1, A345219(#)]` -/
def P1545995748414216575.Spec : Prop :=
  ∀ n, P1545995748414216575.a n = A324966 (n + 1)

end A324966

/-! ## A324966.P16988250078142392918

`∑{p}[n+1, A345374(#)]`
-/

namespace A324966.P16988250078142392918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A345374 p

end

end A324966.P16988250078142392918

namespace A324966

/-- `∑{p}[n+1, A345374(#)]` -/
def P16988250078142392918.Spec : Prop :=
  ∀ n, P16988250078142392918.a n = A324966 (n + 1)

end A324966

/-! ## A324966.P8156628537975515582

`∑{p}[n+1, A353307(#)]`
-/

namespace A324966.P8156628537975515582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A353307 p

end

end A324966.P8156628537975515582

namespace A324966

/-- `∑{p}[n+1, A353307(#)]` -/
def P8156628537975515582.Spec : Prop :=
  ∀ n, P8156628537975515582.a n = A324966 (n + 1)

end A324966

/-! ## A324966.P3694348752329559383

`∑{p}[n+1, A353328(#)]`
-/

namespace A324966.P3694348752329559383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A353328 p

end

end A324966.P3694348752329559383

namespace A324966

/-- `∑{p}[n+1, A353328(#)]` -/
def P3694348752329559383.Spec : Prop :=
  ∀ n, P3694348752329559383.a n = A324966 (n + 1)

end A324966

/-! ## A324966.P17217763328257526086

`A257991(∏{p}[n+1, #])`
-/

namespace A324966.P17217763328257526086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A324966.P17217763328257526086

namespace A324966

/-- `A257991(∏{p}[n+1, #])` -/
def P17217763328257526086.Spec : Prop :=
  ∀ n, P17217763328257526086.a n = A324966 (n + 1)

end A324966

/-! ## A324966.P7751681816371018996

`A345374(∏{p}[n+1, #])`
-/

namespace A324966.P7751681816371018996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345374 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A324966.P7751681816371018996

namespace A324966

/-- `A345374(∏{p}[n+1, #])` -/
def P7751681816371018996.Spec : Prop :=
  ∀ n, P7751681816371018996.a n = A324966 (n + 1)

end A324966

/-! ## A324966.P6977104892720350061

`∑{e}[A351517(n+1), #]`
-/

namespace A324966.P6977104892720350061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351517 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A324966.P6977104892720350061

namespace A324966

/-- `∑{e}[A351517(n+1), #]` -/
def P6977104892720350061.Spec : Prop :=
  ∀ n, (P6977104892720350061.a n : ℤ) = A324966 (n + 1)

end A324966

/-! ## A324966.P18041542498543456847

`∑{p}[n+1, A056239(#)%2]`
-/

namespace A324966.P18041542498543456847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.tmod (A056239 p) 2

end

end A324966.P18041542498543456847

namespace A324966

/-- `∑{p}[n+1, A056239(#)%2]` -/
def P18041542498543456847.Spec : Prop :=
  ∀ n, P18041542498543456847.a n = A324966 (n + 1)

end A324966

/-! ## A324966.P15780822417601782140

`A001221(A247503(n+1))`
-/

namespace A324966.P15780822417601782140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A247503 (n + 1)).toNat

end

end A324966.P15780822417601782140

namespace A324966

/-- `A001221(A247503(n+1))` -/
def P15780822417601782140.Spec : Prop :=
  ∀ n, P15780822417601782140.a n = A324966 (n + 1)

end A324966

/-! ## A324966.P8457275319317534280

`A257991(A007947(n+1))`
-/

namespace A324966.P8457275319317534280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257991 (A007947 (n + 1)).toNat

end

end A324966.P8457275319317534280

namespace A324966

/-- `A257991(A007947(n+1))` -/
def P8457275319317534280.Spec : Prop :=
  ∀ n, P8457275319317534280.a n = A324966 (n + 1)

end A324966

/-! ## A324966.P13765345207423603888

`A001221(A319521(n+1))`
-/

namespace A324966.P13765345207423603888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A319521 (n + 1)).toNat

end

end A324966.P13765345207423603888

namespace A324966

/-- `A001221(A319521(n+1))` -/
def P13765345207423603888.Spec : Prop :=
  ∀ n, P13765345207423603888.a n = A324966 (n + 1)

end A324966

/-! ## A324966.P5085632450324464758

`A001221(A351517(n+1))`
-/

namespace A324966.P5085632450324464758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A351517 (n + 1)).toNat

end

end A324966.P5085632450324464758

namespace A324966

/-- `A001221(A351517(n+1))` -/
def P5085632450324464758.Spec : Prop :=
  ∀ n, P5085632450324464758.a n = A324966 (n + 1)

end A324966

/-!
# A324967: Number of distinct even prime indices of n.

The programs for A324967, the canonical program `A324967.P4569383054327288296` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324967 has offset 1).

The definition of A324967 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A324966, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324967.P4569383054327288296

`A001221(n+1)-A324966(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A324967

/-- `A001221(n+1)-A324966(n+1)` -/
def P4569383054327288296.Spec : Prop :=
  ∀ n, P4569383054327288296.a n = A324967 (n + 1)

theorem P4569383054327288296.correct : P4569383054327288296.Spec := by
  intro n
  simp only [A324967, Nat.add_sub_cancel]

end A324967

/-! ## A324967.P13714482507923203918

`∑{p}[n+1, A131377(#)]`
-/

namespace A324967.P13714482507923203918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A131377 p

end

end A324967.P13714482507923203918

namespace A324967

/-- `∑{p}[n+1, A131377(#)]` -/
def P13714482507923203918.Spec : Prop :=
  ∀ n, P13714482507923203918.a n = A324967 (n + 1)

end A324967

/-! ## A324967.P2907162433842686604

`∑{p}[n+1, A257992(#)]`
-/

namespace A324967.P2907162433842686604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A257992 p

end

end A324967.P2907162433842686604

namespace A324967

/-- `∑{p}[n+1, A257992(#)]` -/
def P2907162433842686604.Spec : Prop :=
  ∀ n, P2907162433842686604.a n = A324967 (n + 1)

end A324967

/-! ## A324967.P8556695302953558016

`∑{p}[n+1, A300060(#)]`
-/

namespace A324967.P8556695302953558016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A300060 p

end

end A324967.P8556695302953558016

namespace A324967

/-- `∑{p}[n+1, A300060(#)]` -/
def P8556695302953558016.Spec : Prop :=
  ∀ n, P8556695302953558016.a n = A324967 (n + 1)

end A324967

/-! ## A324967.P4866039157627205834

`∑{p}[n+1, A345375(#)]`
-/

namespace A324967.P4866039157627205834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A345375 p

end

end A324967.P4866039157627205834

namespace A324967

/-- `∑{p}[n+1, A345375(#)]` -/
def P4866039157627205834.Spec : Prop :=
  ∀ n, P4866039157627205834.a n = A324967 (n + 1)

end A324967

/-! ## A324967.P3209941234824641982

`∑{p}[n+1, A353329(#)]`
-/

namespace A324967.P3209941234824641982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A353329 p

end

end A324967.P3209941234824641982

namespace A324967

/-- `∑{p}[n+1, A353329(#)]` -/
def P3209941234824641982.Spec : Prop :=
  ∀ n, P3209941234824641982.a n = A324967 (n + 1)

end A324967

/-! ## A324967.P4703882094405933674

`A257992(∏{p}[n+1, #])`
-/

namespace A324967.P4703882094405933674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A324967.P4703882094405933674

namespace A324967

/-- `A257992(∏{p}[n+1, #])` -/
def P4703882094405933674.Spec : Prop :=
  ∀ n, P4703882094405933674.a n = A324967 (n + 1)

end A324967

/-! ## A324967.P13058930712028978699

`A345375(∏{p}[n+1, #])`
-/

namespace A324967.P13058930712028978699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345375 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A324967.P13058930712028978699

namespace A324967

/-- `A345375(∏{p}[n+1, #])` -/
def P13058930712028978699.Spec : Prop :=
  ∀ n, P13058930712028978699.a n = A324967 (n + 1)

end A324967

/-! ## A324967.P15767208125715831492

`∑{e}[A351518(n+1), #]`
-/

namespace A324967.P15767208125715831492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351518 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A324967.P15767208125715831492

namespace A324967

/-- `∑{e}[A351518(n+1), #]` -/
def P15767208125715831492.Spec : Prop :=
  ∀ n, (P15767208125715831492.a n : ℤ) = A324967 (n + 1)

end A324967

/-! ## A324967.P15290209381137762050

`A001221(A248101(n+1))`
-/

namespace A324967.P15290209381137762050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A248101 (n + 1)).toNat

end

end A324967.P15290209381137762050

namespace A324967

/-- `A001221(A248101(n+1))` -/
def P15290209381137762050.Spec : Prop :=
  ∀ n, P15290209381137762050.a n = A324967 (n + 1)

end A324967

/-! ## A324967.P10037364143380314207

`A257992(A007947(n+1))`
-/

namespace A324967.P10037364143380314207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A007947 (n + 1)).toNat

end

end A324967.P10037364143380314207

namespace A324967

/-- `A257992(A007947(n+1))` -/
def P10037364143380314207.Spec : Prop :=
  ∀ n, P10037364143380314207.a n = A324967 (n + 1)

end A324967

/-! ## A324967.P10105443348844129710

`A001221(A319522(n+1))`
-/

namespace A324967.P10105443348844129710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A319522 (n + 1)).toNat

end

end A324967.P10105443348844129710

namespace A324967

/-- `A001221(A319522(n+1))` -/
def P10105443348844129710.Spec : Prop :=
  ∀ n, P10105443348844129710.a n = A324967 (n + 1)

end A324967

/-! ## A324967.P2347941585028981493

`A001221(A351518(n+1))`
-/

namespace A324967.P2347941585028981493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A351518 (n + 1)).toNat

end

end A324967.P2347941585028981493

namespace A324967

/-- `A001221(A351518(n+1))` -/
def P2347941585028981493.Spec : Prop :=
  ∀ n, P2347941585028981493.a n = A324967 (n + 1)

end A324967

/-! ## A324967.P1773271363326203768

`A257992(A099985(n+1))`
-/

namespace A324967.P1773271363326203768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A099985 (n + 1)).toNat

end

end A324967.P1773271363326203768

namespace A324967

/-- `A257992(A099985(n+1))` -/
def P1773271363326203768.Spec : Prop :=
  ∀ n, P1773271363326203768.a n = A324967 (n + 1)

end A324967

/-! ## A324967.P16193751166051857963

`A324966(A064989(n+1))`
-/

namespace A324967.P16193751166051857963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324966 (A064989 (n + 1)).toNat

end

end A324967.P16193751166051857963

namespace A324967

/-- `A324966(A064989(n+1))` -/
def P16193751166051857963.Spec : Prop :=
  ∀ n, P16193751166051857963.a n = A324967 (n + 1)

end A324967

/-! ## A324967.P10390355481121755658

`A257992(A204455(n+1))`
-/

namespace A324967.P10390355481121755658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A204455 (n + 1)).toNat

end

end A324967.P10390355481121755658

namespace A324967

/-- `A257992(A204455(n+1))` -/
def P10390355481121755658.Spec : Prop :=
  ∀ n, P10390355481121755658.a n = A324967 (n + 1)

end A324967

/-! ## A324967.P12827096396619732871

`A345278(n+1)-A344908(n+1)`
-/

namespace A324967.P12827096396619732871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345278 (n + 1) - A344908 (n + 1)

end

end A324967.P12827096396619732871

namespace A324967

/-- `A345278(n+1)-A344908(n+1)` -/
def P12827096396619732871.Spec : Prop :=
  ∀ n, P12827096396619732871.a n = A324967 (n + 1)

theorem P12827096396619732871.correct : P12827096396619732871.Spec := by
  intro n
  simp only [A324967, Nat.add_sub_cancel, A324967.P12827096396619732871.a, A324967.P4569383054327288296.a, A001221, A001221.P10258181745752134128.a, A324966, A324966.P17813762556776200563.f1, A324966.P17813762556776200563.a, A344908, A344908.P7773285099346039389.f1, A344908.P7773285099346039389.a, A345278, A345278.P16777163800638418964.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, A071986, A071986.P16196602093413610135.a, A000035, A000035.P2023072528413494694.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A324967

/-! ## A324967.P10445313114100105702

`A001221((n+1)/A247503(n+1))`
-/

namespace A324967.P10445313114100105702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A247503 (n + 1) : ℚ))).toNat

end

end A324967.P10445313114100105702

namespace A324967

/-- `A001221((n+1)/A247503(n+1))` -/
def P10445313114100105702.Spec : Prop :=
  ∀ n, P10445313114100105702.a n = A324967 (n + 1)

end A324967

/-! ## A324967.P4658226595918044344

`∑{p}[A248101(n+1), #/A000027(#)]`
-/

namespace A324967.P4658226595918044344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) / (A000027 p : ℚ)

end

end A324967.P4658226595918044344

namespace A324967

/-- `∑{p}[A248101(n+1), #/A000027(#)]` -/
def P4658226595918044344.Spec : Prop :=
  ∀ n, P4658226595918044344.a n = (A324967 (n + 1) : ℚ)

end A324967

/-! ## A324967.P12158407950797941282

`∑{p}[A248101(n+1), #/A007947(#)]`
-/

namespace A324967.P12158407950797941282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248101 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℚ) / (A007947 p : ℚ)

end

end A324967.P12158407950797941282

namespace A324967

/-- `∑{p}[A248101(n+1), #/A007947(#)]` -/
def P12158407950797941282.Spec : Prop :=
  ∀ n, P12158407950797941282.a n = (A324967 (n + 1) : ℚ)

end A324967

/-!
# A324968: Matula-Goebel numbers of rooted identity trees whose non-leaf terminal subtrees are all different.

The programs for A324968, there is no canonical definition to state claims against.
-/

/-! ## A324968.P13631260607281037741

`record[A348066(A209638(n))]`
-/

namespace A324968.P13631260607281037741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348066 (A209638 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324968.P13631260607281037741

/-! ## A324968.P8783043646389531027

`∩[A276625(n+1), A209638(n)]`
-/

namespace A324968.P8783043646389531027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209638 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324968.P8783043646389531027

/-! ## A324968.P15060660084089191791

`∩[A297571(n+1), A209638(n)]`
-/

namespace A324968.P15060660084089191791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209638 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324968.P15060660084089191791

/-! ## A324968.P494087715510946772

`∩[A316494(n+1), A209638(n)]`
-/

namespace A324968.P494087715510946772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209638 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324968.P494087715510946772

/-! ## A324968.P6149338484126432612

`∩[A209638(n), A316503(n+1)]`
-/

namespace A324968.P6149338484126432612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209638 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316503 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324968.P6149338484126432612

/-!
# A324969: Number of unlabeled rooted identity trees with n vertices whose non-leaf terminal subtrees are all different.

The programs for A324969, the canonical program `A324969.P6303333253869396304` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324969 has offset 1).

The definition of A324969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 481 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324969.P1128234714606739091

`ogf((-1+x^2)/(-1+x+x^2))`
-/

namespace A324969.P1128234714606739091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1] [1, -1, -1] n

end

end A324969.P1128234714606739091

namespace A324969

/-- `ogf((-1+x^2)/(-1+x+x^2))` -/
def P1128234714606739091.Spec : Prop :=
  ∀ n, P1128234714606739091.a n = A324969 (n + 1)

end A324969

/-! ## A324969.P18428847415708560740

`round(ϕ*a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A324969.P18428847415708560740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))

end

end A324969.P18428847415708560740

namespace A324969

/-- `round(ϕ*a(n-1))` -/
def P18428847415708560740.Spec : Prop :=
  ∀ n, P18428847415708560740.a n = A324969 (n + 1)

end A324969

/-! ## A324969.P6303333253869396304

`a(n-1)+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A324969

/-- `a(n-1)+a(n-2)` -/
def P6303333253869396304.Spec : Prop :=
  ∀ n, (P6303333253869396304.a n : ℤ) = A324969 (n + 1)

theorem P6303333253869396304.correct : P6303333253869396304.Spec := by
  intro n
  simp only [A324969, Nat.add_sub_cancel]

end A324969

/-! ## A324969.P10463664046069160324

`a(n-1)-(char[2]-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A324969.P10463664046069160324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - a (n - 2))

end

end A324969.P10463664046069160324

namespace A324969

/-- `a(n-1)-(char[2]-a(n-2))` -/
def P10463664046069160324.Spec : Prop :=
  ∀ n, P10463664046069160324.a n = A324969 (n + 1)

end A324969

/-! ## A324969.P16178235877352106743

`a(n-1)-floor(2/n-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A324969.P16178235877352106743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - ⌊2 / (n : ℚ) - (a (n - 2) : ℚ)⌋

end

end A324969.P16178235877352106743

namespace A324969

/-- `a(n-1)-floor(2/n-a(n-2))` -/
def P16178235877352106743.Spec : Prop :=
  ∀ n, P16178235877352106743.a n = A324969 (n + 1)

end A324969

/-! ## A324969.P2505936086634129062

`1-floor(1-a(n-1)-a(n-2))` with `a(0)=1, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A324969.P2505936086634129062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  1 - (1 - a (n - 1) - a (n - 2))

end

end A324969.P2505936086634129062

namespace A324969

/-- `1-floor(1-a(n-1)-a(n-2))` -/
def P2505936086634129062.Spec : Prop :=
  ∀ n, P2505936086634129062.a n = A324969 (n + 1)

end A324969

/-! ## A324969.P17353964101006525132

`∏{d}[n, A061446(#)]`
-/

namespace A324969.P17353964101006525132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A061446 d

end

end A324969.P17353964101006525132

namespace A324969

/-- `∏{d}[n, A061446(#)]` -/
def P17353964101006525132.Spec : Prop :=
  ∀ n, P17353964101006525132.a n = A324969 (n + 1)

end A324969

/-! ## A324969.P11915309263988033314

`gcd(C(2, n), A000045(n))`
-/

namespace A324969.P11915309263988033314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A000045 n)

end

end A324969.P11915309263988033314

namespace A324969

/-- `gcd(C(2, n), A000045(n))` -/
def P11915309263988033314.Spec : Prop :=
  ∀ n, (P11915309263988033314.a n : ℤ) = A324969 (n + 1)

end A324969

/-! ## A324969.P1591690775518703423

`A000045(ceil(abs(γ-n)))`
-/

namespace A324969.P1591690775518703423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉.toNat

end

end A324969.P1591690775518703423

namespace A324969

/-- `A000045(ceil(abs(γ-n)))` -/
def P1591690775518703423.Spec : Prop :=
  ∀ n, P1591690775518703423.a n = A324969 (n + 1)

end A324969

/-! ## A324969.P6680045521598196010

`A000045(n-2)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A324969.P6680045521598196010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A000045 (n - 2) + a (n - 1)

end

end A324969.P6680045521598196010

namespace A324969

/-- `A000045(n-2)+a(n-1)` -/
def P6680045521598196010.Spec : Prop :=
  ∀ n, P6680045521598196010.a n = A324969 (n + 1)

end A324969

/-! ## A324969.P14627256272792755367

`A000045(n)+A000007(n)`
-/

namespace A324969.P14627256272792755367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + A000007 n

end

end A324969.P14627256272792755367

namespace A324969

/-- `A000045(n)+A000007(n)` -/
def P14627256272792755367.Spec : Prop :=
  ∀ n, P14627256272792755367.a n = A324969 (n + 1)

end A324969

/-! ## A324969.P11861749803731067401

`A057428(n)+A001611(n)`
-/

namespace A324969.P11861749803731067401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A001611 n

end

end A324969.P11861749803731067401

namespace A324969

/-- `A057428(n)+A001611(n)` -/
def P11861749803731067401.Spec : Prop :=
  ∀ n, P11861749803731067401.a n = A324969 (n + 1)

end A324969

/-! ## A324969.P14020573943065546631

`A062157(n)+A008346(n)`
-/

namespace A324969.P14020573943065546631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 n + A008346 n

end

end A324969.P14020573943065546631

namespace A324969

/-- `A062157(n)+A008346(n)` -/
def P14020573943065546631.Spec : Prop :=
  ∀ n, P14020573943065546631.a n = A324969 (n + 1)

end A324969

/-! ## A324969.P4353477014729102653

`A065220(n)+A028310(n)`
-/

namespace A324969.P4353477014729102653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + A028310 n

end

end A324969.P4353477014729102653

namespace A324969

/-- `A065220(n)+A028310(n)` -/
def P4353477014729102653.Spec : Prop :=
  ∀ n, P4353477014729102653.a n = A324969 (n + 1)

end A324969

/-! ## A324969.P730292882181366930

`A253909(n)+A014283(n)`
-/

namespace A324969.P730292882181366930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 n + A014283 n

end

end A324969.P730292882181366930

namespace A324969

/-- `A253909(n)+A014283(n)` -/
def P730292882181366930.Spec : Prop :=
  ∀ n, P730292882181366930.a n = A324969 (n + 1)

end A324969

/-! ## A324969.P14027082778320219780

`A282694(n)+A032020(n)`
-/

namespace A324969.P14027082778320219780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282694 n + A032020 n

end

end A324969.P14027082778320219780

namespace A324969

/-- `A282694(n)+A032020(n)` -/
def P14027082778320219780.Spec : Prop :=
  ∀ n, P14027082778320219780.a n = A324969 (n + 1)

end A324969

/-! ## A324969.P9053406523912781720

`A267208(n)+A104221(n)`
-/

namespace A324969.P9053406523912781720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267208 n + A104221 n

end

end A324969.P9053406523912781720

namespace A324969

/-- `A267208(n)+A104221(n)` -/
def P9053406523912781720.Spec : Prop :=
  ∀ n, P9053406523912781720.a n = A324969 (n + 1)

end A324969

/-! ## A324969.P7591147905455078622

`A001611(n)-A057427(n)`
-/

namespace A324969.P7591147905455078622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - A057427 n

end

end A324969.P7591147905455078622

namespace A324969

/-- `A001611(n)-A057427(n)` -/
def P7591147905455078622.Spec : Prop :=
  ∀ n, P7591147905455078622.a n = A324969 (n + 1)

end A324969

/-! ## A324969.P13096979117625293898

`gcd(A130713(n), A236191(n))`
-/

namespace A324969.P13096979117625293898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130713 n) (A236191 n)

end

end A324969.P13096979117625293898

namespace A324969

/-- `gcd(A130713(n), A236191(n))` -/
def P13096979117625293898.Spec : Prop :=
  ∀ n, (P13096979117625293898.a n : ℤ) = A324969 (n + 1)

end A324969

/-! ## A324969.P8142033833792448170

`A212804(A065033(2*n)+1)`
-/

namespace A324969.P8142033833792448170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A065033 (2 * n) + 1).toNat

end

end A324969.P8142033833792448170

namespace A324969

/-- `A212804(A065033(2*n)+1)` -/
def P8142033833792448170.Spec : Prop :=
  ∀ n, P8142033833792448170.a n = A324969 (n + 1)

end A324969

/-!
# A324970: Matula-Goebel numbers of rooted identity trees where not all terminal subtrees are different.

The programs for A324970, there is no canonical definition to state claims against.
-/

/-! ## A324970.P16212983793865023336

`∩[A276625(n+1), A358725(n+1)]`
-/

namespace A324970.P16212983793865023336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324970.P16212983793865023336

/-! ## A324970.P5183270434034474718

`∩[A297571(n+1), A358725(n+1)]`
-/

namespace A324970.P5183270434034474718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358725 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324970.P5183270434034474718

/-!
# A324971: Number of rooted identity trees with n vertices whose non-leaf terminal subtrees are not all different.

The programs for A324971, there is no canonical definition to state claims against.
-/

/-! ## A324971.P1319725606279522771

`Δ[A196118(n)]-A324969(n+1)`
-/

namespace A324971.P1319725606279522771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196118 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A324969 (n + 1)

end

end A324971.P1319725606279522771

/-! ## A324971.P10749431320037727217

`A004111(n+1)-A324969(n+1)`
-/

namespace A324971.P10749431320037727217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (n + 1) - A324969 (n + 1)

end

end A324971.P10749431320037727217

/-! ## A324971.P14857313130509123835

`A004111(round(n*ratio[n+3]))-A000045(n)`
-/

namespace A324971.P14857313130509123835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (SequenceMachineLib.roundAway ((n : ℚ) * ((f1 (n + 1) : ℚ) / (f1 n : ℚ)))).toNat - A000045 n

end

end A324971.P14857313130509123835

/-! ## A324971.P13943676913057594042

`A004111(n+1)-A027926(A001107(n))`
-/

namespace A324971.P13943676913057594042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (n + 1) - A027926 (A001107 n).toNat

end

end A324971.P13943676913057594042

/-! ## A324971.P12449976008125822434

`A004111(n+1)-A005206(A000045(n+1))`
-/

namespace A324971.P12449976008125822434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004111 (n + 1) - A005206 (A000045 (n + 1)).toNat

end

end A324971.P12449976008125822434

/-!
# A324972: Squarefree polygonal numbers P(s,n) with s >= 3 and n >= 3.

The programs for A324972, there is no canonical definition to state claims against.
-/

/-! ## A324972.P7585153561037270477

`record[∏{p}[A090466(n+1), #]]`
-/

namespace A324972.P7585153561037270477
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090466 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324972.P7585153561037270477

/-! ## A324972.P9335410225216759729

`record[A007913(A090466(n+1))]`
-/

namespace A324972.P9335410225216759729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A090466 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324972.P9335410225216759729

/-! ## A324972.P5336864945343560910

`filter[A090466(n+1), A008966(#)]`
-/

namespace A324972.P5336864945343560910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A324972.P5336864945343560910

/-! ## A324972.P8900260138428446749

`filter[A090466(n+1), A354819(#)]`
-/

namespace A324972.P8900260138428446749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A324972.P8900260138428446749

/-! ## A324972.P6019293019205998675

`∩[A000469(n+1), A090466(n+1)]`
-/

namespace A324972.P6019293019205998675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324972.P6019293019205998675

/-! ## A324972.P4004922634369946657

`∩[A005117(n+1), A090466(n+1)]`
-/

namespace A324972.P4004922634369946657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324972.P4004922634369946657

/-! ## A324972.P12093290270116240582

`∩[A087249(n+1), A090466(n+1)]`
-/

namespace A324972.P12093290270116240582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324972.P12093290270116240582

/-! ## A324972.P18185416590802927689

`∩[A090466(n+1), A120944(n+1)]`
-/

namespace A324972.P18185416590802927689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324972.P18185416590802927689

/-! ## A324972.P11276934534700312681

`∩[A090466(n+1), A144338(n+1)]`
-/

namespace A324972.P11276934534700312681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324972.P11276934534700312681

/-! ## A324972.P15963190499915704960

`eq[A284345(n), A364693(n)]`
-/

namespace A324972.P15963190499915704960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324972.P15963190499915704960

/-! ## A324972.P4168192588010207405

`filter[A000469(n+1), A364693(#)]`
-/

namespace A324972.P4168192588010207405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A324972.P4168192588010207405

/-! ## A324972.P8595807493501184139

`filter[A005117(n+1), A364693(#)]`
-/

namespace A324972.P8595807493501184139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A324972.P8595807493501184139

/-! ## A324972.P6155142563717518691

`filter[A087249(n+1), A364693(#)]`
-/

namespace A324972.P6155142563717518691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A324972.P6155142563717518691

/-! ## A324972.P6494567820723791294

`filter[A120944(n+1), A364693(#)]`
-/

namespace A324972.P6494567820723791294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A324972.P6494567820723791294

/-! ## A324972.P7564969553585330729

`filter[A144338(n+1), A364693(#)]`
-/

namespace A324972.P7564969553585330729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A324972.P7564969553585330729

/-! ## A324972.P6086847417286352617

`filter[A385212(n+1), A364693(#)]`
-/

namespace A324972.P6086847417286352617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A324972.P6086847417286352617

/-! ## A324972.P11832894296438400864

`filter[A075378(2*(n+1)), A364693(#)]`
-/

namespace A324972.P11832894296438400864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075378 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A324972.P11832894296438400864

/-! ## A324972.P14776085772933718769

`filter[A088610(2*n+1), A364693(#)]`
-/

namespace A324972.P14776085772933718769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088610 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A324972.P14776085772933718769

/-! ## A324972.P2393230352605761083

`filter[A163814(n+1), A364693(#)]`
-/

namespace A324972.P2393230352605761083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A364693 (f1 j).toNat = 1) n)

end

end A324972.P2393230352605761083

/-! ## A324972.P8817193131970147604

`eq[A294105(n), A364693(n)]`
-/

namespace A324972.P8817193131970147604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294105 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A324972.P8817193131970147604

/-!
# A324975: Rank of the n-th Carmichael number.

The programs for A324975, there is no canonical definition to state claims against.
-/

/-! ## A324975.P11616308332060312678

`2*(A213812(n+1)+2)`
-/

namespace A324975.P11616308332060312678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A213812 (n + 1) + 2)

end

end A324975.P11616308332060312678

/-! ## A324975.P14405663242762298670

`(A213812(n+1)+2)/(1-A010673(n))²+A213812(n+1)+2`
-/

namespace A324975.P14405663242762298670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213812 (n + 1) + 2 : ℚ) / ((1 - A010673 n) ^ 2 : ℚ) + (A213812 (n + 1) + 2 : ℚ)

end

end A324975.P14405663242762298670

/-! ## A324975.P13442922777929516512

`A062545(A213812(n+1))+1`
-/

namespace A324975.P13442922777929516512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 (A213812 (n + 1)).toNat + 1

end

end A324975.P13442922777929516512

/-! ## A324975.P4070582197650615006

`A103517(A213812(n+1)+1)`
-/

namespace A324975.P4070582197650615006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 (A213812 (n + 1) + 1).toNat

end

end A324975.P4070582197650615006

/-! ## A324975.P4232651472035955146

`A004277(A213812(n+1)+2)`
-/

namespace A324975.P4232651472035955146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A213812 (n + 1) + 2).toNat

end

end A324975.P4232651472035955146

/-! ## A324975.P907025649558593450

`A005843(A213812(n+1)+2)`
-/

namespace A324975.P907025649558593450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A213812 (n + 1) + 2).toNat

end

end A324975.P907025649558593450

/-! ## A324975.P15088049732516968692

`A163300(A213812(n+1)+2)`
-/

namespace A324975.P15088049732516968692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163300 (A213812 (n + 1) + 2).toNat

end

end A324975.P15088049732516968692

/-! ## A324975.P9562087789353078274

`A004275(A213812(n+1)+3)`
-/

namespace A324975.P9562087789353078274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A213812 (n + 1) + 3).toNat

end

end A324975.P9562087789353078274

/-! ## A324975.P6518145491893434433

`A005408(A213812(n+1)+1)+1`
-/

namespace A324975.P6518145491893434433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A213812 (n + 1) + 1).toNat + 1

end

end A324975.P6518145491893434433

/-! ## A324975.P6934238219249804980

`A008574(A213812(n+1)+2)/2`
-/

namespace A324975.P6934238219249804980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (A213812 (n + 1) + 2).toNat : ℚ) / 2

end

end A324975.P6934238219249804980

/-! ## A324975.P2694502222952729163

`A014681(A062545(A213812(n+1)))`
-/

namespace A324975.P2694502222952729163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A062545 (A213812 (n + 1)).toNat).toNat

end

end A324975.P2694502222952729163

/-! ## A324975.P4121035260881375807

`A004396(A008585(A213812(n+1)+2))`
-/

namespace A324975.P4121035260881375807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A008585 (A213812 (n + 1) + 2).toNat).toNat

end

end A324975.P4121035260881375807

/-! ## A324975.P16401644127206246069

`A273724(A005408(A213812(n+1)+2))`
-/

namespace A324975.P16401644127206246069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273724 (A005408 (A213812 (n + 1) + 2).toNat).toNat

end

end A324975.P16401644127206246069

/-! ## A324975.P8313073321489657554

`A014681(A213812(n+1)+A213812(n+1)+3)`
-/

namespace A324975.P8313073321489657554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A213812 (n + 1) + (A213812 (n + 1) + 3)).toNat

end

end A324975.P8313073321489657554

/-!
# A324978: Matula-Goebel numbers of rooted trees that are not identity trees but whose non-leaf terminal subtrees are all different.

The programs for A324978, there is no canonical definition to state claims against.
-/

/-! ## A324978.P7187659782120542049

`∩[comp[A276625(n+1)], A324935(n+1)]`
-/

namespace A324978.P7187659782120542049
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324935 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A324978.P7187659782120542049

/-! ## A324978.P4232744268265475160

`∩[A324935(n+1), comp[A324968(n+1)]]`
-/

namespace A324978.P4232744268265475160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324935 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324968 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A324978.P4232744268265475160

/-! ## A324978.P16687753193521766499

`lt[A295069(A235201(n)), A051147(n+1)]`
-/

namespace A324978.P16687753193521766499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295069 (A235201 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051147 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324978.P16687753193521766499

/-! ## A324978.P12990332466804490876

`lt[A022811(A235201(n)), A265947(n)]`
-/

namespace A324978.P12990332466804490876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022811 (A235201 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265947 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324978.P12990332466804490876

/-! ## A324978.P11145545795118080676

`lt[A326024(A235201(n)), A326023(n)]`
-/

namespace A324978.P11145545795118080676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326024 (A235201 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326023 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A324978.P11145545795118080676

/-!
# A324979: Number of rooted trees with n vertices that are not identity trees but whose non-leaf terminal subtrees are all different.

The programs for A324979, there is no canonical definition to state claims against.
-/

/-! ## A324979.P16079980197934674782

`A324936(n+1)-A324969(n+1)`
-/

namespace A324979.P16079980197934674782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324936 (n + 1) - A324969 (n + 1)

end

end A324979.P16079980197934674782

/-! ## A324979.P9434361517017120576

`A324936(n+1)-gcd(C(2, n), A000045(n))`
-/

namespace A324979.P9434361517017120576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324936 (n + 1) - (Int.gcd (Nat.choose 2 n : ℤ) (A000045 n) : ℤ)

end

end A324979.P9434361517017120576

/-! ## A324979.P17233915507493921790

`A324936(n+1)-A000045(round(acot(n)+n))`
-/

namespace A324979.P17233915507493921790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324936 (n + 1) - A000045 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

end

end A324979.P17233915507493921790

/-! ## A324979.P7110578456925948283

`A324936(n+1)-A000045(round(sqrt(n²+1)))`
-/

namespace A324979.P7110578456925948283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324936 (n + 1) - A000045 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A324979.P7110578456925948283

/-! ## A324979.P11734190497449841485

`A324936(n+1)-A028310(A000045(n))`
-/

namespace A324979.P11734190497449841485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324936 (n + 1) - A028310 (A000045 n).toNat

end

end A324979.P11734190497449841485

/-!
# A324980: a(n) = Product_{d|n} (d*sigma(d)) where sigma(k) = the sum of the divisors of k (A000203).

The programs for A324980, the canonical program `A324980.P16337764306550110740` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324980 has offset 1).

The definition of A324980 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206032, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324980.P16337764306550110740

`A007955(n+1)*A206032(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A324980

/-- `A007955(n+1)*A206032(n+1)` -/
def P16337764306550110740.Spec : Prop :=
  ∀ n, P16337764306550110740.a n = A324980 (n + 1)

theorem P16337764306550110740.correct : P16337764306550110740.Spec := by
  intro n
  simp only [A324980, Nat.add_sub_cancel]

end A324980

/-! ## A324980.P15153251941917621134

`∏{d}[n+1, A064987(#)]`
-/

namespace A324980.P15153251941917621134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A064987 d

end

end A324980.P15153251941917621134

namespace A324980

/-- `∏{d}[n+1, A064987(#)]` -/
def P15153251941917621134.Spec : Prop :=
  ∀ n, P15153251941917621134.a n = A324980 (n + 1)

end A324980

/-! ## A324980.P13355904183528605964

`∏{d}[n+1, #*A000203(#)]`
-/

namespace A324980.P13355904183528605964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (d : ℤ) * A000203 d

end

end A324980.P13355904183528605964

namespace A324980

/-- `∏{d}[n+1, #*A000203(#)]` -/
def P13355904183528605964.Spec : Prop :=
  ∀ n, P13355904183528605964.a n = A324980 (n + 1)

end A324980

/-! ## A324980.P9929951552075717768

`A334491(n+1)*A334805(n+1)`
-/

namespace A324980.P9929951552075717768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334491 (n + 1) * A334805 (n + 1)

end

end A324980.P9929951552075717768

namespace A324980

/-- `A334491(n+1)*A334805(n+1)` -/
def P9929951552075717768.Spec : Prop :=
  ∀ n, P9929951552075717768.a n = A324980 (n + 1)

end A324980

/-! ## A324980.P5199689983078754116

`sqrt(A062758(n+1))*A206032(n+1)`
-/

namespace A324980.P5199689983078754116
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062758 (n + 1) : ℝ) * (A206032 (n + 1) : ℝ)

end

end A324980.P5199689983078754116

namespace A324980

/-- `sqrt(A062758(n+1))*A206032(n+1)` -/
def P5199689983078754116.Spec : Prop :=
  ∀ n, P5199689983078754116.a n = (A324980 (n + 1) : ℝ)

end A324980

/-! ## A324980.P10364079222961733873

`A325030(n+1)/A322672(n+1)`
-/

namespace A324980.P10364079222961733873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325030 (n + 1) : ℚ) / (A322672 (n + 1) : ℚ)

end

end A324980.P10364079222961733873

namespace A324980

/-- `A325030(n+1)/A322672(n+1)` -/
def P10364079222961733873.Spec : Prop :=
  ∀ n, P10364079222961733873.a n = (A324980 (n + 1) : ℚ)

end A324980

/-! ## A324980.P9022654452645328011

`A007955(n+1)/A266265(n+1)*A325030(n+1)`
-/

namespace A324980.P9022654452645328011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A266265 (n + 1) : ℚ) * (A325030 (n + 1) : ℚ)

end

end A324980.P9022654452645328011

namespace A324980

/-- `A007955(n+1)/A266265(n+1)*A325030(n+1)` -/
def P9022654452645328011.Spec : Prop :=
  ∀ n, P9022654452645328011.a n = (A324980 (n + 1) : ℚ)

end A324980

/-! ## A324980.P5260282425954217212

`A206032(n+1)/A266265(n+1)*A324981(n+1)`
-/

namespace A324980.P5260282425954217212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206032 (n + 1) : ℚ) / (A266265 (n + 1) : ℚ) * (A324981 (n + 1) : ℚ)

end

end A324980.P5260282425954217212

namespace A324980

/-- `A206032(n+1)/A266265(n+1)*A324981(n+1)` -/
def P5260282425954217212.Spec : Prop :=
  ∀ n, P5260282425954217212.a n = (A324980 (n + 1) : ℚ)

end A324980

/-!
# A324981: a(n) = Product_{d|n} (d*pod(d)) where pod(k) = the product of the divisors of k (A007955).

The programs for A324981, the canonical program `A324981.P17068546263035737128` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324981 has offset 1).

The definition of A324981 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A266265, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324981.P17068546263035737128

`A007955(n+1)*A266265(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A324981

/-- `A007955(n+1)*A266265(n+1)` -/
def P17068546263035737128.Spec : Prop :=
  ∀ n, P17068546263035737128.a n = A324981 (n + 1)

theorem P17068546263035737128.correct : P17068546263035737128.Spec := by
  intro n
  simp only [A324981, Nat.add_sub_cancel]

end A324981

/-! ## A324981.P9341778308187362689

`∏{d}[n+1, A338576(#)]`
-/

namespace A324981.P9341778308187362689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A338576 d

end

end A324981.P9341778308187362689

namespace A324981

/-- `∏{d}[n+1, A338576(#)]` -/
def P9341778308187362689.Spec : Prop :=
  ∀ n, P9341778308187362689.a n = A324981 (n + 1)

end A324981

/-! ## A324981.P11009482256163629590

`(n+1)^∏{e}[n+1, #+1]*A322672(n+1)`
-/

namespace A324981.P11009482256163629590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℤ) * A322672 (n + 1)

end

end A324981.P11009482256163629590

namespace A324981

/-- `(n+1)^∏{e}[n+1, #+1]*A322672(n+1)` -/
def P11009482256163629590.Spec : Prop :=
  ∀ n, P11009482256163629590.a n = A324981 (n + 1)

end A324981

/-! ## A324981.P5679938117821934580

`A062758(n+1)*A322672(n+1)`
-/

namespace A324981.P5679938117821934580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062758 (n + 1) * A322672 (n + 1)

end

end A324981.P5679938117821934580

namespace A324981

/-- `A062758(n+1)*A322672(n+1)` -/
def P5679938117821934580.Spec : Prop :=
  ∀ n, P5679938117821934580.a n = A324981 (n + 1)

end A324981

/-! ## A324981.P17306268540852413887

`A007955(n+1)²*A322672(n+1)`
-/

namespace A324981.P17306268540852413887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1) ^ 2 * A322672 (n + 1)

end

end A324981.P17306268540852413887

namespace A324981

/-- `A007955(n+1)²*A322672(n+1)` -/
def P17306268540852413887.Spec : Prop :=
  ∀ n, P17306268540852413887.a n = A324981 (n + 1)

end A324981

/-! ## A324981.P10065670766304486255

`sqrt(A062758(n+1))*A266265(n+1)`
-/

namespace A324981.P10065670766304486255
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A062758 (n + 1) : ℝ) * (A266265 (n + 1) : ℝ)

end

end A324981.P10065670766304486255

namespace A324981

/-- `sqrt(A062758(n+1))*A266265(n+1)` -/
def P10065670766304486255.Spec : Prop :=
  ∀ n, P10065670766304486255.a n = (A324981 (n + 1) : ℝ)

end A324981

/-! ## A324981.P9952210713699663437

`A056925(n+1)*A056926(n+1)*A266265(n+1)`
-/

namespace A324981.P9952210713699663437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056925 (n + 1) * A056926 (n + 1) * A266265 (n + 1)

end

end A324981.P9952210713699663437

namespace A324981

/-- `A056925(n+1)*A056926(n+1)*A266265(n+1)` -/
def P9952210713699663437.Spec : Prop :=
  ∀ n, P9952210713699663437.a n = A324981 (n + 1)

end A324981

/-! ## A324981.P931676574357675442

`A266265(n+1)/A322672(n+1)*A266265(n+1)`
-/

namespace A324981.P931676574357675442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266265 (n + 1) : ℚ) / (A322672 (n + 1) : ℚ) * (A266265 (n + 1) : ℚ)

end

end A324981.P931676574357675442

namespace A324981

/-- `A266265(n+1)/A322672(n+1)*A266265(n+1)` -/
def P931676574357675442.Spec : Prop :=
  ∀ n, P931676574357675442.a n = (A324981 (n + 1) : ℚ)

end A324981

/-! ## A324981.P13266511713096039482

`A266265(n+1)²/A322672(n+1)`
-/

namespace A324981.P13266511713096039482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266265 (n + 1) ^ 2 : ℚ) / (A322672 (n + 1) : ℚ)

end

end A324981.P13266511713096039482

namespace A324981

/-- `A266265(n+1)²/A322672(n+1)` -/
def P13266511713096039482.Spec : Prop :=
  ∀ n, P13266511713096039482.a n = (A324981 (n + 1) : ℚ)

end A324981

/-!
# A324983: a(n) = denominator of Sum_{d|n} (pod(d)/tau(d)) where pod(k) = the product of the divisors of k (A007955) and tau(k) = the number of the divisors of k (A000005).

The programs for A324983, there is no canonical definition to state claims against.
-/

/-! ## A324983.P7414831455114348578

`lcm(A020639(A002944(n+1)), A324504(n+1))`
-/

namespace A324983.P7414831455114348578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (A002944 (n + 1)).toNat) (A324504 (n + 1))

end

end A324983.P7414831455114348578

/-!
# A324986: a(n) = Sum_{d|n} (tau(d)*sigma(d)) where tau(k) = the number of divisors of k (A000005) and sigma(k) = the sum of the divisors of k (A000203).

The programs for A324986, the canonical program `A324986.P12524945559188802949` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324986 has offset 1).

The definition of A324986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A324986.P12524945559188802949

`∑{d}[n+1, A064840(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A324986

/-- `∑{d}[n+1, A064840(#)]` -/
def P12524945559188802949.Spec : Prop :=
  ∀ n, P12524945559188802949.a n = A324986 (n + 1)

theorem P12524945559188802949.correct : P12524945559188802949.Spec := by
  intro n
  simp only [A324986, Nat.add_sub_cancel]

end A324986

/-! ## A324986.P7897722103792121453

`∑{d}[n+1, A000005(#)*A000203(#)]`
-/

namespace A324986.P7897722103792121453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A000203 d

end

end A324986.P7897722103792121453

namespace A324986

/-- `∑{d}[n+1, A000005(#)*A000203(#)]` -/
def P7897722103792121453.Spec : Prop :=
  ∀ n, P7897722103792121453.a n = A324986 (n + 1)

end A324986

/-! ## A324986.P14383749823697496502

`∑{d}[n+1, A007429(#)*A034448((n+1)/#)]`
-/

namespace A324986.P14383749823697496502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A324986.P14383749823697496502

namespace A324986

/-- `∑{d}[n+1, A007429(#)*A034448((n+1)/#)]` -/
def P14383749823697496502.Spec : Prop :=
  ∀ n, P14383749823697496502.a n = A324986 (n + 1)

end A324986

/-! ## A324986.P8297730101152006682

`∑{d}[n+1, A007430(#)*A254503((n+1)/#)]`
-/

namespace A324986.P8297730101152006682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007430 d * A254503 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A324986.P8297730101152006682

namespace A324986

/-- `∑{d}[n+1, A007430(#)*A254503((n+1)/#)]` -/
def P8297730101152006682.Spec : Prop :=
  ∀ n, P8297730101152006682.a n = A324986 (n + 1)

end A324986

/-! ## A324986.P15343774322921379177

`∑{d}[n+1, A000203(#)*A328485((n+1)/#)]`
-/

namespace A324986.P15343774322921379177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A328485 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A324986.P15343774322921379177

namespace A324986

/-- `∑{d}[n+1, A000203(#)*A328485((n+1)/#)]` -/
def P15343774322921379177.Spec : Prop :=
  ∀ n, P15343774322921379177.a n = A324986 (n + 1)

end A324986

/-! ## A324986.P15295791028447567756

`∑{d}[n+1, A060648(#)*A332619((n+1)/#)]`
-/

namespace A324986.P15295791028447567756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060648 d * A332619 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A324986.P15295791028447567756

namespace A324986

/-- `∑{d}[n+1, A060648(#)*A332619((n+1)/#)]` -/
def P15295791028447567756.Spec : Prop :=
  ∀ n, P15295791028447567756.a n = A324986 (n + 1)

end A324986

/-! ## A324986.P11435659866097964129

`∑{d}[n+1, A060640(#)*A344326((n+1)/#)]`
-/

namespace A324986.P11435659866097964129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060640 d * A344326 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A324986.P11435659866097964129

namespace A324986

/-- `∑{d}[n+1, A060640(#)*A344326((n+1)/#)]` -/
def P11435659866097964129.Spec : Prop :=
  ∀ n, P11435659866097964129.a n = A324986 (n + 1)

end A324986

/-! ## A324986.P11957400819475222850

`∑{d}[n+1, A069290(#)*A349770((n+1)/#)]`
-/

namespace A324986.P11957400819475222850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069290 d * A349770 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A324986.P11957400819475222850

namespace A324986

/-- `∑{d}[n+1, A069290(#)*A349770((n+1)/#)]` -/
def P11957400819475222850.Spec : Prop :=
  ∀ n, P11957400819475222850.a n = A324986 (n + 1)

end A324986

/-! ## A324986.P16720602421635455084

`∑{d}[n+1, A319132(#)*A337180((n+1)/#)]`
-/

namespace A324986.P16720602421635455084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319132 d * A337180 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A324986.P16720602421635455084

namespace A324986

/-- `∑{d}[n+1, A319132(#)*A337180((n+1)/#)]` -/
def P16720602421635455084.Spec : Prop :=
  ∀ n, P16720602421635455084.a n = A324986 (n + 1)

end A324986

/-!
# A324987: a(n) = Product_{d|n} (tau(d)*sigma(d)) where tau(k) = the number of divisors of k (A000005) and sigma(k) = the sum of the divisors of k (A000203).

The programs for A324987, the canonical program `A324987.P8516522238142221185` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A324987 has offset 1).

The definition of A324987 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A206032, A211776, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A324987.P8516522238142221185

`A211776(n+1)*A206032(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A324987

/-- `A211776(n+1)*A206032(n+1)` -/
def P8516522238142221185.Spec : Prop :=
  ∀ n, P8516522238142221185.a n = A324987 (n + 1)

theorem P8516522238142221185.correct : P8516522238142221185.Spec := by
  intro n
  simp only [A324987, Nat.add_sub_cancel]

end A324987

/-! ## A324987.P1989117928003357519

`∏{d}[n+1, A064840(#)]`
-/

namespace A324987.P1989117928003357519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A064840 d

end

end A324987.P1989117928003357519

namespace A324987

/-- `∏{d}[n+1, A064840(#)]` -/
def P1989117928003357519.Spec : Prop :=
  ∀ n, P1989117928003357519.a n = A324987 (n + 1)

end A324987

/-! ## A324987.P11147673917741033035

`A334729(n+1)*A334806(n+1)`
-/

namespace A324987.P11147673917741033035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334729 (n + 1) * A334806 (n + 1)

end

end A324987.P11147673917741033035

namespace A324987

/-- `A334729(n+1)*A334806(n+1)` -/
def P11147673917741033035.Spec : Prop :=
  ∀ n, P11147673917741033035.a n = A324987 (n + 1)

end A324987

/-! ## A324987.P4154835551266895051

`∏{d}[n+1, A000005(#)*A000203(#)]`
-/

namespace A324987.P4154835551266895051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000005 d * A000203 d

end

end A324987.P4154835551266895051

namespace A324987

/-- `∏{d}[n+1, A000005(#)*A000203(#)]` -/
def P4154835551266895051.Spec : Prop :=
  ∀ n, P4154835551266895051.a n = A324987 (n + 1)

end A324987

/-! ## A324987.P11070267546518471928

`A211776(n+1)/A007955(n+1)*A324980(n+1)`
-/

namespace A324987.P11070267546518471928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211776 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ) * (A324980 (n + 1) : ℚ)

end

end A324987.P11070267546518471928

namespace A324987

/-- `A211776(n+1)/A007955(n+1)*A324980(n+1)` -/
def P11070267546518471928.Spec : Prop :=
  ∀ n, P11070267546518471928.a n = (A324987 (n + 1) : ℚ)

end A324987

/-!
# A324988: Palindromes whose number of divisors is palindromic.

The programs for A324988, there is no canonical definition to state claims against.
-/

/-! ## A324988.P17420175684722257393

`∩[A002113(n+1), A180925(n+1)]`
-/

namespace A324988.P17420175684722257393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324988.P17420175684722257393

/-! ## A324988.P14299125229447614698

`record[A047813(A180925(n+1))]`
-/

namespace A324988.P14299125229447614698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A180925 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A324988.P14299125229447614698

/-!
# A324989: Palindromes whose product of divisors is palindromic.

The programs for A324989, there is no canonical definition to state claims against.
-/

/-! ## A324989.P3431482215853777920

`∪[A002385(n+1), A244423(n+1)]`
-/

namespace A324989.P3431482215853777920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A324989.P3431482215853777920

/-! ## A324989.P2800818844375232567

`∩[A324988(n+1), A327325(n+1)]`
-/

namespace A324989.P2800818844375232567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324989.P2800818844375232567

/-! ## A324989.P3227191490766784550

`∩[A002113(n+1), A327325(n+1)]`
-/

namespace A324989.P3227191490766784550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324989.P3227191490766784550

/-! ## A324989.P13841141484919684012

`∩[A098897(n+1), A327325(n+1)]`
-/

namespace A324989.P13841141484919684012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324989.P13841141484919684012

/-! ## A324989.P18188418395905668064

`∪[A069217(n+1), A244423(n+1)]`
-/

namespace A324989.P18188418395905668064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A324989.P18188418395905668064

/-! ## A324989.P801536143154763756

`∩[A306273(n+1), A327325(n+1)]`
-/

namespace A324989.P801536143154763756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324989.P801536143154763756

/-! ## A324989.P9627494424740281499

`∩[A061917(n+1), A327325(n+1)]`
-/

namespace A324989.P9627494424740281499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324989.P9627494424740281499

/-! ## A324989.P10905932636811042056

`∩[A083970(n+1), A327325(n+1)]`
-/

namespace A324989.P10905932636811042056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324989.P10905932636811042056

/-! ## A324989.P420490690863540300

`∩[A169824(n+1), A327325(n+1)]`
-/

namespace A324989.P420490690863540300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324989.P420490690863540300

/-! ## A324989.P12920703865775820127

`∩[A061379(n+1), A327325(n+1)]`
-/

namespace A324989.P12920703865775820127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061379 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324989.P12920703865775820127

/-! ## A324989.P10276668588139255089

`∩[A131207(n+1), A327325(n+1)]`
-/

namespace A324989.P10276668588139255089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131207 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324989.P10276668588139255089

/-! ## A324989.P16884627972709192204

`∩[A327325(n+1), A334140(n+1)]`
-/

namespace A324989.P16884627972709192204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324989.P16884627972709192204

/-! ## A324989.P660717602623421133

`∩[A327325(n+1), A334145(n+1)]`
-/

namespace A324989.P660717602623421133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324989.P660717602623421133

/-! ## A324989.P13249885039910497102

`∩[A084050(n+1), A327325(n+1)]`
-/

namespace A324989.P13249885039910497102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324989.P13249885039910497102

/-! ## A324989.P9248635579750519409

`∩[A110751(n+1), A327325(n+1)]`
-/

namespace A324989.P9248635579750519409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324989.P9248635579750519409

/-! ## A324989.P4636404102974610620

`∩[A221221(n+1), A327325(n+1)]`
-/

namespace A324989.P4636404102974610620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324989.P4636404102974610620

/-! ## A324989.P10004481377219232296

`∩[A276115(n+1), A327325(n+1)]`
-/

namespace A324989.P10004481377219232296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324989.P10004481377219232296

