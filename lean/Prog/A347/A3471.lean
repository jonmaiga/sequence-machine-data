import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B007.C000
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
# A347100: a(n) = phi(A003961(n)) - phi(n), where A003961 is the prime shift towards larger primes, and phi is Euler totient function.

The programs for A347100, the canonical program `A347100.P3607054361798720330` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347100 has offset 1).

The definition of A347100 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A003961, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347100.P12517569766001836892

`A337549(n+1)+A051953(n+1)`
-/

namespace A347100.P12517569766001836892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337549 (n + 1) + A051953 (n + 1)

end

end A347100.P12517569766001836892

namespace A347100

/-- `A337549(n+1)+A051953(n+1)` -/
def P12517569766001836892.Spec : Prop :=
  ∀ n, P12517569766001836892.a n = A347100 (n + 1)

theorem P12517569766001836892.correct : P12517569766001836892.Spec := by
  intro n
  simp only [A347100, Nat.add_sub_cancel, A347100.P12517569766001836892.a, A347100.P3607054361798720330.a, A000010, A000010.P4673923239450215316.a, A003961, A003961.P5996473960037614004.a, A051953, A051953.P11179276897610979764.a, A337549, A337549.P3151164375738502961.a, A003557, A003557.P6364735403900941810.a, A003972, A003972.P2423200350467876597.a, A173557, A173557.P15666735857375843373.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A252749, A252749.P15054942815197957636.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A347100

/-! ## A347100.P1922230023994942330

`A003972(n+1)-A000010(n+1)`
-/

namespace A347100.P1922230023994942330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (n + 1) - A000010 (n + 1)

end

end A347100.P1922230023994942330

namespace A347100

/-- `A003972(n+1)-A000010(n+1)` -/
def P1922230023994942330.Spec : Prop :=
  ∀ n, P1922230023994942330.a n = A347100 (n + 1)

end A347100

/-! ## A347100.P3607054361798720330

`A000010(A003961(n+1))-A000010(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A347100

/-- `A000010(A003961(n+1))-A000010(n+1)` -/
def P3607054361798720330.Spec : Prop :=
  ∀ n, P3607054361798720330.a n = A347100 (n + 1)

theorem P3607054361798720330.correct : P3607054361798720330.Spec := by
  intro n
  simp only [A347100, Nat.add_sub_cancel]

end A347100

/-! ## A347100.P16751908742959641029

`A003972(n+1)-Δ[A005728(n)]`
-/

namespace A347100.P16751908742959641029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (n + 1) - (f1 (n + 1) - f1 n)

end

end A347100.P16751908742959641029

namespace A347100

/-- `A003972(n+1)-Δ[A005728(n)]` -/
def P16751908742959641029.Spec : Prop :=
  ∀ n, P16751908742959641029.a n = A347100 (n + 1)

end A347100

/-! ## A347100.P5114326328559145272

`A349754(n+1)+A000010(n+1)`
-/

namespace A347100.P5114326328559145272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349754 (n + 1) + A000010 (n + 1)

end

end A347100.P5114326328559145272

namespace A347100

/-- `A349754(n+1)+A000010(n+1)` -/
def P5114326328559145272.Spec : Prop :=
  ∀ n, P5114326328559145272.a n = A347100 (n + 1)

theorem P5114326328559145272.correct : P5114326328559145272.Spec := by
  intro n
  simp only [A347100, Nat.add_sub_cancel, A347100.P5114326328559145272.a, A347100.P3607054361798720330.a, A000010, A000010.P4673923239450215316.a, A003961, A003961.P5996473960037614004.a, A349754, A349754.P17371990951714144222.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A252749, A252749.P15054942815197957636.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A347100

/-! ## A347100.P3650271639549986443

`A053158(n+1)-A377985(n+1)`
-/

namespace A347100.P3650271639549986443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053158 (n + 1) - A377985 (n + 1)

end

end A347100.P3650271639549986443

namespace A347100

/-- `A053158(n+1)-A377985(n+1)` -/
def P3650271639549986443.Spec : Prop :=
  ∀ n, P3650271639549986443.a n = A347100 (n + 1)

theorem P3650271639549986443.correct : P3650271639549986443.Spec := by
  intro n
  simp only [A347100, Nat.add_sub_cancel, A347100.P3650271639549986443.a, A347100.P3607054361798720330.a, A000010, A000010.P4673923239450215316.a, A003961, A003961.P5996473960037614004.a, A053158, A053158.P11533641159092355549.a, A377985, A377985.P6249672595049724567.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A252749, A252749.P15054942815197957636.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A347100

/-! ## A347100.P4404925121126412940

`A003972(n+1)+1-A039649(n+1)`
-/

namespace A347100.P4404925121126412940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (n + 1) + (1 - A039649 (n + 1))

end

end A347100.P4404925121126412940

namespace A347100

/-- `A003972(n+1)+1-A039649(n+1)` -/
def P4404925121126412940.Spec : Prop :=
  ∀ n, P4404925121126412940.a n = A347100 (n + 1)

theorem P4404925121126412940.correct : P4404925121126412940.Spec := by
  intro n
  simp only [A347100, Nat.add_sub_cancel, A347100.P4404925121126412940.a, A347100.P3607054361798720330.a, A000010, A000010.P4673923239450215316.a, A003961, A003961.P5996473960037614004.a, A003972, A003972.P2423200350467876597.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A252749, A252749.P15054942815197957636.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A347100

/-! ## A347100.P2271137042917346143

`(A349754(n+1)+A003972(n+1))/2`
-/

namespace A347100.P2271137042917346143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349754 (n + 1) + A003972 (n + 1) : ℚ) / 2

end

end A347100.P2271137042917346143

namespace A347100

/-- `(A349754(n+1)+A003972(n+1))/2` -/
def P2271137042917346143.Spec : Prop :=
  ∀ n, P2271137042917346143.a n = (A347100 (n + 1) : ℚ)

theorem P2271137042917346143.correct : P2271137042917346143.Spec := by
  intro n
  simp only [A347100, Nat.add_sub_cancel, A347100.P2271137042917346143.a, A347100.P3607054361798720330.a, A000010, A000010.P4673923239450215316.a, A003961, A003961.P5996473960037614004.a, A003972, A003972.P2423200350467876597.a, A349754, A349754.P17371990951714144222.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A252749, A252749.P15054942815197957636.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A347100

/-! ## A347100.P9746123856970420196

`∑{d}[n+1, A007427(#)*A336852((n+1)/#)]`
-/

namespace A347100.P9746123856970420196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A336852 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347100.P9746123856970420196

namespace A347100

/-- `∑{d}[n+1, A007427(#)*A336852((n+1)/#)]` -/
def P9746123856970420196.Spec : Prop :=
  ∀ n, P9746123856970420196.a n = A347100 (n + 1)

end A347100

/-! ## A347100.P17681573476218057781

`∑{d}[n+1, A008683(#)*A336853((n+1)/#)]`
-/

namespace A347100.P17681573476218057781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A336853 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347100.P17681573476218057781

namespace A347100

/-- `∑{d}[n+1, A008683(#)*A336853((n+1)/#)]` -/
def P17681573476218057781.Spec : Prop :=
  ∀ n, P17681573476218057781.a n = A347100 (n + 1)

end A347100

/-! ## A347100.P13724160076814302926

`A002088(n+1)+A349754(n+1)-A002088(n)`
-/

namespace A347100.P13724160076814302926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) + (A349754 (n + 1) - A002088 n)

end

end A347100.P13724160076814302926

namespace A347100

/-- `A002088(n+1)+A349754(n+1)-A002088(n)` -/
def P13724160076814302926.Spec : Prop :=
  ∀ n, P13724160076814302926.a n = A347100 (n + 1)

end A347100

/-! ## A347100.P6170889949074521364

`A005728(n+1)+A349754(n+1)-A005728(n)`
-/

namespace A347100.P6170889949074521364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 1) + (A349754 (n + 1) - A005728 n)

end

end A347100.P6170889949074521364

namespace A347100

/-- `A005728(n+1)+A349754(n+1)-A005728(n)` -/
def P6170889949074521364.Spec : Prop :=
  ∀ n, P6170889949074521364.a n = A347100 (n + 1)

end A347100

/-! ## A347100.P7677585640091250181

`A061498(n+1)+A349754(n+1)+A076363(n+1)`
-/

namespace A347100.P7677585640091250181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061498 (n + 1) + (A349754 (n + 1) + A076363 (n + 1))

end

end A347100.P7677585640091250181

namespace A347100

/-- `A061498(n+1)+A349754(n+1)+A076363(n+1)` -/
def P7677585640091250181.Spec : Prop :=
  ∀ n, P7677585640091250181.a n = A347100 (n + 1)

end A347100

/-! ## A347100.P5465928482797780323

`A000040(n+1)+A349754(n+1)-A104192(n+1)`
-/

namespace A347100.P5465928482797780323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A349754 (n + 1) - A104192 (n + 1))

end

end A347100.P5465928482797780323

namespace A347100

/-- `A000040(n+1)+A349754(n+1)-A104192(n+1)` -/
def P5465928482797780323.Spec : Prop :=
  ∀ n, P5465928482797780323.a n = A347100 (n + 1)

theorem P5465928482797780323.correct : P5465928482797780323.Spec := by
  intro n
  simp only [A347100, Nat.add_sub_cancel, A347100.P5465928482797780323.a, A347100.P3607054361798720330.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A003961, A003961.P5996473960037614004.a, A104192, A104192.P13256349872724568781.a, A349754, A349754.P17371990951714144222.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A252749, A252749.P15054942815197957636.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A347100

/-! ## A347100.P4852491644930489213

`A003972(n+1)-A063994(n+1)*A247074(n+1)`
-/

namespace A347100.P4852491644930489213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003972 (n + 1) - A063994 (n + 1) * A247074 (n + 1)

end

end A347100.P4852491644930489213

namespace A347100

/-- `A003972(n+1)-A063994(n+1)*A247074(n+1)` -/
def P4852491644930489213.Spec : Prop :=
  ∀ n, P4852491644930489213.a n = A347100 (n + 1)

end A347100

/-! ## A347100.P14854711312298176790

`A340071(n+1)*A340072(n+1)-A000010(n+1)`
-/

namespace A347100.P14854711312298176790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340071 (n + 1) * A340072 (n + 1) - A000010 (n + 1)

end

end A347100.P14854711312298176790

namespace A347100

/-- `A340071(n+1)*A340072(n+1)-A000010(n+1)` -/
def P14854711312298176790.Spec : Prop :=
  ∀ n, P14854711312298176790.a n = A347100 (n + 1)

end A347100

/-! ## A347100.P11807908472751144016

`A349754(n+1)+A067541(2*n+1)`
-/

namespace A347100.P11807908472751144016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349754 (n + 1) + A067541 (2 * n + 1)

end

end A347100.P11807908472751144016

namespace A347100

/-- `A349754(n+1)+A067541(2*n+1)` -/
def P11807908472751144016.Spec : Prop :=
  ∀ n, P11807908472751144016.a n = A347100 (n + 1)

end A347100

/-! ## A347100.P6261213872667133593

`A046144(n+1)+A349754(n+1)+A345674(n+1)`
-/

namespace A347100.P6261213872667133593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046144 (n + 1) + (A349754 (n + 1) + A345674 (n + 1))

end

end A347100.P6261213872667133593

namespace A347100

/-- `A046144(n+1)+A349754(n+1)+A345674(n+1)` -/
def P6261213872667133593.Spec : Prop :=
  ∀ n, P6261213872667133593.a n = A347100 (n + 1)

theorem P6261213872667133593.correct : P6261213872667133593.Spec := by
  intro n
  simp only [A347100, Nat.add_sub_cancel, A347100.P6261213872667133593.a, A347100.P3607054361798720330.a, A000010, A000010.P4673923239450215316.a, A003961, A003961.P5996473960037614004.a, A046144, A046144.P10723392011678918045.a, A345674, A345674.P823125279381487032.a, A349754, A349754.P17371990951714144222.a, A003557, A003557.P6364735403900941810.a, A046072, A046072.P3486266862875082890.f1, A046072.P3486266862875082890.a, A173557, A173557.P15666735857375843373.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A060594, A060594.P2818484457649056228.f1, A060594.P2818484457649056228.a, A252749, A252749.P15054942815197957636.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A114643, A114643.P3385208476335884825.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A347100

/-! ## A347100.P4169439411231741055

`A000010(A003961(n+1))-Δ[A002088(n)]`
-/

namespace A347100.P4169439411231741055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003961 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A347100.P4169439411231741055

namespace A347100

/-- `A000010(A003961(n+1))-Δ[A002088(n)]` -/
def P4169439411231741055.Spec : Prop :=
  ∀ n, P4169439411231741055.a n = A347100 (n + 1)

end A347100

/-! ## A347100.P11483095817454658692

`A000010(A003961(n+1))-Δ[A005728(n)]`
-/

namespace A347100.P11483095817454658692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A003961 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A347100.P11483095817454658692

namespace A347100

/-- `A000010(A003961(n+1))-Δ[A005728(n)]` -/
def P11483095817454658692.Spec : Prop :=
  ∀ n, P11483095817454658692.a n = A347100 (n + 1)

end A347100

/-!
# A347101: Fully multiplicative with a(prime(k)) = A001223(k), where A001223 gives the distance from the k-th prime to the (k+1)-th prime.

The programs for A347101, the canonical program `A347101.P16544199152805482784` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347101 has offset 1).

The definition of A347101 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347101.P16544199152805482784

`∏{d}[n+1, A013632(A014963(#))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A347101

/-- `∏{d}[n+1, A013632(A014963(#))]` -/
def P16544199152805482784.Spec : Prop :=
  ∀ n, P16544199152805482784.a n = A347101 (n + 1)

theorem P16544199152805482784.correct : P16544199152805482784.Spec := by
  intro n
  simp only [A347101, Nat.add_sub_cancel]

end A347101

/-! ## A347101.P3458610956262068708

`∏{d}[A131738(n), A349387(A014963(#))]`
-/

namespace A347101.P3458610956262068708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A349387 (A014963 d).toNat

end

end A347101.P3458610956262068708

namespace A347101

/-- `∏{d}[A131738(n), A349387(A014963(#))]` -/
def P3458610956262068708.Spec : Prop :=
  ∀ n, P3458610956262068708.a n = A347101 (n + 1)

end A347101

/-! ## A347101.P10356844526648542017

`∏{d}[A298473(n+1), A349387(A014963(#))]`
-/

namespace A347101.P10356844526648542017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A349387 (A014963 d).toNat

end

end A347101.P10356844526648542017

namespace A347101

/-- `∏{d}[A298473(n+1), A349387(A014963(#))]` -/
def P10356844526648542017.Spec : Prop :=
  ∀ n, P10356844526648542017.a n = A347101 (n + 1)

end A347101

/-! ## A347101.P983182817229833514

`∏{e}[A181821(n+1), A001223(#)]`
-/

namespace A347101.P983182817229833514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001223 (Nat.factorization (f1 n).natAbs p)

end

end A347101.P983182817229833514

namespace A347101

/-- `∏{e}[A181821(n+1), A001223(#)]` -/
def P983182817229833514.Spec : Prop :=
  ∀ n, P983182817229833514.a n = A347101 (n + 1)

end A347101

/-! ## A347101.P16781335404845922836

`∏{e}[A181821(n+1), A075526(#)]`
-/

namespace A347101.P16781335404845922836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A075526 (Nat.factorization (f1 n).natAbs p)

end

end A347101.P16781335404845922836

namespace A347101

/-- `∏{e}[A181821(n+1), A075526(#)]` -/
def P16781335404845922836.Spec : Prop :=
  ∀ n, P16781335404845922836.a n = A347101 (n + 1)

end A347101

/-! ## A347101.P14340423709583658152

`A003958(A347123(n+1)%A112055(n+1))`
-/

namespace A347101.P14340423709583658152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (Int.tmod (A347123 (n + 1)) (A112055 (n + 1))).toNat

end

end A347101.P14340423709583658152

namespace A347101

/-- `A003958(A347123(n+1)%A112055(n+1))` -/
def P14340423709583658152.Spec : Prop :=
  ∀ n, P14340423709583658152.a n = A347101 (n + 1)

end A347101

/-!
# A347102: Totally additive with a(prime(k)) = A001223(k), where A001223 gives the distance from the k-th prime to the next larger prime.

The programs for A347102, the canonical program `A347102.P1098781808414285661` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347102 has offset 1).

The definition of A347102 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A003961, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347102.P15516374556637298969

`A007814(n+1)+2*A056239(A064989(A347123(n+1)))`
-/

namespace A347102.P15516374556637298969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + 2 * A056239 (A064989 (A347123 (n + 1)).toNat).toNat

end

end A347102.P15516374556637298969

namespace A347102

/-- `A007814(n+1)+2*A056239(A064989(A347123(n+1)))` -/
def P15516374556637298969.Spec : Prop :=
  ∀ n, P15516374556637298969.a n = A347102 (n + 1)

end A347102

/-! ## A347102.P1098781808414285661

`A001414(A003961(n+1))-A001414(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A347102

/-- `A001414(A003961(n+1))-A001414(n+1)` -/
def P1098781808414285661.Spec : Prop :=
  ∀ n, P1098781808414285661.a n = A347102 (n + 1)

theorem P1098781808414285661.correct : P1098781808414285661.Spec := by
  intro n
  simp only [A347102, Nat.add_sub_cancel]

end A347102

/-! ## A347102.P3451697046496686103

`∑{d}[n+1, A336853(A014963(#))]`
-/

namespace A347102.P3451697046496686103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A336853 (A014963 d).toNat

end

end A347102.P3451697046496686103

namespace A347102

/-- `∑{d}[n+1, A336853(A014963(#))]` -/
def P3451697046496686103.Spec : Prop :=
  ∀ n, P3451697046496686103.a n = A347102 (n + 1)

end A347102

/-! ## A347102.P4687115998561144058

`A001414(A003961(n+1))-Δ[A025281(n)]`
-/

namespace A347102.P4687115998561144058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A003961 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A347102.P4687115998561144058

namespace A347102

/-- `A001414(A003961(n+1))-Δ[A025281(n)]` -/
def P4687115998561144058.Spec : Prop :=
  ∀ n, P4687115998561144058.a n = A347102 (n + 1)

end A347102

/-! ## A347102.P4067687463327866822

`A001414(A253885(n)+1)-A001414(n+1)`
-/

namespace A347102.P4067687463327866822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A253885 n + 1).toNat - A001414 (n + 1)

end

end A347102.P4067687463327866822

namespace A347102

/-- `A001414(A253885(n)+1)-A001414(n+1)` -/
def P4067687463327866822.Spec : Prop :=
  ∀ n, P4067687463327866822.a n = A347102 (n + 1)

end A347102

/-! ## A347102.P3277749015655576773

`A036288(A003961(n+1))-A036288(n+1)`
-/

namespace A347102.P3277749015655576773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (A003961 (n + 1)).toNat - A036288 (n + 1)

end

end A347102.P3277749015655576773

namespace A347102

/-- `A036288(A003961(n+1))-A036288(n+1)` -/
def P3277749015655576773.Spec : Prop :=
  ∀ n, P3277749015655576773.a n = A347102 (n + 1)

theorem P3277749015655576773.correct : P3277749015655576773.Spec := by
  intro n
  simp only [A347102, Nat.add_sub_cancel, A347102.P3277749015655576773.a, A347102.P1098781808414285661.a, A001414, A001414.P8293929508439252105.f1, A001414.P8293929508439252105.a, A003961, A003961.P5996473960037614004.a, A036288, A036288.P5869837535348566754.f1, A036288.P5869837535348566754.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A252749, A252749.P15054942815197957636.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347102

/-! ## A347102.P18035856178431220087

`A036288(A045965(n+1))%A036288(n+1)`
-/

namespace A347102.P18035856178431220087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036288 (A045965 (n + 1)).toNat) (A036288 (n + 1))

end

end A347102.P18035856178431220087

namespace A347102

/-- `A036288(A045965(n+1))%A036288(n+1)` -/
def P18035856178431220087.Spec : Prop :=
  ∀ n, P18035856178431220087.a n = A347102 (n + 1)

end A347102

/-! ## A347102.P16618233835876248933

`∑{d}[n+1, A014963(A003961(#))%A014963(#)]`
-/

namespace A347102.P16618233835876248933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A014963 (A003961 d).toNat) (A014963 d)

end

end A347102.P16618233835876248933

namespace A347102

/-- `∑{d}[n+1, A014963(A003961(#))%A014963(#)]` -/
def P16618233835876248933.Spec : Prop :=
  ∀ n, P16618233835876248933.a n = A347102 (n + 1)

end A347102

/-! ## A347102.P9732825408533842946

`A001414(A004442(A253885(n)))-A001414(n+1)`
-/

namespace A347102.P9732825408533842946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A004442 (A253885 n).toNat).toNat - A001414 (n + 1)

end

end A347102.P9732825408533842946

namespace A347102

/-- `A001414(A004442(A253885(n)))-A001414(n+1)` -/
def P9732825408533842946.Spec : Prop :=
  ∀ n, P9732825408533842946.a n = A347102 (n + 1)

end A347102

/-!
# A347103: G.f.: Sum_{k>=1} k * x^prime(k) / (1 + x^prime(k)).

The programs for A347103, the canonical program `A347103.P14813398538784636058` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347103 has offset 1).

The definition of A347103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347103.P14813398538784636058

`∑{d}[n+1, A033999(#-1)*A049084((n+1)/#)]`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A347103

/-- `∑{d}[n+1, A033999(#-1)*A049084((n+1)/#)]` -/
def P14813398538784636058.Spec : Prop :=
  ∀ n, P14813398538784636058.a n = A347103 (n + 1)

theorem P14813398538784636058.correct : P14813398538784636058.Spec := by
  intro n
  simp only [A347103, Nat.add_sub_cancel]

end A347103

/-!
# A347104: Dirichlet g.f.: primezeta(s-1) * zeta(s-1) / zeta(s).

The programs for A347104, the canonical program `A347104.P489848652422214647` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347104 has offset 1).

The definition of A347104 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347104.P489848652422214647

`∑{d}[n+1, #*A137851((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A347104

/-- `∑{d}[n+1, #*A137851((n+1)/#)]` -/
def P489848652422214647.Spec : Prop :=
  ∀ n, P489848652422214647.a n = A347104 (n + 1)

theorem P489848652422214647.correct : P489848652422214647.Spec := by
  intro n
  simp only [A347104, Nat.add_sub_cancel]

end A347104

/-! ## A347104.P12046256775046971064

`∑{p}[n+1, #*A000010((n+1)/#)]`
-/

namespace A347104.P12046256775046971064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), (p : ℤ) * A000010 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A347104.P12046256775046971064

namespace A347104

/-- `∑{p}[n+1, #*A000010((n+1)/#)]` -/
def P12046256775046971064.Spec : Prop :=
  ∀ n, P12046256775046971064.a n = A347104 (n + 1)

end A347104

/-! ## A347104.P4391927768821401817

`∑{d}[n+1, A007431(#)*A008472((n+1)/#)]`
-/

namespace A347104.P4391927768821401817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A008472 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347104.P4391927768821401817

namespace A347104

/-- `∑{d}[n+1, A007431(#)*A008472((n+1)/#)]` -/
def P4391927768821401817.Spec : Prop :=
  ∀ n, P4391927768821401817.a n = A347104 (n + 1)

end A347104

/-! ## A347104.P2057566252562442065

`∑{d}[n+1, A000010(#)*A061397((n+1)/#)]`
-/

namespace A347104.P2057566252562442065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A061397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347104.P2057566252562442065

namespace A347104

/-- `∑{d}[n+1, A000010(#)*A061397((n+1)/#)]` -/
def P2057566252562442065.Spec : Prop :=
  ∀ n, P2057566252562442065.a n = A347104 (n + 1)

end A347104

/-! ## A347104.P2241176703200584185

`∑{d}[n+1, A007432(#)*A319131((n+1)/#)]`
-/

namespace A347104.P2241176703200584185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A319131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347104.P2241176703200584185

namespace A347104

/-- `∑{d}[n+1, A007432(#)*A319131((n+1)/#)]` -/
def P2241176703200584185.Spec : Prop :=
  ∀ n, P2241176703200584185.a n = A347104 (n + 1)

end A347104

/-! ## A347104.P15587548974545225103

`∑{d}[n+1, A007427(#)*A329354((n+1)/#)]`
-/

namespace A347104.P15587548974545225103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A329354 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347104.P15587548974545225103

namespace A347104

/-- `∑{d}[n+1, A007427(#)*A329354((n+1)/#)]` -/
def P15587548974545225103.Spec : Prop :=
  ∀ n, P15587548974545225103.a n = A347104 (n + 1)

end A347104

/-! ## A347104.P7257116261954606083

`∑{d}[n+1, A008683(#)*A328260((n+1)/#)]`
-/

namespace A347104.P7257116261954606083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A328260 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347104.P7257116261954606083

namespace A347104

/-- `∑{d}[n+1, A008683(#)*A328260((n+1)/#)]` -/
def P7257116261954606083.Spec : Prop :=
  ∀ n, P7257116261954606083.a n = A347104 (n + 1)

end A347104

/-! ## A347104.P10848781335286289184

`A010051(n+1)+A018804(n+1)-A385313(n+1)`
-/

namespace A347104.P10848781335286289184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) + (A018804 (n + 1) - A385313 (n + 1))

end

end A347104.P10848781335286289184

namespace A347104

/-- `A010051(n+1)+A018804(n+1)-A385313(n+1)` -/
def P10848781335286289184.Spec : Prop :=
  ∀ n, P10848781335286289184.a n = A347104 (n + 1)

end A347104

/-!
# A347106: Number of derangements of [n] having an even number of 2-cycles.

The programs for A347106, there is no canonical definition to state claims against.
-/

/-! ## A347106.P17694238758355618085

`A000166(n)-A248087(n)`
-/

namespace A347106.P17694238758355618085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A248087 n

end

end A347106.P17694238758355618085

/-! ## A347106.P17465308256909007325

`abs(A182386(n))-A248087(n)`
-/

namespace A347106.P17465308256909007325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182386 n| - A248087 n

end

end A347106.P17465308256909007325

/-! ## A347106.P14495617250161542098

`A008290(∑[n])-A248087(n)`
-/

namespace A347106.P14495617250161542098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (∑ j ∈ Finset.range (n + 1), f1 j) - A248087 n

end

end A347106.P14495617250161542098

/-! ## A347106.P17201359016055647290

`A086764(A000217(n))-A248087(n)`
-/

namespace A347106.P17201359016055647290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086764 (A000217 n).toNat - A248087 n

end

end A347106.P17201359016055647290

/-! ## A347106.P12966515233846010848

`A156984(∑[n])-A248087(n)`
-/

namespace A347106.P12966515233846010848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156984 (∑ j ∈ Finset.range (n + 1), f1 j) - A248087 n

end

end A347106.P12966515233846010848

/-!
# A347107: a(n) = Sum_{1 <= i < j <= n} j^3*i^3.

The programs for A347107, the canonical program `A347107.P4819977070868740848` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347107 has offset 0).

The definition of A347107 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347107.P4819977070868740848

