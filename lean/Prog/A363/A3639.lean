import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
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

/-!
# A363900: Expansion of Sum_{k>0} k * x^(4*k) / (1 - x^(5*k)).

The programs for A363900, there is no canonical definition to state claims against.
-/

/-! ## A363900.P10319025086881764773

`lcm(A135517(A351031(n+1)), A364022(n+1))`
-/

namespace A363900.P10319025086881764773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A135517 (A351031 (n + 1)).toNat) (A364022 (n + 1))

end

end A363900.P10319025086881764773

/-! ## A363900.P12067693268597105862

`dr(A364022(n+1)%A345794(3*n+4))`
-/

namespace A363900.P12067693268597105862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (Int.tmod (A364022 (n + 1)) (A345794 (3 * n + 4)))

end

end A363900.P12067693268597105862

/-! ## A363900.P12633995996192135815

`abs(A364022(n+1)%A114613(n+1))`
-/

namespace A363900.P12633995996192135815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A364022 (n + 1)) (A114613 (n + 1))|

end

end A363900.P12633995996192135815

/-! ## A363900.P7804438733986572592

`gcd(A000038(A000837(n)), A364022(n+1))`
-/

namespace A363900.P7804438733986572592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A000837 n).toNat) (A364022 (n + 1))

end

end A363900.P7804438733986572592

/-! ## A363900.P10088943764048678063

`lcm(A319137(A334549(n)), A364022(n+1))`
-/

namespace A363900.P10088943764048678063
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A319137 (A334549 n).toNat) (A364022 (n + 1))

end

end A363900.P10088943764048678063

/-!
# A363901: Expansion of Sum_{k>0} x^k / (1 - x^(3*k))^2.

The programs for A363901, the canonical program `A363901.P93164944309145225` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363901 has offset 1).

The definition of A363901 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001817, A078181, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363901.P93164944309145225

`(2*A001817(n+1)+A078181(n+1))/3`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A363901

/-- `(2*A001817(n+1)+A078181(n+1))/3` -/
def P93164944309145225.Spec : Prop :=
  ∀ n, P93164944309145225.a n = (A363901 (n + 1) : ℚ)

end A363901

/-! ## A363901.P14125772965091426032

`2*A363975(n+1)-A363970(n+1)`
-/

namespace A363901.P14125772965091426032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A363975 (n + 1) - A363970 (n + 1)

end

end A363901.P14125772965091426032

namespace A363901

/-- `2*A363975(n+1)-A363970(n+1)` -/
def P14125772965091426032.Spec : Prop :=
  ∀ n, P14125772965091426032.a n = A363901 (n + 1)

end A363901

/-! ## A363901.P15518595106171034088

`A111439(A078181(n+1)%A320873(n+1))`
-/

namespace A363901.P15518595106171034088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111439 (Int.tmod (A078181 (n + 1)) (A320873 (n + 1))).toNat

end

end A363901.P15518595106171034088

namespace A363901

/-- `A111439(A078181(n+1)%A320873(n+1))` -/
def P15518595106171034088.Spec : Prop :=
  ∀ n, P15518595106171034088.a n = A363901 (n + 1)

end A363901

/-! ## A363901.P13062714290043381074

`A111439(A078181(n+1))%A113724(3*n+1)`
-/

namespace A363901.P13062714290043381074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111439 (A078181 (n + 1)).toNat) (A113724 (3 * n + 1))

end

end A363901.P13062714290043381074

namespace A363901

/-- `A111439(A078181(n+1))%A113724(3*n+1)` -/
def P13062714290043381074.Spec : Prop :=
  ∀ n, P13062714290043381074.a n = A363901 (n + 1)

end A363901

/-! ## A363901.P11926528468938271865

`A111439(A078181(n+1))%A002981(n+4)`
-/

namespace A363901.P11926528468938271865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111439 (A078181 (n + 1)).toNat) (A002981 (n + 4))

end

end A363901.P11926528468938271865

namespace A363901

/-- `A111439(A078181(n+1))%A002981(n+4)` -/
def P11926528468938271865.Spec : Prop :=
  ∀ n, P11926528468938271865.a n = A363901 (n + 1)

end A363901

/-!
# A363902: Expansion of Sum_{k>0} x^(2*k) / (1 - x^(3*k))^2.

The programs for A363902, the canonical program `A363902.P1501377666903482060` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363902 has offset 1).

The definition of A363902 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001822, A078182, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363902.P1501377666903482060

`(A001822(n+1)+A078182(n+1))/3`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A363902

/-- `(A001822(n+1)+A078182(n+1))/3` -/
def P1501377666903482060.Spec : Prop :=
  ∀ n, P1501377666903482060.a n = (A363902 (n + 1) : ℚ)

end A363902

/-! ## A363902.P12056784177285949701

`2*A363976(n+1)-A363971(n+1)`
-/

namespace A363902.P12056784177285949701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A363976 (n + 1) - A363971 (n + 1)

end

end A363902.P12056784177285949701

namespace A363902

/-- `2*A363976(n+1)-A363971(n+1)` -/
def P12056784177285949701.Spec : Prop :=
  ∀ n, P12056784177285949701.a n = A363902 (n + 1)

end A363902

/-! ## A363902.P9151392496557892368

`∑{d}[n+1, A175676(#+1)]`
-/

namespace A363902.P9151392496557892368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A175676 (d + 1)

end

end A363902.P9151392496557892368

namespace A363902

/-- `∑{d}[n+1, A175676(#+1)]` -/
def P9151392496557892368.Spec : Prop :=
  ∀ n, P9151392496557892368.a n = A363902 (n + 1)

end A363902

/-! ## A363902.P14906070525646937486

`A002264(A078182(n+1)+A001822(n+1))`
-/

namespace A363902.P14906070525646937486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A078182 (n + 1) + A001822 (n + 1)).toNat

end

end A363902.P14906070525646937486

namespace A363902

/-- `A002264(A078182(n+1)+A001822(n+1))` -/
def P14906070525646937486.Spec : Prop :=
  ∀ n, P14906070525646937486.a n = A363902 (n + 1)

end A363902

/-! ## A363902.P16443807762384635294

`A103627(A078182(n+1)+A001822(n+1))`
-/

namespace A363902.P16443807762384635294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A078182 (n + 1) + A001822 (n + 1)).toNat

end

end A363902.P16443807762384635294

namespace A363902

/-- `A103627(A078182(n+1)+A001822(n+1))` -/
def P16443807762384635294.Spec : Prop :=
  ∀ n, P16443807762384635294.a n = A363902 (n + 1)

end A363902

/-! ## A363902.P8567512561774752988

`A005843(A363976(n+1))-A363971(n+1)`
-/

namespace A363902.P8567512561774752988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A363976 (n + 1)).toNat - A363971 (n + 1)

end

end A363902.P8567512561774752988

namespace A363902

/-- `A005843(A363976(n+1))-A363971(n+1)` -/
def P8567512561774752988.Spec : Prop :=
  ∀ n, P8567512561774752988.a n = A363902 (n + 1)

end A363902

/-!
# A363903: Expansion of Sum_{k>0} x^k / (1 - x^(4*k))^2.

The programs for A363903, the canonical program `A363903.P2367214496446781928` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363903 has offset 1).

The definition of A363903 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001826, A050449, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363903.P2367214496446781928

`(3*A001826(n+1)+A050449(n+1))/4`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A363903

/-- `(3*A001826(n+1)+A050449(n+1))/4` -/
def P2367214496446781928.Spec : Prop :=
  ∀ n, P2367214496446781928.a n = (A363903 (n + 1) : ℚ)

end A363903

/-! ## A363903.P2321564895716438081

`A363258(A003602(n+1))`
-/

namespace A363903.P2321564895716438081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363258 (A003602 (n + 1)).toNat

end

end A363903.P2321564895716438081

namespace A363903

/-- `A363258(A003602(n+1))` -/
def P2321564895716438081.Spec : Prop :=
  ∀ n, P2321564895716438081.a n = A363903 (n + 1)

end A363903

/-! ## A363903.P5990834596141862255

`2*A363977(n+1)-A363972(n+1)`
-/

namespace A363903.P5990834596141862255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A363977 (n + 1) - A363972 (n + 1)

end

end A363903.P5990834596141862255

namespace A363903

/-- `2*A363977(n+1)-A363972(n+1)` -/
def P5990834596141862255.Spec : Prop :=
  ∀ n, P5990834596141862255.a n = A363903 (n + 1)

end A363903

/-! ## A363903.P8670830836356648310

`A181550(A363977(n+1))`
-/

namespace A363903.P8670830836356648310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181550 (A363977 (n + 1)).toNat

end

end A363903.P8670830836356648310

namespace A363903

/-- `A181550(A363977(n+1))` -/
def P8670830836356648310.Spec : Prop :=
  ∀ n, P8670830836356648310.a n = A363903 (n + 1)

end A363903

/-! ## A363903.P15223901273446096616

`A082429(A140210(n+1))`
-/

namespace A363903.P15223901273446096616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082429 (A140210 (n + 1)).toNat

end

end A363903.P15223901273446096616

namespace A363903

/-- `A082429(A140210(n+1))` -/
def P15223901273446096616.Spec : Prop :=
  ∀ n, P15223901273446096616.a n = A363903 (n + 1)

end A363903

/-!
# A363904: Expansion of Sum_{k>0} x^(3*k) / (1 - x^(4*k))^2.

The programs for A363904, there is no canonical definition to state claims against.
-/

/-! ## A363904.P3001219254328240450

`A363259(floor(n/(xor(n, n+1)+1))+1)`
-/

namespace A363904.P3001219254328240450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363259 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat

end

end A363904.P3001219254328240450

/-! ## A363904.P13478560661931181193

`A363259(A003602(n+1))`
-/

namespace A363904.P13478560661931181193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363259 (A003602 (n + 1)).toNat

end

end A363904.P13478560661931181193

/-! ## A363904.P14750975770072182976

`2*A363978(n+1)-A363973(n+1)`
-/

namespace A363904.P14750975770072182976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A363978 (n + 1) - A363973 (n + 1)

end

end A363904.P14750975770072182976

/-! ## A363904.P5794857662863506815

`A110655(A050452(n+1))%A331593(n+1)`
-/

namespace A363904.P5794857662863506815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110655 (A050452 (n + 1)).toNat) (A331593 (n + 1))

end

end A363904.P5794857662863506815

/-! ## A363904.P4877700451585349180

`A293497(A363973(n+1))`
-/

namespace A363904.P4877700451585349180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293497 (A363973 (n + 1)).toNat

end

end A363904.P4877700451585349180

/-!
# A363907: T(n,k) is the number of bounded regions in B(k, n) (see link).

The programs for A363907, there is no canonical definition to state claims against.
-/

/-! ## A363907.P14807323140635152373

`A055572(A361893(n+1))`
-/

namespace A363907.P14807323140635152373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055572 (A361893 (n + 1)).toNat

end

end A363907.P14807323140635152373

/-!
# A363908: a(n) = exp(-1/5) * Sum_{k>=0} (5*k + 4)^n / (5^k * k!).

The programs for A363908, there is no canonical definition to state claims against.
-/

/-! ## A363908.P1557389955039413058

`A337041(n+1)+A337041(n)`
-/

namespace A363908.P1557389955039413058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337041 (n + 1) + A337041 n

end

end A363908.P1557389955039413058

/-!
# A363911: n! times the number of posets with n unlabeled elements.

The programs for A363911, there is no canonical definition to state claims against.
-/

/-! ## A363911.P2297966772426859066

`A000142(n)*A000112(n)`
-/

namespace A363911.P2297966772426859066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A000112 n

end

end A363911.P2297966772426859066

/-! ## A363911.P4455123234060544468

`Δ[A003422(n)]*A000112(n)`
-/

namespace A363911.P4455123234060544468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000112 n

end

end A363911.P4455123234060544468

/-! ## A363911.P4691777183930279134

`∏[A028310(n)]*A000112(n)`
-/

namespace A363911.P4691777183930279134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A000112 n

end

end A363911.P4691777183930279134

/-! ## A363911.P6846600016275698775

