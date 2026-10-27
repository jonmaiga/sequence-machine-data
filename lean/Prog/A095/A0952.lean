import SequenceMachineLib
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A095200: Greatest multiple of n of the form (n-1) + (n-2) + ... + (n-k), or 0 if no such number exists.

The programs for A095200, there is no canonical definition to state claims against.
-/

/-! ## A095200.P17834189852695883379

`A110346(n+1)-(n+1)`
-/

namespace A095200.P17834189852695883379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110346 (n + 1) - (n + 1 : ℤ)

end

end A095200.P17834189852695883379

/-! ## A095200.P11325741029687484773

`abs(A110346(n+1)+A001478(n+1))`
-/

namespace A095200.P11325741029687484773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A110346 (n + 1) + A001478 (n + 1)|

end

end A095200.P11325741029687484773

/-! ## A095200.P6100532729938054152

`floor(A110346(n+1)/(n+2))*A153152(n)`
-/

namespace A095200.P6100532729938054152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A110346 (n + 1) : ℚ) / (n + 2 : ℚ)⌋ * A153152 n

end

end A095200.P6100532729938054152

/-! ## A095200.P6089507802938322717

`(A110346(n+1)+A045944(n))%A003215(n)`
-/

namespace A095200.P6089507802938322717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110346 (n + 1) + A045944 n) (A003215 n)

end

end A095200.P6089507802938322717

/-! ## A095200.P1161569091490948144

`(A110346(n+1)+A000096(n))%A034856(n+1)`
-/

namespace A095200.P1161569091490948144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110346 (n + 1) + A000096 n) (A034856 (n + 1))

end

end A095200.P1161569091490948144

/-! ## A095200.P14951798709039397937

`A023443(A110346(n+1)-n)`
-/

namespace A095200.P14951798709039397937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A110346 (n + 1) - (n : ℤ)).toNat

end

end A095200.P14951798709039397937

/-! ## A095200.P16836263613151023156

`(n+1)*A095201(n+1)`
-/

namespace A095200.P16836263613151023156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A095201 (n + 1)

end

end A095200.P16836263613151023156

/-! ## A095200.P17386135787040073973

`A095201(n+1)*A153152(n)`
-/

namespace A095200.P17386135787040073973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095201 (n + 1) * A153152 n

end

end A095200.P17386135787040073973

/-! ## A095200.P7693958617748191274

`A095201(n+1)*A131209(n)`
-/

namespace A095200.P7693958617748191274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095201 (n + 1) * A131209 n

end

end A095200.P7693958617748191274

/-!
# A095201: a(n) = A095200(n)/n.

The programs for A095201, there is no canonical definition to state claims against.
-/

/-! ## A095201.P11528009119152761878

`A095200(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A095201.P11528009119152761878
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095200 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A095201.P11528009119152761878

/-! ## A095201.P8041776124824030324

`floor(A110346(n+1)/(n+2))`
-/

namespace A095201.P8041776124824030324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A110346 (n + 1) : ℚ) / (n + 2 : ℚ)⌋

end

end A095201.P8041776124824030324

/-! ## A095201.P10767835663655608520

`A095200(n+1)%A028310(n)`
-/

namespace A095201.P10767835663655608520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095200 (n + 1)) (A028310 n)

end

end A095201.P10767835663655608520

/-! ## A095201.P12639537180169053839

`A023443(A110346(n+1)/(n+1))`
-/

namespace A095201.P12639537180169053839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.roundAway ((A110346 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A095201.P12639537180169053839

/-! ## A095201.P14195282000323984804

`A258069(A110346(n+1)/(n+1))`
-/

namespace A095201.P14195282000323984804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258069 (SequenceMachineLib.roundAway ((A110346 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A095201.P14195282000323984804

/-! ## A095201.P1765463634872026046

`(2*A095200(n+1))%A005408(n)`
-/

namespace A095201.P1765463634872026046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A095200 (n + 1)) (A005408 n)

end

end A095201.P1765463634872026046

/-! ## A095201.P14250259472409634584

`(A095200(n+1)+n)%A029579(n)`
-/

namespace A095201.P14250259472409634584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095200 (n + 1) + (n : ℤ)) (A029579 n)

end

end A095201.P14250259472409634584

/-! ## A095201.P8463915378641052214

`abs(A110346(n+1)/A001478(n+1)+1)`
-/

namespace A095201.P8463915378641052214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A110346 (n + 1) : ℚ) / (A001478 (n + 1) : ℚ) + 1|

end

end A095201.P8463915378641052214

/-! ## A095201.P5475557299135693869

`A005843(A095200(n+1))%A005408(n)`
-/

namespace A095201.P5475557299135693869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 (A095200 (n + 1)).toNat) (A005408 n)

end

end A095201.P5475557299135693869

/-! ## A095201.P14839844244571573919

`A004273(A110346(n+1))%A005408(n)`
-/

namespace A095201.P14839844244571573919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 (A110346 (n + 1)).toNat) (A005408 n)

end

end A095201.P14839844244571573919

/-!
# A095202: Value of largest k such that (n-1) + (n-2) + (n-3) + ... + (n-k) is a multiple of n, or 0 if no such k exists.

The programs for A095202, there is no canonical definition to state claims against.
-/

/-! ## A095202.P241522677750239626

`A011772(n+1)%A000265(C(floor(3*n/2), n))`
-/

namespace A095202.P241522677750239626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011772 (n + 1)) (A000265 (Nat.choose ⌊3 * ((n : ℚ) / 2)⌋.toNat n))

end

end A095202.P241522677750239626

/-! ## A095202.P9020894663210368192

`A011772(A077168(n))*A043545(n)`
-/

namespace A095202.P9020894663210368192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (A077168 n).toNat * A043545 n

end

end A095202.P9020894663210368192

/-! ## A095202.P6777949158279417982

`A011772(A077168(n))%A005408(n)`
-/

namespace A095202.P6777949158279417982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011772 (A077168 n).toNat) (A005408 n)

end

end A095202.P6777949158279417982

/-! ## A095202.P6402935155590250475

`A011772(n+1)%A069735(A000079(n))`
-/

namespace A095202.P6402935155590250475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011772 (n + 1)) (A069735 (A000079 n).toNat)

end

end A095202.P6402935155590250475

/-! ## A095202.P13558986726236001077

`A011772(n+1)*A059841(A027306(n+1))`
-/

namespace A095202.P13558986726236001077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (n + 1) * A059841 (A027306 (n + 1)).toNat

end

end A095202.P13558986726236001077

/-!
# A095203: Numbers n such that (Pi/sqrt(2))^n is closer to its nearest integer than any value of (Pi/sqrt(2))^k for 1 <= k < n.

The programs for A095203, there is no canonical definition to state claims against.
-/

/-! ## A095203.P2647183190510621103

`record[gcd(n, A191113(A190845(n+1)))]`
-/

namespace A095203.P2647183190510621103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A191113 (A190845 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095203.P2647183190510621103

/-!
# A095204: a(n) is the smallest number greater than a(n-1) such that in a(0) through a(n) no digit occurs more than once more than any other digit.

The programs for A095204, there is no canonical definition to state claims against.
-/

/-! ## A095204.P8713315737410315633

`A106604(A007967(n²))`
-/

namespace A095204.P8713315737410315633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106604 (A007967 (n ^ 2)).toNat

end

end A095204.P8713315737410315633

/-! ## A095204.P15591016783807608727

`A106614(13*A106604(n))`
-/

namespace A095204.P15591016783807608727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106614 (13 * A106604 n).toNat

end

end A095204.P15591016783807608727

/-! ## A095204.P1688257426580279152

`A106615(14*A106604(n))`
-/

namespace A095204.P1688257426580279152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106615 (14 * A106604 n).toNat

end

end A095204.P1688257426580279152

/-! ## A095204.P3765460378196329848

`A106616(15*A106604(n))`
-/

namespace A095204.P3765460378196329848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 (15 * A106604 n).toNat

end

end A095204.P3765460378196329848

/-! ## A095204.P13805379021436107416

`A106621(20*A106604(n))`
-/

namespace A095204.P13805379021436107416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106621 (20 * A106604 n).toNat

end

end A095204.P13805379021436107416

/-!
# A095205: Least nonnegative integer not already in the sequence such that the frequency of digits in the entire sequence is as close to a uniform distribution as possible. A difference in frequency of at most 1 across all digits is allowed, and that difference must always be in favor of digits closer to 0.

The programs for A095205, there is no canonical definition to state claims against.
-/

/-! ## A095205.P3720017933556025946

`A184955(A184955(n)²)+A120125(n)`
-/

namespace A095205.P3720017933556025946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A184955 n ^ 2).toNat + A120125 n

end

end A095205.P3720017933556025946

/-! ## A095205.P15753571914970749736

`A184955(A028233(n+1))+A120125(n)`
-/

namespace A095205.P15753571914970749736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A028233 (n + 1)).toNat + A120125 n

end

end A095205.P15753571914970749736

/-! ## A095205.P11974334945132056040

`A184955(A106616(n+1))+A120125(n)`
-/

namespace A095205.P11974334945132056040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184955 (A106616 (n + 1)).toNat + A120125 n

end

end A095205.P11974334945132056040

/-! ## A095205.P18178623274969697040

`A333832(n+1)+A184955(A184955(n)²)`
-/

namespace A095205.P18178623274969697040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333832 (n + 1) + A184955 (A184955 n ^ 2).toNat

end

end A095205.P18178623274969697040

/-! ## A095205.P10400792200757157906

`A345227(n+1)+A184955(A184955(n)²)`
-/

namespace A095205.P10400792200757157906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345227 (n + 1) + A184955 (A184955 n ^ 2).toNat

end

end A095205.P10400792200757157906

/-!
# A095207: Lexicographically first sequence in which every positive integer k appears tau(k)=A000005(k) times and no two consecutive terms are equal.

The programs for A095207, there is no canonical definition to state claims against.
-/

/-! ## A095207.P9015725702524549807

`A064289(∑[A331148(A275431(n+1))])`
-/

namespace A095207.P9015725702524549807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331148 (A275431 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A095207.P9015725702524549807

/-!
# A095208: n if n is composite else 10*n.

The programs for A095208, there is no canonical definition to state claims against.
-/

/-! ## A095208.P15691814521861767172

`9*∏{p}[n+1, C(#, n)]+n+1`
-/

namespace A095208.P15691814521861767172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (∏ p ∈ Nat.primeFactors (f1 n), Nat.choose p n) + (n + 1)

end

end A095208.P15691814521861767172

/-! ## A095208.P4443478744252410621

`(n+1)*C(A080339(n+1)+9, 9)`
-/

namespace A095208.P4443478744252410621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.choose (A080339 (n + 1) + 9).toNat 9

end

end A095208.P4443478744252410621

/-! ## A095208.P9201320895384585637

`9*C(A006530(n+1), n)+1+n`
-/

namespace A095208.P9201320895384585637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose (A006530 (n + 1)).toNat n + 1 + n

end

end A095208.P9201320895384585637

/-! ## A095208.P1024072879984938631

`9*C(A014963(n+1), n)+1+n`
-/

namespace A095208.P1024072879984938631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose (A014963 (n + 1)).toNat n + 1 + n

end

end A095208.P1024072879984938631

/-! ## A095208.P9174358737501317212

`9*C(A020639(n+1), n)+1+n`
-/

namespace A095208.P9174358737501317212
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose (A020639 (n + 1)).toNat n + 1 + n

end

end A095208.P9174358737501317212

/-! ## A095208.P12476122932636597587

`9*C(A051664(n+1), n)+1+n`
-/

namespace A095208.P12476122932636597587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose (A051664 (n + 1)).toNat n + 1 + n

end

end A095208.P12476122932636597587

/-! ## A095208.P2485847943371638718

`(n+1)*10^C(A000010(n+1), n)`
-/

namespace A095208.P2485847943371638718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * 10 ^ Nat.choose (A000010 (n + 1)).toNat n

end

end A095208.P2485847943371638718

/-! ## A095208.P4826242241898062351

`(9*A001222(n+1)!%2+1)*(n+1)`
-/

namespace A095208.P4826242241898062351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (9 * (Nat.factorial (A001222 (n + 1)).toNat % 2) + 1) * (n + 1)

end

end A095208.P4826242241898062351

/-! ## A095208.P11221198170077327659

`A016777(3*C(A014963(n+1), n))+n`
-/

namespace A095208.P11221198170077327659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (3 * Nat.choose (A014963 (n + 1)).toNat n) + (n : ℤ)

end

end A095208.P11221198170077327659

/-! ## A095208.P5729844770686321367

`(n+1)*gcd(10, A001222(A000041(A001222(n+1))))`
-/

namespace A095208.P5729844770686321367
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd 10 (A001222 (A000041 (A001222 (n + 1)).toNat).toNat)

end

end A095208.P5729844770686321367

/-!
# A095209: a(0) = 1, and for n > 0, a(n) = the least multiple of prime(n) such that the geometric mean of a(0) to a(n) is an integer.

The programs for A095209, the canonical program `A095209.P676887428399175964` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095209 has offset 0).

The definition of A095209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095209.P11626699320042927876

`A002110(n)*A307539(n)`
-/

namespace A095209.P11626699320042927876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A307539 n

end

end A095209.P11626699320042927876

namespace A095209

/-- `A002110(n)*A307539(n)` -/
def P11626699320042927876.Spec : Prop :=
  ∀ n, P11626699320042927876.a n = A095209 n

end A095209

/-! ## A095209.P676887428399175964

`A057335(A020522(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A095209

/-- `A057335(A020522(n))` -/
def P676887428399175964.Spec : Prop :=
  ∀ n, P676887428399175964.a n = A095209 n

theorem P676887428399175964.correct : P676887428399175964.Spec := by
  intro n
  simp only [A095209]

end A095209

/-! ## A095209.P9672969558849253436

`record[A307540(n)]*A307539(n)`
-/

namespace A095209.P9672969558849253436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A307539 n

end

end A095209.P9672969558849253436

namespace A095209

/-- `record[A307540(n)]*A307539(n)` -/
def P9672969558849253436.Spec : Prop :=
  ∀ n, P9672969558849253436.a n = A095209 n

end A095209

/-! ## A095209.P10242932698503576251

`∏[A008578(n+1)]*A307539(n)`
-/

namespace A095209.P10242932698503576251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A307539 n

end

end A095209.P10242932698503576251

namespace A095209

/-- `∏[A008578(n+1)]*A307539(n)` -/
def P10242932698503576251.Spec : Prop :=
  ∀ n, P10242932698503576251.a n = A095209 n

end A095209

/-! ## A095209.P12733985349931588862

`A005180(n+1)^n*A002110(n)`
-/

namespace A095209.P12733985349931588862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005180 (n + 1) ^ n * A002110 n

end

end A095209.P12733985349931588862

namespace A095209

/-- `A005180(n+1)^n*A002110(n)` -/
def P12733985349931588862.Spec : Prop :=
  ∀ n, P12733985349931588862.a n = A095209 n

end A095209

/-!
# A095210: a(n) = least multiple of n such that the geometric mean of a(1), ..., a(n) is an integer.

The programs for A095210, there is no canonical definition to state claims against.
-/

/-! ## A095210.P17311797377539884355

`ceil((n+1)/∏{p}[n+1, (n+1)/#])^n*Δ[A173185(n)]`
-/

namespace A095210.P17311797377539884355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉ ^ n * (f2 (n + 1) - f2 n)

end

end A095210.P17311797377539884355

/-! ## A095210.P7954917226499259356

`A014963(n+1)^(n+1)*A003418(n)`
-/

namespace A095210.P7954917226499259356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) ^ (n + 1) * A003418 n

end

end A095210.P7954917226499259356

/-! ## A095210.P405029152583436302

`(A060357(n)-A060361(n))*A014963(n+1)^A034699(n+1)`
-/

namespace A095210.P405029152583436302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060357 n - A060361 n : ℚ) * (A014963 (n + 1) : ℚ) ^ (A034699 (n + 1) : ℤ)

end

end A095210.P405029152583436302

/-! ## A095210.P8854514785818576114

`(A060357(n)-A060361(n))*A014963(n+1)^A053585(n+1)`
-/

namespace A095210.P8854514785818576114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060357 n - A060361 n : ℚ) * (A014963 (n + 1) : ℚ) ^ (A053585 (n + 1) : ℤ)

end

end A095210.P8854514785818576114

/-! ## A095210.P18372705790864738187

`A056040(n)*A180000(n)*A014963(n+1)^A034699(n+1)`
-/

namespace A095210.P18372705790864738187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 n * A180000 n : ℚ) * (A014963 (n + 1) : ℚ) ^ (A034699 (n + 1) : ℤ)

end

end A095210.P18372705790864738187

/-!
# A095211: Lexicographically least sequence such that a(n) is a positive multiple of the n-th composite number and the arithmetic mean of the first n terms is an integer.

The programs for A095211, there is no canonical definition to state claims against.
-/

/-! ## A095211.P9397058300696686328

`Δ[n*A095212(abs(1-n)+1)]`
-/

namespace A095211.P9397058300696686328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A095212 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095211.P9397058300696686328

/-!
# A095212: a(n) = arithmetic mean of A095211(1 to n).

The programs for A095212, there is no canonical definition to state claims against.
-/

/-! ## A095212.P8039324556930322000

`∑[A095211(n+1)]/(n+1)`
-/

namespace A095212.P8039324556930322000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095211 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A095212.P8039324556930322000

/-!
# A095214: a(n) = floor((Pi/sqrt(2))^n).

The programs for A095214, the canonical program `A095214.P5646035719050594429` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095214 has offset 0).

The definition of A095214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 289 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095214.P5646035719050594429