`∑[C(n, 2)²*n^3]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A347107

/-- `∑[C(n, 2)²*n^3]` -/
def P4819977070868740848.Spec : Prop :=
  ∀ n, (P4819977070868740848.a n : ℤ) = A347107 n

theorem P4819977070868740848.correct : P4819977070868740848.Spec := by
  intro n
  simp only [A347107]

end A347107

/-! ## A347107.P6050124665354961045

`∑[n*(n*C(n, 2))²]`
-/

namespace A347107.P6050124665354961045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n * Nat.choose n 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347107.P6050124665354961045

namespace A347107

/-- `∑[n*(n*C(n, 2))²]` -/
def P6050124665354961045.Spec : Prop :=
  ∀ n, (P6050124665354961045.a n : ℤ) = A347107 n

theorem P6050124665354961045.correct : P6050124665354961045.Spec := by
  intro n
  simp only [A347107, Nat.add_sub_cancel, A347107.P6050124665354961045.f1, A347107.P6050124665354961045.a, A347107.P4819977070868740848.f1, A347107.P4819977070868740848.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A347107

/-! ## A347107.P16126359698731839746

`∑[(n-∑[n])²*n^3]`
-/

namespace A347107.P16126359698731839746
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)) ^ 2 * (n ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347107.P16126359698731839746

namespace A347107

/-- `∑[(n-∑[n])²*n^3]` -/
def P16126359698731839746.Spec : Prop :=
  ∀ n, P16126359698731839746.a n = A347107 n

end A347107

/-! ## A347107.P14321022658090860365

`∑[n]²²-∑[Δ[C(n, 2)^4]+n^6]/2`
-/

namespace A347107.P14321022658090860365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ) + (n ^ 6 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2 : ℕ) : ℚ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

end

end A347107.P14321022658090860365

namespace A347107

/-- `∑[n]²²-∑[Δ[C(n, 2)^4]+n^6]/2` -/
def P14321022658090860365.Spec : Prop :=
  ∀ n, P14321022658090860365.a n = (A347107 n : ℚ)

end A347107

/-! ## A347107.P11443524555439929569

`∑[n]²²-∑[n*lcm(n+1, n²)²/2]/2`
-/

namespace A347107.P11443524555439929569
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * Nat.lcm (n + 1) (n ^ 2) ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ 2 : ℕ) : ℚ) - (∑ j ∈ Finset.range (n + 1), f2 j) / 2

end

end A347107.P11443524555439929569

namespace A347107

/-- `∑[n]²²-∑[n*lcm(n+1, n²)²/2]/2` -/
def P11443524555439929569.Spec : Prop :=
  ∀ n, P11443524555439929569.a n = (A347107 n : ℚ)

end A347107

/-! ## A347107.P14824248564370886324

`A346642(n)-A000540(n)`
-/

namespace A347107.P14824248564370886324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346642 n - A000540 n

end

end A347107.P14824248564370886324

namespace A347107

/-- `A346642(n)-A000540(n)` -/
def P14824248564370886324.Spec : Prop :=
  ∀ n, P14824248564370886324.a n = A347107 n

end A347107

/-! ## A347107.P338345523713570839

`A000537(n)²-A346642(n)`
-/

namespace A347107.P338345523713570839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 n ^ 2 - A346642 n

end

end A347107.P338345523713570839

namespace A347107

/-- `A000537(n)²-A346642(n)` -/
def P338345523713570839.Spec : Prop :=
  ∀ n, P338345523713570839.a n = A347107 n

end A347107

/-! ## A347107.P10239017159518458296

`A000217(n)²²-A346642(n)`
-/

namespace A347107.P10239017159518458296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n ^ 2) ^ 2 - A346642 n

end

end A347107.P10239017159518458296

namespace A347107

/-- `A000217(n)²²-A346642(n)` -/
def P10239017159518458296.Spec : Prop :=
  ∀ n, P10239017159518458296.a n = A347107 n

end A347107

/-! ## A347107.P14794617418829498055

`(A352980(n+1)-A352980(n))/A000578(n+1)`
-/

namespace A347107.P14794617418829498055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352980 (n + 1) - A352980 n : ℚ) / (A000578 (n + 1) : ℚ)

end

end A347107.P14794617418829498055

namespace A347107

/-- `(A352980(n+1)-A352980(n))/A000578(n+1)` -/
def P14794617418829498055.Spec : Prop :=
  ∀ n, P14794617418829498055.a n = (A347107 n : ℚ)

end A347107

/-! ## A347107.P1904095125307433475

`A000583(A000217(n))-A346642(n)`
-/

namespace A347107.P1904095125307433475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A000217 n).toNat - A346642 n

end

end A347107.P1904095125307433475

namespace A347107

/-- `A000583(A000217(n))-A346642(n)` -/
def P1904095125307433475.Spec : Prop :=
  ∀ n, P1904095125307433475.a n = A347107 n

end A347107

/-!
# A347108: a(n) = Sum_{k=1..n} sigma(k)*sigma(2*k), where sigma(n) = A000203(n) is the sum of the divisors of n.

The programs for A347108, the canonical program `A347108.P8754756225054308534` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347108 has offset 1).

The definition of A347108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347108.P8754756225054308534

`∑[∑{d}[2*(n+1), #]*∑{d}[n+1, #]]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A347108

/-- `∑[∑{d}[2*(n+1), #]*∑{d}[n+1, #]]` -/
def P8754756225054308534.Spec : Prop :=
  ∀ n, (P8754756225054308534.a n : ℤ) = A347108 (n + 1)

theorem P8754756225054308534.correct : P8754756225054308534.Spec := by
  intro n
  simp only [A347108, Nat.add_sub_cancel]

end A347108

/-! ## A347108.P13266948632747239758

`∑[3*A382123(n+1)]`
-/

namespace A347108.P13266948632747239758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A382123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347108.P13266948632747239758

namespace A347108

/-- `∑[3*A382123(n+1)]` -/
def P13266948632747239758.Spec : Prop :=
  ∀ n, P13266948632747239758.a n = A347108 (n + 1)

end A347108

/-! ## A347108.P250356249693409093

`∑[∑{d}[n+1, #]*A062731(n+1)]`
-/

namespace A347108.P250356249693409093
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) * A062731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347108.P250356249693409093

namespace A347108

/-- `∑[∑{d}[n+1, #]*A062731(n+1)]` -/
def P250356249693409093.Spec : Prop :=
  ∀ n, P250356249693409093.a n = A347108 (n + 1)

end A347108

/-! ## A347108.P12783817453743043058

`∑[∑{d}[2*(n+1), #]*A000203(n+1)]`
-/

namespace A347108.P12783817453743043058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) * A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347108.P12783817453743043058

namespace A347108

/-- `∑[∑{d}[2*(n+1), #]*A000203(n+1)]` -/
def P12783817453743043058.Spec : Prop :=
  ∀ n, P12783817453743043058.a n = A347108 (n + 1)

theorem P12783817453743043058.correct : P12783817453743043058.Spec := by
  intro n
  simp only [A347108, Nat.add_sub_cancel, A347108.P12783817453743043058.f2, A347108.P12783817453743043058.f1, A347108.P12783817453743043058.a, A347108.P8754756225054308534.f2, A347108.P8754756225054308534.f3, A347108.P8754756225054308534.f1, A347108.P8754756225054308534.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347108

/-! ## A347108.P14596017650575325111

`∑[A000203(n+1)*A062731(n+1)]`
-/

namespace A347108.P14596017650575325111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * A062731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347108.P14596017650575325111

namespace A347108

/-- `∑[A000203(n+1)*A062731(n+1)]` -/
def P14596017650575325111.Spec : Prop :=
  ∀ n, P14596017650575325111.a n = A347108 (n + 1)

end A347108

/-! ## A347108.P6332934194465963638

`∑[Δ[A160664(n)]*A000203(2*(n+1))]`
-/

namespace A347108.P6332934194465963638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A000203 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347108.P6332934194465963638

namespace A347108

/-- `∑[Δ[A160664(n)]*A000203(2*(n+1))]` -/
def P6332934194465963638.Spec : Prop :=
  ∀ n, P6332934194465963638.a n = A347108 (n + 1)

end A347108

/-! ## A347108.P7962955240001910571

`∑[A000203(2*(n+1))*A000203(n+1)]`
-/

namespace A347108.P7962955240001910571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1)) * A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347108.P7962955240001910571

namespace A347108

/-- `∑[A000203(2*(n+1))*A000203(n+1)]` -/
def P7962955240001910571.Spec : Prop :=
  ∀ n, P7962955240001910571.a n = A347108 (n + 1)

end A347108

/-! ## A347108.P16393251867125350971

`∑[A143237(2*(n+1)²)]`
-/

namespace A347108.P16393251867125350971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143237 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347108.P16393251867125350971

namespace A347108

/-- `∑[A143237(2*(n+1)²)]` -/
def P16393251867125350971.Spec : Prop :=
  ∀ n, P16393251867125350971.a n = A347108 (n + 1)

end A347108

/-!
# A347109: Primes p congruent to 1 mod 15 such that the 15 X 15 integer circulant determinants take the form 3^2*p or 5^2*p.

The programs for A347109, there is no canonical definition to state claims against.
-/

/-! ## A347109.P10831924910729468154

`A132243(A006530(A000108(2*n+1))+1)`
-/

namespace A347109.P10831924910729468154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132243 (A006530 (A000108 (2 * n + 1)).toNat + 1).toNat

end

end A347109.P10831924910729468154

/-! ## A347109.P1134806717443936040

`A282326(A005098(n+1)%A147639(n+2))`
-/

namespace A347109.P1134806717443936040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282326 (Int.tmod (A005098 (n + 1)) (A147639 (n + 2))).toNat

end

end A347109.P1134806717443936040

/-!
# A347110: Primes p such that 2*p+1 and (2*p)^2+(2*p+1)^2 are also prime.

The programs for A347110, there is no canonical definition to state claims against.
-/

/-! ## A347110.P2946240055483959412

`∩[A005384(n+1), A103776(n+1)]`
-/

namespace A347110.P2946240055483959412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347110.P2946240055483959412

/-! ## A347110.P8762100885922127872

`∩[A078762(n+1), A103776(n+1)]`
-/

namespace A347110.P8762100885922127872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347110.P8762100885922127872

/-! ## A347110.P16853694487066910150

`∩[A103776(n+1), A246857(n+1)]`
-/

namespace A347110.P16853694487066910150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246857 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347110.P16853694487066910150

/-! ## A347110.P11458765364989616083

`∩[A103776(n+1), A259973(n+1)]`
-/

namespace A347110.P11458765364989616083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347110.P11458765364989616083

/-! ## A347110.P15610800908228125206

`∩[A103776(n+1), A348511(n+1)]`
-/

namespace A347110.P15610800908228125206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347110.P15610800908228125206

/-! ## A347110.P1755172991961346201

`∩[A103776(n+1), A364926(n+1)]`
-/

namespace A347110.P1755172991961346201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364926 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347110.P1755172991961346201

/-! ## A347110.P16552512080495081816

`∩[A103776(n+1), A176045(n+1)-1]`
-/

namespace A347110.P16552512080495081816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176045 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347110.P16552512080495081816

/-! ## A347110.P10085344156267033735

`∩[A103776(n+1), A074259(n)+a(n-1)]` with `a(0)=2`
-/

namespace A347110.P10085344156267033735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A074259 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347110.P10085344156267033735

/-! ## A347110.P8691414606221891628

`∩[A054639(n+1), A103776(n+1)]`
-/

namespace A347110.P8691414606221891628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347110.P8691414606221891628

/-!
# A347111: a(n) is n in binary rendered as a base-10 number minus n in ternary rendered as a base-10 number.

The programs for A347111, the canonical program `A347111.P2851609590327735213` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347111 has offset 1).

The definition of A347111 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347111.P2851609590327735213

`A007088(n+1)-A007089(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A347111

/-- `A007088(n+1)-A007089(n+1)` -/
def P2851609590327735213.Spec : Prop :=
  ∀ n, P2851609590327735213.a n = A347111 (n + 1)

theorem P2851609590327735213.correct : P2851609590327735213.Spec := by
  intro n
  simp only [A347111, Nat.add_sub_cancel]

end A347111

/-! ## A347111.P10220973366239699013

`Δ[A067894(n)-A121718(n)]`
-/

namespace A347111.P10220973366239699013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067894 n - A121718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347111.P10220973366239699013

namespace A347111

/-- `Δ[A067894(n)-A121718(n)]` -/
def P10220973366239699013.Spec : Prop :=
  ∀ n, P10220973366239699013.a n = A347111 (n + 1)

end A347111

/-! ## A347111.P13641471223881894296

`Δ[A067894(n)-∑[A007089(n)]]`
-/

namespace A347111.P13641471223881894296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067894 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347111.P13641471223881894296

namespace A347111

/-- `Δ[A067894(n)-∑[A007089(n)]]` -/
def P13641471223881894296.Spec : Prop :=
  ∀ n, P13641471223881894296.a n = A347111 (n + 1)

end A347111

/-! ## A347111.P9744200903258785693

`Δ[∑[A007088(n)]-A121718(n)]`
-/

namespace A347111.P9744200903258785693
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A121718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347111.P9744200903258785693

namespace A347111

/-- `Δ[∑[A007088(n)]-A121718(n)]` -/
def P9744200903258785693.Spec : Prop :=
  ∀ n, P9744200903258785693.a n = A347111 (n + 1)

end A347111

/-! ## A347111.P9924237043778008292

`Δ[A067894(n)]-A007089(n+1)`
-/

namespace A347111.P9924237043778008292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007089 (n + 1)

end

end A347111.P9924237043778008292

namespace A347111

/-- `Δ[A067894(n)]-A007089(n+1)` -/
def P9924237043778008292.Spec : Prop :=
  ∀ n, P9924237043778008292.a n = A347111 (n + 1)

end A347111

/-! ## A347111.P12926657572072299868

`A007088(n+1)-Δ[A121718(n)]`
-/

namespace A347111.P12926657572072299868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 1) - (f1 (n + 1) - f1 n)

end

end A347111.P12926657572072299868

namespace A347111

/-- `A007088(n+1)-Δ[A121718(n)]` -/
def P12926657572072299868.Spec : Prop :=
  ∀ n, P12926657572072299868.a n = A347111 (n + 1)

end A347111

/-! ## A347111.P1020818543220637182

`A067894(n+1)-(A067894(n)+A007089(n+1))`
-/

namespace A347111.P1020818543220637182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067894 (n + 1) - (A067894 n + A007089 (n + 1))

end

end A347111.P1020818543220637182

namespace A347111

/-- `A067894(n+1)-(A067894(n)+A007089(n+1))` -/
def P1020818543220637182.Spec : Prop :=
  ∀ n, P1020818543220637182.a n = A347111 (n + 1)

end A347111

/-! ## A347111.P15909885072400724231

`A007088(n+1)+A121718(n)-A121718(n+1)`
-/

namespace A347111.P15909885072400724231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + 1) + (A121718 n - A121718 (n + 1))

end

end A347111.P15909885072400724231

namespace A347111

/-- `A007088(n+1)+A121718(n)-A121718(n+1)` -/
def P15909885072400724231.Spec : Prop :=
  ∀ n, P15909885072400724231.a n = A347111 (n + 1)

end A347111

/-! ## A347111.P12408461890201770469

`A007089(A005836(n+2))-A007089(n+1)`
-/

namespace A347111.P12408461890201770469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A005836 (n + 2)).toNat - A007089 (n + 1)

end

end A347111.P12408461890201770469

namespace A347111

/-- `A007089(A005836(n+2))-A007089(n+1)` -/
def P12408461890201770469.Spec : Prop :=
  ∀ n, P12408461890201770469.a n = A347111 (n + 1)

end A347111

/-!
# A347113: a(1)=1; for n > 1, a(n) is the smallest unused positive number k such that k != j and gcd(k,j) != 1, where j = a(n-1) + 1.

The programs for A347113, there is no canonical definition to state claims against.
-/

/-! ## A347113.P5667212433607253646

`A000007(n)+Δ[A348780(A028310(n))]`
-/

namespace A347113.P5667212433607253646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348780 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A347113.P5667212433607253646

/-! ## A347113.P10577200074266567210

`A348780(n+1)+A000007(n)-A348780(A028310(n))`
-/

namespace A347113.P10577200074266567210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348780 (n + 1) + (A000007 n - A348780 (A028310 n).toNat)

end

end A347113.P10577200074266567210

/-! ## A347113.P8257326743650098268

`A348780(n+1)+A057428(n)*A348780(A028310(n))`
-/

namespace A347113.P8257326743650098268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348780 (n + 1) + A057428 n * A348780 (A028310 n).toNat

end

end A347113.P8257326743650098268

/-! ## A347113.P7678064784706517742

`A054977(n)*A348780(n+1)-A348780(A028310(n))`
-/

namespace A347113.P7678064784706517742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A348780 (n + 1) - A348780 (A028310 n).toNat

end

end A347113.P7678064784706517742

/-! ## A347113.P3925567791108444851

`A348780(n+1)-A057427(n)*A348780(A028310(n))`
-/

namespace A347113.P3925567791108444851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348780 (n + 1) - A057427 n * A348780 (A028310 n).toNat

end

end A347113.P3925567791108444851

/-! ## A347113.P3567288969684521236

`Δ[A348780(A028310(n))+A057427(n)]`
-/

namespace A347113.P3567288969684521236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348780 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347113.P3567288969684521236

/-! ## A347113.P14869025877421933540

`Δ[A348780(A028310(n))-A054977(n)]`
-/

namespace A347113.P14869025877421933540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348780 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347113.P14869025877421933540

/-! ## A347113.P17561666912151287821

`Δ[A348780(A028310(n))-A057428(n)]`
-/

namespace A347113.P17561666912151287821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348780 (A028310 n).toNat - A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347113.P17561666912151287821

/-! ## A347113.P12082212717159213526

`Δ[A348780(A028310(n))%A000292(2*n+1)]`
-/

namespace A347113.P12082212717159213526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348780 (A028310 n).toNat) (A000292 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347113.P12082212717159213526

/-! ## A347113.P3190282092193009989

`Δ[A348780(A028310(n))%A004403(n)]`
-/

namespace A347113.P3190282092193009989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A348780 (A028310 n).toNat) (A004403 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347113.P3190282092193009989

/-!
# A347115: Möbius transform of A341515.

The programs for A347115, the canonical program `A347115.P11123043099445594858` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347115 has offset 1).

The definition of A347115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347115.P11123043099445594858

`∑{d}[n+1, A008683(#)*A341515((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A347115

/-- `∑{d}[n+1, A008683(#)*A341515((n+1)/#)]` -/
def P11123043099445594858.Spec : Prop :=
  ∀ n, P11123043099445594858.a n = A347115 (n + 1)

theorem P11123043099445594858.correct : P11123043099445594858.Spec := by
  intro n
  simp only [A347115, Nat.add_sub_cancel]

end A347115

/-!
# A347116: Even bisection of A347115.

The programs for A347116, the canonical program `A347116.P1947306516588872716` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347116 has offset 1).

The definition of A347116 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347115, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347116.P1947306516588872716

`A347115(2*(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A347116

/-- `A347115(2*(n+1))` -/
def P1947306516588872716.Spec : Prop :=
  ∀ n, P1947306516588872716.a n = A347116 (n + 1)

theorem P1947306516588872716.correct : P1947306516588872716.Spec := by
  intro n
  simp only [A347116, Nat.add_sub_cancel]

end A347116

/-! ## A347116.P1152026318689111463

`and(-1, A347115(A005843(n+1)))`
-/

namespace A347116.P1152026318689111463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A347115 (A005843 (n + 1)).toNat)

end

end A347116.P1152026318689111463

namespace A347116

/-- `and(-1, A347115(A005843(n+1)))` -/
def P1152026318689111463.Spec : Prop :=
  ∀ n, P1152026318689111463.a n = A347116 (n + 1)

end A347116

/-! ## A347116.P6285395938489053989

`(n%2)!*A347115(Δ[A014206(n)])`
-/

namespace A347116.P6285395938489053989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * A347115 (f1 (n + 1) - f1 n).toNat

end

end A347116.P6285395938489053989

namespace A347116

/-- `(n%2)!*A347115(Δ[A014206(n)])` -/
def P6285395938489053989.Spec : Prop :=
  ∀ n, P6285395938489053989.a n = A347116 (n + 1)

end A347116

/-! ## A347116.P6952642291206638418

`A347115(Δ[A014206(n)])+A000007(n+1)`
-/

namespace A347116.P6952642291206638418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347115 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A347116.P6952642291206638418

namespace A347116

/-- `A347115(Δ[A014206(n)])+A000007(n+1)` -/
def P6952642291206638418.Spec : Prop :=
  ∀ n, P6952642291206638418.a n = A347116 (n + 1)

end A347116

/-! ## A347116.P11903333285607033825

`A347115(A005843(n+1))/A007318(C(2, n))`
-/

namespace A347116.P11903333285607033825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347115 (A005843 (n + 1)).toNat : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A347116.P11903333285607033825

namespace A347116

/-- `A347115(A005843(n+1))/A007318(C(2, n))` -/
def P11903333285607033825.Spec : Prop :=
  ∀ n, P11903333285607033825.a n = (A347116 (n + 1) : ℚ)

end A347116

/-! ## A347116.P6397277988435612988

`A347115(A005843(n+1))^A007318(C(2, n²))`
-/

namespace A347116.P6397277988435612988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347115 (A005843 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.choose 2 (n ^ 2)) : ℤ)

end

end A347116.P6397277988435612988

namespace A347116

/-- `A347115(A005843(n+1))^A007318(C(2, n²))` -/
def P6397277988435612988.Spec : Prop :=
  ∀ n, P6397277988435612988.a n = (A347116 (n + 1) : ℚ)

end A347116

/-! ## A347116.P1236817758537551538

`A347115(A005843(n+1))/A000041(gcd(n, n+1))`
-/

namespace A347116.P1236817758537551538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347115 (A005843 (n + 1)).toNat : ℚ) / (A000041 (Nat.gcd n (n + 1)) : ℚ)

end

end A347116.P1236817758537551538

namespace A347116

/-- `A347115(A005843(n+1))/A000041(gcd(n, n+1))` -/
def P1236817758537551538.Spec : Prop :=
  ∀ n, P1236817758537551538.a n = (A347116 (n + 1) : ℚ)

end A347116

/-! ## A347116.P7497787584274933952

`A347115(A005843(n+1))/A000045(((-1)^n)²)`
-/

namespace A347116.P7497787584274933952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347115 (A005843 (n + 1)).toNat : ℚ) / (A000045 (((-1) ^ n) ^ 2).toNat : ℚ)

end

end A347116.P7497787584274933952

namespace A347116

/-- `A347115(A005843(n+1))/A000045(((-1)^n)²)` -/
def P7497787584274933952.Spec : Prop :=
  ∀ n, P7497787584274933952.a n = (A347116 (n + 1) : ℚ)

end A347116

/-! ## A347116.P6868486768257590749

`A347115(Δ[A014206(n)])%A000045(n+8)`
-/

namespace A347116.P6868486768257590749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347115 (f1 (n + 1) - f1 n).toNat) (A000045 (n + 8))

end

end A347116.P6868486768257590749

namespace A347116

/-- `A347115(Δ[A014206(n)])%A000045(n+8)` -/
def P6868486768257590749.Spec : Prop :=
  ∀ n, P6868486768257590749.a n = A347116 (n + 1)

end A347116

/-!
# A347117: Möbius transform of A329603.

The programs for A347117, the canonical program `A347117.P5857884251631909701` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347117 has offset 1).

The definition of A347117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347117.P5857884251631909701

`∑{d}[n+1, A008683(#)*A329603((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A347117

/-- `∑{d}[n+1, A008683(#)*A329603((n+1)/#)]` -/
def P5857884251631909701.Spec : Prop :=
  ∀ n, P5857884251631909701.a n = A347117 (n + 1)

theorem P5857884251631909701.correct : P5857884251631909701.Spec := by
  intro n
  simp only [A347117, Nat.add_sub_cancel]

end A347117

/-!
# A347118: Möbius transform of A332449.

The programs for A347118, the canonical program `A347118.P7114223614411367543` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347118 has offset 1).

The definition of A347118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347118.P7114223614411367543

`∑{d}[n+1, A008683(#)*A332449((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A347118

/-- `∑{d}[n+1, A008683(#)*A332449((n+1)/#)]` -/
def P7114223614411367543.Spec : Prop :=
  ∀ n, P7114223614411367543.a n = A347118 (n + 1)

theorem P7114223614411367543.correct : P7114223614411367543.Spec := by
  intro n
  simp only [A347118, Nat.add_sub_cancel]

end A347118

/-! ## A347118.P8115960450587968802

`A347117(A003961(n+1))/2`
-/

namespace A347118.P8115960450587968802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347117 (A003961 (n + 1)).toNat : ℚ) / 2

end

end A347118.P8115960450587968802

namespace A347118

/-- `A347117(A003961(n+1))/2` -/
def P8115960450587968802.Spec : Prop :=
  ∀ n, P8115960450587968802.a n = (A347118 (n + 1) : ℚ)

end A347118

/-! ## A347118.P139693367127062434

`floor(A347117(A045965(n+1))/2)`
-/

namespace A347118.P139693367127062434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A347117 (A045965 (n + 1)).toNat : ℚ) / 2⌋

end

end A347118.P139693367127062434

namespace A347118

/-- `floor(A347117(A045965(n+1))/2)` -/
def P139693367127062434.Spec : Prop :=
  ∀ n, P139693367127062434.a n = A347118 (n + 1)

end A347118

/-! ## A347118.P4679906601867437551

`A347117(A045965(n+1))/(A000007(n)+2)`
-/

namespace A347118.P4679906601867437551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347117 (A045965 (n + 1)).toNat : ℚ) / (A000007 n + 2 : ℚ)

end

end A347118.P4679906601867437551

namespace A347118

/-- `A347117(A045965(n+1))/(A000007(n)+2)` -/
def P4679906601867437551.Spec : Prop :=
  ∀ n, P4679906601867437551.a n = (A347118 (n + 1) : ℚ)

end A347118

/-! ## A347118.P14501702772094704898

`round(A347117(A045965(n+1))/2-1/A000201(n+1))`
-/

namespace A347118.P14501702772094704898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A347117 (A045965 (n + 1)).toNat : ℚ) / 2 - 1 / (A000201 (n + 1) : ℚ))

end

end A347118.P14501702772094704898

namespace A347118

/-- `round(A347117(A045965(n+1))/2-1/A000201(n+1))` -/
def P14501702772094704898.Spec : Prop :=
  ∀ n, P14501702772094704898.a n = A347118 (n + 1)

end A347118

/-!
# A347119: Squarefree part of A005940(1+(3*A156552(n))): a(n) = A007913(A332449(n)).

The programs for A347119, the canonical program `A347119.P9912932116410116810` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347119 has offset 1).

The definition of A347119 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332449, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347119.P10492231405360196995

`A332449(n+1)/A000290(A347120(n+1))`
-/

namespace A347119.P10492231405360196995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A332449 (n + 1) : ℚ) / (A000290 (A347120 (n + 1)).toNat : ℚ)

end

end A347119.P10492231405360196995

namespace A347119

/-- `A332449(n+1)/A000290(A347120(n+1))` -/
def P10492231405360196995.Spec : Prop :=
  ∀ n, P10492231405360196995.a n = (A347119 (n + 1) : ℚ)

end A347119

/-! ## A347119.P9912932116410116810

`A007913(A332449(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A347119

/-- `A007913(A332449(n+1))` -/
def P9912932116410116810.Spec : Prop :=
  ∀ n, P9912932116410116810.a n = A347119 (n + 1)

theorem P9912932116410116810.correct : P9912932116410116810.Spec := by
  intro n
  simp only [A347119, Nat.add_sub_cancel]

end A347119

/-! ## A347119.P12333428417388846176

`A007913(A353270(n+1)*A353272(n+1))`
-/

namespace A347119.P12333428417388846176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A353270 (n + 1) * A353272 (n + 1)).toNat

end

end A347119.P12333428417388846176

namespace A347119

/-- `A007913(A353270(n+1)*A353272(n+1))` -/
def P12333428417388846176.Spec : Prop :=
  ∀ n, P12333428417388846176.a n = A347119 (n + 1)

end A347119

/-! ## A347119.P16661310205146970755

`A007913((A353273(n+1)+1+n)*A353270(n+1))`
-/

namespace A347119.P16661310205146970755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((A353273 (n + 1) + 1 + (n : ℤ)) * A353270 (n + 1)).toNat

end

end A347119.P16661310205146970755

namespace A347119

/-- `A007913((A353273(n+1)+1+n)*A353270(n+1))` -/
def P16661310205146970755.Spec : Prop :=
  ∀ n, P16661310205146970755.a n = A347119 (n + 1)

end A347119

/-! ## A347119.P2608679725408044242

`A056135(4*A332449(n+1))`
-/

namespace A347119.P2608679725408044242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056135 (4 * A332449 (n + 1)).toNat

end

end A347119.P2608679725408044242

namespace A347119

/-- `A056135(4*A332449(n+1))` -/
def P2608679725408044242.Spec : Prop :=
  ∀ n, P2608679725408044242.a n = A347119 (n + 1)

end A347119

/-!
# A347120: Square root of the largest square dividing A005940(1+(3*A156552(n))): a(n) = A000188(A332449(n)).

The programs for A347120, the canonical program `A347120.P5177905254871456997` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347120 has offset 1).

The definition of A347120 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A332449, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347120.P5177905254871456997

`A000188(A332449(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A347120

/-- `A000188(A332449(n+1))` -/
def P5177905254871456997.Spec : Prop :=
  ∀ n, P5177905254871456997.a n = A347120 (n + 1)

theorem P5177905254871456997.correct : P5177905254871456997.Spec := by
  intro n
  simp only [A347120, Nat.add_sub_cancel]

end A347120

/-! ## A347120.P16575532227224288352

`A000196(A332449(n+1)/A347119(n+1))`
-/

namespace A347120.P16575532227224288352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A332449 (n + 1) : ℚ) / (A347119 (n + 1) : ℚ))).toNat

end

end A347120.P16575532227224288352

namespace A347120

/-- `A000196(A332449(n+1)/A347119(n+1))` -/
def P16575532227224288352.Spec : Prop :=
  ∀ n, P16575532227224288352.a n = A347120 (n + 1)

end A347120

/-! ## A347120.P5739515597309428248

`sqrt(∑{d}[n+1, A347118(#)]/A347119(n+1))`
-/

namespace A347120.P5739515597309428248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (((∑ d ∈ Nat.divisors (f1 n), A347118 d : ℤ) : ℚ) / (A347119 (n + 1) : ℚ) : ℝ)

end

end A347120.P5739515597309428248

namespace A347120

/-- `sqrt(∑{d}[n+1, A347118(#)]/A347119(n+1))` -/
def P5739515597309428248.Spec : Prop :=
  ∀ n, P5739515597309428248.a n = (A347120 (n + 1) : ℝ)

end A347120

/-! ## A347120.P14762836639356167665

`A337101(2*A332449(n+1))`
-/

namespace A347120.P14762836639356167665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * A332449 (n + 1)).toNat

end

end A347120.P14762836639356167665

namespace A347120

/-- `A337101(2*A332449(n+1))` -/
def P14762836639356167665.Spec : Prop :=
  ∀ n, P14762836639356167665.a n = A347120 (n + 1)

end A347120

/-! ## A347120.P10715337153851749858

`A000188(∑{d}[n+1, A347118(#)])`
-/

namespace A347120.P10715337153851749858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (∑ d ∈ Nat.divisors (f1 n), A347118 d).toNat

end

end A347120.P10715337153851749858

namespace A347120

/-- `A000188(∑{d}[n+1, A347118(#)])` -/
def P10715337153851749858.Spec : Prop :=
  ∀ n, P10715337153851749858.a n = A347120 (n + 1)

end A347120

/-! ## A347120.P197443702717797211

`A000188(A353270(n+1)*A353272(n+1))`
-/

namespace A347120.P197443702717797211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A353270 (n + 1) * A353272 (n + 1)).toNat

end

end A347120.P197443702717797211

namespace A347120

/-- `A000188(A353270(n+1)*A353272(n+1))` -/
def P197443702717797211.Spec : Prop :=
  ∀ n, P197443702717797211.a n = A347120 (n + 1)

end A347120

/-! ## A347120.P6754961952048265255

`A064727(4*A332449(n+1))`
-/

namespace A347120.P6754961952048265255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064727 (4 * A332449 (n + 1)).toNat

end

end A347120.P6754961952048265255

namespace A347120

/-- `A064727(4*A332449(n+1))` -/
def P6754961952048265255.Spec : Prop :=
  ∀ n, P6754961952048265255.a n = A347120 (n + 1)

end A347120

/-!
# A347121: a(n) = A347136(n) - 2*n.

The programs for A347121, the canonical program `A347121.P10777423432329443113` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347121 has offset 1).

The definition of A347121 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347136, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347121.P10777423432329443113

