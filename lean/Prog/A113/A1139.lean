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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A113900: Number of partitions of 2n X 2n checkerboard into two congruent edgewise-connected sets, counting partitions equal under rotation or reflection only once.

The programs for A113900, there is no canonical definition to state claims against.
-/

/-! ## A113900.P2118667259067030726

`A003155(2*(n+1))`
-/

namespace A113900.P2118667259067030726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003155 (2 * (n + 1))

end

end A113900.P2118667259067030726

/-! ## A113900.P2069363056682710839

`∑{e}[A000079(n+1)², A003155(#)]`
-/

namespace A113900.P2069363056682710839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003155 (Nat.factorization (f1 n).natAbs p)

end

end A113900.P2069363056682710839

/-!
# A113901: Product of omega(n) and bigomega(n) = A001221(n)*A001222(n), where omega(x): number of distinct prime divisors of x. bigomega(x): number of prime divisors of x, counted with multiplicity.

The programs for A113901, the canonical program `A113901.P4362226141671724758` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113901 has offset 1).

The definition of A113901 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A001222, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113901.P4362226141671724758

`A001221(n+1)*A001222(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A113901

/-- `A001221(n+1)*A001222(n+1)` -/
def P4362226141671724758.Spec : Prop :=
  ∀ n, P4362226141671724758.a n = A113901 (n + 1)

theorem P4362226141671724758.correct : P4362226141671724758.Spec := by
  intro n
  simp only [A113901, Nat.add_sub_cancel]

end A113901

/-! ## A113901.P14983777427979129111

`A066921(n+1)*A066922(n+1)`
-/

namespace A113901.P14983777427979129111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066921 (n + 1) * A066922 (n + 1)

end

end A113901.P14983777427979129111

namespace A113901

/-- `A066921(n+1)*A066922(n+1)` -/
def P14983777427979129111.Spec : Prop :=
  ∀ n, P14983777427979129111.a n = A113901 (n + 1)

end A113901

/-! ## A113901.P10406289959391727037

`∑{e}[n+1, #]*A001222(∏{p}[n+1, #])`
-/

namespace A113901.P10406289959391727037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A001222 (∏ p ∈ Nat.primeFactors (f2 n), p)

end

end A113901.P10406289959391727037

namespace A113901

/-- `∑{e}[n+1, #]*A001222(∏{p}[n+1, #])` -/
def P10406289959391727037.Spec : Prop :=
  ∀ n, P10406289959391727037.a n = A113901 (n + 1)

end A113901

/-! ## A113901.P16389487395960940774

`∑{e}[n+1, #]*A004086(∑{p}[n+1, gcd(n, #)])`
-/

namespace A113901.P16389487395960940774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) * A004086 (∑ p ∈ Nat.primeFactors (f2 n), Nat.gcd n p)

end

end A113901.P16389487395960940774

namespace A113901

/-- `∑{e}[n+1, #]*A004086(∑{p}[n+1, gcd(n, #)])` -/
def P16389487395960940774.Spec : Prop :=
  ∀ n, P16389487395960940774.a n = A113901 (n + 1)

end A113901

/-! ## A113901.P9138193288564569706

`A326846(A046523(n+1))`
-/

namespace A113901.P9138193288564569706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326846 (A046523 (n + 1)).toNat

end

end A113901.P9138193288564569706

namespace A113901

/-- `A326846(A046523(n+1))` -/
def P9138193288564569706.Spec : Prop :=
  ∀ n, P9138193288564569706.a n = A113901 (n + 1)

end A113901

/-! ## A113901.P16000972989194938882

`A326846(A071364(n+1))`
-/

namespace A113901.P16000972989194938882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326846 (A071364 (n + 1)).toNat

end

end A113901.P16000972989194938882

namespace A113901

/-- `A326846(A071364(n+1))` -/
def P16000972989194938882.Spec : Prop :=
  ∀ n, P16000972989194938882.a n = A113901 (n + 1)

end A113901

/-! ## A113901.P7703595873250221864

`A326845(A238745(n+1))`
-/

namespace A113901.P7703595873250221864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326845 (A238745 (n + 1)).toNat

end

end A113901.P7703595873250221864

namespace A113901

/-- `A326845(A238745(n+1))` -/
def P7703595873250221864.Spec : Prop :=
  ∀ n, P7703595873250221864.a n = A113901 (n + 1)

end A113901

/-! ## A113901.P6662357643376769927

`A326846(A329607(n+1))`
-/

namespace A113901.P6662357643376769927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326846 (A329607 (n + 1)).toNat

end

end A113901.P6662357643376769927

namespace A113901

/-- `A326846(A329607(n+1))` -/
def P6662357643376769927.Spec : Prop :=
  ∀ n, P6662357643376769927.a n = A113901 (n + 1)

end A113901

/-! ## A113901.P16491613445704507978

`A307409(2*A071364(n+1))`
-/

namespace A113901.P16491613445704507978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307409 (2 * A071364 (n + 1)).toNat

end

end A113901.P16491613445704507978

namespace A113901

/-- `A307409(2*A071364(n+1))` -/
def P16491613445704507978.Spec : Prop :=
  ∀ n, P16491613445704507978.a n = A113901 (n + 1)

end A113901

/-! ## A113901.P9661640847181050737

`A001221(n+1)*Δ[A022559(n)]`
-/

namespace A113901.P9661640847181050737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * (f1 (n + 1) - f1 n)

end

end A113901.P9661640847181050737

namespace A113901

/-- `A001221(n+1)*Δ[A022559(n)]` -/
def P9661640847181050737.Spec : Prop :=
  ∀ n, P9661640847181050737.a n = A113901 (n + 1)

end A113901

/-! ## A113901.P12022982002584522691

`A307409(n+1)+A001221(n+1)`
-/

namespace A113901.P12022982002584522691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307409 (n + 1) + A001221 (n + 1)

end

end A113901.P12022982002584522691

namespace A113901

/-- `A307409(n+1)+A001221(n+1)` -/
def P12022982002584522691.Spec : Prop :=
  ∀ n, P12022982002584522691.a n = A113901 (n + 1)

theorem P12022982002584522691.correct : P12022982002584522691.Spec := by
  intro n
  simp only [A113901, Nat.add_sub_cancel, A113901.P12022982002584522691.a, A113901.P4362226141671724758.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A307409, A307409.P14464226460867145203.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113901

/-! ## A113901.P2928896799566317479

`A000005(n+1)-A328958(n+1)`
-/

namespace A113901.P2928896799566317479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A328958 (n + 1)

end

end A113901.P2928896799566317479

namespace A113901

/-- `A000005(n+1)-A328958(n+1)` -/
def P2928896799566317479.Spec : Prop :=
  ∀ n, P2928896799566317479.a n = A113901 (n + 1)

theorem P2928896799566317479.correct : P2928896799566317479.Spec := by
  intro n
  simp only [A113901, Nat.add_sub_cancel, A113901.P2928896799566317479.a, A113901.P4362226141671724758.a, A000005, A000005.P16091521709108585461.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A328958, A328958.P3249382024381690087.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A059841, A059841.P7264174615531153985.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113901

/-! ## A113901.P12625805466764254581

`A001221(n+1)*A086436(n+1)`
-/

namespace A113901.P12625805466764254581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1) * A086436 (n + 1)

end

end A113901.P12625805466764254581

namespace A113901

/-- `A001221(n+1)*A086436(n+1)` -/
def P12625805466764254581.Spec : Prop :=
  ∀ n, P12625805466764254581.a n = A113901 (n + 1)

end A113901

/-! ## A113901.P6260686638676855551

`∑{p}[n+1, A001222(A001222(#)+n)]`
-/

namespace A113901.P6260686638676855551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 (A001222 p + (n : ℤ)).toNat

end

end A113901.P6260686638676855551

namespace A113901

/-- `∑{p}[n+1, A001222(A001222(#)+n)]` -/
def P6260686638676855551.Spec : Prop :=
  ∀ n, P6260686638676855551.a n = A113901 (n + 1)

end A113901

/-! ## A113901.P6777072408489965914

`∑{e}[A007947(n+1), A001222(#+n)]`
-/

namespace A113901.P6777072408489965914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (Nat.factorization (f1 n).natAbs p + n)

end

end A113901.P6777072408489965914

namespace A113901

/-- `∑{e}[A007947(n+1), A001222(#+n)]` -/
def P6777072408489965914.Spec : Prop :=
  ∀ n, P6777072408489965914.a n = A113901 (n + 1)

end A113901

/-! ## A113901.P9033950783468943692

`(A252736(n+1)+1)*A001221(n+1)`
-/

namespace A113901.P9033950783468943692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A252736 (n + 1) + 1) * A001221 (n + 1)

end

end A113901.P9033950783468943692

namespace A113901

/-- `(A252736(n+1)+1)*A001221(n+1)` -/
def P9033950783468943692.Spec : Prop :=
  ∀ n, P9033950783468943692.a n = A113901 (n + 1)

end A113901

/-! ## A113901.P4509000398846819599

`(A297155(n+1)+1)*A001222(n+1)`
-/

namespace A113901.P4509000398846819599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A297155 (n + 1) + 1) * A001222 (n + 1)

end

end A113901.P4509000398846819599

namespace A113901

/-- `(A297155(n+1)+1)*A001222(n+1)` -/
def P4509000398846819599.Spec : Prop :=
  ∀ n, P4509000398846819599.a n = A113901 (n + 1)

end A113901

/-! ## A113901.P10807006862020031425

`(A073093(n+1)-1)*A001221(n+1)`
-/

namespace A113901.P10807006862020031425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073093 (n + 1) - 1) * A001221 (n + 1)

end

end A113901.P10807006862020031425

namespace A113901

/-- `(A073093(n+1)-1)*A001221(n+1)` -/
def P10807006862020031425.Spec : Prop :=
  ∀ n, P10807006862020031425.a n = A113901 (n + 1)

theorem P10807006862020031425.correct : P10807006862020031425.Spec := by
  intro n
  simp only [A113901, Nat.add_sub_cancel, A113901.P10807006862020031425.a, A113901.P4362226141671724758.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, A073093, A073093.P258081957281391684.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P7264174615531153985.a, A061395, A061395.P8431317036300486107.a, A122111, A122111.P18124015185857335041.a, A029837, A029837.P1050578713049589.a, A064989, A064989.P13349672914146769936.a, A087207, A087207.P12536008426233777954.a, A105560, A105560.P7897608420550643844.f1, A105560.P7897608420550643844.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008578, A008578.P3639467937083264764.a, A048675, A048675.P15792214674053257917.f1, A048675.P15792214674053257917.a, A052126, A052126.P1944428405920482243.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113901

/-! ## A113901.P1427707109674947014

`A001222(n+1)*A001222(∏{p}[n+1, #])`
-/

namespace A113901.P1427707109674947014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A113901.P1427707109674947014

namespace A113901

/-- `A001222(n+1)*A001222(∏{p}[n+1, #])` -/
def P1427707109674947014.Spec : Prop :=
  ∀ n, P1427707109674947014.a n = A113901 (n + 1)

end A113901

/-! ## A113901.P8657238497354735757

`∑{d}[n+1, A001221(#)*A010055((n+1)/#)]`
-/

namespace A113901.P8657238497354735757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d * A010055 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A113901.P8657238497354735757

namespace A113901

/-- `∑{d}[n+1, A001221(#)*A010055((n+1)/#)]` -/
def P8657238497354735757.Spec : Prop :=
  ∀ n, P8657238497354735757.a n = A113901 (n + 1)

end A113901

/-!
# A113902: Product of omega(n!) and bigomega(n!).

The programs for A113902, the canonical program `A113902.P5440009348610242017` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113902 has offset 1).

The definition of A113902 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A022559, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113902.P5440009348610242017

`A000720(n+1)*A022559(n+1)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A113902

/-- `A000720(n+1)*A022559(n+1)` -/
def P5440009348610242017.Spec : Prop :=
  ∀ n, P5440009348610242017.a n = A113902 (n + 1)

theorem P5440009348610242017.correct : P5440009348610242017.Spec := by
  intro n
  simp only [A113902, Nat.add_sub_cancel]

end A113902

/-! ## A113902.P15998337962896715886

`∑[C(C(2, ∑{e}[n+1, #]), 2)]*∑[∑{e}[n+1, #]]`
-/

namespace A113902.P15998337962896715886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A113902.P15998337962896715886

namespace A113902

/-- `∑[C(C(2, ∑{e}[n+1, #]), 2)]*∑[∑{e}[n+1, #]]` -/
def P15998337962896715886.Spec : Prop :=
  ∀ n, (P15998337962896715886.a n : ℤ) = A113902 (n + 1)

end A113902

/-! ## A113902.P1352495287839320884

`∑[∑{p}[n+1, val(#, n+1)]]*∑[∑{e}[n+1, #]]`
-/

namespace A113902.P1352495287839320884
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A113902.P1352495287839320884

namespace A113902

/-- `∑[∑{p}[n+1, val(#, n+1)]]*∑[∑{e}[n+1, #]]` -/
def P1352495287839320884.Spec : Prop :=
  ∀ n, (P1352495287839320884.a n : ℤ) = A113902 (n + 1)

end A113902

/-! ## A113902.P16592835843371806587

`(n-A065855(n+1))*∑[∑{e}[n+1, #]]`
-/

namespace A113902.P16592835843371806587
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A065855 (n + 1)) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A113902.P16592835843371806587

namespace A113902

/-- `(n-A065855(n+1))*∑[∑{e}[n+1, #]]` -/
def P16592835843371806587.Spec : Prop :=
  ∀ n, P16592835843371806587.a n = A113902 (n + 1)

end A113902

/-! ## A113902.P3146472819855807496

`∑[∑{e}[n+1, #]]*∑[char[record[A000010(n+1)]]]`
-/

namespace A113902.P3146472819855807496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f5 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f5 (SequenceMachineLib.nth (fun j => ∀ l < j, f5 l < f5 j) n)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A113902.P3146472819855807496

namespace A113902

/-- `∑[∑{e}[n+1, #]]*∑[char[record[A000010(n+1)]]]` -/
def P3146472819855807496.Spec : Prop :=
  ∀ n, (P3146472819855807496.a n : ℤ) = A113902 (n + 1)

end A113902

/-! ## A113902.P16618756235244086991

`∑[1-char[A018252(n+1)-1]]*∑[∑{e}[n+1, #]]`
-/

namespace A113902.P16618756235244086991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A113902.P16618756235244086991

namespace A113902

/-- `∑[1-char[A018252(n+1)-1]]*∑[∑{e}[n+1, #]]` -/
def P16618756235244086991.Spec : Prop :=
  ∀ n, P16618756235244086991.a n = A113902 (n + 1)

end A113902

/-! ## A113902.P17892437632595577790

`∑[∑{e}[n+1, #]]*∑[floor(n/(A000203(n+1)-2))]`
-/

namespace A113902.P17892437632595577790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (A000203 (n + 1) - 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

end

end A113902.P17892437632595577790

namespace A113902

/-- `∑[∑{e}[n+1, #]]*∑[floor(n/(A000203(n+1)-2))]` -/
def P17892437632595577790.Spec : Prop :=
  ∀ n, P17892437632595577790.a n = A113902 (n + 1)

end A113902

/-! ## A113902.P2830848615883507457

`∑[A001222(n+1)]*A000720(n+1)`
-/

namespace A113902.P2830848615883507457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000720 (n + 1)

end

end A113902.P2830848615883507457

namespace A113902

/-- `∑[A001222(n+1)]*A000720(n+1)` -/
def P2830848615883507457.Spec : Prop :=
  ∀ n, P2830848615883507457.a n = A113902 (n + 1)

end A113902

/-! ## A113902.P14697419862404800509

`∑[A001222(n+1)]*∑[A010051(n+1)]`
-/

namespace A113902.P14697419862404800509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A113902.P14697419862404800509

namespace A113902

/-- `∑[A001222(n+1)]*∑[A010051(n+1)]` -/
def P14697419862404800509.Spec : Prop :=
  ∀ n, P14697419862404800509.a n = A113902 (n + 1)

end A113902

/-! ## A113902.P13418691855192123585

`(A022559(n+1)-A055636(n+1))*A022559(n+1)`
-/

namespace A113902.P13418691855192123585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A022559 (n + 1) - A055636 (n + 1)) * A022559 (n + 1)

end

end A113902.P13418691855192123585

namespace A113902

/-- `(A022559(n+1)-A055636(n+1))*A022559(n+1)` -/
def P13418691855192123585.Spec : Prop :=
  ∀ n, P13418691855192123585.a n = A113902 (n + 1)

end A113902

/-! ## A113902.P141477936724236526

`(A113903(n+1)-A000720(n+1))*A000720(n+1)`
-/

namespace A113902.P141477936724236526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A113903 (n + 1) - A000720 (n + 1)) * A000720 (n + 1)

end

end A113902.P141477936724236526

namespace A113902

/-- `(A113903(n+1)-A000720(n+1))*A000720(n+1)` -/
def P141477936724236526.Spec : Prop :=
  ∀ n, P141477936724236526.a n = A113902 (n + 1)

end A113902

/-! ## A113902.P16024359747585336998

`(A113903(n+1)-A022559(n+1))*A022559(n+1)`
-/

namespace A113902.P16024359747585336998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A113903 (n + 1) - A022559 (n + 1)) * A022559 (n + 1)

end

end A113902.P16024359747585336998

namespace A113902

/-- `(A113903(n+1)-A022559(n+1))*A022559(n+1)` -/
def P16024359747585336998.Spec : Prop :=
  ∀ n, P16024359747585336998.a n = A113902 (n + 1)

end A113902

/-! ## A113902.P241348818154993329

`A022559(n+1)*A230980(n+1)`
-/

namespace A113902.P241348818154993329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 1) * A230980 (n + 1)

end

end A113902.P241348818154993329

namespace A113902

/-- `A022559(n+1)*A230980(n+1)` -/
def P241348818154993329.Spec : Prop :=
  ∀ n, P241348818154993329.a n = A113902 (n + 1)

end A113902

/-! ## A113902.P13407488284959245217

`A022559(n+1)*A055396(A030664(n+1))`
-/

namespace A113902.P13407488284959245217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 (n + 1) * A055396 (A030664 (n + 1)).toNat

end

end A113902.P13407488284959245217

namespace A113902

/-- `A022559(n+1)*A055396(A030664(n+1))` -/
def P13407488284959245217.Spec : Prop :=
  ∀ n, P13407488284959245217.a n = A113902 (n + 1)

end A113902

/-!
# A113903: Sum of omega(n!) and bigomega(n!).

The programs for A113903, the canonical program `A113903.P6454317970146200745` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113903 has offset 0).

The definition of A113903 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113903.P6454317970146200745