`floor((π/sqrt(2))^n)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A095214

/-- `floor((π/sqrt(2))^n)` -/
def P5646035719050594429.Spec : Prop :=
  ∀ n, P5646035719050594429.a n = A095214 n

theorem P5646035719050594429.correct : P5646035719050594429.Spec := by
  intro n
  simp only [A095214]

end A095214

/-! ## A095214.P17189078364227311112

`A343609(A376743(n)+A024562(n+3))`
-/

namespace A095214.P17189078364227311112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A376743 n + A024562 (n + 3)).toNat

end

end A095214.P17189078364227311112

namespace A095214

/-- `A343609(A376743(n)+A024562(n+3))` -/
def P17189078364227311112.Spec : Prop :=
  ∀ n, P17189078364227311112.a n = A095214 n

end A095214

/-! ## A095214.P12117925041241431787

`A000006(A339835(n+1))`
-/

namespace A095214.P12117925041241431787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A339835 (n + 1)).toNat

end

end A095214.P12117925041241431787

namespace A095214

/-- `A000006(A339835(n+1))` -/
def P12117925041241431787.Spec : Prop :=
  ∀ n, P12117925041241431787.a n = A095214 n

end A095214

/-! ## A095214.P15870913200628241948

`A001462(A007482(n)-n²)`
-/

namespace A095214.P15870913200628241948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A007482 n - (n ^ 2 : ℤ)).toNat

end

end A095214.P15870913200628241948

namespace A095214

/-- `A001462(A007482(n)-n²)` -/
def P15870913200628241948.Spec : Prop :=
  ∀ n, P15870913200628241948.a n = A095214 n

end A095214

/-!
# A095215: Beginning with 2, greatest prime divisor of the concatenation of all previous terms.

The programs for A095215, there is no canonical definition to state claims against.
-/

/-! ## A095215.P6357597742771862086

`A006530(xor(3, ∑[A135809(n)]))`
-/

namespace A095215.P6357597742771862086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135809 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.xor 3 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A095215.P6357597742771862086

/-!
# A095218: (Product of composite numbers among next n numbers) - (product of primes among next n numbers).

The programs for A095218, there is no canonical definition to state claims against.
-/

/-! ## A095218.P10536953748621724183

`A093456(n+1)-A093457(n+1)`
-/

namespace A095218.P10536953748621724183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093456 (n + 1) - A093457 (n + 1)

end

end A095218.P10536953748621724183

/-! ## A095218.P6628482535682156342

`A093456(n+1)-ratio[A034386(∑[n])]`
-/

namespace A095218.P6628482535682156342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093456 (n + 1) : ℚ) - (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A095218.P6628482535682156342

/-! ## A095218.P4273172854693540765

`A093456(n+1)-ratio[A300951(∑[2*n])]`
-/

namespace A095218.P4273172854693540765
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300951 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093456 (n + 1) : ℚ) - (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A095218.P4273172854693540765

/-! ## A095218.P4466522061708316611

`A093456(n+1)-ratio[-A034386(A000217(n))]`
-/

namespace A095218.P4466522061708316611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A034386 (A000217 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093456 (n + 1) : ℚ) - (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A095218.P4466522061708316611

/-! ## A095218.P2087377175984452853

`A093456(n+1)-ratio[-A300951(A002378(n))]`
-/

namespace A095218.P2087377175984452853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A300951 (A002378 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093456 (n + 1) : ℚ) - (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A095218.P2087377175984452853

/-!
# A095219: First differences of A053067.

The programs for A095219, there is no canonical definition to state claims against.
-/

/-! ## A095219.P15806182359442327759

`A053067(n+2)-A053067(n+1)`
-/

namespace A095219.P15806182359442327759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053067 (n + 2) - A053067 (n + 1)

end

end A095219.P15806182359442327759

/-! ## A095219.P16843633100363595051

`Δ[A053067(n+1)]`
-/

namespace A095219.P16843633100363595051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095219.P16843633100363595051

/-! ## A095219.P6843493821992435986

`record[Δ[A053067(A000267(n))]]`
-/

namespace A095219.P6843493821992435986
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053067 (A000267 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095219.P6843493821992435986

/-! ## A095219.P10231570552710577178

`Δ[record[A053067(A117910(n))]]`
-/

namespace A095219.P10231570552710577178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053067 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095219.P10231570552710577178

/-! ## A095219.P13179760405074877421

`Δ[record[A053067(A137735(n))]]`
-/

namespace A095219.P13179760405074877421
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053067 (A137735 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095219.P13179760405074877421

/-!
# A095221: (Concatenation 1,2,3,...,n) mod n.

The programs for A095221, there is no canonical definition to state claims against.
-/

/-! ## A095221.P14759548035583998432

`A007908(n+1)%(n+1)`
-/

namespace A095221.P14759548035583998432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007908 (n + 1)) (n + 1 : ℤ)

end

end A095221.P14759548035583998432

/-! ## A095221.P3049788321823372305

`∑[A078998(n+1)]%(n+1)`
-/

namespace A095221.P3049788321823372305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A095221.P3049788321823372305

/-! ## A095221.P3380523244993229408

`A252043(A033061(n+1))%(n+1)`
-/

namespace A095221.P3380523244993229408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252043 (A033061 (n + 1)).toNat) (n + 1 : ℤ)

end

end A095221.P3380523244993229408

/-! ## A095221.P10431299292629854224

`A252043(A058183(n+1))%(n+1)`
-/

namespace A095221.P10431299292629854224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252043 (A058183 (n + 1)).toNat) (n + 1 : ℤ)

end

end A095221.P10431299292629854224

/-! ## A095221.P4208222106850926704

`(A000422(n+1)-A019566(n+1))%(n+1)`
-/

namespace A095221.P4208222106850926704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000422 (n + 1) - A019566 (n + 1)) (n + 1 : ℤ)

end

end A095221.P4208222106850926704

/-! ## A095221.P13154418459270150289

`A252043(A117804(n+1)+A004216(n+1))%(n+1)`
-/

namespace A095221.P13154418459270150289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252043 (A117804 (n + 1) + A004216 (n + 1)).toNat) (n + 1 : ℤ)

end

end A095221.P13154418459270150289

/-!
# A095222: (Concatenation of T(n)+1..T(n+1)) mod (concatenation of T(n-1)+1..T(n)), where T(k) is the k-th triangular number, A000217(k).

The programs for A095222, there is no canonical definition to state claims against.
-/

/-! ## A095222.P844464546180906518

`A053067(n+2)%A053067(n+1)`
-/

namespace A095222.P844464546180906518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053067 (n + 2)) (A053067 (n + 1))

end

end A095222.P844464546180906518

/-! ## A095222.P7139589640898697244

`A053067(n+2)-A053067(n+1)*A077146(n+1)`
-/

namespace A095222.P7139589640898697244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053067 (n + 2) - A053067 (n + 1) * A077146 (n + 1)

end

end A095222.P7139589640898697244

/-!
# A095223: a(n) is the least Fibonacci number such that a(n) - a(n-1) is prime; a(0)=1.

The programs for A095223, there is no canonical definition to state claims against.
-/

/-! ## A095223.P1202010136521307770

`A000045(A322004(a(n-1)))` with `a(0)=1`
-/

namespace A095223.P1202010136521307770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000045 (A322004 (a (n - 1)).toNat).toNat

end

end A095223.P1202010136521307770

/-! ## A095223.P13641727152377540528

`record[A139764(∑[A268444(n)])]`
-/

namespace A095223.P13641727152377540528
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139764 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095223.P13641727152377540528

/-! ## A095223.P10590719964624365123

`record[A370744(A370756(n+1))]`
-/

namespace A095223.P10590719964624365123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370744 (A370756 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095223.P10590719964624365123

/-! ## A095223.P9770884362269215061

`A000045(eq[A029280(n+1), A119338(n+1)])`
-/

namespace A095223.P9770884362269215061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A095223.P9770884362269215061

/-!
# A095224: Least squarefree Fibonacci number with exactly n prime divisors.

The programs for A095224, there is no canonical definition to state claims against.
-/

/-! ## A095224.P5704647896961190896

`A193588(A008113(n)*A183117(n))`
-/

namespace A095224.P5704647896961190896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 (A008113 n * A183117 n).toNat

end

end A095224.P5704647896961190896

/-! ## A095224.P3278230705246939965

`A193588(A008113(n)*A183124(n))`
-/

namespace A095224.P3278230705246939965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 (A008113 n * A183124 n).toNat

end

end A095224.P3278230705246939965

/-!
# A095226: Diagonal of the triangle A095225.

The programs for A095226, there is no canonical definition to state claims against.
-/

/-! ## A095226.P18192937633460337301

`A095225(∑[n+1])`
-/

namespace A095226.P18192937633460337301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095225 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095226.P18192937633460337301

/-! ## A095226.P83345378056399240

`A005710(n)*A095225(A000217(n+1))`
-/

namespace A095226.P83345378056399240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005710 n * A095225 (A000217 (n + 1)).toNat

end

end A095226.P83345378056399240

/-! ## A095226.P17354120098369796731

`A055642(n)*A095225(A361751(n+1))`
-/

namespace A095226.P17354120098369796731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A095225 (A361751 (n + 1)).toNat

end

end A095226.P17354120098369796731

/-! ## A095226.P11782817880803251327

`A095225(A361751(n+1))*A178788(n)`
-/

namespace A095226.P11782817880803251327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095225 (A361751 (n + 1)).toNat * A178788 n

end

end A095226.P11782817880803251327

/-!
# A095227: Numbers which can be partitioned into distinct parts all using the same digit.

The programs for A095227, there is no canonical definition to state claims against.
-/

/-! ## A095227.P9023666706916241194

`A125289(n+1)+A054899(A125289(n+1))`
-/

namespace A095227.P9023666706916241194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125289 (n + 1) + A054899 (A125289 (n + 1)).toNat

end

end A095227.P9023666706916241194

/-! ## A095227.P4375172655324134649

`A065039(A125289(n+1))`
-/

namespace A095227.P4375172655324134649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 (A125289 (n + 1)).toNat

end

end A095227.P4375172655324134649

/-! ## A095227.P14782039144262874103

`A065039(∑[A343215(A028310(n))])`
-/

namespace A095227.P14782039144262874103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343215 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065039 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A095227.P14782039144262874103

/-! ## A095227.P14896365564294198657

`A054899(A125289(2*(n+5)))`
-/

namespace A095227.P14896365564294198657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A125289 (2 * (n + 5))).toNat

end

end A095227.P14896365564294198657

/-! ## A095227.P8794523879762637129

`record[A054899(A125289(n+1))+A000007(n)]`
-/

namespace A095227.P8794523879762637129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A125289 (n + 1)).toNat + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095227.P8794523879762637129

/-!
# A095230: a(1) = 1, a(n+1) = Floor [concatenation of all previous terms / n].

The programs for A095230, there is no canonical definition to state claims against.
-/

/-! ## A095230.P4248558722344920862

`A128618(n+1)+A019586(A005172(n+1))`
-/

namespace A095230.P4248558722344920862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128618 (n + 1) + A019586 (A005172 (n + 1)).toNat

end

end A095230.P4248558722344920862

/-!
# A095231: a(1)=1; a(n)=least positive integer such that the concatenation of all terms, including a(n), is == 1 (mod n).

The programs for A095231, there is no canonical definition to state claims against.
-/

/-! ## A095231.P7683660883568013366

`A140274(n+1)%A123645(n)`
-/

namespace A095231.P7683660883568013366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140274 (n + 1)) (A123645 (n + 35))

end

end A095231.P7683660883568013366

/-! ## A095231.P17265669375484074225

`gcd(record[A303489(n)], A140274(n+1))`
-/

namespace A095231.P17265669375484074225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A140274 (n + 1))

end

end A095231.P17265669375484074225

/-! ## A095231.P10283232912686977539

`A140274(n+1)+A057110(A002478(n))`
-/

namespace A095231.P10283232912686977539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140274 (n + 1) + A057110 (A002478 n).toNat

end

end A095231.P10283232912686977539

/-! ## A095231.P12790665800758168323

`A140274(A043320(n+1))`
-/

namespace A095231.P12790665800758168323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140274 (A043320 (n + 1)).toNat

end

end A095231.P12790665800758168323

/-!
# A095232: a(1) = 1, a(n+1) = floor(a(n)*10^n/n).

The programs for A095232, there is no canonical definition to state claims against.
-/

/-! ## A095232.P3156759126876094707

`floor(a(n-1)/n*A178501(n+1))` with `a(0)=1`
-/

namespace A095232.P3156759126876094707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℚ) / (n : ℚ) * (A178501 (n + 1) : ℚ)⌋

end

end A095232.P3156759126876094707

/-!
# A095233: a(n) = a(n-1) + Sum(floor(n/p): p prime), a(1) = 1.

The programs for A095233, the canonical program `A095233.P12555546131037091696` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095233 has offset 1).

The definition of A095233 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A013939, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A095233.P12555546131037091696

`a(n-1)+A013939(n+1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A095233

/-- `a(n-1)+A013939(n+1)` -/
def P12555546131037091696.Spec : Prop :=
  ∀ n, P12555546131037091696.a n = A095233 (n + 1)

theorem P12555546131037091696.correct : P12555546131037091696.Spec := by
  intro n
  simp only [A095233, Nat.add_sub_cancel]

end A095233

/-! ## A095233.P11475426272008935460

`∑[∑[∑{p}[n+1, gcd(n, #)]]]+1`
-/

namespace A095233.P11475426272008935460
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.gcd n p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095233.P11475426272008935460

namespace A095233

/-- `∑[∑[∑{p}[n+1, gcd(n, #)]]]+1` -/
def P11475426272008935460.Spec : Prop :=
  ∀ n, (P11475426272008935460.a n : ℤ) = A095233 (n + 1)

end A095233

/-! ## A095233.P13733639999406872076

`∑[A013939(n+1)]+1`
-/

namespace A095233.P13733639999406872076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095233.P13733639999406872076

namespace A095233

/-- `∑[A013939(n+1)]+1` -/
def P13733639999406872076.Spec : Prop :=
  ∀ n, P13733639999406872076.a n = A095233 (n + 1)

end A095233

/-! ## A095233.P9439919459258548549

`∑[A082186(n+1)]-n`
-/

namespace A095233.P9439919459258548549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082186 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A095233.P9439919459258548549

namespace A095233

/-- `∑[A082186(n+1)]-n` -/
def P9439919459258548549.Spec : Prop :=
  ∀ n, P9439919459258548549.a n = A095233 (n + 1)

end A095233

/-! ## A095233.P17574002024641646547

`∑[∑[A001221(n+1)]]+1`
-/

namespace A095233.P17574002024641646547
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095233.P17574002024641646547

namespace A095233

/-- `∑[∑[A001221(n+1)]]+1` -/
def P17574002024641646547.Spec : Prop :=
  ∀ n, P17574002024641646547.a n = A095233 (n + 1)

end A095233

/-! ## A095233.P2837350643050421328

`∑[∑[log2(A034444(n+1))]]+1`
-/

namespace A095233.P2837350643050421328
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A034444 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095233.P2837350643050421328

namespace A095233

/-- `∑[∑[log2(A034444(n+1))]]+1` -/
def P2837350643050421328.Spec : Prop :=
  ∀ n, P2837350643050421328.a n = (A095233 (n + 1) : ℝ)

end A095233

/-! ## A095233.P17154779032967208900

`∑[A082767(n+1)-n]-n`
-/

namespace A095233.P17154779032967208900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082767 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A095233.P17154779032967208900

namespace A095233

/-- `∑[A082767(n+1)-n]-n` -/
def P17154779032967208900.Spec : Prop :=
  ∀ n, P17154779032967208900.a n = A095233 (n + 1)

end A095233

/-! ## A095233.P8174063596670473576

`∑[∑[∑{p}[n+1, A001222(#)]]]+1`
-/

namespace A095233.P8174063596670473576
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), A001222 p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095233.P8174063596670473576

namespace A095233

/-- `∑[∑[∑{p}[n+1, A001222(#)]]]+1` -/
def P8174063596670473576.Spec : Prop :=
  ∀ n, P8174063596670473576.a n = A095233 (n + 1)

end A095233

/-! ## A095233.P17601448910072949613

`∑[∑[A001222(∏{p}[n+1, #])]]+1`
-/

namespace A095233.P17601448910072949613
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f3 n), p)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095233.P17601448910072949613

namespace A095233

/-- `∑[∑[A001222(∏{p}[n+1, #])]]+1` -/
def P17601448910072949613.Spec : Prop :=
  ∀ n, P17601448910072949613.a n = A095233 (n + 1)

end A095233

/-! ## A095233.P17269355067783347957

`1-∑[∑[∑{p}[n+1, A008683(#)]]]`
-/

namespace A095233.P17269355067783347957
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), A008683 p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095233.P17269355067783347957

namespace A095233

/-- `1-∑[∑[∑{p}[n+1, A008683(#)]]]` -/
def P17269355067783347957.Spec : Prop :=
  ∀ n, P17269355067783347957.a n = A095233 (n + 1)

end A095233

/-! ## A095233.P3003558159671779371

`∑[∑[A001221(A181440(n+1))]]`
-/

namespace A095233.P3003558159671779371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A181440 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095233.P3003558159671779371

namespace A095233

/-- `∑[∑[A001221(A181440(n+1))]]` -/
def P3003558159671779371.Spec : Prop :=
  ∀ n, P3003558159671779371.a n = A095233 (n + 1)

end A095233

/-! ## A095233.P13876715795273479413

`∑[∑[A001222(A007947(n+1))]]+1`
-/

namespace A095233.P13876715795273479413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095233.P13876715795273479413

namespace A095233

/-- `∑[∑[A001222(A007947(n+1))]]+1` -/
def P13876715795273479413.Spec : Prop :=
  ∀ n, P13876715795273479413.a n = A095233 (n + 1)

end A095233

/-! ## A095233.P12954955977624878159

`∑[∑[A001222(A061389(n+1))]]+1`
-/

namespace A095233.P12954955977624878159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A061389 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095233.P12954955977624878159

namespace A095233

/-- `∑[∑[A001222(A061389(n+1))]]+1` -/
def P12954955977624878159.Spec : Prop :=
  ∀ n, P12954955977624878159.a n = A095233 (n + 1)

end A095233

/-! ## A095233.P8082882683958869416

`∑[∑[A001222(A073184(n+1))]]+1`
-/

namespace A095233.P8082882683958869416
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A073184 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095233.P8082882683958869416

namespace A095233

/-- `∑[∑[A001222(A073184(n+1))]]+1` -/
def P8082882683958869416.Spec : Prop :=
  ∀ n, P8082882683958869416.a n = A095233 (n + 1)

end A095233

/-! ## A095233.P8208644742869690255

`∑[∑[A001222(A074816(n+1))]]+1`
-/

namespace A095233.P8208644742869690255
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A074816 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095233.P8208644742869690255

namespace A095233

/-- `∑[∑[A001222(A074816(n+1))]]+1` -/
def P8208644742869690255.Spec : Prop :=
  ∀ n, P8208644742869690255.a n = A095233 (n + 1)

end A095233

/-! ## A095233.P7648994633088569762

`∑[∑[A000005(A007875(n+1))]]-n`
-/

namespace A095233.P7648994633088569762
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A007875 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A095233.P7648994633088569762

namespace A095233

/-- `∑[∑[A000005(A007875(n+1))]]-n` -/
def P7648994633088569762.Spec : Prop :=
  ∀ n, P7648994633088569762.a n = A095233 (n + 1)

end A095233

/-! ## A095233.P10805976390075170331

`∑[comp[A092604(n+1)]]+1`
-/

namespace A095233.P10805976390075170331
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092604 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095233.P10805976390075170331

namespace A095233

/-- `∑[comp[A092604(n+1)]]+1` -/
def P10805976390075170331.Spec : Prop :=
  ∀ n, (P10805976390075170331.a n : ℤ) = A095233 (n + 1)

end A095233

/-! ## A095233.P11239551475567861811

`∑[∑[A106404(2*(n+1))]]+1`
-/

namespace A095233.P11239551475567861811
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A095233.P11239551475567861811

namespace A095233

/-- `∑[∑[A106404(2*(n+1))]]+1` -/
def P11239551475567861811.Spec : Prop :=
  ∀ n, P11239551475567861811.a n = A095233 (n + 1)

end A095233

/-! ## A095233.P4550098638631564086

`∑[A028310(∑[A001221(n+1)])]`
-/

namespace A095233.P4550098638631564086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095233.P4550098638631564086

namespace A095233

/-- `∑[A028310(∑[A001221(n+1)])]` -/
def P4550098638631564086.Spec : Prop :=
  ∀ n, P4550098638631564086.a n = A095233 (n + 1)

end A095233

/-! ## A095233.P3168693257046813535

`∑[∑[A087802(n+1)]]-n`
-/

namespace A095233.P3168693257046813535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087802 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A095233.P3168693257046813535

namespace A095233

/-- `∑[∑[A087802(n+1)]]-n` -/
def P3168693257046813535.Spec : Prop :=
  ∀ n, P3168693257046813535.a n = A095233 (n + 1)

end A095233

/-!
# A095234: a(1) = 1, a(n) = n+a(n-1) if n does not divide a(n-1), else a(n) = n*a(n-1).

The programs for A095234, there is no canonical definition to state claims against.
-/

/-! ## A095234.P9908829108580759062

`A123932(A001809(n))+A055645(A000096(n))`
-/

namespace A095234.P9908829108580759062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 (A001809 n).toNat + A055645 (A000096 n).toNat

end

end A095234.P9908829108580759062

/-! ## A095234.P2193664153793326997

`A123932(A339786(n+1))+A055645(A000096(n))`
-/

namespace A095234.P2193664153793326997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 (A339786 (n + 1)).toNat + A055645 (A000096 n).toNat

end

end A095234.P2193664153793326997

/-!
# A095236: Given a row of n payphones (or phone booths), all initially unused, sequence gives number of ways for n people to choose the payphones assuming each always chooses one of the most distant payphones from those in use already.

The programs for A095236, there is no canonical definition to state claims against.
-/

/-! ## A095236.P17219483170906914229

`2*A390674(a(n-1))` with `a(0)=1`
-/

namespace A095236.P17219483170906914229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A390674 (a (n - 1)).toNat

end

end A095236.P17219483170906914229

/-! ## A095236.P1510857202405428136

`∑[A018332(A000041(n))]`
-/

namespace A095236.P1510857202405428136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018332 (A000041 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095236.P1510857202405428136

/-! ## A095236.P17895130608324902413

`∑[A018332(A002379(n))]`
-/

namespace A095236.P17895130608324902413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018332 (A002379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095236.P17895130608324902413

/-!
# A095237: a(1)=1; then for n even, a(n)=(sum of previous terms times n) plus 1, for n odd, a(n)=(sum of previous terms times n) minus 1.

The programs for A095237, there is no canonical definition to state claims against.
-/

/-! ## A095237.P2663994223363983165

`record[Δ[A002467(n)]]`
-/

namespace A095237.P2663994223363983165
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002467 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095237.P2663994223363983165

/-! ## A095237.P18149374010541865895

`Δ[record[A357586(n+1)]]`
-/

namespace A095237.P18149374010541865895
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357586 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095237.P18149374010541865895

/-! ## A095237.P3157584140896600148

`or(1, Δ[A002467(n+1)])`
-/

namespace A095237.P3157584140896600148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A095237.P3157584140896600148

/-! ## A095237.P10844377523754189954

`Δ[A133798(n+1)]+floor(acot(n))`
-/

namespace A095237.P10844377523754189954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133798 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A095237.P10844377523754189954

/-! ## A095237.P4665249641574991154

`A000007(n)+Δ[A002467(n+1)]`
-/

namespace A095237.P4665249641574991154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002467 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A095237.P4665249641574991154

/-! ## A095237.P17677110547695495842

`record[A002467(n+1)-A002467(n)]`
-/

namespace A095237.P17677110547695495842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002467 (n + 1) - A002467 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095237.P17677110547695495842

/-! ## A095237.P6058466625208712121

`Δ[A002467(A004526(A103517(n)))]`
-/

namespace A095237.P6058466625208712121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002467 (A004526 (A103517 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095237.P6058466625208712121

/-! ## A095237.P16359813109748144713

`record[Δ[A000142(n)-A000166(n)]]`
-/

namespace A095237.P16359813109748144713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A000166 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095237.P16359813109748144713

/-!
# A095238: a(1) = 1, a(n) = n*(sum of all previous terms mod n).

The programs for A095238, there is no canonical definition to state claims against.
-/

/-! ## A095238.P5278379083113351350

`Δ[a(n-1)+n*a(n-1)%n]` with `a(0)=0, a(1)=1`
-/

namespace A095238.P5278379083113351350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + n * (f1 (n - 1) % n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A095238.P5278379083113351350

/-! ## A095238.P16556652438181943621

`(n+1)*A372865(n+1)`
-/

namespace A095238.P16556652438181943621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A372865 (n + 1)

end

end A095238.P16556652438181943621

/-!
# A095239: Analog of A095236 when the phones are arranged in a circle.

The programs for A095239, there is no canonical definition to state claims against.
-/

/-! ## A095239.P16228467953423183097

`(n+1)*A361294(n+1)`
-/

namespace A095239.P16228467953423183097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A361294 (n + 1)

end

end A095239.P16228467953423183097

/-! ## A095239.P2279401401835270370

`(n+1)/2*A095240(n+2)`
-/

namespace A095239.P2279401401835270370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A095240 (n + 2) : ℚ)

end

end A095239.P2279401401835270370

/-! ## A095239.P15608157070741364070

`(n+1)*A014682(A095240(n+2))`
-/

namespace A095239.P15608157070741364070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A014682 (A095240 (n + 2)).toNat

end

end A095239.P15608157070741364070

/-!
# A095240: Variant of A095236, where first two people choose payphones at the ends.

The programs for A095240, there is no canonical definition to state claims against.
-/

/-! ## A095240.P14799823710417416882

`A049099(A178715(3*n+4)+A018609(3*n+1))`
-/

namespace A095240.P14799823710417416882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049099 (A178715 (3 * n + 4) + A018609 (3 * n + 1)).toNat

end

end A095240.P14799823710417416882

/-! ## A095240.P17066477296739041746

`A000003(∏[p?[A122284(n)]])`
-/

namespace A095240.P17066477296739041746
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122284 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A095240.P17066477296739041746

/-! ## A095240.P10138610946149705086

`A000003(∏[p?[A122287(n)]])`
-/

namespace A095240.P10138610946149705086
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122287 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A095240.P10138610946149705086

/-! ## A095240.P13503481705650495872

`A000003(∏[p?[A130400(n)]])`
-/

namespace A095240.P13503481705650495872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130400 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000003 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A095240.P13503481705650495872

/-!
# A095243: a(n) = concatenation of 1,2,3,...,n mod prime(n).

The programs for A095243, there is no canonical definition to state claims against.
-/

/-! ## A095243.P8572036954452682943

`A007908(n+1)%Δ[A007504(n)]`
-/

namespace A095243.P8572036954452682943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007908 (n + 1)) (f1 (n + 1) - f1 n)

end

end A095243.P8572036954452682943

/-! ## A095243.P4304029776546673076

`∑[A078998(n+1)]%A000040(n+1)`
-/

namespace A095243.P4304029776546673076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1))

end

end A095243.P4304029776546673076

/-! ## A095243.P18240439540186256092

`A007908(A000027(n+1))%A000040(n+1)`
-/

namespace A095243.P18240439540186256092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007908 (A000027 (n + 1)).toNat) (A000040 (n + 1))

end

end A095243.P18240439540186256092

/-! ## A095243.P18393738839083384603

`A252043(A033061(n+1))%A000040(n+1)`
-/

namespace A095243.P18393738839083384603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252043 (A033061 (n + 1)).toNat) (A000040 (n + 1))

end

end A095243.P18393738839083384603

/-! ## A095243.P3510056746579987826

`A252043(A058183(n+1))%A000040(n+1)`
-/

namespace A095243.P3510056746579987826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252043 (A058183 (n + 1)).toNat) (A000040 (n + 1))

end

end A095243.P3510056746579987826

/-! ## A095243.P804259758309289471

`A252043(A117804(n+2)-1)%A000040(n+1)`
-/

namespace A095243.P804259758309289471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252043 (A117804 (n + 2) - 1).toNat) (A000040 (n + 1))

end

end A095243.P804259758309289471

/-! ## A095243.P6925281286148461324

`(A000422(n+1)-A019566(n+1))%A000040(n+1)`
-/

namespace A095243.P6925281286148461324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000422 (n + 1) - A019566 (n + 1)) (A000040 (n + 1))

end

end A095243.P6925281286148461324

/-! ## A095243.P1354318288677241027

`(A008578(n+2)+A007908(n+1))%A008578(n+2)`
-/

namespace A095243.P1354318288677241027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008578 (n + 2) + A007908 (n + 1)) (A008578 (n + 2))

end

end A095243.P1354318288677241027

/-!
# A095244: a(n) = concatenation n,n-1,n-2,...,3,2,1 mod (prime(n)).

The programs for A095244, there is no canonical definition to state claims against.
-/

/-! ## A095244.P14062339128776553904

`A000422(n+1)%Δ[A007504(n)]`
-/

namespace A095244.P14062339128776553904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000422 (n + 1)) (f1 (n + 1) - f1 n)

end

end A095244.P14062339128776553904

/-! ## A095244.P9346812479079438253

`(A052246(n+1)/10)%A000040(n+1)`
-/

namespace A095244.P9346812479079438253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A052246 (n + 1) : ℚ) / 10)) (A000040 (n + 1))

end

end A095244.P9346812479079438253