`A347136(n+1)-2*(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A347121

/-- `A347136(n+1)-2*(n+1)` -/
def P10777423432329443113.Spec : Prop :=
  ∀ n, P10777423432329443113.a n = A347121 (n + 1)

theorem P10777423432329443113.correct : P10777423432329443113.Spec := by
  intro n
  simp only [A347121, Nat.add_sub_cancel]

end A347121

/-! ## A347121.P11625096903895207558

`∑{d}[n+1, A347122(#)]`
-/

namespace A347121.P11625096903895207558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347122 d

end

end A347121.P11625096903895207558

namespace A347121

/-- `∑{d}[n+1, A347122(#)]` -/
def P11625096903895207558.Spec : Prop :=
  ∀ n, P11625096903895207558.a n = A347121 (n + 1)

end A347121

/-! ## A347121.P3629158332983164241

`A347136(n+1)-n-n-A000005(A151800(n))`
-/

namespace A347121.P3629158332983164241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347136 (n + 1) - (n : ℤ) - (n : ℤ) - A000005 (A151800 n).toNat

end

end A347121.P3629158332983164241

namespace A347121

/-- `A347136(n+1)-n-n-A000005(A151800(n))` -/
def P3629158332983164241.Spec : Prop :=
  ∀ n, P3629158332983164241.a n = A347121 (n + 1)

end A347121

/-! ## A347121.P14553742711036459301

`A001478(n+1)+A347136(n+1)+A001478(n+1)`
-/

namespace A347121.P14553742711036459301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A347136 (n + 1) + A001478 (n + 1))

end

end A347121.P14553742711036459301

namespace A347121

/-- `A001478(n+1)+A347136(n+1)+A001478(n+1)` -/
def P14553742711036459301.Spec : Prop :=
  ∀ n, P14553742711036459301.a n = A347121 (n + 1)

theorem P14553742711036459301.correct : P14553742711036459301.Spec := by
  intro n
  simp only [A347121, Nat.add_sub_cancel, A347121.P14553742711036459301.a, A347121.P10777423432329443113.a, A001478, A001478.P11279598861711037921.a, A347136, A347136.P18101128390577008043.f1, A347136.P18101128390577008043.a, A336845, A336845.P11271818747595827461.a, A349388, A349388.P677895676119621301.f1, A349388.P677895676119621301.a, A000005, A000005.P16091521709108585461.a, A003961, A003961.P5996473960037614004.a, A346234, A346234.P13693537449081961436.a, A008683, A008683.P18254306604665478110.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347121

/-! ## A347121.P15010086581053149221

`A347136(n+1)-n-A028310(n+2)`
-/

namespace A347121.P15010086581053149221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347136 (n + 1) - (n : ℤ) - A028310 (n + 2)

end

end A347121.P15010086581053149221

namespace A347121

/-- `A347136(n+1)-n-A028310(n+2)` -/
def P15010086581053149221.Spec : Prop :=
  ∀ n, P15010086581053149221.a n = A347121 (n + 1)

end A347121

/-! ## A347121.P4112108275405706482

`A347136(n+1)-A347236(A108605(n+1))-n-n`
-/

namespace A347121.P4112108275405706482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347136 (n + 1) - A347236 (A108605 (n + 1)).toNat - (n : ℤ) - (n : ℤ)

end

end A347121.P4112108275405706482

namespace A347121

/-- `A347136(n+1)-A347236(A108605(n+1))-n-n` -/
def P4112108275405706482.Spec : Prop :=
  ∀ n, P4112108275405706482.a n = A347121 (n + 1)

end A347121

/-!
# A347122: Möbius transform of A347121.

The programs for A347122, the canonical program `A347122.P16124771186689615703` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347122 has offset 1).

The definition of A347122 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A347137, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347122.P16124771186689615703

`A347137(n+1)-2*A000010(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A347122

/-- `A347137(n+1)-2*A000010(n+1)` -/
def P16124771186689615703.Spec : Prop :=
  ∀ n, P16124771186689615703.a n = A347122 (n + 1)

theorem P16124771186689615703.correct : P16124771186689615703.Spec := by
  intro n
  simp only [A347122, Nat.add_sub_cancel]

end A347122

/-! ## A347122.P8197168887522288238

`∑{d}[n+1, A008683(#)*A347121((n+1)/#)]`
-/

namespace A347122.P8197168887522288238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A347121 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347122.P8197168887522288238

namespace A347122

/-- `∑{d}[n+1, A008683(#)*A347121((n+1)/#)]` -/
def P8197168887522288238.Spec : Prop :=
  ∀ n, P8197168887522288238.a n = A347122 (n + 1)

end A347122

/-! ## A347122.P6593986095417703438

`A347137(n+1)-A005843(A000010(n+1))`
-/

namespace A347122.P6593986095417703438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347137 (n + 1) - A005843 (A000010 (n + 1)).toNat

end

end A347122.P6593986095417703438

namespace A347122

/-- `A347137(n+1)-A005843(A000010(n+1))` -/
def P6593986095417703438.Spec : Prop :=
  ∀ n, P6593986095417703438.a n = A347122 (n + 1)

end A347122

/-! ## A347122.P16476733689704679094

`A347137(n+1)+A349754(n+1)-A003972(n+1)`
-/

namespace A347122.P16476733689704679094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347137 (n + 1) + (A349754 (n + 1) - A003972 (n + 1))

end

end A347122.P16476733689704679094

namespace A347122

/-- `A347137(n+1)+A349754(n+1)-A003972(n+1)` -/
def P16476733689704679094.Spec : Prop :=
  ∀ n, P16476733689704679094.a n = A347122 (n + 1)

theorem P16476733689704679094.correct : P16476733689704679094.Spec := by
  intro n
  simp only [A347122, Nat.add_sub_cancel, A347122.P16476733689704679094.a, A347122.P16124771186689615703.a, A000010, A000010.P4673923239450215316.a, A003972, A003972.P2423200350467876597.a, A347137, A347137.P13826285688787841149.f1, A347137.P13826285688787841149.a, A349754, A349754.P17371990951714144222.a, A003557, A003557.P6364735403900941810.a, A003961, A003961.P5996473960037614004.a, A008683, A008683.P18254306604665478110.a, A173557, A173557.P15666735857375843373.a, A347136, A347136.P18101128390577008043.f1, A347136.P18101128390577008043.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A336845, A336845.P11271818747595827461.a, A349388, A349388.P677895676119621301.f1, A349388.P677895676119621301.a, A000005, A000005.P16091521709108585461.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A059841, A059841.P7264174615531153985.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A252749, A252749.P15054942815197957636.a, A346234, A346234.P13693537449081961436.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A347122

/-! ## A347122.P17528053540802377727

`A347137(n+1)-Δ[A206297(n+1)]`
-/

namespace A347122.P17528053540802377727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206297 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347137 (n + 1) - (f1 (n + 1) - f1 n)

end

end A347122.P17528053540802377727

namespace A347122

/-- `A347137(n+1)-Δ[A206297(n+1)]` -/
def P17528053540802377727.Spec : Prop :=
  ∀ n, P17528053540802377727.a n = A347122 (n + 1)

end A347122

/-!
# A347123: Fully multiplicative with a(prime(k)) = prime(1+floor(A001223(k)/2)).

The programs for A347123, there is no canonical definition to state claims against.
-/

/-! ## A347123.P5256545157446364110

`∏{e}[A181821(n+1), A001223(#)+1]`
-/

namespace A347123.P5256545157446364110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A001223 (Nat.factorization (f1 n).natAbs p) + 1)

end

end A347123.P5256545157446364110

/-! ## A347123.P6855024469447005588

`∏{e}[A181821(n+1), A075526(#)+1]`
-/

namespace A347123.P6855024469447005588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A075526 (Nat.factorization (f1 n).natAbs p) + 1)

end

end A347123.P6855024469447005588

/-! ## A347123.P9032575658558992664

`∏{e}[A181821(n+1), A076368(#+1)]`
-/

namespace A347123.P9032575658558992664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A076368 (Nat.factorization (f1 n).natAbs p + 1)

end

end A347123.P9032575658558992664

/-! ## A347123.P8683001452887386231

`∏{e}[A304660(n+1), A001223(#)+1]`
-/

namespace A347123.P8683001452887386231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A001223 (Nat.factorization (f1 n).natAbs p) + 1)

end

end A347123.P8683001452887386231

/-! ## A347123.P1673683175582985688

`∏{e}[A181821(n+1), A099609(A001223(#))]`
-/

namespace A347123.P1673683175582985688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A099609 (A001223 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A347123.P1673683175582985688

/-!
# A347124: Möbius transform of A341528, n * sigma(A003961(n)).

The programs for A347124, the canonical program `A347124.P9735022635029064804` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347124 has offset 1).

The definition of A347124 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A346239, A347125, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347124.P9735022635029064804

`A347125(n+1)-A346239(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A347124

/-- `A347125(n+1)-A346239(n+1)` -/
def P9735022635029064804.Spec : Prop :=
  ∀ n, P9735022635029064804.a n = A347124 (n + 1)

theorem P9735022635029064804.correct : P9735022635029064804.Spec := by
  intro n
  simp only [A347124, Nat.add_sub_cancel]

end A347124

/-! ## A347124.P7206068472143311545

`∑{d}[n+1, A000010(#)*A191002((n+1)/#)]`
-/

namespace A347124.P7206068472143311545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A191002 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347124.P7206068472143311545

namespace A347124

/-- `∑{d}[n+1, A000010(#)*A191002((n+1)/#)]` -/
def P7206068472143311545.Spec : Prop :=
  ∀ n, P7206068472143311545.a n = A347124 (n + 1)

end A347124

/-! ## A347124.P6029172573693017173

`∑{d}[n+1, A008683(#)*A341528((n+1)/#)]`
-/

namespace A347124.P6029172573693017173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A341528 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347124.P6029172573693017173

namespace A347124

/-- `∑{d}[n+1, A008683(#)*A341528((n+1)/#)]` -/
def P6029172573693017173.Spec : Prop :=
  ∀ n, P6029172573693017173.a n = A347124 (n + 1)

end A347124

/-! ## A347124.P17993097249276865360

`∑{d}[n+1, A018804(#)*A353789((n+1)/#)]`
-/

namespace A347124.P17993097249276865360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A353789 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347124.P17993097249276865360

namespace A347124

/-- `∑{d}[n+1, A018804(#)*A353789((n+1)/#)]` -/
def P17993097249276865360.Spec : Prop :=
  ∀ n, P17993097249276865360.a n = A347124 (n + 1)

end A347124

/-! ## A347124.P822916130966979987

`∑{d}[n+1, A347125(#)*A349388((n+1)/#)]`
-/

namespace A347124.P822916130966979987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347125 d * A349388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347124.P822916130966979987

namespace A347124

/-- `∑{d}[n+1, A347125(#)*A349388((n+1)/#)]` -/
def P822916130966979987.Spec : Prop :=
  ∀ n, P822916130966979987.a n = A347124 (n + 1)

end A347124

/-! ## A347124.P16445211536536901789

`A346240(n+1)+A347125(n+1)-A341512(n+1)`
-/

namespace A347124.P16445211536536901789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346240 (n + 1) + (A347125 (n + 1) - A341512 (n + 1))

end

end A347124.P16445211536536901789

namespace A347124

/-- `A346240(n+1)+A347125(n+1)-A341512(n+1)` -/
def P16445211536536901789.Spec : Prop :=
  ∀ n, P16445211536536901789.a n = A347124 (n + 1)

theorem P16445211536536901789.correct : P16445211536536901789.Spec := by
  intro n
  simp only [A347124, Nat.add_sub_cancel, A347124.P16445211536536901789.a, A347124.P9735022635029064804.a, A341512, A341512.P10028097722280494924.a, A346239, A346239.P15670279633828823301.f1, A346239.P15670279633828823301.a, A346240, A346240.P13978465434129994439.a, A347125, A347125.P6631894712779475887.f1, A347125.P6631894712779475887.a, A008683, A008683.P18254306604665478110.a, A341528, A341528.P14956045597010222967.a, A341529, A341529.P16215354079337836042.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347124

/-! ## A347124.P17042082776884127465

`A341528(n+1)-A341529(n+1)+A347125(n+1)+A346240(n+1)`
-/

namespace A347124.P17042082776884127465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341528 (n + 1) - A341529 (n + 1) + (A347125 (n + 1) + A346240 (n + 1))

end

end A347124.P17042082776884127465

namespace A347124

/-- `A341528(n+1)-A341529(n+1)+A347125(n+1)+A346240(n+1)` -/
def P17042082776884127465.Spec : Prop :=
  ∀ n, P17042082776884127465.a n = A347124 (n + 1)

theorem P17042082776884127465.correct : P17042082776884127465.Spec := by
  intro n
  simp only [A347124, Nat.add_sub_cancel, A347124.P17042082776884127465.a, A347124.P9735022635029064804.a, A341528, A341528.P14956045597010222967.a, A341529, A341529.P16215354079337836042.a, A346239, A346239.P15670279633828823301.f1, A346239.P15670279633828823301.a, A346240, A346240.P13978465434129994439.a, A347125, A347125.P6631894712779475887.f1, A347125.P6631894712779475887.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A008683, A008683.P18254306604665478110.a, A341512, A341512.P10028097722280494924.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A252749, A252749.P15054942815197957636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347124

/-!
# A347125: Möbius transform of A341529, sigma(n) * A003961(n).

The programs for A347125, the canonical program `A347125.P6631894712779475887` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347125 has offset 1).

The definition of A347125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347125.P13133910607842548003

`A346239(n+1)+A347124(n+1)`
-/

namespace A347125.P13133910607842548003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346239 (n + 1) + A347124 (n + 1)

end

end A347125.P13133910607842548003

namespace A347125

/-- `A346239(n+1)+A347124(n+1)` -/
def P13133910607842548003.Spec : Prop :=
  ∀ n, P13133910607842548003.a n = A347125 (n + 1)

theorem P13133910607842548003.correct : P13133910607842548003.Spec := by
  intro n
  simp only [A347125, Nat.add_sub_cancel, A347125.P13133910607842548003.a, A347125.P6631894712779475887.f1, A347125.P6631894712779475887.a, A008683, A008683.P18254306604665478110.a, A341529, A341529.P16215354079337836042.a, A346239, A346239.P15670279633828823301.f1, A346239.P15670279633828823301.a, A347124, A347124.P9735022635029064804.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A341512, A341512.P10028097722280494924.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A341528, A341528.P14956045597010222967.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A252749, A252749.P15054942815197957636.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A347125

/-! ## A347125.P17785567269541973069

`∑{d}[n+1, A003972(#)*A191002((n+1)/#)]`
-/

namespace A347125.P17785567269541973069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003972 d * A191002 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347125.P17785567269541973069

namespace A347125

/-- `∑{d}[n+1, A003972(#)*A191002((n+1)/#)]` -/
def P17785567269541973069.Spec : Prop :=
  ∀ n, P17785567269541973069.a n = A347125 (n + 1)

end A347125

/-! ## A347125.P6631894712779475887

`∑{d}[n+1, A008683(#)*A341529((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A347125

/-- `∑{d}[n+1, A008683(#)*A341529((n+1)/#)]` -/
def P6631894712779475887.Spec : Prop :=
  ∀ n, P6631894712779475887.a n = A347125 (n + 1)

theorem P6631894712779475887.correct : P6631894712779475887.Spec := by
  intro n
  simp only [A347125, Nat.add_sub_cancel]

end A347125

/-! ## A347125.P10398539542646584726

`∑{d}[n+1, A347124(#)*A349387((n+1)/#)]`
-/

namespace A347125.P10398539542646584726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347124 d * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347125.P10398539542646584726

namespace A347125

/-- `∑{d}[n+1, A347124(#)*A349387((n+1)/#)]` -/
def P10398539542646584726.Spec : Prop :=
  ∀ n, P10398539542646584726.a n = A347125 (n + 1)

end A347125

/-! ## A347125.P10916643165909908473

`∑{d}[n+1, A347137(#)*A353789((n+1)/#)]`
-/

namespace A347125.P10916643165909908473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347137 d * A353789 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347125.P10916643165909908473

namespace A347125

/-- `∑{d}[n+1, A347137(#)*A353789((n+1)/#)]` -/
def P10916643165909908473.Spec : Prop :=
  ∀ n, P10916643165909908473.a n = A347125 (n + 1)

end A347125

/-! ## A347125.P17256817329722250329

`∑{d}[n+1, A341528(#)*A378606((n+1)/#)]`
-/

namespace A347125.P17256817329722250329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A341528 d * A378606 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347125.P17256817329722250329

namespace A347125

/-- `∑{d}[n+1, A341528(#)*A378606((n+1)/#)]` -/
def P17256817329722250329.Spec : Prop :=
  ∀ n, P17256817329722250329.a n = A347125 (n + 1)

end A347125

/-! ## A347125.P12966580015890416446

`A341512(n+1)+A347124(n+1)-A346240(n+1)`
-/

namespace A347125.P12966580015890416446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341512 (n + 1) + (A347124 (n + 1) - A346240 (n + 1))

end

end A347125.P12966580015890416446

namespace A347125

/-- `A341512(n+1)+A347124(n+1)-A346240(n+1)` -/
def P12966580015890416446.Spec : Prop :=
  ∀ n, P12966580015890416446.a n = A347125 (n + 1)

theorem P12966580015890416446.correct : P12966580015890416446.Spec := by
  intro n
  simp only [A347125, Nat.add_sub_cancel, A347125.P12966580015890416446.a, A347125.P6631894712779475887.f1, A347125.P6631894712779475887.a, A008683, A008683.P18254306604665478110.a, A341512, A341512.P10028097722280494924.a, A341529, A341529.P16215354079337836042.a, A346240, A346240.P13978465434129994439.a, A347124, A347124.P9735022635029064804.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003961, A003961.P5996473960037614004.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A341528, A341528.P14956045597010222967.a, A346239, A346239.P15670279633828823301.f1, A346239.P15670279633828823301.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A252749, A252749.P15054942815197957636.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A347125

/-!
# A347126: a(n) = A347129(A276086(n)).

The programs for A347126, there is no canonical definition to state claims against.
-/

/-! ## A347126.P7898860636794347503

`A347129(A276086(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A347126.P7898860636794347503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347129 (A276086 n).toNat

end

end A347126.P7898860636794347503

/-! ## A347126.P9908679176632895398

`A324655(n)/2*A342002(n)`
-/

namespace A347126.P9908679176632895398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324655 n : ℚ) / 2 * (A342002 n : ℚ)

end

end A347126.P9908679176632895398

/-! ## A347126.P3936586827565786436

`A026741(A324655(n))*A348502(n)`
-/

namespace A347126.P3936586827565786436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A324655 n).toNat * A348502 n

end

end A347126.P3936586827565786436

/-! ## A347126.P6418643047847469676

`A014682(A324655(n)*A342002(n))`
-/

namespace A347126.P6418643047847469676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A324655 n * A342002 n).toNat

end

end A347126.P6418643047847469676

/-! ## A347126.P2014730945108218894

`A026741(A324655(n))*A348498(A276086(n))`
-/

namespace A347126.P2014730945108218894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A324655 n).toNat * A348498 (A276086 n).toNat

end

end A347126.P2014730945108218894

/-! ## A347126.P1070292442179412713

`A175126(A324655(n)*A342002(n))`
-/

namespace A347126.P1070292442179412713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A324655 n * A342002 n).toNat

end

end A347126.P1070292442179412713

/-!
# A347127: a(n) = A327251(n) / A003557(n).

The programs for A347127, the canonical program `A347127.P10886603177571656754` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347127 has offset 1).

The definition of A347127 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A327251, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347127.P10886603177571656754

`A327251(n+1)/A003557(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A347127

/-- `A327251(n+1)/A003557(n+1)` -/
def P10886603177571656754.Spec : Prop :=
  ∀ n, P10886603177571656754.a n = (A347127 (n + 1) : ℚ)

end A347127

/-! ## A347127.P9832212406290166429

`A007947(n+1)/(n+1)*A327251(n+1)`
-/

namespace A347127.P9832212406290166429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) / (n + 1 : ℚ) * (A327251 (n + 1) : ℚ)

end

end A347127.P9832212406290166429

namespace A347127

/-- `A007947(n+1)/(n+1)*A327251(n+1)` -/
def P9832212406290166429.Spec : Prop :=
  ∀ n, P9832212406290166429.a n = (A347127 (n + 1) : ℚ)

end A347127

/-! ## A347127.P17549085285603258327

`A327251(n+1)/A052126(A217434(n+1))`
-/

namespace A347127.P17549085285603258327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327251 (n + 1) : ℚ) / (A052126 (A217434 (n + 1)).toNat : ℚ)

end

end A347127.P17549085285603258327

namespace A347127

/-- `A327251(n+1)/A052126(A217434(n+1))` -/
def P17549085285603258327.Spec : Prop :=
  ∀ n, P17549085285603258327.a n = (A347127 (n + 1) : ℚ)

end A347127

/-! ## A347127.P2712133919542921485

`(A349172(n+1)-A349142(n+1))/A003557(n+1)`
-/

namespace A347127.P2712133919542921485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349172 (n + 1) - A349142 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A347127.P2712133919542921485

namespace A347127

/-- `(A349172(n+1)-A349142(n+1))/A003557(n+1)` -/
def P2712133919542921485.Spec : Prop :=
  ∀ n, P2712133919542921485.a n = (A347127 (n + 1) : ℚ)

end A347127

/-! ## A347127.P58908351850542878

`A048250(n+1)/A001615(n+1)*A327251(n+1)`
-/

namespace A347127.P58908351850542878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ) * (A327251 (n + 1) : ℚ)

end

end A347127.P58908351850542878

namespace A347127

/-- `A048250(n+1)/A001615(n+1)*A327251(n+1)` -/
def P58908351850542878.Spec : Prop :=
  ∀ n, P58908351850542878.a n = (A347127 (n + 1) : ℚ)

end A347127

/-! ## A347127.P16115471066169491088

`A327251(n+1)/A018804(n+1)*A347128(n+1)`
-/

namespace A347127.P16115471066169491088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327251 (n + 1) : ℚ) / (A018804 (n + 1) : ℚ) * (A347128 (n + 1) : ℚ)

end

end A347127.P16115471066169491088

namespace A347127

/-- `A327251(n+1)/A018804(n+1)*A347128(n+1)` -/
def P16115471066169491088.Spec : Prop :=
  ∀ n, P16115471066169491088.a n = (A347127 (n + 1) : ℚ)

end A347127

/-! ## A347127.P13677801904287397068

`∑{d}[(n+1)², A007947(n+1)/A007913(#)]`
-/

namespace A347127.P13677801904287397068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A007947 (n + 1) : ℚ) / (A007913 d : ℚ)

end

end A347127.P13677801904287397068

namespace A347127

/-- `∑{d}[(n+1)², A007947(n+1)/A007913(#)]` -/
def P13677801904287397068.Spec : Prop :=
  ∀ n, P13677801904287397068.a n = (A347127 (n + 1) : ℚ)

end A347127

/-! ## A347127.P17405234526403377077

`A327251(n+1)/A000188(A102631(n+1))`
-/

namespace A347127.P17405234526403377077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327251 (n + 1) : ℚ) / (A000188 (A102631 (n + 1)).toNat : ℚ)

end

end A347127.P17405234526403377077

namespace A347127

/-- `A327251(n+1)/A000188(A102631(n+1))` -/
def P17405234526403377077.Spec : Prop :=
  ∀ n, P17405234526403377077.a n = (A347127 (n + 1) : ℚ)

end A347127

/-! ## A347127.P10327421548093980847

`A327251(n+1)/A295657((n+1)²)`
-/

namespace A347127.P10327421548093980847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327251 (n + 1) : ℚ) / (A295657 ((n + 1) ^ 2) : ℚ)

end

end A347127.P10327421548093980847

namespace A347127

/-- `A327251(n+1)/A295657((n+1)²)` -/
def P10327421548093980847.Spec : Prop :=
  ∀ n, P10327421548093980847.a n = (A347127 (n + 1) : ℚ)

end A347127

/-!
# A347128: a(n) = A018804(n) / A003557(n), where A018804 is Pillai's arithmetical function.

The programs for A347128, the canonical program `A347128.P11070062399515435337` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347128 has offset 1).

The definition of A347128 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018804, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347128.P11070062399515435337

`A018804(n+1)/A003557(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A347128

/-- `A018804(n+1)/A003557(n+1)` -/
def P11070062399515435337.Spec : Prop :=
  ∀ n, P11070062399515435337.a n = (A347128 (n + 1) : ℚ)

end A347128

/-! ## A347128.P16650696281585495785

`Δ[A209981(n)/32]/A003557(n+1)`
-/

namespace A347128.P16650696281585495785
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209981 n : ℚ) / 32

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) / (A003557 (n + 1) : ℚ)

end

end A347128.P16650696281585495785

namespace A347128

/-- `Δ[A209981(n)/32]/A003557(n+1)` -/
def P16650696281585495785.Spec : Prop :=
  ∀ n, P16650696281585495785.a n = (A347128 (n + 1) : ℚ)

end A347128

/-! ## A347128.P3421719183544783852

`A018804(n+1)/(A336551(n+1)+1)`
-/

namespace A347128.P3421719183544783852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℚ) / (A336551 (n + 1) + 1 : ℚ)

end

end A347128.P3421719183544783852

namespace A347128

/-- `A018804(n+1)/(A336551(n+1)+1)` -/
def P3421719183544783852.Spec : Prop :=
  ∀ n, P3421719183544783852.a n = (A347128 (n + 1) : ℚ)

end A347128

/-! ## A347128.P5419174609625294970

`∑[Δ[A209295(n)]-1]/A003557(n+1)`
-/

namespace A347128.P5419174609625294970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209295 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A347128.P5419174609625294970

namespace A347128

/-- `∑[Δ[A209295(n)]-1]/A003557(n+1)` -/
def P5419174609625294970.Spec : Prop :=
  ∀ n, P5419174609625294970.a n = (A347128 (n + 1) : ℚ)

end A347128

/-! ## A347128.P12554497387346973836

`(A006579(n+1)+1+n)/A003557(n+1)`
-/

namespace A347128.P12554497387346973836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006579 (n + 1) + 1 + (n : ℤ) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A347128.P12554497387346973836

namespace A347128

/-- `(A006579(n+1)+1+n)/A003557(n+1)` -/
def P12554497387346973836.Spec : Prop :=
  ∀ n, P12554497387346973836.a n = (A347128 (n + 1) : ℚ)

end A347128

/-! ## A347128.P2426656759931256410

`(A209295(n+1)-(n+1))/A003557(n+1)`
-/

namespace A347128.P2426656759931256410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209295 (n + 1) - (n + 1 : ℤ) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A347128.P2426656759931256410

namespace A347128

/-- `(A209295(n+1)-(n+1))/A003557(n+1)` -/
def P2426656759931256410.Spec : Prop :=
  ∀ n, P2426656759931256410.a n = (A347128 (n + 1) : ℚ)

end A347128

/-! ## A347128.P7919286608532181119

`A018804(n+1)/gcd(n+1, A069359(n+1))`
-/

namespace A347128.P7919286608532181119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A069359 (n + 1)) : ℚ)

end

end A347128.P7919286608532181119

namespace A347128

/-- `A018804(n+1)/gcd(n+1, A069359(n+1))` -/
def P7919286608532181119.Spec : Prop :=
  ∀ n, P7919286608532181119.a n = (A347128 (n + 1) : ℚ)

end A347128

/-! ## A347128.P13626995976208313462

`((n+1)²-A344485(n+1))/A003557(n+1)`
-/

namespace A347128.P13626995976208313462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) - A344485 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A347128.P13626995976208313462

namespace A347128

/-- `((n+1)²-A344485(n+1))/A003557(n+1)` -/
def P13626995976208313462.Spec : Prop :=
  ∀ n, P13626995976208313462.a n = (A347128 (n + 1) : ℚ)

end A347128

/-! ## A347128.P8314810540714780706

`(A063754(n+1)+A029935(n+1))/A003557(n+1)`
-/

namespace A347128.P8314810540714780706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063754 (n + 1) + A029935 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A347128.P8314810540714780706

namespace A347128

/-- `(A063754(n+1)+A029935(n+1))/A003557(n+1)` -/
def P8314810540714780706.Spec : Prop :=
  ∀ n, P8314810540714780706.a n = (A347128 (n + 1) : ℚ)

end A347128

/-! ## A347128.P11242504802848339355

`A018804(n+1)/(A300719(n+1)+A300717(n+1))`
-/

namespace A347128.P11242504802848339355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℚ) / (A300719 (n + 1) + A300717 (n + 1) : ℚ)

end

end A347128.P11242504802848339355

namespace A347128

/-- `A018804(n+1)/(A300719(n+1)+A300717(n+1))` -/
def P11242504802848339355.Spec : Prop :=
  ∀ n, P11242504802848339355.a n = (A347128 (n + 1) : ℚ)

end A347128

/-! ## A347128.P9233956415112276985

`A018804(n+1)/(A076332(n+1)-A007947(n+1))`
-/

namespace A347128.P9233956415112276985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℚ) / (A076332 (n + 1) - A007947 (n + 1) : ℚ)

end

end A347128.P9233956415112276985

namespace A347128

/-- `A018804(n+1)/(A076332(n+1)-A007947(n+1))` -/
def P9233956415112276985.Spec : Prop :=
  ∀ n, P9233956415112276985.a n = (A347128 (n + 1) : ℚ)

end A347128

/-! ## A347128.P1482190877575507679

`A018804(n+1)/A001615(n+1)*A048250(n+1)`
-/

namespace A347128.P1482190877575507679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ) * (A048250 (n + 1) : ℚ)

end

end A347128.P1482190877575507679

namespace A347128

/-- `A018804(n+1)/A001615(n+1)*A048250(n+1)` -/
def P1482190877575507679.Spec : Prop :=
  ∀ n, P1482190877575507679.a n = (A347128 (n + 1) : ℚ)

end A347128

/-! ## A347128.P5382280399764567935

`A018804(n+1)/A000010(n+1)*A173557(n+1)`
-/

namespace A347128.P5382280399764567935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A173557 (n + 1) : ℚ)

end

end A347128.P5382280399764567935

namespace A347128

/-- `A018804(n+1)/A000010(n+1)*A173557(n+1)` -/
def P5382280399764567935.Spec : Prop :=
  ∀ n, P5382280399764567935.a n = (A347128 (n + 1) : ℚ)

end A347128

/-! ## A347128.P9243443044847380107

`A018804(n+1)/A327251(n+1)*A347127(n+1)`
-/

namespace A347128.P9243443044847380107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℚ) / (A327251 (n + 1) : ℚ) * (A347127 (n + 1) : ℚ)

end

end A347128.P9243443044847380107

namespace A347128

/-- `A018804(n+1)/A327251(n+1)*A347127(n+1)` -/
def P9243443044847380107.Spec : Prop :=
  ∀ n, P9243443044847380107.a n = (A347128 (n + 1) : ℚ)

end A347128

/-! ## A347128.P8341567271684351808

`A018804(n+1)/A348492(n+1)*A348494(n+1)`
-/

namespace A347128.P8341567271684351808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℚ) / (A348492 (n + 1) : ℚ) * (A348494 (n + 1) : ℚ)

end

end A347128.P8341567271684351808

namespace A347128

/-- `A018804(n+1)/A348492(n+1)*A348494(n+1)` -/
def P8341567271684351808.Spec : Prop :=
  ∀ n, P8341567271684351808.a n = (A347128 (n + 1) : ℚ)

end A347128

/-! ## A347128.P17821573545559242860

`A018804(n+1)/A348495(n+1)*A348496(n+1)`
-/

namespace A347128.P17821573545559242860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℚ) / (A348495 (n + 1) : ℚ) * (A348496 (n + 1) : ℚ)

end

end A347128.P17821573545559242860

namespace A347128

/-- `A018804(n+1)/A348495(n+1)*A348496(n+1)` -/
def P17821573545559242860.Spec : Prop :=
  ∀ n, P17821573545559242860.a n = (A347128 (n + 1) : ℚ)

end A347128

/-! ## A347128.P10020375386803248231

`A000010(A007947(n+1))/A000010(n+1)*A018804(n+1)`
-/

namespace A347128.P10020375386803248231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A007947 (n + 1)).toNat : ℚ) / (A000010 (n + 1) : ℚ) * (A018804 (n + 1) : ℚ)

end

end A347128.P10020375386803248231

namespace A347128

/-- `A000010(A007947(n+1))/A000010(n+1)*A018804(n+1)` -/
def P10020375386803248231.Spec : Prop :=
  ∀ n, P10020375386803248231.a n = (A347128 (n + 1) : ℚ)

end A347128

/-! ## A347128.P11719467241808709633

`A001615(A007947(n+1))/A001615(n+1)*A018804(n+1)`
-/

namespace A347128.P11719467241808709633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (A007947 (n + 1)).toNat : ℚ) / (A001615 (n + 1) : ℚ) * (A018804 (n + 1) : ℚ)

end

end A347128.P11719467241808709633

namespace A347128

/-- `A001615(A007947(n+1))/A001615(n+1)*A018804(n+1)` -/
def P11719467241808709633.Spec : Prop :=
  ∀ n, P11719467241808709633.a n = (A347128 (n + 1) : ℚ)

end A347128

/-! ## A347128.P2007968444789405843

`∑{d}[(n+1)*A007947(n+1), A000010(A007947(#))]`
-/

namespace A347128.P2007968444789405843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 (A007947 d).toNat

end

end A347128.P2007968444789405843

namespace A347128

/-- `∑{d}[(n+1)*A007947(n+1), A000010(A007947(#))]` -/
def P2007968444789405843.Spec : Prop :=
  ∀ n, P2007968444789405843.a n = A347128 (n + 1)

end A347128

/-! ## A347128.P17828755844852177279

`A343516(∑[n+1])/A003557(n+1)`
-/

namespace A347128.P17828755844852177279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343516 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A003557 (n + 1) : ℚ)

end

end A347128.P17828755844852177279

namespace A347128

/-- `A343516(∑[n+1])/A003557(n+1)` -/
def P17828755844852177279.Spec : Prop :=
  ∀ n, P17828755844852177279.a n = (A347128 (n + 1) : ℚ)

end A347128

/-!
# A347129: a(n) = A347130(n) / A003557(n), where A347130 is the Dirichlet convolution of the identity function with the arithmetic derivative of n.

The programs for A347129, the canonical program `A347129.P12459740348261300707` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347129 has offset 1).

The definition of A347129 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A347130, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347129.P12459740348261300707

`A347130(n+1)/A003557(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A347129

/-- `A347130(n+1)/A003557(n+1)` -/
def P12459740348261300707.Spec : Prop :=
  ∀ n, P12459740348261300707.a n = (A347129 (n + 1) : ℚ)

end A347129

/-! ## A347129.P1465273752321102615

`A000005(n+1)/2*A342001(n+1)`
-/

namespace A347129.P1465273752321102615
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / 2 * (A342001 (n + 1) : ℚ)

end

end A347129.P1465273752321102615

namespace A347129

/-- `A000005(n+1)/2*A342001(n+1)` -/
def P1465273752321102615.Spec : Prop :=
  ∀ n, P1465273752321102615.a n = (A347129 (n + 1) : ℚ)

end A347129

/-! ## A347129.P2332007029394247735

`A347130(n+1)/gcd(n+1, A069359(n+1))`
-/

namespace A347129.P2332007029394247735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347130 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A069359 (n + 1)) : ℚ)

end

end A347129.P2332007029394247735

namespace A347129

/-- `A347130(n+1)/gcd(n+1, A069359(n+1))` -/
def P2332007029394247735.Spec : Prop :=
  ∀ n, P2332007029394247735.a n = (A347129 (n + 1) : ℚ)

end A347129

/-! ## A347129.P6518789393950380364

`A048250(n+1)/A001615(n+1)*A347130(n+1)`
-/

namespace A347129.P6518789393950380364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) / (A001615 (n + 1) : ℚ) * (A347130 (n + 1) : ℚ)

end

end A347129.P6518789393950380364

namespace A347129

/-- `A048250(n+1)/A001615(n+1)*A347130(n+1)` -/
def P6518789393950380364.Spec : Prop :=
  ∀ n, P6518789393950380364.a n = (A347129 (n + 1) : ℚ)

end A347129

/-! ## A347129.P10219495405272345400

`A173557(n+1)/A000010(n+1)*A347130(n+1)`
-/

namespace A347129.P10219495405272345400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173557 (n + 1) : ℚ) / (A000010 (n + 1) : ℚ) * (A347130 (n + 1) : ℚ)

end

end A347129.P10219495405272345400

namespace A347129

/-- `A173557(n+1)/A000010(n+1)*A347130(n+1)` -/
def P10219495405272345400.Spec : Prop :=
  ∀ n, P10219495405272345400.a n = (A347129 (n + 1) : ℚ)

end A347129

/-! ## A347129.P18022530145277142947

`A347128(n+1)/A018804(n+1)*A347130(n+1)`
-/

namespace A347129.P18022530145277142947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347128 (n + 1) : ℚ) / (A018804 (n + 1) : ℚ) * (A347130 (n + 1) : ℚ)

end

end A347129.P18022530145277142947

namespace A347129

/-- `A347128(n+1)/A018804(n+1)*A347130(n+1)` -/
def P18022530145277142947.Spec : Prop :=
  ∀ n, P18022530145277142947.a n = (A347129 (n + 1) : ℚ)

end A347129

/-! ## A347129.P1256700065660435875

`A347127(n+1)/A327251(n+1)*A347130(n+1)`
-/

namespace A347129.P1256700065660435875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347127 (n + 1) : ℚ) / (A327251 (n + 1) : ℚ) * (A347130 (n + 1) : ℚ)

end

end A347129.P1256700065660435875

namespace A347129

/-- `A347127(n+1)/A327251(n+1)*A347130(n+1)` -/
def P1256700065660435875.Spec : Prop :=
  ∀ n, P1256700065660435875.a n = (A347129 (n + 1) : ℚ)

end A347129

/-! ## A347129.P7673619404189216430

`A347130(n+1)/A348492(n+1)*A348494(n+1)`
-/

namespace A347129.P7673619404189216430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347130 (n + 1) : ℚ) / (A348492 (n + 1) : ℚ) * (A348494 (n + 1) : ℚ)

end

end A347129.P7673619404189216430

namespace A347129

/-- `A347130(n+1)/A348492(n+1)*A348494(n+1)` -/
def P7673619404189216430.Spec : Prop :=
  ∀ n, P7673619404189216430.a n = (A347129 (n + 1) : ℚ)

end A347129

/-! ## A347129.P8793308274050200408

`A347130(n+1)/A348495(n+1)*A348496(n+1)`
-/

namespace A347129.P8793308274050200408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347130 (n + 1) : ℚ) / (A348495 (n + 1) : ℚ) * (A348496 (n + 1) : ℚ)

end

end A347129.P8793308274050200408

namespace A347129

/-- `A347130(n+1)/A348495(n+1)*A348496(n+1)` -/
def P8793308274050200408.Spec : Prop :=
  ∀ n, P8793308274050200408.a n = (A347129 (n + 1) : ℚ)

end A347129

/-! ## A347129.P3787501554258511224

`A001281(A000005(n+1)*A342001(n+1))`
-/

namespace A347129.P3787501554258511224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A000005 (n + 1) * A342001 (n + 1)).toNat

end

end A347129.P3787501554258511224

namespace A347129

/-- `A001281(A000005(n+1)*A342001(n+1))` -/
def P3787501554258511224.Spec : Prop :=
  ∀ n, P3787501554258511224.a n = A347129 (n + 1)

end A347129

/-! ## A347129.P7615340876385652812

`A025480(A000005(n+1)*A342001(n+1))`
-/

namespace A347129.P7615340876385652812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A000005 (n + 1) * A342001 (n + 1)).toNat

end

end A347129.P7615340876385652812

namespace A347129

/-- `A025480(A000005(n+1)*A342001(n+1))` -/
def P7615340876385652812.Spec : Prop :=
  ∀ n, P7615340876385652812.a n = A347129 (n + 1)

end A347129

/-! ## A347129.P6401647004076911061

`A110654(A000005(n+1)*A342001(n+1))`
-/

namespace A347129.P6401647004076911061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000005 (n + 1) * A342001 (n + 1)).toNat

end

end A347129.P6401647004076911061

namespace A347129

/-- `A110654(A000005(n+1)*A342001(n+1))` -/
def P6401647004076911061.Spec : Prop :=
  ∀ n, P6401647004076911061.a n = A347129 (n + 1)

end A347129

/-!
# A347130: a(n) = Sum_{d|n} d * A003415(n/d), where A003415 is the arithmetic derivative.

The programs for A347130, the canonical program `A347130.P3321341918347765023` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347130 has offset 1).

The definition of A347130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347130.P8658374990607748757

`A003557(n+1)*A347129(n+1)`
-/

namespace A347130.P8658374990607748757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A347129 (n + 1)

end

end A347130.P8658374990607748757

namespace A347130

/-- `A003557(n+1)*A347129(n+1)` -/
def P8658374990607748757.Spec : Prop :=
  ∀ n, P8658374990607748757.a n = A347130 (n + 1)

end A347130

/-! ## A347130.P3321341918347765023

`∑{d}[n+1, A347131(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A347130

/-- `∑{d}[n+1, A347131(#)]` -/
def P3321341918347765023.Spec : Prop :=
  ∀ n, P3321341918347765023.a n = A347130 (n + 1)

theorem P3321341918347765023.correct : P3321341918347765023.Spec := by
  intro n
  simp only [A347130, Nat.add_sub_cancel]

end A347130

/-! ## A347130.P18048451962218069273

`∑{d}[n+1, #*A003415((n+1)/#)]`
-/

namespace A347130.P18048451962218069273
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347130.P18048451962218069273

namespace A347130

/-- `∑{d}[n+1, #*A003415((n+1)/#)]` -/
def P18048451962218069273.Spec : Prop :=
  ∀ n, P18048451962218069273.a n = A347130 (n + 1)

end A347130

/-! ## A347130.P16148500535102344643

`A000005(n+1)/2*∑[A258057(n)]`
-/

namespace A347130.P16148500535102344643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A347130.P16148500535102344643

namespace A347130

/-- `A000005(n+1)/2*∑[A258057(n)]` -/
def P16148500535102344643.Spec : Prop :=
  ∀ n, P16148500535102344643.a n = (A347130 (n + 1) : ℚ)

end A347130

/-! ## A347130.P17124656511724763641

`A000005(n+1)/2*A003415(n+1)`
-/

namespace A347130.P17124656511724763641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / 2 * (A003415 (n + 1) : ℚ)

end

end A347130.P17124656511724763641

namespace A347130

/-- `A000005(n+1)/2*A003415(n+1)` -/
def P17124656511724763641.Spec : Prop :=
  ∀ n, P17124656511724763641.a n = (A347130 (n + 1) : ℚ)

end A347130

/-! ## A347130.P4864482641586330702

`A320111(2*(n+1))/2*A003415(n+1)`
-/

namespace A347130.P4864482641586330702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A320111 (2 * (n + 1)) : ℚ) / 2 * (A003415 (n + 1) : ℚ)

end

end A347130.P4864482641586330702

namespace A347130

/-- `A320111(2*(n+1))/2*A003415(n+1)` -/
def P4864482641586330702.Spec : Prop :=
  ∀ n, P4864482641586330702.a n = (A347130 (n + 1) : ℚ)

end A347130

/-! ## A347130.P4946437548281072682

`∑{d}[n+1, A000203(#)*A300251((n+1)/#)]`
-/

namespace A347130.P4946437548281072682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A300251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347130.P4946437548281072682

namespace A347130

/-- `∑{d}[n+1, A000203(#)*A300251((n+1)/#)]` -/
def P4946437548281072682.Spec : Prop :=
  ∀ n, P4946437548281072682.a n = A347130 (n + 1)

end A347130

/-! ## A347130.P4792586866843941823

`∑{d}[n+1, A000010(#)*A319684((n+1)/#)]`
-/

namespace A347130.P4792586866843941823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347130.P4792586866843941823

namespace A347130

/-- `∑{d}[n+1, A000010(#)*A319684((n+1)/#)]` -/
def P4792586866843941823.Spec : Prop :=
  ∀ n, P4792586866843941823.a n = A347130 (n + 1)

end A347130

/-! ## A347130.P11932786293496489607

`∑{d}[n+1, A003557(#)*A349133((n+1)/#)]`
-/

namespace A347130.P11932786293496489607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003557 d * A349133 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347130.P11932786293496489607

namespace A347130

/-- `∑{d}[n+1, A003557(#)*A349133((n+1)/#)]` -/
def P11932786293496489607.Spec : Prop :=
  ∀ n, P11932786293496489607.a n = A347130 (n + 1)

end A347130

/-! ## A347130.P1248847432846380389

`∑{d}[n+1, A008836(#)*A347132((n+1)/#)]`
-/

namespace A347130.P1248847432846380389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A347132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347130.P1248847432846380389

namespace A347130

/-- `∑{d}[n+1, A008836(#)*A347132((n+1)/#)]` -/
def P1248847432846380389.Spec : Prop :=
  ∀ n, P1248847432846380389.a n = A347130 (n + 1)

end A347130

/-! ## A347130.P5870912735581935334

`∑{d}[n+1, A038040(#)*A349394((n+1)/#)]`
-/

namespace A347130.P5870912735581935334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347130.P5870912735581935334

namespace A347130

/-- `∑{d}[n+1, A038040(#)*A349394((n+1)/#)]` -/
def P5870912735581935334.Spec : Prop :=
  ∀ n, P5870912735581935334.a n = A347130 (n + 1)

end A347130

/-! ## A347130.P5789759891049589485

`∑{d}[n+1, A055615(#)*A349123((n+1)/#)]`
-/

namespace A347130.P5789759891049589485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A349123 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347130.P5789759891049589485

namespace A347130

/-- `∑{d}[n+1, A055615(#)*A349123((n+1)/#)]` -/
def P5789759891049589485.Spec : Prop :=
  ∀ n, P5789759891049589485.a n = A347130 (n + 1)

end A347130

/-! ## A347130.P1513497942491228097

`∑{d}[n+1, A335032(#)*A349618((n+1)/#)]`
-/

namespace A347130.P1513497942491228097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A335032 d * A349618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347130.P1513497942491228097

namespace A347130

/-- `∑{d}[n+1, A335032(#)*A349618((n+1)/#)]` -/
def P1513497942491228097.Spec : Prop :=
  ∀ n, P1513497942491228097.a n = A347130 (n + 1)

end A347130

/-! ## A347130.P13493881714797234134

`∑{d}[n+1, A347965(#)*A349388((n+1)/#)]`
-/

namespace A347130.P13493881714797234134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347965 d * A349388 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347130.P13493881714797234134

namespace A347130

/-- `∑{d}[n+1, A347965(#)*A349388((n+1)/#)]` -/
def P13493881714797234134.Spec : Prop :=
  ∀ n, P13493881714797234134.a n = A347130 (n + 1)

end A347130

/-! ## A347130.P1075936004350541468

`∑{d}[n+1, A347955(#)*A349432((n+1)/#)]`
-/

namespace A347130.P1075936004350541468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347955 d * A349432 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347130.P1075936004350541468

namespace A347130

/-- `∑{d}[n+1, A347955(#)*A349432((n+1)/#)]` -/
def P1075936004350541468.Spec : Prop :=
  ∀ n, P1075936004350541468.a n = A347130 (n + 1)

end A347130

/-! ## A347130.P5247342544998829486

`∑{d}[n+1, A349130(#)*A349620((n+1)/#)]`
-/

namespace A347130.P5247342544998829486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349130 d * A349620 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347130.P5247342544998829486

namespace A347130

/-- `∑{d}[n+1, A349130(#)*A349620((n+1)/#)]` -/
def P5247342544998829486.Spec : Prop :=
  ∀ n, P5247342544998829486.a n = A347130 (n + 1)

end A347130

/-! ## A347130.P1918280504702576220

`∑{d}[n+1, A349170(#)*A349621((n+1)/#)]`
-/

namespace A347130.P1918280504702576220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349170 d * A349621 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347130.P1918280504702576220

namespace A347130

/-- `∑{d}[n+1, A349170(#)*A349621((n+1)/#)]` -/
def P1918280504702576220.Spec : Prop :=
  ∀ n, P1918280504702576220.a n = A347130 (n + 1)

end A347130

/-! ## A347130.P1693368088393719581

`A001615(n+1)/A048250(n+1)*A347129(n+1)`
-/

namespace A347130.P1693368088393719581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ) * (A347129 (n + 1) : ℚ)

end

end A347130.P1693368088393719581

namespace A347130

/-- `A001615(n+1)/A048250(n+1)*A347129(n+1)` -/
def P1693368088393719581.Spec : Prop :=
  ∀ n, P1693368088393719581.a n = (A347130 (n + 1) : ℚ)

end A347130

/-! ## A347130.P12051298027867193477

`A018804(n+1)/A347128(n+1)*A347129(n+1)`
-/

namespace A347130.P12051298027867193477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018804 (n + 1) : ℚ) / (A347128 (n + 1) : ℚ) * (A347129 (n + 1) : ℚ)

end

end A347130.P12051298027867193477

namespace A347130

/-- `A018804(n+1)/A347128(n+1)*A347129(n+1)` -/
def P12051298027867193477.Spec : Prop :=
  ∀ n, P12051298027867193477.a n = (A347130 (n + 1) : ℚ)

end A347130

/-! ## A347130.P14885772533818186809

`A327251(n+1)/A347127(n+1)*A347129(n+1)`
-/

namespace A347130.P14885772533818186809
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327251 (n + 1) : ℚ) / (A347127 (n + 1) : ℚ) * (A347129 (n + 1) : ℚ)