`∑[A254667(∑{e}[n, #])]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A113903

/-- `∑[A254667(∑{e}[n, #])]` -/
def P6454317970146200745.Spec : Prop :=
  ∀ n, P6454317970146200745.a n = A113903 n

theorem P6454317970146200745.correct : P6454317970146200745.Spec := by
  intro n
  simp only [A113903]

end A113903

/-! ## A113903.P4068354399472228792

`∑[∑{e}[n, A010051(n)+#]]`
-/

namespace A113903.P4068354399472228792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), (A010051 n + (Nat.factorization (f2 n) p : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113903.P4068354399472228792

namespace A113903

/-- `∑[∑{e}[n, A010051(n)+#]]` -/
def P4068354399472228792.Spec : Prop :=
  ∀ n, P4068354399472228792.a n = A113903 n

end A113903

/-! ## A113903.P15344221306999577515

`∑[∑{e}[n, #]]-(n-A095117(n))`
-/

namespace A113903.P15344221306999577515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - A095117 n)

end

end A113903.P15344221306999577515

namespace A113903

/-- `∑[∑{e}[n, #]]-(n-A095117(n))` -/
def P15344221306999577515.Spec : Prop :=
  ∀ n, P15344221306999577515.a n = A113903 n

end A113903

/-! ## A113903.P10289792460936429246

`∑[∑{e}[n, val(A020639(n), n)+#]]`
-/

namespace A113903.P10289792460936429246
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), (SequenceMachineLib.valuation (A020639 n).toNat n + Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113903.P10289792460936429246

namespace A113903

/-- `∑[∑{e}[n, val(A020639(n), n)+#]]` -/
def P10289792460936429246.Spec : Prop :=
  ∀ n, (P10289792460936429246.a n : ℤ) = A113903 n

end A113903

/-! ## A113903.P17585631707667737870

`∑[∑{e}[n, #]+char[A000040(n+1)]]`
-/

namespace A113903.P17585631707667737870
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113903.P17585631707667737870

namespace A113903

/-- `∑[∑{e}[n, #]+char[A000040(n+1)]]` -/
def P17585631707667737870.Spec : Prop :=
  ∀ n, (P17585631707667737870.a n : ℤ) = A113903 n

end A113903

/-! ## A113903.P5614025223537762031

`∑[∑{e}[n, #]+char[A006530(n+2)]]`
-/

namespace A113903.P5614025223537762031
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113903.P5614025223537762031

namespace A113903

/-- `∑[∑{e}[n, #]+char[A006530(n+2)]]` -/
def P5614025223537762031.Spec : Prop :=
  ∀ n, (P5614025223537762031.a n : ℤ) = A113903 n

end A113903

/-! ## A113903.P12382924127084614531

`∑[∑{e}[n, #]+char[A020639(n+2)]]`
-/

namespace A113903.P12382924127084614531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + (if ∃ j, f3 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113903.P12382924127084614531

namespace A113903

/-- `∑[∑{e}[n, #]+char[A020639(n+2)]]` -/
def P12382924127084614531.Spec : Prop :=
  ∀ n, (P12382924127084614531.a n : ℤ) = A113903 n

end A113903

/-! ## A113903.P6791689848956572089

`A230980(n)+A022559(n)`
-/

namespace A113903.P6791689848956572089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n + A022559 n

end

end A113903.P6791689848956572089

namespace A113903

/-- `A230980(n)+A022559(n)` -/
def P6791689848956572089.Spec : Prop :=
  ∀ n, P6791689848956572089.a n = A113903 n

end A113903

/-! ## A113903.P8348210487391647231

`A022559(n)+∑[char[A000040(n+1)]]`
-/

namespace A113903.P8348210487391647231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A113903.P8348210487391647231

namespace A113903

/-- `A022559(n)+∑[char[A000040(n+1)]]` -/
def P8348210487391647231.Spec : Prop :=
  ∀ n, P8348210487391647231.a n = A113903 n

end A113903

/-! ## A113903.P6893585899281670950

`A022559(n)+A000720(A028310(n))`
-/

namespace A113903.P6893585899281670950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n + A000720 (A028310 n).toNat

end

end A113903.P6893585899281670950

namespace A113903

/-- `A022559(n)+A000720(A028310(n))` -/
def P6893585899281670950.Spec : Prop :=
  ∀ n, P6893585899281670950.a n = A113903 n

end A113903

/-! ## A113903.P11576523059161071538

`A000720(n+1)+A022559(n+1)-A378309(n+1)`
-/

namespace A113903.P11576523059161071538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A022559 (n + 1) - A378309 (n + 1))

end

end A113903.P11576523059161071538

namespace A113903

/-- `A000720(n+1)+A022559(n+1)-A378309(n+1)` -/
def P11576523059161071538.Spec : Prop :=
  ∀ n, P11576523059161071538.a n = A113903 n

end A113903

/-! ## A113903.P16396581046734747983

`∑[∑{e}[n^C(2, ∑{e}[n, #])!, #]]`
-/

namespace A113903.P16396581046734747983
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113903.P16396581046734747983

namespace A113903

/-- `∑[∑{e}[n^C(2, ∑{e}[n, #])!, #]]` -/
def P16396581046734747983.Spec : Prop :=
  ∀ n, (P16396581046734747983.a n : ℤ) = A113903 n

end A113903

/-! ## A113903.P11192579131644982243

`∑[∑{e}[A103164(n), #]]`
-/

namespace A113903.P11192579131644982243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103164 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113903.P11192579131644982243

namespace A113903

/-- `∑[∑{e}[A103164(n), #]]` -/
def P11192579131644982243.Spec : Prop :=
  ∀ n, (P11192579131644982243.a n : ℤ) = A113903 n

end A113903

/-! ## A113903.P13656408016812637540

`A055396(A030664(n))+A022559(n)`
-/

namespace A113903.P13656408016812637540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A030664 n).toNat + A022559 n

end

end A113903.P13656408016812637540

namespace A113903

/-- `A055396(A030664(n))+A022559(n)` -/
def P13656408016812637540.Spec : Prop :=
  ∀ n, P13656408016812637540.a n = A113903 n

end A113903

/-!
# A113904: Starting with 1, each number is the previous number plus the product of the index number and the sum of the digits of the previous number.

The programs for A113904, there is no canonical definition to state claims against.
-/

/-! ## A113904.P9173161085769570906

`a(n-1)+n*A007953(a(n-1))` with `a(0)=1`
-/

namespace A113904.P9173161085769570906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n : ℤ) * A007953 (a (n - 1)).toNat

end

end A113904.P9173161085769570906

/-! ## A113904.P1444683164148275948

`a(n-1)+n*A344487(a(n-1))` with `a(0)=1`
-/

namespace A113904.P1444683164148275948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n : ℤ) * A344487 (a (n - 1)).toNat

end

end A113904.P1444683164148275948

/-! ## A113904.P16640178824702763716

`A104114(n)/A290106(A104114(n))`
-/

namespace A113904.P16640178824702763716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104114 n : ℚ) / (A290106 (A104114 n).toNat : ℚ)

end

end A113904.P16640178824702763716

/-!
# A113905: omega(n!) raised to the power of bigomega(n!).

The programs for A113905, there is no canonical definition to state claims against.
-/

/-! ## A113905.P14971768988875100518

`A230980(n)^A022559(n)`
-/

namespace A113905.P14971768988875100518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A230980 n : ℚ) ^ (A022559 n : ℤ)

end

end A113905.P14971768988875100518

/-! ## A113905.P10009784504070011022

`A000720(round(acot(n)+n))^A022559(n)`
-/

namespace A113905.P10009784504070011022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℚ) ^ (A022559 n : ℤ)

end

end A113905.P10009784504070011022

/-! ## A113905.P16431378186423665045

`A000720(A028310(n))^A022559(n)`
-/

namespace A113905.P16431378186423665045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000720 (A028310 n).toNat : ℚ) ^ (A022559 n : ℤ)

end

end A113905.P16431378186423665045

/-! ## A113905.P7494287761154930725

`A055396(A030664(n))^A022559(n)`
-/

namespace A113905.P7494287761154930725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055396 (A030664 n).toNat : ℚ) ^ (A022559 n : ℤ)

end

end A113905.P7494287761154930725

/-! ## A113905.P10687746468291533461

`A001222(A325508(n))^A022559(n)`
-/

namespace A113905.P10687746468291533461
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A325508 n).toNat : ℚ) ^ (A022559 n : ℤ)

end

end A113905.P10687746468291533461

/-!
# A113907: Dimensions of the five sporadic Lie groups.

The programs for A113907, there is no canonical definition to state claims against.
-/

/-! ## A113907.P8690451301507809327

`A117133(n+2)`
-/

namespace A113907.P8690451301507809327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117133 (n + 2)

end

end A113907.P8690451301507809327

/-!
# A113908: Number of prime factors, with multiplicity, of Bell number A000110(n).

The programs for A113908, there is no canonical definition to state claims against.
-/

/-! ## A113908.P14134503288536733131

`A048675(A278973(n))+char[A053743(n)+2]`
-/

namespace A113908.P14134503288536733131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053743 n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A278973 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A113908.P14134503288536733131

/-! ## A113908.P12538169133368250043

`A048675(A278973(n)%A136851(n+1))`
-/

namespace A113908.P12538169133368250043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (Int.tmod (A278973 n) (A136851 (n + 1))).toNat

end

end A113908.P12538169133368250043

/-! ## A113908.P12798142083288331562

`A048675(A278973(n))%A279902(3*n+5)`
-/

namespace A113908.P12798142083288331562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048675 (A278973 n).toNat) (A279902 (3 * n + 5))

end

end A113908.P12798142083288331562

/-! ## A113908.P2151327863539070924

`A048675(A278973(n))+A000038(A002623(n))`
-/

namespace A113908.P2151327863539070924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A278973 n).toNat + A000038 (A002623 n).toNat

end

end A113908.P2151327863539070924

/-! ## A113908.P15844718085598431958

`A048675(A278973(n))+A000038(A267264(n+1))`
-/

namespace A113908.P15844718085598431958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A278973 n).toNat + A000038 (A267264 (n + 1)).toNat

end

end A113908.P15844718085598431958

/-!
# A113909: Odd numbers which are neither squares nor one less than squares.

The programs for A113909, the canonical program `A113909.P14284686263127261651` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113909 has offset 1).

The definition of A113909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113909.P2647198565634929207

`2*comp[ceil(n²/2)]-1`
-/

namespace A113909.P2647198565634929207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 2⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A113909.P2647198565634929207

namespace A113909

/-- `2*comp[ceil(n²/2)]-1` -/
def P2647198565634929207.Spec : Prop :=
  ∀ n, P2647198565634929207.a n = A113909 (n + 1)

end A113909

/-! ## A113909.P14284686263127261651

`lt[floor(sqrt(lcm(2, n+1)))², n]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113909

/-- `lt[floor(sqrt(lcm(2, n+1)))², n]` -/
def P14284686263127261651.Spec : Prop :=
  ∀ n, (P14284686263127261651.a n : ℤ) = A113909 (n + 1)

theorem P14284686263127261651.correct : P14284686263127261651.Spec := by
  intro n
  simp only [A113909, Nat.add_sub_cancel]

end A113909

/-! ## A113909.P15777176362490206099

`or(1, 2*comp[∑[or(1, n-1)]])`
-/

namespace A113909.P15777176362490206099
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A113909.P15777176362490206099

namespace A113909

/-- `or(1, 2*comp[∑[or(1, n-1)]])` -/
def P15777176362490206099.Spec : Prop :=
  ∀ n, (P15777176362490206099.a n : ℤ) = A113909 (n + 1)

end A113909

/-! ## A113909.P5082464634675086213

`lt[n, lcm(n^(n%2), floor(sqrt(n)))]`
-/

namespace A113909.P5082464634675086213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n ^ (n % 2)) (Nat.sqrt n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A113909.P5082464634675086213

namespace A113909

/-- `lt[n, lcm(n^(n%2), floor(sqrt(n)))]` -/
def P5082464634675086213.Spec : Prop :=
  ∀ n, (P5082464634675086213.a n : ℤ) = A113909 (n + 1)

end A113909

/-! ## A113909.P11998518281136307757

`lt[gcd(64, n), atan(ceil(sqrt(n))²-n)]`
-/

namespace A113909.P11998518281136307757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 64 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A113909.P11998518281136307757

namespace A113909

/-- `lt[gcd(64, n), atan(ceil(sqrt(n))²-n)]` -/
def P11998518281136307757.Spec : Prop :=
  ∀ n, (P11998518281136307757.a n : ℤ) = A113909 (n + 1)

end A113909

/-! ## A113909.P11125843201412874380

`lt[ceil(C(or(1, n), n)/2), ceil(sqrt(n))²-n]`
-/

namespace A113909.P11125843201412874380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (Nat.lor 1 n) n : ℚ) / 2⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉ ^ 2 - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A113909.P11125843201412874380

namespace A113909

/-- `lt[ceil(C(or(1, n), n)/2), ceil(sqrt(n))²-n]` -/
def P11125843201412874380.Spec : Prop :=
  ∀ n, (P11125843201412874380.a n : ℤ) = A113909 (n + 1)

end A113909

/-! ## A113909.P16548308133486612160

`or(1, A079896(n+1)-1)`
-/

namespace A113909.P16548308133486612160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A079896 (n + 1) - 1)

end

end A113909.P16548308133486612160

namespace A113909

/-- `or(1, A079896(n+1)-1)` -/
def P16548308133486612160.Spec : Prop :=
  ∀ n, P16548308133486612160.a n = A113909 (n + 1)

end A113909

/-! ## A113909.P6597332188998110572

`or(1, 2*A183572(n+1))`
-/

namespace A113909.P6597332188998110572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (2 * A183572 (n + 1))

end

end A113909.P6597332188998110572

namespace A113909

/-- `or(1, 2*A183572(n+1))` -/
def P6597332188998110572.Spec : Prop :=
  ∀ n, P6597332188998110572.a n = A113909 (n + 1)

end A113909

/-! ## A113909.P1171451405627474457

`A088828(A183218(n+1))`
-/

namespace A113909.P1171451405627474457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088828 (A183218 (n + 1)).toNat

end

end A113909.P1171451405627474457

namespace A113909

/-- `A088828(A183218(n+1))` -/
def P1171451405627474457.Spec : Prop :=
  ∀ n, P1171451405627474457.a n = A113909 (n + 1)

end A113909

/-! ## A113909.P7959453829750856673

`A130773(A183572(n+1))`
-/

namespace A113909.P7959453829750856673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A183572 (n + 1)).toNat

end

end A113909.P7959453829750856673

namespace A113909

/-- `A130773(A183572(n+1))` -/
def P7959453829750856673.Spec : Prop :=
  ∀ n, P7959453829750856673.a n = A113909 (n + 1)

end A113909

/-! ## A113909.P10834246833664151886

`∩[2*n+1, A161827(n+1)]`
-/

namespace A113909.P10834246833664151886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113909.P10834246833664151886

namespace A113909

/-- `∩[2*n+1, A161827(n+1)]` -/
def P10834246833664151886.Spec : Prop :=
  ∀ n, (P10834246833664151886.a n : ℤ) = A113909 (n + 1)

end A113909

/-! ## A113909.P3231173240548069652

`A161827(A001614(n+1))`
-/

namespace A113909.P3231173240548069652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (A001614 (n + 1)).toNat

end

end A113909.P3231173240548069652

namespace A113909

/-- `A161827(A001614(n+1))` -/
def P3231173240548069652.Spec : Prop :=
  ∀ n, P3231173240548069652.a n = A113909 (n + 1)

end A113909

/-! ## A113909.P10152898997180566206

`filter[A161827(n+1), A323158(#)]`
-/

namespace A113909.P10152898997180566206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323158 (f1 j).toNat = 1) n)

end

end A113909.P10152898997180566206

namespace A113909

/-- `filter[A161827(n+1), A323158(#)]` -/
def P10152898997180566206.Spec : Prop :=
  ∀ n, P10152898997180566206.a n = A113909 (n + 1)

end A113909

/-! ## A113909.P12956648585088766710

`filter[A161827(n+1), A324908(#)]`
-/

namespace A113909.P12956648585088766710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A113909.P12956648585088766710

namespace A113909

/-- `filter[A161827(n+1), A324908(#)]` -/
def P12956648585088766710.Spec : Prop :=
  ∀ n, P12956648585088766710.a n = A113909 (n + 1)

end A113909

/-! ## A113909.P4675427401003795215

`filter[A161827(n+1), A379952(#)]`
-/

namespace A113909.P4675427401003795215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A113909.P4675427401003795215

namespace A113909

/-- `filter[A161827(n+1), A379952(#)]` -/
def P4675427401003795215.Spec : Prop :=
  ∀ n, P4675427401003795215.a n = A113909 (n + 1)

end A113909

/-! ## A113909.P15856414080837424190

`∩[A161827(n+1), A004273(n)]`
-/

namespace A113909.P15856414080837424190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113909.P15856414080837424190

namespace A113909

/-- `∩[A161827(n+1), A004273(n)]` -/
def P15856414080837424190.Spec : Prop :=
  ∀ n, (P15856414080837424190.a n : ℤ) = A113909 (n + 1)

end A113909

/-! ## A113909.P14074871870708937084

`∩[A161827(n+1), A004274(n)]`
-/

namespace A113909.P14074871870708937084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113909.P14074871870708937084

namespace A113909

/-- `∩[A161827(n+1), A004274(n)]` -/
def P14074871870708937084.Spec : Prop :=
  ∀ n, (P14074871870708937084.a n : ℤ) = A113909 (n + 1)

end A113909

/-! ## A113909.P2332160958764443936

`∩[A161827(n+1), A004276(n)]`
-/

namespace A113909.P2332160958764443936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113909.P2332160958764443936

namespace A113909

/-- `∩[A161827(n+1), A004276(n)]` -/
def P2332160958764443936.Spec : Prop :=
  ∀ n, (P2332160958764443936.a n : ℤ) = A113909 (n + 1)

end A113909

/-! ## A113909.P14778756466113587521

`∩[A161827(n+1), A004281(n)]`
-/

namespace A113909.P14778756466113587521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113909.P14778756466113587521

namespace A113909

/-- `∩[A161827(n+1), A004281(n)]` -/
def P14778756466113587521.Spec : Prop :=
  ∀ n, (P14778756466113587521.a n : ℤ) = A113909 (n + 1)

end A113909

/-! ## A113909.P15685029076075230784

`∩[A161827(n+1), A060747(n)]`
-/

namespace A113909.P15685029076075230784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161827 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113909.P15685029076075230784

namespace A113909

/-- `∩[A161827(n+1), A060747(n)]` -/
def P15685029076075230784.Spec : Prop :=
  ∀ n, (P15685029076075230784.a n : ℤ) = A113909 (n + 1)

end A113909

/-!
# A113910: Integers of the form (Lucas(i+1) - 2*A006206(i+2))/(A006206(i+2) - A006206(i)), i > 2; Lucas = A000204.

The programs for A113910, there is no canonical definition to state claims against.
-/

/-! ## A113910.P946313497071943234

`or(1, A133259(A238528(n+1)))`
-/

namespace A113910.P946313497071943234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A133259 (A238528 (n + 1)).toNat)

end

end A113910.P946313497071943234

/-! ## A113910.P4113993236640399551

`A133259(A238528(n+1))+A057427(n)`
-/

namespace A113910.P4113993236640399551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 (A238528 (n + 1)).toNat + A057427 n

end

end A113910.P4113993236640399551

/-! ## A113910.P4575552688326414509

`A133259(A238528(n+1))+A035263(A000040(n+1))`
-/

namespace A113910.P4575552688326414509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 (A238528 (n + 1)).toNat + A035263 (A000040 (n + 1)).toNat

end

end A113910.P4575552688326414509

/-! ## A113910.P18013617741638919628

`A133259(A238528(n+1))+A035263(A069675(n+1))`
-/

namespace A113910.P18013617741638919628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 (A238528 (n + 1)).toNat + A035263 (A069675 (n + 1)).toNat

end

end A113910.P18013617741638919628

/-! ## A113910.P6273785174744402464

`A133259(A238528(n+1))+A035263(A089682(n+1))`
-/

namespace A113910.P6273785174744402464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133259 (A238528 (n + 1)).toNat + A035263 (A089682 (n + 1)).toNat

end

end A113910.P6273785174744402464

/-!
# A113911: Prime numbers not appearing in the nextprime(x^2) sequence A007491.

The programs for A113911, there is no canonical definition to state claims against.
-/

/-! ## A113911.P5199397079029814498

`p?[comp[A007918(n²)]]`
-/

namespace A113911.P5199397079029814498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (n ^ 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A113911.P5199397079029814498

/-! ## A113911.P2933021392887279233

`p?[comp[A151800(n²)]]`
-/

namespace A113911.P2933021392887279233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (n ^ 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A113911.P2933021392887279233

/-! ## A113911.P11142347378061316582

`p?[comp[A007491(n+1)]]`
-/

namespace A113911.P11142347378061316582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A113911.P11142347378061316582

/-! ## A113911.P14913226259034960837

`A065091(comp[A038107(n)])`
-/

namespace A113911.P14913226259034960837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A113911.P14913226259034960837

/-! ## A113911.P17792757096533523798

`A003961(A224363(n+1))`
-/

namespace A113911.P17792757096533523798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A224363 (n + 1)).toNat

end

end A113911.P17792757096533523798

/-! ## A113911.P2887035878930783175

`A065091(A221056(n+1))`
-/

namespace A113911.P2887035878930783175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A221056 (n + 1)).toNat

end

end A113911.P2887035878930783175

/-! ## A113911.P6198078850132618318

`A000040(comp[A038107(n)]+1)`
-/

namespace A113911.P6198078850132618318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A113911.P6198078850132618318

/-! ## A113911.P17699936519211325223

`A000040(A221056(n+1)+1)`
-/

namespace A113911.P17699936519211325223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A221056 (n + 1) + 1).toNat

end

end A113911.P17699936519211325223

/-! ## A113911.P18091489179158814422

`A008578(A221056(n+1)+2)`
-/

namespace A113911.P18091489179158814422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A221056 (n + 1) + 2).toNat

end

end A113911.P18091489179158814422

/-! ## A113911.P15645294272947430746

`A000040(comp[A230980(n²)]+1)`
-/