/-! ## A095244.P12740217062341477574

`(A083453(n+1)+(n+1)^(n+1))%A000040(n+1)`
-/

namespace A095244.P12740217062341477574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083453 (n + 1) + ((n + 1) ^ (n + 1) : ℤ)) (A000040 (n + 1))

end

end A095244.P12740217062341477574

/-! ## A095244.P4187400897709725428

`(A019566(n+1)+A007908(n+1))%A000040(n+1)`
-/

namespace A095244.P4187400897709725428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019566 (n + 1) + A007908 (n + 1)) (A000040 (n + 1))

end

end A095244.P4187400897709725428

/-! ## A095244.P721125232120365903

`(A019566(n+1)+∑[A078998(n+1)])%A000040(n+1)`
-/

namespace A095244.P721125232120365903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019566 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j) (A000040 (n + 1))

end

end A095244.P721125232120365903

/-!
# A095245: (Concatenation of first n primes) modulo prime(n).

The programs for A095245, there is no canonical definition to state claims against.
-/

/-! ## A095245.P3596282015287674036

`A019518(n+1)%Δ[A007504(n)]`
-/

namespace A095245.P3596282015287674036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019518 (n + 1)) (f1 (n + 1) - f1 n)

end

end A095245.P3596282015287674036

/-!
# A095248: a(n) = least k > 0 such that n-th partial sum is divisible by n if and only if n is not prime.

The programs for A095248, the canonical program `A095248.P3897611275695587455` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095248 has offset 1).

The definition of A095248 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095248.P3897611275695587455

`Δ[A113638(A113638(n))-(char[1]-n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A095248

/-- `Δ[A113638(A113638(n))-(char[1]-n)]` -/
def P3897611275695587455.Spec : Prop :=
  ∀ n, P3897611275695587455.a n = A095248 (n + 1)

theorem P3897611275695587455.correct : P3897611275695587455.Spec := by
  intro n
  simp only [A095248, Nat.add_sub_cancel]

end A095248

/-! ## A095248.P1814809375302818159

`A001221(A000040(A111446(n+9))-n)`
-/

namespace A095248.P1814809375302818159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000040 (A111446 (n + 9)).toNat - (n : ℤ)).toNat

end

end A095248.P1814809375302818159

namespace A095248

/-- `A001221(A000040(A111446(n+9))-n)` -/
def P1814809375302818159.Spec : Prop :=
  ∀ n, P1814809375302818159.a n = A095248 (n + 1)

end A095248

/-! ## A095248.P17164145874793041981

`∑{d}[A000040(A111446(n+9))-n, A010051(#)]`
-/

namespace A095248.P17164145874793041981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A111446 (n + 9)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A010051 d

end

end A095248.P17164145874793041981

namespace A095248

/-- `∑{d}[A000040(A111446(n+9))-n, A010051(#)]` -/
def P17164145874793041981.Spec : Prop :=
  ∀ n, P17164145874793041981.a n = A095248 (n + 1)

end A095248

/-! ## A095248.P15723007461181253602

`∑{p}[A000040(A111446(n+9))-n, A003415(#)]`
-/

namespace A095248.P15723007461181253602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A111446 (n + 9)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A003415 p

end

end A095248.P15723007461181253602

namespace A095248

/-- `∑{p}[A000040(A111446(n+9))-n, A003415(#)]` -/
def P15723007461181253602.Spec : Prop :=
  ∀ n, P15723007461181253602.a n = A095248 (n + 1)

end A095248

/-! ## A095248.P13450021866075203627

`A001221((n+8)^A001511(n+1)-1)`
-/

namespace A095248.P13450021866075203627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((n + 8 : ℚ) ^ (A001511 (n + 1) : ℤ) - 1)).toNat

end

end A095248.P13450021866075203627

namespace A095248

/-- `A001221((n+8)^A001511(n+1)-1)` -/
def P13450021866075203627.Spec : Prop :=
  ∀ n, P13450021866075203627.a n = A095248 (n + 1)

end A095248

/-!
# A095249: Reverse concatenation of first n positive integers modulo forward concatenation of first n positive integers.

The programs for A095249, there is no canonical definition to state claims against.
-/

/-! ## A095249.P17346549063259918317

`A000422(n+1)%A007908(n+1)`
-/

namespace A095249.P17346549063259918317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000422 (n + 1)) (A007908 (n + 1))

end

end A095249.P17346549063259918317

/-! ## A095249.P14597004291673693927

`(A052246(n+1)/10)%A007908(n+1)`
-/

namespace A095249.P14597004291673693927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A052246 (n + 1) : ℚ) / 10)) (A007908 (n + 1))

end

end A095249.P14597004291673693927

/-! ## A095249.P14156084339708553195

`round(A052246(n+1)/10)%∑[A078998(n+1)]`
-/

namespace A095249.P14156084339708553195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A052246 (n + 1) : ℚ) / 10)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095249.P14156084339708553195

/-! ## A095249.P4821799176121641105

`A000422(2*n+1-n)%∑[A078998(n+1)]`
-/

namespace A095249.P4821799176121641105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000422 (2 * n + 1 - n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095249.P4821799176121641105

/-! ## A095249.P4477014050982982200

`(A083453(n+1)+(n+1)^(n+1))%A007908(n+1)`
-/

namespace A095249.P4477014050982982200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083453 (n + 1) + ((n + 1) ^ (n + 1) : ℤ)) (A007908 (n + 1))

end

end A095249.P4477014050982982200

/-! ## A095249.P2398654842196261609

`(A019566(n+1)+A007908(n+1))%A007908(n+1)`
-/

namespace A095249.P2398654842196261609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A019566 (n + 1) + A007908 (n + 1)) (A007908 (n + 1))

end

end A095249.P2398654842196261609

/-!
# A095250: a(n) = 11111111... (n times) = (10^n-1)/9 reduced mod n.

The programs for A095250, the canonical program `A095250.P1143507560033943151` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095250 has offset 1).

The definition of A095250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095250.P1143507560033943151

`A002275(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A095250

/-- `A002275(n+1)%(n+1)` -/
def P1143507560033943151.Spec : Prop :=
  ∀ n, P1143507560033943151.a n = A095250 (n + 1)

theorem P1143507560033943151.correct : P1143507560033943151.Spec := by
  intro n
  simp only [A095250, Nat.add_sub_cancel]

end A095250

/-! ## A095250.P7392972020527142251

`∑[10^n]%(n+1)`
-/

namespace A095250.P7392972020527142251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A095250.P7392972020527142251

namespace A095250

/-- `∑[10^n]%(n+1)` -/
def P7392972020527142251.Spec : Prop :=
  ∀ n, (P7392972020527142251.a n : ℤ) = A095250 (n + 1)

end A095250

/-! ## A095250.P4588926204865378622

`-(-A069508(n)%(n+1))`
-/

namespace A095250.P4588926204865378622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A069508 n) (n + 1 : ℤ)

end

end A095250.P4588926204865378622

namespace A095250

/-- `-(-A069508(n)%(n+1))` -/
def P4588926204865378622.Spec : Prop :=
  ∀ n, P4588926204865378622.a n = A095250 (n + 1)

end A095250

/-! ## A095250.P12766625750914602229

`-(-A000042(n+1)%(n+1))`
-/

namespace A095250.P12766625750914602229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A000042 (n + 1)) (n + 1 : ℤ)

end

end A095250.P12766625750914602229

namespace A095250

/-- `-(-A000042(n+1)%(n+1))` -/
def P12766625750914602229.Spec : Prop :=
  ∀ n, P12766625750914602229.a n = A095250 (n + 1)

end A095250

/-! ## A095250.P5376333449710457677

`abs(∑[A002283(n)-1]%(n+1))`
-/

namespace A095250.P5376333449710457677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)|

end

end A095250.P5376333449710457677

namespace A095250

/-- `abs(∑[A002283(n)-1]%(n+1))` -/
def P5376333449710457677.Spec : Prop :=
  ∀ n, P5376333449710457677.a n = A095250 (n + 1)

end A095250

/-! ## A095250.P7325499606886334789

`and(A286519(n)%(n+1), A286521(n))`
-/

namespace A095250.P7325499606886334789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (A286519 n) (n + 1 : ℤ)) (A286521 n)

end

end A095250.P7325499606886334789

namespace A095250

/-- `and(A286519(n)%(n+1), A286521(n))` -/
def P7325499606886334789.Spec : Prop :=
  ∀ n, P7325499606886334789.a n = A095250 (n + 1)

end A095250

/-! ## A095250.P2830146598772038583

`A004525(A002276(n+1)%(2*(n+1)))`
-/

namespace A095250.P2830146598772038583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.tmod (A002276 (n + 1)) (2 * (n + 1) : ℤ)).toNat

end

end A095250.P2830146598772038583

namespace A095250

/-- `A004525(A002276(n+1)%(2*(n+1)))` -/
def P2830146598772038583.Spec : Prop :=
  ∀ n, P2830146598772038583.a n = A095250 (n + 1)

end A095250

/-! ## A095250.P820552325444412108

`A002264(3*(A105279(n)+1)%(n+1)+1)`
-/

namespace A095250.P820552325444412108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (3 * Int.tmod (A105279 n + 1) (n + 1 : ℤ) + 1).toNat

end

end A095250.P820552325444412108

namespace A095250

/-- `A002264(3*(A105279(n)+1)%(n+1)+1)` -/
def P820552325444412108.Spec : Prop :=
  ∀ n, P820552325444412108.a n = A095250 (n + 1)

end A095250

/-!
# A095252: a(n) = floor(sqrt{concatenation n,(n-1),...,3,2,1}).

The programs for A095252, there is no canonical definition to state claims against.
-/

/-! ## A095252.P13594406726197913208

`floor(sqrt(A000422(n+1)))`
-/

namespace A095252.P13594406726197913208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000422 (n + 1))

end

end A095252.P13594406726197913208

/-! ## A095252.P1703047457333810774

`floor(root(A000422(n+1), A036453(n+1)))`
-/

namespace A095252.P1703047457333810774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000422 (n + 1) : ℝ) ^ (1 / (A036453 (n + 1) : ℝ))⌋

end

end A095252.P1703047457333810774

/-! ## A095252.P9897699007053406551

`floor(sqrt(A019566(n+1)+A007908(n+1)))`
-/

namespace A095252.P9897699007053406551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A019566 (n + 1) + A007908 (n + 1))

end

end A095252.P9897699007053406551

/-! ## A095252.P7604168581750485991

`floor(A000422(n+1)^2^A316441(A020639(n+1)))`
-/

namespace A095252.P7604168581750485991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000422 (n + 1) : ℝ) ^ ((2 : ℚ) ^ (A316441 (A020639 (n + 1)).toNat : ℤ) : ℝ)⌋

end

end A095252.P7604168581750485991

/-!
# A095253: a(n) = floor(concatenation(n,(n-1),...,3,2,1)^(1/n)).

The programs for A095253, there is no canonical definition to state claims against.
-/

/-! ## A095253.P11818312159704981678

`floor(root(A000422(n+1), n+1))`
-/

namespace A095253.P11818312159704981678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000422 (n + 1) : ℝ) ^ (1 / (n + 1 : ℝ))⌋

end

end A095253.P11818312159704981678

/-! ## A095253.P17300037741303820101

`floor(A095252(n+1)^(2/(n+1)))`
-/

namespace A095253.P17300037741303820101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095252 (n + 1) : ℝ) ^ (2 / (n + 1 : ℚ) : ℝ)⌋

end

end A095253.P17300037741303820101

/-!
# A095254: a(n) = floor(concatenation(1,2,3,...,n-1,n)^(1/n)).

The programs for A095254, there is no canonical definition to state claims against.
-/

/-! ## A095254.P3775502063368090239

`floor(root(A007908(n+1), n+1))`
-/

namespace A095254.P3775502063368090239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007908 (n + 1) : ℝ) ^ (1 / (n + 1 : ℝ))⌋

end

end A095254.P3775502063368090239

/-!
# A095255: a(n) = floor(10^n*log(n)).

The programs for A095255, the canonical program `A095255.P17854800147954555964` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095255 has offset 1).

The definition of A095255 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(10^(n+1)*log(n+1))` (program `A095255.P17854800147954555964`, by `A095255.P17854800147954555964.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095255.P17854800147954555964

`floor(10^(n+1)*log(n+1))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A095255

/-- `floor(10^(n+1)*log(n+1))` -/
def P17854800147954555964.Spec : Prop :=
  ∀ n, P17854800147954555964.a n = A095255 (n + 1)

theorem P17854800147954555964.correct : P17854800147954555964.Spec := by
  intro n
  simp only [A095255, Nat.add_sub_cancel]

end A095255

/-!
# A095256: Number of numbers not divisible by 10 that stay multiples of themselves when freed of their last n digits.

The programs for A095256, the canonical program `A095256.P4900978918232643053` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095256 has offset 1).

The definition of A095256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095256.P4900978918232643053

`A057494(n+1)-(n+2)²`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A095256

/-- `A057494(n+1)-(n+2)²` -/
def P4900978918232643053.Spec : Prop :=
  ∀ n, P4900978918232643053.a n = A095256 (n + 1)

theorem P4900978918232643053.correct : P4900978918232643053.Spec := by
  intro n
  simp only [A095256, Nat.add_sub_cancel]

end A095256

/-! ## A095256.P5725292253086741817

`∑[A174425(n+1)]`
-/

namespace A095256.P5725292253086741817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095256.P5725292253086741817

namespace A095256

/-- `∑[A174425(n+1)]` -/
def P5725292253086741817.Spec : Prop :=
  ∀ n, P5725292253086741817.a n = A095256 (n + 1)

end A095256

/-! ## A095256.P10374709861994329858

`∑[record[A174425(A038569(n))]]`
-/

namespace A095256.P10374709861994329858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174425 (A038569 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095256.P10374709861994329858

namespace A095256

/-- `∑[record[A174425(A038569(n))]]` -/
def P10374709861994329858.Spec : Prop :=
  ∀ n, P10374709861994329858.a n = A095256 (n + 1)

end A095256

/-! ## A095256.P12802001924751945296

`∑[record[A174425(A137734(n))]]`
-/

namespace A095256.P12802001924751945296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174425 (A137734 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095256.P12802001924751945296

namespace A095256

/-- `∑[record[A174425(A137734(n))]]` -/
def P12802001924751945296.Spec : Prop :=
  ∀ n, P12802001924751945296.a n = A095256 (n + 1)

end A095256

/-! ## A095256.P13015638018749559470

`∑[record[A174425(A177849(n))]]`
-/

namespace A095256.P13015638018749559470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174425 (A177849 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095256.P13015638018749559470

namespace A095256

/-- `∑[record[A174425(A177849(n))]]` -/
def P13015638018749559470.Spec : Prop :=
  ∀ n, P13015638018749559470.a n = A095256 (n + 1)

end A095256

/-!
# A095258: a(n+1) is the smallest divisor of (2 + sum of first n terms) but not occurring earlier; a(1) = 1.

The programs for A095258, there is no canonical definition to state claims against.
-/

/-! ## A095258.P451460525899229353

`A350928(n+1)/A350929(n+1)`
-/

namespace A095258.P451460525899229353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350928 (n + 1) : ℚ) / (A350929 (n + 1) : ℚ)

end

end A095258.P451460525899229353

/-! ## A095258.P310132736251059585

`A350928(n+1)/(A308751(n+1)+1)`
-/

namespace A095258.P310132736251059585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350928 (n + 1) : ℚ) / (A308751 (n + 1) + 1 : ℚ)

end

end A095258.P310132736251059585

/-! ## A095258.P14952799805905025756

`A000007(n)+Δ[A350928(A028310(n))]`
-/

namespace A095258.P14952799805905025756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350928 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A095258.P14952799805905025756

/-! ## A095258.P14825727525904312903

`floor(A350928(A028310(n))/A308751(n+1))`
-/

namespace A095258.P14825727525904312903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A350928 (A028310 n).toNat : ℚ) / (A308751 (n + 1) : ℚ)⌋

end

end A095258.P14825727525904312903

/-! ## A095258.P3520577552867361633

`A350928(n+1)+A000007(n)-A350928(A028310(n))`
-/

namespace A095258.P3520577552867361633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350928 (n + 1) + (A000007 n - A350928 (A028310 n).toNat)

end

end A095258.P3520577552867361633

/-! ## A095258.P7074350066398585655

`Δ[A350928(A028310(n))+A057427(n)]`
-/

namespace A095258.P7074350066398585655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350928 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095258.P7074350066398585655

/-!
# A095259: Smallest m such that A095258(m) = n.

The programs for A095259, there is no canonical definition to state claims against.
-/

/-! ## A095259.P15739298174182148166

`A095258(A095261(n+1))`
-/

namespace A095259.P15739298174182148166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095258 (A095261 (n + 1)).toNat

end

end A095259.P15739298174182148166

/-! ## A095259.P13835164621395921692

`A095261(A350928(n+1)/A350929(n+1))`
-/

namespace A095259.P13835164621395921692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095261 (SequenceMachineLib.roundAway ((A350928 (n + 1) : ℚ) / (A350929 (n + 1) : ℚ))).toNat

end

end A095259.P13835164621395921692

/-! ## A095259.P7567954284967795683

`A095261(A350928(n+1)/(A308751(n+1)+1))`
-/

namespace A095259.P7567954284967795683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095261 (SequenceMachineLib.roundAway ((A350928 (n + 1) : ℚ) / (A308751 (n + 1) + 1 : ℚ))).toNat

end

end A095259.P7567954284967795683

/-!
# A095260: a(n) = A095258(A095258(n)).

The programs for A095260, there is no canonical definition to state claims against.
-/

/-! ## A095260.P4131938273599428698

`A095258(A095258(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A095260.P4131938273599428698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095258 (A095258 (n + 1)).toNat

end

end A095260.P4131938273599428698

/-!
# A095261: A095259(A095259(n)).

The programs for A095261, there is no canonical definition to state claims against.
-/

/-! ## A095261.P11384259334724990956

`A095259(A095259(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A095261.P11384259334724990956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095259 (A095259 (n + 1)).toNat

end

end A095261.P11384259334724990956

/-!
# A095262: A sequence derived from a truncated Pascal's Triangle matrix.

The programs for A095262, the canonical program `A095262.P15827602688284101382` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095262 has offset 1).

The definition of A095262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095262.P15827602688284101382

`(7*2^(n+1)-2*3^(2+n+1)+11*4^(n+1))/2`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A095262

/-- `(7*2^(n+1)-2*3^(2+n+1)+11*4^(n+1))/2` -/
def P15827602688284101382.Spec : Prop :=
  ∀ n, P15827602688284101382.a n = (A095262 (n + 1) : ℚ)

end A095262

/-! ## A095262.P1740434345136401168

`A126643(n+1)-A297928(n)`
-/

namespace A095262.P1740434345136401168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126643 (n + 1) - A297928 n

end

end A095262.P1740434345136401168

namespace A095262

/-- `A126643(n+1)-A297928(n)` -/
def P1740434345136401168.Spec : Prop :=
  ∀ n, P1740434345136401168.a n = A095262 (n + 1)

end A095262

/-! ## A095262.P2597648479171653288

`∑[A038721(n+1)+A006516(n)]`
-/

namespace A095262.P2597648479171653288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038721 (n + 1) + A006516 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095262.P2597648479171653288

namespace A095262

/-- `∑[A038721(n+1)+A006516(n)]` -/
def P2597648479171653288.Spec : Prop :=
  ∀ n, P2597648479171653288.a n = A095262 (n + 1)

end A095262

/-! ## A095262.P15206043510504638208

`Δ[A000453(n+4)-A171478(n)]`
-/

namespace A095262.P15206043510504638208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000453 (n + 4) - A171478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095262.P15206043510504638208

namespace A095262

/-- `Δ[A000453(n+4)-A171478(n)]` -/
def P15206043510504638208.Spec : Prop :=
  ∀ n, P15206043510504638208.a n = A095262 (n + 1)

end A095262

/-! ## A095262.P6756366207921287853

`Δ[A032263(n+3)-A006095(n+1)]`
-/

namespace A095262.P6756366207921287853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032263 (n + 3) - A006095 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095262.P6756366207921287853

namespace A095262

/-- `Δ[A032263(n+3)-A006095(n+1)]` -/
def P6756366207921287853.Spec : Prop :=
  ∀ n, P6756366207921287853.a n = A095262 (n + 1)

end A095262

/-! ## A095262.P16703944799148338130

`Δ[A032263(n+3)]-A006516(n+1)`
-/

namespace A095262.P16703944799148338130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032263 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A006516 (n + 1)

end

end A095262.P16703944799148338130

namespace A095262

/-- `Δ[A032263(n+3)]-A006516(n+1)` -/
def P16703944799148338130.Spec : Prop :=
  ∀ n, P16703944799148338130.a n = A095262 (n + 1)

end A095262

/-!
# A095263: a(n+3) = 3*a(n+2) - 2*a(n+1) + a(n), starting with (1, 3, 7).

The programs for A095263, the canonical program `A095263.P8832766277265287307` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095263 has offset 1).

The definition of A095263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095263.P8832766277265287307

`3*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=7`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A095263

/-- `3*a(n-1)-2*a(n-2)+a(n-3)` -/
def P8832766277265287307.Spec : Prop :=
  ∀ n, P8832766277265287307.a n = A095263 (n + 1)

theorem P8832766277265287307.correct : P8832766277265287307.Spec := by
  intro n
  simp only [A095263, Nat.add_sub_cancel]

end A095263

/-! ## A095263.P6967967190906617931

`A000931(3*(n+1)+4)`
-/

namespace A095263.P6967967190906617931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 (3 * (n + 1) + 4)

end

end A095263.P6967967190906617931

namespace A095263

/-- `A000931(3*(n+1)+4)` -/
def P6967967190906617931.Spec : Prop :=
  ∀ n, P6967967190906617931.a n = A095263 (n + 1)

end A095263

/-! ## A095263.P16767095159824803334

`ogf(1/(1-3x+2x^2-x^3))`
-/

namespace A095263.P16767095159824803334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -3, 2, -1] n

end

end A095263.P16767095159824803334

namespace A095263

/-- `ogf(1/(1-3x+2x^2-x^3))` -/
def P16767095159824803334.Spec : Prop :=
  ∀ n, P16767095159824803334.a n = A095263 (n + 1)

end A095263

/-! ## A095263.P14554160308905496188

`∑[A052921(n)]`
-/

namespace A095263.P14554160308905496188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095263.P14554160308905496188

namespace A095263

/-- `∑[A052921(n)]` -/
def P14554160308905496188.Spec : Prop :=
  ∀ n, P14554160308905496188.a n = A095263 (n + 1)

end A095263

/-! ## A095263.P2003920374362368551

`Δ[A181984(n)]`
-/

namespace A095263.P2003920374362368551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095263.P2003920374362368551

namespace A095263

/-- `Δ[A181984(n)]` -/
def P2003920374362368551.Spec : Prop :=
  ∀ n, P2003920374362368551.a n = A095263 (n + 1)

end A095263

/-! ## A095263.P13387874907773364353

`Δ[A034943(n+2)]`
-/

namespace A095263.P13387874907773364353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095263.P13387874907773364353

namespace A095263

/-- `Δ[A034943(n+2)]` -/
def P13387874907773364353.Spec : Prop :=
  ∀ n, P13387874907773364353.a n = A095263 (n + 1)

end A095263

/-! ## A095263.P326791647737198315

`record[A078027(3*n)]`
-/

namespace A095263.P326791647737198315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095263.P326791647737198315

namespace A095263

/-- `record[A078027(3*n)]` -/
def P326791647737198315.Spec : Prop :=
  ∀ n, P326791647737198315.a n = A095263 (n + 1)

