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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
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
import Seq.B003.C005
import Seq.B003.C006
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
# A070800: Smallest prime greater than phi(n): a(n) = nextprime(phi(n)).

The programs for A070800, the canonical program `A070800.P10333098883038954083` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070800 has offset 2).

The definition of A070800 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070800.P10333098883038954083

`A151800(A000010(n+2))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A070800

/-- `A151800(A000010(n+2))` -/
def P10333098883038954083.Spec : Prop :=
  ∀ n, P10333098883038954083.a n = A070800 (n + 2)

theorem P10333098883038954083.correct : P10333098883038954083.Spec := by
  intro n
  simp only [A070800, Nat.add_sub_cancel]

end A070800

/-! ## A070800.P12914898446736278009

`A000040(1+A000720(A000010(n+2)))`
-/

namespace A070800.P12914898446736278009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (1 + A000720 (A000010 (n + 2)).toNat).toNat

end

end A070800.P12914898446736278009

namespace A070800

/-- `A000040(1+A000720(A000010(n+2)))` -/
def P12914898446736278009.Spec : Prop :=
  ∀ n, P12914898446736278009.a n = A070800 (n + 2)

end A070800

/-! ## A070800.P6899689501214050350

`A151800(A078773(n+2))`
-/

namespace A070800.P6899689501214050350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A078773 (n + 2)).toNat

end

end A070800.P6899689501214050350

namespace A070800

/-- `A151800(A078773(n+2))` -/
def P6899689501214050350.Spec : Prop :=
  ∀ n, P6899689501214050350.a n = A070800 (n + 2)

end A070800

/-! ## A070800.P15979192611198396841

`A151800(Δ[A002088(n+1)])`
-/

namespace A070800.P15979192611198396841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (n + 1) - f1 n).toNat

end

end A070800.P15979192611198396841

namespace A070800

/-- `A151800(Δ[A002088(n+1)])` -/
def P15979192611198396841.Spec : Prop :=
  ∀ n, P15979192611198396841.a n = A070800 (n + 2)

end A070800

/-! ## A070800.P18045598811561757402

`A151800(Δ[A005728(n+1)])`
-/

namespace A070800.P18045598811561757402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (n + 1) - f1 n).toNat

end

end A070800.P18045598811561757402

namespace A070800

/-- `A151800(Δ[A005728(n+1)])` -/
def P18045598811561757402.Spec : Prop :=
  ∀ n, P18045598811561757402.a n = A070800 (n + 2)

end A070800

/-! ## A070800.P1192124809979300743

`A007918(A000010(n+2)+1)`
-/

namespace A070800.P1192124809979300743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A000010 (n + 2) + 1).toNat

end

end A070800.P1192124809979300743

namespace A070800

/-- `A007918(A000010(n+2)+1)` -/
def P1192124809979300743.Spec : Prop :=
  ∀ n, P1192124809979300743.a n = A070800 (n + 2)

end A070800

/-! ## A070800.P17949979099418906742

`A070801(n+2)-A070802(n+2)`
-/

namespace A070800.P17949979099418906742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070801 (n + 2) - A070802 (n + 2)

end

end A070800.P17949979099418906742

namespace A070800

/-- `A070801(n+2)-A070802(n+2)` -/
def P17949979099418906742.Spec : Prop :=
  ∀ n, P17949979099418906742.a n = A070800 (n + 2)

theorem P17949979099418906742.correct : P17949979099418906742.Spec := by
  intro n
  simp only [A070800, Nat.add_sub_cancel, A070800.P17949979099418906742.a, A070800.P10333098883038954083.a, A000010, A000010.P4673923239450215316.a, A070801, A070801.P1990675938953888760.a, A070802, A070802.P9494168428163023846.a, A151800, A151800.P4570031678714564115.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A007917, A007917.P1836476777957611455.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070800

/-! ## A070800.P9310753751042233508

`A151800(A353643(n+2)*A353644(n+2))`
-/

namespace A070800.P9310753751042233508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A353643 (n + 2) * A353644 (n + 2)).toNat

end

end A070800.P9310753751042233508

namespace A070800

/-- `A151800(A353643(n+2)*A353644(n+2))` -/
def P9310753751042233508.Spec : Prop :=
  ∀ n, P9310753751042233508.a n = A070800 (n + 2)

end A070800

/-! ## A070800.P5640122804170457897

`A007918(A039649(n+2))`
-/

namespace A070800.P5640122804170457897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A039649 (n + 2)).toNat

end

end A070800.P5640122804170457897

namespace A070800

/-- `A007918(A039649(n+2))` -/
def P5640122804170457897.Spec : Prop :=
  ∀ n, P5640122804170457897.a n = A070800 (n + 2)

end A070800

/-! ## A070800.P6137196546797917352

`A151800(Δ[Δ[A049688(n)]])`
-/

namespace A070800.P6137196546797917352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049688 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (f1 (n + 1) - f1 n).toNat

end

end A070800.P6137196546797917352

namespace A070800

/-- `A151800(Δ[Δ[A049688(n)]])` -/
def P6137196546797917352.Spec : Prop :=
  ∀ n, P6137196546797917352.a n = A070800 (n + 2)

end A070800

/-! ## A070800.P14894115712249518680

`A000040(A070804(n+2)+1)`
-/

namespace A070800.P14894115712249518680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A070804 (n + 2) + 1).toNat

end

end A070800.P14894115712249518680

namespace A070800

/-- `A000040(A070804(n+2)+1)` -/
def P14894115712249518680.Spec : Prop :=
  ∀ n, P14894115712249518680.a n = A070800 (n + 2)

end A070800

/-! ## A070800.P12223451990340023523

`A151800(A109606(n+2)+1)`
-/

namespace A070800.P12223451990340023523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A109606 (n + 2) + 1).toNat

end

end A070800.P12223451990340023523

namespace A070800

/-- `A151800(A109606(n+2)+1)` -/
def P12223451990340023523.Spec : Prop :=
  ∀ n, P12223451990340023523.a n = A070800 (n + 2)

theorem P12223451990340023523.correct : P12223451990340023523.Spec := by
  intro n
  simp only [A070800, Nat.add_sub_cancel, A070800.P12223451990340023523.a, A070800.P10333098883038954083.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A151800, A151800.P4570031678714564115.a, A003557, A003557.P6364735403900941810.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070800

/-! ## A070800.P14071520556512698284

`A008578(A070804(n+2)+2)`
-/

namespace A070800.P14071520556512698284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A070804 (n + 2) + 2).toNat

end

end A070800.P14071520556512698284

namespace A070800

/-- `A008578(A070804(n+2)+2)` -/
def P14071520556512698284.Spec : Prop :=
  ∀ n, P14071520556512698284.a n = A070800 (n + 2)

end A070800

/-! ## A070800.P18429252810500783653

`A151800(A039649(n+2)-1)`
-/

namespace A070800.P18429252810500783653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A039649 (n + 2) - 1).toNat

end

end A070800.P18429252810500783653

namespace A070800

/-- `A151800(A039649(n+2)-1)` -/
def P18429252810500783653.Spec : Prop :=
  ∀ n, P18429252810500783653.a n = A070800 (n + 2)

theorem P18429252810500783653.correct : P18429252810500783653.Spec := by
  intro n
  simp only [A070800, Nat.add_sub_cancel, A070800.P18429252810500783653.a, A070800.P10333098883038954083.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A151800, A151800.P4570031678714564115.a, A003557, A003557.P6364735403900941810.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070800

/-! ## A070800.P17499877835355729223

`A182986(A070804(n+2)+2)`
-/

namespace A070800.P17499877835355729223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A070804 (n + 2) + 2).toNat

end

end A070800.P17499877835355729223

namespace A070800

/-- `A182986(A070804(n+2)+2)` -/
def P17499877835355729223.Spec : Prop :=
  ∀ n, P17499877835355729223.a n = A070800 (n + 2)

end A070800

/-! ## A070800.P16875212321340460919

`A007918(Δ[Δ[A103116(n)]]+1)`
-/

namespace A070800.P16875212321340460919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103116 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (f1 (n + 1) - f1 n + 1).toNat

end

end A070800.P16875212321340460919

namespace A070800

/-- `A007918(Δ[Δ[A103116(n)]]+1)` -/
def P16875212321340460919.Spec : Prop :=
  ∀ n, P16875212321340460919.a n = A070800 (n + 2)

end A070800

/-! ## A070800.P12026494461659942772

`A072917(n+2)+A000010(n+2)`
-/

namespace A070800.P12026494461659942772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072917 (n + 2) + A000010 (n + 2)

end

end A070800.P12026494461659942772

namespace A070800

/-- `A072917(n+2)+A000010(n+2)` -/
def P12026494461659942772.Spec : Prop :=
  ∀ n, P12026494461659942772.a n = A070800 (n + 2)

end A070800

/-! ## A070800.P17709801308151506112

`A151800(2-A051953(n+2)+n)`
-/

namespace A070800.P17709801308151506112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (2 - A051953 (n + 2) + (n : ℤ)).toNat

end

end A070800.P17709801308151506112

namespace A070800

/-- `A151800(2-A051953(n+2)+n)` -/
def P17709801308151506112.Spec : Prop :=
  ∀ n, P17709801308151506112.a n = A070800 (n + 2)

theorem P17709801308151506112.correct : P17709801308151506112.Spec := by
  intro n
  simp only [A070800, Nat.add_sub_cancel, A070800.P17709801308151506112.a, A070800.P10333098883038954083.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A151800, A151800.P4570031678714564115.a, A003557, A003557.P6364735403900941810.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070800

/-! ## A070800.P7519822460679110620

`A151800(A003968(n+2)-A348971(n+2))`
-/

namespace A070800.P7519822460679110620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A003968 (n + 2) - A348971 (n + 2)).toNat

end

end A070800.P7519822460679110620

namespace A070800

/-- `A151800(A003968(n+2)-A348971(n+2))` -/
def P7519822460679110620.Spec : Prop :=
  ∀ n, P7519822460679110620.a n = A070800 (n + 2)

theorem P7519822460679110620.correct : P7519822460679110620.Spec := by
  intro n
  simp only [A070800, Nat.add_sub_cancel, A070800.P7519822460679110620.a, A070800.P10333098883038954083.a, A000010, A000010.P4673923239450215316.a, A003968, A003968.P10961526323602588276.a, A151800, A151800.P4570031678714564115.a, A348971, A348971.P11156141318395468406.a, A001615, A001615.P12078511981713404634.a, A003557, A003557.P6364735403900941810.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A167338, A167338.P16855439668138890439.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003959, A003959.P4118819690015594160.f1, A003959.P4118819690015594160.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008864, A008864.P9177617808325052279.a, A014963, A014963.P5975177236000282614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070800

/-! ## A070800.P4440916176002093404

`A151800(A063994(n+2)*A247074(n+2))`
-/

namespace A070800.P4440916176002093404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A063994 (n + 2) * A247074 (n + 2)).toNat

end

end A070800.P4440916176002093404

namespace A070800

/-- `A151800(A063994(n+2)*A247074(n+2))` -/
def P4440916176002093404.Spec : Prop :=
  ∀ n, P4440916176002093404.a n = A070800 (n + 2)

end A070800

/-!
# A070801: Largest prime <= sigma(n): a(n) = prevprime(sigma(n)), where prevprime(n) = A007917(n), the largest prime less than or equal to n.

The programs for A070801, the canonical program `A070801.P1990675938953888760` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070801 has offset 2).

The definition of A070801 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070801.P1990675938953888760

`A007917(A000203(n+2))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A070801

/-- `A007917(A000203(n+2))` -/
def P1990675938953888760.Spec : Prop :=
  ∀ n, P1990675938953888760.a n = A070801 (n + 2)

theorem P1990675938953888760.correct : P1990675938953888760.Spec := by
  intro n
  simp only [A070801, Nat.add_sub_cancel]

end A070801

/-! ## A070801.P7640490739211315213

`A000040(A000720(∑{d}[n+2, #]))`
-/

namespace A070801.P7640490739211315213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (∑ d ∈ Nat.divisors (f1 n), d)).toNat

end

end A070801.P7640490739211315213

namespace A070801

/-- `A000040(A000720(∑{d}[n+2, #]))` -/
def P7640490739211315213.Spec : Prop :=
  ∀ n, P7640490739211315213.a n = A070801 (n + 2)

end A070801

/-! ## A070801.P18099875059656485658

`A070802(n+2)+A070800(n+2)`
-/

namespace A070801.P18099875059656485658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070802 (n + 2) + A070800 (n + 2)

end

end A070801.P18099875059656485658

namespace A070801

/-- `A070802(n+2)+A070800(n+2)` -/
def P18099875059656485658.Spec : Prop :=
  ∀ n, P18099875059656485658.a n = A070801 (n + 2)

theorem P18099875059656485658.correct : P18099875059656485658.Spec := by
  intro n
  simp only [A070801, Nat.add_sub_cancel, A070801.P18099875059656485658.a, A070801.P1990675938953888760.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007917, A007917.P1836476777957611455.a, A070800, A070800.P10333098883038954083.a, A070802, A070802.P9494168428163023846.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A151800, A151800.P4570031678714564115.a, A003557, A003557.P6364735403900941810.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070801

/-! ## A070801.P6060101553616701877

`A000040(A070803(n+2))`
-/

namespace A070801.P6060101553616701877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A070803 (n + 2)).toNat

end

end A070801.P6060101553616701877

namespace A070801

/-- `A000040(A070803(n+2))` -/
def P6060101553616701877.Spec : Prop :=
  ∀ n, P6060101553616701877.a n = A070801 (n + 2)

end A070801

/-! ## A070801.P11131496068344311826

`A060265(A368582(n+2))`
-/

namespace A070801.P11131496068344311826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060265 (A368582 (n + 2)).toNat

end

end A070801.P11131496068344311826

namespace A070801

/-- `A060265(A368582(n+2))` -/
def P11131496068344311826.Spec : Prop :=
  ∀ n, P11131496068344311826.a n = A070801 (n + 2)

end A070801

/-! ## A070801.P6224104155973647697

`A000040(A000720(A000720(A067161(n+2))))`
-/

namespace A070801.P6224104155973647697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A000720 (A067161 (n + 2)).toNat).toNat).toNat

end

end A070801.P6224104155973647697

namespace A070801

/-- `A000040(A000720(A000720(A067161(n+2))))` -/
def P6224104155973647697.Spec : Prop :=
  ∀ n, P6224104155973647697.a n = A070801 (n + 2)

end A070801

/-! ## A070801.P7001642740441558617

`A055377(A074400(n+2))`
-/

namespace A070801.P7001642740441558617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (A074400 (n + 2)).toNat

end

end A070801.P7001642740441558617

namespace A070801

/-- `A055377(A074400(n+2))` -/
def P7001642740441558617.Spec : Prop :=
  ∀ n, P7001642740441558617.a n = A070801 (n + 2)

end A070801

/-! ## A070801.P5765649575703558456

`A136548(A000203(n+2)+1)`
-/

namespace A070801.P5765649575703558456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A000203 (n + 2) + 1).toNat

end

end A070801.P5765649575703558456

namespace A070801

/-- `A136548(A000203(n+2)+1)` -/
def P5765649575703558456.Spec : Prop :=
  ∀ n, P5765649575703558456.a n = A070801 (n + 2)

end A070801

/-! ## A070801.P18017062911053053388

`A055377(2*A000203(n+2))`
-/

namespace A070801.P18017062911053053388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055377 (2 * A000203 (n + 2)).toNat

end

end A070801.P18017062911053053388

namespace A070801

/-- `A055377(2*A000203(n+2))` -/
def P18017062911053053388.Spec : Prop :=
  ∀ n, P18017062911053053388.a n = A070801 (n + 2)

end A070801

/-! ## A070801.P12149849343817650250

`A064989(2*A074495(n+2))`
-/

namespace A070801.P12149849343817650250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (2 * A074495 (n + 2)).toNat

end

end A070801.P12149849343817650250

namespace A070801

/-- `A064989(2*A074495(n+2))` -/
def P12149849343817650250.Spec : Prop :=
  ∀ n, P12149849343817650250.a n = A070801 (n + 2)

end A070801

/-! ## A070801.P1747971009488217550

`A357980(A067161(n+2))`
-/

namespace A070801.P1747971009488217550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357980 (A067161 (n + 2)).toNat

end

end A070801.P1747971009488217550

namespace A070801

/-- `A357980(A067161(n+2))` -/
def P1747971009488217550.Spec : Prop :=
  ∀ n, P1747971009488217550.a n = A070801 (n + 2)

end A070801

/-! ## A070801.P9047157071044327905

`A139421(2*A000203(n+2))`
-/

namespace A070801.P9047157071044327905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139421 (2 * A000203 (n + 2)).toNat

end

end A070801.P9047157071044327905

namespace A070801

/-- `A139421(2*A000203(n+2))` -/
def P9047157071044327905.Spec : Prop :=
  ∀ n, P9047157071044327905.a n = A070801 (n + 2)

end A070801

/-!
# A070802: a(n)=prevprime[sigma(n)]-nextprime[phi(n)]=A070801(n)-A070800(n).

The programs for A070802, the canonical program `A070802.P9494168428163023846` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070802 has offset 2).

The definition of A070802 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A070800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070802.P9494168428163023846

`A070801(n+2)-A070800(n+2)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A070802

/-- `A070801(n+2)-A070800(n+2)` -/
def P9494168428163023846.Spec : Prop :=
  ∀ n, P9494168428163023846.a n = A070802 (n + 2)

theorem P9494168428163023846.correct : P9494168428163023846.Spec := by
  intro n
  simp only [A070802, Nat.add_sub_cancel]

end A070802

/-! ## A070802.P9419153082205159362

`A070801(n+2)-A151800(A000010(n+2))`
-/

namespace A070802.P9419153082205159362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070801 (n + 2) - A151800 (A000010 (n + 2)).toNat

end

end A070802.P9419153082205159362

namespace A070802

/-- `A070801(n+2)-A151800(A000010(n+2))` -/
def P9419153082205159362.Spec : Prop :=
  ∀ n, P9419153082205159362.a n = A070802 (n + 2)

end A070802

/-! ## A070802.P16751761071846191848

`A070801(n+2)-A151800(A078773(n+2))`
-/

namespace A070802.P16751761071846191848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070801 (n + 2) - A151800 (A078773 (n + 2)).toNat

end

end A070802.P16751761071846191848

namespace A070802

/-- `A070801(n+2)-A151800(A078773(n+2))` -/
def P16751761071846191848.Spec : Prop :=
  ∀ n, P16751761071846191848.a n = A070802 (n + 2)

end A070802

/-! ## A070802.P17798927335038137696

`A070801(n+2)-A007918(A000010(n+2)+1)`
-/

namespace A070802.P17798927335038137696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070801 (n + 2) - A007918 (A000010 (n + 2) + 1).toNat

end

end A070802.P17798927335038137696

namespace A070802

/-- `A070801(n+2)-A007918(A000010(n+2)+1)` -/
def P17798927335038137696.Spec : Prop :=
  ∀ n, P17798927335038137696.a n = A070802 (n + 2)

end A070802

/-! ## A070802.P2538363457292045084

`A000040(A070803(n+2))-A070800(n+2)`
-/

namespace A070802.P2538363457292045084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A070803 (n + 2)).toNat - A070800 (n + 2)

end

end A070802.P2538363457292045084

namespace A070802

/-- `A000040(A070803(n+2))-A070800(n+2)` -/
def P2538363457292045084.Spec : Prop :=
  ∀ n, P2538363457292045084.a n = A070802 (n + 2)

end A070802

/-! ## A070802.P17007081627403851658

`A070801(n+2)-A000040(A070804(n+2)+1)`
-/

namespace A070802.P17007081627403851658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070801 (n + 2) - A000040 (A070804 (n + 2) + 1).toNat

end

end A070802.P17007081627403851658

namespace A070802

/-- `A070801(n+2)-A000040(A070804(n+2)+1)` -/
def P17007081627403851658.Spec : Prop :=
  ∀ n, P17007081627403851658.a n = A070802 (n + 2)

end A070802

/-! ## A070802.P18337386708948904399

`A007917(A000203(n+2))-A070800(n+2)`
-/

namespace A070802.P18337386708948904399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A000203 (n + 2)).toNat - A070800 (n + 2)

end

end A070802.P18337386708948904399

namespace A070802

/-- `A007917(A000203(n+2))-A070800(n+2)` -/
def P18337386708948904399.Spec : Prop :=
  ∀ n, P18337386708948904399.a n = A070802 (n + 2)

end A070802

/-! ## A070802.P16321277986654241487

`A070801(n+2)-A159477(A000010(n+2)+1)`
-/

namespace A070802.P16321277986654241487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070801 (n + 2) - A159477 (A000010 (n + 2) + 1).toNat

end

end A070802.P16321277986654241487

namespace A070802

/-- `A070801(n+2)-A159477(A000010(n+2)+1)` -/
def P16321277986654241487.Spec : Prop :=
  ∀ n, P16321277986654241487.a n = A070802 (n + 2)

end A070802

/-! ## A070802.P3239778445045106461

`A000040(A070803(n+2))-A159477(A000010(n+2)+1)`
-/

namespace A070802.P3239778445045106461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A070803 (n + 2)).toNat - A159477 (A000010 (n + 2) + 1).toNat

end

end A070802.P3239778445045106461

namespace A070802

/-- `A000040(A070803(n+2))-A159477(A000010(n+2)+1)` -/
def P3239778445045106461.Spec : Prop :=
  ∀ n, P3239778445045106461.a n = A070802 (n + 2)

end A070802

/-!
# A070803: Number of primes not exceeding sum of divisors of n.

The programs for A070803, the canonical program `A070803.P520655573842613320` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070803 has offset 1).

The definition of A070803 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070803.P520655573842613320

`A000720(A000203(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A070803

/-- `A000720(A000203(n+1))` -/
def P520655573842613320.Spec : Prop :=
  ∀ n, P520655573842613320.a n = A070803 (n + 1)

theorem P520655573842613320.correct : P520655573842613320.Spec := by
  intro n
  simp only [A070803, Nat.add_sub_cancel]

end A070803

/-! ## A070803.P5306701064378853204

`A000720(∑{d}[n+1, #])`
-/

namespace A070803.P5306701064378853204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A070803.P5306701064378853204

namespace A070803

/-- `A000720(∑{d}[n+1, #])` -/
def P5306701064378853204.Spec : Prop :=
  ∀ n, P5306701064378853204.a n = A070803 (n + 1)

end A070803

/-! ## A070803.P18297507946044986026

`A000720(Δ[A160664(n)])`
-/

namespace A070803.P18297507946044986026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (n + 1) - f1 n).toNat

end

end A070803.P18297507946044986026

namespace A070803

/-- `A000720(Δ[A160664(n)])` -/
def P18297507946044986026.Spec : Prop :=
  ∀ n, P18297507946044986026.a n = A070803 (n + 1)

end A070803

/-! ## A070803.P7809803837654209907

`A000720(abs(Δ[A330725(n)]))`
-/

namespace A070803.P7809803837654209907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 |f1 (n + 1) - f1 n|.toNat

end

end A070803.P7809803837654209907

namespace A070803

/-- `A000720(abs(Δ[A330725(n)]))` -/
def P7809803837654209907.Spec : Prop :=
  ∀ n, P7809803837654209907.a n = A070803 (n + 1)

end A070803

/-! ## A070803.P1718606025496468171

`A000720(A245092(Δ[n²]))`
-/

namespace A070803.P1718606025496468171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A070803.P1718606025496468171

namespace A070803

/-- `A000720(A245092(Δ[n²]))` -/
def P1718606025496468171.Spec : Prop :=
  ∀ n, P1718606025496468171.a n = A070803 (n + 1)

end A070803

/-! ## A070803.P6618929135473362193

`A000720(abs(A143348(n+1)))`
-/

namespace A070803.P6618929135473362193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 |A143348 (n + 1)|.toNat

end

end A070803.P6618929135473362193

namespace A070803

/-- `A000720(abs(A143348(n+1)))` -/
def P6618929135473362193.Spec : Prop :=
  ∀ n, P6618929135473362193.a n = A070803 (n + 1)

end A070803

/-! ## A070803.P12452758394392474258

`A000720(sqrt(A072861(n+1)))`
-/

namespace A070803.P12452758394392474258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A070803.P12452758394392474258

namespace A070803

/-- `A000720(sqrt(A072861(n+1)))` -/
def P12452758394392474258.Spec : Prop :=
  ∀ n, P12452758394392474258.a n = A070803 (n + 1)

end A070803

/-! ## A070803.P12263292422108244801

`A000720(A039653(n+1)+1)`
-/

namespace A070803.P12263292422108244801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A039653 (n + 1) + 1).toNat

end

end A070803.P12263292422108244801

namespace A070803

/-- `A000720(A039653(n+1)+1)` -/
def P12263292422108244801.Spec : Prop :=
  ∀ n, P12263292422108244801.a n = A070803 (n + 1)

end A070803

/-! ## A070803.P5534080150221021097

`A000720(A074495(n+1)-1)`
-/

namespace A070803.P5534080150221021097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A074495 (n + 1) - 1).toNat

end

end A070803.P5534080150221021097

namespace A070803

/-- `A000720(A074495(n+1)-1)` -/
def P5534080150221021097.Spec : Prop :=
  ∀ n, P5534080150221021097.a n = A070803 (n + 1)

end A070803

/-! ## A070803.P10606837501054033822

`A000720(A088580(n+1)-1)`
-/

namespace A070803.P10606837501054033822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A088580 (n + 1) - 1).toNat

end

end A070803.P10606837501054033822

namespace A070803

/-- `A000720(A088580(n+1)-1)` -/
def P10606837501054033822.Spec : Prop :=
  ∀ n, P10606837501054033822.a n = A070803 (n + 1)

theorem P10606837501054033822.correct : P10606837501054033822.Spec := by
  intro n
  simp only [A070803, Nat.add_sub_cancel, A070803.P10606837501054033822.a, A070803.P520655573842613320.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A088580, A088580.P3089093194242277422.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070803

/-! ## A070803.P16677393542633891672

`A000720(A074400(n+1)/2)`
-/

namespace A070803.P16677393542633891672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A070803.P16677393542633891672

namespace A070803

/-- `A000720(A074400(n+1)/2)` -/
def P16677393542633891672.Spec : Prop :=
  ∀ n, P16677393542633891672.a n = A070803 (n + 1)

end A070803

/-! ## A070803.P1334652248889666591

`A000720((A002659(n+1)+1)/2)`
-/

namespace A070803.P1334652248889666591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A002659 (n + 1) + 1 : ℚ) / 2)).toNat

end

end A070803.P1334652248889666591

namespace A070803

/-- `A000720((A002659(n+1)+1)/2)` -/
def P1334652248889666591.Spec : Prop :=
  ∀ n, P1334652248889666591.a n = A070803 (n + 1)

end A070803

/-! ## A070803.P11093934917973815109

`A000720(A001065(n+1)+1+n)`
-/

namespace A070803.P11093934917973815109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A070803.P11093934917973815109

namespace A070803

/-- `A000720(A001065(n+1)+1+n)` -/
def P11093934917973815109.Spec : Prop :=
  ∀ n, P11093934917973815109.a n = A070803 (n + 1)

