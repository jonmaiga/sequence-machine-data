import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A069613: a(1) = 1; a(2n) is smallest prime starting with a(2n-1) and a number with no insignificant zeros, and a(2n+1) is smallest prime ending in a(2n-1). Alternate left and right concatenation yielding primes.

The programs for A069613, there is no canonical definition to state claims against.
-/

/-! ## A069613.P1765258423815363783

`or(A069628(n+1), A185318(2^n))`
-/

namespace A069613.P1765258423815363783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069628 (n + 1)) (A185318 (2 ^ n))

end

end A069613.P1765258423815363783

/-! ## A069613.P668077007409829120

`A294902(A041714(n))+A069628(n+1)`
-/

namespace A069613.P668077007409829120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294902 (A041714 n).toNat + A069628 (n + 1)

end

end A069613.P668077007409829120

/-!
# A069615: a(1) = 3; a(2n) = smallest prime starting (in the most significant digits) with a(2n-1) (i.e., as a right concatenation of a(2n-1) and a number with no insignificant zeros); a(2n+1) = smallest prime ending in (the least significant digits) a(2n-1). Alternate left and right concatenation yielding primes.

The programs for A069615, there is no canonical definition to state claims against.
-/

/-! ## A069615.P10242898524449976995

`A069630(A001104(n+1))`
-/

namespace A069615.P10242898524449976995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069630 (A001104 (n + 1)).toNat

end

end A069615.P10242898524449976995

/-! ## A069615.P3846324877826498898

`A069630(A032555(n+1))`
-/

namespace A069615.P3846324877826498898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069630 (A032555 (n + 1)).toNat

end

end A069615.P3846324877826498898

/-! ## A069615.P1236731320114899683

`A069630(A032557(n+1))`
-/

namespace A069615.P1236731320114899683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069630 (A032557 (n + 1)).toNat

end

end A069615.P1236731320114899683

/-! ## A069615.P12402070881491207501

`A069630(A032563(n+1))`
-/

namespace A069615.P12402070881491207501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069630 (A032563 (n + 1)).toNat

end

end A069615.P12402070881491207501

/-!
# A069616: a(1) = 4; a(2n) = smallest prime that is a right concatenation of a(2n-1) and a number with no insignificant zeros and a(2n+1) = smallest prime ending in ( the least significant digits) a(2n-1). Alternate left and right concatenation yielding primes.

The programs for A069616, there is no canonical definition to state claims against.
-/

/-! ## A069616.P2315249934713429930

`or(A069631(n+1), A185284((5-n)²))`
-/

namespace A069616.P2315249934713429930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069631 (n + 1)) (A185284 ((5 - (n : ℤ)) ^ 2).toNat)

end

end A069616.P2315249934713429930

/-! ## A069616.P115307881682464000

`A069631(n+1)+A010051(A007716(n))`
-/

namespace A069616.P115307881682464000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069631 (n + 1) + A010051 (A007716 n).toNat

end

end A069616.P115307881682464000

/-! ## A069616.P12596566519421084643

`A127775(A042589(n)+1)+A069631(n+1)`
-/

namespace A069616.P12596566519421084643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127775 (A042589 n + 1).toNat + A069631 (n + 1)

end

end A069616.P12596566519421084643

/-! ## A069616.P2024623994722657268

`A069631(n+1)^A103637(A102347(n+1))`
-/

namespace A069616.P2024623994722657268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069631 (n + 1) : ℚ) ^ (A103637 (A102347 (n + 1)).toNat : ℤ)

end

end A069616.P2024623994722657268

/-! ## A069616.P17704082814584368202

`A069631(n+1)^A364092(A097212(n+1))`
-/

namespace A069616.P17704082814584368202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069631 (n + 1) : ℚ) ^ (A364092 (A097212 (n + 1)).toNat : ℤ)

end

end A069616.P17704082814584368202

/-!
# A069619: a(1) = 7; a(2n) = smallest prime that is a right concatenation of a(2n-1) and a number with no insignificant zeros and a(2n+1) = smallest prime ending in ( the least significant digits) a(2n-1). Alternate left and right concatenation yielding primes.

The programs for A069619, there is no canonical definition to state claims against.
-/

/-! ## A069619.P9724991497534556643

`A185225(A121941(n))+A069634(n+1)`
-/

namespace A069619.P9724991497534556643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185225 (A121941 n).toNat + A069634 (n + 1)

end

end A069619.P9724991497534556643

/-! ## A069619.P1876139937387144924

`A185284(A268698(n))+A069634(n+1)`
-/

namespace A069619.P1876139937387144924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A268698 n).toNat + A069634 (n + 1)

end

end A069619.P1876139937387144924

/-!
# A069620: a(1) = 8; a(2n) = smallest prime that is a right concatenation of a(2n-1) and a number with no insignificant zeros and a(2n+1) = smallest prime ending in ( the least significant digits) a(2n-1). Alternate left and right concatenation yielding primes.

The programs for A069620, there is no canonical definition to state claims against.
-/

/-! ## A069620.P17164768705407331656

`A069635(∑[A053497(n)])`
-/

namespace A069620.P17164768705407331656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069635 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A069620.P17164768705407331656

/-! ## A069620.P5907982266387108192

`A069635(A053497(n)+n)`
-/

namespace A069620.P5907982266387108192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069635 (A053497 n + (n : ℤ)).toNat

end

end A069620.P5907982266387108192

/-! ## A069620.P12040505797727747125

`A069635((n+1)^A008284(n+1))`
-/

namespace A069620.P12040505797727747125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A008284 (n + 1) : ℤ))).toNat

end

end A069620.P12040505797727747125

/-!
# A069621: a(1) = 9; a(2n) = smallest prime that is a right concatenation of a(2n-1) and a number with no insignificant zeros and a(2n+1) = smallest prime ending in ( the least significant digits) a(2n). Alternate left and right concatenation yielding primes.

The programs for A069621, there is no canonical definition to state claims against.
-/

/-! ## A069621.P12288548050342211714

`or(A069636(n+1), A193592(n!))`
-/

namespace A069621.P12288548050342211714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069636 (n + 1)) (A193592 (Nat.factorial n))

end

end A069621.P12288548050342211714

/-! ## A069621.P7915049460055274587

`or(A002262(A000984(n)), A069636(n+1))`
-/

namespace A069621.P7915049460055274587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A000984 n).toNat) (A069636 (n + 1))

end

end A069621.P7915049460055274587

/-! ## A069621.P10889811757135113773

`or(A008284(A000142(n)), A069636(n+1))`
-/

namespace A069621.P10889811757135113773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008284 (A000142 n).toNat) (A069636 (n + 1))

end

end A069621.P10889811757135113773

/-! ## A069621.P6286134409696896164

`or(A069636(n+1), A093313(A005578(n)))`
-/

namespace A069621.P6286134409696896164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069636 (n + 1)) (A093313 (A005578 n).toNat)

end

end A069621.P6286134409696896164

/-!
# A069622: Let Power(n) be the sequence of integer roots or powers of n. Power(1) is 1,1,1,1,... Power(4) is 1,2,4,16,64,256,... Power(27) is 1,3,9,27,729,... Power (p^k) is 1,p,p^a,p^b,...p^k, p^2k,p^3k,...where p is a prime and a,b etc. are divisors of k. This is the sequence of the n-th term of Power(n).

The programs for A069622, there is no canonical definition to state claims against.
-/

/-! ## A069622.P11094822534980071890

`(n+1)^(n-A259362(n+1))`
-/

namespace A069622.P11094822534980071890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n : ℤ) - A259362 (n + 1) : ℤ)

end

end A069622.P11094822534980071890

/-! ## A069622.P16187657317864734261

`(n+1)^(n+1-A089723(n+1))`
-/

namespace A069622.P16187657317864734261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ ((n + 1 : ℤ) - A089723 (n + 1) : ℤ)

end

end A069622.P16187657317864734261

/-! ## A069622.P4876379587219712964

`A000005(3^n)^A338228(n+1)`
-/

namespace A069622.P4876379587219712964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (3 ^ n) : ℚ) ^ (A338228 (n + 1) : ℤ)

end

end A069622.P4876379587219712964

/-! ## A069622.P14860658136318245680

`A000005(A000244(n))^(n-∑{e}[A293515(n+1), #])`
-/

namespace A069622.P14860658136318245680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293515 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A000244 n).toNat : ℚ) ^ ((n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) : ℤ)

end

end A069622.P14860658136318245680

/-! ## A069622.P10225636933033894518

`A000005(A000244(n))^(n-∑{e}[A294874(n+1), #])`
-/

namespace A069622.P10225636933033894518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294874 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A000244 n).toNat : ℚ) ^ ((n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) : ℤ)

end

end A069622.P10225636933033894518

/-!
# A069623: Number of perfect powers <= n.

The programs for A069623, the canonical program `A069623.P16188465153472375596` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069623 has offset 1).

The definition of A069623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069623.P4040817829892417093

`∑[A075802(n+1)]`
-/

namespace A069623.P4040817829892417093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075802 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069623.P4040817829892417093

namespace A069623

/-- `∑[A075802(n+1)]` -/
def P4040817829892417093.Spec : Prop :=
  ∀ n, P4040817829892417093.a n = A069623 (n + 1)

end A069623

/-! ## A069623.P4081622105804414405

`A072292(n+1)+1`
-/

namespace A069623.P4081622105804414405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072292 (n + 1) + 1

end

end A069623.P4081622105804414405

namespace A069623

/-- `A072292(n+1)+1` -/
def P4081622105804414405.Spec : Prop :=
  ∀ n, P4081622105804414405.a n = A069623 (n + 1)

