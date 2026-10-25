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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A288900: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 525", based on the 5-celled von Neumann neighborhood.

The programs for A288900, there is no canonical definition to state claims against.
-/

/-! ## A288900.P15409237080601554724

`A007088(A288902(n))`
-/

namespace A288900.P15409237080601554724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288902 n).toNat

end

end A288900.P15409237080601554724

/-! ## A288900.P8173041415865705352

`A305989(A288901(n))`
-/

namespace A288900.P8173041415865705352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A288901 n).toNat

end

end A288900.P8173041415865705352

/-! ## A288900.P8400192044269563182

`A185544(2*A288902(n))`
-/

namespace A288900.P8400192044269563182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288902 n).toNat

end

end A288900.P8400192044269563182

/-! ## A288900.P4291381275931371647

`A185544(lcm(2, A288902(n)))`
-/

namespace A288900.P4291381275931371647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A288902 n))

end

end A288900.P4291381275931371647

/-!
# A288902: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 525", based on the 5-celled von Neumann neighborhood.

The programs for A288902, there is no canonical definition to state claims against.
-/

/-! ## A288902.P11094021229068498176

`A325401(A288901(n))`
-/

namespace A288902.P11094021229068498176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A288901 n).toNat

end

end A288902.P11094021229068498176

/-! ## A288902.P3102630209941777277

`A030101(and(-1, A288901(n)))`
-/

namespace A288902.P3102630209941777277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.land (-1) (A288901 n)).toNat

end

end A288902.P3102630209941777277

/-! ## A288902.P746413105511175243

`A030101(or(2^n, A288901(n)))`
-/

namespace A288902.P746413105511175243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lor (2 ^ n : ℤ) (A288901 n)).toNat

end

end A288902.P746413105511175243

/-! ## A288902.P7958994902302114434

`A030101(A288901(n)+C(2, n+2))`
-/

namespace A288902.P7958994902302114434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A288901 n + (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A288902.P7958994902302114434

/-! ## A288902.P1329529623784028770

`A030101(A288901(n)+round(cos(4)^n))`
-/

namespace A288902.P1329529623784028770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A288901 n + SequenceMachineLib.roundAway (Real.cos (4 : ℝ) ^ n)).toNat

end

end A288902.P1329529623784028770

/-!
# A288903: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 529", based on the 5-celled von Neumann neighborhood.

The programs for A288903, there is no canonical definition to state claims against.
-/

/-! ## A288903.P13631219014047326039

`A007088(A288905(n))`
-/

namespace A288903.P13631219014047326039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288905 n).toNat

end

end A288903.P13631219014047326039

/-! ## A288903.P13472687483183976649

`A007088(A095121(n)+1-A288505(n))`
-/

namespace A288903.P13472687483183976649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A288505 n)).toNat

end

end A288903.P13472687483183976649

/-! ## A288903.P13789207757138291145

`A007088(1-(A288505(n)-A095121(n)))`
-/

namespace A288903.P13789207757138291145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A288505 n - A095121 n)).toNat

end

end A288903.P13789207757138291145

/-! ## A288903.P18427610703196710518

`A007088(A288052(n)+A289040(n)-A288505(n))`
-/

namespace A288903.P18427610703196710518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288052 n + (A289040 n - A288505 n)).toNat

end

end A288903.P18427610703196710518

/-! ## A288903.P1620122828923042067

`A007088(A288053(n)+A289041(n)-A288505(n))`
-/

namespace A288903.P1620122828923042067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288053 n + (A289041 n - A288505 n)).toNat

end

end A288903.P1620122828923042067

/-!
# A288904: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 529", based on the 5-celled von Neumann neighborhood.

The programs for A288904, there is no canonical definition to state claims against.
-/

/-! ## A288904.P10034789268250425982

`A007088(A288906(n))`
-/

namespace A288904.P10034789268250425982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288906 n).toNat

end

end A288904.P10034789268250425982

/-! ## A288904.P7308496881543119198

`A007088(A095121(n)+1-A288506(n))`
-/

namespace A288904.P7308496881543119198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A288506 n)).toNat

end

end A288904.P7308496881543119198

/-! ## A288904.P17013966515619968770

`A007088(1-(A288506(n)-A095121(n)))`
-/

namespace A288904.P17013966515619968770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A288506 n - A095121 n)).toNat

end

end A288904.P17013966515619968770

/-! ## A288904.P4888212557250274369

`A007088(A288052(n)+A289040(n)-A288506(n))`
-/

namespace A288904.P4888212557250274369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288052 n + (A289040 n - A288506 n)).toNat

end

end A288904.P4888212557250274369

/-! ## A288904.P17252849158284578610

`A007088(A288053(n)+A289041(n)-A288506(n))`
-/

namespace A288904.P17252849158284578610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288053 n + (A289041 n - A288506 n)).toNat

end

end A288904.P17252849158284578610

/-!
# A288905: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 529", based on the 5-celled von Neumann neighborhood.

The programs for A288905, there is no canonical definition to state claims against.
-/

/-! ## A288905.P16465278745046578824

`A095121(n)+1-A288505(n)`
-/

namespace A288905.P16465278745046578824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A288505 n)

end

end A288905.P16465278745046578824

/-! ## A288905.P6281628801902271371

`A052955(A004277(n))-A288505(n)`
-/

namespace A288905.P6281628801902271371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A288505 n

end

end A288905.P6281628801902271371

/-! ## A288905.P13545368955868520320

`A288052(n)+A289040(n)-A288505(n)`
-/

namespace A288905.P13545368955868520320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288052 n + (A289040 n - A288505 n)

end

end A288905.P13545368955868520320

/-! ## A288905.P3175287570725001001

`A288053(n)+A289041(n)-A288505(n)`
-/

namespace A288905.P3175287570725001001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288053 n + (A289041 n - A288505 n)

end

end A288905.P3175287570725001001

/-! ## A288905.P4493263903109204413

`A288506(n)+A288906(n)-A288505(n)`
-/

namespace A288905.P4493263903109204413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288506 n + (A288906 n - A288505 n)

end

end A288905.P4493263903109204413

/-!
# A288906: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 529", based on the 5-celled von Neumann neighborhood.

The programs for A288906, there is no canonical definition to state claims against.
-/

/-! ## A288906.P7902296693605367754

`A095121(n)+1-A288506(n)`
-/

namespace A288906.P7902296693605367754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A288506 n)

end

end A288906.P7902296693605367754

/-! ## A288906.P14926435346230745178

`A052955(A004277(n))-A288506(n)`
-/

namespace A288906.P14926435346230745178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A288506 n

end

end A288906.P14926435346230745178

/-! ## A288906.P14798986968985162082

`A288052(n)+A289040(n)-A288506(n)`
-/

namespace A288906.P14798986968985162082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288052 n + (A289040 n - A288506 n)

end

end A288906.P14798986968985162082

/-! ## A288906.P537656370552616170

`A288053(n)+A289041(n)-A288506(n)`
-/

namespace A288906.P537656370552616170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288053 n + (A289041 n - A288506 n)

end

end A288906.P537656370552616170

/-! ## A288906.P4671599653410674002

`A288505(n)+A288905(n)-A288506(n)`
-/

namespace A288906.P4671599653410674002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288505 n + (A288905 n - A288506 n)

end

end A288906.P4671599653410674002

/-!
# A288907: Primes p whose distance from the next prime and from the previous prime is less than log(p).

The programs for A288907, there is no canonical definition to state claims against.
-/

/-! ## A288907.P5606071287821189863

`∩[A098414(n+1), A173829(n+1)]`
-/

namespace A288907.P5606071287821189863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288907.P5606071287821189863

/-! ## A288907.P9685517814907557869

`∩[A173829(n+1), A098414(A020705(n))]`
-/

namespace A288907.P9685517814907557869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (A020705 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288907.P9685517814907557869

/-! ## A288907.P6888857328121259000

`A098414(A062399(n)+8)`
-/

namespace A288907.P6888857328121259000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (A062399 n + 8).toNat

end

end A288907.P6888857328121259000

/-! ## A288907.P11707874776142446443

`A098414(A351870(n)+8)`
-/

namespace A288907.P11707874776142446443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (A351870 n + 8).toNat

end

end A288907.P11707874776142446443

/-! ## A288907.P17971621802582544171

`A098414(A087051(n)+8)`
-/

namespace A288907.P17971621802582544171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098414 (A087051 n + 8).toNat

end

end A288907.P17971621802582544171

/-!
# A288910: Number of permutations p of [n] such that 0p has a nonincreasing up-jump sequence and also has a nonincreasing down-jump sequence.

The programs for A288910, there is no canonical definition to state claims against.
-/

/-! ## A288910.P7774509179855653655

`A286610(A109317(n+1))`
-/

namespace A288910.P7774509179855653655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286610 (A109317 (n + 1)).toNat

end

end A288910.P7774509179855653655

/-! ## A288910.P3076879971896291559

`A008647(4*A045906(n))`
-/

namespace A288910.P3076879971896291559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 (4 * A045906 n).toNat

end

end A288910.P3076879971896291559

/-! ## A288910.P11147927646021053481

`A008618(6*A045906(n))`
-/

namespace A288910.P11147927646021053481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (6 * A045906 n).toNat

end

end A288910.P11147927646021053481

/-!
# A288911: Number of permutations p of [n] such that 0p has a nonincreasing up-jump sequence.

The programs for A288911, there is no canonical definition to state claims against.
-/

/-! ## A288911.P7937068014073528186

`A024417(A294384(n)-floor(sqrt(n)))`
-/

namespace A288911.P7937068014073528186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A294384 n - (Nat.sqrt n : ℤ)).toNat

end

end A288911.P7937068014073528186

/-! ## A288911.P12805377518594848011

`A127757(A062569(n))+A080405(n)`
-/

namespace A288911.P12805377518594848011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A062569 n).toNat + A080405 n

end

end A288911.P12805377518594848011

/-! ## A288911.P6054119797204173941

`A187184(A068764(n)+A055998(n))`
-/

namespace A288911.P6054119797204173941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187184 (A068764 n + A055998 n).toNat

end

end A288911.P6054119797204173941

/-!
# A288912: Number of permutations p of [n] such that 0p has a nonincreasing down-jump sequence.

The programs for A288912, there is no canonical definition to state claims against.
-/

/-! ## A288912.P7246743970171740309

`A127757(A144038(n)+A000255(n))`
-/

namespace A288912.P7246743970171740309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127757 (A144038 n + A000255 n).toNat

end

end A288912.P7246743970171740309

/-! ## A288912.P11115642565935862146

`A263780(n)-A181833(A184993(n))`
-/

namespace A288912.P11115642565935862146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263780 n - A181833 (A184993 n).toNat

end

end A288912.P11115642565935862146

/-! ## A288912.P13729982746955749592

`A316893(A089985(n+1))+A113227(n)`
-/

namespace A288912.P13729982746955749592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316893 (A089985 (n + 1)).toNat + A113227 n

end

end A288912.P13729982746955749592

/-!
# A288913: a(n) = Lucas(4*n + 3).

The programs for A288913, the canonical program `A288913.P7162697632289570752` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288913 has offset 0).

The definition of A288913 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288913.P7162697632289570752

`7*a(n-1)-a(n-2)` with `a(0)=4, a(1)=29`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288913

/-- `7*a(n-1)-a(n-2)` -/
def P7162697632289570752.Spec : Prop :=
  ∀ n, P7162697632289570752.a n = A288913 n

theorem P7162697632289570752.correct : P7162697632289570752.Spec := by
  intro n
  simp only [A288913]

end A288913

/-! ## A288913.P17109931989310720537

`A002878(2*n+1)`
-/

namespace A288913.P17109931989310720537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002878 (2 * n + 1)

end

end A288913.P17109931989310720537

namespace A288913

/-- `A002878(2*n+1)` -/
def P17109931989310720537.Spec : Prop :=
  ∀ n, P17109931989310720537.a n = A288913 n

end A288913

/-! ## A288913.P18411249778513983981

`A093960(2*n+3)`
-/

namespace A288913.P18411249778513983981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093960 (2 * n + 3)

end

end A288913.P18411249778513983981

namespace A288913

/-- `A093960(2*n+3)` -/
def P18411249778513983981.Spec : Prop :=
  ∀ n, P18411249778513983981.a n = A288913 n

end A288913

/-! ## A288913.P8299225664085871515

`A001350(4*n+3)`
-/

namespace A288913.P8299225664085871515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 (4 * n + 3)

end

end A288913.P8299225664085871515

namespace A288913

/-- `A001350(4*n+3)` -/
def P8299225664085871515.Spec : Prop :=
  ∀ n, P8299225664085871515.a n = A288913 n

end A288913

/-! ## A288913.P14223656556085874289

`A068397(4*n+3)`
-/

namespace A288913.P14223656556085874289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068397 (4 * n + 3)

end

end A288913.P14223656556085874289

namespace A288913

/-- `A068397(4*n+3)` -/
def P14223656556085874289.Spec : Prop :=
  ∀ n, P14223656556085874289.a n = A288913 n

end A288913

/-! ## A288913.P7484969575446495924

`5*A081016(n)-1`
-/

namespace A288913.P7484969575446495924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A081016 n - 1

end

end A288913.P7484969575446495924

namespace A288913

/-- `5*A081016(n)-1` -/
def P7484969575446495924.Spec : Prop :=
  ∀ n, P7484969575446495924.a n = A288913 n

end A288913

/-! ## A288913.P5012470216247172085

`5*A003482(n)+4`
-/

namespace A288913.P5012470216247172085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A003482 n + 4

end

end A288913.P5012470216247172085

namespace A288913

/-- `5*A003482(n)+4` -/
def P5012470216247172085.Spec : Prop :=
  ∀ n, P5012470216247172085.a n = A288913 n

end A288913

/-! ## A288913.P6995342748498473104

`4*A004187(n+1)+A004187(n)`
-/

namespace A288913.P6995342748498473104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A004187 (n + 1) + A004187 n

end

end A288913.P6995342748498473104

namespace A288913

/-- `4*A004187(n+1)+A004187(n)` -/
def P6995342748498473104.Spec : Prop :=
  ∀ n, P6995342748498473104.a n = A288913 n

end A288913

/-! ## A288913.P6917850989739780654

`ogf((4+x)/(1-7x+x^2))`
-/

namespace A288913.P6917850989739780654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 1] [1, -7, 1] n

end

end A288913.P6917850989739780654

namespace A288913

/-- `ogf((4+x)/(1-7x+x^2))` -/
def P6917850989739780654.Spec : Prop :=
  ∀ n, P6917850989739780654.a n = A288913 n

end A288913

/-! ## A288913.P9145136825825856425

`Δ[A033889(n)]`
-/

namespace A288913.P9145136825825856425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033889 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288913.P9145136825825856425

namespace A288913

/-- `Δ[A033889(n)]` -/
def P9145136825825856425.Spec : Prop :=
  ∀ n, P9145136825825856425.a n = A288913 n

end A288913

/-! ## A288913.P11790448019038517716

`Δ[A081003(n)]`
-/

namespace A288913.P11790448019038517716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288913.P11790448019038517716

namespace A288913

/-- `Δ[A081003(n)]` -/
def P11790448019038517716.Spec : Prop :=
  ∀ n, P11790448019038517716.a n = A288913 n

end A288913

/-! ## A288913.P7294064013062744820

`Δ[A081007(n)]`
-/

namespace A288913.P7294064013062744820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288913.P7294064013062744820

namespace A288913

/-- `Δ[A081007(n)]` -/
def P7294064013062744820.Spec : Prop :=
  ∀ n, P7294064013062744820.a n = A288913 n

end A288913

/-! ## A288913.P18098053316576963759

`Δ[A081010(n)]`
-/

namespace A288913.P18098053316576963759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288913.P18098053316576963759

namespace A288913

/-- `Δ[A081010(n)]` -/
def P18098053316576963759.Spec : Prop :=
  ∀ n, P18098053316576963759.a n = A288913 n

end A288913

/-! ## A288913.P10646268394348716376

`A081019(n)+1`
-/

namespace A288913.P10646268394348716376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081019 n + 1

end

end A288913.P10646268394348716376

namespace A288913

/-- `A081019(n)+1` -/
def P10646268394348716376.Spec : Prop :=
  ∀ n, P10646268394348716376.a n = A288913 n

end A288913

/-! ## A288913.P7378339904708476481

`A081015(n)-1`
-/

namespace A288913.P7378339904708476481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081015 n - 1

end

end A288913.P7378339904708476481

namespace A288913

/-- `A081015(n)-1` -/
def P7378339904708476481.Spec : Prop :=
  ∀ n, P7378339904708476481.a n = A288913 n

end A288913

/-! ## A288913.P7681477472984533901

`Δ[record[A099496(n)]]`
-/

namespace A288913.P7681477472984533901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288913.P7681477472984533901

namespace A288913

/-- `Δ[record[A099496(n)]]` -/
def P7681477472984533901.Spec : Prop :=
  ∀ n, P7681477472984533901.a n = A288913 n

end A288913

/-! ## A288913.P4901109809662639943

`Δ[record[A178115(n)]]`
-/

namespace A288913.P4901109809662639943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178115 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288913.P4901109809662639943

namespace A288913

/-- `Δ[record[A178115(n)]]` -/
def P4901109809662639943.Spec : Prop :=
  ∀ n, P4901109809662639943.a n = A288913 n

end A288913

/-! ## A288913.P13877733854627040810

`Δ[A027941(2*n)]`
-/

namespace A288913.P13877733854627040810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027941 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288913.P13877733854627040810

namespace A288913

/-- `Δ[A027941(2*n)]` -/
def P13877733854627040810.Spec : Prop :=
  ∀ n, P13877733854627040810.a n = A288913 n

end A288913

/-! ## A288913.P14687009377153503600

`Δ[A081714(2*n)]`
-/

namespace A288913.P14687009377153503600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081714 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288913.P14687009377153503600

namespace A288913

/-- `Δ[A081714(2*n)]` -/
def P14687009377153503600.Spec : Prop :=
  ∀ n, P14687009377153503600.a n = A288913 n

end A288913

/-! ## A288913.P4846419117846827234

`Δ[A099496(2*n)]`
-/

namespace A288913.P4846419117846827234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288913.P4846419117846827234

namespace A288913

/-- `Δ[A099496(2*n)]` -/
def P4846419117846827234.Spec : Prop :=
  ∀ n, P4846419117846827234.a n = A288913 n

end A288913

/-!
# A288914: a(1) = 2; a(n) = a(floor(n/a(n-1))) + 1 for n > 1.

The programs for A288914, the canonical program `A288914.P16824935834943916743` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288914 has offset 1).

The definition of A288914 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor((n+1)/a(n-1))-1)+1` (program `A288914.P16824935834943916743`, by `A288914.P16824935834943916743.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288914.P16824935834943916743

`a(floor((n+1)/a(n-1))-1)+1` with `a(0)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288914

/-- `a(floor((n+1)/a(n-1))-1)+1` -/
def P16824935834943916743.Spec : Prop :=
  ∀ n, (P16824935834943916743.a n : ℤ) = A288914 (n + 1)

theorem P16824935834943916743.correct : P16824935834943916743.Spec := by
  intro n
  simp only [A288914, Nat.add_sub_cancel]

end A288914

/-! ## A288914.P7073708604106480209

`a(ceil((n+2)/a(n-1))-2)+1` with `a(0)=2`
-/

namespace A288914.P7073708604106480209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (⌈(n + 2 : ℚ) / (a (n - 1) : ℚ)⌉ - 2).toNat + 1

end

end A288914.P7073708604106480209

namespace A288914

/-- `a(ceil((n+2)/a(n-1))-2)+1` -/
def P7073708604106480209.Spec : Prop :=
  ∀ n, (P7073708604106480209.a n : ℤ) = A288914 (n + 1)

end A288914

/-! ## A288914.P5403918327884910950

`a(A023443(floor((n+1)/a(n-1))))+1` with `a(0)=2`
-/

namespace A288914.P5403918327884910950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a (A023443 ⌊(n + 1 : ℚ) / (a (n - 1) : ℚ)⌋.toNat).toNat + 1

end

end A288914.P5403918327884910950

namespace A288914

/-- `a(A023443(floor((n+1)/a(n-1))))+1` -/
def P5403918327884910950.Spec : Prop :=
  ∀ n, (P5403918327884910950.a n : ℤ) = A288914 (n + 1)

end A288914

/-! ## A288914.P9488276963657315954

`A275010(a(floor((n+1)/a(n-1))-1))` with `a(0)=2`
-/

namespace A288914.P9488276963657315954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A275010 (a (⌊(n + 1 : ℚ) / (a (n - 1) : ℚ)⌋ - 1).toNat).toNat

end

end A288914.P9488276963657315954

namespace A288914

/-- `A275010(a(floor((n+1)/a(n-1))-1))` -/
def P9488276963657315954.Spec : Prop :=
  ∀ n, P9488276963657315954.a n = A288914 (n + 1)

end A288914

/-!
# A288915: Run lengths in A039704.

The programs for A288915, the canonical program `A288915.P17477177874724802117` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288915 has offset 1).

The definition of A288915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288915.P17477177874724802117

`Δ[comp[A270190(n+1)]]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A288915

/-- `Δ[comp[A270190(n+1)]]` -/
def P17477177874724802117.Spec : Prop :=
  ∀ n, P17477177874724802117.a n = A288915 (n + 1)

theorem P17477177874724802117.correct : P17477177874724802117.Spec := by
  intro n
  simp only [A288915, Nat.add_sub_cancel]

end A288915

/-!
# A288918: Number of 4-cycles in the n X n king graph.

The programs for A288918, the canonical program `A288918.P766006454065653610` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288918 has offset 1).

The definition of A288918 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288918.P766006454065653610

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=3, a(2)=29, a(3)=79`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288918

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P766006454065653610.Spec : Prop :=
  ∀ n, P766006454065653610.a n = A288918 (n + 1)

theorem P766006454065653610.correct : P766006454065653610.Spec := by
  intro n
  simp only [A288918, Nat.add_sub_cancel]

end A288918

/-! ## A288918.P10612836212113318996

`∑[a(n-1)+24]` with `a(0)=0, a(1)=3, a(2)=26`
-/

namespace A288918.P10612836212113318996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 26] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288918.P10612836212113318996

namespace A288918

/-- `∑[a(n-1)+24]` -/
def P10612836212113318996.Spec : Prop :=
  ∀ n, (P10612836212113318996.a n : ℤ) = A288918 (n + 1)

end A288918

/-! ## A288918.P15135175438962536713

`n*(12*n-8)-comp[2*(n+1)]`
-/

namespace A288918.P15135175438962536713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((12 * n : ℤ) - 8) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A288918.P15135175438962536713

namespace A288918

/-- `n*(12*n-8)-comp[2*(n+1)]` -/
def P15135175438962536713.Spec : Prop :=
  ∀ n, P15135175438962536713.a n = A288918 (n + 1)

end A288918

/-! ## A288918.P4050660260463934552

`(2*A051866(n)+1)%((4*n)²+1)`
-/

namespace A288918.P4050660260463934552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A051866 n + 1) ((4 * n) ^ 2 + 1 : ℤ)

end

end A288918.P4050660260463934552

namespace A288918

/-- `(2*A051866(n)+1)%((4*n)²+1)` -/
def P4050660260463934552.Spec : Prop :=
  ∀ n, P4050660260463934552.a n = A288918 (n + 1)

end A288918

/-! ## A288918.P18125735044368228012

`A016755(n)%A008412(n)`
-/

namespace A288918.P18125735044368228012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016755 n) (A008412 n)

end

end A288918.P18125735044368228012

namespace A288918

/-- `A016755(n)%A008412(n)` -/
def P18125735044368228012.Spec : Prop :=
  ∀ n, P18125735044368228012.a n = A288918 (n + 1)

end A288918

/-! ## A288918.P6852057463510672856

`A010018(n)%A028993(n)`
-/

namespace A288918.P6852057463510672856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010018 n) (A028993 n)

end

end A288918.P6852057463510672856

namespace A288918

/-- `A010018(n)%A028993(n)` -/
def P6852057463510672856.Spec : Prop :=
  ∀ n, P6852057463510672856.a n = A288918 (n + 1)

end A288918

/-! ## A288918.P303467260947253678

`A010015(n)%A161587(n)`
-/

namespace A288918.P303467260947253678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010015 n) (A161587 n)

end

end A288918.P303467260947253678

namespace A288918

/-- `A010015(n)%A161587(n)` -/
def P303467260947253678.Spec : Prop :=
  ∀ n, P303467260947253678.a n = A288918 (n + 1)

end A288918

/-! ## A288918.P1297790878814581444

`A143698(n)%A185918(n)`
-/

namespace A288918.P1297790878814581444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143698 n) (A185918 n)

end

end A288918.P1297790878814581444

namespace A288918

/-- `A143698(n)%A185918(n)` -/
def P1297790878814581444.Spec : Prop :=
  ∀ n, P1297790878814581444.a n = A288918 (n + 1)

end A288918

/-! ## A288918.P6110815257469952966

`A270704(n)%A158463(n)`
-/

namespace A288918.P6110815257469952966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270704 n) (A158463 n)

end

end A288918.P6110815257469952966

namespace A288918

/-- `A270704(n)%A158463(n)` -/
def P6110815257469952966.Spec : Prop :=
  ∀ n, P6110815257469952966.a n = A288918 (n + 1)

end A288918

/-! ## A288918.P1026731410159918470

`abs(record[A006257(n)+1]-(4*A000567(n)+1))`
-/

namespace A288918.P1026731410159918470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (4 * A000567 n + 1)|

end

end A288918.P1026731410159918470

namespace A288918

/-- `abs(record[A006257(n)+1]-(4*A000567(n)+1))` -/
def P1026731410159918470.Spec : Prop :=
  ∀ n, P1026731410159918470.a n = A288918 (n + 1)

end A288918

/-! ## A288918.P2817110574350331142

`record[A001281(n)*A014681(n)-n]`
-/

namespace A288918.P2817110574350331142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 n * A014681 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288918.P2817110574350331142

namespace A288918

/-- `record[A001281(n)*A014681(n)-n]` -/
def P2817110574350331142.Spec : Prop :=
  ∀ n, P2817110574350331142.a n = A288918 (n + 1)

end A288918

/-!
# A288919: Number of 5-cycles in the n X n king graph.

The programs for A288919, the canonical program `A288919.P6198087378553742661` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288919 has offset 1).

The definition of A288919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288919.P6198087378553742661

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=52, a(3)=176`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288919

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P6198087378553742661.Spec : Prop :=
  ∀ n, P6198087378553742661.a n = A288919 (n + 1)