`A357759(n+1)!*A000112(n)`
-/

namespace A363911.P6846600016275698775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A357759 (n + 1)).toNat : ℤ) * A000112 n

end

end A363911.P6846600016275698775

/-! ## A363911.P6175046757406088523

`A000112(n)*A059590(ceil(2^(n-1)))`
-/

namespace A363911.P6175046757406088523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000112 n * A059590 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A363911.P6175046757406088523

/-!
# A363913: a(n) = Sum_{k=0..n} divides(k, n) * 3^k, where divides(k, n) = 1 if k divides n, otherwise 0.

The programs for A363913, there is no canonical definition to state claims against.
-/

/-! ## A363913.P16119894003925058788

`A004793(A055895(n))`
-/

namespace A363913.P16119894003925058788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004793 (A055895 n).toNat

end

end A363913.P16119894003925058788

/-! ## A363913.P17240244985861115950

`A005836(A055895(n)+1)`
-/

namespace A363913.P17240244985861115950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (A055895 n + 1).toNat

end

end A363913.P17240244985861115950

/-! ## A363913.P1406566731464589364

`A175070(A000244(n))+A000244(n)`
-/

namespace A363913.P1406566731464589364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175070 (A000244 n).toNat + A000244 n

end

end A363913.P1406566731464589364

/-! ## A363913.P11676833802015049887

`A175070(A000792(3*n))+A000792(3*n)`
-/

namespace A363913.P11676833802015049887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175070 (A000792 (3 * n)).toNat + A000792 (3 * n)

end

end A363913.P11676833802015049887

/-! ## A363913.P11730507784152778781

`A008486(∑{d}[n, 3^(#-1)])`
-/

namespace A363913.P11730507784152778781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), (3 : ℚ) ^ ((d : ℤ) - 1 : ℤ))).toNat

end

end A363913.P11730507784152778781

/-!
# A363914: The Moebius triangle read by rows. Inverse matrix of the divisibility triangle A113704.

The programs for A363914, there is no canonical definition to state claims against.
-/

/-! ## A363914.P10646226405074755194

`∑[A206706(abs(1-n))]`
-/

namespace A363914.P10646226405074755194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206706 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363914.P10646226405074755194

/-! ## A363914.P2126325207578219705

`A319000(n+1)-A144600(A274170(3*n+2))`
-/

namespace A363914.P2126325207578219705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319000 (n + 1) - A144600 (A274170 (3 * n + 2)).toNat

end

end A363914.P2126325207578219705

/-! ## A363914.P18293052673722067270

`A147985(n+1)%A000034(A294138(n))`
-/

namespace A363914.P18293052673722067270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147985 (n + 1)) (A000034 (A294138 n).toNat)

end

end A363914.P18293052673722067270

/-! ## A363914.P5259584657024845629

`A028863(A256311(n+1))`
-/

namespace A363914.P5259584657024845629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028863 (A256311 (n + 1)).toNat

end

end A363914.P5259584657024845629

/-! ## A363914.P16436065333988404146

`1-A114116(A143395(n))`
-/

namespace A363914.P16436065333988404146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A114116 (A143395 n).toNat

end

end A363914.P16436065333988404146

/-!
# A363915: Triangle read by rows. The indicator function for prime divisors, the Euclid matrix.

The programs for A363915, there is no canonical definition to state claims against.
-/

/-! ## A363915.P9688682549548710825

`A240315(n)%A133255(n+1)`
-/

namespace A363915.P9688682549548710825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240315 n) (A133255 (n + 1))

end

end A363915.P9688682549548710825

/-! ## A363915.P8025358260433189436

`A177264(n+1)%A374433(n)`
-/

namespace A363915.P8025358260433189436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A177264 (n + 1)) (A374433 n)

end

end A363915.P8025358260433189436

/-! ## A363915.P16036884215739300333

`A102669(A372717(n)*A372720(2*(n+2)))`
-/

namespace A363915.P16036884215739300333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (A372717 n * A372720 (2 * (n + 2))).toNat

end

end A363915.P16036884215739300333

/-! ## A363915.P7658010732460135445

`A375555(n)%A133255(n+1)`
-/

namespace A363915.P7658010732460135445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A375555 n) (A133255 (n + 1))

end

end A363915.P7658010732460135445

/-! ## A363915.P7732799197740601648

`A383097(A328362(n+1)+A328361(3*n+2))`
-/

namespace A363915.P7732799197740601648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383097 (A328362 (n + 1) + A328361 (3 * n + 2)).toNat

end

end A363915.P7732799197740601648

/-!
# A363916: Array read by descending antidiagonals. A(n, k) = Sum_{d=0..k} A363914(k, d) * n^d.

The programs for A363916, there is no canonical definition to state claims against.
-/

/-! ## A363916.P17116060243758446888

`A322279(A061579(n))%A120863(2*n+5)`
-/

namespace A363916.P17116060243758446888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322279 (A061579 n).toNat) (A120863 (2 * n + 5))

end

end A363916.P17116060243758446888

/-! ## A363916.P17670341066897903369

`A322279(A061579(n)%A191988(3*n+2))`
-/

namespace A363916.P17670341066897903369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322279 (Int.tmod (A061579 n) (A191988 (3 * n + 2))).toNat

end

end A363916.P17670341066897903369

/-! ## A363916.P10062053104692616417

`A122851(comp[A036689(3*(n+1))-A145767(n+1)])`
-/

namespace A363916.P10062053104692616417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036689 (3 * (n + 1)) - A145767 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122851 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A363916.P10062053104692616417

/-! ## A363916.P3813692465071577726

`A026729(A001263(n+1))+A326676(n)^A299905(n)!`
-/

namespace A363916.P3813692465071577726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 (A001263 (n + 1)).toNat + A326676 n ^ Nat.factorial (A299905 n).toNat

end

end A363916.P3813692465071577726

/-!
# A363917: a(n) = Product_{p in Factors(n)} mult(p) * n^mult(p) / p, where Factors(n) is the integer factorization of n and mult(p) the multiplicity of the prime factor p.

The programs for A363917, the canonical program `A363917.P8803550997163744915` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363917 has offset 1).

The definition of A363917 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A363923, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363917.P8803550997163744915

`A363923(n+1)*A005361(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A363917

/-- `A363923(n+1)*A005361(n+1)` -/
def P8803550997163744915.Spec : Prop :=
  ∀ n, P8803550997163744915.a n = A363917 (n + 1)

theorem P8803550997163744915.correct : P8803550997163744915.Spec := by
  intro n
  simp only [A363917, Nat.add_sub_cancel]

end A363917

/-! ## A363917.P10160115457344513419

`A363918(n+1)*A205959(n+1)`
-/

namespace A363917.P10160115457344513419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363918 (n + 1) * A205959 (n + 1)

end

end A363917.P10160115457344513419

namespace A363917

/-- `A363918(n+1)*A205959(n+1)` -/
def P10160115457344513419.Spec : Prop :=
  ∀ n, P10160115457344513419.a n = A363917 (n + 1)

end A363917

/-! ## A363917.P17589260837083226761

`(n+1)/∏{p}[n+1, #]*(n+1)^(∑{e}[n+1, #]-1)*∏{e}[n+1, #]`
-/

namespace A363917.P17589260837083226761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (n + 1 : ℚ) ^ (((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) - 1 : ℤ) * ((∏ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p : ℕ) : ℚ)

end

end A363917.P17589260837083226761

namespace A363917

/-- `(n+1)/∏{p}[n+1, #]*(n+1)^(∑{e}[n+1, #]-1)*∏{e}[n+1, #]` -/
def P17589260837083226761.Spec : Prop :=
  ∀ n, P17589260837083226761.a n = (A363917 (n + 1) : ℚ)

end A363917

/-! ## A363917.P13201407993541004091

`A072195(n+1)*A203639(n+1)`
-/

namespace A363917.P13201407993541004091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072195 (n + 1) * A203639 (n + 1)

end

end A363917.P13201407993541004091

namespace A363917

/-- `A072195(n+1)*A203639(n+1)` -/
def P13201407993541004091.Spec : Prop :=
  ∀ n, P13201407993541004091.a n = A363917 (n + 1)

end A363917

/-! ## A363917.P5554324605107388005

`A005361(n+1)*A205959(n+1)*A363919(n+1)`
-/

namespace A363917.P5554324605107388005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A205959 (n + 1) * A363919 (n + 1)

end

end A363917.P5554324605107388005

namespace A363917

/-- `A005361(n+1)*A205959(n+1)*A363919(n+1)` -/
def P5554324605107388005.Spec : Prop :=
  ∀ n, P5554324605107388005.a n = A363917 (n + 1)

end A363917

/-! ## A363917.P18022277461317336817

`A363918(n+1)/A363919(n+1)*A363923(n+1)`
-/

namespace A363917.P18022277461317336817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363918 (n + 1) : ℚ) / (A363919 (n + 1) : ℚ) * (A363923 (n + 1) : ℚ)

end

end A363917.P18022277461317336817

namespace A363917

/-- `A363918(n+1)/A363919(n+1)*A363923(n+1)` -/
def P18022277461317336817.Spec : Prop :=
  ∀ n, P18022277461317336817.a n = (A363917 (n + 1) : ℚ)

end A363917

/-!
# A363918: a(n) = Product_{p in Factors(n)} mult(p)*n^(mult(p) - 1), where Factors(n) is the integer factorization of n and mult(p) the multiplicity of the prime factor p.

The programs for A363918, there is no canonical definition to state claims against.
-/

/-! ## A363918.P15421657848499428918

`(n+1)^∑{e}[n+1, #-1]*∏{e}[n+1, #]`
-/

namespace A363918.P15421657848499428918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ) * ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ)

end

end A363918.P15421657848499428918

/-! ## A363918.P7513521624211010327

`∏{e}[n+1, (n+1)^#/(n+1)]*∏{e}[n+1, #]`
-/

namespace A363918.P7513521624211010327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ((n + 1) ^ Nat.factorization (f1 n) p : ℚ) / (n + 1 : ℚ)) * ((∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℚ)

end

end A363918.P7513521624211010327

/-! ## A363918.P17386306178566416337

`(n+1)^(A375136(n+1)-1)*∏{e}[n+1, #]`
-/

namespace A363918.P17386306178566416337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A375136 (n + 1) - 1 : ℤ) * ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ)

end

end A363918.P17386306178566416337

/-! ## A363918.P4823615427608314691

`A363917(n+1)/2^∑{p}[n+1, log2((n+1)/#)]`
-/

namespace A363918.P4823615427608314691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A363917 (n + 1) : ℝ) / (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 ((n + 1 : ℚ) / (p : ℚ) : ℝ))

end

end A363918.P4823615427608314691

/-! ## A363918.P1737001005120531381

`(n+1)^∑{e}[n+1, #-1]*A000005((n+1)/∏{p}[n+1, #])`
-/

namespace A363918.P1737001005120531381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ) * (A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat : ℚ)

end

end A363918.P1737001005120531381

/-! ## A363918.P105510353956032022

`A005361(n+1)*A363919(n+1)`
-/

namespace A363918.P105510353956032022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A363919 (n + 1)

end

end A363918.P105510353956032022

/-! ## A363918.P5663888043017480243

`A091050(n+1)*A363919(n+1)`
-/

namespace A363918.P5663888043017480243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 (n + 1) * A363919 (n + 1)

end

end A363918.P5663888043017480243

/-! ## A363918.P9404652561411699430

`A363917(n+1)/A205959(n+1)`
-/

namespace A363918.P9404652561411699430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363917 (n + 1) : ℚ) / (A205959 (n + 1) : ℚ)

end

end A363918.P9404652561411699430

/-! ## A363918.P10542048855943934632

`A091050(n+1)*A363923(n+1)/∏{p}[n+1, ceil(n/#)]`
-/

namespace A363918.P10542048855943934632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091050 (n + 1) * A363923 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉ : ℤ) : ℚ)

end

end A363918.P10542048855943934632

/-! ## A363918.P9211326134716182290

`A005361(n+1)/A205959(n+1)*A363923(n+1)`
-/

