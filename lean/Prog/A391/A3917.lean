import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C013
import Seq.B001.C014
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
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A391700: a(n) = (8*n)!/(n!*(2*n)!*(5*n)!).

The programs for A391700, the canonical program `A391700.P11693234310550773510` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391700 has offset 0).

The definition of A391700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391700.P11693234310550773510

`C(8*n, 3*n)*C(3*n, n)`

The canonical program, it is in `Seq.B000.C050`.
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

The programs for A391701, the canonical program `A391701.P296484889807869590` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391701 has offset 1).

The definition of A391701 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000010(n+1)*(A000203(n+1)-A000005(n+1))` (program `A391701.P296484889807869590`, by `A391701.P296484889807869590.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A391701.P8983225654261896875

`A000010(n+1)*∑{d}[n+1, #-1]`
-/

namespace A391701.P8983225654261896875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) * (∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1))

end

end A391701.P8983225654261896875

namespace A391701

/-- `A000010(n+1)*∑{d}[n+1, #-1]` -/
def P8983225654261896875.Spec : Prop :=
  ∀ n, P8983225654261896875.a n = A391701 (n + 1)

end A391701

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
  simp only [A391701, Nat.add_sub_cancel, A391701.P8288495755813871528.a, A391701.P296484889807869590.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062354, A062354.P12090896162141185075.a, A062355, A062355.P11902626262927596143.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A391701

/-! ## A391701.P296484889807869590

`A000010(n+1)*(A000203(n+1)-A000005(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A391701

/-- `A000010(n+1)*(A000203(n+1)-A000005(n+1))` -/
def P296484889807869590.Spec : Prop :=
  ∀ n, P296484889807869590.a n = A391701 (n + 1)

theorem P296484889807869590.correct : P296484889807869590.Spec := by
  intro n
  simp only [A391701, Nat.add_sub_cancel]

end A391701

/-! ## A391701.P8044449032998266191

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*∑{d}[n+1, #-1]`
-/

namespace A391701.P8044449032998266191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * ((∑ d ∈ Nat.divisors (f3 n), ((d : ℤ) - 1) : ℤ) : ℚ)

end

end A391701.P8044449032998266191

namespace A391701

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*∑{d}[n+1, #-1]` -/
def P8044449032998266191.Spec : Prop :=
  ∀ n, P8044449032998266191.a n = (A391701 (n + 1) : ℚ)

end A391701

/-! ## A391701.P11706901450934240440

`∑{d}[n+1, (#-1)*A000010(n+1)]`
-/

namespace A391701.P11706901450934240440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1) * A000010 (n + 1)

end

end A391701.P11706901450934240440

namespace A391701

/-- `∑{d}[n+1, (#-1)*A000010(n+1)]` -/
def P11706901450934240440.Spec : Prop :=
  ∀ n, P11706901450934240440.a n = A391701 (n + 1)

end A391701

/-! ## A391701.P7424805244896518235

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A065608(n+1)`
-/

namespace A391701.P7424805244896518235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) * (A065608 (n + 1) : ℚ)

end

end A391701.P7424805244896518235

namespace A391701

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]*A065608(n+1)` -/
def P7424805244896518235.Spec : Prop :=
  ∀ n, P7424805244896518235.a n = (A391701 (n + 1) : ℚ)

end A391701

/-! ## A391701.P12466368768409792940

`Δ[A002088(n)]*A065608(n+1)`
-/

namespace A391701.P12466368768409792940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A065608 (n + 1)

end

end A391701.P12466368768409792940

namespace A391701

/-- `Δ[A002088(n)]*A065608(n+1)` -/
def P12466368768409792940.Spec : Prop :=
  ∀ n, P12466368768409792940.a n = A391701 (n + 1)

end A391701

/-! ## A391701.P13198472751517765210

`Δ[A005728(n)]*A065608(n+1)`
-/

namespace A391701.P13198472751517765210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A065608 (n + 1)

end

end A391701.P13198472751517765210

namespace A391701

/-- `Δ[A005728(n)]*A065608(n+1)` -/
def P13198472751517765210.Spec : Prop :=
  ∀ n, P13198472751517765210.a n = A391701 (n + 1)

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
  simp only [A391701, Nat.add_sub_cancel, A391701.P5381110878334406014.a, A391701.P296484889807869590.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A046520, A046520.P408125302691526791.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A391701

/-! ## A391701.P16084680837012920322

`A062354(n+1)-A000005(n+1)*A000010(n+1)`
-/

namespace A391701.P16084680837012920322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062354 (n + 1) - A000005 (n + 1) * A000010 (n + 1)

end

end A391701.P16084680837012920322

namespace A391701

/-- `A062354(n+1)-A000005(n+1)*A000010(n+1)` -/
def P16084680837012920322.Spec : Prop :=
  ∀ n, P16084680837012920322.a n = A391701 (n + 1)

theorem P16084680837012920322.correct : P16084680837012920322.Spec := by
  intro n
  simp only [A391701, Nat.add_sub_cancel, A391701.P16084680837012920322.a, A391701.P296484889807869590.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062354, A062354.P12090896162141185075.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

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
  simp only [A391701, Nat.add_sub_cancel, A391701.P5438311300800159570.a, A391701.P296484889807869590.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062355, A062355.P11902626262927596143.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

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
  simp only [A391701, Nat.add_sub_cancel, A391701.P2221865887302821826.a, A391701.P296484889807869590.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A255385, A255385.P15739975789967617263.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

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
  simp only [A391701, Nat.add_sub_cancel, A391701.P7010790755422160717.a, A391701.P296484889807869590.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A018804, A018804.P4748681952283325633.f1, A018804.P4748681952283325633.a, A396515, A396515.P9540040117226872358.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A396514, A396514.P190034944072554770.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A391701

/-! ## A391701.P3274302498428800567

`A062354(n+1)-A173557(n+1)*A318519(n+1)`
-/

namespace A391701.P3274302498428800567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062354 (n + 1) - A173557 (n + 1) * A318519 (n + 1)

end

end A391701.P3274302498428800567

namespace A391701

/-- `A062354(n+1)-A173557(n+1)*A318519(n+1)` -/
def P3274302498428800567.Spec : Prop :=
  ∀ n, P3274302498428800567.a n = A391701 (n + 1)

theorem P3274302498428800567.correct : P3274302498428800567.Spec := by
  intro n
  simp only [A391701, Nat.add_sub_cancel, A391701.P3274302498428800567.a, A391701.P296484889807869590.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A062354, A062354.P12090896162141185075.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A318519, A318519.P15155889368844815815.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P7902726259890016945.f1, A032741.P7902726259890016945.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A051731, A051731.P11318043630102858095.a, A000007, A000007.P6599383543502402472.a, A048158, A048158.P1757030368331788429.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

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

/-! ## A391703.P1358894033967390947

`lt[A279830(A085308(n+5)), A001611(n)]`
-/

namespace A391703.P1358894033967390947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279830 (A085308 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391703.P1358894033967390947

/-! ## A391703.P12743758566209436357

`lt[A279830(A085308(n+5)), A231897(n)]`
-/

namespace A391703.P12743758566209436357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279830 (A085308 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391703.P12743758566209436357

/-! ## A391703.P9405319368170930651

`lt[A279830(A085308(n+5)), A213917(n+1)]`
-/

namespace A391703.P9405319368170930651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279830 (A085308 (n + 5)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213917 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391703.P9405319368170930651

/-! ## A391703.P889413740090042175

`lt[A309906(A137805(n+1)), A325368(2*n+1)]`
-/

namespace A391703.P889413740090042175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309906 (A137805 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325368 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391703.P889413740090042175

/-!
# A391705: Number of plane partitions of n with 6 parts.

The programs for A391705, there is no canonical definition to state claims against.
-/

/-! ## A391705.P17812055554530647377

`A091298(A167487(n+4)-1)`
-/

namespace A391705.P17812055554530647377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091298 (A167487 (n + 4) - 1).toNat

end

end A391705.P17812055554530647377

/-! ## A391705.P10384843979043850225

`A091298(A222945(n+3)+A167487(n))`
-/

namespace A391705.P10384843979043850225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091298 (A222945 (n + 3) + A167487 n).toNat

end

end A391705.P10384843979043850225

/-!
# A391711: Fibonacci numbers whose indices are even positive numbers with an odd number of prime factors (counted with multiplicity).

The programs for A391711, the canonical program `A391711.P7269243793553933826` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391711 has offset 1).

The definition of A391711 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A046470, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391711.P7269243793553933826

`A000045(A046470(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A391711

/-- `A000045(A046470(n+1))` -/
def P7269243793553933826.Spec : Prop :=
  ∀ n, P7269243793553933826.a n = A391711 (n + 1)

theorem P7269243793553933826.correct : P7269243793553933826.Spec := by
  intro n
  simp only [A391711, Nat.add_sub_cancel]

end A391711

/-! ## A391711.P6448139393000942986

`A001906(lt[(-1)^∑{e}[2*n, #], 0])`
-/

namespace A391711.P6448139393000942986
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A391711.P6448139393000942986

namespace A391711

/-- `A001906(lt[(-1)^∑{e}[2*n, #], 0])` -/
def P6448139393000942986.Spec : Prop :=
  ∀ n, P6448139393000942986.a n = A391711 (n + 1)

end A391711

/-! ## A391711.P9484762497372422050

`A000045(2*lt[(-1)^∑{e}[2*n, #], 0])`
-/

namespace A391711.P9484762497372422050
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A391711.P9484762497372422050

namespace A391711

/-- `A000045(2*lt[(-1)^∑{e}[2*n, #], 0])` -/
def P9484762497372422050.Spec : Prop :=
  ∀ n, P9484762497372422050.a n = A391711 (n + 1)

end A391711

/-! ## A391711.P2231467667404263870

`A001906(record[(n+1)/(-1)^∑{e}[n+1, #]])`
-/

namespace A391711.P2231467667404263870
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A391711.P2231467667404263870

namespace A391711

/-- `A001906(record[(n+1)/(-1)^∑{e}[n+1, #]])` -/
def P2231467667404263870.Spec : Prop :=
  ∀ n, P2231467667404263870.a n = A391711 (n + 1)

end A391711

/-! ## A391711.P4233999238734480176

`record[(-1)^∑{e}[n+1, #]*A000045(2*(n+1))]`
-/

namespace A391711.P4233999238734480176
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p) * A000045 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391711.P4233999238734480176

namespace A391711

/-- `record[(-1)^∑{e}[n+1, #]*A000045(2*(n+1))]` -/
def P4233999238734480176.Spec : Prop :=
  ∀ n, P4233999238734480176.a n = A391711 (n + 1)

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

/-! ## A391711.P16849017554687314110

`A103609(4*A028260(n+1))`
-/

namespace A391711.P16849017554687314110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (4 * A028260 (n + 1)).toNat

end

end A391711.P16849017554687314110

namespace A391711

/-- `A103609(4*A028260(n+1))` -/
def P16849017554687314110.Spec : Prop :=
  ∀ n, P16849017554687314110.a n = A391711 (n + 1)

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

/-! ## A391712.P9840045953502998618

`A000045(2*lt[(-1)^∑{e}[n, #], 0])`
-/

namespace A391712.P9840045953502998618
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n)

end

end A391712.P9840045953502998618

namespace A391712

/-- `A000045(2*lt[(-1)^∑{e}[n, #], 0])` -/
def P9840045953502998618.Spec : Prop :=
  ∀ n, P9840045953502998618.a n = A391712 (n + 1)

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

/-! ## A391712.P806524603786449835

`A001906(A026424(1+n))`
-/

namespace A391712.P806524603786449835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (A026424 (1 + n)).toNat

end

end A391712.P806524603786449835

namespace A391712

/-- `A001906(A026424(1+n))` -/
def P806524603786449835.Spec : Prop :=
  ∀ n, P806524603786449835.a n = A391712 (n + 1)

end A391712

/-! ## A391712.P12111955992644049558

`A088305(A026424(n+1))`
-/

namespace A391712.P12111955992644049558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 (A026424 (n + 1)).toNat

end

end A391712.P12111955992644049558

namespace A391712

/-- `A088305(A026424(n+1))` -/
def P12111955992644049558.Spec : Prop :=
  ∀ n, P12111955992644049558.a n = A391712 (n + 1)

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

The programs for A391713, the canonical program `A391713.P12918001386924230058` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391713 has offset 1).

The definition of A391713 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391713.P12918001386924230058

`A000005(n+1)-A005361(n+1)-2^A001221(n+1)+1`

The canonical program, it is in `Seq.B005.C002`.
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

/-! ## A391713.P3163972584223258970

`A183095(1+n)-A034444(n+1)`
-/

namespace A391713.P3163972584223258970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183095 (1 + n) - A034444 (n + 1)

end

end A391713.P3163972584223258970

namespace A391713

/-- `A183095(1+n)-A034444(n+1)` -/
def P3163972584223258970.Spec : Prop :=
  ∀ n, P3163972584223258970.a n = A391713 (n + 1)

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

The programs for A391716, the canonical program `A391716.P15694509267882792702` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391716 has offset 1).

The definition of A391716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391716.P15694509267882792702

`1+a(A392781(n+1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A391716

/-- `1+a(A392781(n+1)-1)` -/
def P15694509267882792702.Spec : Prop :=
  ∀ n, (P15694509267882792702.a n : ℤ) = A391716 (n + 1)

theorem P15694509267882792702.correct : P15694509267882792702.Spec := by
  intro n
  simp only [A391716, Nat.add_sub_cancel]

end A391716

/-! ## A391716.P8658678641633386362

`A055642(A008600(n)+A005067(n+1))`
-/

namespace A391716.P8658678641633386362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A008600 n + A005067 (n + 1)).toNat

end

end A391716.P8658678641633386362

namespace A391716

/-- `A055642(A008600(n)+A005067(n+1))` -/
def P8658678641633386362.Spec : Prop :=
  ∀ n, P8658678641633386362.a n = A391716 (n + 1)

end A391716

/-! ## A391716.P9218899645193818329

`A055642(A213051(n+1)+A005064(n+1))`
-/

namespace A391716.P9218899645193818329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A213051 (n + 1) + A005064 (n + 1)).toNat

end

end A391716.P9218899645193818329

namespace A391716

/-- `A055642(A213051(n+1)+A005064(n+1))` -/
def P9218899645193818329.Spec : Prop :=
  ∀ n, P9218899645193818329.a n = A391716 (n + 1)

end A391716

/-! ## A391716.P9075302792357892144

`A055642(A224787(n+1)+A019367(n+1))`
-/

namespace A391716.P9075302792357892144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A224787 (n + 1) + A019367 (n + 1)).toNat

end

end A391716.P9075302792357892144

namespace A391716

/-- `A055642(A224787(n+1)+A019367(n+1))` -/
def P9075302792357892144.Spec : Prop :=
  ∀ n, P9075302792357892144.a n = A391716 (n + 1)

end A391716

/-! ## A391716.P17213773523106964736

`A055642(A224787(n+1)+A050384(n+1))`
-/

namespace A391716.P17213773523106964736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A224787 (n + 1) + A050384 (n + 1)).toNat

end

end A391716.P17213773523106964736

namespace A391716

/-- `A055642(A224787(n+1)+A050384(n+1))` -/
def P17213773523106964736.Spec : Prop :=
  ∀ n, P17213773523106964736.a n = A391716 (n + 1)

end A391716

/-!
# A391717: a(n) = (n^(n-1) + n^(n+1) - (n+1)^(n-1) - (n-1)^(n+1))/2.

The programs for A391717, the canonical program `A391717.P14845569280378568371` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391717 has offset 2).

The definition of A391717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391717.P14845569280378568371

`((n+2)^(n+1)+(n+2)^(n+3)-(n+3)^(n+1)-(n+1)^(n+3))/2`

The canonical program, it is in `Seq.B000.C050`.
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

/-! ## A391719.P15826775925019594241

`A022462(A391718(1+n))`
-/

namespace A391719.P15826775925019594241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022462 (A391718 (1 + n)).toNat

end

end A391719.P15826775925019594241

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
# A391720: a(n) is the smallest k for which A243917(k) = n.

The programs for A391720, there is no canonical definition to state claims against.
-/

/-! ## A391720.P14085128002999129114

`fo[A243917(n+1)]+1`
-/

namespace A391720.P14085128002999129114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243917 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (n : ℤ)) 0 + 1

end

end A391720.P14085128002999129114

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

/-! ## A391725.P8233187251629522919

`or(A099375(n), A108731(A221388(n+1)))`
-/

namespace A391725.P8233187251629522919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A099375 n) (A108731 (A221388 (n + 1)).toNat)

end

end A391725.P8233187251629522919

/-! ## A391725.P17357630700069787705

`or(A097031(A075498(n+1)), A099375(n))`
-/

namespace A391725.P17357630700069787705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A097031 (A075498 (n + 1)).toNat) (A099375 n)

end

end A391725.P17357630700069787705

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

/-!
# A391726: Square array read by descending antidiagonals: find the k-th odd number i that satisfies i*n = A048720(i,m) for some m, then A(n, k) = m. Here A048720 is carryless base-2 multiplication.

The programs for A391726, there is no canonical definition to state claims against.
-/

/-! ## A391726.P6703612183778542828

`A393210(A351308(n+1))+col(n)`
-/

namespace A391726.P6703612183778542828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393210 (A351308 (n + 1)).toNat + (SequenceMachineLib.triCol n : ℤ)

end

end A391726.P6703612183778542828

/-! ## A391726.P4698900933635901757

`gcd(A169990(3*n), A001844(n))+col(n)`
-/

namespace A391726.P4698900933635901757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A169990 (3 * n)) (A001844 n) + SequenceMachineLib.triCol n

end

end A391726.P4698900933635901757

/-! ## A391726.P12726020825005233867

`or(col(n)+1, A035195(A356176(3*n+4)))`
-/

namespace A391726.P12726020825005233867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.triCol n + 1 : ℤ) (A035195 (A356176 (3 * n + 4)).toNat)

end

end A391726.P12726020825005233867

/-! ## A391726.P14250322175356066865

`gcd(A007455(n+2), A343930(n+1))+col(n)`
-/

namespace A391726.P14250322175356066865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007455 (n + 2)) (A343930 (n + 1)) + SequenceMachineLib.triCol n

end

end A391726.P14250322175356066865

/-! ## A391726.P11453598469678749788

`A304042(A001629(n))+A025675(n+1)`
-/

namespace A391726.P11453598469678749788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 (A001629 n).toNat + A025675 (n + 1)

end

end A391726.P11453598469678749788

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

/-! ## A391728.P15954646705622173998

`filter[A115873(n+1), A178226(#)]`
-/

namespace A391728.P15954646705622173998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A178226 (f1 j).toNat = 1) n)

end

end A391728.P15954646705622173998

/-!
# A391730: Numbers k such that A115873(k) is not of the form 2^e - 1.

The programs for A391730, there is no canonical definition to state claims against.
-/

/-! ## A391730.P14040305689834887913

`lt[1, A115873(A115873(n+1)+1)]+1`
-/

namespace A391730.P14040305689834887913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115873 (A115873 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391730.P14040305689834887913

/-! ## A391730.P14229841308965188127

`comp[A391732(n+1)-1]+1`
-/

namespace A391730.P14229841308965188127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391732 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A391730.P14229841308965188127

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

/-! ## A391731.P2763778750866989056

`A115873(comp[A391732(n+1)-1]+1)`
-/

namespace A391731.P2763778750866989056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391732 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115873 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A391731.P2763778750866989056

/-! ## A391731.P3627959259764450536

`filter[A115873(n+1), A043545(#)]`
-/

namespace A391731.P3627959259764450536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A391731.P3627959259764450536

/-! ## A391731.P9389749579340196327

`filter[A115873(n+1), A267442(#)]`
-/

namespace A391731.P9389749579340196327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267442 (f1 j).toNat = 1) n)

end

end A391731.P9389749579340196327

/-! ## A391731.P11579161059481386831

`A115872(C(A391730(n+1)+1, 2))`
-/

namespace A391731.P11579161059481386831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115872 (Nat.choose (A391730 (n + 1) + 1).toNat 2)

end

end A391731.P11579161059481386831

/-!
# A391732: Numbers k such that A115873(k) is of the form 2^e - 1.

The programs for A391732, there is no canonical definition to state claims against.
-/

/-! ## A391732.P4616959366820552527

`comp[A391730(n+1)-1]+1`
-/

namespace A391732.P4616959366820552527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391730 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A391732.P4616959366820552527

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

/-! ## A391732.P11786561742436348295

`comp[A400192(3*n+1)+1]`
-/

namespace A391732.P11786561742436348295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400192 (3 * n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A391732.P11786561742436348295

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

/-!
# A391733: Numbers in whose binary expansion there is exactly one run of 1-bits with an odd length, while all other runs of 1-bits are of an even length (or absent).

The programs for A391733, the canonical program `A391733.P1683383338998513801` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391733 has offset 1).

The definition of A391733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391733.P1683383338998513801

`eq[1, A005590(n)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A391733

/-- `eq[1, A005590(n)]` -/
def P1683383338998513801.Spec : Prop :=
  ∀ n, (P1683383338998513801.a n : ℤ) = A391733 (n + 1)

theorem P1683383338998513801.correct : P1683383338998513801.Spec := by
  intro n
  simp only [A391733, Nat.add_sub_cancel]

end A391733

/-! ## A391733.P17850863454347481715

`eq[1, A281048(n)+a(n-1)]` with `a(0)=0`
-/

namespace A391733.P17850863454347481715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A281048 n + f2 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A391733.P17850863454347481715

namespace A391733

/-- `eq[1, A281048(n)+a(n-1)]` -/
def P17850863454347481715.Spec : Prop :=
  ∀ n, (P17850863454347481715.a n : ℤ) = A391733 (n + 1)

end A391733

/-! ## A391733.P6259076327811013257

`filter[A000069(n+1), A005590(#)]`
-/

namespace A391733.P6259076327811013257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005590 (f1 j).toNat = 1) n)

end

end A391733.P6259076327811013257

namespace A391733

/-- `filter[A000069(n+1), A005590(#)]` -/
def P6259076327811013257.Spec : Prop :=
  ∀ n, P6259076327811013257.a n = A391733 (n + 1)

end A391733

/-! ## A391733.P8040545378430994622

`filter[A001651(1+n), A005590(#)]`
-/

namespace A391733.P8040545378430994622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005590 (f1 j).toNat = 1) n)

end

end A391733.P8040545378430994622

namespace A391733

/-- `filter[A001651(1+n), A005590(#)]` -/
def P8040545378430994622.Spec : Prop :=
  ∀ n, P8040545378430994622.a n = A391733 (n + 1)

end A391733

/-! ## A391733.P1822658070608059507

`lt[A047967(A005590(n)²), A005590(n)]`
-/

namespace A391733.P1822658070608059507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047967 (A005590 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391733.P1822658070608059507

namespace A391733

/-- `lt[A047967(A005590(n)²), A005590(n)]` -/
def P1822658070608059507.Spec : Prop :=
  ∀ n, (P1822658070608059507.a n : ℤ) = A391733 (n + 1)

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

/-! ## A391733.P14518893463317089795

`eq[1, A145865(A122155(n))]`
-/

namespace A391733.P14518893463317089795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145865 (A122155 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A391733.P14518893463317089795

namespace A391733

/-- `eq[1, A145865(A122155(n))]` -/
def P14518893463317089795.Spec : Prop :=
  ∀ n, (P14518893463317089795.a n : ℤ) = A391733 (n + 1)

theorem P14518893463317089795.correct : P14518893463317089795.Spec := by
  intro n
  simp only [A391733, Nat.add_sub_cancel, A391733.P14518893463317089795.f1, A391733.P14518893463317089795.f2, A391733.P14518893463317089795.a, A391733.P1683383338998513801.f1, A391733.P1683383338998513801.f2, A391733.P1683383338998513801.a, A005590, A005590.P3379431448846241054.a, A122155, A122155.P17533266698539878574.a, A145865, A145865.P8782213362045829021.f1, A145865.P8782213362045829021.a, A035327, A035327.P258997810375859489.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A391733

/-! ## A391733.P8865404778405522948

`eq[1, A281048(2*(n+1))]`
-/

namespace A391733.P8865404778405522948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281048 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A391733.P8865404778405522948

namespace A391733

/-- `eq[1, A281048(2*(n+1))]` -/
def P8865404778405522948.Spec : Prop :=
  ∀ n, (P8865404778405522948.a n : ℤ) = A391733 (n + 1)

end A391733

/-! ## A391733.P6049883373737415511

`filter[2*(n+1), A005590(#)]/2`
-/

namespace A391733.P6049883373737415511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => A005590 (f1 j) = 1) n) : ℚ) / 2

end

end A391733.P6049883373737415511

namespace A391733

/-- `filter[2*(n+1), A005590(#)]/2` -/
def P6049883373737415511.Spec : Prop :=
  ∀ n, P6049883373737415511.a n = (A391733 (n + 1) : ℚ)

end A391733

/-! ## A391733.P16237658762489728966

`filter[A027656(n), A005590(#)]`
-/

namespace A391733.P16237658762489728966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005590 (f1 j).toNat = 1) n)

end

end A391733.P16237658762489728966

namespace A391733

/-- `filter[A027656(n), A005590(#)]` -/
def P16237658762489728966.Spec : Prop :=
  ∀ n, P16237658762489728966.a n = A391733 (n + 1)

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

/-! ## A391734.P4338001951577173069

`∏[eq[n, ∏{d}[n, #]]]*A079276(n+1)`
-/

namespace A391734.P4338001951577173069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A079276 (n + 1)

end

end A391734.P4338001951577173069

/-! ## A391734.P1929473164709702183

`A079276(n+1)*A121281(∑[n])`
-/

namespace A391734.P1929473164709702183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079276 (n + 1) * A121281 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391734.P1929473164709702183

/-! ## A391734.P2681042219174564964

`record[A096334(n)]*A079276(n+1)`
-/

namespace A391734.P2681042219174564964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A079276 (n + 1)

end

end A391734.P2681042219174564964

/-! ## A391734.P16167726019117432051

`record[A121281(n)]*A079276(n+1)`
-/

namespace A391734.P16167726019117432051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A079276 (n + 1)

end

end A391734.P16167726019117432051

/-! ## A391734.P359998999457572430

`A079276(n+1)*A276085(A000040(n+1))`
-/

namespace A391734.P359998999457572430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079276 (n + 1) * A276085 (A000040 (n + 1)).toNat

end

end A391734.P359998999457572430

/-! ## A391734.P7666148434602455059

`A230849(2*(n+1))*A240673(A000217(n+1))`
-/

namespace A391734.P7666148434602455059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230849 (2 * (n + 1)) * A240673 (A000217 (n + 1)).toNat

end

end A391734.P7666148434602455059

/-!
# A391735: Square array read by descending antidiagonals: A(n, k) is the k-th odd number i such that i divides A048720(n,i), where A048720 is carryless base-2 multiplication.

The programs for A391735, there is no canonical definition to state claims against.
-/

/-! ## A391735.P1873518246494023021

`A034444(A048767(3*n+4))+T(n-1,k)-Δ[row(n)]` with `a(0)=1`
-/

namespace A391735.P1873518246494023021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A034444 (A048767 (3 * n + 4)).toNat + SequenceMachineLib.triUp a n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A391735.P1873518246494023021

/-! ## A391735.P3256580782222873616

`A283431(A202006(n+2))`
-/

namespace A391735.P3256580782222873616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283431 (A202006 (n + 2)).toNat

end

end A391735.P3256580782222873616

/-! ## A391735.P8808829909432811398

`A114003((2^(row(n)-col(n)))^A229243(n))`
-/

namespace A391735.P8808829909432811398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (SequenceMachineLib.roundAway (((2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)) ^ (A229243 n : ℤ))).toNat

end

end A391735.P8808829909432811398

/-! ## A391735.P10110153555039846093

`A201052(A005318(A135227(n))²)`
-/

namespace A391735.P10110153555039846093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201052 (A005318 (A135227 n).toNat ^ 2).toNat

end

end A391735.P10110153555039846093

/-! ## A391735.P14792540458477694440

`A037227(lcm(A077419(n), A156919(n)))`
-/

namespace A391735.P14792540458477694440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037227 (Int.lcm (A077419 n) (A156919 n))

end

end A391735.P14792540458477694440

/-!
# A391736: Square array read by descending antidiagonals: A(n, k) is the value of quotient A048720(n,i)/i for the k-th odd number i which divides A048720(n,i), where A048720 is carryless base-2 multiplication.

The programs for A391736, there is no canonical definition to state claims against.
-/

/-! ## A391736.P16202138070784509880

`A002260(n+1)%A101296(A355852(n+5))`
-/

namespace A391736.P16202138070784509880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1)) (A101296 (A355852 (n + 5)).toNat)

end

end A391736.P16202138070784509880

/-! ## A391736.P1042382622947355874

`A002260(n+1)%A163890(A001538(n))`
-/

namespace A391736.P1042382622947355874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1)) (A163890 (A001538 n).toNat)

