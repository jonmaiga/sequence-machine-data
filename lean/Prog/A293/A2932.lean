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
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
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
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A293200: Primes p with a primitive root g such that g^3 = g + 1 mod p.

The programs for A293200, there is no canonical definition to state claims against.
-/

/-! ## A293200.P2915877275158272968

`record[A352442(A136241(n+1)/2)]`
-/

namespace A293200.P2915877275158272968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352442 (SequenceMachineLib.roundAway ((A136241 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293200.P2915877275158272968

/-!
# A293202: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of g.f. Product_{i>0} Sum_{j=0..k} j!*x^(j*i).

The programs for A293202, there is no canonical definition to state claims against.
-/

/-! ## A293202.P8300790016905350044

`A082313(A290216(n))%A334018(A007318(n))`
-/

namespace A293202.P8300790016905350044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082313 (A290216 n).toNat) (A334018 (A007318 n).toNat)

end

end A293202.P8300790016905350044

/-! ## A293202.P7789518475661323061

`A082313(A290216(n)%A334018(2*n+1))`
-/

namespace A293202.P7789518475661323061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (Int.tmod (A290216 n) (A334018 (2 * n + 1))).toNat

end

end A293202.P7789518475661323061

/-! ## A293202.P15889644157624629687

`A290216(n)+A067898(A213916(n+1))`
-/

namespace A293202.P15889644157624629687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290216 n + A067898 (A213916 (n + 1)).toNat

end

end A293202.P15889644157624629687

/-! ## A293202.P11195218612666697548

`A005811(A295028(n+1)^3)`
-/

namespace A293202.P11195218612666697548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A295028 (n + 1) ^ 3).toNat

end

end A293202.P11195218612666697548

/-! ## A293202.P14485210170039149145

`A290216(A000007(A077285(n))+n)`
-/

namespace A293202.P14485210170039149145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290216 (A000007 (A077285 n).toNat + (n : ℤ)).toNat

end

end A293202.P14485210170039149145

/-!
# A293204: G.f.: Product_{m>0} (1+x^m+2!*x^(2*m)).

The programs for A293204, there is no canonical definition to state claims against.
-/

/-! ## A293204.P4104343264061891818

`A290216(∑[n+3])`
-/

namespace A293204.P4104343264061891818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290216 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293204.P4104343264061891818

/-! ## A293204.P12289538224660500240

`A293202(∑[n+3])`
-/

namespace A293204.P12289538224660500240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293202 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293204.P12289538224660500240

/-! ## A293204.P16998399596427333045

`or(char[1], A290216(A027379(n+1)))`
-/

namespace A293204.P16998399596427333045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A290216 (A027379 (n + 1)).toNat)

end

end A293204.P16998399596427333045

/-! ## A293204.P3687223349824818660

`A290216(A027379(n+1))%A000051(n)`
-/

namespace A293204.P3687223349824818660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290216 (A027379 (n + 1)).toNat) (A000051 n)

end

end A293204.P3687223349824818660

/-! ## A293204.P5322439374762062376

`gcd(A000038(n), A290216(A027379(n+1)))`
-/

namespace A293204.P5322439374762062376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A290216 (A027379 (n + 1)).toNat)

end

end A293204.P5322439374762062376

/-! ## A293204.P4883373838480660725

`A290216(A027379(n+1))+A000007(n+1)`
-/

namespace A293204.P4883373838480660725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290216 (A027379 (n + 1)).toNat + A000007 (n + 1)

end

end A293204.P4883373838480660725

/-! ## A293204.P6935190454608502916

`A007318(C(2, n))*A290216(A027379(n+1))`
-/

namespace A293204.P6935190454608502916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A290216 (A027379 (n + 1)).toNat

end

end A293204.P6935190454608502916

/-! ## A293204.P11582462651238876144

`lcm(A004442(n)-n, A290216(A027379(n+1)))`
-/

namespace A293204.P11582462651238876144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004442 n - (n : ℤ)) (A290216 (A027379 (n + 1)).toNat)

end

end A293204.P11582462651238876144

/-! ## A293204.P5657782908350238599

`A014963(12*(n+1))*A290216(A027379(n+1))`
-/

namespace A293204.P5657782908350238599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) * A290216 (A027379 (n + 1)).toNat

end

end A293204.P5657782908350238599

/-! ## A293204.P14674514808729160351

`A000045(gcd(n, n+1))*A290216(A027379(n+1))`
-/

namespace A293204.P14674514808729160351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.gcd n (n + 1)) * A290216 (A027379 (n + 1)).toNat

end

end A293204.P14674514808729160351

/-! ## A293204.P5333774389627134260

`A290216(A027379(n+1))+and(2, A000005(n+1)²)`
-/

namespace A293204.P5333774389627134260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290216 (A027379 (n + 1)).toNat + Int.land 2 (A000005 (n + 1) ^ 2)

end

end A293204.P5333774389627134260

/-! ## A293204.P3026401232453745855

`A246465(A001222(n+1))*A290216(A027379(n+1))`
-/

namespace A293204.P3026401232453745855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246465 (A001222 (n + 1)).toNat * A290216 (A027379 (n + 1)).toNat

end

end A293204.P3026401232453745855

/-!
# A293205: Numbers n > 0 such that 2*n = (4*k-2)^m where k, m > 0.

The programs for A293205, the canonical program `A293205.P14817266560565219369` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293205 has offset 1).

The definition of A293205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2543 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293205.P14817266560565219369

`A000463(eq[2, and(3, A052410(n+1))])`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A293205

/-- `A000463(eq[2, and(3, A052410(n+1))])` -/
def P14817266560565219369.Spec : Prop :=
  ∀ n, P14817266560565219369.a n = A293205 (n + 1)

theorem P14817266560565219369.correct : P14817266560565219369.Spec := by
  intro n
  simp only [A293205, Nat.add_sub_cancel]

end A293205

/-! ## A293205.P14790437292226837505

`lt[1, A253641(2*n)+A088705(n)]`
-/

namespace A293205.P14790437292226837505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (2 * n) + A088705 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A293205.P14790437292226837505

namespace A293205

/-- `lt[1, A253641(2*n)+A088705(n)]` -/
def P14790437292226837505.Spec : Prop :=
  ∀ n, (P14790437292226837505.a n : ℤ) = A293205 (n + 1)

end A293205

/-! ## A293205.P10760293807081695160

`A003602(eq[1, A007814(A052410(n+1))])`
-/

namespace A293205.P10760293807081695160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A052410 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293205.P10760293807081695160

namespace A293205

/-- `A003602(eq[1, A007814(A052410(n+1))])` -/
def P10760293807081695160.Spec : Prop :=
  ∀ n, P10760293807081695160.a n = A293205 (n + 1)

end A293205

/-! ## A293205.P13227241206541675084

`A008619(eq[1, A007814(A052410(n+1))])`
-/

namespace A293205.P13227241206541675084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A052410 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293205.P13227241206541675084

namespace A293205

/-- `A008619(eq[1, A007814(A052410(n+1))])` -/
def P13227241206541675084.Spec : Prop :=
  ∀ n, P13227241206541675084.a n = A293205 (n + 1)

end A293205

/-! ## A293205.P13894824226702526304

`A008619(eq[2, A010123(A052410(n+1))])`
-/

namespace A293205.P13894824226702526304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010123 (A052410 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293205.P13894824226702526304

namespace A293205

/-- `A008619(eq[2, A010123(A052410(n+1))])` -/
def P13894824226702526304.Spec : Prop :=
  ∀ n, P13894824226702526304.a n = A293205 (n + 1)

end A293205

/-! ## A293205.P15874000569715483087

`A065033(eq[2, A133570(A052410(n+1))])`
-/

namespace A293205.P15874000569715483087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133570 (A052410 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293205.P15874000569715483087

namespace A293205

/-- `A065033(eq[2, A133570(A052410(n+1))])` -/
def P15874000569715483087.Spec : Prop :=
  ∀ n, P15874000569715483087.a n = A293205 (n + 1)

end A293205

/-! ## A293205.P8545378057487537348

`eq[A253641(2*n)², A088705(4*n)²]`
-/

namespace A293205.P8545378057487537348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253641 (2 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (4 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293205.P8545378057487537348

namespace A293205

/-- `eq[A253641(2*n)², A088705(4*n)²]` -/
def P8545378057487537348.Spec : Prop :=
  ∀ n, (P8545378057487537348.a n : ℤ) = A293205 (n + 1)

end A293205

/-!
# A293206: a(n) = prime(n) + prime(n+1) * prime(n+2).

The programs for A293206, the canonical program `A293206.P17581408903572913072` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293206 has offset 1).

The definition of A293206 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)+A000040(n+2)*A000040(n+3)` (program `A293206.P17581408903572913072`, by `A293206.P17581408903572913072.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A293206.P17581408903572913072

`A000040(n+1)+A000040(n+2)*A000040(n+3)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A293206

/-- `A000040(n+1)+A000040(n+2)*A000040(n+3)` -/
def P17581408903572913072.Spec : Prop :=
  ∀ n, P17581408903572913072.a n = A293206 (n + 1)

theorem P17581408903572913072.correct : P17581408903572913072.Spec := by
  intro n
  simp only [A293206, Nat.add_sub_cancel]

end A293206

/-! ## A293206.P9572967013690763831

`A123134(n+1)+A109805(n+1)`
-/

namespace A293206.P9572967013690763831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) + A109805 (n + 1)

end

end A293206.P9572967013690763831

namespace A293206

/-- `A123134(n+1)+A109805(n+1)` -/
def P9572967013690763831.Spec : Prop :=
  ∀ n, P9572967013690763831.a n = A293206 (n + 1)

theorem P9572967013690763831.correct : P9572967013690763831.Spec := by
  intro n
  simp only [A293206, Nat.add_sub_cancel, A293206.P9572967013690763831.a, A293206.P17581408903572913072.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A109805, A109805.P801713514141343163.a, A123134, A123134.P1141730384481929553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293206

/-! ## A293206.P2776521656159770154

`A357679(n+2)-A037166(n+1)`
-/

namespace A293206.P2776521656159770154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357679 (n + 2) - A037166 (n + 1)

end

end A293206.P2776521656159770154

namespace A293206

/-- `A357679(n+2)-A037166(n+1)` -/
def P2776521656159770154.Spec : Prop :=
  ∀ n, P2776521656159770154.a n = A293206 (n + 1)

theorem P2776521656159770154.correct : P2776521656159770154.Spec := by
  intro n
  simp only [A293206, Nat.add_sub_cancel, A293206.P2776521656159770154.a, A293206.P17581408903572913072.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037166, A037166.P14619227700024520226.a, A357679, A357679.P10693997046708946195.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293206

/-! ## A293206.P15578016431581153749

`A000040(n+1)+A090090(n+1)-A117301(n+1)`
-/

namespace A293206.P15578016431581153749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A090090 (n + 1) - A117301 (n + 1))

end

end A293206.P15578016431581153749

namespace A293206

/-- `A000040(n+1)+A090090(n+1)-A117301(n+1)` -/
def P15578016431581153749.Spec : Prop :=
  ∀ n, P15578016431581153749.a n = A293206 (n + 1)

theorem P15578016431581153749.correct : P15578016431581153749.Spec := by
  intro n
  simp only [A293206, Nat.add_sub_cancel, A293206.P15578016431581153749.a, A293206.P17581408903572913072.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A090090, A090090.P17139850325367953751.a, A117301, A117301.P14122854279291495979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293206

/-! ## A293206.P8271068254477878416

`A000040(n+1)+A046301(n+1)/A000040(n+1)`
-/

namespace A293206.P8271068254477878416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) + (A046301 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A293206.P8271068254477878416

namespace A293206

/-- `A000040(n+1)+A046301(n+1)/A000040(n+1)` -/
def P8271068254477878416.Spec : Prop :=
  ∀ n, P8271068254477878416.a n = (A293206 (n + 1) : ℚ)

end A293206

/-! ## A293206.P12085679699087574784

`A006094(n+2)+p?[ceil(2/acot(n))]`
-/

namespace A293206.P12085679699087574784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 2) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293206.P12085679699087574784

namespace A293206

/-- `A006094(n+2)+p?[ceil(2/acot(n))]` -/
def P12085679699087574784.Spec : Prop :=
  ∀ n, P12085679699087574784.a n = A293206 (n + 1)

end A293206

/-! ## A293206.P11814110510554668767

`Δ[A074745(n+1)+A007504(n)]`
-/

namespace A293206.P11814110510554668767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074745 (n + 1) + A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293206.P11814110510554668767

namespace A293206

/-- `Δ[A074745(n+1)+A007504(n)]` -/
def P11814110510554668767.Spec : Prop :=
  ∀ n, P11814110510554668767.a n = A293206 (n + 1)

end A293206

/-! ## A293206.P4761259537477361790

`A006094(n+2)+Δ[A007504(n)]`
-/

namespace A293206.P4761259537477361790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 2) + (f1 (n + 1) - f1 n)

end

end A293206.P4761259537477361790

namespace A293206

/-- `A006094(n+2)+Δ[A007504(n)]` -/
def P4761259537477361790.Spec : Prop :=
  ∀ n, P4761259537477361790.a n = A293206 (n + 1)

end A293206

/-! ## A293206.P7710775668077963254

`A006094(n+2)+A000040(n+1)`
-/

namespace A293206.P7710775668077963254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 2) + A000040 (n + 1)

end

end A293206.P7710775668077963254

namespace A293206

/-- `A006094(n+2)+A000040(n+1)` -/
def P7710775668077963254.Spec : Prop :=
  ∀ n, P7710775668077963254.a n = A293206 (n + 1)

theorem P7710775668077963254.correct : P7710775668077963254.Spec := by
  intro n
  simp only [A293206, Nat.add_sub_cancel, A293206.P7710775668077963254.a, A293206.P17581408903572913072.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293206

/-! ## A293206.P2336085288482911495

`A008578(n+2)+A006094(n+2)`
-/

namespace A293206.P2336085288482911495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + A006094 (n + 2)

end

end A293206.P2336085288482911495

namespace A293206

/-- `A008578(n+2)+A006094(n+2)` -/
def P2336085288482911495.Spec : Prop :=
  ∀ n, P2336085288482911495.a n = A293206 (n + 1)

end A293206

/-! ## A293206.P13705786952828707328

`A000040(n+1)+A037166(n+2)+A000040(n+2)`
-/

namespace A293206.P13705786952828707328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A037166 (n + 2) + A000040 (n + 2))

end

end A293206.P13705786952828707328

namespace A293206

/-- `A000040(n+1)+A037166(n+2)+A000040(n+2)` -/
def P13705786952828707328.Spec : Prop :=
  ∀ n, P13705786952828707328.a n = A293206 (n + 1)

theorem P13705786952828707328.correct : P13705786952828707328.Spec := by
  intro n
  simp only [A293206, Nat.add_sub_cancel, A293206.P13705786952828707328.a, A293206.P17581408903572913072.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A037166, A037166.P14619227700024520226.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293206

/-! ## A293206.P15641586661116803807

`A123134(n+1)+A006094(n+2)-A006094(n+1)`
-/

namespace A293206.P15641586661116803807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) + (A006094 (n + 2) - A006094 (n + 1))

end

end A293206.P15641586661116803807

namespace A293206

/-- `A123134(n+1)+A006094(n+2)-A006094(n+1)` -/
def P15641586661116803807.Spec : Prop :=
  ∀ n, P15641586661116803807.a n = A293206 (n + 1)

theorem P15641586661116803807.correct : P15641586661116803807.Spec := by
  intro n
  simp only [A293206, Nat.add_sub_cancel, A293206.P15641586661116803807.a, A293206.P17581408903572913072.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A123134, A123134.P1141730384481929553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293206

/-! ## A293206.P6323885333277309190

`A126199(n+1)+A006094(n+2)-A345727(n+1)`
-/

namespace A293206.P6323885333277309190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126199 (n + 1) + (A006094 (n + 2) - A345727 (n + 1))

end

end A293206.P6323885333277309190

namespace A293206

/-- `A126199(n+1)+A006094(n+2)-A345727(n+1)` -/
def P6323885333277309190.Spec : Prop :=
  ∀ n, P6323885333277309190.a n = A293206 (n + 1)

theorem P6323885333277309190.correct : P6323885333277309190.Spec := by
  intro n
  simp only [A293206, Nat.add_sub_cancel, A293206.P6323885333277309190.a, A293206.P17581408903572913072.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006094, A006094.P10257567645245129766.a, A126199, A126199.P9184133218425217126.a, A345727, A345727.P3884411863800253257.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293206

/-! ## A293206.P16620990579301186054

`A123134(n+1)+A123134(n+2)-A345727(n+1)`
-/

namespace A293206.P16620990579301186054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) + (A123134 (n + 2) - A345727 (n + 1))

end

end A293206.P16620990579301186054

namespace A293206

/-- `A123134(n+1)+A123134(n+2)-A345727(n+1)` -/
def P16620990579301186054.Spec : Prop :=
  ∀ n, P16620990579301186054.a n = A293206 (n + 1)

theorem P16620990579301186054.correct : P16620990579301186054.Spec := by
  intro n
  simp only [A293206, Nat.add_sub_cancel, A293206.P16620990579301186054.a, A293206.P17581408903572913072.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A123134, A123134.P1141730384481929553.a, A345727, A345727.P3884411863800253257.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293206

/-! ## A293206.P17093397831704425059

`A034964(n+1)+A006094(n+2)-A034963(n+2)`
-/

namespace A293206.P17093397831704425059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034964 (n + 1) + (A006094 (n + 2) - A034963 (n + 2))

end

end A293206.P17093397831704425059

namespace A293206

/-- `A034964(n+1)+A006094(n+2)-A034963(n+2)` -/
def P17093397831704425059.Spec : Prop :=
  ∀ n, P17093397831704425059.a n = A293206 (n + 1)

end A293206

/-! ## A293206.P15569278967117846160

`A000040(n+1)+A123134(n+2)-A000040(n+2)`
-/

namespace A293206.P15569278967117846160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A123134 (n + 2) - A000040 (n + 2))

end

end A293206.P15569278967117846160

namespace A293206

/-- `A000040(n+1)+A123134(n+2)-A000040(n+2)` -/
def P15569278967117846160.Spec : Prop :=
  ∀ n, P15569278967117846160.a n = A293206 (n + 1)

theorem P15569278967117846160.correct : P15569278967117846160.Spec := by
  intro n
  simp only [A293206, Nat.add_sub_cancel, A293206.P15569278967117846160.a, A293206.P17581408903572913072.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A123134, A123134.P1141730384481929553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293206

/-! ## A293206.P16000842561828733189

`A008864(n+1)+A123134(n+2)-A008864(n+2)`
-/

namespace A293206.P16000842561828733189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A123134 (n + 2) - A008864 (n + 2))

end

end A293206.P16000842561828733189

namespace A293206

/-- `A008864(n+1)+A123134(n+2)-A008864(n+2)` -/
def P16000842561828733189.Spec : Prop :=
  ∀ n, P16000842561828733189.a n = A293206 (n + 1)

theorem P16000842561828733189.correct : P16000842561828733189.Spec := by
  intro n
  simp only [A293206, Nat.add_sub_cancel, A293206.P16000842561828733189.a, A293206.P17581408903572913072.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A123134, A123134.P1141730384481929553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293206

/-! ## A293206.P4997025201337744532

`A127337(n+1)+A006094(n+2)-A127336(n+2)`
-/

namespace A293206.P4997025201337744532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127337 (n + 1) + (A006094 (n + 2) - A127336 (n + 2))

end

end A293206.P4997025201337744532

namespace A293206

/-- `A127337(n+1)+A006094(n+2)-A127336(n+2)` -/
def P4997025201337744532.Spec : Prop :=
  ∀ n, P4997025201337744532.a n = A293206 (n + 1)

end A293206

/-! ## A293206.P2171703014021049152

`A000040(n+1)+A286624(n+2)-A008864(n+2)`
-/

namespace A293206.P2171703014021049152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A286624 (n + 2) - A008864 (n + 2))

end

end A293206.P2171703014021049152

namespace A293206

/-- `A000040(n+1)+A286624(n+2)-A008864(n+2)` -/
def P2171703014021049152.Spec : Prop :=
  ∀ n, P2171703014021049152.a n = A293206 (n + 1)

theorem P2171703014021049152.correct : P2171703014021049152.Spec := by
  intro n
  simp only [A293206, Nat.add_sub_cancel, A293206.P2171703014021049152.a, A293206.P17581408903572913072.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A286624, A286624.P12249411066844732850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293206

/-! ## A293206.P1841238153366663302

`A113935(n+1)+A123134(n+2)-A113935(n+2)`
-/

namespace A293206.P1841238153366663302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) + (A123134 (n + 2) - A113935 (n + 2))

end

end A293206.P1841238153366663302

namespace A293206

/-- `A113935(n+1)+A123134(n+2)-A113935(n+2)` -/
def P1841238153366663302.Spec : Prop :=
  ∀ n, P1841238153366663302.a n = A293206 (n + 1)

theorem P1841238153366663302.correct : P1841238153366663302.Spec := by
  intro n
  simp only [A293206, Nat.add_sub_cancel, A293206.P1841238153366663302.a, A293206.P17581408903572913072.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A113935, A113935.P8490065931569907193.a, A123134, A123134.P1141730384481929553.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293206

/-!
# A293207: Lexicographically earliest sequence of positive terms such that the function f defined by f(n) = Sum_{k=1..n} (i^k * a(k)) for any n >= 0 is injective (where i denotes the imaginary unit), and a(n) != a(n+1) and a(n) != a(n+2) for any n > 0.

The programs for A293207, there is no canonical definition to state claims against.
-/

/-! ## A293207.P14942337811822183445

`abs(Δ[A293209(n)+A293208(n)])`
-/

namespace A293207.P14942337811822183445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293209 n + A293208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A293207.P14942337811822183445

/-! ## A293207.P10363075547058208461

`Δ[A293209(n)-A293208(n)]*A057077(n)`
-/

namespace A293207.P10363075547058208461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293209 n - A293208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A057077 n

end

end A293207.P10363075547058208461

/-! ## A293207.P988088505558660622

`A000194(Δ[A293209(n)+A293208(n)]²)`
-/

namespace A293207.P988088505558660622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293209 n + A293208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A293207.P988088505558660622

/-! ## A293207.P16635968516695851180

`A137735(Δ[A293209(n)+A293208(n)]²)`
-/

namespace A293207.P16635968516695851180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293209 n + A293208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A293207.P16635968516695851180

/-! ## A293207.P10746530383566303647

`A267177(Δ[A293209(n)+A293208(n)]²)`
-/

namespace A293207.P10746530383566303647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293209 n + A293208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A293207.P10746530383566303647

/-! ## A293207.P8598817334946667585

`A000194(Δ[A293208(n)-A293209(n)]²)`
-/

namespace A293207.P8598817334946667585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293208 n - A293209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A293207.P8598817334946667585

/-! ## A293207.P8716829403612743865

`A137735(Δ[A293208(n)-A293209(n)]²)`
-/

namespace A293207.P8716829403612743865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293208 n - A293209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A293207.P8716829403612743865

/-! ## A293207.P3042673956027212402

`A267177(Δ[A293208(n)-A293209(n)]²)`
-/

namespace A293207.P3042673956027212402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293208 n - A293209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267177 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A293207.P3042673956027212402

/-! ## A293207.P2190526820800886259

`A137735(Δ[A293209(n)+A293208(n)]^2)`
-/

namespace A293207.P2190526820800886259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293209 n + A293208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137735 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A293207.P2190526820800886259

/-!
# A293210: a(n) = [x^n] (1/(1 - x)^n)*Sum_{k>=1} prime(k)*x^k.

The programs for A293210, there is no canonical definition to state claims against.
-/

/-! ## A293210.P13970614512226178532

`record[and(A143259(n+1), A254858(n))]`
-/

namespace A293210.P13970614512226178532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143259 (n + 1)) (A254858 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293210.P13970614512226178532

/-! ## A293210.P3288960560406555365

`record[and(A254858(n), A271047(n+1))]`
-/

namespace A293210.P3288960560406555365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A254858 n) (A271047 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293210.P3288960560406555365

/-! ## A293210.P2792431446776075995

`A002266(Δ[Δ[A045680(2*n+1)]])`
-/

namespace A293210.P2792431446776075995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045680 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (f1 (n + 1) - f1 n).toNat

end

end A293210.P2792431446776075995

/-!
# A293211: Triangle T(n,k) is the number of permutations on n elements with at least one k-cycle for 1 <= k <= n.

The programs for A293211, there is no canonical definition to state claims against.
-/

/-! ## A293211.P4030913369689871570

`∑[char[∑[n]]]!-A122974(n+1)`
-/

namespace A293211.P4030913369689871570
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - A122974 (n + 1)

end

end A293211.P4030913369689871570

/-! ## A293211.P11355115825650250702

`Δ[A200748(n)]-A122974(n+1)`
-/

namespace A293211.P11355115825650250702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A122974 (n + 1)

end

end A293211.P11355115825650250702

/-! ## A293211.P4339687926013978706

`A130493(n+1)-A122974(n+1)`
-/

namespace A293211.P4339687926013978706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130493 (n + 1) - A122974 (n + 1)

end

end A293211.P4339687926013978706

/-! ## A293211.P4015098467206963456

`Δ[A051683(n+1)]-A122974(n+1)`
-/

namespace A293211.P4015098467206963456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A122974 (n + 1)

end

end A293211.P4015098467206963456

/-! ## A293211.P46277742392778345

`∏[A130296(n+1)]-A122974(n+1)`
-/

namespace A293211.P46277742392778345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A122974 (n + 1)

end

end A293211.P46277742392778345

/-! ## A293211.P11350849820460466938

`A000142(∑[char[∑[n]]])-A122974(n+1)`
-/

namespace A293211.P11350849820460466938
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (∑ j ∈ Finset.range (n + 1), f1 j) - A122974 (n + 1)

end

end A293211.P11350849820460466938

/-! ## A293211.P9471237473163917493

`A028421(A127739(n+1))-A122974(n+1)`
-/

namespace A293211.P9471237473163917493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 (A127739 (n + 1)).toNat - A122974 (n + 1)

end

end A293211.P9471237473163917493

/-!
# A293212: Binary XOR of the distinct prime divisors of n.

The programs for A293212, there is no canonical definition to state claims against.
-/

/-! ## A293212.P6992268896236978993

`xor(n+2, A384441(n+2))`
-/

namespace A293212.P6992268896236978993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 2 : ℤ) (A384441 (n + 2))

end

end A293212.P6992268896236978993

/-! ## A293212.P484569193220677410

`A072594(∏{p}[n+2, #])`
-/

namespace A293212.P484569193220677410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072594 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A293212.P484569193220677410

/-! ## A293212.P14228342824354292883

`A072594(A007947(n+2))`
-/

namespace A293212.P14228342824354292883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072594 (A007947 (n + 2)).toNat

end

end A293212.P14228342824354292883

/-! ## A293212.P16897904618159407671

`A072594(A331737(n+2))`
-/

namespace A293212.P16897904618159407671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072594 (A331737 (n + 2)).toNat

end

end A293212.P16897904618159407671

/-! ## A293212.P7823106471212214724

`A072594(A350390(n+2))`
-/

namespace A293212.P7823106471212214724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072594 (A350390 (n + 2)).toNat

end

end A293212.P7823106471212214724

/-! ## A293212.P15503140152807327972

`A072594(A372379(n+2))`
-/

namespace A293212.P15503140152807327972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072594 (A372379 (n + 2)).toNat

end

end A293212.P15503140152807327972

/-! ## A293212.P7957246788475089700

`A072594((n+2)/A003557(n+2))`
-/

namespace A293212.P7957246788475089700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072594 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A003557 (n + 2) : ℚ))).toNat

end

end A293212.P7957246788475089700

/-! ## A293212.P3238307647177310944

`A072594(A302138(n+2))`
-/

namespace A293212.P3238307647177310944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072594 (A302138 (n + 2)).toNat

end

end A293212.P3238307647177310944

/-! ## A293212.P9531460037365683437

`A072594(A356191(n+2))`
-/

namespace A293212.P9531460037365683437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072594 (A356191 (n + 2)).toNat

end

end A293212.P9531460037365683437

/-! ## A293212.P2211788765336323850

`A072594(A372329(n+2))`
-/

namespace A293212.P2211788765336323850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072594 (A372329 (n + 2)).toNat

end

end A293212.P2211788765336323850

/-! ## A293212.P2732645972848635932

`A072594(A102631(n+2))`
-/

namespace A293212.P2732645972848635932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072594 (A102631 (n + 2)).toNat

end

end A293212.P2732645972848635932

/-! ## A293212.P14004803007932192811

`A072594((n+2)*A003557(n+2))`
-/

namespace A293212.P14004803007932192811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072594 ((n + 2 : ℤ) * A003557 (n + 2)).toNat

end

end A293212.P14004803007932192811

/-!
# A293213: Primes p with phi(p-1) a primitive root modulo p, where phi(.) is Euler's totient function (A000010).

The programs for A293213, there is no canonical definition to state claims against.
-/

/-! ## A293213.P6611402687930194377

`p?[A325210(∑[(n+1)/∏{p}[n+1, #]])]`
-/

namespace A293213.P6611402687930194377
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325210 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293213.P6611402687930194377

/-! ## A293213.P12378432809071953700

`p?[A002024(A200879(n+1))]`
-/

namespace A293213.P12378432809071953700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A200879 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293213.P12378432809071953700

/-! ## A293213.P12316617951574654848

`p?[∑[A001222(A266531(2*n+1))]]`
-/

namespace A293213.P12316617951574654848
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A266531 (2 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293213.P12316617951574654848

/-!
# A293214: a(n) = Product_{d|n, d<n} A019565(d).

The programs for A293214, there is no canonical definition to state claims against.
-/

/-! ## A293214.P7598409718724305719

`A300830(n+1)*A300831(n+1)*A300832(n+1)`
-/

namespace A293214.P7598409718724305719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300830 (n + 1) * A300831 (n + 1) * A300832 (n + 1)

end

end A293214.P7598409718724305719

/-! ## A293214.P11079276569951205816

`∏{d}[n+1, A019565(#%(n+1))]`
-/

namespace A293214.P11079276569951205816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A019565 (d % (n + 1))

end

end A293214.P11079276569951205816

/-! ## A293214.P11271400185392937735

`A319990(n+1)*A319991(n+1)*A319992(n+1)`
-/

namespace A293214.P11271400185392937735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319990 (n + 1) * A319991 (n + 1) * A319992 (n + 1)

end

end A293214.P11271400185392937735

/-! ## A293214.P7053301223156907475

`∏{d}[n+1, A019565(#)]/A019565(n+1)`
-/

namespace A293214.P7053301223156907475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), A019565 d : ℤ) : ℚ) / (A019565 (n + 1) : ℚ)