namespace A363918.P9211326134716182290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005361 (n + 1) : ℚ) / (A205959 (n + 1) : ℚ) * (A363923 (n + 1) : ℚ)

end

end A363918.P9211326134716182290

/-!
# A363919: a(n) = n^excess(n), where excess(n) = A046660(n).

The programs for A363919, the canonical program `A363919.P4187681008665275197` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363919 has offset 1).

The definition of A363919 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A205959, A363923, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363919.P4187681008665275197

`A363923(n+1)/A205959(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A363919

/-- `A363923(n+1)/A205959(n+1)` -/
def P4187681008665275197.Spec : Prop :=
  ∀ n, P4187681008665275197.a n = (A363919 (n + 1) : ℚ)

end A363919

/-! ## A363919.P12223679737838208750

`(n+1)^∑{e}[n+1, #-1]`
-/

namespace A363919.P12223679737838208750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℤ) - 1) : ℤ)

end

end A363919.P12223679737838208750

namespace A363919

/-- `(n+1)^∑{e}[n+1, #-1]` -/
def P12223679737838208750.Spec : Prop :=
  ∀ n, P12223679737838208750.a n = (A363919 (n + 1) : ℚ)

end A363919

/-! ## A363919.P11186309214940705477

`∏{e}[n+1, (n+1)^(#-1)]`
-/

namespace A363919.P11186309214940705477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) ^ ((Nat.factorization (f1 n) p : ℤ) - 1 : ℤ)

end

end A363919.P11186309214940705477

namespace A363919

/-- `∏{e}[n+1, (n+1)^(#-1)]` -/
def P11186309214940705477.Spec : Prop :=
  ∀ n, P11186309214940705477.a n = (A363919 (n + 1) : ℚ)

end A363919

/-! ## A363919.P14776936268720796145

`floor(∏{e}[n+1, (n+1)^#/(n+1)])`
-/

namespace A363919.P14776936268720796145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ p ∈ Nat.primeFactors (f1 n), ((n + 1) ^ Nat.factorization (f1 n) p : ℚ) / (n + 1 : ℚ)⌋

end

end A363919.P14776936268720796145

namespace A363919

/-- `floor(∏{e}[n+1, (n+1)^#/(n+1)])` -/
def P14776936268720796145.Spec : Prop :=
  ∀ n, P14776936268720796145.a n = A363919 (n + 1)

end A363919

/-! ## A363919.P16752266758919789317

`ceil(∏{e}[n+1, (n+1)^#/(n+1)])`
-/

namespace A363919.P16752266758919789317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f1 n), ((n + 1) ^ Nat.factorization (f1 n) p : ℚ) / (n + 1 : ℚ)⌉

end

end A363919.P16752266758919789317

namespace A363919

/-- `ceil(∏{e}[n+1, (n+1)^#/(n+1)])` -/
def P16752266758919789317.Spec : Prop :=
  ∀ n, P16752266758919789317.a n = A363919 (n + 1)

end A363919

/-! ## A363919.P9721212510348941037

`round(∏{e}[n+1, (n+1)^#/(n+1)])`
-/

namespace A363919.P9721212510348941037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), ((n + 1) ^ Nat.factorization (f1 n) p : ℚ) / (n + 1 : ℚ))

end

end A363919.P9721212510348941037

namespace A363919

/-- `round(∏{e}[n+1, (n+1)^#/(n+1)])` -/
def P9721212510348941037.Spec : Prop :=
  ∀ n, P9721212510348941037.a n = A363919 (n + 1)

end A363919

/-! ## A363919.P12024620608860416355

`(n+1)^A046660(n+1)`
-/

namespace A363919.P12024620608860416355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A046660 (n + 1) : ℤ)

end

end A363919.P12024620608860416355

namespace A363919

/-- `(n+1)^A046660(n+1)` -/
def P12024620608860416355.Spec : Prop :=
  ∀ n, P12024620608860416355.a n = (A363919 (n + 1) : ℚ)

end A363919

/-! ## A363919.P13134613409241714466

`(n+1)^(A375136(n+1)-1)`
-/

namespace A363919.P13134613409241714466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A375136 (n + 1) - 1 : ℤ)

end

end A363919.P13134613409241714466

namespace A363919

/-- `(n+1)^(A375136(n+1)-1)` -/
def P13134613409241714466.Spec : Prop :=
  ∀ n, P13134613409241714466.a n = (A363919 (n + 1) : ℚ)

end A363919

/-! ## A363919.P8006144458835107475

`A176029(n+1)/A062509(n+1)`
-/

namespace A363919.P8006144458835107475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176029 (n + 1) : ℚ) / (A062509 (n + 1) : ℚ)

end

end A363919.P8006144458835107475

namespace A363919

/-- `A176029(n+1)/A062509(n+1)` -/
def P8006144458835107475.Spec : Prop :=
  ∀ n, P8006144458835107475.a n = (A363919 (n + 1) : ℚ)

end A363919

/-! ## A363919.P3751968287233659366

`A072195(n+1)/A304404(n+1)`
-/

namespace A363919.P3751968287233659366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072195 (n + 1) : ℚ) / (A304404 (n + 1) : ℚ)

end

end A363919.P3751968287233659366

namespace A363919

/-- `A072195(n+1)/A304404(n+1)` -/
def P3751968287233659366.Spec : Prop :=
  ∀ n, P3751968287233659366.a n = (A363919 (n + 1) : ℚ)

end A363919

/-! ## A363919.P15746316158343567139

`A363917(n+1)/(A005361(n+1)*A205959(n+1))`
-/

namespace A363919.P15746316158343567139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363917 (n + 1) : ℚ) / (A005361 (n + 1) * A205959 (n + 1) : ℚ)

end

end A363919.P15746316158343567139

namespace A363919

/-- `A363917(n+1)/(A005361(n+1)*A205959(n+1))` -/
def P15746316158343567139.Spec : Prop :=
  ∀ n, P15746316158343567139.a n = (A363919 (n + 1) : ℚ)

end A363919

/-!
# A363920: a(n) = n^(tpf(n) * dpf(n)), where tpf(n) is the total number of prime factors of n if n >= 2 and otherwise = 0; dpf(n) is the number of distinct prime factors of n if n >= 2 and otherwise = 0.

The programs for A363920, there is no canonical definition to state claims against.
-/

/-! ## A363920.P60789325870823353

`n^A113901(A028310(n))`
-/

namespace A363920.P60789325870823353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A113901 (A028310 n).toNat : ℤ)

end

end A363920.P60789325870823353

/-! ## A363920.P4598076181806909060

`n^A113901(A065033(2*n))`
-/

namespace A363920.P4598076181806909060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A113901 (A065033 (2 * n)).toNat : ℤ)

end

end A363920.P4598076181806909060

/-! ## A363920.P8956713267488326129

`n^A089311(A325534(2*n+1))`
-/

namespace A363920.P8956713267488326129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A089311 (A325534 (2 * n + 1)).toNat : ℤ)

end

end A363920.P8956713267488326129

/-! ## A363920.P15447213153529354959

`A386469(n^A003313(n+1))`
-/

namespace A363920.P15447213153529354959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386469 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A003313 (n + 1) : ℤ))).toNat

end

end A363920.P15447213153529354959

/-! ## A363920.P7130710853074667148

`A114800(n)^A349271(A289506(2*(n+1)))`
-/

namespace A363920.P7130710853074667148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114800 n : ℚ) ^ (A349271 (A289506 (2 * (n + 1))).toNat : ℤ)

end

end A363920.P7130710853074667148

/-!
# A363921: A363920 evaluated over the nonprime numbers.

The programs for A363921, there is no canonical definition to state claims against.
-/

/-! ## A363921.P8512258375181409239

`A363920(comp[A051697(n)])`
-/

namespace A363921.P8512258375181409239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051697 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363920 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A363921.P8512258375181409239

/-! ## A363921.P2005667158670910851

`A363920(A141468(n+1))`
-/

namespace A363921.P2005667158670910851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363920 (A141468 (n + 1)).toNat

end

end A363921.P2005667158670910851

/-! ## A363921.P2551463978154292730

`A363920(comp[A000040(n+1)])`
-/

namespace A363921.P2551463978154292730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363920 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A363921.P2551463978154292730

/-! ## A363921.P7438657898706500464

`A363920(comp[A049545(n+1)])`
-/

namespace A363921.P7438657898706500464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363920 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A363921.P7438657898706500464

/-! ## A363921.P5064654334774258202

`A363920(comp[A054892(n+1)])`
-/

namespace A363921.P5064654334774258202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054892 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363920 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A363921.P5064654334774258202

/-!
# A363923: a(n) = n^npf(n) / rad(n), where npf(n) is the number of prime factors with multiplicity of n.

The programs for A363923, the canonical program `A363923.P10933687034710028231` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363923 has offset 1).

The definition of A363923 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363923.P6244618574680490596

`(n+1)/∏{p}[n+1, #]*(n+1)^(∑{e}[n+1, #]-1)`
-/

namespace A363923.P6244618574680490596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (n + 1 : ℚ) ^ (((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ) - 1 : ℤ)

end

end A363923.P6244618574680490596

namespace A363923

/-- `(n+1)/∏{p}[n+1, #]*(n+1)^(∑{e}[n+1, #]-1)` -/
def P6244618574680490596.Spec : Prop :=
  ∀ n, P6244618574680490596.a n = (A363923 (n + 1) : ℚ)

end A363923

/-! ## A363923.P15620245896202667343

`(n+1)^A001222(n+1)/∏{p}[n+1, #]`
-/

namespace A363923.P15620245896202667343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A001222 (n + 1) : ℤ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)

end

end A363923.P15620245896202667343

namespace A363923

/-- `(n+1)^A001222(n+1)/∏{p}[n+1, #]` -/
def P15620245896202667343.Spec : Prop :=
  ∀ n, P15620245896202667343.a n = (A363923 (n + 1) : ℚ)

end A363923

/-! ## A363923.P10933687034710028231