end

end A347130.P14885772533818186809

namespace A347130

/-- `A327251(n+1)/A347127(n+1)*A347129(n+1)` -/
def P14885772533818186809.Spec : Prop :=
  ∀ n, P14885772533818186809.a n = (A347130 (n + 1) : ℚ)

end A347130

/-!
# A347131: a(n) = Sum_{d|n} phi(n/d) * A003415(d), where A003415 is the arithmetic derivative and phi is Euler totient function.

The programs for A347131, the canonical program `A347131.P9557456993449807775` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347131 has offset 1).

The definition of A347131 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347131.P16424957441320324181

`∑{d}[n+1, #*A300251((n+1)/#)]`
-/

namespace A347131.P16424957441320324181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A300251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347131.P16424957441320324181

namespace A347131

/-- `∑{d}[n+1, #*A300251((n+1)/#)]` -/
def P16424957441320324181.Spec : Prop :=
  ∀ n, P16424957441320324181.a n = A347131 (n + 1)

end A347131

/-! ## A347131.P18141444009171685121

`∑{d}[n+1, A000010(#)*A003415((n+1)/#)]`
-/

namespace A347131.P18141444009171685121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347131.P18141444009171685121

namespace A347131

/-- `∑{d}[n+1, A000010(#)*A003415((n+1)/#)]` -/
def P18141444009171685121.Spec : Prop :=
  ∀ n, P18141444009171685121.a n = A347131 (n + 1)

end A347131

/-! ## A347131.P9557456993449807775