namespace A113911.P15645294272947430746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (n ^ 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A113911.P15645294272947430746

/-!
# A113912: Prime numbers in A092614.

The programs for A113912, there is no canonical definition to state claims against.
-/

/-! ## A113912.P10403696763958555216

`p?[A092614(comp[6*n])]`
-/

namespace A113912.P10403696763958555216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092614 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113912.P10403696763958555216

/-! ## A113912.P3229995973473822309

`p?[A010122(n)*A092614(n+1)]`
-/

namespace A113912.P3229995973473822309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010122 n * A092614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113912.P3229995973473822309

/-! ## A113912.P7103450688012329675

`p?[A011558(n)*A092614(n+1)]`
-/

namespace A113912.P7103450688012329675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011558 n * A092614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113912.P7103450688012329675

/-! ## A113912.P12139262028628042204

`p?[A092614(n+1)*A336834(n)]`
-/

namespace A113912.P12139262028628042204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092614 (n + 1) * A336834 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113912.P12139262028628042204

/-! ## A113912.P3629261747137668353

`p?[gcd(A016346(n), A092614(n+1))]`
-/

namespace A113912.P3629261747137668353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016346 n) (A092614 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A113912.P3629261747137668353

/-!
# A113914: (1,2,3) Jasinski-like positive power sequence.

The programs for A113914, there is no canonical definition to state claims against.
-/

/-! ## A113914.P3520118535089702600

`A294674(A077855(n))`
-/

namespace A113914.P3520118535089702600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294674 (A077855 n).toNat

end

end A113914.P3520118535089702600

/-! ## A113914.P1463229986375255503

`A294674(A019302(n+1))`
-/

namespace A113914.P1463229986375255503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294674 (A019302 (n + 1)).toNat

end

end A113914.P1463229986375255503

/-! ## A113914.P149182051762315094

`A294674(A054887(n+1))`
-/

namespace A113914.P149182051762315094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294674 (A054887 (n + 1)).toNat

end

end A113914.P149182051762315094

/-!
# A113915: Numbers of the form a^2 + b^3 equal to 1-almost-prime(m) + 2-almost-prime(m) + 2-almost-prime(n) + k-almost-prime(n).

The programs for A113915, there is no canonical definition to state claims against.
-/

/-! ## A113915.P8760825520099503763

`A112662(n+1)+A111440(A082743(n))`
-/

namespace A113915.P8760825520099503763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112662 (n + 1) + A111440 (A082743 n).toNat

end

end A113915.P8760825520099503763

/-! ## A113915.P16870709775137575701

`A112662(A032565(n+1))+A111440(n+1)`
-/

namespace A113915.P16870709775137575701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112662 (A032565 (n + 1)).toNat + A111440 (n + 1)

end

end A113915.P16870709775137575701

/-! ## A113915.P8982511667486212125

`A112662(n+1)+A111440(A121535(n+1))`
-/

namespace A113915.P8982511667486212125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112662 (n + 1) + A111440 (A121535 (n + 1)).toNat

end

end A113915.P8982511667486212125

/-! ## A113915.P15644241719291432739

`A112662(n+1)+A111440(A122627(n+1))`
-/

namespace A113915.P15644241719291432739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112662 (n + 1) + A111440 (A122627 (n + 1)).toNat

end

end A113915.P15644241719291432739

/-!
# A113916: Numbers k such that (p^k-1)/(p-1) is prime where p is the k-th prime.

The programs for A113916, there is no canonical definition to state claims against.
-/

/-! ## A113916.P16476306375810069201

`p?[A070523(n+1)]`
-/

namespace A113916.P16476306375810069201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113916.P16476306375810069201

/-!
# A113922: G.f.: (1+14*x+x^2)^3/((1-x))^4.

The programs for A113922, there is no canonical definition to state claims against.
-/

/-! ## A113922.P2305413885481017253

`abs(A066405(n))`
-/

namespace A113922.P2305413885481017253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066405 n|

end

end A113922.P2305413885481017253

/-! ## A113922.P9240996267801976785

`A033999(n)*A066405(n)`
-/

namespace A113922.P9240996267801976785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A066405 n

end

end A113922.P9240996267801976785

/-! ## A113922.P2561038121408835294

`gcd(A000038(n), A066405(n))`
-/

namespace A113922.P2561038121408835294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A066405 n)

end

end A113922.P2561038121408835294

/-! ## A113922.P2611380432437818822

`lcm(A000034(n), A066405(n))`
-/

namespace A113922.P2611380432437818822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A066405 n)

end

end A113922.P2611380432437818822

/-! ## A113922.P10987368592494693556

`A066405(n)*A121238(2*n+1)`
-/

namespace A113922.P10987368592494693556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066405 n * A121238 (2 * n + 1)

end

end A113922.P10987368592494693556

/-! ## A113922.P15959915372461448665

`sqrt(A066405(n)^A000034(2*n+1))`
-/

namespace A113922.P15959915372461448665
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A066405 n : ℚ) ^ (A000034 (2 * n + 1) : ℤ) : ℝ)

end

end A113922.P15959915372461448665

/-!
# A113923: Expansion of 3*(2-x)^2/(1-x).

The programs for A113923, the canonical program `A113923.P8288984377744183507` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113923 has offset 0).

The definition of A113923 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((12-12x+3x^2)/(1-x))` (program `A113923.P8288984377744183507`, by `A113923.P8288984377744183507.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113923.P8288984377744183507

`ogf((12-12x+3x^2)/(1-x))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113923

/-- `ogf((12-12x+3x^2)/(1-x))` -/
def P8288984377744183507.Spec : Prop :=
  ∀ n, P8288984377744183507.a n = A113923 n

theorem P8288984377744183507.correct : P8288984377744183507.Spec := by
  intro n
  simp only [A113923]

end A113923

/-!
# A113924: a(n) = gcd(A113605(n+1), A113605(n)). Also, for n >= 2, a(n) = A113605(n+2) - A113605(n-1).

The programs for A113924, the canonical program `A113924.P11530631695570501303` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113924 has offset 1).

The definition of A113924 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(A113605(n+2), A113605(n+1))` (program `A113924.P11530631695570501303`, by `A113924.P11530631695570501303.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113924.P11530631695570501303

`gcd(A113605(n+2), A113605(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A113924

/-- `gcd(A113605(n+2), A113605(n+1))` -/
def P11530631695570501303.Spec : Prop :=
  ∀ n, (P11530631695570501303.a n : ℤ) = A113924 (n + 1)

theorem P11530631695570501303.correct : P11530631695570501303.Spec := by
  intro n
  simp only [A113924, Nat.add_sub_cancel]

end A113924

/-! ## A113924.P11520311458593956994

`gcd(Δ[A081162(n)], A003603(n+1))`
-/

namespace A113924.P11520311458593956994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081162 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A003603 (n + 1))

end

end A113924.P11520311458593956994

namespace A113924

/-- `gcd(Δ[A081162(n)], A003603(n+1))` -/
def P11520311458593956994.Spec : Prop :=
  ∀ n, (P11520311458593956994.a n : ℤ) = A113924 (n + 1)

end A113924

/-! ## A113924.P6758026831312127064

`gcd(A005041(n), A324408(2*n+1))`
-/

namespace A113924.P6758026831312127064
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005041 n) (A324408 (2 * n + 1))

end

end A113924.P6758026831312127064

namespace A113924

/-- `gcd(A005041(n), A324408(2*n+1))` -/
def P6758026831312127064.Spec : Prop :=
  ∀ n, (P6758026831312127064.a n : ℤ) = A113924 (n + 1)

end A113924

/-! ## A113924.P8945038117981762069

`gcd(A030548(A082672(n+1)), A255072(n+1))`
-/

namespace A113924.P8945038117981762069
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030548 (A082672 (n + 1)).toNat) (A255072 (n + 1))

end

end A113924.P8945038117981762069

namespace A113924

/-- `gcd(A030548(A082672(n+1)), A255072(n+1))` -/
def P8945038117981762069.Spec : Prop :=
  ∀ n, (P8945038117981762069.a n : ℤ) = A113924 (n + 1)

end A113924

/-! ## A113924.P7481005578856067136

`gcd(A051613(A181155(n+1)), A345910(3*n+1))`
-/

namespace A113924.P7481005578856067136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051613 (A181155 (n + 1)).toNat) (A345910 (3 * n + 1))

end

end A113924.P7481005578856067136

namespace A113924

/-- `gcd(A051613(A181155(n+1)), A345910(3*n+1))` -/
def P7481005578856067136.Spec : Prop :=
  ∀ n, (P7481005578856067136.a n : ℤ) = A113924 (n + 1)

end A113924

/-!
# A113925: a(1)=0. a(1)=1. a(n+2) = gcd(a(n+1) + a(n), n).

The programs for A113925, the canonical program `A113925.P12590617920158987413` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113925 has offset 1).

The definition of A113925 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113925.P12590617920158987413

`gcd(a(n-1)+a(n-2), n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113925

/-- `gcd(a(n-1)+a(n-2), n-1)` -/
def P12590617920158987413.Spec : Prop :=
  ∀ n, (P12590617920158987413.a n : ℤ) = A113925 (n + 1)

theorem P12590617920158987413.correct : P12590617920158987413.Spec := by
  intro n
  simp only [A113925, Nat.add_sub_cancel]

end A113925

/-! ## A113925.P7204148751452667039

`gcd(2-(4/2-a(n-1)-a(n-2)), A023443(n))` with `a(0)=0, a(1)=1`
-/

namespace A113925.P7204148751452667039
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.gcd (SequenceMachineLib.roundAway (2 - ((4 : ℚ) / 2 - (a (n - 1) : ℚ) - (a (n - 2) : ℚ)))) (A023443 n)

end

end A113925.P7204148751452667039

namespace A113925

/-- `gcd(2-(4/2-a(n-1)-a(n-2)), A023443(n))` -/
def P7204148751452667039.Spec : Prop :=
  ∀ n, (P7204148751452667039.a n : ℤ) = A113925 (n + 1)

end A113925

/-! ## A113925.P3630661369735595600

`gcd(A001222(A084215(n)), A002516(n))`
-/

namespace A113925.P3630661369735595600
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A084215 n).toNat) (A002516 n)

end

end A113925.P3630661369735595600

namespace A113925

/-- `gcd(A001222(A084215(n)), A002516(n))` -/
def P3630661369735595600.Spec : Prop :=
  ∀ n, (P3630661369735595600.a n : ℤ) = A113925 (n + 1)

end A113925

/-! ## A113925.P12194198723472292450

`A061395(gcd(A073976(n+1), A164607(n)))`
-/

namespace A113925.P12194198723472292450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.gcd (A073976 (n + 1)) (A164607 n))

end

end A113925.P12194198723472292450

namespace A113925

/-- `A061395(gcd(A073976(n+1), A164607(n)))` -/
def P12194198723472292450.Spec : Prop :=
  ∀ n, P12194198723472292450.a n = A113925 (n + 1)

end A113925

/-! ## A113925.P16993612009762389063

`A249740(n+5)*A285329(A000079(n))`
-/

namespace A113925.P16993612009762389063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249740 (n + 5) * A285329 (A000079 n).toNat

end

end A113925.P16993612009762389063

namespace A113925

/-- `A249740(n+5)*A285329(A000079(n))` -/
def P16993612009762389063.Spec : Prop :=
  ∀ n, P16993612009762389063.a n = A113925 (n + 1)

end A113925

/-!
# A113926: Triangle where a(1,1)=1. a(n,m) = GCD of m and sum of terms in row (n-1).

The programs for A113926, there is no canonical definition to state claims against.
-/

/-! ## A113926.P190688523990140349

`gcd(A002260(n+1), A100675(A002024(n+1)))`
-/

namespace A113926.P190688523990140349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (n + 1)) (A100675 (A002024 (n + 1)).toNat)

end

end A113926.P190688523990140349

/-! ## A113926.P15957559706383763037

`gcd(A002260(n+1), A349346(A186085(n)))`
-/

namespace A113926.P15957559706383763037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (n + 1)) (A349346 (A186085 n).toNat)

end

end A113926.P15957559706383763037

/-! ## A113926.P5103421579805660982

`gcd(1-C(∑[char[∑[n]]], 2)+n, A116651(A116648(n+1)))`
-/

namespace A113926.P5103421579805660982
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) (A116651 (A116648 (n + 1)).toNat)

end

end A113926.P5103421579805660982

/-! ## A113926.P9106457764046524616

`gcd(round((A355747(n+4)-2)/5), A023121(n+1))`
-/

namespace A113926.P9106457764046524616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A355747 (n + 4) - 2 : ℚ) / 5)) (A023121 (n + 1))

end

end A113926.P9106457764046524616

/-! ## A113926.P1082169642945591610

`gcd(A002262(n)+1, A124818(A012265(n)²))`
-/

namespace A113926.P1082169642945591610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n + 1) (A124818 (A012265 n ^ 2).toNat)

end

end A113926.P1082169642945591610

/-!
# A113927: a(1)=1, and recursively a(n+1) is the smallest prime p of the form p = 2*a(n) + 5^k for some k>0.

The programs for A113927, there is no canonical definition to state claims against.
-/

/-! ## A113927.P61857451734185609

`∑[record[A005875(A082458(n))]]`
-/

namespace A113927.P61857451734185609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (A082458 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113927.P61857451734185609

/-! ## A113927.P2194776361567274670

`∑[∏[A324644(A304663(n+1))]]`
-/

namespace A113927.P2194776361567274670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324644 (A304663 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113927.P2194776361567274670

/-!
# A113928: Numbers k such that (RSA-768) + 10^k is prime where RSA-768 is the 232 decimal digit RSA challenge number A391940(21).

The programs for A113928, there is no canonical definition to state claims against.
-/

/-! ## A113928.P9054464416457838441

`A165632(A190121(2*(n+1)))-A056851(n+1)`
-/

namespace A113928.P9054464416457838441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165632 (A190121 (2 * (n + 1))).toNat - A056851 (n + 1)

end

end A113928.P9054464416457838441

/-!
# A113929: Numbers k such that sigma(k) and phi(k) are both palindromes.

The programs for A113929, there is no canonical definition to state claims against.
-/

/-! ## A113929.P5897327709264865543

`∩[A028980(n+1), A117296(n+1)]`
-/

namespace A113929.P5897327709264865543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117296 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113929.P5897327709264865543

/-! ## A113929.P12707874820371785859

`∑[A005840(floor(C(n, 2)/4)!)]`
-/

namespace A113929.P12707874820371785859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005840 (Nat.factorial ⌊(Nat.choose n 2 : ℚ) / 4⌋.toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113929.P12707874820371785859

/-! ## A113929.P2050137447765304767

`∑[∑[A026087((n+1)*a(n-1)+4)]]` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0`
-/

namespace A113929.P2050137447765304767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 0, 0] fun n f2 =>
  A026087 ((n + 1 : ℤ) * f2 (n - 1) + 4).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113929.P2050137447765304767

/-!
# A113930: Numbers k such that sigma(k) and phi(k) are both triangular numbers.

The programs for A113930, there is no canonical definition to state claims against.
-/

/-! ## A113930.P13311028845437677249

`∩[A045746(n+1), A360944(n+1)]`
-/

namespace A113930.P13311028845437677249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360944 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113930.P13311028845437677249

/-!
# A113935: a(n) = prime(n) + 3.

The programs for A113935, the canonical program `A113935.P8490065931569907193` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113935 has offset 1).

The definition of A113935 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)+3` (program `A113935.P8490065931569907193`, by `A113935.P8490065931569907193.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113935.P5086893406653941242

`A052147(n+1)+1`
-/

namespace A113935.P5086893406653941242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + 1

end

end A113935.P5086893406653941242

namespace A113935

/-- `A052147(n+1)+1` -/
def P5086893406653941242.Spec : Prop :=
  ∀ n, P5086893406653941242.a n = A113935 (n + 1)