end

end A391736.P1042382622947355874

/-! ## A391736.P13982199564187742832

`A071178(A253561(n+2))%A013929(A030737(3*n+5))`
-/

namespace A391736.P13982199564187742832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071178 (A253561 (n + 2)).toNat) (A013929 (A030737 (3 * n + 5)).toNat)

end

end A391736.P13982199564187742832

/-! ## A391736.P2651988189254912384

`A002260(n+1)%A375027(n+1)`
-/

namespace A391736.P2651988189254912384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1)) (A375027 (n + 1))

end

end A391736.P2651988189254912384

/-! ## A391736.P3931525944497561341

`(col(n)+1)%A287961(A232749(2*n+1)+1)`
-/

namespace A391736.P3931525944497561341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.triCol n + 1 : ℤ) (A287961 (A232749 (2 * n + 1) + 1).toNat)

end

end A391736.P3931525944497561341

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

/-! ## A391739.P4503231196938769709

`lt[A332205(lcm(7, n²)), 2]`
-/

namespace A391739.P4503231196938769709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332205 (Nat.lcm 7 (n ^ 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A391739.P4503231196938769709

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

/-! ## A391740.P2632287783058868106

`∪[A048716(1+n), A115770(n+1)]`
-/

namespace A391740.P2632287783058868106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048716 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391740.P2632287783058868106

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

/-! ## A391740.P3335227002963059144

`record[A371442(A391860(n+1))]`
-/

namespace A391740.P3335227002963059144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371442 (A391860 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391740.P3335227002963059144

/-!
# A391741: Odd numbers k such that 5*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391741, there is no canonical definition to state claims against.
-/

/-! ## A391741.P3542121235245870040

`record[lcm(2, A391740(2+n))/2]`
-/

namespace A391741.P3542121235245870040
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A391740 (2 + n)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A391741.P3542121235245870040

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

/-! ## A391741.P9555046825436599379

`eq[char[A391740(n+1)], A089242(3*n+4)]`
-/

namespace A391741.P9555046825436599379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391740 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089242 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A391741.P9555046825436599379

/-! ## A391741.P9299116285965366784

`eq[char[A391740(n+1)], A006519(3*n+2)]`
-/

namespace A391741.P9299116285965366784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391740 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A391741.P9299116285965366784

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

/-! ## A391742.P4749619970911039985

`lt[A184616(A184617(n)²), 2]`
-/

namespace A391742.P4749619970911039985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184616 (A184617 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A391742.P4749619970911039985

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

/-! ## A391743.P4962030423065816271

`∩[2*n+1, A391742(n+1)]`
-/

namespace A391743.P4962030423065816271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391743.P4962030423065816271

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

/-! ## A391743.P6753358969201225221

`A391725(A167614(n+5)+4)`
-/

namespace A391743.P6753358969201225221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391725 (A167614 (n + 5) + 4).toNat

end

end A391743.P6753358969201225221

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

/-! ## A391744.P11081513727577726753

`∪[A115801(1+n), A115845(n+1)]`
-/

namespace A391744.P11081513727577726753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115801 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391744.P11081513727577726753

/-! ## A391744.P1623232552862689673

`∪[A391848(n+1)%A214577(3*(n+1)), A115845(n+1)]`
-/

namespace A391744.P1623232552862689673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391848 (n + 1)) (A214577 (3 * (n + 1)))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391744.P1623232552862689673

/-! ## A391744.P10144457205740937671

`∪[A391850(n+1)%A335485(3*n+2), A391858(n+1)]`
-/

namespace A391744.P10144457205740937671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391850 (n + 1)) (A335485 (3 * n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391858 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391744.P10144457205740937671

/-! ## A391744.P3878452413094509030

`∪[A391854(n+1)%A353848(3*n+1), A391850(n+1)]`
-/

namespace A391744.P3878452413094509030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391854 (n + 1)) (A353848 (3 * n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391744.P3878452413094509030

/-! ## A391744.P16762563040193709733

`∪[A391858(n+1)%A353848(3*n+1), A391850(n+1)]`
-/

namespace A391744.P16762563040193709733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A391858 (n + 1)) (A353848 (3 * n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391850 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A391744.P16762563040193709733

/-!
# A391745: Odd numbers k such that 9*k = A048720(m, k) for some m, where A048720 is carryless base-2 multiplication.

The programs for A391745, there is no canonical definition to state claims against.
-/

/-! ## A391745.P6667554540662845106

`filter[A391744(n+1), #%2]`
-/

namespace A391745.P6667554540662845106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n)

end

end A391745.P6667554540662845106

/-! ## A391745.P1026362595382568905

`A000035(2*(n+2))+∩[2*n+1, A391744(n+1)]`
-/

namespace A391745.P1026362595382568905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391744 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * (n + 2)) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A391745.P1026362595382568905

/-! ## A391745.P9378015521033202002

`∩[2*n+1, A391744(n+1)]*A008833(A005117(n+1))`
-/

namespace A391745.P9378015521033202002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391744 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) * A008833 (A005117 (n + 1)).toNat

end

end A391745.P9378015521033202002

/-! ## A391745.P15965121363447503368

`∩[2*n+1, A391744(n+1)]*A000035(A391725(n+2))`
-/

namespace A391745.P15965121363447503368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391744 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) * A000035 (A391725 (n + 2)).toNat

end

end A391745.P15965121363447503368

/-! ## A391745.P11610804158784414083

`∩[2*n+1, A391744(n+1)]*A000035(A085317(n+1))`
-/

namespace A391745.P11610804158784414083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391744 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) * A000035 (A085317 (n + 1)).toNat

end

end A391745.P11610804158784414083

/-! ## A391745.P13000158543147563585

`filter[A391744(n+2), A257993(#)]`
-/

namespace A391745.P13000158543147563585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391744 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257993 (f1 j).toNat = 1) n)

