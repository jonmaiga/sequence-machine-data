import SequenceMachineLib.Basic
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A391700: a(n) = (8*n)!/(n!*(2*n)!*(5*n)!).

The programs for A391700, the canonical program `A391700.P11693234310550773510` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391700 has offset 0).

The definition of A391700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391700.P11693234310550773510

`C(8*n, 3*n)*C(3*n, n)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A391700

/-- `C(8*n, 3*n)*C(3*n, n)` -/
def P11693234310550773510.Spec : Prop :=
  ∀ n, (P11693234310550773510.a n : ℤ) = A391700 n

theorem P11693234310550773510.correct : P11693234310550773510.Spec := by
  intro n
  simp only [A391700]

end A391700

/-! ## A391700.P6570950807008028195

`A000984(2*n)*A182400(n)`
-/

namespace A391700.P6570950807008028195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (2 * n) * A182400 n

end

end A391700.P6570950807008028195

namespace A391700

/-- `A000984(2*n)*A182400(n)` -/
def P6570950807008028195.Spec : Prop :=
  ∀ n, P6570950807008028195.a n = A391700 n

end A391700

/-!
# A391701: a(n) = phi(n) * (sigma(n) - tau(n)).

The programs for A391701, the canonical program `A391701.P296484889807869590` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391701 has offset 1).

The definition of A391701 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)*(A000203(n+1)-A000005(n+1))` (program `A391701.P296484889807869590`, by `A391701.P296484889807869590.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391701.P8288495755813871528

`A062354(n+1)-A062355(n+1)`
-/

namespace A391701.P8288495755813871528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062354 (n + 1) - A062355 (n + 1)

end

end A391701.P8288495755813871528

namespace A391701

/-- `A062354(n+1)-A062355(n+1)` -/
def P8288495755813871528.Spec : Prop :=
  ∀ n, P8288495755813871528.a n = A391701 (n + 1)

theorem P8288495755813871528.correct : P8288495755813871528.Spec := by
  intro n
  simp only [A391701, Nat.add_sub_cancel, A391701.P8288495755813871528.a, A391701.P296484889807869590.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062354, A062354.P12090896162141185075.a, A062355, A062355.P11902626262927596143.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A391701

/-! ## A391701.P296484889807869590

`A000010(n+1)*(A000203(n+1)-A000005(n+1))`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A391701

/-- `A000010(n+1)*(A000203(n+1)-A000005(n+1))` -/
def P296484889807869590.Spec : Prop :=
  ∀ n, P296484889807869590.a n = A391701 (n + 1)

theorem P296484889807869590.correct : P296484889807869590.Spec := by
  intro n
  simp only [A391701, Nat.add_sub_cancel]

end A391701

/-! ## A391701.P14680453619162597940

`A000010(n+1)*A065608(n+1)`
-/

namespace A391701.P14680453619162597940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A065608 (n + 1)

end

end A391701.P14680453619162597940

namespace A391701

/-- `A000010(n+1)*A065608(n+1)` -/
def P14680453619162597940.Spec : Prop :=
  ∀ n, P14680453619162597940.a n = A391701 (n + 1)

end A391701

/-! ## A391701.P5381110878334406014

`(A046520(n+1)+A000010(n+1))*A000010(n+1)`
-/

namespace A391701.P5381110878334406014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A046520 (n + 1) + A000010 (n + 1)) * A000010 (n + 1)

end

end A391701.P5381110878334406014

namespace A391701

/-- `(A046520(n+1)+A000010(n+1))*A000010(n+1)` -/
def P5381110878334406014.Spec : Prop :=
  ∀ n, P5381110878334406014.a n = A391701 (n + 1)

theorem P5381110878334406014.correct : P5381110878334406014.Spec := by
  intro n
  simp only [A391701, Nat.add_sub_cancel, A391701.P5381110878334406014.a, A391701.P296484889807869590.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A046520, A046520.P408125302691526791.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A391701

/-! ## A391701.P5438311300800159570

`A000010(n+1)*A000203(n+1)-A062355(n+1)`
-/

namespace A391701.P5438311300800159570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * A000203 (n + 1) - A062355 (n + 1)

end

end A391701.P5438311300800159570

namespace A391701

/-- `A000010(n+1)*A000203(n+1)-A062355(n+1)` -/
def P5438311300800159570.Spec : Prop :=
  ∀ n, P5438311300800159570.a n = A391701 (n + 1)

theorem P5438311300800159570.correct : P5438311300800159570.Spec := by
  intro n
  simp only [A391701, Nat.add_sub_cancel, A391701.P5438311300800159570.a, A391701.P296484889807869590.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062355, A062355.P11902626262927596143.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A391701

/-! ## A391701.P2221865887302821826

`(A255385(n+1)-A000010(n+1))*A000010(n+1)`
-/

namespace A391701.P2221865887302821826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A255385 (n + 1) - A000010 (n + 1)) * A000010 (n + 1)

end

end A391701.P2221865887302821826

namespace A391701

/-- `(A255385(n+1)-A000010(n+1))*A000010(n+1)` -/
def P2221865887302821826.Spec : Prop :=
  ∀ n, P2221865887302821826.a n = A391701 (n + 1)

theorem P2221865887302821826.correct : P2221865887302821826.Spec := by
  intro n
  simp only [A391701, Nat.add_sub_cancel, A391701.P2221865887302821826.a, A391701.P296484889807869590.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A255385, A255385.P15739975789967617263.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A391701

/-! ## A391701.P13621305670840846470

`A062354(n+1)/A000203(n+1)*A065608(n+1)`
-/

namespace A391701.P13621305670840846470
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062354 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A065608 (n + 1) : ℚ)

end

end A391701.P13621305670840846470

namespace A391701

/-- `A062354(n+1)/A000203(n+1)*A065608(n+1)` -/
def P13621305670840846470.Spec : Prop :=
  ∀ n, P13621305670840846470.a n = (A391701 (n + 1) : ℚ)

end A391701

/-! ## A391701.P7010790755422160717

`(A018804(n+1)-A396515(n+1))*A000010(n+1)`
-/

namespace A391701.P7010790755422160717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) - A396515 (n + 1)) * A000010 (n + 1)

end

end A391701.P7010790755422160717

namespace A391701

/-- `(A018804(n+1)-A396515(n+1))*A000010(n+1)` -/
def P7010790755422160717.Spec : Prop :=
  ∀ n, P7010790755422160717.a n = A391701 (n + 1)

theorem P7010790755422160717.correct : P7010790755422160717.Spec := by
  intro n
  simp only [A391701, Nat.add_sub_cancel, A391701.P7010790755422160717.a, A391701.P296484889807869590.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A018804, A018804.P15177010680010264719.f1, A018804.P15177010680010264719.a, A396515, A396515.P9540040117226872358.a, A003557, A003557.P6364735403900941810.a, A007429, A007429.P3226404755406933578.f1, A007429.P3226404755406933578.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A396514, A396514.P190034944072554770.a, A001065, A001065.P4097147489331274860.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A247343, A247343.P16054937885260863727.f1, A247343.P16054937885260863727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A391701

/-!
# A391703: Numbers m such that there exists a pair of numbers {j,k} with 0 < j < k < m, such that j*m+k and k*m+j have the same squarefree kernel.

The programs for A391703, there is no canonical definition to state claims against.
-/

/-! ## A391703.P7506959789178128257

`lt[A007953(A014634(n)), A006370(n)]`
-/

namespace A391703.P7506959789178128257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A014634 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391703.P7506959789178128257

/-! ## A391703.P18100817485621743445

`lt[A358501(A349136(3*n+5)), A358503(n)]`
-/

namespace A391703.P18100817485621743445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358501 (A349136 (3 * n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358503 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391703.P18100817485621743445

/-! ## A391703.P7858954050998802025

`lt[A005010(A380690(n+4)), A333223(2*n+3)]`
-/

namespace A391703.P7858954050998802025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005010 (A380690 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333223 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391703.P7858954050998802025

/-!
# A391711: Fibonacci numbers whose indices are even positive numbers with an odd number of prime factors (counted with multiplicity).

The programs for A391711, the canonical program `A391711.P7269243793553933826` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391711 has offset 1).

The definition of A391711 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046470, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391711.P7269243793553933826

`A000045(A046470(n+1))`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A391711

/-- `A000045(A046470(n+1))` -/
def P7269243793553933826.Spec : Prop :=
  ∀ n, P7269243793553933826.a n = A391711 (n + 1)

theorem P7269243793553933826.correct : P7269243793553933826.Spec := by
  intro n
  simp only [A391711, Nat.add_sub_cancel]

end A391711

/-! ## A391711.P1434922092863183336

`A001906(A028260(n+1))`
-/

namespace A391711.P1434922092863183336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A028260 (n + 1)).toNat

end

end A391711.P1434922092863183336

namespace A391711

/-- `A001906(A028260(n+1))` -/
def P1434922092863183336.Spec : Prop :=
  ∀ n, P1434922092863183336.a n = A391711 (n + 1)

end A391711

/-! ## A391711.P7372800382372588065

`A000045(2*A028260(n+1))`
-/

namespace A391711.P7372800382372588065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * A028260 (n + 1)).toNat

end

end A391711.P7372800382372588065

namespace A391711

/-- `A000045(2*A028260(n+1))` -/
def P7372800382372588065.Spec : Prop :=
  ∀ n, P7372800382372588065.a n = A391711 (n + 1)

end A391711

/-! ## A391711.P6373268566198812271

`A088305(and(-1, A028260(n+1)))`
-/

namespace A391711.P6373268566198812271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (Int.land (-1) (A028260 (n + 1))).toNat

end

end A391711.P6373268566198812271

namespace A391711

/-- `A088305(and(-1, A028260(n+1)))` -/
def P6373268566198812271.Spec : Prop :=
  ∀ n, P6373268566198812271.a n = A391711 (n + 1)

end A391711

/-! ## A391711.P5326046014793211035

`A000045(2*A143691(2*n+1))`
-/

namespace A391711.P5326046014793211035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * A143691 (2 * n + 1)).toNat

end

end A391711.P5326046014793211035

namespace A391711

/-- `A000045(2*A143691(2*n+1))` -/
def P5326046014793211035.Spec : Prop :=
  ∀ n, P5326046014793211035.a n = A391711 (n + 1)

end A391711

/-! ## A391711.P9449183686466753681

`A088305(A028260(n+1)%A005897(n))`
-/

namespace A391711.P9449183686466753681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (Int.tmod (A028260 (n + 1)) (A005897 n)).toNat

end

end A391711.P9449183686466753681

namespace A391711

/-- `A088305(A028260(n+1)%A005897(n))` -/
def P9449183686466753681.Spec : Prop :=
  ∀ n, P9449183686466753681.a n = A391711 (n + 1)

end A391711

/-!
# A391712: Fibonacci numbers whose indices are even positive numbers with an even number of prime factors (counted with multiplicity).

The programs for A391712, the canonical program `A391712.P957787148813764837` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391712 has offset 1).

The definition of A391712 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A063745, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391712.P957787148813764837

`A000045(A063745(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A391712

/-- `A000045(A063745(n+1))` -/
def P957787148813764837.Spec : Prop :=
  ∀ n, P957787148813764837.a n = A391712 (n + 1)

theorem P957787148813764837.correct : P957787148813764837.Spec := by
  intro n
  simp only [A391712, Nat.add_sub_cancel]

end A391712

/-! ## A391712.P5448331995376923762

`A000045(2*(lt[∑{e}[2*(n+1), #]%2, 1]+1))`
-/

namespace A391712.P5448331995376923762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) % 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * (SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1))

end

end A391712.P5448331995376923762

namespace A391712

/-- `A000045(2*(lt[∑{e}[2*(n+1), #]%2, 1]+1))` -/
def P5448331995376923762.Spec : Prop :=
  ∀ n, P5448331995376923762.a n = A391712 (n + 1)

end A391712

/-! ## A391712.P279872345522025603

`A001906(A026424(n+1))`
-/

namespace A391712.P279872345522025603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A026424 (n + 1)).toNat