theorem P6198087378553742661.correct : P6198087378553742661.Spec := by
  intro n
  simp only [A288919, Nat.add_sub_cancel]

end A288919

/-! ## A288919.P10009289836204072598

`A153794(A004273(n))-A153794(n)`
-/

namespace A288919.P10009289836204072598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153794 (A004273 n).toNat - A153794 n

end

end A288919.P10009289836204072598

namespace A288919

/-- `A153794(A004273(n))-A153794(n)` -/
def P10009289836204072598.Spec : Prop :=
  ∀ n, P10009289836204072598.a n = A288919 (n + 1)

end A288919

/-! ## A288919.P3204380040797684546

`A185212(A004273(n))-A185212(n)`
-/

namespace A288919.P3204380040797684546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185212 (A004273 n).toNat - A185212 n

end

end A288919.P3204380040797684546

namespace A288919

/-- `A185212(A004273(n))-A185212(n)` -/
def P3204380040797684546.Spec : Prop :=
  ∀ n, P3204380040797684546.a n = A288919 (n + 1)

end A288919

/-! ## A288919.P7771330340255910253

`A153794(record[A026741(n)])-A153794(n)`
-/

namespace A288919.P7771330340255910253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153794 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A153794 n

end

end A288919.P7771330340255910253

namespace A288919

/-- `A153794(record[A026741(n)])-A153794(n)` -/
def P7771330340255910253.Spec : Prop :=
  ∀ n, P7771330340255910253.a n = A288919 (n + 1)

end A288919

/-! ## A288919.P15802029759844153318

`A153794(record[A106609(n)])-A153794(n)`
-/

namespace A288919.P15802029759844153318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153794 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - A153794 n

end

end A288919.P15802029759844153318

namespace A288919

/-- `A153794(record[A106609(n)])-A153794(n)` -/
def P15802029759844153318.Spec : Prop :=
  ∀ n, P15802029759844153318.a n = A288919 (n + 1)

end A288919

/-! ## A288919.P4301111821038943261

`A185212(A004277(n)-1)-A185212(n)`
-/

namespace A288919.P4301111821038943261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185212 (A004277 n - 1).toNat - A185212 n

end

end A288919.P4301111821038943261

namespace A288919

/-- `A185212(A004277(n)-1)-A185212(n)` -/
def P4301111821038943261.Spec : Prop :=
  ∀ n, P4301111821038943261.a n = A288919 (n + 1)

end A288919

/-! ## A288919.P12700141976046615781

`A286430(2*n)+A286429(2*n)`
-/

namespace A288919.P12700141976046615781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286430 (2 * n) + A286429 (2 * n)

end

end A288919.P12700141976046615781

namespace A288919

/-- `A286430(2*n)+A286429(2*n)` -/
def P12700141976046615781.Spec : Prop :=
  ∀ n, P12700141976046615781.a n = A288919 (n + 1)

end A288919

/-! ## A288919.P3227257269973244884

`A218864(or(1, record[A022998(n)]))`
-/

namespace A288919.P3227257269973244884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218864 (Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A288919.P3227257269973244884

namespace A288919

/-- `A218864(or(1, record[A022998(n)]))` -/
def P3227257269973244884.Spec : Prop :=
  ∀ n, P3227257269973244884.a n = A288919 (n + 1)

end A288919

/-! ## A288919.P13573558077207752951

`A016933(n)²-A139245(A008574(n))`
-/

namespace A288919.P13573558077207752951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016933 n ^ 2 - A139245 (A008574 n).toNat

end

end A288919.P13573558077207752951

namespace A288919

/-- `A016933(n)²-A139245(A008574(n))` -/
def P13573558077207752951.Spec : Prop :=
  ∀ n, P13573558077207752951.a n = A288919 (n + 1)

end A288919

/-! ## A288919.P4404674782313982000

`record[n*A100050(A014681(n))]-A005843(n)`
-/

namespace A288919.P4404674782313982000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A100050 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A005843 n

end

end A288919.P4404674782313982000

namespace A288919

/-- `record[n*A100050(A014681(n))]-A005843(n)` -/
def P4404674782313982000.Spec : Prop :=
  ∀ n, P4404674782313982000.a n = A288919 (n + 1)

end A288919

/-! ## A288919.P17850898379889640114

`A218864(A081578(∑[n]+1))`
-/

namespace A288919.P17850898379889640114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218864 (A081578 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A288919.P17850898379889640114

namespace A288919

/-- `A218864(A081578(∑[n]+1))` -/
def P17850898379889640114.Spec : Prop :=
  ∀ n, P17850898379889640114.a n = A288919 (n + 1)

end A288919

/-!
# A288925: a(n) = a(n-1) + a(n-2) + 3*a(n-4) - 2*a(n-5) for n >= 5, where a(0) = 2, a(1) = 4, a(2) = 8, a(3) = 13, a(4) = 26.

The programs for A288925, the canonical program `A288925.P11294159279544963059` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288925 has offset 0).

The definition of A288925 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+3*a(n-4)-2*a(n-5)` (program `A288925.P11294159279544963059`, by `A288925.P11294159279544963059.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288925.P11294159279544963059

`a(n-1)+a(n-2)+3*a(n-4)-2*a(n-5)` with `a(0)=2, a(1)=4, a(2)=8, a(3)=13, a(4)=26`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288925

/-- `a(n-1)+a(n-2)+3*a(n-4)-2*a(n-5)` -/
def P11294159279544963059.Spec : Prop :=
  ∀ n, P11294159279544963059.a n = A288925 n

theorem P11294159279544963059.correct : P11294159279544963059.Spec := by
  intro n
  simp only [A288925]

end A288925

/-! ## A288925.P16599221873138271937

`A263274(n)+A005041(A087206(n))`
-/

namespace A288925.P16599221873138271937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263274 n + A005041 (A087206 n).toNat

end

end A288925.P16599221873138271937

namespace A288925

/-- `A263274(n)+A005041(A087206(n))` -/
def P16599221873138271937.Spec : Prop :=
  ∀ n, P16599221873138271937.a n = A288925 n

end A288925

/-!
# A288926: 1-limiting word of the mapping 00->1000, 10->0001, starting with 00.

The programs for A288926, there is no canonical definition to state claims against.
-/

/-! ## A288926.P4795020547142943677

`char[A288928(n+1)-1]`
-/

namespace A288926.P4795020547142943677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288928 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288926.P4795020547142943677

/-! ## A288926.P7072297753828655889

`char[comp[A288927(n+1)-1]]`
-/

namespace A288926.P7072297753828655889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288927 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288926.P7072297753828655889

/-! ## A288926.P11765459962899161424

`char[A023443(A288928(n+1))]`
-/

namespace A288926.P11765459962899161424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288928 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288926.P11765459962899161424

/-! ## A288926.P13954071217631932472

`char[A023443(comp[A288927(n+1)])]`
-/

namespace A288926.P13954071217631932472
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288927 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288926.P13954071217631932472

/-! ## A288926.P16864813608413717275

`char[Δ[A288928(A152271(n))]]`
-/

namespace A288926.P16864813608413717275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288928 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288926.P16864813608413717275

/-!
# A288927: Positions of 0 in A288926; complement of A288928.

The programs for A288927, there is no canonical definition to state claims against.
-/

/-! ## A288927.P3880617138496238060

`comp[A288928(n+1)-1]+1`
-/

namespace A288927.P3880617138496238060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288928 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288927.P3880617138496238060

/-! ## A288927.P9689999962336172377

`eq[0, A288926(n+1)]+1`
-/

namespace A288927.P9689999962336172377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288927.P9689999962336172377

/-! ## A288927.P8791229310474165292

`eq[0, A288926(A028310(n))]`
-/

namespace A288927.P8791229310474165292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288926 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288927.P8791229310474165292

/-! ## A288927.P9720651055237779153

`A020725(eq[0, A288926(n+1)])`
-/

namespace A288927.P9720651055237779153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288927.P9720651055237779153

/-! ## A288927.P1858819849416684419

`eq[char[A288928(n+1)], A000007(n)]`
-/

namespace A288927.P1858819849416684419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288928 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288927.P1858819849416684419

/-! ## A288927.P15927631126349892028

`record[n+2-A008611(A005408(n)*A288926(n+1))]`
-/

namespace A288927.P15927631126349892028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A008611 (A005408 n * A288926 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288927.P15927631126349892028

/-! ## A288927.P3868296898701711656

`eq[0, A288926(A065033(2*n))]`
-/

namespace A288927.P3868296898701711656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288926 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288927.P3868296898701711656

/-! ## A288927.P4750579807944964416

`record[A025480(A288926(n+1)+A051755(n+2))]`
-/

namespace A288927.P4750579807944964416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A288926 (n + 1) + A051755 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288927.P4750579807944964416

/-!
# A288928: Positions of 1 in A288926; complement of A288927.

The programs for A288928, there is no canonical definition to state claims against.
-/

/-! ## A288928.P2675081690214313207

`filter[n+1, A288926(#)]`
-/

namespace A288928.P2675081690214313207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288926 (f1 j) = 1) n)

end

end A288928.P2675081690214313207

/-! ## A288928.P6044424715127874461

`eq[1, A288926(n+1)]+1`
-/

namespace A288928.P6044424715127874461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288928.P6044424715127874461

/-! ## A288928.P5801044439749291910

`record[A000027(n+1)*A288926(n+1)]`
-/

namespace A288928.P5801044439749291910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A288926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288928.P5801044439749291910

/-! ## A288928.P9356419973548061542

`record[(n+1)*A288926(A000007(n+1)+n+1)]`
-/

namespace A288928.P9356419973548061542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A288926 (A000007 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288928.P9356419973548061542

/-! ## A288928.P13294108807055460424

`eq[n, A028310(n)*A288926(A028310(n))]`
-/

namespace A288928.P13294108807055460424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A288926 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288928.P13294108807055460424

/-! ## A288928.P14029537361808220827

`lt[A288926(n+1), n*A288926(A028310(n))]`
-/

namespace A288928.P14029537361808220827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288926 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288926 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288928.P14029537361808220827

/-! ## A288928.P2776945000669018005

`lt[A288926(n+4), A288926(n+1)]+1`
-/

namespace A288928.P2776945000669018005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288926 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288926 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A288928.P2776945000669018005

/-! ## A288928.P10359704826519026017

`record[A008619(n)*A288926(A008619(n))]`
-/

namespace A288928.P10359704826519026017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A288926 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288928.P10359704826519026017

/-! ## A288928.P8707661526728172622

`A064455(record[A005408(n)*A288926(n+1)])`
-/

namespace A288928.P8707661526728172622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A288926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A288928.P8707661526728172622

/-! ## A288928.P6170949008370930189

`A110654(record[A005408(n)*A288926(n+1)])`
-/

namespace A288928.P6170949008370930189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A288926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A288928.P6170949008370930189

/-! ## A288928.P8840505378591830340

`record[A073675(A073675(n+1))*A288926(n+1)]`
-/

namespace A288928.P8840505378591830340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073675 (A073675 (n + 1)).toNat * A288926 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288928.P8840505378591830340

/-! ## A288928.P4034664624541617581

`record[A110654(n+1)*A288926(A110654(n+1))]`
-/

namespace A288928.P4034664624541617581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1) * A288926 (A110654 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288928.P4034664624541617581

/-! ## A288928.P15311943060365625186

`record[A064455(2*n+1)*A288926(A064455(2*n+1))]`
-/

namespace A288928.P15311943060365625186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064455 (2 * n + 1) * A288926 (A064455 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288928.P15311943060365625186

/-! ## A288928.P5864813406683799347

`record[A062108(n+1)*A288926(A062108(n+1))]`
-/

namespace A288928.P5864813406683799347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062108 (n + 1) * A288926 (A062108 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288928.P5864813406683799347

/-!
# A288929: Fixed point of the mapping 00->1000, 10->10011, starting with 00.

The programs for A288929, the canonical program `A288929.P9658926497667176175` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288929 has offset 1).

The definition of A288929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288929.P2844014946382719204

`char[A288931(n+1)-1]`
-/

namespace A288929.P2844014946382719204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288931 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288929.P2844014946382719204

namespace A288929

/-- `char[A288931(n+1)-1]` -/
def P2844014946382719204.Spec : Prop :=
  ∀ n, (P2844014946382719204.a n : ℤ) = A288929 (n + 1)

end A288929

/-! ## A288929.P9658926497667176175

`char[comp[2*A219641(n)+n+2]-1]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A288929

/-- `char[comp[2*A219641(n)+n+2]-1]` -/
def P9658926497667176175.Spec : Prop :=
  ∀ n, (P9658926497667176175.a n : ℤ) = A288929 (n + 1)

theorem P9658926497667176175.correct : P9658926497667176175.Spec := by
  intro n
  simp only [A288929, Nat.add_sub_cancel]

end A288929

/-! ## A288929.P17759204785697043856

`char[comp[2*A288625(n+1)-(n+2)]-1]`
-/

namespace A288929.P17759204785697043856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288625 (n + 1) - (n + 2 : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288929.P17759204785697043856

namespace A288929

/-- `char[comp[2*A288625(n+1)-(n+2)]-1]` -/
def P17759204785697043856.Spec : Prop :=
  ∀ n, (P17759204785697043856.a n : ℤ) = A288929 (n + 1)

end A288929

/-! ## A288929.P15590941616177263388

`char[comp[2*eq[0, A288375(n+1)]-n-1]]`
-/

namespace A288929.P15590941616177263388
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n : ℤ) - (n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288929.P15590941616177263388

namespace A288929

/-- `char[comp[2*eq[0, A288375(n+1)]-n-1]]` -/
def P15590941616177263388.Spec : Prop :=
  ∀ n, (P15590941616177263388.a n : ℤ) = A288929 (n + 1)

end A288929

/-! ## A288929.P17830503325263867562

`char[comp[2*comp[A283794(n+1)-1]-n-1]]`
-/

namespace A288929.P17830503325263867562
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283794 (n + 1) - 1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288929.P17830503325263867562

namespace A288929

/-- `char[comp[2*comp[A283794(n+1)-1]-n-1]]` -/
def P17830503325263867562.Spec : Prop :=
  ∀ n, (P17830503325263867562.a n : ℤ) = A288929 (n + 1)

end A288929

/-! ## A288929.P2328519017230434594

`char[abs(A288931(A028310(n))-1)]`
-/

namespace A288929.P2328519017230434594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A288931 (A028310 n).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288929.P2328519017230434594

namespace A288929

/-- `char[abs(A288931(A028310(n))-1)]` -/
def P2328519017230434594.Spec : Prop :=
  ∀ n, (P2328519017230434594.a n : ℤ) = A288929 (n + 1)

end A288929

/-! ## A288929.P6055149745549805471

`3%Δ[-comp[A288931(Δ[n²]-n)+n]]`
-/

namespace A288929.P6055149745549805471
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288931 ((f3 (n + 1) : ℤ) - (f3 n : ℤ) - (n : ℤ)).toNat + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f1 (n + 1) - f1 n)

end

end A288929.P6055149745549805471

namespace A288929

/-- `3%Δ[-comp[A288931(Δ[n²]-n)+n]]` -/
def P6055149745549805471.Spec : Prop :=
  ∀ n, P6055149745549805471.a n = A288929 (n + 1)

end A288929

/-! ## A288929.P3936099840846910317

`A001221(Δ[comp[A288931(n+1)+n]])`
-/

namespace A288929.P3936099840846910317
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288931 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A288929.P3936099840846910317

namespace A288929

/-- `A001221(Δ[comp[A288931(n+1)+n]])` -/
def P3936099840846910317.Spec : Prop :=
  ∀ n, P3936099840846910317.a n = A288929 (n + 1)

end A288929

/-! ## A288929.P4144707873277518854

`A001222(Δ[comp[A288931(n+1)+n]])`
-/

namespace A288929.P4144707873277518854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288931 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A288929.P4144707873277518854

namespace A288929

/-- `A001222(Δ[comp[A288931(n+1)+n]])` -/
def P4144707873277518854.Spec : Prop :=
  ∀ n, P4144707873277518854.a n = A288929 (n + 1)

end A288929

/-! ## A288929.P18127064484112836730

`A039983(Δ[comp[A288931(n+1)+n]]+1)`
-/

namespace A288929.P18127064484112836730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288931 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039983 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A288929.P18127064484112836730

namespace A288929

/-- `A039983(Δ[comp[A288931(n+1)+n]]+1)` -/
def P18127064484112836730.Spec : Prop :=
  ∀ n, P18127064484112836730.a n = A288929 (n + 1)

end A288929

/-! ## A288929.P15731440666614386797

`A156258(Δ[comp[A288931(n+1)+n]]+1)`
-/

namespace A288929.P15731440666614386797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288931 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156258 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A288929.P15731440666614386797

namespace A288929

/-- `A156258(Δ[comp[A288931(n+1)+n]]+1)` -/
def P15731440666614386797.Spec : Prop :=
  ∀ n, P15731440666614386797.a n = A288929 (n + 1)

end A288929

/-! ## A288929.P232074829674704614

`A156728(Δ[comp[A288931(n+1)+n]]+1)`
-/

namespace A288929.P232074829674704614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288931 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156728 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A288929.P232074829674704614

namespace A288929

/-- `A156728(Δ[comp[A288931(n+1)+n]]+1)` -/
def P232074829674704614.Spec : Prop :=
  ∀ n, P232074829674704614.a n = A288929 (n + 1)

end A288929

/-! ## A288929.P648050735902526517

`A294448(Δ[comp[A288931(n+1)+n]]+1)`
-/

namespace A288929.P648050735902526517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288931 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294448 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A288929.P648050735902526517

namespace A288929

/-- `A294448(Δ[comp[A288931(n+1)+n]]+1)` -/
def P648050735902526517.Spec : Prop :=
  ∀ n, P648050735902526517.a n = A288929 (n + 1)

end A288929

/-! ## A288929.P12750213971942948069

`A020639(Δ[comp[A288931(n+1)+n]])-1`
-/

namespace A288929.P12750213971942948069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288931 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A288929.P12750213971942948069

namespace A288929

/-- `A020639(Δ[comp[A288931(n+1)+n]])-1` -/
def P12750213971942948069.Spec : Prop :=
  ∀ n, P12750213971942948069.a n = A288929 (n + 1)

end A288929

/-! ## A288929.P10660014175078782199

`A000005(Δ[comp[A288931(n+1)+n]]+2)-2`
-/

namespace A288929.P10660014175078782199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288931 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat - 2

end

end A288929.P10660014175078782199

namespace A288929

/-- `A000005(Δ[comp[A288931(n+1)+n]]+2)-2` -/
def P10660014175078782199.Spec : Prop :=
  ∀ n, P10660014175078782199.a n = A288929 (n + 1)

end A288929

/-! ## A288929.P4107453149543656214

`A094659(-Δ[-comp[A288931(n+1)+n]])/2`
-/

namespace A288929.P4107453149543656214
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288931 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094659 (-(f1 (n + 1) - f1 n)).toNat : ℚ) / 2

end

end A288929.P4107453149543656214

namespace A288929

/-- `A094659(-Δ[-comp[A288931(n+1)+n]])/2` -/
def P4107453149543656214.Spec : Prop :=
  ∀ n, P4107453149543656214.a n = (A288929 (n + 1) : ℚ)

end A288929

/-! ## A288929.P4491187277046471471

`A000045(2-Δ[-comp[A288931(n+1)+n]])-2`
-/

namespace A288929.P4491187277046471471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288931 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 - (f1 (n + 1) - f1 n)).toNat - 2

end

end A288929.P4491187277046471471

namespace A288929

/-- `A000045(2-Δ[-comp[A288931(n+1)+n]])-2` -/
def P4491187277046471471.Spec : Prop :=
  ∀ n, P4491187277046471471.a n = A288929 (n + 1)

end A288929

/-! ## A288929.P3631110517718498955

`A057428(n+1)-Δ[-comp[A288931(n+1)+n]]`
-/

namespace A288929.P3631110517718498955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288931 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) - (f1 (n + 1) - f1 n)

end

end A288929.P3631110517718498955

namespace A288929

/-- `A057428(n+1)-Δ[-comp[A288931(n+1)+n]]` -/
def P3631110517718498955.Spec : Prop :=
  ∀ n, P3631110517718498955.a n = A288929 (n + 1)

end A288929

/-!
# A288930: Positions of 0 in A288929; complement of A288931.

The programs for A288930, the canonical program `A288930.P1598540981707641911` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288930 has offset 1).

The definition of A288930 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288930.P17252869167221688686

`2*(A219641(n)+1)+n`
-/

namespace A288930.P17252869167221688686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A219641 n + 1) + (n : ℤ)

end

end A288930.P17252869167221688686

namespace A288930

/-- `2*(A219641(n)+1)+n` -/
def P17252869167221688686.Spec : Prop :=
  ∀ n, P17252869167221688686.a n = A288930 (n + 1)

theorem P17252869167221688686.correct : P17252869167221688686.Spec := by
  intro n
  simp only [A288930, Nat.add_sub_cancel, A288930.P17252869167221688686.a, A288930.P1598540981707641911.a, A219641, A219641.P1602393212941527080.a, A288625, A288625.P5745602300368746224.a, A007895, A007895.P13159574906702943091.a, A143299, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A003849, A003849.P15070805603138295355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A288930

/-! ## A288930.P1598540981707641911

`2*A288625(n+1)-(n+2)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A288930

/-- `2*A288625(n+1)-(n+2)` -/
def P1598540981707641911.Spec : Prop :=
  ∀ n, P1598540981707641911.a n = A288930 (n + 1)

theorem P1598540981707641911.correct : P1598540981707641911.Spec := by
  intro n
  simp only [A288930, Nat.add_sub_cancel]

end A288930

/-! ## A288930.P6694929753574284434

`2*(1-A007895(n)+n)+n`
-/

namespace A288930.P6694929753574284434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - A007895 n + (n : ℤ)) + (n : ℤ)

end

end A288930.P6694929753574284434

namespace A288930

/-- `2*(1-A007895(n)+n)+n` -/
def P6694929753574284434.Spec : Prop :=
  ∀ n, P6694929753574284434.a n = A288930 (n + 1)

theorem P6694929753574284434.correct : P6694929753574284434.Spec := by
  intro n
  simp only [A288930, Nat.add_sub_cancel, A288930.P6694929753574284434.a, A288930.P1598540981707641911.a, A007895, A007895.P13159574906702943091.a, A288625, A288625.P5745602300368746224.a, A143299, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A003849, A003849.P15070805603138295355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A288930

/-! ## A288930.P17727141042638428847

`A005843(A219641(n)+1)+n`
-/

namespace A288930.P17727141042638428847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A219641 n + 1).toNat + (n : ℤ)

end

end A288930.P17727141042638428847

namespace A288930

/-- `A005843(A219641(n)+1)+n` -/
def P17727141042638428847.Spec : Prop :=
  ∀ n, P17727141042638428847.a n = A288930 (n + 1)

end A288930

/-! ## A288930.P10909799430979094278

`A288625(n+1)+A219641(n)`
-/

namespace A288930.P10909799430979094278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288625 (n + 1) + A219641 n

end

end A288930.P10909799430979094278

namespace A288930

/-- `A288625(n+1)+A219641(n)` -/
def P10909799430979094278.Spec : Prop :=
  ∀ n, P10909799430979094278.a n = A288930 (n + 1)

theorem P10909799430979094278.correct : P10909799430979094278.Spec := by
  intro n
  simp only [A288930, Nat.add_sub_cancel, A288930.P10909799430979094278.a, A288930.P1598540981707641911.a, A219641, A219641.P1602393212941527080.a, A288625, A288625.P5745602300368746224.a, A007895, A007895.P13159574906702943091.a, A143299, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A003849, A003849.P15070805603138295355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A288930

/-! ## A288930.P10688444042027706645

`A219641(A028310(n))+A219641(n)+2+n`
-/

namespace A288930.P10688444042027706645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 (A028310 n).toNat + (A219641 n + 2 + (n : ℤ))

end

end A288930.P10688444042027706645

namespace A288930

/-- `A219641(A028310(n))+A219641(n)+2+n` -/
def P10688444042027706645.Spec : Prop :=
  ∀ n, P10688444042027706645.a n = A288930 (n + 1)

end A288930

/-! ## A288930.P2101209476432813450

`2*eq[0, A288375(n+1)]-n`
-/

namespace A288930.P2101209476432813450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A288930.P2101209476432813450

namespace A288930

/-- `2*eq[0, A288375(n+1)]-n` -/
def P2101209476432813450.Spec : Prop :=
  ∀ n, P2101209476432813450.a n = A288930 (n + 1)

end A288930

/-! ## A288930.P16829315456923219025

`A004277(A288625(n+1)-1)-n`
-/

namespace A288930.P16829315456923219025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A288625 (n + 1) - 1).toNat - (n : ℤ)

end

end A288930.P16829315456923219025

namespace A288930

/-- `A004277(A288625(n+1)-1)-n` -/
def P16829315456923219025.Spec : Prop :=
  ∀ n, P16829315456923219025.a n = A288930 (n + 1)

end A288930

/-! ## A288930.P2494100955362335736

`A005843(A288625(n+1)-1)-n`
-/

namespace A288930.P2494100955362335736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A288625 (n + 1) - 1).toNat - (n : ℤ)

end

end A288930.P2494100955362335736

namespace A288930