`A003557(n+1)*A072195(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A363923

/-- `A003557(n+1)*A072195(n+1)` -/
def P10933687034710028231.Spec : Prop :=
  ∀ n, P10933687034710028231.a n = A363923 (n + 1)

theorem P10933687034710028231.correct : P10933687034710028231.Spec := by
  intro n
  simp only [A363923, Nat.add_sub_cancel]

end A363923

/-! ## A363923.P3909030843428421360

`A205959(n+1)*A363919(n+1)`
-/

namespace A363923.P3909030843428421360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205959 (n + 1) * A363919 (n + 1)

end

end A363923.P3909030843428421360

namespace A363923

/-- `A205959(n+1)*A363919(n+1)` -/
def P3909030843428421360.Spec : Prop :=
  ∀ n, P3909030843428421360.a n = A363923 (n + 1)

end A363923

/-! ## A363923.P4304265945110960442

`A176029(n+1)/A007947(n+1)`
-/

namespace A363923.P4304265945110960442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176029 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A363923.P4304265945110960442

namespace A363923

/-- `A176029(n+1)/A007947(n+1)` -/
def P4304265945110960442.Spec : Prop :=
  ∀ n, P4304265945110960442.a n = (A363923 (n + 1) : ℚ)

end A363923

/-! ## A363923.P9654116712673007806

`A363917(n+1)/A005361(n+1)`
-/

namespace A363923.P9654116712673007806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363917 (n + 1) : ℚ) / (A005361 (n + 1) : ℚ)

end

end A363923.P9654116712673007806

namespace A363923

/-- `A363917(n+1)/A005361(n+1)` -/
def P9654116712673007806.Spec : Prop :=
  ∀ n, P9654116712673007806.a n = (A363923 (n + 1) : ℚ)

end A363923

/-! ## A363923.P17073710524650459744

`A176029(n+1)/A015052(A015052(n+1))`
-/

namespace A363923.P17073710524650459744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176029 (n + 1) : ℚ) / (A015052 (A015052 (n + 1)).toNat : ℚ)

end

end A363923.P17073710524650459744

namespace A363923

/-- `A176029(n+1)/A015052(A015052(n+1))` -/
def P17073710524650459744.Spec : Prop :=
  ∀ n, P17073710524650459744.a n = (A363923 (n + 1) : ℚ)

end A363923

/-! ## A363923.P17392853090715885219

`A176029(n+1)/A015053(A015053(n+1))`
-/

namespace A363923.P17392853090715885219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176029 (n + 1) : ℚ) / (A015053 (A015053 (n + 1)).toNat : ℚ)

end

end A363923.P17392853090715885219

namespace A363923

/-- `A176029(n+1)/A015053(A015053(n+1))` -/
def P17392853090715885219.Spec : Prop :=
  ∀ n, P17392853090715885219.a n = (A363923 (n + 1) : ℚ)

end A363923

/-! ## A363923.P1923735769885737494

`A205959(n+1)/A005361(n+1)*A363918(n+1)`
-/

namespace A363923.P1923735769885737494
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A205959 (n + 1) : ℚ) / (A005361 (n + 1) : ℚ) * (A363918 (n + 1) : ℚ)

end

end A363923.P1923735769885737494

namespace A363923

/-- `A205959(n+1)/A005361(n+1)*A363918(n+1)` -/
def P1923735769885737494.Spec : Prop :=
  ∀ n, P1923735769885737494.a n = (A363923 (n + 1) : ℚ)

end A363923

/-! ## A363923.P5106889950009168175

`A363917(n+1)/A363918(n+1)*A363919(n+1)`
-/

namespace A363923.P5106889950009168175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A363917 (n + 1) : ℚ) / (A363918 (n + 1) : ℚ) * (A363919 (n + 1) : ℚ)

end

end A363923.P5106889950009168175

namespace A363923

/-- `A363917(n+1)/A363918(n+1)*A363919(n+1)` -/
def P5106889950009168175.Spec : Prop :=
  ∀ n, P5106889950009168175.a n = (A363923 (n + 1) : ℚ)

end A363923

/-!
# A363924: a(n) = number of k <= m such that rad(k) | m, where m = A005117(n) and rad(n) = A007947(n).

The programs for A363924, there is no canonical definition to state claims against.
-/

/-! ## A363924.P3082971090267288017

`A010846(comp[A105570(n)])`
-/

namespace A363924.P3082971090267288017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A363924.P3082971090267288017

/-! ## A363924.P5288974714272760968

`A010846(A005117(n+1))`
-/

namespace A363924.P5288974714272760968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (A005117 (n + 1)).toNat

end

end A363924.P5288974714272760968

/-! ## A363924.P9651403262845368075

`A010846(record[A007947(n+1)])`
-/

namespace A363924.P9651403262845368075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A363924.P9651403262845368075

/-! ## A363924.P585371149386875971

`A010846(record[A325314(n+1)])`
-/

namespace A363924.P585371149386875971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325314 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A363924.P585371149386875971

/-! ## A363924.P17087042069535126943

`A010846(record[A304328(n+1)])`
-/

namespace A363924.P17087042069535126943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010846 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A363924.P17087042069535126943

/-! ## A363924.P11693879700857969730

`A008479(A062503(n+1))`
-/

namespace A363924.P11693879700857969730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (A062503 (n + 1)).toNat

end

end A363924.P11693879700857969730

/-! ## A363924.P6649263059390682345

`A008479(A005117(n+1)²)`
-/

namespace A363924.P6649263059390682345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (A005117 (n + 1) ^ 2).toNat

end

end A363924.P6649263059390682345

/-! ## A363924.P18376796232864138716

`A008479(A005117(n+1)^2)`
-/

namespace A363924.P18376796232864138716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (A005117 (n + 1) ^ 2).toNat

end

end A363924.P18376796232864138716

/-! ## A363924.P9709140493232575088

`A008479(record[A055231(n+1)²])`
-/

namespace A363924.P9709140493232575088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A363924.P9709140493232575088

/-! ## A363924.P3989236678409284968

`A008479(A005117(n+1)*A005117(n+1))`
-/

namespace A363924.P3989236678409284968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008479 (A005117 (n + 1) * A005117 (n + 1)).toNat

end

end A363924.P3989236678409284968

/-!
# A363925: Expansion of Sum_{k>0} x^k / (1 - x^(5*k))^2.

The programs for A363925, there is no canonical definition to state claims against.
-/

/-! ## A363925.P6608511874783323762

`A035250(A284097(n+1)%A316857(2*n+5))`
-/

namespace A363925.P6608511874783323762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035250 (Int.tmod (A284097 (n + 1)) (A316857 (2 * n + 5))).toNat

end

end A363925.P6608511874783323762

/-! ## A363925.P16673452193510074825

`A172471(A284097(n+1))%A230452(2*(n+2))`
-/

namespace A363925.P16673452193510074825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172471 (A284097 (n + 1)).toNat) (A230452 (2 * (n + 2)))

end

end A363925.P16673452193510074825

/-! ## A363925.P17014604704888497541

`A003056(A284097(n+1)%A118042(n+4))`
-/

namespace A363925.P17014604704888497541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Int.tmod (A284097 (n + 1)) (A118042 (n + 4))).toNat

end

end A363925.P17014604704888497541

/-! ## A363925.P11215218874911086506

`A035250(A284097(n+1))%A324376(n+4)`
-/

namespace A363925.P11215218874911086506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035250 (A284097 (n + 1)).toNat) (A324376 (n + 4))

end

end A363925.P11215218874911086506

/-! ## A363925.P6762195632935108840

`A003056(A284097(n+1))%A004137(n+5)`
-/

namespace A363925.P6762195632935108840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003056 (A284097 (n + 1)).toNat) (A004137 (n + 5))

end

end A363925.P6762195632935108840

/-!
# A363926: Expansion of Sum_{k>0} x^(2*k) / (1 - x^(5*k))^2.

The programs for A363926, there is no canonical definition to state claims against.
-/

/-! ## A363926.P10404352231503775630

`and(A132739(3*n+4), A299537(A249252(2*n)))`
-/

namespace A363926.P10404352231503775630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A132739 (3 * n + 4)) (A299537 (A249252 (2 * n)).toNat)

end

end A363926.P10404352231503775630

/-! ## A363926.P7931150938326487943

`and(A076876(A121585(n)), A291759(n+1))`
-/

namespace A363926.P7931150938326487943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A076876 (A121585 n).toNat) (A291759 (n + 1))

end

end A363926.P7931150938326487943

/-! ## A363926.P14356989566484668516

`A342385(A284280(n+1)%A186337(n+1))`
-/

namespace A363926.P14356989566484668516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342385 (Int.tmod (A284280 (n + 1)) (A186337 (n + 1))).toNat

end

end A363926.P14356989566484668516

/-! ## A363926.P10124921238679697067

`and(A007947(n+2), A265332(A035342(n+1)))`
-/

namespace A363926.P10124921238679697067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007947 (n + 2)) (A265332 (A035342 (n + 1)).toNat)

end

end A363926.P10124921238679697067

/-! ## A363926.P1776616896170007312

`and(A291759(n+1), A389075(A268448(2*n+5)))`
-/

namespace A363926.P1776616896170007312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A291759 (n + 1)) (A389075 (A268448 (2 * n + 5)).toNat)

end

end A363926.P1776616896170007312

/-!
# A363928: Expansion of Sum_{k>0} x^(3*k) / (1 - x^(5*k))^2.

The programs for A363928, there is no canonical definition to state claims against.
-/

/-! ## A363928.P6378778384279692487

`A005811(A284281(n+1))%A130139(n)`
-/

namespace A363928.P6378778384279692487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005811 (A284281 (n + 1)).toNat) (A130139 n)

end

end A363928.P6378778384279692487

/-! ## A363928.P9209577401551725424

`A005811(A284281(n+1)%A338053(3*(n+1)))`
-/

namespace A363928.P9209577401551725424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (Int.tmod (A284281 (n + 1)) (A338053 (3 * (n + 1)))).toNat

end

end A363928.P9209577401551725424

/-! ## A363928.P7985511800482645823

`A005811(A284281(n+1)%A130142(n+1))`
-/

namespace A363928.P7985511800482645823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (Int.tmod (A284281 (n + 1)) (A130142 (n + 1))).toNat

end

end A363928.P7985511800482645823

/-! ## A363928.P15213442494523391039

`A001878(2^A284281(n+1))`
-/

namespace A363928.P15213442494523391039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001878 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A284281 (n + 1) : ℤ))).toNat

end

end A363928.P15213442494523391039

/-! ## A363928.P13597911616193219476

`A001899(2^A284281(n+1))`
-/

namespace A363928.P13597911616193219476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001899 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A284281 (n + 1) : ℤ))).toNat

end

end A363928.P13597911616193219476

/-!
# A363929: Expansion of Sum_{k>0} x^(4*k) / (1 - x^(5*k))^2.

The programs for A363929, there is no canonical definition to state claims against.
-/

/-! ## A363929.P10704675042105144693

`A174204(A174204(n)*A284103(n+1))`
-/

namespace A363929.P10704675042105144693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174204 (A174204 n * A284103 (n + 1)).toNat

end

end A363929.P10704675042105144693

/-! ## A363929.P16749856163913071053

`A339186(A284103(n+1)%A102145(n+1))`
-/

namespace A363929.P16749856163913071053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339186 (Int.tmod (A284103 (n + 1)) (A102145 (n + 1))).toNat

end

end A363929.P16749856163913071053

/-! ## A363929.P3013126805737596252

`A176725(lcm(6, A284103(n+1)))`
-/

namespace A363929.P3013126805737596252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176725 (Int.lcm 6 (A284103 (n + 1)))

end

end A363929.P3013126805737596252

/-! ## A363929.P6997324570036636218

`∏{p}[n+1, C(#%n, #)]*A320001(A337414(n+1))`
-/

namespace A363929.P6997324570036636218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.choose (p % n) p : ℕ) : ℤ) * A320001 (A337414 (n + 1)).toNat

end

end A363929.P6997324570036636218

/-! ## A363929.P13826504199454701419

`A000120(A033260(n)*A284103(n+1))`
-/

namespace A363929.P13826504199454701419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A033260 n * A284103 (n + 1)).toNat

end

end A363929.P13826504199454701419

/-!
# A363930: Irregular table T(n, k), n >= 0, k = 1..A363710(n), read by rows; the n-th row lists the nonnegative numbers m <= n such that A003188(m) AND A003188(n-m) = 0 (where AND denotes the bitwise AND operator).

The programs for A363930, there is no canonical definition to state claims against.
-/

/-! ## A363930.P4857621494619106534

`A002262(eq[0, A341840(n)])`
-/

namespace A363930.P4857621494619106534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A363930.P4857621494619106534

/-! ## A363930.P14725727781042920987

`A002262(lt[A341840(n), 1])`
-/

namespace A363930.P14725727781042920987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341840 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A363930.P14725727781042920987

/-! ## A363930.P10799503886717501104

`A002262(eq[A003987(n), A341839(n)])`
-/

namespace A363930.P10799503886717501104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A363930.P10799503886717501104

/-! ## A363930.P15642207797630104117

`A002262(eq[A280172(n+1)-1, A341839(n)])`
-/

namespace A363930.P15642207797630104117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280172 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A363930.P15642207797630104117

/-!
# A363932: Square array of distinct positive integers A(n, k), n, k > 0, read and filled the greedy way by antidiagonals downwards such that the concatenations of the terms of two distinct rows are always equal.

The programs for A363932, there is no canonical definition to state claims against.
-/

/-! ## A363932.P6362294540535656789

`A005320(A075677(2*n+5))%A227535(3*n+1)`
-/

namespace A363932.P6362294540535656789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005320 (A075677 (2 * n + 5)).toNat) (A227535 (3 * n + 1))

end

end A363932.P6362294540535656789

/-!
# A363933: Number of polynomials P(x,y) with nonnegative integer coefficients such that P(x,y) == 1 (mod x+y-1) and P(1,1) = n.

The programs for A363933, there is no canonical definition to state claims against.
-/

/-! ## A363933.P10873323805661772421

`A156562(A120010(n+2))`
-/

namespace A363933.P10873323805661772421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A120010 (n + 2)).toNat

end

end A363933.P10873323805661772421

/-! ## A363933.P11500756196521893127