end A095263

/-! ## A095263.P11117902750494894291

`A023434(3*n)+1`
-/

namespace A095263.P11117902750494894291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (3 * n) + 1

end

end A095263.P11117902750494894291

namespace A095263

/-- `A023434(3*n)+1` -/
def P11117902750494894291.Spec : Prop :=
  ∀ n, P11117902750494894291.a n = A095263 (n + 1)

end A095263

/-! ## A095263.P7001199787949450659

`A134816(3*(n+1))`
-/

namespace A095263.P7001199787949450659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (3 * (n + 1))

end

end A095263.P7001199787949450659

namespace A095263

/-- `A134816(3*(n+1))` -/
def P7001199787949450659.Spec : Prop :=
  ∀ n, P7001199787949450659.a n = A095263 (n + 1)

end A095263

/-! ## A095263.P7484089929444693864

`A228361(3*n+2)`
-/

namespace A095263.P7484089929444693864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (3 * n + 2)

end

end A095263.P7484089929444693864

namespace A095263

/-- `A228361(3*n+2)` -/
def P7484089929444693864.Spec : Prop :=
  ∀ n, P7484089929444693864.a n = A095263 (n + 1)

end A095263

/-! ## A095263.P4142997082474255282

`A078027(3*(n+3))`
-/

namespace A095263.P4142997082474255282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 (3 * (n + 3))

end

end A095263.P4142997082474255282

namespace A095263

/-- `A078027(3*(n+3))` -/
def P4142997082474255282.Spec : Prop :=
  ∀ n, P4142997082474255282.a n = A095263 (n + 1)

end A095263

/-! ## A095263.P12896224372939889224

`A182097(3*n+4)`
-/

namespace A095263.P12896224372939889224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (3 * n + 4)

end

end A095263.P12896224372939889224

namespace A095263

/-- `A182097(3*n+4)` -/
def P12896224372939889224.Spec : Prop :=
  ∀ n, P12896224372939889224.a n = A095263 (n + 1)

end A095263

/-! ## A095263.P1566844698937644744

`∑[∑[A034943(n+1)]]`
-/

namespace A095263.P1566844698937644744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034943 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095263.P1566844698937644744

namespace A095263

/-- `∑[∑[A034943(n+1)]]` -/
def P1566844698937644744.Spec : Prop :=
  ∀ n, P1566844698937644744.a n = A095263 (n + 1)

end A095263

/-! ## A095263.P8021199719881712058

`∑[∑[A182097(3*n)]]`
-/

namespace A095263.P8021199719881712058
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (3 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095263.P8021199719881712058

namespace A095263

/-- `∑[∑[A182097(3*n)]]` -/
def P8021199719881712058.Spec : Prop :=
  ∀ n, P8021199719881712058.a n = A095263 (n + 1)

end A095263

/-! ## A095263.P2170432821355099158

`∑[A329244(n+1)-1]`
-/

namespace A095263.P2170432821355099158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329244 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095263.P2170432821355099158

namespace A095263

/-- `∑[A329244(n+1)-1]` -/
def P2170432821355099158.Spec : Prop :=
  ∀ n, P2170432821355099158.a n = A095263 (n + 1)

end A095263

/-! ## A095263.P10769405789904264520

`Δ[A052954(3*(n+1))]`
-/

namespace A095263.P10769405789904264520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A095263.P10769405789904264520

namespace A095263

/-- `Δ[A052954(3*(n+1))]` -/
def P10769405789904264520.Spec : Prop :=
  ∀ n, P10769405789904264520.a n = A095263 (n + 1)

end A095263

/-! ## A095263.P3951514103935284393

`∑[A133034(3*(n+3))]`
-/

namespace A095263.P3951514103935284393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (3 * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095263.P3951514103935284393

namespace A095263

/-- `∑[A133034(3*(n+3))]` -/
def P3951514103935284393.Spec : Prop :=
  ∀ n, P3951514103935284393.a n = A095263 (n + 1)

end A095263

/-! ## A095263.P2134455191623189030

`record[A133034(3*n+2)]`
-/

namespace A095263.P2134455191623189030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095263.P2134455191623189030

namespace A095263

/-- `record[A133034(3*n+2)]` -/
def P2134455191623189030.Spec : Prop :=
  ∀ n, P2134455191623189030.a n = A095263 (n + 1)

end A095263

/-! ## A095263.P3238398059032126844

`A133034(3*(n+3)+2)`
-/

namespace A095263.P3238398059032126844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133034 (3 * (n + 3) + 2)

end

end A095263.P3238398059032126844

namespace A095263

/-- `A133034(3*(n+3)+2)` -/
def P3238398059032126844.Spec : Prop :=
  ∀ n, P3238398059032126844.a n = A095263 (n + 1)

end A095263

/-! ## A095263.P12566400282566083895

`A137531(n)-a(n-1)` with `a(0)=1`
-/

namespace A095263.P12566400282566083895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A137531 n - a (n - 1)

end

end A095263.P12566400282566083895

namespace A095263

/-- `A137531(n)-a(n-1)` -/
def P12566400282566083895.Spec : Prop :=
  ∀ n, P12566400282566083895.a n = A095263 (n + 1)

end A095263

/-!
# A095264: a(n) = 2^(n+2) - 3*n - 4.

The programs for A095264, the canonical program `A095264.P12701636073278294309` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095264 has offset 1).

The definition of A095264 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+3)-3*(n+1)-4` (program `A095264.P12701636073278294309`, by `A095264.P12701636073278294309.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A095264.P12701636073278294309

`2^(n+3)-3*(n+1)-4`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A095264

/-- `2^(n+3)-3*(n+1)-4` -/
def P12701636073278294309.Spec : Prop :=
  ∀ n, P12701636073278294309.a n = A095264 (n + 1)

theorem P12701636073278294309.correct : P12701636073278294309.Spec := by
  intro n
  simp only [A095264, Nat.add_sub_cancel]

end A095264

/-! ## A095264.P12731155808593938426

`∑[ogf((1+2x)/(1-3x+2x^2))]`
-/

namespace A095264.P12731155808593938426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -3, 2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095264.P12731155808593938426

namespace A095264

/-- `∑[ogf((1+2x)/(1-3x+2x^2))]` -/
def P12731155808593938426.Spec : Prop :=
  ∀ n, P12731155808593938426.a n = A095264 (n + 1)

end A095264

/-! ## A095264.P17093250584524504756

`ogf((1+2x)/(1-4x+5x^2-2x^3))`
-/

namespace A095264.P17093250584524504756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -4, 5, -2] n

end

end A095264.P17093250584524504756

namespace A095264

/-- `ogf((1+2x)/(1-4x+5x^2-2x^3))` -/
def P17093250584524504756.Spec : Prop :=
  ∀ n, P17093250584524504756.a n = A095264 (n + 1)

end A095264

/-! ## A095264.P7314335358107871864

`record[3-∑[3-2^n]]`
-/

namespace A095264.P7314335358107871864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (2 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095264.P7314335358107871864

namespace A095264

/-- `record[3-∑[3-2^n]]` -/
def P7314335358107871864.Spec : Prop :=
  ∀ n, P7314335358107871864.a n = A095264 (n + 1)

end A095264

/-! ## A095264.P8783126511863859565

`-∑[or(3, -2^(n+2))]`
-/

namespace A095264.P8783126511863859565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (-(2 ^ (n + 2) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095264.P8783126511863859565

namespace A095264

/-- `-∑[or(3, -2^(n+2))]` -/
def P8783126511863859565.Spec : Prop :=
  ∀ n, P8783126511863859565.a n = A095264 (n + 1)

end A095264

/-! ## A095264.P16813227682310067641

`-∑[xor(3, -2^(n+2))]`
-/

namespace A095264.P16813227682310067641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (-(2 ^ (n + 2) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A095264.P16813227682310067641

namespace A095264

/-- `-∑[xor(3, -2^(n+2))]` -/
def P16813227682310067641.Spec : Prop :=
  ∀ n, P16813227682310067641.a n = A095264 (n + 1)

end A095264

/-! ## A095264.P10990348095012860937

`abs(∑[2*a(n-1)+3])` with `a(0)=1`
-/

namespace A095264.P10990348095012860937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095264.P10990348095012860937

namespace A095264

/-- `abs(∑[2*a(n-1)+3])` -/
def P10990348095012860937.Spec : Prop :=
  ∀ n, (P10990348095012860937.a n : ℤ) = A095264 (n + 1)

end A095264

/-! ## A095264.P3584003132468647746

`floor(∑[2*a(n-1)+3])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A095264.P3584003132468647746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095264.P3584003132468647746

namespace A095264

/-- `floor(∑[2*a(n-1)+3])` -/
def P3584003132468647746.Spec : Prop :=
  ∀ n, (P3584003132468647746.a n : ℤ) = A095264 (n + 1)

end A095264

/-! ## A095264.P10880159246984541220

`ceil(∑[2*a(n-1)+3])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A095264.P10880159246984541220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095264.P10880159246984541220

namespace A095264

/-- `ceil(∑[2*a(n-1)+3])` -/
def P10880159246984541220.Spec : Prop :=
  ∀ n, (P10880159246984541220.a n : ℤ) = A095264 (n + 1)

end A095264

/-! ## A095264.P3646675501619567342

`round(∑[2*a(n-1)+3])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A095264.P3646675501619567342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095264.P3646675501619567342

namespace A095264

/-- `round(∑[2*a(n-1)+3])` -/
def P3646675501619567342.Spec : Prop :=
  ∀ n, (P3646675501619567342.a n : ℤ) = A095264 (n + 1)

end A095264

/-! ## A095264.P6632566598108327906

`floor(∑[∑[2*a(n-1)]])` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A095264.P6632566598108327906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  2 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095264.P6632566598108327906

namespace A095264

/-- `floor(∑[∑[2*a(n-1)]])` -/
def P6632566598108327906.Spec : Prop :=
  ∀ n, (P6632566598108327906.a n : ℤ) = A095264 (n + 1)

end A095264

/-! ## A095264.P9895504956613797978

`abs(∑[a(n-1)+a(n-1)+3])` with `a(0)=1`
-/

namespace A095264.P9895504956613797978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095264.P9895504956613797978

namespace A095264

/-- `abs(∑[a(n-1)+a(n-1)+3])` -/
def P9895504956613797978.Spec : Prop :=
  ∀ n, (P9895504956613797978.a n : ℤ) = A095264 (n + 1)

end A095264

/-! ## A095264.P8241598552327740411

`floor(∑[a(n-1)+a(n-1)+3])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A095264.P8241598552327740411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095264.P8241598552327740411

namespace A095264

/-- `floor(∑[a(n-1)+a(n-1)+3])` -/
def P8241598552327740411.Spec : Prop :=
  ∀ n, (P8241598552327740411.a n : ℤ) = A095264 (n + 1)

end A095264

/-! ## A095264.P14216451528914404408

`ceil(∑[a(n-1)+a(n-1)+3])` with `a(0)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A095264.P14216451528914404408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095264.P14216451528914404408

namespace A095264

/-- `ceil(∑[a(n-1)+a(n-1)+3])` -/
def P14216451528914404408.Spec : Prop :=
  ∀ n, (P14216451528914404408.a n : ℤ) = A095264 (n + 1)

end A095264

/-! ## A095264.P4136053347214066233

`round(∑[a(n-1)+a(n-1)+3])` with `a(0)=1`

`round` is left out, it is the identity on integers.
-/

namespace A095264.P4136053347214066233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095264.P4136053347214066233

namespace A095264

/-- `round(∑[a(n-1)+a(n-1)+3])` -/
def P4136053347214066233.Spec : Prop :=
  ∀ n, (P4136053347214066233.a n : ℤ) = A095264 (n + 1)

end A095264

/-! ## A095264.P7770303419847604902

`∑[A036563(n+2)]`
-/

namespace A095264.P7770303419847604902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095264.P7770303419847604902

namespace A095264

/-- `∑[A036563(n+2)]` -/
def P7770303419847604902.Spec : Prop :=
  ∀ n, P7770303419847604902.a n = A095264 (n + 1)

end A095264

/-! ## A095264.P16985175469645625631

`∑[A020707(n)-3]`
-/

namespace A095264.P16985175469645625631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095264.P16985175469645625631

namespace A095264

/-- `∑[A020707(n)-3]` -/
def P16985175469645625631.Spec : Prop :=
  ∀ n, P16985175469645625631.a n = A095264 (n + 1)

end A095264

/-! ## A095264.P4247336922914683153

`∑[A136252(2*n)]`
-/

namespace A095264.P4247336922914683153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136252 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095264.P4247336922914683153

namespace A095264

/-- `∑[A136252(2*n)]` -/
def P4247336922914683153.Spec : Prop :=
  ∀ n, P4247336922914683153.a n = A095264 (n + 1)

end A095264

/-! ## A095264.P17916588958514683870

`∑[A185647(2*n)]`
-/

namespace A095264.P17916588958514683870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185647 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095264.P17916588958514683870

namespace A095264

/-- `∑[A185647(2*n)]` -/
def P17916588958514683870.Spec : Prop :=
  ∀ n, P17916588958514683870.a n = A095264 (n + 1)

end A095264

/-! ## A095264.P11487652424161543005

`∑[A020737(n)-4]`
-/

namespace A095264.P11487652424161543005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020737 n - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095264.P11487652424161543005

namespace A095264

/-- `∑[A020737(n)-4]` -/
def P11487652424161543005.Spec : Prop :=
  ∀ n, P11487652424161543005.a n = A095264 (n + 1)

end A095264

/-!
# A095265: A sequence generated from a 4th degree Pascal's Triangle polynomial.

The programs for A095265, the canonical program `A095265.P18274785834282065657` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095265 has offset 1).

The definition of A095265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A095265.P18274785834282065657

`(20*(n+1)²-30*(n+1)+13)*(n+1)/3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A095265

/-- `(20*(n+1)²-30*(n+1)+13)*(n+1)/3` -/
def P18274785834282065657.Spec : Prop :=
  ∀ n, P18274785834282065657.a n = (A095265 (n + 1) : ℚ)

end A095265

/-! ## A095265.P777211342156650224

`∑[20*n²]-xor(n, -1)`
-/

namespace A095265.P777211342156650224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.xor (n : ℤ) (-1)

end

end A095265.P777211342156650224

namespace A095265

/-- `∑[20*n²]-xor(n, -1)` -/
def P777211342156650224.Spec : Prop :=
  ∀ n, P777211342156650224.a n = A095265 (n + 1)

end A095265

/-! ## A095265.P6944899796316708400

`a(n-1)+20*n²+1` with `a(0)=1`
-/

namespace A095265.P6944899796316708400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (20 * n ^ 2 + 1)

end

end A095265.P6944899796316708400

namespace A095265

/-- `a(n-1)+20*n²+1` -/
def P6944899796316708400.Spec : Prop :=
  ∀ n, (P6944899796316708400.a n : ℤ) = A095265 (n + 1)

end A095265

/-! ## A095265.P409901860388057647

`5*C(2*(n+1), 3)+n+1`
-/

namespace A095265.P409901860388057647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * Nat.choose (2 * (n + 1)) 3 + (n + 1)

end

end A095265.P409901860388057647

namespace A095265

/-- `5*C(2*(n+1), 3)+n+1` -/
def P409901860388057647.Spec : Prop :=
  ∀ n, (P409901860388057647.a n : ℤ) = A095265 (n + 1)

end A095265

/-! ## A095265.P3545711371959920209

`∑[A158493(n)]`
-/

namespace A095265.P3545711371959920209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158493 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095265.P3545711371959920209

namespace A095265

/-- `∑[A158493(n)]` -/
def P3545711371959920209.Spec : Prop :=
  ∀ n, P3545711371959920209.a n = A095265 (n + 1)

end A095265

/-! ## A095265.P16134292440646390388

`∑[A195322(n)+1]`
-/

namespace A095265.P16134292440646390388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195322 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095265.P16134292440646390388

namespace A095265

/-- `∑[A195322(n)+1]` -/
def P16134292440646390388.Spec : Prop :=
  ∀ n, P16134292440646390388.a n = A095265 (n + 1)

end A095265

/-! ## A095265.P2863107464175065881

`∑[A010010(n)]-n`
-/

namespace A095265.P2863107464175065881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A095265.P2863107464175065881

namespace A095265

/-- `∑[A010010(n)]-n` -/
def P2863107464175065881.Spec : Prop :=
  ∀ n, P2863107464175065881.a n = A095265 (n + 1)

end A095265

/-! ## A095265.P8970232505965905473

`A188050(n)+1+n`
-/

namespace A095265.P8970232505965905473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188050 n + 1 + (n : ℤ)

end

end A095265.P8970232505965905473

namespace A095265

/-- `A188050(n)+1+n` -/
def P8970232505965905473.Spec : Prop :=
  ∀ n, P8970232505965905473.a n = A095265 (n + 1)

end A095265

/-! ## A095265.P5905075822856259859

`A063497(n)/3+n+1`
-/

namespace A095265.P5905075822856259859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063497 n : ℚ) / 3 + (n + 1 : ℚ)

end

end A095265.P5905075822856259859

namespace A095265

/-- `A063497(n)/3+n+1` -/
def P5905075822856259859.Spec : Prop :=
  ∀ n, P5905075822856259859.a n = (A095265 (n + 1) : ℚ)

end A095265

/-! ## A095265.P7234848072186941107

`∑[2*n*A008592(n)]+1+n`
-/

namespace A095265.P7234848072186941107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A008592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A095265.P7234848072186941107

namespace A095265

/-- `∑[2*n*A008592(n)]+1+n` -/
def P7234848072186941107.Spec : Prop :=
  ∀ n, P7234848072186941107.a n = A095265 (n + 1)

end A095265

/-! ## A095265.P4797031576055255695

`A371532(n)+A014105(n)`
-/

namespace A095265.P4797031576055255695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371532 n + A014105 n

end

end A095265.P4797031576055255695

namespace A095265

/-- `A371532(n)+A014105(n)` -/
def P4797031576055255695.Spec : Prop :=
  ∀ n, P4797031576055255695.a n = A095265 (n + 1)

end A095265

/-! ## A095265.P13092907966183465776

`A016755(n)-A050533(n)`
-/

namespace A095265.P13092907966183465776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 n - A050533 n

end

end A095265.P13092907966183465776

namespace A095265

/-- `A016755(n)-A050533(n)` -/
def P13092907966183465776.Spec : Prop :=
  ∀ n, P13092907966183465776.a n = A095265 (n + 1)

end A095265

/-! ## A095265.P1326939990228178869

`A169711(n+1)+A006331(n)`
-/

namespace A095265.P1326939990228178869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169711 (n + 1) + A006331 n

end

end A095265.P1326939990228178869

namespace A095265

/-- `A169711(n+1)+A006331(n)` -/
def P1326939990228178869.Spec : Prop :=
  ∀ n, P1326939990228178869.a n = A095265 (n + 1)

end A095265

/-! ## A095265.P1418582280076446119

`A275709(n)+A063494(n+1)`
-/

namespace A095265.P1418582280076446119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275709 n + A063494 (n + 1)

end

end A095265.P1418582280076446119

namespace A095265

/-- `A275709(n)+A063494(n+1)` -/
def P1418582280076446119.Spec : Prop :=
  ∀ n, P1418582280076446119.a n = A095265 (n + 1)

end A095265

/-! ## A095265.P17887695147685049301

`A268684(n)+A213839(n+1)`
-/

namespace A095265.P17887695147685049301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268684 n + A213839 (n + 1)

end

end A095265.P17887695147685049301

namespace A095265

/-- `A268684(n)+A213839(n+1)` -/
def P17887695147685049301.Spec : Prop :=
  ∀ n, P17887695147685049301.a n = A095265 (n + 1)

end A095265

/-! ## A095265.P15611841176054554356

`A100161(n+1)-A046092(n)`
-/

namespace A095265.P15611841176054554356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100161 (n + 1) - A046092 n

end

end A095265.P15611841176054554356

namespace A095265

/-- `A100161(n+1)-A046092(n)` -/
def P15611841176054554356.Spec : Prop :=
  ∀ n, P15611841176054554356.a n = A095265 (n + 1)

end A095265

/-! ## A095265.P3246694849498630083

`A015219(n)-A268201(n+1)`
-/

namespace A095265.P3246694849498630083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015219 n - A268201 (n + 1)

end

end A095265.P3246694849498630083

namespace A095265

/-- `A015219(n)-A268201(n+1)` -/
def P3246694849498630083.Spec : Prop :=
  ∀ n, P3246694849498630083.a n = A095265 (n + 1)

end A095265

/-! ## A095265.P7980509392969431448

`A100163(n+1)-A210440(n)`
-/

namespace A095265.P7980509392969431448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100163 (n + 1) - A210440 n

end

end A095265.P7980509392969431448

namespace A095265

/-- `A100163(n+1)-A210440(n)` -/
def P7980509392969431448.Spec : Prop :=
  ∀ n, P7980509392969431448.a n = A095265 (n + 1)

end A095265

/-! ## A095265.P354384270394742581

`A050492(n+1)+A268201(n+1)-A050533(n)`
-/

namespace A095265.P354384270394742581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050492 (n + 1) + (A268201 (n + 1) - A050533 n)

end

end A095265.P354384270394742581

namespace A095265

/-- `A050492(n+1)+A268201(n+1)-A050533(n)` -/
def P354384270394742581.Spec : Prop :=
  ∀ n, P354384270394742581.a n = A095265 (n + 1)

end A095265

/-! ## A095265.P17968892835747720868

`A100187(n+1)+A100187(n+1)-A007588(n+1)`
-/

namespace A095265.P17968892835747720868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100187 (n + 1) + (A100187 (n + 1) - A007588 (n + 1))

end

end A095265.P17968892835747720868

namespace A095265

/-- `A100187(n+1)+A100187(n+1)-A007588(n+1)` -/
def P17968892835747720868.Spec : Prop :=
  ∀ n, P17968892835747720868.a n = A095265 (n + 1)

end A095265

/-!
# A095266: A sequence generated from the Narayana triangle considered as a matrix, or from Pascal's triangle.

The programs for A095266, the canonical program `A095266.P16673346761263433357` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095266 has offset 1).

The definition of A095266 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095266.P16673346761263433357

`∑[5*n*A005897(n)+1]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A095266

/-- `∑[5*n*A005897(n)+1]` -/
def P16673346761263433357.Spec : Prop :=
  ∀ n, P16673346761263433357.a n = A095266 (n + 1)

theorem P16673346761263433357.correct : P16673346761263433357.Spec := by
  intro n
  simp only [A095266, Nat.add_sub_cancel]

end A095266

/-! ## A095266.P4581161624084846306

`5*n*∑[A038764(n)]+n+1`
-/

namespace A095266.P4581161624084846306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)) + (n + 1 : ℤ)

end

end A095266.P4581161624084846306

namespace A095266

/-- `5*n*∑[A038764(n)]+n+1` -/
def P4581161624084846306.Spec : Prop :=
  ∀ n, P4581161624084846306.a n = A095266 (n + 1)

end A095266

/-! ## A095266.P5908531265355499137

`5*n*A100175(n+1)+n+1`
-/

namespace A095266.P5908531265355499137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((n : ℤ) * A100175 (n + 1)) + (n + 1 : ℤ)

end

end A095266.P5908531265355499137

namespace A095266

/-- `5*n*A100175(n+1)+n+1` -/
def P5908531265355499137.Spec : Prop :=
  ∀ n, P5908531265355499137.a n = A095266 (n + 1)

end A095266

/-! ## A095266.P10796551974260501322

`A003215(n)*A005891(n)-A161680(n)`
-/

namespace A095266.P10796551974260501322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n * A005891 n - A161680 n

end

end A095266.P10796551974260501322

namespace A095266

/-- `A003215(n)*A005891(n)-A161680(n)` -/
def P10796551974260501322.Spec : Prop :=
  ∀ n, P10796551974260501322.a n = A095266 (n + 1)

end A095266

/-! ## A095266.P520166643739255365

`∑[A212133(2*n)+A155883(n+1)]`
-/

namespace A095266.P520166643739255365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212133 (2 * n) + A155883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A095266.P520166643739255365

namespace A095266

/-- `∑[A212133(2*n)+A155883(n+1)]` -/
def P520166643739255365.Spec : Prop :=
  ∀ n, P520166643739255365.a n = A095266 (n + 1)

end A095266

/-! ## A095266.P12020449189933579261

`∑[n]+A220083(A005843(∑[n]))+n`
-/

namespace A095266.P12020449189933579261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A220083 (A005843 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat + (n : ℤ))

end

end A095266.P12020449189933579261

namespace A095266

/-- `∑[n]+A220083(A005843(∑[n]))+n` -/
def P12020449189933579261.Spec : Prop :=
  ∀ n, P12020449189933579261.a n = A095266 (n + 1)

end A095266

/-! ## A095266.P8259571782068292367

`A220083(A002378(n))+A000096(n)`
-/

namespace A095266.P8259571782068292367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220083 (A002378 n).toNat + A000096 n

end

end A095266.P8259571782068292367

namespace A095266

/-- `A220083(A002378(n))+A000096(n)` -/
def P8259571782068292367.Spec : Prop :=
  ∀ n, P8259571782068292367.a n = A095266 (n + 1)

end A095266

/-! ## A095266.P437829282285874250

`A220083(A005843(∑[n]))+A000096(n)`
-/

namespace A095266.P437829282285874250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220083 (A005843 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat + A000096 n

end

end A095266.P437829282285874250

namespace A095266

/-- `A220083(A005843(∑[n]))+A000096(n)` -/
def P437829282285874250.Spec : Prop :=
  ∀ n, P437829282285874250.a n = A095266 (n + 1)

end A095266

/-! ## A095266.P1327393636038530931

`A220083(A002378(n))+record[A061579(n)]`
-/

namespace A095266.P1327393636038530931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220083 (A002378 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095266.P1327393636038530931

namespace A095266

/-- `A220083(A002378(n))+record[A061579(n)]` -/
def P1327393636038530931.Spec : Prop :=
  ∀ n, P1327393636038530931.a n = A095266 (n + 1)

end A095266

/-! ## A095266.P12757038028024066017

`A214429(A016754(n))-A005449(n)`
-/

namespace A095266.P12757038028024066017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214429 (A016754 n).toNat - A005449 n

end

end A095266.P12757038028024066017

namespace A095266

/-- `A214429(A016754(n))-A005449(n)` -/
def P12757038028024066017.Spec : Prop :=
  ∀ n, P12757038028024066017.a n = A095266 (n + 1)

end A095266

/-!
# A095267: Least perimeter common to 2^n primitive arithmetic triangles, i.e., Heronian triangles whose sides are in arithmetic progression.

The programs for A095267, the canonical program `A095267.P18193578268484008841` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095267 has offset 0).

The definition of A095267 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002476, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A095267.P15752095356233460892

`3*A095288(n)`
-/

namespace A095267.P15752095356233460892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A095288 n

end

end A095267.P15752095356233460892

namespace A095267

/-- `3*A095288(n)` -/
def P15752095356233460892.Spec : Prop :=
  ∀ n, P15752095356233460892.a n = A095267 n

end A095267

/-! ## A095267.P18193578268484008841

`a(n-1)*A002476(n)` with `a(0)=12`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A095267

/-- `a(n-1)*A002476(n)` -/
def P18193578268484008841.Spec : Prop :=
  ∀ n, P18193578268484008841.a n = A095267 n

theorem P18193578268484008841.correct : P18193578268484008841.Spec := by
  intro n
  simp only [A095267]

end A095267

/-! ## A095267.P5470032908622955823

`4*∏[p?[or(1, 3*n)]]`
-/

namespace A095267.P5470032908622955823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A095267.P5470032908622955823

namespace A095267

/-- `4*∏[p?[or(1, 3*n)]]` -/
def P5470032908622955823.Spec : Prop :=
  ∀ n, (P5470032908622955823.a n : ℤ) = A095267 n

end A095267

/-! ## A095267.P16230899329513979738

`6*∏[p?[xor(1, 3*n)]]`
-/

namespace A095267.P16230899329513979738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A095267.P16230899329513979738

namespace A095267

/-- `6*∏[p?[xor(1, 3*n)]]` -/
def P16230899329513979738.Spec : Prop :=
  ∀ n, (P16230899329513979738.a n : ℤ) = A095267 n

end A095267

/-! ## A095267.P3655796085436047569

`4*∏[p?[comp[3*n-1]]]`
-/

namespace A095267.P3655796085436047569
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A095267.P3655796085436047569

namespace A095267

/-- `4*∏[p?[comp[3*n-1]]]` -/
def P3655796085436047569.Spec : Prop :=
  ∀ n, (P3655796085436047569.a n : ℤ) = A095267 n

end A095267

/-!
# A095268: Number of distinct degree sequences among all n-vertex graphs with no isolated vertices.

The programs for A095268, there is no canonical definition to state claims against.
-/

/-! ## A095268.P2890933953923249729

`A008676(xor(4, A071728(n)))`
-/

namespace A095268.P2890933953923249729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (Int.xor 4 (A071728 n)).toNat

end

end A095268.P2890933953923249729

/-! ## A095268.P5677086851186353138

`A230418(A307413(n))-A000045(n)`
-/

namespace A095268.P5677086851186353138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230418 (A307413 n).toNat - A000045 n

end

end A095268.P5677086851186353138

/-! ## A095268.P5860486759813129949

`A008618(A028495(n)*A062709(n))`
-/

namespace A095268.P5860486759813129949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A028495 n * A062709 n).toNat

end

end A095268.P5860486759813129949

/-! ## A095268.P956132921940655332

`A230418(A271844(n+1))-A000045(n)`
-/

namespace A095268.P956132921940655332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230418 (A271844 (n + 1)).toNat - A000045 n

end

end A095268.P956132921940655332

/-!
# A095269: Diving index of 4n+3.

The programs for A095269, there is no canonical definition to state claims against.
-/

/-! ## A095269.P12948792643855467374

`(A095270(n+1)+1)%Δ[n*(2*n+1)]`
-/

namespace A095269.P12948792643855467374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095270 (n + 1) + 1) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A095269.P12948792643855467374

/-! ## A095269.P16317353499954216001

`A002262(A095270(n+1)+A084849(n))`
-/

namespace A095269.P16317353499954216001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A095270 (n + 1) + A084849 n).toNat

end

end A095269.P16317353499954216001

/-! ## A095269.P8279469051310068113

`A020725(A095270(n+1))%A004767(n)`
-/

namespace A095269.P8279469051310068113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020725 (A095270 (n + 1)).toNat) (A004767 n)

end

end A095269.P8279469051310068113

/-! ## A095269.P16086097543141593629

`A002262(A095270(n+1)+A000124(2*n))`
-/

namespace A095269.P16086097543141593629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A095270 (n + 1) + A000124 (2 * n)).toNat

end

end A095269.P16086097543141593629

/-! ## A095269.P16703472196841493527

`A016825(n)%(A095270(n+1)-A016813(n))`
-/

namespace A095269.P16703472196841493527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016825 n) (A095270 (n + 1) - A016813 n)

end

end A095269.P16703472196841493527

/-!
# A095270: Length of maximal Motzkin path prefix in the Jacobi-vector of 4n+3.

The programs for A095270, there is no canonical definition to state claims against.
-/

/-! ## A095270.P8389030668650259476

`(A095269(n)+A016825(n))%A004767(n)`
-/

namespace A095270.P8389030668650259476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095269 n + A016825 n) (A004767 n)

end

end A095270.P8389030668650259476

/-! ## A095270.P756280875286249844

`gcd(4*n+2, A230840(A072345(n+1)))`
-/

namespace A095270.P756280875286249844
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * n + 2 : ℤ) (A230840 (A072345 (n + 1)).toNat)

end

end A095270.P756280875286249844

/-! ## A095270.P2794610951232011601

`gcd(A016825(n), A023931(A174465(n)))`
-/

namespace A095270.P2794610951232011601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016825 n) (A023931 (A174465 n).toNat)

end

end A095270.P2794610951232011601

/-! ## A095270.P5750341078980090924

`A016825(n)%A112683(A112656(n+1))`
-/

namespace A095270.P5750341078980090924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016825 n) (A112683 (A112656 (n + 1)).toNat)

end

end A095270.P5750341078980090924

/-! ## A095270.P7032067433388161292

`A366244(A143036(n+1)+1)`
-/

namespace A095270.P7032067433388161292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366244 (A143036 (n + 1) + 1).toNat

end

end A095270.P7032067433388161292

/-!
# A095271: Diving index of A095101(n).

The programs for A095271, there is no canonical definition to state claims against.
-/

/-! ## A095271.P8369068532173350766

`A095269(A095275(n))`
-/

namespace A095271.P8369068532173350766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095269 (A095275 n).toNat

end

end A095271.P8369068532173350766

/-! ## A095271.P9841881233517580464

`A095269(comp[A095274(n)])`
-/

namespace A095271.P9841881233517580464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095274 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095269 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A095271.P9841881233517580464

/-! ## A095271.P12813978245236820395

`A095269(lt[0, A095269(n)])`
-/

namespace A095271.P12813978245236820395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095269 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A095271.P12813978245236820395

/-! ## A095271.P9158281585328867930

`filter[A095269(n), A023532(#)]`
-/

namespace A095271.P9158281585328867930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A023532 (f1 j).toNat = 1) n)

end

end A095271.P9158281585328867930

/-! ## A095271.P9503298220403587676

`filter[A095269(n), A097325(#)]`
-/

namespace A095271.P9503298220403587676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A095271.P9503298220403587676

/-!
# A095272: a(n) = (A095102(n)-3)/4.

The programs for A095272, there is no canonical definition to state claims against.
-/

/-! ## A095272.P11992215089298623074

`(A095102(n+1)-3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A095272.P11992215089298623074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095102 (n + 1) - 3 : ℚ) / 4

end

end A095272.P11992215089298623074

/-! ## A095272.P5240412383475903835

`floor(A095102(n+1)/4)`
-/

namespace A095272.P5240412383475903835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095102 (n + 1) : ℚ) / 4⌋

end

end A095272.P5240412383475903835

/-! ## A095272.P15953450077797561066

`floor(p?[A095100(n+1)]/4)`
-/

namespace A095272.P15953450077797561066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4⌋

end

end A095272.P15953450077797561066

/-! ## A095272.P4772329566435638122

`A002265(A095102(n+1))`
-/

namespace A095272.P4772329566435638122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A095102 (n + 1)).toNat

end

end A095272.P4772329566435638122

/-! ## A095272.P6095309071682429664

`A002265(p?[A095100(n+1)])`
-/

namespace A095272.P6095309071682429664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095272.P6095309071682429664

/-! ## A095272.P3517531255178732830

`A026922(p?[A095100(n+1)])`
-/

namespace A095272.P3517531255178732830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095272.P3517531255178732830

/-! ## A095272.P18356098467310221918

`A110657(p?[A095100(n+1)])`
-/

namespace A095272.P18356098467310221918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095100 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095272.P18356098467310221918

/-! ## A095272.P7728163315606180533

`A008624(A095102(n+1)-2)`
-/

namespace A095272.P7728163315606180533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A095102 (n + 1) - 2).toNat

end

end A095272.P7728163315606180533

/-! ## A095272.P15271667844324263394

`A025480(A095102(n+1)-2)`
-/

namespace A095272.P15271667844324263394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A095102 (n + 1) - 2).toNat

end

end A095272.P15271667844324263394

/-! ## A095272.P1344716824608960734

`floor(record[A006530(2*A095100(n+1))]/4)`
-/

namespace A095272.P1344716824608960734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A095100 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 4⌋

end

end A095272.P1344716824608960734

/-!
# A095273: a(n) = (A095103(n)-3)/4.

The programs for A095273, there is no canonical definition to state claims against.
-/

/-! ## A095273.P9667757744658441660

`(A095103(n+1)-3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A095273.P9667757744658441660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095103 (n + 1) - 3 : ℚ) / 4

end

end A095273.P9667757744658441660

/-! ## A095273.P4136226726006634792

`floor(A095103(n+1)/4)`
-/

namespace A095273.P4136226726006634792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095103 (n + 1) : ℚ) / 4⌋

end

end A095273.P4136226726006634792

/-! ## A095273.P6828594016056377378

`A002265(A095103(n+1))`
-/

namespace A095273.P6828594016056377378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A095103 (n + 1)).toNat

end

end A095273.P6828594016056377378

/-! ## A095273.P1900090958717953056

`A059169(A095103(n+1)+1)`
-/

namespace A095273.P1900090958717953056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A095103 (n + 1) + 1).toNat