/-- `A005843(A288625(n+1)-1)-n` -/
def P2494100955362335736.Spec : Prop :=
  ∀ n, P2494100955362335736.a n = A288930 (n + 1)

end A288930

/-! ## A288930.P1564340768969245745

`A219641(n)+lt[A288375(n+1), 1]+1`
-/

namespace A288930.P1564340768969245745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288375 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 n + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ)

end

end A288930.P1564340768969245745

namespace A288930

/-- `A219641(n)+lt[A288375(n+1), 1]+1` -/
def P1564340768969245745.Spec : Prop :=
  ∀ n, P1564340768969245745.a n = A288930 (n + 1)

end A288930

/-! ## A288930.P7418792906738443419

`lt[A288929(n+1), 1]+1`
-/

namespace A288930.P7418792906738443419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288929 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A288930.P7418792906738443419

namespace A288930

/-- `lt[A288929(n+1), 1]+1` -/
def P7418792906738443419.Spec : Prop :=
  ∀ n, (P7418792906738443419.a n : ℤ) = A288930 (n + 1)

end A288930

/-! ## A288930.P15073719967345243181

`eq[2, A288929(n+2)+2]+2`
-/

namespace A288930.P15073719967345243181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288929 (n + 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A288930.P15073719967345243181

namespace A288930

/-- `eq[2, A288929(n+2)+2]+2` -/
def P15073719967345243181.Spec : Prop :=
  ∀ n, (P15073719967345243181.a n : ℤ) = A288930 (n + 1)

end A288930

/-! ## A288930.P5816609126046606042

`lt[A288929(A028310(n)), 1]`
-/

namespace A288930.P5816609126046606042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288929 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A288930.P5816609126046606042

namespace A288930

/-- `lt[A288929(A028310(n)), 1]` -/
def P5816609126046606042.Spec : Prop :=
  ∀ n, (P5816609126046606042.a n : ℤ) = A288930 (n + 1)

end A288930

/-!
# A288931: Positions of 1 in A288929; complement of A288930.

The programs for A288931, the canonical program `A288931.P10856556094994457970` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288931 has offset 1).

The definition of A288931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6662 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288931.P10856556094994457970

`filter[n+1, A288929(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A288931

/-- `filter[n+1, A288929(#)]` -/
def P10856556094994457970.Spec : Prop :=
  ∀ n, (P10856556094994457970.a n : ℤ) = A288931 (n + 1)

theorem P10856556094994457970.correct : P10856556094994457970.Spec := by
  intro n
  simp only [A288931, Nat.add_sub_cancel]

end A288931

/-! ## A288931.P14639471004149022968

`eq[1, A288929(n+1)]+1`
-/

namespace A288931.P14639471004149022968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288931.P14639471004149022968

namespace A288931

/-- `eq[1, A288929(n+1)]+1` -/
def P14639471004149022968.Spec : Prop :=
  ∀ n, (P14639471004149022968.a n : ℤ) = A288931 (n + 1)

end A288931

/-! ## A288931.P13617833241957418618

`record[A000027(n+1)*A288929(n+1)]`
-/

namespace A288931.P13617833241957418618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A288929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288931.P13617833241957418618

namespace A288931

/-- `record[A000027(n+1)*A288929(n+1)]` -/
def P13617833241957418618.Spec : Prop :=
  ∀ n, P13617833241957418618.a n = A288931 (n + 1)

end A288931

/-! ## A288931.P18131297657390451570

`lt[A097331(2*n), A288929(A028310(n))]`
-/

namespace A288931.P18131297657390451570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288929 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288931.P18131297657390451570

namespace A288931

/-- `lt[A097331(2*n), A288929(A028310(n))]` -/
def P18131297657390451570.Spec : Prop :=
  ∀ n, (P18131297657390451570.a n : ℤ) = A288931 (n + 1)

end A288931

/-! ## A288931.P17030169941853459461

`lt[A106216(3*n+4), A288929(n+1)]+1`
-/

namespace A288931.P17030169941853459461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106216 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A288931.P17030169941853459461

namespace A288931

/-- `lt[A106216(3*n+4), A288929(n+1)]+1` -/
def P17030169941853459461.Spec : Prop :=
  ∀ n, (P17030169941853459461.a n : ℤ) = A288931 (n + 1)

end A288931

/-!
# A288932: Fixed point of the mapping 00->1000, 10->10101, starting with 00.

The programs for A288932, the canonical program `A288932.P12337615007191442856` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288932 has offset 1).

The definition of A288932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288932.P14548614512629982115

`char[comp[a(n-1)+val(n, 2)+2]]` with `a(0)=1`
-/

namespace A288932.P14548614512629982115
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + (SequenceMachineLib.valuation n 2 + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288932.P14548614512629982115

namespace A288932

/-- `char[comp[a(n-1)+val(n, 2)+2]]` -/
def P14548614512629982115.Spec : Prop :=
  ∀ n, (P14548614512629982115.a n : ℤ) = A288932 (n + 1)

end A288932

/-! ## A288932.P7240885158232677628

`1-char[a(n-1)+val(n, 2)+2]` with `a(0)=1`
-/

namespace A288932.P7240885158232677628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (SequenceMachineLib.valuation n 2 + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A288932.P7240885158232677628

namespace A288932

/-- `1-char[a(n-1)+val(n, 2)+2]` -/
def P7240885158232677628.Spec : Prop :=
  ∀ n, P7240885158232677628.a n = A288932 (n + 1)

end A288932

/-! ## A288932.P2391001418809062531

`1-char[∑[val(abs(1-4*n)+1, 2)]]`
-/

namespace A288932.P2391001418809062531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (4 * n : ℤ)| + 1).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A288932.P2391001418809062531

namespace A288932

/-- `1-char[∑[val(abs(1-4*n)+1, 2)]]` -/
def P2391001418809062531.Spec : Prop :=
  ∀ n, P2391001418809062531.a n = A288932 (n + 1)

end A288932

/-! ## A288932.P13844480323611159716

`char[comp[A004134(n)+1]]`
-/

namespace A288932.P13844480323611159716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288932.P13844480323611159716

namespace A288932

/-- `char[comp[A004134(n)+1]]` -/
def P13844480323611159716.Spec : Prop :=
  ∀ n, (P13844480323611159716.a n : ℤ) = A288932 (n + 1)

end A288932

/-! ## A288932.P12585482435686534760

`a(1-A308185(n))` with `a(0)=1, a(1)=0`
-/

namespace A288932.P12585482435686534760
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (1 - A308185 n).toNat

end

end A288932.P12585482435686534760

namespace A288932

/-- `a(1-A308185(n))` -/
def P12585482435686534760.Spec : Prop :=
  ∀ n, (P12585482435686534760.a n : ℤ) = A288932 (n + 1)

end A288932

/-! ## A288932.P14229782084982573577

`A308185(abs(1-n)+1)`
-/

namespace A288932.P14229782084982573577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308185 (|1 - (n : ℤ)| + 1).toNat

end

end A288932.P14229782084982573577

namespace A288932

/-- `A308185(abs(1-n)+1)` -/
def P14229782084982573577.Spec : Prop :=
  ∀ n, P14229782084982573577.a n = A288932 (n + 1)

end A288932

/-! ## A288932.P2454221647801877252

`char[A288934(n+1)-1]`
-/

namespace A288932.P2454221647801877252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288934 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288932.P2454221647801877252

namespace A288932

/-- `char[A288934(n+1)-1]` -/
def P2454221647801877252.Spec : Prop :=
  ∀ n, (P2454221647801877252.a n : ℤ) = A288932 (n + 1)

end A288932

/-! ## A288932.P6195889581646268804

`char[A308185(n+1)+n]`
-/

namespace A288932.P6195889581646268804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308185 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288932.P6195889581646268804

namespace A288932

/-- `char[A308185(n+1)+n]` -/
def P6195889581646268804.Spec : Prop :=
  ∀ n, (P6195889581646268804.a n : ℤ) = A288932 (n + 1)

end A288932

/-! ## A288932.P6486974862158321771

`1-char[A101925(n)+n]`
-/

namespace A288932.P6486974862158321771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288932.P6486974862158321771

namespace A288932

/-- `1-char[A101925(n)+n]` -/
def P6486974862158321771.Spec : Prop :=
  ∀ n, P6486974862158321771.a n = A288932 (n + 1)

end A288932

/-! ## A288932.P12595758810651393120

`1-char[∑[abs(A123725(n))]]`
-/

namespace A288932.P12595758810651393120
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123725 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288932.P12595758810651393120

namespace A288932

/-- `1-char[∑[abs(A123725(n))]]` -/
def P12595758810651393120.Spec : Prop :=
  ∀ n, P12595758810651393120.a n = A288932 (n + 1)

end A288932

/-! ## A288932.P609843353013616551

`char[comp[∑[A089080(n+1)]]]`
-/

namespace A288932.P609843353013616551
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288932.P609843353013616551

namespace A288932

/-- `char[comp[∑[A089080(n+1)]]]` -/
def P609843353013616551.Spec : Prop :=
  ∀ n, (P609843353013616551.a n : ℤ) = A288932 (n + 1)

end A288932

/-! ## A288932.P17168066514134417591

`char[comp[A005187(n)+1+n]]`
-/

namespace A288932.P17168066514134417591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n + 1 + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288932.P17168066514134417591

namespace A288932

/-- `char[comp[A005187(n)+1+n]]` -/
def P17168066514134417591.Spec : Prop :=
  ∀ n, (P17168066514134417591.a n : ℤ) = A288932 (n + 1)

end A288932

/-! ## A288932.P12337615007191442856

`(1-C(2, A082691(n+1)))²`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A288932

/-- `(1-C(2, A082691(n+1)))²` -/
def P12337615007191442856.Spec : Prop :=
  ∀ n, P12337615007191442856.a n = A288932 (n + 1)

theorem P12337615007191442856.correct : P12337615007191442856.Spec := by
  intro n
  simp only [A288932, Nat.add_sub_cancel]

end A288932

/-! ## A288932.P1255595189187971555

`1-char[A288933(n+1)-1]`
-/

namespace A288932.P1255595189187971555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288933 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288932.P1255595189187971555

namespace A288932

/-- `1-char[A288933(n+1)-1]` -/
def P1255595189187971555.Spec : Prop :=
  ∀ n, P1255595189187971555.a n = A288932 (n + 1)

end A288932

/-! ## A288932.P9739480524994580630

`char[A308186(n+1)-1+n]`
-/

namespace A288932.P9739480524994580630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308186 (n + 1) - 1 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288932.P9739480524994580630

namespace A288932

/-- `char[A308186(n+1)-1+n]` -/
def P9739480524994580630.Spec : Prop :=
  ∀ n, (P9739480524994580630.a n : ℤ) = A288932 (n + 1)

end A288932

/-! ## A288932.P9514211255694354129

`char[A046699(n+1)%(n+1)+n]`
-/

namespace A288932.P9514211255694354129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046699 (n + 1)) (n + 1 : ℤ) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288932.P9514211255694354129

namespace A288932

/-- `char[A046699(n+1)%(n+1)+n]` -/
def P9514211255694354129.Spec : Prop :=
  ∀ n, (P9514211255694354129.a n : ℤ) = A288932 (n + 1)

end A288932

/-! ## A288932.P12119728471331370457

`char[A004526(A007843(n))+n]`
-/

namespace A288932.P12119728471331370457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A007843 n).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288932.P12119728471331370457

namespace A288932

/-- `char[A004526(A007843(n))+n]` -/
def P12119728471331370457.Spec : Prop :=
  ∀ n, (P12119728471331370457.a n : ℤ) = A288932 (n + 1)

end A288932

/-! ## A288932.P16507882094152359985

`1-char[A016777(n)-A000120(n)]`
-/

namespace A288932.P16507882094152359985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n - A000120 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288932.P16507882094152359985

namespace A288932

/-- `1-char[A016777(n)-A000120(n)]` -/
def P16507882094152359985.Spec : Prop :=
  ∀ n, P16507882094152359985.a n = A288932 (n + 1)

end A288932

/-! ## A288932.P15786062693219861094

`char[A308196(n)%A308186(n+1)+n]`
-/

namespace A288932.P15786062693219861094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308196 n) (A308186 (n + 1)) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288932.P15786062693219861094

namespace A288932

/-- `char[A308196(n)%A308186(n+1)+n]` -/
def P15786062693219861094.Spec : Prop :=
  ∀ n, (P15786062693219861094.a n : ℤ) = A288932 (n + 1)

end A288932

/-!
# A288933: Positions of 0 in A288932; complement of A288934.

The programs for A288933, the canonical program `A288933.P4421397000891247029` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288933 has offset 1).

The definition of A288933 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288933.P4421397000891247029

`a(n-1)+val(n, 2)+2` with `a(0)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288933

/-- `a(n-1)+val(n, 2)+2` -/
def P4421397000891247029.Spec : Prop :=
  ∀ n, (P4421397000891247029.a n : ℤ) = A288933 (n + 1)

theorem P4421397000891247029.correct : P4421397000891247029.Spec := by
  intro n
  simp only [A288933, Nat.add_sub_cancel]

end A288933

/-! ## A288933.P3493587256269228201

`∑[a(n%2)+val(n, 2)]` with `a(0)=2, a(1)=2`
-/

namespace A288933.P3493587256269228201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n % 2) + SequenceMachineLib.valuation n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288933.P3493587256269228201

namespace A288933

/-- `∑[a(n%2)+val(n, 2)]` -/
def P3493587256269228201.Spec : Prop :=
  ∀ n, (P3493587256269228201.a n : ℤ) = A288933 (n + 1)

end A288933

/-! ## A288933.P3453725243390931186

`∑[val(record[lcm(2, n)+2], 2)]+1`
-/

namespace A288933.P3453725243390931186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A288933.P3453725243390931186

namespace A288933

/-- `∑[val(record[lcm(2, n)+2], 2)]+1` -/
def P3453725243390931186.Spec : Prop :=
  ∀ n, (P3453725243390931186.a n : ℤ) = A288933 (n + 1)

end A288933

/-! ## A288933.P15526656024154527017

`∑[a(∑[n]%n)+1]+1` with `a(0)=1`
-/

namespace A288933.P15526656024154527017
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A288933.P15526656024154527017

namespace A288933

/-- `∑[a(∑[n]%n)+1]+1` -/
def P15526656024154527017.Spec : Prop :=
  ∀ n, (P15526656024154527017.a n : ℤ) = A288933 (n + 1)

end A288933

/-! ## A288933.P16370623448743364036

`∑[∏{e}[xor(n, -n), #]]+1+n`
-/

namespace A288933.P16370623448743364036
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + n

end

end A288933.P16370623448743364036

namespace A288933

/-- `∑[∏{e}[xor(n, -n), #]]+1+n` -/
def P16370623448743364036.Spec : Prop :=
  ∀ n, (P16370623448743364036.a n : ℤ) = A288933 (n + 1)

end A288933

/-! ## A288933.P2416306346342608567

`ceil(n/2)+a(floor(n/2))+n` with `a(0)=2`
-/

namespace A288933.P2416306346342608567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈(n : ℚ) / 2⌉ + (a ⌊(n : ℚ) / 2⌋.toNat + (n : ℤ))

end

end A288933.P2416306346342608567

namespace A288933

/-- `ceil(n/2)+a(floor(n/2))+n` -/
def P2416306346342608567.Spec : Prop :=
  ∀ n, P2416306346342608567.a n = A288933 (n + 1)

end A288933

/-! ## A288933.P10455808184737776520

`A004134(n)+2`
-/

namespace A288933.P10455808184737776520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n + 2

end

end A288933.P10455808184737776520

namespace A288933

/-- `A004134(n)+2` -/
def P10455808184737776520.Spec : Prop :=
  ∀ n, P10455808184737776520.a n = A288933 (n + 1)

end A288933

/-! ## A288933.P4087578845619770418

`A101925(n)+1+n`
-/

namespace A288933.P4087578845619770418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n + 1 + (n : ℤ)

end

end A288933.P4087578845619770418

namespace A288933

/-- `A101925(n)+1+n` -/
def P4087578845619770418.Spec : Prop :=
  ∀ n, P4087578845619770418.a n = A288933 (n + 1)

end A288933

/-! ## A288933.P17774775380668292493

`A005187(n)+2+n`
-/

namespace A288933.P17774775380668292493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n + 2 + (n : ℤ)

end

end A288933.P17774775380668292493

namespace A288933

/-- `A005187(n)+2+n` -/
def P17774775380668292493.Spec : Prop :=
  ∀ n, P17774775380668292493.a n = A288933 (n + 1)

end A288933

/-! ## A288933.P10725613489130155828

`A086343(n+1)-n`
-/

namespace A288933.P10725613489130155828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086343 (n + 1) - (n : ℤ)

end

end A288933.P10725613489130155828

namespace A288933

/-- `A086343(n+1)-n` -/
def P10725613489130155828.Spec : Prop :=
  ∀ n, P10725613489130155828.a n = A288933 (n + 1)

end A288933

/-! ## A288933.P9056755831336267856

`A120738(n)+2-n`
-/

namespace A288933.P9056755831336267856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120738 n + (2 - (n : ℤ))

end

end A288933.P9056755831336267856

namespace A288933

/-- `A120738(n)+2-n` -/
def P9056755831336267856.Spec : Prop :=
  ∀ n, P9056755831336267856.a n = A288933 (n + 1)

end A288933

/-! ## A288933.P16623228824410191359

`∑[abs(A123725(n))]+1`
-/

namespace A288933.P16623228824410191359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A123725 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A288933.P16623228824410191359

namespace A288933

/-- `∑[abs(A123725(n))]+1` -/
def P16623228824410191359.Spec : Prop :=
  ∀ n, P16623228824410191359.a n = A288933 (n + 1)

end A288933

/-! ## A288933.P10965442079520511420

`∑[sqrt(A123726(n))+1]`
-/

namespace A288933.P10965442079520511420
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A123726 n : ℝ) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288933.P10965442079520511420

namespace A288933

/-- `∑[sqrt(A123726(n))+1]` -/
def P10965442079520511420.Spec : Prop :=
  ∀ n, P10965442079520511420.a n = (A288933 (n + 1) : ℝ)

end A288933

/-! ## A288933.P2734414093926296147

`∑[A089080(n+1)]+1`
-/

namespace A288933.P2734414093926296147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A288933.P2734414093926296147

namespace A288933

/-- `∑[A089080(n+1)]+1` -/
def P2734414093926296147.Spec : Prop :=
  ∀ n, P2734414093926296147.a n = A288933 (n + 1)

end A288933

/-! ## A288933.P14789936006077672224

`∑[val(A008486(n), 2)+2]`
-/

namespace A288933.P14789936006077672224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008486 n).toNat 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288933.P14789936006077672224

namespace A288933

/-- `∑[val(A008486(n), 2)+2]` -/
def P14789936006077672224.Spec : Prop :=
  ∀ n, (P14789936006077672224.a n : ℤ) = A288933 (n + 1)

end A288933

/-! ## A288933.P5484500744131695663

`∑[val(A008574(n), 2)]+2`
-/

namespace A288933.P5484500744131695663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008574 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A288933.P5484500744131695663

namespace A288933

/-- `∑[val(A008574(n), 2)]+2` -/
def P5484500744131695663.Spec : Prop :=
  ∀ n, (P5484500744131695663.a n : ℤ) = A288933 (n + 1)

end A288933

/-! ## A288933.P6607719270778526836

`∑[val(A008706(n), 2)+2]`
-/

namespace A288933.P6607719270778526836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008706 n).toNat 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288933.P6607719270778526836

namespace A288933

/-- `∑[val(A008706(n), 2)+2]` -/
def P6607719270778526836.Spec : Prop :=
  ∀ n, (P6607719270778526836.a n : ℤ) = A288933 (n + 1)

end A288933

/-! ## A288933.P6660007828692131472

`∑[val(A028310(n), 2)+2]`
-/

namespace A288933.P6660007828692131472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028310 n).toNat 2 + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288933.P6660007828692131472

namespace A288933

/-- `∑[val(A028310(n), 2)+2]` -/
def P6660007828692131472.Spec : Prop :=
  ∀ n, (P6660007828692131472.a n : ℤ) = A288933 (n + 1)

end A288933

/-!
# A288934: Positions of 1 in A288932; complement of A288933.

The programs for A288934, the canonical program `A288934.P1390299028950243465` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288934 has offset 1).

The definition of A288934 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288934.P4923482230444382582

`∑[char[a(floor(n/2))+n]+1]` with `a(0)=1`
-/

namespace A288934.P4923482230444382582
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288934.P4923482230444382582

namespace A288934

/-- `∑[char[a(floor(n/2))+n]+1]` -/
def P4923482230444382582.Spec : Prop :=
  ∀ n, (P4923482230444382582.a n : ℤ) = A288934 (n + 1)

end A288934

/-! ## A288934.P2897030919209764797

`comp[a(n-1)+val(n, 2)+2]+1` with `a(0)=1`
-/

namespace A288934.P2897030919209764797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (SequenceMachineLib.valuation n 2 + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A288934.P2897030919209764797

namespace A288934

/-- `comp[a(n-1)+val(n, 2)+2]+1` -/
def P2897030919209764797.Spec : Prop :=
  ∀ n, (P2897030919209764797.a n : ℤ) = A288934 (n + 1)

end A288934

/-! ## A288934.P17150616549259527425

`comp[∑[val(abs(1-4*n)+1, 2)]]+1`
-/

namespace A288934.P17150616549259527425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (4 * n : ℤ)| + 1).toNat 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A288934.P17150616549259527425

namespace A288934

/-- `comp[∑[val(abs(1-4*n)+1, 2)]]+1` -/
def P17150616549259527425.Spec : Prop :=
  ∀ n, (P17150616549259527425.a n : ℤ) = A288934 (n + 1)

end A288934

/-! ## A288934.P11225442605612767824

`∑[char[A101925(n)]+1]`
-/

namespace A288934.P11225442605612767824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288934.P11225442605612767824

namespace A288934

/-- `∑[char[A101925(n)]+1]` -/
def P11225442605612767824.Spec : Prop :=
  ∀ n, (P11225442605612767824.a n : ℤ) = A288934 (n + 1)

end A288934

/-! ## A288934.P17322607748084934059

`comp[A004134(n)+1]+1`
-/

namespace A288934.P17322607748084934059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288934.P17322607748084934059

namespace A288934

/-- `comp[A004134(n)+1]+1` -/
def P17322607748084934059.Spec : Prop :=
  ∀ n, (P17322607748084934059.a n : ℤ) = A288934 (n + 1)

end A288934

/-! ## A288934.P10889676051793706208

`∑[A153006(n)%2+1]`
-/

namespace A288934.P10889676051793706208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153006 n) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288934.P10889676051793706208

namespace A288934

/-- `∑[A153006(n)%2+1]` -/
def P10889676051793706208.Spec : Prop :=
  ∀ n, P10889676051793706208.a n = A288934 (n + 1)

end A288934

/-! ## A288934.P3905330415648075825

`∑[char[A005187(n)+1]+1]`
-/

namespace A288934.P3905330415648075825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288934.P3905330415648075825

namespace A288934

/-- `∑[char[A005187(n)+1]+1]` -/
def P3905330415648075825.Spec : Prop :=
  ∀ n, (P3905330415648075825.a n : ℤ) = A288934 (n + 1)

end A288934

/-! ## A288934.P13115296177761405225

`comp[∑[A089080(n+1)]]+1`
-/

namespace A288934.P13115296177761405225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089080 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288934.P13115296177761405225

namespace A288934

/-- `comp[∑[A089080(n+1)]]+1` -/
def P13115296177761405225.Spec : Prop :=
  ∀ n, (P13115296177761405225.a n : ℤ) = A288934 (n + 1)

end A288934

/-! ## A288934.P7978389154515328174