theorem P4081622105804414405.correct : P4081622105804414405.Spec := by
  intro n
  simp only [A069623, Nat.add_sub_cancel, A069623.P4081622105804414405.a, A069623.P16188465153472375596.a, A072292, A072292.P7243147247323871744.a, A076411, A076411.P17634982879801196163.f2, A076411.P17634982879801196163.f1, A076411.P17634982879801196163.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069623

/-! ## A069623.P263136517494119038

`2-A132351(n+1)+n`
-/

namespace A069623.P263136517494119038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A132351 (n + 1) + (n : ℤ)

end

end A069623.P263136517494119038

namespace A069623

/-- `2-A132351(n+1)+n` -/
def P263136517494119038.Spec : Prop :=
  ∀ n, P263136517494119038.a n = A069623 (n + 1)

theorem P263136517494119038.correct : P263136517494119038.Spec := by
  intro n
  simp only [A069623, Nat.add_sub_cancel, A069623.P263136517494119038.a, A069623.P16188465153472375596.a, A076411, A076411.P17634982879801196163.f2, A076411.P17634982879801196163.f1, A076411.P17634982879801196163.a, A132351, A132351.P15635442049154509357.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, A072292, A072292.P7243147247323871744.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069623

/-! ## A069623.P1484006881881413453

`∑[char[A045542(n+1)]]+1`
-/

namespace A069623.P1484006881881413453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A069623.P1484006881881413453

namespace A069623

/-- `∑[char[A045542(n+1)]]+1` -/
def P1484006881881413453.Spec : Prop :=
  ∀ n, (P1484006881881413453.a n : ℤ) = A069623 (n + 1)

end A069623

/-! ## A069623.P17257294339173659866

`∑[char[A001597(n+1)-1]]`
-/

namespace A069623.P17257294339173659866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069623.P17257294339173659866

namespace A069623

/-- `∑[char[A001597(n+1)-1]]` -/
def P17257294339173659866.Spec : Prop :=
  ∀ n, (P17257294339173659866.a n : ℤ) = A069623 (n + 1)

end A069623

/-! ## A069623.P14120753555792286369

`∑[char[A081676(n+1)-1]]`
-/

namespace A069623.P14120753555792286369
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081676 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069623.P14120753555792286369

namespace A069623

/-- `∑[char[A081676(n+1)-1]]` -/
def P14120753555792286369.Spec : Prop :=
  ∀ n, (P14120753555792286369.a n : ℤ) = A069623 (n + 1)

end A069623

/-! ## A069623.P11255040595790449338

`∑[1-A132350(n+1)]+1`
-/

namespace A069623.P11255040595790449338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A132350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A069623.P11255040595790449338

namespace A069623

/-- `∑[1-A132350(n+1)]+1` -/
def P11255040595790449338.Spec : Prop :=
  ∀ n, P11255040595790449338.a n = A069623 (n + 1)

end A069623

/-! ## A069623.P8726476016285291526

`∑[char[lt[1, A295931(n+1)]]]+1`
-/

namespace A069623.P8726476016285291526
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295931 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A069623.P8726476016285291526

namespace A069623

/-- `∑[char[lt[1, A295931(n+1)]]]+1` -/
def P8726476016285291526.Spec : Prop :=
  ∀ n, (P8726476016285291526.a n : ℤ) = A069623 (n + 1)

end A069623

/-! ## A069623.P329899311497473641

`∑[A001221(A327502(n+1))]+1`
-/

namespace A069623.P329899311497473641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A327502 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A069623.P329899311497473641

namespace A069623

/-- `∑[A001221(A327502(n+1))]+1` -/
def P329899311497473641.Spec : Prop :=
  ∀ n, P329899311497473641.a n = A069623 (n + 1)

end A069623

/-! ## A069623.P1987314182826086220

`∑[A020639(A316789(n+1))]-n`
-/

namespace A069623.P1987314182826086220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A316789 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A069623.P1987314182826086220

namespace A069623

/-- `∑[A020639(A316789(n+1))]-n` -/
def P1987314182826086220.Spec : Prop :=
  ∀ n, P1987314182826086220.a n = A069623 (n + 1)

end A069623

/-! ## A069623.P14439416063811422925

`A076411(n+1)+A075802(n+1)`
-/

namespace A069623.P14439416063811422925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076411 (n + 1) + A075802 (n + 1)

end

end A069623.P14439416063811422925

namespace A069623

/-- `A076411(n+1)+A075802(n+1)` -/
def P14439416063811422925.Spec : Prop :=
  ∀ n, P14439416063811422925.a n = A069623 (n + 1)

theorem P14439416063811422925.correct : P14439416063811422925.Spec := by
  intro n
  simp only [A069623, Nat.add_sub_cancel, A069623.P14439416063811422925.a, A069623.P16188465153472375596.a, A075802, A075802.P15418155707765850726.a, A076411, A076411.P17634982879801196163.f2, A076411.P17634982879801196163.f1, A076411.P17634982879801196163.a, A007916, A007916.P1021710988916154839.f1, A007916.P1021710988916154839.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A069623

/-! ## A069623.P604441220063145994

`∑[A294338(A294338(n+1)²)]-n`
-/

namespace A069623.P604441220063145994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294338 (A294338 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A069623.P604441220063145994

namespace A069623

/-- `∑[A294338(A294338(n+1)²)]-n` -/
def P604441220063145994.Spec : Prop :=
  ∀ n, P604441220063145994.a n = A069623 (n + 1)

end A069623

/-! ## A069623.P16399336752521100239

`∑[A334195(∑{e}[A295920(n+1), #]+1)]+1`
-/

namespace A069623.P16399336752521100239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295920 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334195 (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A069623.P16399336752521100239

namespace A069623

/-- `∑[A334195(∑{e}[A295920(n+1), #]+1)]+1` -/
def P16399336752521100239.Spec : Prop :=
  ∀ n, P16399336752521100239.a n = A069623 (n + 1)

end A069623

/-! ## A069623.P16188465153472375596

`A076411(n+2)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069623

/-- `A076411(n+2)` -/
def P16188465153472375596.Spec : Prop :=
  ∀ n, P16188465153472375596.a n = A069623 (n + 1)

theorem P16188465153472375596.correct : P16188465153472375596.Spec := by
  intro n
  simp only [A069623, Nat.add_sub_cancel]

end A069623

/-! ## A069623.P7836300258275629312

`∑[char[A087320(n+1)-1]]`
-/

namespace A069623.P7836300258275629312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087320 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069623.P7836300258275629312

namespace A069623

/-- `∑[char[A087320(n+1)-1]]` -/
def P7836300258275629312.Spec : Prop :=
  ∀ n, (P7836300258275629312.a n : ℤ) = A069623 (n + 1)

end A069623

/-! ## A069623.P16608934766345024780

`∑[A316789(A316789(n+1)²)]-n`
-/

namespace A069623.P16608934766345024780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316789 (A316789 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A069623.P16608934766345024780

namespace A069623

/-- `∑[A316789(A316789(n+1)²)]-n` -/
def P16608934766345024780.Spec : Prop :=
  ∀ n, P16608934766345024780.a n = A069623 (n + 1)

end A069623

/-! ## A069623.P11248329554822095793

`∑[A316789(A316789(n+1)^2)]-n`
-/

namespace A069623.P11248329554822095793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316789 (A316789 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A069623.P11248329554822095793

namespace A069623

/-- `∑[A316789(A316789(n+1)^2)]-n` -/
def P11248329554822095793.Spec : Prop :=
  ∀ n, P11248329554822095793.a n = A069623 (n + 1)

end A069623

/-! ## A069623.P731623947240814874

`∑[C(2, A180026(n+1)+2)]`
-/

namespace A069623.P731623947240814874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A180026 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069623.P731623947240814874

namespace A069623

/-- `∑[C(2, A180026(n+1)+2)]` -/
def P731623947240814874.Spec : Prop :=
  ∀ n, (P731623947240814874.a n : ℤ) = A069623 (n + 1)

end A069623

/-!
# A069624: Number of different values taken by the integer part of n^(1/k) for all k > 1.

The programs for A069624, the canonical program `A069624.P7803152237646734357` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069624 has offset 1).

The definition of A069624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 129 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069624.P17284221011129113429

`A062153(3*n+4)-A266141(A044161(n+1))`
-/

namespace A069624.P17284221011129113429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (3 * n + 4) - A266141 (A044161 (n + 1)).toNat

end

end A069624.P17284221011129113429

namespace A069624

/-- `A062153(3*n+4)-A266141(A044161(n+1))` -/
def P17284221011129113429.Spec : Prop :=
  ∀ n, P17284221011129113429.a n = A069624 (n + 1)

end A069624

/-! ## A069624.P10815967491504467070

`gcd(A034188(A005384(n+1)), A062153(3*n+3))`
-/

namespace A069624.P10815967491504467070
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034188 (A005384 (n + 1)).toNat) (A062153 (3 * n + 3))

end

end A069624.P10815967491504467070

namespace A069624

/-- `gcd(A034188(A005384(n+1)), A062153(3*n+3))` -/
def P10815967491504467070.Spec : Prop :=
  ∀ n, (P10815967491504467070.a n : ℤ) = A069624 (n + 1)

end A069624

/-! ## A069624.P7803152237646734357

`A390766(A316672(n+1)+A077800(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A069624

/-- `A390766(A316672(n+1)+A077800(n+1))` -/
def P7803152237646734357.Spec : Prop :=
  ∀ n, P7803152237646734357.a n = A069624 (n + 1)

theorem P7803152237646734357.correct : P7803152237646734357.Spec := by
  intro n
  simp only [A069624, Nat.add_sub_cancel]

end A069624

/-! ## A069624.P12033145243088558550

`A062153(n+1)+A057427(A000700(n))`
-/

namespace A069624.P12033145243088558550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (n + 1) + A057427 (A000700 n).toNat

end

end A069624.P12033145243088558550

namespace A069624

/-- `A062153(n+1)+A057427(A000700(n))` -/
def P12033145243088558550.Spec : Prop :=
  ∀ n, P12033145243088558550.a n = A069624 (n + 1)

end A069624

/-! ## A069624.P1139067111800261804

`A062153(3*(n+1))-A142150(A062584(n))`
-/

namespace A069624.P1139067111800261804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (3 * (n + 1)) - A142150 (A062584 n).toNat

end

end A069624.P1139067111800261804

namespace A069624

/-- `A062153(3*(n+1))-A142150(A062584(n))` -/
def P1139067111800261804.Spec : Prop :=
  ∀ n, P1139067111800261804.a n = A069624 (n + 1)

end A069624

/-! ## A069624.P16711904416118691218

`A081604(A296657(n+1)+n)`
-/

namespace A069624.P16711904416118691218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A296657 (n + 1) + (n : ℤ)).toNat

end

end A069624.P16711904416118691218

namespace A069624

/-- `A081604(A296657(n+1)+n)` -/
def P16711904416118691218.Spec : Prop :=
  ∀ n, P16711904416118691218.a n = A069624 (n + 1)

end A069624

/-! ## A069624.P12067315074119700500

`A081604(n+1)-A185016(A336837(3*n+5))`
-/

namespace A069624.P12067315074119700500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (n + 1) - A185016 (A336837 (3 * n + 5)).toNat

end

end A069624.P12067315074119700500

namespace A069624

/-- `A081604(n+1)-A185016(A336837(3*n+5))` -/
def P12067315074119700500.Spec : Prop :=
  ∀ n, P12067315074119700500.a n = A069624 (n + 1)

end A069624

/-! ## A069624.P15999146220209530386

`A081604(floor(A130949(3*n+2)/A051730(2*(n+2))+n))`
-/

namespace A069624.P15999146220209530386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 ⌊(A130949 (3 * n + 2) : ℚ) / (A051730 (2 * (n + 2)) : ℚ) + (n : ℚ)⌋.toNat

end

end A069624.P15999146220209530386

namespace A069624

/-- `A081604(floor(A130949(3*n+2)/A051730(2*(n+2))+n))` -/
def P15999146220209530386.Spec : Prop :=
  ∀ n, P15999146220209530386.a n = A069624 (n + 1)

end A069624

/-! ## A069624.P6929476029245389068

`gcd(A034188(n²+2), A062153(3*(n+1)))`
-/

namespace A069624.P6929476029245389068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034188 (n ^ 2 + 2)) (A062153 (3 * (n + 1)))

end

end A069624.P6929476029245389068

namespace A069624

/-- `gcd(A034188(n²+2), A062153(3*(n+1)))` -/
def P6929476029245389068.Spec : Prop :=
  ∀ n, (P6929476029245389068.a n : ℤ) = A069624 (n + 1)

end A069624

/-! ## A069624.P14054703941058123350

`A081604(A373823(n+1)+n-1)`
-/

namespace A069624.P14054703941058123350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081604 (A373823 (n + 1) + ((n : ℤ) - 1)).toNat

end

end A069624.P14054703941058123350

namespace A069624

/-- `A081604(A373823(n+1)+n-1)` -/
def P14054703941058123350.Spec : Prop :=
  ∀ n, P14054703941058123350.a n = A069624 (n + 1)

end A069624

/-!
# A069625: Number of distinct numbers that can be formed as a product of two or more divisors of n.

The programs for A069625, there is no canonical definition to state claims against.
-/

/-! ## A069625.P18383182971872904324

`A207329(n+1)-1`
-/

namespace A069625.P18383182971872904324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207329 (n + 1) - 1

end

end A069625.P18383182971872904324

/-! ## A069625.P10279983866022343997

`(A207329(n+1)+∑[n])%A000124(n)`
-/

namespace A069625.P10279983866022343997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207329 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) (A000124 n)

end

end A069625.P10279983866022343997

/-! ## A069625.P16539055004194033936

`(A207329(n+1)+A000096(n))%∑[n+1]`
-/

namespace A069625.P16539055004194033936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207329 (n + 1) + A000096 n) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A069625.P16539055004194033936

/-! ## A069625.P7334524774178521912

`A309873(A056196(n+1))+A207329(n+1)`
-/

namespace A069625.P7334524774178521912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A056196 (n + 1)).toNat + A207329 (n + 1)

end

end A069625.P7334524774178521912

/-! ## A069625.P278136109827252808

`A023443(A207329(n+1))`
-/

namespace A069625.P278136109827252808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A207329 (n + 1)).toNat

end

end A069625.P278136109827252808

/-! ## A069625.P17542910872336079731

`(A207329(n+1)+A000051(n+1))%A000051(n)`
-/

namespace A069625.P17542910872336079731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A207329 (n + 1) + A000051 (n + 1)) (A000051 n)

end

end A069625.P17542910872336079731

/-!
# A069626: Number of sets of integers larger than one whose least common multiple is n.

The programs for A069626, the canonical program `A069626.P14114950081823336595` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069626 has offset 1).

The definition of A069626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069626.P12967803312518329094

`ceil(A076078(n+1)/2)`
-/

namespace A069626.P12967803312518329094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A076078 (n + 1) : ℚ) / 2⌉

end

end A069626.P12967803312518329094

namespace A069626

/-- `ceil(A076078(n+1)/2)` -/
def P12967803312518329094.Spec : Prop :=
  ∀ n, P12967803312518329094.a n = A069626 (n + 1)

end A069626

/-! ## A069626.P9334213310682045027

`A076078(C(2, n+1)+n+1)/2`
-/

namespace A069626.P9334213310682045027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076078 (Nat.choose 2 (n + 1) + n + 1) : ℚ) / 2

end

end A069626.P9334213310682045027

namespace A069626

/-- `A076078(C(2, n+1)+n+1)/2` -/
def P9334213310682045027.Spec : Prop :=
  ∀ n, P9334213310682045027.a n = (A069626 (n + 1) : ℚ)

end A069626

/-! ## A069626.P14259561446479808559

`A076078(A028310(n)+1)/2`
-/

namespace A069626.P14259561446479808559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076078 (A028310 n + 1).toNat : ℚ) / 2

end

end A069626.P14259561446479808559

namespace A069626

/-- `A076078(A028310(n)+1)/2` -/
def P14259561446479808559.Spec : Prop :=
  ∀ n, P14259561446479808559.a n = (A069626 (n + 1) : ℚ)

end A069626

/-! ## A069626.P12242228176250604889

`A076078(n+1)/(A057427(n)+1)`
-/

namespace A069626.P12242228176250604889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076078 (n + 1) : ℚ) / (A057427 n + 1 : ℚ)

end

end A069626.P12242228176250604889

namespace A069626

/-- `A076078(n+1)/(A057427(n)+1)` -/
def P12242228176250604889.Spec : Prop :=
  ∀ n, P12242228176250604889.a n = (A069626 (n + 1) : ℚ)