end

end A095273.P1900090958717953056

/-!
# A095274: a(n) = (A095100(n)-3)/4.

The programs for A095274, there is no canonical definition to state claims against.
-/

/-! ## A095274.P15897377252961692331

`(A095100(n+1)-3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A095274.P15897377252961692331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095100 (n + 1) - 3 : ℚ) / 4

end

end A095274.P15897377252961692331

/-! ## A095274.P5870616719554429099

`comp[A095275(n)]`
-/

namespace A095274.P5870616719554429099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095274.P5870616719554429099

/-! ## A095274.P371718526273701204

`floor(A095100(n+1)/4)`
-/

namespace A095274.P371718526273701204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095100 (n + 1) : ℚ) / 4⌋

end

end A095274.P371718526273701204

/-! ## A095274.P8142818719484993691

`comp[floor(A095101(n+1)/4)]`
-/

namespace A095274.P8142818719484993691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095101 (n + 1) : ℚ) / 4⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095274.P8142818719484993691

/-! ## A095274.P2503059509589886203

`A002265(A095100(n+1))`
-/

namespace A095274.P2503059509589886203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A095100 (n + 1)).toNat

end

end A095274.P2503059509589886203

/-! ## A095274.P9146705584317378941

`comp[A002265(A095101(n+1))]`
-/

namespace A095274.P9146705584317378941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A095101 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095274.P9146705584317378941

/-! ## A095274.P10801725616414659877

`A110659(A095100(n+1)-1)`
-/

namespace A095274.P10801725616414659877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 (A095100 (n + 1) - 1).toNat

end

end A095274.P10801725616414659877

/-! ## A095274.P2412767083710719942

`A008624(A095100(n+1)-2)`
-/

namespace A095274.P2412767083710719942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A095100 (n + 1) - 2).toNat

end

end A095274.P2412767083710719942

/-! ## A095274.P1854145115066423210

`A025480(A095100(n+1)-2)`
-/

namespace A095274.P1854145115066423210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A095100 (n + 1) - 2).toNat

end

end A095274.P1854145115066423210

/-! ## A095274.P2863460049181314731

`A008624(xor(2, A095100(n+1)))`
-/

namespace A095274.P2863460049181314731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (Int.xor 2 (A095100 (n + 1))).toNat

end

end A095274.P2863460049181314731

/-!
# A095275: a(n) = (A095101(n)-3)/4.

The programs for A095275, there is no canonical definition to state claims against.
-/

/-! ## A095275.P7470196574480866457

`(A095101(n+1)-3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A095275.P7470196574480866457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095101 (n + 1) - 3 : ℚ) / 4

end

end A095275.P7470196574480866457

/-! ## A095275.P10038986038750703003

`comp[floor(A095100(n+1)/4)]`
-/

namespace A095275.P10038986038750703003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095100 (n + 1) : ℚ) / 4⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095275.P10038986038750703003

/-! ## A095275.P1707108575990680217

`comp[A002265(A095100(n+1))]`
-/

namespace A095275.P1707108575990680217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A095100 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095275.P1707108575990680217

/-! ## A095275.P5488320229442345615

`comp[A110659(A095100(n+1)-1)]`
-/

namespace A095275.P5488320229442345615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 (A095100 (n + 1) - 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095275.P5488320229442345615

/-! ## A095275.P4855755997467802955

`comp[A008624(A095100(n+1)-2)]`
-/

namespace A095275.P4855755997467802955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A095100 (n + 1) - 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095275.P4855755997467802955

/-! ## A095275.P4314960196866332700

`comp[A025480(A095100(n+1)-2)]`
-/

namespace A095275.P4314960196866332700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A095100 (n + 1) - 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095275.P4314960196866332700

/-! ## A095275.P8075960475052194418

`floor(A095101(n+1)/4)`
-/

namespace A095275.P8075960475052194418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095101 (n + 1) : ℚ) / 4⌋

end

end A095275.P8075960475052194418

/-! ## A095275.P6335973021036905410

`A002265(A095101(n+1))`
-/

namespace A095275.P6335973021036905410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A095101 (n + 1)).toNat

end

end A095275.P6335973021036905410

/-! ## A095275.P10300184727440925361

`A110659(A095101(n+1)-1)`
-/

namespace A095275.P10300184727440925361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 (A095101 (n + 1) - 1).toNat

end

end A095275.P10300184727440925361

/-!
# A095276: Length of n-th run of identical symbols in A095076 and A095111.

The programs for A095276, the canonical program `A095276.P17420157782506279644` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095276 has offset 1).

The definition of A095276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5529 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095276.P17420157782506279644