theorem P5086893406653941242.correct : P5086893406653941242.Spec := by
  intro n
  simp only [A113935, Nat.add_sub_cancel, A113935.P5086893406653941242.a, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113935

/-! ## A113935.P10189749377196840853

`A008864(n+1)+2`
-/

namespace A113935.P10189749377196840853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + 2

end

end A113935.P10189749377196840853

namespace A113935

/-- `A008864(n+1)+2` -/
def P10189749377196840853.Spec : Prop :=
  ∀ n, P10189749377196840853.a n = A113935 (n + 1)

theorem P10189749377196840853.correct : P10189749377196840853.Spec := by
  intro n
  simp only [A113935, Nat.add_sub_cancel, A113935.P10189749377196840853.a, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113935

/-! ## A113935.P14659539386080219258

`A175221(n+1)-1`
-/

namespace A113935.P14659539386080219258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175221 (n + 1) - 1

end

end A113935.P14659539386080219258

namespace A113935

/-- `A175221(n+1)-1` -/
def P14659539386080219258.Spec : Prop :=
  ∀ n, P14659539386080219258.a n = A113935 (n + 1)

theorem P14659539386080219258.correct : P14659539386080219258.Spec := by
  intro n
  simp only [A113935, Nat.add_sub_cancel, A113935.P14659539386080219258.a, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175221, A175221.P11226718615464862765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113935

/-! ## A113935.P8490065931569907193

`A000040(n+1)+3`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A113935

/-- `A000040(n+1)+3` -/
def P8490065931569907193.Spec : Prop :=
  ∀ n, P8490065931569907193.a n = A113935 (n + 1)

theorem P8490065931569907193.correct : P8490065931569907193.Spec := by
  intro n
  simp only [A113935, Nat.add_sub_cancel]

end A113935

/-! ## A113935.P8849560536912233383

`A175222(n+1)-2`
-/

namespace A113935.P8849560536912233383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175222 (n + 1) - 2

end

end A113935.P8849560536912233383

namespace A113935

/-- `A175222(n+1)-2` -/
def P8849560536912233383.Spec : Prop :=
  ∀ n, P8849560536912233383.a n = A113935 (n + 1)

theorem P8849560536912233383.correct : P8849560536912233383.Spec := by
  intro n
  simp only [A113935, Nat.add_sub_cancel, A113935.P8849560536912233383.a, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175222, A175222.P10933161600630644520.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113935

/-! ## A113935.P4933338827970554781

`A139049(n+1)-3`
-/

namespace A113935.P4933338827970554781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139049 (n + 1) - 3

end

end A113935.P4933338827970554781

namespace A113935

/-- `A139049(n+1)-3` -/
def P4933338827970554781.Spec : Prop :=
  ∀ n, P4933338827970554781.a n = A113935 (n + 1)

theorem P4933338827970554781.correct : P4933338827970554781.Spec := by
  intro n
  simp only [A113935, Nat.add_sub_cancel, A113935.P4933338827970554781.a, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A139049, A139049.P7343931796022599555.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113935

/-! ## A113935.P14220628129723931950

`A175223(n+1)-4`
-/

namespace A113935.P14220628129723931950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175223 (n + 1) - 4

end

end A113935.P14220628129723931950

namespace A113935

/-- `A175223(n+1)-4` -/
def P14220628129723931950.Spec : Prop :=
  ∀ n, P14220628129723931950.a n = A113935 (n + 1)

theorem P14220628129723931950.correct : P14220628129723931950.Spec := by
  intro n
  simp only [A113935, Nat.add_sub_cancel, A113935.P14220628129723931950.a, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175223, A175223.P2338184414980826064.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113935

/-! ## A113935.P895091554232794283

`A175224(n+1)-5`
-/

namespace A113935.P895091554232794283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175224 (n + 1) - 5

end

end A113935.P895091554232794283

namespace A113935

/-- `A175224(n+1)-5` -/
def P895091554232794283.Spec : Prop :=
  ∀ n, P895091554232794283.a n = A113935 (n + 1)

theorem P895091554232794283.correct : P895091554232794283.Spec := by
  intro n
  simp only [A113935, Nat.add_sub_cancel, A113935.P895091554232794283.a, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175224, A175224.P1386793928636688251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113935

/-! ## A113935.P4012568377842420036

`A140353(n+1)-6`
-/

namespace A113935.P4012568377842420036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140353 (n + 1) - 6

end

end A113935.P4012568377842420036

namespace A113935

/-- `A140353(n+1)-6` -/
def P4012568377842420036.Spec : Prop :=
  ∀ n, P4012568377842420036.a n = A113935 (n + 1)

theorem P4012568377842420036.correct : P4012568377842420036.Spec := by
  intro n
  simp only [A113935, Nat.add_sub_cancel, A113935.P4012568377842420036.a, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A140353, A140353.P3819678062006389091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113935

/-! ## A113935.P1005319052617224367

`A175225(n+1)-7`
-/

namespace A113935.P1005319052617224367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175225 (n + 1) - 7

end

end A113935.P1005319052617224367

namespace A113935

/-- `A175225(n+1)-7` -/
def P1005319052617224367.Spec : Prop :=
  ∀ n, P1005319052617224367.a n = A113935 (n + 1)

theorem P1005319052617224367.correct : P1005319052617224367.Spec := by
  intro n
  simp only [A113935, Nat.add_sub_cancel, A113935.P1005319052617224367.a, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A175225, A175225.P11130791090975499720.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113935

/-! ## A113935.P15832837544211670177

`p?[a(n-1)+2]+3` with `a(0)=2, a(1)=1`
-/

namespace A113935.P15832837544211670177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 3

end

end A113935.P15832837544211670177

namespace A113935

/-- `p?[a(n-1)+2]+3` -/
def P15832837544211670177.Spec : Prop :=
  ∀ n, (P15832837544211670177.a n : ℤ) = A113935 (n + 1)

theorem P15832837544211670177.correct : P15832837544211670177.Spec := by
  intro n
  simp only [A113935, Nat.add_sub_cancel, A113935.P15832837544211670177.f1, A113935.P15832837544211670177.a, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113935

/-! ## A113935.P466986225372317985

`Δ[A007504(n)]+3`
-/

namespace A113935.P466986225372317985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A113935.P466986225372317985

namespace A113935

/-- `Δ[A007504(n)]+3` -/
def P466986225372317985.Spec : Prop :=
  ∀ n, P466986225372317985.a n = A113935 (n + 1)

end A113935

/-! ## A113935.P17574376990659883043

`∑[A075526(n)]+4`
-/

namespace A113935.P17574376990659883043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A113935.P17574376990659883043

namespace A113935

/-- `∑[A075526(n)]+4` -/
def P17574376990659883043.Spec : Prop :=
  ∀ n, P17574376990659883043.a n = A113935 (n + 1)

end A113935

/-! ## A113935.P6326664749573534413

`A028815(n+1)+2`
-/

namespace A113935.P6326664749573534413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) + 2

end

end A113935.P6326664749573534413

namespace A113935

/-- `A028815(n+1)+2` -/
def P6326664749573534413.Spec : Prop :=
  ∀ n, P6326664749573534413.a n = A113935 (n + 1)

end A113935

/-! ## A113935.P15119321020121347848

`4+A006093(n+1)`
-/

namespace A113935.P15119321020121347848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + A006093 (n + 1)

end

end A113935.P15119321020121347848

namespace A113935

/-- `4+A006093(n+1)` -/
def P15119321020121347848.Spec : Prop :=
  ∀ n, P15119321020121347848.a n = A113935 (n + 1)

theorem P15119321020121347848.correct : P15119321020121347848.Spec := by
  intro n
  simp only [A113935, Nat.add_sub_cancel, A113935.P15119321020121347848.a, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113935

/-! ## A113935.P15059709133444102644

`A040976(n+1)+5`
-/

namespace A113935.P15059709133444102644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 5

end

end A113935.P15059709133444102644

namespace A113935

/-- `A040976(n+1)+5` -/
def P15059709133444102644.Spec : Prop :=
  ∀ n, P15059709133444102644.a n = A113935 (n + 1)

theorem P15059709133444102644.correct : P15059709133444102644.Spec := by
  intro n
  simp only [A113935, Nat.add_sub_cancel, A113935.P15059709133444102644.a, A113935.P8490065931569907193.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A113935

/-! ## A113935.P17701376743613852504

`sqrt(A110833(n+1))+2`
-/

namespace A113935.P17701376743613852504
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A110833 (n + 1) : ℝ) + 2

end

end A113935.P17701376743613852504

namespace A113935

/-- `sqrt(A110833(n+1))+2` -/
def P17701376743613852504.Spec : Prop :=
  ∀ n, P17701376743613852504.a n = (A113935 (n + 1) : ℝ)

end A113935

/-! ## A113935.P14454791062182920109

`sqrt(A001248(n+1))+3`
-/

namespace A113935.P14454791062182920109
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) + 3

end

end A113935.P14454791062182920109

namespace A113935

/-- `sqrt(A001248(n+1))+3` -/
def P14454791062182920109.Spec : Prop :=
  ∀ n, P14454791062182920109.a n = (A113935 (n + 1) : ℝ)

end A113935

/-! ## A113935.P15435376405792962230

`sqrt(A005722(n+1))+4`
-/

namespace A113935.P15435376405792962230
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A005722 (n + 1) : ℝ) + 4

end

end A113935.P15435376405792962230

namespace A113935

/-- `sqrt(A005722(n+1))+4` -/
def P15435376405792962230.Spec : Prop :=
  ∀ n, P15435376405792962230.a n = (A113935 (n + 1) : ℝ)

end A113935

/-! ## A113935.P3520065711883771601

`∑[A125266(n+1)]+2`
-/

namespace A113935.P3520065711883771601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A113935.P3520065711883771601

namespace A113935

/-- `∑[A125266(n+1)]+2` -/
def P3520065711883771601.Spec : Prop :=
  ∀ n, P3520065711883771601.a n = A113935 (n + 1)

end A113935

/-!
# A113936: a(n) = k-th prime, where k = n-th Mersenne prime = A000668(n).

The programs for A113936, there is no canonical definition to state claims against.
-/

/-! ## A113936.P11326470467261689801

`A000040(A000668(n+1))`
-/

namespace A113936.P11326470467261689801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000668 (n + 1)).toNat

end

end A113936.P11326470467261689801

/-! ## A113936.P3532163060436200511

`A051438(A237057(n))`
-/

namespace A113936.P3532163060436200511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051438 (A237057 n).toNat

end

end A113936.P3532163060436200511

/-! ## A113936.P9370357665716625226

`A051438(A000043(n+1))`
-/

namespace A113936.P9370357665716625226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051438 (A000043 (n + 1)).toNat

end

end A113936.P9370357665716625226

/-! ## A113936.P16231869273859709519

`A051438(A123856(n+1))`
-/

namespace A113936.P16231869273859709519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051438 (A123856 (n + 1)).toNat

end

end A113936.P16231869273859709519

/-!
# A113938: Numbers which are powerful(1) (A001694) and triangular at the same time.

The programs for A113938, there is no canonical definition to state claims against.
-/

/-! ## A113938.P7338718036104293316

`∩[C(n+1, 2), A001694(n+1)]`
-/

namespace A113938.P7338718036104293316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113938.P7338718036104293316

/-! ## A113938.P8065219267624047975

`∩[∪[(n+1)², A320966(n+1)], A000217(n)]`
-/

namespace A113938.P8065219267624047975
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320966 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A113938.P8065219267624047975

/-!
# A113940: Triangular numbers that are also brilliant (A078972).

The programs for A113940, there is no canonical definition to state claims against.
-/

/-! ## A113940.P8896261228011376848

`∩[A078972(n+1), ∑[n]]`
-/

namespace A113940.P8896261228011376848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A113940.P8896261228011376848

/-! ## A113940.P11204172635597506745

`∩[A000217(n), A078972(n+1)]`
-/

namespace A113940.P11204172635597506745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113940.P11204172635597506745

/-! ## A113940.P11496564391143335958

`∩[A085647(n+1), A000217(n)]`
-/

namespace A113940.P11496564391143335958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113940.P11496564391143335958

/-! ## A113940.P7200089653159191519

`∩[A085647(n+1), A001972(n)]`
-/

namespace A113940.P7200089653159191519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113940.P7200089653159191519

/-! ## A113940.P8158491866020841343

`∩[A085647(n+1), A253145(n)]`
-/

namespace A113940.P8158491866020841343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113940.P8158491866020841343

/-!
# A113941: Pentagonal numbers (A000326) that are also brilliant numbers (A078972).

The programs for A113941, there is no canonical definition to state claims against.
-/

/-! ## A113941.P10512440990428173897

`∩[A078972(n+1), A000326(n)]`
-/

namespace A113941.P10512440990428173897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113941.P10512440990428173897

/-! ## A113941.P15256133254815863706

`∩[A085647(n+1), A000326(n)]`
-/

namespace A113941.P15256133254815863706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085647 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113941.P15256133254815863706

/-! ## A113941.P16551680641706397386

`∩[A078972(A101947(n+1)+1), C(n, 2)+n²]`
-/

namespace A113941.P16551680641706397386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078972 (A101947 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A113941.P16551680641706397386

/-! ## A113941.P14296476273194219031

`filter[A255584(n+1), A341999(#)]`
-/

namespace A113941.P14296476273194219031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A341999 (f1 j).toNat = 1) n)

end

end A113941.P14296476273194219031

/-! ## A113941.P2261856930170872023

`filter[A255584(n+1), A359546(#)]`
-/

namespace A113941.P2261856930170872023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359546 (f1 j).toNat = 1) n)

end

end A113941.P2261856930170872023

/-!
# A113942: Concatenating n with n+1 (in base 10) gives a number which is the product of 2 palindromes.

The programs for A113942, there is no canonical definition to state claims against.
-/

/-! ## A113942.P4632996297558775196

`A343317(∑[A145677(n)]^n)`
-/

namespace A113942.P4632996297558775196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343317 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ n).toNat

end

end A113942.P4632996297558775196

/-!
# A113943: Primes arising in A073946.

The programs for A113943, there is no canonical definition to state claims against.
-/

/-! ## A113943.P8368830152286965728

`p?[A038107(n)+n²]`
-/

namespace A113943.P8368830152286965728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113943.P8368830152286965728

/-! ## A113943.P4946700304606680305

`p?[A161187(n+1)+n²+n]`
-/

namespace A113943.P4946700304606680305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161187 (n + 1) + (n ^ 2 + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113943.P4946700304606680305

/-! ## A113943.P9494672618092219913

`p?[∑[A014085(n)+1+n+n]]`
-/

namespace A113943.P9494672618092219913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 n + 1 + (n : ℤ) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113943.P9494672618092219913

/-! ## A113943.P2519201472808320296

`p?[A253909(n)+A038107(n)]`
-/

namespace A113943.P2519201472808320296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 n + A038107 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113943.P2519201472808320296

/-! ## A113943.P919239624829219041

`p?[A002522(n)+A038107(n)-1]`
-/

namespace A113943.P919239624829219041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n + (A038107 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A113943.P919239624829219041

/-!
# A113944: Square roots of A073946.

The programs for A113944, there is no canonical definition to state claims against.
-/

/-! ## A113944.P8826482665214576776

`sqrt(A073946(n+1))`
-/

namespace A113944.P8826482665214576776
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A073946 (n + 1) : ℝ)

end

end A113944.P8826482665214576776

/-! ## A113944.P5941941851539147799

`root(A073946(C(n+1, n)), 2)`
-/

namespace A113944.P5941941851539147799
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A073946 (Nat.choose (n + 1) n) : ℝ) ^ (1 / (2 : ℝ))

end

end A113944.P5941941851539147799

/-! ## A113944.P14812413208263434640

`root(A073946(Δ[n²]-n), 2)`
-/

namespace A113944.P14812413208263434640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A073946 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A113944.P14812413208263434640

/-! ## A113944.P7833147855210749140

`A000027(root(A073946(n+1), 2))`
-/

namespace A113944.P7833147855210749140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A073946 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A113944.P7833147855210749140

/-! ## A113944.P11190317596241804201

`abs(A001489(root(A073946(n+1), 2)))`
-/

namespace A113944.P11190317596241804201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 (SequenceMachineLib.roundAway ((A073946 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat|

end

end A113944.P11190317596241804201

/-! ## A113944.P2979428825439754381

`root(A073946(n+1), 2)*A007318(∑[n])`
-/

namespace A113944.P2979428825439754381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A073946 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A113944.P2979428825439754381

/-! ## A113944.P223064589470911334

`root(A073946(n+1), 2)%A000032(n+3)`
-/

namespace A113944.P223064589470911334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A073946 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A000032 (n + 3))

end

end A113944.P223064589470911334

/-!
# A113946: Series expansion of Farey rational polynomial based on A112627.

The programs for A113946, the canonical program `A113946.P1873626453072486687` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113946 has offset 0).

The definition of A113946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113946.P2403212428202735794

`A114014(n)-2*a(n-1)` with `a(0)=1`
-/

namespace A113946.P2403212428202735794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A114014 n - 2 * a (n - 1)

end

end A113946.P2403212428202735794

namespace A113946

/-- `A114014(n)-2*a(n-1)` -/
def P2403212428202735794.Spec : Prop :=
  ∀ n, P2403212428202735794.a n = A113946 n

end A113946

/-! ## A113946.P1873626453072486687

`A266976(n)-A109765(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A113946

/-- `A266976(n)-A109765(n)` -/
def P1873626453072486687.Spec : Prop :=
  ∀ n, P1873626453072486687.a n = A113946 n

theorem P1873626453072486687.correct : P1873626453072486687.Spec := by
  intro n
  simp only [A113946]

end A113946

/-! ## A113946.P17659682788136598738

`2^n*A283323(n)-A109765(n)`
-/

namespace A113946.P17659682788136598738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A283323 n - A109765 n

end

end A113946.P17659682788136598738

namespace A113946

/-- `2^n*A283323(n)-A109765(n)` -/
def P17659682788136598738.Spec : Prop :=
  ∀ n, P17659682788136598738.a n = A113946 n

end A113946

/-! ## A113946.P12334668291338093427

`lcm(A000079(n), A283323(n))-A109765(n)`
-/

namespace A113946.P12334668291338093427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000079 n) (A283323 n) : ℤ) - A109765 n

end

end A113946.P12334668291338093427

namespace A113946

/-- `lcm(A000079(n), A283323(n))-A109765(n)` -/
def P12334668291338093427.Spec : Prop :=
  ∀ n, P12334668291338093427.a n = A113946 n

end A113946

/-! ## A113946.P2918135328500681886

`or(A011782(2*n), A266846(n))-A109765(n)`
-/

namespace A113946.P2918135328500681886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011782 (2 * n)) (A266846 n) - A109765 n

end

end A113946.P2918135328500681886

namespace A113946

/-- `or(A011782(2*n), A266846(n))-A109765(n)` -/
def P2918135328500681886.Spec : Prop :=
  ∀ n, P2918135328500681886.a n = A113946 n

end A113946

/-! ## A113946.P15941928642604987388

`(A131577(n)+A097163(n))*A000079(n)-A109765(n)`
-/

namespace A113946.P15941928642604987388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131577 n + A097163 n) * A000079 n - A109765 n

end

end A113946.P15941928642604987388

namespace A113946

/-- `(A131577(n)+A097163(n))*A000079(n)-A109765(n)` -/
def P15941928642604987388.Spec : Prop :=
  ∀ n, P15941928642604987388.a n = A113946 n

end A113946

/-!
# A113947: Number of non-equivalent n-fold branched coverings of the projective plane with two cyclic branch points.

The programs for A113947, there is no canonical definition to state claims against.
-/

/-! ## A113947.P11262830369205214876

`A113949(∑[n+2])`
-/

namespace A113947.P11262830369205214876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113949 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113947.P11262830369205214876

/-! ## A113947.P9737898848816544063

`record[A113949(∑[A152271(n)])]`
-/

namespace A113947.P9737898848816544063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113949 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113947.P9737898848816544063

/-! ## A113947.P2948700032454204469

`record[A113949(n+1)*A129186(n)]`
-/

namespace A113947.P2948700032454204469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113949 (n + 1) * A129186 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113947.P2948700032454204469

/-! ## A113947.P10710205835679023753

`record[gcd(A105422(n), A113949(n+1))]`
-/

namespace A113947.P10710205835679023753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A105422 n) (A113949 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113947.P10710205835679023753

/-! ## A113947.P12065226204658922240

`record[A113949(A000096(val(n+1, 2)+1))]`
-/

namespace A113947.P12065226204658922240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113949 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113947.P12065226204658922240

/-!
# A113949: Number of n-fold branched coverings of the projective plane with r cyclic branch points (n,r>=1); array read by downward antidiagonals.

The programs for A113949, there is no canonical definition to state claims against.
-/

/-! ## A113949.P9944718700841899459

`A339975(A002260(n+1)*A274993(n))`
-/

namespace A113949.P9944718700841899459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 (A002260 (n + 1) * A274993 n).toNat

end

end A113949.P9944718700841899459

/-! ## A113949.P12799072972762031264

`A339975(lcm(A002260(n+1), A274993(n)))`
-/

namespace A113949.P12799072972762031264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339975 (Int.lcm (A002260 (n + 1)) (A274993 n))

end

end A113949.P12799072972762031264

/-! ## A113949.P6015777490937365486

`A064692(xor(A000124(n), A304138(n+1)))`
-/

namespace A113949.P6015777490937365486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (Int.xor (A000124 n) (A304138 (n + 1))).toNat

end

end A113949.P6015777490937365486

/-! ## A113949.P90541576597910377

`A344619(2*(n+1))%A060131(A288146(n+1))`
-/

namespace A113949.P90541576597910377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344619 (2 * (n + 1))) (A060131 (A288146 (n + 1)).toNat)

end

end A113949.P90541576597910377

/-!
# A113950: Number of n-fold branched coverings of the Klein bottle with r cyclic branch points (n,r>=1); array read by downward antidiagonals.

The programs for A113950, there is no canonical definition to state claims against.
-/

/-! ## A113950.P11097455219215493052

`A025581(A213224(n+1)^A185150(n+1))`
-/

namespace A113950.P11097455219215493052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.roundAway ((A213224 (n + 1) : ℚ) ^ (A185150 (n + 1) : ℤ))).toNat

end

end A113950.P11097455219215493052

/-!
# A113952: Largest exclusionary n-th power (or 0 if no such number exists).

The programs for A113952, there is no canonical definition to state claims against.
-/

/-! ## A113952.P2011927565641170257

`A113951(n+2)^(n+2)`
-/

namespace A113952.P2011927565641170257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113951 (n + 2) ^ (n + 2)

end

end A113952.P2011927565641170257

/-!
# A113953: A Jacobsthal triangle.

The programs for A113953, the canonical program `A113953.P2504237234037505481` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113953 has offset 0).

The definition of A113953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113953.P2504237234037505481

`T(n-1,k-1)+2*T(n-2,k-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113953

/-- `T(n-1,k-1)+2*T(n-2,k-1)` -/
def P2504237234037505481.Spec : Prop :=
  ∀ n, (P2504237234037505481.a n : ℤ) = A113953 n

theorem P2504237234037505481.correct : P2504237234037505481.Spec := by
  intro n
  simp only [A113953]

end A113953

/-! ## A113953.P11801674515003162364

`2^(row(n)-col(n))*C(col(n), row(n)-col(n))`
-/

namespace A113953.P11801674515003162364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) * (Nat.choose (SequenceMachineLib.triCol n) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat : ℚ)

end

end A113953.P11801674515003162364

namespace A113953

/-- `2^(row(n)-col(n))*C(col(n), row(n)-col(n))` -/
def P11801674515003162364.Spec : Prop :=
  ∀ n, P11801674515003162364.a n = (A113953 n : ℚ)

end A113953

/-! ## A113953.P2089151965416812933

`abs(A110509(n))`
-/

namespace A113953.P2089151965416812933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110509 n|

end

end A113953.P2089151965416812933

namespace A113953

/-- `abs(A110509(n))` -/
def P2089151965416812933.Spec : Prop :=
  ∀ n, P2089151965416812933.a n = A113953 n

end A113953

/-! ## A113953.P11834730915187608002

`A026729(n)*A052509(n)`
-/

namespace A113953.P11834730915187608002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A052509 n

end

end A113953.P11834730915187608002

namespace A113953

/-- `A026729(n)*A052509(n)` -/
def P11834730915187608002.Spec : Prop :=
  ∀ n, P11834730915187608002.a n = A113953 n

end A113953

/-! ## A113953.P12026495416692361282

`A026729(n)*A068913(n)`
-/

namespace A113953.P12026495416692361282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A068913 n

end

end A113953.P12026495416692361282

namespace A113953

/-- `A026729(n)*A068913(n)` -/
def P12026495416692361282.Spec : Prop :=
  ∀ n, P12026495416692361282.a n = A113953 n

end A113953

/-! ## A113953.P2598864036359061613

`A026729(n)*A130321(n)`
-/

namespace A113953.P2598864036359061613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A130321 n

end

end A113953.P2598864036359061613

namespace A113953

/-- `A026729(n)*A130321(n)` -/
def P2598864036359061613.Spec : Prop :=
  ∀ n, P2598864036359061613.a n = A113953 n

end A113953

/-! ## A113953.P14821546756781264794

`A026729(n)*A144464(n)`
-/

namespace A113953.P14821546756781264794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A144464 n

end

end A113953.P14821546756781264794

namespace A113953

/-- `A026729(n)*A144464(n)` -/
def P14821546756781264794.Spec : Prop :=
  ∀ n, P14821546756781264794.a n = A113953 n

end A113953

/-! ## A113953.P5827313680732092579

`A097807(n)*A110509(n)`
-/

namespace A113953.P5827313680732092579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A110509 n

end

end A113953.P5827313680732092579

namespace A113953

/-- `A097807(n)*A110509(n)` -/
def P5827313680732092579.Spec : Prop :=
  ∀ n, P5827313680732092579.a n = A113953 n

end A113953

/-! ## A113953.P15890573982387373396

`A110509(n)*A128257(n)`
-/

namespace A113953.P15890573982387373396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110509 n * A128257 n

end

end A113953.P15890573982387373396

namespace A113953

/-- `A110509(n)*A128257(n)` -/
def P15890573982387373396.Spec : Prop :=
  ∀ n, P15890573982387373396.a n = A113953 n

end A113953

/-! ## A113953.P17518518161754318877

`A110509(n)*A187034(n)`
-/

namespace A113953.P17518518161754318877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110509 n * A187034 n

end

end A113953.P17518518161754318877

namespace A113953

/-- `A110509(n)*A187034(n)` -/
def P17518518161754318877.Spec : Prop :=
  ∀ n, P17518518161754318877.a n = A113953 n

end A113953

/-! ## A113953.P1042952345388473943

`A026729(n)*A385674(n)`
-/

namespace A113953.P1042952345388473943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A385674 n

end

end A113953.P1042952345388473943

namespace A113953

/-- `A026729(n)*A385674(n)` -/
def P1042952345388473943.Spec : Prop :=
  ∀ n, P1042952345388473943.a n = A113953 n

end A113953

/-! ## A113953.P17921515856954890525

`A099092(n)/A059268(n)`
-/

namespace A113953.P17921515856954890525
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099092 n : ℚ) / (A059268 n : ℚ)

end

end A113953.P17921515856954890525

namespace A113953

/-- `A099092(n)/A059268(n)` -/
def P17921515856954890525.Spec : Prop :=
  ∀ n, P17921515856954890525.a n = (A113953 n : ℚ)

end A113953

/-! ## A113953.P5187147810684539641

`A099040(n)/A116588(n)`
-/

namespace A113953.P5187147810684539641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099040 n : ℚ) / (A116588 n : ℚ)

end

end A113953.P5187147810684539641

namespace A113953

/-- `A099040(n)/A116588(n)` -/
def P5187147810684539641.Spec : Prop :=
  ∀ n, P5187147810684539641.a n = (A113953 n : ℚ)

end A113953

/-! ## A113953.P11320553449231681583

`gcd(A000038(n), A110509(n))`
-/

namespace A113953.P11320553449231681583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A110509 n)

end

end A113953.P11320553449231681583

namespace A113953

/-- `gcd(A000038(n), A110509(n))` -/
def P11320553449231681583.Spec : Prop :=
  ∀ n, (P11320553449231681583.a n : ℤ) = A113953 n

end A113953

/-! ## A113953.P7708624881095543636

`gcd(A099040(n), A099095(n))`
-/

namespace A113953.P7708624881095543636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099040 n) (A099095 n)