end

end A391745.P13000158543147563585

/-! ## A391745.P16187155242069942206

`∩[A005843(n)+1, A391744(n+1)]`
-/

namespace A391745.P16187155242069942206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391744 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391745.P16187155242069942206

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

/-! ## A391745.P12962705861920768878

`∩[2*n+1, A391744(n+1)]/A045778(A068229(n+1))`
-/

namespace A391745.P12962705861920768878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391744 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A045778 (A068229 (n + 1)).toNat : ℚ)

end

end A391745.P12962705861920768878

/-! ## A391745.P5154061800463010158

`∩[2*n+1, A391744(n+1)]/A045778(A381606(n))`
-/

namespace A391745.P5154061800463010158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391744 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / (A045778 (A381606 n).toNat : ℚ)

end

end A391745.P5154061800463010158

/-!
# A391746: Number of terms of A391909 <= n.

The programs for A391746, the canonical program `A391746.P1830056031143127677` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391746 has offset 1).

The definition of A391746 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A391747, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A391746.P1830056031143127677

`a(n-1)+A391747(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A391746

/-- `a(n-1)+A391747(n+1)` -/
def P1830056031143127677.Spec : Prop :=
  ∀ n, P1830056031143127677.a n = A391746 (n + 1)

theorem P1830056031143127677.correct : P1830056031143127677.Spec := by
  intro n
  simp only [A391746, Nat.add_sub_cancel]

end A391746

/-! ## A391746.P17977683111020388881

`∑[A391747(1+n)]`
-/

namespace A391746.P17977683111020388881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391747 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391746.P17977683111020388881

namespace A391746

/-- `∑[A391747(1+n)]` -/
def P17977683111020388881.Spec : Prop :=
  ∀ n, P17977683111020388881.a n = A391746 (n + 1)

end A391746

/-! ## A391746.P9968306510991961320

`fp[A391909(n+1)-1]`
-/

namespace A391746.P9968306510991961320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391909 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A391746.P9968306510991961320

namespace A391746

/-- `fp[A391909(n+1)-1]` -/
def P9968306510991961320.Spec : Prop :=
  ∀ n, (P9968306510991961320.a n : ℤ) = A391746 (n + 1)

end A391746

/-! ## A391746.P18357240205652485969

`∑[A036987(A195017(n+1)^2)]`
-/

namespace A391746.P18357240205652485969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A195017 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391746.P18357240205652485969

namespace A391746

/-- `∑[A036987(A195017(n+1)^2)]` -/
def P18357240205652485969.Spec : Prop :=
  ∀ n, P18357240205652485969.a n = A391746 (n + 1)

end A391746

/-! ## A391746.P13765027240429816161

`A000122(∑{p}[A195017(n+1), #])+a(n-1)` with `a(0)=1`
-/

namespace A391746.P13765027240429816161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000122 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p) + a (n - 1)

end

end A391746.P13765027240429816161

namespace A391746

/-- `A000122(∑{p}[A195017(n+1), #])+a(n-1)` -/
def P13765027240429816161.Spec : Prop :=
  ∀ n, P13765027240429816161.a n = A391746 (n + 1)

end A391746

/-! ## A391746.P12862943603816045848

`∑[A194354(A195017(1+n)²)]`
-/

namespace A391746.P12862943603816045848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194354 (A195017 (1 + n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A391746.P12862943603816045848

namespace A391746

/-- `∑[A194354(A195017(1+n)²)]` -/
def P12862943603816045848.Spec : Prop :=
  ∀ n, P12862943603816045848.a n = A391746 (n + 1)

end A391746

/-!
# A391747: a(n) = 1 if -1 <= A195017(n) <= 1, otherwise 0, where A195017(n) = Sum_{k >= 1} c_k*((-1)^(k-1)), when n = Product_{k >= 1} (p_k)^(c_k), with p_k the k-th prime.

The programs for A391747, the canonical program `A391747.P12893955322545124689` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391747 has offset 1).

The definition of A391747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391747.P9700963174506337832

`Δ[fp[A391909(n+1)]]`
-/

namespace A391747.P9700963174506337832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391909 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A391747.P9700963174506337832

namespace A391747

/-- `Δ[fp[A391909(n+1)]]` -/
def P9700963174506337832.Spec : Prop :=
  ∀ n, P9700963174506337832.a n = A391747 (n + 1)

end A391747

/-! ## A391747.P8295588194249812924

`char[fp[A391746(n+1)]]`
-/

namespace A391747.P8295588194249812924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391746 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f2 j) 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A391747.P8295588194249812924

namespace A391747

/-- `char[fp[A391746(n+1)]]` -/
def P8295588194249812924.Spec : Prop :=
  ∀ n, (P8295588194249812924.a n : ℤ) = A391747 (n + 1)

end A391747

/-! ## A391747.P3186490272759253556

`C(n, A195017(n+1)²*n)`
-/

namespace A391747.P3186490272759253556
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A195017 (n + 1) ^ 2 * (n : ℤ)).toNat