`Δ[record[A087960(A035614(n+1))+n]]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A095276

/-- `Δ[record[A087960(A035614(n+1))+n]]` -/
def P17420157782506279644.Spec : Prop :=
  ∀ n, P17420157782506279644.a n = A095276 (n + 1)

theorem P17420157782506279644.correct : P17420157782506279644.Spec := by
  intro n
  simp only [A095276, Nat.add_sub_cancel]

end A095276

/-!
# A095277: Numbers k such that 4*k + 3 is composite.

The programs for A095277, the canonical program `A095277.P5907375442901881161` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095277 has offset 1).

The definition of A095277 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091236, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A095277.P5907375442901881161

`(A091236(n+1)-3)/4`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A095277

/-- `(A091236(n+1)-3)/4` -/
def P5907375442901881161.Spec : Prop :=
  ∀ n, P5907375442901881161.a n = (A095277 (n + 1) : ℚ)

end A095277

/-! ## A095277.P4695014984167510160

`comp[A095278(n+1)]`
-/

namespace A095277.P4695014984167510160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095277.P4695014984167510160

namespace A095277

/-- `comp[A095278(n+1)]` -/
def P4695014984167510160.Spec : Prop :=
  ∀ n, (P4695014984167510160.a n : ℤ) = A095277 (n + 1)

end A095277

/-! ## A095277.P2903832454547880602

`A153086(n+1)+1`
-/

namespace A095277.P2903832454547880602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153086 (n + 1) + 1

end

end A095277.P2903832454547880602

namespace A095277

/-- `A153086(n+1)+1` -/
def P2903832454547880602.Spec : Prop :=
  ∀ n, P2903832454547880602.a n = A095277 (n + 1)

end A095277

/-! ## A095277.P9332678294790112423

`A045752(n+1)-1`
-/

namespace A095277.P9332678294790112423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045752 (n + 1) - 1

end

end A095277.P9332678294790112423

namespace A095277

/-- `A045752(n+1)-1` -/
def P9332678294790112423.Spec : Prop :=
  ∀ n, P9332678294790112423.a n = A095277 (n + 1)

end A095277

/-! ## A095277.P13563440918247641471

`lt[1, A067760(2*n)]`
-/

namespace A095277.P13563440918247641471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A095277.P13563440918247641471

namespace A095277

/-- `lt[1, A067760(2*n)]` -/
def P13563440918247641471.Spec : Prop :=
  ∀ n, (P13563440918247641471.a n : ℤ) = A095277 (n + 1)

end A095277

/-! ## A095277.P2829259656617035719

`comp[A089986(n+1)+1]`
-/

namespace A095277.P2829259656617035719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095277.P2829259656617035719

namespace A095277

/-- `comp[A089986(n+1)+1]` -/
def P2829259656617035719.Spec : Prop :=
  ∀ n, (P2829259656617035719.a n : ℤ) = A095277 (n + 1)

end A095277

/-! ## A095277.P12946728591735863905

`comp[A156287(n+1)-2]`
-/

namespace A095277.P12946728591735863905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A095277.P12946728591735863905

namespace A095277

/-- `comp[A156287(n+1)-2]` -/
def P12946728591735863905.Spec : Prop :=
  ∀ n, (P12946728591735863905.a n : ℤ) = A095277 (n + 1)

end A095277

/-! ## A095277.P7816075496942955068

`eq[0, A101264(2*n+1)]`
-/

namespace A095277.P7816075496942955068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095277.P7816075496942955068

namespace A095277

/-- `eq[0, A101264(2*n+1)]` -/
def P7816075496942955068.Spec : Prop :=
  ∀ n, (P7816075496942955068.a n : ℤ) = A095277 (n + 1)

end A095277

/-! ## A095277.P7978697470991002452

`eq[0, A156707(2*n+1)]`
-/

namespace A095277.P7978697470991002452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095277.P7978697470991002452

namespace A095277

/-- `eq[0, A156707(2*n+1)]` -/
def P7978697470991002452.Spec : Prop :=
  ∀ n, (P7978697470991002452.a n : ℤ) = A095277 (n + 1)

end A095277

/-! ## A095277.P8993157813258256244

`A091236(n+1)%A045752(n+1)`
-/

namespace A095277.P8993157813258256244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091236 (n + 1)) (A045752 (n + 1))

end

end A095277.P8993157813258256244

namespace A095277

/-- `A091236(n+1)%A045752(n+1)` -/
def P8993157813258256244.Spec : Prop :=
  ∀ n, P8993157813258256244.a n = A095277 (n + 1)

end A095277

/-! ## A095277.P13027812517350504917

`∪[A031193(n+1), A380549(n+1)]`
-/

namespace A095277.P13027812517350504917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095277.P13027812517350504917

namespace A095277

/-- `∪[A031193(n+1), A380549(n+1)]` -/
def P13027812517350504917.Spec : Prop :=
  ∀ n, (P13027812517350504917.a n : ℤ) = A095277 (n + 1)

end A095277

/-! ## A095277.P14989558455803969860

`A020725(A153086(n+1))`
-/

namespace A095277.P14989558455803969860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A153086 (n + 1)).toNat

end

end A095277.P14989558455803969860

namespace A095277

/-- `A020725(A153086(n+1))` -/
def P14989558455803969860.Spec : Prop :=
  ∀ n, P14989558455803969860.a n = A095277 (n + 1)

end A095277

/-! ## A095277.P6149420843400393208

`eq[0, A080909(n)]`
-/

namespace A095277.P6149420843400393208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080909 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095277.P6149420843400393208

namespace A095277

/-- `eq[0, A080909(n)]` -/
def P6149420843400393208.Spec : Prop :=
  ∀ n, (P6149420843400393208.a n : ℤ) = A095277 (n + 1)

end A095277

/-! ## A095277.P5176379551823843494

`lt[0, A245203(n)]`
-/

namespace A095277.P5176379551823843494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A095277.P5176379551823843494

namespace A095277

/-- `lt[0, A245203(n)]` -/
def P5176379551823843494.Spec : Prop :=
  ∀ n, (P5176379551823843494.a n : ℤ) = A095277 (n + 1)

end A095277

/-! ## A095277.P8094428091655224384

`lt[1, A078703(n+1)]`
-/

namespace A095277.P8094428091655224384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078703 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A095277.P8094428091655224384

namespace A095277

/-- `lt[1, A078703(n+1)]` -/
def P8094428091655224384.Spec : Prop :=
  ∀ n, (P8094428091655224384.a n : ℤ) = A095277 (n + 1)

end A095277

/-! ## A095277.P3411723324005993171

`lt[1, A364082(n+1)]`
-/

namespace A095277.P3411723324005993171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364082 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A095277.P3411723324005993171

namespace A095277

/-- `lt[1, A364082(n+1)]` -/
def P3411723324005993171.Spec : Prop :=
  ∀ n, (P3411723324005993171.a n : ℤ) = A095277 (n + 1)

end A095277

/-! ## A095277.P563844010407908472

`lt[1, A001222(record[xor(3, n)])]`
-/

namespace A095277.P563844010407908472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A095277.P563844010407908472

namespace A095277

/-- `lt[1, A001222(record[xor(3, n)])]` -/
def P563844010407908472.Spec : Prop :=
  ∀ n, (P563844010407908472.a n : ℤ) = A095277 (n + 1)

end A095277

/-! ## A095277.P3473515047624551202

`eq[0, A089367(2*n+1)]`
-/

namespace A095277.P3473515047624551202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089367 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095277.P3473515047624551202

namespace A095277

/-- `eq[0, A089367(2*n+1)]` -/
def P3473515047624551202.Spec : Prop :=
  ∀ n, (P3473515047624551202.a n : ℤ) = A095277 (n + 1)

end A095277

/-! ## A095277.P11073818469092530114

`eq[2, A218831(2*n+1)]`
-/

namespace A095277.P11073818469092530114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218831 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095277.P11073818469092530114

namespace A095277

/-- `eq[2, A218831(2*n+1)]` -/
def P11073818469092530114.Spec : Prop :=
  ∀ n, (P11073818469092530114.a n : ℤ) = A095277 (n + 1)

end A095277

/-! ## A095277.P12821741124040742378

`lt[3, A214834(n+2)]`
-/

namespace A095277.P12821741124040742378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214834 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A095277.P12821741124040742378

namespace A095277

/-- `lt[3, A214834(n+2)]` -/
def P12821741124040742378.Spec : Prop :=
  ∀ n, (P12821741124040742378.a n : ℤ) = A095277 (n + 1)

end A095277

/-!
# A095278: Numbers k such that 4k + 3 is prime.

The programs for A095278, the canonical program `A095278.P16565177898415012224` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095278 has offset 1).

The definition of A095278 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002145, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A095278.P16565177898415012224

`(A002145(n+1)-3)/4`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A095278

/-- `(A002145(n+1)-3)/4` -/
def P16565177898415012224.Spec : Prop :=
  ∀ n, P16565177898415012224.a n = (A095278 (n + 1) : ℚ)

end A095278

/-! ## A095278.P16392689744191734945

`(p?[4*n-1]-3)/4`
-/

namespace A095278.P16392689744191734945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3 : ℚ) / 4

end

end A095278.P16392689744191734945

namespace A095278

/-- `(p?[4*n-1]-3)/4` -/
def P16392689744191734945.Spec : Prop :=
  ∀ n, P16392689744191734945.a n = (A095278 (n + 1) : ℚ)

end A095278

/-! ## A095278.P16512854778461971758

`A089986(n+1)+1`
-/

namespace A095278.P16512854778461971758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1) + 1

end

end A095278.P16512854778461971758

namespace A095278

/-- `A089986(n+1)+1` -/
def P16512854778461971758.Spec : Prop :=
  ∀ n, P16512854778461971758.a n = A095278 (n + 1)

end A095278

/-! ## A095278.P16052657549689819586

`A005099(n+1)-1`
-/

namespace A095278.P16052657549689819586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1) - 1

end

end A095278.P16052657549689819586

namespace A095278

/-- `A005099(n+1)-1` -/
def P16052657549689819586.Spec : Prop :=
  ∀ n, P16052657549689819586.a n = A095278 (n + 1)

end A095278

/-! ## A095278.P12294884633500813227

`A156287(n+1)-2`
-/

namespace A095278.P12294884633500813227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1) - 2

end

end A095278.P12294884633500813227

namespace A095278

/-- `A156287(n+1)-2` -/
def P12294884633500813227.Spec : Prop :=
  ∀ n, P12294884633500813227.a n = A095278 (n + 1)

end A095278

/-! ## A095278.P3797734353359787546

`A087915(n+1)/2`
-/

namespace A095278.P3797734353359787546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087915 (n + 1) : ℚ) / 2

end

end A095278.P3797734353359787546

namespace A095278

/-- `A087915(n+1)/2` -/
def P3797734353359787546.Spec : Prop :=
  ∀ n, P3797734353359787546.a n = (A095278 (n + 1) : ℚ)

end A095278

/-! ## A095278.P2423508345021520729

`floor(A104635(n+1)/2)`
-/

namespace A095278.P2423508345021520729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A104635 (n + 1) : ℚ) / 2⌋

end

end A095278.P2423508345021520729

namespace A095278

/-- `floor(A104635(n+1)/2)` -/
def P2423508345021520729.Spec : Prop :=
  ∀ n, P2423508345021520729.a n = A095278 (n + 1)

end A095278

/-! ## A095278.P15919117186288142065

`floor(A190105(n+1)/3)`
-/

namespace A095278.P15919117186288142065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A190105 (n + 1) : ℚ) / 3⌋

end

end A095278.P15919117186288142065

namespace A095278

/-- `floor(A190105(n+1)/3)` -/
def P15919117186288142065.Spec : Prop :=
  ∀ n, P15919117186288142065.a n = A095278 (n + 1)

end A095278

/-! ## A095278.P17750895648437143356

`floor(A002145(n+1)/4)`
-/

namespace A095278.P17750895648437143356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002145 (n + 1) : ℚ) / 4⌋

end

end A095278.P17750895648437143356

namespace A095278

/-- `floor(A002145(n+1)/4)` -/
def P17750895648437143356.Spec : Prop :=
  ∀ n, P17750895648437143356.a n = A095278 (n + 1)

end A095278

/-! ## A095278.P12519179838204056730

`A089257(n+1)/2-2`
-/

namespace A095278.P12519179838204056730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089257 (n + 1) : ℚ) / 2 - 2

end

end A095278.P12519179838204056730

namespace A095278

/-- `A089257(n+1)/2-2` -/
def P12519179838204056730.Spec : Prop :=
  ∀ n, P12519179838204056730.a n = (A095278 (n + 1) : ℚ)

end A095278

/-! ## A095278.P15797187515019100804

`A090658(n+1)/4-1`
-/

namespace A095278.P15797187515019100804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090658 (n + 1) : ℚ) / 4 - 1

end

end A095278.P15797187515019100804

namespace A095278

/-- `A090658(n+1)/4-1` -/
def P15797187515019100804.Spec : Prop :=
  ∀ n, P15797187515019100804.a n = (A095278 (n + 1) : ℚ)

end A095278

/-! ## A095278.P11422221913697401767

`(A090670(n+1)-3)/2`
-/

namespace A095278.P11422221913697401767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A090670 (n + 1) - 3 : ℚ) / 2

end

end A095278.P11422221913697401767

namespace A095278

/-- `(A090670(n+1)-3)/2` -/
def P11422221913697401767.Spec : Prop :=
  ∀ n, P11422221913697401767.a n = (A095278 (n + 1) : ℚ)

end A095278

/-! ## A095278.P4678083368097567483

`A111215(n+1)-A118480(n+1)`
-/

namespace A095278.P4678083368097567483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1) - A118480 (n + 1)

end

end A095278.P4678083368097567483

namespace A095278

/-- `A111215(n+1)-A118480(n+1)` -/
def P4678083368097567483.Spec : Prop :=
  ∀ n, P4678083368097567483.a n = A095278 (n + 1)

end A095278

/-! ## A095278.P8992317684101250939

`A002145(n+1)%A005099(n+1)`
-/

namespace A095278.P8992317684101250939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002145 (n + 1)) (A005099 (n + 1))

end

end A095278.P8992317684101250939

namespace A095278

/-- `A002145(n+1)%A005099(n+1)` -/
def P8992317684101250939.Spec : Prop :=
  ∀ n, P8992317684101250939.a n = A095278 (n + 1)

end A095278

/-! ## A095278.P9062118569774416293

`A104635(n+1)%A005099(n+1)`
-/

namespace A095278.P9062118569774416293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104635 (n + 1)) (A005099 (n + 1))

end

end A095278.P9062118569774416293

namespace A095278

/-- `A104635(n+1)%A005099(n+1)` -/
def P9062118569774416293.Spec : Prop :=
  ∀ n, P9062118569774416293.a n = A095278 (n + 1)

end A095278

/-! ## A095278.P2929689800613640318

`A190105(n+1)%A005099(n+1)`
-/

namespace A095278.P2929689800613640318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190105 (n + 1)) (A005099 (n + 1))

end

end A095278.P2929689800613640318

namespace A095278

/-- `A190105(n+1)%A005099(n+1)` -/
def P2929689800613640318.Spec : Prop :=
  ∀ n, P2929689800613640318.a n = A095278 (n + 1)

end A095278

/-! ## A095278.P9343542526256096484

`A281664(n+2)-A190105(n+1)`
-/

namespace A095278.P9343542526256096484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281664 (n + 2) - A190105 (n + 1)

end

end A095278.P9343542526256096484

namespace A095278

/-- `A281664(n+2)-A190105(n+1)` -/
def P9343542526256096484.Spec : Prop :=
  ∀ n, P9343542526256096484.a n = A095278 (n + 1)

end A095278

/-! ## A095278.P16210509391766997157

`A075518(A080148(n+1))`
-/

namespace A095278.P16210509391766997157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075518 (A080148 (n + 1)).toNat

end

end A095278.P16210509391766997157

namespace A095278

/-- `A075518(A080148(n+1))` -/
def P16210509391766997157.Spec : Prop :=
  ∀ n, P16210509391766997157.a n = A095278 (n + 1)

end A095278

/-! ## A095278.P14661303464336632794

`eq[1, A101264(2*n+1)]`
-/

namespace A095278.P14661303464336632794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095278.P14661303464336632794

namespace A095278

/-- `eq[1, A101264(2*n+1)]` -/
def P14661303464336632794.Spec : Prop :=
  ∀ n, (P14661303464336632794.a n : ℤ) = A095278 (n + 1)

end A095278

/-! ## A095278.P9798894795815388480

`eq[1, A001222(4*n+3)]`
-/

namespace A095278.P9798894795815388480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A095278.P9798894795815388480

namespace A095278

/-- `eq[1, A001222(4*n+3)]` -/
def P9798894795815388480.Spec : Prop :=
  ∀ n, (P9798894795815388480.a n : ℤ) = A095278 (n + 1)

end A095278

/-!
# A095279: Partial sums of A095276.

The programs for A095279, the canonical program `A095279.P10356149151849314659` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095279 has offset 1).

The definition of A095279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095279.P10356149151849314659

`∑[A095276(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A095279

/-- `∑[A095276(n+1)]` -/
def P10356149151849314659.Spec : Prop :=
  ∀ n, P10356149151849314659.a n = A095279 (n + 1)

theorem P10356149151849314659.correct : P10356149151849314659.Spec := by
  intro n
  simp only [A095279, Nat.add_sub_cancel]

end A095279

/-! ## A095279.P6591587975179001192

`record[A087960(A035614(n))+n]`
-/

namespace A095279.P6591587975179001192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A035614 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095279.P6591587975179001192

namespace A095279

/-- `record[A087960(A035614(n))+n]` -/
def P6591587975179001192.Spec : Prop :=
  ∀ n, P6591587975179001192.a n = A095279 (n + 1)

end A095279

/-!
# A095280: Lower Wythoff primes, i.e., primes in A000201.

The programs for A095280, the canonical program `A095280.P2548517751434133077` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095280 has offset 1).

The definition of A095280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095280.P2548517751434133077

`p?[floor(ϕ*n)]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A095280

/-- `p?[floor(ϕ*n)]` -/
def P2548517751434133077.Spec : Prop :=
  ∀ n, P2548517751434133077.a n = A095280 (n + 1)

theorem P2548517751434133077.correct : P2548517751434133077.Spec := by
  intro n
  simp only [A095280, Nat.add_sub_cancel]

end A095280

/-! ## A095280.P16091977712666236205

`or(1, p?[floor(n/(ϕ-1))])`
-/

namespace A095280.P16091977712666236205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (Real.goldenRatio - 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A095280.P16091977712666236205

namespace A095280

/-- `or(1, p?[floor(n/(ϕ-1))])` -/
def P16091977712666236205.Spec : Prop :=
  ∀ n, P16091977712666236205.a n = A095280 (n + 1)

end A095280

/-! ## A095280.P11924089670095103209

`A000040(A184793(n+1))`
-/

namespace A095280.P11924089670095103209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A184793 (n + 1)).toNat

end

end A095280.P11924089670095103209

namespace A095280

/-- `A000040(A184793(n+1))` -/
def P11924089670095103209.Spec : Prop :=
  ∀ n, P11924089670095103209.a n = A095280 (n + 1)

end A095280

/-! ## A095280.P1425163791529318677

`record[A006530(floor(ϕ*(n+2)))]`
-/

namespace A095280.P1425163791529318677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌊Real.goldenRatio * (n + 2 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095280.P1425163791529318677

namespace A095280

/-- `record[A006530(floor(ϕ*(n+2)))]` -/
def P1425163791529318677.Spec : Prop :=
  ∀ n, P1425163791529318677.a n = A095280 (n + 1)

end A095280

/-! ## A095280.P5420536103010309633

`record[A020639(floor(ϕ*(n+2)))]`
-/

namespace A095280.P5420536103010309633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌊Real.goldenRatio * (n + 2 : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095280.P5420536103010309633

namespace A095280

/-- `record[A020639(floor(ϕ*(n+2)))]` -/
def P5420536103010309633.Spec : Prop :=
  ∀ n, P5420536103010309633.a n = A095280 (n + 1)

end A095280

/-! ## A095280.P13825872210680644920

`filter[A000040(n+1), A096270(#)]`
-/

namespace A095280.P13825872210680644920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A095280.P13825872210680644920

namespace A095280

/-- `filter[A000040(n+1), A096270(#)]` -/
def P13825872210680644920.Spec : Prop :=
  ∀ n, P13825872210680644920.a n = A095280 (n + 1)

end A095280

/-! ## A095280.P12717695895188427387

`filter[A004139(n+1), A096270(#)]`
-/

namespace A095280.P12717695895188427387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A095280.P12717695895188427387

namespace A095280

/-- `filter[A004139(n+1), A096270(#)]` -/
def P12717695895188427387.Spec : Prop :=
  ∀ n, P12717695895188427387.a n = A095280 (n + 1)

end A095280

/-! ## A095280.P18289968301313710143

`filter[A045319(n+1), A096270(#)]`
-/

namespace A095280.P18289968301313710143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A095280.P18289968301313710143

namespace A095280

/-- `filter[A045319(n+1), A096270(#)]` -/
def P18289968301313710143.Spec : Prop :=
  ∀ n, P18289968301313710143.a n = A095280 (n + 1)

end A095280

/-! ## A095280.P2952910410943304133

`filter[A065091(n+1), A096270(#)]`
-/

namespace A095280.P2952910410943304133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A095280.P2952910410943304133

namespace A095280

/-- `filter[A065091(n+1), A096270(#)]` -/
def P2952910410943304133.Spec : Prop :=
  ∀ n, P2952910410943304133.a n = A095280 (n + 1)

end A095280

/-! ## A095280.P13179819175005154910

`filter[A085090(n+1), A096270(#)]`
-/

namespace A095280.P13179819175005154910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A095280.P13179819175005154910

namespace A095280

/-- `filter[A085090(n+1), A096270(#)]` -/
def P13179819175005154910.Spec : Prop :=
  ∀ n, P13179819175005154910.a n = A095280 (n + 1)

end A095280

/-! ## A095280.P17422156193880723430

`filter[A182986(n+1), A096270(#)]`
-/

namespace A095280.P17422156193880723430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A095280.P17422156193880723430

namespace A095280

/-- `filter[A182986(n+1), A096270(#)]` -/
def P17422156193880723430.Spec : Prop :=
  ∀ n, P17422156193880723430.a n = A095280 (n + 1)

end A095280

/-! ## A095280.P7398685562683925739

`filter[A162753(2*n), A096270(#)]`
-/

namespace A095280.P7398685562683925739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A096270 (f1 j).toNat = 1) n)

end

end A095280.P7398685562683925739

namespace A095280

/-- `filter[A162753(2*n), A096270(#)]` -/
def P7398685562683925739.Spec : Prop :=
  ∀ n, P7398685562683925739.a n = A095280 (n + 1)

end A095280

/-! ## A095280.P13321973493719178572

`A000201(A184792(n+1))`
-/

namespace A095280.P13321973493719178572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A184792 (n + 1)).toNat

end

end A095280.P13321973493719178572

namespace A095280

/-- `A000201(A184792(n+1))` -/
def P13321973493719178572.Spec : Prop :=
  ∀ n, P13321973493719178572.a n = A095280 (n + 1)

end A095280

/-! ## A095280.P15239707359480995415

`filter[A000201(n+1), A010051(#)]`
-/

namespace A095280.P15239707359480995415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A095280.P15239707359480995415

namespace A095280

/-- `filter[A000201(n+1), A010051(#)]` -/
def P15239707359480995415.Spec : Prop :=
  ∀ n, P15239707359480995415.a n = A095280 (n + 1)

end A095280

/-! ## A095280.P3819425743616080883

`filter[A066096(n+1), A010051(#)]`
-/

namespace A095280.P3819425743616080883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A095280.P3819425743616080883

namespace A095280

/-- `filter[A066096(n+1), A010051(#)]` -/
def P3819425743616080883.Spec : Prop :=
  ∀ n, P3819425743616080883.a n = A095280 (n + 1)

end A095280

/-! ## A095280.P4943316354266342827

`∩[A000040(n+1), A066096(n)]`
-/

namespace A095280.P4943316354266342827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095280.P4943316354266342827

namespace A095280

/-- `∩[A000040(n+1), A066096(n)]` -/
def P4943316354266342827.Spec : Prop :=
  ∀ n, (P4943316354266342827.a n : ℤ) = A095280 (n + 1)

end A095280

/-! ## A095280.P14770637612165274910

`∩[A004139(n+1), A066096(n)]`
-/

namespace A095280.P14770637612165274910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095280.P14770637612165274910

namespace A095280

/-- `∩[A004139(n+1), A066096(n)]` -/
def P14770637612165274910.Spec : Prop :=
  ∀ n, (P14770637612165274910.a n : ℤ) = A095280 (n + 1)

end A095280

/-!
# A095281: Upper Wythoff primes, i.e., primes in A001950.

The programs for A095281, the canonical program `A095281.P7371188887236908802` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095281 has offset 1).

The definition of A095281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8735 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095281.P7371188887236908802