end A069626

/-! ## A069626.P9088916306885818318

`(A076078(n+1)+A000007(n))/2`
-/

namespace A069626.P9088916306885818318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076078 (n + 1) + A000007 n : ℚ) / 2

end

end A069626.P9088916306885818318

namespace A069626

/-- `(A076078(n+1)+A000007(n))/2` -/
def P9088916306885818318.Spec : Prop :=
  ∀ n, P9088916306885818318.a n = (A069626 (n + 1) : ℚ)

end A069626

/-! ## A069626.P9859782075514218298

`A076078(n+1)/(A065475(n+1)-n)`
-/

namespace A069626.P9859782075514218298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076078 (n + 1) : ℚ) / (A065475 (n + 1) - (n : ℤ) : ℚ)

end

end A069626.P9859782075514218298

namespace A069626

/-- `A076078(n+1)/(A065475(n+1)-n)` -/
def P9859782075514218298.Spec : Prop :=
  ∀ n, P9859782075514218298.a n = (A069626 (n + 1) : ℚ)

end A069626

/-! ## A069626.P9785770984712825917

`∑{d}[n+1, A008683(#)*A100577((n+1)/#)]`
-/

namespace A069626.P9785770984712825917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A100577 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A069626.P9785770984712825917

namespace A069626

/-- `∑{d}[n+1, A008683(#)*A100577((n+1)/#)]` -/
def P9785770984712825917.Spec : Prop :=
  ∀ n, P9785770984712825917.a n = A069626 (n + 1)

end A069626

/-! ## A069626.P14114950081823336595

`∑{d}[n+1, A007427(#)*A347405((n+1)/#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069626

/-- `∑{d}[n+1, A007427(#)*A347405((n+1)/#)]` -/
def P14114950081823336595.Spec : Prop :=
  ∀ n, P14114950081823336595.a n = A069626 (n + 1)

theorem P14114950081823336595.correct : P14114950081823336595.Spec := by
  intro n
  simp only [A069626, Nat.add_sub_cancel]

end A069626

/-! ## A069626.P7452876254289493445

`A076078(n+1)/A034444(A034444(n+1))`
-/

namespace A069626.P7452876254289493445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076078 (n + 1) : ℚ) / (A034444 (A034444 (n + 1)).toNat : ℚ)

end

end A069626.P7452876254289493445

namespace A069626

/-- `A076078(n+1)/A034444(A034444(n+1))` -/
def P7452876254289493445.Spec : Prop :=
  ∀ n, P7452876254289493445.a n = (A069626 (n + 1) : ℚ)

end A069626

/-! ## A069626.P8994434385373824225

`A076078(n+1)/A076078(A020639(n+1))`
-/

namespace A069626.P8994434385373824225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076078 (n + 1) : ℚ) / (A076078 (A020639 (n + 1)).toNat : ℚ)

end

end A069626.P8994434385373824225

namespace A069626

/-- `A076078(n+1)/A076078(A020639(n+1))` -/
def P8994434385373824225.Spec : Prop :=
  ∀ n, P8994434385373824225.a n = (A069626 (n + 1) : ℚ)

end A069626

/-! ## A069626.P11120714511071378903

`A076078(n+1)/gcd(2, A076078(A061017(n+1)))`
-/

namespace A069626.P11120714511071378903
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076078 (n + 1) : ℚ) / (Int.gcd 2 (A076078 (A061017 (n + 1)).toNat) : ℚ)

end

end A069626.P11120714511071378903

namespace A069626

/-- `A076078(n+1)/gcd(2, A076078(A061017(n+1)))` -/
def P11120714511071378903.Spec : Prop :=
  ∀ n, P11120714511071378903.a n = (A069626 (n + 1) : ℚ)

end A069626

/-! ## A069626.P16564968801034468833

`A076078(n+1)/A076078(A090368(n+1))`
-/

namespace A069626.P16564968801034468833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076078 (n + 1) : ℚ) / (A076078 (A090368 (n + 1)).toNat : ℚ)

end

end A069626.P16564968801034468833

namespace A069626

/-- `A076078(n+1)/A076078(A090368(n+1))` -/
def P16564968801034468833.Spec : Prop :=
  ∀ n, P16564968801034468833.a n = (A069626 (n + 1) : ℚ)

end A069626

/-! ## A069626.P12555325022853030019

`A076078(lcm(2, A320389(n+1)))/2`
-/

namespace A069626.P12555325022853030019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076078 (Int.lcm 2 (A320389 (n + 1))) : ℚ) / 2

end

end A069626.P12555325022853030019

namespace A069626

/-- `A076078(lcm(2, A320389(n+1)))/2` -/
def P12555325022853030019.Spec : Prop :=
  ∀ n, P12555325022853030019.a n = (A069626 (n + 1) : ℚ)

end A069626

/-! ## A069626.P5258552942298145266

`A087079(A037916(n+1))`
-/

namespace A069626.P5258552942298145266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087079 (A037916 (n + 1)).toNat

end

end A069626.P5258552942298145266

namespace A069626

/-- `A087079(A037916(n+1))` -/
def P5258552942298145266.Spec : Prop :=
  ∀ n, P5258552942298145266.a n = A069626 (n + 1)

end A069626

/-! ## A069626.P6494808894608226367

`A087079(A139393(n+1))`
-/

namespace A069626.P6494808894608226367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087079 (A139393 (n + 1)).toNat

end

end A069626.P6494808894608226367

namespace A069626

/-- `A087079(A139393(n+1))` -/
def P6494808894608226367.Spec : Prop :=
  ∀ n, P6494808894608226367.a n = A069626 (n + 1)

end A069626

/-! ## A069626.P2661053963465844924

`A004525(A076078(n+1))`
-/

namespace A069626.P2661053963465844924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A076078 (n + 1)).toNat

end

end A069626.P2661053963465844924

namespace A069626

/-- `A004525(A076078(n+1))` -/
def P2661053963465844924.Spec : Prop :=
  ∀ n, P2661053963465844924.a n = A069626 (n + 1)

end A069626

/-! ## A069626.P9254233148668010410

`A008619(A076078(n+1)-1)`
-/

namespace A069626.P9254233148668010410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A076078 (n + 1) - 1).toNat

end

end A069626.P9254233148668010410

namespace A069626

/-- `A008619(A076078(n+1)-1)` -/
def P9254233148668010410.Spec : Prop :=
  ∀ n, P9254233148668010410.a n = A069626 (n + 1)

end A069626

/-! ## A069626.P18030811420738007437

`A076078(n+1)/A328162(A100587(n+1))`
-/

namespace A069626.P18030811420738007437
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076078 (n + 1) : ℚ) / (A328162 (A100587 (n + 1)).toNat : ℚ)

end

end A069626.P18030811420738007437

namespace A069626

/-- `A076078(n+1)/A328162(A100587(n+1))` -/
def P18030811420738007437.Spec : Prop :=
  ∀ n, P18030811420738007437.a n = (A069626 (n + 1) : ℚ)

end A069626

/-!
# A069627: Sum_{k=1..n} floor(n*(n-1)/(2*k)).

The programs for A069627, there is no canonical definition to state claims against.
-/

/-! ## A069627.P17480495604515085524

`∑[∑[A381205(A007716(n))]]`
-/