theorem P11093934917973815109.correct : P11093934917973815109.Spec := by
  intro n
  simp only [A070803, Nat.add_sub_cancel, A070803.P11093934917973815109.a, A070803.P520655573842613320.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070803

/-! ## A070803.P14441241295821238002

`A085341(n+1)+A000720(n+1)`
-/

namespace A070803.P14441241295821238002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085341 (n + 1) + A000720 (n + 1)

end

end A070803.P14441241295821238002

namespace A070803

/-- `A085341(n+1)+A000720(n+1)` -/
def P14441241295821238002.Spec : Prop :=
  ∀ n, P14441241295821238002.a n = A070803 (n + 1)

theorem P14441241295821238002.correct : P14441241295821238002.Spec := by
  intro n
  simp only [A070803, Nat.add_sub_cancel, A070803.P14441241295821238002.a, A070803.P520655573842613320.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A085341, A085341.P4945583305381197546.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070803

/-! ## A070803.P15454182114762689722

`A085343(n+1)+A070804(n+1)`
-/

namespace A070803.P15454182114762689722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085343 (n + 1) + A070804 (n + 1)

end

end A070803.P15454182114762689722

namespace A070803

/-- `A085343(n+1)+A070804(n+1)` -/
def P15454182114762689722.Spec : Prop :=
  ∀ n, P15454182114762689722.a n = A070803 (n + 1)

theorem P15454182114762689722.correct : P15454182114762689722.Spec := by
  intro n
  simp only [A070803, Nat.add_sub_cancel, A070803.P15454182114762689722.a, A070803.P520655573842613320.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A070804, A070804.P12391361706569770465.a, A085343, A085343.P16599532433614219245.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070803

/-! ## A070803.P8668613846662440234

`A000720(A155085(n+1)-(n+1))`
-/

namespace A070803.P8668613846662440234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A155085 (n + 1) - (n + 1 : ℤ)).toNat

end

end A070803.P8668613846662440234

namespace A070803

/-- `A000720(A155085(n+1)-(n+1))` -/
def P8668613846662440234.Spec : Prop :=
  ∀ n, P8668613846662440234.a n = A070803 (n + 1)

theorem P8668613846662440234.correct : P8668613846662440234.Spec := by
  intro n
  simp only [A070803, Nat.add_sub_cancel, A070803.P8668613846662440234.a, A070803.P520655573842613320.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A155085, A155085.P2440965829929837208.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070803

/-! ## A070803.P12172625584801150158

`A000720(2*(n+1)-A033879(n+1))`
-/

namespace A070803.P12172625584801150158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((2 * (n + 1) : ℤ) - A033879 (n + 1)).toNat

end

end A070803.P12172625584801150158

namespace A070803

/-- `A000720(2*(n+1)-A033879(n+1))` -/
def P12172625584801150158.Spec : Prop :=
  ∀ n, P12172625584801150158.a n = A070803 (n + 1)

theorem P12172625584801150158.correct : P12172625584801150158.Spec := by
  intro n
  simp only [A070803, Nat.add_sub_cancel, A070803.P12172625584801150158.a, A070803.P520655573842613320.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A033879, A033879.P5965131822542929609.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070803

/-! ## A070803.P11093360439955356102

`A000720(2*n+1-A235796(n+1))`
-/

namespace A070803.P11093360439955356102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((2 * n + 1 : ℤ) - A235796 (n + 1)).toNat

end

end A070803.P11093360439955356102

namespace A070803

/-- `A000720(2*n+1-A235796(n+1))` -/
def P11093360439955356102.Spec : Prop :=
  ∀ n, P11093360439955356102.a n = A070803 (n + 1)

theorem P11093360439955356102.correct : P11093360439955356102.Spec := by
  intro n
  simp only [A070803, Nat.add_sub_cancel, A070803.P11093360439955356102.a, A070803.P520655573842613320.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A235796, A235796.P5769590272751401819.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070803

/-! ## A070803.P9091140226571404107

`A000720(A051612(n+1)+A000010(n+1))`
-/

namespace A070803.P9091140226571404107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A051612 (n + 1) + A000010 (n + 1)).toNat

end

end A070803.P9091140226571404107

namespace A070803

/-- `A000720(A051612(n+1)+A000010(n+1))` -/
def P9091140226571404107.Spec : Prop :=
  ∀ n, P9091140226571404107.a n = A070803 (n + 1)

theorem P9091140226571404107.correct : P9091140226571404107.Spec := by
  intro n
  simp only [A070803, Nat.add_sub_cancel, A070803.P9091140226571404107.a, A070803.P520655573842613320.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A051612, A051612.P4135239823752248514.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070803

/-! ## A070803.P6320617179881992564

`A000720(A065608(n+1)+A000005(n+1))`
-/

namespace A070803.P6320617179881992564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A065608 (n + 1) + A000005 (n + 1)).toNat

end

end A070803.P6320617179881992564

namespace A070803

/-- `A000720(A065608(n+1)+A000005(n+1))` -/
def P6320617179881992564.Spec : Prop :=
  ∀ n, P6320617179881992564.a n = A070803 (n + 1)

theorem P6320617179881992564.correct : P6320617179881992564.Spec := by
  intro n
  simp only [A070803, Nat.add_sub_cancel, A070803.P6320617179881992564.a, A070803.P520655573842613320.a, A000005, A000005.P16091521709108585461.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A065608, A065608.P12445239359989980431.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070803

/-!
# A070804: Number of primes not exceeding phi(n).

The programs for A070804, the canonical program `A070804.P12391361706569770465` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070804 has offset 1).

The definition of A070804 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070804.P12391361706569770465

`A000720(A000010(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A070804

/-- `A000720(A000010(n+1))` -/
def P12391361706569770465.Spec : Prop :=
  ∀ n, P12391361706569770465.a n = A070804 (n + 1)

theorem P12391361706569770465.correct : P12391361706569770465.Spec := by
  intro n
  simp only [A070804, Nat.add_sub_cancel]

end A070804

/-! ## A070804.P8181615467830447787

`A000720((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A070804.P8181615467830447787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))).toNat

end

end A070804.P8181615467830447787

namespace A070804

/-- `A000720((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P8181615467830447787.Spec : Prop :=
  ∀ n, P8181615467830447787.a n = A070804 (n + 1)

end A070804

/-! ## A070804.P7765793335284179802

`A000720(Δ[A002088(n)])`
-/

namespace A070804.P7765793335284179802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (n + 1) - f1 n).toNat

end

end A070804.P7765793335284179802

namespace A070804

/-- `A000720(Δ[A002088(n)])` -/
def P7765793335284179802.Spec : Prop :=
  ∀ n, P7765793335284179802.a n = A070804 (n + 1)

end A070804

/-! ## A070804.P1357319532003589389

`A000720(Δ[A005728(n)])`
-/

namespace A070804.P1357319532003589389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (n + 1) - f1 n).toNat

end

end A070804.P1357319532003589389

namespace A070804

/-- `A000720(Δ[A005728(n)])` -/
def P1357319532003589389.Spec : Prop :=
  ∀ n, P1357319532003589389.a n = A070804 (n + 1)

end A070804

/-! ## A070804.P18240060577263780286

`A230980(Δ[A002088(n)])`
-/

namespace A070804.P18240060577263780286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (n + 1) - f1 n).toNat

end

end A070804.P18240060577263780286

namespace A070804

/-- `A230980(Δ[A002088(n)])` -/
def P18240060577263780286.Spec : Prop :=
  ∀ n, P18240060577263780286.a n = A070804 (n + 1)

end A070804

/-! ## A070804.P1075188113924155090

`A230980(A078773(n+1))`
-/

namespace A070804.P1075188113924155090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A078773 (n + 1)).toNat

end

end A070804.P1075188113924155090

namespace A070804

/-- `A230980(A078773(n+1))` -/
def P1075188113924155090.Spec : Prop :=
  ∀ n, P1075188113924155090.a n = A070804 (n + 1)

end A070804

/-! ## A070804.P7249926870135256975

`A000720(sqrt(A127473(n+1)))`
-/

namespace A070804.P7249926870135256975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A070804.P7249926870135256975

namespace A070804

/-- `A000720(sqrt(A127473(n+1)))` -/
def P7249926870135256975.Spec : Prop :=
  ∀ n, P7249926870135256975.a n = A070804 (n + 1)

end A070804

/-! ## A070804.P13781457592778297375

`A000720(A109606(n+1)+1)`
-/

namespace A070804.P13781457592778297375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A109606 (n + 1) + 1).toNat

end

end A070804.P13781457592778297375

namespace A070804

/-- `A000720(A109606(n+1)+1)` -/
def P13781457592778297375.Spec : Prop :=
  ∀ n, P13781457592778297375.a n = A070804 (n + 1)

theorem P13781457592778297375.correct : P13781457592778297375.Spec := by
  intro n
  simp only [A070804, Nat.add_sub_cancel, A070804.P13781457592778297375.a, A070804.P12391361706569770465.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070804

/-! ## A070804.P8079930325373758205

`A000720(A039649(n+1)-1)`
-/

namespace A070804.P8079930325373758205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A039649 (n + 1) - 1).toNat

end

end A070804.P8079930325373758205

namespace A070804

/-- `A000720(A039649(n+1)-1)` -/
def P8079930325373758205.Spec : Prop :=
  ∀ n, P8079930325373758205.a n = A070804 (n + 1)

theorem P8079930325373758205.correct : P8079930325373758205.Spec := by
  intro n
  simp only [A070804, Nat.add_sub_cancel, A070804.P8079930325373758205.a, A070804.P12391361706569770465.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070804

/-! ## A070804.P17977183312391501681

`A000720(n-A219428(n+1))`
-/

namespace A070804.P17977183312391501681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n : ℤ) - A219428 (n + 1)).toNat

end

end A070804.P17977183312391501681

namespace A070804

/-- `A000720(n-A219428(n+1))` -/
def P17977183312391501681.Spec : Prop :=
  ∀ n, P17977183312391501681.a n = A070804 (n + 1)

theorem P17977183312391501681.correct : P17977183312391501681.Spec := by
  intro n
  simp only [A070804, Nat.add_sub_cancel, A070804.P17977183312391501681.a, A070804.P12391361706569770465.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A219428, A219428.P9184341513320465947.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070804

/-! ## A070804.P13738854232673686211

`A230980(n)-A074398(n+1)`
-/

namespace A070804.P13738854232673686211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n - A074398 (n + 1)

end

end A070804.P13738854232673686211

namespace A070804

/-- `A230980(n)-A074398(n+1)` -/
def P13738854232673686211.Spec : Prop :=
  ∀ n, P13738854232673686211.a n = A070804 (n + 1)

end A070804

/-! ## A070804.P13963372883525492739

`A036234(A109606(n+1)+1)-1`
-/

namespace A070804.P13963372883525492739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A109606 (n + 1) + 1).toNat - 1

end

end A070804.P13963372883525492739

namespace A070804

/-- `A036234(A109606(n+1)+1)-1` -/
def P13963372883525492739.Spec : Prop :=
  ∀ n, P13963372883525492739.a n = A070804 (n + 1)

theorem P13963372883525492739.correct : P13963372883525492739.Spec := by
  intro n
  simp only [A070804, Nat.add_sub_cancel, A070804.P13963372883525492739.a, A070804.P12391361706569770465.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, A109606, A109606.P2415810041766612210.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070804

/-! ## A070804.P14465255321520657334

`A036234(A039649(n+1)-1)-1`
-/

namespace A070804.P14465255321520657334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A039649 (n + 1) - 1).toNat - 1

end

end A070804.P14465255321520657334

namespace A070804

/-- `A036234(A039649(n+1)-1)-1` -/
def P14465255321520657334.Spec : Prop :=
  ∀ n, P14465255321520657334.a n = A070804 (n + 1)

theorem P14465255321520657334.correct : P14465255321520657334.Spec := by
  intro n
  simp only [A070804, Nat.add_sub_cancel, A070804.P14465255321520657334.a, A070804.P12391361706569770465.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A036234, A036234.P2906282677021386800.a, A039649, A039649.P16717312505280968063.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070804

/-! ## A070804.P15139324920786633810

`A000720(n+1-A051953(n+1))`
-/

namespace A070804.P15139324920786633810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1 : ℤ) - A051953 (n + 1)).toNat

end

end A070804.P15139324920786633810

namespace A070804

/-- `A000720(n+1-A051953(n+1))` -/
def P15139324920786633810.Spec : Prop :=
  ∀ n, P15139324920786633810.a n = A070804 (n + 1)

theorem P15139324920786633810.correct : P15139324920786633810.Spec := by
  intro n
  simp only [A070804, Nat.add_sub_cancel, A070804.P15139324920786633810.a, A070804.P12391361706569770465.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A051953, A051953.P11179276897610979764.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070804

/-! ## A070804.P15770587006716370658

`A000720(n+1)-A085342(n+1)`
-/

namespace A070804.P15770587006716370658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) - A085342 (n + 1)

end

end A070804.P15770587006716370658

namespace A070804

/-- `A000720(n+1)-A085342(n+1)` -/
def P15770587006716370658.Spec : Prop :=
  ∀ n, P15770587006716370658.a n = A070804 (n + 1)

theorem P15770587006716370658.correct : P15770587006716370658.Spec := by
  intro n
  simp only [A070804, Nat.add_sub_cancel, A070804.P15770587006716370658.a, A070804.P12391361706569770465.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A085342, A085342.P7672575335003737733.a, A003557, A003557.P6364735403900941810.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A074398, A074398.P12832320423602718158.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070804

/-! ## A070804.P15624547154425212538

`A070803(n+1)-A085343(n+1)`
-/

namespace A070804.P15624547154425212538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070803 (n + 1) - A085343 (n + 1)

end

end A070804.P15624547154425212538

namespace A070804

/-- `A070803(n+1)-A085343(n+1)` -/
def P15624547154425212538.Spec : Prop :=
  ∀ n, P15624547154425212538.a n = A070804 (n + 1)

theorem P15624547154425212538.correct : P15624547154425212538.Spec := by
  intro n
  simp only [A070804, Nat.add_sub_cancel, A070804.P15624547154425212538.a, A070804.P12391361706569770465.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A070803, A070803.P520655573842613320.a, A085343, A085343.P16599532433614219245.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070804

/-! ## A070804.P12745820931963700529

`A000720(A002618(n+1)/(n+1))`
-/

namespace A070804.P12745820931963700529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A070804.P12745820931963700529

namespace A070804

/-- `A000720(A002618(n+1)/(n+1))` -/
def P12745820931963700529.Spec : Prop :=
  ∀ n, P12745820931963700529.a n = A070804 (n + 1)

end A070804

/-! ## A070804.P1035553327036343518

`A000720(A037228(n+1)+A000720(n+1))`
-/

namespace A070804.P1035553327036343518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037228 (n + 1) + A000720 (n + 1)).toNat

end

end A070804.P1035553327036343518

namespace A070804

/-- `A000720(A037228(n+1)+A000720(n+1))` -/
def P1035553327036343518.Spec : Prop :=
  ∀ n, P1035553327036343518.a n = A070804 (n + 1)

theorem P1035553327036343518.correct : P1035553327036343518.Spec := by
  intro n
  simp only [A070804, Nat.add_sub_cancel, A070804.P1035553327036343518.a, A070804.P12391361706569770465.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A037228, A037228.P4220557198165153324.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070804

/-! ## A070804.P485942081130474692

`A000720(A063070(n+1)+A000005(n+1))`
-/

namespace A070804.P485942081130474692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A063070 (n + 1) + A000005 (n + 1)).toNat

end

end A070804.P485942081130474692

namespace A070804

/-- `A000720(A063070(n+1)+A000005(n+1))` -/
def P485942081130474692.Spec : Prop :=
  ∀ n, P485942081130474692.a n = A070804 (n + 1)

theorem P485942081130474692.correct : P485942081130474692.Spec := by
  intro n
  simp only [A070804, Nat.add_sub_cancel, A070804.P485942081130474692.a, A070804.P12391361706569770465.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A063070, A063070.P5416196495209204381.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070804

/-! ## A070804.P4416766763190417405

`A000720(A048865(n+1)+A048864(n+1))`
-/

namespace A070804.P4416766763190417405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A048865 (n + 1) + A048864 (n + 1)).toNat

end

end A070804.P4416766763190417405

namespace A070804

/-- `A000720(A048865(n+1)+A048864(n+1))` -/
def P4416766763190417405.Spec : Prop :=
  ∀ n, P4416766763190417405.a n = A070804 (n + 1)

theorem P4416766763190417405.correct : P4416766763190417405.Spec := by
  intro n
  simp only [A070804, Nat.add_sub_cancel, A070804.P4416766763190417405.a, A070804.P12391361706569770465.a, A000010, A000010.P4673923239450215316.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A048864, A048864.P16915682539637834600.a, A048865, A048865.P11145010694177444749.a, A001221, A001221.P14816172234621668833.f1, A001221.P14816172234621668833.a, A003557, A003557.P6364735403900941810.a, A036997, A036997.P9898190539809888575.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A037228, A037228.P4220557198165153324.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A070804

/-!
# A070805: a(1) = 2; a(n) = largest prime not exceeding the sum of all previous terms.

The programs for A070805, there is no canonical definition to state claims against.
-/

/-! ## A070805.P406162186391502141

`A076272(A052997(n)+2)`
-/

namespace A070805.P406162186391502141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076272 (A052997 n + 2).toNat

end

end A070805.P406162186391502141

/-! ## A070805.P1660543785899620566

`A076973(A052997(n)+2)`
-/

namespace A070805.P1660543785899620566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076973 (A052997 n + 2).toNat

end

end A070805.P1660543785899620566

/-! ## A070805.P14936390072330913326

`A005145(A249563(n+1))`
-/

namespace A070805.P14936390072330913326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A249563 (n + 1)).toNat

end

end A070805.P14936390072330913326

/-! ## A070805.P11043398528840854994

`A005145(A337067(n+1))`
-/

namespace A070805.P11043398528840854994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A337067 (n + 1)).toNat

end

end A070805.P11043398528840854994

/-! ## A070805.P12589360456622360047

`A111656(A304350(n+1))`
-/

namespace A070805.P12589360456622360047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111656 (A304350 (n + 1)).toNat

end

end A070805.P12589360456622360047

/-!
# A070806: Primes p such that cototient(totient(p)) = A070556(p) is a power of 2.

The programs for A070806, there is no canonical definition to state claims against.
-/

/-! ## A070806.P9696838127895354907

`∩[A074781(n+1), A152449(n+1)]`
-/

namespace A070806.P9696838127895354907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152449 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070806.P9696838127895354907

/-! ## A070806.P14761588793470046564

`∩[A074781(n+1), A171987(n+1)]`
-/

namespace A070806.P14761588793470046564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070806.P14761588793470046564

/-! ## A070806.P17240380484050612288

`∩[A074781(n+1), A224195(n+1)]`
-/

namespace A070806.P17240380484050612288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070806.P17240380484050612288

/-! ## A070806.P1920468311633638703

`∩[A077500(n+1), A224195(n+1)]`
-/

namespace A070806.P1920468311633638703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224195 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070806.P1920468311633638703

/-! ## A070806.P15808058885591127857

`∩[A074781(n+1), A238246(n+1)]`
-/

namespace A070806.P15808058885591127857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074781 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070806.P15808058885591127857

/-!
# A070807: Composite numbers n such that Cototient(totient(n))=A070556(n) is power of 2.

The programs for A070807, there is no canonical definition to state claims against.
-/

/-! ## A070807.P2807070648348817968

`lt[A001221(A061602(2*(n+1))), A074206(n)]`
-/

namespace A070807.P2807070648348817968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A061602 (2 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070807.P2807070648348817968

/-! ## A070807.P9496970426575034666

`record[A228363(A002264(A055096(n+2)))]`
-/

namespace A070807.P9496970426575034666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228363 (A002264 (A055096 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070807.P9496970426575034666

/-! ## A070807.P9687848212386012428

`A018252(A138389(n+2)%A138391(n+2))`
-/

namespace A070807.P9687848212386012428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (Int.tmod (A138389 (n + 2)) (A138391 (n + 2))).toNat

end

end A070807.P9687848212386012428

/-! ## A070807.P5509105114568499473

`record[A113646(n+1)%A104916(A306933(n+1))]`
-/

namespace A070807.P5509105114568499473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113646 (n + 1)) (A104916 (A306933 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070807.P5509105114568499473

/-! ## A070807.P17617792370095689051

`lt[A040896(A039900(n)), A003415(n)]`
-/

namespace A070807.P17617792370095689051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040896 (A039900 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070807.P17617792370095689051

/-!
# A070810: Nonprime numbers k such that phi(k-phi(k)) = A054571(k) is a power of 2.

The programs for A070810, there is no canonical definition to state claims against.
-/

/-! ## A070810.P13261895796323983339

`lt[A085451(n+1), A039653(A039653(n))]`
-/

namespace A070810.P13261895796323983339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085451 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070810.P13261895796323983339

/-! ## A070810.P16267090363698352062

`lt[A324689(n+1), A039653(A039653(n))]`
-/

namespace A070810.P16267090363698352062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070810.P16267090363698352062

/-! ## A070810.P12550441941113876041

`lt[A005034(A261612(n)), A000001(n)]`
-/

namespace A070810.P12550441941113876041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005034 (A261612 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070810.P12550441941113876041

/-! ## A070810.P289710038200120150

`lt[A000188(A029747(n+1)), A003415(n)]`
-/

namespace A070810.P289710038200120150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A029747 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070810.P289710038200120150

/-! ## A070810.P9052563816825475819

`lt[A013632(A230420(n+1)), A284289(n)]`
-/

namespace A070810.P9052563816825475819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A230420 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070810.P9052563816825475819

/-!
# A070812: a(n) = phi(gpf(n)) - gpf(phi(n)) = A000010(A006530(n)) - A006530(A000010(n)).

The programs for A070812, the canonical program `A070812.P10546468908593193003` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070812 has offset 3).

The definition of A070812 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070812.P14858281032841884317

`A006530(n+3)-A006530(A000010(n+3))-1`
-/

namespace A070812.P14858281032841884317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3) - A006530 (A000010 (n + 3)).toNat - 1

end

end A070812.P14858281032841884317

namespace A070812

/-- `A006530(n+3)-A006530(A000010(n+3))-1` -/
def P14858281032841884317.Spec : Prop :=
  ∀ n, P14858281032841884317.a n = A070812 (n + 3)

end A070812

/-! ## A070812.P10546468908593193003

`A000010(A006530(n+3))-A006530(A000010(n+3))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A070812

/-- `A000010(A006530(n+3))-A006530(A000010(n+3))` -/
def P10546468908593193003.Spec : Prop :=
  ∀ n, P10546468908593193003.a n = A070812 (n + 3)

theorem P10546468908593193003.correct : P10546468908593193003.Spec := by
  intro n
  simp only [A070812, Nat.add_sub_cancel]

end A070812

/-! ## A070812.P10671443020772859894

`A070777(n+3)-A068211(n+3)`
-/

namespace A070812.P10671443020772859894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070777 (n + 3) - A068211 (n + 3)

end

end A070812.P10671443020772859894

namespace A070812

/-- `A070777(n+3)-A068211(n+3)` -/
def P10671443020772859894.Spec : Prop :=
  ∀ n, P10671443020772859894.a n = A070812 (n + 3)

end A070812

/-! ## A070812.P17457966107081352465

`A006530(n+3)-A000203(A068211(n+3))`
-/

namespace A070812.P17457966107081352465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3) - A000203 (A068211 (n + 3)).toNat

end

end A070812.P17457966107081352465

namespace A070812

/-- `A006530(n+3)-A000203(A068211(n+3))` -/
def P17457966107081352465.Spec : Prop :=
  ∀ n, P17457966107081352465.a n = A070812 (n + 3)

end A070812

/-! ## A070812.P13639884560503360767

`A070777(n+3)-A006530(A000010(n+3))`
-/

namespace A070812.P13639884560503360767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070777 (n + 3) - A006530 (A000010 (n + 3)).toNat

end

end A070812.P13639884560503360767

namespace A070812

/-- `A070777(n+3)-A006530(A000010(n+3))` -/
def P13639884560503360767.Spec : Prop :=
  ∀ n, P13639884560503360767.a n = A070812 (n + 3)

end A070812

/-! ## A070812.P4650728565693303612

`A070777(n+3)-A085392(A127473(n+3))`
-/

namespace A070812.P4650728565693303612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070777 (n + 3) - A085392 (A127473 (n + 3)).toNat

end

end A070812.P4650728565693303612

namespace A070812

/-- `A070777(n+3)-A085392(A127473(n+3))` -/
def P4650728565693303612.Spec : Prop :=
  ∀ n, P4650728565693303612.a n = A070812 (n + 3)

end A070812

/-!
# A070813: Fermat primes minus 3.

The programs for A070813, there is no canonical definition to state claims against.
-/

/-! ## A070813.P11701438632734939549

`A019434(n+1)-3`
-/

namespace A070813.P11701438632734939549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019434 (n + 1) - 3

end

end A070813.P11701438632734939549

/-! ## A070813.P12434263996938942101

`2^2^n-2`
-/

namespace A070813.P12434263996938942101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ 2 ^ n : ℤ) - 2

end

end A070813.P12434263996938942101

/-! ## A070813.P14021109981701070503

`A000918(2^n)`
-/

namespace A070813.P14021109981701070503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (2 ^ n)

end

end A070813.P14021109981701070503

/-!
# A070814: Solutions to phi(gpf(x)) - gpf(phi(x)) = 14 = c are special multiples of 17, x = 17k, where greatest prime factors of factor k were observed from {2, 3, 5}, i.e., it is smaller than 17. See solutions to other even cases of c (=A070813): A007283 for 0, A070004 for 2, A070815 for 254, A070816 for 65534. Gpf = greatest prime factor.

The programs for A070814, there is no canonical definition to state claims against.
-/

/-! ## A070814.P2297068383884811559

`2*a(n-4)` with `a(0)=17, a(1)=34, a(2)=51, a(3)=68, a(4)=85, a(5)=102, a(6)=136, a(7)=170, a(8)=204, a(9)=255`
-/

namespace A070814.P2297068383884811559
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [17, 34, 51, 68, 85, 102, 136, 170, 204, 255] fun n a =>
  2 * a (n - 4)

end

end A070814.P2297068383884811559

/-! ## A070814.P13778922699133893054

`record[17*A280496(A051916(n+1))]`
-/

namespace A070814.P13778922699133893054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * A280496 (A051916 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070814.P13778922699133893054

/-! ## A070814.P8828779785407441993

`A008599(record[A280496(A051916(n+1))])`
-/

namespace A070814.P8828779785407441993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280496 (A051916 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008599 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070814.P8828779785407441993

/-! ## A070814.P1481418821071343538

`A020725(eq[8, A007733(n+1)])`
-/

namespace A070814.P1481418821071343538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070814.P1481418821071343538

/-! ## A070814.P15460775493241392125

`eq[4, A007735(A004277(n))]`
-/

namespace A070814.P15460775493241392125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070814.P15460775493241392125

/-!
# A070815: Solutions to phi(gpf(x)) - gpf(phi(x)) = 254 = c are special multiples of 257, x = 257k, where largest prime factors of factor k were observed from {2, 3, 5, 17}. See solutions to other even cases of c (=A070813): A007283 for 0, A070004 for 2, A070814 for 14, A070816 for 65534.

The programs for A070815, there is no canonical definition to state claims against.
-/

/-! ## A070815.P2287455729082102667

`257*A081604(A277345(n))`
-/

namespace A070815.P2287455729082102667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  257 * A081604 (A277345 n).toNat

end

end A070815.P2287455729082102667

/-! ## A070815.P9266013323757301106

`A125649(A199523(n+1))*A334436(n)`
-/

namespace A070815.P9266013323757301106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125649 (A199523 (n + 1)).toNat * A334436 n

end

end A070815.P9266013323757301106

/-!
# A070816: Solutions to phi(gpf(x)) - gpf(phi(x)) = 65534 = c are special multiples of 65537, x=65537*k, where the largest prime factors of factor k were observed in {2, 3, 5, 17, 257}.

The programs for A070816, there is no canonical definition to state claims against.
-/

/-! ## A070816.P16935530335656545305

`xor(A070815(n+1), A088659(A070815(n+1)))`
-/

namespace A070816.P16935530335656545305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A070815 (n + 1)) (A088659 (A070815 (n + 1)).toNat)

end

end A070816.P16935530335656545305

/-!
# A070817: a(n) = floor(n/2) - gpf(phi(n)), where gpf(n) is the largest prime factor of n.

The programs for A070817, the canonical program `A070817.P15157848769049627047` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070817 has offset 3).

The definition of A070817 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070817.P15157848769049627047

`floor((n+3)/2)-A006530(A000010(n+3))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A070817

/-- `floor((n+3)/2)-A006530(A000010(n+3))` -/
def P15157848769049627047.Spec : Prop :=
  ∀ n, P15157848769049627047.a n = A070817 (n + 3)

theorem P15157848769049627047.correct : P15157848769049627047.Spec := by
  intro n
  simp only [A070817, Nat.add_sub_cancel]

end A070817

/-! ## A070817.P736886822515595084

`A004526(n+3)-A068211(n+3)`
-/

namespace A070817.P736886822515595084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 3) - A068211 (n + 3)

end

end A070817.P736886822515595084

namespace A070817

/-- `A004526(n+3)-A068211(n+3)` -/
def P736886822515595084.Spec : Prop :=
  ∀ n, P736886822515595084.a n = A070817 (n + 3)

theorem P736886822515595084.correct : P736886822515595084.Spec := by
  intro n
  simp only [A070817, Nat.add_sub_cancel, A070817.P736886822515595084.a, A070817.P15157848769049627047.a, A000010, A000010.P4673923239450215316.a, A004526, A004526.P10084182425416171735.a, A006530, A006530.P13372528560459906635.a, A068211, A068211.P6725276816017119652.a, A003557, A003557.P6364735403900941810.a, A070229, A070229.P5792893597916963980.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070817

/-! ## A070817.P10350472922045792204

`A080513(n)-A068211(n+3)`
-/

namespace A070817.P10350472922045792204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n - A068211 (n + 3)

end

end A070817.P10350472922045792204

namespace A070817

/-- `A080513(n)-A068211(n+3)` -/
def P10350472922045792204.Spec : Prop :=
  ∀ n, P10350472922045792204.a n = A070817 (n + 3)

end A070817

/-! ## A070817.P7684620532214919074

`A008619(n+1)-A068211(n+3)`
-/

namespace A070817.P7684620532214919074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1) - A068211 (n + 3)

end

end A070817.P7684620532214919074

namespace A070817

/-- `A008619(n+1)-A068211(n+3)` -/
def P7684620532214919074.Spec : Prop :=
  ∀ n, P7684620532214919074.a n = A070817 (n + 3)

end A070817

/-! ## A070817.P6324585222493318977

`ceil(n/2)+1-A006530(Δ[A005728(n+2)])`
-/

namespace A070817.P6324585222493318977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + 1 - A006530 (f1 (n + 1) - f1 n).toNat

end

end A070817.P6324585222493318977

namespace A070817

/-- `ceil(n/2)+1-A006530(Δ[A005728(n+2)])` -/
def P6324585222493318977.Spec : Prop :=
  ∀ n, P6324585222493318977.a n = A070817 (n + 3)

end A070817

/-! ## A070817.P12394340335406511972

`∑[n%2]+1-A006530(Δ[A002088(n+2)])`
-/

namespace A070817.P12394340335406511972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A006530 (f2 (n + 1) - f2 n).toNat

end

end A070817.P12394340335406511972

namespace A070817

/-- `∑[n%2]+1-A006530(Δ[A002088(n+2)])` -/
def P12394340335406511972.Spec : Prop :=
  ∀ n, P12394340335406511972.a n = A070817 (n + 3)

end A070817

/-! ## A070817.P2249350027855703610

`ceil(n/2)+1-A006530(A002246(n+3))`
-/

namespace A070817.P2249350027855703610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + 1 - A006530 (A002246 (n + 3)).toNat

end

end A070817.P2249350027855703610

namespace A070817

/-- `ceil(n/2)+1-A006530(A002246(n+3))` -/
def P2249350027855703610.Spec : Prop :=
  ∀ n, P2249350027855703610.a n = A070817 (n + 3)

end A070817

/-! ## A070817.P10711513415137501410

`floor((n+3)/2)-A006530(A002322(n+3))`
-/

namespace A070817.P10711513415137501410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / 2⌋ - A006530 (A002322 (n + 3)).toNat

end

end A070817.P10711513415137501410

namespace A070817

/-- `floor((n+3)/2)-A006530(A002322(n+3))` -/
def P10711513415137501410.Spec : Prop :=
  ∀ n, P10711513415137501410.a n = A070817 (n + 3)

end A070817

/-! ## A070817.P2987123211662539776

`ceil(n/2)+1-A006530(A245497(n+3))`
-/

namespace A070817.P2987123211662539776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2⌉ + 1 - A006530 (A245497 (n + 3)).toNat

end

end A070817.P2987123211662539776

namespace A070817

/-- `ceil(n/2)+1-A006530(A245497(n+3))` -/
def P2987123211662539776.Spec : Prop :=
  ∀ n, P2987123211662539776.a n = A070817 (n + 3)

end A070817

/-!
# A070819: Values of commutator[phi,gpf] = commutator[A000010, A006530] at prime arguments; a(1)=0 by convention.

The programs for A070819, the canonical program `A070819.P10850334616097354430` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070819 has offset 1).

The definition of A070819 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070819.P10850334616097354430

`A000010(A006530(A000040(n+1)))-A006530(A000010(A000040(n+1)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A070819

/-- `A000010(A006530(A000040(n+1)))-A006530(A000010(A000040(n+1)))` -/
def P10850334616097354430.Spec : Prop :=
  ∀ n, P10850334616097354430.a n = A070819 (n + 1)

theorem P10850334616097354430.correct : P10850334616097354430.Spec := by
  intro n
  simp only [A070819, Nat.add_sub_cancel]

end A070819

/-! ## A070819.P15195473426139033868

`A000040(n+1)-A070820(n+1)`
-/

namespace A070819.P15195473426139033868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A070820 (n + 1)

end

end A070819.P15195473426139033868

namespace A070819

/-- `A000040(n+1)-A070820(n+1)` -/
def P15195473426139033868.Spec : Prop :=
  ∀ n, P15195473426139033868.a n = A070819 (n + 1)

theorem P15195473426139033868.correct : P15195473426139033868.Spec := by
  intro n
  simp only [A070819, Nat.add_sub_cancel, A070819.P15195473426139033868.a, A070819.P10850334616097354430.a, A000010, A000010.P4673923239450215316.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006530, A006530.P13372528560459906635.a, A070820, A070820.P14301036405267138614.a, A003557, A003557.P6364735403900941810.a, A070229, A070229.P5792893597916963980.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A008578, A008578.P3639467937083264764.a, A029837, A029837.P1050578713049589.a, A087207, A087207.P12536008426233777954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070819

/-! ## A070819.P6089451140534464108

`A008578(n+2)-A070820(n+1)`
-/

namespace A070819.P6089451140534464108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A070820 (n + 1)

end

end A070819.P6089451140534464108

namespace A070819

/-- `A008578(n+2)-A070820(n+1)` -/
def P6089451140534464108.Spec : Prop :=
  ∀ n, P6089451140534464108.a n = A070819 (n + 1)

end A070819

/-! ## A070819.P18230764371308682130

`A006093(n+1)-A006530(A006093(n+1))`
-/

namespace A070819.P18230764371308682130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A006530 (A006093 (n + 1)).toNat

end

end A070819.P18230764371308682130

namespace A070819

/-- `A006093(n+1)-A006530(A006093(n+1))` -/
def P18230764371308682130.Spec : Prop :=
  ∀ n, P18230764371308682130.a n = A070819 (n + 1)

end A070819

/-! ## A070819.P10000336064504076758

`A039915(n+1)-A006530(A039915(n+1))`
-/

namespace A070819.P10000336064504076758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039915 (n + 1) - A006530 (A039915 (n + 1)).toNat

end

end A070819.P10000336064504076758

namespace A070819

/-- `A039915(n+1)-A006530(A039915(n+1))` -/
def P10000336064504076758.Spec : Prop :=
  ∀ n, P10000336064504076758.a n = A070819 (n + 1)

end A070819

/-! ## A070819.P18249836701369289939

`A156037(n+1)-A006530(A156037(n+1))`
-/

namespace A070819.P18249836701369289939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 1) - A006530 (A156037 (n + 1)).toNat

end

end A070819.P18249836701369289939

namespace A070819

/-- `A156037(n+1)-A006530(A156037(n+1))` -/
def P18249836701369289939.Spec : Prop :=
  ∀ n, P18249836701369289939.a n = A070819 (n + 1)

end A070819

/-! ## A070819.P11750480662652365624

`A068499(n+2)-A006530(A068499(n+2))`
-/

namespace A070819.P11750480662652365624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068499 (n + 2) - A006530 (A068499 (n + 2)).toNat

end

end A070819.P11750480662652365624

namespace A070819

/-- `A068499(n+2)-A006530(A068499(n+2))` -/
def P11750480662652365624.Spec : Prop :=
  ∀ n, P11750480662652365624.a n = A070819 (n + 1)

end A070819

/-! ## A070819.P9018390405965717978

`record[A000010(n+1)]-A006530(A040976(n+1)+1)`
-/

namespace A070819.P9018390405965717978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A006530 (A040976 (n + 1) + 1).toNat

end

end A070819.P9018390405965717978

namespace A070819

/-- `record[A000010(n+1)]-A006530(A040976(n+1)+1)` -/
def P9018390405965717978.Spec : Prop :=
  ∀ n, P9018390405965717978.a n = A070819 (n + 1)

end A070819

/-! ## A070819.P12534183686324156588

`A000040(n+1)-1-A006530(A000040(n+1)-1)`
-/

namespace A070819.P12534183686324156588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 1 - A006530 (A000040 (n + 1) - 1).toNat

end

end A070819.P12534183686324156588

namespace A070819

/-- `A000040(n+1)-1-A006530(A000040(n+1)-1)` -/
def P12534183686324156588.Spec : Prop :=
  ∀ n, P12534183686324156588.a n = A070819 (n + 1)

end A070819

/-! ## A070819.P5543203913754669618

`eq[2, A000005(n+1)]-A006530(A040976(n+1)+1)`
-/

namespace A070819.P5543203913754669618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A006530 (A040976 (n + 1) + 1).toNat

end

end A070819.P5543203913754669618

namespace A070819

/-- `eq[2, A000005(n+1)]-A006530(A040976(n+1)+1)` -/
def P5543203913754669618.Spec : Prop :=
  ∀ n, P5543203913754669618.a n = A070819 (n + 1)

end A070819

/-! ## A070819.P7666813565905684826

`A066251(2*n+1)-A006530(A066251(2*n+1))`
-/

namespace A070819.P7666813565905684826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066251 (2 * n + 1) - A006530 (A066251 (2 * n + 1)).toNat

end

end A070819.P7666813565905684826

namespace A070819

/-- `A066251(2*n+1)-A006530(A066251(2*n+1))` -/
def P7666813565905684826.Spec : Prop :=
  ∀ n, P7666813565905684826.a n = A070819 (n + 1)

end A070819

/-! ## A070819.P6284854480279563366

`A076563(A039915(n+1))`
-/

namespace A070819.P6284854480279563366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076563 (A039915 (n + 1)).toNat

end

end A070819.P6284854480279563366

namespace A070819

/-- `A076563(A039915(n+1))` -/
def P6284854480279563366.Spec : Prop :=
  ∀ n, P6284854480279563366.a n = A070819 (n + 1)

end A070819

/-! ## A070819.P341868515831708122

`A076563(A068499(n+2))`
-/

namespace A070819.P341868515831708122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076563 (A068499 (n + 2)).toNat

end

end A070819.P341868515831708122

namespace A070819

/-- `A076563(A068499(n+2))` -/
def P341868515831708122.Spec : Prop :=
  ∀ n, P341868515831708122.a n = A070819 (n + 1)

end A070819

/-! ## A070819.P15567187653284331775

`A006093(n+1)-A085392(2*A006093(n+1))`
-/

namespace A070819.P15567187653284331775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A085392 (2 * A006093 (n + 1)).toNat

end

end A070819.P15567187653284331775

namespace A070819

/-- `A006093(n+1)-A085392(2*A006093(n+1))` -/
def P15567187653284331775.Spec : Prop :=
  ∀ n, P15567187653284331775.a n = A070819 (n + 1)

end A070819

/-! ## A070819.P11580258891907425491

`A070812(A107620(n+1))`
-/

namespace A070819.P11580258891907425491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070812 (A107620 (n + 1)).toNat

end

end A070819.P11580258891907425491

namespace A070819

/-- `A070812(A107620(n+1))` -/
def P11580258891907425491.Spec : Prop :=
  ∀ n, P11580258891907425491.a n = A070819 (n + 1)

end A070819

/-! ## A070819.P18249849869763540178

`A070812(A064161(n+1)/2)`
-/

namespace A070819.P18249849869763540178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070812 (SequenceMachineLib.roundAway ((A064161 (n + 1) : ℚ) / 2)).toNat

end

end A070819.P18249849869763540178

namespace A070819

/-- `A070812(A064161(n+1)/2)` -/
def P18249849869763540178.Spec : Prop :=
  ∀ n, P18249849869763540178.a n = A070819 (n + 1)

end A070819

/-! ## A070819.P10460009844737238804

`A070812(A064161(n+1))`
-/

namespace A070819.P10460009844737238804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070812 (A064161 (n + 1)).toNat

end

end A070819.P10460009844737238804

namespace A070819

/-- `A070812(A064161(n+1))` -/
def P10460009844737238804.Spec : Prop :=
  ∀ n, P10460009844737238804.a n = A070819 (n + 1)

end A070819

/-!
# A070820: Difference between n-th prime and the value of commutator[phi,gpf] = commutator[A000010, A006530] at the same prime argument.

The programs for A070820, the canonical program `A070820.P14301036405267138614` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070820 has offset 1).

The definition of A070820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070820.P3912817004986614224

`A006530(A241195(n+1))+1`
-/

namespace A070820.P3912817004986614224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A241195 (n + 1)).toNat + 1

end

end A070820.P3912817004986614224

namespace A070820

/-- `A006530(A241195(n+1))+1` -/
def P3912817004986614224.Spec : Prop :=
  ∀ n, P3912817004986614224.a n = A070820 (n + 1)

end A070820

/-! ## A070820.P14301036405267138614

`A000040(n+1)-A070819(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A070820

/-- `A000040(n+1)-A070819(n+1)` -/
def P14301036405267138614.Spec : Prop :=
  ∀ n, P14301036405267138614.a n = A070820 (n + 1)

theorem P14301036405267138614.correct : P14301036405267138614.Spec := by
  intro n
  simp only [A070820, Nat.add_sub_cancel]

end A070820

/-! ## A070820.P16798350191555692873

`sqrt(A001248(n+1))-A070819(n+1)`
-/

namespace A070820.P16798350191555692873
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) - (A070819 (n + 1) : ℝ)

end

end A070820.P16798350191555692873

namespace A070820

/-- `sqrt(A001248(n+1))-A070819(n+1)` -/
def P16798350191555692873.Spec : Prop :=
  ∀ n, P16798350191555692873.a n = (A070820 (n + 1) : ℝ)

end A070820

/-! ## A070820.P5557600109328371088

`A008578(n+2)-A070819(n+1)`
-/

namespace A070820.P5557600109328371088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A070819 (n + 1)

end

end A070820.P5557600109328371088

namespace A070820

/-- `A008578(n+2)-A070819(n+1)` -/
def P5557600109328371088.Spec : Prop :=
  ∀ n, P5557600109328371088.a n = A070820 (n + 1)

end A070820

/-! ## A070820.P11091588488430777021

`A006530(A006093(n+1))+1`
-/

namespace A070820.P11091588488430777021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006093 (n + 1)).toNat + 1

end

end A070820.P11091588488430777021

namespace A070820

/-- `A006530(A006093(n+1))+1` -/
def P11091588488430777021.Spec : Prop :=
  ∀ n, P11091588488430777021.a n = A070820 (n + 1)

end A070820

/-! ## A070820.P3802578043848360474

`A006530(A077063(n+1))+1`
-/

namespace A070820.P3802578043848360474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A077063 (n + 1)).toNat + 1

end

end A070820.P3802578043848360474

namespace A070820

/-- `A006530(A077063(n+1))+1` -/
def P3802578043848360474.Spec : Prop :=
  ∀ n, P3802578043848360474.a n = A070820 (n + 1)

end A070820

/-! ## A070820.P10205762067087950270

`A006530(record[A000010(n+1)])+1`
-/

namespace A070820.P10205762067087950270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A070820.P10205762067087950270

namespace A070820

/-- `A006530(record[A000010(n+1)])+1` -/
def P10205762067087950270.Spec : Prop :=
  ∀ n, P10205762067087950270.a n = A070820 (n + 1)

end A070820

/-! ## A070820.P15609817802400933721

`A006530(record[A003958(n+1)])+1`
-/

namespace A070820.P15609817802400933721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A070820.P15609817802400933721

namespace A070820

/-- `A006530(record[A003958(n+1)])+1` -/
def P15609817802400933721.Spec : Prop :=
  ∀ n, P15609817802400933721.a n = A070820 (n + 1)

end A070820

/-! ## A070820.P2890347346164704746

`A006530(A040976(n+1)+1)+1`
-/

namespace A070820.P2890347346164704746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A040976 (n + 1) + 1).toNat + 1

end

end A070820.P2890347346164704746

namespace A070820

/-- `A006530(A040976(n+1)+1)+1` -/
def P2890347346164704746.Spec : Prop :=
  ∀ n, P2890347346164704746.a n = A070820 (n + 1)

end A070820

/-! ## A070820.P1175538980073711147

`A006530(A000040(n+1)-1)+1`
-/

namespace A070820.P1175538980073711147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 1) - 1).toNat + 1

end

end A070820.P1175538980073711147

namespace A070820

/-- `A006530(A000040(n+1)-1)+1` -/
def P1175538980073711147.Spec : Prop :=
  ∀ n, P1175538980073711147.a n = A070820 (n + 1)

end A070820

/-! ## A070820.P18119807022382548795

`A006530(A086801(n+1)+2)+1`
-/

namespace A070820.P18119807022382548795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A086801 (n + 1) + 2).toNat + 1

end

end A070820.P18119807022382548795

namespace A070820

/-- `A006530(A086801(n+1)+2)+1` -/
def P18119807022382548795.Spec : Prop :=
  ∀ n, P18119807022382548795.a n = A070820 (n + 1)

end A070820

/-! ## A070820.P8790255302302480086

`A006530(A008864(n+1)-2)+1`
-/

namespace A070820.P8790255302302480086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A008864 (n + 1) - 2).toNat + 1

end

end A070820.P8790255302302480086

namespace A070820

/-- `A006530(A008864(n+1)-2)+1` -/
def P8790255302302480086.Spec : Prop :=
  ∀ n, P8790255302302480086.a n = A070820 (n + 1)

end A070820

/-! ## A070820.P14818889842967182318

`A006530(A037168(n+1)/2)+1`
-/

namespace A070820.P14818889842967182318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A037168 (n + 1) : ℚ) / 2)).toNat + 1

end

end A070820.P14818889842967182318

namespace A070820

/-- `A006530(A037168(n+1)/2)+1` -/
def P14818889842967182318.Spec : Prop :=
  ∀ n, P14818889842967182318.a n = A070820 (n + 1)

end A070820

/-! ## A070820.P10203688840944749054

`A006530(A014689(n+1)+n)+1`
-/

namespace A070820.P10203688840944749054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014689 (n + 1) + (n : ℤ)).toNat + 1

end

end A070820.P10203688840944749054

namespace A070820

/-- `A006530(A014689(n+1)+n)+1` -/
def P10203688840944749054.Spec : Prop :=
  ∀ n, P10203688840944749054.a n = A070820 (n + 1)

end A070820

/-! ## A070820.P3937424342786007879

`A006530(record[A006530(n+2)-1])+1`
-/

namespace A070820.P3937424342786007879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A070820.P3937424342786007879

namespace A070820

/-- `A006530(record[A006530(n+2)-1])+1` -/
def P3937424342786007879.Spec : Prop :=
  ∀ n, P3937424342786007879.a n = A070820 (n + 1)

end A070820

/-! ## A070820.P94763910600832471

`∑{d}[A000040(n+1), A006530(A000010(#))]`
-/

namespace A070820.P94763910600832471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A006530 (A000010 d).toNat

end

end A070820.P94763910600832471

namespace A070820

/-- `∑{d}[A000040(n+1), A006530(A000010(#))]` -/
def P94763910600832471.Spec : Prop :=
  ∀ n, P94763910600832471.a n = A070820 (n + 1)

end A070820

/-! ## A070820.P6904560434724219720

`A006530(record[A173557(n+1)])+1`
-/

namespace A070820.P6904560434724219720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A070820.P6904560434724219720

namespace A070820

/-- `A006530(record[A173557(n+1)])+1` -/
def P6904560434724219720.Spec : Prop :=
  ∀ n, P6904560434724219720.a n = A070820 (n + 1)

end A070820

/-! ## A070820.P12127495466697855439

`A006530(eq[1, A001222(n+1)])+1`
-/

namespace A070820.P12127495466697855439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A070820.P12127495466697855439

namespace A070820

/-- `A006530(eq[1, A001222(n+1)])+1` -/
def P12127495466697855439.Spec : Prop :=
  ∀ n, P12127495466697855439.a n = A070820 (n + 1)

end A070820

/-! ## A070820.P10909223434199373706

`A006530(eq[2, A000005(n+1)])+1`
-/

namespace A070820.P10909223434199373706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A070820.P10909223434199373706

namespace A070820

/-- `A006530(eq[2, A000005(n+1)])+1` -/
def P10909223434199373706.Spec : Prop :=
  ∀ n, P10909223434199373706.a n = A070820 (n + 1)

end A070820

/-! ## A070820.P15935167540392265541

`A006530(eq[n, A000010(n+1)])+1`
-/

namespace A070820.P15935167540392265541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A070820.P15935167540392265541

namespace A070820

/-- `A006530(eq[n, A000010(n+1)])+1` -/
def P15935167540392265541.Spec : Prop :=
  ∀ n, P15935167540392265541.a n = A070820 (n + 1)

end A070820

/-!
# A070821: Integer part of n/(lpf(n)*gpf(n)), where lpf = A020639 is the least prime factor and gpf = A006530 the greatest prime factor.

The programs for A070821, there is no canonical definition to state claims against.
-/

/-! ## A070821.P9537450184617701470

`floor(A032742(n+1)/A006530(n+1))`
-/

namespace A070821.P9537450184617701470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032742 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ)⌋

end

end A070821.P9537450184617701470

/-! ## A070821.P17257158015915596754

`floor(A052126(n+1)/A020639(n+1))`
-/

namespace A070821.P17257158015915596754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052126 (n + 1) : ℚ) / (A020639 (n + 1) : ℚ)⌋

end

end A070821.P17257158015915596754

/-! ## A070821.P10292487072226021766

`floor((n+1)/A066048(n+1))`
-/

namespace A070821.P10292487072226021766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A066048 (n + 1) : ℚ)⌋

end

end A070821.P10292487072226021766

/-! ## A070821.P15014841329857667083

`round(A004442(n)/A066048(n+1))`
-/

namespace A070821.P15014841329857667083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A004442 n : ℚ) / (A066048 (n + 1) : ℚ))