`∑{d}[n+1, A007431(#)*A319684((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A347131

/-- `∑{d}[n+1, A007431(#)*A319684((n+1)/#)]` -/
def P9557456993449807775.Spec : Prop :=
  ∀ n, P9557456993449807775.a n = A347131 (n + 1)

theorem P9557456993449807775.correct : P9557456993449807775.Spec := by
  intro n
  simp only [A347131, Nat.add_sub_cancel]

end A347131

/-! ## A347131.P10109245906045675982

`∑{d}[n+1, A008683(#)*A347130((n+1)/#)]`
-/

namespace A347131.P10109245906045675982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A347130 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347131.P10109245906045675982

namespace A347131

/-- `∑{d}[n+1, A008683(#)*A347130((n+1)/#)]` -/
def P10109245906045675982.Spec : Prop :=
  ∀ n, P10109245906045675982.a n = A347131 (n + 1)

end A347131

/-! ## A347131.P12112012551585583578

`∑{d}[n+1, A018804(#)*A349394((n+1)/#)]`
-/

namespace A347131.P12112012551585583578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347131.P12112012551585583578

namespace A347131

/-- `∑{d}[n+1, A018804(#)*A349394((n+1)/#)]` -/
def P12112012551585583578.Spec : Prop :=
  ∀ n, P12112012551585583578.a n = A347131 (n + 1)

end A347131

/-! ## A347131.P5152960997186166845

`∑{d}[n+1, A046692(#)*A349123((n+1)/#)]`
-/

namespace A347131.P5152960997186166845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A349123 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347131.P5152960997186166845

namespace A347131

/-- `∑{d}[n+1, A046692(#)*A349123((n+1)/#)]` -/
def P5152960997186166845.Spec : Prop :=
  ∀ n, P5152960997186166845.a n = A347131 (n + 1)

end A347131

/-! ## A347131.P16390127126164192666

`∑{d}[n+1, A158522(#)*A347132((n+1)/#)]`
-/

namespace A347131.P16390127126164192666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A347132 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347131.P16390127126164192666

namespace A347131

/-- `∑{d}[n+1, A158522(#)*A347132((n+1)/#)]` -/
def P16390127126164192666.Spec : Prop :=
  ∀ n, P16390127126164192666.a n = A347131 (n + 1)

end A347131

/-! ## A347131.P6419083471677939410

`∑{d}[n+1, A176345(#)*A349618((n+1)/#)]`
-/

namespace A347131.P6419083471677939410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A176345 d * A349618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347131.P6419083471677939410

namespace A347131

/-- `∑{d}[n+1, A176345(#)*A349618((n+1)/#)]` -/
def P6419083471677939410.Spec : Prop :=
  ∀ n, P6419083471677939410.a n = A347131 (n + 1)

end A347131

/-! ## A347131.P16087248991643548370

`∑{d}[n+1, A300717(#)*A349133((n+1)/#)]`
-/

namespace A347131.P16087248991643548370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300717 d * A349133 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347131.P16087248991643548370

namespace A347131

/-- `∑{d}[n+1, A300717(#)*A349133((n+1)/#)]` -/
def P16087248991643548370.Spec : Prop :=
  ∀ n, P16087248991643548370.a n = A347131 (n + 1)

end A347131

/-! ## A347131.P725573425083689392

`∑{d}[n+1, A349131(#)*A349620((n+1)/#)]`
-/

namespace A347131.P725573425083689392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349131 d * A349620 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347131.P725573425083689392

namespace A347131

/-- `∑{d}[n+1, A349131(#)*A349620((n+1)/#)]` -/
def P725573425083689392.Spec : Prop :=
  ∀ n, P725573425083689392.a n = A347131 (n + 1)

end A347131

/-! ## A347131.P12789953669544728818

`∑{d}[n+1, A349171(#)*A349621((n+1)/#)]`
-/

namespace A347131.P12789953669544728818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349171 d * A349621 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347131.P12789953669544728818

namespace A347131

/-- `∑{d}[n+1, A349171(#)*A349621((n+1)/#)]` -/
def P12789953669544728818.Spec : Prop :=
  ∀ n, P12789953669544728818.a n = A347131 (n + 1)

end A347131

/-!
# A347132: a(n) = Sum_{d|n} A001615(n/d) * A003415(d), where A003415 is the arithmetic derivative and A001615 is Dedekind psi function.

The programs for A347132, the canonical program `A347132.P12449885235139872301` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347132 has offset 1).

The definition of A347132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347132.P16264853963083494599

`∑{d}[n+1, A001615(#)*A003415((n+1)/#)]`
-/

namespace A347132.P16264853963083494599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A003415 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347132.P16264853963083494599

namespace A347132

/-- `∑{d}[n+1, A001615(#)*A003415((n+1)/#)]` -/
def P16264853963083494599.Spec : Prop :=
  ∀ n, P16264853963083494599.a n = A347132 (n + 1)

end A347132

/-! ## A347132.P15991423584169829758

`∑{d}[n+1, A008966(#)*A347130((n+1)/#)]`
-/

namespace A347132.P15991423584169829758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A347130 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347132.P15991423584169829758

namespace A347132

/-- `∑{d}[n+1, A008966(#)*A347130((n+1)/#)]` -/
def P15991423584169829758.Spec : Prop :=
  ∀ n, P15991423584169829758.a n = A347132 (n + 1)

end A347132

/-! ## A347132.P2278002527531493071

`∑{d}[n+1, A060648(#)*A300251((n+1)/#)]`
-/

namespace A347132.P2278002527531493071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060648 d * A300251 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347132.P2278002527531493071

namespace A347132

/-- `∑{d}[n+1, A060648(#)*A300251((n+1)/#)]` -/
def P2278002527531493071.Spec : Prop :=
  ∀ n, P2278002527531493071.a n = A347132 (n + 1)

end A347132

/-! ## A347132.P9291409378256003680

`∑{d}[n+1, A034444(#)*A347131((n+1)/#)]`
-/

namespace A347132.P9291409378256003680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A347131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347132.P9291409378256003680

namespace A347132

/-- `∑{d}[n+1, A034444(#)*A347131((n+1)/#)]` -/
def P9291409378256003680.Spec : Prop :=
  ∀ n, P9291409378256003680.a n = A347132 (n + 1)

end A347132

/-! ## A347132.P12449885235139872301

`∑{d}[n+1, A063659(#)*A319684((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A347132

/-- `∑{d}[n+1, A063659(#)*A319684((n+1)/#)]` -/
def P12449885235139872301.Spec : Prop :=
  ∀ n, P12449885235139872301.a n = A347132 (n + 1)

theorem P12449885235139872301.correct : P12449885235139872301.Spec := by
  intro n
  simp only [A347132, Nat.add_sub_cancel]

end A347132

/-! ## A347132.P1859797661120293226

`∑{d}[n+1, A327251(#)*A349394((n+1)/#)]`
-/

namespace A347132.P1859797661120293226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A327251 d * A349394 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347132.P1859797661120293226

namespace A347132

/-- `∑{d}[n+1, A327251(#)*A349394((n+1)/#)]` -/
def P1859797661120293226.Spec : Prop :=
  ∀ n, P1859797661120293226.a n = A347132 (n + 1)

end A347132

/-! ## A347132.P12320259783904039878

`∑{d}[n+1, A328729(#)*A349123((n+1)/#)]`
-/

namespace A347132.P12320259783904039878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328729 d * A349123 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347132.P12320259783904039878

namespace A347132

/-- `∑{d}[n+1, A328729(#)*A349123((n+1)/#)]` -/
def P12320259783904039878.Spec : Prop :=
  ∀ n, P12320259783904039878.a n = A347132 (n + 1)

end A347132

/-! ## A347132.P3068636041553323876

`∑{d}[n+1, A349132(#)*A349620((n+1)/#)]`
-/

namespace A347132.P3068636041553323876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349132 d * A349620 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347132.P3068636041553323876

namespace A347132

/-- `∑{d}[n+1, A349132(#)*A349620((n+1)/#)]` -/
def P3068636041553323876.Spec : Prop :=
  ∀ n, P3068636041553323876.a n = A347132 (n + 1)

end A347132

/-! ## A347132.P13258586209858832411

`∑{d}[n+1, A349172(#)*A349621((n+1)/#)]`
-/

namespace A347132.P13258586209858832411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349172 d * A349621 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347132.P13258586209858832411

namespace A347132

/-- `∑{d}[n+1, A349172(#)*A349621((n+1)/#)]` -/
def P13258586209858832411.Spec : Prop :=
  ∀ n, P13258586209858832411.a n = A347132 (n + 1)

end A347132

/-!
# A347133: a(n) = Sum_{d|n} A003415(n/d) * A069359(d).

The programs for A347133, the canonical program `A347133.P11442822717717794057` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347133 has offset 1).

The definition of A347133 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347133.P628041214244463422

`∑{d}[n+1, A003415(#)*A069359((n+1)/#)]`
-/

namespace A347133.P628041214244463422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003415 d * A069359 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347133.P628041214244463422

namespace A347133

/-- `∑{d}[n+1, A003415(#)*A069359((n+1)/#)]` -/
def P628041214244463422.Spec : Prop :=
  ∀ n, P628041214244463422.a n = A347133 (n + 1)

end A347133

/-! ## A347133.P9849327054575332138

`∑{d}[n+1, A001221(#)*A347131((n+1)/#)]`
-/

namespace A347133.P9849327054575332138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A347131 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347133.P9849327054575332138

namespace A347133

/-- `∑{d}[n+1, A001221(#)*A347131((n+1)/#)]` -/
def P9849327054575332138.Spec : Prop :=
  ∀ n, P9849327054575332138.a n = A347133 (n + 1)

end A347133

/-! ## A347133.P2709099335755539498

`∑{d}[n+1, A010051(#)*A347130((n+1)/#)]`
-/

namespace A347133.P2709099335755539498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 d * A347130 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347133.P2709099335755539498

namespace A347133

/-- `∑{d}[n+1, A010051(#)*A347130((n+1)/#)]` -/
def P2709099335755539498.Spec : Prop :=
  ∀ n, P2709099335755539498.a n = A347133 (n + 1)

end A347133

/-! ## A347133.P16375772958200786913

`∑{d}[n+1, A117494(#)*A319684((n+1)/#)]`
-/

namespace A347133.P16375772958200786913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A117494 d * A319684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347133.P16375772958200786913

namespace A347133

/-- `∑{d}[n+1, A117494(#)*A319684((n+1)/#)]` -/
def P16375772958200786913.Spec : Prop :=
  ∀ n, P16375772958200786913.a n = A347133 (n + 1)

end A347133

/-! ## A347133.P7601829229787413532

`∑{d}[n+1, A300251(#)*A323599((n+1)/#)]`
-/

namespace A347133.P7601829229787413532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300251 d * A323599 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347133.P7601829229787413532

namespace A347133

/-- `∑{d}[n+1, A300251(#)*A323599((n+1)/#)]` -/
def P7601829229787413532.Spec : Prop :=
  ∀ n, P7601829229787413532.a n = A347133 (n + 1)

end A347133

/-! ## A347133.P856248191272848032

`∑{d}[n+1, A347956(#)*A349380((n+1)/#)]`
-/

namespace A347133.P856248191272848032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347956 d * A349380 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347133.P856248191272848032

namespace A347133

/-- `∑{d}[n+1, A347956(#)*A349380((n+1)/#)]` -/
def P856248191272848032.Spec : Prop :=
  ∀ n, P856248191272848032.a n = A347133 (n + 1)

end A347133

/-! ## A347133.P11442822717717794057

`∑{d}[n+1, A349394(#)*A369894((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A347133

/-- `∑{d}[n+1, A349394(#)*A369894((n+1)/#)]` -/
def P11442822717717794057.Spec : Prop :=
  ∀ n, P11442822717717794057.a n = A347133 (n + 1)

theorem P11442822717717794057.correct : P11442822717717794057.Spec := by
  intro n
  simp only [A347133, Nat.add_sub_cancel]

end A347133

/-! ## A347133.P11442899256260261135

`∑{d}[n+1, A347132(#)*A392285((n+1)/#)]`
-/

namespace A347133.P11442899256260261135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347132 d * A392285 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347133.P11442899256260261135

namespace A347133

/-- `∑{d}[n+1, A347132(#)*A392285((n+1)/#)]` -/
def P11442899256260261135.Spec : Prop :=
  ∀ n, P11442899256260261135.a n = A347133 (n + 1)

end A347133

/-!
# A347134: a(n) = Sum_{d|n} phi(n/d) * A069359(d), where phi is Euler totient function.

The programs for A347134, the canonical program `A347134.P17427216324099525413` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347134 has offset 1).

The definition of A347134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347134.P12430908027106819428

`∑{d}[n+1, #*A117494((n+1)/#)]`
-/

namespace A347134.P12430908027106819428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A117494 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347134.P12430908027106819428

namespace A347134

/-- `∑{d}[n+1, #*A117494((n+1)/#)]` -/
def P12430908027106819428.Spec : Prop :=
  ∀ n, P12430908027106819428.a n = A347134 (n + 1)

end A347134

/-! ## A347134.P17427216324099525413

`∑{d}[n+1, A010051(#)*A018804((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A347134

/-- `∑{d}[n+1, A010051(#)*A018804((n+1)/#)]` -/
def P17427216324099525413.Spec : Prop :=
  ∀ n, P17427216324099525413.a n = A347134 (n + 1)

theorem P17427216324099525413.correct : P17427216324099525413.Spec := by
  intro n
  simp only [A347134, Nat.add_sub_cancel]

end A347134

/-! ## A347134.P2158213118482197062

`∑{d}[n+1, A001221(#)*A029935((n+1)/#)]`
-/

namespace A347134.P2158213118482197062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A029935 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347134.P2158213118482197062

namespace A347134

/-- `∑{d}[n+1, A001221(#)*A029935((n+1)/#)]` -/
def P2158213118482197062.Spec : Prop :=
  ∀ n, P2158213118482197062.a n = A347134 (n + 1)

end A347134

/-! ## A347134.P3589702907296781044

`∑{d}[n+1, A000010(#)*A069359((n+1)/#)]`
-/

namespace A347134.P3589702907296781044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A069359 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347134.P3589702907296781044

namespace A347134

/-- `∑{d}[n+1, A000010(#)*A069359((n+1)/#)]` -/
def P3589702907296781044.Spec : Prop :=
  ∀ n, P3589702907296781044.a n = A347134 (n + 1)

end A347134

/-! ## A347134.P12206305880114457489

`∑{d}[n+1, A038040(#)*A143519((n+1)/#)]`
-/

namespace A347134.P12206305880114457489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347134.P12206305880114457489

namespace A347134

/-- `∑{d}[n+1, A038040(#)*A143519((n+1)/#)]` -/
def P12206305880114457489.Spec : Prop :=
  ∀ n, P12206305880114457489.a n = A347134 (n + 1)

end A347134

/-! ## A347134.P5928448348687794969

`∑{d}[n+1, A062799(#)*A143275((n+1)/#)]`
-/

namespace A347134.P5928448348687794969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062799 d * A143275 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347134.P5928448348687794969

namespace A347134

/-- `∑{d}[n+1, A062799(#)*A143275((n+1)/#)]` -/
def P5928448348687794969.Spec : Prop :=
  ∀ n, P5928448348687794969.a n = A347134 (n + 1)

end A347134

/-! ## A347134.P8004625520547882781

`∑{d}[n+1, A007431(#)*A323599((n+1)/#)]`
-/

namespace A347134.P8004625520547882781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A323599 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347134.P8004625520547882781

namespace A347134

/-- `∑{d}[n+1, A007431(#)*A323599((n+1)/#)]` -/
def P8004625520547882781.Spec : Prop :=
  ∀ n, P8004625520547882781.a n = A347134 (n + 1)

end A347134

/-! ## A347134.P2180442642716927488

`∑{d}[n+1, A007432(#)*A323600((n+1)/#)]`
-/

namespace A347134.P2180442642716927488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A323600 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347134.P2180442642716927488

namespace A347134

/-- `∑{d}[n+1, A007432(#)*A323600((n+1)/#)]` -/
def P2180442642716927488.Spec : Prop :=
  ∀ n, P2180442642716927488.a n = A347134 (n + 1)

end A347134

/-! ## A347134.P2508638831153059447

`∑{d}[n+1, A008683(#)*A369894((n+1)/#)]`
-/

namespace A347134.P2508638831153059447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A369894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347134.P2508638831153059447

namespace A347134

/-- `∑{d}[n+1, A008683(#)*A369894((n+1)/#)]` -/
def P2508638831153059447.Spec : Prop :=
  ∀ n, P2508638831153059447.a n = A347134 (n + 1)

end A347134

/-! ## A347134.P5888492599039447874

`∑{d}[n+1, A158522(#)*A347135((n+1)/#)]`
-/

namespace A347134.P5888492599039447874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A347135 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347134.P5888492599039447874

namespace A347134

/-- `∑{d}[n+1, A158522(#)*A347135((n+1)/#)]` -/
def P5888492599039447874.Spec : Prop :=
  ∀ n, P5888492599039447874.a n = A347134 (n + 1)

end A347134

/-! ## A347134.P14458777147847022004

`∑{d}[n+1, A328502(#)*A369904((n+1)/#)]`
-/

namespace A347134.P14458777147847022004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328502 d * A369904 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347134.P14458777147847022004

namespace A347134

/-- `∑{d}[n+1, A328502(#)*A369904((n+1)/#)]` -/
def P14458777147847022004.Spec : Prop :=
  ∀ n, P14458777147847022004.a n = A347134 (n + 1)

end A347134

/-! ## A347134.P6648065260393569385

`∑{d}[n+1, A322577(#)*A392285((n+1)/#)]`
-/

namespace A347134.P6648065260393569385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322577 d * A392285 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347134.P6648065260393569385

namespace A347134

/-- `∑{d}[n+1, A322577(#)*A392285((n+1)/#)]` -/
def P6648065260393569385.Spec : Prop :=
  ∀ n, P6648065260393569385.a n = A347134 (n + 1)

end A347134

/-!
# A347135: a(n) = Sum_{d|n} A001615(n/d) * A069359(d).

The programs for A347135, the canonical program `A347135.P3376495977078427615` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347135 has offset 1).

The definition of A347135 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347135.P14431801550317168127

`∑{d}[n+1, A001615(#)*A069359((n+1)/#)]`
-/

namespace A347135.P14431801550317168127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A069359 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347135.P14431801550317168127

namespace A347135

/-- `∑{d}[n+1, A001615(#)*A069359((n+1)/#)]` -/
def P14431801550317168127.Spec : Prop :=
  ∀ n, P14431801550317168127.a n = A347135 (n + 1)

end A347135

/-! ## A347135.P14383902188232664525

`∑{d}[n+1, A060648(#)*A117494((n+1)/#)]`
-/

namespace A347135.P14383902188232664525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060648 d * A117494 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347135.P14383902188232664525

namespace A347135

/-- `∑{d}[n+1, A060648(#)*A117494((n+1)/#)]` -/
def P14383902188232664525.Spec : Prop :=
  ∀ n, P14383902188232664525.a n = A347135 (n + 1)

end A347135

/-! ## A347135.P16231726655399883347

`∑{d}[n+1, A001221(#)*A322577((n+1)/#)]`
-/

namespace A347135.P16231726655399883347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A322577 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347135.P16231726655399883347

namespace A347135

/-- `∑{d}[n+1, A001221(#)*A322577((n+1)/#)]` -/
def P16231726655399883347.Spec : Prop :=
  ∀ n, P16231726655399883347.a n = A347135 (n + 1)

end A347135

/-! ## A347135.P3376495977078427615

`∑{d}[n+1, A010051(#)*A327251((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A347135

/-- `∑{d}[n+1, A010051(#)*A327251((n+1)/#)]` -/
def P3376495977078427615.Spec : Prop :=
  ∀ n, P3376495977078427615.a n = A347135 (n + 1)

theorem P3376495977078427615.correct : P3376495977078427615.Spec := by
  intro n
  simp only [A347135, Nat.add_sub_cancel]

end A347135

/-! ## A347135.P9251758992600200280

`∑{d}[n+1, A008966(#)*A369894((n+1)/#)]`
-/

namespace A347135.P9251758992600200280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A369894 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347135.P9251758992600200280

namespace A347135

/-- `∑{d}[n+1, A008966(#)*A369894((n+1)/#)]` -/
def P9251758992600200280.Spec : Prop :=
  ∀ n, P9251758992600200280.a n = A347135 (n + 1)

end A347135

/-! ## A347135.P5512771095022285890

`∑{d}[n+1, A034444(#)*A347134((n+1)/#)]`
-/

namespace A347135.P5512771095022285890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A347134 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347135.P5512771095022285890

namespace A347135

/-- `∑{d}[n+1, A034444(#)*A347134((n+1)/#)]` -/
def P5512771095022285890.Spec : Prop :=
  ∀ n, P5512771095022285890.a n = A347135 (n + 1)

end A347135

/-! ## A347135.P13441669222443688242

`∑{d}[n+1, A063659(#)*A323599((n+1)/#)]`
-/

namespace A347135.P13441669222443688242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A063659 d * A323599 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347135.P13441669222443688242

namespace A347135

/-- `∑{d}[n+1, A063659(#)*A323599((n+1)/#)]` -/
def P13441669222443688242.Spec : Prop :=
  ∀ n, P13441669222443688242.a n = A347135 (n + 1)

end A347135

/-! ## A347135.P5008650658399236120

`∑{d}[n+1, A130107(#)*A323600((n+1)/#)]`
-/

namespace A347135.P5008650658399236120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130107 d * A323600 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347135.P5008650658399236120

namespace A347135

/-- `∑{d}[n+1, A130107(#)*A323600((n+1)/#)]` -/
def P5008650658399236120.Spec : Prop :=
  ∀ n, P5008650658399236120.a n = A347135 (n + 1)

end A347135

/-! ## A347135.P14066404918353565927

`∑{d}[n+1, A143519(#)*A365649((n+1)/#)]`
-/

namespace A347135.P14066404918353565927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A143519 d * A365649 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347135.P14066404918353565927

namespace A347135

/-- `∑{d}[n+1, A143519(#)*A365649((n+1)/#)]` -/
def P14066404918353565927.Spec : Prop :=
  ∀ n, P14066404918353565927.a n = A347135 (n + 1)

end A347135

/-! ## A347135.P5209604552012443520

`∑{d}[n+1, A306379(#)*A392285((n+1)/#)]`
-/

namespace A347135.P5209604552012443520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A306379 d * A392285 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347135.P5209604552012443520

namespace A347135

/-- `∑{d}[n+1, A306379(#)*A392285((n+1)/#)]` -/
def P5209604552012443520.Spec : Prop :=
  ∀ n, P5209604552012443520.a n = A347135 (n + 1)

end A347135

/-!
# A347136: a(n) = Sum_{d|n} d * A003961(n/d), where A003961 shifts the prime factorization of its argument one step towards larger primes.

The programs for A347136, the canonical program `A347136.P18101128390577008043` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347136 has offset 1).

The definition of A347136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347136.P14227016429571900534

`A347121(n+1)+2*(n+1)`
-/

namespace A347136.P14227016429571900534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347121 (n + 1) + (2 * (n + 1) : ℤ)

end

end A347136.P14227016429571900534

namespace A347136

/-- `A347121(n+1)+2*(n+1)` -/
def P14227016429571900534.Spec : Prop :=
  ∀ n, P14227016429571900534.a n = A347136 (n + 1)

theorem P14227016429571900534.correct : P14227016429571900534.Spec := by
  intro n
  simp only [A347136, Nat.add_sub_cancel, A347136.P14227016429571900534.a, A347136.P18101128390577008043.f1, A347136.P18101128390577008043.a, A336845, A336845.P11271818747595827461.a, A347121, A347121.P10777423432329443113.a, A349388, A349388.P677895676119621301.f1, A349388.P677895676119621301.a, A000005, A000005.P16091521709108585461.a, A003961, A003961.P5996473960037614004.a, A346234, A346234.P13693537449081961436.a, A008683, A008683.P18254306604665478110.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A252749, A252749.P15054942815197957636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347136

/-! ## A347136.P11983828807989238735

`∑{d}[n+1, A347137(#)]`
-/

namespace A347136.P11983828807989238735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347137 d

end

end A347136.P11983828807989238735

namespace A347136

/-- `∑{d}[n+1, A347137(#)]` -/
def P11983828807989238735.Spec : Prop :=
  ∀ n, P11983828807989238735.a n = A347136 (n + 1)

end A347136

/-! ## A347136.P17408349856766593487

`∑{d}[n+1, (n+1)/#*A003961(#)]`
-/

namespace A347136.P17408349856766593487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A003961 d : ℚ)

end

end A347136.P17408349856766593487

namespace A347136

/-- `∑{d}[n+1, (n+1)/#*A003961(#)]` -/
def P17408349856766593487.Spec : Prop :=
  ∀ n, P17408349856766593487.a n = (A347136 (n + 1) : ℚ)

end A347136

/-! ## A347136.P16466138476442025107

`∑{d}[n+1, A000010(#)*A003973((n+1)/#)]`
-/

namespace A347136.P16466138476442025107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A003973 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347136.P16466138476442025107

namespace A347136

/-- `∑{d}[n+1, A000010(#)*A003973((n+1)/#)]` -/
def P16466138476442025107.Spec : Prop :=
  ∀ n, P16466138476442025107.a n = A347136 (n + 1)

end A347136

/-! ## A347136.P1816747809624872562

`∑{d}[n+1, A000203(#)*A003972((n+1)/#)]`
-/

namespace A347136.P1816747809624872562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A003972 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347136.P1816747809624872562

namespace A347136

/-- `∑{d}[n+1, A000203(#)*A003972((n+1)/#)]` -/
def P1816747809624872562.Spec : Prop :=
  ∀ n, P1816747809624872562.a n = A347136 (n + 1)

end A347136

/-! ## A347136.P792424789107120804

`∑{d}[n+1, A038040(#)*A349387((n+1)/#)]`
-/

namespace A347136.P792424789107120804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347136.P792424789107120804

namespace A347136

/-- `∑{d}[n+1, A038040(#)*A349387((n+1)/#)]` -/
def P792424789107120804.Spec : Prop :=
  ∀ n, P792424789107120804.a n = A347136 (n + 1)

end A347136

/-! ## A347136.P4085310794869229546

`∑{d}[n+1, A060640(#)*A378606((n+1)/#)]`
-/

namespace A347136.P4085310794869229546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060640 d * A378606 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347136.P4085310794869229546

namespace A347136

/-- `∑{d}[n+1, A060640(#)*A378606((n+1)/#)]` -/
def P4085310794869229546.Spec : Prop :=
  ∀ n, P4085310794869229546.a n = A347136 (n + 1)

end A347136

/-! ## A347136.P6116262610603759790

`∑{d}[n+1, A191161(#)*A337544((n+1)/#)]`
-/

namespace A347136.P6116262610603759790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A191161 d * A337544 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347136.P6116262610603759790

namespace A347136

/-- `∑{d}[n+1, A191161(#)*A337544((n+1)/#)]` -/
def P6116262610603759790.Spec : Prop :=
  ∀ n, P6116262610603759790.a n = A347136 (n + 1)

end A347136

/-! ## A347136.P6243710573680801667

`∑{d}[n+1, A330575(#)*A344587((n+1)/#)]`
-/

namespace A347136.P6243710573680801667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A330575 d * A344587 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347136.P6243710573680801667

namespace A347136

/-- `∑{d}[n+1, A330575(#)*A344587((n+1)/#)]` -/
def P6243710573680801667.Spec : Prop :=
  ∀ n, P6243710573680801667.a n = A347136 (n + 1)

end A347136

/-! ## A347136.P18101128390577008043

`∑{d}[n+1, A336845(#)*A349388((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A347136

/-- `∑{d}[n+1, A336845(#)*A349388((n+1)/#)]` -/
def P18101128390577008043.Spec : Prop :=
  ∀ n, P18101128390577008043.a n = A347136 (n + 1)

theorem P18101128390577008043.correct : P18101128390577008043.Spec := by
  intro n
  simp only [A347136, Nat.add_sub_cancel]

end A347136

/-! ## A347136.P15772873837290146980

`∑{d}[n+1, A347237(#)*A357938((n+1)/#)]`
-/

namespace A347136.P15772873837290146980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347237 d * A357938 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347136.P15772873837290146980

namespace A347136

/-- `∑{d}[n+1, A347237(#)*A357938((n+1)/#)]` -/
def P15772873837290146980.Spec : Prop :=
  ∀ n, P15772873837290146980.a n = A347136 (n + 1)

end A347136

/-!
# A347137: a(n) = Sum_{d|n} phi(d) * A003961(n/d), where A003961 shifts the prime factorization of its argument one step towards larger primes, and phi is Euler totient function.

The programs for A347137, the canonical program `A347137.P13826285688787841149` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347137 has offset 1).

The definition of A347137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347137.P12587660516908738742

`A347122(n+1)+2*A000010(n+1)`
-/

namespace A347137.P12587660516908738742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347122 (n + 1) + 2 * A000010 (n + 1)

end

end A347137.P12587660516908738742

namespace A347137

/-- `A347122(n+1)+2*A000010(n+1)` -/
def P12587660516908738742.Spec : Prop :=
  ∀ n, P12587660516908738742.a n = A347137 (n + 1)

theorem P12587660516908738742.correct : P12587660516908738742.Spec := by
  intro n
  simp only [A347137, Nat.add_sub_cancel, A347137.P12587660516908738742.a, A347137.P13826285688787841149.f1, A347137.P13826285688787841149.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P18254306604665478110.a, A347122, A347122.P16124771186689615703.a, A347136, A347136.P18101128390577008043.f1, A347136.P18101128390577008043.a, A003557, A003557.P6364735403900941810.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A173557, A173557.P15666735857375843373.a, A336845, A336845.P11271818747595827461.a, A349388, A349388.P677895676119621301.f1, A349388.P677895676119621301.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A003961, A003961.P5996473960037614004.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A346234, A346234.P13693537449081961436.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A347137

/-! ## A347137.P2065733891691728211

`∑{d}[n+1, #*A003972((n+1)/#)]`
-/

namespace A347137.P2065733891691728211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A003972 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347137.P2065733891691728211

namespace A347137

/-- `∑{d}[n+1, #*A003972((n+1)/#)]` -/
def P2065733891691728211.Spec : Prop :=
  ∀ n, P2065733891691728211.a n = A347137 (n + 1)

end A347137

/-! ## A347137.P9582024218945356949

`∑{d}[n+1, A000010(#)*A003961((n+1)/#)]`
-/

namespace A347137.P9582024218945356949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A003961 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347137.P9582024218945356949

namespace A347137

/-- `∑{d}[n+1, A000010(#)*A003961((n+1)/#)]` -/
def P9582024218945356949.Spec : Prop :=
  ∀ n, P9582024218945356949.a n = A347137 (n + 1)

end A347137

/-! ## A347137.P7856672577067583375

`∑{d}[n+1, A003973(#)*A007431((n+1)/#)]`
-/

namespace A347137.P7856672577067583375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003973 d * A007431 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347137.P7856672577067583375

namespace A347137

/-- `∑{d}[n+1, A003973(#)*A007431((n+1)/#)]` -/
def P7856672577067583375.Spec : Prop :=
  ∀ n, P7856672577067583375.a n = A347137 (n + 1)

end A347137

/-! ## A347137.P13826285688787841149

`∑{d}[n+1, A008683(#)*A347136((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A347137

/-- `∑{d}[n+1, A008683(#)*A347136((n+1)/#)]` -/
def P13826285688787841149.Spec : Prop :=
  ∀ n, P13826285688787841149.a n = A347137 (n + 1)

theorem P13826285688787841149.correct : P13826285688787841149.Spec := by
  intro n
  simp only [A347137, Nat.add_sub_cancel]

end A347137

/-! ## A347137.P13347169987742947997

`∑{d}[n+1, A018804(#)*A349387((n+1)/#)]`
-/

namespace A347137.P13347169987742947997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A018804 d * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347137.P13347169987742947997

namespace A347137

/-- `∑{d}[n+1, A018804(#)*A349387((n+1)/#)]` -/
def P13347169987742947997.Spec : Prop :=
  ∀ n, P13347169987742947997.a n = A347137 (n + 1)

end A347137

/-! ## A347137.P5876343716583592946

`∑{d}[n+1, A038040(#)*A378606((n+1)/#)]`
-/

namespace A347137.P5876343716583592946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038040 d * A378606 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347137.P5876343716583592946

namespace A347137

/-- `∑{d}[n+1, A038040(#)*A378606((n+1)/#)]` -/
def P5876343716583592946.Spec : Prop :=
  ∀ n, P5876343716583592946.a n = A347137 (n + 1)

end A347137

/-! ## A347137.P8631656745803428602

`∑{d}[n+1, A078439(#)*A347236((n+1)/#)]`
-/

namespace A347137.P8631656745803428602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078439 d * A347236 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347137.P8631656745803428602

namespace A347137

/-- `∑{d}[n+1, A078439(#)*A347236((n+1)/#)]` -/
def P8631656745803428602.Spec : Prop :=
  ∀ n, P8631656745803428602.a n = A347137 (n + 1)

end A347137

/-! ## A347137.P7270609302838737874

`∑{d}[n+1, A330575(#)*A337544((n+1)/#)]`
-/

namespace A347137.P7270609302838737874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A330575 d * A337544 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A347137.P7270609302838737874

namespace A347137

/-- `∑{d}[n+1, A330575(#)*A337544((n+1)/#)]` -/
def P7270609302838737874.Spec : Prop :=
  ∀ n, P7270609302838737874.a n = A347137 (n + 1)

end A347137

/-!
# A347141: a(1) = 11; for n > 1, a(n) is the smallest prime factor of 2^a(n-1) - 1.

The programs for A347141, there is no canonical definition to state claims against.
-/

/-! ## A347141.P2182281428739930441

`a(n-1)+A000203(a(n-1))^A353351(n+1)` with `a(0)=11`
-/

namespace A347141.P2182281428739930441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [11] fun n a =>
  a (n - 1) + (A000203 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) ^ (A353351 (n + 1) : ℤ)

end

end A347141.P2182281428739930441

/-!
# A347142: Sum of 4th powers of divisors of n that are < sqrt(n).

The programs for A347142, there is no canonical definition to state claims against.
-/

/-! ## A347142.P8742416468219228505

`A297794(n+1)-A347143(n+1)`
-/

namespace A347142.P8742416468219228505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297794 (n + 1) - A347143 (n + 1)

end

end A347142.P8742416468219228505

/-! ## A347142.P14152155843069546734

`A347143(n+1)%A088447(n+1)`
-/

namespace A347142.P14152155843069546734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347143 (n + 1)) (A088447 (n + 1))

end

end A347142.P14152155843069546734

/-! ## A347142.P12239585244527737368

`A347158(n+1)-A057428(A005251(n))`
-/

namespace A347142.P12239585244527737368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347158 (n + 1) - A057428 (A005251 n).toNat

end

end A347142.P12239585244527737368

/-!
# A347143: Sum of 4th powers of divisors of n that are <= sqrt(n).

The programs for A347143, there is no canonical definition to state claims against.
-/

/-! ## A347143.P2114589233393536826

`A297794(n+1)-A347142(n+1)`
-/

namespace A347143.P2114589233393536826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297794 (n + 1) - A347142 (n + 1)

end

end A347143.P2114589233393536826

/-! ## A347143.P2524713439365270454

`2*A001159(n+1)-A297843(n+1)-A347142(n+1)`
-/

namespace A347143.P2524713439365270454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001159 (n + 1) - A297843 (n + 1) - A347142 (n + 1)

end

end A347143.P2524713439365270454

/-! ## A347143.P235901589729056277

`A297794(n+1)-(A347158(n+1)-A057428(A005251(n)))`
-/

namespace A347143.P235901589729056277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297794 (n + 1) - (A347158 (n + 1) - A057428 (A005251 n).toNat)

end

end A347143.P235901589729056277

/-! ## A347143.P1829650351154014715

`A347158(A054496(n+1))+1`
-/

namespace A347143.P1829650351154014715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347158 (A054496 (n + 1)).toNat + 1

end

end A347143.P1829650351154014715

/-!
# A347146: a(n) = Sum_{d|n} (d^d)', where ' is the arithmetic derivative.

The programs for A347146, there is no canonical definition to state claims against.
-/

/-! ## A347146.P1105541239269473015

`∑{d}[n+1, A068327(#)]`
-/

namespace A347146.P1105541239269473015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068327 d

end

end A347146.P1105541239269473015

/-! ## A347146.P17582511056367036555

`record[∑{d}[A328396(n), A068327(#)]]`
-/

namespace A347146.P17582511056367036555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328396 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A068327 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347146.P17582511056367036555

/-! ## A347146.P6597525521804141039

`record[∑{d}[A000120(n), A068327(#)]]`
-/

namespace A347146.P6597525521804141039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A068327 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A347146.P6597525521804141039

/-!
# A347147: Square array read by antidiagonals: T(n,k) is the number of rook paths from (1,1) to (n,k) if the rook may travel 1 to i squares along rank or file i, n >= 1, k >= 1.

The programs for A347147, there is no canonical definition to state claims against.
-/

/-! ## A347147.P7813531364298256045

`A143824(or(A008518(n), A128596(n)))`
-/

namespace A347147.P7813531364298256045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (Int.lor (A008518 n) (A128596 n)).toNat

end

end A347147.P7813531364298256045

/-! ## A347147.P9300194309196128876

`A143824(or(A128596(n), A328300(n)))`
-/

namespace A347147.P9300194309196128876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (Int.lor (A128596 n) (A328300 n)).toNat

end

end A347147.P9300194309196128876

/-! ## A347147.P9550697860916423547

`A195872(A227269(n+1)-A329655(n+1))`
-/

namespace A347147.P9550697860916423547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195872 (A227269 (n + 1) - A329655 (n + 1)).toNat

end

end A347147.P9550697860916423547

/-! ## A347147.P18320369913818556657

`A003002(A328300(n))-A080224(A176420(n))`
-/

namespace A347147.P18320369913818556657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A328300 n).toNat - A080224 (A176420 n).toNat

end

end A347147.P18320369913818556657

/-! ## A347147.P14659786411719581406

`A039836(A128596(n))`
-/

namespace A347147.P14659786411719581406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039836 (A128596 n).toNat

end

end A347147.P14659786411719581406

/-!
# A347148: Square array read by antidiagonals: T(n,0) = T(0,k) = 1 and for n > 0, k > 0, T(n,k) = Sum_{i=1..min(n,k)} (T(n-i,k) + T(n,k-i)).

The programs for A347148, there is no canonical definition to state claims against.
-/

/-! ## A347148.P1400216735855676568

`A168134(A086617(n))`
-/

namespace A347148.P1400216735855676568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168134 (A086617 n).toNat

end

end A347148.P1400216735855676568

/-! ## A347148.P8733679073648235087

`A168134(A088699(n))`
-/

namespace A347148.P8733679073648235087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168134 (A088699 n).toNat

end

end A347148.P8733679073648235087

/-! ## A347148.P18255479230164506482

`A168134(A094526(n))`
-/

namespace A347148.P18255479230164506482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168134 (A094526 n).toNat

end

end A347148.P18255479230164506482

/-! ## A347148.P8378386538192645477

`A168134(A101515(n))`
-/

namespace A347148.P8378386538192645477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168134 (A101515 n).toNat

end

end A347148.P8378386538192645477

/-! ## A347148.P12829701830655735859

`A168134(A108350(n))`
-/

namespace A347148.P12829701830655735859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168134 (A108350 n).toNat

end

end A347148.P12829701830655735859

/-!
# A347149: Dirichlet g.f.: Product_{primes p} (1 + 3/p^s).

The programs for A347149, the canonical program `A347149.P4485454136861303499` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347149 has offset 1).

The definition of A347149 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347149.P4485454136861303499

`A008966(n+1)*A048691(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A347149

/-- `A008966(n+1)*A048691(n+1)` -/
def P4485454136861303499.Spec : Prop :=
  ∀ n, P4485454136861303499.a n = A347149 (n + 1)

theorem P4485454136861303499.correct : P4485454136861303499.Spec := by
  intro n
  simp only [A347149, Nat.add_sub_cancel]

end A347149

/-! ## A347149.P10355329024983208490

`A008683(n+1)²*3^A001221(n+1)`
-/

namespace A347149.P10355329024983208490
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (n + 1) ^ 2 : ℚ) * (3 : ℚ) ^ (A001221 (n + 1) : ℤ)

end

end A347149.P10355329024983208490

namespace A347149

/-- `A008683(n+1)²*3^A001221(n+1)` -/
def P10355329024983208490.Spec : Prop :=
  ∀ n, P10355329024983208490.a n = (A347149 (n + 1) : ℚ)

end A347149

/-! ## A347149.P16554713002380305255

`∏{e}[n+1, C(3, #²)]`
-/

namespace A347149.P16554713002380305255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.choose 3 (Nat.factorization (f1 n) p ^ 2)

end

end A347149.P16554713002380305255

namespace A347149

/-- `∏{e}[n+1, C(3, #²)]` -/
def P16554713002380305255.Spec : Prop :=
  ∀ n, (P16554713002380305255.a n : ℤ) = A347149 (n + 1)

end A347149

/-! ## A347149.P16157418432786473167

`∏{e}[n+1, (3^#)%9]`
-/

namespace A347149.P16157418432786473167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 3 ^ Nat.factorization (f1 n) p % 9

end

end A347149.P16157418432786473167

namespace A347149

/-- `∏{e}[n+1, (3^#)%9]` -/
def P16157418432786473167.Spec : Prop :=
  ∀ n, (P16157418432786473167.a n : ℤ) = A347149 (n + 1)

end A347149

/-! ## A347149.P14545502670624584746

`∏{e}[n+1, floor(3/#²)]`
-/

namespace A347149.P14545502670624584746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌊3 / (Nat.factorization (f1 n) p ^ 2 : ℚ)⌋

end

end A347149.P14545502670624584746

namespace A347149

/-- `∏{e}[n+1, floor(3/#²)]` -/
def P14545502670624584746.Spec : Prop :=
  ∀ n, P14545502670624584746.a n = A347149 (n + 1)

end A347149

/-! ## A347149.P1598407484391518743

`A074823(n+1)^log2(3)`
-/

namespace A347149.P1598407484391518743
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A074823 (n + 1) : ℝ) ^ (Real.logb 2 (3 : ℝ))

end

end A347149.P1598407484391518743

namespace A347149

/-- `A074823(n+1)^log2(3)` -/
def P1598407484391518743.Spec : Prop :=
  ∀ n, P1598407484391518743.a n = (A347149 (n + 1) : ℝ)

end A347149

/-! ## A347149.P10948285459555796271

`A259346(A073184(n+1))`
-/

namespace A347149.P10948285459555796271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259346 (A073184 (n + 1)).toNat

end

end A347149.P10948285459555796271

namespace A347149

/-- `A259346(A073184(n+1))` -/
def P10948285459555796271.Spec : Prop :=
  ∀ n, P10948285459555796271.a n = A347149 (n + 1)

end A347149

/-! ## A347149.P11684614740957225895

`A065332(A370296(n+1))`
-/

namespace A347149.P11684614740957225895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065332 (A370296 (n + 1)).toNat

end

end A347149.P11684614740957225895

namespace A347149

/-- `A065332(A370296(n+1))` -/
def P11684614740957225895.Spec : Prop :=
  ∀ n, P11684614740957225895.a n = A347149 (n + 1)

end A347149

/-! ## A347149.P14755947214662426575

`A259346(A181819(n+1))`
-/

namespace A347149.P14755947214662426575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259346 (A181819 (n + 1)).toNat

end

end A347149.P14755947214662426575

namespace A347149

/-- `A259346(A181819(n+1))` -/
def P14755947214662426575.Spec : Prop :=
  ∀ n, P14755947214662426575.a n = A347149 (n + 1)

end A347149

/-! ## A347149.P14423080290714811742

`A259346(A293442(n+1))`
-/

namespace A347149.P14423080290714811742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259346 (A293442 (n + 1)).toNat

end

end A347149.P14423080290714811742

namespace A347149

/-- `A259346(A293442(n+1))` -/
def P14423080290714811742.Spec : Prop :=
  ∀ n, P14423080290714811742.a n = A347149 (n + 1)

end A347149

/-! ## A347149.P17109542102745299001

`A259346(A293443(n+1))`
-/

namespace A347149.P17109542102745299001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259346 (A293443 (n + 1)).toNat

end

end A347149.P17109542102745299001

namespace A347149

/-- `A259346(A293443(n+1))` -/
def P17109542102745299001.Spec : Prop :=
  ∀ n, P17109542102745299001.a n = A347149 (n + 1)

end A347149

/-! ## A347149.P13891744140625648504

`A259346(A318469(n+1))`
-/

namespace A347149.P13891744140625648504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259346 (A318469 (n + 1)).toNat

end

end A347149.P13891744140625648504

namespace A347149

/-- `A259346(A318469(n+1))` -/
def P13891744140625648504.Spec : Prop :=
  ∀ n, P13891744140625648504.a n = A347149 (n + 1)

end A347149

/-! ## A347149.P16977893488932191213

`A259346(A318470(n+1))`
-/

namespace A347149.P16977893488932191213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259346 (A318470 (n + 1)).toNat

end

end A347149.P16977893488932191213

namespace A347149

/-- `A259346(A318470(n+1))` -/
def P16977893488932191213.Spec : Prop :=
  ∀ n, P16977893488932191213.a n = A347149 (n + 1)

end A347149

/-! ## A347149.P9764911024690391344

`A259346(A328705(n+1))`
-/

namespace A347149.P9764911024690391344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259346 (A328705 (n + 1)).toNat

end

end A347149.P9764911024690391344

namespace A347149

/-- `A259346(A328705(n+1))` -/
def P9764911024690391344.Spec : Prop :=
  ∀ n, P9764911024690391344.a n = A347149 (n + 1)

end A347149

/-! ## A347149.P10562764186118353264

`∑{d}[A055615(n+1), A000005(#)]`
-/

namespace A347149.P10562764186118353264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000005 d

end

end A347149.P10562764186118353264

namespace A347149

/-- `∑{d}[A055615(n+1), A000005(#)]` -/
def P10562764186118353264.Spec : Prop :=
  ∀ n, P10562764186118353264.a n = A347149 (n + 1)

end A347149

/-! ## A347149.P8982325097365948364

`∑{d}[A055615(n+1), A326306(#)]`
-/

namespace A347149.P8982325097365948364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A326306 d

end

end A347149.P8982325097365948364

namespace A347149

/-- `∑{d}[A055615(n+1), A326306(#)]` -/
def P8982325097365948364.Spec : Prop :=
  ∀ n, P8982325097365948364.a n = A347149 (n + 1)

end A347149

/-! ## A347149.P1795253836515780765

`A007428(n+1)*A008683(n+1)`
-/

namespace A347149.P1795253836515780765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007428 (n + 1) * A008683 (n + 1)

end

end A347149.P1795253836515780765

namespace A347149

/-- `A007428(n+1)*A008683(n+1)` -/
def P1795253836515780765.Spec : Prop :=
  ∀ n, P1795253836515780765.a n = A347149 (n + 1)

end A347149

/-! ## A347149.P18008235324249989401

`A007425(n+1)*A008966(n+1)`
-/

namespace A347149.P18008235324249989401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) * A008966 (n + 1)

end

end A347149.P18008235324249989401

namespace A347149

/-- `A007425(n+1)*A008966(n+1)` -/
def P18008235324249989401.Spec : Prop :=
  ∀ n, P18008235324249989401.a n = A347149 (n + 1)

end A347149

/-! ## A347149.P16704885588534100266

`A008966(n+1)*A074816(n+1)`
-/

namespace A347149.P16704885588534100266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A074816 (n + 1)

end

end A347149.P16704885588534100266

namespace A347149

/-- `A008966(n+1)*A074816(n+1)` -/
def P16704885588534100266.Spec : Prop :=
  ∀ n, P16704885588534100266.a n = A347149 (n + 1)

end A347149

/-! ## A347149.P9547292873958914483

`A008966(n+1)*A145444(n+1)`
-/

namespace A347149.P9547292873958914483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A145444 (n + 1)

end

end A347149.P9547292873958914483

namespace A347149

/-- `A008966(n+1)*A145444(n+1)` -/
def P9547292873958914483.Spec : Prop :=
  ∀ n, P9547292873958914483.a n = A347149 (n + 1)

end A347149

/-!
# A347153: Sum of all divisors, except the largest of every number, of the first n odd numbers.

The programs for A347153, the canonical program `A347153.P34182887098669036` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347153 has offset 1).

The definition of A347153 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A346869, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347153.P34182887098669036

`n+A346869(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A347153

/-- `n+A346869(n+1)` -/
def P34182887098669036.Spec : Prop :=
  ∀ n, P34182887098669036.a n = A347153 (n + 1)

theorem P34182887098669036.correct : P34182887098669036.Spec := by
  intro n
  simp only [A347153, Nat.add_sub_cancel]

end A347153

/-! ## A347153.P4095145291666639167

`∑[∑{d}[2*n+1, #]-Δ[n²]]`
-/

namespace A347153.P4095145291666639167
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347153.P4095145291666639167

namespace A347153

/-- `∑[∑{d}[2*n+1, #]-Δ[n²]]` -/
def P4095145291666639167.Spec : Prop :=
  ∀ n, P4095145291666639167.a n = A347153 (n + 1)

end A347153

/-! ## A347153.P676083722480269102

`∑[∑{d}[2*n+1, #]]-(n+1)²`
-/

namespace A347153.P676083722480269102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n + 1) ^ 2 : ℤ)

end

end A347153.P676083722480269102

namespace A347153

/-- `∑[∑{d}[2*n+1, #]]-(n+1)²` -/
def P676083722480269102.Spec : Prop :=
  ∀ n, P676083722480269102.a n = A347153 (n + 1)

end A347153

/-! ## A347153.P16625239319516232365

`∑[∑{d}[2*n+1, #%(2*n+1)]]`
-/

namespace A347153.P16625239319516232365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), d % (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347153.P16625239319516232365

namespace A347153

/-- `∑[∑{d}[2*n+1, #%(2*n+1)]]` -/
def P16625239319516232365.Spec : Prop :=
  ∀ n, (P16625239319516232365.a n : ℤ) = A347153 (n + 1)

end A347153

/-! ## A347153.P15656736311705244931

`abs(∑[∑{d}[Δ[n²], #]]-((n+1)²+n))+n`
-/

namespace A347153.P15656736311705244931
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n + 1) ^ 2 + n : ℤ)| + (n : ℤ)

end

end A347153.P15656736311705244931

namespace A347153

/-- `abs(∑[∑{d}[Δ[n²], #]]-((n+1)²+n))+n` -/
def P15656736311705244931.Spec : Prop :=
  ∀ n, P15656736311705244931.a n = A347153 (n + 1)

end A347153

/-! ## A347153.P15285318909819186557

`∑{d}[2*n+1, #]+a(n-1)-(2*n+1)` with `a(0)=0`
-/

namespace A347153.P15285318909819186557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + (a (n - 1) - (2 * n + 1 : ℤ))

end

end A347153.P15285318909819186557

namespace A347153

/-- `∑{d}[2*n+1, #]+a(n-1)-(2*n+1)` -/
def P15285318909819186557.Spec : Prop :=
  ∀ n, P15285318909819186557.a n = A347153 (n + 1)

end A347153

/-! ## A347153.P18122536991985037187

`∑[A346877(n+1)]`
-/

namespace A347153.P18122536991985037187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346877 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347153.P18122536991985037187

namespace A347153

/-- `∑[A346877(n+1)]` -/
def P18122536991985037187.Spec : Prop :=
  ∀ n, P18122536991985037187.a n = A347153 (n + 1)

end A347153

/-! ## A347153.P17808156534292877363

`∑[A058344(2*n+1)]`
-/

namespace A347153.P17808156534292877363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058344 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347153.P17808156534292877363

namespace A347153

/-- `∑[A058344(2*n+1)]` -/
def P17808156534292877363.Spec : Prop :=
  ∀ n, P17808156534292877363.a n = A347153 (n + 1)

end A347153

/-! ## A347153.P10972122657914179110

`∑[A296955(2*n+1)]`
-/

namespace A347153.P10972122657914179110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296955 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347153.P10972122657914179110

namespace A347153

/-- `∑[A296955(2*n+1)]` -/
def P10972122657914179110.Spec : Prop :=
  ∀ n, P10972122657914179110.a n = A347153 (n + 1)

end A347153

/-! ## A347153.P13140887988960212133

`∑[A346879(n+1)]+n`
-/

namespace A347153.P13140887988960212133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A347153.P13140887988960212133

namespace A347153

/-- `∑[A346879(n+1)]+n` -/
def P13140887988960212133.Spec : Prop :=
  ∀ n, P13140887988960212133.a n = A347153 (n + 1)

end A347153

/-! ## A347153.P14285235287927403107

`∑[A008438(n)]-(n+1)²`
-/

namespace A347153.P14285235287927403107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A347153.P14285235287927403107

namespace A347153

/-- `∑[A008438(n)]-(n+1)²` -/
def P14285235287927403107.Spec : Prop :=
  ∀ n, P14285235287927403107.a n = A347153 (n + 1)

end A347153

/-! ## A347153.P8176911583954200461

`∑[A281006(2*n+1)-1]`
-/

namespace A347153.P8176911583954200461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281006 (2 * n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347153.P8176911583954200461

namespace A347153

/-- `∑[A281006(2*n+1)-1]` -/
def P8176911583954200461.Spec : Prop :=
  ∀ n, P8176911583954200461.a n = A347153 (n + 1)

end A347153

/-! ## A347153.P1904623067574211920

`A326123(n+1)-(n+1)²`
-/

namespace A347153.P1904623067574211920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326123 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A347153.P1904623067574211920

namespace A347153

/-- `A326123(n+1)-(n+1)²` -/
def P1904623067574211920.Spec : Prop :=
  ∀ n, P1904623067574211920.a n = A347153 (n + 1)

theorem P1904623067574211920.correct : P1904623067574211920.Spec := by
  intro n
  simp only [A347153, Nat.add_sub_cancel, A347153.P1904623067574211920.a, A347153.P34182887098669036.a, A326123, A326123.P11146969939913568628.f3, A326123.P11146969939913568628.f2, A326123.P11146969939913568628.f1, A326123.P11146969939913568628.a, A346869, A346869.P11771609064873086218.f3, A346869.P11771609064873086218.f2, A346869.P11771609064873086218.f1, A346869.P11771609064873086218.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A347153

/-! ## A347153.P4654958274022212899

`∑[A335022(2*n+1)]+n`
-/

namespace A347153.P4654958274022212899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335022 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A347153.P4654958274022212899

namespace A347153

/-- `∑[A335022(2*n+1)]+n` -/
def P4654958274022212899.Spec : Prop :=
  ∀ n, P4654958274022212899.a n = A347153 (n + 1)

end A347153

/-! ## A347153.P7181395677085572952

`∑[A000203(2*n+1)]-(n+1)²`
-/

namespace A347153.P7181395677085572952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A347153.P7181395677085572952

namespace A347153

/-- `∑[A000203(2*n+1)]-(n+1)²` -/
def P7181395677085572952.Spec : Prop :=
  ∀ n, P7181395677085572952.a n = A347153 (n + 1)

end A347153

/-! ## A347153.P701156585209724758

`A326123(n+1)%A162395(n+1)`
-/

namespace A347153.P701156585209724758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326123 (n + 1)) (A162395 (n + 1))

end

end A347153.P701156585209724758

namespace A347153

/-- `A326123(n+1)%A162395(n+1)` -/
def P701156585209724758.Spec : Prop :=
  ∀ n, P701156585209724758.a n = A347153 (n + 1)

end A347153

/-! ## A347153.P3021792419023399067

`∑[A000203(2*n+1)-A000027(2*n+1)]`
-/

namespace A347153.P3021792419023399067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) - A000027 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347153.P3021792419023399067

namespace A347153

/-- `∑[A000203(2*n+1)-A000027(2*n+1)]` -/
def P3021792419023399067.Spec : Prop :=
  ∀ n, P3021792419023399067.a n = A347153 (n + 1)

end A347153

/-! ## A347153.P11276363791106100639

`∑[A000203(2*n+1)-A000265(2*n+1)]`
-/

namespace A347153.P11276363791106100639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * n + 1) - A000265 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347153.P11276363791106100639

namespace A347153

/-- `∑[A000203(2*n+1)-A000265(2*n+1)]` -/
def P11276363791106100639.Spec : Prop :=
  ∀ n, P11276363791106100639.a n = A347153 (n + 1)

end A347153

/-! ## A347153.P3579077867525974573

`∑[A000203(A005408(n))-A005408(n)]`
-/

namespace A347153.P3579077867525974573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A005408 n).toNat - A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347153.P3579077867525974573

namespace A347153

/-- `∑[A000203(A005408(n))-A005408(n)]` -/
def P3579077867525974573.Spec : Prop :=
  ∀ n, P3579077867525974573.a n = A347153 (n + 1)

end A347153

/-! ## A347153.P5519780014307238389

`∑[A091818(2*n+1)/2]`
-/

namespace A347153.P5519780014307238389
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (2 * n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347153.P5519780014307238389

namespace A347153

/-- `∑[A091818(2*n+1)/2]` -/
def P5519780014307238389.Spec : Prop :=
  ∀ n, P5519780014307238389.a n = (A347153 (n + 1) : ℚ)

end A347153

/-!
# A347154: Sum of all divisors, except the largest of every number, of the first n positive even numbers.

The programs for A347154, the canonical program `A347154.P13423401773943261477` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347154 has offset 1).

The definition of A347154 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A346870, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347154.P13423401773943261477

`n+1+A346870(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A347154

/-- `n+1+A346870(n+1)` -/
def P13423401773943261477.Spec : Prop :=
  ∀ n, P13423401773943261477.a n = A347154 (n + 1)

theorem P13423401773943261477.correct : P13423401773943261477.Spec := by
  intro n
  simp only [A347154, Nat.add_sub_cancel]

end A347154

/-! ## A347154.P12408888726583445254

`∑[∑{d}[2*(n+1), #]-2*(n+1)]`
-/

namespace A347154.P12408888726583445254
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347154.P12408888726583445254

namespace A347154

/-- `∑[∑{d}[2*(n+1), #]-2*(n+1)]` -/
def P12408888726583445254.Spec : Prop :=
  ∀ n, P12408888726583445254.a n = A347154 (n + 1)

end A347154

/-! ## A347154.P10441004288205283451

`∑[A346878(n+1)]`
-/

namespace A347154.P10441004288205283451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346878 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347154.P10441004288205283451

namespace A347154

/-- `∑[A346878(n+1)]` -/
def P10441004288205283451.Spec : Prop :=
  ∀ n, P10441004288205283451.a n = A347154 (n + 1)

end A347154

/-! ## A347154.P12060791785931030091

`∑[A346880(n+1)+1]`
-/

namespace A347154.P12060791785931030091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346880 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347154.P12060791785931030091

namespace A347154

/-- `∑[A346880(n+1)+1]` -/
def P12060791785931030091.Spec : Prop :=
  ∀ n, P12060791785931030091.a n = A347154 (n + 1)

end A347154

/-! ## A347154.P10504196361505205023

`∑[A281006(2*(n+1))-2]`
-/

namespace A347154.P10504196361505205023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281006 (2 * (n + 1)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347154.P10504196361505205023

namespace A347154

/-- `∑[A281006(2*(n+1))-2]` -/
def P10504196361505205023.Spec : Prop :=
  ∀ n, P10504196361505205023.a n = A347154 (n + 1)

end A347154

/-! ## A347154.P15444914835041054999

`∑[A318505(2*(n+1))+n+1]`
-/

namespace A347154.P15444914835041054999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318505 (2 * (n + 1)) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347154.P15444914835041054999

namespace A347154

/-- `∑[A318505(2*(n+1))+n+1]` -/
def P15444914835041054999.Spec : Prop :=
  ∀ n, P15444914835041054999.a n = A347154 (n + 1)

end A347154

/-! ## A347154.P14769136797987522429

`∑[A000203(2*(n+1))-2*(n+1)]`
-/

namespace A347154.P14769136797987522429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1)) - (2 * (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347154.P14769136797987522429

namespace A347154

/-- `∑[A000203(2*(n+1))-2*(n+1)]` -/
def P14769136797987522429.Spec : Prop :=
  ∀ n, P14769136797987522429.a n = A347154 (n + 1)

end A347154

/-! ## A347154.P5073755854273973172

`∑[A000203(n+2+n)-(n+2)-n]`
-/

namespace A347154.P5073755854273973172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2 + n) - (n + 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347154.P5073755854273973172

namespace A347154

/-- `∑[A000203(n+2+n)-(n+2)-n]` -/
def P5073755854273973172.Spec : Prop :=
  ∀ n, P5073755854273973172.a n = A347154 (n + 1)

end A347154

/-! ## A347154.P8140089453339059733

`∑[∑{d}[A004277(n+1), #]-Δ[n²]-1]`
-/

namespace A347154.P8140089453339059733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f2 n).natAbs, d : ℕ) : ℤ) - ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347154.P8140089453339059733

namespace A347154

/-- `∑[∑{d}[A004277(n+1), #]-Δ[n²]-1]` -/
def P8140089453339059733.Spec : Prop :=
  ∀ n, P8140089453339059733.a n = A347154 (n + 1)

end A347154

/-! ## A347154.P8299738741043191741

`a(n-1)+A000203(2*n+2)-2*(n+1)` with `a(0)=1`
-/

namespace A347154.P8299738741043191741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000203 (2 * n + 2) - (2 * (n + 1) : ℤ))