end

end A293214.P7053301223156907475

/-! ## A293214.P13775120874959374811

`A165633((n+1)²)*A278240(n+1)`
-/

namespace A293214.P13775120874959374811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165633 ((n + 1) ^ 2) * A278240 (n + 1)

end

end A293214.P13775120874959374811

/-!
# A293215: Restricted growth sequence transform of A293214, where A293214(n) = Product_{d|n, d<n} A019565(d).

The programs for A293215, there is no canonical definition to state claims against.
-/

/-! ## A293215.P1198924686989704983

`A293232(n+1)%A013658(n+1)`
-/

namespace A293215.P1198924686989704983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293232 (n + 1)) (A013658 (n + 1))

end

end A293215.P1198924686989704983

/-! ## A293215.P13955395466201857288

`A300835(n+1)%A119877(n+1)`
-/

namespace A293215.P13955395466201857288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300835 (n + 1)) (A119877 (n + 1))

end

end A293215.P13955395466201857288

/-! ## A293215.P17509946460741988309

`ceil(1/A193952(n))*A300835(n+1)`
-/

namespace A293215.P17509946460741988309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A193952 n : ℚ)⌉ * A300835 (n + 1)

end

end A293215.P17509946460741988309

/-! ## A293215.P6924216502780535677

`∏{e}[A291275(n+1), #*A293232(n+1)]`
-/

namespace A293215.P6924216502780535677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291275 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℤ) * A293232 (n + 1)

end

end A293215.P6924216502780535677

/-! ## A293215.P12913190276977775974

`ceil(1/A094166(n+2))*A300835(n+1)`
-/

namespace A293215.P12913190276977775974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A094166 (n + 2) : ℚ)⌉ * A300835 (n + 1)

end

end A293215.P12913190276977775974

/-! ## A293215.P7199223948223193438

`A300835(n+1)+A102448(A156850(n+1))`
-/

namespace A293215.P7199223948223193438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300835 (n + 1) + A102448 (A156850 (n + 1)).toNat

end

end A293215.P7199223948223193438

/-!
# A293218: a(n) = A007913(A292270(n)).

The programs for A293218, there is no canonical definition to state claims against.
-/

/-! ## A293218.P13824274957377862268

`A007913(A292270(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293218.P13824274957377862268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A292270 n).toNat

end

end A293218.P13824274957377862268

/-! ## A293218.P4678289229352071254

`A292270(n)/A293219(n)²`
-/

namespace A293218.P4678289229352071254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292270 n : ℚ) / (A293219 n ^ 2 : ℚ)

end

end A293218.P4678289229352071254

/-! ## A293218.P10441946776705414062

`A292947(n)/A336643(A292270(n))`
-/

namespace A293218.P10441946776705414062
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292947 n : ℚ) / (A336643 (A292270 n).toNat : ℚ)

end

end A293218.P10441946776705414062

/-! ## A293218.P11223791796276980456

`A336643(A292270(n)*A292947(n))`
-/

namespace A293218.P11223791796276980456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (A292270 n * A292947 n).toNat

end

end A293218.P11223791796276980456

/-! ## A293218.P267817091305416063

`A127586(A378186(n+1))`
-/

namespace A293218.P267817091305416063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127586 (A378186 (n + 1)).toNat

end

end A293218.P267817091305416063

/-!
# A293219: a(n) = A000188(A292270(n)).

The programs for A293219, there is no canonical definition to state claims against.
-/

/-! ## A293219.P13021001016354926127

`A000188(A292270(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293219.P13021001016354926127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A292270 n).toNat

end

end A293219.P13021001016354926127

/-! ## A293219.P6891367803692463753

`sqrt(A292270(n)/A293218(n))`
-/

namespace A293219.P6891367803692463753
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A292270 n : ℚ) / (A293218 n : ℚ) : ℝ)

end

end A293219.P6891367803692463753

/-! ## A293219.P14098317022769741036

`root(A292270(n)/A293218(n), 2)%A014132(n+1)`
-/

namespace A293219.P14098317022769741036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((A292270 n : ℚ) / (A293218 n : ℚ) : ℝ) ^ (1 / (2 : ℝ)))) (A014132 (n + 1))

end

end A293219.P14098317022769741036

/-! ## A293219.P15836410915670293049

`(A292270(n)/A293218(n))^2^A008683(A020484(n))`
-/

namespace A293219.P15836410915670293049
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A292270 n : ℚ) / (A293218 n : ℚ) : ℝ) ^ ((2 : ℚ) ^ (A008683 (A020484 n).toNat : ℤ) : ℝ)

end

end A293219.P15836410915670293049

/-! ## A293219.P6928031050824797870

`root(A292270(n)/A293218(n), 2%A247533(n+1))`
-/

namespace A293219.P6928031050824797870
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A292270 n : ℚ) / (A293218 n : ℚ) : ℝ) ^ (1 / (Int.tmod 2 (A247533 (n + 1)) : ℝ))

end

end A293219.P6928031050824797870

/-! ## A293219.P664312510589901812

`A019554(A292270(n)/A292947(n))`
-/

namespace A293219.P664312510589901812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.roundAway ((A292270 n : ℚ) / (A292947 n : ℚ))).toNat

end

end A293219.P664312510589901812

/-! ## A293219.P1673708543973086222

`A056622(A292270(n)/A293218(n))`
-/

namespace A293219.P1673708543973086222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (SequenceMachineLib.roundAway ((A292270 n : ℚ) / (A293218 n : ℚ))).toNat

end

end A293219.P1673708543973086222

/-! ## A293219.P144904278678291896

`A331362(A292270(n)/A293218(n))`
-/

namespace A293219.P144904278678291896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331362 (SequenceMachineLib.roundAway ((A292270 n : ℚ) / (A293218 n : ℚ))).toNat

end

end A293219.P144904278678291896

/-! ## A293219.P17471900536072020187

`A337101(2*A292270(n))`
-/

namespace A293219.P17471900536072020187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337101 (2 * A292270 n).toNat

end

end A293219.P17471900536072020187

/-! ## A293219.P7299592069186977478

`A000196(A292270(n)/A293218(n))`
-/

namespace A293219.P7299592069186977478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A292270 n : ℚ) / (A293218 n : ℚ))).toNat

end

end A293219.P7299592069186977478

/-! ## A293219.P14767610836183208749

`A019554(A292270(n)/A293218(n))`
-/

namespace A293219.P14767610836183208749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (SequenceMachineLib.roundAway ((A292270 n : ℚ) / (A293218 n : ℚ))).toNat

end

end A293219.P14767610836183208749

/-! ## A293219.P14518716309898208004

`A204988(2*n+1)+A057918(A292270(n))`
-/

namespace A293219.P14518716309898208004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204988 (2 * n + 1) + A057918 (A292270 n).toNat

end

end A293219.P14518716309898208004

/-!
# A293221: a(n) = Product_{d|n, d<n} A019565(A289813(d)); a product obtained from the 1-digits present in ternary expansions of proper divisors of n.

The programs for A293221, there is no canonical definition to state claims against.
-/

/-! ## A293221.P414769535110917663

`A351081(n+1)/A019565(A289813(n+1))`
-/

namespace A293221.P414769535110917663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351081 (n + 1) : ℚ) / (A019565 (A289813 (n + 1)).toNat : ℚ)

end

end A293221.P414769535110917663

/-! ## A293221.P3914018032497088275

`A347452(A293223(n+1)%A239010(3*(n+1)))`
-/

namespace A293221.P3914018032497088275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347452 (Int.tmod (A293223 (n + 1)) (A239010 (3 * (n + 1)))).toNat

end

end A293221.P3914018032497088275

/-!
# A293222: a(n) = Product_{d|n, d<n} A019565(A289814(d)); a product obtained from the 2-digits present in ternary expansions of proper divisors of n.

The programs for A293222, there is no canonical definition to state claims against.
-/

/-! ## A293222.P11156319440568410260

`A351082(n+1)/A019565(A289814(n+1))`
-/

namespace A293222.P11156319440568410260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351082 (n + 1) : ℚ) / (A019565 (A289814 (n + 1)).toNat : ℚ)

end

end A293222.P11156319440568410260

/-! ## A293222.P18435784365615925072

`A294932(A293224(n+1)!²)`
-/