`A085089(A006125(n))`
-/

namespace A363933.P11500756196521893127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A006125 n).toNat

end

end A363933.P11500756196521893127

/-! ## A363933.P4989621898595717636

`A023190(A148858(n))`
-/

namespace A363933.P4989621898595717636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023190 (A148858 n).toNat

end

end A363933.P4989621898595717636

/-!
# A363936: Number of Frobenius partitions of 2n wherein the number of columns plus the weight on the top row is strictly less than the weight on the bottom row.

The programs for A363936, there is no canonical definition to state claims against.
-/

/-! ## A363936.P2133523298681676308

`A351008(3*n+1)+A005094(A340824(n+1))`
-/

namespace A363936.P2133523298681676308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351008 (3 * n + 1) + A005094 (A340824 (n + 1)).toNat

end

end A363936.P2133523298681676308

/-! ## A363936.P6940611176135674074

`A240574(2*(n+1))-A179827(A347988(n+1))`
-/

namespace A363936.P6940611176135674074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240574 (2 * (n + 1)) - A179827 (A347988 (n + 1)).toNat

end

end A363936.P6940611176135674074

/-!
# A363941: Low median in the multiset of prime indices of n.

The programs for A363941, there is no canonical definition to state claims against.
-/

/-! ## A363941.P4279411164175277480

`A000720(A079879(n+1))`
-/

namespace A363941.P4279411164175277480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A079879 (n + 1)).toNat

end

end A363941.P4279411164175277480

/-! ## A363941.P9057105224044272119

`A055396(A079881(n+1))`
-/

namespace A363941.P9057105224044272119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A079881 (n + 1)).toNat

end

end A363941.P9057105224044272119

/-! ## A363941.P3023633465913912662

`A061395(A347043(n+1))`
-/

namespace A363941.P3023633465913912662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A347043 (n + 1)).toNat

end

end A363941.P3023633465913912662

/-! ## A363941.P7907368254764986645

`A055396(A079879((n+1)²))`
-/

namespace A363941.P7907368254764986645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A079879 ((n + 1) ^ 2)).toNat

end

end A363941.P7907368254764986645

/-! ## A363941.P2249802493247181004

`A061395(A079879(n+1)²)`
-/

namespace A363941.P2249802493247181004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A079879 (n + 1) ^ 2).toNat

end

end A363941.P2249802493247181004

/-! ## A363941.P18094381286348954205

`A297167(A079879(n+1)²)`
-/

namespace A363941.P18094381286348954205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297167 (A079879 (n + 1) ^ 2).toNat

end

end A363941.P18094381286348954205

/-! ## A363941.P4808901855323784686

`A316524(4*A079879(n+1))`
-/

namespace A363941.P4808901855323784686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (4 * A079879 (n + 1)).toNat

end

end A363941.P4808901855323784686

/-! ## A363941.P11791982678300009881

`A061395(A079879(n+1)^2)`
-/

namespace A363941.P11791982678300009881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A079879 (n + 1) ^ 2).toNat

end

end A363941.P11791982678300009881

/-! ## A363941.P14572948105387005715

`∑{d}[A079879(n+1), A056239(#)]`
-/

namespace A363941.P14572948105387005715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A363941.P14572948105387005715

/-!
# A363942: High median in the multiset of prime indices of n.

The programs for A363942, there is no canonical definition to state claims against.
-/

/-! ## A363942.P8231474213926032976

`A055396(A347044(n+1))`
-/

namespace A363942.P8231474213926032976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A347044 (n + 1)).toNat

end

end A363942.P8231474213926032976

/-! ## A363942.P12952567474368655207

`A055396(A361201(2*(n+1)))`
-/

namespace A363942.P12952567474368655207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A361201 (2 * (n + 1))).toNat

end

end A363942.P12952567474368655207

/-! ## A363942.P13820045914132995519

`A056239(A020639(A347046((n+1)²)))`
-/

namespace A363942.P13820045914132995519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A020639 (A347046 ((n + 1) ^ 2)).toNat).toNat

end

end A363942.P13820045914132995519

/-! ## A363942.P6670477264808515518

`∑{d}[A079879(A075384(n+1)), A056239(#)]`
-/

namespace A363942.P6670477264808515518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079879 (A075384 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056239 d

end

end A363942.P6670477264808515518

/-! ## A363942.P6535150875648086618

`A360679(n+1)-A360679(A054576(n+1))`
-/

namespace A363942.P6535150875648086618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360679 (n + 1) - A360679 (A054576 (n + 1)).toNat

end

end A363942.P6535150875648086618

/-! ## A363942.P14349475792718816293

`A363941(lcm(A032742(n+1), A053585(n+1)))`
-/

namespace A363942.P14349475792718816293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363941 (Int.lcm (A032742 (n + 1)) (A053585 (n + 1)))

end

end A363942.P14349475792718816293

/-! ## A363942.P9442769543503080968

`A056239(A360459(n+1)-A020639(n+1))`
-/

namespace A363942.P9442769543503080968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A360459 (n + 1) - A020639 (n + 1)).toNat

end

end A363942.P9442769543503080968

/-!
# A363943: Mean of the multiset of prime indices of n, rounded down.

The programs for A363943, there is no canonical definition to state claims against.
-/

/-! ## A363943.P11155803819277280365

`floor(A056239(n+1)/∑{e}[abs(1-n)+2, #])`
-/

namespace A363943.P11155803819277280365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056239 (n + 1) : ℚ) / ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ)⌋

end

end A363943.P11155803819277280365

/-! ## A363943.P280761285327524308

`floor(A056239(n+1)/A086436(n+1))`
-/

namespace A363943.P280761285327524308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056239 (n + 1) : ℚ) / (A086436 (n + 1) : ℚ)⌋

end

end A363943.P280761285327524308

/-! ## A363943.P17350210584015540025

`floor((A339823(n+1)+A000523(n+1))/A086436(n+1))`
-/

namespace A363943.P17350210584015540025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A339823 (n + 1) + A000523 (n + 1) : ℚ) / (A086436 (n + 1) : ℚ)⌋

end

end A363943.P17350210584015540025

/-! ## A363943.P9700887892528856741

`floor(A330417(n+1)/A321747(n+1))`
-/

namespace A363943.P9700887892528856741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A330417 (n + 1) : ℚ) / (A321747 (n + 1) : ℚ)⌋

end

end A363943.P9700887892528856741

/-! ## A363943.P12573053955449454274

`floor((A360457(n+1)-Δ[A340102(3*n+2)])/2)`
-/

namespace A363943.P12573053955449454274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340102 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A360457 (n + 1) - (f1 (n + 1) - f1 n) : ℚ) / 2⌋

end

end A363943.P12573053955449454274

/-!
# A363944: Mean of the multiset of prime indices of n, rounded up.

The programs for A363944, there is no canonical definition to state claims against.
-/

/-! ## A363944.P3463767912965079119

`ceil(A056239(n+1)/∑{e}[abs(1-n)+2, #])`
-/

namespace A363944.P3463767912965079119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056239 (n + 1) : ℚ) / ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℚ)⌉

end

end A363944.P3463767912965079119

/-! ## A363944.P9430138708126425948

`ceil(A056239(n+1)/A086436(n+1))`
-/

namespace A363944.P9430138708126425948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056239 (n + 1) : ℚ) / (A086436 (n + 1) : ℚ)⌉

end

end A363944.P9430138708126425948

/-! ## A363944.P14208351149199639333

`A110654(A360457(n+1))%A131910(n+1)`
-/

namespace A363944.P14208351149199639333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110654 (A360457 (n + 1)).toNat) (A131910 (n + 1))

end

end A363944.P14208351149199639333

/-! ## A363944.P9739591303183714967

`A065770(A195637(n+1))%A051991(3*(n+1))`
-/

namespace A363944.P9739591303183714967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065770 (A195637 (n + 1)).toNat) (A051991 (3 * (n + 1)))

end

end A363944.P9739591303183714967

/-! ## A363944.P254192708470424476

`A061395(n+1)-A369054(A026790(n))`
-/

namespace A363944.P254192708470424476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1) - A369054 (A026790 n).toNat

end

end A363944.P254192708470424476

/-!
# A363945: Triangle read by rows where T(n,k) is the number of integer partitions of n with low mean k.

The programs for A363945, there is no canonical definition to state claims against.
-/

/-! ## A363945.P18383565800662252215

`A245574(A372722(n))`
-/

namespace A363945.P18383565800662252215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245574 (A372722 n).toNat

end

end A363945.P18383565800662252215

/-! ## A363945.P13499815024847853627

`A167439(∑{d}[A238123(n), #])`
-/

namespace A363945.P13499815024847853627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A363945.P13499815024847853627

/-! ## A363945.P1678986408377389818

`A122815(A244530(n+1)+1)-2`
-/

namespace A363945.P1678986408377389818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122815 (A244530 (n + 1) + 1).toNat - 2

end

end A363945.P1678986408377389818

/-! ## A363945.P442144366655093218

`A057427(A228617(n))*A101566(n)`
-/

namespace A363945.P442144366655093218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A228617 n).toNat * A101566 n

end

end A363945.P442144366655093218

/-! ## A363945.P17925613685781058815

`A124765(A140996(n)*A277031(n))`
-/

namespace A363945.P17925613685781058815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A140996 n * A277031 n).toNat

end

end A363945.P17925613685781058815

/-!
# A363946: Triangle read by rows where T(n,k) is the number of integer partitions of n with high mean k.

The programs for A363946, there is no canonical definition to state claims against.
-/

/-! ## A363946.P8589026141994772791

`A194591(A143395(n)+A058319(2*n+3))`
-/

namespace A363946.P8589026141994772791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194591 (A143395 n + A058319 (2 * n + 3)).toNat

end

end A363946.P8589026141994772791

/-! ## A363946.P13865265127746677247

`or(A030302(A000043(n+1)), A325592(n))`
-/

namespace A363946.P13865265127746677247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030302 (A000043 (n + 1)).toNat) (A325592 n)

end

end A363946.P13865265127746677247

/-! ## A363946.P6691287647631016006

`A325592(n)+A188009(A120458(n))`
-/

namespace A363946.P6691287647631016006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325592 n + A188009 (A120458 n).toNat

end

end A363946.P6691287647631016006

/-! ## A363946.P15327731826828872986

`A062756(A048993(n)^3)`
-/

namespace A363946.P15327731826828872986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A048993 n ^ 3).toNat

end

end A363946.P15327731826828872986

/-! ## A363946.P4221920099564313980

`and(A000040(A154120(n+4)), A048993(n))`
-/

namespace A363946.P4221920099564313980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000040 (A154120 (n + 4)).toNat) (A048993 n)

end

end A363946.P4221920099564313980

/-!
# A363947: Number of integer partitions of n with mean < 3/2.

The programs for A363947, there is no canonical definition to state claims against.
-/

/-! ## A363947.P2138664393363392726

`∑[A035377(abs(1-n))]`
-/

namespace A363947.P2138664393363392726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363947.P2138664393363392726

/-! ## A363947.P3845251619742610671

`A386638(floor((2*n+1)/3)+1)`
-/

namespace A363947.P3845251619742610671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386638 (⌊(2 * n + 1 : ℚ) / 3⌋ + 1).toNat

end

end A363947.P3845251619742610671

/-! ## A363947.P3006943331907528137

`∑[A035363(Δ[floor((n-2)/3)²]+1)]`
-/

namespace A363947.P3006943331907528137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℤ) - 2 : ℚ) / 3⌋ ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363947.P3006943331907528137

/-! ## A363947.P13994136628882024623

`∑[A349149(A005131(n))]`
-/