end

end A391747.P3186490272759253556

namespace A391747

/-- `C(n, A195017(n+1)²*n)` -/
def P3186490272759253556.Spec : Prop :=
  ∀ n, (P3186490272759253556.a n : ℤ) = A391747 (n + 1)

end A391747

/-! ## A391747.P7224489688643494644

`A036987(A195017(n+1)²)`
-/

namespace A391747.P7224489688643494644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A195017 (n + 1) ^ 2).toNat

end

end A391747.P7224489688643494644

namespace A391747

/-- `A036987(A195017(n+1)²)` -/
def P7224489688643494644.Spec : Prop :=
  ∀ n, P7224489688643494644.a n = A391747 (n + 1)

end A391747

/-! ## A391747.P13923608660452907173

`A036987(A195017(n+1)^2)`
-/

namespace A391747.P13923608660452907173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A195017 (n + 1) ^ 2).toNat

end

end A391747.P13923608660452907173

namespace A391747

/-- `A036987(A195017(n+1)^2)` -/
def P13923608660452907173.Spec : Prop :=
  ∀ n, P13923608660452907173.a n = A391747 (n + 1)

end A391747

/-! ## A391747.P16330135865376083797

`A000122(∑{p}[A195017(n+1), #])`
-/

namespace A391747.P16330135865376083797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A391747.P16330135865376083797