namespace A293222.P18435784365615925072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294932 (Nat.factorial (A293224 (n + 1)).toNat ^ 2)

end

end A293222.P18435784365615925072

/-! ## A293222.P2129252351229331701

`∑{d}[A293114(A293224(n+1)), A293176(#)]`
-/

namespace A293222.P2129252351229331701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293114 (A293224 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A293176 d

end

end A293222.P2129252351229331701

/-! ## A293222.P13181457970636354

`A002182(A293224(n+1)%A250407(n+1))`
-/

namespace A293222.P13181457970636354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (Int.tmod (A293224 (n + 1)) (A250407 (n + 1))).toNat

end

end A293222.P13181457970636354

/-! ## A293222.P15962913559952156230

`A002182(A293224(n+1))%A081464(n+4)`
-/

namespace A293222.P15962913559952156230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002182 (A293224 (n + 1)).toNat) (A081464 (n + 4))

end

end A293222.P15962913559952156230

/-!
# A293223: Restricted growth sequence transform of A293221, a product formed from the 1-digits present in the ternary expansion of proper divisors of n.

The programs for A293223, there is no canonical definition to state claims against.
-/

/-! ## A293223.P6375561230497337644

`A002260(A038722(A293225(n+1)))`
-/

namespace A293223.P6375561230497337644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (A293225 (n + 1)).toNat).toNat

end

end A293223.P6375561230497337644

/-! ## A293223.P13984817133852953164

`A004736(A293225(n+1))`
-/

namespace A293223.P13984817133852953164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A293225 (n + 1)).toNat

end

end A293223.P13984817133852953164

/-! ## A293223.P15856744762150135808

`A025581(A293225(n+1)-1)+1`
-/

namespace A293223.P15856744762150135808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A293225 (n + 1) - 1).toNat + 1

end

end A293223.P15856744762150135808

/-! ## A293223.P15058543946588412612

`A193739(A293225(n+1))+A057427(n)`
-/

namespace A293223.P15058543946588412612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A293225 (n + 1)).toNat + A057427 n

end

end A293223.P15058543946588412612

/-! ## A293223.P1044569259637251678

`A193739(A293225(n+1))-A057428(n)`
-/

namespace A293223.P1044569259637251678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A293225 (n + 1)).toNat - A057428 n

end

end A293223.P1044569259637251678

/-! ## A293223.P18083109723007899934

`A193739(A293225(n+1))+1-A000007(n)`
-/

namespace A293223.P18083109723007899934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A293225 (n + 1)).toNat + (1 - A000007 n)

end

end A293223.P18083109723007899934

/-! ## A293223.P14983971398321425439

`A193739(A293225(n+1))+2-A054977(n)`
-/

namespace A293223.P14983971398321425439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A293225 (n + 1)).toNat + (2 - A054977 n)

end

end A293223.P14983971398321425439

/-! ## A293223.P14839708027005906625

`A193739(A293225(n+1))%A000203(n+1)+1`
-/

namespace A293223.P14839708027005906625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193739 (A293225 (n + 1)).toNat) (A000203 (n + 1)) + 1

end

end A293223.P14839708027005906625

/-! ## A293223.P12650240768915996333

`A193739(A293225(n+1))+A000040(n+1)%2`
-/

namespace A293223.P12650240768915996333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A293225 (n + 1)).toNat + Int.tmod (A000040 (n + 1)) 2

end

end A293223.P12650240768915996333

/-! ## A293223.P16505880710542413726

`A193739(A293225(n+1))+record[A014963(n+2)]%2`
-/

namespace A293223.P16505880710542413726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A293225 (n + 1)).toNat + Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2

end

end A293223.P16505880710542413726

/-! ## A293223.P5148748824436331233

`A193739(A293225(n+1))+A020639(A000010(n+2))-1`
-/

namespace A293223.P5148748824436331233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (A293225 (n + 1)).toNat + A020639 (A000010 (n + 2)).toNat - 1

end

end A293223.P5148748824436331233

/-!
# A293224: Restricted growth sequence transform of A293222, a product formed from the 2-digits present in the ternary expansions of proper divisors of n.

The programs for A293224, there is no canonical definition to state claims against.
-/

/-! ## A293224.P13335457234494598157

`A002260(A293225(n+1))`
-/

namespace A293224.P13335457234494598157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A293225 (n + 1)).toNat

end

end A293224.P13335457234494598157

/-! ## A293224.P2414095719809679361

`A144328(A293225(n+1)+1)`
-/

namespace A293224.P2414095719809679361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (A293225 (n + 1) + 1).toNat

end

end A293224.P2414095719809679361

/-! ## A293224.P3675878261460949566

`A128227(A293225(n+1)-1)`
-/

namespace A293224.P3675878261460949566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (A293225 (n + 1) - 1).toNat

end

end A293224.P3675878261460949566

/-! ## A293224.P10544371676855764831

`A002262(A293225(n+1)-1)+1`
-/

namespace A293224.P10544371676855764831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A293225 (n + 1) - 1).toNat + 1

end

end A293224.P10544371676855764831

/-! ## A293224.P15364744896397525411

`A131818(A293225(n+1)+1)-1`
-/

namespace A293224.P15364744896397525411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A293225 (n + 1) + 1).toNat - 1

end

end A293224.P15364744896397525411

/-! ## A293224.P13898020180402874361

`A002262(A293225(n+1)+A000007(n))`
-/

namespace A293224.P13898020180402874361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A293225 (n + 1) + A000007 n).toNat

end

end A293224.P13898020180402874361

/-! ## A293224.P11376429574226877979

`A002262(A054977(n)*A293225(n+1))`
-/

namespace A293224.P11376429574226877979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A054977 n * A293225 (n + 1)).toNat

end

end A293224.P11376429574226877979

/-! ## A293224.P5411097371923723467

`A002262(lcm(A054977(n), A293225(n+1)))`
-/

namespace A293224.P5411097371923723467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (Int.lcm (A054977 n) (A293225 (n + 1)))

end

end A293224.P5411097371923723467

/-! ## A293224.P14088419936560859882

`or(A002262(A293225(n+1)), A080339(n+1))`
-/

namespace A293224.P14088419936560859882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002262 (A293225 (n + 1)).toNat) (A080339 (n + 1))

end

end A293224.P14088419936560859882

/-! ## A293224.P11509940817192137816

`A002262((A080339(n+1)+1)*A293225(n+1))`
-/

namespace A293224.P11509940817192137816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((A080339 (n + 1) + 1) * A293225 (n + 1)).toNat

end

end A293224.P11509940817192137816

/-!
# A293225: Compound filter: a(n) = P(A293224(n), A293223(n)), where P(n,k) is sequence A000027 used as a pairing function.

The programs for A293225, there is no canonical definition to state claims against.
-/

/-! ## A293225.P1448598993828097992

`1/2*(2+(A293224(n+1)+A293223(n+1))²-A293224(n+1)-3*A293223(n+1))`
-/

namespace A293225.P1448598993828097992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (2 + (A293224 (n + 1) + A293223 (n + 1)) ^ 2 - A293224 (n + 1) - 3 * A293223 (n + 1) : ℚ)

end

end A293225.P1448598993828097992

/-!
# A293226: Restricted growth sequence transform of A293225, a filter combining two products, the other formed from the 1-digits (A293221) and the other from the 2-digits (A293222) present in the ternary expansions of proper divisors of n.

The programs for A293226, there is no canonical definition to state claims against.
-/

/-! ## A293226.P8845526631308146346

`A320010(3*n+3)%(A114395(n+1)+1)`
-/

namespace A293226.P8845526631308146346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320010 (3 * n + 3)) (A114395 (n + 1) + 1)

end

end A293226.P8845526631308146346

/-! ## A293226.P11300466449228803618

`A320010(3*(A000007((n+1)*(4*n+3))+n)+3)`
-/

namespace A293226.P11300466449228803618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320010 (3 * (A000007 ((n + 1) * (4 * n + 3)) + (n : ℤ)) + 3).toNat

end

end A293226.P11300466449228803618

/-! ## A293226.P17102840193991368097

`A320010(3*n+3)%A000096(A033951(n))`
-/

namespace A293226.P17102840193991368097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320010 (3 * n + 3)) (A000096 (A033951 n).toNat)

end

end A293226.P17102840193991368097

/-! ## A293226.P16041520472484078976

`A320010(3*n+3)+A010057(A046328(n+1))`
-/

namespace A293226.P16041520472484078976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320010 (3 * n + 3) + A010057 (A046328 (n + 1)).toNat

end

end A293226.P16041520472484078976

/-!
# A293227: a(n) is the number of proper divisors of n that are squarefree.

The programs for A293227, the canonical program `A293227.P10221016559153575789` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293227 has offset 1).

The definition of A293227 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A034444, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293227.P10221016559153575789

`A034444(n+1)-A008966(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A293227

/-- `A034444(n+1)-A008966(n+1)` -/
def P10221016559153575789.Spec : Prop :=
  ∀ n, P10221016559153575789.a n = A293227 (n + 1)

theorem P10221016559153575789.correct : P10221016559153575789.Spec := by
  intro n
  simp only [A293227, Nat.add_sub_cancel]

end A293227

/-! ## A293227.P16686887926206441376

`2^A001221(n+1)-A008683(n+1)²`
-/

namespace A293227.P16686887926206441376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ) - (A008683 (n + 1) ^ 2 : ℚ)

end

end A293227.P16686887926206441376

namespace A293227

/-- `2^A001221(n+1)-A008683(n+1)²` -/
def P16686887926206441376.Spec : Prop :=
  ∀ n, P16686887926206441376.a n = (A293227 (n + 1) : ℚ)

end A293227

/-! ## A293227.P1853787176247137140

`A309307(n+1)+A107078(n+1)`
-/

namespace A293227.P1853787176247137140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309307 (n + 1) + A107078 (n + 1)

end

end A293227.P1853787176247137140

namespace A293227

/-- `A309307(n+1)+A107078(n+1)` -/
def P1853787176247137140.Spec : Prop :=
  ∀ n, P1853787176247137140.a n = A293227 (n + 1)

end A293227

/-! ## A293227.P12652760767667087629

`A013928(n+1)-A368673(n+1)`
-/

namespace A293227.P12652760767667087629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) - A368673 (n + 1)

end

end A293227.P12652760767667087629

namespace A293227

/-- `A013928(n+1)-A368673(n+1)` -/
def P12652760767667087629.Spec : Prop :=
  ∀ n, P12652760767667087629.a n = A293227 (n + 1)

end A293227

/-! ## A293227.P15297783089191058050

`A034444(n+1)-abs(A008683(n+1))`
-/

namespace A293227.P15297783089191058050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - |A008683 (n + 1)|

end

end A293227.P15297783089191058050

namespace A293227

/-- `A034444(n+1)-abs(A008683(n+1))` -/
def P15297783089191058050.Spec : Prop :=
  ∀ n, P15297783089191058050.a n = A293227 (n + 1)

end A293227

/-! ## A293227.P8563860966387135083

`abs(A008683(n+1)-A158522(n+1))`
-/

namespace A293227.P8563860966387135083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (n + 1) - A158522 (n + 1)|

end

end A293227.P8563860966387135083

namespace A293227

/-- `abs(A008683(n+1)-A158522(n+1))` -/
def P8563860966387135083.Spec : Prop :=
  ∀ n, P8563860966387135083.a n = A293227 (n + 1)

end A293227

/-! ## A293227.P6106947032446862413

`A034444(n+1)-A069158(n+1)²`
-/

namespace A293227.P6106947032446862413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A069158 (n + 1) ^ 2

end

end A293227.P6106947032446862413

namespace A293227

/-- `A034444(n+1)-A069158(n+1)²` -/
def P6106947032446862413.Spec : Prop :=
  ∀ n, P6106947032446862413.a n = A293227 (n + 1)

end A293227

/-! ## A293227.P8892927817734227846

`A034444(n+1)-A080323(n+1)²`
-/

namespace A293227.P8892927817734227846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A080323 (n + 1) ^ 2

end

end A293227.P8892927817734227846

namespace A293227

/-- `A034444(n+1)-A080323(n+1)²` -/
def P8892927817734227846.Spec : Prop :=
  ∀ n, P8892927817734227846.a n = A293227 (n + 1)

end A293227

/-! ## A293227.P15166552503398712850

`A034444(n+1)+A107078(n+1)-1`
-/

namespace A293227.P15166552503398712850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) + (A107078 (n + 1) - 1)

end

end A293227.P15166552503398712850

namespace A293227

/-- `A034444(n+1)+A107078(n+1)-1` -/
def P15166552503398712850.Spec : Prop :=
  ∀ n, P15166552503398712850.a n = A293227 (n + 1)

end A293227

/-! ## A293227.P5650341921127038667

`A309307(n+1)+1-A008966(n+1)`
-/

namespace A293227.P5650341921127038667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309307 (n + 1) + (1 - A008966 (n + 1))

end

end A293227.P5650341921127038667

namespace A293227

/-- `A309307(n+1)+1-A008966(n+1)` -/
def P5650341921127038667.Spec : Prop :=
  ∀ n, P5650341921127038667.a n = A293227 (n + 1)

end A293227

/-! ## A293227.P17003001865441161092

`A034444(n+1)-and(1, A323308(n+1))`
-/

namespace A293227.P17003001865441161092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - Int.land 1 (A323308 (n + 1))

end

end A293227.P17003001865441161092

namespace A293227

/-- `A034444(n+1)-and(1, A323308(n+1))` -/
def P17003001865441161092.Spec : Prop :=
  ∀ n, P17003001865441161092.a n = A293227 (n + 1)

end A293227

/-! ## A293227.P5038809218123820517

`A000005(∏{p}[n+1, #])-A008966(n+1)`
-/

namespace A293227.P5038809218123820517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f1 n), p) - A008966 (n + 1)

end

end A293227.P5038809218123820517

namespace A293227

/-- `A000005(∏{p}[n+1, #])-A008966(n+1)` -/
def P5038809218123820517.Spec : Prop :=
  ∀ n, P5038809218123820517.a n = A293227 (n + 1)

end A293227

/-! ## A293227.P1361292215628131968

`∑{d}[n+1, A007427(#)*A065814((n+1)/#)]`
-/

namespace A293227.P1361292215628131968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A065814 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293227.P1361292215628131968

namespace A293227

/-- `∑{d}[n+1, A007427(#)*A065814((n+1)/#)]` -/
def P1361292215628131968.Spec : Prop :=
  ∀ n, P1361292215628131968.a n = A293227 (n + 1)

end A293227

/-! ## A293227.P14745354739435744184

`∑{d}[n+1, A034444(#)*A157658((n+1)/#)]`
-/

namespace A293227.P14745354739435744184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293227.P14745354739435744184

namespace A293227

/-- `∑{d}[n+1, A034444(#)*A157658((n+1)/#)]` -/
def P14745354739435744184.Spec : Prop :=
  ∀ n, P14745354739435744184.a n = A293227 (n + 1)

end A293227

/-! ## A293227.P9303020278706052673

`∑{d}[n+1, A001065(#)*A328729((n+1)/#)]`
-/

namespace A293227.P9303020278706052673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A328729 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293227.P9303020278706052673

namespace A293227

/-- `∑{d}[n+1, A001065(#)*A328729((n+1)/#)]` -/
def P9303020278706052673.Spec : Prop :=
  ∀ n, P9303020278706052673.a n = A293227 (n + 1)

end A293227

/-! ## A293227.P4300289884779835379

`∑{d}[n+1, A078461(#)*A296066((n+1)/#)]`
-/

namespace A293227.P4300289884779835379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A078461 d * A296066 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293227.P4300289884779835379

namespace A293227

/-- `∑{d}[n+1, A078461(#)*A296066((n+1)/#)]` -/
def P4300289884779835379.Spec : Prop :=
  ∀ n, P4300289884779835379.a n = A293227 (n + 1)

end A293227

/-! ## A293227.P17819729666184272100

`∑{d}[n+1, A238952(#)*A307445((n+1)/#)]`
-/

namespace A293227.P17819729666184272100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A238952 d * A307445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293227.P17819729666184272100

namespace A293227

/-- `∑{d}[n+1, A238952(#)*A307445((n+1)/#)]` -/
def P17819729666184272100.Spec : Prop :=
  ∀ n, P17819729666184272100.a n = A293227 (n + 1)

end A293227

/-! ## A293227.P2017451451660895086

`∑{d}[n+1, A318325(#)*A378536((n+1)/#)]`
-/

namespace A293227.P2017451451660895086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A318325 d * A378536 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293227.P2017451451660895086

namespace A293227

/-- `∑{d}[n+1, A318325(#)*A378536((n+1)/#)]` -/
def P2017451451660895086.Spec : Prop :=
  ∀ n, P2017451451660895086.a n = A293227 (n + 1)

end A293227

/-! ## A293227.P3170795346789396028

`∑{d}[n+1, A333976(#)*A369453((n+1)/#)]`
-/

namespace A293227.P3170795346789396028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A333976 d * A369453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293227.P3170795346789396028

namespace A293227

/-- `∑{d}[n+1, A333976(#)*A369453((n+1)/#)]` -/
def P3170795346789396028.Spec : Prop :=
  ∀ n, P3170795346789396028.a n = A293227 (n + 1)

end A293227

/-! ## A293227.P43560098922716704

`A034444(n+1)-A008683(A057521(n+1))`
-/

namespace A293227.P43560098922716704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) - A008683 (A057521 (n + 1)).toNat

end

end A293227.P43560098922716704

namespace A293227

/-- `A034444(n+1)-A008683(A057521(n+1))` -/
def P43560098922716704.Spec : Prop :=
  ∀ n, P43560098922716704.a n = A293227 (n + 1)

end A293227

/-!
# A293228: a(n) is the sum of proper divisors of n that are squarefree.

The programs for A293228, the canonical program `A293228.P12584576629834751598` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293228 has offset 1).

The definition of A293228 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, A048250, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293228.P12584576629834751598

`A048250(n+1)-A008966(n+1)*(n+1)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A293228

/-- `A048250(n+1)-A008966(n+1)*(n+1)` -/
def P12584576629834751598.Spec : Prop :=
  ∀ n, P12584576629834751598.a n = A293228 (n + 1)

theorem P12584576629834751598.correct : P12584576629834751598.Spec := by
  intro n
  simp only [A293228, Nat.add_sub_cancel]

end A293228

/-! ## A293228.P5755875982591554637

`∏{p}[n+1, #+1]-C(∏{p}[n+1, #], n)`
-/

namespace A293228.P5755875982591554637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (p + 1) : ℕ) : ℤ) - (Nat.choose (∏ p ∈ Nat.primeFactors (f2 n), p) n : ℤ)

end

end A293228.P5755875982591554637

namespace A293228

/-- `∏{p}[n+1, #+1]-C(∏{p}[n+1, #], n)` -/
def P5755875982591554637.Spec : Prop :=
  ∀ n, P5755875982591554637.a n = A293228 (n + 1)

end A293228

/-! ## A293228.P18118356434020239541

`A048250(n+1)-abs(A055615(n+1))`
-/

namespace A293228.P18118356434020239541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - |A055615 (n + 1)|

end

end A293228.P18118356434020239541

namespace A293228

/-- `A048250(n+1)-abs(A055615(n+1))` -/
def P18118356434020239541.Spec : Prop :=
  ∀ n, P18118356434020239541.a n = A293228 (n + 1)

end A293228

/-! ## A293228.P1077857041571308808

`A048250(n+1)-C(A007947(n+1), n)`
-/

namespace A293228.P1077857041571308808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - (Nat.choose (A007947 (n + 1)).toNat n : ℤ)

end