end

end A070821.P15014841329857667083

/-! ## A070821.P2491554890775748636

`round(A109613(n)/A066048(n+1))`
-/

namespace A070821.P2491554890775748636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A109613 n : ℚ) / (A066048 (n + 1) : ℚ))

end

end A070821.P2491554890775748636

/-! ## A070821.P9031350933351361597

`A191558(n+1)/A066048(n+1)`
-/

namespace A070821.P9031350933351361597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191558 (n + 1) : ℚ) / (A066048 (n + 1) : ℚ)

end

end A070821.P9031350933351361597

/-! ## A070821.P11778877481665919428

`floor((n+1-A060681(n+1))/A006530(n+1))`
-/

namespace A070821.P11778877481665919428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) - A060681 (n + 1) : ℚ) / (A006530 (n + 1) : ℚ)⌋

end

end A070821.P11778877481665919428

/-! ## A070821.P4221519910340788960

`floor((n+1)/(A006530(n+1)*A020639(n+1)))`
-/

namespace A070821.P4221519910340788960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A006530 (n + 1) * A020639 (n + 1) : ℚ)⌋

end

end A070821.P4221519910340788960

/-! ## A070821.P87288720716112486

`floor(gcd((2*n+1)²+n, A220096(n+1))/A006530(n+1))`
-/

namespace A070821.P87288720716112486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Int.gcd ((2 * n + 1) ^ 2 + n : ℤ) (A220096 (n + 1)) : ℚ) / (A006530 (n + 1) : ℚ)⌋

end

end A070821.P87288720716112486

/-! ## A070821.P2006090832461122322

`A052126(A032742(n+1))-A010051(n+1)`
-/

namespace A070821.P2006090832461122322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A032742 (n + 1)).toNat - A010051 (n + 1)

end

end A070821.P2006090832461122322

/-! ## A070821.P4123647644047236384

`C(A052126(A032742(n+1)), A089026(n+1))`
-/

namespace A070821.P4123647644047236384
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A052126 (A032742 (n + 1)).toNat).toNat (A089026 (n + 1)).toNat

end

end A070821.P4123647644047236384

/-! ## A070821.P13829699355424742329

`xor(A010051(n+1), A032742(A052126(n+1)))`
-/

namespace A070821.P13829699355424742329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010051 (n + 1)) (A032742 (A052126 (n + 1)).toNat)

end

end A070821.P13829699355424742329

/-! ## A070821.P534049619353552364

`A052126(A032742(n+1))-char[A006093(n+1)]`
-/

namespace A070821.P534049619353552364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A032742 (n + 1)).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A070821.P534049619353552364

/-!
# A070822: Number of Cayley graphs isomorphic to the graph of the n-dimensional cube.

The programs for A070822, there is no canonical definition to state claims against.
-/

/-! ## A070822.P8314580327768984809

`char[2*n]+floor(n^sqrt(π))*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A070822.P8314580327768984809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌊(n : ℝ) ^ (Real.sqrt Real.pi)⌋ * a (n - 2)

end

end A070822.P8314580327768984809

/-!
# A070823: a(1)=0, a(1)=1, a(n+2)=abs(concatenate(a(n+1)a(n))-concatenate(a(n)a(n+1))).

The programs for A070823, there is no canonical definition to state claims against.
-/

/-! ## A070823.P13293425059757576201

`record[A056926(3*n^3)]`
-/

namespace A070823.P13293425059757576201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (3 * n ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070823.P13293425059757576201

/-!
# A070824: Number of divisors of n which are > 1 and < n (nontrivial divisors).

The programs for A070824, the canonical program `A070824.P6802822783910193033` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070824 has offset 1).

The definition of A070824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070824.P13764725385187643332

`floor(∑{d}[n+1, tanh(log2(#))])`
-/

namespace A070824.P13764725385187643332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), Real.tanh (Real.logb 2 (d : ℝ))⌋

end

end A070824.P13764725385187643332

namespace A070824

/-- `floor(∑{d}[n+1, tanh(log2(#))])` -/
def P13764725385187643332.Spec : Prop :=
  ∀ n, P13764725385187643332.a n = A070824 (n + 1)

end A070824

/-! ## A070824.P6802822783910193033

`n%(2-∏{e}[n+1, #+1]+n)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070824

/-- `n%(2-∏{e}[n+1, #+1]+n)` -/
def P6802822783910193033.Spec : Prop :=
  ∀ n, P6802822783910193033.a n = A070824 (n + 1)

theorem P6802822783910193033.correct : P6802822783910193033.Spec := by
  intro n
  simp only [A070824, Nat.add_sub_cancel]

end A070824

/-! ## A070824.P62808716806641813

`Δ[A325459(n)]`
-/

namespace A070824.P62808716806641813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070824.P62808716806641813

namespace A070824

/-- `Δ[A325459(n)]` -/
def P62808716806641813.Spec : Prop :=
  ∀ n, P62808716806641813.a n = A070824 (n + 1)

end A070824

/-! ## A070824.P3669001489100169002

`A325765(n)-1`
-/

namespace A070824.P3669001489100169002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n - 1

end

end A070824.P3669001489100169002

namespace A070824

/-- `A325765(n)-1` -/
def P3669001489100169002.Spec : Prop :=
  ∀ n, P3669001489100169002.a n = A070824 (n + 1)

end A070824

/-! ## A070824.P17057223455258983187

`n%A062968(n+1)`
-/

namespace A070824.P17057223455258983187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A062968 (n + 1))

end

end A070824.P17057223455258983187

namespace A070824

/-- `n%A062968(n+1)` -/
def P17057223455258983187.Spec : Prop :=
  ∀ n, P17057223455258983187.a n = A070824 (n + 1)

theorem P17057223455258983187.correct : P17057223455258983187.Spec := by
  intro n
  simp only [A070824, Nat.add_sub_cancel, A070824.P17057223455258983187.a, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A062968, A062968.P12745258028289340812.a, A049820, A049820.P9428372222244335888.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070824

/-! ## A070824.P14075350203437850547

`floor(log2(A069626(n+1)))`
-/

namespace A070824.P14075350203437850547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A069626 (n + 1)).toNat

end

end A070824.P14075350203437850547

namespace A070824

/-- `floor(log2(A069626(n+1)))` -/
def P14075350203437850547.Spec : Prop :=
  ∀ n, (P14075350203437850547.a n : ℤ) = A070824 (n + 1)

end A070824

/-! ## A070824.P4606011129168469425

`A134871(n+1)-(n+1)`
-/

namespace A070824.P4606011129168469425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134871 (n + 1) - (n + 1 : ℤ)

end

end A070824.P4606011129168469425

namespace A070824

/-- `A134871(n+1)-(n+1)` -/
def P4606011129168469425.Spec : Prop :=
  ∀ n, P4606011129168469425.a n = A070824 (n + 1)

theorem P4606011129168469425.correct : P4606011129168469425.Spec := by
  intro n
  simp only [A070824, Nat.add_sub_cancel, A070824.P4606011129168469425.a, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, A134871, A134871.P9338139683703064561.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070824

/-! ## A070824.P8265155964569614440

`(2*n)%A286002(n+1)`
-/

namespace A070824.P8265155964569614440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n : ℤ) (A286002 (n + 1))

end

end A070824.P8265155964569614440

namespace A070824

/-- `(2*n)%A286002(n+1)` -/
def P8265155964569614440.Spec : Prop :=
  ∀ n, P8265155964569614440.a n = A070824 (n + 1)

end A070824

/-! ## A070824.P7203792601069180690

`A000005(abs(1-n)+2)-2`
-/

namespace A070824.P7203792601069180690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 2).toNat - 2

end

end A070824.P7203792601069180690

namespace A070824

/-- `A000005(abs(1-n)+2)-2` -/
def P7203792601069180690.Spec : Prop :=
  ∀ n, P7203792601069180690.a n = A070824 (n + 1)

end A070824

/-! ## A070824.P12195278157414296459

`(A000005(n+1)-2)%(n+1)`
-/

namespace A070824.P12195278157414296459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1) - 2) (n + 1 : ℤ)

end

end A070824.P12195278157414296459

namespace A070824

/-- `(A000005(n+1)-2)%(n+1)` -/
def P12195278157414296459.Spec : Prop :=
  ∀ n, P12195278157414296459.a n = A070824 (n + 1)

end A070824

/-! ## A070824.P8825769165699828210

`Δ[a(n-1)+A000005(n)-2]` with `a(0)=0, a(1)=0`
-/

namespace A070824.P8825769165699828210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 1) + (A000005 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070824.P8825769165699828210

namespace A070824

/-- `Δ[a(n-1)+A000005(n)-2]` -/
def P8825769165699828210.Spec : Prop :=
  ∀ n, P8825769165699828210.a n = A070824 (n + 1)

end A070824

/-! ## A070824.P3189620857907835840

`A023443(A325765(n))`
-/

namespace A070824.P3189620857907835840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A325765 n).toNat

end

end A070824.P3189620857907835840

namespace A070824

/-- `A023443(A325765(n))` -/
def P3189620857907835840.Spec : Prop :=
  ∀ n, P3189620857907835840.a n = A070824 (n + 1)

end A070824

/-! ## A070824.P490854904573013972

`A023645(A046523(n+1))`
-/

namespace A070824.P490854904573013972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (A046523 (n + 1)).toNat

end

end A070824.P490854904573013972

namespace A070824

/-- `A023645(A046523(n+1))` -/
def P490854904573013972.Spec : Prop :=
  ∀ n, P490854904573013972.a n = A070824 (n + 1)

end A070824

/-! ## A070824.P2767410106432404486

`A023645(A071364(n+1))`
-/

namespace A070824.P2767410106432404486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (A071364 (n + 1)).toNat

end

end A070824.P2767410106432404486

namespace A070824

/-- `A023645(A071364(n+1))` -/
def P2767410106432404486.Spec : Prop :=
  ∀ n, P2767410106432404486.a n = A070824 (n + 1)

end A070824

/-! ## A070824.P2380339635028178873

`A049615(A066446(n+1))`
-/

namespace A070824.P2380339635028178873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049615 (A066446 (n + 1)).toNat

end

end A070824.P2380339635028178873

namespace A070824

/-- `A049615(A066446(n+1))` -/
def P2380339635028178873.Spec : Prop :=
  ∀ n, P2380339635028178873.a n = A070824 (n + 1)

end A070824

/-! ## A070824.P14117466897960463929

`A023645(A140635(n+1))`
-/

namespace A070824.P14117466897960463929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (A140635 (n + 1)).toNat

end

end A070824.P14117466897960463929

namespace A070824

/-- `A023645(A140635(n+1))` -/
def P14117466897960463929.Spec : Prop :=
  ∀ n, P14117466897960463929.a n = A070824 (n + 1)

end A070824

/-! ## A070824.P1958535290604591668

`A084360(A105555(n+1))`
-/

namespace A070824.P1958535290604591668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084360 (A105555 (n + 1)).toNat

end

end A070824.P1958535290604591668

namespace A070824

/-- `A084360(A105555(n+1))` -/
def P1958535290604591668.Spec : Prop :=
  ∀ n, P1958535290604591668.a n = A070824 (n + 1)

end A070824

/-! ## A070824.P3482539796008152414

`A289207(A000005(n+1))`
-/

namespace A070824.P3482539796008152414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A000005 (n + 1)).toNat

end

end A070824.P3482539796008152414

namespace A070824

/-- `A289207(A000005(n+1))` -/
def P3482539796008152414.Spec : Prop :=
  ∀ n, P3482539796008152414.a n = A070824 (n + 1)

end A070824

/-! ## A070824.P11366625599863695214

`A023645(A348717(n+1))`
-/

namespace A070824.P11366625599863695214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023645 (A348717 (n + 1)).toNat

end

end A070824.P11366625599863695214

namespace A070824

/-- `A023645(A348717(n+1))` -/
def P11366625599863695214.Spec : Prop :=
  ∀ n, P11366625599863695214.a n = A070824 (n + 1)

end A070824

/-!
# A070825: One half of product of first n+1 Lucas numbers A000032.

The programs for A070825, there is no canonical definition to state claims against.
-/

/-! ## A070825.P12866424290331221901

`∏[abs(ceil((-ϕ)^n))]`
-/

namespace A070825.P12866424290331221901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(-Real.goldenRatio) ^ n⌉|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A070825.P12866424290331221901

/-! ## A070825.P1016863509122304176

`round(ϕ^n)*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A070825.P1016863509122304176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n) * a (n - 1)

end

end A070825.P1016863509122304176

/-! ## A070825.P9254780302074607487

`A135407(n)/2`
-/

namespace A070825.P9254780302074607487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135407 n : ℚ) / 2

end

end A070825.P9254780302074607487

/-! ## A070825.P7596597300832047176

`∏[A000032(n)]/2`
-/

namespace A070825.P7596597300832047176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A070825.P7596597300832047176

/-!
# A070826: One half of product of first n primes A000040.

The programs for A070826, the canonical program `A070826.P17587218534478786378` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070826 has offset 1).

The definition of A070826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070826.P4164134857051602212

`A002110(n+1)/2`
-/

namespace A070826.P4164134857051602212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) / 2

end

end A070826.P4164134857051602212

namespace A070826

/-- `A002110(n+1)/2` -/
def P4164134857051602212.Spec : Prop :=
  ∀ n, P4164134857051602212.a n = (A070826 (n + 1) : ℚ)

end A070826

/-! ## A070826.P17587218534478786378

`A000040(n+1)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A070826

/-- `A000040(n+1)*a(n-1)` -/
def P17587218534478786378.Spec : Prop :=
  ∀ n, P17587218534478786378.a n = A070826 (n + 1)

theorem P17587218534478786378.correct : P17587218534478786378.Spec := by
  intro n
  simp only [A070826, Nat.add_sub_cancel]

end A070826

/-! ## A070826.P17172455054156121444

`A024451(n+1)-2*A203008(n)`
-/

namespace A070826.P17172455054156121444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024451 (n + 1) - 2 * A203008 n

end

end A070826.P17172455054156121444

namespace A070826

/-- `A024451(n+1)-2*A203008(n)` -/
def P17172455054156121444.Spec : Prop :=
  ∀ n, P17172455054156121444.a n = A070826 (n + 1)

end A070826

/-! ## A070826.P17126304297827356575

`∏[lt[n, ∑{p}[2*n, #]]]`
-/

namespace A070826.P17126304297827356575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A070826.P17126304297827356575

namespace A070826

/-- `∏[lt[n, ∑{p}[2*n, #]]]` -/
def P17126304297827356575.Spec : Prop :=
  ∀ n, (P17126304297827356575.a n : ℤ) = A070826 (n + 1)

end A070826

/-! ## A070826.P12543585489053473166

`∏[A073060(∑[n])]`
-/

namespace A070826.P12543585489053473166
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073060 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A070826.P12543585489053473166

namespace A070826

/-- `∏[A073060(∑[n])]` -/
def P12543585489053473166.Spec : Prop :=
  ∀ n, P12543585489053473166.a n = A070826 (n + 1)

end A070826

/-! ## A070826.P13921368936378593840

`∏[record[A110560(n)]]`
-/

namespace A070826.P13921368936378593840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A070826.P13921368936378593840

namespace A070826

/-- `∏[record[A110560(n)]]` -/
def P13921368936378593840.Spec : Prop :=
  ∀ n, P13921368936378593840.a n = A070826 (n + 1)

end A070826

/-! ## A070826.P16540222020248395545

`∏[record[A128059(n)]]`
-/

namespace A070826.P16540222020248395545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128059 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A070826.P16540222020248395545

namespace A070826

/-- `∏[record[A128059(n)]]` -/
def P16540222020248395545.Spec : Prop :=
  ∀ n, P16540222020248395545.a n = A070826 (n + 1)

end A070826

/-! ## A070826.P16973240654468127697

`∏[record[A172170(n)]]`
-/

namespace A070826.P16973240654468127697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172170 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A070826.P16973240654468127697

namespace A070826

/-- `∏[record[A172170(n)]]` -/
def P16973240654468127697.Spec : Prop :=
  ∀ n, P16973240654468127697.a n = A070826 (n + 1)

end A070826

/-! ## A070826.P5068570674412653736

`A077011(∑[n+1])`
-/

namespace A070826.P5068570674412653736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077011 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070826.P5068570674412653736

namespace A070826

/-- `A077011(∑[n+1])` -/
def P5068570674412653736.Spec : Prop :=
  ∀ n, P5068570674412653736.a n = A070826 (n + 1)

end A070826

/-!
# A070827: Sum of prime factors of Lucas numbers A000032(n),n=0, n>=2, with n=1 term added.

The programs for A070827, there is no canonical definition to state claims against.
-/

/-! ## A070827.P7926515390437597348

`A337310(A000032(n))`
-/

namespace A070827.P7926515390437597348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337310 (A000032 n).toNat

end

end A070827.P7926515390437597348

/-! ## A070827.P3106700334885235332

`A001414(Δ[A001610(n)])+char[1]`
-/

namespace A070827.P3106700334885235332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A070827.P3106700334885235332

/-! ## A070827.P8341276776508230982

`A063524(n)+A001414(A000032(n))`
-/

namespace A070827.P8341276776508230982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n + A001414 (A000032 n).toNat

end

end A070827.P8341276776508230982

/-! ## A070827.P119300179068508764

`A178333(n)+A001414(A000032(n))`
-/

namespace A070827.P119300179068508764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178333 n + A001414 (A000032 n).toNat

end

end A070827.P119300179068508764

/-! ## A070827.P9517347747634636012

`A001414(A000032(n))-A159075(n)`
-/

namespace A070827.P9517347747634636012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A000032 n).toNat - A159075 n

end

end A070827.P9517347747634636012

/-!
# A070828: Sum of prime factors of Catalan numbers A000108(n), n>=2, with n=0 and n=1 terms added.

The programs for A070828, there is no canonical definition to state claims against.
-/

/-! ## A070828.P12167836197787843980

`A337310(A000108(n))`
-/

namespace A070828.P12167836197787843980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337310 (A000108 n).toNat

end

end A070828.P12167836197787843980

/-! ## A070828.P3950944480935535216

`A337310(A120588(n+1))`
-/

namespace A070828.P3950944480935535216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337310 (A120588 (n + 1)).toNat

end

end A070828.P3950944480935535216

/-! ## A070828.P2591491271901262854

`A014067(n)+A001414(A000108(n))`
-/

namespace A070828.P2591491271901262854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014067 n + A001414 (A000108 n).toNat

end

end A070828.P2591491271901262854

/-! ## A070828.P11254011286078744900

`A016412(n)+A008475(A000108(n))`
-/

namespace A070828.P11254011286078744900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016412 n + A008475 (A000108 n).toNat

end

end A070828.P11254011286078744900

/-! ## A070828.P16824508691117674916

`A205987(n)+A001414(A000108(n))`
-/

namespace A070828.P16824508691117674916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205987 n + A001414 (A000108 n).toNat

end

end A070828.P16824508691117674916

/-!
# A070829: Array showing which primes divide n >= 2.

The programs for A070829, there is no canonical definition to state claims against.
-/

/-! ## A070829.P14318426367255031569

`char[∑[A287352(n+1)]-1]`
-/

namespace A070829.P14318426367255031569
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287352 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A070829.P14318426367255031569

/-! ## A070829.P8979570905561439630

`char[∑[A287352(A065475(n+1))]]`
-/

namespace A070829.P8979570905561439630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287352 (A065475 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A070829.P8979570905561439630

/-! ## A070829.P7883500956839863804

`round(atan(A067255(n+2)))`
-/

namespace A070829.P7883500956839863804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (A067255 (n + 2) : ℝ))

end

end A070829.P7883500956839863804

/-! ## A070829.P8330937068558944246

`ceil(A067255(n+2)/A000009(n))`
-/

namespace A070829.P8330937068558944246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067255 (n + 2) : ℚ) / (A000009 n : ℚ)⌉

end

end A070829.P8330937068558944246

/-! ## A070829.P12607218031001347356

`ceil(A067255(n+2)/A000145(n))`
-/

namespace A070829.P12607218031001347356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067255 (n + 2) : ℚ) / (A000145 n : ℚ)⌉

end

end A070829.P12607218031001347356

/-! ## A070829.P17402365573807106993

`ceil(A067255(n+2)/A000040(n+1))`
-/

namespace A070829.P17402365573807106993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067255 (n + 2) : ℚ) / (A000040 (n + 1) : ℚ)⌉

end

end A070829.P17402365573807106993