end

end A391712.P279872345522025603

namespace A391712

/-- `A001906(A026424(n+1))` -/
def P279872345522025603.Spec : Prop :=
  ∀ n, P279872345522025603.a n = A391712 (n + 1)

end A391712

/-! ## A391712.P15022103987638779377

`A001906(A026422(n+2))`
-/

namespace A391712.P15022103987638779377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A026422 (n + 2)).toNat

end

end A391712.P15022103987638779377

namespace A391712

/-- `A001906(A026422(n+2))` -/
def P15022103987638779377.Spec : Prop :=
  ∀ n, P15022103987638779377.a n = A391712 (n + 1)

end A391712

/-! ## A391712.P12454428021593703705

`A000045(2*A026424(n+1))`
-/

namespace A391712.P12454428021593703705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * A026424 (n + 1)).toNat

end

end A391712.P12454428021593703705

namespace A391712

/-- `A000045(2*A026424(n+1))` -/
def P12454428021593703705.Spec : Prop :=
  ∀ n, P12454428021593703705.a n = A391712 (n + 1)

end A391712

/-!
# A391713: Number of divisors d | n such that d is neither squarefree nor powerful (in A332785).

The programs for A391713, the canonical program `A391713.P12918001386924230058` is in `Seq.B003.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391713 has offset 1).

The definition of A391713 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391713.P12918001386924230058

`A000005(n+1)-A005361(n+1)-2^A001221(n+1)+1`

The canonical program, it is in `Seq.B003.C006`.
-/

namespace A391713

/-- `A000005(n+1)-A005361(n+1)-2^A001221(n+1)+1` -/
def P12918001386924230058.Spec : Prop :=
  ∀ n, P12918001386924230058.a n = (A391713 (n + 1) : ℚ)

end A391713

/-! ## A391713.P17461125567928691120

`∑{d}[n+1, A389905(#)]`
-/

namespace A391713.P17461125567928691120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A389905 d

end

end A391713.P17461125567928691120

namespace A391713

/-- `∑{d}[n+1, A389905(#)]` -/
def P17461125567928691120.Spec : Prop :=
  ∀ n, P17461125567928691120.a n = A391713 (n + 1)

end A391713

/-! ## A391713.P1188159757792901929

`A183095(n+1)-A034444(n+1)`
-/

namespace A391713.P1188159757792901929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183095 (n + 1) - A034444 (n + 1)

end

end A391713.P1188159757792901929

namespace A391713

/-- `A183095(n+1)-A034444(n+1)` -/
def P1188159757792901929.Spec : Prop :=
  ∀ n, P1188159757792901929.a n = A391713 (n + 1)

end A391713

/-! ## A391713.P3215441164734568021

`A048105(n+1)-A183094(n+1)`
-/

namespace A391713.P3215441164734568021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048105 (n + 1) - A183094 (n + 1)

end

end A391713.P3215441164734568021

namespace A391713

/-- `A048105(n+1)-A183094(n+1)` -/
def P3215441164734568021.Spec : Prop :=
  ∀ n, P3215441164734568021.a n = A391713 (n + 1)

end A391713

/-! ## A391713.P11178364587877977218

`A183093(n+1)-A309307(n+1)`
-/

namespace A391713.P11178364587877977218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183093 (n + 1) - A309307 (n + 1)

end

end A391713.P11178364587877977218

namespace A391713

/-- `A183093(n+1)-A309307(n+1)` -/
def P11178364587877977218.Spec : Prop :=
  ∀ n, P11178364587877977218.a n = A391713 (n + 1)

end A391713

/-! ## A391713.P16823802117377672961

`A183093(n+1)-A183093(A007947(n+1))`
-/

namespace A391713.P16823802117377672961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183093 (n + 1) - A183093 (A007947 (n + 1)).toNat

end

end A391713.P16823802117377672961

namespace A391713

/-- `A183093(n+1)-A183093(A007947(n+1))` -/
def P16823802117377672961.Spec : Prop :=
  ∀ n, P16823802117377672961.a n = A391713 (n + 1)

end A391713

/-!
# A391714: Numerators of the convergents given by treating A072193 as continued fraction coefficients after the leading 0.

The programs for A391714, there is no canonical definition to state claims against.
-/

/-! ## A391714.P15845901599459123503

`filter[A041947(n), A129573(#)]`
-/

namespace A391714.P15845901599459123503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A129573 (f1 j).toNat = 1) n)

end

end A391714.P15845901599459123503

/-!
# A391716: Let f be an additive function with f(2^e) = (e + e mod 2)/2, f(p^e) = e*(p-1)/2, p an odd prime. a(n) is the number of iterations of f(n) required to reach 0.

The programs for A391716, there is no canonical definition to state claims against.
-/

/-! ## A391716.P4731456468612428738