namespace A363947.P13994136628882024623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349149 (A005131 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363947.P13994136628882024623

/-! ## A363947.P3414263356217541717

`∑[A035377(n)]-A035377(n)`
-/

namespace A363947.P3414263356217541717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035377 n

end

end A363947.P3414263356217541717

/-! ## A363947.P4907920775715458982

`∑[A114099(A008585(abs(1-n)))]`
-/

namespace A363947.P4907920775715458982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (A008585 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363947.P4907920775715458982

/-!
# A363948: Numbers whose prime indices have mean < 3/2.

The programs for A363948, there is no canonical definition to state claims against.
-/

/-! ## A363948.P12212662042493864381

`lt[A000695(A342634(n)), A130472(3*n)]`
-/

namespace A363948.P12212662042493864381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 (A342634 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130472 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363948.P12212662042493864381

/-! ## A363948.P8596927632469931525

`A062011(A359963(n+1))`
-/

namespace A363948.P8596927632469931525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062011 (A359963 (n + 1)).toNat

end

end A363948.P8596927632469931525

/-! ## A363948.P13043270207401912673

`record[A372791(A087786(n+1))]`
-/

namespace A363948.P13043270207401912673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372791 (A087786 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363948.P13043270207401912673

/-! ## A363948.P15334995125818343007

`record[2*A000005(A102631(n+1))]`
-/

namespace A363948.P15334995125818343007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 (A102631 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363948.P15334995125818343007

/-! ## A363948.P18203416532172565933

`∩[A227730(n+1), A362618(n+1)]`
-/

namespace A363948.P18203416532172565933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363948.P18203416532172565933

/-!
# A363949: Numbers whose prime indices have mean 1 when rounded down.

The programs for A363949, there is no canonical definition to state claims against.
-/

/-! ## A363949.P1298152511689190916

`2*A344296(n+1)`
-/

namespace A363949.P1298152511689190916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A344296 (n + 1)

end

end A363949.P1298152511689190916

/-! ## A363949.P8868591574463889654

`A004277(A344296(n+1))`
-/

namespace A363949.P8868591574463889654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A344296 (n + 1)).toNat

end

end A363949.P8868591574463889654

/-! ## A363949.P16862724980450933362

`A004275(A344296(n+1)+1)`
-/

namespace A363949.P16862724980450933362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A344296 (n + 1) + 1).toNat

end

end A363949.P16862724980450933362

/-! ## A363949.P2444570701411868331

`A005843(A344296(n+1)+1)-2`
-/

namespace A363949.P2444570701411868331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A344296 (n + 1) + 1).toNat - 2

end

end A363949.P2444570701411868331

/-! ## A363949.P3094037775832936208

`2*∪[A363950(n+1), A000079(n)]`
-/

namespace A363949.P3094037775832936208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363949.P3094037775832936208

/-! ## A363949.P9226221579905260915

`2*∪[A363950(n+1), A008861(n)]`
-/

namespace A363949.P9226221579905260915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008861 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363949.P9226221579905260915

/-! ## A363949.P13248173664942584546

`2*∪[A363950(n+1), A008862(n)]`
-/

namespace A363949.P13248173664942584546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008862 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363949.P13248173664942584546

/-! ## A363949.P2347576513607654048

`2*∪[A363950(n+1), A008863(n)]`
-/

namespace A363949.P2347576513607654048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008863 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363949.P2347576513607654048

/-! ## A363949.P10244948218188324005

`2*∪[A363950(n+1), A051535(n)]`
-/

namespace A363949.P10244948218188324005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051535 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363949.P10244948218188324005

/-! ## A363949.P1489044993691151704

`2*∪[A363950(n+1), A133464(n)]`
-/

namespace A363949.P1489044993691151704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133464 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363949.P1489044993691151704

/-!
# A363950: Numbers whose prime indices have rounded-up mean 2.

The programs for A363950, there is no canonical definition to state claims against.
-/

/-! ## A363950.P14759115038975138748

`filter[A344296(n+1), A347523(#)]`
-/

namespace A363950.P14759115038975138748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344296 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A363950.P14759115038975138748

/-! ## A363950.P8228090126097655752

`filter[A344296(n+2), A267579(#)]`
-/

namespace A363950.P8228090126097655752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344296 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A363950.P8228090126097655752

/-! ## A363950.P12628932922102256279

`eq[2, A363944(n+1)]+1`
-/

namespace A363950.P12628932922102256279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363944 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363950.P12628932922102256279

/-! ## A363950.P12960250778308312207

`eq[2, A363944(A028310(n))]`
-/

namespace A363950.P12960250778308312207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363944 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363950.P12960250778308312207

/-! ## A363950.P3799489305473303223

`eq[2, A363944(A233583(n+1))]`
-/

namespace A363950.P3799489305473303223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363944 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363950.P3799489305473303223

/-!
# A363952: Number of integer partitions of n with low mode k.

The programs for A363952, there is no canonical definition to state claims against.
-/

/-! ## A363952.P3489828622124813423

`A000194(A238123(n)^A347045(n+1))`
-/

namespace A363952.P3489828622124813423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway ((A238123 n : ℚ) ^ (A347045 (n + 1) : ℤ))).toNat

end

end A363952.P3489828622124813423

/-! ## A363952.P3303567370338237494

`A000194(A238123(n)%A323537(n+1))`
-/

namespace A363952.P3303567370338237494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Int.tmod (A238123 n) (A323537 (n + 1))).toNat

end

end A363952.P3303567370338237494

/-! ## A363952.P1108815868028015005

`A124765(A277031(n)²)`
-/

namespace A363952.P1108815868028015005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A277031 n ^ 2).toNat

end

end A363952.P1108815868028015005

/-! ## A363952.P3289503570555294328

`A167439(A244530(n+1))`
-/

namespace A363952.P3289503570555294328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A244530 (n + 1)).toNat

end

end A363952.P3289503570555294328

/-! ## A363952.P5880951620332635326

`A216191(4*A238341(n))`
-/

namespace A363952.P5880951620332635326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216191 (4 * A238341 n).toNat

end

end A363952.P5880951620332635326

/-!
# A363953: Number of integer partitions of n with high mode k.

The programs for A363953, there is no canonical definition to state claims against.
-/

/-! ## A363953.P8954508677787713882

`A072457(A381886(n)^A381894(n+1))`
-/

namespace A363953.P8954508677787713882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072457 (SequenceMachineLib.roundAway ((A381886 n : ℚ) ^ (A381894 (n + 1) : ℤ))).toNat

end

end A363953.P8954508677787713882

/-! ## A363953.P9021392914470647322

`gcd(A121373(A094305(2*n+3)), A373029(n))`
-/

namespace A363953.P9021392914470647322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121373 (A094305 (2 * n + 3)).toNat) (A373029 n)

end

end A363953.P9021392914470647322

/-! ## A363953.P10394765153879466642

`A373029(n)-A369034(A274174(n))`
-/

namespace A363953.P10394765153879466642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373029 n - A369034 (A274174 n).toNat

end

end A363953.P10394765153879466642

/-! ## A363953.P8966872554526500528

`A195825(n)%A016922(A090657(n))`
-/

namespace A363953.P8966872554526500528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195825 n) (A016922 (A090657 n).toNat)

end

end A363953.P8966872554526500528

/-! ## A363953.P8490216706899674872

`A373029(n)^A111184(A135814(n))`
-/

namespace A363953.P8490216706899674872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373029 n : ℚ) ^ (A111184 (A135814 n).toNat : ℤ)

end

end A363953.P8490216706899674872

/-!
# A363954: Numbers whose prime indices have low mean 2.

The programs for A363954, there is no canonical definition to state claims against.
-/

/-! ## A363954.P4129870672124027262

`eq[2, A363943(n+1)]+1`
-/

namespace A363954.P4129870672124027262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363943 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363954.P4129870672124027262

/-! ## A363954.P6903626522422780001

`eq[2, A363943(A028310(n))]`
-/

namespace A363954.P6903626522422780001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363943 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363954.P6903626522422780001

/-! ## A363954.P4913115189095276470

`A065475(eq[2, A363943(n+1)])`
-/

namespace A363954.P4913115189095276470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363943 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A363954.P4913115189095276470

/-! ## A363954.P7176935234380648798

`eq[2, A363943(A233583(n+1))]`
-/

namespace A363954.P7176935234380648798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363943 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363954.P7176935234380648798

/-! ## A363954.P64074550535147424

`A066929(n+4)%A081671(A043318(n+1))`
-/

namespace A363954.P64074550535147424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066929 (n + 4)) (A081671 (A043318 (n + 1)).toNat)

end

end A363954.P64074550535147424

/-!
# A363957: Intersection of A035046 and A226777.

The programs for A363957, there is no canonical definition to state claims against.
-/

/-! ## A363957.P9746236537933219645

`∩[A035046(n+1), A226777(n+1)]`
-/

namespace A363957.P9746236537933219645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226777 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363957.P9746236537933219645

/-!
# A363958: Expansion of (1 + x + x^3)/(1 - x^2 - 2*x^4 - 2*x^6 + x^8).

The programs for A363958, the canonical program `A363958.P5908121220050880434` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363958 has offset 0).

The definition of A363958 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363958.P5908121220050880434

`a(n-2)+2*a(n-4)+2*a(n-6)+a(n-8)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=4, a(6)=7, a(7)=10`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A363958

/-- `a(n-2)+2*a(n-4)+2*a(n-6)+a(n-8)` -/
def P5908121220050880434.Spec : Prop :=
  ∀ n, (P5908121220050880434.a n : ℤ) = A363958 n

theorem P5908121220050880434.correct : P5908121220050880434.Spec := by
  intro n
  simp only [A363958]

end A363958

/-! ## A363958.P9940315987895187390

`A056556(A148179(n))`
-/

namespace A363958.P9940315987895187390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A148179 n).toNat

end

end A363958.P9940315987895187390

namespace A363958

/-- `A056556(A148179(n))` -/
def P9940315987895187390.Spec : Prop :=
  ∀ n, P9940315987895187390.a n = A363958 n

end A363958

/-! ## A363958.P5578493400362465499

`A056556(A148180(n))`
-/

namespace A363958.P5578493400362465499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A148180 n).toNat

end

end A363958.P5578493400362465499

namespace A363958

/-- `A056556(A148180(n))` -/
def P5578493400362465499.Spec : Prop :=
  ∀ n, P5578493400362465499.a n = A363958 n

end A363958

/-! ## A363958.P4896357779449411568

`A056556(A148181(n))`
-/

namespace A363958.P4896357779449411568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A148181 n).toNat

end

end A363958.P4896357779449411568

namespace A363958

/-- `A056556(A148181(n))` -/
def P4896357779449411568.Spec : Prop :=
  ∀ n, P4896357779449411568.a n = A363958 n

end A363958

/-! ## A363958.P4647698877801415402

`A092982(A179822(n))`
-/

namespace A363958.P4647698877801415402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092982 (A179822 n).toNat

end

end A363958.P4647698877801415402

namespace A363958

/-- `A092982(A179822(n))` -/
def P4647698877801415402.Spec : Prop :=
  ∀ n, P4647698877801415402.a n = A363958 n

end A363958

/-!
# A363960: Number of quadratically embeddable graphs on n nodes.

The programs for A363960, there is no canonical definition to state claims against.
-/

/-! ## A363960.P15637233009549730876

`A001349(n+1)-A363961(n+1)`
-/

namespace A363960.P15637233009549730876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A363961 (n + 1)

end

end A363960.P15637233009549730876

/-! ## A363960.P18388969107997717333

`A201922(A000124(n))-A363961(n+1)`
-/

namespace A363960.P18388969107997717333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201922 (A000124 n).toNat - A363961 (n + 1)

end

end A363960.P18388969107997717333

/-! ## A363960.P13684703323000831031

`or(A028901(A275553(n)), A342330(n))`
-/

namespace A363960.P13684703323000831031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A028901 (A275553 n).toNat) (A342330 n)

end

end A363960.P13684703323000831031

/-!
# A363961: Number of connected non-quadratically embeddable graphs on n nodes.

The programs for A363961, there is no canonical definition to state claims against.
-/

/-! ## A363961.P8116318382057088528

`A001349(n+1)-A363960(n+1)`
-/

namespace A363961.P8116318382057088528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001349 (n + 1) - A363960 (n + 1)

end

end A363961.P8116318382057088528

/-! ## A363961.P12211116192495280661

`A219641(A058831(n))`
-/

namespace A363961.P12211116192495280661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 (A058831 n).toNat

end

end A363961.P12211116192495280661

/-! ## A363961.P14190125515969753972