end

end A347154.P8299738741043191741

namespace A347154

/-- `a(n-1)+A000203(2*n+2)-2*(n+1)` -/
def P8299738741043191741.Spec : Prop :=
  ∀ n, P8299738741043191741.a n = A347154 (n + 1)

end A347154

/-! ## A347154.P5686833966619786080

`∑[A001065(n+1)+A001065(n+1)+A000593(n+1)]`
-/

namespace A347154.P5686833966619786080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A001065 (n + 1) + A000593 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347154.P5686833966619786080

namespace A347154

/-- `∑[A001065(n+1)+A001065(n+1)+A000593(n+1)]` -/
def P5686833966619786080.Spec : Prop :=
  ∀ n, P5686833966619786080.a n = A347154 (n + 1)

end A347154

/-! ## A347154.P18221319173254525767

`∑[A091818(2*(n+1))/2]`
-/

namespace A347154.P18221319173254525767
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347154.P18221319173254525767

namespace A347154

/-- `∑[A091818(2*(n+1))/2]` -/
def P18221319173254525767.Spec : Prop :=
  ∀ n, P18221319173254525767.a n = (A347154 (n + 1) : ℚ)

end A347154

/-! ## A347154.P7229962151822625006

`∑[A001065(2*(n+1))]`
-/

namespace A347154.P7229962151822625006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347154.P7229962151822625006

namespace A347154

/-- `∑[A001065(2*(n+1))]` -/
def P7229962151822625006.Spec : Prop :=
  ∀ n, P7229962151822625006.a n = A347154 (n + 1)

end A347154

/-! ## A347154.P4479949183432571063

`∑[A173455(2*(n+1))]`
-/

namespace A347154.P4479949183432571063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173455 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347154.P4479949183432571063

namespace A347154

/-- `∑[A173455(2*(n+1))]` -/
def P4479949183432571063.Spec : Prop :=
  ∀ n, P4479949183432571063.a n = A347154 (n + 1)

end A347154

/-! ## A347154.P12275891458159857729

`∑[A048050(2*(n+1))+1]`
-/

namespace A347154.P12275891458159857729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (2 * (n + 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347154.P12275891458159857729

namespace A347154

/-- `∑[A048050(2*(n+1))+1]` -/
def P12275891458159857729.Spec : Prop :=
  ∀ n, P12275891458159857729.a n = A347154 (n + 1)

end A347154

/-! ## A347154.P4242125536541518822

`A001065(n+2+n)+a(n-1)` with `a(0)=1`
-/

namespace A347154.P4242125536541518822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001065 (n + 2 + n) + a (n - 1)

end

end A347154.P4242125536541518822

namespace A347154

/-- `A001065(n+2+n)+a(n-1)` -/
def P4242125536541518822.Spec : Prop :=
  ∀ n, P4242125536541518822.a n = A347154 (n + 1)

end A347154

/-! ## A347154.P1532889540371699456

`(n+1)²-∑[A235796(2*(n+1))]`
-/

namespace A347154.P1532889540371699456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347154.P1532889540371699456

namespace A347154

/-- `(n+1)²-∑[A235796(2*(n+1))]` -/
def P1532889540371699456.Spec : Prop :=
  ∀ n, P1532889540371699456.a n = A347154 (n + 1)

end A347154

/-! ## A347154.P8529381916787453249

`A153485(2*(n+1))-A347153(n+1)`
-/

namespace A347154.P8529381916787453249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153485 (2 * (n + 1)) - A347153 (n + 1)

end

end A347154.P8529381916787453249

namespace A347154

/-- `A153485(2*(n+1))-A347153(n+1)` -/
def P8529381916787453249.Spec : Prop :=
  ∀ n, P8529381916787453249.a n = A347154 (n + 1)

end A347154

/-! ## A347154.P14490552856770682089

`∑[A131738(2*n+1)+A000203(2*(n+1))]`
-/

namespace A347154.P14490552856770682089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (2 * n + 1) + A000203 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A347154.P14490552856770682089

namespace A347154

/-- `∑[A131738(2*n+1)+A000203(2*(n+1))]` -/
def P14490552856770682089.Spec : Prop :=
  ∀ n, P14490552856770682089.a n = A347154 (n + 1)

end A347154

/-!
# A347155: Sum of divisors of nontriangular numbers.

The programs for A347155, the canonical program `A347155.P3964130699762740452` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347155 has offset 1).

The definition of A347155 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347155.P3964130699762740452

`A000203(n+1+round(sqrt(2*(n+1))))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A347155

/-- `A000203(n+1+round(sqrt(2*(n+1))))` -/
def P3964130699762740452.Spec : Prop :=
  ∀ n, P3964130699762740452.a n = A347155 (n + 1)

theorem P3964130699762740452.correct : P3964130699762740452.Spec := by
  intro n
  simp only [A347155, Nat.add_sub_cancel]

end A347155

/-! ## A347155.P17015363927680691961

`∑{d}[comp[∑[n]], #]`
-/

namespace A347155.P17015363927680691961
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A347155.P17015363927680691961

namespace A347155

/-- `∑{d}[comp[∑[n]], #]` -/
def P17015363927680691961.Spec : Prop :=
  ∀ n, (P17015363927680691961.a n : ℤ) = A347155 (n + 1)

end A347155

/-! ## A347155.P51545993733344504

`abs(∑{d}[comp[C(n, 2)], #]-n)+n`
-/

namespace A347155.P51545993733344504
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n : ℤ)| + (n : ℤ)

end

end A347155.P51545993733344504

namespace A347155

/-- `abs(∑{d}[comp[C(n, 2)], #]-n)+n` -/
def P51545993733344504.Spec : Prop :=
  ∀ n, P51545993733344504.a n = A347155 (n + 1)

end A347155

/-! ## A347155.P1325883151589240979

`∑{d}[∑[char[∑[n]]+1], #]%(5*8*n-23)`
-/

namespace A347155.P1325883151589240979
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) ((5 * (8 * n) : ℤ) - 23)

end

end A347155.P1325883151589240979

namespace A347155

/-- `∑{d}[∑[char[∑[n]]+1], #]%(5*8*n-23)` -/
def P1325883151589240979.Spec : Prop :=
  ∀ n, P1325883151589240979.a n = A347155 (n + 1)

end A347155

/-! ## A347155.P14481333407204937628

`A074400(comp[∑[n]])/2`
-/

namespace A347155.P14481333407204937628
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ) / 2

end

end A347155.P14481333407204937628

namespace A347155

/-- `A074400(comp[∑[n]])/2` -/
def P14481333407204937628.Spec : Prop :=
  ∀ n, P14481333407204937628.a n = (A347155 (n + 1) : ℚ)

end A347155

/-! ## A347155.P9541978160952462932

`abs(1-A000203(comp[C(n, 2)]))+1`
-/

namespace A347155.P9541978160952462932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)| + 1

end

end A347155.P9541978160952462932

namespace A347155

/-- `abs(1-A000203(comp[C(n, 2)]))+1` -/
def P9541978160952462932.Spec : Prop :=
  ∀ n, P9541978160952462932.a n = A347155 (n + 1)

end A347155

/-! ## A347155.P14939266762956612328

`A000203(∑[char[∑[n]]+1])%(n+2)²`
-/

namespace A347155.P14939266762956612328
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (∑ j ∈ Finset.range (n + 1), f1 j)) ((n + 2) ^ 2 : ℤ)

end

end A347155.P14939266762956612328

namespace A347155

/-- `A000203(∑[char[∑[n]]+1])%(n+2)²` -/
def P14939266762956612328.Spec : Prop :=
  ∀ n, P14939266762956612328.a n = A347155 (n + 1)

end A347155

/-! ## A347155.P3925639929784408035