`∑[floor(a(A053645(n+1)))]` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A288934.P7978389154515328174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (A053645 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288934.P7978389154515328174

namespace A288934

/-- `∑[floor(a(A053645(n+1)))]` -/
def P7978389154515328174.Spec : Prop :=
  ∀ n, (P7978389154515328174.a n : ℤ) = A288934 (n + 1)

end A288934

/-! ## A288934.P1390299028950243465

`ceil((A080578(n+1)+n)/2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A288934

/-- `ceil((A080578(n+1)+n)/2)` -/
def P1390299028950243465.Spec : Prop :=
  ∀ n, P1390299028950243465.a n = A288934 (n + 1)

theorem P1390299028950243465.correct : P1390299028950243465.Spec := by
  intro n
  simp only [A288934, Nat.add_sub_cancel]

end A288934

/-! ## A288934.P782037630013421079

`comp[3*n+1-A000120(n)]+1`
-/

namespace A288934.P782037630013421079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) - A000120 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288934.P782037630013421079

namespace A288934

/-- `comp[3*n+1-A000120(n)]+1` -/
def P782037630013421079.Spec : Prop :=
  ∀ n, (P782037630013421079.a n : ℤ) = A288934 (n + 1)

end A288934

/-! ## A288934.P2162644320672315680

`A046699(n+1)%(n+1)+1+n`
-/

namespace A288934.P2162644320672315680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046699 (n + 1)) (n + 1 : ℤ) + 1 + (n : ℤ)

end

end A288934.P2162644320672315680

namespace A288934

/-- `A046699(n+1)%(n+1)+1+n` -/
def P2162644320672315680.Spec : Prop :=
  ∀ n, P2162644320672315680.a n = A288934 (n + 1)

end A288934

/-! ## A288934.P1140873459604475079

`∑[A079559(n)+1]-A079559(n)`
-/

namespace A288934.P1140873459604475079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079559 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A079559 n

end

end A288934.P1140873459604475079

namespace A288934

/-- `∑[A079559(n)+1]-A079559(n)` -/
def P1140873459604475079.Spec : Prop :=
  ∀ n, P1140873459604475079.a n = A288934 (n + 1)

end A288934

/-! ## A288934.P12196105885629091041

`A087156(n+1)+A046699(n+1)`
-/

namespace A288934.P12196105885629091041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + A046699 (n + 1)

end

end A288934.P12196105885629091041

namespace A288934

/-- `A087156(n+1)+A046699(n+1)` -/
def P12196105885629091041.Spec : Prop :=
  ∀ n, P12196105885629091041.a n = A288934 (n + 1)

end A288934

/-! ## A288934.P6530405864090550648

`A318518(A080578(n+1)+1+n)`
-/

namespace A288934.P6530405864090550648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (A080578 (n + 1) + 1 + (n : ℤ)).toNat

end

end A288934.P6530405864090550648

namespace A288934

/-- `A318518(A080578(n+1)+1+n)` -/
def P6530405864090550648.Spec : Prop :=
  ∀ n, P6530405864090550648.a n = A288934 (n + 1)

end A288934

/-! ## A288934.P4734203653833876138

`A046699(n+1)+A057427(n)+n`
-/

namespace A288934.P4734203653833876138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (n + 1) + (A057427 n + (n : ℤ))

end

end A288934.P4734203653833876138

namespace A288934

/-- `A046699(n+1)+A057427(n)+n` -/
def P4734203653833876138.Spec : Prop :=
  ∀ n, P4734203653833876138.a n = A288934 (n + 1)

end A288934

/-! ## A288934.P14219649100242918729

`A308187(n+1)+comp[A005187(n)+n]`
-/

namespace A288934.P14219649100242918729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308187 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A288934.P14219649100242918729

namespace A288934

/-- `A308187(n+1)+comp[A005187(n)+n]` -/
def P14219649100242918729.Spec : Prop :=
  ∀ n, P14219649100242918729.a n = A288934 (n + 1)

end A288934

/-! ## A288934.P14018425287879297497

`A108918(A182105(n+1))+A339451(n)+n`
-/

namespace A288934.P14018425287879297497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108918 (A182105 (n + 1)).toNat + (A339451 n + (n : ℤ))

end

end A288934.P14018425287879297497

namespace A288934

/-- `A108918(A182105(n+1))+A339451(n)+n` -/
def P14018425287879297497.Spec : Prop :=
  ∀ n, P14018425287879297497.a n = A288934 (n + 1)

end A288934

/-! ## A288934.P4412369154565054848

`A046699(n+1)+A080578(n+1)-A007843(n)`
-/

namespace A288934.P4412369154565054848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (n + 1) + (A080578 (n + 1) - A007843 n)

end

end A288934.P4412369154565054848

namespace A288934

/-- `A046699(n+1)+A080578(n+1)-A007843(n)` -/
def P4412369154565054848.Spec : Prop :=
  ∀ n, P4412369154565054848.a n = A288934 (n + 1)

end A288934

/-! ## A288934.P12946470767083083800

`A080578(n+1)+A079559(n)-A046699(n+2)`
-/

namespace A288934.P12946470767083083800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080578 (n + 1) + (A079559 n - A046699 (n + 2))

end

end A288934.P12946470767083083800

namespace A288934

/-- `A080578(n+1)+A079559(n)-A046699(n+2)` -/
def P12946470767083083800.Spec : Prop :=
  ∀ n, P12946470767083083800.a n = A288934 (n + 1)

end A288934

/-!
# A288936: Fixed point of the mapping 00->0010, 01->011, 10->011, starting with 00.

The programs for A288936, the canonical program `A288936.P17816657402752772345` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288936 has offset 1).

The definition of A288936 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5006 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288936.P1028950133329231348

`char[A288938(n+1)-1]`
-/

namespace A288936.P1028950133329231348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288938 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288936.P1028950133329231348

namespace A288936

/-- `char[A288938(n+1)-1]` -/
def P1028950133329231348.Spec : Prop :=
  ∀ n, (P1028950133329231348.a n : ℤ) = A288936 (n + 1)

end A288936

/-! ## A288936.P5345729372203507354

`char[A074764(n+1)+A010054(n)]`
-/

namespace A288936.P5345729372203507354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074764 (n + 1) + A010054 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288936.P5345729372203507354

namespace A288936

/-- `char[A074764(n+1)+A010054(n)]` -/
def P5345729372203507354.Spec : Prop :=
  ∀ n, (P5345729372203507354.a n : ℤ) = A288936 (n + 1)

end A288936

/-! ## A288936.P17816657402752772345

`char[5-A010816(n+1)+n]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A288936

/-- `char[5-A010816(n+1)+n]` -/
def P17816657402752772345.Spec : Prop :=
  ∀ n, (P17816657402752772345.a n : ℤ) = A288936 (n + 1)

theorem P17816657402752772345.correct : P17816657402752772345.Spec := by
  intro n
  simp only [A288936, Nat.add_sub_cancel]

end A288936

/-! ## A288936.P17831168636327793255

`char[A009005(n+1)-A010816(n)]`
-/

namespace A288936.P17831168636327793255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (n + 1) - A010816 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288936.P17831168636327793255

namespace A288936

/-- `char[A009005(n+1)-A010816(n)]` -/
def P17831168636327793255.Spec : Prop :=
  ∀ n, (P17831168636327793255.a n : ℤ) = A288936 (n + 1)

end A288936

/-! ## A288936.P15002375565003521982

`A037126(n+1-4%A061555(n+1))%2`
-/

namespace A288936.P15002375565003521982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037126 ((n + 1 : ℤ) - Int.tmod 4 (A061555 (n + 1))).toNat) 2

end

end A288936.P15002375565003521982

namespace A288936

/-- `A037126(n+1-4%A061555(n+1))%2` -/
def P15002375565003521982.Spec : Prop :=
  ∀ n, P15002375565003521982.a n = A288936 (n + 1)

end A288936

/-!
# A288937: Positions of 0 in A288936; complement of A288938.

The programs for A288937, the canonical program `A288937.P6961260132151301053` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288937 has offset 1).

The definition of A288937 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1749 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288937.P6961260132151301053

`∑[a(n-1)+1]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=3, a(5)=3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288937

/-- `∑[a(n-1)+1]` -/
def P6961260132151301053.Spec : Prop :=
  ∀ n, (P6961260132151301053.a n : ℤ) = A288937 (n + 1)

theorem P6961260132151301053.correct : P6961260132151301053.Spec := by
  intro n
  simp only [A288937, Nat.add_sub_cancel]

end A288937

/-! ## A288937.P12441364484373852975

`a(n-1)-2+n` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=8`
-/

namespace A288937.P12441364484373852975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 5, 8] fun n a =>
  a (n - 1) - 2 + (n : ℤ)

end

end A288937.P12441364484373852975

namespace A288937

/-- `a(n-1)-2+n` -/
def P12441364484373852975.Spec : Prop :=
  ∀ n, P12441364484373852975.a n = A288937 (n + 1)

end A288937

/-! ## A288937.P2647015827396185919

`a(n-1)-(2-n)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=8`
-/

namespace A288937.P2647015827396185919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 5, 8] fun n a =>
  a (n - 1) - (2 - (n : ℤ))

end

end A288937.P2647015827396185919

namespace A288937

/-- `a(n-1)-(2-n)` -/
def P2647015827396185919.Spec : Prop :=
  ∀ n, P2647015827396185919.a n = A288937 (n + 1)

end A288937

/-! ## A288937.P2243813247468294881

`A022856(n+1)+1-A142150(A051698(n))+n`
-/

namespace A288937.P2243813247468294881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022856 (n + 1) + (1 - A142150 (A051698 n).toNat + (n : ℤ))

end

end A288937.P2243813247468294881

namespace A288937

/-- `A022856(n+1)+1-A142150(A051698(n))+n` -/
def P2243813247468294881.Spec : Prop :=
  ∀ n, P2243813247468294881.a n = A288937 (n + 1)

end A288937

/-! ## A288937.P12790417609910191072

`∑[A048865(A161346(n+1))]`
-/

namespace A288937.P12790417609910191072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A161346 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288937.P12790417609910191072

namespace A288937

/-- `∑[A048865(A161346(n+1))]` -/
def P12790417609910191072.Spec : Prop :=
  ∀ n, P12790417609910191072.a n = A288937 (n + 1)

end A288937

/-! ## A288937.P1929208976467584677

`∑[A077028(record[A106247(n)])]`
-/

namespace A288937.P1929208976467584677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106247 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077028 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288937.P1929208976467584677

namespace A288937

/-- `∑[A077028(record[A106247(n)])]` -/
def P1929208976467584677.Spec : Prop :=
  ∀ n, P1929208976467584677.a n = A288937 (n + 1)

end A288937

/-! ## A288937.P8896105499230740801

`lt[A288936(n+1), 1]+1`
-/

namespace A288937.P8896105499230740801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288936 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A288937.P8896105499230740801

namespace A288937

/-- `lt[A288936(n+1), 1]+1` -/
def P8896105499230740801.Spec : Prop :=
  ∀ n, (P8896105499230740801.a n : ℤ) = A288937 (n + 1)

end A288937

/-! ## A288937.P17187309253442317650

`lt[n*A288936(A028310(n)), n]`
-/

namespace A288937.P17187309253442317650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288936 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A288937.P17187309253442317650

namespace A288937

/-- `lt[n*A288936(A028310(n)), n]` -/
def P17187309253442317650.Spec : Prop :=
  ∀ n, (P17187309253442317650.a n : ℤ) = A288937 (n + 1)

end A288937

/-! ## A288937.P7952716966287821690

`A083920(A022856(n+2))+n+1`
-/

namespace A288937.P7952716966287821690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A022856 (n + 2)).toNat + (n + 1 : ℤ)

end

end A288937.P7952716966287821690

namespace A288937

/-- `A083920(A022856(n+2))+n+1` -/
def P7952716966287821690.Spec : Prop :=
  ∀ n, P7952716966287821690.a n = A288937 (n + 1)

end A288937

/-! ## A288937.P18167138682697200700

`lt[A288936(A028310(n)), A057427(n)]`
-/

namespace A288937.P18167138682697200700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288936 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288937.P18167138682697200700

namespace A288937

/-- `lt[A288936(A028310(n)), A057427(n)]` -/
def P18167138682697200700.Spec : Prop :=
  ∀ n, (P18167138682697200700.a n : ℤ) = A288937 (n + 1)

end A288937

/-! ## A288937.P14842979404263426180

`∑[A137735(n²²%(n+1)²)]`
-/

namespace A288937.P14842979404263426180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 ((n ^ 2) ^ 2 % (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288937.P14842979404263426180

namespace A288937

/-- `∑[A137735(n²²%(n+1)²)]` -/
def P14842979404263426180.Spec : Prop :=
  ∀ n, P14842979404263426180.a n = A288937 (n + 1)

end A288937

/-!
# A288938: Positions of 1 in A288936; complement of A288937.

The programs for A288938, the canonical program `A288938.P11305853258716454191` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288938 has offset 1).

The definition of A288938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288938.P11305853258716454191

`A080036(n)+char[A080036(n)]+2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A288938

/-- `A080036(n)+char[A080036(n)]+2` -/
def P11305853258716454191.Spec : Prop :=
  ∀ n, P11305853258716454191.a n = A288938 (n + 1)

theorem P11305853258716454191.correct : P11305853258716454191.Spec := by
  intro n
  simp only [A288938, Nat.add_sub_cancel]

end A288938

/-! ## A288938.P3094729512318508093

`filter[n+1, A288936(#)]`
-/

namespace A288938.P3094729512318508093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288936 (f1 j) = 1) n)

end

end A288938.P3094729512318508093

namespace A288938

/-- `filter[n+1, A288936(#)]` -/
def P3094729512318508093.Spec : Prop :=
  ∀ n, (P3094729512318508093.a n : ℤ) = A288938 (n + 1)

end A288938

/-! ## A288938.P12353034813730774582

`lt[0, A288936(n+1)]+1`
-/

namespace A288938.P12353034813730774582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288936 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288938.P12353034813730774582

namespace A288938

/-- `lt[0, A288936(n+1)]+1` -/
def P12353034813730774582.Spec : Prop :=
  ∀ n, (P12353034813730774582.a n : ℤ) = A288938 (n + 1)

end A288938

/-! ## A288938.P10500104258585380462

`eq[1, A288936(A028310(n))]`
-/

namespace A288938.P10500104258585380462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288936 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288938.P10500104258585380462

namespace A288938

/-- `eq[1, A288936(A028310(n))]` -/
def P10500104258585380462.Spec : Prop :=
  ∀ n, (P10500104258585380462.a n : ℤ) = A288938 (n + 1)

end A288938

/-! ## A288938.P2630437063712099199

`lt[1-A288936(A028310(n)), A057427(n)]`
-/

namespace A288938.P2630437063712099199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A288936 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288938.P2630437063712099199

namespace A288938

/-- `lt[1-A288936(A028310(n)), A057427(n)]` -/
def P2630437063712099199.Spec : Prop :=
  ∀ n, (P2630437063712099199.a n : ℤ) = A288938 (n + 1)

end A288938

/-! ## A288938.P10851776496384850521

`A003057(A014132(A007401(n+1)))+n+1`
-/

namespace A288938.P10851776496384850521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A014132 (A007401 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A288938.P10851776496384850521

namespace A288938

/-- `A003057(A014132(A007401(n+1)))+n+1` -/
def P10851776496384850521.Spec : Prop :=
  ∀ n, P10851776496384850521.a n = A288938 (n + 1)

end A288938

/-! ## A288938.P17152413416777153150

`A003057(A080036(n)+A002024(n+1))+n+1`
-/

namespace A288938.P17152413416777153150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (A080036 n + A002024 (n + 1)).toNat + (n + 1 : ℤ)

end

end A288938.P17152413416777153150

namespace A288938

/-- `A003057(A080036(n)+A002024(n+1))+n+1` -/
def P17152413416777153150.Spec : Prop :=
  ∀ n, P17152413416777153150.a n = A288938 (n + 1)

end A288938

/-! ## A288938.P16599358969588923392

`lt[1, A025581(lt[n, A028276(n)])]`
-/

namespace A288938.P16599358969588923392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A288938.P16599358969588923392

namespace A288938

/-- `lt[1, A025581(lt[n, A028276(n)])]` -/
def P16599358969588923392.Spec : Prop :=
  ∀ n, (P16599358969588923392.a n : ℤ) = A288938 (n + 1)

end A288938

/-! ## A288938.P11867204975627257535

`eq[1, A288936(A233583(n+1))]`
-/

namespace A288938.P11867204975627257535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288936 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288938.P11867204975627257535

namespace A288938

/-- `eq[1, A288936(A233583(n+1))]` -/
def P11867204975627257535.Spec : Prop :=
  ∀ n, (P11867204975627257535.a n : ℤ) = A288938 (n + 1)

end A288938

/-! ## A288938.P18351588217482880057

`record[(n+1)%A231210(n)²+3]`
-/

namespace A288938.P18351588217482880057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A231210 n ^ 2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288938.P18351588217482880057

namespace A288938

/-- `record[(n+1)%A231210(n)²+3]` -/
def P18351588217482880057.Spec : Prop :=
  ∀ n, P18351588217482880057.a n = A288938 (n + 1)

end A288938

/-!
# A288939: Nonprime numbers k such that k^6 + k^5 + k^4 + k^3 + k^2 + k + 1 is prime.

The programs for A288939, there is no canonical definition to state claims against.
-/

/-! ## A288939.P11901197524498458674

`filter[A100330(n+1), A005171(#)]`
-/

namespace A288939.P11901197524498458674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A288939.P11901197524498458674

/-! ## A288939.P8381273903097273296

`∩[A018252(n+1), A100330(n+1)]`
-/

namespace A288939.P8381273903097273296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288939.P8381273903097273296

/-! ## A288939.P17748119696735762262

`∩[A100330(n+1), A141468(n+1)]`
-/

namespace A288939.P17748119696735762262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288939.P17748119696735762262

/-! ## A288939.P916320987953303097

`floor(root(A194194(n+1), 6))`
-/

namespace A288939.P916320987953303097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A194194 (n + 1) : ℝ) ^ (1 / (6 : ℝ))⌋

end

end A288939.P916320987953303097

/-! ## A288939.P2367543557840883619

`ceil(root(A194194(n+1), 6)-A008836(n+1)²)`
-/

namespace A288939.P2367543557840883619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A194194 (n + 1) : ℝ) ^ (1 / (6 : ℝ)) - (A008836 (n + 1) ^ 2 : ℝ)⌉

end

end A288939.P2367543557840883619

/-! ## A288939.P2582768582087914390

`∩[A100330(n+1), A139118(n+1)]`
-/

namespace A288939.P2582768582087914390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288939.P2582768582087914390

/-! ## A288939.P14514329210117243935

`∩[A056653(n+1), A100330(n+1)]`
-/

namespace A288939.P14514329210117243935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288939.P14514329210117243935

/-! ## A288939.P10321613066471286485

`record[A191558(A100330(n+1))]`
-/

namespace A288939.P10321613066471286485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A100330 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288939.P10321613066471286485

/-! ## A288939.P11143503934878397501

`record[A288469(A100330(n+2))]`
-/

namespace A288939.P11143503934878397501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (A100330 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288939.P11143503934878397501

/-! ## A288939.P1143398601638682950

`round(root(A194194(n+1), 6)*A266974(n²))`
-/

namespace A288939.P1143398601638682950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A194194 (n + 1) : ℝ) ^ (1 / (6 : ℝ)) * (A266974 (n ^ 2) : ℝ))

end

end A288939.P1143398601638682950

/-!
# A288940: Number of Dyck paths having n (positive) levels and exactly n peaks per level.

The programs for A288940, there is no canonical definition to state claims against.
-/

/-! ## A288940.P18306045304339282904

`A288972(∑[4*n])`
-/

namespace A288940.P18306045304339282904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288972 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A288940.P18306045304339282904

/-!
# A288942: Number A(n,k) of ordered rooted trees with n non-root nodes and all outdegrees <= k; square array A(n,k), n >= 0, k >= 0, read by antidiagonals.

The programs for A288942, there is no canonical definition to state claims against.
-/

/-! ## A288942.P4348096008987332733

`∑{e}[A290547(A294220(n)), #]`
-/

namespace A288942.P4348096008987332733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290547 (A294220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A288942.P4348096008987332733

/-! ## A288942.P7822963090099518115

`A001222(A036561(A294250(n)))`
-/

namespace A288942.P7822963090099518115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A036561 (A294250 n).toNat).toNat

end

end A288942.P7822963090099518115

/-! ## A288942.P9309565880107243670

`A003056(A000196(A294250(n)²))`
-/

namespace A288942.P9309565880107243670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000196 (A294250 n ^ 2).toNat).toNat

end

end A288942.P9309565880107243670

/-! ## A288942.P8904140166448468750

`A080934(n)+A011731(A249618(n))`
-/

namespace A288942.P8904140166448468750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080934 n + A011731 (A249618 n).toNat

end

end A288942.P8904140166448468750

/-! ## A288942.P3348023486972403989

`A127321(A214015(n)*A294250(n))`
-/

namespace A288942.P3348023486972403989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A214015 n * A294250 n).toNat

end

end A288942.P3348023486972403989

/-!
# A288943: Number of independent vertex sets (and vertex covers) in the n-halved cube graph.

The programs for A288943, there is no canonical definition to state claims against.
-/

/-! ## A288943.P1145351023264846981

`A066853(p?[∑[A135318(n)]])`
-/

namespace A288943.P1145351023264846981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066853 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A288943.P1145351023264846981

/-! ## A288943.P12929000981941476643

`A060233(A000079(n))+A000272(n)`
-/

namespace A288943.P12929000981941476643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060233 (A000079 n).toNat + A000272 n

end

end A288943.P12929000981941476643

/-!
# A288944: Number of automorphisms in the n-halved cube graph.

The programs for A288944, there is no canonical definition to state claims against.
-/

/-! ## A288944.P7752024611393129315

`A365638(A212293(n+2))`
-/

namespace A288944.P7752024611393129315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365638 (A212293 (n + 2)).toNat

end

end A288944.P7752024611393129315

/-! ## A288944.P4767508249220189132

`(n+1)²/∏{p}[n+1, #]*A088440(2^n*n!)`
-/

namespace A288944.P4767508249220189132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A088440 (2 ^ n * Nat.factorial n) : ℚ)

end

end A288944.P4767508249220189132

/-! ## A288944.P9705106578799024037

`A014963(a(n-2))*A002866(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A288944.P9705106578799024037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A014963 (a (n - 2)).toNat * A002866 (n + 1)

end

end A288944.P9705106578799024037

/-!
# A288949: Numbers that are both the sum of two consecutive primes and the sum of two consecutive semiprimes.

The programs for A288949, the canonical program `A288949.P11941882522726558022` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288949 has offset 1).

The definition of A288949 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 806 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288949.P11941882522726558022

`∩[A001043(n+1), A118717(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A288949

/-- `∩[A001043(n+1), A118717(n+1)]` -/
def P11941882522726558022.Spec : Prop :=
  ∀ n, (P11941882522726558022.a n : ℤ) = A288949 (n + 1)

theorem P11941882522726558022.correct : P11941882522726558022.Spec := by
  intro n
  simp only [A288949, Nat.add_sub_cancel]

end A288949

/-! ## A288949.P12945349360886775447

`∩[A011974(n+1), A118717(n+1)]`
-/

namespace A288949.P12945349360886775447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288949.P12945349360886775447

namespace A288949

/-- `∩[A011974(n+1), A118717(n+1)]` -/
def P12945349360886775447.Spec : Prop :=
  ∀ n, (P12945349360886775447.a n : ℤ) = A288949 (n + 1)

end A288949

/-! ## A288949.P4880308836054178503

`∩[A118717(n+1), A164653(n+1)]`
-/

namespace A288949.P4880308836054178503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288949.P4880308836054178503

namespace A288949

/-- `∩[A118717(n+1), A164653(n+1)]` -/
def P4880308836054178503.Spec : Prop :=
  ∀ n, (P4880308836054178503.a n : ℤ) = A288949 (n + 1)

end A288949

/-! ## A288949.P14750720686847141836

`∩[A048974(n+1)+A040976(n+1), A118717(n+1)]`
-/

namespace A288949.P14750720686847141836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1) + A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288949.P14750720686847141836

namespace A288949

/-- `∩[A048974(n+1)+A040976(n+1), A118717(n+1)]` -/
def P14750720686847141836.Spec : Prop :=
  ∀ n, (P14750720686847141836.a n : ℤ) = A288949 (n + 1)

end A288949

/-! ## A288949.P16495451846467829169

`∩[A000040(n+1)+A000040(n+2), A118717(n+1)]`
-/

namespace A288949.P16495451846467829169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000040 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288949.P16495451846467829169

namespace A288949

/-- `∩[A000040(n+1)+A000040(n+2), A118717(n+1)]` -/
def P16495451846467829169.Spec : Prop :=
  ∀ n, (P16495451846467829169.a n : ℤ) = A288949 (n + 1)

end A288949

/-! ## A288949.P12182400355204499378

`∩[A013634(A008578(n+1)), A118717(n+1)]`
-/

namespace A288949.P12182400355204499378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013634 (A008578 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288949.P12182400355204499378

namespace A288949

/-- `∩[A013634(A008578(n+1)), A118717(n+1)]` -/
def P12182400355204499378.Spec : Prop :=
  ∀ n, (P12182400355204499378.a n : ℤ) = A288949 (n + 1)

end A288949

/-!
# A288950: Number of relaxed compacted binary trees of right height at most one with empty initial and final sequence on level 0.

The programs for A288950, the canonical program `A288950.P13705101439009419497` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288950 has offset 0).

The definition of A288950 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288950.P13705101439009419497

`(n-1)*(2*n-3)/(n-2)*a(n-1)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288950

/-- `(n-1)*(2*n-3)/(n-2)*a(n-1)` -/
def P13705101439009419497.Spec : Prop :=
  ∀ n, P13705101439009419497.a n = (A288950 n : ℚ)

end A288950

/-! ## A288950.P7897528938268088823

`ceil(abs((n-1)*A330797(n))/3)`
-/

namespace A288950.P7897528938268088823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|((n : ℤ) - 1) * A330797 n| : ℚ) / 3⌉

end

end A288950.P7897528938268088823

namespace A288950

/-- `ceil(abs((n-1)*A330797(n))/3)` -/
def P7897528938268088823.Spec : Prop :=
  ∀ n, P7897528938268088823.a n = A288950 n

end A288950

/-! ## A288950.P4568432457490284653

`A008615(Δ[-∏[a(n-1)+2]])` with `a(0)=1, a(1)=-1`
-/

namespace A288950.P4568432457490284653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, -1] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f1 (n + 1) - f1 n).toNat

end

end A288950.P4568432457490284653

namespace A288950

/-- `A008615(Δ[-∏[a(n-1)+2]])` -/
def P4568432457490284653.Spec : Prop :=
  ∀ n, P4568432457490284653.a n = A288950 n

end A288950

/-!
# A288952: Number of relaxed compacted binary trees of right height at most one with empty sequences between branch nodes on level 0.

The programs for A288952, the canonical program `A288952.P344523750984312940` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288952 has offset 0).

The definition of A288952 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288952.P344523750984312940

`(n-1)*a(n-1)+(n-1)²*a(n-2)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288952

/-- `(n-1)*a(n-1)+(n-1)²*a(n-2)` -/
def P344523750984312940.Spec : Prop :=
  ∀ n, P344523750984312940.a n = A288952 n

theorem P344523750984312940.correct : P344523750984312940.Spec := by
  intro n
  simp only [A288952]

end A288952

/-! ## A288952.P3541252141524346463

`(a(n-1)+(n-1)*a(n-2))*(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A288952.P3541252141524346463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (a (n - 1) + ((n : ℤ) - 1) * a (n - 2)) * ((n : ℤ) - 1)

end

end A288952.P3541252141524346463

namespace A288952

/-- `(a(n-1)+(n-1)*a(n-2))*(n-1)` -/
def P3541252141524346463.Spec : Prop :=
  ∀ n, P3541252141524346463.a n = A288952 n

end A288952

/-! ## A288952.P9515957018936752613

`(n-1)*(a(n-1)-(1-n)*a(n-2))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A288952.P9515957018936752613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  ((n : ℤ) - 1) * (a (n - 1) - (1 - (n : ℤ)) * a (n - 2))

end

end A288952.P9515957018936752613

namespace A288952

/-- `(n-1)*(a(n-1)-(1-n)*a(n-2))` -/
def P9515957018936752613.Spec : Prop :=
  ∀ n, P9515957018936752613.a n = A288952 n

end A288952

/-!
# A288953: Number of relaxed compacted binary trees of right height at most one with minimal sequences between branch nodes except after the last branch node on level 0.

The programs for A288953, there is no canonical definition to state claims against.
-/

/-! ## A288953.P6777984354436577027

`n!+(1-n)²*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A288953.P6777984354436577027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (Nat.factorial n : ℤ) + (1 - (n : ℤ)) ^ 2 * a (n - 2)

end

end A288953.P6777984354436577027

/-! ## A288953.P16010840859826711752

`∏[a(n-1)+1]+a(n-2)/(1-n)^(-2)` with `a(0)=1, a(1)=1`
-/

namespace A288953.P16010840859826711752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + a (n - 2) / (1 - (n : ℤ) : ℚ) ^ (-2 : ℤ)

end

end A288953.P16010840859826711752

/-! ## A288953.P6893814730458101806

`∏[a(n-1)+1]+(1-n)*(1-n)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A288953.P6893814730458101806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - (n : ℤ)) * ((1 - (n : ℤ)) * a (n - 2))