namespace A069627.P17480495604515085524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381205 (A007716 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069627.P17480495604515085524

/-! ## A069627.P12270298810656241254

`A217713(A128082(n))`
-/

namespace A069627.P12270298810656241254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217713 (A128082 n).toNat

end

end A069627.P12270298810656241254

/-! ## A069627.P15938119046557214800

`A217713(A148968(n))`
-/

namespace A069627.P15938119046557214800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217713 (A148968 n).toNat

end

end A069627.P15938119046557214800

/-! ## A069627.P16761319342244436850

`∑[∑[A109082(A004098(n))]]`
-/

namespace A069627.P16761319342244436850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109082 (A004098 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069627.P16761319342244436850

/-! ## A069627.P7743537420816290461

`∑[∑[A046933(A155069(n))]]`
-/

namespace A069627.P7743537420816290461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (A155069 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069627.P7743537420816290461

/-!
# A069628: a(1) = 1; a(2n) = smallest prime starting (most significant digits) with a(2n-1). a(2n+1) = smallest prime ending (least significant digits) in a(2n).

The programs for A069628, there is no canonical definition to state claims against.
-/

/-! ## A069628.P2188510424098036473

`A069613(n+1)-A294902(A041714(n))`
-/

namespace A069628.P2188510424098036473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069613 (n + 1) - A294902 (A041714 n).toNat

end

end A069628.P2188510424098036473

/-!
# A069634: a(1) = 7; a(2n) = smallest prime starting (most significant digits) with a(2n-1). a(2n+1) = smallest prime ending (least significant digits)in a(2n).

The programs for A069634, there is no canonical definition to state claims against.
-/

/-! ## A069634.P78245019063024294

`A069619(n+1)-A185284(A268698(n))`
-/

namespace A069634.P78245019063024294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069619 (n + 1) - A185284 (A268698 n).toNat

end

end A069634.P78245019063024294

/-!
# A069637: Number of prime powers <= n with exponents > 1.

The programs for A069637, the canonical program `A069637.P6505014191313825967` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069637 has offset 1).

The definition of A069637 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A025528, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069637.P6505014191313825967

`A025528(n+1)-A000720(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069637

/-- `A025528(n+1)-A000720(n+1)` -/
def P6505014191313825967.Spec : Prop :=
  ∀ n, P6505014191313825967.a n = A069637 (n + 1)

theorem P6505014191313825967.correct : P6505014191313825967.Spec := by
  intro n
  simp only [A069637, Nat.add_sub_cancel]

end A069637

/-! ## A069637.P8771207433006617316

`∑[round(n/∏{p}[n+1, #+n])]`
-/

namespace A069637.P8771207433006617316
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), (p + n) : ℕ) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069637.P8771207433006617316

namespace A069637

/-- `∑[round(n/∏{p}[n+1, #+n])]` -/
def P8771207433006617316.Spec : Prop :=
  ∀ n, P8771207433006617316.a n = A069637 (n + 1)

end A069637

/-! ## A069637.P13897479871964100755

`∑[A268340(n+1)]`
-/

namespace A069637.P13897479871964100755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268340 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069637.P13897479871964100755

namespace A069637

/-- `∑[A268340(n+1)]` -/
def P13897479871964100755.Spec : Prop :=
  ∀ n, P13897479871964100755.a n = A069637 (n + 1)

end A069637

/-! ## A069637.P17565112984575610663

`A085501(n+1)-1`
-/

namespace A069637.P17565112984575610663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085501 (n + 1) - 1

end

end A069637.P17565112984575610663

namespace A069637

/-- `A085501(n+1)-1` -/
def P17565112984575610663.Spec : Prop :=
  ∀ n, P17565112984575610663.a n = A069637 (n + 1)

end A069637

/-! ## A069637.P7898362511190534173

`n-A085972(n+1)`
-/

namespace A069637.P7898362511190534173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A085972 (n + 1)

end

end A069637.P7898362511190534173

namespace A069637

/-- `n-A085972(n+1)` -/
def P7898362511190534173.Spec : Prop :=
  ∀ n, P7898362511190534173.a n = A069637 (n + 1)

end A069637

/-! ## A069637.P11022237419588292301

`∑[char[A249435(n+2)]]`
-/

namespace A069637.P11022237419588292301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249435 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069637.P11022237419588292301

namespace A069637

/-- `∑[char[A249435(n+2)]]` -/
def P11022237419588292301.Spec : Prop :=
  ∀ n, (P11022237419588292301.a n : ℤ) = A069637 (n + 1)

end A069637

/-! ## A069637.P98459432825706166

`∑[∑{e}[A182936(n+1), #]]`
-/

namespace A069637.P98459432825706166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182936 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069637.P98459432825706166

namespace A069637

/-- `∑[∑{e}[A182936(n+1), #]]` -/
def P98459432825706166.Spec : Prop :=
  ∀ n, (P98459432825706166.a n : ℤ) = A069637 (n + 1)

end A069637

/-! ## A069637.P14430588743128191633

`∑[char[∑[A053707(n+1)]]]`
-/

namespace A069637.P14430588743128191633
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069637.P14430588743128191633

namespace A069637

/-- `∑[char[∑[A053707(n+1)]]]` -/
def P14430588743128191633.Spec : Prop :=
  ∀ n, (P14430588743128191633.a n : ℤ) = A069637 (n + 1)

end A069637

/-! ## A069637.P5262615318419273221

`∑[char[A025475(n+2)-1]]`
-/

namespace A069637.P5262615318419273221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069637.P5262615318419273221

namespace A069637

/-- `∑[char[A025475(n+2)-1]]` -/
def P5262615318419273221.Spec : Prop :=
  ∀ n, (P5262615318419273221.a n : ℤ) = A069637 (n + 1)

end A069637

/-! ## A069637.P15581648000159513905

`∑[A069513(A048671(n+1))]`
-/

namespace A069637.P15581648000159513905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 (A048671 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069637.P15581648000159513905

namespace A069637

/-- `∑[A069513(A048671(n+1))]` -/
def P15581648000159513905.Spec : Prop :=
  ∀ n, P15581648000159513905.a n = A069637 (n + 1)

end A069637

/-! ## A069637.P12320594501993648262

`A065515(n+1)-A036234(n+1)`
-/

namespace A069637.P12320594501993648262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1) - A036234 (n + 1)

end

end A069637.P12320594501993648262

namespace A069637

/-- `A065515(n+1)-A036234(n+1)` -/
def P12320594501993648262.Spec : Prop :=
  ∀ n, P12320594501993648262.a n = A069637 (n + 1)

theorem P12320594501993648262.correct : P12320594501993648262.Spec := by
  intro n
  simp only [A069637, Nat.add_sub_cancel, A069637.P12320594501993648262.a, A069637.P6505014191313825967.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A036234, A036234.P2906282677021386800.a, A065515, A065515.P15129427044826637405.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A069637

/-! ## A069637.P18319462417035417161

`A065855(n+1)-A085970(n+1)`
-/

namespace A069637.P18319462417035417161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (n + 1) - A085970 (n + 1)

end

end A069637.P18319462417035417161

namespace A069637

/-- `A065855(n+1)-A085970(n+1)` -/
def P18319462417035417161.Spec : Prop :=
  ∀ n, P18319462417035417161.a n = A069637 (n + 1)

end A069637

/-! ## A069637.P12098706285570532678

`∑[1-A008683(A100994(n+1))²]`
-/

namespace A069637.P12098706285570532678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A008683 (A100994 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069637.P12098706285570532678

namespace A069637

/-- `∑[1-A008683(A100994(n+1))²]` -/
def P12098706285570532678.Spec : Prop :=
  ∀ n, P12098706285570532678.a n = A069637 (n + 1)

end A069637

/-! ## A069637.P9007033425524955641

`A065515(n+1)-(A000720(n+1)+1)`
-/

namespace A069637.P9007033425524955641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065515 (n + 1) - (A000720 (n + 1) + 1)

end

end A069637.P9007033425524955641

namespace A069637

/-- `A065515(n+1)-(A000720(n+1)+1)` -/
def P9007033425524955641.Spec : Prop :=
  ∀ n, P9007033425524955641.a n = A069637 (n + 1)

theorem P9007033425524955641.correct : P9007033425524955641.Spec := by
  intro n
  simp only [A069637, Nat.add_sub_cancel, A069637.P9007033425524955641.a, A069637.P6505014191313825967.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A025528, A025528.P16007803137134117632.f1, A025528.P16007803137134117632.a, A065515, A065515.P15129427044826637405.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A069637

/-! ## A069637.P17791809745172733917

`A062298(n+1)-(A085970(n+1)+1)`
-/

namespace A069637.P17791809745172733917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (n + 1) - (A085970 (n + 1) + 1)

end

end A069637.P17791809745172733917

namespace A069637

/-- `A062298(n+1)-(A085970(n+1)+1)` -/
def P17791809745172733917.Spec : Prop :=
  ∀ n, P17791809745172733917.a n = A069637 (n + 1)

end A069637

/-! ## A069637.P8640492395190602424

`n-(A085970(n+1)+A000720(n+1))`
-/

namespace A069637.P8640492395190602424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A085970 (n + 1) + A000720 (n + 1))

end

end A069637.P8640492395190602424

namespace A069637

/-- `n-(A085970(n+1)+A000720(n+1))` -/
def P8640492395190602424.Spec : Prop :=
  ∀ n, P8640492395190602424.a n = A069637 (n + 1)

end A069637

/-! ## A069637.P5843568213957713224

`∑[A001221(A014963(n+1)²%(n+2))]`
-/

namespace A069637.P5843568213957713224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.tmod (A014963 (n + 1) ^ 2) (n + 2 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069637.P5843568213957713224

namespace A069637

/-- `∑[A001221(A014963(n+1)²%(n+2))]` -/
def P5843568213957713224.Spec : Prop :=
  ∀ n, P5843568213957713224.a n = A069637 (n + 1)

end A069637

/-! ## A069637.P6345588454408481436

`∑[(A000010(n+1)+1)%A014963(n+1)]`
-/

namespace A069637.P6345588454408481436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (n + 1) + 1) (A014963 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069637.P6345588454408481436

namespace A069637

/-- `∑[(A000010(n+1)+1)%A014963(n+1)]` -/
def P6345588454408481436.Spec : Prop :=
  ∀ n, P6345588454408481436.a n = A069637 (n + 1)

end A069637

/-! ## A069637.P15972132797735348254

`∑[A010051(A181819(n+1)-A010051(n+1))]`
-/

namespace A069637.P15972132797735348254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A181819 (n + 1) - A010051 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069637.P15972132797735348254

namespace A069637

/-- `∑[A010051(A181819(n+1)-A010051(n+1))]` -/
def P15972132797735348254.Spec : Prop :=
  ∀ n, P15972132797735348254.a n = A069637 (n + 1)

end A069637

/-! ## A069637.P4443258579487087386

`∑[A001222(A014963((n+1)/A014963(n+1)))]`
-/

namespace A069637.P4443258579487087386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A014963 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A014963 (n + 1) : ℚ))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069637.P4443258579487087386

namespace A069637

/-- `∑[A001222(A014963((n+1)/A014963(n+1)))]` -/
def P4443258579487087386.Spec : Prop :=
  ∀ n, P4443258579487087386.a n = A069637 (n + 1)

end A069637

/-!
# A069638: "Sorted" sum of two previous terms, beginning with 0,1. "Sorted" means to sort the digits of the sum in ascending order.

The programs for A069638, there is no canonical definition to state claims against.
-/

/-! ## A069638.P18370986558413761024

`A004185(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A069638.P18370986558413761024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A004185 (a (n - 1) + a (n - 2)).toNat

end

end A069638.P18370986558413761024

/-!
# A069639: Smallest composite k such that phi(k) > k*(1-1/n^2).

The programs for A069639, the canonical program `A069639.P8862387872476146711` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069639 has offset 1).

The definition of A069639 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007491, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069639.P8862387872476146711

`A007491(n+1)²`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A069639

/-- `A007491(n+1)²` -/
def P8862387872476146711.Spec : Prop :=
  ∀ n, P8862387872476146711.a n = A069639 (n + 1)

theorem P8862387872476146711.correct : P8862387872476146711.Spec := by
  intro n
  simp only [A069639, Nat.add_sub_cancel]

end A069639

/-! ## A069639.P12385070303094425255

`A007918((n+1)²)²`
-/

namespace A069639.P12385070303094425255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 ((n + 1) ^ 2) ^ 2

end

end A069639.P12385070303094425255

namespace A069639

/-- `A007918((n+1)²)²` -/
def P12385070303094425255.Spec : Prop :=
  ∀ n, P12385070303094425255.a n = A069639 (n + 1)

end A069639

/-! ## A069639.P5001959707520439407

`(A053000(n+1)+(n+1)²)²`
-/

namespace A069639.P5001959707520439407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053000 (n + 1) + ((n + 1) ^ 2 : ℤ)) ^ 2

end

end A069639.P5001959707520439407

namespace A069639

/-- `(A053000(n+1)+(n+1)²)²` -/
def P5001959707520439407.Spec : Prop :=
  ∀ n, P5001959707520439407.a n = A069639 (n + 1)

end A069639

/-! ## A069639.P2866822636845760719

`A175787(A132635(n+1))²`
-/

namespace A069639.P2866822636845760719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (A132635 (n + 1)).toNat ^ 2

end

end A069639.P2866822636845760719

namespace A069639

/-- `A175787(A132635(n+1))²` -/
def P2866822636845760719.Spec : Prop :=
  ∀ n, P2866822636845760719.a n = A069639 (n + 1)

end A069639

/-! ## A069639.P12551585282675780321

`A001248(A038107(n+1)+1)`
-/

namespace A069639.P12551585282675780321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (A038107 (n + 1) + 1).toNat

end

end A069639.P12551585282675780321

namespace A069639

/-- `A001248(A038107(n+1)+1)` -/
def P12551585282675780321.Spec : Prop :=
  ∀ n, P12551585282675780321.a n = A069639 (n + 1)

end A069639

/-! ## A069639.P12591232799724416914

`A280076(A038107(n+1)+2)`
-/

namespace A069639.P12591232799724416914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (A038107 (n + 1) + 2).toNat

end

end A069639.P12591232799724416914

namespace A069639

/-- `A280076(A038107(n+1)+2)` -/
def P12591232799724416914.Spec : Prop :=
  ∀ n, P12591232799724416914.a n = A069639 (n + 1)

end A069639

/-! ## A069639.P17576595444507202839

`A151800((n+1)²)²`
-/

namespace A069639.P17576595444507202839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n + 1) ^ 2) ^ 2

end

end A069639.P17576595444507202839

namespace A069639

/-- `A151800((n+1)²)²` -/
def P17576595444507202839.Spec : Prop :=
  ∀ n, P17576595444507202839.a n = A069639 (n + 1)

end A069639

/-! ## A069639.P16666629292066652406

`record[A151800(A078898(n)²)²]`
-/

namespace A069639.P16666629292066652406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A078898 n ^ 2).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069639.P16666629292066652406

namespace A069639

/-- `record[A151800(A078898(n)²)²]` -/
def P16666629292066652406.Spec : Prop :=
  ∀ n, P16666629292066652406.a n = A069639 (n + 1)

end A069639

/-! ## A069639.P17095734744024999338

`record[A007491(A134478(n))²]`
-/

namespace A069639.P17095734744024999338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (A134478 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069639.P17095734744024999338

namespace A069639

/-- `record[A007491(A134478(n))²]` -/
def P17095734744024999338.Spec : Prop :=
  ∀ n, P17095734744024999338.a n = A069639 (n + 1)

end A069639

/-! ## A069639.P1844983134444760378

`A118754(A008738(n+1))²`
-/

namespace A069639.P1844983134444760378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118754 (A008738 (n + 1)).toNat ^ 2

end

end A069639.P1844983134444760378

namespace A069639

/-- `A118754(A008738(n+1))²` -/
def P1844983134444760378.Spec : Prop :=
  ∀ n, P1844983134444760378.a n = A069639 (n + 1)

end A069639

/-! ## A069639.P6213925287986834164

`A118753(A002620(n+1))²`
-/

namespace A069639.P6213925287986834164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118753 (A002620 (n + 1)).toNat ^ 2

end

end A069639.P6213925287986834164

namespace A069639

/-- `A118753(A002620(n+1))²` -/
def P6213925287986834164.Spec : Prop :=
  ∀ n, P6213925287986834164.a n = A069639 (n + 1)

end A069639

/-! ## A069639.P8266311600952609926

`A060264(A007590(n+1))²`
-/

namespace A069639.P8266311600952609926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (A007590 (n + 1)).toNat ^ 2

end

end A069639.P8266311600952609926

namespace A069639

/-- `A060264(A007590(n+1))²` -/
def P8266311600952609926.Spec : Prop :=
  ∀ n, P8266311600952609926.a n = A069639 (n + 1)

end A069639

/-! ## A069639.P8142118440723111721

`A069549((n+1)²)`
-/

namespace A069639.P8142118440723111721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069549 ((n + 1) ^ 2)

end

end A069639.P8142118440723111721

namespace A069639

/-- `A069549((n+1)²)` -/
def P8142118440723111721.Spec : Prop :=
  ∀ n, P8142118440723111721.a n = A069639 (n + 1)

end A069639

/-! ## A069639.P1746841116148094468

`A266620((n+1)²)²`
-/

namespace A069639.P1746841116148094468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266620 ((n + 1) ^ 2) ^ 2

end

end A069639.P1746841116148094468

namespace A069639

/-- `A266620((n+1)²)²` -/
def P1746841116148094468.Spec : Prop :=
  ∀ n, P1746841116148094468.a n = A069639 (n + 1)

end A069639

/-! ## A069639.P4659705039429665166

`(A064778((n+1)²)+1)²`
-/

namespace A069639.P4659705039429665166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A064778 ((n + 1) ^ 2) + 1) ^ 2

end

end A069639.P4659705039429665166

namespace A069639

/-- `(A064778((n+1)²)+1)²` -/
def P4659705039429665166.Spec : Prop :=
  ∀ n, P4659705039429665166.a n = A069639 (n + 1)

end A069639

/-! ## A069639.P10099165900472139225

`A000040(A036234((n+1)²))²`
-/

namespace A069639.P10099165900472139225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A036234 ((n + 1) ^ 2)).toNat ^ 2

end

end A069639.P10099165900472139225

namespace A069639

/-- `A000040(A036234((n+1)²))²` -/
def P10099165900472139225.Spec : Prop :=
  ∀ n, P10099165900472139225.a n = A069639 (n + 1)

end A069639

/-! ## A069639.P6075438162997627225

`A126918(A243069((n+1)²))²`
-/

namespace A069639.P6075438162997627225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126918 (A243069 ((n + 1) ^ 2)).toNat ^ 2

end

end A069639.P6075438162997627225

namespace A069639

/-- `A126918(A243069((n+1)²))²` -/
def P6075438162997627225.Spec : Prop :=
  ∀ n, P6075438162997627225.a n = A069639 (n + 1)

end A069639

/-!
# A069640: Let M_n be the n X n matrix with M_n(i,j)=1/(i+j+1); then a(n)=1/det(M_n).

The programs for A069640, there is no canonical definition to state claims against.
-/

/-! ## A069640.P1397177344425179323

`(2*(n+1)+1)!*(n+1)!/2^(n+1)*A003046(n+1)²`
-/

namespace A069640.P1397177344425179323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * (n + 1) + 1) * Nat.factorial (n + 1) : ℚ) / (2 ^ (n + 1) : ℚ) * (A003046 (n + 1) ^ 2 : ℚ)

end

end A069640.P1397177344425179323

/-! ## A069640.P8524608635576687839

`A002204(n+2)/(n+2)`
-/

namespace A069640.P8524608635576687839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002204 (n + 2) : ℚ) / (n + 2 : ℚ)

end

end A069640.P8524608635576687839

/-! ## A069640.P13529326538452191365

`A324444(n+1)/A000178(n)²`
-/

namespace A069640.P13529326538452191365
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324444 (n + 1) : ℚ) / (A000178 n ^ 2 : ℚ)

end

end A069640.P13529326538452191365

/-! ## A069640.P15294824969252701531

`A156584(∑[4*(n+1)])/A000178(n)²`
-/

namespace A069640.P15294824969252701531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156584 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A000178 n ^ 2 : ℚ)

end

end A069640.P15294824969252701531

/-!
# A069646: Weight distribution of [97,49,15] binary quadratic-residue (or QR) code.

The programs for A069646, there is no canonical definition to state claims against.
-/

/-! ## A069646.P4731307884586704852

`A069531(record[A182491(n+1)²])`
-/

namespace A069646.P4731307884586704852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182491 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069646.P4731307884586704852

/-! ## A069646.P13386781779825830079

`A069531(∑[A087845(3*n+2)]²)`
-/

namespace A069646.P13386781779825830079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069531 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A069646.P13386781779825830079

/-! ## A069646.P4469555195965288579

`char[15*n]*A287155(A226076(n+1))`
-/

namespace A069646.P4469555195965288579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A287155 (A226076 (n + 1)).toNat

end

end A069646.P4469555195965288579

/-! ## A069646.P14777286804652070599

`C(A275972(A308996(n)), xor(2, 6*n+3))`
-/

namespace A069646.P14777286804652070599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A275972 (A308996 n).toNat).toNat (Nat.xor 2 (6 * n + 3))

end

end A069646.P14777286804652070599

/-! ## A069646.P14022729286778569573

`C(A069709(n+1), A028260(3*n+1)+1)`
-/

namespace A069646.P14022729286778569573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A069709 (n + 1)).toNat (A028260 (3 * n + 1) + 1).toNat

end

end A069646.P14022729286778569573

/-!
# A069647: a(1) = 1; for n > 1, the smallest n-th power with the digit sum also a nontrivial n-th power, i.e., 10^n is not a member.

The programs for A069647, there is no canonical definition to state claims against.
-/

/-! ## A069647.P11503887430003774359

`A069648(n+1)^(n+1)`
-/

namespace A069647.P11503887430003774359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069648 (n + 1) ^ (n + 1)

end

end A069647.P11503887430003774359

/-!
# A069649: Let M_n be the n X n matrix with M_n(i,j)=i^3/(i+j); then a(n)=1/det(M_n).

The programs for A069649, there is no canonical definition to state claims against.
-/

/-! ## A069649.P17382982416237621938

`A069651(n+1)/(n+1)!`
-/

namespace A069649.P17382982416237621938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069651 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A069649.P17382982416237621938

/-! ## A069649.P5153821698081848459

`A069651(n+1)/A000142(n+1)`
-/

namespace A069649.P5153821698081848459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069651 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A069649.P5153821698081848459

/-!
# A069650: Largest n-digit number with maximal number of divisors.

The programs for A069650, there is no canonical definition to state claims against.
-/

/-! ## A069650.P4254909846447936997

`A240544(∑[A240543(n+1)])`
-/

namespace A069650.P4254909846447936997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240544 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A069650.P4254909846447936997

/-!
# A069651: For n >= 1, let M_n be the n X n matrix with M_n(i,j) = i^2/(i+j); then a(n) = 1/det(M_n). Also, a(0) = 1 by convention.

The programs for A069651, the canonical program `A069651.P8317026859462130817` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069651 has offset 0).

The definition of A069651 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069651.P8317026859462130817

`A163085(2*n)/n!²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A069651

/-- `A163085(2*n)/n!²` -/
def P8317026859462130817.Spec : Prop :=
  ∀ n, P8317026859462130817.a n = (A069651 n : ℚ)

end A069651

/-! ## A069651.P10967192857248928960

`A163085(2*n+1)/(2*n+1)!`
-/

namespace A069651.P10967192857248928960
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163085 (2 * n + 1) : ℚ) / (Nat.factorial (2 * n + 1) : ℚ)

end

end A069651.P10967192857248928960

namespace A069651

/-- `A163085(2*n+1)/(2*n+1)!` -/
def P10967192857248928960.Spec : Prop :=
  ∀ n, P10967192857248928960.a n = (A069651 n : ℚ)

end A069651

/-! ## A069651.P15295510252755908162

`∏[C(2*n, n)²/floor(2/acot(n))]`
-/

namespace A069651.P15295510252755908162
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n ^ 2 : ℚ) / (⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A069651.P15295510252755908162

namespace A069651

/-- `∏[C(2*n, n)²/floor(2/acot(n))]` -/
def P15295510252755908162.Spec : Prop :=
  ∀ n, P15295510252755908162.a n = (A069651 n : ℚ)

end A069651

/-! ## A069651.P4061774876794413429

`C(2*n, n)²/(2*n)*a(n-1)` with `a(0)=1`
-/

namespace A069651.P4061774876794413429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (2 * n) n ^ 2 : ℚ) / (2 * n : ℚ) * a (n - 1)

end

end A069651.P4061774876794413429

namespace A069651

/-- `C(2*n, n)²/(2*n)*a(n-1)` -/
def P4061774876794413429.Spec : Prop :=
  ∀ n, P4061774876794413429.a n = (A069651 n : ℚ)

end A069651

/-! ## A069651.P3711721189593851203

`A216629(2*n)`
-/

namespace A069651.P3711721189593851203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216629 (2 * n)

end

end A069651.P3711721189593851203

namespace A069651

/-- `A216629(2*n)` -/
def P3711721189593851203.Spec : Prop :=
  ∀ n, P3711721189593851203.a n = A069651 n

end A069651

/-!
# A069652: GCD of all the numbers obtained by permuting the digits of n.

The programs for A069652, there is no canonical definition to state claims against.
-/

/-! ## A069652.P17489631903645459702

`gcd((n+1)/A367825(∑[n+1]), A045876(n+1))`
-/

namespace A069652.P17489631903645459702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A367825 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))) (A045876 (n + 1))