`A055642(A020639(n+1)*A175142(3*(n+1)))`
-/

namespace A391716.P4731456468612428738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A020639 (n + 1) * A175142 (3 * (n + 1))).toNat

end

end A391716.P4731456468612428738

/-! ## A391716.P15773002120003121388

`A055642(A055396(n+1)*A109416(3*n+1))`
-/

namespace A391716.P15773002120003121388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A055396 (n + 1) * A109416 (3 * n + 1)).toNat

end

end A391716.P15773002120003121388

/-! ## A391716.P6305259743285529254

`A055642(A020639(n+1)*A335448(3*n+2))`
-/

namespace A391716.P6305259743285529254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A020639 (n + 1) * A335448 (3 * n + 2)).toNat

end

end A391716.P6305259743285529254

/-!
# A391717: a(n) = (n^(n-1) + n^(n+1) - (n+1)^(n-1) - (n-1)^(n+1))/2.

The programs for A391717, the canonical program `A391717.P14845569280378568371` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391717 has offset 2).

The definition of A391717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391717.P14845569280378568371

`((n+2)^(n+1)+(n+2)^(n+3)-(n+3)^(n+1)-(n+1)^(n+3))/2`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A391717

/-- `((n+2)^(n+1)+(n+2)^(n+3)-(n+3)^(n+1)-(n+1)^(n+3))/2` -/
def P14845569280378568371.Spec : Prop :=
  ∀ n, P14845569280378568371.a n = (A391717 (n + 2) : ℚ)

end A391717

/-!
# A391719: Y-coordinates of the lower envelope of A022462.

The programs for A391719, there is no canonical definition to state claims against.
-/

/-! ## A391719.P639553065470457714

`A022462(A391718(n+1))`
-/

namespace A391719.P639553065470457714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022462 (A391718 (n + 1)).toNat

end

end A391719.P639553065470457714

/-! ## A391719.P9196142525298688021

`A022307(A068106(3*(n+1)))+A001399(n)`
-/

namespace A391719.P9196142525298688021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (A068106 (3 * (n + 1))).toNat + A001399 n

end

end A391719.P9196142525298688021

/-!
# A391723: a(n) = Sum_{k=0..floor(n/3)} 2^k * 3^(n-3*k) * binomial(k+6,6) * binomial(2*k,2*(n-3*k)).

The programs for A391723, there is no canonical definition to state claims against.
-/

/-! ## A391723.P4035763042712342348

`A172311(and(A004404(3*n), A163876(n)))`
-/

namespace A391723.P4035763042712342348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172311 (Int.land (A004404 (3 * n)) (A163876 n)).toNat

end

end A391723.P4035763042712342348

/-!
# A391725: Square array read by descending antidiagonals: A(n, k) is the k-th odd number i that satisfies i*n = A048720(i,m) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391725, there is no canonical definition to state claims against.
-/

/-! ## A391725.P6047141912685924013

`A099375(A135381(n))`
-/

namespace A391725.P6047141912685924013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A135381 n).toNat

end

end A391725.P6047141912685924013

/-! ## A391725.P2634536535948057981

`A099375(A135382(n+1))`
-/

namespace A391725.P2634536535948057981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (A135382 (n + 1)).toNat

end

end A391725.P2634536535948057981

/-! ## A391725.P5374602752640827337

`(∑[2*n]%(comp[∑[n]]+1)+1)%A097233(n+1)`
-/

namespace A391725.P5374602752640827337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 : ℕ) : ℤ) (A097233 (n + 1))

end

end A391725.P5374602752640827337

/-! ## A391725.P10474798123007413039

`A123864(A025617(n+1))`
-/

namespace A391725.P10474798123007413039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123864 (A025617 (n + 1)).toNat

end

end A391725.P10474798123007413039

/-! ## A391725.P8283338543414020854

`gcd(A099375(n), A262022(n))`
-/

namespace A391725.P8283338543414020854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099375 n) (A262022 n)

end

end A391725.P8283338543414020854

/-!
# A391728: Terms of A115873 that are not binary palindromes, in the order of appearance, including duplicates.

The programs for A391728, there is no canonical definition to state claims against.
-/

/-! ## A391728.P15458703272269721295

`A115873(A391727(n+1))`
-/

namespace A391728.P15458703272269721295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115873 (A391727 (n + 1)).toNat

end

end A391728.P15458703272269721295

/-! ## A391728.P6915086688022624856

`filter[A391731(n+1), A178226(#)]`
-/

namespace A391728.P6915086688022624856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A391728.P6915086688022624856

/-!
# A391731: Terms of A115873 that are not of the form 2^e - 1, in the order of appearance, including duplicates.

The programs for A391731, there is no canonical definition to state claims against.
-/

/-! ## A391731.P17094956192148097165

`A115873(A391730(n+1))`
-/

namespace A391731.P17094956192148097165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115873 (A391730 (n + 1)).toNat

end

end A391731.P17094956192148097165

/-!
# A391732: Numbers k such that A115873(k) is of the form 2^e - 1.

The programs for A391732, there is no canonical definition to state claims against.
-/

/-! ## A391732.P4149248818961181931

`comp[A269160(3*n)]%A000043(n+1)`
-/

namespace A391732.P4149248818961181931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269160 (3 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A000043 (n + 1))

end

end A391732.P4149248818961181931

/-! ## A391732.P12949628280938850847

`lt[A319847(n+1), A176747(A277884(3*n))]`
-/

namespace A391732.P12949628280938850847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176747 (A277884 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391732.P12949628280938850847

/-! ## A391732.P11542132998143796559

`lt[2*a(floor(n/2))-(-1)^n, A193091(n+2)]` with `a(0)=3, a(1)=0`
-/

namespace A391732.P11542132998143796559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 0] fun n f1 =>
  2 * f1 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193091 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391732.P11542132998143796559

/-! ## A391732.P10186500799874424360

`lt[1, A184408(A326317(2*n+3))]`
-/

namespace A391732.P10186500799874424360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184408 (A326317 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A391732.P10186500799874424360

/-!
# A391733: Numbers in whose binary expansion there is exactly one run of 1-bits with an odd length, while all other runs of 1-bits are of an even length (or absent).

The programs for A391733, the canonical program `A391733.P1683383338998513801` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391733 has offset 1).

The definition of A391733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391733.P1683383338998513801

`eq[1, A005590(n)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A391733

/-- `eq[1, A005590(n)]` -/
def P1683383338998513801.Spec : Prop :=
  ∀ n, (P1683383338998513801.a n : ℤ) = A391733 (n + 1)

theorem P1683383338998513801.correct : P1683383338998513801.Spec := by
  intro n
  simp only [A391733, Nat.add_sub_cancel]

end A391733

/-! ## A391733.P7123602434408351849

`eq[1, A182093(n)-A182093(A029578(n))]`
-/

namespace A391733.P7123602434408351849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182093 n - A182093 (A029578 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A391733.P7123602434408351849

namespace A391733

/-- `eq[1, A182093(n)-A182093(A029578(n))]` -/
def P7123602434408351849.Spec : Prop :=
  ∀ n, (P7123602434408351849.a n : ℤ) = A391733 (n + 1)

end A391733

/-! ## A391733.P10040800650212296287

`eq[1, A162642(A278222(n))]`
-/

namespace A391733.P10040800650212296287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (A278222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A391733.P10040800650212296287

namespace A391733

/-- `eq[1, A162642(A278222(n))]` -/
def P10040800650212296287.Spec : Prop :=
  ∀ n, (P10040800650212296287.a n : ℤ) = A391733 (n + 1)

end A391733

/-! ## A391733.P7964981720359375977

`eq[1, A162642(A005940(n+1))]`
-/

namespace A391733.P7964981720359375977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162642 (A005940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A391733.P7964981720359375977

namespace A391733

/-- `eq[1, A162642(A005940(n+1))]` -/
def P7964981720359375977.Spec : Prop :=
  ∀ n, (P7964981720359375977.a n : ℤ) = A391733 (n + 1)

end A391733

/-! ## A391733.P15615531074012278294

`eq[A000120(n), A234022(A255445(n))]`
-/

namespace A391733.P15615531074012278294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234022 (A255445 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391733.P15615531074012278294

namespace A391733

/-- `eq[A000120(n), A234022(A255445(n))]` -/
def P15615531074012278294.Spec : Prop :=
  ∀ n, (P15615531074012278294.a n : ℤ) = A391733 (n + 1)

end A391733

/-!
# A391734: Right edge of triangle A240673: a(n) = A002110(n-1) * A079276(n).

The programs for A391734, there is no canonical definition to state claims against.
-/

/-! ## A391734.P15218154881384487585

`A002110(n)*A079276(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391734.P15218154881384487585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A079276 (n + 1)

end

end A391734.P15218154881384487585

/-! ## A391734.P8850098929518224306

`A240673(∑[n+1])`
-/

namespace A391734.P8850098929518224306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240673 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391734.P8850098929518224306

/-! ## A391734.P11314910612810341309

`∩[A392871(n+1), A288784(n)]`
-/

namespace A391734.P11314910612810341309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288784 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391734.P11314910612810341309

/-!
# A391735: Square array read by descending antidiagonals: A(n, k) is the k-th odd number i such that i divides A048720(n,i), where A048720 is carryless base-2 multiplication.

The programs for A391735, there is no canonical definition to state claims against.
-/

/-! ## A391735.P3256580782222873616

`A283431(A202006(n+2))`
-/

namespace A391735.P3256580782222873616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 (A202006 (n + 2)).toNat

end

end A391735.P3256580782222873616

/-! ## A391735.P10110153555039846093

`A201052(A005318(A135227(n))²)`
-/

namespace A391735.P10110153555039846093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201052 (A005318 (A135227 n).toNat ^ 2).toNat

end

end A391735.P10110153555039846093

/-! ## A391735.P15938780171353453411

`A099375(n)+A035171(A003680(n+1))`
-/

namespace A391735.P15938780171353453411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n + A035171 (A003680 (n + 1)).toNat

end

end A391735.P15938780171353453411

/-! ## A391735.P2047195289028396275

`A099375(n)-A291147(A091042(n)+9)`
-/

namespace A391735.P2047195289028396275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n - A291147 (A091042 n + 9).toNat

end

end A391735.P2047195289028396275

/-! ## A391735.P16677014038746347242

`A003052(A255238(n))%A014224(3*n+2)`
-/

namespace A391735.P16677014038746347242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003052 (A255238 n).toNat) (A014224 (3 * n + 2))