/-! ## A070829.P2488852957005922313

`char[A023443(∑[A287352(n+1)])]`
-/

namespace A070829.P2488852957005922313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287352 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A070829.P2488852957005922313

/-! ## A070829.P1595972206710035412

`ceil(A067255(n+2)/A315018(n))`
-/

namespace A070829.P1595972206710035412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067255 (n + 2) : ℚ) / (A315018 n : ℚ)⌉

end

end A070829.P1595972206710035412

/-! ## A070829.P6468220618973466396

`ceil(A067255(n+2)/A100505(n))`
-/

namespace A070829.P6468220618973466396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A067255 (n + 2) : ℚ) / (A100505 n : ℚ)⌉

end

end A070829.P6468220618973466396

/-! ## A070829.P4862350995047645371

`A057427((n+4)*A067255(n+2))`
-/

namespace A070829.P4862350995047645371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((n + 4 : ℤ) * A067255 (n + 2)).toNat

end

end A070829.P4862350995047645371

/-!
# A070830: Number of wide partitions of n.

The programs for A070830, there is no canonical definition to state claims against.
-/

/-! ## A070830.P4470126733961654245

`ceil(A267198(n+3)/A228157(n+1))`
-/

namespace A070830.P4470126733961654245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A267198 (n + 3) : ℚ) / (A228157 (n + 1) : ℚ)⌉

end

end A070830.P4470126733961654245

/-! ## A070830.P3901238654857825057

`Δ[A123578(A182269(2*n))]`
-/

namespace A070830.P3901238654857825057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (A182269 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070830.P3901238654857825057

/-! ## A070830.P15248934491564610982

`A220104(record[Δ[A323243(n+1)]])`
-/

namespace A070830.P15248934491564610982
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323243 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220104 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070830.P15248934491564610982

/-! ## A070830.P9290067381342687044

`floor(A080653(∑[2^n])/A048816(n+3))`
-/

namespace A070830.P9290067381342687044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A080653 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A048816 (n + 3) : ℚ)⌋

end

end A070830.P9290067381342687044

/-! ## A070830.P15089226513185067052

`A143824(A354580(n)+A272619(n+1))`
-/

namespace A070830.P15089226513185067052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (A354580 n + A272619 (n + 1)).toNat

end

end A070830.P15089226513185067052

/-!
# A070832: a(n) = Sum_{k=0..n} binomial(8*n,8*k).

The programs for A070832, there is no canonical definition to state claims against.
-/

/-! ## A070832.P15652261394741183920

`A377840(4*n)`
-/

namespace A070832.P15652261394741183920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377840 (4 * n)

end

end A070832.P15652261394741183920

/-! ## A070832.P3022159285576990429

`A306859(8*n)`
-/

namespace A070832.P3022159285576990429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306859 (8 * n)

end

end A070832.P3022159285576990429

/-! ## A070832.P7126980980773195349

`record[A306859(A195161(n))]`
-/

namespace A070832.P7126980980773195349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306859 (A195161 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070832.P7126980980773195349

/-! ## A070832.P17349706076853469506

`gcd(A151934(n), A306859(A022144(n)))`
-/

namespace A070832.P17349706076853469506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151934 n) (A306859 (A022144 n).toNat)

end

end A070832.P17349706076853469506

/-! ## A070832.P6236298766455902608

`lcm(A000079(n), A306859(A022144(n)))`
-/

namespace A070832.P6236298766455902608
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A306859 (A022144 n).toNat)

end

end A070832.P6236298766455902608

/-!
# A070833: a(n) = Sum_{k=0..n} binomial(10*n,10*k).

The programs for A070833, there is no canonical definition to state claims against.
-/

/-! ## A070833.P608829247410676407

`A378254(5*n)`
-/

namespace A070833.P608829247410676407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378254 (5 * n)

end

end A070833.P608829247410676407

/-! ## A070833.P14818175734701327067

`A308500(eq[10, A025581(n)])`
-/

namespace A070833.P14818175734701327067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070833.P14818175734701327067

/-!
# A070834: a(n) = reverse(n)^n.

The programs for A070834, there is no canonical definition to state claims against.
-/

/-! ## A070834.P11383477621441225046

`A004086(n+1)^(n+1)`
-/

namespace A070834.P11383477621441225046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n + 1) ^ (n + 1)

end

end A070834.P11383477621441225046

/-! ## A070834.P225584319948910529

`ratio[A062919(n)]^(n+1)`
-/

namespace A070834.P225584319948910529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062919 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℚ) / (f1 n : ℚ)) ^ (n + 1)

end

end A070834.P225584319948910529

/-! ## A070834.P9096104743600293481

`A345110(n+1)^(n+1)`
-/

namespace A070834.P9096104743600293481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345110 (n + 1) ^ (n + 1)

end

end A070834.P9096104743600293481

/-! ## A070834.P8335052079706689479

`A135020(2*(n+1))^(n+1)`
-/

namespace A070834.P8335052079706689479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (2 * (n + 1)) ^ (n + 1)

end

end A070834.P8335052079706689479

/-! ## A070834.P9752322313823206686

`(A052008(n+1)-(n+1))^(n+1)`
-/

namespace A070834.P9752322313823206686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052008 (n + 1) - (n + 1 : ℤ)) ^ (n + 1)

end

end A070834.P9752322313823206686

/-! ## A070834.P15394421834730362492

`(n+1-A056965(n+1))^(n+1)`
-/

namespace A070834.P15394421834730362492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A056965 (n + 1)) ^ (n + 1)

end

end A070834.P15394421834730362492

/-! ## A070834.P1714027870990917021

`(A056964(n+1)-(n+1))^(n+1)`
-/

namespace A070834.P1714027870990917021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056964 (n + 1) - (n + 1 : ℤ)) ^ (n + 1)

end

end A070834.P1714027870990917021

/-! ## A070834.P854174275959976716

`(A061205(n+1)/(n+1))^(n+1)`
-/

namespace A070834.P854174275959976716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A061205 (n + 1) : ℚ) / (n + 1 : ℚ)) ^ (n + 1)

end

end A070834.P854174275959976716

/-! ## A070834.P8008525264130923884

`(n+2-A160928(n+2))^(n+1)`
-/

namespace A070834.P8008525264130923884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) - A160928 (n + 2)) ^ (n + 1)

end

end A070834.P8008525264130923884

/-! ## A070834.P15646160541145852855

`(A160927(n+2)-(n+2))^(n+1)`
-/

namespace A070834.P15646160541145852855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A160927 (n + 2) - (n + 2 : ℤ)) ^ (n + 1)

end

end A070834.P15646160541145852855

/-!
# A070837: Smallest number k such that abs(k - R(k)) = 9n, where R(k) is digit reversal of k (A004086); or 0 if no such k exists.

The programs for A070837, there is no canonical definition to state claims against.
-/

/-! ## A070837.P5712065169827597080

`A060982(∑[round(sqrt(n)/2)^n])`
-/

namespace A070837.P5712065169827597080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) / 2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060982 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A070837.P5712065169827597080

/-! ## A070837.P5795444914918707831

`A327270(C(lt[0, ∏{digits}[n, (1-#)²]], n))`
-/

namespace A070837.P5795444914918707831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (1 - (x : ℤ)) ^ 2).prod

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327270 (Nat.choose (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) n)

end

end A070837.P5795444914918707831

/-! ## A070837.P4379600435163735137

`A086919(A062399(n+2))`
-/

namespace A070837.P4379600435163735137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086919 (A062399 (n + 2)).toNat

end

end A070837.P4379600435163735137

/-! ## A070837.P15909046018437993062

`A118759(A086919(n+2))`
-/

namespace A070837.P15909046018437993062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A086919 (n + 2)).toNat

end

end A070837.P15909046018437993062

/-! ## A070837.P2619724566252821281

`A086919(A351870(n+2))`
-/

namespace A070837.P2619724566252821281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086919 (A351870 (n + 2)).toNat

end

end A070837.P2619724566252821281

/-!
# A070839: Smallest number k such that k + R(k) is a multiple of 11 different from all previous cases, where R(k) is digit reversal of k (A004086).

The programs for A070839, there is no canonical definition to state claims against.
-/

/-! ## A070839.P5010478185477740195

`record[A189506(n+1)+9]`
-/

namespace A070839.P5010478185477740195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189506 (n + 1) + 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070839.P5010478185477740195

/-! ## A070839.P7513209515850745027

`eq[floor(n/10), A067032(n-9*floor(n/10))]`
-/

namespace A070839.P7513209515850745027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 10⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 ((n : ℤ) - 9 * ⌊(n : ℚ) / 10⌋).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070839.P7513209515850745027

/-! ## A070839.P13704867956629529848

`(a(n-1)+10^floor((n-1)/9))%A153672(n+1)` with `a(0)=10`
-/

namespace A070839.P13704867956629529848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [10] fun n a =>
  Int.tmod (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) + (10 : ℚ) ^ (⌊((n : ℤ) - 1 : ℚ) / 9⌋ : ℤ))) (A153672 (n + 1))

end

end A070839.P13704867956629529848

/-! ## A070839.P11588375101089585406

`A161561(A076084(n+1))`
-/

namespace A070839.P11588375101089585406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161561 (A076084 (n + 1)).toNat

end

end A070839.P11588375101089585406

/-! ## A070839.P7856385573721082921

`A118759(A161561(n+1))`
-/

namespace A070839.P7856385573721082921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A161561 (n + 1)).toNat

end

end A070839.P7856385573721082921

/-!
# A070840: Repdigits (A010785) ordered by sum of digits (A007953).

The programs for A070840, there is no canonical definition to state claims against.
-/

/-! ## A070840.P1390536874280529928

`A261300(lt[A333632(n), 2])`
-/

namespace A070840.P1390536874280529928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333632 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A070840.P1390536874280529928

/-! ## A070840.P15014033640640411602

`A261300(lt[A334028(n), 2])`
-/

namespace A070840.P15014033640640411602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A070840.P15014033640640411602

/-! ## A070840.P4011236231123296059

`A261300(lt[A179680(n+1), 2])`
-/

namespace A070840.P4011236231123296059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179680 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A070840.P4011236231123296059

/-! ## A070840.P13173969284088374741

`A261300(eq[A000120(n), A333224(n)])`
-/

namespace A070840.P13173969284088374741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A070840.P13173969284088374741

/-! ## A070840.P5782560978892298381

`A261300(eq[A000120(n), A334300(n)])`
-/

namespace A070840.P5782560978892298381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261300 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A070840.P5782560978892298381

/-!
# A070841: Repdigits (A010785), excluding repunits (A002275), ordered by product of digits (A007954).

The programs for A070841, there is no canonical definition to state claims against.
-/

/-! ## A070841.P2129015610281206829

`filter[A331603(n+2), A136522(#)]`
-/

namespace A070841.P2129015610281206829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331603 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A070841.P2129015610281206829

/-! ## A070841.P1910032221443786537

`filter[A331603(n+2), A202022(#)]`
-/

namespace A070841.P1910032221443786537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331603 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202022 (f1 j).toNat = 1) n)

end

end A070841.P1910032221443786537

/-!
# A070842: Smallest n-digit number with exactly n prime divisors. There are no further terms.

The programs for A070842, there is no canonical definition to state claims against.
-/

/-! ## A070842.P14559298005708902721

`A077326(n+1)%A052984(2^n)`
-/

namespace A070842.P14559298005708902721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077326 (n + 1)) (A052984 (2 ^ n))

end

end A070842.P14559298005708902721

/-! ## A070842.P3621252823657404748

`A077326(n+1)%A034316(A000045(n))`
-/

namespace A070842.P3621252823657404748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077326 (n + 1)) (A034316 (A000045 n).toNat)

end

end A070842.P3621252823657404748

/-!
# A070843: Largest n-digit number with exactly n distinct prime divisors. There are no further terms.

The programs for A070843, there is no canonical definition to state claims against.
-/

/-! ## A070843.P13363119375913764730

`10^(n+1)-A000120(A319466(n))`
-/

namespace A070843.P13363119375913764730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - A000120 (A319466 n).toNat

end

end A070843.P13363119375913764730

/-!
# A070844: a(n) = smallest n-digit number with exactly n divisors, or 0 if no such number exists.

The programs for A070844, there is no canonical definition to state claims against.
-/

/-! ## A070844.P15758122978988123259

`A091732(A125315(n+1))+A001065(n+1)`
-/

namespace A070844.P15758122978988123259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (A125315 (n + 1)).toNat + A001065 (n + 1)

end

end A070844.P15758122978988123259

/-!
# A070846: Smallest prime == 1 (mod 2n).

The programs for A070846, there is no canonical definition to state claims against.
-/

/-! ## A070846.P11303418682387484543

`2*(n+1)*A016014(n+1)+1`
-/

namespace A070846.P11303418682387484543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A016014 (n + 1) + 1

end

end A070846.P11303418682387484543

/-! ## A070846.P12334170066904953697

`2*(n+1)*A034693(2*(n+1))+1`
-/

namespace A070846.P12334170066904953697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A034693 (2 * (n + 1)) + 1

end

end A070846.P12334170066904953697

/-! ## A070846.P13700228773054344473

`A034694(2*(n+1))`
-/

namespace A070846.P13700228773054344473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (2 * (n + 1))

end

end A070846.P13700228773054344473

/-! ## A070846.P5441995095310991732

`A086507(2*(n+1))`
-/

namespace A070846.P5441995095310991732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (2 * (n + 1))

end

end A070846.P5441995095310991732

/-! ## A070846.P6652520338709401513

`p?[A034694(n+1)+A141310(n)-2]`
-/

namespace A070846.P6652520338709401513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (n + 1) + (A141310 n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070846.P6652520338709401513

/-! ## A070846.P13716115755608054298

`A000040(A391765(2*(n+1)))`
-/

namespace A070846.P13716115755608054298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A391765 (2 * (n + 1))).toNat

end

end A070846.P13716115755608054298

/-! ## A070846.P3140014457670314752

`A007947(A034694(n+2+n))`
-/

namespace A070846.P3140014457670314752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A034694 (n + 2 + n)).toNat

end

end A070846.P3140014457670314752

/-! ## A070846.P10044838394504604839

`A006530(A034694(Δ[2*A000124(n)]))`
-/

namespace A070846.P10044838394504604839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034694 (f1 (n + 1) - f1 n).toNat).toNat

end

end A070846.P10044838394504604839

/-! ## A070846.P18220287447335055335

`A020639(A034694(record[2*A028242(n)]))`
-/

namespace A070846.P18220287447335055335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A034694 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A070846.P18220287447335055335

/-! ## A070846.P17997530172611903781

`A006530(A034694(record[2*A123108(n)]))`
-/

namespace A070846.P17997530172611903781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034694 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A070846.P17997530172611903781

/-! ## A070846.P1530965779015861961

`A341845((n+1)*A016014(n+1))`
-/

namespace A070846.P1530965779015861961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341845 ((n + 1 : ℤ) * A016014 (n + 1)).toNat

end

end A070846.P1530965779015861961

/-! ## A070846.P3471791655996159989

`A005408((n+1)*A016014(n+1))`
-/

namespace A070846.P3471791655996159989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 ((n + 1 : ℤ) * A016014 (n + 1)).toNat

end

end A070846.P3471791655996159989

/-! ## A070846.P5860384604116459175

`A093574((n+1)*A016014(n+1))`
-/

namespace A070846.P5860384604116459175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093574 ((n + 1 : ℤ) * A016014 (n + 1)).toNat

end

end A070846.P5860384604116459175

/-! ## A070846.P13111044449814504411

`A060940(A002088(2*n+1)+1)`
-/

namespace A070846.P13111044449814504411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060940 (A002088 (2 * n + 1) + 1).toNat

end

end A070846.P13111044449814504411

/-!
# A070847: Smallest prime == 1 mod (3n).

The programs for A070847, there is no canonical definition to state claims against.
-/

/-! ## A070847.P16670121342538752420

`A070850(A026741(n+1))`
-/

namespace A070847.P16670121342538752420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070850 (A026741 (n + 1)).toNat

end

end A070847.P16670121342538752420

/-! ## A070847.P13192659508733385970

`A070846(A165351(n+1))`
-/

namespace A070847.P13192659508733385970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A165351 (n + 1)).toNat

end

end A070847.P13192659508733385970

/-! ## A070847.P9500176444475065274

`A034694(3*(n+1))`
-/

namespace A070847.P9500176444475065274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (3 * (n + 1))

end

end A070847.P9500176444475065274

/-! ## A070847.P12885945073673472654

`A006530(A034694(n+3+n+n))`
-/

namespace A070847.P12885945073673472654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034694 (n + 3 + n + n)).toNat

end

end A070847.P12885945073673472654

/-! ## A070847.P11395314771357064904

`A014963(A034694(A008574(n+1)-(n+1)))`
-/

namespace A070847.P11395314771357064904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A034694 (A008574 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A070847.P11395314771357064904

/-!
# A070848: Smallest prime == 1 mod (4n).

The programs for A070848, there is no canonical definition to state claims against.
-/

/-! ## A070848.P1870160306935107091

`A070846(2*(n+1))`
-/

namespace A070848.P1870160306935107091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (2 * (n + 1))

end

end A070848.P1870160306935107091

/-! ## A070848.P9395063771465665583

`xor(1, A070846(n+2+n))+1`
-/

namespace A070848.P9395063771465665583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A070846 (n + 2 + n)) + 1

end

end A070848.P9395063771465665583

/-! ## A070848.P7290415525575709178

`A016014(2*(n+1))*4*(n+1)+1`
-/

namespace A070848.P7290415525575709178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (2 * (n + 1)) * (4 * (n + 1) : ℤ) + 1

end

end A070848.P7290415525575709178

/-! ## A070848.P1445157605681186478

`p?[A070846(n+2)+A000035(n)]`
-/

namespace A070848.P1445157605681186478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (n + 2) + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070848.P1445157605681186478

/-! ## A070848.P1013761002788469297

`A034694(4*(n+1))`
-/

namespace A070848.P1013761002788469297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (4 * (n + 1))

end

end A070848.P1013761002788469297

/-! ## A070848.P5009213570660223463

`A086507(4*(n+1))`
-/

namespace A070848.P5009213570660223463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (4 * (n + 1))

end

end A070848.P5009213570660223463

/-! ## A070848.P7434346073711934275

`A014963(A070846(n+2+n))`
-/

namespace A070848.P7434346073711934275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A070846 (n + 2 + n)).toNat

end

end A070848.P7434346073711934275

/-!
# A070849: Smallest prime == 1 mod (5n).

The programs for A070849, there is no canonical definition to state claims against.
-/

/-! ## A070849.P1882079295416384659

`A034694(5*(n+1))`
-/

namespace A070849.P1882079295416384659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (5 * (n + 1))

end

end A070849.P1882079295416384659

/-! ## A070849.P10105377668624694193

`A086507(5*lcm(2, n+1))`
-/

namespace A070849.P10105377668624694193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (5 * Nat.lcm 2 (n + 1))

end

end A070849.P10105377668624694193

/-! ## A070849.P5122562612482769828

`A086507(5*(C(xor(1, n), n)+n+1))`
-/

namespace A070849.P5122562612482769828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (5 * (Nat.choose (Nat.xor 1 n) n + n + 1))

end

end A070849.P5122562612482769828

/-! ## A070849.P9193020785247826621

`A089348(gcd(n+1, ∑[n]))`
-/

namespace A070849.P9193020785247826621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089348 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A070849.P9193020785247826621

/-! ## A070849.P6642964456474234733

`A089348(lcm((n+1)/2^val(n+1, 2), (n+1)/∏{p}[n+1, #]))`
-/

namespace A070849.P6642964456474234733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089348 (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))))

end

end A070849.P6642964456474234733

/-! ## A070849.P15370715258538343548

`A089348(A026741(n+1))`
-/

namespace A070849.P15370715258538343548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089348 (A026741 (n + 1)).toNat

end

end A070849.P15370715258538343548

/-!
# A070850: Smallest prime == 1 mod (6n).

The programs for A070850, there is no canonical definition to state claims against.
-/

/-! ## A070850.P15589469771727596284

`A070846(3*(n+1))`
-/

namespace A070850.P15589469771727596284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (3 * (n + 1))

end

end A070850.P15589469771727596284

/-! ## A070850.P4759638444360468846

`p?[A070846(n+1)%((n+1)^(n%3))]`
-/

namespace A070850.P4759638444360468846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070846 (n + 1)) ((n + 1) ^ (n % 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070850.P4759638444360468846

/-! ## A070850.P13245079927755405286

`A070847(A022998(n+1))`
-/

namespace A070850.P13245079927755405286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070847 (A022998 (n + 1)).toNat

end

end A070850.P13245079927755405286

/-! ## A070850.P384983655272457650

`A070847(A257088(n+1))`
-/

namespace A070850.P384983655272457650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070847 (A257088 (n + 1)).toNat

end

end A070850.P384983655272457650

/-! ## A070850.P1324289033854911141

`A070847(2*(n+1))`
-/

namespace A070850.P1324289033854911141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070847 (2 * (n + 1))

end

end A070850.P1324289033854911141

/-! ## A070850.P8534202726928132022

`A034694(A165988(n+1))`
-/

namespace A070850.P8534202726928132022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A165988 (n + 1)).toNat

end

end A070850.P8534202726928132022

/-! ## A070850.P4355985184611790006

`A034694(A298028(n+1))`
-/

namespace A070850.P4355985184611790006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A298028 (n + 1)).toNat

end

end A070850.P4355985184611790006

/-! ## A070850.P7964450837744865234

`A034694(6*(n+1))`
-/

namespace A070850.P7964450837744865234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (6 * (n + 1))

end

end A070850.P7964450837744865234

/-! ## A070850.P524937402134105421

`A086507(6*(n+1))`
-/

namespace A070850.P524937402134105421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (6 * (n + 1))

end

end A070850.P524937402134105421

/-! ## A070850.P1675870933449982792

`A020639(A070846(n+3+n+n))`
-/

namespace A070850.P1675870933449982792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A070846 (n + 3 + n + n)).toNat

end

end A070850.P1675870933449982792

/-! ## A070850.P7026842521337102182

`A014963(A070847(n+2+n))`
-/

namespace A070850.P7026842521337102182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A070847 (n + 2 + n)).toNat

end

end A070850.P7026842521337102182

/-!
# A070851: Smallest prime == 1 mod (7n).

The programs for A070851, there is no canonical definition to state claims against.
-/

/-! ## A070851.P16200346922035032616

`A034694(7*(n+1))`
-/

namespace A070851.P16200346922035032616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (7 * (n + 1))

end

end A070851.P16200346922035032616

/-! ## A070851.P9927326013844457207

`A034694(A017041(n)+2)%A281437(n+1)`
-/

namespace A070851.P9927326013844457207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034694 (A017041 n + 2).toNat) (A281437 (n + 1))

end

end A070851.P9927326013844457207

/-! ## A070851.P14014807611717618405

`A086507(7*lcm(2, n+1))`
-/

namespace A070851.P14014807611717618405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (7 * Nat.lcm 2 (n + 1))

end

end A070851.P14014807611717618405

/-!
# A070852: Smallest prime == 1 mod (8n).

The programs for A070852, there is no canonical definition to state claims against.
-/

/-! ## A070852.P10708483542246887624

`A070846(4*(n+1))`
-/

namespace A070852.P10708483542246887624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (4 * (n + 1))

end

end A070852.P10708483542246887624

/-! ## A070852.P9803187267092082184

`A070848(2*(n+1))`
-/

namespace A070852.P9803187267092082184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070848 (2 * (n + 1))

end

end A070852.P9803187267092082184

/-! ## A070852.P1541673944807909863

`A034694(8*(n+1))`
-/

namespace A070852.P1541673944807909863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (8 * (n + 1))

end

end A070852.P1541673944807909863

/-! ## A070852.P17356796395902312103

`A086507(8*(n+1))`
-/

namespace A070852.P17356796395902312103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (8 * (n + 1))

end

end A070852.P17356796395902312103

/-! ## A070852.P9552347041900232565

`A020639(A070846(record[xor(3, n)]+1))`
-/

namespace A070852.P9552347041900232565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A070846 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A070852.P9552347041900232565

/-! ## A070852.P3455021467501808668

`A020639(A034694(Δ[xor(1, 2*n)²]))`
-/

namespace A070852.P3455021467501808668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A034694 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A070852.P3455021467501808668

/-! ## A070852.P8778509791816279846

`A006530(A034694(Δ[(n+1+n)²]))`
-/

namespace A070852.P8778509791816279846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1 + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034694 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A070852.P8778509791816279846

/-! ## A070852.P16862682527891385716

`A006530(A086507(Δ[(n+1+n)²]))`
-/

namespace A070852.P16862682527891385716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1 + n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A086507 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A070852.P16862682527891385716

/-! ## A070852.P12692108034862742845

`A014963(A070848(n+2+n))`
-/

namespace A070852.P12692108034862742845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A070848 (n + 2 + n)).toNat

end

end A070852.P12692108034862742845

/-!
# A070853: Smallest prime == 1 mod (9n).

The programs for A070853, there is no canonical definition to state claims against.
-/

/-! ## A070853.P16687081314564631585

`A070850(A165351(n+1))`
-/

namespace A070853.P16687081314564631585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070850 (A165351 (n + 1)).toNat

end

end A070853.P16687081314564631585

/-! ## A070853.P1164224978815557471

`A070847(3*(n+1))`
-/

namespace A070853.P1164224978815557471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070847 (3 * (n + 1))

end

end A070853.P1164224978815557471

/-! ## A070853.P15239463985244103767

`A034694(9*(n+1))`
-/

namespace A070853.P15239463985244103767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (9 * (n + 1))

end

end A070853.P15239463985244103767

/-! ## A070853.P6950708959471123087

`A086507(9*lcm(2, n+1))`
-/

namespace A070853.P6950708959471123087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (9 * Nat.lcm 2 (n + 1))

end

end A070853.P6950708959471123087

/-! ## A070853.P72867057881436860

`A017173((n+1)*A368201(n+1))`
-/

namespace A070853.P72867057881436860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 ((n + 1 : ℤ) * A368201 (n + 1)).toNat

end

end A070853.P72867057881436860

/-!
# A070854: Smallest prime == 1 mod (10^n).

The programs for A070854, there is no canonical definition to state claims against.
-/

/-! ## A070854.P17131755230228485768

`A121172(n+1)*10^(n+1)+1`
-/

namespace A070854.P17131755230228485768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121172 (n + 1) * (10 ^ (n + 1) : ℤ) + 1

end

end A070854.P17131755230228485768

/-!
# A070855: Smallest prime of the form k*n^n + 1.

The programs for A070855, there is no canonical definition to state claims against.
-/

/-! ## A070855.P8672186925107170641

`A034694(record[n^dr(n)])`
-/