end

end A288953.P6893814730458101806

/-!
# A288954: Number of relaxed compacted binary trees of right height at most one with minimal sequences between branch nodes except before the first and after the last branch node on level 0.

The programs for A288954, there is no canonical definition to state claims against.
-/

/-! ## A288954.P17180864868733485921

`A008612(A122869(n!))`
-/

namespace A288954.P17180864868733485921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A122869 (Nat.factorial n)).toNat

end

end A288954.P17180864868733485921

/-! ## A288954.P9556104868263385367

`A071542(A320813(2*n))`
-/

namespace A288954.P9556104868263385367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071542 (A320813 (2 * n)).toNat

end

end A288954.P9556104868263385367

/-!
# A288955: Integers that are the sum of two consecutive semiprimes, as well as the product of two consecutive semiprimes.

The programs for A288955, there is no canonical definition to state claims against.
-/

/-! ## A288955.P11137729905071546363

`∩[A108190(n+1), A108215(n+1)]`
-/

namespace A288955.P11137729905071546363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288955.P11137729905071546363

/-! ## A288955.P18003664362723002380

`∩[A001358(n+1)*A001358(n+2), A108190(n+1)]`
-/

namespace A288955.P18003664362723002380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) * A001358 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288955.P18003664362723002380

/-! ## A288955.P6218631114414850166

`∩[A108190(n+1), (A088707(n+2)-1)*A207790(4*n+3)]`
-/

namespace A288955.P6218631114414850166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108190 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A088707 (n + 2) - 1) * A207790 (4 * n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288955.P6218631114414850166

/-!
# A288956: Number of maximal independent vertex sets (and minimal vertex covers) in the n X n king graph.

The programs for A288956, there is no canonical definition to state claims against.
-/

/-! ## A288956.P2093420500859532573

`A332347(∑[4*n]+1)`
-/

namespace A288956.P2093420500859532573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332347 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A288956.P2093420500859532573

/-! ## A288956.P16354837640198312943

`record[A003982(n)*A332347(n+1)]`
-/

namespace A288956.P16354837640198312943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A332347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288956.P16354837640198312943

/-! ## A288956.P6293977192330884583

`lcm(A015343(n), A332347(A001844(n)))`
-/

namespace A288956.P6293977192330884583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A015343 n) (A332347 (A001844 n).toNat)

end

end A288956.P6293977192330884583

/-! ## A288956.P12152223950745201749

`or(A332347(A001844(n)), A342845(n))`
-/

namespace A288956.P12152223950745201749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A332347 (A001844 n).toNat) (A342845 n)

end

end A288956.P12152223950745201749

/-! ## A288956.P148131036016096538

`A332347(A001844(n))+A326075(n+1)`
-/

namespace A288956.P148131036016096538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332347 (A001844 n).toNat + A326075 (n + 1)

end

end A288956.P148131036016096538

/-!
# A288958: Number of cliques in the n X n rook graph.

The programs for A288958, the canonical program `A288958.P12449583964879956290` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288958 has offset 0).

The definition of A288958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288958.P12449583964879956290

`1+2*n*(2^n-1)-n²`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288958

/-- `1+2*n*(2^n-1)-n²` -/
def P12449583964879956290.Spec : Prop :=
  ∀ n, P12449583964879956290.a n = A288958 n

theorem P12449583964879956290.correct : P12449583964879956290.Spec := by
  intro n
  simp only [A288958]

end A288958

/-! ## A288958.P7918069880369456504

`∑[A052749(n+1)+1]`
-/

namespace A288958.P7918069880369456504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052749 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288958.P7918069880369456504

namespace A288958

/-- `∑[A052749(n+1)+1]` -/
def P7918069880369456504.Spec : Prop :=
  ∀ n, P7918069880369456504.a n = A288958 n

end A288958

/-! ## A288958.P11608416592223081849

`∑[A058966(n+3)-comp[2*(n+1)]]`
-/

namespace A288958.P11608416592223081849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058966 (n + 3) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288958.P11608416592223081849

namespace A288958

/-- `∑[A058966(n+3)-comp[2*(n+1)]]` -/
def P11608416592223081849.Spec : Prop :=
  ∀ n, P11608416592223081849.a n = A288958 n

end A288958

/-! ## A288958.P8588837995475063508

`∑[A213569(A028310(n))]`
-/

namespace A288958.P8588837995475063508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213569 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288958.P8588837995475063508

namespace A288958

/-- `∑[A213569(A028310(n))]` -/
def P8588837995475063508.Spec : Prop :=
  ∀ n, P8588837995475063508.a n = A288958 n

end A288958

/-! ## A288958.P815680515071230270

`xor(A123968(n+1), A163383(n+1))`
-/

namespace A288958.P815680515071230270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A123968 (n + 1)) (A163383 (n + 1))

end

end A288958.P815680515071230270

namespace A288958

/-- `xor(A123968(n+1), A163383(n+1))` -/
def P815680515071230270.Spec : Prop :=
  ∀ n, P815680515071230270.a n = A288958 n

end A288958

/-!
# A288959: a(n) = n^2*(n^2 - 1)^2/2.

The programs for A288959, the canonical program `A288959.P15802861242927810152` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288959 has offset 1).

The definition of A288959 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²*((n+1)²-1)²/2` (program `A288959.P9427042772061411573`, by `A288959.P9427042772061411573.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288959.P9427042772061411573

`(n+1)²*((n+1)²-1)²/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A288959.P9427042772061411573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℤ) * (((n + 1) ^ 2 : ℤ) - 1) ^ 2 : ℚ) / 2

end

end A288959.P9427042772061411573

namespace A288959

/-- `(n+1)²*((n+1)²-1)²/2` -/
def P9427042772061411573.Spec : Prop :=
  ∀ n, P9427042772061411573.a n = (A288959 (n + 1) : ℚ)

theorem P9427042772061411573.correct : P9427042772061411573.Spec := by
  intro n
  simp only [A288959, Nat.add_sub_cancel, A288959.P9427042772061411573.a, A288959.P15802861242927810152.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A288959

/-! ## A288959.P15802861242927810152

`C(n+2, 2)²*2*n²`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288959

/-- `C(n+2, 2)²*2*n²` -/
def P15802861242927810152.Spec : Prop :=
  ∀ n, (P15802861242927810152.a n : ℤ) = A288959 (n + 1)

theorem P15802861242927810152.correct : P15802861242927810152.Spec := by
  intro n
  simp only [A288959, Nat.add_sub_cancel]

end A288959

/-! ## A288959.P7190313267229681574

`A004282(n)*A008458(n)`
-/

namespace A288959.P7190313267229681574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004282 n * A008458 n

end

end A288959.P7190313267229681574

namespace A288959

/-- `A004282(n)*A008458(n)` -/
def P7190313267229681574.Spec : Prop :=
  ∀ n, P7190313267229681574.a n = A288959 (n + 1)

end A288959

/-! ## A288959.P4865320978451345711

`A004282(n)*A008588(n)`
-/

namespace A288959.P4865320978451345711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004282 n * A008588 n

end

end A288959.P4865320978451345711

namespace A288959

/-- `A004282(n)*A008588(n)` -/
def P4865320978451345711.Spec : Prop :=
  ∀ n, P4865320978451345711.a n = A288959 (n + 1)

end A288959

/-! ## A288959.P15798470384840241209

`A004320(n)*A028896(n)`
-/

namespace A288959.P15798470384840241209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004320 n * A028896 n

end

end A288959.P15798470384840241209

namespace A288959

/-- `A004320(n)*A028896(n)` -/
def P15798470384840241209.Spec : Prop :=
  ∀ n, P15798470384840241209.a n = A288959 (n + 1)

end A288959

/-! ## A288959.P1882979643339796162

`A006002(n)*A152619(n)`
-/

namespace A288959.P1882979643339796162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n * A152619 n

end

end A288959.P1882979643339796162

namespace A288959

/-- `A006002(n)*A152619(n)` -/
def P1882979643339796162.Spec : Prop :=
  ∀ n, P1882979643339796162.a n = A288959 (n + 1)

end A288959

/-! ## A288959.P1659809304647606644

`A005563(n)*A083374(n+1)`
-/

namespace A288959.P1659809304647606644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n * A083374 (n + 1)

end

end A288959.P1659809304647606644

namespace A288959

/-- `A005563(n)*A083374(n+1)` -/
def P1659809304647606644.Spec : Prop :=
  ∀ n, P1659809304647606644.a n = A288959 (n + 1)

end A288959

/-! ## A288959.P5489132044350969198

`A002411(n)*A114364(n+1)`
-/

namespace A288959.P5489132044350969198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 n * A114364 (n + 1)

end

end A288959.P5489132044350969198

namespace A288959

/-- `A002411(n)*A114364(n+1)` -/
def P5489132044350969198.Spec : Prop :=
  ∀ n, P5489132044350969198.a n = A288959 (n + 1)

end A288959

/-! ## A288959.P2336289276853187286

`A000217(n)*A047929(n+2)`
-/

namespace A288959.P2336289276853187286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n * A047929 (n + 2)

end

end A288959.P2336289276853187286

namespace A288959

/-- `A000217(n)*A047929(n+2)` -/
def P2336289276853187286.Spec : Prop :=
  ∀ n, P2336289276853187286.a n = A288959 (n + 1)

end A288959

/-! ## A288959.P3659112827752292726

`A047927(n+2)*A253145(n)`
-/

namespace A288959.P3659112827752292726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047927 (n + 2) * A253145 n

end

end A288959.P3659112827752292726

namespace A288959

/-- `A047927(n+2)*A253145(n)` -/
def P3659112827752292726.Spec : Prop :=
  ∀ n, P3659112827752292726.a n = A288959 (n + 1)

end A288959

/-! ## A288959.P2054975837434346201

`A178208(n+1)+A109764(n+1)`
-/

namespace A288959.P2054975837434346201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178208 (n + 1) + A109764 (n + 1)

end

end A288959.P2054975837434346201

namespace A288959

/-- `A178208(n+1)+A109764(n+1)` -/
def P2054975837434346201.Spec : Prop :=
  ∀ n, P2054975837434346201.a n = A288959 (n + 1)

end A288959

/-! ## A288959.P864929300849956900

`A047929(n+2)*A179865(n+1)`
-/

namespace A288959.P864929300849956900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047929 (n + 2) * A179865 (n + 1)

end

end A288959.P864929300849956900

namespace A288959

/-- `A047929(n+2)*A179865(n+1)` -/
def P864929300849956900.Spec : Prop :=
  ∀ n, P864929300849956900.a n = A288959 (n + 1)

end A288959

/-! ## A288959.P3332282530590321433

`2*Δ[C(∑[n], 2)]²`
-/

namespace A288959.P3332282530590321433
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A288959.P3332282530590321433

namespace A288959

/-- `2*Δ[C(∑[n], 2)]²` -/
def P3332282530590321433.Spec : Prop :=
  ∀ n, P3332282530590321433.a n = A288959 (n + 1)

end A288959

/-! ## A288959.P13275926439140411307

`3*A179058(n+2)`
-/

namespace A288959.P13275926439140411307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A179058 (n + 2)

end

end A288959.P13275926439140411307

namespace A288959

/-- `3*A179058(n+2)` -/
def P13275926439140411307.Spec : Prop :=
  ∀ n, P13275926439140411307.a n = A288959 (n + 1)

end A288959

/-! ## A288959.P8028459807883998096

`n²*A163102(n+1)`
-/

namespace A288959.P8028459807883998096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A163102 (n + 1)

end

end A288959.P8028459807883998096

namespace A288959

/-- `n²*A163102(n+1)` -/
def P8028459807883998096.Spec : Prop :=
  ∀ n, P8028459807883998096.a n = A288959 (n + 1)

end A288959

/-! ## A288959.P11207339247039929229

`A168122(n+1)-(n+1)²²`
-/

namespace A288959.P11207339247039929229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168122 (n + 1) - (((n + 1) ^ 2) ^ 2 : ℤ)

end

end A288959.P11207339247039929229

namespace A288959

/-- `A168122(n+1)-(n+1)²²` -/
def P11207339247039929229.Spec : Prop :=
  ∀ n, P11207339247039929229.a n = A288959 (n + 1)

end A288959

/-! ## A288959.P13913909378636320894

`A006002(n+1)*A011379(n)`
-/

namespace A288959.P13913909378636320894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 (n + 1) * A011379 n

end

end A288959.P13913909378636320894

namespace A288959

/-- `A006002(n+1)*A011379(n)` -/
def P13913909378636320894.Spec : Prop :=
  ∀ n, P13913909378636320894.a n = A288959 (n + 1)

end A288959

/-! ## A288959.P10556252290935460806

`A007531(n+2)*A027480(n)`
-/

namespace A288959.P10556252290935460806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (n + 2) * A027480 n

end

end A288959.P10556252290935460806

namespace A288959

/-- `A007531(n+2)*A027480(n)` -/
def P10556252290935460806.Spec : Prop :=
  ∀ n, P10556252290935460806.a n = A288959 (n + 1)

end A288959

/-! ## A288959.P15417993525170061927

`A007531(n+2)*A135503(n+1)`
-/

namespace A288959.P15417993525170061927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007531 (n + 2) * A135503 (n + 1)

end

end A288959.P15417993525170061927

namespace A288959

/-- `A007531(n+2)*A135503(n+1)` -/
def P15417993525170061927.Spec : Prop :=
  ∀ n, P15417993525170061927.a n = A288959 (n + 1)

end A288959

/-! ## A288959.P365234122606652368

`∑[∑[6*A000578(n)]*A002265(8*n+4)]`
-/

namespace A288959.P365234122606652368
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A000578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A002265 (8 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288959.P365234122606652368

namespace A288959

/-- `∑[∑[6*A000578(n)]*A002265(8*n+4)]` -/
def P365234122606652368.Spec : Prop :=
  ∀ n, P365234122606652368.a n = A288959 (n + 1)

end A288959

/-!
# A288960: Number of 6-cycles in the n X n rook graph.

The programs for A288960, the canonical program `A288960.P2204014479351274338` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288960 has offset 1).

The definition of A288960 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288960.P2204014479351274338

`C(n+1, 3)*(n+1)*(n+3)*((n+1)²+2*(n+1)-11)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288960

/-- `C(n+1, 3)*(n+1)*(n+3)*((n+1)²+2*(n+1)-11)` -/
def P2204014479351274338.Spec : Prop :=
  ∀ n, P2204014479351274338.a n = A288960 (n + 1)

theorem P2204014479351274338.correct : P2204014479351274338.Spec := by
  intro n
  simp only [A288960, Nat.add_sub_cancel]

end A288960

/-! ## A288960.P4870999757526351004

`n*(n-1)*(n+1)²*(n+3)*((n+1)²+2*(n+1)-11)/6`
-/

namespace A288960.P4870999757526351004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n : ℤ) - 1) * ((n + 1) ^ 2 : ℤ) * (n + 3 : ℤ) * (((n + 1) ^ 2 + 2 * (n + 1) : ℤ) - 11) : ℚ) / 6

end

end A288960.P4870999757526351004

namespace A288960

/-- `n*(n-1)*(n+1)²*(n+3)*((n+1)²+2*(n+1)-11)/6` -/
def P4870999757526351004.Spec : Prop :=
  ∀ n, P4870999757526351004.a n = (A288960 (n + 1) : ℚ)

theorem P4870999757526351004.correct : P4870999757526351004.Spec := by
  intro n
  simp only [A288960, Nat.add_sub_cancel, A288960.P4870999757526351004.a, A288960.P2204014479351274338.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A288960

/-!
# A288961: Number of 3-cycles in the n X n rook graph.

The programs for A288961, the canonical program `A288961.P15671612016636585479` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288961 has offset 1).

The definition of A288961 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288961.P15671612016636585479

`2*(n+1)*C(n+1, 3)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288961

/-- `2*(n+1)*C(n+1, 3)` -/
def P15671612016636585479.Spec : Prop :=
  ∀ n, (P15671612016636585479.a n : ℤ) = A288961 (n + 1)

theorem P15671612016636585479.correct : P15671612016636585479.Spec := by
  intro n
  simp only [A288961, Nat.add_sub_cancel]

end A288961

/-! ## A288961.P5878437666742264581

`(n+1)²*n*(n-1)/3`
-/

namespace A288961.P5878437666742264581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 * n : ℤ) * ((n : ℤ) - 1) : ℚ) / 3

end

end A288961.P5878437666742264581

namespace A288961

/-- `(n+1)²*n*(n-1)/3` -/
def P5878437666742264581.Spec : Prop :=
  ∀ n, P5878437666742264581.a n = (A288961 (n + 1) : ℚ)

theorem P5878437666742264581.correct : P5878437666742264581.Spec := by
  intro n
  simp only [A288961, Nat.add_sub_cancel, A288961.P5878437666742264581.a, A288961.P15671612016636585479.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A288961

/-! ## A288961.P11302054131704788835

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=6, a(3)=32, a(4)=100`
-/

namespace A288961.P11302054131704788835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 6, 32, 100] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A288961.P11302054131704788835

namespace A288961

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P11302054131704788835.Spec : Prop :=
  ∀ n, P11302054131704788835.a n = A288961 (n + 1)

end A288961

/-! ## A288961.P10231591686320166143

`∑[abs(Δ[n*2*C(n, 3)])]`
-/

namespace A288961.P10231591686320166143
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * Nat.choose n 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288961.P10231591686320166143

namespace A288961

/-- `∑[abs(Δ[n*2*C(n, 3)])]` -/
def P10231591686320166143.Spec : Prop :=
  ∀ n, P10231591686320166143.a n = A288961 (n + 1)

end A288961

/-! ## A288961.P9311997513085635869

`∑[C(comp[2*n], 3)-n²]`
-/

namespace A288961.P9311997513085635869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n) 3 : ℤ) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288961.P9311997513085635869

namespace A288961

/-- `∑[C(comp[2*n], 3)-n²]` -/
def P9311997513085635869.Spec : Prop :=
  ∀ n, P9311997513085635869.a n = A288961 (n + 1)

end A288961

/-! ## A288961.P15972892843474247113

`∑[∑[∑[a(n-1)+8]]]` with `a(0)=0, a(1)=0, a(2)=6`
-/

namespace A288961.P15972892843474247113
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 6] fun n f3 =>
  f3 (n - 1) + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288961.P15972892843474247113

namespace A288961

/-- `∑[∑[∑[a(n-1)+8]]]` -/
def P15972892843474247113.Spec : Prop :=
  ∀ n, (P15972892843474247113.a n : ℤ) = A288961 (n + 1)

end A288961

/-! ## A288961.P14273937536357502629

`lcm(2, (n+1)*∑[n*(n-1)])`
-/

namespace A288961.P14273937536357502629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A288961.P14273937536357502629

namespace A288961

/-- `lcm(2, (n+1)*∑[n*(n-1)])` -/
def P14273937536357502629.Spec : Prop :=
  ∀ n, (P14273937536357502629.a n : ℤ) = A288961 (n + 1)

end A288961

/-! ## A288961.P17199843580215645189

`A071238(n)-∑[n]`
-/

namespace A288961.P17199843580215645189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071238 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A288961.P17199843580215645189

namespace A288961

/-- `A071238(n)-∑[n]` -/
def P17199843580215645189.Spec : Prop :=
  ∀ n, P17199843580215645189.a n = A288961 (n + 1)

end A288961

/-! ## A288961.P1402930310129188179

`∑[A000447(n)-n²]`
-/

namespace A288961.P1402930310129188179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288961.P1402930310129188179

namespace A288961

/-- `∑[A000447(n)-n²]` -/
def P1402930310129188179.Spec : Prop :=
  ∀ n, P1402930310129188179.a n = A288961 (n + 1)

end A288961

/-! ## A288961.P16492522516861808409

`(n+1)*sqrt(A169801(n))`
-/

namespace A288961.P16492522516861808409
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) * Real.sqrt (A169801 n : ℝ)

end

end A288961.P16492522516861808409

namespace A288961

/-- `(n+1)*sqrt(A169801(n))` -/
def P16492522516861808409.Spec : Prop :=
  ∀ n, P16492522516861808409.a n = (A288961 (n + 1) : ℝ)

end A288961

/-! ## A288961.P9048561576926561948

`∑[n]+A330700(n)-n`
-/

namespace A288961.P9048561576926561948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A330700 n - (n : ℤ))

end

end A288961.P9048561576926561948

namespace A288961

/-- `∑[n]+A330700(n)-n` -/
def P9048561576926561948.Spec : Prop :=
  ∀ n, P9048561576926561948.a n = A288961 (n + 1)

end A288961

/-! ## A288961.P1273307925799306334

`A014820(n)-(n+1)^3`
-/

namespace A288961.P1273307925799306334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014820 n - ((n + 1) ^ 3 : ℤ)

end

end A288961.P1273307925799306334

namespace A288961

/-- `A014820(n)-(n+1)^3` -/
def P1273307925799306334.Spec : Prop :=
  ∀ n, P1273307925799306334.a n = A288961 (n + 1)

end A288961

/-! ## A288961.P507036961451113148

`A135036(n)+a(n-1)` with `a(0)=0`
-/

namespace A288961.P507036961451113148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A135036 n + a (n - 1)

end

end A288961.P507036961451113148

namespace A288961

/-- `A135036(n)+a(n-1)` -/
def P507036961451113148.Spec : Prop :=
  ∀ n, P507036961451113148.a n = A288961 (n + 1)

end A288961

/-! ## A288961.P963959887846074303

`(n+1)*(A006527(n)-n)`
-/

namespace A288961.P963959887846074303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A006527 n - (n : ℤ))

end

end A288961.P963959887846074303

namespace A288961

/-- `(n+1)*(A006527(n)-n)` -/
def P963959887846074303.Spec : Prop :=
  ∀ n, P963959887846074303.a n = A288961 (n + 1)

end A288961

/-! ## A288961.P1123011028473392494

`∑[A100503(n)-(n+1)²]`
-/

namespace A288961.P1123011028473392494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100503 n - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288961.P1123011028473392494

namespace A288961

/-- `∑[A100503(n)-(n+1)²]` -/
def P1123011028473392494.Spec : Prop :=
  ∀ n, P1123011028473392494.a n = A288961 (n + 1)

end A288961

/-! ## A288961.P4929571526255696934

`∑[A030440(n)-(1-n)²]`
-/

namespace A288961.P4929571526255696934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030440 n - (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288961.P4929571526255696934

namespace A288961

/-- `∑[A030440(n)-(1-n)²]` -/
def P4929571526255696934.Spec : Prop :=
  ∀ n, P4929571526255696934.a n = A288961 (n + 1)

end A288961

/-! ## A288961.P4584695689789987525

`A185355(n+1)-∑[∑[n²]]`
-/

namespace A288961.P4584695689789987525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185355 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A288961.P4584695689789987525

namespace A288961

/-- `A185355(n+1)-∑[∑[n²]]` -/
def P4584695689789987525.Spec : Prop :=
  ∀ n, P4584695689789987525.a n = A288961 (n + 1)

end A288961

/-! ## A288961.P12605385470956137633

`(n+1)*(A116731(n+1)-(n+1))`
-/

namespace A288961.P12605385470956137633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A116731 (n + 1) - (n + 1 : ℤ))

end

end A288961.P12605385470956137633

namespace A288961

/-- `(n+1)*(A116731(n+1)-(n+1))` -/
def P12605385470956137633.Spec : Prop :=
  ∀ n, P12605385470956137633.a n = A288961 (n + 1)

end A288961

/-! ## A288961.P8250630192476386760

`A292057(n)-(a(n-1)+a(n-1))` with `a(0)=0`
-/

namespace A288961.P8250630192476386760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A292057 n - (a (n - 1) + a (n - 1))

end

end A288961.P8250630192476386760

namespace A288961

/-- `A292057(n)-(a(n-1)+a(n-1))` -/
def P8250630192476386760.Spec : Prop :=
  ∀ n, P8250630192476386760.a n = A288961 (n + 1)

end A288961

/-! ## A288961.P10927133553592640121

`A330700(n)+A161680(n)`
-/

namespace A288961.P10927133553592640121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330700 n + A161680 n

end

end A288961.P10927133553592640121

namespace A288961

/-- `A330700(n)+A161680(n)` -/
def P10927133553592640121.Spec : Prop :=
  ∀ n, P10927133553592640121.a n = A288961 (n + 1)

end A288961

/-!
# A288962: Number of 4-cycles in the n X n rook graph.

The programs for A288962, the canonical program `A288962.P89656177900927371` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288962 has offset 1).