end

end A391735.P16677014038746347242

/-!
# A391736: Square array read by descending antidiagonals: A(n, k) is the value of quotient A048720(n,i)/i for the k-th odd number i which divides A048720(n,i), where A048720 is carryless base-2 multiplication.

The programs for A391736, there is no canonical definition to state claims against.
-/

/-! ## A391736.P15928292695315127431

`A002260(n+1)%A002260(A018890(3*n+5))`
-/

namespace A391736.P15928292695315127431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1)) (A002260 (A018890 (3 * n + 5)).toNat)

end

end A391736.P15928292695315127431

/-! ## A391736.P9575954713255734498

`A002260(n+1)%A090773(A208741(n+1))`
-/

namespace A391736.P9575954713255734498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1)) (A090773 (A208741 (n + 1)).toNat)

end

end A391736.P9575954713255734498

/-! ## A391736.P2651988189254912384

`A002260(n+1)%A375027(n+1)`
-/

namespace A391736.P2651988189254912384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1)) (A375027 (n + 1))

end

end A391736.P2651988189254912384

/-! ## A391736.P1597505921927245012

`and(A002260(n+1), A046016(A324058(n)))`
-/

namespace A391736.P1597505921927245012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002260 (n + 1)) (A046016 (A324058 n).toNat)

end

end A391736.P1597505921927245012

/-! ## A391736.P6191775326057834930

`A001511(A233757(n+1)%A345861(2*n+3))`
-/

namespace A391736.P6191775326057834930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (Int.tmod (A233757 (n + 1)) (A345861 (2 * n + 3))).toNat

end

end A391736.P6191775326057834930

/-!
# A391737: Numbers k such that 25*k = A048720(25, k), where A048720 is carryless base-2 multiplication.

The programs for A391737, there is no canonical definition to state claims against.
-/

/-! ## A391737.P12016047905632057113

`∩[A115831(n+1), A391854(n+1)]`
-/

namespace A391737.P12016047905632057113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391737.P12016047905632057113

/-! ## A391737.P7840924182578006991

`∩[A115831(n+1), A391858(n+1)]`
-/

namespace A391737.P7840924182578006991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391737.P7840924182578006991

/-! ## A391737.P871678394689631472

`∩[A115793(n+1), A115831(n+1)]`
-/

namespace A391737.P871678394689631472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391737.P871678394689631472

/-! ## A391737.P13527597682309437624

`∩[A115793(n+1), A391854(n+1)]`
-/

namespace A391737.P13527597682309437624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391737.P13527597682309437624

/-! ## A391737.P2816378970105380745

`∩[A115831(n+1), A003714(n)]`
-/

namespace A391737.P2816378970105380745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391737.P2816378970105380745

/-! ## A391737.P15981141809454013388

`∩[A391854(n+1), A003714(n)]`
-/

namespace A391737.P15981141809454013388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391737.P15981141809454013388

/-! ## A391737.P4035556035883855096

`∩[A391858(n+1), A003714(n)]`
-/

namespace A391737.P4035556035883855096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391858 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391737.P4035556035883855096

/-! ## A391737.P1610995338901016508

`∩[A115831(n+1), A115845(n+1)]`
-/

namespace A391737.P1610995338901016508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391737.P1610995338901016508

/-! ## A391737.P16917265784555785071

`∩[A115831(n+1), A391744(n+1)]`
-/

namespace A391737.P16917265784555785071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391737.P16917265784555785071

/-! ## A391737.P7345201102533653840

`∩[A115831(n+1), A115847(n)]`
-/

namespace A391737.P7345201102533653840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115847 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391737.P7345201102533653840

/-! ## A391737.P3001645205367670070

`∩[A115831(n+1), A391585(n+1)]`
-/

namespace A391737.P3001645205367670070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391585 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391737.P3001645205367670070

/-! ## A391737.P18120674079977041457

`∩[A115831(n+1), A391852(n+1)]`
-/

namespace A391737.P18120674079977041457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391737.P18120674079977041457

/-! ## A391737.P11015294834285838491

`∩[A115831(n+1), A023717(n)]`
-/

namespace A391737.P11015294834285838491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023717 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391737.P11015294834285838491

/-! ## A391737.P6371271775871037316

`∩[A115831(n+1), A107909(n)]`
-/

namespace A391737.P6371271775871037316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107909 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391737.P6371271775871037316

/-! ## A391737.P15315830268490711158

`∩[A004744(n+1), A115831(n+1)]`
-/

namespace A391737.P15315830268490711158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391737.P15315830268490711158

/-! ## A391737.P1489722704522802292

`∩[A003726(n+1), A115831(n+1)]`
-/

namespace A391737.P1489722704522802292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391737.P1489722704522802292

/-! ## A391737.P4917692309419632167

`∩[A004761(n+1), A391854(n+1)]`
-/

namespace A391737.P4917692309419632167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391854 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391737.P4917692309419632167

/-! ## A391737.P15752880487847649686

`∩[A115831(n+1), A357759(n+1)]`
-/

namespace A391737.P15752880487847649686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391737.P15752880487847649686

/-! ## A391737.P3837400872752227784

`filter[A115831(n+1), A085357(#)]`
-/

namespace A391737.P3837400872752227784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085357 (f1 j).toNat = 1) n)

end

end A391737.P3837400872752227784

/-! ## A391737.P9521253234156587389

`filter[A391854(n+1), A085357(#)]`
-/

namespace A391737.P9521253234156587389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085357 (f1 j).toNat = 1) n)

end

end A391737.P9521253234156587389

/-!
# A391739: Numbers k such that 25*k = A048720(57, k), where A048720 is carryless base-2 multiplication.

The programs for A391739, there is no canonical definition to state claims against.
-/

/-! ## A391739.P137137527451642833

`eq[A209859(n), A385889(3*n)]`
-/

namespace A391739.P137137527451642833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209859 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385889 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391739.P137137527451642833

/-! ## A391739.P3658796253588221166

`eq[A385816(3*n), A385887(n)]`
-/

namespace A391739.P3658796253588221166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385816 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391739.P3658796253588221166

/-! ## A391739.P10844171619330843590

`eq[1, A280520(A286622(n))]`
-/