end A293228.P1077857041571308808

namespace A293228

/-- `A048250(n+1)-C(A007947(n+1), n)` -/
def P1077857041571308808.Spec : Prop :=
  ∀ n, P1077857041571308808.a n = A293228 (n + 1)

end A293228

/-! ## A293228.P14231637948148424900

`∑{d}[n+1, A048250(#)*A157658((n+1)/#)]`
-/

namespace A293228.P14231637948148424900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048250 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293228.P14231637948148424900

namespace A293228

/-- `∑{d}[n+1, A048250(#)*A157658((n+1)/#)]` -/
def P14231637948148424900.Spec : Prop :=
  ∀ n, P14231637948148424900.a n = A293228 (n + 1)

end A293228

/-! ## A293228.P7269127531035146382

`∑{d}[n+1, A336851(#)*A347238((n+1)/#)]`
-/

namespace A293228.P7269127531035146382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A336851 d * A347238 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293228.P7269127531035146382

namespace A293228

/-- `∑{d}[n+1, A336851(#)*A347238((n+1)/#)]` -/
def P7269127531035146382.Spec : Prop :=
  ∀ n, P7269127531035146382.a n = A293228 (n + 1)

end A293228

/-! ## A293228.P8055836683442128262

`A048250(n+1)-A008683(n+1)*A055615(n+1)`
-/

namespace A293228.P8055836683442128262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A008683 (n + 1) * A055615 (n + 1)

end

end A293228.P8055836683442128262

namespace A293228

/-- `A048250(n+1)-A008683(n+1)*A055615(n+1)` -/
def P8055836683442128262.Spec : Prop :=
  ∀ n, P8055836683442128262.a n = A293228 (n + 1)

end A293228

/-! ## A293228.P18414250132338126803

`A048250(n+1)-A008683(n+1)²*A007913(n+1)`
-/

namespace A293228.P18414250132338126803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048250 (n + 1) - A008683 (n + 1) ^ 2 * A007913 (n + 1)

end

end A293228.P18414250132338126803

namespace A293228

/-- `A048250(n+1)-A008683(n+1)²*A007913(n+1)` -/
def P18414250132338126803.Spec : Prop :=
  ∀ n, P18414250132338126803.a n = A293228 (n + 1)

end A293228

/-! ## A293228.P10030282161279922780

`A048250(n+1)-A055615(n+1)²/A007947(n+1)`
-/

namespace A293228.P10030282161279922780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) - (A055615 (n + 1) ^ 2 : ℚ) / (A007947 (n + 1) : ℚ)

end

end A293228.P10030282161279922780

namespace A293228

/-- `A048250(n+1)-A055615(n+1)²/A007947(n+1)` -/
def P10030282161279922780.Spec : Prop :=
  ∀ n, P10030282161279922780.a n = (A293228 (n + 1) : ℚ)

end A293228

/-! ## A293228.P13744235132118409889

`A048250(n+1)-A055615(n+1)²/A055231(n+1)`
-/

namespace A293228.P13744235132118409889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048250 (n + 1) : ℚ) - (A055615 (n + 1) ^ 2 : ℚ) / (A055231 (n + 1) : ℚ)

end

end A293228.P13744235132118409889

namespace A293228

/-- `A048250(n+1)-A055615(n+1)²/A055231(n+1)` -/
def P13744235132118409889.Spec : Prop :=
  ∀ n, P13744235132118409889.a n = (A293228 (n + 1) : ℚ)

end A293228

/-!
# A293229: a(0) = 0; and for n > 0, a(n) = a(n-1) + (A008966(4n+3) - A008966(4n+1)).

The programs for A293229, the canonical program `A293229.P498718017162210645` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293229 has offset 0).

The definition of A293229 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008966, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293229.P498718017162210645

`a(n-1)+A008966(4*n+3)-A008966(4*n+1)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A293229

/-- `a(n-1)+A008966(4*n+3)-A008966(4*n+1)` -/
def P498718017162210645.Spec : Prop :=
  ∀ n, P498718017162210645.a n = A293229 n

theorem P498718017162210645.correct : P498718017162210645.Spec := by
  intro n
  simp only [A293229]

end A293229

/-! ## A293229.P13501161667235696928

`∑[A323239(4*n+3)-A323239(4*n+1)]`
-/

namespace A293229.P13501161667235696928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (4 * n + 3) - A323239 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293229.P13501161667235696928

namespace A293229

/-- `∑[A323239(4*n+3)-A323239(4*n+1)]` -/
def P13501161667235696928.Spec : Prop :=
  ∀ n, P13501161667235696928.a n = A293229 n

end A293229

/-! ## A293229.P4564784762976795139

`A293429(n)-A107078(record[xor(3, n)])`
-/

namespace A293229.P4564784762976795139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293429 n - A107078 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A293229.P4564784762976795139

namespace A293229

/-- `A293429(n)-A107078(record[xor(3, n)])` -/
def P4564784762976795139.Spec : Prop :=
  ∀ n, P4564784762976795139.a n = A293229 n

end A293229

/-! ## A293229.P10114902994974262257

`A293429(n)-A107078(A004767(n))`
-/

namespace A293229.P10114902994974262257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293429 n - A107078 (A004767 n).toNat

end

end A293229.P10114902994974262257

namespace A293229

/-- `A293429(n)-A107078(A004767(n))` -/
def P10114902994974262257.Spec : Prop :=
  ∀ n, P10114902994974262257.a n = A293229 n

end A293229

/-! ## A293229.P14657243898369381077

`A293429(n)-A107078(A017137(n)/2)`
-/

namespace A293229.P14657243898369381077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293429 n - A107078 (SequenceMachineLib.roundAway ((A017137 n : ℚ) / 2)).toNat

end

end A293229.P14657243898369381077

namespace A293229

/-- `A293429(n)-A107078(A017137(n)/2)` -/
def P14657243898369381077.Spec : Prop :=
  ∀ n, P14657243898369381077.a n = A293229 n

end A293229

/-! ## A293229.P10954424114165804757

`A293429(n)-A107078(A017137(n))`
-/

namespace A293229.P10954424114165804757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293429 n - A107078 (A017137 n).toNat

end

end A293229.P10954424114165804757

namespace A293229

/-- `A293429(n)-A107078(A017137(n))` -/
def P10954424114165804757.Spec : Prop :=
  ∀ n, P10954424114165804757.a n = A293229 n

end A293229

/-!
# A293230: a(n) is the number of integers k in range [2^n, (2^(n+1))-1] such that all terms in finite sequence [k, floor(k/2), floor(k/4), floor(k/8), ..., 1] are squarefree.

The programs for A293230, there is no canonical definition to state claims against.
-/

/-! ## A293230.P12232921034927624425

`A293520(n)+A293521(n)+A293522(n)`
-/

namespace A293230.P12232921034927624425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293520 n + A293521 n + A293522 n

end

end A293230.P12232921034927624425

/-! ## A293230.P8267813722753764718

`A293520(n)+A293518(n)+A293519(n)+A293522(n)`
-/

namespace A293230.P8267813722753764718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293520 n + (A293518 n + A293519 n) + A293522 n

end

end A293230.P8267813722753764718

/-! ## A293230.P7369449959639393109

`∑[A293440(abs(1-n))]`
-/

namespace A293230.P7369449959639393109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293440 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293230.P7369449959639393109

/-! ## A293230.P10670937479455942958

`A293440(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A293230.P10670937479455942958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293440 (n - 1) + a (n - 1)

end

end A293230.P10670937479455942958

/-! ## A293230.P9363623931006693148

`∑[A293440(n)]+1-A293440(n)`
-/

namespace A293230.P9363623931006693148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293440 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A293440 n)

end

end A293230.P9363623931006693148

/-! ## A293230.P7085279313291952212

`A293441(n+1)+A293441(n)-A293440(n)`
-/

namespace A293230.P7085279313291952212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 (n + 1) + (A293441 n - A293440 n)

end

end A293230.P7085279313291952212

/-! ## A293230.P6974844608140797066

`A293441(n)+A293520(n)+A293518(n)`
-/

namespace A293230.P6974844608140797066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 n + (A293520 n + A293518 n)

end

end A293230.P6974844608140797066

/-! ## A293230.P10322757158134053589

`A293441(n+1)+A293520(n)+A293519(n)`
-/

namespace A293230.P10322757158134053589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293441 (n + 1) + (A293520 n + A293519 n)

end

end A293230.P10322757158134053589

/-!
# A293231: a(n) = Product_{d|n, d<n} A019565(A193231(d)).

The programs for A293231, there is no canonical definition to state claims against.
-/

/-! ## A293231.P754558909359699158

`gcd(A076976(n+1)!, A143176(n+1))`
-/

namespace A293231.P754558909359699158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.factorial (A076976 (n + 1)).toNat : ℤ) (A143176 (n + 1))

end

end A293231.P754558909359699158

/-! ## A293231.P3983517703279170551

`A046523(A201053(n)+A006505(n+3))`
-/

namespace A293231.P3983517703279170551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A201053 n + A006505 (n + 3)).toNat

end

end A293231.P3983517703279170551

/-! ## A293231.P1848969450659708772

`A065645(A000110(n))*A293216(n+1)`
-/

namespace A293231.P1848969450659708772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065645 (A000110 n).toNat * A293216 (n + 1)

end

end A293231.P1848969450659708772

/-! ## A293231.P933685779307458790

`A124768(A081156(n))*A293214(n+1)`
-/

namespace A293231.P933685779307458790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124768 (A081156 n).toNat * A293214 (n + 1)

end

end A293231.P933685779307458790

/-!
# A293232: Restricted growth sequence transform of A293231, where A293231(n) = Product_{d|n, d<n} A019565(A193231(d)).

The programs for A293232, there is no canonical definition to state claims against.
-/

/-! ## A293232.P9036790647982742696

`A300835(n+1)%p?[3*n²+10]`
-/

namespace A293232.P9036790647982742696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n ^ 2 + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300835 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A293232.P9036790647982742696

/-! ## A293232.P4665229859417862995

`A300835(n+1)%A048670(n+1)`
-/

namespace A293232.P4665229859417862995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300835 (n + 1)) (A048670 (n + 1))

end

end A293232.P4665229859417862995

/-! ## A293232.P11720949186235453087

`A300835(n+1)/A030298(floor(sqrt(n))!)`
-/

namespace A293232.P11720949186235453087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A300835 (n + 1) : ℚ) / (A030298 (Nat.factorial (Nat.sqrt n)) : ℚ)

end

end A293232.P11720949186235453087

/-! ## A293232.P3890204360192099270

`ceil(1/A256528(n+1))*A300835(n+1)`
-/

namespace A293232.P3890204360192099270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A256528 (n + 1) : ℚ)⌉ * A300835 (n + 1)

end

end A293232.P3890204360192099270

/-! ## A293232.P12023810228001964269

`A300835(n+1)+A000007(A341098(n))`
-/

namespace A293232.P12023810228001964269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300835 (n + 1) + A000007 (A341098 (n + 72)).toNat

end

end A293232.P12023810228001964269

/-! ## A293232.P10213710852829198487

`A300835(n+1)%A047842(A033043(n))`
-/

namespace A293232.P10213710852829198487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300835 (n + 1)) (A047842 (A033043 n).toNat)

end

end A293232.P10213710852829198487

/-! ## A293232.P7884238714447013017

`A001065(A235266(3*n+1))*A300835(n+1)`
-/

namespace A293232.P7884238714447013017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A235266 (3 * n + 1)).toNat * A300835 (n + 1)

end

end A293232.P7884238714447013017

/-! ## A293232.P2541207729910087218

`A300835(n+1)+A280292(A019565(n))`
-/

namespace A293232.P2541207729910087218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300835 (n + 1) + A280292 (A019565 n).toNat

end

end A293232.P2541207729910087218

/-!
# A293233: a(1) = 1; and for n > 1, a(n) = mu(n) * a(floor(n/2)), where mu is the Moebius function A008683.

The programs for A293233, the canonical program `A293233.P9756061785688444161` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293233 has offset 1).

The definition of A293233 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293233.P9756061785688444161

`A008683(n+1)*a(floor((n+1)/2)-1)` with `a(0)=1, a(1)=-1, a(2)=-1, a(3)=0, a(4)=1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A293233

/-- `A008683(n+1)*a(floor((n+1)/2)-1)` -/
def P9756061785688444161.Spec : Prop :=
  ∀ n, P9756061785688444161.a n = A293233 (n + 1)

theorem P9756061785688444161.correct : P9756061785688444161.Spec := by
  intro n
  simp only [A293233, Nat.add_sub_cancel]

end A293233

/-! ## A293233.P3396496038155302624

`a(floor((n-1)/2))*A008683(n+1)` with `a(0)=1`
-/

namespace A293233.P3396496038155302624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a ⌊((n : ℤ) - 1 : ℚ) / 2⌋.toNat * A008683 (n + 1)

end

end A293233.P3396496038155302624

namespace A293233

/-- `a(floor((n-1)/2))*A008683(n+1)` -/
def P3396496038155302624.Spec : Prop :=
  ∀ n, P3396496038155302624.a n = A293233 (n + 1)

end A293233

/-! ## A293233.P6652389451288168354

`(A007423(n+1)-1)*a(ceil(n/2)-1)` with `a(0)=1`
-/

namespace A293233.P6652389451288168354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A007423 (n + 1) - 1) * a (⌈(n : ℚ) / 2⌉ - 1).toNat

end

end A293233.P6652389451288168354

namespace A293233

/-- `(A007423(n+1)-1)*a(ceil(n/2)-1)` -/
def P6652389451288168354.Spec : Prop :=
  ∀ n, P6652389451288168354.a n = A293233 (n + 1)

end A293233

/-! ## A293233.P13541927163502330655

`round(1/∏{e}[n+1, -#²])*a(A110654(n)-1)` with `a(0)=1`
-/

namespace A293233.P13541927163502330655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (1 / ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p ^ 2 : ℤ)) : ℤ) : ℚ)) * a (A110654 n - 1).toNat

end

end A293233.P13541927163502330655

namespace A293233

/-- `round(1/∏{e}[n+1, -#²])*a(A110654(n)-1)` -/
def P13541927163502330655.Spec : Prop :=
  ∀ n, P13541927163502330655.a n = A293233 (n + 1)

end A293233

/-! ## A293233.P7221617216931578140

`A328502(n+1)%2*a(A110654(n)-1)` with `a(0)=1`
-/

namespace A293233.P7221617216931578140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A328502 (n + 1)) 2 * a (A110654 n - 1).toNat

end

end A293233.P7221617216931578140

namespace A293233

/-- `A328502(n+1)%2*a(A110654(n)-1)` -/
def P7221617216931578140.Spec : Prop :=
  ∀ n, P7221617216931578140.a n = A293233 (n + 1)

end A293233

/-! ## A293233.P12505891208751675539

`A346234(n+1)%2*a(A110654(n)-1)` with `a(0)=1`
-/

namespace A293233.P12505891208751675539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A346234 (n + 1)) 2 * a (A110654 n - 1).toNat

end

end A293233.P12505891208751675539

namespace A293233

/-- `A346234(n+1)%2*a(A110654(n)-1)` -/
def P12505891208751675539.Spec : Prop :=
  ∀ n, P12505891208751675539.a n = A293233 (n + 1)

end A293233

/-! ## A293233.P10669881096965249011

`A346477(n+1)%2*a(A110654(n)-1)` with `a(0)=1`
-/

namespace A293233.P10669881096965249011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A346477 (n + 1)) 2 * a (A110654 n - 1).toNat

end

end A293233.P10669881096965249011

namespace A293233

/-- `A346477(n+1)%2*a(A110654(n)-1)` -/
def P10669881096965249011.Spec : Prop :=
  ∀ n, P10669881096965249011.a n = A293233 (n + 1)

end A293233

/-!
# A293234: a(n) is the number of proper divisors of n that are square.

The programs for A293234, the canonical program `A293234.P10621370865650298108` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293234 has offset 1).

The definition of A293234 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A046951, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293234.P10621370865650298108