namespace A070855.P8672186925107170641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.digitalRoot (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A070855.P8672186925107170641

/-!
# A070857: Expansion of (1+x*C)*C^4, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A070857, the canonical program `A070857.P5345200539959730910` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070857 has offset 0).

The definition of A070857 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070857.P5345200539959730910

`2*A002057(n)-A000245(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A070857

/-- `2*A002057(n)-A000245(n+1)` -/
def P5345200539959730910.Spec : Prop :=
  ∀ n, P5345200539959730910.a n = A070857 n

theorem P5345200539959730910.correct : P5345200539959730910.Spec := by
  intro n
  simp only [A070857]

end A070857

/-! ## A070857.P3530114420366538611

`(13*n+12)*(2*n+2)!/(n!*(n+4)!)`
-/

namespace A070857.P3530114420366538611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((13 * n + 12) * Nat.factorial (2 * n + 2) : ℚ) / (Nat.factorial n * Nat.factorial (n + 4) : ℚ)

end

end A070857.P3530114420366538611

namespace A070857

/-- `(13*n+12)*(2*n+2)!/(n!*(n+4)!)` -/
def P3530114420366538611.Spec : Prop :=
  ∀ n, P3530114420366538611.a n = (A070857 n : ℚ)

end A070857

/-! ## A070857.P12868127216487593683

`∑[A071737(n)]`
-/

namespace A070857.P12868127216487593683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071737 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070857.P12868127216487593683

namespace A070857

/-- `∑[A071737(n)]` -/
def P12868127216487593683.Spec : Prop :=
  ∀ n, P12868127216487593683.a n = A070857 n

end A070857

/-! ## A070857.P13115075844759032728

`A099376(n)+A071723(n)`
-/

namespace A070857.P13115075844759032728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n + A071723 n

end

end A070857.P13115075844759032728

namespace A070857

/-- `A099376(n)+A071723(n)` -/
def P13115075844759032728.Spec : Prop :=
  ∀ n, P13115075844759032728.a n = A070857 n

end A070857

/-! ## A070857.P3743242096032998930

`A390965(n)+A070031(n)`
-/

namespace A070857.P3743242096032998930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390965 n + A070031 n

end

end A070857.P3743242096032998930

namespace A070857

/-- `A390965(n)+A070031(n)` -/
def P3743242096032998930.Spec : Prop :=
  ∀ n, P3743242096032998930.a n = A070857 n

theorem P3743242096032998930.correct : P3743242096032998930.Spec := by
  intro n
  simp only [A070857, Nat.add_sub_cancel, A070857.P3743242096032998930.a, A070857.P5345200539959730910.a, A000245, A000245.P15461013057778681831.a, A002057, A002057.P16485173035074746318.a, A070031, A070031.P4889884996952388328.a, A390965, A390965.P17095960951919550593.a, A000108, A000108.P17551949696095299361.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070857

/-! ## A070857.P10103433524218242859

`∑[A002057(n)+A000588(n)]`
-/

namespace A070857.P10103433524218242859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + A000588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070857.P10103433524218242859

namespace A070857

/-- `∑[A002057(n)+A000588(n)]` -/
def P10103433524218242859.Spec : Prop :=
  ∀ n, P10103433524218242859.a n = A070857 n

end A070857

/-! ## A070857.P466780505132304633

`∑[A099376(n+1)+A000588(n)]`
-/

namespace A070857.P466780505132304633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 (n + 1) + A000588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070857.P466780505132304633

namespace A070857

/-- `∑[A099376(n+1)+A000588(n)]` -/
def P466780505132304633.Spec : Prop :=
  ∀ n, P466780505132304633.a n = A070857 n

end A070857

/-! ## A070857.P11303960595105053191

`A002057(n)+Δ[A143955(n+1)]`
-/

namespace A070857.P11303960595105053191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + (f1 (n + 1) - f1 n)

end

end A070857.P11303960595105053191

namespace A070857

/-- `A002057(n)+Δ[A143955(n+1)]` -/
def P11303960595105053191.Spec : Prop :=
  ∀ n, P11303960595105053191.a n = A070857 n

end A070857

/-! ## A070857.P15969975523751075269

`A071722(n+1)-A000108(n+2)`
-/

namespace A070857.P15969975523751075269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071722 (n + 1) - A000108 (n + 2)

end

end A070857.P15969975523751075269

namespace A070857

/-- `A071722(n+1)-A000108(n+2)` -/
def P15969975523751075269.Spec : Prop :=
  ∀ n, P15969975523751075269.a n = A070857 n

end A070857

/-! ## A070857.P9107228657158667819

`∑[A000588(n)+∑[A026016(n+1)]]`
-/

namespace A070857.P9107228657158667819
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000588 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070857.P9107228657158667819

namespace A070857

/-- `∑[A000588(n)+∑[A026016(n+1)]]` -/
def P9107228657158667819.Spec : Prop :=
  ∀ n, P9107228657158667819.a n = A070857 n

end A070857

/-! ## A070857.P1974991369253943302

`2*A026012(n+1)-A005807(n+1)`
-/

namespace A070857.P1974991369253943302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026012 (n + 1) - A005807 (n + 1)

end

end A070857.P1974991369253943302

namespace A070857

/-- `2*A026012(n+1)-A005807(n+1)` -/
def P1974991369253943302.Spec : Prop :=
  ∀ n, P1974991369253943302.a n = A070857 n

end A070857

/-! ## A070857.P5564211898824269644

`A071736(n+1)-2*A000108(n+1)`
-/

namespace A070857.P5564211898824269644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071736 (n + 1) - 2 * A000108 (n + 1)

end

end A070857.P5564211898824269644

namespace A070857

/-- `A071736(n+1)-2*A000108(n+1)` -/
def P5564211898824269644.Spec : Prop :=
  ∀ n, P5564211898824269644.a n = A070857 n

end A070857

/-! ## A070857.P15796095376330801706

`2*A099376(n+1)-A000245(n+1)`
-/

namespace A070857.P15796095376330801706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099376 (n + 1) - A000245 (n + 1)

end

end A070857.P15796095376330801706

namespace A070857

/-- `2*A099376(n+1)-A000245(n+1)` -/
def P15796095376330801706.Spec : Prop :=
  ∀ n, P15796095376330801706.a n = A070857 n

end A070857

/-! ## A070857.P6436130116401559405

`A005807(n+1)-2*A120009(n+2)`
-/

namespace A070857.P6436130116401559405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 (n + 1) - 2 * A120009 (n + 2)

end

end A070857.P6436130116401559405

namespace A070857

/-- `A005807(n+1)-2*A120009(n+2)` -/
def P6436130116401559405.Spec : Prop :=
  ∀ n, P6436130116401559405.a n = A070857 n

end A070857

/-! ## A070857.P14813611881146149808

`2*A099376(n+1)-A026008(2*n+1)`
-/

namespace A070857.P14813611881146149808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099376 (n + 1) - A026008 (2 * n + 1)

end

end A070857.P14813611881146149808

namespace A070857

/-- `2*A099376(n+1)-A026008(2*n+1)` -/
def P14813611881146149808.Spec : Prop :=
  ∀ n, P14813611881146149808.a n = A070857 n

end A070857

/-! ## A070857.P17112489442373078463

`A026012(n)+A071723(n)-A000108(n)`
-/

namespace A070857.P17112489442373078463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n + (A071723 n - A000108 n)

end

end A070857.P17112489442373078463

namespace A070857

/-- `A026012(n)+A071723(n)-A000108(n)` -/
def P17112489442373078463.Spec : Prop :=
  ∀ n, P17112489442373078463.a n = A070857 n

end A070857

/-! ## A070857.P1386702568747849429

`A002057(n)+A002057(n)-A071724(n+1)`
-/

namespace A070857.P1386702568747849429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002057 n + (A002057 n - A071724 (n + 1))

end

end A070857.P1386702568747849429

namespace A070857

/-- `A002057(n)+A002057(n)-A071724(n+1)` -/
def P1386702568747849429.Spec : Prop :=
  ∀ n, P1386702568747849429.a n = A070857 n

theorem P1386702568747849429.correct : P1386702568747849429.Spec := by
  intro n
  simp only [A070857, Nat.add_sub_cancel, A070857.P1386702568747849429.a, A070857.P5345200539959730910.a, A000245, A000245.P15461013057778681831.a, A002057, A002057.P16485173035074746318.a, A071724, A071724.P13075293376280166576.f1, A071724.P13075293376280166576.a, A000108, A000108.P17551949696095299361.a, A141351, A141351.P15521239837132020654.a, A057427, A057427.P3058147525557661423.a, A000007, A000007.P6599383543502402472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070857

/-! ## A070857.P17073549576277703362

`A026016(n+1)+A002057(n)-A000108(n+1)`
-/

namespace A070857.P17073549576277703362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1) + (A002057 n - A000108 (n + 1))

end

end A070857.P17073549576277703362

namespace A070857

/-- `A026016(n+1)+A002057(n)-A000108(n+1)` -/
def P17073549576277703362.Spec : Prop :=
  ∀ n, P17073549576277703362.a n = A070857 n

end A070857

/-! ## A070857.P17549711389805069874

`A071725(n+1)+A002057(n)-A000108(n+1)`
-/

namespace A070857.P17549711389805069874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 (n + 1) + (A002057 n - A000108 (n + 1))

end

end A070857.P17549711389805069874

namespace A070857

/-- `A071725(n+1)+A002057(n)-A000108(n+1)` -/
def P17549711389805069874.Spec : Prop :=
  ∀ n, P17549711389805069874.a n = A070857 n

end A070857

/-! ## A070857.P10475235418135488507

`A071722(n+1)-(A026012(n)+A000782(n+1))`
-/

namespace A070857.P10475235418135488507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071722 (n + 1) - (A026012 n + A000782 (n + 1))

end

end A070857.P10475235418135488507

namespace A070857

/-- `A071722(n+1)-(A026012(n)+A000782(n+1))` -/
def P10475235418135488507.Spec : Prop :=
  ∀ n, P10475235418135488507.a n = A070857 n

end A070857

/-!
# A070858: Smallest prime == 1 mod L, where L = LCM of 1 to n.

The programs for A070858, there is no canonical definition to state claims against.
-/

/-! ## A070858.P4179490298373840462

`p?[A054845(n)+A054481(n+2)]`
-/

namespace A070858.P4179490298373840462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n + A054481 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070858.P4179490298373840462

/-! ## A070858.P3336269815269932162

`p?[A054521(3*(n+1))+A054481(n+2)]`
-/

namespace A070858.P3336269815269932162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (3 * (n + 1)) + A054481 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070858.P3336269815269932162

/-! ## A070858.P9501453910436839221

`A034694(∏[(n+1)/∏{p}[n+1, (n+1)/#]])`
-/

namespace A070858.P9501453910436839221
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A070858.P9501453910436839221

/-! ## A070858.P1181572227272501143

`A086507(∏[(n+1)/∏{p}[n+1, (n+1)/#]])`
-/

namespace A070858.P1181572227272501143
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086507 (SequenceMachineLib.roundAway (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A070858.P1181572227272501143

/-! ## A070858.P12628660440666821580

`A034694(A120108(∑[n]))`
-/

namespace A070858.P12628660440666821580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A120108 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A070858.P12628660440666821580

/-!
# A070859: Expansion of (1+x*C^4)*C, where C = (1-(1-4*x)^(1/2))/(2*x) is g.f. for Catalan numbers, A000108.

The programs for A070859, the canonical program `A070859.P14255195960211487890` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070859 has offset 0).

The definition of A070859 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070859.P14255195960211487890

`3*(7*n^3+13*n²+12*n+8)*(2*n)!/(n!*(n+4)!)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070859

/-- `3*(7*n^3+13*n²+12*n+8)*(2*n)!/(n!*(n+4)!)` -/
def P14255195960211487890.Spec : Prop :=
  ∀ n, P14255195960211487890.a n = (A070859 n : ℚ)

end A070859

/-! ## A070859.P10373012207163221236

`A033434(n)-Δ[(4-6/(n+1))*a(n-1)]` with `a(0)=2`
-/

namespace A070859.P10373012207163221236
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033434 n : ℚ) - (f1 (n + 1) - f1 n)

end

end A070859.P10373012207163221236

namespace A070859

/-- `A033434(n)-Δ[(4-6/(n+1))*a(n-1)]` -/
def P10373012207163221236.Spec : Prop :=
  ∀ n, P10373012207163221236.a n = (A070859 n : ℚ)

end A070859

/-! ## A070859.P14872023940718533267

`A026016(n+1)-Δ[(4-6/(n+1))*a(n-1)]` with `a(0)=1`
-/

namespace A070859.P14872023940718533267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (4 - 6 / (n + 1 : ℚ)) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026016 (n + 1) : ℚ) - (f1 (n + 1) - f1 n)

end

end A070859.P14872023940718533267

namespace A070859

/-- `A026016(n+1)-Δ[(4-6/(n+1))*a(n-1)]` -/
def P14872023940718533267.Spec : Prop :=
  ∀ n, P14872023940718533267.a n = (A070859 n : ℚ)

end A070859

/-! ## A070859.P14177313561813927916

`Δ[A026021(2*n)]-Δ[(4-6/(n+1))*a(n-1)]` with `a(0)=2`
-/

namespace A070859.P14177313561813927916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026021 (2 * n)

def f2 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f2 =>
  (4 - 6 / (n + 1 : ℚ)) * f2 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (f2 (n + 1) - f2 n)

end

end A070859.P14177313561813927916

namespace A070859

/-- `Δ[A026021(2*n)]-Δ[(4-6/(n+1))*a(n-1)]` -/
def P14177313561813927916.Spec : Prop :=
  ∀ n, P14177313561813927916.a n = (A070859 n : ℚ)

end A070859

/-! ## A070859.P4553923284295644759

`A026029(n)+Δ[A143955(n)]`
-/

namespace A070859.P4553923284295644759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026029 n + (f1 (n + 1) - f1 n)

end

end A070859.P4553923284295644759

namespace A070859

/-- `A026029(n)+Δ[A143955(n)]` -/
def P4553923284295644759.Spec : Prop :=
  ∀ n, P4553923284295644759.a n = A070859 n

end A070859

/-! ## A070859.P8184086375312278888

`Δ[A099376(n)-A000108(n)]`
-/

namespace A070859.P8184086375312278888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n - A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070859.P8184086375312278888

namespace A070859

/-- `Δ[A099376(n)-A000108(n)]` -/
def P8184086375312278888.Spec : Prop :=
  ∀ n, P8184086375312278888.a n = A070859 n

end A070859

/-! ## A070859.P7425761989943350582

`Δ[A099376(n)]-A000245(n)`
-/

namespace A070859.P7425761989943350582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000245 n

end

end A070859.P7425761989943350582

namespace A070859

/-- `Δ[A099376(n)]-A000245(n)` -/
def P7425761989943350582.Spec : Prop :=
  ∀ n, P7425761989943350582.a n = A070859 n

end A070859

/-! ## A070859.P15938418904741512275

`Δ[A099376(n)-A120304(n)]`
-/

namespace A070859.P15938418904741512275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099376 n - A120304 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070859.P15938418904741512275

namespace A070859

/-- `Δ[A099376(n)-A120304(n)]` -/
def P15938418904741512275.Spec : Prop :=
  ∀ n, P15938418904741512275.a n = A070859 n

end A070859

/-! ## A070859.P18429366302641147186

`A026016(n+1)-A000245(n)`
-/

namespace A070859.P18429366302641147186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026016 (n + 1) - A000245 n

end

end A070859.P18429366302641147186

namespace A070859

/-- `A026016(n+1)-A000245(n)` -/
def P18429366302641147186.Spec : Prop :=
  ∀ n, P18429366302641147186.a n = A070859 n

end A070859

/-! ## A070859.P16692883443297460558

`A071725(n+1)-A000245(n)`
-/

namespace A070859.P16692883443297460558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 (n + 1) - A000245 n

end

end A070859.P16692883443297460558

namespace A070859

/-- `A071725(n+1)-A000245(n)` -/
def P16692883443297460558.Spec : Prop :=
  ∀ n, P16692883443297460558.a n = A070859 n

end A070859

/-! ## A070859.P12017330378968614342

`A005807(n)-A120009(n+2)`
-/

namespace A070859.P12017330378968614342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005807 n - A120009 (n + 2)

end

end A070859.P12017330378968614342

namespace A070859

/-- `A005807(n)-A120009(n+2)` -/
def P12017330378968614342.Spec : Prop :=
  ∀ n, P12017330378968614342.a n = A070859 n

end A070859

/-! ## A070859.P9234281032450086750

`A033434(n)-2*A000245(n)`
-/

namespace A070859.P9234281032450086750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033434 n - 2 * A000245 n

end

end A070859.P9234281032450086750

namespace A070859

/-- `A033434(n)-2*A000245(n)` -/
def P9234281032450086750.Spec : Prop :=
  ∀ n, P9234281032450086750.a n = A070859 n

end A070859

/-! ## A070859.P3843321388940475572

`Δ[Δ[A071724(n)]]-A071721(n)`
-/

namespace A070859.P3843321388940475572
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A071721 n

end

end A070859.P3843321388940475572

namespace A070859

/-- `Δ[Δ[A071724(n)]]-A071721(n)` -/
def P3843321388940475572.Spec : Prop :=
  ∀ n, P3843321388940475572.a n = A070859 n

end A070859

/-! ## A070859.P14465249096872553376

`Δ[Δ[A279557(n)-A155587(n)]]`
-/

namespace A070859.P14465249096872553376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279557 n - A155587 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070859.P14465249096872553376

namespace A070859

/-- `Δ[Δ[A279557(n)-A155587(n)]]` -/
def P14465249096872553376.Spec : Prop :=
  ∀ n, P14465249096872553376.a n = A070859 n

end A070859

/-! ## A070859.P7768490838436539552

`A000108(n)+Δ[A143955(n+1)]`
-/

namespace A070859.P7768490838436539552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n + (f1 (n + 1) - f1 n)

end

end A070859.P7768490838436539552

namespace A070859

/-- `A000108(n)+Δ[A143955(n+1)]` -/
def P7768490838436539552.Spec : Prop :=
  ∀ n, P7768490838436539552.a n = A070859 n

end A070859

/-! ## A070859.P3120985847051752026

`Δ[A000245(n+1)-A000778(n)]`
-/

namespace A070859.P3120985847051752026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) - A000778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070859.P3120985847051752026

namespace A070859

/-- `Δ[A000245(n+1)-A000778(n)]` -/
def P3120985847051752026.Spec : Prop :=
  ∀ n, P3120985847051752026.a n = A070859 n

end A070859

/-! ## A070859.P6779091402131364956

`Δ[A000245(n+1)-A005807(n)]`
-/

namespace A070859.P6779091402131364956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (n + 1) - A005807 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070859.P6779091402131364956

namespace A070859

/-- `Δ[A000245(n+1)-A005807(n)]` -/
def P6779091402131364956.Spec : Prop :=
  ∀ n, P6779091402131364956.a n = A070859 n

end A070859

/-! ## A070859.P12190963090487696528

`A071725(n+1)-Δ[A000108(n)]`
-/

namespace A070859.P12190963090487696528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071725 (n + 1) - (f1 (n + 1) - f1 n)

end

end A070859.P12190963090487696528

namespace A070859

/-- `A071725(n+1)-Δ[A000108(n)]` -/
def P12190963090487696528.Spec : Prop :=
  ∀ n, P12190963090487696528.a n = A070859 n

end A070859

/-! ## A070859.P7591672463778825646

`Δ[A026012(n)-2*A000108(n)]`
-/

namespace A070859.P7591672463778825646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026012 n - 2 * A000108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070859.P7591672463778825646

namespace A070859

/-- `Δ[A026012(n)-2*A000108(n)]` -/
def P7591672463778825646.Spec : Prop :=
  ∀ n, P7591672463778825646.a n = A070859 n

end A070859

/-!
# A070861: Triangle of all possible distinct numbers obtained as a product of distinct numbers from 1..n.

The programs for A070861, there is no canonical definition to state claims against.
-/

/-! ## A070861.P11713346896703142679

`A079210(n)+A010051(A085329(n+1))`
-/

namespace A070861.P11713346896703142679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079210 n + A010051 (A085329 (n + 1)).toNat

end

end A070861.P11713346896703142679

/-!
# A070863: Sum of numbers in n-th row of A070861.

The programs for A070863, there is no canonical definition to state claims against.
-/

/-! ## A070863.P14203197612624144839

`A124815(A196711(n+1))`
-/

namespace A070863.P14203197612624144839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124815 (A196711 (n + 1)).toNat

end

end A070863.P14203197612624144839

/-! ## A070863.P4639694991952415993

`A141218(A370224(n+1)+1)`
-/

namespace A070863.P4639694991952415993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141218 (A370224 (n + 1) + 1).toNat

end

end A070863.P4639694991952415993

/-! ## A070863.P1803750278149826658

`A032742(A072856(n)*A297165(n))`
-/

namespace A070863.P1803750278149826658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A072856 n * A297165 n).toNat

end

end A070863.P1803750278149826658

/-!
# A070864: a(1) = a(2) = 1; a(n) = 2 + a(n - a(n-1)).

The programs for A070864, the canonical program `A070864.P13961561424826877984` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070864 has offset 1).

The definition of A070864 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2+a(n-a(n-1))` (program `A070864.P13961561424826877984`, by `A070864.P13961561424826877984.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070864.P13961561424826877984

`2+a(n-a(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070864

/-- `2+a(n-a(n-1))` -/
def P13961561424826877984.Spec : Prop :=
  ∀ n, (P13961561424826877984.a n : ℤ) = A070864 (n + 1)

theorem P13961561424826877984.correct : P13961561424826877984.Spec := by
  intro n
  simp only [A070864, Nat.add_sub_cancel]

end A070864

/-! ## A070864.P3672250626248837761

`2*floor((n+1)^(1/2))-(-1)^(n+1+ceil((n+1)^(1/2)))`
-/

namespace A070864.P3672250626248837761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * ⌊(n + 1 : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋ : ℚ) - (-1 : ℚ) ^ ((n + 1 : ℤ) + ⌈(n + 1 : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌉ : ℤ)

end

end A070864.P3672250626248837761

namespace A070864

/-- `2*floor((n+1)^(1/2))-(-1)^(n+1+ceil((n+1)^(1/2)))` -/
def P3672250626248837761.Spec : Prop :=
  ∀ n, P3672250626248837761.a n = (A070864 (n + 1) : ℚ)

end A070864

/-! ## A070864.P16795953249779067968

`A065168(a(n-a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A070864.P16795953249779067968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A065168 (a ((n : ℤ) - a (n - 1)).toNat).toNat

end

end A070864.P16795953249779067968

namespace A070864

/-- `A065168(a(n-a(n-1)))` -/
def P16795953249779067968.Spec : Prop :=
  ∀ n, P16795953249779067968.a n = A070864 (n + 1)

end A070864

/-! ## A070864.P7766619134851279818

`A071054(a(n-a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A070864.P7766619134851279818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A071054 (a ((n : ℤ) - a (n - 1)).toNat).toNat

end

end A070864.P7766619134851279818

namespace A070864

/-- `A071054(a(n-a(n-1)))` -/
def P7766619134851279818.Spec : Prop :=
  ∀ n, P7766619134851279818.a n = A070864 (n + 1)

end A070864

/-! ## A070864.P15397544954958625782

`A130821(A127366(n+1))`
-/

namespace A070864.P15397544954958625782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130821 (A127366 (n + 1)).toNat

end

end A070864.P15397544954958625782

namespace A070864

/-- `A130821(A127366(n+1))` -/
def P15397544954958625782.Spec : Prop :=
  ∀ n, P15397544954958625782.a n = A070864 (n + 1)

end A070864

/-!
# A070865: Smallest prime such that the difference of successive terms is strictly increasing.

The programs for A070865, there is no canonical definition to state claims against.
-/

/-! ## A070865.P15151120443366217409

`p?[record[A284188(n+1)]]`
-/

namespace A070865.P15151120443366217409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284188 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070865.P15151120443366217409

/-! ## A070865.P15766480621929110890

`A151800(2*a(n-1)-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A070865.P15766480621929110890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A151800 (2 * a (n - 1) - a (n - 2)).toNat

end

end A070865.P15766480621929110890

/-! ## A070865.P16446388770028049154

`A151800(a(n-1)+a(n-1)-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A070865.P16446388770028049154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A151800 (a (n - 1) + (a (n - 1) - a (n - 2))).toNat

end

end A070865.P16446388770028049154

/-! ## A070865.P13230044341395884803

`record[A006530(record[A284188(n+1)])]`
-/

namespace A070865.P13230044341395884803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284188 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070865.P13230044341395884803

/-! ## A070865.P18249867593006318990

`record[A020639(record[A284188(n+1)])]`
-/

namespace A070865.P18249867593006318990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284188 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070865.P18249867593006318990

/-! ## A070865.P1373895873852685999

`record[A006530(A284188(A053438(n)))]`
-/

namespace A070865.P1373895873852685999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A284188 (A053438 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A070865.P1373895873852685999

/-!
# A070866: Smallest prime such that the difference of successive terms is nondecreasing.

The programs for A070866, the canonical program `A070866.P12632349183962327222` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070866 has offset 1).

The definition of A070866 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007918, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A070866.P12632349183962327222

`A007918(2*a(n-1)-a(n-2))` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A070866

/-- `A007918(2*a(n-1)-a(n-2))` -/
def P12632349183962327222.Spec : Prop :=
  ∀ n, P12632349183962327222.a n = A070866 (n + 1)

theorem P12632349183962327222.correct : P12632349183962327222.Spec := by
  intro n
  simp only [A070866, Nat.add_sub_cancel]

end A070866

/-! ## A070866.P12157537402447880879

`∑[A075569(n+2)]+1`
-/

namespace A070866.P12157537402447880879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075569 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A070866.P12157537402447880879

namespace A070866

/-- `∑[A075569(n+2)]+1` -/
def P12157537402447880879.Spec : Prop :=
  ∀ n, P12157537402447880879.a n = A070866 (n + 1)

end A070866

/-! ## A070866.P614209668575606355

`p?[∑[A075569(n+1)]]`
-/

namespace A070866.P614209668575606355
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075569 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A070866.P614209668575606355

namespace A070866

/-- `p?[∑[A075569(n+1)]]` -/
def P614209668575606355.Spec : Prop :=
  ∀ n, P614209668575606355.a n = A070866 (n + 1)

end A070866

/-! ## A070866.P15573254606081504271

`A151800(∑[A075569(n+2)])`
-/

namespace A070866.P15573254606081504271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075569 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A070866.P15573254606081504271

namespace A070866

/-- `A151800(∑[A075569(n+2)])` -/
def P15573254606081504271.Spec : Prop :=
  ∀ n, P15573254606081504271.a n = A070866 (n + 1)

end A070866

/-! ## A070866.P1837463817281989634

`A108077(∑[A075569(n+2)])`
-/

namespace A070866.P1837463817281989634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075569 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108077 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A070866.P1837463817281989634

namespace A070866

/-- `A108077(∑[A075569(n+2)])` -/
def P1837463817281989634.Spec : Prop :=
  ∀ n, P1837463817281989634.a n = A070866 (n + 1)

end A070866

/-! ## A070866.P7701423453397909556

`A141310(∑[A075569(n+2)])`
-/

namespace A070866.P7701423453397909556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075569 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A070866.P7701423453397909556

namespace A070866

/-- `A141310(∑[A075569(n+2)])` -/
def P7701423453397909556.Spec : Prop :=
  ∀ n, P7701423453397909556.a n = A070866 (n + 1)

end A070866

/-! ## A070866.P4732669387879311802

`A007918(a(n-1)-(a(n-2)-a(n-1)))` with `a(0)=2, a(1)=3`
-/

namespace A070866.P4732669387879311802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A007918 (a (n - 1) - (a (n - 2) - a (n - 1))).toNat

end

end A070866.P4732669387879311802

namespace A070866

/-- `A007918(a(n-1)-(a(n-2)-a(n-1)))` -/
def P4732669387879311802.Spec : Prop :=
  ∀ n, P4732669387879311802.a n = A070866 (n + 1)

theorem P4732669387879311802.correct : P4732669387879311802.Spec := by
  intro n
  simp only [A070866, Nat.add_sub_cancel, A070866.P4732669387879311802.a, A070866.P12632349183962327222.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A070866

/-! ## A070866.P10462997079819368468

`A338702(∑[A075569(n+2)])`
-/

namespace A070866.P10462997079819368468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075569 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338702 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A070866.P10462997079819368468

namespace A070866

/-- `A338702(∑[A075569(n+2)])` -/
def P10462997079819368468.Spec : Prop :=
  ∀ n, P10462997079819368468.a n = A070866 (n + 1)

end A070866

/-!
# A070867: a(1) = a(2) = 1; a(n) = a(n-1 - a(n-1)) + a(n-1 - a(n-2)).

The programs for A070867, the canonical program `A070867.P7760294806686091676` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070867 has offset 1).

The definition of A070867 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1-a(n-1))+a(n-1-a(n-2))` (program `A070867.P7760294806686091676`, by `A070867.P7760294806686091676.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070867.P7760294806686091676

`a(n-1-a(n-1))+a(n-1-a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070867

/-- `a(n-1-a(n-1))+a(n-1-a(n-2))` -/
def P7760294806686091676.Spec : Prop :=
  ∀ n, (P7760294806686091676.a n : ℤ) = A070867 (n + 1)

theorem P7760294806686091676.correct : P7760294806686091676.Spec := by
  intro n
  simp only [A070867, Nat.add_sub_cancel]

end A070867

/-!
# A070868: a(1) = a(2) = 1; a(n) = a(a(n-1)) + a(n+1 - 2*a(n-1)).

The programs for A070868, the canonical program `A070868.P6093117770402754225` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070868 has offset 1).

The definition of A070868 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(a(n-1)-1)+a(n+1-2*a(n-1))` (program `A070868.P6093117770402754225`, by `A070868.P6093117770402754225.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A070868.P6093117770402754225

`a(a(n-1)-1)+a(n+1-2*a(n-1))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070868

/-- `a(a(n-1)-1)+a(n+1-2*a(n-1))` -/
def P6093117770402754225.Spec : Prop :=
  ∀ n, (P6093117770402754225.a n : ℤ) = A070868 (n + 1)

theorem P6093117770402754225.correct : P6093117770402754225.Spec := by
  intro n
  simp only [A070868, Nat.add_sub_cancel]

end A070868

/-! ## A070868.P8356493097859961533

`A007895(A323582(n+1)-A007895(n))`
-/

namespace A070868.P8356493097859961533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A323582 (n + 1) - A007895 n).toNat

end

end A070868.P8356493097859961533

namespace A070868

/-- `A007895(A323582(n+1)-A007895(n))` -/
def P8356493097859961533.Spec : Prop :=
  ∀ n, P8356493097859961533.a n = A070868 (n + 1)

end A070868

/-! ## A070868.P1164615374985951847

`A122922(A108539(n+1)+((n%6)^4)%5)`
-/

namespace A070868.P1164615374985951847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122922 (A108539 (n + 1) + (((n % 6) ^ 4 % 5 : ℕ) : ℤ)).toNat

end

end A070868.P1164615374985951847

namespace A070868

/-- `A122922(A108539(n+1)+((n%6)^4)%5)` -/
def P1164615374985951847.Spec : Prop :=
  ∀ n, P1164615374985951847.a n = A070868 (n + 1)

end A070868

/-! ## A070868.P6844257145051964724

`A026819(n+1)+A000035(A270509(n+1))`
-/

namespace A070868.P6844257145051964724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026819 (n + 1) + A000035 (A270509 (n + 1)).toNat

end

end A070868.P6844257145051964724

namespace A070868

/-- `A026819(n+1)+A000035(A270509(n+1))` -/
def P6844257145051964724.Spec : Prop :=
  ∀ n, P6844257145051964724.a n = A070868 (n + 1)

end A070868

/-! ## A070868.P551420210533692589

`A309432(A069749(n+1))`
-/

namespace A070868.P551420210533692589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309432 (A069749 (n + 1)).toNat

end

end A070868.P551420210533692589

namespace A070868

/-- `A309432(A069749(n+1))` -/
def P551420210533692589.Spec : Prop :=
  ∀ n, P551420210533692589.a n = A070868 (n + 1)

end A070868

/-!
# A070869: a(1) = 16; a(n+1) = sum of a(n) and (a(n) written in base 2 and reversed).

The programs for A070869, there is no canonical definition to state claims against.
-/

/-! ## A070869.P8906682872205721620

`A055944(a(n-1))` with `a(0)=16`
-/

namespace A070869.P8906682872205721620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A055944 (a (n - 1)).toNat

end

end A070869.P8906682872205721620

/-! ## A070869.P4432614374901159796

`A030101(a(n-1))+a(n-1)` with `a(0)=16`
-/

namespace A070869.P4432614374901159796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A030101 (a (n - 1)).toNat + a (n - 1)

end

end A070869.P4432614374901159796

/-! ## A070869.P15096537922438021120

`A055944(a(A023443(n)))+A000007(n)` with `a(0)=16`
-/

namespace A070869.P15096537922438021120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A055944 (a (A023443 n).toNat).toNat + A000007 n

end

end A070869.P15096537922438021120

/-! ## A070869.P8925181570084163410

`A055944(a(A023443(n)))+A000038(n)` with `a(0)=16`
-/

namespace A070869.P8925181570084163410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  A055944 (a (A023443 n).toNat).toNat + A000038 n

end

end A070869.P8925181570084163410

/-! ## A070869.P6727802630016095582

`A055944(a(A023443(n)))%A058042(n)` with `a(0)=16`
-/

namespace A070869.P6727802630016095582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [16] fun n a =>
  Int.tmod (A055944 (a (A023443 n).toNat).toNat) (A058042 n)

end

end A070869.P6727802630016095582

/-!
# A070870: a(1) = 6; a(n+1) = (a(n)+1)/2 if a(n) odd, or 5*a(n)/2 if a(n) even.

The programs for A070870, there is no canonical definition to state claims against.
-/

/-! ## A070870.P16232296411639155236

`A065033(A195817(a(n-1)))` with `a(0)=6`
-/

namespace A070870.P16232296411639155236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A065033 (A195817 (a (n - 1)).toNat).toNat

end

end A070870.P16232296411639155236

/-!
# A070871: a(n) = A002487(n) * A002487(n+1) (Conway's alimentary function).

The programs for A070871, the canonical program `A070871.P12544793481948704650` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070871 has offset 1).

The definition of A070871 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070871.P12544793481948704650

`A002487(n+1)*A002487(n+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A070871

/-- `A002487(n+1)*A002487(n+2)` -/
def P12544793481948704650.Spec : Prop :=
  ∀ n, P12544793481948704650.a n = A070871 (n + 1)

theorem P12544793481948704650.correct : P12544793481948704650.Spec := by
  intro n
  simp only [A070871, Nat.add_sub_cancel]

end A070871

/-! ## A070871.P13814172199849569583

`Δ[A007729(n)]*A002487(n+1)`
-/

namespace A070871.P13814172199849569583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002487 (n + 1)

end

end A070871.P13814172199849569583

namespace A070871

/-- `Δ[A007729(n)]*A002487(n+1)` -/
def P13814172199849569583.Spec : Prop :=
  ∀ n, P13814172199849569583.a n = A070871 (n + 1)

end A070871

/-! ## A070871.P16579015896005113605

`A114214(n+1)*A295515(n+2)`
-/

namespace A070871.P16579015896005113605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (n + 1) * A295515 (n + 2)

end

end A070871.P16579015896005113605

namespace A070871

/-- `A114214(n+1)*A295515(n+2)` -/
def P16579015896005113605.Spec : Prop :=
  ∀ n, P16579015896005113605.a n = A070871 (n + 1)

end A070871

/-! ## A070871.P18024855555702582811

`A007306(A003602(n+1))*A007306(A003602(n+2))`
-/

namespace A070871.P18024855555702582811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A003602 (n + 1)).toNat * A007306 (A003602 (n + 2)).toNat

end

end A070871.P18024855555702582811

namespace A070871

/-- `A007306(A003602(n+1))*A007306(A003602(n+2))` -/
def P18024855555702582811.Spec : Prop :=
  ∀ n, P18024855555702582811.a n = A070871 (n + 1)

end A070871

/-! ## A070871.P1996158291940610614

`A119272(A059893(n+1)+2)`
-/

namespace A070871.P1996158291940610614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119272 (A059893 (n + 1) + 2).toNat

end

end A070871.P1996158291940610614

namespace A070871

/-- `A119272(A059893(n+1)+2)` -/
def P1996158291940610614.Spec : Prop :=
  ∀ n, P1996158291940610614.a n = A070871 (n + 1)

end A070871

/-! ## A070871.P7035028731891564690

`(A317840(n+2)+A317839(n+2))*A317840(2*(n+1))`
-/

namespace A070871.P7035028731891564690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A317840 (n + 2) + A317839 (n + 2)) * A317840 (2 * (n + 1))

end

end A070871.P7035028731891564690

namespace A070871

/-- `(A317840(n+2)+A317839(n+2))*A317840(2*(n+1))` -/
def P7035028731891564690.Spec : Prop :=
  ∀ n, P7035028731891564690.a n = A070871 (n + 1)

end A070871

/-! ## A070871.P12724484702702367876

`(A317838(n+2)-A317837(n+2))*A317840(2*(n+1))`
-/

namespace A070871.P12724484702702367876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A317838 (n + 2) - A317837 (n + 2)) * A317840 (2 * (n + 1))

end

end A070871.P12724484702702367876

namespace A070871

/-- `(A317838(n+2)-A317837(n+2))*A317840(2*(n+1))` -/
def P12724484702702367876.Spec : Prop :=
  ∀ n, P12724484702702367876.a n = A070871 (n + 1)

end A070871

/-! ## A070871.P5841053038102299700

`A317840(2*(n+1))*A317840(2*(n+2))`
-/

namespace A070871.P5841053038102299700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317840 (2 * (n + 1)) * A317840 (2 * (n + 2))

end

end A070871.P5841053038102299700

namespace A070871

/-- `A317840(2*(n+1))*A317840(2*(n+2))` -/
def P5841053038102299700.Spec : Prop :=
  ∀ n, P5841053038102299700.a n = A070871 (n + 1)

end A070871

/-! ## A070871.P300346338435983075

`A245327(A284460(2*(n+1)))*A245327(A284460(n+2))`
-/

namespace A070871.P300346338435983075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A284460 (2 * (n + 1))).toNat * A245327 (A284460 (n + 2)).toNat

end

end A070871.P300346338435983075

namespace A070871

/-- `A245327(A284460(2*(n+1)))*A245327(A284460(n+2))` -/
def P300346338435983075.Spec : Prop :=
  ∀ n, P300346338435983075.a n = A070871 (n + 1)

end A070871

/-! ## A070871.P593092396281424685

`A070990(2*n)*A288003(2*n+1)`
-/

namespace A070871.P593092396281424685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070990 (2 * n) * A288003 (2 * n + 1)

end

end A070871.P593092396281424685

namespace A070871

/-- `A070990(2*n)*A288003(2*n+1)` -/
def P593092396281424685.Spec : Prop :=
  ∀ n, P593092396281424685.a n = A070871 (n + 1)

end A070871

/-! ## A070871.P15624942772308540936

`abs(A070990(2*n+1)*A070990(2*n))`
-/

namespace A070871.P15624942772308540936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A070990 (2 * n + 1) * A070990 (2 * n)|

end

end A070871.P15624942772308540936

namespace A070871

/-- `abs(A070990(2*n+1)*A070990(2*n))` -/
def P15624942772308540936.Spec : Prop :=
  ∀ n, P15624942772308540936.a n = A070871 (n + 1)

end A070871

/-! ## A070871.P6073167229592433870

`(n+1-A284013(n+1))*A070990(2*n)`
-/

namespace A070871.P6073167229592433870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A284013 (n + 1)) * A070990 (2 * n)

end

end A070871.P6073167229592433870

namespace A070871

/-- `(n+1-A284013(n+1))*A070990(2*n)` -/
def P6073167229592433870.Spec : Prop :=
  ∀ n, P6073167229592433870.a n = A070871 (n + 1)

end A070871

/-! ## A070871.P16227038598050195254

`A071883(2*(n+1))`
-/

namespace A070871.P16227038598050195254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071883 (2 * (n + 1))

end

end A070871.P16227038598050195254

namespace A070871

/-- `A071883(2*(n+1))` -/
def P16227038598050195254.Spec : Prop :=
  ∀ n, P16227038598050195254.a n = A070871 (n + 1)

end A070871

/-! ## A070871.P10436952668333372592

`A070990(2*n+1)*A070990(2*n+3)`
-/

namespace A070871.P10436952668333372592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070990 (2 * n + 1) * A070990 (2 * n + 3)

end

end A070871.P10436952668333372592

namespace A070871

/-- `A070990(2*n+1)*A070990(2*n+3)` -/
def P10436952668333372592.Spec : Prop :=
  ∀ n, P10436952668333372592.a n = A070871 (n + 1)

end A070871

/-! ## A070871.P9224718220241864860

`A288003(2*n+1)*A288003(2*n+3)`
-/

namespace A070871.P9224718220241864860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (2 * n + 1) * A288003 (2 * n + 3)

end

end A070871.P9224718220241864860

namespace A070871

/-- `A288003(2*n+1)*A288003(2*n+3)` -/
def P9224718220241864860.Spec : Prop :=
  ∀ n, P9224718220241864860.a n = A070871 (n + 1)

end A070871

/-! ## A070871.P4876700122564086850

`A272569(A145341(n+2))`
-/

namespace A070871.P4876700122564086850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272569 (A145341 (n + 2)).toNat

end

end A070871.P4876700122564086850

namespace A070871

/-- `A272569(A145341(n+2))` -/
def P4876700122564086850.Spec : Prop :=
  ∀ n, P4876700122564086850.a n = A070871 (n + 1)

end A070871

/-! ## A070871.P7156763301776412237

`A272569(A345401(n+1))`
-/

namespace A070871.P7156763301776412237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272569 (A345401 (n + 1)).toNat

end

end A070871.P7156763301776412237

namespace A070871

/-- `A272569(A345401(n+1))` -/
def P7156763301776412237.Spec : Prop :=
  ∀ n, P7156763301776412237.a n = A070871 (n + 1)

end A070871

/-! ## A070871.P8388900150442655601

`A070990(2*n)*A309014(2*n+1)`
-/

namespace A070871.P8388900150442655601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070990 (2 * n) * A309014 (2 * n + 1)

end

end A070871.P8388900150442655601

namespace A070871

/-- `A070990(2*n)*A309014(2*n+1)` -/
def P8388900150442655601.Spec : Prop :=
  ∀ n, P8388900150442655601.a n = A070871 (n + 1)

end A070871

/-! ## A070871.P4429980987383852391

`A240388(A048702(n+1))`
-/

namespace A070871.P4429980987383852391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240388 (A048702 (n + 1)).toNat

end

end A070871.P4429980987383852391

namespace A070871

/-- `A240388(A048702(n+1))` -/
def P4429980987383852391.Spec : Prop :=
  ∀ n, P4429980987383852391.a n = A070871 (n + 1)

end A070871

/-!
# A070872: Numbers k such that A070871(k) = k.

The programs for A070872, there is no canonical definition to state claims against.
-/

/-! ## A070872.P2447537103675437752

`eq[n, A070871(round(sqrt(n²+1)))]`
-/

namespace A070872.P2447537103675437752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070871 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070872.P2447537103675437752

/-! ## A070872.P2292865223173801663

`eq[n+1, A070871(n+1)]+1`
-/

namespace A070872.P2292865223173801663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070871 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A070872.P2292865223173801663

/-! ## A070872.P13325554282140643693

`eq[1, A070871(A028310(n))+1-n]`
-/

namespace A070872.P13325554282140643693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070871 (A028310 n).toNat + (1 - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A070872.P13325554282140643693

/-!
# A070873: Integers k such that A070871(k) > k.

The programs for A070873, the canonical program `A070873.P18160527976048025681` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070873 has offset 1).

The definition of A070873 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070873.P18160527976048025681

`lt[n+1, A070871(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A070873

/-- `lt[n+1, A070871(n+1)]+1` -/
def P18160527976048025681.Spec : Prop :=
  ∀ n, (P18160527976048025681.a n : ℤ) = A070873 (n + 1)

theorem P18160527976048025681.correct : P18160527976048025681.Spec := by
  intro n
  simp only [A070873, Nat.add_sub_cancel]

end A070873

/-! ## A070873.P8508342411368230660

`A020725(lt[n+1, A070871(n+1)])`
-/

namespace A070873.P8508342411368230660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070871 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A070873.P8508342411368230660

namespace A070873

/-- `A020725(lt[n+1, A070871(n+1)])` -/
def P8508342411368230660.Spec : Prop :=
  ∀ n, P8508342411368230660.a n = A070873 (n + 1)

end A070873

/-! ## A070873.P6819738757717165532

`lt[n, A002487(n+1)*A002487(n)]`
-/

namespace A070873.P6819738757717165532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) * A002487 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070873.P6819738757717165532

namespace A070873

/-- `lt[n, A002487(n+1)*A002487(n)]` -/
def P6819738757717165532.Spec : Prop :=
  ∀ n, (P6819738757717165532.a n : ℤ) = A070873 (n + 1)

end A070873

/-! ## A070873.P5340675491989317970

`lt[A028310(n), A070871(A028310(n))]`
-/

namespace A070873.P5340675491989317970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070871 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A070873.P5340675491989317970

namespace A070873

/-- `lt[A028310(n), A070871(A028310(n))]` -/
def P5340675491989317970.Spec : Prop :=
  ∀ n, (P5340675491989317970.a n : ℤ) = A070873 (n + 1)

end A070873

/-! ## A070873.P9520997277231656755

`lt[n/A002487(A091926(n+1)), A002487(n)]`
-/

namespace A070873.P9520997277231656755
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A002487 (A091926 (n + 1)).toNat : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A070873.P9520997277231656755

namespace A070873

/-- `lt[n/A002487(A091926(n+1)), A002487(n)]` -/
def P9520997277231656755.Spec : Prop :=
  ∀ n, (P9520997277231656755.a n : ℤ) = A070873 (n + 1)

end A070873

/-! ## A070873.P12268016349232135511

`lt[n, A071883(2*n)]`
-/

namespace A070873.P12268016349232135511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071883 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070873.P12268016349232135511

namespace A070873

/-- `lt[n, A071883(2*n)]` -/
def P12268016349232135511.Spec : Prop :=
  ∀ n, (P12268016349232135511.a n : ℤ) = A070873 (n + 1)

end A070873

/-! ## A070873.P3619661110129642571

`lt[n, A272569(A145341(n+1))]`
-/

namespace A070873.P3619661110129642571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272569 (A145341 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A070873.P3619661110129642571

namespace A070873

/-- `lt[n, A272569(A145341(n+1))]` -/
def P3619661110129642571.Spec : Prop :=
  ∀ n, (P3619661110129642571.a n : ℤ) = A070873 (n + 1)

end A070873

/-!
# A070874: A070871(n) < n.

The programs for A070874, the canonical program `A070874.P9251368327235790021` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070874 has offset 1).

The definition of A070874 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3873 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070874.P15153988352760765475

`lt[A070871(round(acot(n)+n)), n]`
-/

namespace A070874.P15153988352760765475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070871 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A070874.P15153988352760765475

namespace A070874

/-- `lt[A070871(round(acot(n)+n)), n]` -/
def P15153988352760765475.Spec : Prop :=
  ∀ n, (P15153988352760765475.a n : ℤ) = A070874 (n + 1)

end A070874

/-! ## A070874.P9251368327235790021

`lt[A070871(abs(1-n)+1), n]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A070874

/-- `lt[A070871(abs(1-n)+1), n]` -/
def P9251368327235790021.Spec : Prop :=
  ∀ n, (P9251368327235790021.a n : ℤ) = A070874 (n + 1)

theorem P9251368327235790021.correct : P9251368327235790021.Spec := by
  intro n
  simp only [A070874, Nat.add_sub_cancel]

end A070874

/-! ## A070874.P16702834771943848235

`lt[A070871(n+1), n+1]+1`
-/

namespace A070874.P16702834771943848235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070871 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A070874.P16702834771943848235

namespace A070874

/-- `lt[A070871(n+1), n+1]+1` -/
def P16702834771943848235.Spec : Prop :=
  ∀ n, (P16702834771943848235.a n : ℤ) = A070874 (n + 1)

end A070874

/-! ## A070874.P11203061659374700919

`A020725(lt[A070871(n+1), n+1])`
-/

namespace A070874.P11203061659374700919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070871 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A070874.P11203061659374700919

namespace A070874

/-- `A020725(lt[A070871(n+1), n+1])` -/
def P11203061659374700919.Spec : Prop :=
  ∀ n, P11203061659374700919.a n = A070874 (n + 1)

end A070874

/-! ## A070874.P455728923016611047

`lt[A002487(n), n/A002487(A091926(n+1))]`
-/

namespace A070874.P455728923016611047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A002487 (A091926 (n + 1)).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A070874.P455728923016611047

namespace A070874

/-- `lt[A002487(n), n/A002487(A091926(n+1))]` -/
def P455728923016611047.Spec : Prop :=
  ∀ n, (P455728923016611047.a n : ℤ) = A070874 (n + 1)

end A070874

/-! ## A070874.P5059349635502315238

`lt[A002487(n+1)*A002487(n), n]`
-/

namespace A070874.P5059349635502315238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1) * A002487 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A070874.P5059349635502315238

namespace A070874

/-- `lt[A002487(n+1)*A002487(n), n]` -/
def P5059349635502315238.Spec : Prop :=
  ∀ n, (P5059349635502315238.a n : ℤ) = A070874 (n + 1)

end A070874

/-! ## A070874.P6044254546955886783

`lt[A071883(2*n), n]`
-/

namespace A070874.P6044254546955886783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071883 (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A070874.P6044254546955886783

namespace A070874

/-- `lt[A071883(2*n), n]` -/
def P6044254546955886783.Spec : Prop :=
  ∀ n, (P6044254546955886783.a n : ℤ) = A070874 (n + 1)

end A070874

/-! ## A070874.P11707131918172895421

`lt[A272569(A145341(n+1)), n]`
-/

namespace A070874.P11707131918172895421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272569 (A145341 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A070874.P11707131918172895421

namespace A070874

/-- `lt[A272569(A145341(n+1)), n]` -/
def P11707131918172895421.Spec : Prop :=
  ∀ n, (P11707131918172895421.a n : ℤ) = A070874 (n + 1)

end A070874

/-!
# A070875: Binary expansion is 1x100...0 where x = 0 or 1.

The programs for A070875, the canonical program `A070875.P5163810030028047106` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070875 has offset 0).

The definition of A070875 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070875.P5163810030028047106

`2*a(n-2)` with `a(0)=5, a(1)=7`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070875

/-- `2*a(n-2)` -/
def P5163810030028047106.Spec : Prop :=
  ∀ n, (P5163810030028047106.a n : ℤ) = A070875 n

theorem P5163810030028047106.correct : P5163810030028047106.Spec := by
  intro n
  simp only [A070875]

end A070875

/-! ## A070875.P4965663465288482227

`(6-(-1)^n)*2^((2*n+(-1)^n-1)/4)`
-/

namespace A070875.P4965663465288482227
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (6 - (-1) ^ n : ℝ) * (2 : ℝ) ^ (((2 * n : ℤ) + (-1) ^ n - 1 : ℚ) / 4 : ℝ)

end

end A070875.P4965663465288482227

namespace A070875

/-- `(6-(-1)^n)*2^((2*n+(-1)^n-1)/4)` -/
def P4965663465288482227.Spec : Prop :=
  ∀ n, P4965663465288482227.a n = (A070875 n : ℝ)

end A070875

/-! ## A070875.P9929561850554523103

`ogf((5+7x)/(1-2x^2))`
-/

namespace A070875.P9929561850554523103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 7] [1, 0, -2] n

end

end A070875.P9929561850554523103

namespace A070875

/-- `ogf((5+7x)/(1-2x^2))` -/
def P9929561850554523103.Spec : Prop :=
  ∀ n, P9929561850554523103.a n = A070875 n

end A070875

/-! ## A070875.P566103633965811656

`a(n-2)+a(n-2)` with `a(0)=5, a(1)=7`
-/

namespace A070875.P566103633965811656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 7] fun n a =>
  a (n - 2) + a (n - 2)

end

end A070875.P566103633965811656

namespace A070875

/-- `a(n-2)+a(n-2)` -/
def P566103633965811656.Spec : Prop :=
  ∀ n, (P566103633965811656.a n : ℤ) = A070875 n

theorem P566103633965811656.correct : P566103633965811656.Spec := by
  intro n
  simp only [A070875, Nat.add_sub_cancel, A070875.P566103633965811656.a, A070875.P5163810030028047106.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A070875

/-! ## A070875.P9299784534661532376

`a(n-2)/(1-1/2)` with `a(0)=5, a(1)=7`
-/

namespace A070875.P9299784534661532376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [5, 7] fun n a =>
  a (n - 2) / (1 - (1 : ℚ) / 2)

end

end A070875.P9299784534661532376

namespace A070875

/-- `a(n-2)/(1-1/2)` -/
def P9299784534661532376.Spec : Prop :=
  ∀ n, P9299784534661532376.a n = (A070875 n : ℚ)

end A070875

/-! ## A070875.P11638227319758356378

`a(n-2)-(a(n-1)%a(n-2)-a(n-1))` with `a(0)=5, a(1)=7`
-/

namespace A070875.P11638227319758356378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 7] fun n a =>
  a (n - 2) - (Int.tmod (a (n - 1)) (a (n - 2)) - a (n - 1))

end

end A070875.P11638227319758356378

namespace A070875

/-- `a(n-2)-(a(n-1)%a(n-2)-a(n-1))` -/
def P11638227319758356378.Spec : Prop :=
  ∀ n, P11638227319758356378.a n = A070875 n

end A070875

/-! ## A070875.P1265989215948569486

`A010737(n)+1`
-/

namespace A070875.P1265989215948569486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010737 n + 1

end

end A070875.P1265989215948569486

namespace A070875

/-- `A010737(n)+1` -/
def P1265989215948569486.Spec : Prop :=
  ∀ n, P1265989215948569486.a n = A070875 n

end A070875

/-! ## A070875.P8042006831623108078

`A029750(2*n+5)`
-/

namespace A070875.P8042006831623108078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029750 (2 * n + 5)

end

end A070875.P8042006831623108078

namespace A070875

/-- `A029750(2*n+5)` -/
def P8042006831623108078.Spec : Prop :=
  ∀ n, P8042006831623108078.a n = A070875 n

end A070875

/-! ## A070875.P16718105546148828747

`∑[A029744(n+1)]+4`
-/

namespace A070875.P16718105546148828747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A070875.P16718105546148828747

namespace A070875

/-- `∑[A029744(n+1)]+4` -/
def P16718105546148828747.Spec : Prop :=
  ∀ n, P16718105546148828747.a n = A070875 n

end A070875

/-! ## A070875.P2765526751224874113

`A200678(2*n+1)+4`
-/

namespace A070875.P2765526751224874113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200678 (2 * n + 1) + 4

end

end A070875.P2765526751224874113

namespace A070875

/-- `A200678(2*n+1)+4` -/
def P2765526751224874113.Spec : Prop :=
  ∀ n, P2765526751224874113.a n = A070875 n

end A070875

/-! ## A070875.P10316112104786763570

`A164090(n)+a(n-1)` with `a(0)=5`
-/

namespace A070875.P10316112104786763570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A164090 n + a (n - 1)

end

end A070875.P10316112104786763570

namespace A070875

/-- `A164090(n)+a(n-1)` -/
def P10316112104786763570.Spec : Prop :=
  ∀ n, P10316112104786763570.a n = A070875 n

end A070875

/-! ## A070875.P16162978338338203674

`A103969(A075328(n+1))`
-/

namespace A070875.P16162978338338203674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103969 (A075328 (n + 1)).toNat

end

end A070875.P16162978338338203674

namespace A070875

/-- `A103969(A075328(n+1))` -/
def P16162978338338203674.Spec : Prop :=
  ∀ n, P16162978338338203674.a n = A070875 n

end A070875

/-! ## A070875.P3695722100509719766

`A246076(A190035(n+1))`
-/

namespace A070875.P3695722100509719766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246076 (A190035 (n + 1)).toNat

end

end A070875.P3695722100509719766

namespace A070875

/-- `A246076(A190035(n+1))` -/
def P3695722100509719766.Spec : Prop :=
  ∀ n, P3695722100509719766.a n = A070875 n

end A070875

/-! ## A070875.P8163365945775001993

`lcm(A010718(n), A016116(n))`
-/

namespace A070875.P8163365945775001993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010718 n) (A016116 n)

end

end A070875.P8163365945775001993

namespace A070875

/-- `lcm(A010718(n), A016116(n))` -/
def P8163365945775001993.Spec : Prop :=
  ∀ n, (P8163365945775001993.a n : ℤ) = A070875 n

end A070875

/-! ## A070875.P10553304754177177000

`xor(A010737(n), A052551(n))`
-/

namespace A070875.P10553304754177177000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010737 n) (A052551 n)

end

end A070875.P10553304754177177000

namespace A070875

/-- `xor(A010737(n), A052551(n))` -/
def P10553304754177177000.Spec : Prop :=
  ∀ n, P10553304754177177000.a n = A070875 n

end A070875

/-! ## A070875.P9171740925656797470

`A090989(n+1)+A016116(n)`
-/

namespace A070875.P9171740925656797470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090989 (n + 1) + A016116 n

end

end A070875.P9171740925656797470

namespace A070875

/-- `A090989(n+1)+A016116(n)` -/
def P9171740925656797470.Spec : Prop :=
  ∀ n, P9171740925656797470.a n = A070875 n

end A070875

/-! ## A070875.P2596504775987385062

`A209722(n+1)+A027383(n)`
-/

namespace A070875.P2596504775987385062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209722 (n + 1) + A027383 n

end

end A070875.P2596504775987385062

namespace A070875

/-- `A209722(n+1)+A027383(n)` -/
def P2596504775987385062.Spec : Prop :=
  ∀ n, P2596504775987385062.a n = A070875 n

end A070875

/-! ## A070875.P7786789402668194368

`A163864(n+1)+A112032(n)`
-/

namespace A070875.P7786789402668194368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163864 (n + 1) + A112032 n

end

end A070875.P7786789402668194368

namespace A070875

/-- `A163864(n+1)+A112032(n)` -/
def P7786789402668194368.Spec : Prop :=
  ∀ n, P7786789402668194368.a n = A070875 n

end A070875

/-! ## A070875.P7907217085429114007

`A063759(n+2)+A016116(n)`
-/

namespace A070875.P7907217085429114007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 (n + 2) + A016116 n

end

end A070875.P7907217085429114007

namespace A070875

/-- `A063759(n+2)+A016116(n)` -/
def P7907217085429114007.Spec : Prop :=
  ∀ n, P7907217085429114007.a n = A070875 n

end A070875

/-! ## A070875.P16268256960164957934

`A209721(n+2)+A052955(n)`
-/

namespace A070875.P16268256960164957934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209721 (n + 2) + A052955 n

end

end A070875.P16268256960164957934

namespace A070875

/-- `A209721(n+2)+A052955(n)` -/
def P16268256960164957934.Spec : Prop :=
  ∀ n, P16268256960164957934.a n = A070875 n

end A070875

/-!
# A070876: Binary expansion is 1xx100...0 where xx = 00 or 11.

The programs for A070876, the canonical program `A070876.P11309976198909753913` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070876 has offset 0).

The definition of A070876 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070876.P11309976198909753913

`2*a(n-2)` with `a(0)=9, a(1)=15`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070876

/-- `2*a(n-2)` -/
def P11309976198909753913.Spec : Prop :=
  ∀ n, (P11309976198909753913.a n : ℤ) = A070876 n

theorem P11309976198909753913.correct : P11309976198909753913.Spec := by
  intro n
  simp only [A070876]

end A070876

/-! ## A070876.P3697086062069161871

`3*(4-(-1)^n)*2^((2*n+(-1)^n-1)/4)`
-/

namespace A070876.P3697086062069161871
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (3 * (4 - (-1) ^ n) : ℝ) * (2 : ℝ) ^ (((2 * n : ℤ) + (-1) ^ n - 1 : ℚ) / 4 : ℝ)

end

end A070876.P3697086062069161871

namespace A070876

/-- `3*(4-(-1)^n)*2^((2*n+(-1)^n-1)/4)` -/
def P3697086062069161871.Spec : Prop :=
  ∀ n, P3697086062069161871.a n = (A070876 n : ℝ)

end A070876

/-! ## A070876.P6843893783316640299

`ogf((9+15x)/(1-2x^2))`
-/

namespace A070876.P6843893783316640299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, 15] [1, 0, -2] n

end

end A070876.P6843893783316640299

namespace A070876

/-- `ogf((9+15x)/(1-2x^2))` -/
def P6843893783316640299.Spec : Prop :=
  ∀ n, P6843893783316640299.a n = A070876 n

end A070876

/-! ## A070876.P4843986019815119263

`a(n-2)+a(n-2)` with `a(0)=9, a(1)=15`
-/

namespace A070876.P4843986019815119263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [9, 15] fun n a =>
  a (n - 2) + a (n - 2)

end

end A070876.P4843986019815119263

namespace A070876

/-- `a(n-2)+a(n-2)` -/
def P4843986019815119263.Spec : Prop :=
  ∀ n, (P4843986019815119263.a n : ℤ) = A070876 n

theorem P4843986019815119263.correct : P4843986019815119263.Spec := by
  intro n
  simp only [A070876, Nat.add_sub_cancel, A070876.P4843986019815119263.a, A070876.P11309976198909753913.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A070876

/-! ## A070876.P14164651341732576234

`A123760(A042948(n+1))`
-/

namespace A070876.P14164651341732576234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123760 (A042948 (n + 1)).toNat

end

end A070876.P14164651341732576234

namespace A070876

/-- `A123760(A042948(n+1))` -/
def P14164651341732576234.Spec : Prop :=
  ∀ n, P14164651341732576234.a n = A070876 n

end A070876

/-! ## A070876.P11817238167476039434

`A123760(A338062(n+1))`
-/

namespace A070876.P11817238167476039434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123760 (A338062 (n + 1)).toNat

end

end A070876.P11817238167476039434

namespace A070876

/-- `A123760(A338062(n+1))` -/
def P11817238167476039434.Spec : Prop :=
  ∀ n, P11817238167476039434.a n = A070876 n

end A070876

/-! ## A070876.P14476870719156117009

`A164682(n+1)+A029746(n+2)`
-/

namespace A070876.P14476870719156117009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164682 (n + 1) + A029746 (n + 2)

end

end A070876.P14476870719156117009

namespace A070876

/-- `A164682(n+1)+A029746(n+2)` -/
def P14476870719156117009.Spec : Prop :=
  ∀ n, P14476870719156117009.a n = A070876 n

end A070876

/-! ## A070876.P7796116994778145526

`A097581(n+1)+A097581(n+4)`
-/

namespace A070876.P7796116994778145526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097581 (n + 1) + A097581 (n + 4)

end

end A070876.P7796116994778145526

namespace A070876

/-- `A097581(n+1)+A097581(n+4)` -/
def P7796116994778145526.Spec : Prop :=
  ∀ n, P7796116994778145526.a n = A070876 n

end A070876

/-! ## A070876.P10106510702052145024

`A228305(n+3)+A029746(n+2)`
-/

namespace A070876.P10106510702052145024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228305 (n + 3) + A029746 (n + 2)

end

end A070876.P10106510702052145024

namespace A070876

/-- `A228305(n+3)+A029746(n+2)` -/
def P10106510702052145024.Spec : Prop :=
  ∀ n, P10106510702052145024.a n = A070876 n

end A070876

/-! ## A070876.P16307842924706819038

`A094958(n+4)+A029746(n+2)`
-/

namespace A070876.P16307842924706819038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094958 (n + 4) + A029746 (n + 2)

end

end A070876.P16307842924706819038

namespace A070876

/-- `A094958(n+4)+A029746(n+2)` -/
def P16307842924706819038.Spec : Prop :=
  ∀ n, P16307842924706819038.a n = A070876 n

end A070876

/-! ## A070876.P7150292338777461694

`A135530(n+1)+A164095(n+2)+A135530(n)`
-/

namespace A070876.P7150292338777461694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (n + 1) + (A164095 (n + 2) + A135530 n)

end

end A070876.P7150292338777461694

namespace A070876

/-- `A135530(n+1)+A164095(n+2)+A135530(n)` -/
def P7150292338777461694.Spec : Prop :=
  ∀ n, P7150292338777461694.a n = A070876 n

end A070876

/-! ## A070876.P17547227882763653351

`∪[A005010(n), A110286(n)]`
-/

namespace A070876.P17547227882763653351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005010 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110286 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A070876.P17547227882763653351

namespace A070876

/-- `∪[A005010(n), A110286(n)]` -/
def P17547227882763653351.Spec : Prop :=
  ∀ n, (P17547227882763653351.a n : ℤ) = A070876 n

end A070876

/-! ## A070876.P6985927803727699698

`A354789(n+1)+A354785(n+2)-A354789(n)`
-/

namespace A070876.P6985927803727699698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354789 (n + 1) + (A354785 (n + 2) - A354789 n)

end

end A070876.P6985927803727699698

namespace A070876

/-- `A354789(n+1)+A354785(n+2)-A354789(n)` -/
def P6985927803727699698.Spec : Prop :=
  ∀ n, P6985927803727699698.a n = A070876 n

end A070876

/-! ## A070876.P13299021768775297548

`Δ[A164096(n+1)+A164096(n+1)/2]`
-/

namespace A070876.P13299021768775297548
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164096 (n + 1) : ℚ) + (A164096 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070876.P13299021768775297548

namespace A070876

/-- `Δ[A164096(n+1)+A164096(n+1)/2]` -/
def P13299021768775297548.Spec : Prop :=
  ∀ n, P13299021768775297548.a n = (A070876 n : ℚ)

end A070876

/-! ## A070876.P7995497274065813861

`A056486(n+2)/A016116(n)-A016116(n)`
-/

namespace A070876.P7995497274065813861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056486 (n + 2) : ℚ) / (A016116 n : ℚ) - (A016116 n : ℚ)

end

end A070876.P7995497274065813861

namespace A070876

/-- `A056486(n+2)/A016116(n)-A016116(n)` -/
def P7995497274065813861.Spec : Prop :=
  ∀ n, P7995497274065813861.a n = (A070876 n : ℚ)

end A070876

/-! ## A070876.P5724944705456187521

`A163888(n+2)+A163888(2*n+1)/A016116(n+1)`
-/

namespace A070876.P5724944705456187521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163888 (n + 2) : ℚ) + (A163888 (2 * n + 1) : ℚ) / (A016116 (n + 1) : ℚ)

end

end A070876.P5724944705456187521

namespace A070876

/-- `A163888(n+2)+A163888(2*n+1)/A016116(n+1)` -/
def P5724944705456187521.Spec : Prop :=
  ∀ n, P5724944705456187521.a n = (A070876 n : ℚ)

end A070876

/-! ## A070876.P13660184078076310364

`∩[A070021(n+1), A123760(n+1)]`
-/

namespace A070876.P13660184078076310364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070876.P13660184078076310364

namespace A070876

/-- `∩[A070021(n+1), A123760(n+1)]` -/
def P13660184078076310364.Spec : Prop :=
  ∀ n, (P13660184078076310364.a n : ℤ) = A070876 n

end A070876

/-! ## A070876.P8140107756629619671

`∩[A070023(n+1), A123760(n+1)]`
-/

namespace A070876.P8140107756629619671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070876.P8140107756629619671

namespace A070876

/-- `∩[A070023(n+1), A123760(n+1)]` -/
def P8140107756629619671.Spec : Prop :=
  ∀ n, (P8140107756629619671.a n : ℤ) = A070876 n

end A070876

/-! ## A070876.P4679912796240737095

`A135530(n)+A135536(n)/A016116(n)²`
-/

namespace A070876.P4679912796240737095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135530 n : ℚ) + (A135536 n : ℚ) / (A016116 n ^ 2 : ℚ)

end

end A070876.P4679912796240737095

namespace A070876

/-- `A135530(n)+A135536(n)/A016116(n)²` -/
def P4679912796240737095.Spec : Prop :=
  ∀ n, P4679912796240737095.a n = (A070876 n : ℚ)

end A070876

/-! ## A070876.P1231531213422549236

`∩[A123760(n+1), A129523(n+1)]`
-/

namespace A070876.P1231531213422549236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129523 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A070876.P1231531213422549236

namespace A070876

/-- `∩[A123760(n+1), A129523(n+1)]` -/
def P1231531213422549236.Spec : Prop :=
  ∀ n, (P1231531213422549236.a n : ℤ) = A070876 n

end A070876

/-!
# A070877: Expansion of Product_{k>=1} (1 - 2x^k).

The programs for A070877, there is no canonical definition to state claims against.
-/

/-! ## A070877.P16767728639310021443

`A292131(∑[n+3])`
-/

namespace A070877.P16767728639310021443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292131 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070877.P16767728639310021443

/-! ## A070877.P17255196744962702929

`A292131(Δ[A006503(n)])%A042912(n)`
-/

namespace A070877.P17255196744962702929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292131 (f1 (n + 1) - f1 n).toNat) (A042912 n)

end

end A070877.P17255196744962702929

/-! ## A070877.P14830378582136429120

`A033999(n)²*A292131(Δ[A006503(n)])`
-/

namespace A070877.P14830378582136429120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A292131 (f1 (n + 1) - f1 n).toNat

end

end A070877.P14830378582136429120

/-! ## A070877.P17970472323133218658

`A292131(Δ[A006503(n)])^A000038(n)!`
-/

namespace A070877.P17970472323133218658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292131 (f1 (n + 1) - f1 n).toNat ^ Nat.factorial (A000038 n).toNat

end

end A070877.P17970472323133218658

/-! ## A070877.P1785896460610824341

`A057427(n+1)*A292131(Δ[A006503(n)])`
-/

namespace A070877.P1785896460610824341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A292131 (f1 (n + 1) - f1 n).toNat

end

end A070877.P1785896460610824341

/-! ## A070877.P460179493897167655

`A292131(Δ[A006503(n)])^(A000007(n)+1)`
-/

namespace A070877.P460179493897167655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292131 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (A000007 n + 1 : ℤ)

end

end A070877.P460179493897167655

/-! ## A070877.P10490152157635162427

`A292131(Δ[A006503(n)])^A019430(2*n)`
-/

namespace A070877.P10490152157635162427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292131 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (A019430 (2 * n) : ℤ)

end

end A070877.P10490152157635162427

/-!
# A070878: Stern's diatomic array read by rows (version 2).

The programs for A070878, there is no canonical definition to state claims against.
-/

/-! ## A070878.P5456971567427891334

`A049456(n+1)-A049455(n+1)`
-/

namespace A070878.P5456971567427891334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049456 (n + 1) - A049455 (n + 1)

end

end A070878.P5456971567427891334

/-! ## A070878.P10711071227490388118

`A064882(n+1)-A049456(n+1)`
-/

namespace A070878.P10711071227490388118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064882 (n + 1) - A049456 (n + 1)

end

end A070878.P10711071227490388118

/-! ## A070878.P2104182644515062296

`A064884(n+1)-A064882(n+1)`
-/

namespace A070878.P2104182644515062296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064884 (n + 1) - A064882 (n + 1)

end

end A070878.P2104182644515062296

/-! ## A070878.P11815325357695289592

`A064886(n+1)-A064883(n+1)`
-/

namespace A070878.P11815325357695289592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064886 (n + 1) - A064883 (n + 1)

end

end A070878.P11815325357695289592

/-! ## A070878.P8565241931962172678

`2*A049456(n+1)-A064881(n+1)`
-/

namespace A070878.P8565241931962172678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049456 (n + 1) - A064881 (n + 1)

end

end A070878.P8565241931962172678

/-! ## A070878.P17272634936012724674

`A064881(n+1)-2*A049455(n+1)`
-/

namespace A070878.P17272634936012724674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064881 (n + 1) - 2 * A049455 (n + 1)

end

end A070878.P17272634936012724674

/-! ## A070878.P18016572675679526898

`A064885(n+1)-2*A049456(n+1)`
-/

namespace A070878.P18016572675679526898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064885 (n + 1) - 2 * A049456 (n + 1)

end

end A070878.P18016572675679526898

/-! ## A070878.P16411706019340437534

`2*A064882(n+1)-A064885(n+1)`
-/

namespace A070878.P16411706019340437534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A064882 (n + 1) - A064885 (n + 1)

end

end A070878.P16411706019340437534

/-! ## A070878.P2929206171463539929

`(A064882(n+1)-A049455(n+1))/2`
-/

namespace A070878.P2929206171463539929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064882 (n + 1) - A049455 (n + 1) : ℚ) / 2

end

end A070878.P2929206171463539929

/-! ## A070878.P16680431733069749238

`(A064884(n+1)-A049456(n+1))/2`
-/

namespace A070878.P16680431733069749238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064884 (n + 1) - A049456 (n + 1) : ℚ) / 2

end

end A070878.P16680431733069749238

/-! ## A070878.P2990495500589909480

`(A064885(n+1)-A064881(n+1))/2`
-/

namespace A070878.P2990495500589909480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064885 (n + 1) - A064881 (n + 1) : ℚ) / 2

end

end A070878.P2990495500589909480

/-! ## A070878.P16440696714259023984

`A004277(A049456(n+1))-A064881(n+1)`
-/

namespace A070878.P16440696714259023984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A049456 (n + 1)).toNat - A064881 (n + 1)

end

end A070878.P16440696714259023984

/-! ## A070878.P14665871734084307760

`A049455(n+1)+A064885(n+1)-A064886(n+1)`
-/

namespace A070878.P14665871734084307760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049455 (n + 1) + (A064885 (n + 1) - A064886 (n + 1))

end

end A070878.P14665871734084307760

/-! ## A070878.P55728970375734157

`A064886(n+1)-(A064881(n+1)+A049455(n+1))`
-/

namespace A070878.P55728970375734157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064886 (n + 1) - (A064881 (n + 1) + A049455 (n + 1))

end

end A070878.P55728970375734157

/-! ## A070878.P2668186497665265960

`A064881(n+1)+A064882(n+1)-A064886(n+1)`
-/

namespace A070878.P2668186497665265960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064881 (n + 1) + (A064882 (n + 1) - A064886 (n + 1))

end

end A070878.P2668186497665265960

/-! ## A070878.P13083447407282863167

`A002487(∑[A288132(n+2)]+1)-A049455(n+1)`
-/

namespace A070878.P13083447407282863167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288132 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat - A049455 (n + 1)

end

end A070878.P13083447407282863167

/-! ## A070878.P16311671310965715419

`A288003(A088948(n+1))-A049455(n+1)`
-/

namespace A070878.P16311671310965715419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A088948 (n + 1)).toNat - A049455 (n + 1)

end

end A070878.P16311671310965715419

/-! ## A070878.P4302674885862014963

`A295515(A088948(n+1)+1)-A049455(n+1)`
-/

namespace A070878.P4302674885862014963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A088948 (n + 1) + 1).toNat - A049455 (n + 1)

end

end A070878.P4302674885862014963

/-! ## A070878.P747564600987392927

`A295515(A088948(n+2))-A049455(n+1)`
-/

namespace A070878.P747564600987392927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (A088948 (n + 2)).toNat - A049455 (n + 1)

end

end A070878.P747564600987392927

/-! ## A070878.P10985020188523166098

`A020951(record[A132196(n)+1])`
-/

namespace A070878.P10985020188523166098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132196 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070878.P10985020188523166098

/-!
# A070879: Stern's diatomic array read by rows (version 3 - same as version 2, A070878, but with final 0 in each row omitted).

The programs for A070879, the canonical program `A070879.P1905303007827206191` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070879 has offset 0).

The definition of A070879 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070879.P13592490352374099919

`round(1/acot(A174980(n)))`
-/

namespace A070879.P13592490352374099919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (A174980 n : ℝ))

end

end A070879.P13592490352374099919

namespace A070879

/-- `round(1/acot(A174980(n)))` -/
def P13592490352374099919.Spec : Prop :=
  ∀ n, P13592490352374099919.a n = A070879 n

end A070879

/-! ## A070879.P2216844318998933219

`A070878(floor(log2(n+1))+n)`
-/

namespace A070879.P2216844318998933219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070878 (Nat.log 2 (n + 1) + n)

end

end A070879.P2216844318998933219

namespace A070879

/-- `A070878(floor(log2(n+1))+n)` -/
def P2216844318998933219.Spec : Prop :=
  ∀ n, P2216844318998933219.a n = A070879 n

end A070879

/-! ## A070879.P4192080908340348439

`round(sqrt(A174980(Δ[n²])²+1))`
-/

namespace A070879.P4192080908340348439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A174980 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2 + 1 : ℝ))

end

end A070879.P4192080908340348439

namespace A070879

/-- `round(sqrt(A174980(Δ[n²])²+1))` -/
def P4192080908340348439.Spec : Prop :=
  ∀ n, P4192080908340348439.a n = A070879 n

end A070879

/-! ## A070879.P6377598543373179290

`A287146(lt[xor(n, floor(n/2)), n])`
-/

namespace A070879.P6377598543373179290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287146 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A070879.P6377598543373179290

namespace A070879

/-- `A287146(lt[xor(n, floor(n/2)), n])` -/
def P6377598543373179290.Spec : Prop :=
  ∀ n, P6377598543373179290.a n = A070879 n

end A070879

/-! ## A070879.P13951180950790586729

`A020944(2^floor(log2(n+1))+n)`
-/

namespace A070879.P13951180950790586729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020944 (2 ^ Nat.log 2 (n + 1) + n)

end

end A070879.P13951180950790586729

namespace A070879

/-- `A020944(2^floor(log2(n+1))+n)` -/
def P13951180950790586729.Spec : Prop :=
  ∀ n, P13951180950790586729.a n = A070879 n

end A070879

/-! ## A070879.P3281532413170456850

`A174980(lt[n, 2*and(n, 2*n)]-1)`
-/

namespace A070879.P3281532413170456850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174980 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n - 1)

end

end A070879.P3281532413170456850

namespace A070879

/-- `A174980(lt[n, 2*and(n, 2*n)]-1)` -/
def P3281532413170456850.Spec : Prop :=
  ∀ n, P3281532413170456850.a n = A070879 n

end A070879

/-! ## A070879.P1905303007827206191

`A002487(∑[C(and(n+1, 2*n), n)]-n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A070879

/-- `A002487(∑[C(and(n+1, 2*n), n)]-n)` -/
def P1905303007827206191.Spec : Prop :=
  ∀ n, P1905303007827206191.a n = A070879 n

theorem P1905303007827206191.correct : P1905303007827206191.Spec := by
  intro n
  simp only [A070879]

end A070879

/-! ## A070879.P11627064217001177395

`A020951(lt[4*and(n, -(2*n+1)), n]-1)`
-/

namespace A070879.P11627064217001177395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.land (n : ℤ) (-(2 * n + 1 : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1)

end

end A070879.P11627064217001177395

namespace A070879

/-- `A020951(lt[4*and(n, -(2*n+1)), n]-1)` -/
def P11627064217001177395.Spec : Prop :=
  ∀ n, P11627064217001177395.a n = A070879 n

end A070879

/-! ## A070879.P18396054464197380957

`A028310(A174980(n))`
-/

namespace A070879.P18396054464197380957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A174980 n).toNat

end

end A070879.P18396054464197380957

namespace A070879

/-- `A028310(A174980(n))` -/
def P18396054464197380957.Spec : Prop :=
  ∀ n, P18396054464197380957.a n = A070879 n

end A070879

/-! ## A070879.P290689263195102969

`A002487(A049773(n+1))`
-/

namespace A070879.P290689263195102969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A049773 (n + 1)).toNat

end

end A070879.P290689263195102969

namespace A070879

/-- `A002487(A049773(n+1))` -/
def P290689263195102969.Spec : Prop :=
  ∀ n, P290689263195102969.a n = A070879 n

end A070879

/-! ## A070879.P17652671761371872779

`A002487(A080079(n+1))`
-/

namespace A070879.P17652671761371872779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A080079 (n + 1)).toNat

end

end A070879.P17652671761371872779

namespace A070879

/-- `A002487(A080079(n+1))` -/
def P17652671761371872779.Spec : Prop :=
  ∀ n, P17652671761371872779.a n = A070879 n

end A070879

/-! ## A070879.P1585769497531163653

`A054390(A083904(n+1))`
-/

namespace A070879.P1585769497531163653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054390 (A083904 (n + 1)).toNat

end

end A070879.P1585769497531163653

namespace A070879

/-- `A054390(A083904(n+1))` -/
def P1585769497531163653.Spec : Prop :=
  ∀ n, P1585769497531163653.a n = A070879 n

end A070879

/-! ## A070879.P1368879576706654881

`A020951(A206332(n+1))`
-/

namespace A070879.P1368879576706654881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A206332 (n + 1)).toNat

end

end A070879.P1368879576706654881

namespace A070879

/-- `A020951(A206332(n+1))` -/
def P1368879576706654881.Spec : Prop :=
  ∀ n, P1368879576706654881.a n = A070879 n

end A070879

/-! ## A070879.P14475624433023161464

`A287146(A004755(n+1))`
-/

namespace A070879.P14475624433023161464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287146 (A004755 (n + 1)).toNat

end

end A070879.P14475624433023161464

namespace A070879

/-- `A287146(A004755(n+1))` -/
def P14475624433023161464.Spec : Prop :=
  ∀ n, P14475624433023161464.a n = A070879 n

end A070879

/-! ## A070879.P9023068975334344545

`A287146(A004759(n+1))`
-/

namespace A070879.P9023068975334344545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287146 (A004759 (n + 1)).toNat

end

end A070879.P9023068975334344545

namespace A070879

/-- `A287146(A004759(n+1))` -/
def P9023068975334344545.Spec : Prop :=
  ∀ n, P9023068975334344545.a n = A070879 n

end A070879

/-! ## A070879.P9768495875340417910

`A288003(A030101(n+1))`
-/

namespace A070879.P9768495875340417910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A030101 (n + 1)).toNat

end

end A070879.P9768495875340417910

namespace A070879

/-- `A288003(A030101(n+1))` -/
def P9768495875340417910.Spec : Prop :=
  ∀ n, P9768495875340417910.a n = A070879 n

end A070879

/-! ## A070879.P8081336564464324966

`A288003(A057889(n+1))`
-/

namespace A070879.P8081336564464324966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288003 (A057889 (n + 1)).toNat

end

end A070879.P8081336564464324966

namespace A070879

/-- `A288003(A057889(n+1))` -/
def P8081336564464324966.Spec : Prop :=
  ∀ n, P8081336564464324966.a n = A070879 n

end A070879

/-! ## A070879.P6757654659049789225

`A324338(A038554(n+1))`
-/

namespace A070879.P6757654659049789225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (A038554 (n + 1)).toNat

end

end A070879.P6757654659049789225

namespace A070879

/-- `A324338(A038554(n+1))` -/
def P6757654659049789225.Spec : Prop :=
  ∀ n, P6757654659049789225.a n = A070879 n

end A070879

/-! ## A070879.P10833796337590827875

`A287146(A079946(n+1))`
-/

namespace A070879.P10833796337590827875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287146 (A079946 (n + 1)).toNat

end

end A070879.P10833796337590827875

namespace A070879

/-- `A287146(A079946(n+1))` -/
def P10833796337590827875.Spec : Prop :=
  ∀ n, P10833796337590827875.a n = A070879 n

end A070879

/-! ## A070879.P9197058393518122511

`A020951(A346304(n+1))`
-/

namespace A070879.P9197058393518122511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020951 (A346304 (n + 1)).toNat

end

end A070879.P9197058393518122511

namespace A070879

/-- `A020951(A346304(n+1))` -/
def P9197058393518122511.Spec : Prop :=
  ∀ n, P9197058393518122511.a n = A070879 n

end A070879

/-!
# A070880: Consider the 2^(n-1)-1 nonempty subsets S of {1, 2, ..., n-1}; a(n) gives number of such S for which it is impossible to partition n into parts from S such that each s in S is used at least once.

The programs for A070880, there is no canonical definition to state claims against.
-/

/-! ## A070880.P7727732865413228004

`2^n-A088314(n+1)`
-/

namespace A070880.P7727732865413228004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A088314 (n + 1)

end

end A070880.P7727732865413228004

/-! ## A070880.P8808507582433573879

`A365045(n+1)-1`
-/

namespace A070880.P8808507582433573879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365045 (n + 1) - 1

end

end A070880.P8808507582433573879

/-! ## A070880.P14270634427854238018

`Δ[A000079(n)-A353150(n)]`
-/

namespace A070880.P14270634427854238018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A353150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070880.P14270634427854238018

/-! ## A070880.P5499385179236397248

`Δ[A000079(n)-∑[A088314(n)]]`
-/

namespace A070880.P5499385179236397248
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070880.P5499385179236397248

/-! ## A070880.P8864558252587925027

`Δ[A000225(n)-∑[A088314(n)]]`
-/

namespace A070880.P8864558252587925027
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A070880.P8864558252587925027

/-! ## A070880.P12389136643571383416

`∑[A131577(n)-Δ[A088314(n)]]`
-/

namespace A070880.P12389136643571383416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070880.P12389136643571383416

/-! ## A070880.P11350805554888070996

`A085489(n)+A088809(n)-A088314(n+1)`
-/

namespace A070880.P11350805554888070996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085489 n + (A088809 n - A088314 (n + 1))

end

end A070880.P11350805554888070996

/-! ## A070880.P14958062516420870591

`A088314(n)+A365322(n)-A088314(n+1)`
-/

namespace A070880.P14958062516420870591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088314 n + (A365322 n - A088314 (n + 1))

end

end A070880.P14958062516420870591

/-! ## A070880.P8381145363169238765

`A365322(n+1)-2^n`
-/

namespace A070880.P8381145363169238765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365322 (n + 1) - (2 ^ n : ℤ)

end

end A070880.P8381145363169238765

/-! ## A070880.P6959462260538545621

`A000225(n)-A365042(n+1)`
-/

namespace A070880.P6959462260538545621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A365042 (n + 1)

end

end A070880.P6959462260538545621

/-!
# A070881: Least k such that A070868(k) = n.

The programs for A070881, there is no canonical definition to state claims against.
-/

/-! ## A070881.P4988548127815040841

`eq[A000212(A060524(n)), A228617(n)]`
-/

namespace A070881.P4988548127815040841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A060524 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070881.P4988548127815040841

/-! ## A070881.P13228826314056090673

`eq[A000212(A060524(n)), A238123(n)]`
-/

namespace A070881.P13228826314056090673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A060524 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070881.P13228826314056090673

/-! ## A070881.P8399806813584612896

`eq[A000212(A097591(n)), A228617(n)]`
-/

namespace A070881.P8399806813584612896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A097591 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228617 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070881.P8399806813584612896

/-! ## A070881.P12384843902268215525

`eq[A000212(A097591(n)), A238123(n)]`
-/

namespace A070881.P12384843902268215525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A097591 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070881.P12384843902268215525

/-! ## A070881.P8510665986667085108

`eq[A000212(A060524(n)), A277031(n)]`
-/

namespace A070881.P8510665986667085108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A060524 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277031 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A070881.P8510665986667085108

/-!
# A070883: Bitwise XOR of n and n-th prime.

The programs for A070883, the canonical program `A070883.P5422218626691008934` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070883 has offset 1).

The definition of A070883 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070883.P5422218626691008934

`xor(n+1, A000040(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A070883

/-- `xor(n+1, A000040(n+1))` -/
def P5422218626691008934.Spec : Prop :=
  ∀ n, P5422218626691008934.a n = A070883 (n + 1)

theorem P5422218626691008934.correct : P5422218626691008934.Spec := by
  intro n
  simp only [A070883, Nat.add_sub_cancel]

end A070883

/-! ## A070883.P11294971375179374243

`xor(n+1, Δ[A007504(n)])`
-/

namespace A070883.P11294971375179374243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A070883.P11294971375179374243

namespace A070883

/-- `xor(n+1, Δ[A007504(n)])` -/
def P11294971375179374243.Spec : Prop :=
  ∀ n, P11294971375179374243.a n = A070883 (n + 1)

end A070883

/-! ## A070883.P758968944512410617

`xor(n+1, abs(Δ[A022837(n)]))`
-/

namespace A070883.P758968944512410617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) |f1 (n + 1) - f1 n|

end

end A070883.P758968944512410617

namespace A070883

/-- `xor(n+1, abs(Δ[A022837(n)]))` -/
def P758968944512410617.Spec : Prop :=
  ∀ n, P758968944512410617.a n = A070883 (n + 1)

end A070883

/-! ## A070883.P6188846707204569493

`xor(n+1, sqrt(A001248(n+1)))`
-/

namespace A070883.P6188846707204569493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ)))

end

end A070883.P6188846707204569493

namespace A070883

/-- `xor(n+1, sqrt(A001248(n+1)))` -/
def P6188846707204569493.Spec : Prop :=
  ∀ n, P6188846707204569493.a n = A070883 (n + 1)

end A070883

/-! ## A070883.P17311036958517181419

`xor(n+1, ∑[A054541(n+1)])`
-/

namespace A070883.P17311036958517181419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A070883.P17311036958517181419

namespace A070883

/-- `xor(n+1, ∑[A054541(n+1)])` -/
def P17311036958517181419.Spec : Prop :=
  ∀ n, P17311036958517181419.a n = A070883 (n + 1)

end A070883

/-! ## A070883.P12481221366800920246

`xor(n+1, A006093(n+1)+1)`
-/

namespace A070883.P12481221366800920246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A006093 (n + 1) + 1)

end

end A070883.P12481221366800920246

namespace A070883

/-- `xor(n+1, A006093(n+1)+1)` -/
def P12481221366800920246.Spec : Prop :=
  ∀ n, P12481221366800920246.a n = A070883 (n + 1)

theorem P12481221366800920246.correct : P12481221366800920246.Spec := by
  intro n
  simp only [A070883, Nat.add_sub_cancel, A070883.P12481221366800920246.a, A070883.P5422218626691008934.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070883

/-! ## A070883.P6712690769219080975

`xor(n+1, A040976(n+1)+2)`
-/

namespace A070883.P6712690769219080975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A040976 (n + 1) + 2)

end

end A070883.P6712690769219080975

namespace A070883

/-- `xor(n+1, A040976(n+1)+2)` -/
def P6712690769219080975.Spec : Prop :=
  ∀ n, P6712690769219080975.a n = A070883 (n + 1)

theorem P6712690769219080975.correct : P6712690769219080975.Spec := by
  intro n
  simp only [A070883, Nat.add_sub_cancel, A070883.P6712690769219080975.a, A070883.P5422218626691008934.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070883

/-! ## A070883.P5349887264112738778

`A000040(n+1)-A194187(n+1)`
-/

namespace A070883.P5349887264112738778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A194187 (n + 1)

end

end A070883.P5349887264112738778

namespace A070883

/-- `A000040(n+1)-A194187(n+1)` -/
def P5349887264112738778.Spec : Prop :=
  ∀ n, P5349887264112738778.a n = A070883 (n + 1)

theorem P5349887264112738778.correct : P5349887264112738778.Spec := by
  intro n
  simp only [A070883, Nat.add_sub_cancel, A070883.P5349887264112738778.a, A070883.P5422218626691008934.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A194187, A194187.P2031847061750070614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A070883

/-! ## A070883.P657474172620189638

`xor(n+1, A008578(n+2))`
-/

namespace A070883.P657474172620189638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A008578 (n + 2))

end

end A070883.P657474172620189638

namespace A070883

/-- `xor(n+1, A008578(n+2))` -/
def P657474172620189638.Spec : Prop :=
  ∀ n, P657474172620189638.a n = A070883 (n + 1)

end A070883

/-! ## A070883.P12850942668321460034

`xor(n+1, A182986(n+2))`
-/

namespace A070883.P12850942668321460034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A182986 (n + 2))

end

end A070883.P12850942668321460034

namespace A070883

/-- `xor(n+1, A182986(n+2))` -/
def P12850942668321460034.Spec : Prop :=
  ∀ n, P12850942668321460034.a n = A070883 (n + 1)

end A070883

/-! ## A070883.P5147052390687811076

`xor(n+1, A158611(n+3))`
-/

namespace A070883.P5147052390687811076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A158611 (n + 3))

end

end A070883.P5147052390687811076

namespace A070883

/-- `xor(n+1, A158611(n+3))` -/
def P5147052390687811076.Spec : Prop :=
  ∀ n, P5147052390687811076.a n = A070883 (n + 1)

end A070883

/-! ## A070883.P11425099910316391428

`xor(n+1, p?[xor(1, n)+1])`
-/

namespace A070883.P11425099910316391428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A070883.P11425099910316391428

namespace A070883

/-- `xor(n+1, p?[xor(1, n)+1])` -/
def P11425099910316391428.Spec : Prop :=
  ∀ n, (P11425099910316391428.a n : ℤ) = A070883 (n + 1)

end A070883

/-! ## A070883.P17860098741698726774

`xor(n+1, record[A006530(n+2)])`
-/

namespace A070883.P17860098741698726774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A070883.P17860098741698726774

namespace A070883

/-- `xor(n+1, record[A006530(n+2)])` -/
def P17860098741698726774.Spec : Prop :=
  ∀ n, P17860098741698726774.a n = A070883 (n + 1)

end A070883

/-! ## A070883.P1344197660377459978

`xor(n+1, record[A020639(n+2)])`
-/

namespace A070883.P1344197660377459978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A070883.P1344197660377459978

namespace A070883

/-- `xor(n+1, record[A020639(n+2)])` -/
def P1344197660377459978.Spec : Prop :=
  ∀ n, P1344197660377459978.a n = A070883 (n + 1)

end A070883

/-! ## A070883.P2011187061770774166

`xor(n+1, A067747(2*n+1))`
-/

namespace A070883.P2011187061770774166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A067747 (2 * n + 1))

end

end A070883.P2011187061770774166

namespace A070883

/-- `xor(n+1, A067747(2*n+1))` -/
def P2011187061770774166.Spec : Prop :=
  ∀ n, P2011187061770774166.a n = A070883 (n + 1)

end A070883

/-! ## A070883.P7482541441806238475

`xor(n+1, A073846(2*(n+1)))`
-/

namespace A070883.P7482541441806238475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A073846 (2 * (n + 1)))

end

end A070883.P7482541441806238475

namespace A070883

/-- `xor(n+1, A073846(2*(n+1)))` -/
def P7482541441806238475.Spec : Prop :=
  ∀ n, P7482541441806238475.a n = A070883 (n + 1)

end A070883

/-! ## A070883.P8358219678268719480

`xor(n+1, A082500(2*(n+1)))`
-/

namespace A070883.P8358219678268719480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A082500 (2 * (n + 1)))

end

end A070883.P8358219678268719480

namespace A070883

/-- `xor(n+1, A082500(2*(n+1)))` -/
def P8358219678268719480.Spec : Prop :=
  ∀ n, P8358219678268719480.a n = A070883 (n + 1)

end A070883

/-! ## A070883.P11106908709884411887

`xor(n+1, A109763(2*(n+1)))`
-/

namespace A070883.P11106908709884411887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A109763 (2 * (n + 1)))

end

end A070883.P11106908709884411887

namespace A070883

/-- `xor(n+1, A109763(2*(n+1)))` -/
def P11106908709884411887.Spec : Prop :=
  ∀ n, P11106908709884411887.a n = A070883 (n + 1)

end A070883

/-! ## A070883.P11024258388086307095

`xor(n+1, A129767(2*n+1))`
-/

namespace A070883.P11024258388086307095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A129767 (2 * n + 1))

end

end A070883.P11024258388086307095

namespace A070883

/-- `xor(n+1, A129767(2*n+1))` -/
def P11024258388086307095.Spec : Prop :=
  ∀ n, P11024258388086307095.a n = A070883 (n + 1)

end A070883

/-!
# A070884: 7 + x where x is congruent to {0, 4, 6, 10, 12, 16, 22, 24} mod 30.

The programs for A070884, the canonical program `A070884.P5421558342531689393` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070884 has offset 0).

The definition of A070884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070884.P5421558342531689393

`record[lcm(60, n+7)/60]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070884

/-- `record[lcm(60, n+7)/60]` -/
def P5421558342531689393.Spec : Prop :=
  ∀ n, P5421558342531689393.a n = (A070884 n : ℚ)

end A070884

/-! ## A070884.P8954774979516454462

`2*floor((3*floor((10*floor((9*(n+1)+1)/8)+8)/9)+1)/2)+1`
-/

namespace A070884.P8954774979516454462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(3 * ⌊(10 * ⌊(9 * (n + 1) + 1 : ℚ) / 8⌋ + 8 : ℚ) / 9⌋ + 1 : ℚ) / 2⌋ + 1

end

end A070884.P8954774979516454462

namespace A070884

/-- `2*floor((3*floor((10*floor((9*(n+1)+1)/8)+8)/9)+1)/2)+1` -/
def P8954774979516454462.Spec : Prop :=
  ∀ n, P8954774979516454462.a n = A070884 n

end A070884

/-! ## A070884.P11675226748615037829

`filter[A383288(n+2), A162289(#)]`
-/

namespace A070884.P11675226748615037829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383288 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A070884.P11675226748615037829

namespace A070884

/-- `filter[A383288(n+2), A162289(#)]` -/
def P11675226748615037829.Spec : Prop :=
  ∀ n, P11675226748615037829.a n = A070884 n

end A070884

/-! ## A070884.P5842433402067585405

`A007775(n+2)`
-/

namespace A070884.P5842433402067585405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 2)

end

end A070884.P5842433402067585405

namespace A070884

/-- `A007775(n+2)` -/
def P5842433402067585405.Spec : Prop :=
  ∀ n, P5842433402067585405.a n = A070884 n

end A070884

/-! ## A070884.P5222976593543283338

`A084968(n+2)/7`
-/

namespace A070884.P5222976593543283338
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084968 (n + 2) : ℚ) / 7

end

end A070884.P5222976593543283338

namespace A070884

/-- `A084968(n+2)/7` -/
def P5222976593543283338.Spec : Prop :=
  ∀ n, P5222976593543283338.a n = (A070884 n : ℚ)

end A070884

/-! ## A070884.P15448320193194296590

`A054403(n+4)`
-/

namespace A070884.P15448320193194296590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (n + 4)

end

end A070884.P15448320193194296590

namespace A070884

/-- `A054403(n+4)` -/
def P15448320193194296590.Spec : Prop :=
  ∀ n, P15448320193194296590.a n = A070884 n

end A070884

/-! ## A070884.P13011784650204308444

`filter[A374044(n+2), A162289(#)]`
-/

namespace A070884.P13011784650204308444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374044 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A070884.P13011784650204308444

namespace A070884

/-- `filter[A374044(n+2), A162289(#)]` -/
def P13011784650204308444.Spec : Prop :=
  ∀ n, P13011784650204308444.a n = A070884 n

end A070884

/-! ## A070884.P9766226295767184538

`filter[A373140(n+2), A162289(#)]`
-/

namespace A070884.P9766226295767184538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373140 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A070884.P9766226295767184538

namespace A070884

/-- `filter[A373140(n+2), A162289(#)]` -/
def P9766226295767184538.Spec : Prop :=
  ∀ n, P9766226295767184538.a n = A070884 n

end A070884

/-! ## A070884.P15610542478232490966

`filter[A007310(n+2), A011558(#)]`
-/

namespace A070884.P15610542478232490966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A070884.P15610542478232490966

namespace A070884

/-- `filter[A007310(n+2), A011558(#)]` -/
def P15610542478232490966.Spec : Prop :=
  ∀ n, P15610542478232490966.a n = A070884 n

end A070884

/-! ## A070884.P14116314598532057061

`filter[A007310(n+2), A162289(#)]`
-/

namespace A070884.P14116314598532057061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A070884.P14116314598532057061

namespace A070884

/-- `filter[A007310(n+2), A162289(#)]` -/
def P14116314598532057061.Spec : Prop :=
  ∀ n, P14116314598532057061.a n = A070884 n

end A070884

/-! ## A070884.P4947662712178388092

`filter[A038179(n+1), A162289(#)]`
-/

namespace A070884.P4947662712178388092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A070884.P4947662712178388092

namespace A070884

/-- `filter[A038179(n+1), A162289(#)]` -/
def P4947662712178388092.Spec : Prop :=
  ∀ n, P4947662712178388092.a n = A070884 n

end A070884

/-! ## A070884.P13880711357605585869

`filter[A038179(n+3), A011558(#)]`
-/

namespace A070884.P13880711357605585869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A070884.P13880711357605585869

namespace A070884

/-- `filter[A038179(n+3), A011558(#)]` -/
def P13880711357605585869.Spec : Prop :=
  ∀ n, P13880711357605585869.a n = A070884 n

end A070884

/-! ## A070884.P16662895549275352487

`filter[A091377(n+2), A162289(#)]`
-/

namespace A070884.P16662895549275352487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091377 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A070884.P16662895549275352487

namespace A070884

/-- `filter[A091377(n+2), A162289(#)]` -/
def P16662895549275352487.Spec : Prop :=
  ∀ n, P16662895549275352487.a n = A070884 n

end A070884

/-! ## A070884.P14388915413926892225

`filter[A091377(n+2), A373139(#)]`
-/

namespace A070884.P14388915413926892225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091377 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373139 (f1 j).toNat = 1) n)

end

end A070884.P14388915413926892225

namespace A070884

/-- `filter[A091377(n+2), A373139(#)]` -/
def P14388915413926892225.Spec : Prop :=
  ∀ n, P14388915413926892225.a n = A070884 n

end A070884

/-! ## A070884.P12409607920435244126

`filter[A045572(n+2), A162289(#)]`
-/

namespace A070884.P12409607920435244126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A070884.P12409607920435244126

namespace A070884

/-- `filter[A045572(n+2), A162289(#)]` -/
def P12409607920435244126.Spec : Prop :=
  ∀ n, P12409607920435244126.a n = A070884 n

end A070884

/-! ## A070884.P17936572742371727405

`filter[A064615(n+2), A162289(#)]`
-/

namespace A070884.P17936572742371727405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064615 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A070884.P17936572742371727405

namespace A070884

/-- `filter[A064615(n+2), A162289(#)]` -/
def P17936572742371727405.Spec : Prop :=
  ∀ n, P17936572742371727405.a n = A070884 n

end A070884

/-! ## A070884.P1921184345120587586

`filter[A045572(n+2), A187074(#)]`
-/

namespace A070884.P1921184345120587586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A070884.P1921184345120587586

namespace A070884

/-- `filter[A045572(n+2), A187074(#)]` -/
def P1921184345120587586.Spec : Prop :=
  ∀ n, P1921184345120587586.a n = A070884 n

end A070884

/-! ## A070884.P12472868869582010637

`filter[A045572(n+2), A320106(#)]`
-/

namespace A070884.P12472868869582010637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A070884.P12472868869582010637

namespace A070884

/-- `filter[A045572(n+2), A320106(#)]` -/
def P12472868869582010637.Spec : Prop :=
  ∀ n, P12472868869582010637.a n = A070884 n

end A070884

/-! ## A070884.P17680073486283160148

`filter[A045572(n+2), A354354(#)]`
-/

namespace A070884.P17680073486283160148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A070884.P17680073486283160148

namespace A070884

/-- `filter[A045572(n+2), A354354(#)]` -/
def P17680073486283160148.Spec : Prop :=
  ∀ n, P17680073486283160148.a n = A070884 n

end A070884

/-! ## A070884.P11535774456467640700

`filter[A045572(n+2), A359374(#)]`
-/

namespace A070884.P11535774456467640700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A070884.P11535774456467640700

namespace A070884

/-- `filter[A045572(n+2), A359374(#)]` -/
def P11535774456467640700.Spec : Prop :=
  ∀ n, P11535774456467640700.a n = A070884 n

end A070884

/-!
# A070885: a(n) = (3/2)*a(n-1) if a(n-1) is even; (3/2)*(a(n-1)+1) if a(n-1) is odd.

The programs for A070885, the canonical program `A070885.P14007311972331972096` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070885 has offset 1).

The definition of A070885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070885.P14007311972331972096

`3*ceil(a(n-1)/2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070885

/-- `3*ceil(a(n-1)/2)` -/
def P14007311972331972096.Spec : Prop :=
  ∀ n, P14007311972331972096.a n = A070885 (n + 1)

theorem P14007311972331972096.correct : P14007311972331972096.Spec := by
  intro n
  simp only [A070885, Nat.add_sub_cancel]

end A070885

/-! ## A070885.P17859689419903349012

`3*round(a(n-1)/2)` with `a(0)=1`
-/

namespace A070885.P17859689419903349012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / 2)

end

end A070885.P17859689419903349012

namespace A070885

/-- `3*round(a(n-1)/2)` -/
def P17859689419903349012.Spec : Prop :=
  ∀ n, P17859689419903349012.a n = A070885 (n + 1)

end A070885

/-! ## A070885.P3438558716578716067

`3*floor((a(n-1)+1)/2)` with `a(0)=1`
-/

namespace A070885.P3438558716578716067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * ⌊(a (n - 1) + 1 : ℚ) / 2⌋

end

end A070885.P3438558716578716067

namespace A070885

/-- `3*floor((a(n-1)+1)/2)` -/
def P3438558716578716067.Spec : Prop :=
  ∀ n, P3438558716578716067.a n = A070885 (n + 1)

end A070885

/-! ## A070885.P13841459945788041022

`3*(1-floor((2-a(n-1))/2))` with `a(0)=1`
-/

namespace A070885.P13841459945788041022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * (1 - ⌊(2 - a (n - 1) : ℚ) / 2⌋)

end

end A070885.P13841459945788041022

namespace A070885

/-- `3*(1-floor((2-a(n-1))/2))` -/
def P13841459945788041022.Spec : Prop :=
  ∀ n, P13841459945788041022.a n = A070885 (n + 1)

end A070885

/-! ## A070885.P11877732601625315974

`3*(a(n-1)+a(n-1)%2)/2` with `a(0)=1`
-/

namespace A070885.P11877732601625315974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((a (n - 1) + (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 2 : ℚ)) / 2)

end

end A070885.P11877732601625315974

namespace A070885

/-- `3*(a(n-1)+a(n-1)%2)/2` -/
def P11877732601625315974.Spec : Prop :=
  ∀ n, P11877732601625315974.a n = (A070885 (n + 1) : ℚ)

end A070885

/-! ## A070885.P12338455269809976426

`A081848(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A070885.P12338455269809976426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A081848 n + a (n - 1)

end

end A070885.P12338455269809976426

namespace A070885

/-- `A081848(n)+a(n-1)` -/
def P12338455269809976426.Spec : Prop :=
  ∀ n, P12338455269809976426.a n = A070885 (n + 1)

end A070885

/-! ## A070885.P11854229773184930998

`A305498(n+1)-A205083(n+1)`
-/

namespace A070885.P11854229773184930998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305498 (n + 1) - A205083 (n + 1)

end

end A070885.P11854229773184930998

namespace A070885

/-- `A305498(n+1)-A205083(n+1)` -/
def P11854229773184930998.Spec : Prop :=
  ∀ n, P11854229773184930998.a n = A070885 (n + 1)

end A070885

/-! ## A070885.P17955418622555037609

`2*A061419(n+1)-A205083(n+1)`
-/

namespace A070885.P17955418622555037609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061419 (n + 1) - A205083 (n + 1)

end

end A070885.P17955418622555037609

namespace A070885

/-- `2*A061419(n+1)-A205083(n+1)` -/
def P17955418622555037609.Spec : Prop :=
  ∀ n, P17955418622555037609.a n = A070885 (n + 1)

end A070885

/-! ## A070885.P8868957688124158775

`2*A061419(n+1)-ceil(A304273(n+1)/A016885(n))`
-/

namespace A070885.P8868957688124158775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061419 (n + 1) - ⌈(A304273 (n + 1) : ℚ) / (A016885 n : ℚ)⌉

end

end A070885.P8868957688124158775

namespace A070885

/-- `2*A061419(n+1)-ceil(A304273(n+1)/A016885(n))` -/
def P8868957688124158775.Spec : Prop :=
  ∀ n, P8868957688124158775.a n = A070885 (n + 1)

end A070885

/-! ## A070885.P8324459817594784105

`2*A061419(n+1)-(A304273(n+1)+record[A000010(n+1)])%2`
-/

namespace A070885.P8324459817594784105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061419 (n + 1) - Int.tmod (A304273 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A070885.P8324459817594784105

namespace A070885

/-- `2*A061419(n+1)-(A304273(n+1)+record[A000010(n+1)])%2` -/
def P8324459817594784105.Spec : Prop :=
  ∀ n, P8324459817594784105.a n = A070885 (n + 1)

end A070885

/-!
# A070886: Triangle read by rows giving successive states of cellular automaton generated by "Rule 90".

The programs for A070886, the canonical program `A070886.P8245477547153296858` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070886 has offset 0).

The definition of A070886 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A070886.P8245477547153296858

`A034870(n)%2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A070886

/-- `A034870(n)%2` -/
def P8245477547153296858.Spec : Prop :=
  ∀ n, P8245477547153296858.a n = A070886 n

theorem P8245477547153296858.correct : P8245477547153296858.Spec := by
  intro n
  simp only [A070886]

end A070886

/-! ## A070886.P10045590977948082575

`A084608(n)%2`
-/

namespace A070886.P10045590977948082575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084608 n) 2

end

end A070886.P10045590977948082575

namespace A070886

/-- `A084608(n)%2` -/
def P10045590977948082575.Spec : Prop :=
  ∀ n, P10045590977948082575.a n = A070886 n

end A070886

/-! ## A070886.P13292281519020052518

`and(1, A123218(n+1))`
-/

namespace A070886.P13292281519020052518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A123218 (n + 1))

end

end A070886.P13292281519020052518

namespace A070886

/-- `and(1, A123218(n+1))` -/
def P13292281519020052518.Spec : Prop :=
  ∀ n, P13292281519020052518.a n = A070886 n

end A070886

/-! ## A070886.P4639249274323825487

`(1-A266754(n))^n`
-/

namespace A070886.P4639249274323825487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A266754 n) ^ n

end

end A070886.P4639249274323825487

namespace A070886

/-- `(1-A266754(n))^n` -/
def P4639249274323825487.Spec : Prop :=
  ∀ n, P4639249274323825487.a n = A070886 n

end A070886

/-! ## A070886.P2517942454139045469

`A054977(n)-A266754(n)`
-/

namespace A070886.P2517942454139045469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A266754 n

end

end A070886.P2517942454139045469

namespace A070886

/-- `A054977(n)-A266754(n)` -/
def P2517942454139045469.Spec : Prop :=
  ∀ n, P2517942454139045469.a n = A070886 n

end A070886

/-! ## A070886.P13659665640300289815

`A071028(n)*A071029(n)`
-/

namespace A070886.P13659665640300289815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n * A071029 n

end

end A070886.P13659665640300289815

namespace A070886

/-- `A071028(n)*A071029(n)` -/
def P13659665640300289815.Spec : Prop :=
  ∀ n, P13659665640300289815.a n = A070886 n

end A070886

/-! ## A070886.P1977984840537477980

`A071028(n)*A071035(n)`
-/

namespace A070886.P1977984840537477980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n * A071035 n

end

end A070886.P1977984840537477980

namespace A070886

/-- `A071028(n)*A071035(n)` -/
def P1977984840537477980.Spec : Prop :=
  ∀ n, P1977984840537477980.a n = A070886 n

end A070886

/-! ## A070886.P6108379062557879502

`A071029(n)*A152822(n)`
-/

namespace A070886.P6108379062557879502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071029 n * A152822 n

end

end A070886.P6108379062557879502

namespace A070886

/-- `A071029(n)*A152822(n)` -/
def P6108379062557879502.Spec : Prop :=
  ∀ n, P6108379062557879502.a n = A070886 n

end A070886

/-! ## A070886.P3712289316629582700

`A000122(n*A266754(n))`
-/

namespace A070886.P3712289316629582700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 ((n : ℤ) * A266754 n).toNat

end

end A070886.P3712289316629582700

namespace A070886

/-- `A000122(n*A266754(n))` -/
def P3712289316629582700.Spec : Prop :=
  ∀ n, P3712289316629582700.a n = A070886 n

end A070886

/-! ## A070886.P10422988984437122477

`A071028(n)*A249133(n)`
-/

namespace A070886.P10422988984437122477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n * A249133 n

end

end A070886.P10422988984437122477

namespace A070886

/-- `A071028(n)*A249133(n)` -/
def P10422988984437122477.Spec : Prop :=
  ∀ n, P10422988984437122477.a n = A070886 n

end A070886

/-! ## A070886.P15591115076927326940

`A071029(n)*A262808(n)`
-/

namespace A070886.P15591115076927326940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071029 n * A262808 n

end

end A070886.P15591115076927326940

namespace A070886

/-- `A071029(n)*A262808(n)` -/
def P15591115076927326940.Spec : Prop :=
  ∀ n, P15591115076927326940.a n = A070886 n

end A070886

/-! ## A070886.P14997100959640196008

`A249133(n)*A262808(n)`
-/

namespace A070886.P14997100959640196008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249133 n * A262808 n

end

end A070886.P14997100959640196008

namespace A070886

/-- `A249133(n)*A262808(n)` -/
def P14997100959640196008.Spec : Prop :=
  ∀ n, P14997100959640196008.a n = A070886 n

end A070886

/-! ## A070886.P10242044716512312969

`and(A003878(n), A071029(n))`
-/

namespace A070886.P10242044716512312969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003878 n) (A071029 n)

end

end A070886.P10242044716512312969

namespace A070886

/-- `and(A003878(n), A071029(n))` -/
def P10242044716512312969.Spec : Prop :=
  ∀ n, P10242044716512312969.a n = A070886 n

end A070886

/-! ## A070886.P15220459533620655259

`and(A027052(n), A071029(n))`
-/

namespace A070886.P15220459533620655259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027052 n) (A071029 n)

end

end A070886.P15220459533620655259

namespace A070886

/-- `and(A027052(n), A071029(n))` -/
def P15220459533620655259.Spec : Prop :=
  ∀ n, P15220459533620655259.a n = A070886 n

end A070886

/-! ## A070886.P4621511371193049471

`and(A027052(n), A071035(n))`
-/

namespace A070886.P4621511371193049471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027052 n) (A071035 n)

end

end A070886.P4621511371193049471

namespace A070886

/-- `and(A027052(n), A071035(n))` -/
def P4621511371193049471.Spec : Prop :=
  ∀ n, P4621511371193049471.a n = A070886 n

end A070886

/-! ## A070886.P2968351582501468385

`and(A028494(n), A071029(n))`
-/

namespace A070886.P2968351582501468385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028494 n) (A071029 n)

end

end A070886.P2968351582501468385

namespace A070886

/-- `and(A028494(n), A071029(n))` -/
def P2968351582501468385.Spec : Prop :=
  ∀ n, P2968351582501468385.a n = A070886 n

end A070886

/-! ## A070886.P516125883830387100

`and(A029579(n), A071029(n))`
-/

namespace A070886.P516125883830387100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029579 n) (A071029 n)

end

end A070886.P516125883830387100

namespace A070886

/-- `and(A029579(n), A071029(n))` -/
def P516125883830387100.Spec : Prop :=
  ∀ n, P516125883830387100.a n = A070886 n

end A070886

/-! ## A070886.P9440628172710054299

`and(A033638(n), A071029(n))`
-/

namespace A070886.P9440628172710054299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033638 n) (A071029 n)

end

end A070886.P9440628172710054299

namespace A070886

/-- `and(A033638(n), A071029(n))` -/
def P9440628172710054299.Spec : Prop :=
  ∀ n, P9440628172710054299.a n = A070886 n

end A070886

/-! ## A070886.P11127947946253727805

`and(A034870(n), A071028(n))`
-/

namespace A070886.P11127947946253727805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034870 n) (A071028 n)

end

end A070886.P11127947946253727805

namespace A070886

/-- `and(A034870(n), A071028(n))` -/
def P11127947946253727805.Spec : Prop :=
  ∀ n, P11127947946253727805.a n = A070886 n

end A070886

/-! ## A070886.P8649496264991611356

`and(A034870(n), A071029(n))`
-/

namespace A070886.P8649496264991611356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034870 n) (A071029 n)

end

end A070886.P8649496264991611356

namespace A070886

/-- `and(A034870(n), A071029(n))` -/
def P8649496264991611356.Spec : Prop :=
  ∀ n, P8649496264991611356.a n = A070886 n

end A070886

/-!
# A070887: Triangle read by rows giving successive states of one-dimensional cellular automaton generated by "Rule 110".

The programs for A070887, there is no canonical definition to state claims against.
-/

/-! ## A070887.P4788330532368848917

`A071025(A061579(n))`
-/

namespace A070887.P4788330532368848917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071025 (A061579 n).toNat

end

end A070887.P4788330532368848917

/-! ## A070887.P13666216466322363047

`A071025(A038722(n+2))`
-/

namespace A070887.P13666216466322363047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071025 (A038722 (n + 2)).toNat

end

end A070887.P13666216466322363047

/-! ## A070887.P13009557741856769173

`A075437(A063656(n))`
-/

namespace A070887.P13009557741856769173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075437 (A063656 n).toNat

end

end A070887.P13009557741856769173

/-! ## A070887.P13847757423772886294

`A075437(C(A003056(n), 2)+n)`
-/

namespace A070887.P13847757423772886294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075437 (Nat.choose (A003056 n).toNat 2 + n)

end

end A070887.P13847757423772886294

/-! ## A070887.P8477071171116379672

`A075437(record[n%A020703(n+1)])`
-/

namespace A070887.P8477071171116379672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A020703 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075437 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A070887.P8477071171116379672

/-! ## A070887.P10505246921672855303

`A075437(eq[1, A267708(n)])`
-/

namespace A070887.P10505246921672855303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075437 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A070887.P10505246921672855303

/-!
# A070888: Numerator of Sum_{k=1..n} mu(k)/k.

The programs for A070888, there is no canonical definition to state claims against.
-/

/-! ## A070888.P15896436359434212121

`A385808(A013928(n+2))`
-/

namespace A070888.P15896436359434212121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385808 (A013928 (n + 2)).toNat

end

end A070888.P15896436359434212121

/-! ## A070888.P7363006944720370408

`A068337(n+1)/A000142(n+1)*A070889(n+1)`
-/

namespace A070888.P7363006944720370408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068337 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ) * (A070889 (n + 1) : ℚ)

end

end A070888.P7363006944720370408

/-!
# A070889: Denominator of Sum_{k=1..n} mu(k)/k.

The programs for A070889, there is no canonical definition to state claims against.
-/

/-! ## A070889.P8440511847593077550

`A385944(A013928(n+2))`
-/

namespace A070889.P8440511847593077550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385944 (A013928 (n + 2)).toNat

end

end A070889.P8440511847593077550

/-! ## A070889.P5498447401625802031

`A000142(n+1)/A068337(n+1)*A070888(n+1)`
-/

namespace A070889.P5498447401625802031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A068337 (n + 1) : ℚ) * (A070888 (n + 1) : ℚ)

end

end A070889.P5498447401625802031

/-! ## A070889.P8061550641010748172

`A007913(a(n-1)*A126773(n+1))` with `a(0)=1`
-/

namespace A070889.P8061550641010748172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007913 (a (n - 1) * A126773 (n + 1)).toNat

end

end A070889.P8061550641010748172

/-! ## A070889.P587146038768566874

`A379582(A077168(n))`
-/

namespace A070889.P587146038768566874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379582 (A077168 n).toNat

end

end A070889.P587146038768566874

/-! ## A070889.P2967225569305979584

`A379582(A065673(n+1))`
-/

namespace A070889.P2967225569305979584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379582 (A065673 (n + 1)).toNat

end

end A070889.P2967225569305979584

/-!
# A070890: Numerator of Sum_{k=1..n} mu(k)/k when it changes sign.

The programs for A070890, there is no canonical definition to state claims against.
-/

/-! ## A070890.P8673265679964693630

`A070888(A082812(n+1)+1)`
-/

namespace A070890.P8673265679964693630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070888 (A082812 (n + 1) + 1).toNat

end

end A070890.P8673265679964693630

/-!
# A070891: Denominator of Sum_{k=1..n} mu(k)/k when it changes sign.

The programs for A070891, there is no canonical definition to state claims against.
-/

/-! ## A070891.P13840066432514790917

`A070889(A082812(n+1)+1)`
-/

namespace A070891.P13840066432514790917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070889 (A082812 (n + 1) + 1).toNat

end

end A070891.P13840066432514790917

/-! ## A070891.P16987970582716879704

`filter[A385944(n+1), A011728(#)]`
-/

namespace A070891.P16987970582716879704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385944 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011728 (f1 j).toNat = 1) n)

end

end A070891.P16987970582716879704

/-!
# A070892: Numbers n such that absolute value of Sum_{k=1..n} mu(k)/k sets a new minimum.

The programs for A070892, there is no canonical definition to state claims against.
-/

/-! ## A070892.P8826723485548398103

`or(A289052(A307354(n)), A296446(n+1))`
-/

namespace A070892.P8826723485548398103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A289052 (A307354 n).toNat) (A296446 (n + 1))

end

end A070892.P8826723485548398103

/-!
# A070893: Let r, s, t be three permutations of the set {1,2,3,..,n}; a(n) = value of Sum_{i=1..n} r(i)*s(i)*t(i), with r={1,2,3,..,n}; s={n,n-1,..,1} and t={n,n-2,n-4,...,1,...,n-3,n-1}.

The programs for A070893, the canonical program `A070893.P13934485787620573926` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070893 has offset 1).

The definition of A070893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070893.P13934485787620573926

`1/96*(2*(n+1)*(n+3)*(3*(n+1)²+10*(n+1)+4)+3*(-1)^(n+1)-3)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070893

/-- `1/96*(2*(n+1)*(n+3)*(3*(n+1)²+10*(n+1)+4)+3*(-1)^(n+1)-3)` -/
def P13934485787620573926.Spec : Prop :=
  ∀ n, P13934485787620573926.a n = (A070893 (n + 1) : ℚ)

end A070893

/-! ## A070893.P637316491688671146

`∑[∑[∑[∑[n%2+1]]]]`
-/

namespace A070893.P637316491688671146
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070893.P637316491688671146

namespace A070893

/-- `∑[∑[∑[∑[n%2+1]]]]` -/
def P637316491688671146.Spec : Prop :=
  ∀ n, (P637316491688671146.a n : ℤ) = A070893 (n + 1)

end A070893

/-! ## A070893.P2447268520001392229

`∑[∑[∑[∑[gcd(2, n+1)]]]]`
-/

namespace A070893.P2447268520001392229
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070893.P2447268520001392229

namespace A070893

/-- `∑[∑[∑[∑[gcd(2, n+1)]]]]` -/
def P2447268520001392229.Spec : Prop :=
  ∀ n, (P2447268520001392229.a n : ℤ) = A070893 (n + 1)

end A070893

/-! ## A070893.P996610287539374286

`∑[∑[∑[∑[2^(n²%2)]]]]`
-/

namespace A070893.P996610287539374286
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n ^ 2 % 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070893.P996610287539374286

namespace A070893

/-- `∑[∑[∑[∑[2^(n²%2)]]]]` -/
def P996610287539374286.Spec : Prop :=
  ∀ n, (P996610287539374286.a n : ℤ) = A070893 (n + 1)

end A070893

/-! ## A070893.P2359167907359289999

`∑[∑[∑[a(n-2)+3]]]` with `a(0)=1, a(1)=3`
-/

namespace A070893.P2359167907359289999
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f3 =>
  f3 (n - 2) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070893.P2359167907359289999

namespace A070893

/-- `∑[∑[∑[a(n-2)+3]]]` -/
def P2359167907359289999.Spec : Prop :=
  ∀ n, (P2359167907359289999.a n : ℤ) = A070893 (n + 1)

end A070893

/-! ## A070893.P10268391512660317836

`floor(∑[∑[∑[∑[3-a(n-1)]]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A070893.P10268391512660317836
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f4 =>
  3 - f4 (n - 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070893.P10268391512660317836

namespace A070893

/-- `floor(∑[∑[∑[∑[3-a(n-1)]]]])` -/
def P10268391512660317836.Spec : Prop :=
  ∀ n, P10268391512660317836.a n = A070893 (n + 1)

end A070893

/-! ## A070893.P5956767138005147919

`∑[∑[A006578(n+1)]]`
-/

namespace A070893.P5956767138005147919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070893.P5956767138005147919

namespace A070893

/-- `∑[∑[A006578(n+1)]]` -/
def P5956767138005147919.Spec : Prop :=
  ∀ n, P5956767138005147919.a n = A070893 (n + 1)

end A070893

/-! ## A070893.P9378896330900850788

`∑[A019298(n)+(n+1)²]`
-/

namespace A070893.P9378896330900850788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070893.P9378896330900850788

namespace A070893

/-- `∑[A019298(n)+(n+1)²]` -/
def P9378896330900850788.Spec : Prop :=
  ∀ n, P9378896330900850788.a n = A070893 (n + 1)

end A070893

/-! ## A070893.P10544234196433384139

`A011863(n+1)+∑[(n+1)²]`
-/

namespace A070893.P10544234196433384139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011863 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A070893.P10544234196433384139

namespace A070893

/-- `A011863(n+1)+∑[(n+1)²]` -/
def P10544234196433384139.Spec : Prop :=
  ∀ n, P10544234196433384139.a n = A070893 (n + 1)

end A070893

/-! ## A070893.P14465418448271465801

`A233329(n)-A006918(n)`
-/

namespace A070893.P14465418448271465801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233329 n - A006918 n

end

end A070893.P14465418448271465801

namespace A070893

/-- `A233329(n)-A006918(n)` -/
def P14465418448271465801.Spec : Prop :=
  ∀ n, P14465418448271465801.a n = A070893 (n + 1)

end A070893

/-! ## A070893.P14343219518760029123

`A331390(n+1)-A006503(n)`
-/

namespace A070893.P14343219518760029123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331390 (n + 1) - A006503 n

end

end A070893.P14343219518760029123

namespace A070893

/-- `A331390(n+1)-A006503(n)` -/
def P14343219518760029123.Spec : Prop :=
  ∀ n, P14343219518760029123.a n = A070893 (n + 1)

end A070893

/-! ## A070893.P4428037271720883974

`A082289(n+4)-A002623(n)`
-/

namespace A070893.P4428037271720883974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082289 (n + 4) - A002623 n

end

end A070893.P4428037271720883974

namespace A070893

/-- `A082289(n+4)-A002623(n)` -/
def P4428037271720883974.Spec : Prop :=
  ∀ n, P4428037271720883974.a n = A070893 (n + 1)

end A070893

/-! ## A070893.P18341442463935931066

`A216175(n+1)-A216172(n+1)`
-/

namespace A070893.P18341442463935931066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216175 (n + 1) - A216172 (n + 1)

end

end A070893.P18341442463935931066

namespace A070893

/-- `A216175(n+1)-A216172(n+1)` -/
def P18341442463935931066.Spec : Prop :=
  ∀ n, P18341442463935931066.a n = A070893 (n + 1)

end A070893

/-! ## A070893.P2673827224366133072

`A344791(n+2)-A000292(n+1)`
-/

namespace A070893.P2673827224366133072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344791 (n + 2) - A000292 (n + 1)

end

end A070893.P2673827224366133072

namespace A070893

/-- `A344791(n+2)-A000292(n+1)` -/
def P2673827224366133072.Spec : Prop :=
  ∀ n, P2673827224366133072.a n = A070893 (n + 1)

end A070893

/-! ## A070893.P15371450194415295017

`A000292(n+1)+A011863(n+1)+A000292(n)`
-/

namespace A070893.P15371450194415295017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A011863 (n + 1) + A000292 n)

end

end A070893.P15371450194415295017

namespace A070893

/-- `A000292(n+1)+A011863(n+1)+A000292(n)` -/
def P15371450194415295017.Spec : Prop :=
  ∀ n, P15371450194415295017.a n = A070893 (n + 1)

end A070893

/-! ## A070893.P4350599488788575751

`A006578(n+1)+A389363(n+1)-A001296(n)`
-/

namespace A070893.P4350599488788575751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006578 (n + 1) + (A389363 (n + 1) - A001296 n)

end

end A070893.P4350599488788575751

namespace A070893

/-- `A006578(n+1)+A389363(n+1)-A001296(n)` -/
def P4350599488788575751.Spec : Prop :=
  ∀ n, P4350599488788575751.a n = A070893 (n + 1)

end A070893

/-! ## A070893.P14128687028195327309

`∑[A002717(n+1)]`
-/

namespace A070893.P14128687028195327309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070893.P14128687028195327309

namespace A070893

/-- `∑[A002717(n+1)]` -/
def P14128687028195327309.Spec : Prop :=
  ∀ n, P14128687028195327309.a n = A070893 (n + 1)

end A070893

/-! ## A070893.P14073039891958150637

`A389363(n+2)/3`
-/

namespace A070893.P14073039891958150637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389363 (n + 2) : ℚ) / 3

end

end A070893.P14073039891958150637

namespace A070893

/-- `A389363(n+2)/3` -/
def P14073039891958150637.Spec : Prop :=
  ∀ n, P14073039891958150637.a n = (A070893 (n + 1) : ℚ)

end A070893

/-! ## A070893.P10026011641290291754

`A001296(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A070893.P10026011641290291754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001296 (n + 1) - a (n - 1)

end

end A070893.P10026011641290291754

namespace A070893

/-- `A001296(n+1)-a(n-1)` -/
def P10026011641290291754.Spec : Prop :=
  ∀ n, P10026011641290291754.a n = A070893 (n + 1)

end A070893

/-! ## A070893.P11811396965027590220

`A007009(n+1)+A007009(n+1)-A006918(n+1)`
-/

namespace A070893.P11811396965027590220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007009 (n + 1) + (A007009 (n + 1) - A006918 (n + 1))

end

end A070893.P11811396965027590220

namespace A070893

/-- `A007009(n+1)+A007009(n+1)-A006918(n+1)` -/
def P11811396965027590220.Spec : Prop :=
  ∀ n, P11811396965027590220.a n = A070893 (n + 1)

end A070893

/-!
# A070894: Number of nonempty subsets of the set of vertices of a regular n-gon in the plane such that their center of gravity is the center of the polygon.

The programs for A070894, there is no canonical definition to state claims against.
-/

/-! ## A070894.P13403557975718793911

`A103314(n+2)-1`
-/

namespace A070894.P13403557975718793911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103314 (n + 2) - 1

end

end A070894.P13403557975718793911

/-! ## A070894.P13949735310525196699

`∑[-Δ[-A103314(n+1)]]`
-/

namespace A070894.P13949735310525196699
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A103314 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A070894.P13949735310525196699

/-! ## A070894.P13267504605879592723

`A307445(p?[or(1, n)])+A103314(n+2)`
-/

namespace A070894.P13267504605879592723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + A103314 (n + 2)

end

end A070894.P13267504605879592723

/-! ## A070894.P14398354992317946210

`abs(A103314(n+2)+A057428(3*n+4))`
-/

namespace A070894.P14398354992317946210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103314 (n + 2) + A057428 (3 * n + 4)|

end

end A070894.P14398354992317946210

/-! ## A070894.P17921238863542034049

`xor(-A103314(n+2), A057428(3*(n+1)))`
-/

namespace A070894.P17921238863542034049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A103314 (n + 2)) (A057428 (3 * (n + 1)))

end

end A070894.P17921238863542034049

/-! ## A070894.P18211622654108196764

`A307445(p?[4*n+1])+A103314(n+2)`
-/

namespace A070894.P18211622654108196764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + A103314 (n + 2)

end

end A070894.P18211622654108196764

/-! ## A070894.P4235502029494821865

`A133639(p?[A118538(n+1)])+A103314(n+2)`
-/

namespace A070894.P4235502029494821865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133639 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A103314 (n + 2)

end

end A070894.P4235502029494821865

/-!
# A070895: Triangle read by rows where T(n+1,k)=T(n,k)+n*T(n-1,k) starting with T(n,n)=1 and T(n,k)=0 if n<k.

The programs for A070895, there is no canonical definition to state claims against.
-/

/-! ## A070895.P15634229620797538271

`A093641(A204849(n)%A260016(n+2))`
-/

namespace A070895.P15634229620797538271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (Int.tmod (A204849 n) (A260016 (n + 2))).toNat

end

end A070895.P15634229620797538271

/-! ## A070895.P7038834260109401790

`A035191(A132625(n))`
-/

namespace A070895.P7038834260109401790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035191 (A132625 n).toNat

end

end A070895.P7038834260109401790

/-! ## A070895.P16391121360695226391

`A085029(A113355(n))`
-/

namespace A070895.P16391121360695226391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085029 (A113355 n).toNat

end

end A070895.P16391121360695226391

/-! ## A070895.P11169200358481898415

`A225634(A101371(n))`
-/

namespace A070895.P11169200358481898415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225634 (A101371 n).toNat

end

end A070895.P11169200358481898415

/-! ## A070895.P1954322011534044974

`A225634(A172400(n))`
-/

namespace A070895.P1954322011534044974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225634 (A172400 n).toNat

end

end A070895.P1954322011534044974

/-!
# A070896: Determinant of the Cayley addition table of Z_{n}.

The programs for A070896, the canonical program `A070896.P10370792859193123725` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A070896 has offset 1).

The definition of A070896 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A070896.P10370792859193123725

`(-1)^floor((n+1)/2)*1/2*n*(n+1)^n`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A070896

/-- `(-1)^floor((n+1)/2)*1/2*n*(n+1)^n` -/
def P10370792859193123725.Spec : Prop :=
  ∀ n, P10370792859193123725.a n = (A070896 (n + 1) : ℚ)

end A070896

/-! ## A070896.P13720023187153191947

`A066274(n+1)/A280560(3*C(n+1, 2))`
-/

namespace A070896.P13720023187153191947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066274 (n + 1) : ℚ) / (A280560 (3 * Nat.choose (n + 1) 2) : ℚ)

end

end A070896.P13720023187153191947

namespace A070896

/-- `A066274(n+1)/A280560(3*C(n+1, 2))` -/
def P13720023187153191947.Spec : Prop :=
  ∀ n, P13720023187153191947.a n = (A070896 (n + 1) : ℚ)

end A070896

/-! ## A070896.P2731292371753779569

`A066274(n+1)/A280560(A000217(n))`
-/

namespace A070896.P2731292371753779569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066274 (n + 1) : ℚ) / (A280560 (A000217 n).toNat : ℚ)

end

end A070896.P2731292371753779569

namespace A070896

/-- `A066274(n+1)/A280560(A000217(n))` -/
def P2731292371753779569.Spec : Prop :=
  ∀ n, P2731292371753779569.a n = (A070896 (n + 1) : ℚ)

end A070896

/-! ## A070896.P6319400976406842274

`A066274(n+1)/A280560(A056000(n))`
-/

namespace A070896.P6319400976406842274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066274 (n + 1) : ℚ) / (A280560 (A056000 n).toNat : ℚ)

end

end A070896.P6319400976406842274

namespace A070896

/-- `A066274(n+1)/A280560(A056000(n))` -/
def P6319400976406842274.Spec : Prop :=
  ∀ n, P6319400976406842274.a n = (A070896 (n + 1) : ℚ)

end A070896

/-! ## A070896.P7927321540347787758

`A066274(n+1)/A280560(A065033(n))`
-/

namespace A070896.P7927321540347787758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066274 (n + 1) : ℚ) / (A280560 (A065033 n).toNat : ℚ)

end

end A070896.P7927321540347787758

namespace A070896

/-- `A066274(n+1)/A280560(A065033(n))` -/
def P7927321540347787758.Spec : Prop :=
  ∀ n, P7927321540347787758.a n = (A070896 (n + 1) : ℚ)

end A070896

/-! ## A070896.P10031351278355163368

`A066274(n+1)/A280560(A110654(n))`
-/

namespace A070896.P10031351278355163368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066274 (n + 1) : ℚ) / (A280560 (A110654 n).toNat : ℚ)

end

end A070896.P10031351278355163368

namespace A070896

/-- `A066274(n+1)/A280560(A110654(n))` -/
def P10031351278355163368.Spec : Prop :=
  ∀ n, P10031351278355163368.a n = (A070896 (n + 1) : ℚ)

end A070896

/-!
# A070897: Number of ways of pairing numbers 1 to n with numbers n+1 to 2n such that each pair sums to a prime.

The programs for A070897, there is no canonical definition to state claims against.
-/

/-! ## A070897.P8903942520483960250

`A071058(n+1)*A071059(n+1)`
-/

namespace A070897.P8903942520483960250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071058 (n + 1) * A071059 (n + 1)

end

end A070897.P8903942520483960250

/-! ## A070897.P827955640527185644

`A095397(A275071(n+1))`
-/

namespace A070897.P827955640527185644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095397 (A275071 (n + 1)).toNat

end

end A070897.P827955640527185644

/-! ## A070897.P13179269384429826988

`A271714(ceil(A275860(n)/10))`
-/

namespace A070897.P13179269384429826988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271714 ⌈(A275860 n : ℚ) / 10⌉.toNat

end

end A070897.P13179269384429826988

/-! ## A070897.P11215887120034990065

`A000005(A127295(floor(n-atan(n))))`
-/

namespace A070897.P11215887120034990065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A127295 ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat).toNat

end

end A070897.P11215887120034990065

/-! ## A070897.P2052544340740562337

`A054526(A228956(n+1)²+2)`
-/

namespace A070897.P2052544340740562337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054526 (A228956 (n + 1) ^ 2 + 2).toNat

end

end A070897.P2052544340740562337