end

end A113953.P7708624881095543636

namespace A113953

/-- `gcd(A099040(n), A099095(n))` -/
def P7708624881095543636.Spec : Prop :=
  ∀ n, (P7708624881095543636.a n : ℤ) = A113953 n

end A113953

/-! ## A113953.P10668240143992360156

`lcm(A026729(n), A110509(n))`
-/

namespace A113953.P10668240143992360156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A026729 n) (A110509 n)

end

end A113953.P10668240143992360156

namespace A113953

/-- `lcm(A026729(n), A110509(n))` -/
def P10668240143992360156.Spec : Prop :=
  ∀ n, (P10668240143992360156.a n : ℤ) = A113953 n

end A113953

/-! ## A113953.P2692145057962653575

`A026729(n)*A057728(n+1)`
-/

namespace A113953.P2692145057962653575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A057728 (n + 1)

end

end A113953.P2692145057962653575

namespace A113953

/-- `A026729(n)*A057728(n+1)` -/
def P2692145057962653575.Spec : Prop :=
  ∀ n, P2692145057962653575.a n = A113953 n

end A113953

/-! ## A113953.P1508659952916751509

`A026729(n)*A062001(n+1)`
-/

namespace A113953.P1508659952916751509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A062001 (n + 1)

end

end A113953.P1508659952916751509

namespace A113953

/-- `A026729(n)*A062001(n+1)` -/
def P1508659952916751509.Spec : Prop :=
  ∀ n, P1508659952916751509.a n = A113953 n

end A113953

/-! ## A113953.P10936928886701157949

`A026729(n)*A152072(n+1)`
-/

namespace A113953.P10936928886701157949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n * A152072 (n + 1)

end

end A113953.P10936928886701157949

namespace A113953

/-- `A026729(n)*A152072(n+1)` -/
def P10936928886701157949.Spec : Prop :=
  ∀ n, P10936928886701157949.a n = A113953 n

end A113953

/-! ## A113953.P14779379887574241222

`2^A025581(n)*A026729(n)`
-/

namespace A113953.P14779379887574241222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A025581 n : ℤ) * (A026729 n : ℚ)

end

end A113953.P14779379887574241222

namespace A113953

/-- `2^A025581(n)*A026729(n)` -/
def P14779379887574241222.Spec : Prop :=
  ∀ n, P14779379887574241222.a n = (A113953 n : ℚ)

end A113953

/-!
# A113954: Expansion of (1-2x^2)/((1-2x)(1+x)^2).

The programs for A113954, the canonical program `A113954.P4316137840645589250` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113954 has offset 0).

The definition of A113954 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-2x^2)/(1-3x^2-2x^3))` (program `A113954.P4316137840645589250`, by `A113954.P4316137840645589250.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A113954.P4316137840645589250

`ogf((1-2x^2)/(1-3x^2-2x^3))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113954

/-- `ogf((1-2x^2)/(1-3x^2-2x^3))` -/
def P4316137840645589250.Spec : Prop :=
  ∀ n, P4316137840645589250.a n = A113954 n

theorem P4316137840645589250.correct : P4316137840645589250.Spec := by
  intro n
  simp only [A113954]

end A113954

/-! ## A113954.P13872117050722949762

`3*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A113954.P13872117050722949762
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  3 * a (n - 2) + 2 * a (n - 3)

end

end A113954.P13872117050722949762

namespace A113954

/-- `3*a(n-2)+2*a(n-3)` -/
def P13872117050722949762.Spec : Prop :=
  ∀ n, (P13872117050722949762.a n : ℤ) = A113954 n

end A113954

/-! ## A113954.P5564012753467581974

`2^(n+1)/9+(7-3*n)*(-1)^n/9`
-/

namespace A113954.P5564012753467581974
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℚ) / 9 + ((7 - (3 * n : ℤ)) * (-1) ^ n : ℚ) / 9

end

end A113954.P5564012753467581974

namespace A113954

/-- `2^(n+1)/9+(7-3*n)*(-1)^n/9` -/
def P5564012753467581974.Spec : Prop :=
  ∀ n, P5564012753467581974.a n = (A113954 n : ℚ)

end A113954

/-! ## A113954.P11909812778979678264

`abs(A140962(n+1)+n)`
-/

namespace A113954.P11909812778979678264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140962 (n + 1) + (n : ℤ)|

end

end A113954.P11909812778979678264

namespace A113954

/-- `abs(A140962(n+1)+n)` -/
def P11909812778979678264.Spec : Prop :=
  ∀ n, P11909812778979678264.a n = A113954 n

end A113954

/-! ## A113954.P10554322238077555485

`(A140962(n+1)+n)*A033999(n+1)`
-/

namespace A113954.P10554322238077555485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A140962 (n + 1) + (n : ℤ)) * A033999 (n + 1)

end

end A113954.P10554322238077555485

namespace A113954

/-- `(A140962(n+1)+n)*A033999(n+1)` -/
def P10554322238077555485.Spec : Prop :=
  ∀ n, P10554322238077555485.a n = A113954 n

end A113954

/-! ## A113954.P10687467058602337975

`abs(∑[2-A140966(n)]-1)`
-/

namespace A113954.P10687467058602337975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A140966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A113954.P10687467058602337975

namespace A113954

/-- `abs(∑[2-A140966(n)]-1)` -/
def P10687467058602337975.Spec : Prop :=
  ∀ n, P10687467058602337975.a n = A113954 n

end A113954

/-!
# A113956: Expansion of (1/((1-4x)c(x)))/(1-x^2c(x)/sqrt(1-4x)), c(x) the g.f. of A000108.

The programs for A113956, there is no canonical definition to state claims against.
-/

/-! ## A113956.P15546244101023774927

`A116396(n+1)+A116396(n)-A000984(n+1)`
-/

namespace A113956.P15546244101023774927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116396 (n + 1) + (A116396 n - A000984 (n + 1))

end

end A113956.P15546244101023774927

/-! ## A113956.P5699745665904091135

`A325692(A068551(n)+A001523(n))`
-/

namespace A113956.P5699745665904091135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325692 (A068551 n + A001523 n).toNat

end

end A113956.P5699745665904091135

/-!
# A113957: Sum of the divisors of n which are not divisible by 7.

The programs for A113957, the canonical program `A113957.P2720259556925764307` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113957 has offset 1).

The definition of A113957 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113957.P2720259556925764307

`A000203((n+1)/7^val(n+1, 7))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A113957

/-- `A000203((n+1)/7^val(n+1, 7))` -/
def P2720259556925764307.Spec : Prop :=
  ∀ n, P2720259556925764307.a n = A113957 (n + 1)

theorem P2720259556925764307.correct : P2720259556925764307.Spec := by
  intro n
  simp only [A113957, Nat.add_sub_cancel]

end A113957

/-! ## A113957.P7139345973573574214

`∑{d}[n+1, #%lcm(7, #)]`
-/

namespace A113957.P7139345973573574214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d % Nat.lcm 7 d

end

end A113957.P7139345973573574214

namespace A113957

/-- `∑{d}[n+1, #%lcm(7, #)]` -/
def P7139345973573574214.Spec : Prop :=
  ∀ n, (P7139345973573574214.a n : ℤ) = A113957 (n + 1)

end A113957

/-! ## A113957.P18163499294529999783

`A028594(n+1)/4`
-/

namespace A113957.P18163499294529999783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028594 (n + 1) : ℚ) / 4

end

end A113957.P18163499294529999783

namespace A113957

/-- `A028594(n+1)/4` -/
def P18163499294529999783.Spec : Prop :=
  ∀ n, P18163499294529999783.a n = (A113957 (n + 1) : ℚ)

end A113957

/-! ## A113957.P12997956632456641258

`∑{d}[A242603(n+1), #]`
-/

namespace A113957.P12997956632456641258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242603 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A113957.P12997956632456641258

namespace A113957

/-- `∑{d}[A242603(n+1), #]` -/
def P12997956632456641258.Spec : Prop :=
  ∀ n, (P12997956632456641258.a n : ℤ) = A113957 (n + 1)

end A113957

/-! ## A113957.P3527883952316874000

`A001065((n+1)/7^val(n+1, 7))+(n+1)/7^val(n+1, 7)`
-/

namespace A113957.P3527883952316874000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001065 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (7 ^ SequenceMachineLib.valuation (n + 1) 7 : ℚ))).toNat : ℚ) + (n + 1 : ℚ) / (7 ^ SequenceMachineLib.valuation (n + 1) 7 : ℚ)

end

end A113957.P3527883952316874000

namespace A113957

/-- `A001065((n+1)/7^val(n+1, 7))+(n+1)/7^val(n+1, 7)` -/
def P3527883952316874000.Spec : Prop :=
  ∀ n, P3527883952316874000.a n = (A113957 (n + 1) : ℚ)

end A113957

/-! ## A113957.P17757291261478277450

`A000203(A242603(n+1))`
-/

namespace A113957.P17757291261478277450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A242603 (n + 1)).toNat

end

end A113957.P17757291261478277450

namespace A113957

/-- `A000203(A242603(n+1))` -/
def P17757291261478277450.Spec : Prop :=
  ∀ n, P17757291261478277450.a n = A113957 (n + 1)

end A113957

/-! ## A113957.P15284318430175204094

`A283078(n+1)-A319527(n+1)`
-/

namespace A113957.P15284318430175204094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283078 (n + 1) - A319527 (n + 1)

end

end A113957.P15284318430175204094

namespace A113957

/-- `A283078(n+1)-A319527(n+1)` -/
def P15284318430175204094.Spec : Prop :=
  ∀ n, P15284318430175204094.a n = A113957 (n + 1)

end A113957

/-! ## A113957.P1454590649537893182

`A000203(n+1)/A088842(n+1)`
-/

namespace A113957.P1454590649537893182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A088842 (n + 1) : ℚ)

end

end A113957.P1454590649537893182

namespace A113957

/-- `A000203(n+1)/A088842(n+1)` -/
def P1454590649537893182.Spec : Prop :=
  ∀ n, P1454590649537893182.a n = (A113957 (n + 1) : ℚ)

end A113957

/-! ## A113957.P7190394735437515546

`A000203((n+1)/A268354(n+1))`
-/

namespace A113957.P7190394735437515546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A268354 (n + 1) : ℚ))).toNat

end

end A113957.P7190394735437515546

namespace A113957

/-- `A000203((n+1)/A268354(n+1))` -/
def P7190394735437515546.Spec : Prop :=
  ∀ n, P7190394735437515546.a n = A113957 (n + 1)

end A113957

/-! ## A113957.P5372839363314206266

`A283078(n+1)/A088841(n+1)`
-/

namespace A113957.P5372839363314206266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283078 (n + 1) : ℚ) / (A088841 (n + 1) : ℚ)

end

end A113957.P5372839363314206266

namespace A113957

/-- `A283078(n+1)/A088841(n+1)` -/
def P5372839363314206266.Spec : Prop :=
  ∀ n, P5372839363314206266.a n = (A113957 (n + 1) : ℚ)

end A113957

/-! ## A113957.P5506658577530061914

`gcd(A000203(n+1), A283078(n+1))`
-/

namespace A113957.P5506658577530061914
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A283078 (n + 1))

end

end A113957.P5506658577530061914

namespace A113957

/-- `gcd(A000203(n+1), A283078(n+1))` -/
def P5506658577530061914.Spec : Prop :=
  ∀ n, (P5506658577530061914.a n : ℤ) = A113957 (n + 1)

end A113957

/-! ## A113957.P7764045958491652623

`A283078(n+1)/A283078(A268354(n+1))`
-/

namespace A113957.P7764045958491652623
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283078 (n + 1) : ℚ) / (A283078 (A268354 (n + 1)).toNat : ℚ)

end

end A113957.P7764045958491652623

namespace A113957

/-- `A283078(n+1)/A283078(A268354(n+1))` -/
def P7764045958491652623.Spec : Prop :=
  ∀ n, P7764045958491652623.a n = (A113957 (n + 1) : ℚ)

end A113957

/-! ## A113957.P14566120988333071712

`∑{d}[n+1, #*A109720(#)]`
-/

namespace A113957.P14566120988333071712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A109720 d

end

end A113957.P14566120988333071712

namespace A113957

/-- `∑{d}[n+1, #*A109720(#)]` -/
def P14566120988333071712.Spec : Prop :=
  ∀ n, P14566120988333071712.a n = A113957 (n + 1)

end A113957

/-! ## A113957.P7296288704560845642

`A000203(A030106(A030106(n+1)))`
-/

namespace A113957.P7296288704560845642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A030106 (A030106 (n + 1)).toNat).toNat

end

end A113957.P7296288704560845642

namespace A113957

/-- `A000203(A030106(A030106(n+1)))` -/
def P7296288704560845642.Spec : Prop :=
  ∀ n, P7296288704560845642.a n = A113957 (n + 1)

end A113957

/-! ## A113957.P14626767674412587089

`A002265(A028594(n+1))`
-/

namespace A113957.P14626767674412587089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A028594 (n + 1)).toNat

end

end A113957.P14626767674412587089

namespace A113957

/-- `A002265(A028594(n+1))` -/
def P14626767674412587089.Spec : Prop :=
  ∀ n, P14626767674412587089.a n = A113957 (n + 1)

end A113957

/-! ## A113957.P16692226606924060242

`A209456(n+1)/(A002203(n+1)+A002203(n))`
-/

namespace A113957.P16692226606924060242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209456 (n + 1) : ℚ) / (A002203 (n + 1) + A002203 n : ℚ)

end

end A113957.P16692226606924060242

namespace A113957

/-- `A209456(n+1)/(A002203(n+1)+A002203(n))` -/
def P16692226606924060242.Spec : Prop :=
  ∀ n, P16692226606924060242.a n = (A113957 (n + 1) : ℚ)

end A113957

/-!
# A113958: Triangular numbers that can be written as sum of two positive cubes.

The programs for A113958, there is no canonical definition to state claims against.
-/

/-! ## A113958.P5694028549236923739

`∩[C(n+1, 2), A003325(n+1)]`
-/

namespace A113958.P5694028549236923739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113958.P5694028549236923739

/-! ## A113958.P13269265139627521044

`∩[A338667(n+1), C(n+2, 2)]`
-/

namespace A113958.P13269265139627521044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338667 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A113958.P13269265139627521044

/-! ## A113958.P2080464812558706983

`∩[A003325(n+1), A000217(n)]`
-/

namespace A113958.P2080464812558706983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113958.P2080464812558706983

/-! ## A113958.P15641074561323364702

`∩[C(n+2, 2), A024670(n+2)]`
-/

namespace A113958.P15641074561323364702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113958.P15641074561323364702

/-! ## A113958.P3574624874237745371

`∩[A024670(n+1), A000217(n)]`
-/

namespace A113958.P3574624874237745371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A113958.P3574624874237745371

/-!
# A113960: Records in A093903.

The programs for A113960, there is no canonical definition to state claims against.
-/

/-! ## A113960.P16360587311972501374

`record[A093903(n+1)]`
-/

namespace A113960.P16360587311972501374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113960.P16360587311972501374

/-! ## A113960.P794322238509697086

`A093903(A113961(n+1))`
-/

namespace A113960.P794322238509697086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093903 (A113961 (n + 1)).toNat

end

end A113960.P794322238509697086

/-! ## A113960.P794350832854446953

`A028310(record[A093903(Δ[n²]-n)])`
-/

namespace A113960.P794350832854446953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093903 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A113960.P794350832854446953

/-! ## A113960.P6046009943392287966

`record[A093903(A028310(n))]-(2*n)%2`
-/

namespace A113960.P6046009943392287966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093903 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((2 * n % 2 : ℕ) : ℤ)

end

end A113960.P6046009943392287966

/-! ## A113960.P2343357500432294037

`record[A093903(Δ[n²]-n)]%A016958(n)`
-/

namespace A113960.P2343357500432294037
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093903 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A016958 n)

end

end A113960.P2343357500432294037

/-! ## A113960.P8720260739959580309

`record[A093903(A028310(n))]%A016898(n)`
-/

namespace A113960.P8720260739959580309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093903 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A016898 n)

end

end A113960.P8720260739959580309

/-! ## A113960.P11947806658455867312

`record[A093903(A028310(n))]*A000034(2*n)`
-/

namespace A113960.P11947806658455867312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093903 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000034 (2 * n)

end

end A113960.P11947806658455867312

/-!
# A113961: Where records occur in A093903.

The programs for A113961, there is no canonical definition to state claims against.
-/

/-! ## A113961.P7106908608695392046

`record[A093903(n+1)+n+1]-A113960(n+1)`
-/

namespace A113961.P7106908608695392046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093903 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A113960 (n + 1)

end

end A113961.P7106908608695392046

/-! ## A113961.P15177133276746207478

`∑[A001221(A341539(n+2)+A318962(n))]`
-/

namespace A113961.P15177133276746207478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A341539 (n + 2) + A318962 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113961.P15177133276746207478

/-!
# A113963: a(1)=1; for n>1, a(n) is the smallest positive integer not occurring earlier in the sequence where |a(n)-a(n-1)| does not divide (a(n)+a(n-1)).

The programs for A113963, there is no canonical definition to state claims against.
-/

/-! ## A113963.P2494359321928621603

`a(n-1)-A113965(n)` with `a(0)=1`
-/

namespace A113963.P2494359321928621603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A113965 n

end

end A113963.P2494359321928621603

/-! ## A113963.P8629539361477936897

`A113964(n)-a(n-1)` with `a(0)=1`
-/

namespace A113963.P8629539361477936897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A113964 n - a (n - 1)

end

end A113963.P8629539361477936897

/-! ## A113963.P3088133944820909264

`(A113965(n+1)+A113964(n+1))/2`
-/

namespace A113963.P3088133944820909264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113965 (n + 1) + A113964 (n + 1) : ℚ) / 2

end

end A113963.P3088133944820909264

/-! ## A113963.P9217036906393492632

`A004525(A113965(n+1)+A113964(n+1))`
-/

namespace A113963.P9217036906393492632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A113965 (n + 1) + A113964 (n + 1)).toNat

end

end A113963.P9217036906393492632