`∑[A105516(A367869(n))]`
-/

namespace A363961.P14190125515969753972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105516 (A367869 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363961.P14190125515969753972

/-!
# A363964: Number of unordered pairs of disjoint self-avoiding paths with nodes that cover all vertices of a convex labeled n-gon; one-node paths are allowed.

The programs for A363964, there is no canonical definition to state claims against.
-/

/-! ## A363964.P17526023905165831593

`A390909(∑[n+1]+2)`
-/

namespace A363964.P17526023905165831593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390909 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A363964.P17526023905165831593

/-! ## A363964.P5659646619848047674

`A320312(A094306(n+3))`
-/

namespace A363964.P5659646619848047674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320312 (A094306 (n + 3)).toNat

end

end A363964.P5659646619848047674

/-!
# A363965: Binary palindromic numbers whose digit sum and aliquot sum are also binary palindromic.

The programs for A363965, there is no canonical definition to state claims against.
-/

/-! ## A363965.P8115763261449832168

`A169942(A075019(n+1)+A011782(n))`
-/

namespace A363965.P8115763261449832168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169942 (A075019 (n + 1) + A011782 n).toNat

end

end A363965.P8115763261449832168

/-! ## A363965.P9847744662690600077

`A145799(A143673(n)+A049084(n+1))`
-/

namespace A363965.P9847744662690600077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145799 (A143673 n + A049084 (n + 1)).toNat

end

end A363965.P9847744662690600077

/-!
# A363969: Expansion of Sum_{k>0} k^2 * x^(2*k-1) / (1 - x^(2*k-1)).

The programs for A363969, the canonical program `A363969.P17338355453766122660` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363969 has offset 1).

The definition of A363969 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363969.P10790835975146472957

`∑{d}[(n+1)/2^val(n+1, 2), A087811(#)]`
-/

namespace A363969.P10790835975146472957
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A087811 d

end

end A363969.P10790835975146472957

namespace A363969

/-- `∑{d}[(n+1)/2^val(n+1, 2), A087811(#)]` -/
def P10790835975146472957.Spec : Prop :=
  ∀ n, P10790835975146472957.a n = A363969 (n + 1)

end A363969

/-! ## A363969.P6394363179511986458

`∑{d}[(n+1)/2^val(n+1, 2), A363267(#)]`
-/

namespace A363969.P6394363179511986458
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A363267 d

end

end A363969.P6394363179511986458

namespace A363969

/-- `∑{d}[(n+1)/2^val(n+1, 2), A363267(#)]` -/
def P6394363179511986458.Spec : Prop :=
  ∀ n, P6394363179511986458.a n = A363969 (n + 1)

end A363969

/-! ## A363969.P17338355453766122660

`∑{d}[A000265(n+1), A363268(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A363969

/-- `∑{d}[A000265(n+1), A363268(#)]` -/
def P17338355453766122660.Spec : Prop :=
  ∀ n, P17338355453766122660.a n = A363969 (n + 1)

theorem P17338355453766122660.correct : P17338355453766122660.Spec := by
  intro n
  simp only [A363969, Nat.add_sub_cancel]

end A363969

/-! ## A363969.P8003048506205783577

`∑{d}[A000265(n+1), A000463(#)²]`
-/

namespace A363969.P8003048506205783577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000463 d ^ 2

end

end A363969.P8003048506205783577

namespace A363969

/-- `∑{d}[A000265(n+1), A000463(#)²]` -/
def P8003048506205783577.Spec : Prop :=
  ∀ n, P8003048506205783577.a n = A363969 (n + 1)

end A363969

/-! ## A363969.P9720651958725379100

`∑{d}[A000265(n+1), A008619(#)²]`
-/

namespace A363969.P9720651958725379100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A008619 d ^ 2

end

end A363969.P9720651958725379100

namespace A363969

/-- `∑{d}[A000265(n+1), A008619(#)²]` -/
def P9720651958725379100.Spec : Prop :=
  ∀ n, P9720651958725379100.a n = A363969 (n + 1)

end A363969

/-! ## A363969.P5128618702593557745

`∑{d}[A064989(n+1), A048673(#)²]`
-/

namespace A363969.P5128618702593557745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A048673 d ^ 2

end

end A363969.P5128618702593557745

namespace A363969

/-- `∑{d}[A064989(n+1), A048673(#)²]` -/
def P5128618702593557745.Spec : Prop :=
  ∀ n, P5128618702593557745.a n = A363969 (n + 1)

end A363969

/-! ## A363969.P16215569633161635298

`A365007(n+1)-A346759(n+1)`
-/

namespace A363969.P16215569633161635298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365007 (n + 1) - A346759 (n + 1)

end

end A363969.P16215569633161635298

namespace A363969

/-- `A365007(n+1)-A346759(n+1)` -/
def P16215569633161635298.Spec : Prop :=
  ∀ n, P16215569633161635298.a n = A363969 (n + 1)

end A363969

/-! ## A363969.P8762927063994938365

`2*A363974(n+1)-A113415(n+1)`
-/

namespace A363969.P8762927063994938365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A363974 (n + 1) - A113415 (n + 1)

end

end A363969.P8762927063994938365

namespace A363969

/-- `2*A363974(n+1)-A113415(n+1)` -/
def P8762927063994938365.Spec : Prop :=
  ∀ n, P8762927063994938365.a n = A363969 (n + 1)

end A363969

/-!
# A363970: Expansion of Sum_{k>0} k^2 * x^(3*k-2) / (1 - x^(3*k-2)).

The programs for A363970, there is no canonical definition to state claims against.
-/

/-! ## A363970.P5418899192397652541

`2*A363975(n+1)-A363901(n+1)`
-/

namespace A363970.P5418899192397652541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A363975 (n + 1) - A363901 (n + 1)

end

end A363970.P5418899192397652541

/-!
# A363971: Expansion of Sum_{k>0} k^2 * x^(3*k-1) / (1 - x^(3*k-1)).

The programs for A363971, the canonical program `A363971.P14020667537958355418` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363971 has offset 1).

The definition of A363971 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363971.P14161386839118341950

`2*A363976(n+1)-A363902(n+1)`
-/

namespace A363971.P14161386839118341950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A363976 (n + 1) - A363902 (n + 1)

end

end A363971.P14161386839118341950

namespace A363971

/-- `2*A363976(n+1)-A363902(n+1)` -/
def P14161386839118341950.Spec : Prop :=
  ∀ n, P14161386839118341950.a n = A363971 (n + 1)

end A363971

/-! ## A363971.P14020667537958355418

`∑{d}[n+1, A175676(#+1)²]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A363971

/-- `∑{d}[n+1, A175676(#+1)²]` -/
def P14020667537958355418.Spec : Prop :=
  ∀ n, P14020667537958355418.a n = A363971 (n + 1)

theorem P14020667537958355418.correct : P14020667537958355418.Spec := by
  intro n
  simp only [A363971, Nat.add_sub_cancel]

end A363971

/-! ## A363971.P3704976069788411609

`A005843(A363976(n+1))-A363902(n+1)`
-/

namespace A363971.P3704976069788411609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A363976 (n + 1)).toNat - A363902 (n + 1)

end

end A363971.P3704976069788411609

namespace A363971

/-- `A005843(A363976(n+1))-A363902(n+1)` -/
def P3704976069788411609.Spec : Prop :=
  ∀ n, P3704976069788411609.a n = A363971 (n + 1)

end A363971

/-!
# A363972: Expansion of Sum_{k>0} k^2 * x^(4*k-3) / (1 - x^(4*k-3)).

The programs for A363972, there is no canonical definition to state claims against.
-/

/-! ## A363972.P13362145532651757715

`2*A363977(n+1)-A363903(n+1)`
-/

namespace A363972.P13362145532651757715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A363977 (n + 1) - A363903 (n + 1)

end

end A363972.P13362145532651757715

/-! ## A363972.P9218993277937667860

`A030051(A363977(n+1))`
-/

namespace A363972.P9218993277937667860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030051 (A363977 (n + 1)).toNat

end

end A363972.P9218993277937667860

/-! ## A363972.P301004124574162952

`A020651(A050450(n+1)^A322127(n+1))`
-/

namespace A363972.P301004124574162952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (SequenceMachineLib.roundAway ((A050450 (n + 1) : ℚ) ^ (A322127 (n + 1) : ℤ))).toNat

end

end A363972.P301004124574162952

/-!
# A363973: Expansion of Sum_{k>0} k^2 * x^(4*k-1) / (1 - x^(4*k-1)).

The programs for A363973, there is no canonical definition to state claims against.
-/

/-! ## A363973.P16319912101440441099

`2*A363978(n+1)-A363904(n+1)`
-/

namespace A363973.P16319912101440441099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A363978 (n + 1) - A363904 (n + 1)

end

end A363973.P16319912101440441099

/-! ## A363973.P17307616500261862027

`A274510(A140211(n+1))`
-/

namespace A363973.P17307616500261862027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274510 (A140211 (n + 1)).toNat

end

end A363973.P17307616500261862027

/-! ## A363973.P4709416306964595518

`A263835(A045771(n+1))²`
-/

namespace A363973.P4709416306964595518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263835 (A045771 (n + 1)).toNat ^ 2

end

end A363973.P4709416306964595518

/-! ## A363973.P8155635547563420213

`A116681(A294640(n+1))²`
-/

namespace A363973.P8155635547563420213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116681 (A294640 (n + 1)).toNat ^ 2

end

end A363973.P8155635547563420213

/-! ## A363973.P2197431617286222584

`A354911(A127963(n+2))²`
-/

namespace A363973.P2197431617286222584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354911 (A127963 (n + 2)).toNat ^ 2

end

end A363973.P2197431617286222584

/-!
# A363974: Expansion of Sum_{k>0} x^k / (1 - x^(2*k))^3.

The programs for A363974, the canonical program `A363974.P1318836168123044624` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363974 has offset 1).

The definition of A363974 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363974.P17552620363558689967

`∑{d}[(n+1)/2^val(n+1, 2), A008805(#)]`
-/

namespace A363974.P17552620363558689967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A008805 d

end

end A363974.P17552620363558689967

namespace A363974

/-- `∑{d}[(n+1)/2^val(n+1, 2), A008805(#)]` -/
def P17552620363558689967.Spec : Prop :=
  ∀ n, P17552620363558689967.a n = A363974 (n + 1)

end A363974

/-! ## A363974.P2101659342319527245

`∑{d}[(n+1)/2^val(n+1, 2), A209268(#)]`
-/

namespace A363974.P2101659342319527245
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A209268 d

end

end A363974.P2101659342319527245

namespace A363974

/-- `∑{d}[(n+1)/2^val(n+1, 2), A209268(#)]` -/
def P2101659342319527245.Spec : Prop :=
  ∀ n, P2101659342319527245.a n = A363974 (n + 1)

end A363974

/-! ## A363974.P1318836168123044624

`∑{d}[A000265(n+1), A008805(#)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A363974

/-- `∑{d}[A000265(n+1), A008805(#)]` -/
def P1318836168123044624.Spec : Prop :=
  ∀ n, P1318836168123044624.a n = A363974 (n + 1)

theorem P1318836168123044624.correct : P1318836168123044624.Spec := by
  intro n
  simp only [A363974, Nat.add_sub_cancel]

end A363974

/-! ## A363974.P4392589681969470695

`∑{d}[A000265(n+1), A209268(#)]`
-/

namespace A363974.P4392589681969470695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A209268 d

end

end A363974.P4392589681969470695

namespace A363974

/-- `∑{d}[A000265(n+1), A209268(#)]` -/
def P4392589681969470695.Spec : Prop :=
  ∀ n, P4392589681969470695.a n = A363974 (n + 1)

end A363974

/-! ## A363974.P13035388715191282033

`∑{d}[A000265(n+1), A246274(#)]`
-/

namespace A363974.P13035388715191282033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A246274 d

end

end A363974.P13035388715191282033

namespace A363974

/-- `∑{d}[A000265(n+1), A246274(#)]` -/
def P13035388715191282033.Spec : Prop :=
  ∀ n, P13035388715191282033.a n = A363974 (n + 1)

end A363974

/-!
# A363977: Expansion of Sum_{k>0} x^k / (1 - x^(4*k))^3.

The programs for A363977, there is no canonical definition to state claims against.
-/

/-! ## A363977.P8596158502147795065

`A103297(A363972(n+1))`
-/

namespace A363977.P8596158502147795065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103297 (A363972 (n + 1)).toNat

end

end A363977.P8596158502147795065

/-!
# A363978: Expansion of Sum_{k>0} x^(3*k) / (1 - x^(4*k))^3.

The programs for A363978, there is no canonical definition to state claims against.
-/

/-! ## A363978.P7977294206014997667

`∑{e}[A004076(∏{p}[2*(n+1), #]/2), #]`
-/

namespace A363978.P7977294206014997667
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004076 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A363978.P7977294206014997667

/-! ## A363978.P386204295548118224

`A384323(A140211(n+1))`
-/

namespace A363978.P386204295548118224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384323 (A140211 (n + 1)).toNat

end

end A363978.P386204295548118224

/-! ## A363978.P3456979163810456453

`A136610(5*A050452(n+1))`
-/

namespace A363978.P3456979163810456453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136610 (5 * A050452 (n + 1)).toNat

end

end A363978.P3456979163810456453

/-! ## A363978.P5539384095400159564

`A000217(A217620(n+1))%A097706(n+1)`
-/

namespace A363978.P5539384095400159564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A217620 (n + 1)).toNat) (A097706 (n + 1))

end

end A363978.P5539384095400159564

/-! ## A363978.P6449871242070849292

`A189226(A178943(n+1))%A064989(n+1)`
-/

namespace A363978.P6449871242070849292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189226 (A178943 (n + 1)).toNat) (A064989 (n + 1))