end

end A069652.P17489631903645459702

/-! ## A069652.P7628356060400409568

`A055483(n+1)%A128253(A322809(n+1))`
-/

namespace A069652.P7628356060400409568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A055483 (n + 1)) (A128253 (A322809 (n + 1)).toNat)

end

end A069652.P7628356060400409568

/-! ## A069652.P4444583627031396182

`A055483(A118759(n)+1)`
-/

namespace A069652.P4444583627031396182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (A118759 n + 1).toNat

end

end A069652.P4444583627031396182

/-!
# A069653: Smallest n-digit number with only prime divisors 2 or 3 (i.e., of the form 2^a * 3^b).

The programs for A069653, there is no canonical definition to state claims against.
-/

/-! ## A069653.P7465279297188097550

`A003586(A100752(n)+A057427(n))`
-/

namespace A069653.P7465279297188097550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A100752 n + A057427 n).toNat

end

end A069653.P7465279297188097550

/-! ## A069653.P1345967694065126277

`A003586(A100752(n)-A057428(n))`
-/

namespace A069653.P1345967694065126277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A100752 n - A057428 n).toNat

end

end A069653.P1345967694065126277

/-! ## A069653.P5179453742894679831

`A003586(A100752(n)+A057428(n)²)`
-/

namespace A069653.P5179453742894679831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (A100752 n + A057428 n ^ 2).toNat

end

end A069653.P5179453742894679831

/-!
# A069656: Perfect powers that can be permuted into another perfect power (in base 10).

The programs for A069656, there is no canonical definition to state claims against.
-/

/-! ## A069656.P11988397983429289053

`A001694(eq[5, A215244(n)])`
-/

namespace A069656.P11988397983429289053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069656.P11988397983429289053

/-!
# A069657: Sum( S(n,k) * M(k-1), k=1..n), where S(n,k) = Stirling numbers of the second kind, M(n) = Motzkin numbers, A001006.

The programs for A069657, there is no canonical definition to state claims against.
-/

/-! ## A069657.P10788015555832153483

`A194161(A002992(2*n+1)+n)`
-/

namespace A069657.P10788015555832153483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194161 (A002992 (2 * n + 1) + (n : ℤ)).toNat

end

end A069657.P10788015555832153483

/-! ## A069657.P18411837017519274329

`A212198(n)-A139251(A014381(n))`
-/

namespace A069657.P18411837017519274329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212198 n - A139251 (A014381 n).toNat

end

end A069657.P18411837017519274329

/-! ## A069657.P1436572791848382404

`A105228(A151073(n))%A151050(n)`
-/

namespace A069657.P1436572791848382404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105228 (A151073 n).toNat) (A151050 n)

end

end A069657.P1436572791848382404

/-!
# A069658: a(1) = 1; a(n) = smallest nontrivial n-digit perfect power.

The programs for A069658, the canonical program `A069658.P1396198842885057433` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069658 has offset 1).

The definition of A069658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069658.P14158974098747363290

`ceil(sqrt(or(1, 10^n)))²`
-/

namespace A069658.P14158974098747363290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Nat.lor 1 (10 ^ n) : ℝ)⌉ ^ 2

end

end A069658.P14158974098747363290

namespace A069658

/-- `ceil(sqrt(or(1, 10^n)))²` -/
def P14158974098747363290.Spec : Prop :=
  ∀ n, P14158974098747363290.a n = A069658 (n + 1)

end A069658

/-! ## A069658.P17207380399088680520

`ceil(sqrt(ceil(tanh(n)+10^n)))²`
-/

namespace A069658.P17207380399088680520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (⌈Real.tanh (n : ℝ) + (10 ^ n : ℝ)⌉ : ℝ)⌉ ^ 2

end

end A069658.P17207380399088680520

namespace A069658

/-- `ceil(sqrt(ceil(tanh(n)+10^n)))²` -/
def P17207380399088680520.Spec : Prop :=
  ∀ n, P17207380399088680520.a n = A069658 (n + 1)

end A069658

/-! ## A069658.P17737981177205248493

`ceil(sqrt(and(-2, 10^n)+1))²`
-/

namespace A069658.P17737981177205248493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Int.land (-2) (10 ^ n : ℤ) + 1 : ℝ)⌉ ^ 2

end

end A069658.P17737981177205248493

namespace A069658

/-- `ceil(sqrt(and(-2, 10^n)+1))²` -/
def P17737981177205248493.Spec : Prop :=
  ∀ n, P17737981177205248493.a n = A069658 (n + 1)

end A069658

/-! ## A069658.P842898160820172040

`ceil(sqrt(xor(1, and(-2, 10^n))))²`
-/

namespace A069658.P842898160820172040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (Int.xor 1 (Int.land (-2) (10 ^ n : ℤ)) : ℝ)⌉ ^ 2

end

end A069658.P842898160820172040

namespace A069658

/-- `ceil(sqrt(xor(1, and(-2, 10^n))))²` -/
def P842898160820172040.Spec : Prop :=
  ∀ n, P842898160820172040.a n = A069658 (n + 1)

end A069658

/-! ## A069658.P1242657753412718671

`ceil(sqrt(lcm(2, 10^n+1)/2))²`
-/

namespace A069658.P1242657753412718671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((Nat.lcm 2 (10 ^ n + 1) : ℚ) / 2 : ℝ)⌉ ^ 2

end

end A069658.P1242657753412718671

namespace A069658

/-- `ceil(sqrt(lcm(2, 10^n+1)/2))²` -/
def P1242657753412718671.Spec : Prop :=
  ∀ n, P1242657753412718671.a n = A069658 (n + 1)

end A069658

/-! ## A069658.P8957714513274613732

`ceil(sqrt(A155594(n)))²`
-/

namespace A069658.P8957714513274613732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A155594 n : ℝ)⌉ ^ 2

end

end A069658.P8957714513274613732

namespace A069658

/-- `ceil(sqrt(A155594(n)))²` -/
def P8957714513274613732.Spec : Prop :=
  ∀ n, P8957714513274613732.a n = A069658 (n + 1)

end A069658

/-! ## A069658.P1396198842885057433

`(A057427(n)+A018072(2*n))²`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069658

/-- `(A057427(n)+A018072(2*n))²` -/
def P1396198842885057433.Spec : Prop :=
  ∀ n, P1396198842885057433.a n = A069658 (n + 1)