`p?[floor(n*ϕ²)]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A095281

/-- `p?[floor(n*ϕ²)]` -/
def P7371188887236908802.Spec : Prop :=
  ∀ n, P7371188887236908802.a n = A095281 (n + 1)

theorem P7371188887236908802.correct : P7371188887236908802.Spec := by
  intro n
  simp only [A095281, Nat.add_sub_cancel]

end A095281

/-! ## A095281.P9468778317592986837

`A000040(A184795(n+1))`
-/

namespace A095281.P9468778317592986837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A184795 (n + 1)).toNat

end

end A095281.P9468778317592986837

namespace A095281

/-- `A000040(A184795(n+1))` -/
def P9468778317592986837.Spec : Prop :=
  ∀ n, P9468778317592986837.a n = A095281 (n + 1)

end A095281

/-! ## A095281.P6645169446140301282

`record[A006530(floor((n+1)*ϕ²))]`
-/

namespace A095281.P6645169446140301282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095281.P6645169446140301282

namespace A095281

/-- `record[A006530(floor((n+1)*ϕ²))]` -/
def P6645169446140301282.Spec : Prop :=
  ∀ n, P6645169446140301282.a n = A095281 (n + 1)

end A095281

/-! ## A095281.P12686940316660003855

`record[A020639(floor((n+1)*ϕ²))]`
-/

namespace A095281.P12686940316660003855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ⌊(n + 1 : ℝ) * Real.goldenRatio ^ 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095281.P12686940316660003855

namespace A095281

/-- `record[A020639(floor((n+1)*ϕ²))]` -/
def P12686940316660003855.Spec : Prop :=
  ∀ n, P12686940316660003855.a n = A095281 (n + 1)

end A095281

/-! ## A095281.P6022786465670307098

`A006530(2*p?[floor(n*(ϕ+1))])`
-/

namespace A095281.P6022786465670307098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * (Real.goldenRatio + 1)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A095281.P6022786465670307098

namespace A095281

/-- `A006530(2*p?[floor(n*(ϕ+1))])` -/
def P6022786465670307098.Spec : Prop :=
  ∀ n, P6022786465670307098.a n = A095281 (n + 1)

end A095281

/-! ## A095281.P3493825042968074725

`A001950(A184794(n+1))`
-/

namespace A095281.P3493825042968074725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A184794 (n + 1)).toNat

end

end A095281.P3493825042968074725

namespace A095281

/-- `A001950(A184794(n+1))` -/
def P3493825042968074725.Spec : Prop :=
  ∀ n, P3493825042968074725.a n = A095281 (n + 1)

end A095281

/-! ## A095281.P9664712631101781007

`filter[A001950(n+1), A010051(#)]`
-/

namespace A095281.P9664712631101781007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A095281.P9664712631101781007

namespace A095281

/-- `filter[A001950(n+1), A010051(#)]` -/
def P9664712631101781007.Spec : Prop :=
  ∀ n, P9664712631101781007.a n = A095281 (n + 1)

end A095281

/-! ## A095281.P16059749532231799842

`∩[A000040(n+1), A001950(n+1)]`
-/

namespace A095281.P16059749532231799842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095281.P16059749532231799842

namespace A095281

/-- `∩[A000040(n+1), A001950(n+1)]` -/
def P16059749532231799842.Spec : Prop :=
  ∀ n, (P16059749532231799842.a n : ℤ) = A095281 (n + 1)

end A095281

/-! ## A095281.P14717423822055418745

`∩[A001950(n+1), A008578(n+1)]`
-/

namespace A095281.P14717423822055418745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095281.P14717423822055418745

namespace A095281

/-- `∩[A001950(n+1), A008578(n+1)]` -/
def P14717423822055418745.Spec : Prop :=
  ∀ n, (P14717423822055418745.a n : ℤ) = A095281 (n + 1)

end A095281

/-! ## A095281.P4357889438908576494

`∩[A001950(n+1), A033946(n+1)]`
-/

namespace A095281.P4357889438908576494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095281.P4357889438908576494

namespace A095281

/-- `∩[A001950(n+1), A033946(n+1)]` -/
def P4357889438908576494.Spec : Prop :=
  ∀ n, (P4357889438908576494.a n : ℤ) = A095281 (n + 1)

end A095281

/-! ## A095281.P15152709863098249981

`∩[A001950(n+1), A045344(n+1)]`
-/

namespace A095281.P15152709863098249981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095281.P15152709863098249981

namespace A095281

/-- `∩[A001950(n+1), A045344(n+1)]` -/
def P15152709863098249981.Spec : Prop :=
  ∀ n, (P15152709863098249981.a n : ℤ) = A095281 (n + 1)

end A095281

/-! ## A095281.P2846689227544406520

`∩[A001950(n+1), A046022(n+1)]`
-/

namespace A095281.P2846689227544406520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095281.P2846689227544406520

namespace A095281

/-- `∩[A001950(n+1), A046022(n+1)]` -/
def P2846689227544406520.Spec : Prop :=
  ∀ n, (P2846689227544406520.a n : ℤ) = A095281 (n + 1)

end A095281

/-! ## A095281.P16038392673677611690

`∩[A001950(n+1), A051948(n+1)]`
-/

namespace A095281.P16038392673677611690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095281.P16038392673677611690

namespace A095281

/-- `∩[A001950(n+1), A051948(n+1)]` -/
def P16038392673677611690.Spec : Prop :=
  ∀ n, (P16038392673677611690.a n : ℤ) = A095281 (n + 1)

end A095281

/-! ## A095281.P14955766828285936987

`∩[A001950(n+1), A067126(n+1)]`
-/

namespace A095281.P14955766828285936987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095281.P14955766828285936987

namespace A095281

/-- `∩[A001950(n+1), A067126(n+1)]` -/
def P14955766828285936987.Spec : Prop :=
  ∀ n, (P14955766828285936987.a n : ℤ) = A095281 (n + 1)

end A095281

/-! ## A095281.P6058924617244183134

`∩[A001950(n+1), A095080(n+1)]`
-/

namespace A095281.P6058924617244183134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095281.P6058924617244183134

namespace A095281

/-- `∩[A001950(n+1), A095080(n+1)]` -/
def P6058924617244183134.Spec : Prop :=
  ∀ n, (P6058924617244183134.a n : ℤ) = A095281 (n + 1)

end A095281

/-! ## A095281.P12259664251793992364

`∩[A001950(n+1), A106118(n+1)]`
-/

namespace A095281.P12259664251793992364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095281.P12259664251793992364

namespace A095281

/-- `∩[A001950(n+1), A106118(n+1)]` -/
def P12259664251793992364.Spec : Prop :=
  ∀ n, (P12259664251793992364.a n : ℤ) = A095281 (n + 1)

end A095281

/-! ## A095281.P3605197292111760272

`∩[A001950(n+1), A116974(n+1)]`
-/

namespace A095281.P3605197292111760272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095281.P3605197292111760272

namespace A095281

/-- `∩[A001950(n+1), A116974(n+1)]` -/
def P3605197292111760272.Spec : Prop :=
  ∀ n, (P3605197292111760272.a n : ℤ) = A095281 (n + 1)

end A095281

/-!
# A095282: Primes whose binary-expansion ends with an even number of 1's.

The programs for A095282, the canonical program `A095282.P8436873216638165653` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095282 has offset 1).

The definition of A095282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095282.P13168342325010313257

`p?[xor(3-A020639(val(n+1, 2)+1), 2*n)]`
-/

namespace A095282.P13168342325010313257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (3 - A020639 (SequenceMachineLib.valuation (n + 1) 2 + 1)) (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095282.P13168342325010313257

namespace A095282

/-- `p?[xor(3-A020639(val(n+1, 2)+1), 2*n)]` -/
def P13168342325010313257.Spec : Prop :=
  ∀ n, P13168342325010313257.a n = A095282 (n + 1)

end A095282

/-! ## A095282.P8436873216638165653

`p?[abs(val(n+1, 2)%2-n)]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A095282

/-- `p?[abs(val(n+1, 2)%2-n)]` -/
def P8436873216638165653.Spec : Prop :=
  ∀ n, P8436873216638165653.a n = A095282 (n + 1)

theorem P8436873216638165653.correct : P8436873216638165653.Spec := by
  intro n
  simp only [A095282, Nat.add_sub_cancel]

end A095282

/-! ## A095282.P14791829994353265354

`p?[abs(1-A010689(val(n+1, 2)))+n]`
-/

namespace A095282.P14791829994353265354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A010689 (SequenceMachineLib.valuation (n + 1) 2)| + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095282.P14791829994353265354

namespace A095282

/-- `p?[abs(1-A010689(val(n+1, 2)))+n]` -/
def P14791829994353265354.Spec : Prop :=
  ∀ n, P14791829994353265354.a n = A095282 (n + 1)

end A095282

/-! ## A095282.P9908418444144485199

`p?[A035263(n+2)+n]`
-/

namespace A095282.P9908418444144485199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095282.P9908418444144485199

namespace A095282

/-- `p?[A035263(n+2)+n]` -/
def P9908418444144485199.Spec : Prop :=
  ∀ n, P9908418444144485199.a n = A095282 (n + 1)

end A095282

/-! ## A095282.P17659275028425860006

`p?[n*(2-A089608(n+1))]`
-/

namespace A095282.P17659275028425860006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A089608 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095282.P17659275028425860006

namespace A095282

/-- `p?[n*(2-A089608(n+1))]` -/
def P17659275028425860006.Spec : Prop :=
  ∀ n, P17659275028425860006.a n = A095282 (n + 1)

end A095282

/-! ## A095282.P15900701184180449000

`eq[A035263(n+1), A152188(n)]`
-/

namespace A095282.P15900701184180449000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152188 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095282.P15900701184180449000

namespace A095282

/-- `eq[A035263(n+1), A152188(n)]` -/
def P15900701184180449000.Spec : Prop :=
  ∀ n, (P15900701184180449000.a n : ℤ) = A095282 (n + 1)

end A095282

/-! ## A095282.P5845192466286770086

`p?[n*A089608(n+1)²]`
-/

namespace A095282.P5845192466286770086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A089608 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095282.P5845192466286770086

namespace A095282

/-- `p?[n*A089608(n+1)²]` -/
def P5845192466286770086.Spec : Prop :=
  ∀ n, P5845192466286770086.a n = A095282 (n + 1)

end A095282

/-! ## A095282.P14804617546172991444

`record[p?[A302792(n+1)-1]]`
-/

namespace A095282.P14804617546172991444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302792 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095282.P14804617546172991444

namespace A095282

/-- `record[p?[A302792(n+1)-1]]` -/
def P14804617546172991444.Spec : Prop :=
  ∀ n, P14804617546172991444.a n = A095282 (n + 1)

end A095282

/-! ## A095282.P18072170493985538066

`p?[A081706(n+1)]`
-/

namespace A095282.P18072170493985538066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095282.P18072170493985538066

namespace A095282

/-- `p?[A081706(n+1)]` -/
def P18072170493985538066.Spec : Prop :=
  ∀ n, P18072170493985538066.a n = A095282 (n + 1)

end A095282

/-! ## A095282.P14640180032435860095

`p?[A344346(n+1)-1]`
-/

namespace A095282.P14640180032435860095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344346 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095282.P14640180032435860095

namespace A095282

/-- `p?[A344346(n+1)-1]` -/
def P14640180032435860095.Spec : Prop :=
  ∀ n, P14640180032435860095.a n = A095282 (n + 1)

end A095282

/-! ## A095282.P5716916104602482871

`filter[A081706(n+1), A010051(#)]`
-/

namespace A095282.P5716916104602482871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A095282.P5716916104602482871

namespace A095282

/-- `filter[A081706(n+1), A010051(#)]` -/
def P5716916104602482871.Spec : Prop :=
  ∀ n, P5716916104602482871.a n = A095282 (n + 1)

end A095282

/-! ## A095282.P14581685614965232596

`filter[A081706(n+1), A302777(#)]`
-/

namespace A095282.P14581685614965232596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A095282.P14581685614965232596

namespace A095282

/-- `filter[A081706(n+1), A302777(#)]` -/
def P14581685614965232596.Spec : Prop :=
  ∀ n, P14581685614965232596.a n = A095282 (n + 1)

end A095282

/-! ## A095282.P510710455263175700

`filter[A081706(n+1), A323152(#)]`
-/

namespace A095282.P510710455263175700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A095282.P510710455263175700

namespace A095282

/-- `filter[A081706(n+1), A323152(#)]` -/
def P510710455263175700.Spec : Prop :=
  ∀ n, P510710455263175700.a n = A095282 (n + 1)

end A095282

/-! ## A095282.P1174005599628358293

`filter[A081706(n+1), A323153(#)]`
-/

namespace A095282.P1174005599628358293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A095282.P1174005599628358293

namespace A095282

/-- `filter[A081706(n+1), A323153(#)]` -/
def P1174005599628358293.Spec : Prop :=
  ∀ n, P1174005599628358293.a n = A095282 (n + 1)

end A095282

/-! ## A095282.P1715152986162399558

`filter[A081706(n+1), A353499(#)]`
-/

namespace A095282.P1715152986162399558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353499 (f1 j).toNat = 1) n)

end

end A095282.P1715152986162399558

namespace A095282

/-- `filter[A081706(n+1), A353499(#)]` -/
def P1715152986162399558.Spec : Prop :=
  ∀ n, P1715152986162399558.a n = A095282 (n + 1)

end A095282

/-! ## A095282.P8393268044417678279

`filter[A081706(n+1), A355937(#)]`
-/

namespace A095282.P8393268044417678279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A095282.P8393268044417678279

namespace A095282

/-- `filter[A081706(n+1), A355937(#)]` -/
def P8393268044417678279.Spec : Prop :=
  ∀ n, P8393268044417678279.a n = A095282 (n + 1)

end A095282

/-! ## A095282.P7279141865078986863

`∩[A000040(n+1), A081706(n+1)]`
-/

namespace A095282.P7279141865078986863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095282.P7279141865078986863

namespace A095282

/-- `∩[A000040(n+1), A081706(n+1)]` -/
def P7279141865078986863.Spec : Prop :=
  ∀ n, (P7279141865078986863.a n : ℤ) = A095282 (n + 1)

end A095282

/-! ## A095282.P160996142018428720

`∩[A000430(n+1), A081706(n+1)]`
-/

namespace A095282.P160996142018428720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095282.P160996142018428720

namespace A095282

/-- `∩[A000430(n+1), A081706(n+1)]` -/
def P160996142018428720.Spec : Prop :=
  ∀ n, (P160996142018428720.a n : ℤ) = A095282 (n + 1)

end A095282

/-! ## A095282.P1793773026717398035

`∩[A008578(n+1), A081706(n+1)]`
-/

namespace A095282.P1793773026717398035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095282.P1793773026717398035

namespace A095282

/-- `∩[A008578(n+1), A081706(n+1)]` -/
def P1793773026717398035.Spec : Prop :=
  ∀ n, (P1793773026717398035.a n : ℤ) = A095282 (n + 1)

end A095282

/-!
# A095283: Primes whose binary-expansion ends with an odd number of 1's.

The programs for A095283, the canonical program `A095283.P2938136508596588952` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095283 has offset 1).

The definition of A095283 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4359 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095283.P17698896107691808263

`p?[A231271(n+1)]`
-/

namespace A095283.P17698896107691808263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095283.P17698896107691808263

namespace A095283

/-- `p?[A231271(n+1)]` -/
def P17698896107691808263.Spec : Prop :=
  ∀ n, P17698896107691808263.a n = A095283 (n + 1)

end A095283

/-! ## A095283.P570726366215432025

`∩[A000040(n+1), A231271(n+1)]`
-/

namespace A095283.P570726366215432025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095283.P570726366215432025

namespace A095283

/-- `∩[A000040(n+1), A231271(n+1)]` -/
def P570726366215432025.Spec : Prop :=
  ∀ n, (P570726366215432025.a n : ℤ) = A095283 (n + 1)

end A095283

/-! ## A095283.P16181323232028455265

`∩[A051948(n+1), A231271(n+1)]`
-/

namespace A095283.P16181323232028455265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095283.P16181323232028455265

namespace A095283

/-- `∩[A051948(n+1), A231271(n+1)]` -/
def P16181323232028455265.Spec : Prop :=
  ∀ n, (P16181323232028455265.a n : ℤ) = A095283 (n + 1)

end A095283

/-! ## A095283.P16440430069696607065

`∩[A053813(n+1), A231271(n+1)]`
-/

namespace A095283.P16440430069696607065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095283.P16440430069696607065

namespace A095283

/-- `∩[A053813(n+1), A231271(n+1)]` -/
def P16440430069696607065.Spec : Prop :=
  ∀ n, (P16440430069696607065.a n : ℤ) = A095283 (n + 1)

end A095283

/-! ## A095283.P18263938501601147590

`∩[A093515(n+1), A231271(n+1)]`
-/

namespace A095283.P18263938501601147590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095283.P18263938501601147590

namespace A095283

/-- `∩[A093515(n+1), A231271(n+1)]` -/
def P18263938501601147590.Spec : Prop :=
  ∀ n, (P18263938501601147590.a n : ℤ) = A095283 (n + 1)

end A095283

/-! ## A095283.P8009140696855319605

`∩[A053577(n+1), A231271(n+1)]`
-/

namespace A095283.P8009140696855319605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095283.P8009140696855319605

namespace A095283

/-- `∩[A053577(n+1), A231271(n+1)]` -/
def P8009140696855319605.Spec : Prop :=
  ∀ n, (P8009140696855319605.a n : ℤ) = A095283 (n + 1)

end A095283

/-! ## A095283.P14575794612513063410

`record[A006530(A231271(n+2))]`
-/

namespace A095283.P14575794612513063410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A231271 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095283.P14575794612513063410

namespace A095283

/-- `record[A006530(A231271(n+2))]` -/
def P14575794612513063410.Spec : Prop :=
  ∀ n, P14575794612513063410.a n = A095283 (n + 1)

end A095283

/-! ## A095283.P13449816909653441000

`filter[A231271(n+1), A010051(#)]`
-/

namespace A095283.P13449816909653441000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A095283.P13449816909653441000

namespace A095283

/-- `filter[A231271(n+1), A010051(#)]` -/
def P13449816909653441000.Spec : Prop :=
  ∀ n, P13449816909653441000.a n = A095283 (n + 1)

end A095283

/-! ## A095283.P530729282679652817

`filter[A231271(n+1), A379969(#)]`
-/

namespace A095283.P530729282679652817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A095283.P530729282679652817

namespace A095283

/-- `filter[A231271(n+1), A379969(#)]` -/
def P530729282679652817.Spec : Prop :=
  ∀ n, P530729282679652817.a n = A095283 (n + 1)

end A095283

/-! ## A095283.P13499595101170767222

`filter[A231271(n+1), A323153(#)]`
-/

namespace A095283.P13499595101170767222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A095283.P13499595101170767222

namespace A095283

/-- `filter[A231271(n+1), A323153(#)]` -/
def P13499595101170767222.Spec : Prop :=
  ∀ n, P13499595101170767222.a n = A095283 (n + 1)

end A095283

/-! ## A095283.P13384962250131748665

`filter[A231271(n+1), A327861(#)]`
-/

namespace A095283.P13384962250131748665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A095283.P13384962250131748665

namespace A095283

/-- `filter[A231271(n+1), A327861(#)]` -/
def P13384962250131748665.Spec : Prop :=
  ∀ n, P13384962250131748665.a n = A095283 (n + 1)

end A095283

/-! ## A095283.P17010885925949408981

`filter[A231271(n+1), A342460(#)]`
-/

namespace A095283.P17010885925949408981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342460 (f1 j).toNat = 1) n)

end

end A095283.P17010885925949408981

namespace A095283

/-- `filter[A231271(n+1), A342460(#)]` -/
def P17010885925949408981.Spec : Prop :=
  ∀ n, P17010885925949408981.a n = A095283 (n + 1)

end A095283

/-! ## A095283.P18397892947724614765

`filter[A231271(n+1), A353670(#)]`
-/

namespace A095283.P18397892947724614765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231271 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A095283.P18397892947724614765

namespace A095283

/-- `filter[A231271(n+1), A353670(#)]` -/
def P18397892947724614765.Spec : Prop :=
  ∀ n, P18397892947724614765.a n = A095283 (n + 1)

end A095283

/-! ## A095283.P7934639937587246593

`filter[A231271(n+2), A323152(#)]`
-/

namespace A095283.P7934639937587246593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231271 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A095283.P7934639937587246593

namespace A095283

/-- `filter[A231271(n+2), A323152(#)]` -/
def P7934639937587246593.Spec : Prop :=
  ∀ n, P7934639937587246593.a n = A095283 (n + 1)

end A095283

/-! ## A095283.P2707819112465549848

`filter[A231271(n+2), A340371(#)]`
-/

namespace A095283.P2707819112465549848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231271 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A095283.P2707819112465549848

namespace A095283

/-- `filter[A231271(n+2), A340371(#)]` -/
def P2707819112465549848.Spec : Prop :=
  ∀ n, P2707819112465549848.a n = A095283 (n + 1)

end A095283

/-! ## A095283.P2938136508596588952

`p?[n*(A035263(n+1)+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A095283

/-- `p?[n*(A035263(n+1)+1)]` -/
def P2938136508596588952.Spec : Prop :=
  ∀ n, P2938136508596588952.a n = A095283 (n + 1)

theorem P2938136508596588952.correct : P2938136508596588952.Spec := by
  intro n
  simp only [A095283, Nat.add_sub_cancel]

end A095283

/-! ## A095283.P13046142871653659830

`∩[A001751(n+1), A231271(n+1)]`
-/

namespace A095283.P13046142871653659830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095283.P13046142871653659830

namespace A095283

/-- `∩[A001751(n+1), A231271(n+1)]` -/
def P13046142871653659830.Spec : Prop :=
  ∀ n, (P13046142871653659830.a n : ℤ) = A095283 (n + 1)

end A095283

/-! ## A095283.P1391773604313852324

`∩[A085118(n+1), A231271(n+1)]`
-/

namespace A095283.P1391773604313852324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095283.P1391773604313852324

namespace A095283

/-- `∩[A085118(n+1), A231271(n+1)]` -/
def P1391773604313852324.Spec : Prop :=
  ∀ n, (P1391773604313852324.a n : ℤ) = A095283 (n + 1)

end A095283

/-! ## A095283.P7871432394594218994

`eq[A035263(n+1), A072480(n)]`
-/

namespace A095283.P7871432394594218994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A095283.P7871432394594218994

namespace A095283

/-- `eq[A035263(n+1), A072480(n)]` -/
def P7871432394594218994.Spec : Prop :=
  ∀ n, (P7871432394594218994.a n : ℤ) = A095283 (n + 1)

end A095283

/-! ## A095283.P4355276341782950566

`∩[A038550(n+1), A231271(n+1)]`
-/

namespace A095283.P4355276341782950566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095283.P4355276341782950566

namespace A095283

/-- `∩[A038550(n+1), A231271(n+1)]` -/
def P4355276341782950566.Spec : Prop :=
  ∀ n, (P4355276341782950566.a n : ℤ) = A095283 (n + 1)

end A095283

/-!
# A095284: Primes in whose binary expansion the number of 1 bits is > 5 + number of 0 bits.

The programs for A095284, the canonical program `A095284.P16076198240132505544` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095284 has offset 1).

The definition of A095284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095284.P16076198240132505544

`p?[lt[5, A145037(n)]]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A095284

/-- `p?[lt[5, A145037(n)]]` -/
def P16076198240132505544.Spec : Prop :=
  ∀ n, (P16076198240132505544.a n : ℤ) = A095284 (n + 1)

theorem P16076198240132505544.correct : P16076198240132505544.Spec := by
  intro n
  simp only [A095284, Nat.add_sub_cancel]

end A095284

/-! ## A095284.P17242764623194882061

`p?[or(A031468(n+1), A330887(n+1))]`
-/

namespace A095284.P17242764623194882061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A031468 (n + 1)) (A330887 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095284.P17242764623194882061

namespace A095284

/-- `p?[or(A031468(n+1), A330887(n+1))]` -/
def P17242764623194882061.Spec : Prop :=
  ∀ n, P17242764623194882061.a n = A095284 (n + 1)

end A095284

/-! ## A095284.P16638611531666945123

`record[p?[A031468(A031501(n))]]`
-/

namespace A095284.P16638611531666945123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031468 (A031501 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095284.P16638611531666945123

namespace A095284

/-- `record[p?[A031468(A031501(n))]]` -/
def P16638611531666945123.Spec : Prop :=
  ∀ n, P16638611531666945123.a n = A095284 (n + 1)

end A095284

/-! ## A095284.P1200652990261812142

`p?[A031468(n+1)%A031515(n+1)]`
-/

namespace A095284.P1200652990261812142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031468 (n + 1)) (A031515 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095284.P1200652990261812142

namespace A095284

/-- `p?[A031468(n+1)%A031515(n+1)]` -/
def P1200652990261812142.Spec : Prop :=
  ∀ n, P1200652990261812142.a n = A095284 (n + 1)

end A095284

/-! ## A095284.P12011354054600911284

`∩[A023720(n+1), A181741(n+1)]`
-/

namespace A095284.P12011354054600911284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181741 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095284.P12011354054600911284

namespace A095284

/-- `∩[A023720(n+1), A181741(n+1)]` -/
def P12011354054600911284.Spec : Prop :=
  ∀ n, (P12011354054600911284.a n : ℤ) = A095284 (n + 1)

end A095284

/-!
# A095285: Primes in whose binary expansion the number of 1 bits is <= 5 + number of 0 bits.

The programs for A095285, there is no canonical definition to state claims against.
-/

/-! ## A095285.P5243334210764582390

`A000040(lt[A275870(n+5), A167321(3*n+1)])`
-/

namespace A095285.P5243334210764582390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275870 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167321 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A095285.P5243334210764582390

/-! ## A095285.P9942595917586238115

`A119816(A095313(n+1))`
-/

namespace A095285.P9942595917586238115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119816 (A095313 (n + 1)).toNat

end

end A095285.P9942595917586238115

/-! ## A095285.P13647754951555466522

`A095313(n+1)%A000978(n+1)`
-/

namespace A095285.P13647754951555466522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095313 (n + 1)) (A000978 (n + 1))

end

end A095285.P13647754951555466522

/-!
# A095286: Primes in whose binary expansion the number of 1 bits is > 1 + number of 0 bits.

The programs for A095286, the canonical program `A095286.P13517122244104778707` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095286 has offset 1).

The definition of A095286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2122 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A095286.P13517122244104778707