namespace A391739.P10844171619330843590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280520 (A286622 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A391739.P10844171619330843590

/-!
# A391740: Numbers k such that 5*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391740, there is no canonical definition to state claims against.
-/

/-! ## A391740.P13859884472831265214

`∪[A048716(n+1), A115770(n+1)]`
-/

namespace A391740.P13859884472831265214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391740.P13859884472831265214

/-! ## A391740.P16571242294997302416

`∪[A048716(n+1), A391742(n+1)]`
-/

namespace A391740.P16571242294997302416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048716 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391740.P16571242294997302416

/-!
# A391741: Odd numbers k such that 5*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391741, there is no canonical definition to state claims against.
-/

/-! ## A391741.P9827165522587782641

`∩[2*n+1, A391740(n+1)]`
-/

namespace A391741.P9827165522587782641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391741.P9827165522587782641

/-! ## A391741.P4812891106965782339

`∩[A391740(n+1), A060747(n)]`
-/

namespace A391741.P4812891106965782339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391740 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391741.P4812891106965782339

/-! ## A391741.P8713117371761174246

`filter[A391740(n+1), A000035(#)]`
-/

namespace A391741.P8713117371761174246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391740 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391741.P8713117371761174246

/-! ## A391741.P15846667369830180436

`eq[A014707(n), A160035(n)]`
-/

namespace A391741.P15846667369830180436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391741.P15846667369830180436

/-! ## A391741.P10894603708726217707

`eq[A138540(n), A322015(n)]`
-/

namespace A391741.P10894603708726217707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138540 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391741.P10894603708726217707

/-!
# A391742: Numbers k such that 7*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391742, there is no canonical definition to state claims against.
-/

/-! ## A391742.P2698407423456777786

`∪[A115770(n+1), A048715(n)]`
-/

namespace A391742.P2698407423456777786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048715 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391742.P2698407423456777786

/-! ## A391742.P6064395136690563647

`∩[A173025(n+1), A391740(n+1)]`
-/

namespace A391742.P6064395136690563647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391740 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391742.P6064395136690563647

/-!
# A391743: Odd numbers k such that 7*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391743, there is no canonical definition to state claims against.
-/

/-! ## A391743.P13489091777243922771

`∩[A391741(n+1), A391742(n+1)]`
-/

namespace A391743.P13489091777243922771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391743.P13489091777243922771

/-! ## A391743.P9747345784927783015

`∩[A391584(n+1), A391742(n+1)]`
-/

namespace A391743.P9747345784927783015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391743.P9747345784927783015

/-! ## A391743.P15651887389566060238

`∩[A391346(n+1), A391741(n+1)]`
-/

namespace A391743.P15651887389566060238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391743.P15651887389566060238

/-! ## A391743.P212887760507751401

`∩[A047522(n+1), A391742(n+1)]`
-/

namespace A391743.P212887760507751401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047522 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391743.P212887760507751401

/-! ## A391743.P16535937265606712627

`∩[A372293(n+1), A391742(n+1)]`
-/

namespace A391743.P16535937265606712627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391743.P16535937265606712627

/-! ## A391743.P10498397912319755875

`∩[A391742(n+1), A060747(n)]`
-/

namespace A391743.P10498397912319755875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391743.P10498397912319755875

/-! ## A391743.P14949305345216190898

`∩[A047478(n+1), A391742(n+1)]`
-/

namespace A391743.P14949305345216190898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047478 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391743.P14949305345216190898

/-! ## A391743.P14280867300349185408

`∩[A047529(n+1), A391742(n+1)]`
-/

namespace A391743.P14280867300349185408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391743.P14280867300349185408

/-! ## A391743.P482962387690952336

`filter[A391742(n+1), A000035(#)]`
-/

namespace A391743.P482962387690952336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391743.P482962387690952336

/-! ## A391743.P17191830019527910431

`∩[A173025(n+1), A391741(n+1)]`
-/

namespace A391743.P17191830019527910431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391743.P17191830019527910431

/-!
# A391744: Numbers k such that 9*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391744, there is no canonical definition to state claims against.
-/

/-! ## A391744.P16311603672586995258

`∪[A115801(n+1), A115845(n+1)]`
-/

namespace A391744.P16311603672586995258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391744.P16311603672586995258

/-!
# A391745: Odd numbers k such that 9*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391745, there is no canonical definition to state claims against.
-/

/-! ## A391745.P14611603754803562528

`∩[2*n+1, A391744(n+1)]`
-/

namespace A391745.P14611603754803562528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391745.P14611603754803562528

/-! ## A391745.P7957407458846918330

`∩[A391744(n+1), Δ[n²]]`
-/

namespace A391745.P7957407458846918330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391744 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391745.P7957407458846918330

/-! ## A391745.P9385649485984152886

`filter[A391744(n+1), A000035(#)]`
-/

namespace A391745.P9385649485984152886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A391745.P9385649485984152886

/-! ## A391745.P15441125728830282842

`eq[A010114(n), A055945(n)]`
-/

namespace A391745.P15441125728830282842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010114 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391745.P15441125728830282842

/-! ## A391745.P9353464215995878970

`eq[A010119(n), A055945(n)]`
-/

namespace A391745.P9353464215995878970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010119 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055945 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A391745.P9353464215995878970

/-!
# A391746: Number of terms of A391909 <= n.

The programs for A391746, the canonical program `A391746.P1830056031143127677` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391746 has offset 1).

The definition of A391746 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391747, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391746.P1830056031143127677

`a(n-1)+A391747(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A391746

/-- `a(n-1)+A391747(n+1)` -/
def P1830056031143127677.Spec : Prop :=
  ∀ n, P1830056031143127677.a n = A391746 (n + 1)

theorem P1830056031143127677.correct : P1830056031143127677.Spec := by
  intro n
  simp only [A391746, Nat.add_sub_cancel]

end A391746

/-! ## A391746.P9650585556903875225

`∑[A391747(n+1)]`
-/

namespace A391746.P9650585556903875225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391746.P9650585556903875225

namespace A391746

/-- `∑[A391747(n+1)]` -/
def P9650585556903875225.Spec : Prop :=
  ∀ n, P9650585556903875225.a n = A391746 (n + 1)

end A391746

/-!
# A391747: a(n) = 1 if -1 <= A195017(n) <= 1, otherwise 0, where A195017(n) = Sum_{k >= 1} c_k*((-1)^(k-1)), when n = Product_{k >= 1} (p_k)^(c_k), with p_k the k-th prime.

The programs for A391747, the canonical program `A391747.P12893955322545124689` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391747 has offset 1).

The definition of A391747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391747.P12893955322545124689

`∏{p}[A195017(n+1), A056674(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A391747

/-- `∏{p}[A195017(n+1), A056674(#)]` -/
def P12893955322545124689.Spec : Prop :=
  ∀ n, P12893955322545124689.a n = A391747 (n + 1)

theorem P12893955322545124689.correct : P12893955322545124689.Spec := by
  intro n
  simp only [A391747, Nat.add_sub_cancel]

end A391747

/-! ## A391747.P9693517183324770507

`∏{e}[A195017(n+1), A122189(#)]`
-/

namespace A391747.P9693517183324770507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A122189 (Nat.factorization (f1 n).natAbs p)

end

end A391747.P9693517183324770507

namespace A391747

/-- `∏{e}[A195017(n+1), A122189(#)]` -/
def P9693517183324770507.Spec : Prop :=
  ∀ n, P9693517183324770507.a n = A391747 (n + 1)

end A391747

/-! ## A391747.P5438758788931297474

`∏{e}[A195017(n+1), A185284(#)]`
-/

namespace A391747.P5438758788931297474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A185284 (Nat.factorization (f1 n).natAbs p)

end

end A391747.P5438758788931297474

namespace A391747

/-- `∏{e}[A195017(n+1), A185284(#)]` -/
def P5438758788931297474.Spec : Prop :=
  ∀ n, P5438758788931297474.a n = A391747 (n + 1)

end A391747

/-! ## A391747.P14727548171021605916

`A010054(A195017(n+1)^4)`
-/

namespace A391747.P14727548171021605916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A195017 (n + 1) ^ 4).toNat

end

end A391747.P14727548171021605916

namespace A391747

/-- `A010054(A195017(n+1)^4)` -/
def P14727548171021605916.Spec : Prop :=
  ∀ n, P14727548171021605916.a n = A391747 (n + 1)

end A391747

/-! ## A391747.P16085698966669283325

`A010054(A195017(n+1)²²)`
-/

namespace A391747.P16085698966669283325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 ((A195017 (n + 1) ^ 2) ^ 2).toNat

end

end A391747.P16085698966669283325

namespace A391747

/-- `A010054(A195017(n+1)²²)` -/
def P16085698966669283325.Spec : Prop :=
  ∀ n, P16085698966669283325.a n = A391747 (n + 1)

end A391747

/-!
# A391750: Maximum length of an increasing sequence, bounded by n, in which the largest prime divisors of the elements form a decreasing sequence.

The programs for A391750, there is no canonical definition to state claims against.
-/

/-! ## A391750.P10290115525464765579

`A077430(A023799(n+2))`
-/

namespace A391750.P10290115525464765579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077430 (A023799 (n + 2)).toNat

end

end A391750.P10290115525464765579

/-! ## A391750.P12039518862776444366

`A000120(A032820(n+1))`
-/

namespace A391750.P12039518862776444366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A032820 (n + 1)).toNat