namespace A391747

/-- `A000122(∑{p}[A195017(n+1), #])` -/
def P16330135865376083797.Spec : Prop :=
  ∀ n, P16330135865376083797.a n = A391747 (n + 1)

end A391747

/-! ## A391747.P12893955322545124689

`∏{p}[A195017(n+1), A056674(#)]`

The canonical program, it is in `Seq.B006.C002`.
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

/-! ## A391747.P3417815762545971513

`A194354(A195017(n+1)²)`
-/

namespace A391747.P3417815762545971513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194354 (A195017 (n + 1) ^ 2).toNat

end

end A391747.P3417815762545971513

namespace A391747

/-- `A194354(A195017(n+1)²)` -/
def P3417815762545971513.Spec : Prop :=
  ∀ n, P3417815762545971513.a n = A391747 (n + 1)

end A391747

/-!
# A391750: Maximum length of an increasing sequence, bounded by n, in which the largest prime divisors of the elements form a decreasing sequence.

The programs for A391750, there is no canonical definition to state claims against.
-/

/-! ## A391750.P13393787746002343608

`A254528(A085089(n+2))%A332765(n+2)`
-/

namespace A391750.P13393787746002343608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254528 (A085089 (n + 2)).toNat) (A332765 (n + 2))

end

end A391750.P13393787746002343608

/-! ## A391750.P7460827817905299012

`A254528(A085089(n+2))%A166385(n+1)`
-/

namespace A391750.P7460827817905299012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254528 (A085089 (n + 2)).toNat) (A166385 (n + 1))

end

end A391750.P7460827817905299012

/-! ## A391750.P9284154278669198647

`A000523(lt[A252952(n+1), A226254(3*n)])`
-/

namespace A391750.P9284154278669198647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226254 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A391750.P9284154278669198647

/-! ## A391750.P10290115525464765579

`A077430(A023799(n+2))`
-/

namespace A391750.P10290115525464765579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077430 (A023799 (n + 2)).toNat

end

end A391750.P10290115525464765579

/-! ## A391750.P12348510960511484295

`floor(log(A268574(n+1)+1))`
-/

namespace A391750.P12348510960511484295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A268574 (n + 1) + 1 : ℝ)⌋

end

end A391750.P12348510960511484295

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

/-! ## A391753.P6237571560076340596

`A083888(n+1)*A083912(A006127(n))`
-/

namespace A391753.P6237571560076340596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083888 (n + 1) * A083912 (A006127 n).toNat

end

end A391753.P6237571560076340596

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

/-! ## A391756.P9641002254005137882

`∩[A075090(1+n), A131605(n+1)]`
-/

namespace A391756.P9641002254005137882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391756.P9641002254005137882

/-! ## A391756.P10802275475019761210

`∩[A075090(n+1), A377702(n+1)]`
-/

namespace A391756.P10802275475019761210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391756.P10802275475019761210

/-! ## A391756.P11223222135667498868

`∩[A001597(1+n), A363216(n+1)]`
-/

namespace A391756.P11223222135667498868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391756.P11223222135667498868

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

/-! ## A391756.P17270945950814080867

`∩[A363216(n+1), A377702(n+1)]`
-/

namespace A391756.P17270945950814080867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391756.P17270945950814080867

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

/-! ## A391756.P8476859252196720304

`∩[A377702(n+1), A390010(n+1)]`
-/

namespace A391756.P8476859252196720304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377702 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391756.P8476859252196720304

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

/-! ## A391756.P7373481245251381557

`∩[A075090(n+1), A398375(n+1)]`
-/

namespace A391756.P7373481245251381557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391756.P7373481245251381557

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

/-! ## A391756.P7869904156018770835

`∩[2*n, A377702(n+1)]`
-/

namespace A391756.P7869904156018770835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377702 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A391756.P7869904156018770835

/-!
# A391757: a(n) = Sum_{k=0..floor(n/4)} 2^k * 3^(n-3*k) * binomial(2*(n-3*k),2*k).

The programs for A391757, the canonical program `A391757.P2078055472882295698` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391757 has offset 0).

The definition of A391757 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391757.P2078055472882295698