/-! ## A113963.P9184913603613193775

`A004526(A113965(n+1)+A113964(n+1))`
-/

namespace A113963.P9184913603613193775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A113965 (n + 1) + A113964 (n + 1)).toNat

end

end A113963.P9184913603613193775

/-! ## A113963.P2851235436262633979

`A006370(A113965(n+1)+A113964(n+1))`
-/

namespace A113963.P2851235436262633979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A113965 (n + 1) + A113964 (n + 1)).toNat

end

end A113963.P2851235436262633979

/-! ## A113963.P9888292770247946937

`A026741(A113965(n+1)+A113964(n+1))`
-/

namespace A113963.P9888292770247946937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A113965 (n + 1) + A113964 (n + 1)).toNat

end

end A113963.P9888292770247946937

/-! ## A113963.P5798453109950415969

`A032742(A113965(n+1)+A113964(n+1))`
-/

namespace A113963.P5798453109950415969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A113965 (n + 1) + A113964 (n + 1)).toNat

end

end A113963.P5798453109950415969

/-! ## A113963.P8288071088341036559

`-A001057(A113965(n+1)+A113964(n+1))`
-/

namespace A113963.P8288071088341036559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001057 (A113965 (n + 1) + A113964 (n + 1)).toNat

end

end A113963.P8288071088341036559

/-! ## A113963.P6525929181663442588

`A001057(A113964(n+1)+A113965(n+1)-1)`
-/

namespace A113963.P6525929181663442588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A113964 (n + 1) + (A113965 (n + 1) - 1)).toNat

end

end A113963.P6525929181663442588

/-!
# A113964: a(n) = (A113963(n)) + (A113963(n+1)).

The programs for A113964, there is no canonical definition to state claims against.
-/

/-! ## A113964.P11040238247355695728

`A113963(n+1)+A113963(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113964.P11040238247355695728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113963 (n + 1) + A113963 (n + 2)

end

end A113964.P11040238247355695728

/-! ## A113964.P16331659293285907175

`a(n-1)-A113965(n)-A113965(n+1)` with `a(0)=5`
-/

namespace A113964.P16331659293285907175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) - A113965 n - A113965 (n + 1)

end

end A113964.P16331659293285907175

/-!
# A113965: a(n) = (A113963(n)) - (A113963(n+1)).

The programs for A113965, there is no canonical definition to state claims against.
-/

/-! ## A113965.P6854805774372766709

`A113963(n+1)-A113963(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113965.P6854805774372766709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113963 (n + 1) - A113963 (n + 2)

end

end A113965.P6854805774372766709

/-! ## A113965.P9646887030675184729

`-Δ[A113964(n)-a(n-1)]` with `a(0)=1`
-/

namespace A113965.P9646887030675184729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A113964 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A113965.P9646887030675184729

/-! ## A113965.P13423254071900267570

`Δ[-A113963(n+1)]`
-/

namespace A113965.P13423254071900267570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A113963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113965.P13423254071900267570

/-! ## A113965.P8376336914278000260

`Δ[A001057(2*A113963(n+1))]`
-/

namespace A113965.P8376336914278000260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * A113963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113965.P8376336914278000260

/-! ## A113965.P17594161578974672187

`Δ[A001057(A113963(n+1)+A113963(n+1))]`
-/

namespace A113965.P17594161578974672187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A113963 (n + 1) + A113963 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113965.P17594161578974672187

/-!
# A113966: a(1)=1; for n>1, a(n) is the smallest positive integer not occurring earlier in the sequence such that |a(n)-a(n-1)| does not divide a(n).

The programs for A113966, there is no canonical definition to state claims against.
-/

/-! ## A113966.P8901724399369908269

`a(n-1)-A113967(n)` with `a(0)=1`
-/

namespace A113966.P8901724399369908269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A113967 n

end

end A113966.P8901724399369908269

/-! ## A113966.P8064276951420324837

`A113967(n+1)+1-∑[A113967(n+1)]`
-/

namespace A113966.P8064276951420324837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113967 (n + 1) + (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A113966.P8064276951420324837

/-!
# A113967: A113966(n) - A113966(n+1).

The programs for A113967, there is no canonical definition to state claims against.
-/

/-! ## A113967.P14626802789680535212

`A113966(n+1)-A113966(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A113967.P14626802789680535212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113966 (n + 1) - A113966 (n + 2)

end

end A113967.P14626802789680535212

/-! ## A113967.P7466510297228142003

`Δ[-A113966(n+1)]`
-/

namespace A113967.P7466510297228142003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A113966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113967.P7466510297228142003

/-! ## A113967.P478595076673565334

`Δ[A001478(A113966(n+1)+1)]`
-/

namespace A113967.P478595076673565334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (A113966 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113967.P478595076673565334

/-! ## A113967.P77218776024109325

`Δ[A001489(A113966(n+1)+1)]`
-/

namespace A113967.P77218776024109325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (A113966 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113967.P77218776024109325

/-! ## A113967.P10198641374027182025

`Δ[A001057(2*A113966(n+1))]`
-/

namespace A113967.P10198641374027182025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * A113966 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113967.P10198641374027182025

/-!
# A113968: a(0) = 0 and a(n) = (5*(-4)^n + 16*(-1)^n + 9*4^n)/240 for n >= 1.

The programs for A113968, the canonical program `A113968.P9224540027069494956` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113968 has offset 0).

The definition of A113968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113968.P9224540027069494956

`16*a(n-2)-(-1)^n` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113968

/-- `16*a(n-2)-(-1)^n` -/
def P9224540027069494956.Spec : Prop :=
  ∀ n, P9224540027069494956.a n = A113968 n

theorem P9224540027069494956.correct : P9224540027069494956.Spec := by
  intro n
  simp only [A113968]

end A113968

/-! ## A113968.P6802923223489034859

`A008676(Δ[record[A009545(n)]])`
-/

namespace A113968.P6802923223489034859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (f1 (n + 1) - f1 n).toNat

end

end A113968.P6802923223489034859

namespace A113968

/-- `A008676(Δ[record[A009545(n)]])` -/
def P6802923223489034859.Spec : Prop :=
  ∀ n, P6802923223489034859.a n = A113968 n

end A113968

/-! ## A113968.P6286376668629910375

`Δ[A054900(record[A009545(n)])]`
-/

namespace A113968.P6286376668629910375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054900 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113968.P6286376668629910375

namespace A113968

/-- `Δ[A054900(record[A009545(n)])]` -/
def P6286376668629910375.Spec : Prop :=
  ∀ n, P6286376668629910375.a n = A113968 n

end A113968

/-!
# A113972: Define b(0)=28, b(n+1)=2*b(n)+1; sequence gives largest prime factor of b(n).

The programs for A113972, the canonical program `A113972.P16992597825504816071` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113972 has offset 0).

The definition of A113972 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A113972.P16992597825504816071

`A006530(29*2^n-1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A113972

/-- `A006530(29*2^n-1)` -/
def P16992597825504816071.Spec : Prop :=
  ∀ n, P16992597825504816071.a n = A113972 n

theorem P16992597825504816071.correct : P16992597825504816071.Spec := by
  intro n
  simp only [A113972]

end A113972

/-! ## A113972.P9745290755944908737

`A034699(eq[28, A003958(n+1)])`
-/

namespace A113972.P9745290755944908737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  28

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113972.P9745290755944908737

namespace A113972

/-- `A034699(eq[28, A003958(n+1)])` -/
def P9745290755944908737.Spec : Prop :=
  ∀ n, P9745290755944908737.a n = A113972 n

end A113972

/-! ## A113972.P15252408778558761129

`A034699(eq[29, A000265(n+1)])`
-/

namespace A113972.P15252408778558761129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  29

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113972.P15252408778558761129

namespace A113972

/-- `A034699(eq[29, A000265(n+1)])` -/
def P15252408778558761129.Spec : Prop :=
  ∀ n, P15252408778558761129.a n = A113972 n

end A113972

/-!
# A113973: Expansion of phi(x^3)^3/phi(x) where phi() is a Ramanujan theta function.

The programs for A113973, there is no canonical definition to state claims against.
-/

/-! ## A113973.P14313803596788523072

`(-1)^n*A123330(n)`
-/

namespace A113973.P14313803596788523072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A123330 n

end

end A113973.P14313803596788523072

/-! ## A113973.P1353931208790257913

`A193514(n)/A057079(n)`
-/

namespace A113973.P1353931208790257913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193514 n : ℚ) / (A057079 n : ℚ)

end

end A113973.P1353931208790257913

/-! ## A113973.P11624721438885742014

`A123330(n)/A062157(n+1)`
-/

namespace A113973.P11624721438885742014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123330 n : ℚ) / (A062157 (n + 1) : ℚ)

end

end A113973.P11624721438885742014

/-! ## A113973.P11752106169427185913

`A123330(n)+A253625(n)-A107760(n)`
-/

namespace A113973.P11752106169427185913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123330 n + (A253625 n - A107760 n)

end

end A113973.P11752106169427185913

/-! ## A113973.P15856459534520575368

`A123330(n)-A014707(2*n)*A123330(2*n)`
-/

namespace A113973.P15856459534520575368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123330 n - A014707 (2 * n) * A123330 (2 * n)

end

end A113973.P15856459534520575368

/-! ## A113973.P16917642016598523258

`A205969(n)/A324969(n+1)`
-/

namespace A113973.P16917642016598523258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205969 n : ℚ) / (A324969 (n + 1) : ℚ)

end

end A113973.P16917642016598523258

/-! ## A113973.P349820441339303009

`A034896(n)/A205971(n)*A205969(n)`
-/

namespace A113973.P349820441339303009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034896 n : ℚ) / (A205971 n : ℚ) * (A205969 n : ℚ)

end

end A113973.P349820441339303009

/-! ## A113973.P6477941231332885434

`A008655(n)/A205968(n)*A205969(n)`
-/

namespace A113973.P6477941231332885434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008655 n : ℚ) / (A205968 n : ℚ) * (A205969 n : ℚ)

end

end A113973.P6477941231332885434

/-! ## A113973.P16295828304260518929

`A209449(n)/A215928(n)`
-/

namespace A113973.P16295828304260518929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209449 n : ℚ) / (A215928 n : ℚ)

end

end A113973.P16295828304260518929

/-! ## A113973.P17750613463182560096

`A209449(n)/gcd(A000129(n), A209449(n))`
-/

namespace A113973.P17750613463182560096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209449 n : ℚ) / (Int.gcd (A000129 n) (A209449 n) : ℚ)

end

end A113973.P17750613463182560096

/-! ## A113973.P14018995291565970187

`A008655(n)/A209448(n)*A209449(n)`
-/

namespace A113973.P14018995291565970187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008655 n : ℚ) / (A209448 n : ℚ) * (A209449 n : ℚ)

end

end A113973.P14018995291565970187

/-!
# A113974: Expansion of (1-phi(x^3)^3/phi(x))/2 where phi() is a Ramanujan theta function.

The programs for A113974, the canonical program `A113974.P1614566940091252666` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113974 has offset 1).

The definition of A113974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1591 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113974.P1614566940091252666

`A033999(n)*A123331(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A113974

/-- `A033999(n)*A123331(n+1)` -/
def P1614566940091252666.Spec : Prop :=
  ∀ n, P1614566940091252666.a n = A113974 (n + 1)

theorem P1614566940091252666.correct : P1614566940091252666.Spec := by
  intro n
  simp only [A113974, Nat.add_sub_cancel]

end A113974

/-! ## A113974.P17046822078493891372

`A056832(n+1)*A137608(n+1)`
-/

namespace A113974.P17046822078493891372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (n + 1) * A137608 (n + 1)

end

end A113974.P17046822078493891372

namespace A113974

/-- `A056832(n+1)*A137608(n+1)` -/
def P17046822078493891372.Spec : Prop :=
  ∀ n, P17046822078493891372.a n = A113974 (n + 1)

end A113974

/-! ## A113974.P3587897194415769469

`A060236(n+1)*A137608(n+1)`
-/

namespace A113974.P3587897194415769469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060236 (n + 1) * A137608 (n + 1)

end

end A113974.P3587897194415769469

namespace A113974

/-- `A060236(n+1)*A137608(n+1)` -/
def P3587897194415769469.Spec : Prop :=
  ∀ n, P3587897194415769469.a n = A113974 (n + 1)

end A113974

/-! ## A113974.P11128889504351511571

`A093829(n+1)*A105931(n+1)`
-/

namespace A113974.P11128889504351511571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (n + 1) * A105931 (n + 1)

end

end A113974.P11128889504351511571

namespace A113974

/-- `A093829(n+1)*A105931(n+1)` -/
def P11128889504351511571.Spec : Prop :=
  ∀ n, P11128889504351511571.a n = A113974 (n + 1)

end A113974

/-! ## A113974.P6232148258416705095

`A113661(n+1)*A309873(n+1)`
-/

namespace A113974.P6232148258416705095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113661 (n + 1) * A309873 (n + 1)

end

end A113974.P6232148258416705095

namespace A113974

/-- `A113661(n+1)*A309873(n+1)` -/
def P6232148258416705095.Spec : Prop :=
  ∀ n, P6232148258416705095.a n = A113974 (n + 1)

end A113974

/-! ## A113974.P6498210682889497530

`A113661(n+1)*A343785(n+1)`
-/

namespace A113974.P6498210682889497530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113661 (n + 1) * A343785 (n + 1)

end

end A113974.P6498210682889497530

namespace A113974

/-- `A113661(n+1)*A343785(n+1)` -/
def P6498210682889497530.Spec : Prop :=
  ∀ n, P6498210682889497530.a n = A113974 (n + 1)

end A113974

/-! ## A113974.P9824855735060023882

`A137608(n+1)*A390692(n+1)`
-/

namespace A113974.P9824855735060023882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137608 (n + 1) * A390692 (n + 1)

end

end A113974.P9824855735060023882

namespace A113974

/-- `A137608(n+1)*A390692(n+1)` -/
def P9824855735060023882.Spec : Prop :=
  ∀ n, P9824855735060023882.a n = A113974 (n + 1)

end A113974

/-! ## A113974.P10348839808254233324

`A113973(n+1)/2-A113973(n+1)`
-/

namespace A113974.P10348839808254233324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113973 (n + 1) : ℚ) / 2 - (A113973 (n + 1) : ℚ)

end

end A113974.P10348839808254233324

namespace A113974

/-- `A113973(n+1)/2-A113973(n+1)` -/
def P10348839808254233324.Spec : Prop :=
  ∀ n, P10348839808254233324.a n = (A113974 (n + 1) : ℚ)

end A113974

/-! ## A113974.P9627963315757467971

`A123331(n+1)*A163805(2*n+3)`
-/

namespace A113974.P9627963315757467971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123331 (n + 1) * A163805 (2 * n + 3)

end

end A113974.P9627963315757467971

namespace A113974

/-- `A123331(n+1)*A163805(2*n+3)` -/
def P9627963315757467971.Spec : Prop :=
  ∀ n, P9627963315757467971.a n = A113974 (n + 1)

end A113974

/-! ## A113974.P13897766470569575332

`(2-A056832(n+1)²)*A113447(n+1)`
-/

namespace A113974.P13897766470569575332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A056832 (n + 1) ^ 2) * A113447 (n + 1)

end

end A113974.P13897766470569575332

namespace A113974

/-- `(2-A056832(n+1)²)*A113447(n+1)` -/
def P13897766470569575332.Spec : Prop :=
  ∀ n, P13897766470569575332.a n = A113974 (n + 1)

end A113974

/-! ## A113974.P17212142581820762946

`(2-A060236(n+1)²)*A113447(n+1)`
-/

namespace A113974.P17212142581820762946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A060236 (n + 1) ^ 2) * A113447 (n + 1)

end

end A113974.P17212142581820762946

namespace A113974

/-- `(2-A060236(n+1)²)*A113447(n+1)` -/
def P17212142581820762946.Spec : Prop :=
  ∀ n, P17212142581820762946.a n = A113974 (n + 1)

end A113974

/-! ## A113974.P14336254079685007244

`(2-A105931(n+1)²)*A113447(n+1)`
-/

namespace A113974.P14336254079685007244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A105931 (n + 1) ^ 2) * A113447 (n + 1)

end

end A113974.P14336254079685007244

namespace A113974

/-- `(2-A105931(n+1)²)*A113447(n+1)` -/
def P14336254079685007244.Spec : Prop :=
  ∀ n, P14336254079685007244.a n = A113974 (n + 1)

end A113974

/-! ## A113974.P15447957080415647476

`lcm(A033999(n), A122860(n+1))*A033999(n)`
-/

namespace A113974.P15447957080415647476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A033999 n) (A122860 (n + 1)) : ℤ) * A033999 n

end

end A113974.P15447957080415647476

namespace A113974

/-- `lcm(A033999(n), A122860(n+1))*A033999(n)` -/
def P15447957080415647476.Spec : Prop :=
  ∀ n, P15447957080415647476.a n = A113974 (n + 1)

end A113974

/-!
# A113975: Absolute value of the n-th coefficient in the expansion of the generating function (2-7*x-x^2) / (1-x).

The programs for A113975, the canonical program `A113975.P8092293115311028308` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113975 has offset 0).

The definition of A113975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113975.P8092293115311028308

`a(n-1)` with `a(0)=2, a(1)=5, a(2)=6`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113975

/-- `a(n-1)` -/
def P8092293115311028308.Spec : Prop :=
  ∀ n, (P8092293115311028308.a n : ℤ) = A113975 n

theorem P8092293115311028308.correct : P8092293115311028308.Spec := by
  intro n
  simp only [A113975]

end A113975

/-!
# A113978: a(n)=Sum(d|n)(10^(n-d)).

The programs for A113978, the canonical program `A113978.P14377496268802651524` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113978 has offset 0).

The definition of A113978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113978.P14377496268802651524

`∑{d}[n+1, 10^(n+1-#)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113978

/-- `∑{d}[n+1, 10^(n+1-#)]` -/
def P14377496268802651524.Spec : Prop :=
  ∀ n, P14377496268802651524.a n = (A113978 n : ℚ)

end A113978

/-! ## A113978.P16210413747738267310

`A007088(A074854(n+1))`
-/

namespace A113978.P16210413747738267310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A074854 (n + 1)).toNat

end

end A113978.P16210413747738267310

namespace A113978

/-- `A007088(A074854(n+1))` -/
def P16210413747738267310.Spec : Prop :=
  ∀ n, P16210413747738267310.a n = A113978 n

end A113978

/-! ## A113978.P5460958152472961183

`A007088(Δ[A178965(n)]-A178965(n))`
-/

namespace A113978.P5460958152472961183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178965 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (f1 (n + 1) - f1 n - A178965 n).toNat

end

end A113978.P5460958152472961183

namespace A113978

/-- `A007088(Δ[A178965(n)]-A178965(n))` -/
def P5460958152472961183.Spec : Prop :=
  ∀ n, P5460958152472961183.a n = A113978 n

end A113978

/-! ## A113978.P6528120933006641023

`A305989(∑{d}[n+1, 2^(#-1)])`
-/

namespace A113978.P6528120933006641023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ))).toNat

end

end A113978.P6528120933006641023

namespace A113978

/-- `A305989(∑{d}[n+1, 2^(#-1)])` -/
def P6528120933006641023.Spec : Prop :=
  ∀ n, P6528120933006641023.a n = A113978 n

end A113978

/-! ## A113978.P5105005755372256319

`A305989(record[∑{d}[n-1, 2^(#-1)]])`
-/

namespace A113978.P5105005755372256319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A113978.P5105005755372256319

namespace A113978

/-- `A305989(record[∑{d}[n-1, 2^(#-1)]])` -/
def P5105005755372256319.Spec : Prop :=
  ∀ n, P5105005755372256319.a n = A113978 n

end A113978

/-!
# A113979: Number of compositions of n with an even number of 1's.

The programs for A113979, the canonical program `A113979.P12179664378347389896` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113979 has offset 0).

The definition of A113979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113979.P6023642388106884257

`ogf((1-2x+x^3)/(1-2x-2x^2+4x^3))`
-/

namespace A113979.P6023642388106884257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 0, 1] [1, -2, -2, 4] n

end

end A113979.P6023642388106884257

namespace A113979

/-- `ogf((1-2x+x^3)/(1-2x-2x^2+4x^3))` -/
def P6023642388106884257.Spec : Prop :=
  ∀ n, P6023642388106884257.a n = A113979 n

end A113979

/-! ## A113979.P16839254092046781383

`2^floor(n/2)+2^(n-1)-a(n-1)-A290075(n+1)` with `a(0)=1`
-/

namespace A113979.P16839254092046781383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)) - (A290075 (n + 1) : ℚ)

end

end A113979.P16839254092046781383

namespace A113979