`A046951(n+1)-A010052(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A293234

/-- `A046951(n+1)-A010052(n+1)` -/
def P10621370865650298108.Spec : Prop :=
  ∀ n, P10621370865650298108.a n = A293234 (n + 1)

theorem P10621370865650298108.correct : P10621370865650298108.Spec := by
  intro n
  simp only [A293234, Nat.add_sub_cancel]

end A293234

/-! ## A293234.P5764454376919862480

`∑{d}[n+1, A344617(#)]`
-/

namespace A293234.P5764454376919862480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344617 d

end

end A293234.P5764454376919862480

namespace A293234

/-- `∑{d}[n+1, A344617(#)]` -/
def P5764454376919862480.Spec : Prop :=
  ∀ n, P5764454376919862480.a n = A293234 (n + 1)

end A293234

/-! ## A293234.P12307518024181089175

`A000196(n)-A338236(n+1)`
-/

namespace A293234.P12307518024181089175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n - A338236 (n + 1)

end

end A293234.P12307518024181089175

namespace A293234

/-- `A000196(n)-A338236(n+1)` -/
def P12307518024181089175.Spec : Prop :=
  ∀ n, P12307518024181089175.a n = A293234 (n + 1)

end A293234

/-! ## A293234.P18239745569798698923

`A046951(n+1)-Δ[A000196(n)]`
-/

namespace A293234.P18239745569798698923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - (f1 (n + 1) - f1 n)

end

end A293234.P18239745569798698923

namespace A293234

/-- `A046951(n+1)-Δ[A000196(n)]` -/
def P18239745569798698923.Spec : Prop :=
  ∀ n, P18239745569798698923.a n = A293234 (n + 1)

end A293234

/-! ## A293234.P17217359413083187844

`A046951(n+1)-char[A005563(n)]`
-/

namespace A293234.P17217359413083187844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A293234.P17217359413083187844

namespace A293234

/-- `A046951(n+1)-char[A005563(n)]` -/
def P17217359413083187844.Spec : Prop :=
  ∀ n, P17217359413083187844.a n = A293234 (n + 1)

end A293234

/-! ## A293234.P5368143336683439156

`A071325(n+1)+A049240(n+1)`
-/

namespace A293234.P5368143336683439156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071325 (n + 1) + A049240 (n + 1)

end

end A293234.P5368143336683439156

namespace A293234

/-- `A071325(n+1)+A049240(n+1)` -/
def P5368143336683439156.Spec : Prop :=
  ∀ n, P5368143336683439156.a n = A293234 (n + 1)

end A293234

/-! ## A293234.P8962094235674832364

`A056924(n+1)-A262202(n+1)`
-/

namespace A293234.P8962094235674832364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1) - A262202 (n + 1)

end

end A293234.P8962094235674832364

namespace A293234

/-- `A056924(n+1)-A262202(n+1)` -/
def P8962094235674832364.Spec : Prop :=
  ∀ n, P8962094235674832364.a n = A293234 (n + 1)

end A293234

/-! ## A293234.P2366304705437899232

`2*A056924(n+1)-A056595(n+1)`
-/

namespace A293234.P2366304705437899232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056924 (n + 1) - A056595 (n + 1)

end

end A293234.P2366304705437899232

namespace A293234

/-- `2*A056924(n+1)-A056595(n+1)` -/
def P2366304705437899232.Spec : Prop :=
  ∀ n, P2366304705437899232.a n = A293234 (n + 1)

end A293234

/-! ## A293234.P10938096378840889556

`∑{d}[n+1, A008836(#)*A032741((n+1)/#)]`
-/

namespace A293234.P10938096378840889556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A032741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293234.P10938096378840889556

namespace A293234

/-- `∑{d}[n+1, A008836(#)*A032741((n+1)/#)]` -/
def P10938096378840889556.Spec : Prop :=
  ∀ n, P10938096378840889556.a n = A293234 (n + 1)

end A293234

/-! ## A293234.P9366625130255679266

`∑{d}[n+1, A046951(#)*A157658((n+1)/#)]`
-/

namespace A293234.P9366625130255679266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046951 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293234.P9366625130255679266

namespace A293234

/-- `∑{d}[n+1, A046951(#)*A157658((n+1)/#)]` -/
def P9366625130255679266.Spec : Prop :=
  ∀ n, P9366625130255679266.a n = A293234 (n + 1)

end A293234

/-! ## A293234.P2601456530355841854

`∑{d}[n+1, A158522(#)*A238952((n+1)/#)]`
-/

namespace A293234.P2601456530355841854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A238952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293234.P2601456530355841854

namespace A293234

/-- `∑{d}[n+1, A158522(#)*A238952((n+1)/#)]` -/
def P2601456530355841854.Spec : Prop :=
  ∀ n, P2601456530355841854.a n = A293234 (n + 1)

end A293234

/-! ## A293234.P2139913462316256033

`∑{d}[n+1, A211779(#)*A323363((n+1)/#)]`
-/

namespace A293234.P2139913462316256033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A211779 d * A323363 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293234.P2139913462316256033

namespace A293234

/-- `∑{d}[n+1, A211779(#)*A323363((n+1)/#)]` -/
def P2139913462316256033.Spec : Prop :=
  ∀ n, P2139913462316256033.a n = A293234 (n + 1)

end A293234

/-! ## A293234.P5712678494382430195

`∑{d}[n+1, A245211(#)*A347092((n+1)/#)]`
-/

namespace A293234.P5712678494382430195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A245211 d * A347092 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293234.P5712678494382430195

namespace A293234

/-- `∑{d}[n+1, A245211(#)*A347092((n+1)/#)]` -/
def P5712678494382430195.Spec : Prop :=
  ∀ n, P5712678494382430195.a n = A293234 (n + 1)

end A293234

/-! ## A293234.P14543241769144836788

`∑{d}[n+1, A296066(#)*A326813((n+1)/#)]`
-/

namespace A293234.P14543241769144836788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A296066 d * A326813 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293234.P14543241769144836788

namespace A293234

/-- `∑{d}[n+1, A296066(#)*A326813((n+1)/#)]` -/
def P14543241769144836788.Spec : Prop :=
  ∀ n, P14543241769144836788.a n = A293234 (n + 1)

end A293234

/-! ## A293234.P5818231386270357106

`A046951(n+1)-A000035(A000005(n+1))`
-/

namespace A293234.P5818231386270357106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - A000035 (A000005 (n + 1)).toNat

end

end A293234.P5818231386270357106

namespace A293234

/-- `A046951(n+1)-A000035(A000005(n+1))` -/
def P5818231386270357106.Spec : Prop :=
  ∀ n, P5818231386270357106.a n = A293234 (n + 1)

end A293234

/-! ## A293234.P5980304963427155291

`A046951(n+1)-A000035(A055076(n+1))`
-/

namespace A293234.P5980304963427155291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - A000035 (A055076 (n + 1)).toNat

end

end A293234.P5980304963427155291

namespace A293234

/-- `A046951(n+1)-A000035(A055076(n+1))` -/
def P5980304963427155291.Spec : Prop :=
  ∀ n, P5980304963427155291.a n = A293234 (n + 1)

end A293234

/-! ## A293234.P12079319161044231619

`A046951(n+1)+A000196(n)-A000196(n+1)`
-/

namespace A293234.P12079319161044231619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) + (A000196 n - A000196 (n + 1))

end

end A293234.P12079319161044231619

namespace A293234

/-- `A046951(n+1)+A000196(n)-A000196(n+1)` -/
def P12079319161044231619.Spec : Prop :=
  ∀ n, P12079319161044231619.a n = A293234 (n + 1)

end A293234

/-! ## A293234.P8312578533571500888

`A046951(n+1)-A037213(n+1)/A000188(n+1)`
-/

namespace A293234.P8312578533571500888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046951 (n + 1) : ℚ) - (A037213 (n + 1) : ℚ) / (A000188 (n + 1) : ℚ)

end

end A293234.P8312578533571500888

namespace A293234

/-- `A046951(n+1)-A037213(n+1)/A000188(n+1)` -/
def P8312578533571500888.Spec : Prop :=
  ∀ n, P8312578533571500888.a n = (A293234 (n + 1) : ℚ)

end A293234

/-! ## A293234.P3709530504139330249

`A046951(n+1)-A369308(n+1)/A046951(n+1)`
-/

namespace A293234.P3709530504139330249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046951 (n + 1) : ℚ) - (A369308 (n + 1) : ℚ) / (A046951 (n + 1) : ℚ)

end

end A293234.P3709530504139330249

namespace A293234

/-- `A046951(n+1)-A369308(n+1)/A046951(n+1)` -/
def P3709530504139330249.Spec : Prop :=
  ∀ n, P3709530504139330249.a n = (A293234 (n + 1) : ℚ)

end A293234

/-! ## A293234.P12712118545526374393

`A046951(n+1)-A258998(n+1)*A258998(n+1)`
-/

namespace A293234.P12712118545526374393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) - A258998 (n + 1) * A258998 (n + 1)

end

end A293234.P12712118545526374393

namespace A293234

/-- `A046951(n+1)-A258998(n+1)*A258998(n+1)` -/
def P12712118545526374393.Spec : Prop :=
  ∀ n, P12712118545526374393.a n = A293234 (n + 1)

end A293234

/-!
# A293235: a(n) is the sum of proper divisors of n that are square.

The programs for A293235, the canonical program `A293235.P11112024856890805067` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293235 has offset 1).

The definition of A293235 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010052, A035316, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293235.P11112024856890805067

`A035316(n+1)-A010052(n+1)*(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A293235

/-- `A035316(n+1)-A010052(n+1)*(n+1)` -/
def P11112024856890805067.Spec : Prop :=
  ∀ n, P11112024856890805067.a n = A293235 (n + 1)

theorem P11112024856890805067.correct : P11112024856890805067.Spec := by
  intro n
  simp only [A293235, Nat.add_sub_cancel]

end A293235

/-! ## A293235.P14342354214174463492

`A035316(n+1)%(n+1)`
-/

namespace A293235.P14342354214174463492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035316 (n + 1)) (n + 1 : ℤ)

end

end A293235.P14342354214174463492

namespace A293235

/-- `A035316(n+1)%(n+1)` -/
def P14342354214174463492.Spec : Prop :=
  ∀ n, P14342354214174463492.a n = A293235 (n + 1)

end A293235

/-! ## A293235.P14910681767401107271

`(A071326(n+1)+n²)%(n+1)`
-/

namespace A293235.P14910681767401107271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071326 (n + 1) + (n ^ 2 : ℤ)) (n + 1 : ℤ)

end

end A293235.P14910681767401107271

namespace A293235

/-- `(A071326(n+1)+n²)%(n+1)` -/
def P14910681767401107271.Spec : Prop :=
  ∀ n, P14910681767401107271.a n = A293235 (n + 1)

end A293235

/-! ## A293235.P12845556726910116820

`∑{d}[A000188(n+1), #²]%(n+1)`
-/

namespace A293235.P12845556726910116820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2) % (n + 1)

end

end A293235.P12845556726910116820

namespace A293235

/-- `∑{d}[A000188(n+1), #²]%(n+1)` -/
def P12845556726910116820.Spec : Prop :=
  ∀ n, (P12845556726910116820.a n : ℤ) = A293235 (n + 1)

end A293235

/-! ## A293235.P2817221709287999351

`(1-A326058(n+1)+n)%(n+1)`
-/

namespace A293235.P2817221709287999351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - A326058 (n + 1) + (n : ℤ)) (n + 1 : ℤ)

end

end A293235.P2817221709287999351

namespace A293235

/-- `(1-A326058(n+1)+n)%(n+1)` -/
def P2817221709287999351.Spec : Prop :=
  ∀ n, P2817221709287999351.a n = A293235 (n + 1)

end A293235

/-! ## A293235.P10360495757495261291

`A035316(n+1)-A037213(n+1)²`
-/

namespace A293235.P10360495757495261291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1) - A037213 (n + 1) ^ 2

end

end A293235.P10360495757495261291

namespace A293235

/-- `A035316(n+1)-A037213(n+1)²` -/
def P10360495757495261291.Spec : Prop :=
  ∀ n, P10360495757495261291.a n = A293235 (n + 1)

end A293235

/-! ## A293235.P11433461671194530794

`(A000203(n+1)-A285309(n+1))%(n+1)`
-/

namespace A293235.P11433461671194530794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1) - A285309 (n + 1)) (n + 1 : ℤ)

end

end A293235.P11433461671194530794

namespace A293235

/-- `(A000203(n+1)-A285309(n+1))%(n+1)` -/
def P11433461671194530794.Spec : Prop :=
  ∀ n, P11433461671194530794.a n = A293235 (n + 1)

end A293235

/-! ## A293235.P17509130662187116301

`(A001065(n+1)-A326059(n+1))%(n+1)`
-/

namespace A293235.P17509130662187116301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1) - A326059 (n + 1)) (n + 1 : ℤ)

end

end A293235.P17509130662187116301

namespace A293235

/-- `(A001065(n+1)-A326059(n+1))%(n+1)` -/
def P17509130662187116301.Spec : Prop :=
  ∀ n, P17509130662187116301.a n = A293235 (n + 1)

end A293235

/-! ## A293235.P8155451219802877707

`∑{d}[n+1, A001065(#)*A061019((n+1)/#)]`
-/

namespace A293235.P8155451219802877707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A061019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293235.P8155451219802877707

namespace A293235

/-- `∑{d}[n+1, A001065(#)*A061019((n+1)/#)]` -/
def P8155451219802877707.Spec : Prop :=
  ∀ n, P8155451219802877707.a n = A293235 (n + 1)

end A293235

/-! ## A293235.P9572866865656180645

`∑{d}[n+1, A051953(#)*A061020((n+1)/#)]`
-/

namespace A293235.P9572866865656180645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051953 d * A061020 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293235.P9572866865656180645

namespace A293235

/-- `∑{d}[n+1, A051953(#)*A061020((n+1)/#)]` -/
def P9572866865656180645.Spec : Prop :=
  ∀ n, P9572866865656180645.a n = A293235 (n + 1)

end A293235

/-! ## A293235.P10862627889807426752

`∑{d}[n+1, A035316(#)*A157658((n+1)/#)]`
-/

namespace A293235.P10862627889807426752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035316 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293235.P10862627889807426752

namespace A293235

/-- `∑{d}[n+1, A035316(#)*A157658((n+1)/#)]` -/
def P10862627889807426752.Spec : Prop :=
  ∀ n, P10862627889807426752.a n = A293235 (n + 1)

end A293235

/-! ## A293235.P10848761999917119253

`∑{d}[n+1, A008833(#)*A344617((n+1)/#)]`
-/

namespace A293235.P10848761999917119253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008833 d * A344617 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293235.P10848761999917119253

namespace A293235

/-- `∑{d}[n+1, A008833(#)*A344617((n+1)/#)]` -/
def P10848761999917119253.Spec : Prop :=
  ∀ n, P10848761999917119253.a n = A293235 (n + 1)

end A293235

/-! ## A293235.P12355908169810729601

`∑{d}[n+1, A158523(#)*A211779((n+1)/#)]`
-/

namespace A293235.P12355908169810729601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158523 d * A211779 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293235.P12355908169810729601

namespace A293235

/-- `∑{d}[n+1, A158523(#)*A211779((n+1)/#)]` -/
def P12355908169810729601.Spec : Prop :=
  ∀ n, P12355908169810729601.a n = A293235 (n + 1)

end A293235

/-! ## A293235.P284243355112597896

`∑{d}[n+1, A245211(#)*A298473((n+1)/#)]`
-/

namespace A293235.P284243355112597896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A245211 d * A298473 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293235.P284243355112597896

namespace A293235

/-- `∑{d}[n+1, A245211(#)*A298473((n+1)/#)]` -/
def P284243355112597896.Spec : Prop :=
  ∀ n, P284243355112597896.a n = A293235 (n + 1)

end A293235

/-! ## A293235.P16281887050296813528

`A035316(n+1)-A000188(n+1)*A037213(n+1)`
-/

namespace A293235.P16281887050296813528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (n + 1) - A000188 (n + 1) * A037213 (n + 1)

end

end A293235.P16281887050296813528

namespace A293235

/-- `A035316(n+1)-A000188(n+1)*A037213(n+1)` -/
def P16281887050296813528.Spec : Prop :=
  ∀ n, P16281887050296813528.a n = A293235 (n + 1)

end A293235

/-! ## A293235.P541107821585994869

`A028310(∑{d}[n+1, #]-A285309(n+1))%(n+1)`
-/

namespace A293235.P541107821585994869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - A285309 (n + 1)).toNat) (n + 1 : ℤ)

end

end A293235.P541107821585994869

namespace A293235

/-- `A028310(∑{d}[n+1, #]-A285309(n+1))%(n+1)` -/
def P541107821585994869.Spec : Prop :=
  ∀ n, P541107821585994869.a n = A293235 (n + 1)

end A293235

/-!
# A293236: G.f.: Product_{i>0} Sum_{j>=0} (-1)^j*j!*x^(j*i).

The programs for A293236, there is no canonical definition to state claims against.
-/

/-! ## A293236.P18064761034494348317

`A293071(∑[4*n])`
-/

namespace A293236.P18064761034494348317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293071 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293236.P18064761034494348317

/-! ## A293236.P1223859173187570527

`A001222(A088732(n))*A293071(2*(n²+n))`
-/

namespace A293236.P1223859173187570527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A088732 n).toNat * A293071 (2 * (n ^ 2 + n))

end

end A293236.P1223859173187570527

/-! ## A293236.P15757356282715119784

`A014963(A263990(n+1))*A293071(2*(n²+n))`
-/

namespace A293236.P15757356282715119784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A263990 (n + 1)).toNat * A293071 (2 * (n ^ 2 + n))

end

end A293236.P15757356282715119784

/-! ## A293236.P10644960191807065989

`A276088(A079578(n+1))*A293071(2*(n²+n))`
-/

namespace A293236.P10644960191807065989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276088 (A079578 (n + 1)).toNat * A293071 (2 * (n ^ 2 + n))

end

end A293236.P10644960191807065989

/-! ## A293236.P2277499825561962727

`A293071(2*(n²+n))^A014963(A055743(n+1))`
-/

namespace A293236.P2277499825561962727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293071 (2 * (n ^ 2 + n)) : ℚ) ^ (A014963 (A055743 (n + 1)).toNat : ℤ)

end

end A293236.P2277499825561962727

/-! ## A293236.P1928751926825952208

`A293071(2*(n²+n))%A037151(n+1)`
-/

namespace A293236.P1928751926825952208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293071 (2 * (n ^ 2 + n))) (A037151 (n + 1))

end

end A293236.P1928751926825952208

/-!
# A293239: Number of terms in the fully expanded n-th derivative of x^x.

The programs for A293239, the canonical program `A293239.P3844869864369269808` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293239 has offset 0).

The definition of A293239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293239.P3844869864369269808