end

end A391750.P12039518862776444366

/-! ## A391750.P16990032546414065823

`A006287(A032916(n+1))`
-/

namespace A391750.P16990032546414065823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006287 (A032916 (n + 1)).toNat

end

end A391750.P16990032546414065823

/-! ## A391750.P5598579038556991718

`A037867(A032808(n+1))`
-/

namespace A391750.P5598579038556991718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037867 (A032808 (n + 1)).toNat

end

end A391750.P5598579038556991718

/-! ## A391750.P10949757682443962164

`A037868(A032821(n+1))`
-/

namespace A391750.P10949757682443962164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037868 (A032821 (n + 1)).toNat

end

end A391750.P10949757682443962164

/-!
# A391751: Indices of record high values in A391750.

The programs for A391751, there is no canonical definition to state claims against.
-/

/-! ## A391751.P4828629746951398971

`∩[A133012(n+1), A396304(n+1)]`
-/

namespace A391751.P4828629746951398971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391751.P4828629746951398971

/-! ## A391751.P16327263964938076690

`∩[A366846(n+1), A396304(n+1)]`
-/

namespace A391751.P16327263964938076690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391751.P16327263964938076690

/-!
# A391752: First nonzero digit in the decimal expansion of 1/Fibonacci(n).

The programs for A391752, the canonical program `A391752.P694586830429822444` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391752 has offset 1).

The definition of A391752 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052038, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391752.P694586830429822444

`A052038(A000045(n+1))`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A391752

/-- `A052038(A000045(n+1))` -/
def P694586830429822444.Spec : Prop :=
  ∀ n, P694586830429822444.a n = A391752 (n + 1)

theorem P694586830429822444.correct : P694586830429822444.Spec := by
  intro n
  simp only [A391752, Nat.add_sub_cancel]

end A391752

/-! ## A391752.P13233403922778631953

`A052038(A109609(n))`
-/

namespace A391752.P13233403922778631953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A109609 n).toNat

end

end A391752.P13233403922778631953

namespace A391752

/-- `A052038(A109609(n))` -/
def P13233403922778631953.Spec : Prop :=
  ∀ n, P13233403922778631953.a n = A391752 (n + 1)

end A391752

/-! ## A391752.P5446814404366093949

`A052038(A185357(n))`
-/

namespace A391752.P5446814404366093949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A185357 n).toNat

end

end A391752.P5446814404366093949

namespace A391752

/-- `A052038(A185357(n))` -/
def P5446814404366093949.Spec : Prop :=
  ∀ n, P5446814404366093949.a n = A391752 (n + 1)

end A391752

/-! ## A391752.P14077903300887704389

`A052038(A000044(n+1))`
-/

namespace A391752.P14077903300887704389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052038 (A000044 (n + 1)).toNat

end

end A391752.P14077903300887704389

namespace A391752

/-- `A052038(A000044(n+1))` -/
def P14077903300887704389.Spec : Prop :=
  ∀ n, P14077903300887704389.a n = A391752 (n + 1)

end A391752

/-!
# A391753: Number of pairs {j,k}, 0 < j < k < n, such that j*n + k and k*n + j are distinct and have the same squarefree kernel.

The programs for A391753, there is no canonical definition to state claims against.
-/

/-! ## A391753.P5855726403938646614

`A350251(A230721(n+1)+A020639(n+1))`
-/

namespace A391753.P5855726403938646614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350251 (A230721 (n + 1) + A020639 (n + 1)).toNat

end

end A391753.P5855726403938646614

/-! ## A391753.P6605537123202549817

`A363795(A285913(n))`
-/

namespace A391753.P6605537123202549817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363795 (A285913 n).toNat

end

end A391753.P6605537123202549817

/-! ## A391753.P9834237233678812808

`A159957(A047769(n+2))`
-/

namespace A391753.P9834237233678812808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159957 (A047769 (n + 2)).toNat

end

end A391753.P9834237233678812808

/-! ## A391753.P6690114561248047671

`A374741(A022900(n+2))`
-/

namespace A391753.P6690114561248047671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374741 (A022900 (n + 2)).toNat

end

end A391753.P6690114561248047671

/-! ## A391753.P6140777154104421799

`A001248(A207823(2*n))%A335497(n+1)`
-/

namespace A391753.P6140777154104421799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (A207823 (2 * n)).toNat) (A335497 (n + 1))

end

end A391753.P6140777154104421799

/-!
# A391755: Cubefull numbers with more than 2 distinct prime factors.

The programs for A391755, there is no canonical definition to state claims against.
-/

/-! ## A391755.P16700929594847036846

`∩[A036966(n+1), A378769(n+1)]`
-/

namespace A391755.P16700929594847036846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391755.P16700929594847036846

/-! ## A391755.P2387303613069850429

`∩[A372695(n+1), A378769(n+1)]`
-/

namespace A391755.P2387303613069850429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391755.P2387303613069850429

/-! ## A391755.P11222610752688284855

`∩[A036966(n+1), A395197(n+1)]`
-/

namespace A391755.P11222610752688284855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391755.P11222610752688284855

/-! ## A391755.P9423509902795614264

`∩[A372695(n+1), A395197(n+1)]`
-/

namespace A391755.P9423509902795614264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391755.P9423509902795614264

/-! ## A391755.P10402752664318022886

`∩[A036966(n+1), A390950(n+1)]`
-/

namespace A391755.P10402752664318022886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391755.P10402752664318022886

/-! ## A391755.P3431213048628178197

`∩[A372695(n+1), A390950(n+1)]`
-/

namespace A391755.P3431213048628178197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391755.P3431213048628178197

/-!
# A391756: Powers k^m, m > 1, of even k that are not perfect powers.

The programs for A391756, there is no canonical definition to state claims against.
-/

/-! ## A391756.P6708950559840291748

`∩[A075090(n+1), A131605(n+1)]`
-/

namespace A391756.P6708950559840291748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391756.P6708950559840291748

/-! ## A391756.P8228797503176310640

`∩[A001597(n+1), A363216(n+1)]`
-/

namespace A391756.P8228797503176310640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391756.P8228797503176310640

/-! ## A391756.P16514984234299352080

`∩[A075090(n+1), A363216(n+1)]`
-/

namespace A391756.P16514984234299352080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391756.P16514984234299352080

/-! ## A391756.P664879762826354202

`∩[A131605(n+1), A363216(n+1)]`
-/

namespace A391756.P664879762826354202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391756.P664879762826354202

/-! ## A391756.P14023805815031714499

`∩[A131605(n+1), A390010(n+1)]`
-/

namespace A391756.P14023805815031714499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391756.P14023805815031714499

/-! ## A391756.P479383579000395586

`∩[A075090(n+1), A286708(n+1)]`
-/

namespace A391756.P479383579000395586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391756.P479383579000395586

/-! ## A391756.P17434834801735570935

`∩[A075090(n+1), A370266(n+1)]`
-/

namespace A391756.P17434834801735570935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391756.P17434834801735570935

/-! ## A391756.P14837006716340585858

`∩[A072413(n+1), A075090(n+1)]`
-/

namespace A391756.P14837006716340585858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072413 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391756.P14837006716340585858

/-! ## A391756.P717330503788223130

`∩[A075090(n+1), A347960(n+1)]`
-/

namespace A391756.P717330503788223130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391756.P717330503788223130

/-! ## A391756.P6732929722153086353

`∩[A036785(n+1), A075090(n+1)]`
-/

namespace A391756.P6732929722153086353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391756.P6732929722153086353

/-! ## A391756.P10300750317327261601

`∩[A075090(n+1), A361098(n+1)]`
-/

namespace A391756.P10300750317327261601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391756.P10300750317327261601

/-! ## A391756.P10994381708725138143