/-- `2^floor(n/2)+2^(n-1)-a(n-1)-A290075(n+1)` -/
def P16839254092046781383.Spec : Prop :=
  ∀ n, P16839254092046781383.a n = (A113979 n : ℚ)

end A113979

/-! ## A113979.P12179664378347389896

`Δ[Δ[A056326(A028310(n))]]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A113979

/-- `Δ[Δ[A056326(A028310(n))]]` -/
def P12179664378347389896.Spec : Prop :=
  ∀ n, P12179664378347389896.a n = A113979 n

theorem P12179664378347389896.correct : P12179664378347389896.Spec := by
  intro n
  simp only [A113979]

end A113979

/-! ## A113979.P12145076851145153725

`Δ[Δ[6*a(n-2)-8*a(n-4)]]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=3, a(4)=6`
-/

namespace A113979.P12145076851145153725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 3, 6] fun n f2 =>
  6 * f2 (n - 2) - 8 * f2 (n - 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113979.P12145076851145153725

namespace A113979

/-- `Δ[Δ[6*a(n-2)-8*a(n-4)]]` -/
def P12145076851145153725.Spec : Prop :=
  ∀ n, P12145076851145153725.a n = A113979 n

end A113979

/-! ## A113979.P6535179917165501422

`Δ[Δ[A225910(A000124(n))]]`
-/

namespace A113979.P6535179917165501422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225910 (A000124 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113979.P6535179917165501422

namespace A113979

/-- `Δ[Δ[A225910(A000124(n))]]` -/
def P6535179917165501422.Spec : Prop :=
  ∀ n, P6535179917165501422.a n = A113979 n

end A113979

/-!
# A113980: Number of compositions of n with an odd number of 1's.

The programs for A113980, the canonical program `A113980.P13529792398552718209` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113980 has offset 1).

The definition of A113980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113980.P11631493466401568091

`ogf((1-2x+x^2)/(1-2x-2x^2+4x^3))`
-/

namespace A113980.P11631493466401568091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -2, -2, 4] n

end

end A113980.P11631493466401568091

namespace A113980

/-- `ogf((1-2x+x^2)/(1-2x-2x^2+4x^3))` -/
def P11631493466401568091.Spec : Prop :=
  ∀ n, P11631493466401568091.a n = A113980 (n + 1)

end A113980

/-! ## A113980.P15151616337931517123

`2^(n-2)+2*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A113980.P15151616337931517123
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + 2 * a (n - 2)

end

end A113980.P15151616337931517123

namespace A113980

/-- `2^(n-2)+2*a(n-2)` -/
def P15151616337931517123.Spec : Prop :=
  ∀ n, P15151616337931517123.a n = (A113980 (n + 1) : ℚ)

end A113980

/-! ## A113980.P8832358342303222383

`a(n-2)+a(n-2)+2^(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A113980.P8832358342303222383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (n - 2) + (a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A113980.P8832358342303222383

namespace A113980

/-- `a(n-2)+a(n-2)+2^(n-2)` -/
def P8832358342303222383.Spec : Prop :=
  ∀ n, P8832358342303222383.a n = (A113980 (n + 1) : ℚ)

end A113980

/-! ## A113980.P13529792398552718209

`A005418(n+1)-Δ[A052551(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A113980

/-- `A005418(n+1)-Δ[A052551(n)]` -/
def P13529792398552718209.Spec : Prop :=
  ∀ n, P13529792398552718209.a n = A113980 (n + 1)

theorem P13529792398552718209.correct : P13529792398552718209.Spec := by
  intro n
  simp only [A113980, Nat.add_sub_cancel]

end A113980

/-! ## A113980.P5424660420930489685

`A005418(n+1)-A077957(n+1)`
-/

namespace A113980.P5424660420930489685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1) - A077957 (n + 1)

end

end A113980.P5424660420930489685

namespace A113980

/-- `A005418(n+1)-A077957(n+1)` -/
def P5424660420930489685.Spec : Prop :=
  ∀ n, P5424660420930489685.a n = A113980 (n + 1)

end A113980

/-! ## A113980.P8145554997944422844

`A005418(n+1)-A131575(n+2)`
-/

namespace A113980.P8145554997944422844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1) - A131575 (n + 2)

end

end A113980.P8145554997944422844

namespace A113980

/-- `A005418(n+1)-A131575(n+2)` -/
def P8145554997944422844.Spec : Prop :=
  ∀ n, P8145554997944422844.a n = A113980 (n + 1)

end A113980

/-! ## A113980.P1089012745065287229

`A005418(n+1)+A052551(n)-A052551(n+1)`
-/

namespace A113980.P1089012745065287229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1) + (A052551 n - A052551 (n + 1))

end

end A113980.P1089012745065287229

namespace A113980

/-- `A005418(n+1)+A052551(n)-A052551(n+1)` -/
def P1089012745065287229.Spec : Prop :=
  ∀ n, P1089012745065287229.a n = A113980 (n + 1)

theorem P1089012745065287229.correct : P1089012745065287229.Spec := by
  intro n
  simp only [A113980, Nat.add_sub_cancel, A113980.P1089012745065287229.a, A113980.P13529792398552718209.f1, A113980.P13529792398552718209.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A113980

/-! ## A113980.P15742809340695077526

`A005418(n+1)+A016116(n)-A164073(n+1)`
-/

namespace A113980.P15742809340695077526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1) + (A016116 n - A164073 (n + 1))

end

end A113980.P15742809340695077526

namespace A113980

/-- `A005418(n+1)+A016116(n)-A164073(n+1)` -/
def P15742809340695077526.Spec : Prop :=
  ∀ n, P15742809340695077526.a n = A113980 (n + 1)

end A113980

/-! ## A113980.P798857418655173827

`A005418(n+1)-A000035(n)*A016116(n+1)`
-/

namespace A113980.P798857418655173827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1) - A000035 n * A016116 (n + 1)

end

end A113980.P798857418655173827

namespace A113980

/-- `A005418(n+1)-A000035(n)*A016116(n+1)` -/
def P798857418655173827.Spec : Prop :=
  ∀ n, P798857418655173827.a n = A113980 (n + 1)

end A113980

/-! ## A113980.P10065418440993326308

`A005418(n+1)-A000035(n)*A056503(n+2)`
-/

namespace A113980.P10065418440993326308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1) - A000035 n * A056503 (n + 2)

end

end A113980.P10065418440993326308

namespace A113980

/-- `A005418(n+1)-A000035(n)*A056503(n+2)` -/
def P10065418440993326308.Spec : Prop :=
  ∀ n, P10065418440993326308.a n = A113980 (n + 1)

end A113980

/-! ## A113980.P1739063655640628802

`A005418(n+1)+A056453(n+1)-A056453(n+2)`
-/

namespace A113980.P1739063655640628802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1) + (A056453 (n + 1) - A056453 (n + 2))

end

end A113980.P1739063655640628802

namespace A113980

/-- `A005418(n+1)+A056453(n+1)-A056453(n+2)` -/
def P1739063655640628802.Spec : Prop :=
  ∀ n, P1739063655640628802.a n = A113980 (n + 1)

end A113980

/-! ## A113980.P12613587100219449585

`A158780(2*n+1)+A131575(n+1)-A158780(n+1)`
-/

namespace A113980.P12613587100219449585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (2 * n + 1) + (A131575 (n + 1) - A158780 (n + 1))

end

end A113980.P12613587100219449585

namespace A113980

/-- `A158780(2*n+1)+A131575(n+1)-A158780(n+1)` -/
def P12613587100219449585.Spec : Prop :=
  ∀ n, P12613587100219449585.a n = A113980 (n + 1)

end A113980

/-! ## A113980.P1240943246666148029

`Δ[A007179(n)]`
-/

namespace A113980.P1240943246666148029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113980.P1240943246666148029

namespace A113980

/-- `Δ[A007179(n)]` -/
def P1240943246666148029.Spec : Prop :=
  ∀ n, P1240943246666148029.a n = A113980 (n + 1)

end A113980

/-! ## A113980.P17290855097622503981

`2^n-A113979(n+1)`
-/

namespace A113980.P17290855097622503981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A113979 (n + 1)

end

end A113980.P17290855097622503981

namespace A113980

/-- `2^n-A113979(n+1)` -/
def P17290855097622503981.Spec : Prop :=
  ∀ n, P17290855097622503981.a n = A113980 (n + 1)

end A113980

/-! ## A113980.P1391747772767394283

`A007179(n+1)-A007179(n)`
-/

namespace A113980.P1391747772767394283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007179 (n + 1) - A007179 n

end

end A113980.P1391747772767394283

namespace A113980

/-- `A007179(n+1)-A007179(n)` -/
def P1391747772767394283.Spec : Prop :=
  ∀ n, P1391747772767394283.a n = A113980 (n + 1)

end A113980

/-! ## A113980.P17133293264503673466

`A052957(n)-A005418(n+1)`
-/

namespace A113980.P17133293264503673466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052957 n - A005418 (n + 1)

end

end A113980.P17133293264503673466

namespace A113980

/-- `A052957(n)-A005418(n+1)` -/
def P17133293264503673466.Spec : Prop :=
  ∀ n, P17133293264503673466.a n = A113980 (n + 1)

end A113980

/-! ## A113980.P14629348225701506922

`(A152166(n)+A000079(n))/2`
-/

namespace A113980.P14629348225701506922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152166 n + A000079 n : ℚ) / 2

end

end A113980.P14629348225701506922

namespace A113980

/-- `(A152166(n)+A000079(n))/2` -/
def P14629348225701506922.Spec : Prop :=
  ∀ n, P14629348225701506922.a n = (A113980 (n + 1) : ℚ)

end A113980

/-! ## A113980.P10317146951121751692

`A077957(n)+A233411(n)/2`
-/

namespace A113980.P10317146951121751692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077957 n : ℚ) + (A233411 n : ℚ) / 2

end

end A113980.P10317146951121751692

namespace A113980

/-- `A077957(n)+A233411(n)/2` -/
def P10317146951121751692.Spec : Prop :=
  ∀ n, P10317146951121751692.a n = (A113980 (n + 1) : ℚ)

end A113980

/-! ## A113980.P12113489775294476820

`Δ[A005418(n+1)-A016116(n)]`
-/

namespace A113980.P12113489775294476820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1) - A016116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113980.P12113489775294476820

namespace A113980

/-- `Δ[A005418(n+1)-A016116(n)]` -/
def P12113489775294476820.Spec : Prop :=
  ∀ n, P12113489775294476820.a n = A113980 (n + 1)

end A113980

/-! ## A113980.P3622941702435382189

`Δ[A014236(n)/2]`
-/

namespace A113980.P3622941702435382189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014236 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113980.P3622941702435382189

namespace A113980

/-- `Δ[A014236(n)/2]` -/
def P3622941702435382189.Spec : Prop :=
  ∀ n, P3622941702435382189.a n = (A113980 (n + 1) : ℚ)

end A113980

/-!
# A113981: a(1)=1. a(n) is smallest positive integer that does not occur earlier in the sequence and is such that d(a(n)) does not equal d(a(n-1)), where d(n) is the number of positive divisors of n.

The programs for A113981, there is no canonical definition to state claims against.
-/

/-! ## A113981.P510018818773839232

`A285007(A285001(n+1))+xor(n, round(n/(n+2)))+1`
-/

namespace A113981.P510018818773839232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (A285001 (n + 1)).toNat + (Int.xor (n : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) / (n + 2 : ℚ))) + 1)

end

end A113981.P510018818773839232

/-! ## A113981.P3279389516345121841

`A285007(A285001(n+1))+A114112(n+1)`
-/

namespace A113981.P3279389516345121841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (A285001 (n + 1)).toNat + A114112 (n + 1)

end

end A113981.P3279389516345121841

/-! ## A113981.P5236544315080296209

`A285007(A285001(n+1))+C(2, A019426(n))+n`
-/

namespace A113981.P5236544315080296209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (A285001 (n + 1)).toNat + (Nat.choose 2 (A019426 n).toNat + n : ℤ)

end

end A113981.P5236544315080296209

/-! ## A113981.P8213599743001188623

`A285007(A285001(n+1))+A181440(A014681(n+1))`
-/

namespace A113981.P8213599743001188623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285007 (A285001 (n + 1)).toNat + A181440 (A014681 (n + 1)).toNat

end

end A113981.P8213599743001188623

/-! ## A113981.P16071055785565956506

`A114112(∑[4^A217156(n+1)])`
-/

namespace A113981.P16071055785565956506
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A217156 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114112 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A113981.P16071055785565956506

/-!
# A113982: d(A113981(n)), where d(n) is the number of positive divisors of n.

The programs for A113982, there is no canonical definition to state claims against.
-/

/-! ## A113982.P9585795769946500815

`A000005(A113981(n+1))`
-/

namespace A113982.P9585795769946500815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A113981 (n + 1)).toNat

end

end A113982.P9585795769946500815

/-! ## A113982.P17547957579969453610

`A112329(4*A113981(n+1))`
-/

namespace A113982.P17547957579969453610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112329 (4 * A113981 (n + 1)).toNat

end

end A113982.P17547957579969453610

/-! ## A113982.P9790418879231384939

`∑{d}[A113981(n+1), A057427(#)]`
-/

namespace A113982.P9790418879231384939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A057427 d

end

end A113982.P9790418879231384939

/-! ## A113982.P7332763808679693115

`∑{d}[A113981(n+1), A236937(A045309(#))]`
-/

namespace A113982.P7332763808679693115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113981 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A236937 (A045309 d).toNat

end

end A113982.P7332763808679693115

/-!
# A113983: Triangle, read by rows, such that T(n,k) = T(n-1,k-1) + [T^2](n-2,k-1) with T(n,0) = T(n,n) = 1 for n>=0, k>=0.

The programs for A113983, there is no canonical definition to state claims against.
-/

/-! ## A113983.P2359267283263552450

`A350364(A061579(n)^A255212(n))+A291883(n+1)`
-/

namespace A113983.P2359267283263552450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350364 (SequenceMachineLib.roundAway ((A061579 n : ℚ) ^ (A255212 n : ℤ))).toNat + A291883 (n + 1)

end

end A113983.P2359267283263552450

/-! ## A113983.P4640135961176788207

`A198792(n)+A057979(A328821(n))`
-/

namespace A113983.P4640135961176788207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198792 n + A057979 (A328821 n).toNat

end

end A113983.P4640135961176788207

/-! ## A113983.P18061593960992516868

`A137512(A179927(n))`
-/

namespace A113983.P18061593960992516868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137512 (A179927 n).toNat

end

end A113983.P18061593960992516868

/-!
# A113984: Column 1 of triangle A113983, also a(n) = [A113983^2](n-1,0) + 1.

The programs for A113984, there is no canonical definition to state claims against.
-/

/-! ## A113984.P10253022038031011719

`A178489(n)+A113988(C(n, 2))`
-/

namespace A113984.P10253022038031011719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n + A113988 (Nat.choose n 2)

end

end A113984.P10253022038031011719

/-! ## A113984.P9468741589419258846

`A113993(A000124(n))+ceil(sin(n)²)`
-/

namespace A113984.P9468741589419258846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113993 (A000124 n).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A113984.P9468741589419258846

/-! ## A113984.P3694661661644441959

`A113988(A161680(n))+(n+2)%(n+1)`
-/

namespace A113984.P3694661661644441959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113988 (A161680 n).toNat + (((n + 2) % (n + 1) : ℕ) : ℤ)

end

end A113984.P3694661661644441959

/-! ## A113984.P13842204855749594232

`A113993(A000124(n))+A057427(n)`
-/

namespace A113984.P13842204855749594232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113993 (A000124 n).toNat + A057427 n

end

end A113984.P13842204855749594232

/-! ## A113984.P6870876222401493971

`A178489(n)+A113993(A000124(n))`
-/

namespace A113984.P6870876222401493971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n + A113993 (A000124 n).toNat

end

end A113984.P6870876222401493971

/-!
# A113985: Column 2 of triangle A113983; also a(n) = A113983(n+1,1) + [A113983^2](n,1).

The programs for A113985, there is no canonical definition to state claims against.
-/

/-! ## A113985.P9085846922337461302

`∑[abs(Δ[A113989(n)])]`
-/

namespace A113985.P9085846922337461302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113989 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113985.P9085846922337461302

/-! ## A113985.P15544647715680124149

`A113989(n+1)-1`
-/

namespace A113985.P15544647715680124149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113989 (n + 1) - 1

end

end A113985.P15544647715680124149

/-! ## A113985.P14607536765439224098

`A113984(n+2)-2`
-/

namespace A113985.P14607536765439224098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113984 (n + 2) - 2

end

end A113985.P14607536765439224098

/-! ## A113985.P9857160863173635597

`2*A113997(n)-1`
-/

namespace A113985.P9857160863173635597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113997 n - 1

end

end A113985.P9857160863173635597

/-! ## A113985.P12834345073490730971

`∑[abs(Δ[A113984(n+1)])]`
-/

namespace A113985.P12834345073490730971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113984 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113985.P12834345073490730971

/-!
# A113986: Column 3 of triangle A113983; also a(n) = A113983(n+2,2) + [A113983^2](n+1,2).

The programs for A113986, there is no canonical definition to state claims against.
-/

/-! ## A113986.P13901642212948655603

`A113983(∑[n+3]+6)`
-/

namespace A113986.P13901642212948655603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113983 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A113986.P13901642212948655603

/-! ## A113986.P7149277550769762282

`record[gcd(A113983(n+4), A321391(n))]`
-/

namespace A113986.P7149277550769762282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113983 (n + 4)) (A321391 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113986.P7149277550769762282

/-! ## A113986.P631656838572273972

`A113983(A167614(n+2))%A022006(n+1)`
-/

namespace A113986.P631656838572273972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113983 (A167614 (n + 2)).toNat) (A022006 (n + 1))

end

end A113986.P631656838572273972

/-!
# A113987: Column 4 of triangle A113983; also a(n) = A113983(n+3,3) + [A113983^2](n+2,3).

The programs for A113987, there is no canonical definition to state claims against.
-/

/-! ## A113987.P10945221389772167624

`A113983(A155212(n)+12)`
-/

namespace A113987.P10945221389772167624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113983 (A155212 n + 12).toNat

end

end A113987.P10945221389772167624

/-! ## A113987.P4566203618755354753

`A113983(eq[4, A002262(n)])`
-/

namespace A113987.P4566203618755354753
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113983 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113987.P4566203618755354753

/-! ## A113987.P15520252672825686961

`A113983(eq[10, A112367(n)])`
-/

namespace A113987.P15520252672825686961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113983 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113987.P15520252672825686961

/-!
# A113988: Triangle, read by rows, equal to the matrix square of A113983.

The programs for A113988, there is no canonical definition to state claims against.
-/

/-! ## A113988.P9353453132009469731

`A258170(A187829(n+1))+A039599(n)`
-/

namespace A113988.P9353453132009469731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258170 (A187829 (n + 1)).toNat + A039599 n

end

end A113988.P9353453132009469731

/-! ## A113988.P15085845923084135329

`A038207(n)+2*A033665(A104219(n))`
-/

namespace A113988.P15085845923084135329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n + 2 * A033665 (A104219 n).toNat

end

end A113988.P15085845923084135329

/-! ## A113988.P5394489954732171477

`A038207(n)+2*A025441(A319503(n))`
-/

namespace A113988.P5394489954732171477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n + 2 * A025441 (A319503 n).toNat

end

end A113988.P5394489954732171477

/-! ## A113988.P9348861614356321022

`A038207(n)+2*A262202(A173758(n))`
-/

namespace A113988.P9348861614356321022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038207 n + 2 * A262202 (A173758 n).toNat

end

end A113988.P9348861614356321022

/-! ## A113988.P1290474202315022236

`or(A008679(A147220(n+1)), A038207(n))`
-/

namespace A113988.P1290474202315022236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008679 (A147220 (n + 1)).toNat) (A038207 n)

end

end A113988.P1290474202315022236

/-!
# A113989: Column 0 of triangle A113988, which is the matrix square of A113983: a(n) = [A113983^2](n,0).

The programs for A113989, there is no canonical definition to state claims against.
-/

/-! ## A113989.P12538452890871941870

`A113984(n+1)-1`
-/

namespace A113989.P12538452890871941870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113984 (n + 1) - 1

end

end A113989.P12538452890871941870

/-! ## A113989.P4957851228256830165

`a(n-2)+A113990(n-2)+2` with `a(0)=1, a(1)=2`
-/

namespace A113989.P4957851228256830165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + A113990 (n - 2) + 2

end

end A113989.P4957851228256830165

/-! ## A113989.P3905121904989575087

`∑[abs(Δ[A113984(n)])]`
-/