theorem P1396198842885057433.correct : P1396198842885057433.Spec := by
  intro n
  simp only [A069658, Nat.add_sub_cancel]

end A069658

/-! ## A069658.P3223545565581111129

`(A157928(n+1)+A018072(2*n))²`
-/

namespace A069658.P3223545565581111129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A157928 (n + 1) + A018072 (2 * n)) ^ 2

end

end A069658.P3223545565581111129

namespace A069658

/-- `(A157928(n+1)+A018072(2*n))²` -/
def P3223545565581111129.Spec : Prop :=
  ∀ n, P3223545565581111129.a n = A069658 (n + 1)

end A069658

/-!
# A069660: Order of the subgroup of the symmetric group S_n generated by the cycles (1,3) and (1,2,3,...,n).

The programs for A069660, there is no canonical definition to state claims against.
-/

/-! ## A069660.P5880345232011875287

`A000142(n+3)/A028310(A138364(n+2))`
-/

namespace A069660.P5880345232011875287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 3) : ℚ) / (A028310 (A138364 (n + 2)).toNat : ℚ)

end

end A069660.P5880345232011875287

/-!
# A069661: Smallest n-digit prime with maximum digit sum.

The programs for A069661, there is no canonical definition to state claims against.
-/

/-! ## A069661.P3097412503510013946

`A067180(∑{digits}[A069662(n+1), #])`
-/

namespace A069661.P3097412503510013946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069662 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A069661.P3097412503510013946

/-! ## A069661.P13189095122117820711

`A067180(A008591(n)+dr(A069662(n+1)))`
-/

namespace A069661.P13189095122117820711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (A008591 n + (SequenceMachineLib.digitalRoot (A069662 (n + 1)) : ℤ)).toNat

end

end A069661.P13189095122117820711

/-! ## A069661.P5613353336617490383

`A067180(A300186(n+1))`
-/

namespace A069661.P5613353336617490383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067180 (A300186 (n + 1)).toNat

end

end A069661.P5613353336617490383

/-!
# A069662: Largest n-digit prime with maximum digit sum.

The programs for A069662, there is no canonical definition to state claims against.
-/

/-! ## A069662.P9833676823361212541

`A088115(A300186(n+1))`
-/

namespace A069662.P9833676823361212541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088115 (A300186 (n + 1)).toNat

end

end A069662.P9833676823361212541

/-! ## A069662.P564155449927442683

`A088115(∑{digits}[A069661(n+1), #])`
-/

namespace A069662.P564155449927442683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088115 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A069662.P564155449927442683

/-!
# A069663: Smallest n-digit prime with minimum digit sum.

The programs for A069663, there is no canonical definition to state claims against.
-/

/-! ## A069663.P12459752155396705311

`A000040(A064861(3*n)+A006880(n))`
-/

namespace A069663.P12459752155396705311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A064861 (3 * n) + A006880 n).toNat

end

end A069663.P12459752155396705311

/-!
# A069664: Largest n-digit prime with minimum digit sum.

The programs for A069664, there is no canonical definition to state claims against.
-/

/-! ## A069664.P1319674543092338105

`p?[A049345(A276076(n))+1]`
-/

namespace A069664.P1319674543092338105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049345 (A276076 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069664.P1319674543092338105

/-!
# A069665: Smallest n-digit square with maximum digit sum.

The programs for A069665, there is no canonical definition to state claims against.
-/

/-! ## A069665.P7065622035626749766

`A062685(A371728(n+1))`
-/

namespace A069665.P7065622035626749766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062685 (A371728 (n + 1)).toNat

end

end A069665.P7065622035626749766

/-!
# A069666: Largest n-digit square with maximum digit sum.

The programs for A069666, there is no canonical definition to state claims against.
-/

/-! ## A069666.P12261533186745969482

`A379298(n+1)²`
-/

namespace A069666.P12261533186745969482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379298 (n + 1) ^ 2

end

end A069666.P12261533186745969482

/-! ## A069666.P14580332479228604385

`A379298(A000027(n+1))^2`
-/

namespace A069666.P14580332479228604385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379298 (A000027 (n + 1)).toNat ^ 2

end

end A069666.P14580332479228604385

/-! ## A069666.P17779070750248675393

`A379298(n+1)^A273915(A008621(n))`
-/

namespace A069666.P17779070750248675393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379298 (n + 1) : ℚ) ^ (A273915 (A008621 n).toNat : ℤ)

end

end A069666.P17779070750248675393

/-! ## A069666.P10696606766530458405

`A379298(n+1)^A273915(A273915(n))`
-/

namespace A069666.P10696606766530458405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379298 (n + 1) : ℚ) ^ (A273915 (A273915 n).toNat : ℤ)

end

end A069666.P10696606766530458405

/-! ## A069666.P14152879146461955461

`A379298(A000027(n+1))*A379298(n+1)`
-/

namespace A069666.P14152879146461955461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379298 (A000027 (n + 1)).toNat * A379298 (n + 1)

end

end A069666.P14152879146461955461

/-!
# A069667: Smallest nontrivial (no trailing zeros) n-digit square with minimum digit sum.

The programs for A069667, there is no canonical definition to state claims against.
-/

/-! ## A069667.P12886801571864906909

`ceil(∏{p}[A279749(n), sqrt(#)])²`
-/

namespace A069667.P12886801571864906909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f1 n).natAbs, Real.sqrt (p : ℝ)⌉ ^ 2

end

end A069667.P12886801571864906909

/-!
# A069668: Largest nontrivial (no trailing zeros) n-digit square with minimum digit sum.

The programs for A069668, there is no canonical definition to state claims against.
-/

/-! ## A069668.P8457939771741343727

`A377654(A054297(n+1))`
-/

namespace A069668.P8457939771741343727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377654 (A054297 (n + 1)).toNat

end

end A069668.P8457939771741343727

/-!
# A069669: Smallest n-digit triangular number with maximum digit sum.

The programs for A069669, there is no canonical definition to state claims against.
-/

/-! ## A069669.P15389043335613225692

`A062688(∑{digits}[A069670(n+1), #])`
-/

namespace A069669.P15389043335613225692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069670 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062688 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A069669.P15389043335613225692

/-!
# A069671: Smallest n-digit triangular number with minimum digit sum.

The programs for A069671, there is no canonical definition to state claims against.
-/

/-! ## A069671.P2287655917678481099

`A119033(floor(5*n/3)+1)%A206856(n+1)`
-/

namespace A069671.P2287655917678481099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119033 (⌊5 * ((n : ℚ) / 3)⌋ + 1).toNat) (A206856 (n + 1))

end

end A069671.P2287655917678481099

/-! ## A069671.P13492926367233487214

`A119033(lt[A002866(n), A281519(n)])`
-/

namespace A069671.P13492926367233487214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002866 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119033 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069671.P13492926367233487214

/-! ## A069671.P5863585815023821863

`A119033(lt[A255927(n), A281519(n)])`
-/

namespace A069671.P5863585815023821863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255927 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119033 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069671.P5863585815023821863

/-!
# A069673: Nonpalindromic triangular numbers whose digit reversal is also a triangular number (possibly with fewer digits).

The programs for A069673, there is no canonical definition to state claims against.
-/

/-! ## A069673.P7808700973023478848

`A117310(lt[A117320(3*(n+1)), A117313(n+1)])`
-/

namespace A069673.P7808700973023478848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117320 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117313 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117310 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069673.P7808700973023478848

/-!
# A069677: Primes with either no internal digits or all internal digits are 2.

The programs for A069677, there is no canonical definition to state claims against.
-/

/-! ## A069677.P538276003257795492

`p?[A118760(n)]`
-/

namespace A069677.P538276003257795492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069677.P538276003257795492

/-! ## A069677.P2201648826364368468

`A136096(A077390(n+1))`
-/

namespace A069677.P2201648826364368468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136096 (A077390 (n + 1)).toNat

end

end A069677.P2201648826364368468

/-! ## A069677.P4648597480336956751

`A077390(n+1)%A222588(n)`
-/

namespace A069677.P4648597480336956751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077390 (n + 1)) (A222588 n)

end

end A069677.P4648597480336956751

/-! ## A069677.P9838593859680705252

`and(A077390(n+1), A152388(n+1))`
-/

namespace A069677.P9838593859680705252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077390 (n + 1)) (A152388 (n + 1))

end

end A069677.P9838593859680705252

/-! ## A069677.P8394934141243163617

`and(A077390(n+1), A383046(n+3))`
-/

namespace A069677.P8394934141243163617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077390 (n + 1)) (A383046 (n + 3))

end

end A069677.P8394934141243163617

/-!
# A069678: Primes with either no internal digits or all internal digits are 3.

The programs for A069678, there is no canonical definition to state claims against.
-/

/-! ## A069678.P4997335429656893749

`record[A000040(n+1)%A344957(n+3)]`
-/

namespace A069678.P4997335429656893749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A344957 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069678.P4997335429656893749

/-! ## A069678.P2583944046313739651

`A000040(A243903(A243903(n+1)))`
-/

namespace A069678.P2583944046313739651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A243903 (A243903 (n + 1)).toNat).toNat

end

end A069678.P2583944046313739651

/-! ## A069678.P5287945376751271203

`A238852(n+1)%A141096(n+1)`
-/

namespace A069678.P5287945376751271203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238852 (n + 1)) (A141096 (n + 1))

end

end A069678.P5287945376751271203

/-! ## A069678.P10408805815721394052

`∩[A051534(n+1), A242541(n+1)]`
-/

namespace A069678.P10408805815721394052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069678.P10408805815721394052

/-!
# A069679: Primes with either no internal digits or all internal digits are 4.

The programs for A069679, there is no canonical definition to state claims against.
-/

/-! ## A069679.P10406138140992162027

`A296882(A238852(n+1)%A141096(n+1))`
-/

namespace A069679.P10406138140992162027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296882 (Int.tmod (A238852 (n + 1)) (A141096 (n + 1))).toNat

end

end A069679.P10406138140992162027

/-! ## A069679.P5032522560584059880

`∩[A296882(A000040(n+1)), A329131(n+1)]`
-/

namespace A069679.P5032522560584059880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296882 (A000040 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069679.P5032522560584059880

/-!
# A069680: Primes with either no internal digits or all internal digits are 5.

The programs for A069680, there is no canonical definition to state claims against.
-/

/-! ## A069680.P8367434686609772992

`p?[A130696(n+1)-2]`
-/

namespace A069680.P8367434686609772992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069680.P8367434686609772992

/-! ## A069680.P200451364042711871

`∩[A000040(n+1), A130696(n+1)-2]`
-/

namespace A069680.P200451364042711871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069680.P200451364042711871

/-! ## A069680.P8271354047631132153

`A006530(A000040(n+1)*A333418(n+1))`
-/

namespace A069680.P8271354047631132153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 1) * A333418 (n + 1)).toNat

end

end A069680.P8271354047631132153

/-! ## A069680.P3108982599770006053

`A264668(A238852(n+1))+A136096(A077390(n+1))`
-/

namespace A069680.P3108982599770006053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 (A238852 (n + 1)).toNat + A136096 (A077390 (n + 1)).toNat

end

end A069680.P3108982599770006053

/-!
# A069681: Primes with either no internal digits or all internal digits are 6.

The programs for A069681, there is no canonical definition to state claims against.
-/

/-! ## A069681.P13784327375189406781

`A006530(A000040(n+1)*A382152(n+1))`
-/

namespace A069681.P13784327375189406781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 1) * A382152 (n + 1)).toNat

end

end A069681.P13784327375189406781

/-! ## A069681.P232134942501971734

`A006530(A000040(n+1)/A382152(n+1)^-1)`
-/

namespace A069681.P232134942501971734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) / (A382152 (n + 1) : ℚ) ^ (-1 : ℤ))).toNat

end

end A069681.P232134942501971734

/-!
# A069682: Primes with either no internal digits or all internal digits are 7.

The programs for A069682, there is no canonical definition to state claims against.
-/

/-! ## A069682.P14325347661341777895

`A231037(A195768(n+1))+A000040(n+1)`
-/

namespace A069682.P14325347661341777895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231037 (A195768 (n + 1)).toNat + A000040 (n + 1)

end

end A069682.P14325347661341777895

/-!
# A069683: Primes with either no internal digits or all internal digits are 8.

The programs for A069683, there is no canonical definition to state claims against.
-/

/-! ## A069683.P1355442734404621236

`A006530(A000040(n+1)*A068930(n+4))`
-/

namespace A069683.P1355442734404621236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000040 (n + 1) * A068930 (n + 4)).toNat

end

end A069683.P1355442734404621236

/-!
# A069684: Primes with either no internal digits or all internal digits are 9.

The programs for A069684, there is no canonical definition to state claims against.
-/

/-! ## A069684.P12009907472094796581

`eq[A264668(n)², A325142(n)]`
-/

namespace A069684.P12009907472094796581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069684.P12009907472094796581

/-! ## A069684.P14296388050368664534

`eq[A000007(A264668(n)), A003415(n)]`
-/

namespace A069684.P14296388050368664534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A264668 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069684.P14296388050368664534