`ogf((1-3x-6x^4)/(1-6x+9x^2-12x^4-36x^5+36x^8))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391757

/-- `ogf((1-3x-6x^4)/(1-6x+9x^2-12x^4-36x^5+36x^8))` -/
def P2078055472882295698.Spec : Prop :=
  ∀ n, P2078055472882295698.a n = A391757 n

theorem P2078055472882295698.correct : P2078055472882295698.Spec := by
  intro n
  simp only [A391757]

end A391757

/-! ## A391757.P3420203961819040509

`∑{#}[floor(n/4), 2^#*3^(n-3*#)*C(2*(n-3*#), 2*#)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A391757.P3420203961819040509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 4⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (2 ^ k : ℚ) * (3 : ℚ) ^ ((n : ℤ) - (3 * k : ℤ) : ℤ) * (Nat.choose (2 * ((n : ℤ) - (3 * k : ℤ))).toNat (2 * k) : ℚ)

end

end A391757.P3420203961819040509

namespace A391757

/-- `∑{#}[floor(n/4), 2^#*3^(n-3*#)*C(2*(n-3*#), 2*#)]` -/
def P3420203961819040509.Spec : Prop :=
  ∀ n, P3420203961819040509.a n = (A391757 n : ℚ)

end A391757

/-!
# A391758: a(n) = Sum_{k=0..floor(n/4)} (n-3*k+1) * 2^k * 3^(n-3*k) * binomial(2*(n-3*k),2*k).

The programs for A391758, there is no canonical definition to state claims against.
-/

/-! ## A391758.P11575978113213777645

`∑[∑[A126875(n+5)]+1]+n²`
-/

namespace A391758.P11575978113213777645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126875 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n ^ 2 : ℤ)

end

end A391758.P11575978113213777645

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

/-! ## A391760.P6021671909566838315

`A391761(lcm(n, A000367(n)))`
-/

namespace A391760.P6021671909566838315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391761 (Int.lcm (n : ℤ) (A000367 n))

end

end A391760.P6021671909566838315

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

/-! ## A391765.P18316802312576064977

`A003963(A034694(1+n))`
-/

namespace A391765.P18316802312576064977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A034694 (1 + n)).toNat

end

end A391765.P18316802312576064977

/-! ## A391765.P4404167676683219973

`A219109(A034694(1+n)+1)`
-/

namespace A391765.P4404167676683219973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219109 (A034694 (1 + n) + 1).toNat

end

end A391765.P4404167676683219973

/-! ## A391765.P10432750230665662366

`A036234(A034694(n+1)-1)`
-/

namespace A391765.P10432750230665662366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A034694 (n + 1) - 1).toNat

end

end A391765.P10432750230665662366

/-! ## A391765.P17864881456627642620

`A263297(lcm(2, A034694(n+1)))`
-/

namespace A391765.P17864881456627642620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263297 (Int.lcm 2 (A034694 (n + 1)))

end

end A391765.P17864881456627642620

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

/-! ## A391765.P8193030962987390282

`A065770(lcm(2, A034694(n+1)))`
-/

namespace A391765.P8193030962987390282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (Int.lcm 2 (A034694 (n + 1)))

end

end A391765.P8193030962987390282

/-! ## A391765.P11979304598436646404

`A061395(A034694(n+1)^A178334(n+4))`
-/

namespace A391765.P11979304598436646404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (SequenceMachineLib.roundAway ((A034694 (n + 1) : ℚ) ^ (A178334 (n + 4) : ℤ))).toNat

end

end A391765.P11979304598436646404

/-!
# A391766: Number of tetrahedra in the n X n black bishop graph.

The programs for A391766, the canonical program `A391766.P3845170630886982252` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391766 has offset 1).

The definition of A391766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391766.P3845170630886982252

`ogf((x^3+8x^4+4x^5+14x^6+3x^7+2x^8)/(1-2x-3x^2+8x^3+2x^4-12x^5+2x^6+8x^7-3x^8-2x^9+x^10))`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391766

/-- `ogf((x^3+8x^4+4x^5+14x^6+3x^7+2x^8)/(1-2x-3x^2+8x^3+2x^4-12x^5+2x^6+8x^7-3x^8-2x^9+x^10))` -/
def P3845170630886982252.Spec : Prop :=
  ∀ n, P3845170630886982252.a n = A391766 (n + 1)

theorem P3845170630886982252.correct : P3845170630886982252.Spec := by
  intro n
  simp only [A391766, Nat.add_sub_cancel]

end A391766

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

/-! ## A391774.P6014237375783707068

`floor(sqrt(sqrt(A294008(3*(n+2)))))`
-/

namespace A391774.P6014237375783707068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A294008 (3 * (n + 2)) : ℝ))⌋

end

end A391774.P6014237375783707068

/-!
# A391777: Total number of 231 patterns in all heapable permutations of length n.

The programs for A391777, there is no canonical definition to state claims against.
-/

/-! ## A391777.P133796229771474125

`A215504(a(n-1))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`
-/

namespace A391777.P133796229771474125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1] fun n a =>
  A215504 (a (n - 1)).toNat

end

end A391777.P133796229771474125

/-! ## A391777.P17633872675912643364

`A000043(a(n-1))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1, a(5)=11`
-/

namespace A391777.P17633872675912643364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0, 1, 11] fun n a =>
  A000043 (a (n - 1)).toNat

end

end A391777.P17633872675912643364

/-! ## A391777.P14343311237838372169

`A376591(3*a(n-1)+1)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A391777.P14343311237838372169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  A376591 (3 * a (n - 1) + 1).toNat

end

end A391777.P14343311237838372169

/-!
# A391778: a(n) = n*(n-1)*(n- 2)^2*2^(n-4)/3.

The programs for A391778, the canonical program `A391778.P13166623166481535712` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391778 has offset 1).

The definition of A391778 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391778.P13166623166481535712

`(n+1)*n*(n-1)²*2^(n-3)/3`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391778

/-- `(n+1)*n*(n-1)²*2^(n-3)/3` -/
def P13166623166481535712.Spec : Prop :=
  ∀ n, P13166623166481535712.a n = (A391778 (n + 1) : ℚ)

end A391778

/-! ## A391778.P5963792017433454877

`ogf((x^2+6x^3)/(1-10x+40x^2-80x^3+80x^4-32x^5))`
-/

namespace A391778.P5963792017433454877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 6] [1, -10, 40, -80, 80, -32] n

end

end A391778.P5963792017433454877

namespace A391778

/-- `ogf((x^2+6x^3)/(1-10x+40x^2-80x^3+80x^4-32x^5))` -/
def P5963792017433454877.Spec : Prop :=
  ∀ n, P5963792017433454877.a n = A391778 (n + 1)

end A391778

/-! ## A391778.P12902966918554919471

`2^(n-2)*(n-1)*C(n+1, 3)`
-/

namespace A391778.P12902966918554919471
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * ((n : ℤ) - 1 : ℚ) * (Nat.choose (n + 1) 3 : ℚ)

end

end A391778.P12902966918554919471

namespace A391778

/-- `2^(n-2)*(n-1)*C(n+1, 3)` -/
def P12902966918554919471.Spec : Prop :=
  ∀ n, P12902966918554919471.a n = (A391778 (n + 1) : ℚ)

end A391778

/-! ## A391778.P7388289239544616100

`∑[(n²-n)/2]*A139756(n)`
-/

namespace A391778.P7388289239544616100
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A139756 n : ℚ)

end

end A391778.P7388289239544616100

namespace A391778

/-- `∑[(n²-n)/2]*A139756(n)` -/
def P7388289239544616100.Spec : Prop :=
  ∀ n, P7388289239544616100.a n = (A391778 (n + 1) : ℚ)

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
# A391779: a(n) = Sum_{k=0..n} 2^k * 3^(n-k) * binomial(k+6,6) * binomial(2*k,2*(n-k)).

The programs for A391779, the canonical program `A391779.P7812993525150826304` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391779 has offset 0).

The definition of A391779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A391779.P7812993525150826304

`∑{#}[n, 2^#*3^(n-#)*C(#+6, 6)*C(2*#, 2*(n-#))]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A391779

/-- `∑{#}[n, 2^#*3^(n-#)*C(#+6, 6)*C(2*#, 2*(n-#))]` -/
def P7812993525150826304.Spec : Prop :=
  ∀ n, P7812993525150826304.a n = (A391779 n : ℚ)

end A391779

/-!
# A391788: Array read by antidiagonals: A(n,k) = phi(n+k) with k >= 0 and A(0,0) = 0.

The programs for A391788, there is no canonical definition to state claims against.
-/

/-! ## A391788.P1230965822016503651

`A390279(n-col(n))`
-/

namespace A391788.P1230965822016503651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390279 (n - SequenceMachineLib.triCol n)

end

end A391788.P1230965822016503651

/-! ## A391788.P17259865529218452760

`∑{d}[row(n), A007431(#)]`
-/

namespace A391788.P17259865529218452760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d

end

end A391788.P17259865529218452760

/-! ## A391788.P2314624984577294702

`A390279(C(row(n)+1, 2))`
-/

namespace A391788.P2314624984577294702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390279 (Nat.choose (SequenceMachineLib.triRow n + 1) 2)

end

end A391788.P2314624984577294702

/-! ## A391788.P2153459255955528702

`A340995(n+1-col(n))`
-/

namespace A391788.P2153459255955528702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340995 (n + 1 - SequenceMachineLib.triCol n)

end

end A391788.P2153459255955528702

/-! ## A391788.P11014378258740636967

`∑{e}[2^row(n), A293484(#)]`
-/

namespace A391788.P11014378258740636967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.triRow n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A293484 (Nat.factorization (f1 n) p)

end

end A391788.P11014378258740636967

/-! ## A391788.P14288627049597732886

`A177975(C(row(n)+1, 2)+2)`
-/

namespace A391788.P14288627049597732886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177975 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + 2)