namespace A113989.P3905121904989575087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113984 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113989.P3905121904989575087

/-! ## A113989.P2495846506819594892

`∑[A025439(n)+Δ[A113984(n)]]`
-/

namespace A113989.P2495846506819594892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113984 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113989.P2495846506819594892

/-! ## A113989.P2492357087239818950

`∑[A065357(n)²*Δ[A113984(n)]]`
-/

namespace A113989.P2492357087239818950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113984 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065357 n ^ 2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A113989.P2492357087239818950

/-!
# A113990: Column 1 of triangle A113988, which is the matrix square of A113983: a(n) = [A113983^2](n+1,1).

The programs for A113990, there is no canonical definition to state claims against.
-/

/-! ## A113990.P445992196239632531

`A113985(n+1)-A113984(n+1)`
-/

namespace A113990.P445992196239632531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113985 (n + 1) - A113984 (n + 1)

end

end A113990.P445992196239632531

/-! ## A113990.P3870332011498979776

`A113989(n+2)-(A113989(n)+2)`
-/

namespace A113990.P3870332011498979776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113989 (n + 2) - (A113989 n + 2)

end

end A113990.P3870332011498979776

/-! ## A113990.P17337591027417969847

`A113985(n)+A113994(n)-A113989(n)`
-/

namespace A113990.P17337591027417969847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113985 n + (A113994 n - A113989 n)

end

end A113990.P17337591027417969847

/-! ## A113990.P12423992415723190121

`A113988(∑[n+1]+1)`
-/

namespace A113990.P12423992415723190121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113988 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A113990.P12423992415723190121

/-! ## A113990.P4518667912272771709

`record[(-1)^n*record[A113988(n)]]`
-/

namespace A113990.P4518667912272771709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113988 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113990.P4518667912272771709

/-!
# A113991: Column 2 of triangle A113988, which is the matrix square of A113983: a(n) = [A113983^2](n+2,2).

The programs for A113991, there is no canonical definition to state claims against.
-/

/-! ## A113991.P2764468299262744788

`A113986(n+1)-A113985(n+1)`
-/

namespace A113991.P2764468299262744788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113986 (n + 1) - A113985 (n + 1)

end

end A113991.P2764468299262744788

/-! ## A113991.P7400230345003479375

`A113988(∑[n+2]+3)`
-/

namespace A113991.P7400230345003479375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113988 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A113991.P7400230345003479375

/-! ## A113991.P3540179760136785094

`record[gcd(A113988(n+4), A329074(n))]`
-/

namespace A113991.P3540179760136785094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A113988 (n + 4)) (A329074 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113991.P3540179760136785094

/-! ## A113991.P17315240412637677461

`gcd(floor(1/(n+1)), A113988(A152948(n+4)))`
-/

namespace A113991.P17315240412637677461
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A113988 (A152948 (n + 4)).toNat)

end

end A113991.P17315240412637677461

/-!
# A113992: Column 3 of triangle A113988, which is the matrix square of A113983: a(n) = [A113983^2](n+3,3).

The programs for A113992, there is no canonical definition to state claims against.
-/

/-! ## A113992.P2092170395873325518

`A113987(n+1)-A113986(n+1)`
-/

namespace A113992.P2092170395873325518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113987 (n + 1) - A113986 (n + 1)

end

end A113992.P2092170395873325518

/-! ## A113992.P2847699541103988860

`A113988(C(n+4, 2)+3)`
-/

namespace A113992.P2847699541103988860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113988 (Nat.choose (n + 4) 2 + 3)

end

end A113992.P2847699541103988860

/-! ## A113992.P12462190646467702816

`A113988(A167614(n+2))`
-/

namespace A113992.P12462190646467702816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113988 (A167614 (n + 2)).toNat

end

end A113992.P12462190646467702816

/-!
# A113993: Triangle, read by rows, where column k equals column 0 of A113983^(k+1): T(n,k) = [A113983^(k+1)](n-k,0) for n>=k>=0.

The programs for A113993, there is no canonical definition to state claims against.
-/

/-! ## A113993.P354489637670084170

`A010893(A069777(n))+A009998(n)`
-/

namespace A113993.P354489637670084170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 ((A069777 n).toNat + 13) + A009998 n

end

end A113993.P354489637670084170

/-! ## A113993.P3595417942307207696

`A010893(A091351(n))+A009998(n)`
-/

namespace A113993.P3595417942307207696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 ((A091351 n).toNat + 13) + A009998 n

end

end A113993.P3595417942307207696

/-! ## A113993.P18063906032051854404

`A010893(A125781(n))+A009998(n)`
-/

namespace A113993.P18063906032051854404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 ((A125781 n).toNat + 13) + A009998 n

end

end A113993.P18063906032051854404

/-! ## A113993.P8940747012658690491

`A010893(A213275(n))+A009998(n)`
-/

namespace A113993.P8940747012658690491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 ((A213275 n).toNat + 13) + A009998 n

end

end A113993.P8940747012658690491

/-! ## A113993.P14003541463533847873

`A010893(A227655(n))+A009998(n)`
-/

namespace A113993.P14003541463533847873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010893 ((A227655 n).toNat + 13) + A009998 n

end

end A113993.P14003541463533847873

/-!
# A113994: Column 2 of triangle A113993, also equals column 0 of A113983^3.

The programs for A113994, there is no canonical definition to state claims against.
-/

/-! ## A113994.P5254291134888969002

`Δ[A113985(n)]-1`
-/

namespace A113994.P5254291134888969002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113985 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A113994.P5254291134888969002

/-! ## A113994.P9072389243747181363

`Δ[A113989(n+1)]-1`
-/

namespace A113994.P9072389243747181363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A113994.P9072389243747181363

/-! ## A113994.P13887644109236646656

`A113990(n)-a(n-1)` with `a(0)=1`
-/

namespace A113994.P13887644109236646656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A113990 n - a (n - 1)

end

end A113994.P13887644109236646656

/-! ## A113994.P4470727517813840267

`Δ[A113985(n)+A001489(n)]`
-/

namespace A113994.P4470727517813840267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113985 n + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113994.P4470727517813840267

/-! ## A113994.P1378693999599537399

`A113985(n+1)-A113989(n+1)`
-/

namespace A113994.P1378693999599537399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113985 (n + 1) - A113989 (n + 1)

end

end A113994.P1378693999599537399

/-!
# A113995: Column 3 of triangle A113993, also equals column 0 of A113983^4.

The programs for A113995, there is no canonical definition to state claims against.
-/

/-! ## A113995.P10645761723546260814

`A113986(n+1)-A113994(n+1)`
-/

namespace A113995.P10645761723546260814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113986 (n + 1) - A113994 (n + 1)

end

end A113995.P10645761723546260814

/-! ## A113995.P17735726066913030405

`A113993(∑[n+3]+6)`
-/

namespace A113995.P17735726066913030405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113993 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A113995.P17735726066913030405

/-! ## A113995.P1539505069467515814

`record[A113993(comp[A286235(n+1)])]`
-/

namespace A113995.P1539505069467515814
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286235 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113993 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A113995.P1539505069467515814

/-!
# A113996: Column 4 of triangle A113993, also equals column 0 of A113983^5.

The programs for A113996, there is no canonical definition to state claims against.
-/

/-! ## A113996.P6610773306380453973

`A113987(n+1)-A113995(n+1)`
-/

namespace A113996.P6610773306380453973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113987 (n + 1) - A113995 (n + 1)

end

end A113996.P6610773306380453973

/-! ## A113996.P16326883909384473316

`A113993(A155212(n)+12)`
-/

namespace A113996.P16326883909384473316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113993 (A155212 n + 12).toNat

end

end A113996.P16326883909384473316

/-! ## A113996.P9224547857105436034

`A113993(eq[4, A002262(n)])`
-/

namespace A113996.P9224547857105436034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113993 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A113996.P9224547857105436034

/-!
# A113997: Row sums of triangle A113993, where column k equals column 0 of A113983^(k+1).

The programs for A113997, there is no canonical definition to state claims against.
-/

/-! ## A113997.P10562537125124338802

`ceil(A113985(n)/2)`
-/

namespace A113997.P10562537125124338802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A113985 n : ℚ) / 2⌉

end

end A113997.P10562537125124338802

/-! ## A113997.P11930068535289719127

`A113989(n+1)/2`
-/

namespace A113997.P11930068535289719127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113989 (n + 1) : ℚ) / 2

end

end A113997.P11930068535289719127

/-! ## A113997.P7818989429376555164

`Δ[∑[A113989(n)]/2]`
-/

namespace A113997.P7818989429376555164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113989 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A113997.P7818989429376555164

/-! ## A113997.P12727368945953746065

`floor(A113984(n+2)/2)`
-/

namespace A113997.P12727368945953746065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113984 (n + 2) : ℚ) / 2⌋

end

end A113997.P12727368945953746065

/-! ## A113997.P7058601901154238993

`round(A113985(n)/A014963(A001316(n)))`
-/

namespace A113997.P7058601901154238993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A113985 n : ℚ) / (A014963 (A001316 n).toNat : ℚ))

end

end A113997.P7058601901154238993

/-!
# A113998: Reverse of triangle A051731.

The programs for A113998, the canonical program `A113998.P14714429809972250434` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113998 has offset 1).

The definition of A113998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A113998.P15846194540375010002

`floor(1/2*cos(2*col(n)*π/(row(n)-col(n)+1))+1/2)`
-/

namespace A113998.P15846194540375010002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((1 : ℚ) / 2 : ℝ) * Real.cos ((2 * SequenceMachineLib.triCol n : ℝ) * Real.pi / ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℝ)) + ((1 : ℚ) / 2 : ℝ)⌋

end

end A113998.P15846194540375010002

namespace A113998

/-- `floor(1/2*cos(2*col(n)*π/(row(n)-col(n)+1))+1/2)` -/
def P15846194540375010002.Spec : Prop :=
  ∀ n, P15846194540375010002.a n = A113998 (n + 1)

end A113998

/-! ## A113998.P2240839795760608484

`floor(col(n)/(row(n)-col(n)+1))-floor((col(n)-1)/(row(n)-col(n)+1))`
-/

namespace A113998.P2240839795760608484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.triCol n : ℚ) / ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℚ)⌋ - ⌊((SequenceMachineLib.triCol n : ℤ) - 1 : ℚ) / ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1 : ℚ)⌋

end

end A113998.P2240839795760608484

namespace A113998

/-- `floor(col(n)/(row(n)-col(n)+1))-floor((col(n)-1)/(row(n)-col(n)+1))` -/
def P2240839795760608484.Spec : Prop :=
  ∀ n, P2240839795760608484.a n = A113998 (n + 1)

end A113998

/-! ## A113998.P5802459134260612456

`floor(acot(A051777(n+1)))`
-/

namespace A113998.P5802459134260612456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A051777 (n + 1) : ℝ)⌋

end

end A113998.P5802459134260612456

namespace A113998

/-- `floor(acot(A051777(n+1)))` -/
def P5802459134260612456.Spec : Prop :=
  ∀ n, P5802459134260612456.a n = A113998 (n + 1)

end A113998

/-! ## A113998.P488463637041700868

`ceil(A286238(n+1)/(n+1))`
-/

namespace A113998.P488463637041700868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A286238 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A113998.P488463637041700868

namespace A113998

/-- `ceil(A286238(n+1)/(n+1))` -/
def P488463637041700868.Spec : Prop :=
  ∀ n, P488463637041700868.a n = A113998 (n + 1)

end A113998

/-! ## A113998.P15002468428304501935

`ceil(A286248(n+1)/(gcd(11, C(9, n))+n))`
-/

namespace A113998.P15002468428304501935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A286248 (n + 1) : ℚ) / (Nat.gcd 11 (Nat.choose 9 n) + n : ℚ)⌉

end

end A113998.P15002468428304501935

namespace A113998

/-- `ceil(A286248(n+1)/(gcd(11, C(9, n))+n))` -/
def P15002468428304501935.Spec : Prop :=
  ∀ n, P15002468428304501935.a n = A113998 (n + 1)

end A113998

/-! ## A113998.P14714429809972250434

`A000007(A051777(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A113998

/-- `A000007(A051777(n+1))` -/
def P14714429809972250434.Spec : Prop :=
  ∀ n, P14714429809972250434.a n = A113998 (n + 1)

theorem P14714429809972250434.correct : P14714429809972250434.Spec := by
  intro n
  simp only [A113998, Nat.add_sub_cancel]

end A113998

/-! ## A113998.P1963374441405548080

`A057427(A127013(n+1))`
-/

namespace A113998.P1963374441405548080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A127013 (n + 1)).toNat

end

end A113998.P1963374441405548080

namespace A113998

/-- `A057427(A127013(n+1))` -/
def P1963374441405548080.Spec : Prop :=
  ∀ n, P1963374441405548080.a n = A113998 (n + 1)

end A113998

/-! ## A113998.P14974943907630420063

`A010054(A286159(n+1))`
-/

namespace A113998.P14974943907630420063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A286159 (n + 1)).toNat

end

end A113998.P14974943907630420063

namespace A113998

/-- `A010054(A286159(n+1))` -/
def P14974943907630420063.Spec : Prop :=
  ∀ n, P14974943907630420063.a n = A113998 (n + 1)

end A113998

/-! ## A113998.P6411091120564487611

`A057427(A286246(n+1))`
-/

namespace A113998.P6411091120564487611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A286246 (n + 1)).toNat

end

end A113998.P6411091120564487611

namespace A113998

/-- `A057427(A286246(n+1))` -/
def P6411091120564487611.Spec : Prop :=
  ∀ n, P6411091120564487611.a n = A113998 (n + 1)

end A113998

/-! ## A113998.P3097219100854764046

`A057427(A286248(n+1))`
-/

namespace A113998.P3097219100854764046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A286248 (n + 1)).toNat

end

end A113998.P3097219100854764046

namespace A113998

/-- `A057427(A286248(n+1))` -/
def P3097219100854764046.Spec : Prop :=
  ∀ n, P3097219100854764046.a n = A113998 (n + 1)

end A113998

/-! ## A113998.P15537297934445443323

`A134082(A286159(n+1)-1)`
-/

namespace A113998.P15537297934445443323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134082 (A286159 (n + 1) - 1).toNat

end

end A113998.P15537297934445443323

namespace A113998

/-- `A134082(A286159(n+1)-1)` -/
def P15537297934445443323.Spec : Prop :=
  ∀ n, P15537297934445443323.a n = A113998 (n + 1)

end A113998

/-! ## A113998.P6499022976614869595

`A000038(n)^A051777(n+1)`
-/

namespace A113998.P6499022976614869595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A051777 (n + 1) : ℤ)

end

end A113998.P6499022976614869595

namespace A113998

/-- `A000038(n)^A051777(n+1)` -/
def P6499022976614869595.Spec : Prop :=
  ∀ n, P6499022976614869595.a n = (A113998 (n + 1) : ℚ)

end A113998

/-! ## A113998.P3868771257069861884

`∏{d}[A051777(n+1), A001221(#)]`
-/

namespace A113998.P3868771257069861884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A113998.P3868771257069861884

namespace A113998

/-- `∏{d}[A051777(n+1), A001221(#)]` -/
def P3868771257069861884.Spec : Prop :=
  ∀ n, P3868771257069861884.a n = A113998 (n + 1)

end A113998

/-! ## A113998.P12714173727487638304

`∏{d}[A051777(n+1), A001222(#)]`
-/

namespace A113998.P12714173727487638304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001222 d

end

end A113998.P12714173727487638304

namespace A113998

/-- `∏{d}[A051777(n+1), A001222(#)]` -/
def P12714173727487638304.Spec : Prop :=
  ∀ n, P12714173727487638304.a n = A113998 (n + 1)

end A113998

/-! ## A113998.P8956618311277525071

`∏{d}[A051777(n+1), A051777(#)]`
-/

namespace A113998.P8956618311277525071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A051777 d

end

end A113998.P8956618311277525071

namespace A113998

/-- `∏{d}[A051777(n+1), A051777(#)]` -/
def P8956618311277525071.Spec : Prop :=
  ∀ n, P8956618311277525071.a n = A113998 (n + 1)

end A113998

/-! ## A113998.P15495121820499497957

`A008683((A051777(n+1)+1)²)`
-/

namespace A113998.P15495121820499497957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((A051777 (n + 1) + 1) ^ 2).toNat

end

end A113998.P15495121820499497957

namespace A113998

/-- `A008683((A051777(n+1)+1)²)` -/
def P15495121820499497957.Spec : Prop :=
  ∀ n, P15495121820499497957.a n = A113998 (n + 1)

end A113998

/-! ## A113998.P14493944591509140912

`(1-A000122(A286236(n+1)))²`
-/

namespace A113998.P14493944591509140912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000122 (A286236 (n + 1)).toNat) ^ 2

end

end A113998.P14493944591509140912

namespace A113998

/-- `(1-A000122(A286236(n+1)))²` -/
def P14493944591509140912.Spec : Prop :=
  ∀ n, P14493944591509140912.a n = A113998 (n + 1)

end A113998

/-! ## A113998.P13259698167918756655

`A127094(n+1)/A004736(n+1)`
-/

namespace A113998.P13259698167918756655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127094 (n + 1) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A113998.P13259698167918756655

namespace A113998

/-- `A127094(n+1)/A004736(n+1)` -/
def P13259698167918756655.Spec : Prop :=
  ∀ n, P13259698167918756655.a n = (A113998 (n + 1) : ℚ)

end A113998

/-! ## A113998.P4651216151420527744

`A127013(n+1)/A010783(n+1)`
-/

namespace A113998.P4651216151420527744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127013 (n + 1) : ℚ) / (A010783 (n + 1) : ℚ)

end

end A113998.P4651216151420527744

namespace A113998

/-- `A127013(n+1)/A010783(n+1)` -/
def P4651216151420527744.Spec : Prop :=
  ∀ n, P4651216151420527744.a n = (A113998 (n + 1) : ℚ)

end A113998

/-! ## A113998.P2800802191123546080

`A127094(n+1)/A138530(n+1)`
-/

namespace A113998.P2800802191123546080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127094 (n + 1) : ℚ) / (A138530 (n + 1) : ℚ)

end

end A113998.P2800802191123546080

namespace A113998

/-- `A127094(n+1)/A138530(n+1)` -/
def P2800802191123546080.Spec : Prop :=
  ∀ n, P2800802191123546080.a n = (A113998 (n + 1) : ℚ)

end A113998

/-!
# A113999: a(n) = Sum_{ k, k|n } 10^(k-1).

The programs for A113999, the canonical program `A113999.P17169122258855398174` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A113999 has offset 1).

The definition of A113999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A113999.P17169122258855398174

`∑{d}[n+1, 10^(#-1)]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A113999

/-- `∑{d}[n+1, 10^(#-1)]` -/
def P17169122258855398174.Spec : Prop :=
  ∀ n, P17169122258855398174.a n = (A113999 (n + 1) : ℚ)

end A113999

/-! ## A113999.P4208426523220704763

`∑{d}[n+1, 10^#]/10`
-/

namespace A113999.P4208426523220704763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), 10 ^ d : ℕ) : ℚ) / 10

end

end A113999.P4208426523220704763

namespace A113999

/-- `∑{d}[n+1, 10^#]/10` -/
def P4208426523220704763.Spec : Prop :=
  ∀ n, P4208426523220704763.a n = (A113999 (n + 1) : ℚ)

end A113999

/-! ## A113999.P79177708203752807

`A113705(n+1)/10`
-/

namespace A113999.P79177708203752807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113705 (n + 1) : ℚ) / 10

end

end A113999.P79177708203752807

namespace A113999

/-- `A113705(n+1)/10` -/
def P79177708203752807.Spec : Prop :=
  ∀ n, P79177708203752807.a n = (A113999 (n + 1) : ℚ)

end A113999

/-! ## A113999.P13259858699638292018

`∑{d}[n+1, A007961(A000290(#)+1)]-A000005(n+1)`
-/

namespace A113999.P13259858699638292018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007961 (A000290 d + 1).toNat - A000005 (n + 1)

end

end A113999.P13259858699638292018

namespace A113999

/-- `∑{d}[n+1, A007961(A000290(#)+1)]-A000005(n+1)` -/
def P13259858699638292018.Spec : Prop :=
  ∀ n, P13259858699638292018.a n = A113999 (n + 1)

end A113999

/-! ## A113999.P14145578131930625253

`A000433(A001158(n+1))`
-/

namespace A113999.P14145578131930625253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000433 (A001158 (n + 1)).toNat

end

end A113999.P14145578131930625253

namespace A113999

/-- `A000433(A001158(n+1))` -/
def P14145578131930625253.Spec : Prop :=
  ∀ n, P14145578131930625253.a n = A113999 (n + 1)

end A113999