The definition of A288962 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288962.P89656177900927371

`(n+1)²*n*((n+1)²-4*(n+1)+5)/4`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288962

/-- `(n+1)²*n*((n+1)²-4*(n+1)+5)/4` -/
def P89656177900927371.Spec : Prop :=
  ∀ n, P89656177900927371.a n = (A288962 (n + 1) : ℚ)

end A288962

/-! ## A288962.P12071289598658686788

`((n+2)*C(n, 2)+n+1)*C(n, 2)+n`
-/

namespace A288962.P12071289598658686788
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n + 2) * Nat.choose n 2 + n + 1) * Nat.choose n 2 + n

end

end A288962.P12071289598658686788

namespace A288962

/-- `((n+2)*C(n, 2)+n+1)*C(n, 2)+n` -/
def P12071289598658686788.Spec : Prop :=
  ∀ n, (P12071289598658686788.a n : ℤ) = A288962 (n + 1)

end A288962

/-! ## A288962.P6349227209410398575

`∑[n]+A321672(n)/2`
-/

namespace A288962.P6349227209410398575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (A321672 n : ℚ) / 2

end

end A288962.P6349227209410398575

namespace A288962

/-- `∑[n]+A321672(n)/2` -/
def P6349227209410398575.Spec : Prop :=
  ∀ n, P6349227209410398575.a n = (A288962 (n + 1) : ℚ)

end A288962

/-! ## A288962.P7178070929296569843

`∑[n]+n*A006011(n)`
-/

namespace A288962.P7178070929296569843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (n : ℤ) * A006011 n

end

end A288962.P7178070929296569843

namespace A288962

/-- `∑[n]+n*A006011(n)` -/
def P7178070929296569843.Spec : Prop :=
  ∀ n, P7178070929296569843.a n = A288962 (n + 1)

end A288962

/-! ## A288962.P4573848123058026238

`(n+1)/2*A101375(n)`
-/

namespace A288962.P4573848123058026238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A101375 n : ℚ)

end

end A288962.P4573848123058026238

namespace A288962

/-- `(n+1)/2*A101375(n)` -/
def P4573848123058026238.Spec : Prop :=
  ∀ n, P4573848123058026238.a n = (A288962 (n + 1) : ℚ)

end A288962

/-! ## A288962.P7815259261933647159

`A100855(n)+n*A161680(n)²`
-/

namespace A288962.P7815259261933647159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100855 n + (n : ℤ) * A161680 n ^ 2

end

end A288962.P7815259261933647159

namespace A288962

/-- `A100855(n)+n*A161680(n)²` -/
def P7815259261933647159.Spec : Prop :=
  ∀ n, P7815259261933647159.a n = A288962 (n + 1)

end A288962

/-! ## A288962.P9844953882716931313

`A161680(n+1)+A002411(n)*A161680(n)`
-/

namespace A288962.P9844953882716931313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (n + 1) + A002411 n * A161680 n

end

end A288962.P9844953882716931313

namespace A288962

/-- `A161680(n+1)+A002411(n)*A161680(n)` -/
def P9844953882716931313.Spec : Prop :=
  ∀ n, P9844953882716931313.a n = A288962 (n + 1)

end A288962

/-! ## A288962.P4391949547768089282

`∑[n]*A162607(n+1)`
-/

namespace A288962.P4391949547768089282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A162607 (n + 1)

end

end A288962.P4391949547768089282

namespace A288962

/-- `∑[n]*A162607(n+1)` -/
def P4391949547768089282.Spec : Prop :=
  ∀ n, P4391949547768089282.a n = A288962 (n + 1)

end A288962

/-! ## A288962.P3896538958955826886

`(A060354(n+1)-A000217(n))*A000217(n)`
-/

namespace A288962.P3896538958955826886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060354 (n + 1) - A000217 n) * A000217 n

end

end A288962.P3896538958955826886

namespace A288962

/-- `(A060354(n+1)-A000217(n))*A000217(n)` -/
def P3896538958955826886.Spec : Prop :=
  ∀ n, P3896538958955826886.a n = A288962 (n + 1)

end A288962

/-! ## A288962.P6803791702514531143

`A000124(n)*A162607(n+1)-A162607(n+1)`
-/

namespace A288962.P6803791702514531143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n * A162607 (n + 1) - A162607 (n + 1)

end

end A288962.P6803791702514531143

namespace A288962

/-- `A000124(n)*A162607(n+1)-A162607(n+1)` -/
def P6803791702514531143.Spec : Prop :=
  ∀ n, P6803791702514531143.a n = A288962 (n + 1)

end A288962

/-! ## A288962.P8473143938205291861

`A026741(n+1)*A162607(n+1)*A026741(n)`
-/

namespace A288962.P8473143938205291861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 1) * A162607 (n + 1) * A026741 n

end

end A288962.P8473143938205291861

namespace A288962

/-- `A026741(n+1)*A162607(n+1)*A026741(n)` -/
def P8473143938205291861.Spec : Prop :=
  ∀ n, P8473143938205291861.a n = A288962 (n + 1)

end A288962

/-!
# A288963: Number of 5-cycles in the n X n rook graph.

The programs for A288963, the canonical program `A288963.P15739568856844567463` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288963 has offset 1).

The definition of A288963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288963.P15739568856844567463

`(n-1)*n*(n+1)²*((n+1)²-2*(n+1)+7)/5`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288963

/-- `(n-1)*n*(n+1)²*((n+1)²-2*(n+1)+7)/5` -/
def P15739568856844567463.Spec : Prop :=
  ∀ n, P15739568856844567463.a n = (A288963 (n + 1) : ℚ)

end A288963

/-! ## A288963.P7485595653921973652

`2*(n+1)*(A060446(n)-n)`
-/

namespace A288963.P7485595653921973652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 1 : ℤ) * (A060446 n - (n : ℤ)))

end

end A288963.P7485595653921973652

namespace A288963

/-- `2*(n+1)*(A060446(n)-n)` -/
def P7485595653921973652.Spec : Prop :=
  ∀ n, P7485595653921973652.a n = A288963 (n + 1)

end A288963

/-! ## A288963.P6772284259235965342

`(A060446(n)-n)*A103517(n)`
-/

namespace A288963.P6772284259235965342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060446 n - (n : ℤ)) * A103517 n

end

end A288963.P6772284259235965342

namespace A288963

/-- `(A060446(n)-n)*A103517(n)` -/
def P6772284259235965342.Spec : Prop :=
  ∀ n, P6772284259235965342.a n = A288963 (n + 1)

end A288963

/-! ## A288963.P740393559811788208

`(A060446(n)-n)*A004277(n+1)`
-/

namespace A288963.P740393559811788208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060446 n - (n : ℤ)) * A004277 (n + 1)

end

end A288963.P740393559811788208

namespace A288963

/-- `(A060446(n)-n)*A004277(n+1)` -/
def P740393559811788208.Spec : Prop :=
  ∀ n, P740393559811788208.a n = A288963 (n + 1)

end A288963

/-! ## A288963.P17461421730029951805

`(A060446(n)-n)*A005843(n+1)`
-/

namespace A288963.P17461421730029951805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060446 n - (n : ℤ)) * A005843 (n + 1)

end

end A288963.P17461421730029951805

namespace A288963

/-- `(A060446(n)-n)*A005843(n+1)` -/
def P17461421730029951805.Spec : Prop :=
  ∀ n, P17461421730029951805.a n = A288963 (n + 1)

end A288963

/-! ## A288963.P5720403131605676298

`∑[A103290(n)]*Δ[A003215(n)]`
-/

namespace A288963.P5720403131605676298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A288963.P5720403131605676298

namespace A288963

/-- `∑[A103290(n)]*Δ[A003215(n)]` -/
def P5720403131605676298.Spec : Prop :=
  ∀ n, P5720403131605676298.a n = A288963 (n + 1)

end A288963

/-! ## A288963.P8209372960156216433

`∑[A103290(n)]*A008588(n+1)`
-/

namespace A288963.P8209372960156216433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A008588 (n + 1)

end

end A288963.P8209372960156216433

namespace A288963

/-- `∑[A103290(n)]*A008588(n+1)` -/
def P8209372960156216433.Spec : Prop :=
  ∀ n, P8209372960156216433.a n = A288963 (n + 1)

end A288963

/-! ## A288963.P7699100465406263854

`(A060446(n)-n)*Δ[A002378(n)]`
-/

namespace A288963.P7699100465406263854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060446 n - (n : ℤ)) * (f1 (n + 1) - f1 n)

end

end A288963.P7699100465406263854

namespace A288963

/-- `(A060446(n)-n)*Δ[A002378(n)]` -/
def P7699100465406263854.Spec : Prop :=
  ∀ n, P7699100465406263854.a n = A288963 (n + 1)

end A288963

/-! ## A288963.P5916423411149546896

`∑[A103290(n)]*A103517(A016789(n))`
-/

namespace A288963.P5916423411149546896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A103517 (A016789 n).toNat

end

end A288963.P5916423411149546896

namespace A288963

/-- `∑[A103290(n)]*A103517(A016789(n))` -/
def P5916423411149546896.Spec : Prop :=
  ∀ n, P5916423411149546896.a n = A288963 (n + 1)

end A288963

/-! ## A288963.P8261148480762118987

`∑[A103290(n)]*A008619(A017653(n))`
-/

namespace A288963.P8261148480762118987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103290 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A008619 (A017653 n).toNat

end

end A288963.P8261148480762118987

namespace A288963

/-- `∑[A103290(n)]*A008619(A017653(n))` -/
def P8261148480762118987.Spec : Prop :=
  ∀ n, P8261148480762118987.a n = A288963 (n + 1)

end A288963

/-!
# A288964: Number of key comparisons to sort all n! permutations of n elements by quicksort.

The programs for A288964, the canonical program `A288964.P6090905873358402499` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288964 has offset 0).

The definition of A288964 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288964.P6090905873358402499

`((2*n²-3*n-1)*a(n-1)-(n-1)²*n*a(n-2))/(n-2)` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288964

/-- `((2*n²-3*n-1)*a(n-1)-(n-1)²*n*a(n-2))/(n-2)` -/
def P6090905873358402499.Spec : Prop :=
  ∀ n, P6090905873358402499.a n = (A288964 n : ℚ)

end A288964

/-! ## A288964.P16223382378866573611

`n!*A115107(n)/A096620(n)`
-/

namespace A288964.P16223382378866573611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.factorial n : ℤ) * A115107 n : ℚ) / (A096620 n : ℚ)

end

end A288964.P16223382378866573611

namespace A288964

/-- `n!*A115107(n)/A096620(n)` -/
def P16223382378866573611.Spec : Prop :=
  ∀ n, P16223382378866573611.a n = (A288964 n : ℚ)

end A288964

/-! ## A288964.P12523834978053712301

`A196532(n)-A082034(n)`
-/

namespace A288964.P12523834978053712301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196532 n - A082034 n

end

end A288964.P12523834978053712301

namespace A288964

/-- `A196532(n)-A082034(n)` -/
def P12523834978053712301.Spec : Prop :=
  ∀ n, P12523834978053712301.a n = A288964 n

end A288964

/-! ## A288964.P12557478721287368157

`2*(A001705(n)-A001563(n))`
-/

namespace A288964.P12557478721287368157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001705 n - A001563 n)

end

end A288964.P12557478721287368157

namespace A288964

/-- `2*(A001705(n)-A001563(n))` -/
def P12557478721287368157.Spec : Prop :=
  ∀ n, P12557478721287368157.a n = A288964 n

end A288964

/-! ## A288964.P11781163210091102907

`2*A288874(A133263(n))`
-/

namespace A288964.P11781163210091102907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288874 (A133263 n).toNat

end

end A288964.P11781163210091102907

namespace A288964

/-- `2*A288874(A133263(n))` -/
def P11781163210091102907.Spec : Prop :=
  ∀ n, P11781163210091102907.a n = A288964 n

end A288964

/-! ## A288964.P13631359748213640733

`2*A288874(A238531(n+1))`
-/

namespace A288964.P13631359748213640733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288874 (A238531 (n + 1)).toNat

end

end A288964.P13631359748213640733

namespace A288964

/-- `2*A288874(A238531(n+1))` -/
def P13631359748213640733.Spec : Prop :=
  ∀ n, P13631359748213640733.a n = A288964 n

end A288964

/-!
# A288965: Number of key comparisons to sort all n! permutations of n elements by the optimal dual-pivot quicksort.

The programs for A288965, there is no canonical definition to state claims against.
-/

/-! ## A288965.P4790343744172414013

`A289139(A035985(n²))`
-/

namespace A288965.P4790343744172414013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289139 (A035985 (n ^ 2)).toNat

end

end A288965.P4790343744172414013

/-! ## A288965.P4890974387524766278

`A152467(A111225((n+1)!))`
-/

namespace A288965.P4890974387524766278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (A111225 (Nat.factorial (n + 1))).toNat

end

end A288965.P4890974387524766278

/-!
# A288966: a(n) = the number of iterations the "HyperbolaTiles" algorithm takes to factorize n.

The programs for A288966, there is no canonical definition to state claims against.
-/

/-! ## A288966.P12263406738582257078

`A060681(n+1)+A057237(n+1)`
-/

namespace A288966.P12263406738582257078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1) + A057237 (n + 1)

end

end A288966.P12263406738582257078

/-! ## A288966.P6449540054457270408

`A057237(n+1)+∑{d}[n+1, A300721(#)]`
-/

namespace A288966.P6449540054457270408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A300721 d

end

end A288966.P6449540054457270408

/-! ## A288966.P10213331731520779131

`A057237(n+1)+1-A032742(n+1)+n`
-/

namespace A288966.P10213331731520779131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1) + (1 - A032742 (n + 1) + (n : ℤ))

end

end A288966.P10213331731520779131

/-! ## A288966.P8227732854262849419

`A057237(n+1)+n-floor(n/A020639(n+1))`
-/

namespace A288966.P8227732854262849419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1) + ((n : ℤ) - ⌊(n : ℚ) / (A020639 (n + 1) : ℚ)⌋)

end

end A288966.P8227732854262849419

/-! ## A288966.P11963274112194958485

`A057237(n+1)+ceil(n-n/A074828(n+1))`
-/

namespace A288966.P11963274112194958485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1) + ⌈(n : ℚ) - (n : ℚ) / (A074828 (n + 1) : ℚ)⌉

end

end A288966.P11963274112194958485

/-! ## A288966.P2943814507091475538

`A020639(round(sqrt(n²+1))+1)-A032742(n+1)+n`
-/

namespace A288966.P2943814507091475538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat - A032742 (n + 1) + (n : ℤ)

end

end A288966.P2943814507091475538

/-! ## A288966.P2162316230949810745

`A057237(n+1)+n+1-(n+1)/A020639(C(n+1, n))`
-/

namespace A288966.P2162316230949810745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057237 (n + 1) : ℚ) + ((n + 1 : ℚ) - (n + 1 : ℚ) / (A020639 (Nat.choose (n + 1) n) : ℚ))

end

end A288966.P2162316230949810745

/-! ## A288966.P4582929609610490323

`A057237(n+1)+n+1-(n+1)/A020639(∏{p}[n+1, #])`
-/

namespace A288966.P4582929609610490323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057237 (n + 1) : ℚ) + ((n + 1 : ℚ) - (n + 1 : ℚ) / (A020639 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ))

end

end A288966.P4582929609610490323

/-!
# A288968: Exponents a(1), a(2), ... such that E_2, 1 - 24*q - 72*q^2 - ... (A006352) is equal to (1-q)^a(1) (1-q^2)^a(2) (1-q^3)^a(3) ... .

The programs for A288968, there is no canonical definition to state claims against.
-/

/-! ## A288968.P7695190958616609879

`4*A289394(n+1)`
-/

namespace A288968.P7695190958616609879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A289394 (n + 1)

end

end A288968.P7695190958616609879

/-! ## A288968.P4357414262063292844

`4*ceil(A288995(n+1)/48)`
-/

namespace A288968.P4357414262063292844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌈(A288995 (n + 1) : ℚ) / 48⌉

end

end A288968.P4357414262063292844

/-! ## A288968.P8950812646387868924

`4*round(A288995(floor(sqrt((n+1)²+1)))/48)`
-/

namespace A288968.P8950812646387868924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.roundAway ((A288995 (Nat.sqrt ((n + 1) ^ 2 + 1)) : ℚ) / 48)

end

end A288968.P8950812646387868924

/-! ## A288968.P12977290964650946703

`4*round(A288995(n+1)/48)/A033999(n)²`
-/

namespace A288968.P12977290964650946703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((SequenceMachineLib.roundAway ((A288995 (n + 1) : ℚ) / 48) : ℚ) / (A033999 n ^ 2 : ℚ))

end

end A288968.P12977290964650946703

/-! ## A288968.P14011988192119324772

`4*round(A288995(n+1)/48*A014963(A351562(n+1)))`
-/

namespace A288968.P14011988192119324772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * SequenceMachineLib.roundAway ((A288995 (n + 1) : ℚ) / 48 * (A014963 (A351562 (n + 1)).toNat : ℚ))

end

end A288968.P14011988192119324772

/-!
# A288969: Triangular array read by rows: row n is the list of the 2*n-1 successive values taken by the function z = n - floor(x) * floor(y) along the hyperbola with equation y = n/x, for 1 <= x <= n.

The programs for A288969, there is no canonical definition to state claims against.
-/

/-! ## A288969.P13792960863182614606

`A053615(A173517(n))%dr(A182731(n+1))`
-/

namespace A288969.P13792960863182614606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053615 (A173517 n).toNat) (SequenceMachineLib.digitalRoot (A182731 (n + 1)) : ℤ)

end

end A288969.P13792960863182614606

/-! ## A288969.P392472003250512803

`A053188(A023969(n)+n)%A182731(A182731(n+1))`
-/

namespace A288969.P392472003250512803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053188 (A023969 n + (n : ℤ)).toNat) (A182731 (A182731 (n + 1)).toNat)

end

end A288969.P392472003250512803

/-! ## A288969.P1834113000557543422

`A053615(A173517(n))%A291348(A093178(n))`
-/

namespace A288969.P1834113000557543422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053615 (A173517 n).toNat) (A291348 (A093178 n).toNat)

end

end A288969.P1834113000557543422

/-! ## A288969.P16614108154266715341

`A039653(A130080(n+1))%A004737(n+1)`
-/

namespace A288969.P16614108154266715341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039653 (A130080 (n + 1)).toNat) (A004737 (n + 1))

end

end A288969.P16614108154266715341

/-! ## A288969.P5046955885617451903

`A049084(A004737(n+1)%A232085(3*n+1))`
-/

namespace A288969.P5046955885617451903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.tmod (A004737 (n + 1)) (A232085 (3 * n + 1))).toNat

end

end A288969.P5046955885617451903

/-!
# A288970: Number of key comparisons to sort all n! permutations of n elements by the optimal trial-pivot quicksort.

The programs for A288970, there is no canonical definition to state claims against.
-/

/-! ## A288970.P6320254653932397063

`or(A194278(A322276(n)), A288971(n))`
-/

namespace A288970.P6320254653932397063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A194278 (A322276 n).toNat) (A288971 n)

end

end A288970.P6320254653932397063

/-! ## A288970.P4059681793725361780

`A288971(n)+A000073(A229164(n+1))`
-/

namespace A288970.P4059681793725361780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288971 n + A000073 (A229164 (n + 1)).toNat

end

end A288970.P4059681793725361780

/-! ## A288970.P947574962652771768

`A324802(A091808(n+1))+A288971(n)`
-/

namespace A288970.P947574962652771768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324802 (A091808 (n + 1)).toNat + A288971 n

end

end A288970.P947574962652771768

/-!
# A288972: Number A(n,k) of Dyck paths having exactly k peaks in each of the levels 1,...,n and no other peaks; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A288972, there is no canonical definition to state claims against.
-/

/-! ## A288972.P10032031020456013254

`A279549(A355614(n))`
-/

namespace A288972.P10032031020456013254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279549 (A355614 n).toNat

end

end A288972.P10032031020456013254

/-!
# A288973: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 531", based on the 5-celled von Neumann neighborhood.

The programs for A288973, there is no canonical definition to state claims against.
-/

/-! ## A288973.P1953469468571252501

`A007088(A288975(n))`
-/

namespace A288973.P1953469468571252501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288975 n).toNat

end

end A288973.P1953469468571252501

/-! ## A288973.P2843889729297234212

`A007088(or(1, A126646(n)-A286776(n)))`
-/

namespace A288973.P2843889729297234212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor 1 (A126646 n - A286776 n)).toNat

end

end A288973.P2843889729297234212

/-! ## A288973.P2235941219738151719

`A305989(A288976(n))`
-/

namespace A288973.P2235941219738151719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A288976 n).toNat

end

end A288973.P2235941219738151719

/-! ## A288973.P14716325973033994861

`A185544(2*A288975(n))`
-/

namespace A288973.P14716325973033994861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288975 n).toNat

end

end A288973.P14716325973033994861

/-! ## A288973.P757438979759397056

`A185544(lcm(2, A288975(n)))`
-/

namespace A288973.P757438979759397056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A288975 n))

end

end A288973.P757438979759397056

/-!
# A288974: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 531", based on the 5-celled von Neumann neighborhood.

The programs for A288974, there is no canonical definition to state claims against.
-/

/-! ## A288974.P15932554144801792160

`A007088(A288976(n))`
-/

namespace A288974.P15932554144801792160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288976 n).toNat

end

end A288974.P15932554144801792160

/-! ## A288974.P5467296549087453864

`A305989(A288975(n))`
-/

namespace A288974.P5467296549087453864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A288975 n).toNat

end

end A288974.P5467296549087453864

/-! ## A288974.P707072372935684488

`A305989(or(1, A126646(n)-A286776(n)))`
-/

namespace A288974.P707072372935684488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lor 1 (A126646 n - A286776 n)).toNat

end

end A288974.P707072372935684488

/-! ## A288974.P12588840295729358004

`A185544(2*A288976(n))`
-/

namespace A288974.P12588840295729358004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288976 n).toNat

end

end A288974.P12588840295729358004

/-! ## A288974.P371230696540564563

`A185544(lcm(2, A288976(n)))`
-/

namespace A288974.P371230696540564563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A288976 n))

end

end A288974.P371230696540564563

/-!
# A288975: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 531", based on the 5-celled von Neumann neighborhood.

The programs for A288975, there is no canonical definition to state claims against.
-/

/-! ## A288975.P12036757869126136578

`or(1, A126646(n)-A286776(n))`
-/

namespace A288975.P12036757869126136578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A286776 n)

end

end A288975.P12036757869126136578

/-! ## A288975.P7475412248599057141

`A294905(A015128(n))+A126646(n)-A286776(n)`
-/

namespace A288975.P7475412248599057141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294905 (A015128 n).toNat + (A126646 n - A286776 n)

end

end A288975.P7475412248599057141

/-! ## A288975.P3368474758606879533

`A126646(n)-A052928(A286776(n))`
-/

namespace A288975.P3368474758606879533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A052928 (A286776 n).toNat

end

end A288975.P3368474758606879533

/-! ## A288975.P7280972449842029216

`∑[A000079(n)]-A052928(A286776(n))`
-/

namespace A288975.P7280972449842029216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A052928 (A286776 n).toNat

end

end A288975.P7280972449842029216

/-! ## A288975.P11383799012677586783

`A000225(n+1)-A052928(A286776(n))`
-/

namespace A288975.P11383799012677586783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) - A052928 (A286776 n).toNat

end

end A288975.P11383799012677586783

/-!
# A288976: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 531", based on the 5-celled von Neumann neighborhood.

The programs for A288976, there is no canonical definition to state claims against.
-/

/-! ## A288976.P5607798164948766544

`A057889(A288975(n))`
-/

namespace A288976.P5607798164948766544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A288975 n).toNat

end

end A288976.P5607798164948766544

/-! ## A288976.P7357816445337374912

`A325401(or(1, A288975(n)))`
-/

namespace A288976.P7357816445337374912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (Int.lor 1 (A288975 n)).toNat

end

end A288976.P7357816445337374912

/-! ## A288976.P15191423883694922911

`A325401(A288975(n)+A000007(n))`
-/

namespace A288976.P15191423883694922911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A288975 n + A000007 n).toNat

end

end A288976.P15191423883694922911

/-! ## A288976.P13342269773264592431

`A325401(A288975(n)+A025443(n))`
-/

namespace A288976.P13342269773264592431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A288975 n + A025443 n).toNat

end

end A288976.P13342269773264592431

/-! ## A288976.P15928211892881373951

`A325401(A288975(n)+A185255(n))`
-/

namespace A288976.P15928211892881373951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A288975 n + A185255 n).toNat

end

end A288976.P15928211892881373951

/-!
# A288977: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 533", based on the 5-celled von Neumann neighborhood.

The programs for A288977, there is no canonical definition to state claims against.
-/

/-! ## A288977.P16292704858817617529

`A007088(A288979(n))`
-/

namespace A288977.P16292704858817617529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288979 n).toNat

end

end A288977.P16292704858817617529

/-! ## A288977.P15759649833093915706

`A185544(2*A288979(n))`
-/

namespace A288977.P15759649833093915706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288979 n).toNat

end

end A288977.P15759649833093915706

/-! ## A288977.P18418265348128710259

`A185544(2*A289048(n))`
-/

namespace A288977.P18418265348128710259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A289048 n).toNat

end

end A288977.P18418265348128710259

/-! ## A288977.P17173185060974890135

`A289046(n^A260340(n))`
-/

namespace A288977.P17173185060974890135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289046 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A260340 n : ℤ))).toNat

end

end A288977.P17173185060974890135

/-! ## A288977.P17026997189850560570

`A349797(A025048(n))+A289046(n)`
-/

namespace A288977.P17026997189850560570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349797 (A025048 n).toNat + A289046 n

end

end A288977.P17026997189850560570

/-!
# A288978: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 533", based on the 5-celled von Neumann neighborhood.