`p?[2*A072600(n+1)+1]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A095286

/-- `p?[2*A072600(n+1)+1]` -/
def P13517122244104778707.Spec : Prop :=
  ∀ n, P13517122244104778707.a n = A095286 (n + 1)

theorem P13517122244104778707.correct : P13517122244104778707.Spec := by
  intro n
  simp only [A095286, Nat.add_sub_cancel]

end A095286

/-! ## A095286.P10249030040788679312

`p?[A346299(n+1)+1]`
-/

namespace A095286.P10249030040788679312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346299 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095286.P10249030040788679312

namespace A095286

/-- `p?[A346299(n+1)+1]` -/
def P10249030040788679312.Spec : Prop :=
  ∀ n, P10249030040788679312.a n = A095286 (n + 1)

end A095286

/-! ## A095286.P6331391909032414795

`p?[lt[1, A145037(n)]]`
-/

namespace A095286.P6331391909032414795
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095286.P6331391909032414795

namespace A095286

/-- `p?[lt[1, A145037(n)]]` -/
def P6331391909032414795.Spec : Prop :=
  ∀ n, (P6331391909032414795.a n : ℤ) = A095286 (n + 1)

end A095286

/-! ## A095286.P17406458162111344271

`p?[A072601(n+2)+1]`
-/

namespace A095286.P17406458162111344271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072601 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095286.P17406458162111344271

namespace A095286

/-- `p?[A072601(n+2)+1]` -/
def P17406458162111344271.Spec : Prop :=
  ∀ n, P17406458162111344271.a n = A095286 (n + 1)

end A095286

/-! ## A095286.P17127346079355574384

`record[A006530(A072601(n+2)+1)]`
-/

namespace A095286.P17127346079355574384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A072601 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095286.P17127346079355574384

namespace A095286

/-- `record[A006530(A072601(n+2)+1)]` -/
def P17127346079355574384.Spec : Prop :=
  ∀ n, P17127346079355574384.a n = A095286 (n + 1)

end A095286

/-! ## A095286.P2081716148379145366

`record[A020639(A072601(n+2)+1)]`
-/

namespace A095286.P2081716148379145366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A072601 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095286.P2081716148379145366

namespace A095286

/-- `record[A020639(A072601(n+2)+1)]` -/
def P2081716148379145366.Spec : Prop :=
  ∀ n, P2081716148379145366.a n = A095286 (n + 1)

end A095286

/-! ## A095286.P17255975850381979995

`∩[A000040(n+2), A072601(n+2)+1]`
-/

namespace A095286.P17255975850381979995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072601 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095286.P17255975850381979995

namespace A095286

/-- `∩[A000040(n+2), A072601(n+2)+1]` -/
def P17255975850381979995.Spec : Prop :=
  ∀ n, (P17255975850381979995.a n : ℤ) = A095286 (n + 1)

end A095286

/-! ## A095286.P17821949794261640616

`∩[A072601(n+2)+1, A095316(n+2)]`
-/

namespace A095286.P17821949794261640616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072601 (n + 2) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095316 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A095286.P17821949794261640616

namespace A095286

/-- `∩[A072601(n+2)+1, A095316(n+2)]` -/
def P17821949794261640616.Spec : Prop :=
  ∀ n, (P17821949794261640616.a n : ℤ) = A095286 (n + 1)

end A095286

/-! ## A095286.P4463811211249910952

`p?[lt[A037861(n)+1, 0]]`
-/

namespace A095286.P4463811211249910952
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037861 n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095286.P4463811211249910952

namespace A095286

/-- `p?[lt[A037861(n)+1, 0]]` -/
def P4463811211249910952.Spec : Prop :=
  ∀ n, (P4463811211249910952.a n : ℤ) = A095286 (n + 1)

end A095286

/-! ## A095286.P16989249048960007531

`p?[lt[4*n+1, A102376(n)]]`
-/

namespace A095286.P16989249048960007531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095286.P16989249048960007531

namespace A095286

/-- `p?[lt[4*n+1, A102376(n)]]` -/
def P16989249048960007531.Spec : Prop :=
  ∀ n, (P16989249048960007531.a n : ℤ) = A095286 (n + 1)

end A095286

/-! ## A095286.P5889984805854736778

`p?[lt[4*n, 4^A000120(n)]]`
-/

namespace A095286.P5889984805854736778
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A000120 n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℚ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095286.P5889984805854736778

namespace A095286

/-- `p?[lt[4*n, 4^A000120(n)]]` -/
def P5889984805854736778.Spec : Prop :=
  ∀ n, (P5889984805854736778.a n : ℤ) = A095286 (n + 1)

end A095286

/-! ## A095286.P1082554097752939349

`p?[lt[A160380(n), A160383(n)]]`
-/

namespace A095286.P1082554097752939349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095286.P1082554097752939349

namespace A095286

/-- `p?[lt[A160380(n), A160383(n)]]` -/
def P1082554097752939349.Spec : Prop :=
  ∀ n, (P1082554097752939349.a n : ℤ) = A095286 (n + 1)

end A095286

/-! ## A095286.P617383999558609592

`record[A014963(A346299(n+1)+1)]`
-/

namespace A095286.P617383999558609592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A346299 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095286.P617383999558609592

namespace A095286

/-- `record[A014963(A346299(n+1)+1)]` -/
def P617383999558609592.Spec : Prop :=
  ∀ n, P617383999558609592.a n = A095286 (n + 1)

end A095286

/-! ## A095286.P7184642395322805149

`record[A014963(A072601(n+2)+1)]`
-/

namespace A095286.P7184642395322805149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A072601 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A095286.P7184642395322805149

namespace A095286

/-- `record[A014963(A072601(n+2)+1)]` -/
def P7184642395322805149.Spec : Prop :=
  ∀ n, P7184642395322805149.a n = A095286 (n + 1)

end A095286

/-! ## A095286.P3114661285633682904

`p?[A004442(2*A072600(n+1))]`
-/

namespace A095286.P3114661285633682904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A072600 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095286.P3114661285633682904

namespace A095286

/-- `p?[A004442(2*A072600(n+1))]` -/
def P3114661285633682904.Spec : Prop :=
  ∀ n, P3114661285633682904.a n = A095286 (n + 1)

end A095286

/-! ## A095286.P11306113877629050499

`p?[A049283(2*A072600(n+1))]`
-/

namespace A095286.P11306113877629050499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (2 * A072600 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095286.P11306113877629050499

namespace A095286

/-- `p?[A049283(2*A072600(n+1))]` -/
def P11306113877629050499.Spec : Prop :=
  ∀ n, P11306113877629050499.a n = A095286 (n + 1)

end A095286

/-! ## A095286.P17380523549131314651

`p?[A079097(2*A072600(n+1))]`
-/

namespace A095286.P17380523549131314651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079097 (2 * A072600 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095286.P17380523549131314651

namespace A095286

/-- `p?[A079097(2*A072600(n+1))]` -/
def P17380523549131314651.Spec : Prop :=
  ∀ n, P17380523549131314651.a n = A095286 (n + 1)

end A095286

/-! ## A095286.P508957741560634858

`p?[lt[A023416(n)+1, A000120(n)]]`
-/

namespace A095286.P508957741560634858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095286.P508957741560634858

namespace A095286

/-- `p?[lt[A023416(n)+1, A000120(n)]]` -/
def P508957741560634858.Spec : Prop :=
  ∀ n, (P508957741560634858.a n : ℤ) = A095286 (n + 1)

end A095286

/-! ## A095286.P5316339852908861683

`p?[lt[A080791(n)+1, A000120(n)]]`
-/

namespace A095286.P5316339852908861683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095286.P5316339852908861683

namespace A095286

/-- `p?[lt[A080791(n)+1, A000120(n)]]` -/
def P5316339852908861683.Spec : Prop :=
  ∀ n, (P5316339852908861683.a n : ℤ) = A095286 (n + 1)

end A095286

/-! ## A095286.P14260432318799279644

`p?[lt[2*A004767(n), A213178(n)]]`
-/

namespace A095286.P14260432318799279644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004767 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213178 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095286.P14260432318799279644

namespace A095286

/-- `p?[lt[2*A004767(n), A213178(n)]]` -/
def P14260432318799279644.Spec : Prop :=
  ∀ n, (P14260432318799279644.a n : ℤ) = A095286 (n + 1)

end A095286

/-!
# A095287: Primes in whose binary expansion the number of 1-bits is <= 1 + number of 0-bits.

The programs for A095287, there is no canonical definition to state claims against.
-/

/-! ## A095287.P18051716472815549089

`∪[A095073(n+1), A095075(n+1)]`
-/

namespace A095287.P18051716472815549089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095075 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A095287.P18051716472815549089

/-! ## A095287.P10812669687570628554

`p?[A072602(n+1)+A030300(A072602(n+1))]`
-/

namespace A095287.P10812669687570628554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072602 (n + 1) + A030300 (A072602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095287.P10812669687570628554

/-! ## A095287.P8632917272614088227

`p?[lt[A145037(n), 2]]`
-/

namespace A095287.P8632917272614088227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095287.P8632917272614088227

/-! ## A095287.P5789090143432864309

`p?[ceil(A072602(2*(n+1))/2)]`
-/

namespace A095287.P5789090143432864309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A072602 (2 * (n + 1)) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095287.P5789090143432864309

/-! ## A095287.P3133156359519196149

`p?[A302043(A072602(n+1))]`
-/

namespace A095287.P3133156359519196149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (A072602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095287.P3133156359519196149

/-! ## A095287.P12498146927219744805

`p?[lt[A102376(n), 4*n+1]]`
-/

namespace A095287.P12498146927219744805
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102376 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095287.P12498146927219744805

/-! ## A095287.P5082287790198277553

`p?[lt[A160383(n), A160380(n)+1]]`
-/

namespace A095287.P5082287790198277553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160383 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095287.P5082287790198277553

/-! ## A095287.P16959961498453363776

`p?[lt[A000120(n), A023416(n)+2]]`
-/

namespace A095287.P16959961498453363776
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095287.P16959961498453363776

/-! ## A095287.P770553401282608074

`p?[lt[A000120(n), A080791(n)+2]]`
-/

namespace A095287.P770553401282608074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095287.P770553401282608074

/-! ## A095287.P14204168917044460934

`p?[A029578(A072602(n+2))]`
-/

namespace A095287.P14204168917044460934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A072602 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095287.P14204168917044460934

/-! ## A095287.P3361446030513846974

`p?[A110654(A072602(2*(n+1)))]`
-/

namespace A095287.P3361446030513846974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A072602 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095287.P3361446030513846974

/-! ## A095287.P6516057536429035445

`p?[lt[A213178(2*n), A004767(n)]]`
-/

namespace A095287.P6516057536429035445
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213178 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095287.P6516057536429035445

/-! ## A095287.P3074744135042261721

`p?[A008619(A072602(2*(n+1))-1)]`
-/

namespace A095287.P3074744135042261721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A072602 (2 * (n + 1)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095287.P3074744135042261721

/-! ## A095287.P11815676935402847977

`p?[lt[A001316(n), A002024(2*n+1)]]`
-/

namespace A095287.P11815676935402847977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095287.P11815676935402847977

/-! ## A095287.P373637004996558165

`p?[A174571(2*A072602(n+1))]`
-/

namespace A095287.P373637004996558165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (2 * A072602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095287.P373637004996558165

/-! ## A095287.P13459374384815763639

`p?[A008624(2*A346300(2*(n+1)))]`
-/

namespace A095287.P13459374384815763639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (2 * A346300 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A095287.P13459374384815763639

/-!
# A095288: Least middle side of 2^n primitive arithmetic triangles, i.e., primitive Heronian triangles whose sides are in arithmetic progression.

The programs for A095288, the canonical program `A095288.P10658693603951078749` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A095288 has offset 0).

The definition of A095288 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A002476, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A095288.P5054684208374598729

`A095267(n)/3`
-/

namespace A095288.P5054684208374598729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095267 n : ℚ) / 3

end

end A095288.P5054684208374598729

namespace A095288

/-- `A095267(n)/3` -/
def P5054684208374598729.Spec : Prop :=
  ∀ n, P5054684208374598729.a n = (A095288 n : ℚ)

end A095288

/-! ## A095288.P10658693603951078749

`a(n-1)*A002476(n)` with `a(0)=4`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A095288

/-- `a(n-1)*A002476(n)` -/
def P10658693603951078749.Spec : Prop :=
  ∀ n, P10658693603951078749.a n = A095288 n

theorem P10658693603951078749.correct : P10658693603951078749.Spec := by
  intro n
  simp only [A095288]

end A095288

/-! ## A095288.P4941178321611947250

`2*∏[p?[xor(1, 3*n)]]`
-/

namespace A095288.P4941178321611947250
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A095288.P4941178321611947250

namespace A095288

/-- `2*∏[p?[xor(1, 3*n)]]` -/
def P4941178321611947250.Spec : Prop :=
  ∀ n, (P4941178321611947250.a n : ℤ) = A095288 n

end A095288

/-! ## A095288.P13038713872642700667

`a(n-1)*p?[or(1, 3*n)]` with `a(0)=4`
-/

namespace A095288.P13038713872642700667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095288.P13038713872642700667

namespace A095288

/-- `a(n-1)*p?[or(1, 3*n)]` -/
def P13038713872642700667.Spec : Prop :=
  ∀ n, (P13038713872642700667.a n : ℤ) = A095288 n

end A095288

/-! ## A095288.P8433198476940136956

`a(n-1)*p?[xor(1, 3*n)]` with `a(0)=4`
-/

namespace A095288.P8433198476940136956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A095288.P8433198476940136956

namespace A095288

/-- `a(n-1)*p?[xor(1, 3*n)]` -/
def P8433198476940136956.Spec : Prop :=
  ∀ n, (P8433198476940136956.a n : ℤ) = A095288 n

end A095288

/-!
# A095290: Number of lower Wythoff primes (A095280) in range ]2^n,2^(n+1)].

The programs for A095290, there is no canonical definition to state claims against.
-/

/-! ## A095290.P17979985384769639979

`A036378(n+1)-A095291(n+1)`
-/

namespace A095290.P17979985384769639979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095291 (n + 1)

end

end A095290.P17979985384769639979

/-! ## A095290.P8743620901198255702

`Δ[A007053(n+1)]-A095291(n+1)`
-/

namespace A095290.P8743620901198255702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095291 (n + 1)

end

end A095290.P8743620901198255702

/-! ## A095290.P13548495085324870467

`A162145(A065475(n+1))-A095291(n+1)`
-/

namespace A095290.P13548495085324870467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095291 (n + 1)

end

end A095290.P13548495085324870467

/-! ## A095290.P8239339734411553546

`A095019(n+1)+A095054(n+1)-A095291(n+1)`
-/

namespace A095290.P8239339734411553546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095019 (n + 1) + (A095054 (n + 1) - A095291 (n + 1))

end

end A095290.P8239339734411553546

/-! ## A095290.P10716134579686332659

`A095060(n+1)+A095061(n+1)-A095291(n+1)`
-/

namespace A095290.P10716134579686332659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095060 (n + 1) + (A095061 (n + 1) - A095291 (n + 1))

end

end A095290.P10716134579686332659

/-!
# A095291: Number of upper Wythoff primes (A095281) in range ]2^n,2^(n+1)].

The programs for A095291, there is no canonical definition to state claims against.
-/

/-! ## A095291.P12947522411216603659

`A036378(n+1)-A095290(n+1)`
-/

namespace A095291.P12947522411216603659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095290 (n + 1)

end

end A095291.P12947522411216603659

/-! ## A095291.P12702312792820535231

`Δ[A007053(n+1)]-A095290(n+1)`
-/

namespace A095291.P12702312792820535231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095290 (n + 1)

end

end A095291.P12702312792820535231

/-! ## A095291.P6823454125110241163

`A162145(A065475(n+1))-A095290(n+1)`
-/

namespace A095291.P6823454125110241163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095290 (n + 1)

end

end A095291.P6823454125110241163

/-! ## A095291.P15632922824364859441

`A095019(n+1)+A095054(n+1)-A095290(n+1)`
-/

namespace A095291.P15632922824364859441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095019 (n + 1) + (A095054 (n + 1) - A095290 (n + 1))

end

end A095291.P15632922824364859441

/-! ## A095291.P4699817913602548278

`A095060(n+1)+A095061(n+1)-A095290(n+1)`
-/

namespace A095291.P4699817913602548278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095060 (n + 1) + (A095061 (n + 1) - A095290 (n + 1))

end

end A095291.P4699817913602548278

/-!
# A095292: Number of A095282-primes in range ]2^n,2^(n+1)].

The programs for A095292, there is no canonical definition to state claims against.
-/

/-! ## A095292.P1705873946801301761

`A036378(n+1)-A095293(n+1)`
-/

namespace A095292.P1705873946801301761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095293 (n + 1)

end

end A095292.P1705873946801301761

/-! ## A095292.P18293601919751862593

`Δ[A007053(n+1)]-A095293(n+1)`
-/

namespace A095292.P18293601919751862593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095293 (n + 1)

end

end A095292.P18293601919751862593

/-! ## A095292.P4184467638188018912

`Δ[A126279(A000124(n))]-A095293(n+1)`
-/

namespace A095292.P4184467638188018912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095293 (n + 1)

end

end A095292.P4184467638188018912

/-! ## A095292.P8449827263958139012

`A162145(A065475(n+1))-A095293(n+1)`
-/

namespace A095292.P8449827263958139012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095293 (n + 1)

end

end A095292.P8449827263958139012

/-! ## A095292.P18198125260261669186

`A095005(n+1)+A095006(n+1)-A095293(n+1)`
-/

namespace A095292.P18198125260261669186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095005 (n + 1) + (A095006 (n + 1) - A095293 (n + 1))

end

end A095292.P18198125260261669186

/-!
# A095293: Number of A095283-primes in range ]2^n,2^(n+1)].

The programs for A095293, there is no canonical definition to state claims against.
-/

/-! ## A095293.P15905357611683046270

`A036378(n+1)-A095292(n+1)`
-/

namespace A095293.P15905357611683046270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095292 (n + 1)

end

end A095293.P15905357611683046270

/-! ## A095293.P5848344731509934035

`Δ[A007053(n+1)]-A095292(n+1)`
-/

namespace A095293.P5848344731509934035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095292 (n + 1)

end

end A095293.P5848344731509934035

/-! ## A095293.P3945279530505355596

`Δ[A060967(2*(n+1))]-A095292(n+1)`
-/

namespace A095293.P3945279530505355596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095292 (n + 1)

end

end A095293.P3945279530505355596

/-! ## A095293.P9869504477372607654

`Δ[A126279(A000124(n))]-A095292(n+1)`
-/

namespace A095293.P9869504477372607654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095292 (n + 1)

end

end A095293.P9869504477372607654

/-! ## A095293.P16662414647802387109

`A162145(A065475(n+1))-A095292(n+1)`
-/

namespace A095293.P16662414647802387109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095292 (n + 1)

end

end A095293.P16662414647802387109

/-!
# A095294: Number of A095284-primes in range ]2^n,2^(n+1)].

The programs for A095294, there is no canonical definition to state claims against.
-/

/-! ## A095294.P14641123842418057960

`A036378(n+1)-A095295(n+1)`
-/

namespace A095294.P14641123842418057960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095295 (n + 1)

end

end A095294.P14641123842418057960

/-! ## A095294.P6124657820026371655

`A162145(n+2)%A095295(n+1)`
-/

namespace A095294.P6124657820026371655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A162145 (n + 2)) (A095295 (n + 1))

end

end A095294.P6124657820026371655

/-! ## A095294.P6475255172407923634

`Δ[A007053(n+1)]-A095295(n+1)`
-/

namespace A095294.P6475255172407923634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095295 (n + 1)

end

end A095294.P6475255172407923634

/-! ## A095294.P14447365287415690113

`A036378(C(n+1, n))%A095295(n+1)`
-/

namespace A095294.P14447365287415690113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036378 (Nat.choose (n + 1) n)) (A095295 (n + 1))

end

end A095294.P14447365287415690113

/-! ## A095294.P2125486002456957024

`Δ[A060967(2*(n+1))]-A095295(n+1)`
-/

namespace A095294.P2125486002456957024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095295 (n + 1)

end

end A095294.P2125486002456957024

/-!
# A095295: Number of A095285-primes in range ]2^n,2^(n+1)].

The programs for A095295, there is no canonical definition to state claims against.
-/

/-! ## A095295.P12036115957671873947

`A036378(n+1)-A095294(n+1)`
-/

namespace A095295.P12036115957671873947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095294 (n + 1)

end

end A095295.P12036115957671873947

/-! ## A095295.P670380940497867351

`Δ[A007053(n+1)]-A095294(n+1)`
-/

namespace A095295.P670380940497867351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095294 (n + 1)

end

end A095295.P670380940497867351

/-! ## A095295.P11857649300448058109

`Δ[A060967(2*(n+1))]-A095294(n+1)`
-/

namespace A095295.P11857649300448058109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060967 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095294 (n + 1)

end

end A095295.P11857649300448058109

/-! ## A095295.P3049708595275608261

`Δ[A126279(A000124(n))]-A095294(n+1)`
-/

namespace A095295.P3049708595275608261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126279 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095294 (n + 1)

end

end A095295.P3049708595275608261

/-! ## A095295.P8679347086846132401

`A162145(A065475(n+1))-A095294(n+1)`
-/

namespace A095295.P8679347086846132401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095294 (n + 1)

end

end A095295.P8679347086846132401

/-!
# A095296: Number of A095286-primes in range ]2^n,2^(n+1)].

The programs for A095296, there is no canonical definition to state claims against.
-/

/-! ## A095296.P14726976697537968328

`A036378(n+1)-A095297(n+1)`
-/

namespace A095296.P14726976697537968328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095297 (n + 1)

end

end A095296.P14726976697537968328

/-! ## A095296.P15314247600103066044

`Δ[A007053(n+1)]-A095297(n+1)`
-/

namespace A095296.P15314247600103066044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095297 (n + 1)

end

end A095296.P15314247600103066044

/-! ## A095296.P7655226126226145714

`A162145(A065475(n+1))-A095297(n+1)`
-/

namespace A095296.P7655226126226145714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095297 (n + 1)

end

end A095296.P7655226126226145714

/-! ## A095296.P7322710746339233182

`A095019(n+1)+A095054(n+1)-A095297(n+1)`
-/

namespace A095296.P7322710746339233182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095019 (n + 1) + (A095054 (n + 1) - A095297 (n + 1))

end

end A095296.P7322710746339233182

/-! ## A095296.P11040249410127697929

`A095060(n+1)+A095061(n+1)-A095297(n+1)`
-/

namespace A095296.P11040249410127697929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095060 (n + 1) + (A095061 (n + 1) - A095297 (n + 1))

end

end A095296.P11040249410127697929

/-!
# A095297: Number of A095287-primes in range ]2^n,2^(n+1)].

The programs for A095297, there is no canonical definition to state claims against.
-/

/-! ## A095297.P14386368357218080924

`A036378(n+1)-A095296(n+1)`
-/

namespace A095297.P14386368357218080924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036378 (n + 1) - A095296 (n + 1)

end

end A095297.P14386368357218080924

/-! ## A095297.P4602359474413938115

`Δ[A007053(n+1)]-A095296(n+1)`
-/

namespace A095297.P4602359474413938115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A095296 (n + 1)

end

end A095297.P4602359474413938115

/-! ## A095297.P6006482167666068727

`A162145(A065475(n+1))-A095296(n+1)`
-/

namespace A095297.P6006482167666068727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162145 (A065475 (n + 1)).toNat - A095296 (n + 1)

end

end A095297.P6006482167666068727

/-! ## A095297.P8867958335033981708

`A095060(n+1)+A095061(n+1)-A095296(n+1)`
-/

namespace A095297.P8867958335033981708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095060 (n + 1) + (A095061 (n + 1) - A095296 (n + 1))

end

end A095297.P8867958335033981708

/-! ## A095297.P14592397776018636009

`A095290(n+1)+A095291(n+1)-A095296(n+1)`
-/

namespace A095297.P14592397776018636009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095290 (n + 1) + (A095291 (n + 1) - A095296 (n + 1))

end

end A095297.P14592397776018636009

/-!
# A095299: Numbers n such that A094757(n) < n.

The programs for A095299, there is no canonical definition to state claims against.
-/

/-! ## A095299.P16645551292808339773

`lt[A094757(n+1), n]+1`
-/

namespace A095299.P16645551292808339773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094757 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A095299.P16645551292808339773

/-! ## A095299.P5419494351609932635

`lt[A094757(xor(n, C(2, n))), n]`
-/

namespace A095299.P5419494351609932635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094757 (Nat.xor n (Nat.choose 2 n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095299.P5419494351609932635

/-! ## A095299.P1051872494708518322

`lt[A094757(n-(12*a(n-1))%2), n]` with `a(0)=1`
-/

namespace A095299.P1051872494708518322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A094757 ((n : ℤ) - Int.tmod (12 * f1 (n - 1)) 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095299.P1051872494708518322

/-! ## A095299.P8981769164825119858

`lt[A094757(A028310(n)), n]`
-/

namespace A095299.P8981769164825119858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094757 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A095299.P8981769164825119858

/-! ## A095299.P12715986349787682560

`A065475(lt[A094757(n+1), n])`
-/

namespace A095299.P12715986349787682560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094757 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A095299.P12715986349787682560