/-! ## A069684.P17420972130785114868

`eq[A264668(n), A341702(n)]`
-/

namespace A069684.P17420972130785114868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341702 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069684.P17420972130785114868

/-! ## A069684.P2978873766208375666

`eq[n*A264668(n), A040081(n+1)]`
-/

namespace A069684.P2978873766208375666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A264668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040081 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069684.P2978873766208375666

/-! ## A069684.P17409855186907761874

`lt[A264668(n), A000007(A040081(n+1))]`
-/

namespace A069684.P17409855186907761874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A040081 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A069684.P17409855186907761874

/-!
# A069685: Denominators of coefficients in -log(1+x)log(1-x) power series.

The programs for A069685, there is no canonical definition to state claims against.
-/

/-! ## A069685.P5556555823784536937

`(n+1)*A058312(Δ[n²])`
-/

namespace A069685.P5556555823784536937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A058312 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A069685.P5556555823784536937

/-! ## A069685.P2443524840862136747

`A058312(2*n+1)*(n+1)`
-/

namespace A069685.P2443524840862136747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058312 (2 * n + 1) * (n + 1 : ℤ)

end

end A069685.P2443524840862136747

/-! ## A069685.P9118644362897514603

`A111876(n)*A335023(2*n+1)`
-/

namespace A069685.P9118644362897514603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111876 n * A335023 (2 * n + 1)

end

end A069685.P9118644362897514603

/-! ## A069685.P17398904905933732918

`(A075828(2*(n+1))+A075827(2*(n+1)))/2`
-/

namespace A069685.P17398904905933732918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075828 (2 * (n + 1)) + A075827 (2 * (n + 1)) : ℚ) / 2

end

end A069685.P17398904905933732918

/-!
# A069686: Primes whose internal digits form a prime.

The programs for A069686, there is no canonical definition to state claims against.
-/

/-! ## A069686.P4623349125782466033

`A077390(A227549(n+1)+26)`
-/

namespace A069686.P4623349125782466033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077390 (A227549 (n + 1) + 26).toNat

end

end A069686.P4623349125782466033

/-! ## A069686.P15213022090094436694

`A077360(A032555(n+1))`
-/

namespace A069686.P15213022090094436694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077360 (A032555 (n + 1)).toNat

end

end A069686.P15213022090094436694

/-! ## A069686.P15522800496727577377

`A077360(A032559(n+1))`
-/

namespace A069686.P15522800496727577377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077360 (A032559 (n + 1)).toNat

end

end A069686.P15522800496727577377

/-! ## A069686.P14074441040945922920

`A077360(A077739(n+1))`
-/

namespace A069686.P14074441040945922920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077360 (A077739 (n + 1)).toNat

end

end A069686.P14074441040945922920

/-! ## A069686.P17882338606911436223

`A077360(A078213(n+1))`
-/

namespace A069686.P17882338606911436223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077360 (A078213 (n + 1)).toNat

end

end A069686.P17882338606911436223

/-!
# A069687: Primes that yield another prime on placing a 1 on both sides (as leading and trailing digits).

The programs for A069687, there is no canonical definition to state claims against.
-/

/-! ## A069687.P9762539713281954598

`p?[A032682(n+1)]`
-/

namespace A069687.P9762539713281954598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032682 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069687.P9762539713281954598

/-! ## A069687.P3284723052023290183

`record[A006530(A032682(n+2))]`
-/

namespace A069687.P3284723052023290183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A032682 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069687.P3284723052023290183

/-! ## A069687.P2160492753705823387

`or(1, p?[A032682(A028310(n))])`
-/

namespace A069687.P2160492753705823387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032682 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A069687.P2160492753705823387

/-! ## A069687.P17549414842601202282

`filter[A032682(n+2), A010051(#)]`
-/

namespace A069687.P17549414842601202282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032682 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A069687.P17549414842601202282

/-! ## A069687.P14301787080226009296

`filter[A032682(n+2), A323152(#)]`
-/

namespace A069687.P14301787080226009296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032682 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A069687.P14301787080226009296

/-! ## A069687.P11968257154333182725

`filter[A032682(n+2), A323153(#)]`
-/

namespace A069687.P11968257154333182725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032682 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A069687.P11968257154333182725

/-! ## A069687.P7374211498101246695

`∩[A000040(n+1), A032682(n+1)]`
-/

namespace A069687.P7374211498101246695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069687.P7374211498101246695

/-! ## A069687.P13137569652632918636

`∩[A006005(n+1), A032682(n+1)]`
-/

namespace A069687.P13137569652632918636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069687.P13137569652632918636

/-! ## A069687.P6461891928151549505

`∩[A008578(n+1), A032682(n+1)]`
-/

namespace A069687.P6461891928151549505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032682 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069687.P6461891928151549505

/-! ## A069687.P31688015268435751

`∩[A032682(n+1), A040028(n+1)]`
-/

namespace A069687.P31688015268435751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069687.P31688015268435751

/-! ## A069687.P5809713690803797921

`∩[A032682(n+1), A040036(n+1)]`
-/

namespace A069687.P5809713690803797921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069687.P5809713690803797921

/-! ## A069687.P4075330678319097183

`∩[A032682(n+1), A040044(n+1)]`
-/

namespace A069687.P4075330678319097183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069687.P4075330678319097183

/-! ## A069687.P2779843234475095349

`∩[A032682(n+1), A040046(n+1)]`
-/

namespace A069687.P2779843234475095349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069687.P2779843234475095349

/-! ## A069687.P1706640232199721755

`∩[A032682(n+1), A040049(n+1)]`
-/

namespace A069687.P1706640232199721755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069687.P1706640232199721755

/-! ## A069687.P4235863863873560478

`∩[A032682(n+1), A040054(n+1)]`
-/

namespace A069687.P4235863863873560478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069687.P4235863863873560478

/-! ## A069687.P7699624111454116671

`∩[A032682(n+1), A040060(n+1)]`
-/

namespace A069687.P7699624111454116671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069687.P7699624111454116671

/-! ## A069687.P4957687657009263908

`∩[A032682(n+1), A040062(n+1)]`
-/

namespace A069687.P4957687657009263908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069687.P4957687657009263908

/-! ## A069687.P6936897051096323492

`∩[A032682(n+1), A040065(n+1)]`
-/

namespace A069687.P6936897051096323492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069687.P6936897051096323492

/-! ## A069687.P11826952513676386334

`∩[A032682(n+1), A040078(n+1)]`
-/

namespace A069687.P11826952513676386334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069687.P11826952513676386334

/-! ## A069687.P4595550418071888570

`∩[A032682(n+1), A040083(n+1)]`
-/

namespace A069687.P4595550418071888570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032682 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069687.P4595550418071888570

/-!
# A069688: Primes that yield another prime on placing a 3 on both sides (as leading and trailing digits).

The programs for A069688, there is no canonical definition to state claims against.
-/

/-! ## A069688.P13056456721021861908

`p?[A032683(n+1)]`
-/

namespace A069688.P13056456721021861908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069688.P13056456721021861908

/-! ## A069688.P2474520141787699717

`record[A006530(A032683(n+2))]`
-/

namespace A069688.P2474520141787699717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A032683 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069688.P2474520141787699717

/-! ## A069688.P6200734886311979467

`filter[A032683(n+1), A010051(#)]`
-/

namespace A069688.P6200734886311979467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A069688.P6200734886311979467

/-! ## A069688.P4938286262455935848

`∩[A000040(n+1), A032683(n+1)]`
-/

namespace A069688.P4938286262455935848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069688.P4938286262455935848

/-! ## A069688.P2445628424297210264

`∩[A032683(n+1), A045344(n+1)]`
-/

namespace A069688.P2445628424297210264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069688.P2445628424297210264

/-! ## A069688.P9373619178026429166

`∩[A032683(n+1), A051948(n+1)]`
-/

namespace A069688.P9373619178026429166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069688.P9373619178026429166

/-! ## A069688.P12971011904330684984

`∩[A032683(n+1), A065091(n+1)]`
-/

namespace A069688.P12971011904330684984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069688.P12971011904330684984

/-! ## A069688.P13506128485342851243

`∩[A032683(n+1), A106843(n+1)]`
-/

namespace A069688.P13506128485342851243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069688.P13506128485342851243

/-! ## A069688.P16566355202286414326

`∩[A032683(n+1), A108719(n+1)]`
-/

namespace A069688.P16566355202286414326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069688.P16566355202286414326

/-! ## A069688.P12956602436023350774

`∩[A032683(n+1), A116974(n+1)]`
-/

namespace A069688.P12956602436023350774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069688.P12956602436023350774

/-! ## A069688.P4067221654724739564

`∩[A032683(n+1), A161346(n+1)]`
-/

namespace A069688.P4067221654724739564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069688.P4067221654724739564

/-! ## A069688.P3643308621450607067

`∩[A032683(n+1), A174219(n+1)]`
-/

namespace A069688.P3643308621450607067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069688.P3643308621450607067

/-! ## A069688.P14286168889088783424

`∩[A032683(n+1), A175787(n+1)]`
-/

namespace A069688.P14286168889088783424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069688.P14286168889088783424

/-! ## A069688.P813652602408512154

`∩[A032683(n+1), A182986(n+1)]`
-/

namespace A069688.P813652602408512154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069688.P813652602408512154

/-! ## A069688.P1776941672553265473

`∩[A032683(n+1), A215848(n+1)]`
-/

namespace A069688.P1776941672553265473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069688.P1776941672553265473

/-! ## A069688.P6555540899372350993

`∩[A032683(n+1), A251595(n+1)]`
-/

namespace A069688.P6555540899372350993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069688.P6555540899372350993

/-! ## A069688.P5307232386240535888

`∩[A348283(n+1), A032683(n+1)]`
-/

namespace A069688.P5307232386240535888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069688.P5307232386240535888

/-! ## A069688.P4746702925429731387

`∩[A032683(n+1), A360781(n+1)]`
-/

namespace A069688.P4746702925429731387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069688.P4746702925429731387

/-! ## A069688.P16979875663608074425

`p?[record[A032683(A246694(n))]]`
-/

namespace A069688.P16979875663608074425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032683 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069688.P16979875663608074425

/-! ## A069688.P6192911185399202435

`p?[record[A032683(A117910(n))]]`
-/

namespace A069688.P6192911185399202435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032683 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069688.P6192911185399202435

/-!
# A069689: Primes that yield another prime on placing a 7 on both sides (as leading and trailing digits).

The programs for A069689, there is no canonical definition to state claims against.
-/

/-! ## A069689.P11366921259247018306

`p?[A032684(n+1)]`
-/

namespace A069689.P11366921259247018306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069689.P11366921259247018306

/-! ## A069689.P6263646974558729320

`filter[A032684(n+1), A010051(#)]`
-/

namespace A069689.P6263646974558729320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A069689.P6263646974558729320

/-! ## A069689.P13068663900833128536

`filter[A032684(n+1), A323152(#)]`
-/

namespace A069689.P13068663900833128536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A069689.P13068663900833128536

/-! ## A069689.P16163057515183943415

`filter[A032684(n+1), A323153(#)]`
-/

namespace A069689.P16163057515183943415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A069689.P16163057515183943415

/-! ## A069689.P16281383597963863604

`∩[A000040(n+1), A032684(n+1)]`
-/

namespace A069689.P16281383597963863604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069689.P16281383597963863604

/-! ## A069689.P746537809356332206

`∩[A003627(n+1), A032684(n+1)]`
-/

namespace A069689.P746537809356332206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069689.P746537809356332206

/-! ## A069689.P9581846831498432971

`∩[A008578(n+1), A032684(n+1)]`
-/

namespace A069689.P9581846831498432971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069689.P9581846831498432971

/-! ## A069689.P18052701863337173595

`∩[A032684(n+1), A040028(n+1)]`
-/

namespace A069689.P18052701863337173595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069689.P18052701863337173595

/-! ## A069689.P4912008625708923005

`∩[A032684(n+1), A040036(n+1)]`
-/

namespace A069689.P4912008625708923005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069689.P4912008625708923005

/-! ## A069689.P13117175353877342563

`∩[A032684(n+1), A040044(n+1)]`
-/

namespace A069689.P13117175353877342563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069689.P13117175353877342563

/-! ## A069689.P7656225475648600085

`∩[A032684(n+1), A040046(n+1)]`
-/

namespace A069689.P7656225475648600085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069689.P7656225475648600085

/-! ## A069689.P7301345958647065114

`∩[A032684(n+1), A040049(n+1)]`
-/

namespace A069689.P7301345958647065114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069689.P7301345958647065114

/-! ## A069689.P6907218609729560044

`∩[A032684(n+1), A040054(n+1)]`
-/

namespace A069689.P6907218609729560044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069689.P6907218609729560044

/-! ## A069689.P8605320886439036578

`∩[A032684(n+1), A040060(n+1)]`
-/

namespace A069689.P8605320886439036578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069689.P8605320886439036578

/-! ## A069689.P945280041432903029

`∩[A032684(n+1), A040062(n+1)]`
-/

namespace A069689.P945280041432903029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069689.P945280041432903029