end

end A363978.P6449871242070849292

/-!
# A363981: Integers k such that the smallest integer with k factor pairs has an odd number of divisors.

The programs for A363981, there is no canonical definition to state claims against.
-/

/-! ## A363981.P12581921700146335876

`lt[A126760(A158186(n)), A007067(n)]`
-/

namespace A363981.P12581921700146335876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A158186 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363981.P12581921700146335876

/-! ## A363981.P11335088687098986894

`lt[A126760(A158186(n)), A241571(n+1)]`
-/

namespace A363981.P11335088687098986894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A158186 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241571 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363981.P11335088687098986894

/-! ## A363981.P16037005614679864471

`lt[A126760(A158186(n)), A030141(n+2)]`
-/

namespace A363981.P16037005614679864471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A158186 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030141 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363981.P16037005614679864471

/-!
# A363983: a(n) = Sum_{k = floor((n+1)/2)..n} (-1)^(n+k)*binomial(n,k)*binomial(n+k-1,k)*binomial(2*k,n).

The programs for A363983, there is no canonical definition to state claims against.
-/

/-! ## A363983.P11189172987516171490

`A127763(A005721(n)-n)`
-/

namespace A363983.P11189172987516171490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127763 (A005721 n - (n : ℤ)).toNat

end

end A363983.P11189172987516171490

/-!
# A363985: a(n) = Sum_{k = 0..n} (-4)^(n-k)*binomial(n,k)*binomial(2*n+k,k)*binomial(2*k,k).

The programs for A363985, there is no canonical definition to state claims against.
-/

/-! ## A363985.P2857476678737785625

`A189625(A217799(n)+A033100(n+1))`
-/

namespace A363985.P2857476678737785625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189625 (A217799 n + A033100 (n + 1)).toNat

end

end A363985.P2857476678737785625

/-!
# A363991: a(n) = Sum_{d|n, d odd} d^(d+1).

The programs for A363991, there is no canonical definition to state claims against.
-/

/-! ## A363991.P9536169075802799075

`A283498((n+1)/2^val(n+1, 2))`
-/

namespace A363991.P9536169075802799075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283498 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A363991.P9536169075802799075

/-! ## A363991.P5187290957178037141

`A304870((n+1)/2^val(n+1, 2))`
-/

namespace A363991.P5187290957178037141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304870 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A363991.P5187290957178037141

/-! ## A363991.P16717361438250678284

`∑{d}[(n+1)/2^val(n+1, 2), A007778(#)]`
-/

namespace A363991.P16717361438250678284
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A007778 d

end

end A363991.P16717361438250678284

/-! ## A363991.P17744728400268032545

`A283498(A000265(n+1))`
-/

namespace A363991.P17744728400268032545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283498 (A000265 (n + 1)).toNat

end

end A363991.P17744728400268032545

/-! ## A363991.P11195709971042038505

`∑{d}[A000265(n+1), A007778(#)]`
-/

namespace A363991.P11195709971042038505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007778 d

end

end A363991.P11195709971042038505

/-!
# A363992: The number of ways 2n can be expressed as the sum of an odd prime number and an odd nonprime, both of which are relatively prime to n.

The programs for A363992, there is no canonical definition to state claims against.
-/

/-! ## A363992.P15924167553584410574

`A187450(lt[A000534(n+1), A325679(n+1)])`
-/

namespace A363992.P15924167553584410574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187450 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A363992.P15924167553584410574

/-! ## A363992.P16493862937009143898

`A079343(A074336(2*n+3)*A194606(n+1))`
-/

namespace A363992.P16493862937009143898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079343 (A074336 (2 * n + 3) * A194606 (n + 1)).toNat

end

end A363992.P16493862937009143898

/-!
# A363993: a(n) = greatest integer k such that 1/n + 1/(n + 1) +...+ 1/k < 2.

The programs for A363993, there is no canonical definition to state claims against.
-/

/-! ## A363993.P1917482694199372060

`A020909(2*(n+1))+A004277(A016777(n))`
-/

namespace A363993.P1917482694199372060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020909 (2 * (n + 1)) + A004277 (A016777 n).toNat

end

end A363993.P1917482694199372060

/-! ## A363993.P14249436133319860275

`A003056(A077588(3*n+2)+A000212(n))`
-/

namespace A363993.P14249436133319860275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A077588 (3 * n + 2) + A000212 n).toNat

end

end A363993.P14249436133319860275

/-! ## A363993.P12525374101880036308

`A000194(3*A062741(2*n+1))`
-/

namespace A363993.P12525374101880036308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (3 * A062741 (2 * n + 1)).toNat

end

end A363993.P12525374101880036308

/-! ## A363993.P7949390739617412032

`A000194(3*A014105(3*n+1))`
-/

namespace A363993.P7949390739617412032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (3 * A014105 (3 * n + 1)).toNat

end

end A363993.P7949390739617412032

/-! ## A363993.P12123987545514496879

`A000194(9*A000326(2*n+1))`
-/

namespace A363993.P12123987545514496879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (9 * A000326 (2 * n + 1)).toNat

end

end A363993.P12123987545514496879

/-!
# A363994: a(n) is the number of partitions of n whose difference multiset has no duplicates; see Comments.

The programs for A363994, there is no canonical definition to state claims against.
-/

/-! ## A363994.P4152497218342060840

`A000041(n)-A364612(n)`
-/

namespace A363994.P4152497218342060840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A364612 n

end

end A363994.P4152497218342060840

/-! ## A363994.P1971665013014479777

`A325876(n)+log2(gcd(2, ∏{p}[n, #]))`
-/

namespace A363994.P1971665013014479777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A325876 n : ℝ) + Real.logb 2 (Nat.gcd 2 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℝ)

end

end A363994.P1971665013014479777

/-! ## A363994.P2674588227294055451

`A325876(n)+log2(A040001(n))`
-/

namespace A363994.P2674588227294055451
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A325876 n : ℝ) + Real.logb 2 (A040001 n : ℝ)

end

end A363994.P2674588227294055451

/-! ## A363994.P11465488428871162898

`A325876(n)+A038205((n%2)^n)`
-/

namespace A363994.P11465488428871162898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325876 n + A038205 ((n % 2) ^ n)

end

end A363994.P11465488428871162898

/-! ## A363994.P16509930864983828678

`A325876(n)+char[A000027(2*(n+1))]`
-/

namespace A363994.P16509930864983828678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (2 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325876 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A363994.P16509930864983828678

/-! ## A363994.P5878968898121423054

`A325876(n)+char[A092942(3*(n+1))]`
-/

namespace A363994.P5878968898121423054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (3 * (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325876 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A363994.P5878968898121423054

/-! ## A363994.P5097647995893790535

`A325876(n)+char[A004442(2*n+3)]`
-/

namespace A363994.P5097647995893790535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325876 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A363994.P5097647995893790535

/-! ## A363994.P13534682570182233541

`A325876(n)+A000035(A007504(n))`
-/

namespace A363994.P13534682570182233541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325876 n + A000035 (A007504 n).toNat

end

end A363994.P13534682570182233541

/-! ## A363994.P5674589859866801671

`A325876(n)+A182850(A020639(n+1))`
-/

namespace A363994.P5674589859866801671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325876 n + A182850 (A020639 (n + 1)).toNat

end

end A363994.P5674589859866801671

/-!
# A363998: Primes of the form |2^i - 3^j|, for i >= 0, j >= 0.

The programs for A363998, there is no canonical definition to state claims against.
-/

/-! ## A363998.P9136802889313361319

`∪[A321671(n+1), A323698(n+1)]`
-/

namespace A363998.P9136802889313361319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321671 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323698 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363998.P9136802889313361319

/-! ## A363998.P6362245930798321308

`p?[A014121(n+1)]`
-/

namespace A363998.P6362245930798321308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A363998.P6362245930798321308

/-! ## A363998.P6634214576988626798

`filter[A014121(n+2), A010051(#)]`
-/

namespace A363998.P6634214576988626798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014121 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A363998.P6634214576988626798

/-! ## A363998.P17343819154568917649

`filter[A014121(n+2), A323153(#)]`
-/

namespace A363998.P17343819154568917649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014121 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A363998.P17343819154568917649

/-! ## A363998.P11804247017579934833

`filter[A014121(n+2), A327861(#)]`
-/

namespace A363998.P11804247017579934833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014121 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A363998.P11804247017579934833

/-!
# A363999: Numbers of the form |2^i - 3^j|, for i >= 1, j >= 1.

The programs for A363999, there is no canonical definition to state claims against.
-/

/-! ## A363999.P5163698179489322447

`2*A364000(n+1)+1`
-/

namespace A363999.P5163698179489322447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A364000 (n + 1) + 1

end

end A363999.P5163698179489322447

/-! ## A363999.P6615544490151661203

`A223134(A364000(n+1))`
-/

namespace A363999.P6615544490151661203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 (A364000 (n + 1)).toNat

end

end A363999.P6615544490151661203

/-! ## A363999.P11783349136292410442

`A146535(A364000(n+1)+1)`
-/

namespace A363999.P11783349136292410442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146535 (A364000 (n + 1) + 1).toNat

end

end A363999.P11783349136292410442

/-! ## A363999.P12513479247585434736

`A163985(A364000(n+1)+1)`
-/

namespace A363999.P12513479247585434736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 (A364000 (n + 1) + 1).toNat

end

end A363999.P12513479247585434736

/-! ## A363999.P16432333335954211116

`A109613(2*A364000(n+1))`
-/

namespace A363999.P16432333335954211116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * A364000 (n + 1)).toNat

end

end A363999.P16432333335954211116

/-! ## A363999.P911482253941073859

`A008619(4*A364000(n+1))`
-/

namespace A363999.P911482253941073859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A364000 (n + 1)).toNat

end

end A363999.P911482253941073859

/-! ## A363999.P13555435107929587945

`A080513(4*A364000(n+1))`
-/

namespace A363999.P13555435107929587945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (4 * A364000 (n + 1)).toNat

end

end A363999.P13555435107929587945

/-! ## A363999.P3069487156270248803

`lt[2, A034444(n+1)*A128760(n)]`
-/

namespace A363999.P3069487156270248803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A128760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A363999.P3069487156270248803

/-! ## A363999.P10665361729096987626

`lt[A130716(A034444(n+1)), A128760(n)]`
-/

namespace A363999.P10665361729096987626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130716 (A034444 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128760 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363999.P10665361729096987626