`filter[A075090(n+1), A355447(#)]`
-/

namespace A391756.P10994381708725138143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A391756.P10994381708725138143

/-! ## A391756.P16529736941793245683

`filter[A075090(n+1), A379958(#)]`
-/

namespace A391756.P16529736941793245683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A391756.P16529736941793245683

/-! ## A391756.P8033493653946229241

`∩[A363216(n+1), A396856(n+1)]`
-/

namespace A391756.P8033493653946229241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396856 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391756.P8033493653946229241

/-! ## A391756.P13123535468093356526

`∩[2*n, A131605(n+1)]`
-/

namespace A391756.P13123535468093356526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391756.P13123535468093356526

/-! ## A391756.P1400787043653201930

`∩[A075090(n+1), A375397(n+1)]`
-/

namespace A391756.P1400787043653201930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391756.P1400787043653201930

/-! ## A391756.P13902780797599183711

`filter[A075090(n+1), A065202(#)]`
-/

namespace A391756.P13902780797599183711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A391756.P13902780797599183711

/-! ## A391756.P3861217959848626718

`filter[A131605(n+1), A121262(#)]`
-/

namespace A391756.P3861217959848626718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A391756.P3861217959848626718

/-! ## A391756.P7778868673590800079

`filter[A075090(n+1), A202238(#)]`
-/

namespace A391756.P7778868673590800079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A391756.P7778868673590800079

/-! ## A391756.P5510606550105922142

`filter[A075090(n+1), A323170(#)]`
-/

namespace A391756.P5510606550105922142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A391756.P5510606550105922142

/-!
# A391757: a(n) = Sum_{k=0..floor(n/4)} 2^k * 3^(n-3*k) * binomial(2*(n-3*k),2*k).

The programs for A391757, there is no canonical definition to state claims against.
-/

/-! ## A391757.P6335427100004841963

`∑[A325781(∑[A000088(n)])]`
-/

namespace A391757.P6335427100004841963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391757.P6335427100004841963

/-! ## A391757.P6022479935215322642

`A002635(A396760(2*n+1)-(n+1))`
-/

namespace A391757.P6022479935215322642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A396760 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A391757.P6022479935215322642

/-!
# A391758: a(n) = Sum_{k=0..floor(n/4)} (n-3*k+1) * 2^k * 3^(n-3*k) * binomial(2*(n-3*k),2*k).

The programs for A391758, there is no canonical definition to state claims against.
-/

/-! ## A391758.P9318731479662957040

`A062108(A055429(n))`
-/

namespace A391758.P9318731479662957040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (A055429 n).toNat

end

end A391758.P9318731479662957040

/-!
# A391760: Strictly increasing continued fraction that produces its own decimal expansion (with leading zeros).

The programs for A391760, there is no canonical definition to state claims against.
-/

/-! ## A391760.P14378063354526959109

`A391761(A001096(n))`
-/

namespace A391760.P14378063354526959109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391761 (A001096 n).toNat

end

end A391760.P14378063354526959109

/-! ## A391760.P13908568565498804650

`A391761(n)+A157687(A358504(n))`
-/

namespace A391760.P13908568565498804650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391761 n + A157687 (A358504 n).toNat

end

end A391760.P13908568565498804650

/-!
# A391765: a(n) is smallest k such that prime(k) - 1 == 0 (mod n).

The programs for A391765, there is no canonical definition to state claims against.
-/

/-! ## A391765.P18098778187154738921

`A000720(A034694(n+1))`
-/

namespace A391765.P18098778187154738921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A034694 (n + 1)).toNat

end

end A391765.P18098778187154738921

/-! ## A391765.P12532551600086154163

`A061395(2*A034694(n+1))`
-/

namespace A391765.P12532551600086154163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A034694 (n + 1)).toNat

end

end A391765.P12532551600086154163

/-! ## A391765.P3268433880614157445

`A219109(A034694(n+1)+1)`
-/

namespace A391765.P3268433880614157445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219109 (A034694 (n + 1) + 1).toNat

end

end A391765.P3268433880614157445

/-! ## A391765.P17967192278396665187

`∑{d}[A034694(n+1), A049084(#)]`
-/

namespace A391765.P17967192278396665187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A049084 d

end

end A391765.P17967192278396665187

/-! ## A391765.P7588742686392489319

`∑{d}[A034694(n+1), A056239(#)]`
-/

namespace A391765.P7588742686392489319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A391765.P7588742686392489319

/-! ## A391765.P11979304598436646404

`A061395(A034694(n+1)^A178334(n+4))`
-/

namespace A391765.P11979304598436646404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((A034694 (n + 1) : ℚ) ^ (A178334 (n + 4) : ℤ))).toNat

end

end A391765.P11979304598436646404

/-! ## A391765.P12962322342448625063

`A061395(A034694(n+1)^2)`
-/

namespace A391765.P12962322342448625063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A034694 (n + 1) ^ 2).toNat

end

end A391765.P12962322342448625063

/-!
# A391774: Number of possibilities for the first n terms of the normalized chromatic difference sequence of the graph of a Young diagram.

The programs for A391774, there is no canonical definition to state claims against.
-/

/-! ## A391774.P13570107928552004203

`ogf((-1+2x+2x^3+2x^4+6x^5)/(-1+4x-3x^2+x^3))`
-/

namespace A391774.P13570107928552004203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 0, -2, -2, -6] [1, -4, 3, -1] n

end

end A391774.P13570107928552004203

/-! ## A391774.P1087381045315964468

`Δ[A077003(n+3)]`
-/

namespace A391774.P1087381045315964468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077003 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A391774.P1087381045315964468

/-! ## A391774.P10643785631447145343

`A059553(A149820(n))`
-/

namespace A391774.P10643785631447145343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059553 (A149820 n).toNat

end

end A391774.P10643785631447145343

/-!
# A391777: Total number of 231 patterns in all heapable permutations of length n.

The programs for A391777, there is no canonical definition to state claims against.
-/

/-! ## A391777.P9386657531060604923

`A036850(A194279(n))`
-/

namespace A391777.P9386657531060604923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036850 (A194279 n).toNat

end

end A391777.P9386657531060604923

/-! ## A391777.P11141883618464988511

`A352493(A013326(n))`
-/

namespace A391777.P11141883618464988511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352493 (A013326 n).toNat

end

end A391777.P11141883618464988511

/-! ## A391777.P9000907163978933858

`A220520(A174958(n))`
-/

namespace A391777.P9000907163978933858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220520 (A174958 n).toNat

end

end A391777.P9000907163978933858

/-!
# A391778: a(n) = n*(n-1)*(n- 2)^2*2^(n-4)/3.

The programs for A391778, the canonical program `A391778.P13166623166481535712` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391778 has offset 1).

The definition of A391778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391778.P13166623166481535712

`(n+1)*n*(n-1)²*2^(n-3)/3`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A391778

/-- `(n+1)*n*(n-1)²*2^(n-3)/3` -/
def P13166623166481535712.Spec : Prop :=
  ∀ n, P13166623166481535712.a n = (A391778 (n + 1) : ℚ)

end A391778

/-! ## A391778.P10992993137501596681

`∑[A161680(n)]*A139756(n)`
-/

namespace A391778.P10992993137501596681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A139756 n

end

end A391778.P10992993137501596681

namespace A391778

/-- `∑[A161680(n)]*A139756(n)` -/
def P10992993137501596681.Spec : Prop :=
  ∀ n, P10992993137501596681.a n = A391778 (n + 1)

end A391778

/-! ## A391778.P10594967447635086195

`A078812(A152947(n+1))*A139756(n)`
-/

namespace A391778.P10594967447635086195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 (A152947 (n + 1)).toNat * A139756 n

end

end A391778.P10594967447635086195

namespace A391778

/-- `A078812(A152947(n+1))*A139756(n)` -/
def P10594967447635086195.Spec : Prop :=
  ∀ n, P10594967447635086195.a n = A391778 (n + 1)

end A391778

/-! ## A391778.P4899872496974271918

`∑[C(n, 2)]*A003415(A011782(n))`
-/

namespace A391778.P4899872496974271918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A003415 (A011782 n).toNat

end

end A391778.P4899872496974271918

namespace A391778

/-- `∑[C(n, 2)]*A003415(A011782(n))` -/
def P4899872496974271918.Spec : Prop :=
  ∀ n, P4899872496974271918.a n = A391778 (n + 1)

end A391778