end

end A391788.P14288627049597732886

/-! ## A391788.P368056826650689592

`A000010(gcd(row(n)*T(n-1,k-1), row(n)))` with `a(0)=0`
-/

namespace A391788.P368056826650689592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000010 (Int.gcd ((SequenceMachineLib.triRow n : ℤ) * SequenceMachineLib.triUpLeft a n) (SequenceMachineLib.triRow n : ℤ))

end

end A391788.P368056826650689592

/-! ## A391788.P7460967435709176720

`A000010(round(sqrt(row(n)²+1)))%(n+1)`
-/

namespace A391788.P7460967435709176720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.triRow n ^ 2 + 1 : ℝ))).toNat) (n + 1 : ℤ)

end

end A391788.P7460967435709176720

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

/-!
# A391790: a(n) is the permanent of the n-th order Hankel matrix M(n) whose generic element is given by M(i,j) = phi(i+j) with i,j = 0, ..., n-1 and M(0,0) = 0.

The programs for A391790, there is no canonical definition to state claims against.
-/

/-! ## A391790.P13193715602632441377

`A373073(∑[∑[n²]])`
-/

namespace A391790.P13193715602632441377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373073 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A391790.P13193715602632441377

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

The programs for A391793, the canonical program `A391793.P952432281470037196` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391793 has offset 1).

The definition of A391793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391793.P952432281470037196

`∑{d}[n+1, A253206(#)*A307425((n+1)/#)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A391793

/-- `∑{d}[n+1, A253206(#)*A307425((n+1)/#)]` -/
def P952432281470037196.Spec : Prop :=
  ∀ n, P952432281470037196.a n = A391793 (n + 1)

theorem P952432281470037196.correct : P952432281470037196.Spec := by
  intro n
  simp only [A391793, Nat.add_sub_cancel]

end A391793

/-! ## A391793.P7352344038275918353

`A010892(A001359(3*(n+1))*A052409(n+1))`
-/

namespace A391793.P7352344038275918353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A001359 (3 * (n + 1)) * A052409 (n + 1)).toNat

end

end A391793.P7352344038275918353

namespace A391793

/-- `A010892(A001359(3*(n+1))*A052409(n+1))` -/
def P7352344038275918353.Spec : Prop :=
  ∀ n, P7352344038275918353.a n = A391793 (n + 1)

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

/-! ## A391793.P15860590922154669906

`A391502(∏{e}[(1+n)², #+1]^3)`
-/

namespace A391793.P15860590922154669906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (1 + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391502 ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) ^ 3)

end

end A391793.P15860590922154669906

namespace A391793

/-- `A391502(∏{e}[(1+n)², #+1]^3)` -/
def P15860590922154669906.Spec : Prop :=
  ∀ n, P15860590922154669906.a n = A391793 (n + 1)

end A391793

/-!
# A391796: a(n) is the least k such that the residues mod 3 of the primes prime(k), prime(k+1), ... comprise a string of n 2's followed by 1.

The programs for A391796, there is no canonical definition to state claims against.
-/

/-! ## A391796.P9296815669379230032

`A288508(A001405(n))+A247967(n+1)`
-/

namespace A391796.P9296815669379230032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288508 (A001405 n).toNat + A247967 (n + 1)

end

end A391796.P9296815669379230032

/-! ## A391796.P11931043686121799466

`or(A051731(A001599(n+1)), A247967(n+1))`
-/

namespace A391796.P11931043686121799466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051731 (A001599 (n + 1)).toNat) (A247967 (n + 1))

end

end A391796.P11931043686121799466

/-! ## A391796.P3228212363276451527

`A392107(A011782(n+4)-3)`
-/

namespace A391796.P3228212363276451527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392107 (A011782 (n + 4) - 3).toNat

end

end A391796.P3228212363276451527

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

The programs for A391797, the canonical program `A391797.P8977873502925423305` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391797 has offset 1).

The definition of A391797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4493 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391797.P8977873502925423305

`lt[A110854(n+1), 0]+1`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A391797

/-- `lt[A110854(n+1), 0]+1` -/
def P8977873502925423305.Spec : Prop :=
  ∀ n, (P8977873502925423305.a n : ℤ) = A391797 (n + 1)

theorem P8977873502925423305.correct : P8977873502925423305.Spec := by
  intro n
  simp only [A391797, Nat.add_sub_cancel]

end A391797

/-! ## A391797.P6398615190560545699

`A000720(A391800(1+n))`
-/

namespace A391797.P6398615190560545699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A391800 (1 + n)).toNat

end

end A391797.P6398615190560545699

namespace A391797

/-- `A000720(A391800(1+n))` -/
def P6398615190560545699.Spec : Prop :=
  ∀ n, P6398615190560545699.a n = A391797 (n + 1)

end A391797

/-! ## A391797.P11566954512317424136

`lt[A276309(2*n+1), 1]+1`
-/

namespace A391797.P11566954512317424136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276309 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A391797.P11566954512317424136

namespace A391797

/-- `lt[A276309(2*n+1), 1]+1` -/
def P11566954512317424136.Spec : Prop :=
  ∀ n, (P11566954512317424136.a n : ℤ) = A391797 (n + 1)

end A391797

/-! ## A391797.P15101070091655993996

`A056239(A391800(n+1))`
-/

namespace A391797.P15101070091655993996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A391800 (n + 1)).toNat

end

end A391797.P15101070091655993996

namespace A391797

/-- `A056239(A391800(n+1))` -/
def P15101070091655993996.Spec : Prop :=
  ∀ n, P15101070091655993996.a n = A391797 (n + 1)

end A391797

/-! ## A391797.P241359077208482375

`A036234(A391800(n+1)-1)`
-/

namespace A391797.P241359077208482375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A391800 (n + 1) - 1).toNat

end

end A391797.P241359077208482375

namespace A391797

/-- `A036234(A391800(n+1)-1)` -/
def P241359077208482375.Spec : Prop :=
  ∀ n, P241359077208482375.a n = A391797 (n + 1)

end A391797

/-! ## A391797.P16696100423019236888

`A391765(A391800(1+n)-1)`
-/

namespace A391797.P16696100423019236888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391765 (A391800 (1 + n) - 1).toNat

end

end A391797.P16696100423019236888

namespace A391797

/-- `A391765(A391800(1+n)-1)` -/
def P16696100423019236888.Spec : Prop :=
  ∀ n, P16696100423019236888.a n = A391797 (n + 1)

end A391797

/-! ## A391797.P2822161261709349149

`A049084(or(1, A391800(n+1)))`
-/

namespace A391797.P2822161261709349149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.lor 1 (A391800 (n + 1))).toNat

end

end A391797.P2822161261709349149

namespace A391797

/-- `A049084(or(1, A391800(n+1)))` -/
def P2822161261709349149.Spec : Prop :=
  ∀ n, P2822161261709349149.a n = A391797 (n + 1)

end A391797

/-! ## A391797.P13141510059705477903

`A395653(or(1, A391800(n+1)))`
-/

namespace A391797.P13141510059705477903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395653 (Int.lor 1 (A391800 (n + 1))).toNat

end

end A391797.P13141510059705477903

namespace A391797

/-- `A395653(or(1, A391800(n+1)))` -/
def P13141510059705477903.Spec : Prop :=
  ∀ n, P13141510059705477903.a n = A391797 (n + 1)

end A391797

/-! ## A391797.P3968263212004561410

`∑{d}[A391800(n+1), A055396(#)]`
-/

namespace A391797.P3968263212004561410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391800 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055396 d

end

end A391797.P3968263212004561410

namespace A391797

/-- `∑{d}[A391800(n+1), A055396(#)]` -/
def P3968263212004561410.Spec : Prop :=
  ∀ n, P3968263212004561410.a n = A391797 (n + 1)

end A391797

/-! ## A391797.P3485700228342065145

`A003963(A391800(n+1)+A000038(n))`
-/

namespace A391797.P3485700228342065145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A391800 (n + 1) + A000038 n).toNat

end

end A391797.P3485700228342065145

namespace A391797

/-- `A003963(A391800(n+1)+A000038(n))` -/
def P3485700228342065145.Spec : Prop :=
  ∀ n, P3485700228342065145.a n = A391797 (n + 1)

end A391797

/-! ## A391797.P1207242161021921368

`A003963(2*A391800(n+1))`
-/

namespace A391797.P1207242161021921368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * A391800 (n + 1)).toNat

end

end A391797.P1207242161021921368

namespace A391797