`A038707(n)+2-A185118(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A293239

/-- `A038707(n)+2-A185118(n)` -/
def P3844869864369269808.Spec : Prop :=
  ∀ n, P3844869864369269808.a n = A293239 n

theorem P3844869864369269808.correct : P3844869864369269808.Spec := by
  intro n
  simp only [A293239]

end A293239

/-! ## A293239.P7924666276940437045

`∑[n]+1-A297033(A004731(n))`
-/

namespace A293239.P7924666276940437045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - A297033 (A004731 n).toNat

end

end A293239.P7924666276940437045

namespace A293239

/-- `∑[n]+1-A297033(A004731(n))` -/
def P7924666276940437045.Spec : Prop :=
  ∀ n, P7924666276940437045.a n = A293239 n

end A293239

/-! ## A293239.P11244419605374098385

`A000124(n)-∑[floor(A215732(n+1)/e²)]`
-/

namespace A293239.P11244419605374098385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A215732 (n + 1) : ℝ) / Real.exp 1 ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293239.P11244419605374098385

namespace A293239

/-- `A000124(n)-∑[floor(A215732(n+1)/e²)]` -/
def P11244419605374098385.Spec : Prop :=
  ∀ n, P11244419605374098385.a n = A293239 n

end A293239

/-! ## A293239.P16335904654286717575

`∑[abs(A121373(A027623(2*(n+1)))-n)]`
-/

namespace A293239.P16335904654286717575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A121373 (A027623 (2 * (n + 1))).toNat - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293239.P16335904654286717575

namespace A293239

/-- `∑[abs(A121373(A027623(2*(n+1)))-n)]` -/
def P16335904654286717575.Spec : Prop :=
  ∀ n, P16335904654286717575.a n = A293239 n

end A293239

/-! ## A293239.P6484035581173232498

`A161680(n)+A064415(A023615(n))`
-/

namespace A293239.P6484035581173232498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n + A064415 (A023615 n).toNat

end

end A293239.P6484035581173232498

namespace A293239

/-- `A161680(n)+A064415(A023615(n))` -/
def P6484035581173232498.Spec : Prop :=
  ∀ n, P6484035581173232498.a n = A293239 n

end A293239

/-!
# A293243: 

The programs for A293243, there is no canonical definition to state claims against.
-/

/-! ## A293243.P10947086078601922130

`eq[0, A050326(n+1)]+1`
-/

namespace A293243.P10947086078601922130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A293243.P10947086078601922130

/-! ## A293243.P10556704910206910441

`eq[0, A050326(A028310(n))]`
-/

namespace A293243.P10556704910206910441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293243.P10556704910206910441

/-! ## A293243.P17077412596713799380

`A212164(n+1)%A005567(n)`
-/

namespace A293243.P17077412596713799380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212164 (n + 1)) (A005567 n)

end

end A293243.P17077412596713799380

/-! ## A293243.P18368939291429474249

`and(A107955(n), A212164(n+1))`
-/

namespace A293243.P18368939291429474249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107955 n) (A212164 (n + 1))

end

end A293243.P18368939291429474249

/-! ## A293243.P4589381374584715102

`and(A212164(n+1), A389172(n+1))`
-/

namespace A293243.P4589381374584715102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A212164 (n + 1)) (A389172 (n + 1))

end

end A293243.P4589381374584715102

/-! ## A293243.P5271376577675860826

`and(A198694(n), A212164(n+1))`
-/

namespace A293243.P5271376577675860826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A198694 n) (A212164 (n + 1))

end

end A293243.P5271376577675860826

/-! ## A293243.P696168877204527837

`A113484(lt[A181819(n+1), A238745(n+1)])`
-/

namespace A293243.P696168877204527837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238745 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A293243.P696168877204527837

/-! ## A293243.P16962735958272769088

`eq[0, A050326(A233583(n+1))]`
-/

namespace A293243.P16962735958272769088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293243.P16962735958272769088

/-! ## A293243.P5352050945726514403

`∪[A382879(n+1), A396852(n+1)]`
-/

namespace A293243.P5352050945726514403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396852 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A293243.P5352050945726514403

/-!
# A293246: a(n) is the smallest k > 1 such that A000166(k) is divisible by n!.

The programs for A293246, there is no canonical definition to state claims against.
-/

/-! ## A293246.P7707999553641881466

`A141310(A130480(n))`
-/

namespace A293246.P7707999553641881466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A130480 n).toNat

end

end A293246.P7707999553641881466

/-! ## A293246.P11550896312490348714

`A034699(A130480(n)+1)`
-/

namespace A293246.P11550896312490348714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A130480 n + 1).toNat

end

end A293246.P11550896312490348714

/-! ## A293246.P17612430224208840264

`A065883(A130480(n)+1)`
-/

namespace A293246.P17612430224208840264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065883 (A130480 n + 1).toNat

end

end A293246.P17612430224208840264

/-! ## A293246.P7830055231851915043

`A122411(A130480(n)+1)`
-/

namespace A293246.P7830055231851915043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122411 (A130480 n + 1).toNat

end

end A293246.P7830055231851915043

/-! ## A293246.P16400966305931229755

`A125746(A130480(n)+1)`
-/

namespace A293246.P16400966305931229755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A130480 n + 1).toNat

end

end A293246.P16400966305931229755

/-!
# A293247: Let S be the sequence of rational numbers generated by these rules: 1 is in S, and if u/v is in S (with gcd(u, v) = 1), then (u+1)/v and u/(v+1) are in S, and duplicates are deleted as they occur; a(n) = the numerator of the n-th term of S.

The programs for A293247, there is no canonical definition to state claims against.
-/

/-! ## A293247.P3939421388002391565

`A020653(∑[A038610(A261527(n+3))])`
-/

namespace A293247.P3939421388002391565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038610 (A261527 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A293247.P3939421388002391565

/-! ## A293247.P14954284167686230236

`A020653(∑[A336850(n+1)^A168084(n+1)])`
-/

namespace A293247.P14954284167686230236
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336850 (n + 1) : ℚ) ^ (A168084 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A293247.P14954284167686230236

/-! ## A293247.P9949840822348950644

`A352910(n+1)+A307430(A010014(n))`
-/

namespace A293247.P9949840822348950644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352910 (n + 1) + A307430 (A010014 n).toNat

end

end A293247.P9949840822348950644

/-! ## A293247.P9829484811069639896

`A352910(n+1)+A304042(A260443(n))`
-/

namespace A293247.P9829484811069639896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352910 (n + 1) + A304042 (A260443 n).toNat

end

end A293247.P9829484811069639896

/-!
# A293248: Let S be the sequence of rational numbers generated by these rules: 1 is in S, and if u/v is in S (with gcd(u, v) = 1), then (u+1)/v and u/(v+1) are in S, and duplicates are deleted as they occur; a(n) = the denominator of the n-th term of S.

The programs for A293248, there is no canonical definition to state claims against.
-/

/-! ## A293248.P11501924042772579061

`A020652(∑[A038610(A261527(n+3))])`
-/

namespace A293248.P11501924042772579061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038610 (A261527 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A293248.P11501924042772579061

/-! ## A293248.P12065766116126397227

`A295989(n)+A178489(A089867(3*n+2))`
-/

namespace A293248.P12065766116126397227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295989 n + A178489 (A089867 (3 * n + 2)).toNat

end

end A293248.P12065766116126397227

/-! ## A293248.P16215971034970469677

`A020652(∑[A336850(n+1)^A168084(n+1)])`
-/

namespace A293248.P16215971034970469677
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336850 (n + 1) : ℚ) ^ (A168084 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A293248.P16215971034970469677

/-! ## A293248.P8419457665417612772

`A330751(A368386(n+1))+A295989(n)`
-/

namespace A293248.P8419457665417612772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330751 (A368386 (n + 1)).toNat + A295989 n

end

end A293248.P8419457665417612772

/-! ## A293248.P38118992974744820

`A295989(n)+A005361(A077798(n+1))`
-/

namespace A293248.P38118992974744820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295989 n + A005361 (A077798 (n + 1)).toNat

end

end A293248.P38118992974744820

/-!
# A293250: G.f.: Product_{m>0} (1 + x^m + 2!*x^(2*m) + 3!*x^(3*m) + 4!*x^(4*m) + 5!*x^(5*m)).

The programs for A293250, there is no canonical definition to state claims against.
-/

/-! ## A293250.P17288974173773572699

`A293202((n+4)²-∑[n+1])`
-/

namespace A293250.P17288974173773572699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293202 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293250.P17288974173773572699

/-! ## A293250.P17013927542354415644

`or(A000007(n), A293202(A056119(n)+15))`
-/

namespace A293250.P17013927542354415644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A293202 (A056119 n + 15).toNat)

end

end A293250.P17013927542354415644

/-! ## A293250.P14371393661269520050

`abs(A000038(n)-A293202(A056119(n)+15))`
-/

namespace A293250.P14371393661269520050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000038 n - A293202 (A056119 n + 15).toNat|

end

end A293250.P14371393661269520050

/-! ## A293250.P6966106828486816229

`A293202(A056119(n)+15)+A000038(n+1)`
-/

namespace A293250.P6966106828486816229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293202 (A056119 n + 15).toNat + A000038 (n + 1)

end

end A293250.P6966106828486816229

/-! ## A293250.P5634174053552214831

`A293202(A056119(n)+15)+A000035(2*n)`
-/

namespace A293250.P5634174053552214831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293202 (A056119 n + 15).toNat + A000035 (2 * n)

end

end A293250.P5634174053552214831

/-! ## A293250.P15983827241346480953

`A293202(A056119(n)+15)%A000041(A017113(n))`
-/

namespace A293250.P15983827241346480953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293202 (A056119 n + 15).toNat) (A000041 (A017113 n).toNat)

end

end A293250.P15983827241346480953

/-! ## A293250.P3266461130563790

`A001221(A001748(n+1)/3)*A293202(A056119(n)+15)`
-/

namespace A293250.P3266461130563790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (SequenceMachineLib.roundAway ((A001748 (n + 1) : ℚ) / 3)).toNat * A293202 (A056119 n + 15).toNat

end

end A293250.P3266461130563790

/-!
# A293251: G.f.: Product_{i>0} 1/(Sum_{j>=0} j!*x^(j*i)).

The programs for A293251, there is no canonical definition to state claims against.
-/

/-! ## A293251.P17955740762166180040

`A293285(∑[4*n])`
-/

namespace A293251.P17955740762166180040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293285 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293251.P17955740762166180040

/-! ## A293251.P4441726617172671902

`or(char[1], A293285(2*(n²+n)))`
-/

namespace A293251.P4441726617172671902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A293285 (2 * (n ^ 2 + n)))

end

end A293251.P4441726617172671902

/-! ## A293251.P17139344940086865421

`A293285(2*(n²+n))%A037151(n+1)`
-/

namespace A293251.P17139344940086865421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293285 (2 * (n ^ 2 + n))) (A037151 (n + 1))

end

end A293251.P17139344940086865421

/-! ## A293251.P12677361028565483987

`(2-A000034(n))!*A293285(2*(n²+n))`
-/

namespace A293251.P12677361028565483987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 - A000034 n).toNat : ℤ) * A293285 (2 * (n ^ 2 + n))

end

end A293251.P12677361028565483987

/-! ## A293251.P2714754515334529473

`A293285(2*(n²+n))^A000041(C(2, n+1))`
-/

namespace A293251.P2714754515334529473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293285 (2 * (n ^ 2 + n)) : ℚ) ^ (A000041 (Nat.choose 2 (n + 1)) : ℤ)

end

end A293251.P2714754515334529473

/-! ## A293251.P14500958838718097275

`A007318(((-1)^n)²)*A293285(2*(n²+n))`
-/

namespace A293251.P14500958838718097275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (((-1) ^ n) ^ 2).toNat * A293285 (2 * (n ^ 2 + n))

end

end A293251.P14500958838718097275

/-! ## A293251.P16601474257506662568

`floor(A293285(2*(n²+n))+A000040(n+1)^-1)`
-/

namespace A293251.P16601474257506662568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A293285 (2 * (n ^ 2 + n)) : ℚ) + (A000040 (n + 1) : ℚ) ^ (-1 : ℤ)⌋

end

end A293251.P16601474257506662568

/-! ## A293251.P12880204589981010047

`A001222(A007645(n+1))*A293285(2*(n²+n))`
-/

namespace A293251.P12880204589981010047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007645 (n + 1)).toNat * A293285 (2 * (n ^ 2 + n))

end

end A293251.P12880204589981010047

/-! ## A293251.P9187660880690238721

`A001221(A008578(n+2))*A293285(2*(n²+n))`
-/

namespace A293251.P9187660880690238721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A008578 (n + 2)).toNat * A293285 (2 * (n ^ 2 + n))

end

end A293251.P9187660880690238721

/-!
# A293254: Expansion of Product_{k>=1} (1 + x^k - x^(k^2)).

The programs for A293254, there is no canonical definition to state claims against.
-/

/-! ## A293254.P16472983823659700669

`A008612(eq[A065033(n), A235130(n+1)])`
-/

namespace A293254.P16472983823659700669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A293254.P16472983823659700669

/-!
# A293255: G.f.: Product_{m>0} (1 - x^m + 2!*x^(2*m) - 3!*x^(3*m)).

The programs for A293255, there is no canonical definition to state claims against.
-/

/-! ## A293255.P14673964626803476502

`A293071(∑[n+3]+n+3)`
-/

namespace A293255.P14673964626803476502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293071 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A293255.P14673964626803476502

/-! ## A293255.P15182246296494798026

`A293071(A046691(n+2))%A020701(n)`
-/

namespace A293255.P15182246296494798026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293071 (A046691 (n + 2)).toNat) (A020701 n)

end

end A293255.P15182246296494798026

/-! ## A293255.P17735124724066121285

`A293071(A051936(n+4)+5)%A000051(n)`
-/

namespace A293255.P17735124724066121285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293071 (A051936 (n + 4) + 5).toNat) (A000051 n)

end

end A293255.P17735124724066121285

/-! ## A293255.P10613140623445601374

`or(A000007(n), A293071(A051936(n+4)+5))`
-/

namespace A293255.P10613140623445601374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A293071 (A051936 (n + 4) + 5).toNat)

end

end A293255.P10613140623445601374

/-! ## A293255.P15999814137133349237

`A293071(A051936(n+4)+5)+A000038(n+1)`
-/

namespace A293255.P15999814137133349237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293071 (A051936 (n + 4) + 5).toNat + A000038 (n + 1)

end

end A293255.P15999814137133349237

/-! ## A293255.P6246410922081929470

`A293071(A051936(n+4)+5)+A001222(gcd(n, n+1))`
-/

namespace A293255.P6246410922081929470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293071 (A051936 (n + 4) + 5).toNat + A001222 (Nat.gcd n (n + 1))

end

end A293255.P6246410922081929470

/-! ## A293255.P11101663952135140504

`A293071(A051936(n+4)+5)+A000122(A000040(n+2))`
-/

namespace A293255.P11101663952135140504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293071 (A051936 (n + 4) + 5).toNat + A000122 (A000040 (n + 2)).toNat

end

end A293255.P11101663952135140504

/-!
# A293256: G.f.: Product_{m>0} (1 - x^m + 2!*x^(2*m) - 3!*x^(3*m) + 4!*x^(4*m)).

The programs for A293256, there is no canonical definition to state claims against.
-/

/-! ## A293256.P4540228073564290783

`A293071(A052905(n+2))`
-/

namespace A293256.P4540228073564290783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293071 (A052905 (n + 2)).toNat

end

end A293256.P4540228073564290783

/-! ## A293256.P12779569707841630376

`A293071(A055999(n+2)+1)`
-/

namespace A293256.P12779569707841630376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293071 (A055999 (n + 2) + 1).toNat

end

end A293256.P12779569707841630376

/-! ## A293256.P9050542908962621204

`A293071(A051936(n+5)+4)`
-/

namespace A293256.P9050542908962621204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293071 (A051936 (n + 5) + 4).toNat

end

end A293256.P9050542908962621204

/-! ## A293256.P9711156662743378317

`A293071(A000217(n+5)-5)`
-/

namespace A293256.P9711156662743378317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293071 (A000217 (n + 5) - 5).toNat

end

end A293256.P9711156662743378317

/-! ## A293256.P584505980014064546

`A293071(A005408(n+2)+A000096(n+2))`
-/

namespace A293256.P584505980014064546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293071 (A005408 (n + 2) + A000096 (n + 2)).toNat

end

end A293256.P584505980014064546

/-! ## A293256.P1131792260834903802

`A293071(A133263(n+3)+A005843(n+1))`
-/

namespace A293256.P1131792260834903802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293071 (A133263 (n + 3) + A005843 (n + 1)).toNat

end

end A293256.P1131792260834903802

/-!
# A293257: G.f.: Product_{m>0} (1 - x^m + 2!*x^(2*m) - 3!*x^(3*m) + 4!*x^(4*m) - 5!*x^(5*m)).

The programs for A293257, there is no canonical definition to state claims against.
-/

/-! ## A293257.P17313798019013345221

`A293071(A055999(n+3))`
-/

namespace A293257.P17313798019013345221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293071 (A055999 (n + 3)).toNat

end

end A293257.P17313798019013345221

/-! ## A293257.P16442715636892080859

`A293071(A056119(n)+15)`
-/

namespace A293257.P16442715636892080859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293071 (A056119 n + 15).toNat

end

end A293257.P16442715636892080859

/-! ## A293257.P1702378642796263647

`A293071(Δ[A023551(n+1)])`
-/

namespace A293257.P1702378642796263647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293071 (f1 (n + 1) - f1 n).toNat

end

end A293257.P1702378642796263647

/-! ## A293257.P9770687627311372575

`A293071(A000217(n+6)-6)`
-/

namespace A293257.P9770687627311372575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293071 (A000217 (n + 6) - 6).toNat

end

end A293257.P9770687627311372575

/-! ## A293257.P13819842678580195357

`A293071(A000124(n+6)-7)`
-/

namespace A293257.P13819842678580195357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293071 (A000124 (n + 6) - 7).toNat

end

end A293257.P13819842678580195357

/-! ## A293257.P15405212707450337872

`A293071(A167499(n+3)+2*n)`
-/

namespace A293257.P15405212707450337872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293071 (A167499 (n + 3) + (2 * n : ℤ)).toNat

end

end A293257.P15405212707450337872

/-! ## A293257.P8250264646319155488

`A293071(2*n+A055998(n)+A004273(n+8))`
-/

namespace A293257.P8250264646319155488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293071 ((2 * n : ℤ) + (A055998 n + A004273 (n + 8))).toNat

end

end A293257.P8250264646319155488

/-!
# A293259: G.f.: Product_{i>0} 1/(Sum_{j>=0} (-1)^j*j!*x^(j*i)).

The programs for A293259, there is no canonical definition to state claims against.
-/

/-! ## A293259.P18091545911580177814

`A293293(∑[4*n])`
-/

namespace A293259.P18091545911580177814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293293 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293259.P18091545911580177814

/-! ## A293259.P3420520191789999511

`or(char[1], A293293(2*(n²+n)))`
-/

namespace A293259.P3420520191789999511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A293293 (2 * (n ^ 2 + n)))

end

end A293259.P3420520191789999511

/-! ## A293259.P967563680326500941

`A293293(2*(n²+n))+A000007(n+1)`
-/

namespace A293259.P967563680326500941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293293 (2 * (n ^ 2 + n)) + A000007 (n + 1)

end

end A293259.P967563680326500941

/-! ## A293259.P955922958076814564

`A293293(2*(n²+n))+A000035(2*n)`
-/

namespace A293259.P955922958076814564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293293 (2 * (n ^ 2 + n)) + A000035 (2 * n)

end

end A293259.P955922958076814564

/-! ## A293259.P10872101966577244792

`A293293(2*(n²+n))%A037151(n+1)`
-/

namespace A293259.P10872101966577244792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293293 (2 * (n ^ 2 + n))) (A037151 (n + 1))

end

end A293259.P10872101966577244792

/-! ## A293259.P12770229345213850210

`A293293(2*(n²+n))+and(2, n²/A040005(n))`
-/

namespace A293259.P12770229345213850210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293293 (2 * (n ^ 2 + n)) + Int.land 2 (SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / (A040005 n : ℚ)))

end

end A293259.P12770229345213850210

/-! ## A293259.P12582851483704574847

`A001222(A088732(n))*A293293(2*(n²+n))`
-/

namespace A293259.P12582851483704574847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A088732 n).toNat * A293293 (2 * (n ^ 2 + n))

end

end A293259.P12582851483704574847

/-! ## A293259.P16300387396298283637

`A008683(A006094(n+2))*A293293(2*(n²+n))`
-/

namespace A293259.P16300387396298283637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006094 (n + 2)).toNat * A293293 (2 * (n ^ 2 + n))

end

end A293259.P16300387396298283637

/-! ## A293259.P11654772046307902356

`A014963(A000217(n+5))*A293293(2*(n²+n))`
-/

namespace A293259.P11654772046307902356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 5)).toNat * A293293 (2 * (n ^ 2 + n))

end

end A293259.P11654772046307902356

/-! ## A293259.P16074393050875047448

`A293293(2*(n²+n))+A001221(A014963(40*(n+1)))`
-/

namespace A293259.P16074393050875047448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293293 (2 * (n ^ 2 + n)) + A001221 (A014963 (40 * (n + 1))).toNat

end

end A293259.P16074393050875047448

/-!
# A293261: Number of fixed polyominoes without holes that have a width and height of n.

The programs for A293261, there is no canonical definition to state claims against.
-/

/-! ## A293261.P1327572227322181877

`A232103(∑[4*n]+1)`
-/

namespace A293261.P1327572227322181877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232103 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A293261.P1327572227322181877

/-! ## A293261.P917171370475267564

`A232103(A001844(n))+char[18]`
-/

namespace A293261.P917171370475267564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232103 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A293261.P917171370475267564

/-! ## A293261.P7698223939491896708

`record[gcd(A232103(n+1), A296339(n))]`
-/

namespace A293261.P7698223939491896708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A232103 (n + 1)) (A296339 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293261.P7698223939491896708

/-! ## A293261.P5807741407094799803

`record[root(A232103(n+1), A286157(n+1))]`
-/

namespace A293261.P5807741407094799803
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A232103 (n + 1) : ℝ) ^ (1 / (A286157 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293261.P5807741407094799803

/-! ## A293261.P5785642550938635751

`gcd(A000038(n), A232103(A001844(n)))`
-/

namespace A293261.P5785642550938635751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A232103 (A001844 n).toNat)

end

end A293261.P5785642550938635751

/-!
# A293262: a(n) = floor(prime(n)*(e-2)).

The programs for A293262, the canonical program `A293262.P17065587637484912299` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293262 has offset 1).

The definition of A293262 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(A000040(n+1)*(e-2))` (program `A293262.P17065587637484912299`, by `A293262.P17065587637484912299.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A293262.P17065587637484912299

`floor(A000040(n+1)*(e-2))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A293262

/-- `floor(A000040(n+1)*(e-2))` -/
def P17065587637484912299.Spec : Prop :=
  ∀ n, P17065587637484912299.a n = A293262 (n + 1)

theorem P17065587637484912299.correct : P17065587637484912299.Spec := by
  intro n
  simp only [A293262, Nat.add_sub_cancel]

end A293262

/-! ## A293262.P3482017830168208675

`floor((e-2)*Δ[A007504(n)])`
-/

namespace A293262.P3482017830168208675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.exp 1 - 2) * (f1 (n + 1) - f1 n : ℝ)⌋

end

end A293262.P3482017830168208675

namespace A293262

/-- `floor((e-2)*Δ[A007504(n)])` -/
def P3482017830168208675.Spec : Prop :=
  ∀ n, P3482017830168208675.a n = A293262 (n + 1)

end A293262