/-!
# A391788: Array read by antidiagonals: A(n,k) = phi(n+k) with k >= 0 and A(0,0) = 0.

The programs for A391788, there is no canonical definition to state claims against.
-/

/-! ## A391788.P18269683429055826233

`A390279(A057944(n))`
-/

namespace A391788.P18269683429055826233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390279 (A057944 n).toNat

end

end A391788.P18269683429055826233

/-! ## A391788.P17277162700330133923

`A384422(A137688(n))`
-/

namespace A391788.P17277162700330133923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384422 (A137688 n).toNat

end

end A391788.P17277162700330133923

/-! ## A391788.P11645010186622459128

`∑{e}[A098355(n), A000010(#)]`
-/

namespace A391788.P11645010186622459128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000010 (Nat.factorization (f1 n).natAbs p)

end

end A391788.P11645010186622459128

/-! ## A391788.P13773125394492951114

`A340995(A364843(n+1))`
-/

namespace A391788.P13773125394492951114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340995 (A364843 (n + 1)).toNat

end

end A391788.P13773125394492951114

/-! ## A391788.P15379239856921208224

`A384422(A098355(n))`
-/

namespace A391788.P15379239856921208224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384422 (A098355 n).toNat

end

end A391788.P15379239856921208224

/-!
# A391790: a(n) is the permanent of the n-th order Hankel matrix M(n) whose generic element is given by M(i,j) = phi(i+j) with i,j = 0, ..., n-1 and M(0,0) = 0.

The programs for A391790, there is no canonical definition to state claims against.
-/

/-! ## A391790.P10518102560297788866

`A193749(A150295(n))`
-/

namespace A391790.P10518102560297788866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193749 (A150295 n).toNat

end

end A391790.P10518102560297788866

/-!
# A391792: a(n)/3^(n-1) is the expected win if one of three baskets is chosen randomly and the player optimally chooses the coins with values from 1 to n (see Comments for details).

The programs for A391792, there is no canonical definition to state claims against.
-/

/-! ## A391792.P1324193789221061033

`A026478(A149704(n+1))`
-/

namespace A391792.P1324193789221061033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026478 (A149704 (n + 1)).toNat

end

end A391792.P1324193789221061033

/-!
# A391793: Multiplicative sequence a(n) with a(p^e) = ((e mod 5) * ((e mod 5) - 5) + 4) / 2 for prime p and e > 0.

The programs for A391793, the canonical program `A391793.P952432281470037196` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391793 has offset 1).

The definition of A391793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391793.P952432281470037196

`∑{d}[n+1, A253206(#)*A307425((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A391793

/-- `∑{d}[n+1, A253206(#)*A307425((n+1)/#)]` -/
def P952432281470037196.Spec : Prop :=
  ∀ n, P952432281470037196.a n = A391793 (n + 1)

theorem P952432281470037196.correct : P952432281470037196.Spec := by
  intro n
  simp only [A391793, Nat.add_sub_cancel]

end A391793

/-! ## A391793.P16088604961349873326

`A143354(A061200(A061200(A061200(n+1))))`
-/

namespace A391793.P16088604961349873326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143354 (A061200 (A061200 (A061200 (n + 1)).toNat).toNat).toNat

end

end A391793.P16088604961349873326

namespace A391793

/-- `A143354(A061200(A061200(A061200(n+1))))` -/
def P16088604961349873326.Spec : Prop :=
  ∀ n, P16088604961349873326.a n = A391793 (n + 1)

end A391793

/-! ## A391793.P17988724003478149525

`A010892(A136061(2*(n+2))+A052409(n+1))`
-/

namespace A391793.P17988724003478149525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A136061 (2 * (n + 2)) + A052409 (n + 1)).toNat

end

end A391793.P17988724003478149525

namespace A391793

/-- `A010892(A136061(2*(n+2))+A052409(n+1))` -/
def P17988724003478149525.Spec : Prop :=
  ∀ n, P17988724003478149525.a n = A391793 (n + 1)

end A391793

/-! ## A391793.P6246522383183885348

`A121373(∏{e}[n+1, 2*#+1]^∑{e}[∏{p}[n+1, #], #]!)`
-/

namespace A391793.P6246522383183885348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 ((∏ p ∈ Nat.primeFactors (f1 n), (2 * Nat.factorization (f1 n) p + 1)) ^ Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

end

end A391793.P6246522383183885348

namespace A391793

/-- `A121373(∏{e}[n+1, 2*#+1]^∑{e}[∏{p}[n+1, #], #]!)` -/
def P6246522383183885348.Spec : Prop :=
  ∀ n, P6246522383183885348.a n = A391793 (n + 1)

end A391793

/-! ## A391793.P3976592223296445501

`A016350(A016003(n+1))`
-/

namespace A391793.P3976592223296445501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016350 (A016003 (n + 1)).toNat

end

end A391793.P3976592223296445501

namespace A391793

/-- `A016350(A016003(n+1))` -/
def P3976592223296445501.Spec : Prop :=
  ∀ n, P3976592223296445501.a n = A391793 (n + 1)

end A391793

/-!
# A391796: a(n) is the least k such that the residues mod 3 of the primes prime(k), prime(k+1), ... comprise a string of n 2's followed by 1.

The programs for A391796, there is no canonical definition to state claims against.
-/

/-! ## A391796.P5588582802199729908

`or(A010059(A055496(n+2)), A247967(n+1))`
-/

namespace A391796.P5588582802199729908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010059 (A055496 (n + 2)).toNat) (A247967 (n + 1))

end

end A391796.P5588582802199729908

/-!
# A391797: Numbers k such that prime(2*k + 2) - prime(2*k) < prime(2*k + 1) - prime(2*k - 1).

The programs for A391797, there is no canonical definition to state claims against.
-/

/-! ## A391797.P1688153076789904434

`A000720(A391800(n+1))`
-/

namespace A391797.P1688153076789904434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A391800 (n + 1)).toNat

end

end A391797.P1688153076789904434

/-! ## A391797.P2822161261709349149

`A049084(or(1, A391800(n+1)))`
-/

namespace A391797.P2822161261709349149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.lor 1 (A391800 (n + 1))).toNat

end

end A391797.P2822161261709349149

/-! ## A391797.P3485700228342065145

`A003963(A391800(n+1)+A000038(n))`
-/

namespace A391797.P3485700228342065145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A391800 (n + 1) + A000038 n).toNat

end

end A391797.P3485700228342065145

/-! ## A391797.P1207242161021921368

`A003963(2*A391800(n+1))`
-/

namespace A391797.P1207242161021921368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A391800 (n + 1)).toNat

end

end A391797.P1207242161021921368

/-! ## A391797.P13175576225638443357

`A056239(A217842(2*n+3)*A391800(n+1))`
-/

namespace A391797.P13175576225638443357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A217842 (2 * n + 3) * A391800 (n + 1)).toNat

end

end A391797.P13175576225638443357

/-!
# A391798: Numbers k such that prime(2*k + 2) - prime(2*k) = prime(2*k + 1) - prime(2*k - 1).

The programs for A391798, there is no canonical definition to state claims against.
-/

/-! ## A391798.P17538702185658702091

`A000720(A391801(n+1))`
-/

namespace A391798.P17538702185658702091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A391801 (n + 1)).toNat

end

end A391798.P17538702185658702091

/-! ## A391798.P17519665536145031815

`∑{d}[A391801(n+1), A344616(#)]`
-/

namespace A391798.P17519665536145031815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A344616 d

end

end A391798.P17519665536145031815

/-! ## A391798.P14732401252563158161

`A344616(lcm(1-2*n%2, A391801(n+1)))`
-/

namespace A391798.P14732401252563158161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (Int.lcm (1 - ((2 * (n % 2) : ℕ) : ℤ)) (A391801 (n + 1)))

end

end A391798.P14732401252563158161

/-! ## A391798.P9274215624257100119

`A049084(or(1, A391801(n+1)))`
-/

namespace A391798.P9274215624257100119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.lor 1 (A391801 (n + 1))).toNat

end

end A391798.P9274215624257100119

/-!
# A391799: Numbers k such that prime(2*k + 2) - prime(2*k) > prime(2*k + 1) - prime(2*k - 1).

The programs for A391799, there is no canonical definition to state claims against.
-/

/-! ## A391799.P7240745052411556079

`A000720(A391802(n+1))`
-/

namespace A391799.P7240745052411556079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A391802 (n + 1)).toNat

end

end A391799.P7240745052411556079