The programs for A288978, there is no canonical definition to state claims against.
-/

/-! ## A288978.P14447230994765671567

`A007088(A288980(n))`
-/

namespace A288978.P14447230994765671567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288980 n).toNat

end

end A288978.P14447230994765671567

/-! ## A288978.P10576817062036152160

`A305989(A288979(n))`
-/

namespace A288978.P10576817062036152160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A288979 n).toNat

end

end A288978.P10576817062036152160

/-! ## A288978.P4832177093490888620

`A185544(2*A288980(n))`
-/

namespace A288978.P4832177093490888620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288980 n).toNat

end

end A288978.P4832177093490888620

/-! ## A288978.P8807337234895361679

`A185544(lcm(2, A288980(n)))`
-/

namespace A288978.P8807337234895361679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A288980 n))

end

end A288978.P8807337234895361679

/-! ## A288978.P9675178648986966648

`A305989(2*A289048(n))`
-/

namespace A288978.P9675178648986966648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (2 * A289048 n).toNat

end

end A288978.P9675178648986966648

/-!
# A288979: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 533", based on the 5-celled von Neumann neighborhood.

The programs for A288979, there is no canonical definition to state claims against.
-/

/-! ## A288979.P1640810564326506914

`A289048(n)-A309767(A213000(n))`
-/

namespace A288979.P1640810564326506914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289048 n - A309767 (A213000 n).toNat

end

end A288979.P1640810564326506914

/-! ## A288979.P5650428627177785458

`A289048(n)-A184955(A209061(n+3))`
-/

namespace A288979.P5650428627177785458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289048 n - A184955 (A209061 (n + 3)).toNat

end

end A288979.P5650428627177785458

/-! ## A288979.P3563009238022424741

`A289048(A004895(n+1))`
-/

namespace A288979.P3563009238022424741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289048 (A004895 (n + 1)).toNat

end

end A288979.P3563009238022424741

/-! ## A288979.P18220873586290567678

`A289048(A004906(n+1))`
-/

namespace A288979.P18220873586290567678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289048 (A004906 (n + 1)).toNat

end

end A288979.P18220873586290567678

/-! ## A288979.P13605698036716493136

`A289048(A004917(n+1))`
-/

namespace A288979.P13605698036716493136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289048 (A004917 (n + 1)).toNat

end

end A288979.P13605698036716493136

/-!
# A288980: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 533", based on the 5-celled von Neumann neighborhood.

The programs for A288980, there is no canonical definition to state claims against.
-/

/-! ## A288980.P10059570634988650906

`A325401(A288979(n))`
-/

namespace A288980.P10059570634988650906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A288979 n).toNat

end

end A288980.P10059570634988650906

/-! ## A288980.P18348817577516468847

`A281589(2*A288979(n))`
-/

namespace A288980.P18348817577516468847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A288979 n).toNat

end

end A288980.P18348817577516468847

/-! ## A288980.P125311867398634488

`A030101(lcm(2, A288979(n)))`
-/

namespace A288980.P125311867398634488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (Int.lcm 2 (A288979 n))

end

end A288980.P125311867398634488

/-! ## A288980.P11364608263653470785

`A030101(A288979(A000007(n)+n))`
-/

namespace A288980.P11364608263653470785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A288979 (A000007 n + (n : ℤ)).toNat).toNat

end

end A288980.P11364608263653470785

/-! ## A288980.P6576433946826796098

`A184955(n)+A030101(A288979(n))`
-/

namespace A288980.P6576433946826796098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 n + A030101 (A288979 n).toNat

end

end A288980.P6576433946826796098

/-!
# A288981: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 534", based on the 5-celled von Neumann neighborhood.

The programs for A288981, there is no canonical definition to state claims against.
-/

/-! ## A288981.P8224626297691506929

`A007088(A288983(n))`
-/

namespace A288981.P8224626297691506929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288983 n).toNat

end

end A288981.P8224626297691506929

/-! ## A288981.P18255579192432620

`A305989(A288984(n)/A060546(n))`
-/

namespace A288981.P18255579192432620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A288984 n : ℚ) / (A060546 n : ℚ))).toNat

end

end A288981.P18255579192432620

/-! ## A288981.P3723103975628516465

`A305989(A288984(n)/A016116(n+1))`
-/

namespace A288981.P3723103975628516465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A288984 n : ℚ) / (A016116 (n + 1) : ℚ))).toNat

end

end A288981.P3723103975628516465

/-! ## A288981.P4529837707110849205

`A305989(1/A016116(n)*A288984(n))`
-/

namespace A288981.P4529837707110849205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway (1 / (A016116 n : ℚ) * (A288984 n : ℚ))).toNat

end

end A288981.P4529837707110849205

/-! ## A288981.P4809083602932143955

`A185544(2*A288983(n))`
-/

namespace A288981.P4809083602932143955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288983 n).toNat

end

end A288981.P4809083602932143955

/-!
# A288982: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 534", based on the 5-celled von Neumann neighborhood.

The programs for A288982, there is no canonical definition to state claims against.
-/

/-! ## A288982.P1285736057008005258

`A007088(A288984(n))`
-/

namespace A288982.P1285736057008005258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288984 n).toNat

end

end A288982.P1285736057008005258

/-! ## A288982.P12787496509875810037

`A185544(2*A288984(n))`
-/

namespace A288982.P12787496509875810037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288984 n).toNat

end

end A288982.P12787496509875810037

/-! ## A288982.P12781727679259466287

`C(A289767(n), (n-∑{digits}[n, #])!)`
-/

namespace A288982.P12781727679259466287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A289767 n).toNat (Nat.factorial ((n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ)).toNat)

end

end A288982.P12781727679259466287

/-! ## A288982.P3187773995465039611

`A289767(A046469(n))`
-/

namespace A288982.P3187773995465039611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289767 (A046469 n).toNat

end

end A288982.P3187773995465039611

/-! ## A288982.P7106270268109075791

`A289767(A004871(n+1))`
-/

namespace A288982.P7106270268109075791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289767 (A004871 (n + 1)).toNat

end

end A288982.P7106270268109075791

/-!
# A288983: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 534", based on the 5-celled von Neumann neighborhood.

The programs for A288983, there is no canonical definition to state claims against.
-/

/-! ## A288983.P10811185867302874891

`A030101(A288984(n)/A060546(n))`
-/

namespace A288983.P10811185867302874891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A288984 n : ℚ) / (A060546 n : ℚ))).toNat

end

end A288983.P10811185867302874891

/-! ## A288983.P9409577269185117837

`A030101(A288984(n)/A016116(n+1))`
-/

namespace A288983.P9409577269185117837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A288984 n : ℚ) / (A016116 (n + 1) : ℚ))).toNat

end

end A288983.P9409577269185117837

/-! ## A288983.P13497680910976631291

`A030101(1/A016116(n)*A288984(n))`
-/

namespace A288983.P13497680910976631291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway (1 / (A016116 n : ℚ) * (A288984 n : ℚ))).toNat

end

end A288983.P13497680910976631291

/-! ## A288983.P3946604912036449396

`A030101(A288984(n)/A001316(n))`
-/

namespace A288983.P3946604912036449396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A288984 n : ℚ) / (A001316 n : ℚ))).toNat

end

end A288983.P3946604912036449396

/-! ## A288983.P6308110864605735176

`A325401(A288984(n)/A001316(n))`
-/

namespace A288983.P6308110864605735176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A288984 n : ℚ) / (A001316 n : ℚ))).toNat

end

end A288983.P6308110864605735176

/-!
# A288984: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 534", based on the 5-celled von Neumann neighborhood.

The programs for A288984, there is no canonical definition to state claims against.
-/

/-! ## A288984.P15562201594646502488

`A030101(A288983(n))*A060546(n)`
-/

namespace A288984.P15562201594646502488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A288983 n).toNat * A060546 n

end

end A288984.P15562201594646502488

/-! ## A288984.P15719972976803857372

`or(A080079(A308709(2*n+1)), A308709(n+2))`
-/

namespace A288984.P15719972976803857372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080079 (A308709 (2 * n + 1)).toNat) (A308709 (n + 2))

end

end A288984.P15719972976803857372

/-! ## A288984.P4229346654183816879

`A289769(A046469(n))`
-/

namespace A288984.P4229346654183816879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289769 (A046469 n).toNat

end

end A288984.P4229346654183816879

/-! ## A288984.P13956357290453824792

`A289769(A087036(n))`
-/

namespace A288984.P13956357290453824792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289769 (A087036 n).toNat

end

end A288984.P13956357290453824792

/-! ## A288984.P14502618108397411066

`A289769(A087051(n))`
-/

namespace A288984.P14502618108397411066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289769 (A087051 n).toNat

end

end A288984.P14502618108397411066

/-!
# A288989: Denominators of coefficients in expansion of E_14/E_12.

The programs for A288989, there is no canonical definition to state claims against.
-/

/-! ## A288989.P16437761568672944245

`691^n`
-/

namespace A288989.P16437761568672944245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  691 ^ n

end

end A288989.P16437761568672944245

/-!
# A288991: Fixed point of the mapping 00->0010, 01->001, 10->000, starting with 00.

The programs for A288991, there is no canonical definition to state claims against.
-/

/-! ## A288991.P10938380421278005429

`char[A288993(n+1)-1]`
-/

namespace A288991.P10938380421278005429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288993 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288991.P10938380421278005429

/-! ## A288991.P7164259400476064893

`char[comp[A288992(n+1)-1]]`
-/

namespace A288991.P7164259400476064893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288992 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288991.P7164259400476064893

/-! ## A288991.P1511590411009838360

`char[abs(A288993(Δ[n²]-n)-1)]`
-/

namespace A288991.P1511590411009838360
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A288993 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288991.P1511590411009838360

/-! ## A288991.P9183241283258638771

`char[A199969(A288993(n+1))]`
-/

namespace A288991.P9183241283258638771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A288993 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288991.P9183241283258638771

/-! ## A288991.P5406429951055753238

`A057358(Δ[char[A288993(n+1)]]+1)`
-/

namespace A288991.P5406429951055753238
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288993 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057358 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A288991.P5406429951055753238

/-! ## A288991.P12975281148741308192

`A249093(Δ[comp[A288993(n+1)+n]]+2)`
-/

namespace A288991.P12975281148741308192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288993 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249093 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 2).toNat

end

end A288991.P12975281148741308192

/-! ## A288991.P18366788776903750890

`A288730(Δ[comp[A288993(n+1)+n]])-1`
-/

namespace A288991.P18366788776903750890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288993 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288730 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A288991.P18366788776903750890

/-! ## A288991.P16461568908105909323

`A016921(n)%Δ[-comp[A288993(n+1)+n]]`
-/

namespace A288991.P16461568908105909323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288993 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016921 n) (f1 (n + 1) - f1 n)

end

end A288991.P16461568908105909323

/-! ## A288991.P16307623590366845521

`A008578(n+1)%Δ[-comp[A288993(n+1)+n]]`
-/

namespace A288991.P16307623590366845521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288993 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 1)) (f1 (n + 1) - f1 n)

end

end A288991.P16307623590366845521

/-! ## A288991.P13977809631877180532

`and(A014398(n), A134391(A081926(n+1)))`
-/

namespace A288991.P13977809631877180532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014398 n) (A134391 (A081926 (n + 1)).toNat)

end

end A288991.P13977809631877180532

/-!
# A288992: Positions of 0 in A288991; complement of A288993.

The programs for A288992, there is no canonical definition to state claims against.
-/

/-! ## A288992.P8986285888240875401

`comp[A288993(n+1)-1]+1`
-/

namespace A288992.P8986285888240875401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288993 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288992.P8986285888240875401

/-! ## A288992.P4743601276111455511

`a(n-1)+A288991(a(n-1)+1)+1` with `a(0)=1`
-/

namespace A288992.P4743601276111455511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A288991 (a (n - 1) + 1).toNat + 1)

end

end A288992.P4743601276111455511

/-! ## A288992.P14305780219264729075

`eq[0, A288991(n+1)]+1`
-/

namespace A288992.P14305780219264729075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288992.P14305780219264729075

/-! ## A288992.P18110865536659182268

`lt[n*A288991(A028310(n)), n]`
-/

namespace A288992.P18110865536659182268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A288991 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A288992.P18110865536659182268

/-! ## A288992.P6101289781629698557

`lt[char[A288993(n+1)], A057427(n)]`
-/

namespace A288992.P6101289781629698557
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288993 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A288992.P6101289781629698557

/-! ## A288992.P13837958690895755280

`record[n+1-A010004(n)*A288991(n+1)]`
-/

namespace A288992.P13837958690895755280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A010004 n * A288991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288992.P13837958690895755280

/-! ## A288992.P17841324771658095451

`record[n+1-A016900(n)*A288991(n+1)]`
-/

namespace A288992.P17841324771658095451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A016900 n * A288991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288992.P17841324771658095451

/-! ## A288992.P16137981697774929722

`record[n+1-A037465(n*A288991(n+1))]`
-/

namespace A288992.P16137981697774929722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A037465 ((n : ℤ) * A288991 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288992.P16137981697774929722

/-! ## A288992.P1174030277054982083

`lt[A288991(A028310(n)), A057427(n)]`
-/

namespace A288992.P1174030277054982083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288991 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288992.P1174030277054982083

/-! ## A288992.P15966269113641734478

`A000720(p?[A288991(n+1)+A000040(n+1)])`
-/

namespace A288992.P15966269113641734478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288991 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A288992.P15966269113641734478

/-!
# A288993: Positions of 1 in A288991; complement of A288992.

The programs for A288993, there is no canonical definition to state claims against.
-/

/-! ## A288993.P6416763077989585302

`filter[n+1, A288991(#)]`
-/

namespace A288993.P6416763077989585302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288991 (f1 j) = 1) n)

end

end A288993.P6416763077989585302

/-! ## A288993.P15008190813995636153

`eq[1, A288991(n+1)]+1`
-/

namespace A288993.P15008190813995636153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288993.P15008190813995636153

/-! ## A288993.P12674885165638018380

`record[(n+3)*A288991(n+3)]`
-/

namespace A288993.P12674885165638018380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A288991 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288993.P12674885165638018380

/-! ## A288993.P9571061672887709453

`eq[1, A288991(A028310(n))]`
-/

namespace A288993.P9571061672887709453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288991 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288993.P9571061672887709453

/-! ## A288993.P3446778466955007171

`A020725(eq[1, A288991(n+1)])`
-/

namespace A288993.P3446778466955007171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288993.P3446778466955007171

/-! ## A288993.P1283279207292103435

`eq[1, A288991(A000007(n)+n)]`
-/

namespace A288993.P1283279207292103435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288991 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288993.P1283279207292103435

/-! ## A288993.P12719298314578696031

`lt[A288991(n+1), A288991(A028310(n))]`
-/

namespace A288993.P12719298314578696031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288991 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288993.P12719298314578696031

/-! ## A288993.P15655041945771062959

`lt[1-A288991(A028310(n)), A057427(n)]`
-/

namespace A288993.P15655041945771062959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A288991 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A288993.P15655041945771062959

/-! ## A288993.P4013787069935551225

`A000720(p?[A000040(n+1)*A288991(n+1)])`
-/

namespace A288993.P4013787069935551225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A288991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A288993.P4013787069935551225

/-! ## A288993.P1109062585915665262

`eq[1, A288991(A233583(n+1))]`
-/

namespace A288993.P1109062585915665262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288991 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288993.P1109062585915665262

/-!
# A288994: a(n) = n*(n+3) when n is congruent to 0 or 3 (mod 4), and n*(n+3)/2 otherwise.

The programs for A288994, the canonical program `A288994.P8191133829754154851` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288994 has offset 0).

The definition of A288994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288994.P8191133829754154851

`2*n*(n+3)/(gcd(4, n+2)*gcd(4, n+3))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288994

/-- `2*n*(n+3)/(gcd(4, n+2)*gcd(4, n+3))` -/
def P8191133829754154851.Spec : Prop :=
  ∀ n, P8191133829754154851.a n = (A288994 n : ℚ)

end A288994

/-! ## A288994.P9599408793009050387

`(∑[n]+n)*gcd(2, ∑[n])`
-/

namespace A288994.P9599408793009050387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + n) * Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A288994.P9599408793009050387

namespace A288994

/-- `(∑[n]+n)*gcd(2, ∑[n])` -/
def P9599408793009050387.Spec : Prop :=
  ∀ n, (P9599408793009050387.a n : ℤ) = A288994 n

end A288994

/-! ## A288994.P7395963914660206937

`(n+3)*n/and(2, n+1)!`
-/

namespace A288994.P7395963914660206937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * ((n : ℚ) / (Nat.factorial (Nat.land 2 (n + 1)) : ℚ))

end

end A288994.P7395963914660206937

namespace A288994

/-- `(n+3)*n/and(2, n+1)!` -/
def P7395963914660206937.Spec : Prop :=
  ∀ n, P7395963914660206937.a n = (A288994 n : ℚ)

end A288994

/-! ## A288994.P3727683961494915392

`n*lcm(2, C(n+3, 2))/(n+2)`
-/

namespace A288994.P3727683961494915392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((Nat.lcm 2 (Nat.choose (n + 3) 2) : ℚ) / (n + 2 : ℚ))

end

end A288994.P3727683961494915392

namespace A288994

/-- `n*lcm(2, C(n+3, 2))/(n+2)` -/
def P3727683961494915392.Spec : Prop :=
  ∀ n, P3727683961494915392.a n = (A288994 n : ℚ)

end A288994

/-! ## A288994.P621890515213715464

`2*n*(n+3)/(and(2, n+1)+2)`
-/

namespace A288994.P621890515213715464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) * ((n + 3 : ℚ) / (Nat.land 2 (n + 1) + 2 : ℚ))

end

end A288994.P621890515213715464

namespace A288994

/-- `2*n*(n+3)/(and(2, n+1)+2)` -/
def P621890515213715464.Spec : Prop :=
  ∀ n, P621890515213715464.a n = (A288994 n : ℚ)

end A288994

/-! ## A288994.P15472479361908058942

`gcd(2, ∑[n])*A000096(n)`
-/

namespace A288994.P15472479361908058942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) * A000096 n

end

end A288994.P15472479361908058942

namespace A288994

/-- `gcd(2, ∑[n])*A000096(n)` -/
def P15472479361908058942.Spec : Prop :=
  ∀ n, P15472479361908058942.a n = A288994 n

end A288994

/-! ## A288994.P10274661431450643843

`(n+3)*n/A014695(n)`
-/

namespace A288994.P10274661431450643843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * ((n : ℚ) / (A014695 n : ℚ))

end

end A288994.P10274661431450643843

namespace A288994

/-- `(n+3)*n/A014695(n)` -/
def P10274661431450643843.Spec : Prop :=
  ∀ n, P10274661431450643843.a n = (A288994 n : ℚ)

end A288994

/-! ## A288994.P8565001737513736661

`(∑[n]+n)*A000041(and(2, n-1))`
-/

namespace A288994.P8565001737513736661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) * A000041 (Int.land 2 ((n : ℤ) - 1)).toNat

end

end A288994.P8565001737513736661

namespace A288994

/-- `(∑[n]+n)*A000041(and(2, n-1))` -/
def P8565001737513736661.Spec : Prop :=
  ∀ n, P8565001737513736661.a n = A288994 n

end A288994

/-! ## A288994.P2348783202532182780

`(n+3)*n/A000041(and(2, n-3))`
-/

namespace A288994.P2348783202532182780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * ((n : ℚ) / (A000041 (Int.land 2 ((n : ℤ) - 3)).toNat : ℚ))

end

end A288994.P2348783202532182780

namespace A288994

/-- `(n+3)*n/A000041(and(2, n-3))` -/
def P2348783202532182780.Spec : Prop :=
  ∀ n, P2348783202532182780.a n = (A288994 n : ℚ)

end A288994

/-! ## A288994.P4498201150822841861

`(n+3)*n/A000108(and(2, n-3))`
-/

namespace A288994.P4498201150822841861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * ((n : ℚ) / (A000108 (Int.land 2 ((n : ℤ) - 3)).toNat : ℚ))

end

end A288994.P4498201150822841861

namespace A288994

/-- `(n+3)*n/A000108(and(2, n-3))` -/
def P4498201150822841861.Spec : Prop :=
  ∀ n, P4498201150822841861.a n = (A288994 n : ℚ)

end A288994

/-! ## A288994.P15255639653967016146

`(n+3)*n/A007318(and(2, n-3)²)`
-/

namespace A288994.P15255639653967016146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * ((n : ℚ) / (A007318 (Int.land 2 ((n : ℤ) - 3) ^ 2).toNat : ℚ))

end

end A288994.P15255639653967016146

namespace A288994

/-- `(n+3)*n/A007318(and(2, n-3)²)` -/
def P15255639653967016146.Spec : Prop :=
  ∀ n, P15255639653967016146.a n = (A288994 n : ℚ)

end A288994

/-! ## A288994.P12301193290457019823

`A028552(n)/A014695(n)`
-/

namespace A288994.P12301193290457019823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028552 n : ℚ) / (A014695 n : ℚ)

end

end A288994.P12301193290457019823

namespace A288994

/-- `A028552(n)/A014695(n)` -/
def P12301193290457019823.Spec : Prop :=
  ∀ n, P12301193290457019823.a n = (A288994 n : ℚ)

end A288994

/-! ## A288994.P13328792347259790873

`(A005563(n)+n)/A014695(n)`
-/

namespace A288994.P13328792347259790873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005563 n + (n : ℤ) : ℚ) / (A014695 n : ℚ)

end

end A288994.P13328792347259790873

namespace A288994

/-- `(A005563(n)+n)/A014695(n)` -/
def P13328792347259790873.Spec : Prop :=
  ∀ n, P13328792347259790873.a n = (A288994 n : ℚ)

end A288994

/-! ## A288994.P2384134366235010132

`and(2, A016885(n))!*A000096(n)`
-/

namespace A288994.P2384134366235010132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 2 (A016885 n)).toNat : ℤ) * A000096 n

end

end A288994.P2384134366235010132

namespace A288994

/-- `and(2, A016885(n))!*A000096(n)` -/
def P2384134366235010132.Spec : Prop :=
  ∀ n, P2384134366235010132.a n = A288994 n

end A288994

/-! ## A288994.P15747522948270841318

`(n+3)*n/A000032(A000045(and(2, n-1)))`
-/

namespace A288994.P15747522948270841318
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * ((n : ℚ) / (A000032 (A000045 (Int.land 2 ((n : ℤ) - 1)).toNat).toNat : ℚ))

end

end A288994.P15747522948270841318

namespace A288994

/-- `(n+3)*n/A000032(A000045(and(2, n-1)))` -/
def P15747522948270841318.Spec : Prop :=
  ∀ n, P15747522948270841318.a n = (A288994 n : ℚ)

end A288994

/-! ## A288994.P8201511176144121801

`(n+3)*n/A000010(A000032(and(2, n-3)))`
-/

namespace A288994.P8201511176144121801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * ((n : ℚ) / (A000010 (A000032 (Int.land 2 ((n : ℤ) - 3)).toNat).toNat : ℚ))

end

end A288994.P8201511176144121801

namespace A288994

/-- `(n+3)*n/A000010(A000032(and(2, n-3)))` -/
def P8201511176144121801.Spec : Prop :=
  ∀ n, P8201511176144121801.a n = (A288994 n : ℚ)

end A288994

/-! ## A288994.P561450756123187219

`(A000096(n)+A000096(n))/A014695(n)`
-/

namespace A288994.P561450756123187219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000096 n + A000096 n : ℚ) / (A014695 n : ℚ)

end

end A288994.P561450756123187219

namespace A288994

/-- `(A000096(n)+A000096(n))/A014695(n)` -/
def P561450756123187219.Spec : Prop :=
  ∀ n, P561450756123187219.a n = (A288994 n : ℚ)

end A288994

/-! ## A288994.P4322407466265146190

`A000096(n)+A000096(n)*A133872(n+1)`
-/

namespace A288994.P4322407466265146190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n + A000096 n * A133872 (n + 1)

end

end A288994.P4322407466265146190

namespace A288994

/-- `A000096(n)+A000096(n)*A133872(n+1)` -/
def P4322407466265146190.Spec : Prop :=
  ∀ n, P4322407466265146190.a n = A288994 n

end A288994

/-! ## A288994.P4131003808265081518

`(n+3)*n/A130658(n+1)`
-/

namespace A288994.P4131003808265081518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) * ((n : ℚ) / (A130658 (n + 1) : ℚ))

end

end A288994.P4131003808265081518

namespace A288994

/-- `(n+3)*n/A130658(n+1)` -/
def P4131003808265081518.Spec : Prop :=
  ∀ n, P4131003808265081518.a n = (A288994 n : ℚ)

end A288994

/-! ## A288994.P1328191617056530454

`(∑[n]+n)*Δ[A047229(n+1)]`
-/

namespace A288994.P1328191617056530454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) * (f2 (n + 1) - f2 n)

end

end A288994.P1328191617056530454

namespace A288994

/-- `(∑[n]+n)*Δ[A047229(n+1)]` -/
def P1328191617056530454.Spec : Prop :=
  ∀ n, P1328191617056530454.a n = A288994 n

end A288994

/-!
# A288995: a(n) = 12 * (A288968(n) - 2).

The programs for A288995, there is no canonical definition to state claims against.
-/

/-! ## A288995.P2693754768157889214

`12*(A288968(n+1)-2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A288995.P2693754768157889214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * (A288968 (n + 1) - 2)

end

end A288995.P2693754768157889214

/-!
# A288996: Length of n-th iterate of the mapping 00->0010, 01->001, 10->000, starting with 00.

The programs for A288996, there is no canonical definition to state claims against.
-/

/-! ## A288996.P18199393638972920818

`A287439(n)+A189632(A064184(n))`
-/

namespace A288996.P18199393638972920818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287439 n + A189632 (A064184 n).toNat

end

end A288996.P18199393638972920818

/-! ## A288996.P4597773852281465184

`A325328(A302018(n))+A078140(n+1)`
-/

namespace A288996.P4597773852281465184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325328 (A302018 n).toNat + A078140 (n + 1)

end

end A288996.P4597773852281465184

/-! ## A288996.P2771423268114526156

`A257639(A027068(n+2))+A008937(n)`
-/

namespace A288996.P2771423268114526156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257639 (A027068 (n + 2)).toNat + A008937 n

end

end A288996.P2771423268114526156

/-! ## A288996.P15793221091968265552

`A289019(n+1)-A028422(A064184(n))`
-/

namespace A288996.P15793221091968265552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289019 (n + 1) - A028422 (A064184 n).toNat

end

end A288996.P15793221091968265552

/-! ## A288996.P8074366478436961826

`A117995(n+1)+A001462(A026597(n+1))`
-/

namespace A288996.P8074366478436961826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117995 (n + 1) + A001462 (A026597 (n + 1)).toNat

end

end A288996.P8074366478436961826

/-!
# A288997: Fixed point of the mapping 00->0010, 01->001, 10->001, starting with 00.

The programs for A288997, the canonical program `A288997.P1517214951232274038` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288997 has offset 1).