/-! ## A293262.P16439747508779627984

`floor((e-2)*record[A006530(n+2)])`
-/

namespace A293262.P16439747508779627984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.exp 1 - 2) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌋

end

end A293262.P16439747508779627984

namespace A293262

/-- `floor((e-2)*record[A006530(n+2)])` -/
def P16439747508779627984.Spec : Prop :=
  ∀ n, P16439747508779627984.a n = A293262 (n + 1)

end A293262

/-! ## A293262.P3211088924365982643

`floor((e-2)*record[A014963(n+2)])`
-/

namespace A293262.P3211088924365982643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.exp 1 - 2) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌋

end

end A293262.P3211088924365982643

namespace A293262

/-- `floor((e-2)*record[A014963(n+2)])` -/
def P3211088924365982643.Spec : Prop :=
  ∀ n, P3211088924365982643.a n = A293262 (n + 1)

end A293262

/-! ## A293262.P17770647798602196898

`floor((e-2)*record[A020639(n+2)])`
-/

namespace A293262.P17770647798602196898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.exp 1 - 2) * (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ)⌋

end

end A293262.P17770647798602196898

namespace A293262

/-- `floor((e-2)*record[A020639(n+2)])` -/
def P17770647798602196898.Spec : Prop :=
  ∀ n, P17770647798602196898.a n = A293262 (n + 1)

end A293262

/-! ## A293262.P4696180775071372874

`record[floor((n+1)*(e-A000005(n+1)))]`
-/

namespace A293262.P4696180775071372874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * (Real.exp 1 - (A000005 (n + 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293262.P4696180775071372874

namespace A293262

/-- `record[floor((n+1)*(e-A000005(n+1)))]` -/
def P4696180775071372874.Spec : Prop :=
  ∀ n, P4696180775071372874.a n = A293262 (n + 1)

end A293262

/-! ## A293262.P7623414931648332584

`∑{d}[A000040(n+1), A000210(#)-#]`
-/

namespace A293262.P7623414931648332584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (A000210 d - (d : ℤ))

end

end A293262.P7623414931648332584

namespace A293262

/-- `∑{d}[A000040(n+1), A000210(#)-#]` -/
def P7623414931648332584.Spec : Prop :=
  ∀ n, P7623414931648332584.a n = A293262 (n + 1)

end A293262

/-! ## A293262.P1601797233569642084

`A022843(A000040(n+1))%p?[A006370(n)]`
-/

namespace A293262.P1601797233569642084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022843 (A000040 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A293262.P1601797233569642084

namespace A293262

/-- `A022843(A000040(n+1))%p?[A006370(n)]` -/
def P1601797233569642084.Spec : Prop :=
  ∀ n, P1601797233569642084.a n = A293262 (n + 1)

end A293262

/-! ## A293262.P12836643461025326304

`A279607(A100484(n+1))-A100484(n+1)`
-/

namespace A293262.P12836643461025326304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279607 (A100484 (n + 1)).toNat - A100484 (n + 1)

end

end A293262.P12836643461025326304

namespace A293262

/-- `A279607(A100484(n+1))-A100484(n+1)` -/
def P12836643461025326304.Spec : Prop :=
  ∀ n, P12836643461025326304.a n = A293262 (n + 1)

end A293262

/-!
# A293263: Number of fixed polyominoes without holes that have a width of n and height of 3.

The programs for A293263, there is no canonical definition to state claims against.
-/

/-! ## A293263.P5888843653480580205

`A232103(∑[n+3]+1)`
-/

namespace A293263.P5888843653480580205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232103 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A293263.P5888843653480580205

/-! ## A293263.P15693525956459982043

`A036225(n)*A232103(A167614(n+1))`
-/

namespace A293263.P15693525956459982043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036225 n * A232103 (A167614 (n + 1)).toNat

end

end A293263.P15693525956459982043

/-! ## A293263.P9850281496417539433

`A232103(A167614(n+1))%A332112(n)`
-/

namespace A293263.P9850281496417539433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232103 (A167614 (n + 1)).toNat) (A332112 n)

end

end A293263.P9850281496417539433

/-! ## A293263.P14807465901492799438

`A232103(A167614(n+1))/A036225(n+3)`
-/

namespace A293263.P14807465901492799438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232103 (A167614 (n + 1)).toNat : ℚ) / (A036225 (n + 3) : ℚ)

end

end A293263.P14807465901492799438

/-! ## A293263.P17170664183187720262

`A014963(6*(n+1))*A232103(A167614(n+1))`
-/

namespace A293263.P17170664183187720262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A232103 (A167614 (n + 1)).toNat

end

end A293263.P17170664183187720262

/-!
# A293266: Coefficients in asymptotic expansion of sequence A096161 and A161779.

The programs for A293266, there is no canonical definition to state claims against.
-/

/-! ## A293266.P425424446315245841

`A332249(A277431(n))-A076731(n+1)`
-/

namespace A293266.P425424446315245841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332249 (A277431 n).toNat - A076731 (n + 1)

end

end A293266.P425424446315245841

/-! ## A293266.P12233492715342909896

`A347610(A045925(n))`
-/

namespace A293266.P12233492715342909896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347610 (A045925 n).toNat

end

end A293266.P12233492715342909896

/-! ## A293266.P17966230484727922011

`A375496(A389245(n))`
-/

namespace A293266.P17966230484727922011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375496 (A389245 n).toNat

end

end A293266.P17966230484727922011

/-!
# A293270: a(n) = n^n*binomial(2*n-1, n).

The programs for A293270, there is no canonical definition to state claims against.
-/

/-! ## A293270.P9359888771836683392

`n^n*A088218(n)`
-/

namespace A293270.P9359888771836683392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A088218 n

end

end A293270.P9359888771836683392

/-! ## A293270.P8693488712982015050

`n^n*A007318(2*n²)`
-/

namespace A293270.P8693488712982015050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A007318 (2 * n ^ 2)

end

end A293270.P8693488712982015050

/-! ## A293270.P2901489012666892997

`n^n*A001405(comp[2*(n+1)])`
-/

namespace A293270.P2901489012666892997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ n : ℤ) * A001405 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A293270.P2901489012666892997

/-! ## A293270.P9080924593279595429

`abs(A000312(n)*A110556(n))`
-/

namespace A293270.P9080924593279595429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000312 n * A110556 n|

end

end A293270.P9080924593279595429

/-! ## A293270.P495576576868697840

`A110138(2*n)*A210736(2*n)`
-/

namespace A293270.P495576576868697840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110138 (2 * n) * A210736 (2 * n)

end

end A293270.P495576576868697840

/-!
# A293271: Numbers n such that n - p and n + p are both prime for some prime p.

The programs for A293271, there is no canonical definition to state claims against.
-/

/-! ## A293271.P15837852620166019398

`lt[0, A275768(n)]`
-/

namespace A293271.P15837852620166019398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275768 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A293271.P15837852620166019398

/-! ## A293271.P2174236325387455836

`eq[2, A000122(A275768(n)²)]`
-/

namespace A293271.P2174236325387455836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A275768 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293271.P2174236325387455836

/-! ## A293271.P6659460360518363967

`eq[0, A002262(a(A275768(n)))]` with `a(0)=2`
-/

namespace A293271.P6659460360518363967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A002262 (f2 (A275768 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293271.P6659460360518363967

/-! ## A293271.P11331860723905608254

`eq[2, A000005(a(A275768(n)))]` with `a(0)=4`
-/

namespace A293271.P11331860723905608254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000005 (f2 (A275768 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293271.P11331860723905608254

/-! ## A293271.P4604883836812991795

`eq[0, A001222(a(A275768(n))!)]` with `a(0)=2`
-/

namespace A293271.P4604883836812991795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A001222 (Nat.factorial (f2 (A275768 n).toNat).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293271.P4604883836812991795

/-! ## A293271.P11383899414283746367

`eq[1, A000040(A275768(n)+1)%2]`
-/

namespace A293271.P11383899414283746367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A275768 n + 1).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293271.P11383899414283746367

/-! ## A293271.P16290435609944584386

`eq[1, A001222(a(A275768(n))+1)]` with `a(0)=3`
-/

namespace A293271.P16290435609944584386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A001222 (f2 (A275768 n).toNat + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293271.P16290435609944584386

/-! ## A293271.P5337381987830931035

`eq[1, gcd(A000040(n+1), A275768(n))]`
-/

namespace A293271.P5337381987830931035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000040 (n + 1)) (A275768 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293271.P5337381987830931035

/-!
# A293272: Numbers k such that (10^k - 19)/9 is prime.

The programs for A293272, there is no canonical definition to state claims against.
-/

/-! ## A293272.P5258618493977400478

`eq[2, A096870(n+2)]+2`
-/

namespace A293272.P5258618493977400478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096870 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A293272.P5258618493977400478

/-! ## A293272.P5421352410204991632

`eq[2, A096870(A233583(n+1))]`
-/

namespace A293272.P5421352410204991632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096870 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293272.P5421352410204991632

/-! ## A293272.P17064080524983633143

`A009056(eq[2, A096870(n+2)])`
-/

namespace A293272.P17064080524983633143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096870 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293272.P17064080524983633143

/-! ## A293272.P13924960059044173312

`A089247(lt[A096870(n+2), 3]+1)+1`
-/

namespace A293272.P13924960059044173312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096870 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089247 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) + 1

end

end A293272.P13924960059044173312

/-!
# A293275: Exponent of highest power of 2 dividing the n-th (2,k)-perfect number A019278.

The programs for A293275, there is no canonical definition to state claims against.
-/

/-! ## A293275.P6945961678364348848

`A007814(A019278(n+1))`
-/

namespace A293275.P6945961678364348848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A019278 (n + 1)).toNat

end

end A293275.P6945961678364348848

/-! ## A293275.P219784038706621842

`log2(gcd(A000079(n), A019278(n+1)))`
-/

namespace A293275.P219784038706621842
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A000079 n) (A019278 (n + 1)) : ℝ)

end

end A293275.P219784038706621842

/-! ## A293275.P832347502986588336

`val(A019278(n+1), A299701(A000040(n+1)))`
-/

namespace A293275.P832347502986588336
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A019278 (n + 1)).toNat (A299701 (A000040 (n + 1)).toNat).toNat

end

end A293275.P832347502986588336

/-! ## A293275.P4592288505951838818

`val(A019278(n+1), A299701(A076787(n+1)))`
-/

namespace A293275.P4592288505951838818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A019278 (n + 1)).toNat (A299701 (A076787 (n + 1)).toNat).toNat

end

end A293275.P4592288505951838818

/-! ## A293275.P6976003701391495033

`A001222(and(-A019278(n+1), A019278(n+1)))`
-/

namespace A293275.P6976003701391495033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-A019278 (n + 1)) (A019278 (n + 1))).toNat

end

end A293275.P6976003701391495033

/-!
# A293281: Numbers k such that (28*10^k + 149)/3 is prime.

The programs for A293281, there is no canonical definition to state claims against.
-/

/-! ## A293281.P11682286053713142583

`∑[∏{e}[3*A084188(n)², #]]-1`
-/

namespace A293281.P11682286053713142583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A084188 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A293281.P11682286053713142583

/-! ## A293281.P15568896821578383247

`record[A002322(n+3)%(A151660(n)+n)]`
-/

namespace A293281.P15568896821578383247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002322 (n + 3)) (A151660 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293281.P15568896821578383247

/-! ## A293281.P8045095586186519162

`eq[A028234(A353438(n+1)), A038566(3*n+1)]`
-/

namespace A293281.P8045095586186519162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A353438 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293281.P8045095586186519162

/-! ## A293281.P17713076845737570790

`lt[A050089(A050092(2*n+1)), A050101(n+2)]`
-/

namespace A293281.P17713076845737570790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050089 (A050092 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050101 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293281.P17713076845737570790

/-!
# A293283: Numbers n such that n^2 = a^2 + b^5 for positive integers a b and n.

The programs for A293283, there is no canonical definition to state claims against.
-/

/-! ## A293283.P17225482468409885067

`A133388(∩[A100292(n+1), n²])`
-/

namespace A293283.P17225482468409885067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100292 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133388 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A293283.P17225482468409885067

/-!
# A293285: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of g.f. Product_{i>0} 1/(Sum_{j=0..k} j!*x^(j*i)).

The programs for A293285, there is no canonical definition to state claims against.
-/

/-! ## A293285.P16435881758141738742

`A290217(n)-A067898(A213916(n+1))`
-/

namespace A293285.P16435881758141738742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290217 n - A067898 (A213916 (n + 1)).toNat

end

end A293285.P16435881758141738742

/-! ## A293285.P8654981523977032578

`or(A290217(n), A292861(A351831(n+1)))`
-/

namespace A293285.P8654981523977032578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A290217 n) (A292861 (A351831 (n + 1)).toNat)

end

end A293285.P8654981523977032578

/-!
# A293286: a(n) = A181544(2n, 2n-1).

The programs for A293286, there is no canonical definition to state claims against.
-/

/-! ## A293286.P11076188358240880302

`A181544(A002378(2*(n+1))+1)`
-/

namespace A293286.P11076188358240880302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181544 (A002378 (2 * (n + 1)) + 1).toNat

end

end A293286.P11076188358240880302

/-!
# A293287: G.f.: Product_{m>0} 1/(1 + x^m + 2!*x^(2*m)).

The programs for A293287, there is no canonical definition to state claims against.
-/

/-! ## A293287.P10923187441163280250

`A290217(∑[n+3])`
-/

namespace A293287.P10923187441163280250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290217 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293287.P10923187441163280250

/-! ## A293287.P1798064143951345871

`A293285(∑[n+3])`
-/

namespace A293287.P1798064143951345871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293285 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293287.P1798064143951345871

/-! ## A293287.P12305981813543037538

`A293285(A027379(n+1))%A052957(n)`
-/

namespace A293287.P12305981813543037538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293285 (A027379 (n + 1)).toNat) (A052957 n)

end

end A293287.P12305981813543037538

/-! ## A293287.P14193857337636403293

`A087960(n)²*A293285(A027379(n+1))`
-/

namespace A293287.P14193857337636403293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n ^ 2 * A293285 (A027379 (n + 1)).toNat

end

end A293287.P14193857337636403293

/-! ## A293287.P931445574608690541

`and(A153881(n+1), A293285(A027379(n+1)))`
-/

namespace A293287.P931445574608690541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153881 (n + 1)) (A293285 (A027379 (n + 1)).toNat)

end

end A293287.P931445574608690541

/-! ## A293287.P13018358232383023446

`A001222(A059788(n+1))*A293285(A027379(n+1))`
-/

namespace A293287.P13018358232383023446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A059788 (n + 1)).toNat * A293285 (A027379 (n + 1)).toNat

end

end A293287.P13018358232383023446

/-! ## A293287.P5844090268235139354

`A011655(A307880(n+1))*A293285(A027379(n+1))`
-/

namespace A293287.P5844090268235139354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A307880 (n + 1)).toNat * A293285 (A027379 (n + 1)).toNat

end

end A293287.P5844090268235139354

/-! ## A293287.P10911810023679667860

`A011655(A140513(n))*A293285(A027379(n+1))`
-/

namespace A293287.P10911810023679667860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A140513 n).toNat * A293285 (A027379 (n + 1)).toNat

end

end A293287.P10911810023679667860

/-! ## A293287.P12549384440472251735

`A011655(A163963(n+1))*A293285(A027379(n+1))`
-/

namespace A293287.P12549384440472251735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A163963 (n + 1)).toNat * A293285 (A027379 (n + 1)).toNat

end

end A293287.P12549384440472251735

/-!
# A293288: Number of level n squares on a Sierpinski carpet that are enclosed in a circle with the same center and diameter.

The programs for A293288, there is no canonical definition to state claims against.
-/

/-! ## A293288.P3004792305713003997

`A003415(A003436(n)*A298022(3*n))`
-/

namespace A293288.P3004792305713003997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003436 n * A298022 (3 * n)).toNat

end

end A293288.P3004792305713003997

/-!
# A293289: Number of level n squares on a Sierpinski carpet that intersect the edge of a circle with the same center and diameter.

The programs for A293289, there is no canonical definition to state claims against.
-/

/-! ## A293289.P12074257675872693054

`A350633(A332868(n))`
-/

namespace A293289.P12074257675872693054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350633 (A332868 n).toNat

end

end A293289.P12074257675872693054

/-!
# A293290: a(n) = Product_{1 <= j <= k <= n} (k^2 + j^2).

The programs for A293290, there is no canonical definition to state claims against.
-/

/-! ## A293290.P10393650690516061854

`(a(n-1)+a(n-1))*A203775(n)` with `a(0)=1`
-/

namespace A293290.P10393650690516061854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + a (n - 1)) * A203775 n

end

end A293290.P10393650690516061854

/-!
# A293292: Numbers with last digit less than 5 (in base 10).

The programs for A293292, the canonical program `A293292.P10621231772857430164` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293292 has offset 1).

The definition of A293292 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293292.P10621231772857430164