`A008683(4*(n+1))+A000203(comp[C(n, 2)])`
-/

namespace A347155.P3925639929784408035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A347155.P3925639929784408035

namespace A347155

/-- `A008683(4*(n+1))+A000203(comp[C(n, 2)])` -/
def P3925639929784408035.Spec : Prop :=
  ∀ n, P3925639929784408035.a n = A347155 (n + 1)

end A347155

/-! ## A347155.P10904768566987797824

`A000203(comp[C(n, 2)])*A014963(4*n+10)`
-/

namespace A347155.P10904768566987797824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) * A014963 (4 * n + 10)

end

end A347155.P10904768566987797824

namespace A347155

/-- `A000203(comp[C(n, 2)])*A014963(4*n+10)` -/
def P10904768566987797824.Spec : Prop :=
  ∀ n, P10904768566987797824.a n = A347155 (n + 1)

end A347155

/-!
# A347156: Sum of squares of distinct prime divisors of n that are < sqrt(n).

The programs for A347156, the canonical program `A347156.P17222758382162862485` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347156 has offset 1).

The definition of A347156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347156.P18258604173373777921

`∑{p}[n+1, (#%A033677(n+1))²]`
-/

namespace A347156.P18258604173373777921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Int.tmod (p : ℤ) (A033677 (n + 1)) ^ 2

end

end A347156.P18258604173373777921

namespace A347156

/-- `∑{p}[n+1, (#%A033677(n+1))²]` -/
def P18258604173373777921.Spec : Prop :=
  ∀ n, P18258604173373777921.a n = A347156 (n + 1)

end A347156

/-! ## A347156.P10180401925399714737

`∑{p}[n+1, #²]-A097975(n+1)²`
-/

namespace A347156.P10180401925399714737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p ^ 2 : ℕ) : ℤ) - A097975 (n + 1) ^ 2

end

end A347156.P10180401925399714737

namespace A347156

/-- `∑{p}[n+1, #²]-A097975(n+1)²` -/
def P10180401925399714737.Spec : Prop :=
  ∀ n, P10180401925399714737.a n = A347156 (n + 1)

end A347156

/-! ## A347156.P17222758382162862485

`A098002(gcd(n+1, ∏{p}[n+1, (n+1)/#]))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A347156

/-- `A098002(gcd(n+1, ∏{p}[n+1, (n+1)/#]))` -/
def P17222758382162862485.Spec : Prop :=
  ∀ n, P17222758382162862485.a n = A347156 (n + 1)

theorem P17222758382162862485.correct : P17222758382162862485.Spec := by
  intro n
  simp only [A347156, Nat.add_sub_cancel]

end A347156

/-! ## A347156.P17280031403768336821

`A098002((n+1)/ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A347156.P17280031403768336821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098002 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ : ℚ))).toNat

end

end A347156.P17280031403768336821

namespace A347156

/-- `A098002((n+1)/ceil((n+1)/∏{p}[n+1, (n+1)/#]))` -/
def P17280031403768336821.Spec : Prop :=
  ∀ n, P17280031403768336821.a n = A347156 (n + 1)

end A347156

/-! ## A347156.P15328237741839903543

`A098002(A048671(n+1))`
-/

namespace A347156.P15328237741839903543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098002 (A048671 (n + 1)).toNat

end

end A347156.P15328237741839903543

namespace A347156

/-- `A098002(A048671(n+1))` -/
def P15328237741839903543.Spec : Prop :=
  ∀ n, P15328237741839903543.a n = A347156 (n + 1)

end A347156

/-! ## A347156.P6823630141260238772

`A005063(gcd(n+1, A214080(n)))`
-/

namespace A347156.P6823630141260238772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (Int.gcd (n + 1 : ℤ) (A214080 n))

end

end A347156.P6823630141260238772

namespace A347156

/-- `A005063(gcd(n+1, A214080(n)))` -/
def P6823630141260238772.Spec : Prop :=
  ∀ n, P6823630141260238772.a n = A347156 (n + 1)

end A347156

/-! ## A347156.P8754000822662016452

`A098002(n+1)%A377073(n+1)`
-/

namespace A347156.P8754000822662016452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098002 (n + 1)) (A377073 (n + 1))

end

end A347156.P8754000822662016452

namespace A347156

/-- `A098002(n+1)%A377073(n+1)` -/
def P8754000822662016452.Spec : Prop :=
  ∀ n, P8754000822662016452.a n = A347156 (n + 1)

end A347156

/-! ## A347156.P4651502173905946661

`∑{p}[A363520(n+1), #²]`
-/

namespace A347156.P4651502173905946661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363520 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 2

end

end A347156.P4651502173905946661

namespace A347156

/-- `∑{p}[A363520(n+1), #²]` -/
def P4651502173905946661.Spec : Prop :=
  ∀ n, (P4651502173905946661.a n : ℤ) = A347156 (n + 1)

end A347156

/-! ## A347156.P16145694233848499938

`A005063(A363520(n+1))`
-/

namespace A347156.P16145694233848499938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005063 (A363520 (n + 1)).toNat

end

end A347156.P16145694233848499938

namespace A347156

/-- `A005063(A363520(n+1))` -/
def P16145694233848499938.Spec : Prop :=
  ∀ n, P16145694233848499938.a n = A347156 (n + 1)

end A347156

/-!
# A347157: Sum of cubes of distinct prime divisors of n that are < sqrt(n).

The programs for A347157, the canonical program `A347157.P15772904919310723596` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347157 has offset 1).

The definition of A347157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347157.P15772904919310723596

`A347159(n+1)%((n+1)*∏{p}[n+1, #])`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A347157

/-- `A347159(n+1)%((n+1)*∏{p}[n+1, #])` -/
def P15772904919310723596.Spec : Prop :=
  ∀ n, P15772904919310723596.a n = A347157 (n + 1)

theorem P15772904919310723596.correct : P15772904919310723596.Spec := by
  intro n
  simp only [A347157, Nat.add_sub_cancel]

end A347157

/-! ## A347157.P15758054498982341227

`A347159(gcd(n+1, ∏{p}[n+1, (n+1)/#]))`
-/

namespace A347157.P15758054498982341227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347159 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))))

end

end A347157.P15758054498982341227

namespace A347157

/-- `A347159(gcd(n+1, ∏{p}[n+1, (n+1)/#]))` -/
def P15758054498982341227.Spec : Prop :=
  ∀ n, P15758054498982341227.a n = A347157 (n + 1)

end A347157

/-! ## A347157.P18163126535228360491

`A347159((n+1)/ceil((n+1)/∏{p}[n+1, (n+1)/#]))`
-/

namespace A347157.P18163126535228360491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347159 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ : ℚ))).toNat

end

end A347157.P18163126535228360491

namespace A347157

/-- `A347159((n+1)/ceil((n+1)/∏{p}[n+1, (n+1)/#]))` -/
def P18163126535228360491.Spec : Prop :=
  ∀ n, P18163126535228360491.a n = A347157 (n + 1)

end A347157

/-! ## A347157.P11044946763807158219

`A347159(A048671(n+1))`
-/

namespace A347157.P11044946763807158219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347159 (A048671 (n + 1)).toNat

end

end A347157.P11044946763807158219

namespace A347157

/-- `A347159(A048671(n+1))` -/
def P11044946763807158219.Spec : Prop :=
  ∀ n, P11044946763807158219.a n = A347157 (n + 1)

end A347157

/-! ## A347157.P7906183849885882374

`A347159((n+1)/A014963(n+1))`
-/

namespace A347157.P7906183849885882374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347159 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 (n + 1) : ℚ))).toNat

end

end A347157.P7906183849885882374

namespace A347157

/-- `A347159((n+1)/A014963(n+1))` -/
def P7906183849885882374.Spec : Prop :=
  ∀ n, P7906183849885882374.a n = A347157 (n + 1)

end A347157

/-! ## A347157.P1996628230947760913

`A347159(n+1)%A007955(n+1)`
-/

namespace A347157.P1996628230947760913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347159 (n + 1)) (A007955 (n + 1))

end

end A347157.P1996628230947760913

namespace A347157

/-- `A347159(n+1)%A007955(n+1)` -/
def P1996628230947760913.Spec : Prop :=
  ∀ n, P1996628230947760913.a n = A347157 (n + 1)

end A347157

/-! ## A347157.P15507089100459319719

`A005064(A363520(n+1))`
-/

namespace A347157.P15507089100459319719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A363520 (n + 1)).toNat

end

end A347157.P15507089100459319719

namespace A347157

/-- `A005064(A363520(n+1))` -/
def P15507089100459319719.Spec : Prop :=
  ∀ n, P15507089100459319719.a n = A347157 (n + 1)

end A347157

/-!
# A347158: Sum of 4th powers of distinct prime divisors of n that are < sqrt(n).

The programs for A347158, the canonical program `A347158.P10542600853201840676` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347158 has offset 1).

The definition of A347158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347158.P5416320412809688483

`∑{p}[n+1, #^4]%A323136(n+1)²`
-/

namespace A347158.P5416320412809688483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ p ∈ Nat.primeFactors (f1 n), p ^ 4 : ℕ) : ℤ) (A323136 (n + 1) ^ 2)

end

end A347158.P5416320412809688483

namespace A347158

/-- `∑{p}[n+1, #^4]%A323136(n+1)²` -/
def P5416320412809688483.Spec : Prop :=
  ∀ n, P5416320412809688483.a n = A347158 (n + 1)

end A347158

/-! ## A347158.P10542600853201840676

`A347160(gcd(n+1, ∏{p}[n+1, (n+1)/#]))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A347158

/-- `A347160(gcd(n+1, ∏{p}[n+1, (n+1)/#]))` -/
def P10542600853201840676.Spec : Prop :=
  ∀ n, P10542600853201840676.a n = A347158 (n + 1)

theorem P10542600853201840676.correct : P10542600853201840676.Spec := by
  intro n
  simp only [A347158, Nat.add_sub_cancel]

end A347158

/-! ## A347158.P15508010168070115950

`A347160(A048671(n+1))`
-/

namespace A347158.P15508010168070115950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347160 (A048671 (n + 1)).toNat

end

end A347158.P15508010168070115950

namespace A347158

/-- `A347160(A048671(n+1))` -/
def P15508010168070115950.Spec : Prop :=
  ∀ n, P15508010168070115950.a n = A347158 (n + 1)

end A347158

/-! ## A347158.P7916629299897576842

`A347160((n+1)/A014963(n+1))`
-/

namespace A347158.P7916629299897576842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347160 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 (n + 1) : ℚ))).toNat

end

end A347158.P7916629299897576842

namespace A347158

/-- `A347160((n+1)/A014963(n+1))` -/
def P7916629299897576842.Spec : Prop :=
  ∀ n, P7916629299897576842.a n = A347158 (n + 1)

end A347158

/-! ## A347158.P5315764116851993295

`A347160(gcd(∏{d}[n+1, #]/(n+1), ∑[2*n]))`
-/

namespace A347158.P5315764116851993295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347160 (Int.gcd (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (n + 1 : ℚ))) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ))

end

end A347158.P5315764116851993295

namespace A347158

/-- `A347160(gcd(∏{d}[n+1, #]/(n+1), ∑[2*n]))` -/
def P5315764116851993295.Spec : Prop :=
  ∀ n, P5315764116851993295.a n = A347158 (n + 1)

end A347158

/-! ## A347158.P8623388483579222733

`A347160(n+1)%A007955(n+1)`
-/

namespace A347158.P8623388483579222733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347160 (n + 1)) (A007955 (n + 1))

end

end A347158.P8623388483579222733

namespace A347158

/-- `A347160(n+1)%A007955(n+1)` -/
def P8623388483579222733.Spec : Prop :=
  ∀ n, P8623388483579222733.a n = A347158 (n + 1)

end A347158

/-! ## A347158.P15666675867045851146

`A347160(gcd(n+1, A007956(n+1)))`
-/

namespace A347158.P15666675867045851146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347160 (Int.gcd (n + 1 : ℤ) (A007956 (n + 1)))

end

end A347158.P15666675867045851146

namespace A347158

/-- `A347160(gcd(n+1, A007956(n+1)))` -/
def P15666675867045851146.Spec : Prop :=
  ∀ n, P15666675867045851146.a n = A347158 (n + 1)

end A347158

/-! ## A347158.P12363338174896047894

`∑{p}[A363520(n+1), #²²]`
-/

namespace A347158.P12363338174896047894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363520 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p ^ 2) ^ 2

end

end A347158.P12363338174896047894

namespace A347158

/-- `∑{p}[A363520(n+1), #²²]` -/
def P12363338174896047894.Spec : Prop :=
  ∀ n, (P12363338174896047894.a n : ℤ) = A347158 (n + 1)

end A347158

/-! ## A347158.P3944927197977751342

`∑{p}[A072499(A048671(n+1)), A000583(#)]`
-/

namespace A347158.P3944927197977751342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (A048671 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000583 p

end

end A347158.P3944927197977751342

namespace A347158

/-- `∑{p}[A072499(A048671(n+1)), A000583(#)]` -/
def P3944927197977751342.Spec : Prop :=
  ∀ n, P3944927197977751342.a n = A347158 (n + 1)

end A347158

/-! ## A347158.P7061390762015747958

`A005065(A363520(n+1))`
-/

namespace A347158.P7061390762015747958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (A363520 (n + 1)).toNat

end

end A347158.P7061390762015747958

namespace A347158

/-- `A005065(A363520(n+1))` -/
def P7061390762015747958.Spec : Prop :=
  ∀ n, P7061390762015747958.a n = A347158 (n + 1)

end A347158

/-! ## A347158.P8551217236726232569

`A005065(A072499(n+1))%(n+1)²`
-/

namespace A347158.P8551217236726232569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005065 (A072499 (n + 1)).toNat) ((n + 1) ^ 2 : ℤ)

end

end A347158.P8551217236726232569

namespace A347158

/-- `A005065(A072499(n+1))%(n+1)²` -/
def P8551217236726232569.Spec : Prop :=
  ∀ n, P8551217236726232569.a n = A347158 (n + 1)

end A347158

/-!
# A347159: Sum of cubes of distinct prime divisors of n that are <= sqrt(n).

The programs for A347159, the canonical program `A347159.P4391116051064256813` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347159 has offset 1).

The definition of A347159 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347159.P4391116051064256813

`∑{p}[A072504(n+1), #^3]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A347159

/-- `∑{p}[A072504(n+1), #^3]` -/
def P4391116051064256813.Spec : Prop :=
  ∀ n, (P4391116051064256813.a n : ℤ) = A347159 (n + 1)

theorem P4391116051064256813.correct : P4391116051064256813.Spec := by
  intro n
  simp only [A347159, Nat.add_sub_cancel]

end A347159

/-! ## A347159.P9663961437645282276

`A005064(A072504(n+1))`
-/

namespace A347159.P9663961437645282276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A072504 (n + 1)).toNat

end

end A347159.P9663961437645282276

namespace A347159

/-- `A005064(A072504(n+1))` -/
def P9663961437645282276.Spec : Prop :=
  ∀ n, P9663961437645282276.a n = A347159 (n + 1)

end A347159

/-! ## A347159.P3077344806129036595

`A005064(A382486(n+1))`
-/

namespace A347159.P3077344806129036595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A382486 (n + 1)).toNat

end

end A347159.P3077344806129036595

namespace A347159

/-- `A005064(A382486(n+1))` -/
def P3077344806129036595.Spec : Prop :=
  ∀ n, P3077344806129036595.a n = A347159 (n + 1)

end A347159

/-! ## A347159.P41986477468754800

`A347157(A175068(n+1))`
-/

namespace A347159.P41986477468754800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347157 (A175068 (n + 1)).toNat

end

end A347159.P41986477468754800

namespace A347159

/-- `A347157(A175068(n+1))` -/
def P41986477468754800.Spec : Prop :=
  ∀ n, P41986477468754800.a n = A347159 (n + 1)

end A347159

/-! ## A347159.P14401335785262274400

`∑{p}[A072499(n+1), #^3]`
-/

namespace A347159.P14401335785262274400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 3

end

end A347159.P14401335785262274400

namespace A347159

/-- `∑{p}[A072499(n+1), #^3]` -/
def P14401335785262274400.Spec : Prop :=
  ∀ n, (P14401335785262274400.a n : ℤ) = A347159 (n + 1)

end A347159

/-! ## A347159.P13410791288648151622

`A224787(∏{p}[A072499(n+1), #])`
-/

namespace A347159.P13410791288648151622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224787 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A347159.P13410791288648151622

namespace A347159

/-- `A224787(∏{p}[A072499(n+1), #])` -/
def P13410791288648151622.Spec : Prop :=
  ∀ n, P13410791288648151622.a n = A347159 (n + 1)

end A347159

/-! ## A347159.P8211979608068068527

`A005064(A396068(n+1))`
-/

namespace A347159.P8211979608068068527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A396068 (n + 1)).toNat

end

end A347159.P8211979608068068527

namespace A347159

/-- `A005064(A396068(n+1))` -/
def P8211979608068068527.Spec : Prop :=
  ∀ n, P8211979608068068527.a n = A347159 (n + 1)

end A347159

/-! ## A347159.P13009993246705810594

`A005064(A064446(n+1)/A015053(n+1))`
-/

namespace A347159.P13009993246705810594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (SequenceMachineLib.roundAway ((A064446 (n + 1) : ℚ) / (A015053 (n + 1) : ℚ))).toNat

end

end A347159.P13009993246705810594

namespace A347159

/-- `A005064(A064446(n+1)/A015053(n+1))` -/
def P13009993246705810594.Spec : Prop :=
  ∀ n, P13009993246705810594.a n = A347159 (n + 1)

end A347159

/-! ## A347159.P6983694905486030708

`A005064(A072499(n+1))`
-/

namespace A347159.P6983694905486030708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A072499 (n + 1)).toNat

end

end A347159.P6983694905486030708

namespace A347159

/-- `A005064(A072499(n+1))` -/
def P6983694905486030708.Spec : Prop :=
  ∀ n, P6983694905486030708.a n = A347159 (n + 1)

end A347159

/-! ## A347159.P9995429640502189336

`A005064(A072500(n+1)/A072501(n+1))`
-/

namespace A347159.P9995429640502189336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (SequenceMachineLib.roundAway ((A072500 (n + 1) : ℚ) / (A072501 (n + 1) : ℚ))).toNat

end

end A347159.P9995429640502189336

namespace A347159

/-- `A005064(A072500(n+1)/A072501(n+1))` -/
def P9995429640502189336.Spec : Prop :=
  ∀ n, P9995429640502189336.a n = A347159 (n + 1)

end A347159

/-! ## A347159.P7747200435063502256

`A347157(A140580(n+1))`
-/

namespace A347159.P7747200435063502256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347157 (A140580 (n + 1)).toNat

end

end A347159.P7747200435063502256

namespace A347159

/-- `A347157(A140580(n+1))` -/
def P7747200435063502256.Spec : Prop :=
  ∀ n, P7747200435063502256.a n = A347159 (n + 1)

end A347159

/-!
# A347160: Sum of 4th powers of distinct prime divisors of n that are <= sqrt(n).

The programs for A347160, the canonical program `A347160.P12328861730165408120` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347160 has offset 1).

The definition of A347160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347160.P12328861730165408120

`∑{p}[A072504(n+1), #^4]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A347160

/-- `∑{p}[A072504(n+1), #^4]` -/
def P12328861730165408120.Spec : Prop :=
  ∀ n, (P12328861730165408120.a n : ℤ) = A347160 (n + 1)

theorem P12328861730165408120.correct : P12328861730165408120.Spec := by
  intro n
  simp only [A347160, Nat.add_sub_cancel]

end A347160

/-! ## A347160.P13853944654414933770

`A005065(A072504(n+1))`
-/

namespace A347160.P13853944654414933770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (A072504 (n + 1)).toNat

end

end A347160.P13853944654414933770

namespace A347160

/-- `A005065(A072504(n+1))` -/
def P13853944654414933770.Spec : Prop :=
  ∀ n, P13853944654414933770.a n = A347160 (n + 1)

end A347160

/-! ## A347160.P8295229726438552132

`A005065(A382486(n+1))`
-/

namespace A347160.P8295229726438552132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (A382486 (n + 1)).toNat

end

end A347160.P8295229726438552132

namespace A347160

/-- `A005065(A382486(n+1))` -/
def P8295229726438552132.Spec : Prop :=
  ∀ n, P8295229726438552132.a n = A347160 (n + 1)

end A347160

/-! ## A347160.P14679154537620976732

`A005065(gcd(n+1, A085056(n+1)))`
-/

namespace A347160.P14679154537620976732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (Int.gcd (n + 1 : ℤ) (A085056 (n + 1)))

end

end A347160.P14679154537620976732

namespace A347160

/-- `A005065(gcd(n+1, A085056(n+1)))` -/
def P14679154537620976732.Spec : Prop :=
  ∀ n, P14679154537620976732.a n = A347160 (n + 1)

end A347160

/-! ## A347160.P8842206284554708860

`A347158(A175068(n+1))`
-/

namespace A347160.P8842206284554708860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347158 (A175068 (n + 1)).toNat

end

end A347160.P8842206284554708860

namespace A347160

/-- `A347158(A175068(n+1))` -/
def P8842206284554708860.Spec : Prop :=
  ∀ n, P8842206284554708860.a n = A347160 (n + 1)

end A347160

/-! ## A347160.P5401427259167747552

`∑{p}[A072499(n+1), #^4]`
-/

namespace A347160.P5401427259167747552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072499 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 4

end

end A347160.P5401427259167747552

namespace A347160

/-- `∑{p}[A072499(n+1), #^4]` -/
def P5401427259167747552.Spec : Prop :=
  ∀ n, (P5401427259167747552.a n : ℤ) = A347160 (n + 1)

end A347160

/-! ## A347160.P3837878787563527054

`A005065(A396068(n+1))`
-/

namespace A347160.P3837878787563527054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (A396068 (n + 1)).toNat

end

end A347160.P3837878787563527054

namespace A347160

/-- `A005065(A396068(n+1))` -/
def P3837878787563527054.Spec : Prop :=
  ∀ n, P3837878787563527054.a n = A347160 (n + 1)

end A347160

/-! ## A347160.P18275843271358109349

`A005065(A064446(n+1)/A007947(n+1))`
-/

namespace A347160.P18275843271358109349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (SequenceMachineLib.roundAway ((A064446 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A347160.P18275843271358109349

namespace A347160

/-- `A005065(A064446(n+1)/A007947(n+1))` -/
def P18275843271358109349.Spec : Prop :=
  ∀ n, P18275843271358109349.a n = A347160 (n + 1)

end A347160

/-! ## A347160.P10819848735020701221

`A005065(A072499(n+1))`
-/

namespace A347160.P10819848735020701221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005065 (A072499 (n + 1)).toNat

end

end A347160.P10819848735020701221

namespace A347160

/-- `A005065(A072499(n+1))` -/
def P10819848735020701221.Spec : Prop :=
  ∀ n, P10819848735020701221.a n = A347160 (n + 1)

end A347160

/-! ## A347160.P10449090046472274949

`A347158(A140580(n+1))`
-/

namespace A347160.P10449090046472274949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347158 (A140580 (n + 1)).toNat

end

end A347160.P10449090046472274949

namespace A347160

/-- `A347158(A140580(n+1))` -/
def P10449090046472274949.Spec : Prop :=
  ∀ n, P10449090046472274949.a n = A347160 (n + 1)

end A347160

/-!
# A347161: Sum of squares of odd divisors of n that are < sqrt(n).

The programs for A347161, there is no canonical definition to state claims against.
-/

/-! ## A347161.P12126360301814414858

`A347173(n+1)%A346595(n+1)`
-/

namespace A347161.P12126360301814414858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347173 (n + 1)) (A346595 (n + 1))

end

end A347161.P12126360301814414858

/-! ## A347161.P14467097518971541929

`A067693(A347172(n+1))`
-/

namespace A347161.P14467097518971541929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067693 (A347172 (n + 1)).toNat

end

end A347161.P14467097518971541929

/-! ## A347161.P18272673695081248727

`A118088(A347162(n+1))`
-/

namespace A347161.P18272673695081248727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118088 (A347162 (n + 1)).toNat

end

end A347161.P18272673695081248727

/-! ## A347161.P11053156790239293385

`A319856(A347162(n+1)+1)`
-/

namespace A347161.P11053156790239293385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319856 (A347162 (n + 1) + 1).toNat

end

end A347161.P11053156790239293385

/-! ## A347161.P17876573215237744949

`and(A285694(n+1), A339353(n+1))`
-/

namespace A347161.P17876573215237744949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285694 (n + 1)) (A339353 (n + 1))

end

end A347161.P17876573215237744949

/-!
# A347162: Sum of cubes of odd divisors of n that are < sqrt(n).

The programs for A347162, there is no canonical definition to state claims against.
-/

/-! ## A347162.P13311824504616734465

`A347174(n+1)%A346595(n+1)`
-/

namespace A347162.P13311824504616734465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347174 (n + 1)) (A346595 (n + 1))

end

end A347162.P13311824504616734465

/-! ## A347162.P4354817091340033120

`A000384(A333807(n+1)%A192366(n))`
-/

namespace A347162.P4354817091340033120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (Int.tmod (A333807 (n + 1)) (A192366 n)).toNat

end

end A347162.P4354817091340033120

/-! ## A347162.P8393452680733149063

`A117599(A347161(n+1))`
-/

namespace A347162.P8393452680733149063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117599 (A347161 (n + 1)).toNat

end

end A347162.P8393452680733149063

/-! ## A347162.P2770323925225408320

`A118088(A347172(n+1))`
-/

namespace A347162.P2770323925225408320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118088 (A347172 (n + 1)).toNat

end

end A347162.P2770323925225408320

/-! ## A347162.P2071309011922719535

`A326358(A333807(n+1))-1`
-/

namespace A347162.P2071309011922719535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326358 (A333807 (n + 1)).toNat - 1

end

end A347162.P2071309011922719535

/-!
# A347163: Primes p such that 10*p can be written as a^2+b^2 where a and b are prime.

The programs for A347163, there is no canonical definition to state claims against.
-/

/-! ## A347163.P6052387556191455623

`p?[record[A076309(A045636(n+1))]]`
-/

namespace A347163.P6052387556191455623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076309 (A045636 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347163.P6052387556191455623

/-! ## A347163.P7011254393599017684

`p?[A004151(2*A143850(n+1))]`
-/

namespace A347163.P7011254393599017684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (2 * A143850 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347163.P7011254393599017684

/-! ## A347163.P5632087350165225332

`p?[A004151(A005843(A143850(n+1)))]`
-/

namespace A347163.P5632087350165225332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A005843 (A143850 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347163.P5632087350165225332

/-! ## A347163.P17268399721878961445

`p?[3*n-A011642(A007431(n))]`
-/

namespace A347163.P17268399721878961445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - A011642 (A007431 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347163.P17268399721878961445

/-! ## A347163.P18247428954973115724

`∩[A110134(n+1), A344620(n+1)]`
-/

namespace A347163.P18247428954973115724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347163.P18247428954973115724

/-!
# A347165: Primes p such that 2*p-1 and (2*p-1)^2+(2*p)^2 are also prime.

The programs for A347165, there is no canonical definition to state claims against.
-/

/-! ## A347165.P6865587485489862908

`p?[A072480(A158526(n+1)+1)]`
-/

namespace A347165.P6865587485489862908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A158526 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347165.P6865587485489862908

/-! ## A347165.P17662731866262869264

`p?[A072480(A000203(A158526(n+1)))]`
-/

namespace A347165.P17662731866262869264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A000203 (A158526 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347165.P17662731866262869264

/-! ## A347165.P14212207045616944801

`p?[A000463(A158526(n+1))]`
-/

namespace A347165.P14212207045616944801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A158526 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A347165.P14212207045616944801

/-!
# A347167: Numbers k such that phi(binomial(k,2)) is a power of 2.

The programs for A347167, there is no canonical definition to state claims against.
-/

/-! ## A347167.P11600137537191051728

`A382803(n+1)+1`
-/

namespace A347167.P11600137537191051728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382803 (n + 1) + 1

end

end A347167.P11600137537191051728

/-! ## A347167.P14103300458889707496

`A283526(n)+char[Δ[A007400(n)]]`
-/

namespace A347167.P14103300458889707496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007400 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283526 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A347167.P14103300458889707496

/-! ## A347167.P12611723837576257791

`∩[A003401(n+1)+1, A003401(n+1)]`
-/

namespace A347167.P12611723837576257791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A347167.P12611723837576257791

/-! ## A347167.P14812443631544770235

`A283526(n)+A133080(A074323(n))`
-/

namespace A347167.P14812443631544770235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283526 n + A133080 (A074323 n).toNat

end

end A347167.P14812443631544770235

/-! ## A347167.P13856598310899213103

`A283526(n)+A036987(A224809(n))`
-/

namespace A347167.P13856598310899213103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283526 n + A036987 (A224809 n).toNat

end

end A347167.P13856598310899213103

/-!
# A347169: Numbers k for which sigma(k)/k = 16/7.

The programs for A347169, there is no canonical definition to state claims against.
-/

/-! ## A347169.P5195041478199375577

`A218409(A147788(n)-A342462(n))`
-/

namespace A347169.P5195041478199375577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218409 (A147788 n - A342462 n).toNat

end

end A347169.P5195041478199375577

/-!
# A347170: The lexicographically earliest sequence with a(1) = 1 and Omega(a(i) + a(k)) = 3 for i < k <= n.

The programs for A347170, there is no canonical definition to state claims against.
-/

/-! ## A347170.P5442281826823726462

`or(n, A153184(∏{p}[n+1, #]!^(2*n)^(n%2)))`
-/

namespace A347170.P5442281826823726462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A153184 (Nat.factorial (∏ p ∈ Nat.primeFactors (f1 n), p) ^ (2 * n) ^ (n % 2)))

end

end A347170.P5442281826823726462

/-!
# A347171: Triangle read by rows where T(n,k) is the sum of Golay-Rudin-Shapiro terms GRS(j) (A020985) for j in the range 0 <= j < 2^n and having binary weight wt(j) = A000120(j) = k.

The programs for A347171, the canonical program `A347171.P4104809019570709730` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347171 has offset 0).

The definition of A347171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A347171.P4104809019570709730

`T(n-1,k)-T(n-1,k-1)+2*T(n-2,k-1)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A347171

/-- `T(n-1,k)-T(n-1,k-1)+2*T(n-2,k-1)` -/
def P4104809019570709730.Spec : Prop :=
  ∀ n, P4104809019570709730.a n = A347171 n

theorem P4104809019570709730.correct : P4104809019570709730.Spec := by
  intro n
  simp only [A347171]

end A347171

/-!
# A347172: Sum of 4th powers of odd divisors of n that are < sqrt(n).

The programs for A347172, there is no canonical definition to state claims against.
-/

/-! ## A347172.P8973046352653237054

`A347175(n+1)%A197722(n+1)`
-/

namespace A347172.P8973046352653237054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A347175 (n + 1)) (A197722 (n + 1))

end

end A347172.P8973046352653237054

/-! ## A347172.P13537025949349230042

`A118089(A347162(n+1))`
-/

namespace A347172.P13537025949349230042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118089 (A347162 (n + 1)).toNat

end

end A347172.P13537025949349230042

/-! ## A347172.P1453126382542076896

`A098072(A333807(n+1)+1)`
-/

namespace A347172.P1453126382542076896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098072 (A333807 (n + 1) + 1).toNat

end

end A347172.P1453126382542076896

/-! ## A347172.P11619538402576926202

`A001366(4^A333805(n+1))`
-/

namespace A347172.P11619538402576926202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001366 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A333805 (n + 1) : ℤ))).toNat

end

end A347172.P11619538402576926202

/-! ## A347172.P8287741723191266931

`∑{d}[A347162(n+1), A144081(#)]`
-/

namespace A347172.P8287741723191266931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347162 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A144081 d

end

end A347172.P8287741723191266931

/-!
# A347173: Sum of squares of odd divisors of n that are <= sqrt(n).

The programs for A347173, there is no canonical definition to state claims against.
-/

/-! ## A347173.P9875012907068105076

`A069293(A328407(n+1))%A339563(n+1)`
-/

namespace A347173.P9875012907068105076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069293 (A328407 (n + 1)).toNat) (A339563 (n + 1))

end

end A347173.P9875012907068105076

/-! ## A347173.P3921958806504173503

`A069293(lcm(A069293(n+2), A328407(n+1)))`
-/

namespace A347173.P3921958806504173503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069293 (Int.lcm (A069293 (n + 2)) (A328407 (n + 1)))

end

end A347173.P3921958806504173503

/-! ## A347173.P4762619945048044489

`A069293(A328407(n+1))*A140997(∑[n+2])`
-/

namespace A347173.P4762619945048044489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069293 (A328407 (n + 1)).toNat * A140997 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A347173.P4762619945048044489

/-! ## A347173.P3459892321315587478

`A097367(A347175(n+1))`
-/

namespace A347173.P3459892321315587478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097367 (A347175 (n + 1)).toNat

end

end A347173.P3459892321315587478

/-! ## A347173.P5277803943736544093

`A360159(A064446(n+1))`
-/

namespace A347173.P5277803943736544093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360159 (A064446 (n + 1)).toNat

end

end A347173.P5277803943736544093

/-!
# A347174: Sum of cubes of odd divisors of n that are <= sqrt(n).

The programs for A347174, there is no canonical definition to state claims against.
-/

/-! ## A347174.P16923025178199986378

`A005067(A072499(n+1)²)+1`
-/

namespace A347174.P16923025178199986378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005067 (A072499 (n + 1) ^ 2).toNat + 1

end

end A347174.P16923025178199986378

/-! ## A347174.P11871172877775183679

`A347162(A217581(n+1)*A296520(2*(n+1)))`
-/

namespace A347174.P11871172877775183679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347162 (A217581 (n + 1) * A296520 (2 * (n + 1))).toNat

end

end A347174.P11871172877775183679

/-! ## A347174.P2746472399134662113

`A040200(A284669(n+1))`
-/

namespace A347174.P2746472399134662113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040200 (A284669 (n + 1)).toNat

end

end A347174.P2746472399134662113

/-! ## A347174.P5746139259735165760

`A097567(A347175(n+1))`
-/

namespace A347174.P5746139259735165760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097567 (A347175 (n + 1)).toNat

end

end A347174.P5746139259735165760

/-! ## A347174.P6879821370531036734

`A323581(A347173(n+1))`
-/

namespace A347174.P6879821370531036734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323581 (A347173 (n + 1)).toNat

end

end A347174.P6879821370531036734

/-!
# A347175: Sum of 4th powers of odd divisors of n that are <= sqrt(n).

The programs for A347175, there is no canonical definition to state claims against.
-/

/-! ## A347175.P5359561929312677936

`A077473(A347174(n+1))`
-/

namespace A347175.P5359561929312677936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077473 (A347174 (n + 1)).toNat

end

end A347175.P5359561929312677936

/-! ## A347175.P7171886453047030263

`A079574(A217581(n+1)!)`
-/

namespace A347175.P7171886453047030263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079574 (Nat.factorial (A217581 (n + 1)).toNat)

end

end A347175.P7171886453047030263

/-! ## A347175.P3545041428266215320

`A102759(A217581(n+1)!)`
-/

namespace A347175.P3545041428266215320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102759 (Nat.factorial (A217581 (n + 1)).toNat)

end

end A347175.P3545041428266215320

/-! ## A347175.P596221660370325210

`A062766(A347173(n+1))-1`
-/

namespace A347175.P596221660370325210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062766 (A347173 (n + 1)).toNat - 1

end

end A347175.P596221660370325210

/-! ## A347175.P8333770051813329397

`A083277(A347173(n+1)²²)`
-/

namespace A347175.P8333770051813329397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 ((A347173 (n + 1) ^ 2) ^ 2).toNat

end

end A347175.P8333770051813329397

/-!
# A347176: G.f.: Sum_{k>=1} (-1)^(k+1) * k * x^(k^2) / (1 - x^(k^2)).

The programs for A347176, the canonical program `A347176.P15524223857312001555` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347176 has offset 1).

The definition of A347176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A347176.P15524223857312001555

`A002129(∏{p}[n+1, #^val(n+1, #²)])`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A347176

/-- `A002129(∏{p}[n+1, #^val(n+1, #²)])` -/
def P15524223857312001555.Spec : Prop :=
  ∀ n, P15524223857312001555.a n = A347176 (n + 1)

theorem P15524223857312001555.correct : P15524223857312001555.Spec := by
  intro n
  simp only [A347176, Nat.add_sub_cancel]

end A347176

/-! ## A347176.P13285883396346710204

`A122858(∏{p}[n+1, #^val(n+1, #²)])/8`
-/

namespace A347176.P13285883396346710204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122858 (∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) : ℚ) / 8

end

end A347176.P13285883396346710204

namespace A347176

/-- `A122858(∏{p}[n+1, #^val(n+1, #²)])/8` -/
def P13285883396346710204.Spec : Prop :=
  ∀ n, P13285883396346710204.a n = (A347176 (n + 1) : ℚ)

end A347176

/-! ## A347176.P4901234462856183959

`∑{d}[∏{p}[n+1, #^val(n+1, #²)], A181983(#)]`
-/

namespace A347176.P4901234462856183959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A181983 d

end

end A347176.P4901234462856183959

namespace A347176

/-- `∑{d}[∏{p}[n+1, #^val(n+1, #²)], A181983(#)]` -/
def P4901234462856183959.Spec : Prop :=
  ∀ n, P4901234462856183959.a n = A347176 (n + 1)

end A347176

/-! ## A347176.P5812689880157444601

`A002129(A000188(n+1))`
-/

namespace A347176.P5812689880157444601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (A000188 (n + 1)).toNat

end

end A347176.P5812689880157444601

namespace A347176

/-- `A002129(A000188(n+1))` -/
def P5812689880157444601.Spec : Prop :=
  ∀ n, P5812689880157444601.a n = A347176 (n + 1)

end A347176

/-! ## A347176.P3469432363903586719

`A002129(sqrt(A008833(n+1)))`
-/

namespace A347176.P3469432363903586719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat

end

end A347176.P3469432363903586719

namespace A347176

/-- `A002129(sqrt(A008833(n+1)))` -/
def P3469432363903586719.Spec : Prop :=
  ∀ n, P3469432363903586719.a n = A347176 (n + 1)

end A347176

/-! ## A347176.P15878912168559486072

`A002129(A057918(n+1)+1)`
-/

namespace A347176.P15878912168559486072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (A057918 (n + 1) + 1).toNat

end

end A347176.P15878912168559486072

namespace A347176

/-- `A002129(A057918(n+1)+1)` -/
def P15878912168559486072.Spec : Prop :=
  ∀ n, P15878912168559486072.a n = A347176 (n + 1)

end A347176

/-! ## A347176.P8128141731970182562

`∑{d}[A000188(n+1), A181983(#)]`
-/

namespace A347176.P8128141731970182562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A181983 d

end

end A347176.P8128141731970182562

namespace A347176

/-- `∑{d}[A000188(n+1), A181983(#)]` -/
def P8128141731970182562.Spec : Prop :=
  ∀ n, P8128141731970182562.a n = A347176 (n + 1)

end A347176

/-! ## A347176.P3994185604691084074

`A002129((n+1)/A019554(n+1))`
-/

namespace A347176.P3994185604691084074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002129 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A019554 (n + 1) : ℚ))).toNat