The definition of A288997 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288997.P1223983226952927550

`char[comp[floor(n*sqrt(2))]-4]`
-/

namespace A288997.P1223983226952927550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288997.P1223983226952927550

namespace A288997

/-- `char[comp[floor(n*sqrt(2))]-4]` -/
def P1223983226952927550.Spec : Prop :=
  ∀ n, (P1223983226952927550.a n : ℤ) = A288997 (n + 1)

end A288997

/-! ## A288997.P1517214951232274038

`A159684(A081477(n+1)-n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A288997

/-- `A159684(A081477(n+1)-n)` -/
def P1517214951232274038.Spec : Prop :=
  ∀ n, P1517214951232274038.a n = A288997 (n + 1)

theorem P1517214951232274038.correct : P1517214951232274038.Spec := by
  intro n
  simp only [A288997, Nat.add_sub_cancel]

end A288997

/-! ## A288997.P17299473802989775777

`A159684(A189573(n+2)-(n+1))`
-/

namespace A288997.P17299473802989775777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A189573 (n + 2) - (n + 1 : ℤ)).toNat

end

end A288997.P17299473802989775777

namespace A288997

/-- `A159684(A189573(n+2)-(n+1))` -/
def P17299473802989775777.Spec : Prop :=
  ∀ n, P17299473802989775777.a n = A288997 (n + 1)

end A288997

/-! ## A288997.P3819109177791237711

`A159684(A286667(n+2)-(n+2))`
-/

namespace A288997.P3819109177791237711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A286667 (n + 2) - (n + 2 : ℤ)).toNat

end

end A288997.P3819109177791237711

namespace A288997

/-- `A159684(A286667(n+2)-(n+2))` -/
def P3819109177791237711.Spec : Prop :=
  ∀ n, P3819109177791237711.a n = A288997 (n + 1)

end A288997

/-! ## A288997.P12415210142245966930

`1-A080764(n+3)`
-/

namespace A288997.P12415210142245966930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A080764 (n + 3)

end

end A288997.P12415210142245966930

namespace A288997

/-- `1-A080764(n+3)` -/
def P12415210142245966930.Spec : Prop :=
  ∀ n, P12415210142245966930.a n = A288997 (n + 1)

end A288997

/-! ## A288997.P7124086129380749262

`A286665(n+3)-A320926(n+3)`
-/

namespace A288997.P7124086129380749262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286665 (n + 3) - A320926 (n + 3)

end

end A288997.P7124086129380749262

namespace A288997

/-- `A286665(n+3)-A320926(n+3)` -/
def P7124086129380749262.Spec : Prop :=
  ∀ n, P7124086129380749262.a n = A288997 (n + 1)

end A288997

/-! ## A288997.P4391946819428469356

`A171588(n+4)`
-/

namespace A288997.P4391946819428469356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (n + 4)

end

end A288997.P4391946819428469356

namespace A288997

/-- `A171588(n+4)` -/
def P4391946819428469356.Spec : Prop :=
  ∀ n, P4391946819428469356.a n = A288997 (n + 1)

end A288997

/-! ## A288997.P11569592810617039410

`log2(Δ[A286924(n+3)])`
-/

namespace A288997.P11569592810617039410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286924 (n + 3)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A288997.P11569592810617039410

namespace A288997

/-- `log2(Δ[A286924(n+3)])` -/
def P11569592810617039410.Spec : Prop :=
  ∀ n, P11569592810617039410.a n = (A288997 (n + 1) : ℝ)

end A288997

/-! ## A288997.P55389543436681341

`Δ[Δ[A183140(n+2)]]`
-/

namespace A288997.P55389543436681341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183140 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288997.P55389543436681341

namespace A288997

/-- `Δ[Δ[A183140(n+2)]]` -/
def P55389543436681341.Spec : Prop :=
  ∀ n, P55389543436681341.a n = A288997 (n + 1)

end A288997

/-! ## A288997.P12685201728299630881

`Δ[A183138(n+4)]`
-/

namespace A288997.P12685201728299630881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183138 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288997.P12685201728299630881

namespace A288997

/-- `Δ[A183138(n+4)]` -/
def P12685201728299630881.Spec : Prop :=
  ∀ n, P12685201728299630881.a n = A288997 (n + 1)

end A288997

/-! ## A288997.P6667478498214486627

`Δ[A194920(n+4)]`
-/

namespace A288997.P6667478498214486627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194920 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288997.P6667478498214486627

namespace A288997

/-- `Δ[A194920(n+4)]` -/
def P6667478498214486627.Spec : Prop :=
  ∀ n, P6667478498214486627.a n = A288997 (n + 1)

end A288997

/-! ## A288997.P16862192443557636898

`A289035(n+7)`
-/

namespace A288997.P16862192443557636898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289035 (n + 7)

end

end A288997.P16862192443557636898

namespace A288997

/-- `A289035(n+7)` -/
def P16862192443557636898.Spec : Prop :=
  ∀ n, P16862192443557636898.a n = A288997 (n + 1)

end A288997

/-! ## A288997.P17071671040864123436

`A188398(A007071(n+2))*A188398(n+2)`
-/

namespace A288997.P17071671040864123436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188398 (A007071 (n + 2)).toNat * A188398 (n + 2)

end

end A288997.P17071671040864123436

namespace A288997

/-- `A188398(A007071(n+2))*A188398(n+2)` -/
def P17071671040864123436.Spec : Prop :=
  ∀ n, P17071671040864123436.a n = A288997 (n + 1)

end A288997

/-! ## A288997.P10861507213919619703

`A187969(A187969(n+2)+A081477(n+2))`
-/

namespace A288997.P10861507213919619703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187969 (A187969 (n + 2) + A081477 (n + 2)).toNat

end

end A288997.P10861507213919619703

namespace A288997

/-- `A187969(A187969(n+2)+A081477(n+2))` -/
def P10861507213919619703.Spec : Prop :=
  ∀ n, P10861507213919619703.a n = A288997 (n + 1)

end A288997

/-! ## A288997.P2573073546037517275

`A187969(A187969(n+2)+A080755(n+2))`
-/

namespace A288997.P2573073546037517275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187969 (A187969 (n + 2) + A080755 (n + 2)).toNat

end

end A288997.P2573073546037517275

namespace A288997

/-- `A187969(A187969(n+2)+A080755(n+2))` -/
def P2573073546037517275.Spec : Prop :=
  ∀ n, P2573073546037517275.a n = A288997 (n + 1)

end A288997

/-! ## A288997.P3884997336123557895

`A263844(n+3)%2`
-/

namespace A288997.P3884997336123557895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263844 (n + 3)) 2

end

end A288997.P3884997336123557895

namespace A288997

/-- `A263844(n+3)%2` -/
def P3884997336123557895.Spec : Prop :=
  ∀ n, P3884997336123557895.a n = A288997 (n + 1)

end A288997

/-! ## A288997.P11259079162286625610

`A188374(n+2)*A263844(n+3)`
-/

namespace A288997.P11259079162286625610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188374 (n + 2) * A263844 (n + 3)

end

end A288997.P11259079162286625610

namespace A288997

/-- `A188374(n+2)*A263844(n+3)` -/
def P11259079162286625610.Spec : Prop :=
  ∀ n, P11259079162286625610.a n = A288997 (n + 1)

end A288997

/-! ## A288997.P13862641867048982041

`A286726(2*(n+4))`
-/

namespace A288997.P13862641867048982041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286726 (2 * (n + 4))

end

end A288997.P13862641867048982041

namespace A288997

/-- `A286726(2*(n+4))` -/
def P13862641867048982041.Spec : Prop :=
  ∀ n, P13862641867048982041.a n = A288997 (n + 1)

end A288997

/-! ## A288997.P14451348151665541196

`A286925(2*(n+4))`
-/

namespace A288997.P14451348151665541196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286925 (2 * (n + 4))

end

end A288997.P14451348151665541196

namespace A288997

/-- `A286925(2*(n+4))` -/
def P14451348151665541196.Spec : Prop :=
  ∀ n, P14451348151665541196.a n = A288997 (n + 1)

end A288997

/-! ## A288997.P8348317330965211116

`A286685(2*n+7)`
-/

namespace A288997.P8348317330965211116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286685 (2 * n + 7)

end

end A288997.P8348317330965211116

namespace A288997

/-- `A286685(2*n+7)` -/
def P8348317330965211116.Spec : Prop :=
  ∀ n, P8348317330965211116.a n = A288997 (n + 1)

end A288997

/-!
# A288998: Positions of 0 in A288997; complement of A288999.

The programs for A288998, the canonical program `A288998.P7998567743110765033` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288998 has offset 1).

The definition of A288998 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288998.P7998567743110765033

`floor((n+3)*sqrt(2))-3`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A288998

/-- `floor((n+3)*sqrt(2))-3` -/
def P7998567743110765033.Spec : Prop :=
  ∀ n, P7998567743110765033.a n = A288998 (n + 1)

theorem P7998567743110765033.correct : P7998567743110765033.Spec := by
  intro n
  simp only [A288998, Nat.add_sub_cancel]

end A288998

/-! ## A288998.P3135366244484776198

`comp[A184922(n+1)-2]`
-/

namespace A288998.P3135366244484776198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A288998.P3135366244484776198

namespace A288998

/-- `comp[A184922(n+1)-2]` -/
def P3135366244484776198.Spec : Prop :=
  ∀ n, (P3135366244484776198.a n : ℤ) = A288998 (n + 1)

end A288998

/-! ## A288998.P762077519306952723

`comp[A001952(n+1)-3]`
-/

namespace A288998.P762077519306952723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A288998.P762077519306952723

namespace A288998

/-- `comp[A001952(n+1)-3]` -/
def P762077519306952723.Spec : Prop :=
  ∀ n, (P762077519306952723.a n : ℤ) = A288998 (n + 1)

end A288998

/-! ## A288998.P2978993860549627456

`comp[A188375(2*n+1)-2]`
-/

namespace A288998.P2978993860549627456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188375 (2 * n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A288998.P2978993860549627456

namespace A288998

/-- `comp[A188375(2*n+1)-2]` -/
def P2978993860549627456.Spec : Prop :=
  ∀ n, (P2978993860549627456.a n : ℤ) = A288998 (n + 1)

end A288998

/-! ## A288998.P3621041143465752595

`comp[A003152(2*(n+1))-3]`
-/

namespace A288998.P3621041143465752595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003152 (2 * (n + 1)) - 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A288998.P3621041143465752595

namespace A288998

/-- `comp[A003152(2*(n+1))-3]` -/
def P3621041143465752595.Spec : Prop :=
  ∀ n, (P3621041143465752595.a n : ℤ) = A288998 (n + 1)

end A288998

/-! ## A288998.P10968507639412698079

`comp[A188298(2*n+3)-4]`
-/

namespace A288998.P10968507639412698079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188298 (2 * n + 3) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A288998.P10968507639412698079

namespace A288998

/-- `comp[A188298(2*n+3)-4]` -/
def P10968507639412698079.Spec : Prop :=
  ∀ n, (P10968507639412698079.a n : ℤ) = A288998 (n + 1)

end A288998

/-! ## A288998.P8037587575556096898

`comp[A003151(n+1)-2+n]`
-/

namespace A288998.P8037587575556096898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1) - 2 + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A288998.P8037587575556096898

namespace A288998

/-- `comp[A003151(n+1)-2+n]` -/
def P8037587575556096898.Spec : Prop :=
  ∀ n, (P8037587575556096898.a n : ℤ) = A288998 (n + 1)

end A288998

/-! ## A288998.P17317428462642640976

`comp[A001954(n)-A138330(n+1)]`
-/

namespace A288998.P17317428462642640976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001954 n - A138330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A288998.P17317428462642640976

namespace A288998

/-- `comp[A001954(n)-A138330(n+1)]` -/
def P17317428462642640976.Spec : Prop :=
  ∀ n, (P17317428462642640976.a n : ℤ) = A288998 (n + 1)

end A288998

/-! ## A288998.P3608628766975274715

`comp[A001951(A003151(n+1))-2]`
-/

namespace A288998.P3608628766975274715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A003151 (n + 1)).toNat - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A288998.P3608628766975274715

namespace A288998

/-- `comp[A001951(A003151(n+1))-2]` -/
def P3608628766975274715.Spec : Prop :=
  ∀ n, (P3608628766975274715.a n : ℤ) = A288998 (n + 1)

end A288998

/-! ## A288998.P11690967475452386032

`comp[A286666(A286666(n+1))-A286666(n+1)]`
-/

namespace A288998.P11690967475452386032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (A286666 (n + 1)).toNat - A286666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A288998.P11690967475452386032

namespace A288998

/-- `comp[A286666(A286666(n+1))-A286666(n+1)]` -/
def P11690967475452386032.Spec : Prop :=
  ∀ n, (P11690967475452386032.a n : ℤ) = A288998 (n + 1)

end A288998

/-! ## A288998.P6434102474673915422

`A188397(A286926(n+1))`
-/

namespace A288998.P6434102474673915422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188397 (A286926 (n + 1)).toNat

end

end A288998.P6434102474673915422

namespace A288998

/-- `A188397(A286926(n+1))` -/
def P6434102474673915422.Spec : Prop :=
  ∀ n, P6434102474673915422.a n = A288998 (n + 1)

end A288998

/-! ## A288998.P3866666757755597593

`∩[A188397(n+1), A286997(n+1)]`
-/

namespace A288998.P3866666757755597593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288998.P3866666757755597593

namespace A288998

/-- `∩[A188397(n+1), A286997(n+1)]` -/
def P3866666757755597593.Spec : Prop :=
  ∀ n, (P3866666757755597593.a n : ℤ) = A288998 (n + 1)

end A288998

/-! ## A288998.P14580743533227227902

`filter[A286997(n+1), A188395(#)]`
-/

namespace A288998.P14580743533227227902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188395 (f1 j).toNat = 1) n)

end

end A288998.P14580743533227227902

namespace A288998

/-- `filter[A286997(n+1), A188395(#)]` -/
def P14580743533227227902.Spec : Prop :=
  ∀ n, P14580743533227227902.a n = A288998 (n + 1)

end A288998

/-! ## A288998.P1707061734235918602

`eq[1, A099501(n+3)]`
-/

namespace A288998.P1707061734235918602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099501 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288998.P1707061734235918602

namespace A288998

/-- `eq[1, A099501(n+3)]` -/
def P1707061734235918602.Spec : Prop :=
  ∀ n, (P1707061734235918602.a n : ℤ) = A288998 (n + 1)

end A288998

/-! ## A288998.P10954864135528040371

`eq[2, A261865(n+3)]`
-/

namespace A288998.P10954864135528040371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261865 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288998.P10954864135528040371

namespace A288998

/-- `eq[2, A261865(n+3)]` -/
def P10954864135528040371.Spec : Prop :=
  ∀ n, (P10954864135528040371.a n : ℤ) = A288998 (n + 1)

end A288998

/-! ## A288998.P10137914098552295809

`lt[1, Δ[A026249(n+2)²]]`
-/

namespace A288998.P10137914098552295809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (n + 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A288998.P10137914098552295809

namespace A288998

/-- `lt[1, Δ[A026249(n+2)²]]` -/
def P10137914098552295809.Spec : Prop :=
  ∀ n, (P10137914098552295809.a n : ℤ) = A288998 (n + 1)

end A288998

/-! ## A288998.P2909259238535867021

`A049472(A187967(n+1)+2*n+1)`
-/

namespace A288998.P2909259238535867021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A187967 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A288998.P2909259238535867021

namespace A288998

/-- `A049472(A187967(n+1)+2*n+1)` -/
def P2909259238535867021.Spec : Prop :=
  ∀ n, P2909259238535867021.a n = A288998 (n + 1)

end A288998

/-! ## A288998.P4510143463365262788

`A258703(A006337(n+2)+2*n+1)`
-/

namespace A288998.P4510143463365262788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258703 (A006337 (n + 2) + (2 * n + 1 : ℤ)).toNat

end

end A288998.P4510143463365262788

namespace A288998

/-- `A258703(A006337(n+2)+2*n+1)` -/
def P4510143463365262788.Spec : Prop :=
  ∀ n, P4510143463365262788.a n = A288998 (n + 1)

end A288998

/-! ## A288998.P10638810089473873111

`A049472(A286665(n+2)+2*n+1)`
-/

namespace A288998.P10638810089473873111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A286665 (n + 2) + (2 * n + 1 : ℤ)).toNat

end

end A288998.P10638810089473873111

namespace A288998

/-- `A049472(A286665(n+2)+2*n+1)` -/
def P10638810089473873111.Spec : Prop :=
  ∀ n, P10638810089473873111.a n = A288998 (n + 1)

end A288998

/-! ## A288998.P4436081524359839841

`A049472(A001951(∑[A006337(n+2)]))`
-/

namespace A288998.P4436081524359839841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A001951 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A288998.P4436081524359839841

namespace A288998

/-- `A049472(A001951(∑[A006337(n+2)]))` -/
def P4436081524359839841.Spec : Prop :=
  ∀ n, P4436081524359839841.a n = A288998 (n + 1)

end A288998

/-!
# A288999: Positions of 1 in A288997; complement of A288998.

The programs for A288999, the canonical program `A288999.P8263752832284557845` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288999 has offset 1).

The definition of A288999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288999.P17238424654701815291

`ceil(2*n+(n+2)*sqrt(2))`
-/

namespace A288999.P17238424654701815291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) + (n + 2 : ℝ) * Real.sqrt (2 : ℝ)⌉

end

end A288999.P17238424654701815291

namespace A288999

/-- `ceil(2*n+(n+2)*sqrt(2))` -/
def P17238424654701815291.Spec : Prop :=
  ∀ n, P17238424654701815291.a n = A288999 (n + 1)

end A288999

/-! ## A288999.P8263752832284557845

`∑[A159684(n)+3]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A288999

/-- `∑[A159684(n)+3]` -/
def P8263752832284557845.Spec : Prop :=
  ∀ n, P8263752832284557845.a n = A288999 (n + 1)

theorem P8263752832284557845.correct : P8263752832284557845.Spec := by
  intro n
  simp only [A288999, Nat.add_sub_cancel]

end A288999

/-! ## A288999.P14204313185008576896

`∑[A097509(n+1)+1]`
-/

namespace A288999.P14204313185008576896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288999.P14204313185008576896

namespace A288999

/-- `∑[A097509(n+1)+1]` -/
def P14204313185008576896.Spec : Prop :=
  ∀ n, P14204313185008576896.a n = A288999 (n + 1)

end A288999

/-! ## A288999.P3008348677052746827

`∑[A276862(n+1)+1]`
-/

namespace A288999.P3008348677052746827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276862 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288999.P3008348677052746827

namespace A288999

/-- `∑[A276862(n+1)+1]` -/
def P3008348677052746827.Spec : Prop :=
  ∀ n, P3008348677052746827.a n = A288999 (n + 1)

end A288999

/-! ## A288999.P13125896659663131924

`∑[A006337(n+1)+2]`
-/

namespace A288999.P13125896659663131924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006337 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288999.P13125896659663131924

namespace A288999

/-- `∑[A006337(n+1)+2]` -/
def P13125896659663131924.Spec : Prop :=
  ∀ n, P13125896659663131924.a n = A288999 (n + 1)

end A288999

/-! ## A288999.P2086339340114724357

`∑[4-A144611(n+1)]`
-/

namespace A288999.P2086339340114724357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A144611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288999.P2086339340114724357

namespace A288999

/-- `∑[4-A144611(n+1)]` -/
def P2086339340114724357.Spec : Prop :=
  ∀ n, P2086339340114724357.a n = A288999 (n + 1)

end A288999

/-! ## A288999.P10274753892692769620

`∑[5-A080763(n+1)]`
-/

namespace A288999.P10274753892692769620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A080763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288999.P10274753892692769620

namespace A288999

/-- `∑[5-A080763(n+1)]` -/
def P10274753892692769620.Spec : Prop :=
  ∀ n, P10274753892692769620.a n = A288999 (n + 1)

end A288999

/-! ## A288999.P10080574807712180373

`A082845(n+1)+1+n`
-/

namespace A288999.P10080574807712180373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082845 (n + 1) + 1 + (n : ℤ)

end

end A288999.P10080574807712180373

namespace A288999

/-- `A082845(n+1)+1+n` -/
def P10080574807712180373.Spec : Prop :=
  ∀ n, P10080574807712180373.a n = A288999 (n + 1)

end A288999

/-! ## A288999.P12715850793025923951

`A159684(n)+A001952(n+1)`
-/

namespace A288999.P12715850793025923951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 n + A001952 (n + 1)

end

end A288999.P12715850793025923951

namespace A288999

/-- `A159684(n)+A001952(n+1)` -/
def P12715850793025923951.Spec : Prop :=
  ∀ n, P12715850793025923951.a n = A288999 (n + 1)

end A288999

/-! ## A288999.P4121933859934493361

`A184922(n+1)+A006337(n+1)`
-/

namespace A288999.P4121933859934493361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 1) + A006337 (n + 1)

end

end A288999.P4121933859934493361

namespace A288999

/-- `A184922(n+1)+A006337(n+1)` -/
def P4121933859934493361.Spec : Prop :=
  ∀ n, P4121933859934493361.a n = A288999 (n + 1)

end A288999

/-! ## A288999.P3398702633446195942

`A159684(n)+A286927(n+1)/2`
-/

namespace A288999.P3398702633446195942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159684 n : ℚ) + (A286927 (n + 1) : ℚ) / 2

end

end A288999.P3398702633446195942

namespace A288999

/-- `A159684(n)+A286927(n+1)/2` -/
def P3398702633446195942.Spec : Prop :=
  ∀ n, P3398702633446195942.a n = (A288999 (n + 1) : ℚ)

end A288999

/-! ## A288999.P4942347311183559511

`∪[A188383(n+1), A188396(n+1)]`
-/

namespace A288999.P4942347311183559511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A288999.P4942347311183559511

namespace A288999

/-- `∪[A188383(n+1), A188396(n+1)]` -/
def P4942347311183559511.Spec : Prop :=
  ∀ n, (P4942347311183559511.a n : ℤ) = A288999 (n + 1)

end A288999

/-! ## A288999.P9676291611408000132

`A001952(n+1)+A006337(n+1)-1`
-/

namespace A288999.P9676291611408000132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) + (A006337 (n + 1) - 1)

end

end A288999.P9676291611408000132

namespace A288999

/-- `A001952(n+1)+A006337(n+1)-1` -/
def P9676291611408000132.Spec : Prop :=
  ∀ n, P9676291611408000132.a n = A288999 (n + 1)

end A288999

/-! ## A288999.P6662737112217199901

`A001952(n+1)+2-A080763(n+1)`
-/

namespace A288999.P6662737112217199901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) + (2 - A080763 (n + 1))

end

end A288999.P6662737112217199901

namespace A288999

/-- `A001952(n+1)+2-A080763(n+1)` -/
def P6662737112217199901.Spec : Prop :=
  ∀ n, P6662737112217199901.a n = A288999 (n + 1)

end A288999

/-! ## A288999.P8734347146495988270

`∑[A276864(n+2)]`
-/

namespace A288999.P8734347146495988270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276864 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288999.P8734347146495988270

namespace A288999

/-- `∑[A276864(n+2)]` -/
def P8734347146495988270.Spec : Prop :=
  ∀ n, P8734347146495988270.a n = A288999 (n + 1)

end A288999

/-! ## A288999.P1769421166091299365

`Δ[A194139(n)]-3`
-/

namespace A288999.P1769421166091299365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194139 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A288999.P1769421166091299365

namespace A288999

/-- `Δ[A194139(n)]-3` -/
def P1769421166091299365.Spec : Prop :=
  ∀ n, P1769421166091299365.a n = A288999 (n + 1)

end A288999

/-! ## A288999.P12000346218051359250

`A184922(n+2)-2`
-/

namespace A288999.P12000346218051359250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (n + 2) - 2

end

end A288999.P12000346218051359250

namespace A288999

/-- `A184922(n+2)-2` -/
def P12000346218051359250.Spec : Prop :=
  ∀ n, P12000346218051359250.a n = A288999 (n + 1)

end A288999

/-! ## A288999.P1668899913459441926

`A001952(n+2)-3`
-/

namespace A288999.P1668899913459441926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 2) - 3

end

end A288999.P1668899913459441926

namespace A288999

/-- `A001952(n+2)-3` -/
def P1668899913459441926.Spec : Prop :=
  ∀ n, P1668899913459441926.a n = A288999 (n + 1)

end A288999

/-! ## A288999.P1421198541236767084

`A286666(n+2)+n`
-/

namespace A288999.P1421198541236767084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 2) + (n : ℤ)

end

end A288999.P1421198541236767084

namespace A288999

/-- `A286666(n+2)+n` -/
def P1421198541236767084.Spec : Prop :=
  ∀ n, P1421198541236767084.a n = A288999 (n + 1)

end A288999