/-- `A003963(2*A391800(n+1))` -/
def P1207242161021921368.Spec : Prop :=
  ∀ n, P1207242161021921368.a n = A391797 (n + 1)

end A391797

/-!
# A391798: Numbers k such that prime(2*k + 2) - prime(2*k) = prime(2*k + 1) - prime(2*k - 1).

The programs for A391798, the canonical program `A391798.P17538702185658702091` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391798 has offset 1).

The definition of A391798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 932 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391798.P17538702185658702091

`A000720(A391801(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A391798

/-- `A000720(A391801(n+1))` -/
def P17538702185658702091.Spec : Prop :=
  ∀ n, P17538702185658702091.a n = A391798 (n + 1)

theorem P17538702185658702091.correct : P17538702185658702091.Spec := by
  intro n
  simp only [A391798, Nat.add_sub_cancel]

end A391798

/-! ## A391798.P14613048857450230489

`∏{p}[A391801(n+1), A061395(#)]`
-/

namespace A391798.P14613048857450230489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A061395 p

end

end A391798.P14613048857450230489

namespace A391798

/-- `∏{p}[A391801(n+1), A061395(#)]` -/
def P14613048857450230489.Spec : Prop :=
  ∀ n, P14613048857450230489.a n = A391798 (n + 1)

end A391798

/-! ## A391798.P16736828870025533351

`A061395(A391801(n+1)%A177065(n))`
-/

namespace A391798.P16736828870025533351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A391801 (n + 1)) (A177065 n)).toNat

end

end A391798.P16736828870025533351

namespace A391798

/-- `A061395(A391801(n+1)%A177065(n))` -/
def P16736828870025533351.Spec : Prop :=
  ∀ n, P16736828870025533351.a n = A391798 (n + 1)

end A391798

/-! ## A391798.P1437016659382073144

`A061395(2*A391801(n+1))`
-/

namespace A391798.P1437016659382073144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A391801 (n + 1)).toNat

end

end A391798.P1437016659382073144

namespace A391798

/-- `A061395(2*A391801(n+1))` -/
def P1437016659382073144.Spec : Prop :=
  ∀ n, P1437016659382073144.a n = A391798 (n + 1)

end A391798

/-! ## A391798.P5094889883943699542

`A061395(lcm(2, A391801(n+1)))`
-/

namespace A391798.P5094889883943699542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A391801 (n + 1)))

end

end A391798.P5094889883943699542

namespace A391798

/-- `A061395(lcm(2, A391801(n+1)))` -/
def P5094889883943699542.Spec : Prop :=
  ∀ n, P5094889883943699542.a n = A391798 (n + 1)

end A391798

/-! ## A391798.P14642131624398287096

`A061395(A391801(n+1)+A391801(n+1))`
-/

namespace A391798.P14642131624398287096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A391801 (n + 1) + A391801 (n + 1)).toNat

end

end A391798.P14642131624398287096

namespace A391798

/-- `A061395(A391801(n+1)+A391801(n+1))` -/
def P14642131624398287096.Spec : Prop :=
  ∀ n, P14642131624398287096.a n = A391798 (n + 1)

end A391798

/-! ## A391798.P31147306557583862

`∑{d}[A391801(1+n), A344616(#)]`
-/

namespace A391798.P31147306557583862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391801 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A344616 d

end

end A391798.P31147306557583862

namespace A391798

/-- `∑{d}[A391801(1+n), A344616(#)]` -/
def P31147306557583862.Spec : Prop :=
  ∀ n, P31147306557583862.a n = A391798 (n + 1)

end A391798

/-! ## A391798.P7426933713421326400

`∏{p}[A391801(n+1), A316524(#)]`
-/

namespace A391798.P7426933713421326400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391801 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A316524 p

end

end A391798.P7426933713421326400

namespace A391798

/-- `∏{p}[A391801(n+1), A316524(#)]` -/
def P7426933713421326400.Spec : Prop :=
  ∀ n, P7426933713421326400.a n = A391798 (n + 1)

end A391798

/-! ## A391798.P4745686819393083203

`A316524(A391801(n+1)+A114099(3*n+2))`
-/

namespace A391798.P4745686819393083203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (A391801 (n + 1) + A114099 (3 * n + 2)).toNat

end

end A391798.P4745686819393083203

namespace A391798

/-- `A316524(A391801(n+1)+A114099(3*n+2))` -/
def P4745686819393083203.Spec : Prop :=
  ∀ n, P4745686819393083203.a n = A391798 (n + 1)

end A391798

/-! ## A391798.P9274215624257100119

`A049084(or(1, A391801(n+1)))`
-/

namespace A391798.P9274215624257100119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.lor 1 (A391801 (n + 1))).toNat

end

end A391798.P9274215624257100119

namespace A391798

/-- `A049084(or(1, A391801(n+1)))` -/
def P9274215624257100119.Spec : Prop :=
  ∀ n, P9274215624257100119.a n = A391798 (n + 1)

end A391798

/-!
# A391799: Numbers k such that prime(2*k + 2) - prime(2*k) > prime(2*k + 1) - prime(2*k - 1).

The programs for A391799, the canonical program `A391799.P6194458329291869633` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A391799 has offset 1).

The definition of A391799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4535 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A391799.P6194458329291869633

`lt[0, A110854(n+1)]+1`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A391799

/-- `lt[0, A110854(n+1)]+1` -/
def P6194458329291869633.Spec : Prop :=
  ∀ n, (P6194458329291869633.a n : ℤ) = A391799 (n + 1)

theorem P6194458329291869633.correct : P6194458329291869633.Spec := by
  intro n
  simp only [A391799, Nat.add_sub_cancel]

end A391799

/-! ## A391799.P8798624420649867495

`lt[0, Δ[A001223(2*n+1)]]+1`
-/

namespace A391799.P8798624420649867495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391799.P8798624420649867495

namespace A391799

/-- `lt[0, Δ[A001223(2*n+1)]]+1` -/
def P8798624420649867495.Spec : Prop :=
  ∀ n, (P8798624420649867495.a n : ℤ) = A391799 (n + 1)

end A391799

/-! ## A391799.P13113276732047009846

`lt[A155067(n+1), A155750(n+1)]+1`
-/

namespace A391799.P13113276732047009846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155067 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155750 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A391799.P13113276732047009846

namespace A391799

/-- `lt[A155067(n+1), A155750(n+1)]+1` -/
def P13113276732047009846.Spec : Prop :=
  ∀ n, (P13113276732047009846.a n : ℤ) = A391799 (n + 1)

end A391799

/-! ## A391799.P15821491542977380426

`lt[A078584(A028310(n)), A078584(n+1)]`
-/

namespace A391799.P15821491542977380426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078584 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078584 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A391799.P15821491542977380426

namespace A391799

/-- `lt[A078584(A028310(n)), A078584(n+1)]` -/
def P15821491542977380426.Spec : Prop :=
  ∀ n, (P15821491542977380426.a n : ℤ) = A391799 (n + 1)

end A391799

/-! ## A391799.P10946654391946451621

`A000720(A391802(1+n))`
-/

namespace A391799.P10946654391946451621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A391802 (1 + n)).toNat

end

end A391799.P10946654391946451621

namespace A391799

/-- `A000720(A391802(1+n))` -/
def P10946654391946451621.Spec : Prop :=
  ∀ n, P10946654391946451621.a n = A391799 (n + 1)

end A391799

/-! ## A391799.P15210143073778925826

`A061395(A391802(n+1)+A391802(n+1))`
-/

namespace A391799.P15210143073778925826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A391802 (n + 1) + A391802 (n + 1)).toNat

end

end A391799.P15210143073778925826

namespace A391799

/-- `A061395(A391802(n+1)+A391802(n+1))` -/
def P15210143073778925826.Spec : Prop :=
  ∀ n, P15210143073778925826.a n = A391799 (n + 1)

end A391799

/-! ## A391799.P18270365545813525875

`lt[1, Δ[A054541(2*(n+1))]+1]+1`
-/

namespace A391799.P18270365545813525875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A391799.P18270365545813525875

namespace A391799

/-- `lt[1, Δ[A054541(2*(n+1))]+1]+1` -/
def P18270365545813525875.Spec : Prop :=
  ∀ n, (P18270365545813525875.a n : ℤ) = A391799 (n + 1)

end A391799

/-! ## A391799.P1508926155317100426

`A391765(A391802(n+1)-1)`
-/

namespace A391799.P1508926155317100426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391765 (A391802 (n + 1) - 1).toNat

end

end A391799.P1508926155317100426

namespace A391799

/-- `A391765(A391802(n+1)-1)` -/
def P1508926155317100426.Spec : Prop :=
  ∀ n, P1508926155317100426.a n = A391799 (n + 1)

end A391799

/-! ## A391799.P6090276601457829675

`A055396(A055396(2*(n+1))*A391802(n+1))`
-/

namespace A391799.P6090276601457829675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A055396 (2 * (n + 1)) * A391802 (n + 1)).toNat

end

end A391799.P6090276601457829675

namespace A391799

/-- `A055396(A055396(2*(n+1))*A391802(n+1))` -/
def P6090276601457829675.Spec : Prop :=
  ∀ n, P6090276601457829675.a n = A391799 (n + 1)

end A391799