end

end A347176.P3994185604691084074

namespace A347176

/-- `A002129((n+1)/A019554(n+1))` -/
def P3994185604691084074.Spec : Prop :=
  ∀ n, P3994185604691084074.a n = A347176 (n + 1)

end A347176

/-! ## A347176.P17674687174213632540

`∑{d}[A000188(n+1), A162395(#)/#]`
-/

namespace A347176.P17674687174213632540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A162395 d : ℚ) / (d : ℚ)

end

end A347176.P17674687174213632540

namespace A347176

/-- `∑{d}[A000188(n+1), A162395(#)/#]` -/
def P17674687174213632540.Spec : Prop :=
  ∀ n, P17674687174213632540.a n = (A347176 (n + 1) : ℚ)

end A347176

/-! ## A347176.P10633105638074093331

`2*A360163(n+1)-A069290(n+1)`
-/

namespace A347176.P10633105638074093331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A360163 (n + 1) - A069290 (n + 1)

end

end A347176.P10633105638074093331

namespace A347176

/-- `2*A360163(n+1)-A069290(n+1)` -/
def P10633105638074093331.Spec : Prop :=
  ∀ n, P10633105638074093331.a n = A347176 (n + 1)

end A347176

/-!
# A347179: a(1) = 1; for n > 1, a(n) = smallest distinct positive integer such that gcd(a(n),a(n-k)) = 1, where k is each divisor of a(n) and n - k >= 1.

The programs for A347179, there is no canonical definition to state claims against.
-/

/-! ## A347179.P8477910351624585793

`A347406(n+1)-A184955(A027581(n))`
-/

namespace A347179.P8477910351624585793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347406 (n + 1) - A184955 (A027581 n).toNat

end

end A347179.P8477910351624585793

/-! ## A347179.P17265976704836655317

`A347406(A246088(n+1)%A347391(n+1))`
-/

namespace A347179.P17265976704836655317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347406 (Int.tmod (A246088 (n + 1)) (A347391 (n + 1))).toNat

end

end A347179.P17265976704836655317

/-! ## A347179.P12161195941092880499

`A347406(C(n+1, n/gcd(n, or(1, n+2))!))`
-/

namespace A347179.P12161195941092880499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347406 (Nat.choose (n + 1) (SequenceMachineLib.roundAway ((n : ℚ) / (Nat.factorial (Nat.gcd n (Nat.lor 1 (n + 2))) : ℚ))).toNat)

end

end A347179.P12161195941092880499

/-! ## A347179.P17982761992606934229

`A347406(A043317(n+1))`
-/

namespace A347179.P17982761992606934229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347406 (A043317 (n + 1)).toNat

end

end A347179.P17982761992606934229

/-! ## A347179.P11670504489108166931

`A347406(A044914(n+1))`
-/

namespace A347179.P11670504489108166931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347406 (A044914 (n + 1)).toNat

end

end A347179.P11670504489108166931

/-!
# A347181: Lexicographically earliest sequence of distinct positive integers such that the first digit of a(n) is visible in a(n) + a(n+1).

The programs for A347181, there is no canonical definition to state claims against.
-/

/-! ## A347181.P3858538955878500518

`A333774(record[A225644(3*n)])`
-/

namespace A347181.P3858538955878500518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225644 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333774 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A347181.P3858538955878500518

/-!
# A347187: Triangle read by rows T(n,k), (n,k>=0), with row/diagonal sums to overpartitions/partitions isomorphic to binomial coefficient sums to 2^n/F(n) (Fibonacci numbers) on Pascal's triangle.

The programs for A347187, there is no canonical definition to state claims against.
-/

/-! ## A347187.P17186572982792963493

`A246869(A174449(n))`
-/

namespace A347187.P17186572982792963493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246869 (A174449 n).toNat

end

end A347187.P17186572982792963493

/-! ## A347187.P3816035416467696114

`A038605(4*A167040(n))`
-/

namespace A347187.P3816035416467696114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038605 (4 * A167040 n).toNat

end

end A347187.P3816035416467696114

/-! ## A347187.P11939234575108968585

`A373812(floor(sqrt(A174377(n))))`
-/

namespace A347187.P11939234575108968585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373812 (Int.sqrt (A174377 n)).toNat

end

end A347187.P11939234575108968585

/-! ## A347187.P7690756685120379101

`A373812(round(sqrt(A174377(n))))`
-/

namespace A347187.P7690756685120379101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373812 (SequenceMachineLib.roundAway (Real.sqrt (A174377 n : ℝ))).toNat

end

end A347187.P7690756685120379101

/-! ## A347187.P4410916994150668500

`A134914((n+2)^A004197(n))`
-/

namespace A347187.P4410916994150668500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134914 (SequenceMachineLib.roundAway ((n + 2 : ℚ) ^ (A004197 n : ℤ))).toNat

end

end A347187.P4410916994150668500

/-!
# A347188: a(n) = A346422(4*A003754(n-1) + 3) for n > 1 with a(1) = 1.

The programs for A347188, the canonical program `A347188.P3985644836251358168` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347188 has offset 1).

The definition of A347188 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A130312, A200649, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347188.P3985644836251358168

`(1+A200649(n+1))*a(n-A130312(n))` with `a(0)=1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A347188

/-- `(1+A200649(n+1))*a(n-A130312(n))` -/
def P3985644836251358168.Spec : Prop :=
  ∀ n, P3985644836251358168.a n = A347188 (n + 1)

theorem P3985644836251358168.correct : P3985644836251358168.Spec := by
  intro n
  simp only [A347188, Nat.add_sub_cancel]

end A347188

/-! ## A347188.P1113883197602077753

`A284005(A348366(n))`
-/

namespace A347188.P1113883197602077753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284005 (A348366 n).toNat

end

end A347188.P1113883197602077753

namespace A347188

/-- `A284005(A348366(n))` -/
def P1113883197602077753.Spec : Prop :=
  ∀ n, P1113883197602077753.a n = A347188 (n + 1)

end A347188

/-! ## A347188.P5784333731790866373

`A346422(A003754(floor(n*ϕ²)+2))`
-/

namespace A347188.P5784333731790866373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346422 (A003754 (⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ + 2).toNat).toNat

end

end A347188.P5784333731790866373

namespace A347188

/-- `A346422(A003754(floor(n*ϕ²)+2))` -/
def P5784333731790866373.Spec : Prop :=
  ∀ n, P5784333731790866373.a n = A347188 (n + 1)

end A347188

/-! ## A347188.P17112234533119388764

`A346422(eq[A087960(n), A227350(n)])`
-/

namespace A347188.P17112234533119388764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346422 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A347188.P17112234533119388764

namespace A347188

/-- `A346422(eq[A087960(n), A227350(n)])` -/
def P17112234533119388764.Spec : Prop :=
  ∀ n, P17112234533119388764.a n = A347188 (n + 1)

end A347188

/-!
# A347189: Positive integers that can be expressed as the sum of powers of their digits (from right to left) with consecutive natural exponents.

The programs for A347189, there is no canonical definition to state claims against.
-/

/-! ## A347189.P6323565594847193759

`A134703(A246087(a(n-1)+2))` with `a(0)=1`
-/

namespace A347189.P6323565594847193759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A134703 (A246087 (a (n - 1) + 2).toNat).toNat

end

end A347189.P6323565594847193759

/-!
# A347190: Numbers k with positive integer solutions a,b,c such that 2*a^2 + b^2 = c^2, k = a + b + c, and a <= b <= c.

The programs for A347190, there is no canonical definition to state claims against.
-/

/-! ## A347190.P7638461876992300129

`2*A338855(A061147(n+1))`
-/

namespace A347190.P7638461876992300129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338855 (A061147 (n + 1)).toNat

end

end A347190.P7638461876992300129

/-! ## A347190.P1971213019879100180

`A182702(C(2*A338855(n+1)+1, 2))`
-/

namespace A347190.P1971213019879100180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182702 (Nat.choose (2 * A338855 (n + 1) + 1).toNat 2)

end

end A347190.P1971213019879100180

/-! ## A347190.P2497013695018695366

`A338855(A061147(n+1))+A338855(n+1)`
-/

namespace A347190.P2497013695018695366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338855 (A061147 (n + 1)).toNat + A338855 (n + 1)

end

end A347190.P2497013695018695366

/-! ## A347190.P12839687225091059820

`A000005(A005479(n+1))*A338855(n+1)`
-/

namespace A347190.P12839687225091059820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005479 (n + 1)).toNat * A338855 (n + 1)

end

end A347190.P12839687225091059820

/-! ## A347190.P6807237763268909497

`A000005(A007351(n+1))*A338855(n+1)`
-/

namespace A347190.P6807237763268909497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007351 (n + 1)).toNat * A338855 (n + 1)

end

end A347190.P6807237763268909497

/-!
# A347191: Number of divisors of n^2-1.

The programs for A347191, the canonical program `A347191.P18363374623534057677` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A347191 has offset 2).

The definition of A347191 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A129296, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A347191.P18363374623534057677

`2*A129296(n+2)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A347191

/-- `2*A129296(n+2)` -/
def P18363374623534057677.Spec : Prop :=
  ∀ n, P18363374623534057677.a n = A347191 (n + 2)

theorem P18363374623534057677.correct : P18363374623534057677.Spec := by
  intro n
  simp only [A347191, Nat.add_sub_cancel]

end A347191

/-! ## A347191.P14197531322197098197

`A000005((n+2)²-1)`
-/

namespace A347191.P14197531322197098197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 2) ^ 2 - 1)

end

end A347191.P14197531322197098197

namespace A347191

/-- `A000005((n+2)²-1)` -/
def P14197531322197098197.Spec : Prop :=
  ∀ n, P14197531322197098197.a n = A347191 (n + 2)

end A347191

/-! ## A347191.P5882718519659267063

`2*(A066728(n+1)+1)`
-/

namespace A347191.P5882718519659267063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A066728 (n + 1) + 1)

end

end A347191.P5882718519659267063

namespace A347191

/-- `2*(A066728(n+1)+1)` -/
def P5882718519659267063.Spec : Prop :=
  ∀ n, P5882718519659267063.a n = A347191 (n + 2)

end A347191

/-! ## A347191.P6490043685008158140

`A004277(A129296(n+2))`
-/

namespace A347191.P6490043685008158140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A129296 (n + 2)).toNat

end

end A347191.P6490043685008158140

namespace A347191

/-- `A004277(A129296(n+2))` -/
def P6490043685008158140.Spec : Prop :=
  ∀ n, P6490043685008158140.a n = A347191 (n + 2)

end A347191

/-! ## A347191.P10466833185176565194

`A059907(n+2)+A000005(n+1)`
-/

namespace A347191.P10466833185176565194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059907 (n + 2) + A000005 (n + 1)

end

end A347191.P10466833185176565194

namespace A347191

/-- `A059907(n+2)+A000005(n+1)` -/
def P10466833185176565194.Spec : Prop :=
  ∀ n, P10466833185176565194.a n = A347191 (n + 2)

end A347191

/-! ## A347191.P10423588458684047607

`A048691(n+1)+A059907(n+2)-A055205(n+1)`
-/

namespace A347191.P10423588458684047607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (n + 1) + (A059907 (n + 2) - A055205 (n + 1))

end

end A347191.P10423588458684047607

namespace A347191

/-- `A048691(n+1)+A059907(n+2)-A055205(n+1)` -/
def P10423588458684047607.Spec : Prop :=
  ∀ n, P10423588458684047607.a n = A347191 (n + 2)

end A347191

/-! ## A347191.P2725728594797626916

`∏{e}[A278160(n+1), #+1]`
-/

namespace A347191.P2725728594797626916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278160 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A347191.P2725728594797626916

namespace A347191

/-- `∏{e}[A278160(n+1), #+1]` -/
def P2725728594797626916.Spec : Prop :=
  ∀ n, (P2725728594797626916.a n : ℤ) = A347191 (n + 2)

end A347191

/-! ## A347191.P4432654823109489287

`∏{e}[1-(n+2)², #+1]`
-/

namespace A347191.P4432654823109489287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n + 2) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A347191.P4432654823109489287

namespace A347191

/-- `∏{e}[1-(n+2)², #+1]` -/
def P4432654823109489287.Spec : Prop :=
  ∀ n, (P4432654823109489287.a n : ℤ) = A347191 (n + 2)

end A347191

/-! ## A347191.P10200285536974312454

`∑{d}[1-(n+2)², ceil(acot(#))]`
-/

namespace A347191.P10200285536974312454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n + 2) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, ⌈SequenceMachineLib.acot (d : ℝ)⌉

end

end A347191.P10200285536974312454

namespace A347191

/-- `∑{d}[1-(n+2)², ceil(acot(#))]` -/
def P10200285536974312454.Spec : Prop :=
  ∀ n, P10200285536974312454.a n = A347191 (n + 2)

end A347191

/-! ## A347191.P8040902425062584070

`∑{d}[(n+2)²-1, (#%2)!]`
-/

namespace A347191.P8040902425062584070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.factorial (d % 2)

end

end A347191.P8040902425062584070

namespace A347191

/-- `∑{d}[(n+2)²-1, (#%2)!]` -/
def P8040902425062584070.Spec : Prop :=
  ∀ n, (P8040902425062584070.a n : ℤ) = A347191 (n + 2)

end A347191

/-! ## A347191.P1948263002212584223

`∑{d}[(n+2)²-1, and(1, #)!]`
-/

namespace A347191.P1948263002212584223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ 2 : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.factorial (Nat.land 1 d)

end

end A347191.P1948263002212584223

namespace A347191

/-- `∑{d}[(n+2)²-1, and(1, #)!]` -/
def P1948263002212584223.Spec : Prop :=
  ∀ n, (P1948263002212584223.a n : ℤ) = A347191 (n + 2)

end A347191

/-! ## A347191.P61368500275915493

`∑{d}[1-(n+2)², gcd(#, n+2)]`
-/

namespace A347191.P61368500275915493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((n + 2) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Nat.gcd d (n + 2)

end

end A347191.P61368500275915493

namespace A347191

/-- `∑{d}[1-(n+2)², gcd(#, n+2)]` -/
def P61368500275915493.Spec : Prop :=
  ∀ n, (P61368500275915493.a n : ℤ) = A347191 (n + 2)

end A347191

/-! ## A347191.P240071898931891081

`∑{d}[(n+1)*(n+3), ceil(1/#)]`
-/

namespace A347191.P240071898931891081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉

end

end A347191.P240071898931891081

namespace A347191

/-- `∑{d}[(n+1)*(n+3), ceil(1/#)]` -/
def P240071898931891081.Spec : Prop :=
  ∀ n, P240071898931891081.a n = A347191 (n + 2)

end A347191

/-! ## A347191.P10340720114141236230

`lcm(2, A000005(∑[2*n+3]))`
-/

namespace A347191.P10340720114141236230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A000005 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A347191.P10340720114141236230

namespace A347191

/-- `lcm(2, A000005(∑[2*n+3]))` -/
def P10340720114141236230.Spec : Prop :=
  ∀ n, (P10340720114141236230.a n : ℤ) = A347191 (n + 2)

end A347191

/-! ## A347191.P10943990108652721466

`and(-2, A000005((n+3)*(n+1)))`
-/

namespace A347191.P10943990108652721466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A000005 ((n + 3) * (n + 1)))

end

end A347191.P10943990108652721466

namespace A347191

/-- `and(-2, A000005((n+3)*(n+1)))` -/
def P10943990108652721466.Spec : Prop :=
  ∀ n, P10943990108652721466.a n = A347191 (n + 2)

end A347191

/-! ## A347191.P9546261738118578744

`A000005((n+1)*(n+3))+and(2, n²)`
-/

namespace A347191.P9546261738118578744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 1) * (n + 3)) + (Nat.land 2 (n ^ 2) : ℤ)

end

end A347191.P9546261738118578744

namespace A347191

/-- `A000005((n+1)*(n+3))+and(2, n²)` -/
def P9546261738118578744.Spec : Prop :=
  ∀ n, P9546261738118578744.a n = A347191 (n + 2)

end A347191

/-! ## A347191.P7294138184597049239

`Δ[A000005(n*(n+2))+a(n-1)]` with `a(0)=0`
-/

namespace A347191.P7294138184597049239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A000005 (n * (n + 2)) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A347191.P7294138184597049239

namespace A347191

/-- `Δ[A000005(n*(n+2))+a(n-1)]` -/
def P7294138184597049239.Spec : Prop :=
  ∀ n, P7294138184597049239.a n = A347191 (n + 2)

end A347191

/-! ## A347191.P5850165933063635125

`A000005((n+1)*(n+3))%A000040(n+2)`
-/

namespace A347191.P5850165933063635125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 ((n + 1) * (n + 3))) (A000040 (n + 2))

end

end A347191.P5850165933063635125

namespace A347191

/-- `A000005((n+1)*(n+3))%A000040(n+2)` -/
def P5850165933063635125.Spec : Prop :=
  ∀ n, P5850165933063635125.a n = A347191 (n + 2)

end A347191

/-!
# A347192: Integers k such that the number of divisors of k^2 - 1 (A347191) sets a new record.

The programs for A347192, there is no canonical definition to state claims against.
-/

/-! ## A347192.P7006227969589688953

`A335325(A043316(n+1))`
-/

namespace A347192.P7006227969589688953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335325 (A043316 (n + 1)).toNat

end

end A347192.P7006227969589688953

/-! ## A347192.P5954120805123182454

`A335325(A044913(n+1))`
-/

namespace A347192.P5954120805123182454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335325 (A044913 (n + 1)).toNat

end

end A347192.P5954120805123182454

/-! ## A347192.P17993693652878077776

`A335325(A049872(n+1))`
-/

namespace A347192.P17993693652878077776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335325 (A049872 (n + 1)).toNat

end

end A347192.P17993693652878077776

/-! ## A347192.P18317778203525758263

`A335325(A061147(n+1))`
-/

namespace A347192.P18317778203525758263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335325 (A061147 (n + 1)).toNat

end

end A347192.P18317778203525758263

/-! ## A347192.P5501432949190992377

`A335325(A061497(n+1))`
-/

namespace A347192.P5501432949190992377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335325 (A061497 (n + 1)).toNat

end

end A347192.P5501432949190992377

/-!
# A347194: Numbers such that the two adjacent integers are a prime and the square of another prime.

The programs for A347194, there is no canonical definition to state claims against.
-/

/-! ## A347194.P17700031555792710863

`A049002(n+1)+gcd(6, A108540(n+1))`
-/

namespace A347194.P17700031555792710863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049002 (n + 1) + (Int.gcd 6 (A108540 (n + 1)) : ℤ)

end

end A347194.P17700031555792710863

/-! ## A347194.P15255677662974303565

`1+A288305(2*n+3)`
-/

namespace A347194.P15255677662974303565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A288305 (2 * n + 3)

end

end A347194.P15255677662974303565

/-! ## A347194.P18332612891110862801

`A288305(n+3+n)+1`
-/

namespace A347194.P18332612891110862801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288305 (n + 3 + n) + 1

end

end A347194.P18332612891110862801

/-! ## A347194.P1435447452062139502

`eq[3, A129296(A028310(n))]`
-/

namespace A347194.P1435447452062139502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129296 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A347194.P1435447452062139502

/-! ## A347194.P469917594701665325

`A195013(A288305(2*n+3))`
-/

namespace A347194.P469917594701665325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195013 (A288305 (2 * n + 3)).toNat

end

end A347194.P469917594701665325

/-!
# A347198: Consider the sequence of binary words of integers, LSB to MSB S(k) = ( 0; 1; 01; 11; 001; 101; 011; ... ). Start with a(0) = 0, extend this sequence with the minimum number of [0;1] such that it contains S(1) then S(2) and so forth, as sub-strings with LSB at any a(n). We extend the sequence as much as required to include S(k) first, in the next step we extend until it includes S(k+1) too.

The programs for A347198, there is no canonical definition to state claims against.
-/

/-! ## A347198.P13623543726695248317

`A189673(or(A189687(n+1), A269812(n)))`
-/

namespace A347198.P13623543726695248317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (Int.lor (A189687 (n + 1)) (A269812 n)).toNat

end

end A347198.P13623543726695248317

/-! ## A347198.P5652213413231463078

`A087049(A363626(n)+A008833(n+1))`
-/

namespace A347198.P5652213413231463078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087049 (A363626 n + A008833 (n + 1)).toNat

end

end A347198.P5652213413231463078

/-! ## A347198.P1755312406143412107

`A369001(A237593(3*n+4)^A054106(n))`
-/

namespace A347198.P1755312406143412107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369001 (SequenceMachineLib.roundAway ((A237593 (3 * n + 4) : ℚ) ^ (A054106 n : ℤ))).toNat

end

end A347198.P1755312406143412107

/-! ## A347198.P1512929593155006977

`A273129(A044876(3*n+1)*A163382(n+1))`
-/

namespace A347198.P1512929593155006977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273129 (A044876 (3 * n + 1) * A163382 (n + 1)).toNat

end

end A347198.P1512929593155006977