/-! ## A069689.P2571731260163869158

`∩[A032684(n+1), A040065(n+1)]`
-/

namespace A069689.P2571731260163869158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069689.P2571731260163869158

/-! ## A069689.P11356007398070042661

`∩[A032684(n+1), A040078(n+1)]`
-/

namespace A069689.P11356007398070042661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069689.P11356007398070042661

/-! ## A069689.P11348623868815670468

`∩[A032684(n+1), A040083(n+1)]`
-/

namespace A069689.P11348623868815670468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069689.P11348623868815670468

/-! ## A069689.P17493741160615915675

`∩[A032684(n+1), A040085(n+1)]`
-/

namespace A069689.P17493741160615915675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069689.P17493741160615915675

/-! ## A069689.P10966227534275088070

`∩[A032684(n+1), A040087(n+1)]`
-/

namespace A069689.P10966227534275088070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069689.P10966227534275088070

/-!
# A069690: Primes that yield another prime on placing a 9 on both sides (as leading and trailing digits).

The programs for A069690, there is no canonical definition to state claims against.
-/

/-! ## A069690.P7726241869729354637

`p?[A032685(n+1)]`
-/

namespace A069690.P7726241869729354637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069690.P7726241869729354637

/-! ## A069690.P323611112111630602

`record[A020639(A032685(n+2))]`
-/

namespace A069690.P323611112111630602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A032685 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069690.P323611112111630602

/-! ## A069690.P13551394090873966354

`filter[A032685(n+1), A010051(#)]`
-/

namespace A069690.P13551394090873966354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A069690.P13551394090873966354

/-! ## A069690.P15112541889445893599

`filter[A032685(n+1), A353817(#)]`
-/

namespace A069690.P15112541889445893599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032685 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A069690.P15112541889445893599

/-! ## A069690.P12305071507803187841

`∩[A000040(n+1), A032685(n+1)]`
-/

namespace A069690.P12305071507803187841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069690.P12305071507803187841

/-! ## A069690.P8512459428895376984

`∩[A032685(n+1), A045319(n+1)]`
-/

namespace A069690.P8512459428895376984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069690.P8512459428895376984

/-! ## A069690.P12994618470885344173

`∩[A032685(n+1), A045344(n+1)]`
-/

namespace A069690.P12994618470885344173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069690.P12994618470885344173

/-! ## A069690.P6982370584899464542

`∩[A032685(n+1), A051948(n+1)]`
-/

namespace A069690.P6982370584899464542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069690.P6982370584899464542

/-! ## A069690.P9962751679509290300

`∩[A032685(n+1), A116974(n+1)]`
-/

namespace A069690.P9962751679509290300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069690.P9962751679509290300

/-! ## A069690.P5403638170934242114

`∩[A032685(n+1), A174219(n+1)]`
-/

namespace A069690.P5403638170934242114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069690.P5403638170934242114

/-! ## A069690.P133741509823373819

`∩[A032685(n+1), A175787(n+1)]`
-/

namespace A069690.P133741509823373819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069690.P133741509823373819

/-! ## A069690.P3092140936021317999

`∩[A032685(n+1), A182986(n+1)]`
-/

namespace A069690.P3092140936021317999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069690.P3092140936021317999

/-! ## A069690.P5152416684477696562

`∩[A032685(n+1), A186285(n+1)]`
-/

namespace A069690.P5152416684477696562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186285 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069690.P5152416684477696562

/-! ## A069690.P7077349938768732395

`∩[A032685(n+1), A197636(n+1)]`
-/

namespace A069690.P7077349938768732395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069690.P7077349938768732395

/-! ## A069690.P2348309304863278318

`∩[A032685(n+1), A246551(n+1)]`
-/

namespace A069690.P2348309304863278318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069690.P2348309304863278318

/-! ## A069690.P9280503837709749975

`∩[A032685(n+1), A268391(n+1)]`
-/

namespace A069690.P9280503837709749975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069690.P9280503837709749975

/-! ## A069690.P5090997580494996914

`∩[A348283(n+1), A032685(n+1)]`
-/

namespace A069690.P5090997580494996914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069690.P5090997580494996914

/-! ## A069690.P18409695980020526348

`∩[A032685(n+1), A360781(n+1)]`
-/

namespace A069690.P18409695980020526348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069690.P18409695980020526348

/-! ## A069690.P6719032018864222372

`∩[A032685(n+1), A106843(n+1)]`
-/

namespace A069690.P6719032018864222372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032685 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069690.P6719032018864222372

/-! ## A069690.P2369660130644225346

`p?[record[A032685(A133310(n))]]`
-/

namespace A069690.P2369660130644225346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032685 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069690.P2369660130644225346

/-!
# A069691: Smallest prime with internal digits = n; or 0 if no such number exists.

The programs for A069691, there is no canonical definition to state claims against.
-/

/-! ## A069691.P3028548588565811229

`A256481(A045918(n))`
-/

namespace A069691.P3028548588565811229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256481 (A045918 n).toNat

end

end A069691.P3028548588565811229

/-! ## A069691.P6752032398524259729

`A256481(A047842(n))`
-/

namespace A069691.P6752032398524259729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256481 (A047842 n).toNat

end

end A069691.P6752032398524259729

/-! ## A069691.P4633311061816530418

`A256481(A097598(n))`
-/

namespace A069691.P4633311061816530418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256481 (A097598 n).toNat

end

end A069691.P4633311061816530418

/-! ## A069691.P16386784302001800516

`A256481(A244112(n))`
-/

namespace A069691.P16386784302001800516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256481 (A244112 n).toNat

end

end A069691.P16386784302001800516

/-!
# A069692: Smallest triangular number with value of the internal digits = n; or 0 if no such number exists.

The programs for A069692, there is no canonical definition to state claims against.
-/

/-! ## A069692.P12430476087009675480

`A162304(A285644(2*(n+1))%A129517(n+1))`
-/

namespace A069692.P12430476087009675480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162304 (Int.tmod (A285644 (2 * (n + 1))) (A129517 (n + 1))).toNat

end

end A069692.P12430476087009675480

/-!
# A069693: Triangular numbers with either no internal digits or all internal digits are 0.

The programs for A069693, there is no canonical definition to state claims against.
-/

/-! ## A069693.P8443959322685621722

`eq[A043562(A054899(n)), A074909(n)]`
-/

namespace A069693.P8443959322685621722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043562 (A054899 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A069693.P8443959322685621722

/-! ## A069693.P11151534656586885119

`∑[∑[A165190(A106433(n))]]`
-/

namespace A069693.P11151534656586885119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165190 (A106433 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069693.P11151534656586885119

/-! ## A069693.P14278042072442637038

`∑[(A185255(2*n+1)+A005843(n))/2]`
-/

namespace A069693.P14278042072442637038
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A185255 (2 * n + 1) + A005843 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069693.P14278042072442637038

/-! ## A069693.P16412604373068469291

`A014682(A185255(2*n+1))+A000217(n)`
-/

namespace A069693.P16412604373068469291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A185255 (2 * n + 1)).toNat + A000217 n

end

end A069693.P16412604373068469291

/-!
# A069694: Triangular numbers with internal digits 2.

The programs for A069694, there is no canonical definition to state claims against.
-/

/-! ## A069694.P10440168367272517455

`C(∑[A185274(A367411(n))+1], 2)`
-/

namespace A069694.P10440168367272517455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185274 (A367411 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A069694.P10440168367272517455

/-! ## A069694.P2421346785229194475

`A000217(eq[A105519(n), A243830(n)])`
-/

namespace A069694.P2421346785229194475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105519 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243830 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A069694.P2421346785229194475

/-! ## A069694.P1772641660001610982

`A000217(lt[A329813(n), A167151(n+2)])`
-/

namespace A069694.P1772641660001610982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167151 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069694.P1772641660001610982

/-! ## A069694.P114080275323683618

`A000217(lt[A329813(n), A352768(n+2)])`
-/

namespace A069694.P114080275323683618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352768 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069694.P114080275323683618

/-! ## A069694.P1461807964610106568

`A000217(lt[A093391(n), A034444(n+5)])`
-/

namespace A069694.P1461807964610106568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093391 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069694.P1461807964610106568

/-!
# A069695: Triangular numbers with internal digits 3.

The programs for A069695, there is no canonical definition to state claims against.
-/

/-! ## A069695.P1959169954302657881

`A000217(lt[A363125(n), A136139(2*n+1)])`
-/

namespace A069695.P1959169954302657881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363125 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136139 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069695.P1959169954302657881

/-! ## A069695.P7327747794573389084

`A000217(lt[A194443(3*(n+1)), 27])`
-/

namespace A069695.P7327747794573389084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194443 (3 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A069695.P7327747794573389084

/-! ## A069695.P9367613779945807617

`A000217(lt[A251622(3*n+2), 45])`
-/

namespace A069695.P9367613779945807617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251622 (3 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  45

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A069695.P9367613779945807617

/-! ## A069695.P11182418896464192369

`A000217(lt[sqrt(A220525(3*n+2)), 7])`
-/

namespace A069695.P11182418896464192369
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A220525 (3 * n + 2) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n)

end

end A069695.P11182418896464192369

/-! ## A069695.P72128674039141046

`A000217(lt[A318284(2*(n+1)), A286489(2*n+3)])`
-/

namespace A069695.P72128674039141046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286489 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069695.P72128674039141046

/-!
# A069696: Triangular numbers with internal digits 4.

The programs for A069696, there is no canonical definition to state claims against.
-/

/-! ## A069696.P8713800165878518279

`A000124(n)*A317935(A001159(n+1))-1`
-/

namespace A069696.P8713800165878518279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n * A317935 (A001159 (n + 1)).toNat - 1

end

end A069696.P8713800165878518279

/-!
# A069697: Triangular numbers with internal digits 5.

The programs for A069697, there is no canonical definition to state claims against.
-/

/-! ## A069697.P1456573845958848905

`record[∑[n]-A181029(A102363(n))]`
-/

namespace A069697.P1456573845958848905
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A181029 (A102363 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069697.P1456573845958848905

/-! ## A069697.P17876865486787979728

`A000217(lt[A094189(3*n+4), 7])`
-/

namespace A069697.P17876865486787979728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094189 (3 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A069697.P17876865486787979728

/-! ## A069697.P16245124874448324553

`A000217(lt[A102351(2*n+5), 8])`
-/

namespace A069697.P16245124874448324553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102351 (2 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A069697.P16245124874448324553

/-! ## A069697.P16240283561580176166

`A000217(lt[A297959(2*(n+1)), 50])`
-/

namespace A069697.P16240283561580176166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297959 (2 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  50

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A069697.P16240283561580176166

/-! ## A069697.P14937731506225575023

`C(lt[A182213(n+1), A000384(n)], 2)`
-/

namespace A069697.P14937731506225575023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) 2

end

end A069697.P14937731506225575023

/-!
# A069698: Triangular numbers with internal digits 6.

The programs for A069698, there is no canonical definition to state claims against.
-/

/-! ## A069698.P12806367995633384956

`∑[A185255(2*n+3)+n]`
-/

namespace A069698.P12806367995633384956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (2 * n + 3) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069698.P12806367995633384956

/-! ## A069698.P11504296353490411467

`A185255(A034296(n))+∑[n]`
-/

namespace A069698.P11504296353490411467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A034296 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A069698.P11504296353490411467

/-! ## A069698.P9315784852295456092

`A185255(2*n+3)+A000217(n)`
-/

namespace A069698.P9315784852295456092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (2 * n + 3) + A000217 n

end

end A069698.P9315784852295456092

/-! ## A069698.P16372916012817321309

`A185255(2*n+3)+record[A112367(n)]`
-/

namespace A069698.P16372916012817321309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (2 * n + 3) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069698.P16372916012817321309

/-! ## A069698.P2131774287373241510

`A185255(A329405(2*n+3))+A161680(n+1)`
-/

namespace A069698.P2131774287373241510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 (A329405 (2 * n + 3)).toNat + A161680 (n + 1)

end

end A069698.P2131774287373241510

/-!
# A069699: Triangular numbers with internal digits 7.

The programs for A069699, there is no canonical definition to state claims against.
-/

/-! ## A069699.P16592126577086396114

`record[A078254(n+1)%A002522(n)]`
-/

namespace A069699.P16592126577086396114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078254 (n + 1)) (A002522 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069699.P16592126577086396114

/-! ## A069699.P9689771232282665726

`A000217(lt[A241822(n), A136735(n+1)])`
-/

namespace A069699.P9689771232282665726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241822 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136735 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069699.P9689771232282665726

/-! ## A069699.P8946212028403145345

`A000217(lt[A310075(n), A310092(n+3)])`
-/

namespace A069699.P8946212028403145345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310075 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310092 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069699.P8946212028403145345

/-! ## A069699.P2674102988157499903

`A000217(lt[A066838(n+3), A205335(n+1)])`
-/

namespace A069699.P2674102988157499903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066838 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069699.P2674102988157499903

/-! ## A069699.P7916549557039234038

`A000217(lt[A001996(n), A002326(2*(n+2))])`
-/

namespace A069699.P7916549557039234038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001996 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A069699.P7916549557039234038