`n+5*floor(n/5)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293292

/-- `n+5*floor(n/5)` -/
def P10621231772857430164.Spec : Prop :=
  ∀ n, P10621231772857430164.a n = A293292 (n + 1)

theorem P10621231772857430164.correct : P10621231772857430164.Spec := by
  intro n
  simp only [A293292, Nat.add_sub_cancel]

end A293292

/-! ## A293292.P14386260132447775137

`∑[gcd(6, a(n-5))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A293292.P14386260132447775137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 1] fun n f1 =>
  Nat.gcd 6 (f1 (n - 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293292.P14386260132447775137

namespace A293292

/-- `∑[gcd(6, a(n-5))]` -/
def P14386260132447775137.Spec : Prop :=
  ∀ n, (P14386260132447775137.a n : ℤ) = A293292 (n + 1)

end A293292

/-! ## A293292.P15476561832046883975

`∑[floor(a(n-5))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A293292.P15476561832046883975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 1, 6] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293292.P15476561832046883975

namespace A293292

/-- `∑[floor(a(n-5))]` -/
def P15476561832046883975.Spec : Prop :=
  ∀ n, (P15476561832046883975.a n : ℤ) = A293292 (n + 1)

end A293292

/-! ## A293292.P2375581479960480439

`comp[A293481(n+1)]`
-/

namespace A293292.P2375581479960480439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293481 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A293292.P2375581479960480439

namespace A293292

/-- `comp[A293481(n+1)]` -/
def P2375581479960480439.Spec : Prop :=
  ∀ n, (P2375581479960480439.a n : ℤ) = A293292 (n + 1)

end A293292

/-! ## A293292.P1563502407951930420

`comp[A235499(n)-4]`
-/

namespace A293292.P1563502407951930420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235499 n - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A293292.P1563502407951930420

namespace A293292

/-- `comp[A235499(n)-4]` -/
def P1563502407951930420.Spec : Prop :=
  ∀ n, (P1563502407951930420.a n : ℤ) = A293292 (n + 1)

end A293292

/-! ## A293292.P16326850375597730859

`comp[∑[A010122(n)]+2]`
-/

namespace A293292.P16326850375597730859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010122 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A293292.P16326850375597730859

namespace A293292

/-- `comp[∑[A010122(n)]+2]` -/
def P16326850375597730859.Spec : Prop :=
  ∀ n, (P16326850375597730859.a n : ℤ) = A293292 (n + 1)

end A293292

/-! ## A293292.P17080414271907576050

`∪[A017317(n), A390774(n)]`
-/

namespace A293292.P17080414271907576050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A293292.P17080414271907576050

namespace A293292

/-- `∪[A017317(n), A390774(n)]` -/
def P17080414271907576050.Spec : Prop :=
  ∀ n, (P17080414271907576050.a n : ℤ) = A293292 (n + 1)

end A293292

/-! ## A293292.P17975947668462921538

`∪[A146763(n), A390774(n)]`
-/

namespace A293292.P17975947668462921538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146763 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A293292.P17975947668462921538

namespace A293292

/-- `∪[A146763(n), A390774(n)]` -/
def P17975947668462921538.Spec : Prop :=
  ∀ n, (P17975947668462921538.a n : ℤ) = A293292 (n + 1)

end A293292

/-! ## A293292.P3163764080564811932

`∪[A109474(n+1), A390774(n)]`
-/

namespace A293292.P3163764080564811932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A293292.P3163764080564811932

namespace A293292

/-- `∪[A109474(n+1), A390774(n)]` -/
def P3163764080564811932.Spec : Prop :=
  ∀ n, (P3163764080564811932.a n : ℤ) = A293292 (n + 1)

end A293292

/-! ## A293292.P12250015528200768752

`∪[A109474(n+1), A391163(n)]`
-/

namespace A293292.P12250015528200768752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109474 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391163 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A293292.P12250015528200768752

namespace A293292

/-- `∪[A109474(n+1), A391163(n)]` -/
def P12250015528200768752.Spec : Prop :=
  ∀ n, (P12250015528200768752.a n : ℤ) = A293292 (n + 1)

end A293292

/-! ## A293292.P15727836833175463710

`∪[A271508(n+1), A390774(n)]`
-/

namespace A293292.P15727836833175463710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A293292.P15727836833175463710

namespace A293292

/-- `∪[A271508(n+1), A390774(n)]` -/
def P15727836833175463710.Spec : Prop :=
  ∀ n, (P15727836833175463710.a n : ℤ) = A293292 (n + 1)

end A293292

/-! ## A293292.P12719219979841598516

`∪[A277591(n+1), A390774(n)]`
-/

namespace A293292.P12719219979841598516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A293292.P12719219979841598516

namespace A293292

/-- `∪[A277591(n+1), A390774(n)]` -/
def P12719219979841598516.Spec : Prop :=
  ∀ n, (P12719219979841598516.a n : ℤ) = A293292 (n + 1)

end A293292

/-! ## A293292.P9783103807801394538

`A391164(A047226(n+1))`
-/

namespace A293292.P9783103807801394538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391164 (A047226 (n + 1)).toNat

end

end A293292.P9783103807801394538

namespace A293292

/-- `A391164(A047226(n+1))` -/
def P9783103807801394538.Spec : Prop :=
  ∀ n, P9783103807801394538.a n = A293292 (n + 1)

end A293292

/-! ## A293292.P6900219619306015704

`A272576(A047453(n+1))`
-/

namespace A293292.P6900219619306015704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272576 (A047453 (n + 1)).toNat

end

end A293292.P6900219619306015704

namespace A293292

/-- `A272576(A047453(n+1))` -/
def P6900219619306015704.Spec : Prop :=
  ∀ n, P6900219619306015704.a n = A293292 (n + 1)

end A293292

/-! ## A293292.P11857034953427428049

`∪[A310416(n), A390774(n)]`
-/

namespace A293292.P11857034953427428049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390774 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A293292.P11857034953427428049

namespace A293292

/-- `∪[A310416(n), A390774(n)]` -/
def P11857034953427428049.Spec : Prop :=
  ∀ n, (P11857034953427428049.a n : ℤ) = A293292 (n + 1)

end A293292

/-! ## A293292.P11494456551057019807

`record[n*Δ[A280913(n)]]`
-/

namespace A293292.P11494456551057019807
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280913 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293292.P11494456551057019807

namespace A293292

/-- `record[n*Δ[A280913(n)]]` -/
def P11494456551057019807.Spec : Prop :=
  ∀ n, P11494456551057019807.a n = A293292 (n + 1)

end A293292

/-! ## A293292.P4806162897789565667

`eq[n, n*A112713(n+1)]`
-/

namespace A293292.P4806162897789565667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A112713 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293292.P4806162897789565667

namespace A293292

/-- `eq[n, n*A112713(n+1)]` -/
def P4806162897789565667.Spec : Prop :=
  ∀ n, (P4806162897789565667.a n : ℤ) = A293292 (n + 1)

end A293292

/-! ## A293292.P37321963420226671

`lt[A010879(n)+n, n+5]`
-/

namespace A293292.P37321963420226671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 n + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A293292.P37321963420226671

namespace A293292

/-- `lt[A010879(n)+n, n+5]` -/
def P37321963420226671.Spec : Prop :=
  ∀ n, (P37321963420226671.a n : ℤ) = A293292 (n + 1)

end A293292

/-! ## A293292.P16090763656324967224

`(4*n-A010879(2*n))/2`
-/

namespace A293292.P16090763656324967224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n : ℤ) - A010879 (2 * n) : ℚ) / 2

end

end A293292.P16090763656324967224

namespace A293292

/-- `(4*n-A010879(2*n))/2` -/
def P16090763656324967224.Spec : Prop :=
  ∀ n, P16090763656324967224.a n = (A293292 (n + 1) : ℚ)

end A293292

/-! ## A293292.P2433055774015292079

`eq[A133311(n), A169933(n)]`
-/

namespace A293292.P2433055774015292079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133311 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293292.P2433055774015292079

namespace A293292

/-- `eq[A133311(n), A169933(n)]` -/
def P2433055774015292079.Spec : Prop :=
  ∀ n, (P2433055774015292079.a n : ℤ) = A293292 (n + 1)

end A293292

/-!
# A293293: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of g.f. Product_{i>0} 1/(Sum_{j=0..k} (-1)^j*j!*x^(j*i)).

The programs for A293293, there is no canonical definition to state claims against.
-/

/-! ## A293293.P12919728804534594880

`A293307(n)+A067898(A213916(n+1))`
-/

namespace A293293.P12919728804534594880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293307 n + A067898 (A213916 (n + 1)).toNat

end

end A293293.P12919728804534594880

/-!
# A293294: G.f.: Product_{m>0} 1/(1 - x^m + 2!*x^(2*m)).

The programs for A293294, there is no canonical definition to state claims against.
-/

/-! ## A293294.P13797542068002765041

`A293307(∑[n+3])`
-/

namespace A293294.P13797542068002765041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293307 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293294.P13797542068002765041

/-! ## A293294.P2069539396829051071

`A293293(∑[n+3])`
-/

namespace A293294.P2069539396829051071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293293 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293294.P2069539396829051071

/-! ## A293294.P3539280858381805845

`or(char[1], A293293(A027379(n+1)))`
-/

namespace A293294.P3539280858381805845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A293293 (A027379 (n + 1)).toNat)

end

end A293294.P3539280858381805845

/-! ## A293294.P9389119645329160705

`A293293(A027379(n+1))+A000035(2*n)`
-/

namespace A293294.P9389119645329160705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293293 (A027379 (n + 1)).toNat + A000035 (2 * n)

end

end A293294.P9389119645329160705

/-! ## A293294.P5577349524332227889

`A293293(A027379(n+1))%A007051(n+1)`
-/

namespace A293294.P5577349524332227889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293293 (A027379 (n + 1)).toNat) (A007051 (n + 1))

end

end A293294.P5577349524332227889

/-! ## A293294.P11142957119238620154

`A000034(A008590(n))*A293293(A027379(n+1))`
-/

namespace A293294.P11142957119238620154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A008590 n).toNat * A293293 (A027379 (n + 1)).toNat

end

end A293294.P11142957119238620154

/-! ## A293294.P1522943674654228825

`A000034(A278228(n+1))*A293293(A027379(n+1))`
-/

namespace A293294.P1522943674654228825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A278228 (n + 1)).toNat * A293293 (A027379 (n + 1)).toNat

end

end A293294.P1522943674654228825

/-!
# A293295: a(n) = Sum_{k=1..n} (-1)^(n-k)*hypergeom([k, k-2-n], [], 1).

The programs for A293295, there is no canonical definition to state claims against.
-/

/-! ## A293295.P12206363964500474887

`record[A003470(n)-n]`
-/

namespace A293295.P12206363964500474887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003470 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293295.P12206363964500474887

/-! ## A293295.P734480560791648542

`A193464(n+2)-(n+1)`
-/

namespace A293295.P734480560791648542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193464 (n + 2) - (n + 1 : ℤ)

end

end A293295.P734480560791648542

/-! ## A293295.P9841839601330223375

`A003470(n+2)-(n+2)`
-/

namespace A293295.P9841839601330223375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003470 (n + 2) - (n + 2 : ℤ)

end

end A293295.P9841839601330223375

/-! ## A293295.P14785373401338568178

`∑[A193463(n+2)+A033999(n)]-(n+1)`
-/

namespace A293295.P14785373401338568178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193463 (n + 2) + A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A293295.P14785373401338568178

/-! ## A293295.P13347948828219327596

`A193463(n+1)+(n+1)*A193464(n+1)`
-/

namespace A293295.P13347948828219327596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193463 (n + 1) + (n + 1 : ℤ) * A193464 (n + 1)

end

end A293295.P13347948828219327596

/-!
# A293296: a(n) = 2*n^2 - floor(n/4).

The programs for A293296, the canonical program `A293296.P12632130320180863566` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293296 has offset 0).

The definition of A293296 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²-floor(n/4)` (program `A293296.P12632130320180863566`, by `A293296.P12632130320180863566.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A293296.P12632130320180863566

`2*n²-floor(n/4)`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A293296

/-- `2*n²-floor(n/4)` -/
def P12632130320180863566.Spec : Prop :=
  ∀ n, P12632130320180863566.a n = A293296 n

theorem P12632130320180863566.correct : P12632130320180863566.Spec := by
  intro n
  simp only [A293296]

end A293296

/-! ## A293296.P5160465603500953550

`ceil(C(8*n, 2)/16)`
-/

namespace A293296.P5160465603500953550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose (8 * n) 2 : ℚ) / 16⌉

end

end A293296.P5160465603500953550

namespace A293296

/-- `ceil(C(8*n, 2)/16)` -/
def P5160465603500953550.Spec : Prop :=
  ∀ n, P5160465603500953550.a n = A293296 n

end A293296

/-! ## A293296.P18215587488757559138

`ceil(n*record[xor(7, n-3)]/4)`
-/

namespace A293296.P18215587488757559138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 7 ((n : ℤ) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 4⌉

end

end A293296.P18215587488757559138

namespace A293296

/-- `ceil(n*record[xor(7, n-3)]/4)` -/
def P18215587488757559138.Spec : Prop :=
  ∀ n, P18215587488757559138.a n = A293296 n

end A293296

/-! ## A293296.P5415530587125568786

`ceil(n*(or(1, 8*n)-2)/4)`
-/

namespace A293296.P5415530587125568786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) * ((Nat.lor 1 (8 * n) : ℤ) - 2) : ℚ) / 4⌉

end

end A293296.P5415530587125568786

namespace A293296

/-- `ceil(n*(or(1, 8*n)-2)/4)` -/
def P5415530587125568786.Spec : Prop :=
  ∀ n, P5415530587125568786.a n = A293296 n

end A293296

/-! ## A293296.P6224010743121202053

`ceil(n*(xor(1, 8*n)-2)/4)`
-/

namespace A293296.P6224010743121202053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℤ) * ((Nat.xor 1 (8 * n) : ℤ) - 2) : ℚ) / 4⌉

end

end A293296.P6224010743121202053

namespace A293296

/-- `ceil(n*(xor(1, 8*n)-2)/4)` -/
def P6224010743121202053.Spec : Prop :=
  ∀ n, P6224010743121202053.a n = A293296 n

end A293296

/-! ## A293296.P17188270005938807329

`∑[∑[floor(a(n-4))]]` with `a(0)=0, a(1)=2, a(2)=4, a(3)=4, a(4)=3, a(5)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A293296.P17188270005938807329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 4, 4, 3, 5] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293296.P17188270005938807329

namespace A293296

/-- `∑[∑[floor(a(n-4))]]` -/
def P17188270005938807329.Spec : Prop :=
  ∀ n, (P17188270005938807329.a n : ℤ) = A293296 n

end A293296

/-! ## A293296.P6873922367764059422

`round(2*n²-(xor(1, n)-1)/4)`
-/

namespace A293296.P6873922367764059422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n ^ 2 : ℚ) - ((Nat.xor 1 n : ℤ) - 1 : ℚ) / 4)

end

end A293296.P6873922367764059422

namespace A293296

/-- `round(2*n²-(xor(1, n)-1)/4)` -/
def P6873922367764059422.Spec : Prop :=
  ∀ n, P6873922367764059422.a n = A293296 n

end A293296

/-! ## A293296.P5609951439507165193

`ceil((8*n-1)*gcd(n, 2*n)/4)`
-/

namespace A293296.P5609951439507165193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((8 * n : ℤ) - 1) * (Nat.gcd n (2 * n) : ℤ) : ℚ) / 4⌉

end

end A293296.P5609951439507165193

namespace A293296

/-- `ceil((8*n-1)*gcd(n, 2*n)/4)` -/
def P5609951439507165193.Spec : Prop :=
  ∀ n, P5609951439507165193.a n = A293296 n

end A293296

/-! ## A293296.P11170997302266000472

`ceil((7*n+n-1)*n%(n+1)/4)`
-/

namespace A293296.P11170997302266000472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((7 * n : ℤ) + ((n : ℤ) - 1)) * ((n % (n + 1) : ℕ) : ℤ) : ℚ) / 4⌉

end

end A293296.P11170997302266000472

namespace A293296

/-- `ceil((7*n+n-1)*n%(n+1)/4)` -/
def P11170997302266000472.Spec : Prop :=
  ∀ n, P11170997302266000472.a n = A293296 n

end A293296

/-! ## A293296.P7014446175042905953

`ceil(A139274(n)/4)`
-/

namespace A293296.P7014446175042905953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A139274 n : ℚ) / 4⌉

end

end A293296.P7014446175042905953

namespace A293296

/-- `ceil(A139274(n)/4)` -/
def P7014446175042905953.Spec : Prop :=
  ∀ n, P7014446175042905953.a n = A293296 n

end A293296

/-! ## A293296.P15695385437072548362

`ceil((A014635(n)+n)/4)`
-/

namespace A293296.P15695385437072548362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A014635 n + (n : ℤ) : ℚ) / 4⌉

end

end A293296.P15695385437072548362

namespace A293296

/-- `ceil((A014635(n)+n)/4)` -/
def P15695385437072548362.Spec : Prop :=
  ∀ n, P15695385437072548362.a n = A293296 n

end A293296

/-! ## A293296.P8462874197911624064

`abs(2*n²-A002265(n))`
-/

namespace A293296.P8462874197911624064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n ^ 2 : ℤ) - A002265 n|

end

end A293296.P8462874197911624064

namespace A293296

/-- `abs(2*n²-A002265(n))` -/
def P8462874197911624064.Spec : Prop :=
  ∀ n, P8462874197911624064.a n = A293296 n

end A293296

/-! ## A293296.P12868546225211868364

`ceil(sqrt(((2*n+1)²-A016861(n))*n²))`
-/

namespace A293296.P12868546225211868364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((((2 * n + 1) ^ 2 : ℤ) - A016861 n) * (n ^ 2 : ℤ) : ℝ)⌉

end

end A293296.P12868546225211868364

namespace A293296

/-- `ceil(sqrt(((2*n+1)²-A016861(n))*n²))` -/
def P12868546225211868364.Spec : Prop :=
  ∀ n, P12868546225211868364.a n = A293296 n

end A293296

/-! ## A293296.P15429203985902082125

`abs(2*(n+1)²-(A047203(n+2)+2*n)-n)`
-/

namespace A293296.P15429203985902082125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * (n + 1) ^ 2 : ℤ) - (A047203 (n + 2) + (2 * n : ℤ)) - (n : ℤ)|

end

end A293296.P15429203985902082125

namespace A293296

/-- `abs(2*(n+1)²-(A047203(n+2)+2*n)-n)` -/
def P15429203985902082125.Spec : Prop :=
  ∀ n, P15429203985902082125.a n = A293296 n

end A293296

/-! ## A293296.P12158688894213336019

`record[n*A142150(n)-A132292(n+1)]`
-/

namespace A293296.P12158688894213336019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A142150 n - A132292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293296.P12158688894213336019

namespace A293296

/-- `record[n*A142150(n)-A132292(n+1)]` -/
def P12158688894213336019.Spec : Prop :=
  ∀ n, P12158688894213336019.a n = A293296 n

end A293296

/-! ## A293296.P3120320700062191482

`ceil(n*(∏{d}[8*n, A014963(#)]-1)/4)`
-/

namespace A293296.P3120320700062191482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℤ) * (∏ d ∈ Nat.divisors (f1 n), A014963 d - 1) : ℤ) : ℚ) / 4⌉

end

end A293296.P3120320700062191482

namespace A293296

/-- `ceil(n*(∏{d}[8*n, A014963(#)]-1)/4)` -/
def P3120320700062191482.Spec : Prop :=
  ∀ n, P3120320700062191482.a n = A293296 n

end A293296

/-! ## A293296.P18414149930483317863

`A341706(A082643(n))`
-/

namespace A293296.P18414149930483317863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341706 (A082643 n).toNat

end

end A293296.P18414149930483317863

namespace A293296

/-- `A341706(A082643(n))` -/
def P18414149930483317863.Spec : Prop :=
  ∀ n, P18414149930483317863.a n = A293296 n

end A293296

/-!
# A293297: Row sums of A293472.

The programs for A293297, there is no canonical definition to state claims against.
-/

/-! ## A293297.P8331634825034062873

`A066490(A096222(n+1))`
-/

namespace A293297.P8331634825034062873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (A096222 (n + 1)).toNat

end

end A293297.P8331634825034062873

/-! ## A293297.P16873222581217695371

`∑[A248227(∑[A148653(n)])]`
-/

namespace A293297.P16873222581217695371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148653 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248227 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293297.P16873222581217695371

/-! ## A293297.P6497928943726039178

`Δ[A035053(n+2)%A116884(3*(n+1))]`
-/

namespace A293297.P6497928943726039178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035053 (n + 2)) (A116884 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293297.P6497928943726039178

/-!
# A293299: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. Product_{i>0} 1/(Sum_{j=0..k} x^(j*i)/j!).

The programs for A293299, there is no canonical definition to state claims against.
-/

/-! ## A293299.P15942779263887691461

`(2-A230404(A134991(n+1)))*A110556(A192062(n))`
-/

namespace A293299.P15942779263887691461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A230404 (A134991 (n + 1)).toNat) * A110556 (A192062 n).toNat

end

end A293299.P15942779263887691461

/-! ## A293299.P1639903387378985439

`A286656(n)-A176202(A193636(n))`
-/

namespace A293299.P1639903387378985439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286656 n - A176202 (A193636 n).toNat

end

end A293299.P1639903387378985439

/-! ## A293299.P15556703437877045120

`A302233(n)-A286351(A293724(n))`
-/

namespace A293299.P15556703437877045120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302233 n - A286351 (A293724 n).toNat

end

end A293299.P15556703437877045120

/-! ## A293299.P14688572457803138072

`A156953(A291656(n))*A286656(n)`
-/

namespace A293299.P14688572457803138072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156953 (A291656 n).toNat * A286656 n

end

end A293299.P14688572457803138072

/-! ## A293299.P15266051665261758970

`A286656(n)*A288565(A225631(n))`
-/

namespace A293299.P15266051665261758970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286656 n * A288565 (A225631 n).toNat

end

end A293299.P15266051665261758970

