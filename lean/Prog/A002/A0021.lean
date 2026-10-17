import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
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
import Seq.B008.C000
import Seq.B008.C001
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

/-!
# A002100: a(n) = number of partitions of n into semiprimes (more precisely, number of ways of writing n as a sum of products of 2 distinct primes).

The programs for A002100, there is no canonical definition to state claims against.
-/

/-! ## A002100.P1785378562910621302

`A032741(7^Δ[A239508(n)])`
-/

namespace A002100.P1785378562910621302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A002100.P1785378562910621302

/-! ## A002100.P11022336644222329166

`A091222(7^Δ[A239508(n)])`
-/

namespace A002100.P11022336644222329166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091222 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A002100.P11022336644222329166

/-! ## A002100.P7553714397136173914

`Δ[A239508(n)]%A217699(n)`
-/

namespace A002100.P7553714397136173914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A217699 n)

end

end A002100.P7553714397136173914

/-! ## A002100.P11547576623700885966

`Δ[A239508(n)%A177217(n+1)]`
-/

namespace A002100.P11547576623700885966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239508 n) (A177217 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002100.P11547576623700885966

/-! ## A002100.P4958345364409895594

`and(Δ[A239508(n)], A346138(n+1))`
-/

namespace A002100.P4958345364409895594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A346138 (n + 1))

end

end A002100.P4958345364409895594

/-!
# A002101: Nearest integer to 4 * Pi * n^3 / 3.

The programs for A002101, the canonical program `A002101.P1350527411870215283` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002101 has offset 0).

The definition of A002101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002101.P1350527411870215283

`round(4*π*n^3/3)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002101

/-- `round(4*π*n^3/3)` -/
def P1350527411870215283.Spec : Prop :=
  ∀ n, P1350527411870215283.a n = A002101 n

theorem P1350527411870215283.correct : P1350527411870215283.Spec := by
  intro n
  simp only [A002101]

end A002101

/-! ## A002101.P14841744383591129303

`A246408(A033562(n))`
-/

namespace A002101.P14841744383591129303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246408 (A033562 n).toNat

end

end A002101.P14841744383591129303

namespace A002101

/-- `A246408(A033562(n))` -/
def P14841744383591129303.Spec : Prop :=
  ∀ n, P14841744383591129303.a n = A002101 n

end A002101

/-! ## A002101.P12178825965565184872

`A135973(n)-A010051(A001672(n))`
-/

namespace A002101.P12178825965565184872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135973 n - A010051 (A001672 n).toNat

end

end A002101.P12178825965565184872

namespace A002101

/-- `A135973(n)-A010051(A001672(n))` -/
def P12178825965565184872.Spec : Prop :=
  ∀ n, P12178825965565184872.a n = A002101 n

end A002101

/-! ## A002101.P10474525142603864719

`A316101(A113863(n))+A066645(n)`
-/

namespace A002101.P10474525142603864719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316101 (A113863 n).toNat + A066645 n

end

end A002101.P10474525142603864719

namespace A002101

/-- `A316101(A113863(n))+A066645(n)` -/
def P10474525142603864719.Spec : Prop :=
  ∀ n, P10474525142603864719.a n = A002101 n

end A002101

/-! ## A002101.P8009281428344571734

`A000605(n)-A210641(n²)`
-/

namespace A002101.P8009281428344571734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000605 n - A210641 (n ^ 2)

end

end A002101.P8009281428344571734

namespace A002101

/-- `A000605(n)-A210641(n²)` -/
def P8009281428344571734.Spec : Prop :=
  ∀ n, P8009281428344571734.a n = A002101 n

end A002101

/-!
# A002102: Number of nonnegative solutions to x^2 + y^2 + z^2 = n.

The programs for A002102, there is no canonical definition to state claims against.
-/

/-! ## A002102.P15848044323715506491

`A110657(A005875(n))-A063691(n)`
-/

namespace A002102.P15848044323715506491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A005875 n).toNat - A063691 n

end

end A002102.P15848044323715506491

/-! ## A002102.P8896281750979224214

`A110657(abs(A213384(n)))-A063691(n)`
-/

namespace A002102.P8896281750979224214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 |A213384 n|.toNat - A063691 n

end

end A002102.P8896281750979224214

/-! ## A002102.P10508394340980234937

`A110657(A005875(n))-Δ[A211638(n)]`
-/

namespace A002102.P10508394340980234937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A005875 n).toNat - (f1 (n + 1) - f1 n)

end

end A002102.P10508394340980234937

/-! ## A002102.P3886440166660163652

`A110657(A005875(n))-Δ[A211639((2*n)%(n+1))]`
-/

namespace A002102.P3886440166660163652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211639 (2 * n % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A005875 n).toNat - (f1 (n + 1) - f1 n)

end

end A002102.P3886440166660163652

/-! ## A002102.P5010846114106987562

`A110657(A005875(n))+A211638(n)-A211639(n)`
-/

namespace A002102.P5010846114106987562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A005875 n).toNat + (A211638 n - A211639 n)

end

end A002102.P5010846114106987562

/-! ## A002102.P13744935916888945887

`A110657(A005875(n))+A211640(n)-A211641(n)`
-/

namespace A002102.P13744935916888945887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A005875 n).toNat + (A211640 n - A211641 n)

end

end A002102.P13744935916888945887

/-! ## A002102.P4077300537250137714

`A110657(A005875(n))-A211649(2*n)`
-/

namespace A002102.P4077300537250137714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A005875 n).toNat - A211649 (2 * n)

end

end A002102.P4077300537250137714

/-! ## A002102.P6947347328203642583

`A110657(A005875(n))-(A211645(2*n)-A211644(2*n))`
-/

namespace A002102.P6947347328203642583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A005875 n).toNat - (A211645 (2 * n) - A211644 (2 * n))

end

end A002102.P6947347328203642583

/-! ## A002102.P5876450410660978288

`A110657(A005875(n))-(A211643(2*n)-A211642(2*n))`
-/

namespace A002102.P5876450410660978288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 (A005875 n).toNat - (A211643 (2 * n) - A211642 (2 * n))

end

end A002102.P5876450410660978288

/-! ## A002102.P12294749031221413610

`A045847(∑[n+4]+2)`
-/

namespace A002102.P12294749031221413610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A002102.P12294749031221413610

/-! ## A002102.P4052787814840075499

`A045847(A046691(n+2))%30`
-/

namespace A002102.P4052787814840075499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045847 (A046691 (n + 2)).toNat) 30

end

end A002102.P4052787814840075499

/-! ## A002102.P3784444264497717606

`A045847(A155212(n)+4)%(n+6)`
-/

namespace A002102.P3784444264497717606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045847 (A155212 n + 4).toNat) (n + 6 : ℤ)

end

end A002102.P3784444264497717606

/-! ## A002102.P13354834578720702061

`A045847(eq[3, A025581(n)])%(n+3)`
-/

namespace A002102.P13354834578720702061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (n + 3 : ℤ)

end

end A002102.P13354834578720702061

/-! ## A002102.P1037053115242733250

`∑{d}[A045847(A046691(n+2)), A000010(#)]`
-/

namespace A002102.P1037053115242733250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045847 (A046691 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A002102.P1037053115242733250

/-! ## A002102.P13026166973079007189

`A045847(A167614(n+1)+A005843(n))%40`
-/

namespace A002102.P13026166973079007189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045847 (A167614 (n + 1) + A005843 n).toNat) 40

end

end A002102.P13026166973079007189

/-! ## A002102.P15377807458704505745

`A045847(eq[3, A025581(n)])^(A000051(n)%2)`
-/

namespace A002102.P15377807458704505745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045847 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) ^ (Int.tmod (A000051 n) 2 : ℤ)

end

end A002102.P15377807458704505745

/-!
# A002103: Coefficients of expansion of Jacobi nome q in certain powers of (1/2)*(1 - sqrt(k')) / (1 + sqrt(k')).

The programs for A002103, there is no canonical definition to state claims against.
-/

/-! ## A002103.P13141893887416082273

`∑[A004280(A336951(n))]`
-/

namespace A002103.P13141893887416082273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A336951 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002103.P13141893887416082273

/-!
# A002104: Logarithmic numbers.

The programs for A002104, the canonical program `A002104.P7493851585999860305` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002104 has offset 0).

The definition of A002104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002104.P7493851585999860305

`n*a(n-1)-(n-1)*a(n-2)+1` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002104

/-- `n*a(n-1)-(n-1)*a(n-2)+1` -/
def P7493851585999860305.Spec : Prop :=
  ∀ n, P7493851585999860305.a n = A002104 n

theorem P7493851585999860305.correct : P7493851585999860305.Spec := by
  intro n
  simp only [A002104]

end A002104

/-! ## A002104.P8336558692331615504

`A007526(n)+A006231(n+1)-A030297(n)`
-/

namespace A002104.P8336558692331615504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007526 n + A006231 (n + 1) - A030297 n

end

end A002104.P8336558692331615504

namespace A002104

/-- `A007526(n)+A006231(n+1)-A030297(n)` -/
def P8336558692331615504.Spec : Prop :=
  ∀ n, P8336558692331615504.a n = A002104 n

end A002104

/-! ## A002104.P3281325145677077923

`∑[(n-1)*a(n-1)+1]` with `a(0)=0`
-/

namespace A002104.P3281325145677077923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002104.P3281325145677077923

namespace A002104

/-- `∑[(n-1)*a(n-1)+1]` -/
def P3281325145677077923.Spec : Prop :=
  ∀ n, P3281325145677077923.a n = A002104 n

end A002104

/-! ## A002104.P11602026484273926695

`∑[1-(1-n)*a(n-1)]` with `a(0)=0`
-/

namespace A002104.P11602026484273926695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - (1 - (n : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002104.P11602026484273926695

namespace A002104

/-- `∑[1-(1-n)*a(n-1)]` -/
def P11602026484273926695.Spec : Prop :=
  ∀ n, P11602026484273926695.a n = A002104 n

end A002104

/-! ## A002104.P11588259764208922501

`∑[lcm(1-a(n-1), n-1)+n]` with `a(0)=0`
-/

namespace A002104.P11588259764208922501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.lcm (1 - (f1 (n - 1) : ℤ)) ((n : ℤ) - 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002104.P11588259764208922501

namespace A002104

/-- `∑[lcm(1-a(n-1), n-1)+n]` -/
def P11588259764208922501.Spec : Prop :=
  ∀ n, (P11588259764208922501.a n : ℤ) = A002104 n

end A002104

/-! ## A002104.P9990625330450719956

`1-(n*(a(n-2)-a(n-1))-a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A002104.P9990625330450719956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - ((n : ℤ) * (a (n - 2) - a (n - 1)) - a (n - 2))

end

end A002104.P9990625330450719956

namespace A002104

/-- `1-(n*(a(n-2)-a(n-1))-a(n-2))` -/
def P9990625330450719956.Spec : Prop :=
  ∀ n, P9990625330450719956.a n = A002104 n

end A002104

/-! ## A002104.P11093072073179741180

`(∑[A054091(n)]-1)/2`
-/

namespace A002104.P11093072073179741180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054091 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A002104.P11093072073179741180

namespace A002104

/-- `(∑[A054091(n)]-1)/2` -/
def P11093072073179741180.Spec : Prop :=
  ∀ n, P11093072073179741180.a n = (A002104 n : ℚ)

end A002104

/-! ## A002104.P67103363840315282

`∑[n]+2*A002807(n)`
-/

namespace A002104.P67103363840315282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 2 * A002807 n

end

end A002104.P67103363840315282

namespace A002104

/-- `∑[n]+2*A002807(n)` -/
def P67103363840315282.Spec : Prop :=
  ∀ n, P67103363840315282.a n = A002104 n

end A002104

/-! ## A002104.P16414549873044679879

`∑[A143409(∑[n]-n)]-1`
-/

namespace A002104.P16414549873044679879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (∑ j ∈ Finset.range (n + 1), f2 j - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A002104.P16414549873044679879

namespace A002104

/-- `∑[A143409(∑[n]-n)]-1` -/
def P16414549873044679879.Spec : Prop :=
  ∀ n, P16414549873044679879.a n = A002104 n

end A002104

/-! ## A002104.P15740748731425516081

`A291484(n)+A263102(n)`
-/

namespace A002104.P15740748731425516081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291484 n + A263102 n

end

end A002104.P15740748731425516081

namespace A002104

/-- `A291484(n)+A263102(n)` -/
def P15740748731425516081.Spec : Prop :=
  ∀ n, P15740748731425516081.a n = A002104 n

end A002104

/-!
# A002105: Reduced tangent numbers: 2^n*(2^{2n} - 1)*|B_{2n}|/n, where B_n = Bernoulli numbers.

The programs for A002105, there is no canonical definition to state claims against.
-/

/-! ## A002105.P3594869960421882362

`A008301(n²)`
-/

namespace A002105.P3594869960421882362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008301 (n ^ 2)

end

end A002105.P3594869960421882362

/-! ## A002105.P678927537188503992

`A083061(∑[n])`
-/

namespace A002105.P678927537188503992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083061 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002105.P678927537188503992

/-! ## A002105.P6486073524838592291

`A210108(∑[n])`
-/

namespace A002105.P6486073524838592291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210108 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002105.P6486073524838592291

/-! ## A002105.P2962972425097978018

`A178964(Δ[n²])`
-/

namespace A002105.P2962972425097978018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178964 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002105.P2962972425097978018

/-! ## A002105.P8189857892182514885

`A094665(∑[n+1]+1)`
-/

namespace A002105.P8189857892182514885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094665 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A002105.P8189857892182514885

/-!
# A002106: Number of transitive permutation groups of degree n.

The programs for A002106, there is no canonical definition to state claims against.
-/

/-! ## A002106.P13883737156959794567

`abs(Δ[A173407(A000038(n)+n)])`
-/

namespace A002106.P13883737156959794567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173407 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A002106.P13883737156959794567

/-! ## A002106.P463108940485278947

`A132221(n+1)+A000019(n+1)`
-/

namespace A002106.P463108940485278947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132221 (n + 1) + A000019 (n + 1)

end

end A002106.P463108940485278947

/-! ## A002106.P10722331539723659632

`A132221(n+1)+Δ[A173397((2*a(n-1))%2+n)]` with `a(0)=0`
-/

namespace A002106.P10722331539723659632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A173397 (Int.tmod (2 * f1 (n - 1)) 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132221 (n + 1) + (f1 (n + 1) - f1 n)

end

end A002106.P10722331539723659632

/-! ## A002106.P18032920531249197479

`A124938(n+1)+A124937(n+1)`
-/

namespace A002106.P18032920531249197479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124938 (n + 1) + A124937 (n + 1)

end

end A002106.P18032920531249197479

/-!
# A002107: Expansion of Product_{k>=1} (1 - x^k)^2.

The programs for A002107, there is no canonical definition to state claims against.
-/

/-! ## A002107.P14060496737901341848

`A033999(n)*A208845(n)`
-/

namespace A002107.P14060496737901341848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A208845 n

end

end A002107.P14060496737901341848

/-! ## A002107.P9304355825620913370

`(1-2*A000035(n))*A208845(n)`
-/

namespace A002107.P9304355825620913370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A000035 n) * A208845 n

end

end A002107.P9304355825620913370

/-! ## A002107.P18061911212742420506

`A208845(n)*A210628(Δ[A008619(n)])`
-/

namespace A002107.P18061911212742420506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208845 n * A210628 (f1 (n + 1) - f1 n).toNat

end

end A002107.P18061911212742420506

/-! ## A002107.P345822367301471023

`A056594(2*n)*A208845(n)`
-/

namespace A002107.P345822367301471023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A208845 n

end

end A002107.P345822367301471023

/-! ## A002107.P9012920401583859398

`A122163(n)/A017533(n)`
-/

namespace A002107.P9012920401583859398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122163 n : ℚ) / (A017533 n : ℚ)

end

end A002107.P9012920401583859398

/-! ## A002107.P3014168075957146306

`A208845(n)*A343785(A003278(n+1))`
-/

namespace A002107.P3014168075957146306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208845 n * A343785 (A003278 (n + 1)).toNat

end

end A002107.P3014168075957146306

/-! ## A002107.P1238412360170001283

`A293388(∑[n+2]-1)`
-/

namespace A002107.P1238412360170001283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293388 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A002107.P1238412360170001283

/-! ## A002107.P6285436606826575813

`A293388(∑[n+1]+n)%8`
-/

namespace A002107.P6285436606826575813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293388 (∑ j ∈ Finset.range (n + 1), f1 j + n)) 8

end

end A002107.P6285436606826575813

/-! ## A002107.P3282744432796694599

`A286354(∑[n+3])`
-/

namespace A002107.P3282744432796694599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286354 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002107.P3282744432796694599

/-! ## A002107.P1180561115805708560

`A050305((n+1)²+n²)`
-/

namespace A002107.P1180561115805708560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050305 ((n + 1) ^ 2 + n ^ 2)

end

end A002107.P1180561115805708560

/-!
# A002108: 4th powers written backwards.

The programs for A002108, there is no canonical definition to state claims against.
-/

/-! ## A002108.P13383348842433734622

`A002942((n+1)²)`
-/

namespace A002108.P13383348842433734622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 ((n + 1) ^ 2)

end

end A002108.P13383348842433734622

/-! ## A002108.P10476184773772378624

`or(char[1], A002942(∑[2*n+1]))`
-/

namespace A002108.P10476184773772378624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A002942 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A002108.P10476184773772378624

/-! ## A002108.P16628708021987490127

`A061226((n+1)²)-(n+1)^4`
-/

namespace A002108.P16628708021987490127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061226 ((n + 1) ^ 2) - ((n + 1) ^ 4 : ℤ)

end

end A002108.P16628708021987490127

/-! ## A002108.P8270116848764957078

`xor(1, xor(1, A002942(∑[n+1+n])))`
-/

namespace A002108.P8270116848764957078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A002942 (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A002108.P8270116848764957078

/-! ## A002108.P201373680110784732

`A002942(∑[2*n+1])%A017152(n)`
-/

namespace A002108.P201373680110784732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002942 (∑ j ∈ Finset.range (n + 1), f1 j)) (A017152 n)

end

end A002108.P201373680110784732

/-! ## A002108.P4662954671403011561

`gcd(A000038(n), A002942(∑[2*n+1]))`
-/

namespace A002108.P4662954671403011561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A002942 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A002108.P4662954671403011561

/-! ## A002108.P7343611497556426183

`A002942(∑[2*n+1])+A000038(n+1)`
-/

namespace A002108.P7343611497556426183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (∑ j ∈ Finset.range (n + 1), f1 j) + A000038 (n + 1)

end

end A002108.P7343611497556426183

/-! ## A002108.P10777953370327854648

`A000034(2*n)*A002942(∑[2*n+1])`
-/

namespace A002108.P10777953370327854648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A002942 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002108.P10777953370327854648

/-! ## A002108.P8696352723851692290

`A007318(C(2, n))*A002942(∑[2*n+1])`
-/

namespace A002108.P8696352723851692290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A002942 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002108.P8696352723851692290

/-! ## A002108.P15632572209429623296

`A002942(∑[n+1+n])*A010684(2*n)`
-/

namespace A002108.P15632572209429623296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (∑ j ∈ Finset.range (n + 1), f1 j) * A010684 (2 * n)

end

end A002108.P15632572209429623296

/-! ## A002108.P17057630446943329970

`A002942(∑[2*n+1])+A008683(4*(n+1))`
-/

namespace A002108.P17057630446943329970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (∑ j ∈ Finset.range (n + 1), f1 j) + A008683 (4 * (n + 1))

end

end A002108.P17057630446943329970

/-! ## A002108.P8694092470953997402

`A000041(C(2, n+2))*A002942(∑[2*n+1])`
-/

namespace A002108.P8694092470953997402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A002942 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002108.P8694092470953997402

/-! ## A002108.P12630021975466113458

`A002942(∑[2*n+1])^(A000040(n+1)%2)`
-/

namespace A002108.P12630021975466113458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002942 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A002108.P12630021975466113458

/-! ## A002108.P16554812725198660541

`A000108(C(2, n+2))*A002942(∑[2*n+1])`
-/

namespace A002108.P16554812725198660541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A002942 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002108.P16554812725198660541

/-! ## A002108.P1106300389398046698

`A002942(∑[2*n+1])+A000045(C(n, n+1))`
-/

namespace A002108.P1106300389398046698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002942 (∑ j ∈ Finset.range (n + 1), f1 j) + A000045 (Nat.choose n (n + 1))

end

end A002108.P1106300389398046698

/-! ## A002108.P4768285862095116264

`A014963(abs((-1)^n))*A002942(∑[2*n+1])`
-/

namespace A002108.P4768285862095116264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 |(-1) ^ n|.toNat * A002942 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002108.P4768285862095116264

/-! ## A002108.P17825355685575601249

`A002942(∑[n+1+n])/A014963(A236928(n))`
-/

namespace A002108.P17825355685575601249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002942 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (A014963 (A236928 n).toNat : ℚ)

end

end A002108.P17825355685575601249

/-! ## A002108.P9195019785845183584

`A002942(A000290(n+1))^and(1, A000040(n+1))`
-/

namespace A002108.P9195019785845183584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002942 (A000290 (n + 1)).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A002108.P9195019785845183584

/-! ## A002108.P16135761867991408743

`A000045(A020639(2*(n+1)))*A002942(∑[2*n+1])`
-/

namespace A002108.P16135761867991408743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A020639 (2 * (n + 1))).toNat * A002942 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002108.P16135761867991408743

/-!
# A002109: Hyperfactorials: Product_{k = 1..n} k^k.

The programs for A002109, there is no canonical definition to state claims against.
-/

/-! ## A002109.P13749468522113790462

`A240993(n)/A000142(n+1)`
-/

namespace A002109.P13749468522113790462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240993 n : ℚ) / (A000142 (n + 1) : ℚ)

end

end A002109.P13749468522113790462

/-! ## A002109.P16692535946614788986

`∏[n^n]`
-/

namespace A002109.P16692535946614788986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002109.P16692535946614788986

/-! ## A002109.P8485292641597605833

`a(n-1)*n^n` with `a(0)=1`
-/

namespace A002109.P8485292641597605833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * n ^ n

end

end A002109.P8485292641597605833

/-! ## A002109.P9671865215840061758

`a(n-1)/n^-n` with `a(0)=1`
-/

namespace A002109.P9671865215840061758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A002109.P9671865215840061758

/-! ## A002109.P8351451840634675881

`root(n, 1/n)*a(n-1)` with `a(0)=1`
-/

namespace A002109.P8351451840634675881
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℝ) ^ (1 / (1 / (n : ℚ) : ℝ)) * a (n - 1)

end

end A002109.P8351451840634675881

/-!
# A002110: Primorial numbers (first definition): product of first n primes. Sometimes written prime(n)#.

The programs for A002110, there is no canonical definition to state claims against.
-/

/-! ## A002110.P17589463839339931801

`A276085(A000040(n+1))`
-/

namespace A002110.P17589463839339931801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276085 (A000040 (n + 1)).toNat

end

end A002110.P17589463839339931801

/-!
# A002111: Glaisher's G numbers.

The programs for A002111, there is no canonical definition to state claims against.
-/

/-! ## A002111.P14506547910513365249

`abs(A083007(Δ[A005563(n)]))`
-/

namespace A002111.P14506547910513365249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083007 (f1 (n + 1) - f1 n).toNat|

end

end A002111.P14506547910513365249

/-! ## A002111.P10358913719049294905

`abs(A157799(Δ[A005563(n)]))`
-/

namespace A002111.P10358913719049294905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157799 (f1 (n + 1) - f1 n).toNat|

end

end A002111.P10358913719049294905

/-! ## A002111.P17965863758192599045

`record[abs(A083007(A198954(n)))]`
-/

namespace A002111.P17965863758192599045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083007 (A198954 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002111.P17965863758192599045

/-! ## A002111.P15368953091891842684

`abs(A083007(A005408(n+1)))`
-/

namespace A002111.P15368953091891842684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083007 (A005408 (n + 1)).toNat|

end

end A002111.P15368953091891842684

/-! ## A002111.P14928364126042116213

`record[A157799(n)*A163805(n)]`
-/

namespace A002111.P14928364126042116213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157799 n * A163805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002111.P14928364126042116213

/-!
# A002112: Glaisher's H numbers.

The programs for A002112, there is no canonical definition to state claims against.
-/

/-! ## A002112.P13594485639376123193

`3*A002114(n+1)`
-/

namespace A002112.P13594485639376123193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002114 (n + 1)

end

end A002112.P13594485639376123193

/-! ## A002112.P594516943779318597

`lcm(3, A002114(A000027(n+1)))`
-/

namespace A002112.P594516943779318597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A002114 (A000027 (n + 1)).toNat)

end

end A002112.P594516943779318597

/-! ## A002112.P16658506097325556915

`3*record[A156179(n)/A228936(n)]`
-/

namespace A002112.P16658506097325556915
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156179 n : ℚ) / (A228936 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002112.P16658506097325556915

/-! ## A002112.P2822664355506126873

`lcm(A153675(n+1)+2, A002114(n+1))`
-/

namespace A002112.P2822664355506126873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A153675 (n + 1) + 2) (A002114 (n + 1))

end

end A002112.P2822664355506126873

/-! ## A002112.P2783807566286660921

`lcm(A000716(A153675(n+1)), A002114(n+1))`
-/

namespace A002112.P2783807566286660921
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000716 (A153675 (n + 1)).toNat) (A002114 (n + 1))

end

end A002112.P2783807566286660921

/-!
# A002113: Palindromes in base 10.

The programs for A002113, there is no canonical definition to state claims against.
-/

/-! ## A002113.P10352763513465789467

`sqrt(sqrt(A014188(n)))`
-/

namespace A002113.P10352763513465789467
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A014188 n : ℝ))

end

end A002113.P10352763513465789467

/-! ## A002113.P14492273899807155093

`sqrt(A014186(n+1))`
-/

namespace A002113.P14492273899807155093
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014186 (n + 1) : ℝ)

end

end A002113.P14492273899807155093

/-! ## A002113.P4783931868883253486

`A014187(n)^(1/3)`
-/

namespace A002113.P4783931868883253486
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A014187 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A002113.P4783931868883253486

/-! ## A002113.P14292999559168129574

`∑[A086862(abs(1-n)+1)]-1`
-/

namespace A002113.P14292999559168129574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086862 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A002113.P14292999559168129574

/-! ## A002113.P7151996813880477884

`eq[n, A004086(n)]`
-/

namespace A002113.P7151996813880477884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002113.P7151996813880477884

/-! ## A002113.P15498503405125833118

`eq[0, A261424(n)]`
-/

namespace A002113.P15498503405125833118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002113.P15498503405125833118

/-! ## A002113.P15820015948549355221

`eq[2*n, A056964(n)]`
-/

namespace A002113.P15820015948549355221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002113.P15820015948549355221

/-! ## A002113.P7699787842375958653

`∩[A061917(n+1), A131058(n+1)]`
-/

namespace A002113.P7699787842375958653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002113.P7699787842375958653

/-! ## A002113.P16639486570936492194

`∩[A061917(n+1), A342851(n+1)]`
-/

namespace A002113.P16639486570936492194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002113.P16639486570936492194

/-! ## A002113.P5638665230859444969

`A262038(a(n-1)+1)` with `a(0)=0`
-/

namespace A002113.P5638665230859444969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A262038 (a (n - 1) + 1).toNat

end

end A002113.P5638665230859444969

/-! ## A002113.P2204017057703613975

`A262037(A048307(n))`
-/

namespace A002113.P2204017057703613975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262037 (A048307 n).toNat

end

end A002113.P2204017057703613975

/-! ## A002113.P5423882760562964625

`record[A047813(n)]`
-/

namespace A002113.P5423882760562964625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002113.P5423882760562964625

/-! ## A002113.P6219475303323350292

`record[A262087(n)]`
-/

namespace A002113.P6219475303323350292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262087 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002113.P6219475303323350292

/-! ## A002113.P7937490765738098391

`record[A262188(n)]`
-/

namespace A002113.P7937490765738098391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002113.P7937490765738098391

/-! ## A002113.P3823709208187826852

`record[A265525(n)]`
-/

namespace A002113.P3823709208187826852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265525 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002113.P3823709208187826852

/-! ## A002113.P3707154489128831493

`record[A331472(n)]`
-/

namespace A002113.P3707154489128831493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331472 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002113.P3707154489128831493

/-! ## A002113.P5557274874291231396

`eq[0, A056965(n)]`
-/

namespace A002113.P5557274874291231396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002113.P5557274874291231396

/-! ## A002113.P9926272746727461086

`eq[0, A064834(n)]`
-/

namespace A002113.P9926272746727461086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002113.P9926272746727461086

/-! ## A002113.P1226347438971702304

`eq[0, A241173(n)]`
-/

namespace A002113.P1226347438971702304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241173 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002113.P1226347438971702304

/-!
# A002114: Glaisher's H' numbers.

The programs for A002114, there is no canonical definition to state claims against.
-/

/-! ## A002114.P16537634853767040987

`A002112(n+1)/3`
-/

namespace A002114.P16537634853767040987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002112 (n + 1) : ℚ) / 3

end

end A002114.P16537634853767040987

/-! ## A002114.P13973946974982567178

`abs(A210657(n+1)/2)`
-/

namespace A002114.P13973946974982567178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A210657 (n + 1) : ℚ) / 2|

end

end A002114.P13973946974982567178

/-! ## A002114.P10728052292479841681

`record[ratio[A002112(A193592(n))]]`
-/

namespace A002114.P10728052292479841681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002112 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002114.P10728052292479841681

/-! ## A002114.P6318462375743308224

`record[A156179(n)/A228936(n)]`
-/

namespace A002114.P6318462375743308224
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156179 n : ℚ) / (A228936 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002114.P6318462375743308224

/-! ## A002114.P1073670870672262859

`A002112(n+1)%A210657(n+1)`
-/

namespace A002114.P1073670870672262859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002112 (n + 1)) (A210657 (n + 1))

end

end A002114.P1073670870672262859

/-!
# A002115: Generalized Euler numbers.

The programs for A002115, there is no canonical definition to state claims against.
-/

/-! ## A002115.P8150795734986518198

`A178963(3*n)`
-/

namespace A002115.P8150795734986518198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178963 (3 * n)

end

end A002115.P8150795734986518198

/-! ## A002115.P6275557620134589843

`or(1, A178963(A008486(n)))`
-/

namespace A002115.P6275557620134589843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A178963 (A008486 n).toNat)

end

end A002115.P6275557620134589843

/-! ## A002115.P11634848780309323112

`or(1, A178963(A016789(n)-2))`
-/

namespace A002115.P11634848780309323112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A178963 (A016789 n - 2).toNat)

end

end A002115.P11634848780309323112

/-! ## A002115.P2330112989167559814

`A178963(A008486(n))/A000041(C(2, n+2))`
-/

namespace A002115.P2330112989167559814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178963 (A008486 n).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A002115.P2330112989167559814

/-! ## A002115.P8549290055678463776

`A181937(A081271(n))`
-/

namespace A002115.P8549290055678463776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181937 (A081271 n).toNat

end

end A002115.P8549290055678463776

/-!
# A002117: Apéry's number or Apéry's constant zeta(3). Decimal expansion of zeta(3) = Sum_{m >= 1} 1/m^3.

The programs for A002117, there is no canonical definition to state claims against.
-/

/-! ## A002117.P1476478641357919718

`A000007(n)+Δ[A099536(A028310(n))]`
-/

namespace A002117.P1476478641357919718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099536 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A002117.P1476478641357919718

/-! ## A002117.P7986925932424755447

`Δ[A099536(A028310(n))+A057427(n)]`
-/

namespace A002117.P7986925932424755447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099536 (A028310 n).toNat + A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002117.P7986925932424755447

/-! ## A002117.P17985999381978419165

`Δ[A099536(A028310(n))-A054977(n)]`
-/

namespace A002117.P17985999381978419165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099536 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002117.P17985999381978419165

/-! ## A002117.P7227281801362130969

`A099536(n+1)+A000007(n)-A099536(A028310(n))`
-/

namespace A002117.P7227281801362130969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099536 (n + 1) + (A000007 n - A099536 (A028310 n).toNat)

end

end A002117.P7227281801362130969

/-! ## A002117.P13651137389252355364

`A054977(n)*A099536(n+1)-A099536(A028310(n))`
-/

namespace A002117.P13651137389252355364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A099536 (n + 1) - A099536 (A028310 n).toNat

end

end A002117.P13651137389252355364

/-! ## A002117.P16865675504931209686

`A099536(n+1)-A057427(n)*A099536(A028310(n))`
-/

namespace A002117.P16865675504931209686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099536 (n + 1) - A057427 n * A099536 (A028310 n).toNat

end

end A002117.P16865675504931209686

/-! ## A002117.P561093119975308831

`Δ[A099536(A028310(n))%A000079(n)]`
-/

namespace A002117.P561093119975308831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099536 (A028310 n).toNat) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002117.P561093119975308831

/-!
# A002118: 5th powers written backwards.

The programs for A002118, there is no canonical definition to state claims against.
-/

/-! ## A002118.P5026659505643280716

`A004086(n^5)`
-/

namespace A002118.P5026659505643280716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n ^ 5)

end

end A002118.P5026659505643280716

/-! ## A002118.P17736823059595640378

`and(-1, A004086(A000584(n)))`
-/

namespace A002118.P17736823059595640378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A004086 (A000584 n).toNat)

end

end A002118.P17736823059595640378

/-! ## A002118.P8643293099522292153

`and(-1, A004086(A055014(n)))`
-/

namespace A002118.P8643293099522292153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A004086 (A055014 n).toNat)

end

end A002118.P8643293099522292153

/-! ## A002118.P6132138504745826959

`record[A004086(A000584(val(n+1, 2)))]`
-/

namespace A002118.P6132138504745826959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000584 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002118.P6132138504745826959

/-! ## A002118.P10489919487694274546

`record[A004086(A055014(val(n+1, 2)))]`
-/

namespace A002118.P10489919487694274546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A055014 (SequenceMachineLib.valuation (n + 1) 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002118.P10489919487694274546

/-!
# A002119: Bessel polynomial y_n(-2).

The programs for A002119, there is no canonical definition to state claims against.
-/

/-! ## A002119.P9215185904462622565

`A057077(2*n)*A113874(3*n)`
-/

namespace A002119.P9215185904462622565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A113874 (3 * n)

end

end A002119.P9215185904462622565

/-! ## A002119.P2030318410985380063

`A034947(n²+5)*A060475(∑[4*n])`
-/

namespace A002119.P2030318410985380063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n ^ 2 + 5) * A060475 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002119.P2030318410985380063

/-! ## A002119.P17733208998483346812

`A033999(n)*A060475(A046092(n))`
-/

namespace A002119.P17733208998483346812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A060475 (A046092 n).toNat

end

end A002119.P17733208998483346812

/-! ## A002119.P18429214890571718874

`A033999(n)*A060475(A001844(n)-1)`
-/

namespace A002119.P18429214890571718874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A060475 (A001844 n - 1).toNat

end

end A002119.P18429214890571718874

/-!
# A002120: a(1) = 0, a(2) = -2; for n > 2, a(n) + a(n-2) - a(n-3) - a(n-5) - ... - a(n-p) = (-1)^(n+1)*n if n is prime, otherwise = 0, where p = largest prime < n.

The programs for A002120, there is no canonical definition to state claims against.
-/

/-! ## A002120.P13499379910582630256

`A023901(n+1)/A280560(n)`
-/

namespace A002120.P13499379910582630256
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023901 (n + 1) : ℚ) / (A280560 n : ℚ)

end

end A002120.P13499379910582630256

/-! ## A002120.P11207342753789571434

`A023901(n+1)/(2*A033999(n))`
-/

namespace A002120.P11207342753789571434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023901 (n + 1) : ℚ) / (2 * A033999 n : ℚ)

end

end A002120.P11207342753789571434

/-! ## A002120.P1377952239802567224

`A023901(n+1)/(2*A062157(n+1))`
-/

namespace A002120.P1377952239802567224
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023901 (n + 1) : ℚ) / (2 * A062157 (n + 1) : ℚ)

end

end A002120.P1377952239802567224

/-! ## A002120.P6428965042614969346

`A023901(n+1)/A100051(A008585(n))`
-/

namespace A002120.P6428965042614969346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023901 (n + 1) : ℚ) / (A100051 (A008585 n).toNat : ℚ)

end

end A002120.P6428965042614969346

/-! ## A002120.P15762669046068373622

`A023901(n+1)/(A062157(n+1)-A062157(n))`
-/

namespace A002120.P15762669046068373622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023901 (n + 1) : ℚ) / (A062157 (n + 1) - A062157 n : ℚ)

end

end A002120.P15762669046068373622

/-!
# A002124: Number of compositions of n into a sum of odd primes.

The programs for A002124, there is no canonical definition to state claims against.
-/

/-! ## A002124.P15987302947953266424

`A002125(n)-A281853(round(sqrt(n²+1)))`
-/

namespace A002124.P15987302947953266424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002125 n - A281853 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A002124.P15987302947953266424

/-! ## A002124.P12862361521171559037

`A077608(n)-A163533(A251762(n))`
-/

namespace A002124.P12862361521171559037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077608 n - A163533 (A251762 n).toNat

end

end A002124.P12862361521171559037

/-! ## A002124.P15448792549255229134

`A144596(A093414(2*(n+2)))+A077608(n)`
-/

namespace A002124.P15448792549255229134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144596 (A093414 (2 * (n + 2))).toNat + A077608 n

end

end A002124.P15448792549255229134

/-! ## A002124.P3432557343327394070

`A077608(n)%Δ[A099899(n)]`
-/

namespace A002124.P3432557343327394070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077608 n) (f1 (n + 1) - f1 n)

end

end A002124.P3432557343327394070

/-! ## A002124.P5878145447192159665

`A077608(n)^A370136(or(1, and(n, -(n+2))))`
-/

namespace A002124.P5878145447192159665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077608 n : ℚ) ^ (A370136 (Int.lor 1 (Int.land (n : ℤ) (-(n + 2 : ℤ)))).toNat : ℤ)

end

end A002124.P5878145447192159665

/-!
# A002125: a(n) = Sum_{k=0..n} f(k)*f(n-k) where f(k) = A002124(k).

The programs for A002125, there is no canonical definition to state claims against.
-/

/-! ## A002125.P9754269984246338485

`A281853(round(acot(n)+n))+A002124(n)`
-/

namespace A002125.P9754269984246338485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281853 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat + A002124 n

end

end A002125.P9754269984246338485

/-! ## A002125.P11605781026911237378

`A281853(round(sqrt(n²+1)))+A002124(n)`
-/

namespace A002125.P11605781026911237378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281853 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A002124 n

end

end A002125.P11605781026911237378

/-! ## A002125.P4411606606604235255

`A281853(A233583(n+1))+A001222(2^A077608(n))`
-/

namespace A002125.P4411606606604235255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281853 (A233583 (n + 1)).toNat + A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A077608 n : ℤ))).toNat

end

end A002125.P4411606606604235255

/-! ## A002125.P16546142678002825574

`A281853(A028310(n))+A077608(A001222(2^n))`
-/

namespace A002125.P16546142678002825574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281853 (A028310 n).toNat + A077608 (A001222 (2 ^ n)).toNat

end

end A002125.P16546142678002825574

/-! ## A002125.P13166318742416143292

`A281853(A233583(n+1))+A056239(2^A077608(n))`
-/

namespace A002125.P13166318742416143292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281853 (A233583 (n + 1)).toNat + A056239 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A077608 n : ℤ))).toNat

end

end A002125.P13166318742416143292

/-!
# A002126: Number of solutions to n=p+q where p and q are primes or zero.

The programs for A002126, there is no canonical definition to state claims against.
-/

/-! ## A002126.P4857282168895165350

`A347552(floor(acot(n)+n))+A347550(n)`
-/

namespace A002126.P4857282168895165350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347552 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat + A347550 n

end

end A002126.P4857282168895165350

/-! ## A002126.P1767195141776730165

`A347552(floor(sqrt(n²+1)))+A347550(n)`
-/

namespace A002126.P1767195141776730165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347552 (Nat.sqrt (n ^ 2 + 1)) + A347550 n

end

end A002126.P1767195141776730165

/-! ## A002126.P4244818261761815200

`char[A051698(n)]+A347550(n)+A061358(n)`
-/

namespace A002126.P4244818261761815200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A347550 n + A061358 n)

end

end A002126.P4244818261761815200

/-! ## A002126.P4678181808764421713

`A061358(n)+A347550(n)+char[A151800(n)]`
-/

namespace A002126.P4678181808764421713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 n + (A347550 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A002126.P4678181808764421713

/-! ## A002126.P15887308544923019851

`char[A000040(n+1)]+A347550(n)+A061358(n)`
-/

namespace A002126.P15887308544923019851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A347550 n + A061358 n)

end

end A002126.P15887308544923019851

/-! ## A002126.P6824400340546257107

`char[A000705(n+1)]+A347550(n)+A061358(n)`
-/

namespace A002126.P6824400340546257107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000705 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A347550 n + A061358 n)

end

end A002126.P6824400340546257107

/-! ## A002126.P11800224735243920629

`char[A139171(n+1)]+A347550(n)+A061358(n)`
-/

namespace A002126.P11800224735243920629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139171 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A347550 n + A061358 n)

end

end A002126.P11800224735243920629

/-! ## A002126.P5314786519360252394

`char[A006530(n+2)]+A347550(n)+A061358(n)`
-/

namespace A002126.P5314786519360252394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A347550 n + A061358 n)

end

end A002126.P5314786519360252394

/-! ## A002126.P9323510288230903064

`char[A008578(n+2)]+A347550(n)+A061358(n)`
-/

namespace A002126.P9323510288230903064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A347550 n + A061358 n)

end

end A002126.P9323510288230903064

/-! ## A002126.P14414437029358045014

`char[A020639(n+2)]+A347550(n)+A061358(n)`
-/

namespace A002126.P14414437029358045014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (A347550 n + A061358 n)

end

end A002126.P14414437029358045014

/-!
# A002127: MacMahon's generalized sum of divisors function.

The programs for A002127, there is no canonical definition to state claims against.
-/

/-! ## A002127.P8280505235204504018

`A060043(A006463(n+4)-1)`
-/

namespace A002127.P8280505235204504018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060043 (A006463 (n + 4) - 1).toNat

end

end A002127.P8280505235204504018

/-!
# A002128: MacMahon's generalized sum of divisors function.

The programs for A002128, there is no canonical definition to state claims against.
-/

/-! ## A002128.P9075500886088829709

`A220909(n)+A133181(A027187(n+3))`
-/

namespace A002128.P9075500886088829709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220909 n + A133181 (A027187 (n + 3)).toNat

end

end A002128.P9075500886088829709

/-!
# A002129: Generalized sum of divisors function: excess of sum of odd divisors of n over sum of even divisors of n.

The programs for A002129, the canonical program `A002129.P14132575705783117531` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002129 has offset 1).

The definition of A002129 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002129.P14132575705783117531

`A000593(n+1)-A146076(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A002129

/-- `A000593(n+1)-A146076(n+1)` -/
def P14132575705783117531.Spec : Prop :=
  ∀ n, P14132575705783117531.a n = A002129 (n + 1)

theorem P14132575705783117531.correct : P14132575705783117531.Spec := by
  intro n
  simp only [A002129, Nat.add_sub_cancel]

end A002129

/-! ## A002129.P4916044747221752494

`∑{d}[n+1, #]/xor(n, n+1)-2*∑{d}[∑[n]%(n+1), #]`
-/

namespace A002129.P4916044747221752494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ) - ((2 * (∑ d ∈ Nat.divisors (f2 n), d) : ℕ) : ℚ)

end

end A002129.P4916044747221752494

namespace A002129

/-- `∑{d}[n+1, #]/xor(n, n+1)-2*∑{d}[∑[n]%(n+1), #]` -/
def P4916044747221752494.Spec : Prop :=
  ∀ n, P4916044747221752494.a n = (A002129 (n + 1) : ℚ)

end A002129

/-! ## A002129.P10846325640932291716

`A122858(n+1)/8`
-/

namespace A002129.P10846325640932291716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122858 (n + 1) : ℚ) / 8

end

end A002129.P10846325640932291716

namespace A002129

/-- `A122858(n+1)/8` -/
def P10846325640932291716.Spec : Prop :=
  ∀ n, P10846325640932291716.a n = (A002129 (n + 1) : ℚ)

end A002129

/-! ## A002129.P14738762505273825184

`A326238(n+1)/(n+1)`
-/

namespace A002129.P14738762505273825184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326238 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A002129.P14738762505273825184

namespace A002129

/-- `A326238(n+1)/(n+1)` -/
def P14738762505273825184.Spec : Prop :=
  ∀ n, P14738762505273825184.a n = (A002129 (n + 1) : ℚ)

end A002129

/-! ## A002129.P15432534641788791620

`∑{d}[n+1, #*A062157(#)]`
-/

namespace A002129.P15432534641788791620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A062157 d

end

end A002129.P15432534641788791620

namespace A002129

/-- `∑{d}[n+1, #*A062157(#)]` -/
def P15432534641788791620.Spec : Prop :=
  ∀ n, P15432534641788791620.a n = A002129 (n + 1)

end A002129

/-! ## A002129.P12296287045770424905

`(-1)^n*A113184(n+1)`
-/

namespace A002129.P12296287045770424905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A113184 (n + 1)

end

end A002129.P12296287045770424905

namespace A002129

/-- `(-1)^n*A113184(n+1)` -/
def P12296287045770424905.Spec : Prop :=
  ∀ n, P12296287045770424905.a n = A002129 (n + 1)

end A002129

/-! ## A002129.P8381330046942367617

`∑{d}[n+1, #*A033999(#-1)]`
-/

namespace A002129.P8381330046942367617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A033999 (d - 1)

end

end A002129.P8381330046942367617

namespace A002129

/-- `∑{d}[n+1, #*A033999(#-1)]` -/
def P8381330046942367617.Spec : Prop :=
  ∀ n, P8381330046942367617.a n = A002129 (n + 1)

end A002129

/-! ## A002129.P17019163020680225533

`A074400((n+1)/and(n+1, -(n+1)))-∑{d}[n+1, #]`
-/

namespace A002129.P17019163020680225533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074400 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A002129.P17019163020680225533

namespace A002129

/-- `A074400((n+1)/and(n+1, -(n+1)))-∑{d}[n+1, #]` -/
def P17019163020680225533.Spec : Prop :=
  ∀ n, P17019163020680225533.a n = A002129 (n + 1)

end A002129

/-! ## A002129.P14483362959397427011

`A363022(n+1)+A320900(n+1)`
-/

namespace A002129.P14483362959397427011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363022 (n + 1) + A320900 (n + 1)

end

end A002129.P14483362959397427011

namespace A002129

/-- `A363022(n+1)+A320900(n+1)` -/
def P14483362959397427011.Spec : Prop :=
  ∀ n, P14483362959397427011.a n = A002129 (n + 1)

end A002129

/-! ## A002129.P16084010479100640526

`A054785(n+1)-A215947(n+1)`
-/

namespace A002129.P16084010479100640526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054785 (n + 1) - A215947 (n + 1)

end

end A002129.P16084010479100640526

namespace A002129

/-- `A054785(n+1)-A215947(n+1)` -/
def P16084010479100640526.Spec : Prop :=
  ∀ n, P16084010479100640526.a n = A002129 (n + 1)

end A002129

/-! ## A002129.P10617301281179985191

`A048272(n+1)-A325940(n+1)`
-/

namespace A002129.P10617301281179985191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (n + 1) - A325940 (n + 1)

end

end A002129.P10617301281179985191

namespace A002129

/-- `A048272(n+1)-A325940(n+1)` -/
def P10617301281179985191.Spec : Prop :=
  ∀ n, P10617301281179985191.a n = A002129 (n + 1)

end A002129

/-! ## A002129.P16922558260872062453

`A080278(n+1)*A131947(n+1)`
-/

namespace A002129.P16922558260872062453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080278 (n + 1) * A131947 (n + 1)

end

end A002129.P16922558260872062453

namespace A002129

/-- `A080278(n+1)*A131947(n+1)` -/
def P16922558260872062453.Spec : Prop :=
  ∀ n, P16922558260872062453.a n = A002129 (n + 1)

end A002129

/-! ## A002129.P6632944624632109083

`A162419(n+1)/A143348(n+1)`
-/

namespace A002129.P6632944624632109083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162419 (n + 1) : ℚ) / (A143348 (n + 1) : ℚ)

end

end A002129.P6632944624632109083

namespace A002129

/-- `A162419(n+1)/A143348(n+1)` -/
def P6632944624632109083.Spec : Prop :=
  ∀ n, P6632944624632109083.a n = (A002129 (n + 1) : ℚ)

end A002129

/-! ## A002129.P3919590885666655684

`A321543(n+1)+2*A363022(n+1)`
-/

namespace A002129.P3919590885666655684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321543 (n + 1) + 2 * A363022 (n + 1)

end

end A002129.P3919590885666655684

namespace A002129

/-- `A321543(n+1)+2*A363022(n+1)` -/
def P3919590885666655684.Spec : Prop :=
  ∀ n, P3919590885666655684.a n = A002129 (n + 1)

end A002129

/-! ## A002129.P12157011094773464363

`2*A000593(n+1)-A000203(n+1)`
-/

namespace A002129.P12157011094773464363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000593 (n + 1) - A000203 (n + 1)

end

end A002129.P12157011094773464363

namespace A002129

/-- `2*A000593(n+1)-A000203(n+1)` -/
def P12157011094773464363.Spec : Prop :=
  ∀ n, P12157011094773464363.a n = A002129 (n + 1)

end A002129

/-! ## A002129.P15927903977769341829

`(2-A038712(n+1))*A000593(n+1)`
-/

namespace A002129.P15927903977769341829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A038712 (n + 1)) * A000593 (n + 1)

end

end A002129.P15927903977769341829

namespace A002129

/-- `(2-A038712(n+1))*A000593(n+1)` -/
def P15927903977769341829.Spec : Prop :=
  ∀ n, P15927903977769341829.a n = A002129 (n + 1)

end A002129

/-! ## A002129.P3053046521108813359

`A000203(n+1)-2*A146076(n+1)`
-/

namespace A002129.P3053046521108813359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - 2 * A146076 (n + 1)

end

end A002129.P3053046521108813359

namespace A002129

/-- `A000203(n+1)-2*A146076(n+1)` -/
def P3053046521108813359.Spec : Prop :=
  ∀ n, P3053046521108813359.a n = A002129 (n + 1)

end A002129

/-! ## A002129.P12720384734478842638

`2*A054785(n+1)-A272027(n+1)`
-/

namespace A002129.P12720384734478842638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054785 (n + 1) - A272027 (n + 1)

end

end A002129.P12720384734478842638

namespace A002129

/-- `2*A054785(n+1)-A272027(n+1)` -/
def P12720384734478842638.Spec : Prop :=
  ∀ n, P12720384734478842638.a n = A002129 (n + 1)

end A002129

/-! ## A002129.P11750975982229290578

`2*A320900(n+1)-A321543(n+1)`
-/

namespace A002129.P11750975982229290578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A320900 (n + 1) - A321543 (n + 1)

end

end A002129.P11750975982229290578

namespace A002129

/-- `2*A320900(n+1)-A321543(n+1)` -/
def P11750975982229290578.Spec : Prop :=
  ∀ n, P11750975982229290578.a n = A002129 (n + 1)

end A002129

/-! ## A002129.P9671685894436416078

`∑{d}[n+1, A000265(#)*A118827((n+1)/#)]`
-/

namespace A002129.P9671685894436416078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000265 d * A118827 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A002129.P9671685894436416078

namespace A002129

/-- `∑{d}[n+1, A000265(#)*A118827((n+1)/#)]` -/
def P9671685894436416078.Spec : Prop :=
  ∀ n, P9671685894436416078.a n = A002129 (n + 1)

end A002129

/-!
# A002130: Generalized sum of divisors function.

The programs for A002130, there is no canonical definition to state claims against.
-/

/-! ## A002130.P7480341821618538695

`A060044(A006463(n+4)-1)`
-/

namespace A002130.P7480341821618538695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060044 (A006463 (n + 4) - 1).toNat

end

end A002130.P7480341821618538695

/-!
# A002131: Sum of divisors d of n such that n/d is odd.

The programs for A002131, the canonical program `A002131.P10234543156685478956` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002131 has offset 1).

The definition of A002131 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002131.P10234543156685478956

`(A000203(n+1)+A000593(n+1))/2`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A002131

/-- `(A000203(n+1)+A000593(n+1))/2` -/
def P10234543156685478956.Spec : Prop :=
  ∀ n, P10234543156685478956.a n = (A002131 (n + 1) : ℚ)

end A002131

/-! ## A002131.P6831454450494388804

`∑{d}[n+1, lcm(2, #)/2]`
-/

namespace A002131.P6831454450494388804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (Nat.lcm 2 d : ℚ) / 2

end

end A002131.P6831454450494388804

namespace A002131

/-- `∑{d}[n+1, lcm(2, #)/2]` -/
def P6831454450494388804.Spec : Prop :=
  ∀ n, P6831454450494388804.a n = (A002131 (n + 1) : ℚ)

end A002131

/-! ## A002131.P13383822892129818794

`∑{d}[n+1, #/gcd(2, #)]`
-/

namespace A002131.P13383822892129818794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / (Nat.gcd 2 d : ℚ)

end

end A002131.P13383822892129818794

namespace A002131

/-- `∑{d}[n+1, #/gcd(2, #)]` -/
def P13383822892129818794.Spec : Prop :=
  ∀ n, P13383822892129818794.a n = (A002131 (n + 1) : ℚ)

end A002131

/-! ## A002131.P2468415840150236287

`∑{d}[2*(n+1), (n+1)%#]`
-/

namespace A002131.P2468415840150236287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1) % d

end

end A002131.P2468415840150236287

namespace A002131

/-- `∑{d}[2*(n+1), (n+1)%#]` -/
def P2468415840150236287.Spec : Prop :=
  ∀ n, (P2468415840150236287.a n : ℤ) = A002131 (n + 1)

end A002131

/-! ## A002131.P16196972251701931742

`(∑{d}[n+1, #]+∑{d}[n+1, #]/xor(n, n+1))/2`
-/

namespace A002131.P16196972251701931742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℚ) + ((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (Nat.xor n (n + 1) : ℚ)) / 2

end

end A002131.P16196972251701931742

namespace A002131

/-- `(∑{d}[n+1, #]+∑{d}[n+1, #]/xor(n, n+1))/2` -/
def P16196972251701931742.Spec : Prop :=
  ∀ n, P16196972251701931742.a n = (A002131 (n + 1) : ℚ)

end A002131

/-! ## A002131.P16029700018704901973

`and(n+1, -(n+1))*∑{d}[(n+1)/and(n+1, -(n+1)), #]`
-/

namespace A002131.P16029700018704901973
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) * ((∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d : ℕ) : ℤ)

end

end A002131.P16029700018704901973

namespace A002131

/-- `and(n+1, -(n+1))*∑{d}[(n+1)/and(n+1, -(n+1)), #]` -/
def P16029700018704901973.Spec : Prop :=
  ∀ n, P16029700018704901973.a n = A002131 (n + 1)

end A002131

/-! ## A002131.P3065642483951078279

`abs(A186690(n+1))`
-/

namespace A002131.P3065642483951078279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A186690 (n + 1)|

end

end A002131.P3065642483951078279

namespace A002131

/-- `abs(A186690(n+1))` -/
def P3065642483951078279.Spec : Prop :=
  ∀ n, P3065642483951078279.a n = A002131 (n + 1)

end A002131

/-! ## A002131.P12944142314825770007

`A054785(n+1)/2`
-/

namespace A002131.P12944142314825770007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054785 (n + 1) : ℚ) / 2

end

end A002131.P12944142314825770007

namespace A002131

/-- `A054785(n+1)/2` -/
def P12944142314825770007.Spec : Prop :=
  ∀ n, P12944142314825770007.a n = (A002131 (n + 1) : ℚ)

end A002131

/-! ## A002131.P2932597444688394160

`∑{d}[n+1, A026741(#)]`
-/

namespace A002131.P2932597444688394160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A026741 d

end

end A002131.P2932597444688394160

namespace A002131

/-- `∑{d}[n+1, A026741(#)]` -/
def P2932597444688394160.Spec : Prop :=
  ∀ n, P2932597444688394160.a n = A002131 (n + 1)

end A002131

/-! ## A002131.P11690798256743680329

`A326066(2*(n+1))/2`
-/

namespace A002131.P11690798256743680329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326066 (2 * (n + 1)) : ℚ) / 2

end

end A002131.P11690798256743680329

namespace A002131

/-- `A326066(2*(n+1))/2` -/
def P11690798256743680329.Spec : Prop :=
  ∀ n, P11690798256743680329.a n = (A002131 (n + 1) : ℚ)

end A002131

/-! ## A002131.P1821071027397930161

`A228274(n+1)/(n+1)`
-/

namespace A002131.P1821071027397930161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228274 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A002131.P1821071027397930161

namespace A002131

/-- `A228274(n+1)/(n+1)` -/
def P1821071027397930161.Spec : Prop :=
  ∀ n, P1821071027397930161.a n = (A002131 (n + 1) : ℚ)

end A002131

/-! ## A002131.P3583630035593716810

`∑{d}[n+1, #*A059841((n+1)/#-1)]`
-/

namespace A002131.P3583630035593716810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A059841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A002131.P3583630035593716810

namespace A002131

/-- `∑{d}[n+1, #*A059841((n+1)/#-1)]` -/
def P3583630035593716810.Spec : Prop :=
  ∀ n, P3583630035593716810.a n = A002131 (n + 1)

end A002131

/-! ## A002131.P13634780899782198910

`and(n+1, -(n+1))*A000203((n+1)/and(n+1, -(n+1)))`
-/

namespace A002131.P13634780899782198910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) * A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A002131.P13634780899782198910

namespace A002131

/-- `and(n+1, -(n+1))*A000203((n+1)/and(n+1, -(n+1)))` -/
def P13634780899782198910.Spec : Prop :=
  ∀ n, P13634780899782198910.a n = A002131 (n + 1)

end A002131

/-! ## A002131.P13120176953046657407

`A352047(n+1)+A059841(n)`
-/

namespace A002131.P13120176953046657407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352047 (n + 1) + A059841 n

end

end A002131.P13120176953046657407

namespace A002131

/-- `A352047(n+1)+A059841(n)` -/
def P13120176953046657407.Spec : Prop :=
  ∀ n, P13120176953046657407.a n = A002131 (n + 1)

end A002131

/-! ## A002131.P3760484547799854278

`A033999(n)*A186690(n+1)`
-/

namespace A002131.P3760484547799854278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A186690 (n + 1)

end

end A002131.P3760484547799854278

namespace A002131

/-- `A033999(n)*A186690(n+1)` -/
def P3760484547799854278.Spec : Prop :=
  ∀ n, P3760484547799854278.a n = A002131 (n + 1)

end A002131

/-! ## A002131.P10079222066995273570

`A000034(n)*A327095(n+1)`
-/

namespace A002131.P10079222066995273570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A327095 (n + 1)

end

end A002131.P10079222066995273570

namespace A002131

/-- `A000034(n)*A327095(n+1)` -/
def P10079222066995273570.Spec : Prop :=
  ∀ n, P10079222066995273570.a n = A002131 (n + 1)

end A002131

/-! ## A002131.P13989898891069738573

`gcd(A000038(n), A186690(n+1))`
-/

namespace A002131.P13989898891069738573
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A186690 (n + 1))

end

end A002131.P13989898891069738573

namespace A002131

/-- `gcd(A000038(n), A186690(n+1))` -/
def P13989898891069738573.Spec : Prop :=
  ∀ n, (P13989898891069738573.a n : ℤ) = A002131 (n + 1)

end A002131

/-! ## A002131.P17770948480832955695

`lcm(A000034(n), A186690(n+1))`
-/

namespace A002131.P17770948480832955695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A186690 (n + 1))

end

end A002131.P17770948480832955695

namespace A002131

/-- `lcm(A000034(n), A186690(n+1))` -/
def P17770948480832955695.Spec : Prop :=
  ∀ n, (P17770948480832955695.a n : ℤ) = A002131 (n + 1)

end A002131

/-! ## A002131.P15657590760053573229

`A050464(n+1)+A050460(n+1)`
-/

namespace A002131.P15657590760053573229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050464 (n + 1) + A050460 (n + 1)

end

end A002131.P15657590760053573229

namespace A002131

/-- `A050464(n+1)+A050460(n+1)` -/
def P15657590760053573229.Spec : Prop :=
  ∀ n, P15657590760053573229.a n = A002131 (n + 1)

end A002131

/-! ## A002131.P5049572309853912413

`A113415(n+1)+A086670(n+1)`
-/

namespace A002131.P5049572309853912413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113415 (n + 1) + A086670 (n + 1)

end

end A002131.P5049572309853912413

namespace A002131

/-- `A113415(n+1)+A086670(n+1)` -/
def P5049572309853912413.Spec : Prop :=
  ∀ n, P5049572309853912413.a n = A002131 (n + 1)

end A002131

/-!
# A002132: Generalized sum of divisors function.

The programs for A002132, there is no canonical definition to state claims against.
-/

/-! ## A002132.P10301622501961019486

`record[A060047(n+1)%A018036(A191395(n))]`
-/

namespace A002132.P10301622501961019486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060047 (n + 1)) (A018036 (A191395 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002132.P10301622501961019486

/-! ## A002132.P7593756790784735045

`record[A060047(n+5)%A116657(n+3)]`
-/

namespace A002132.P7593756790784735045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060047 (n + 5)) (A116657 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002132.P7593756790784735045

/-! ## A002132.P17170640006800070835

`record[A060047(n+4)%A268448(n+2)]`
-/

namespace A002132.P17170640006800070835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060047 (n + 4)) (A268448 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002132.P17170640006800070835

/-! ## A002132.P15976404644577008017

`record[A060047(n+1)%A171816(n)]`
-/

namespace A002132.P15976404644577008017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060047 (n + 1)) (A171816 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002132.P15976404644577008017

/-! ## A002132.P18082806787668204942

`∑[A053827(∑[A293266(n)])]`
-/

namespace A002132.P18082806787668204942
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293266 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053827 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002132.P18082806787668204942

/-!
# A002133: Number of partitions of n with exactly two part sizes.

The programs for A002133, there is no canonical definition to state claims against.
-/

/-! ## A002133.P4039913953171117705

`∑{d}[n+1, A274108(#)]`
-/

namespace A002133.P4039913953171117705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A274108 d

end

end A002133.P4039913953171117705

/-! ## A002133.P8082387140123140508

`A265250(n+1)-Δ[A006218(n)]`
-/

namespace A002133.P8082387140123140508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265250 (n + 1) - (f1 (n + 1) - f1 n)

end

end A002133.P8082387140123140508

/-! ## A002133.P12101419094698242676

`A059819(n+1)-A000203(n+1)`
-/

namespace A002133.P12101419094698242676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059819 (n + 1) - A000203 (n + 1)

end

end A002133.P12101419094698242676

/-! ## A002133.P17605348486302056754

`A265250(n+1)-A000005(n+1)`
-/

namespace A002133.P17605348486302056754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265250 (n + 1) - A000005 (n + 1)

end

end A002133.P17605348486302056754

/-! ## A002133.P13142491100894062706

`A274628(n+1)-A129235(n+1)`
-/

namespace A002133.P13142491100894062706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274628 (n + 1) - A129235 (n + 1)

end

end A002133.P13142491100894062706

/-! ## A002133.P1236945738846435995

`2*A270060(n+1)-A100073(n+1)`
-/

namespace A002133.P1236945738846435995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A270060 (n + 1) - A100073 (n + 1)

end

end A002133.P1236945738846435995

/-! ## A002133.P13390527436562406374

`∑{d}[n+1, A110571(#)/2-#]`
-/

namespace A002133.P13390527436562406374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((A110571 d : ℚ) / 2 - (d : ℚ))

end

end A002133.P13390527436562406374

/-! ## A002133.P17432733042569798139

`A367588(n+1)+A182473(n+1)`
-/

namespace A002133.P17432733042569798139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367588 (n + 1) + A182473 (n + 1)

end

end A002133.P17432733042569798139

/-! ## A002133.P14778100469840703343

`A238130(A000124(n+1))/2`
-/

namespace A002133.P14778100469840703343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238130 (A000124 (n + 1)).toNat : ℚ) / 2

end

end A002133.P14778100469840703343

/-! ## A002133.P14158770684697371475

`A238130(A000096(n)+2)/2`
-/

namespace A002133.P14158770684697371475
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238130 (A000096 n + 2).toNat : ℚ) / 2

end

end A002133.P14158770684697371475

/-!
# A002134: Generalized divisor function. Number of partitions of n with exactly three part sizes.

The programs for A002134, there is no canonical definition to state claims against.
-/

/-! ## A002134.P17291282740669277188

`A309058(n+6)-A265250(n+6)`
-/

namespace A002134.P17291282740669277188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309058 (n + 6) - A265250 (n + 6)

end

end A002134.P17291282740669277188

/-! ## A002134.P14718596736212597353

`A159296(∑[∑[A124725(n)]])`
-/

namespace A002134.P14718596736212597353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124725 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159296 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002134.P14718596736212597353

/-! ## A002134.P13799193264330126614

`∑[∑[A340831(A092082(n+2))]]`
-/

namespace A002134.P13799193264330126614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340831 (A092082 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002134.P13799193264330126614

/-!
# A002135: Number of terms in a symmetrical determinant: a(n) = n*a(n-1) - (n-1)*(n-2)*a(n-3)/2.

The programs for A002135, there is no canonical definition to state claims against.
-/

/-! ## A002135.P11431021761884725447

`n*a(n-1)-(n-1)*(n-2)*a(n-3)/2` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A002135.P11431021761884725447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (n : ℚ) * a (n - 1) - ((n : ℤ) - 1 : ℚ) * (((n : ℤ) - 2 : ℚ) * (a (n - 3) / 2))

end

end A002135.P11431021761884725447

/-! ## A002135.P4597711471313790111

`A260338(∑[n])`
-/

namespace A002135.P4597711471313790111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260338 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002135.P4597711471313790111

/-! ## A002135.P14986279229423812818

`A059424(n)+A059423(n)`
-/

namespace A002135.P14986279229423812818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059424 n + A059423 n

end

end A002135.P14986279229423812818

/-! ## A002135.P14804294043598107313

`A059422(n)+2*A059424(n)`
-/

namespace A002135.P14804294043598107313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059422 n + 2 * A059424 n

end

end A002135.P14804294043598107313

/-! ## A002135.P9052621164628286421

`2*A059423(n)-A059422(n)`
-/

namespace A002135.P9052621164628286421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059423 n - A059422 n

end

end A002135.P9052621164628286421

/-! ## A002135.P18394240946742257336

`or(A000035(n), A260338(A000217(n)))`
-/

namespace A002135.P18394240946742257336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A260338 (A000217 n).toNat)

end

end A002135.P18394240946742257336

/-! ## A002135.P12668815574122001640

`lcm(A153881(n+1), A260338(A000217(n)))`
-/

namespace A002135.P12668815574122001640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A153881 (n + 1)) (A260338 (A000217 n).toNat)

end

end A002135.P12668815574122001640

/-! ## A002135.P10282659542491397073

`A260338(A000217(n))%A066166(n+2)`
-/

namespace A002135.P10282659542491397073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260338 (A000217 n).toNat) (A066166 (n + 2))

end

end A002135.P10282659542491397073

/-!
# A002136: Matrices with 2 rows.

The programs for A002136, there is no canonical definition to state claims against.
-/

/-! ## A002136.P14248115630552365733

`A260338(∑[n+1]+1)`
-/

namespace A002136.P14248115630552365733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260338 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A002136.P14248115630552365733

/-! ## A002136.P16047653951035682898

`A002135(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A002136.P16047653951035682898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002135 n + (n : ℤ) * a (n - 1)

end

end A002136.P16047653951035682898

/-! ## A002136.P13037240374648927699

`or(A000007(n), A260338(A134869(n+1)))`
-/

namespace A002136.P13037240374648927699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A260338 (A134869 (n + 1)).toNat)

end

end A002136.P13037240374648927699

/-! ## A002136.P15164898392921363750

`A260338(A134869(n+1))+A000007(n+1)`
-/

namespace A002136.P15164898392921363750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260338 (A134869 (n + 1)).toNat + A000007 (n + 1)

end

end A002136.P15164898392921363750

/-! ## A002136.P4986374204144924079

`A260338(A134869(n+1))^A001221(A048883(n))`
-/

namespace A002136.P4986374204144924079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260338 (A134869 (n + 1)).toNat : ℚ) ^ (A001221 (A048883 n).toNat : ℤ)

end

end A002136.P4986374204144924079

/-! ## A002136.P15876382623862270739

`A095345(2*n+1)*A260338(A134869(n+1))`
-/

namespace A002136.P15876382623862270739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095345 (2 * n + 1) * A260338 (A134869 (n + 1)).toNat

end

end A002136.P15876382623862270739

/-!
# A002137: Number of n X n symmetric matrices with nonnegative integer entries, trace 0 and all row sums 2.

The programs for A002137, there is no canonical definition to state claims against.
-/

/-! ## A002137.P8254419803028615458

`(n-1)*(a(n-1)+a(n-2))-(n-1)*(n-2)*a(n-3)/2` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A002137.P8254419803028615458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  ((n : ℤ) - 1 : ℚ) * (a (n - 1) + a (n - 2)) - ((n : ℤ) - 1 : ℚ) * (((n : ℤ) - 2 : ℚ) * (a (n - 3) / 2))

end

end A002137.P8254419803028615458

/-! ## A002137.P7114770811033649402

`A095693(∑[n]+n)`
-/

namespace A002137.P7114770811033649402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095693 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A002137.P7114770811033649402

/-! ## A002137.P4956216009885931098

`gcd(A000038(n), A095693(A000096(n)))`
-/

namespace A002137.P4956216009885931098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A095693 (A000096 n).toNat)

end

end A002137.P4956216009885931098

/-! ## A002137.P17823363260007002254

`A095693(A000096(n))+A000038(2*n+3)`
-/

namespace A002137.P17823363260007002254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095693 (A000096 n).toNat + A000038 (2 * n + 3)

end

end A002137.P17823363260007002254

/-! ## A002137.P6594131122717014892

`A095693(A000096(n))%A219467(2*n+3)`
-/

namespace A002137.P6594131122717014892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095693 (A000096 n).toNat) (A219467 (2 * n + 3))

end

end A002137.P6594131122717014892

/-!
# A002138: 6th powers written backwards.

The programs for A002138, there is no canonical definition to state claims against.
-/

/-! ## A002138.P7642595717751374536

`A319603(n²)-n^6`
-/

namespace A002138.P7642595717751374536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319603 (n ^ 2) - (n ^ 6 : ℤ)

end

end A002138.P7642595717751374536

/-! ## A002138.P2616601229592444405

`ceil(sin(n)²)*A004165(A253909(n))`
-/

namespace A002138.P2616601229592444405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * A004165 (A253909 n).toNat

end

end A002138.P2616601229592444405

/-! ## A002138.P7405312233558803767

`A004165(n^ceil(atan(n)))-A000007(n)`
-/

namespace A002138.P7405312233558803767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004165 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat - A000007 n

end

end A002138.P7405312233558803767

/-! ## A002138.P9119681392633939924

`A057428(n)²*A004165(n^ceil(atan(n)))`
-/

namespace A002138.P9119681392633939924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A004165 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

end

end A002138.P9119681392633939924

/-! ## A002138.P5866736055742525863

`A004165((abs(1-n)+1)²)*A057427(n)`
-/

namespace A002138.P5866736055742525863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004165 ((|1 - (n : ℤ)| + 1) ^ 2).toNat * A057427 n

end

end A002138.P5866736055742525863

/-! ## A002138.P162525013308006895

`A004165(n^ceil(atan(n)))+n-A028310(n)`
-/

namespace A002138.P162525013308006895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004165 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat + (n : ℤ) - A028310 n

end

end A002138.P162525013308006895

/-! ## A002138.P10696695866194940952

`A004165(A253909(n))-A000007(n)`
-/

namespace A002138.P10696695866194940952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004165 (A253909 n).toNat - A000007 n

end

end A002138.P10696695866194940952

/-! ## A002138.P735626087191651586

`lcm(1-A000122(n), A004165(A253909(n)))`
-/

namespace A002138.P735626087191651586
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A000122 n) (A004165 (A253909 n).toNat)

end

end A002138.P735626087191651586

/-! ## A002138.P15877827449390047046

`A004165(A253909(n))+1-gcd(2, A000040(n+1))`
-/

namespace A002138.P15877827449390047046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004165 (A253909 n).toNat + 1 - (Int.gcd 2 (A000040 (n + 1)) : ℤ)

end

end A002138.P15877827449390047046

/-! ## A002138.P1011334976393593771

`A004165(A253909(n))-A129308(A000040(n+1))`
-/

namespace A002138.P1011334976393593771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004165 (A253909 n).toNat - A129308 (A000040 (n + 1)).toNat

end

end A002138.P1011334976393593771

/-! ## A002138.P5737515122381324898

`A004165(A253909(n))-A349127(A000040(n+1)-1)`
-/

namespace A002138.P5737515122381324898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004165 (A253909 n).toNat - A349127 (A000040 (n + 1) - 1).toNat

end

end A002138.P5737515122381324898

/-! ## A002138.P2081415610496113521

`A004165(A253909(n))-A129308(A014692(n+1)+n)`
-/

namespace A002138.P2081415610496113521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004165 (A253909 n).toNat - A129308 (A014692 (n + 1) + (n : ℤ)).toNat

end

end A002138.P2081415610496113521

/-!
# A002140: 7th powers written backwards.

The programs for A002140, there is no canonical definition to state claims against.
-/

/-! ## A002140.P293398878912666481

`A004086(n^7)`
-/

namespace A002140.P293398878912666481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (n ^ 7)

end

end A002140.P293398878912666481

/-!
# A002142: Primes p == 1 (mod 4) where class number of Q(sqrt p) increases.

The programs for A002142, there is no canonical definition to state claims against.
-/

/-! ## A002142.P7689414754638216459

`p?[A081364(n+1)%p?[A094614(n+1)]]`
-/

namespace A002142.P7689414754638216459
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094614 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081364 (n + 1)) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002142.P7689414754638216459

/-! ## A002142.P17041776713138387484

`p?[A081364(2*n+1)%A269061(n+1)]`
-/

namespace A002142.P17041776713138387484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081364 (2 * n + 1)) (A269061 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002142.P17041776713138387484

/-! ## A002142.P17786667986475636546

`A355878(C(A228626(n+1), n^(n%2)+2)+n)`
-/

namespace A002142.P17786667986475636546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355878 (Nat.choose (A228626 (n + 1)).toNat (n ^ (n % 2) + 2) + n)

end

end A002142.P17786667986475636546

/-!
# A002143: Class numbers h(-p) where p runs through the primes p == 3 (mod 4).

The programs for A002143, there is no canonical definition to state claims against.
-/

/-! ## A002143.P5071406260495800072

`A355879(A080148(n+1))`
-/

namespace A002143.P5071406260495800072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355879 (A080148 (n + 1)).toNat

end

end A002143.P5071406260495800072

/-! ## A002143.P17092995463201495044

`filter[A006642(n+1), A000035(#)]`
-/

namespace A002143.P17092995463201495044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A002143.P17092995463201495044

/-! ## A002143.P11544032303212539664

`A014599(A005099(n+1))`
-/

namespace A002143.P11544032303212539664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014599 (A005099 (n + 1)).toNat

end

end A002143.P11544032303212539664

/-! ## A002143.P7100640958776050435

`A014599(A095278(n+1)+1)`
-/

namespace A002143.P7100640958776050435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014599 (A095278 (n + 1) + 1).toNat

end

end A002143.P7100640958776050435

/-! ## A002143.P18341156183870167104

`filter[A006641(n+3), A000035(#)]`
-/

namespace A002143.P18341156183870167104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006641 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A002143.P18341156183870167104

/-! ## A002143.P8524251295371448471

`A014600(A087915(n+1))`
-/

namespace A002143.P8524251295371448471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014600 (A087915 (n + 1)).toNat

end

end A002143.P8524251295371448471

/-! ## A002143.P17821081193369012693

`A006371(A104635(n+1))`
-/

namespace A002143.P17821081193369012693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006371 (A104635 (n + 1)).toNat

end

end A002143.P17821081193369012693

/-! ## A002143.P14979637444958396025

`A191410(p?[4*n-1])`
-/

namespace A002143.P14979637444958396025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A002143.P14979637444958396025

/-! ## A002143.P3931453533798096477

`A058305(A002145(n+1))`
-/

namespace A002143.P3931453533798096477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A002145 (n + 1)).toNat

end

end A002143.P3931453533798096477

/-! ## A002143.P15048709846591520451

`A058305(A045326(n+2))`
-/

namespace A002143.P15048709846591520451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (A045326 (n + 2)).toNat

end

end A002143.P15048709846591520451

/-! ## A002143.P254072845730226642

`A058305(p?[A003657(n+1)])`
-/

namespace A002143.P254072845730226642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A002143.P254072845730226642

/-! ## A002143.P5393168075981090313

`A058305(p?[A039957(n+1)])`
-/

namespace A002143.P5393168075981090313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A002143.P5393168075981090313

/-! ## A002143.P9554785530869050866

`gcd(A143770(n+1), A282037(n+1))`
-/

namespace A002143.P9554785530869050866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143770 (n + 1)) (A282037 (n + 1))

end

end A002143.P9554785530869050866

/-! ## A002143.P7603672770130959588

`gcd(A025543(n), A282037(n+1))`
-/

namespace A002143.P7603672770130959588
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025543 n) (A282037 (n + 1))

end

end A002143.P7603672770130959588

/-!
# A002144: Pythagorean primes: primes of the form 4*k + 1.

The programs for A002144, the canonical program `A002144.P15538936588089724505` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002144 has offset 1).

The definition of A002144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002144.P5812275744591454393

`4*A005098(n+1)+1`
-/

namespace A002144.P5812275744591454393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005098 (n + 1) + 1

end

end A002144.P5812275744591454393

namespace A002144

/-- `4*A005098(n+1)+1` -/
def P5812275744591454393.Spec : Prop :=
  ∀ n, P5812275744591454393.a n = A002144 (n + 1)

end A002144

/-! ## A002144.P268894061057380842

`A002972(n+1)²+(2*A002973(n+1))²`
-/

namespace A002144.P268894061057380842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002972 (n + 1) ^ 2 + (2 * A002973 (n + 1)) ^ 2

end

end A002144.P268894061057380842

namespace A002144

/-- `A002972(n+1)²+(2*A002973(n+1))²` -/
def P268894061057380842.Spec : Prop :=
  ∀ n, P268894061057380842.a n = A002144 (n + 1)

end A002144

/-! ## A002144.P8105815766505995953

`A000290(A002972(n+1))+A000290(2*A002973(n+1))`
-/

namespace A002144.P8105815766505995953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A002972 (n + 1)).toNat + A000290 (2 * A002973 (n + 1)).toNat

end

end A002144.P8105815766505995953

namespace A002144

/-- `A000290(A002972(n+1))+A000290(2*A002973(n+1))` -/
def P8105815766505995953.Spec : Prop :=
  ∀ n, P8105815766505995953.a n = A002144 (n + 1)

end A002144

/-! ## A002144.P989819693559762826

`A000290(A002331(n+2))+A000290(A002330(n+2))`
-/

namespace A002144.P989819693559762826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A002331 (n + 2)).toNat + A000290 (A002330 (n + 2)).toNat

end

end A002144.P989819693559762826

namespace A002144

/-- `A000290(A002331(n+2))+A000290(A002330(n+2))` -/
def P989819693559762826.Spec : Prop :=
  ∀ n, P989819693559762826.a n = A002144 (n + 1)

end A002144

/-! ## A002144.P15538936588089724505

`p?[4*n+1]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002144

/-- `p?[4*n+1]` -/
def P15538936588089724505.Spec : Prop :=
  ∀ n, (P15538936588089724505.a n : ℤ) = A002144 (n + 1)

theorem P15538936588089724505.correct : P15538936588089724505.Spec := by
  intro n
  simp only [A002144, Nat.add_sub_cancel]

end A002144

/-! ## A002144.P2759311830655550180

`or(1, p?[4*n-7]-1)`
-/

namespace A002144.P2759311830655550180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A002144.P2759311830655550180

namespace A002144

/-- `or(1, p?[4*n-7]-1)` -/
def P2759311830655550180.Spec : Prop :=
  ∀ n, P2759311830655550180.a n = A002144 (n + 1)

end A002144

/-! ## A002144.P10119762653415871085

`xor(1, p?[4*n-7]-1)`
-/

namespace A002144.P10119762653415871085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1)

end

end A002144.P10119762653415871085

namespace A002144

/-- `xor(1, p?[4*n-7]-1)` -/
def P10119762653415871085.Spec : Prop :=
  ∀ n, P10119762653415871085.a n = A002144 (n + 1)

end A002144

/-! ## A002144.P11381648229370407908

`or(1, p?[a(n-1)+4])` with `a(0)=1`
-/

namespace A002144.P11381648229370407908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A002144.P11381648229370407908

namespace A002144

/-- `or(1, p?[a(n-1)+4])` -/
def P11381648229370407908.Spec : Prop :=
  ∀ n, (P11381648229370407908.a n : ℤ) = A002144 (n + 1)

end A002144

/-! ## A002144.P17444186038768459593

`∏{d}[p?[a(n-1)+4], #]` with `a(0)=1`
-/

namespace A002144.P17444186038768459593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A002144.P17444186038768459593

namespace A002144

/-- `∏{d}[p?[a(n-1)+4], #]` -/
def P17444186038768459593.Spec : Prop :=
  ∀ n, (P17444186038768459593.a n : ℤ) = A002144 (n + 1)

end A002144

/-! ## A002144.P6059036360340658823

`A055131(n)/3`
-/

namespace A002144.P6059036360340658823
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055131 n : ℚ) / 3

end

end A002144.P6059036360340658823

namespace A002144

/-- `A055131(n)/3` -/
def P6059036360340658823.Spec : Prop :=
  ∀ n, P6059036360340658823.a n = (A002144 (n + 1) : ℚ)

end A002144

/-! ## A002144.P12455471436934354819

`sqrt(A080109(n+1))`
-/

namespace A002144.P12455471436934354819
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A080109 (n + 1) : ℝ)

end

end A002144.P12455471436934354819

namespace A002144

/-- `sqrt(A080109(n+1))` -/
def P12455471436934354819.Spec : Prop :=
  ∀ n, P12455471436934354819.a n = (A002144 (n + 1) : ℝ)

end A002144

/-! ## A002144.P10946503265577924705

`A152680(n+1)+1`
-/

namespace A002144.P10946503265577924705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152680 (n + 1) + 1

end

end A002144.P10946503265577924705

namespace A002144

/-- `A152680(n+1)+1` -/
def P10946503265577924705.Spec : Prop :=
  ∀ n, P10946503265577924705.a n = A002144 (n + 1)

end A002144

/-! ## A002144.P1944738499191796183

`sqrt(sqrt(A080175(n+1)))`
-/

namespace A002144.P1944738499191796183
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A080175 (n + 1) : ℝ))

end

end A002144.P1944738499191796183

namespace A002144

/-- `sqrt(sqrt(A080175(n+1)))` -/
def P1944738499191796183.Spec : Prop :=
  ∀ n, P1944738499191796183.a n = (A002144 (n + 1) : ℝ)

end A002144

/-! ## A002144.P8532229178123268947

`A080169(n+1)^(1/3)`
-/

namespace A002144.P8532229178123268947
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A080169 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A002144.P8532229178123268947

namespace A002144

/-- `A080169(n+1)^(1/3)` -/
def P8532229178123268947.Spec : Prop :=
  ∀ n, P8532229178123268947.a n = (A002144 (n + 1) : ℝ)

end A002144

/-! ## A002144.P7577298876698051137

`A082073(n)+a(n-1)` with `a(0)=5`
-/

namespace A002144.P7577298876698051137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A082073 n + a (n - 1)

end

end A002144.P7577298876698051137

namespace A002144

/-- `A082073(n)+a(n-1)` -/
def P7577298876698051137.Spec : Prop :=
  ∀ n, P7577298876698051137.a n = A002144 (n + 1)

end A002144

/-! ## A002144.P5541135699102257837

`A080169(n+1)%A055131(n)`
-/

namespace A002144.P5541135699102257837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080169 (n + 1)) (A055131 n)

end

end A002144.P5541135699102257837

namespace A002144

/-- `A080169(n+1)%A055131(n)` -/
def P5541135699102257837.Spec : Prop :=
  ∀ n, P5541135699102257837.a n = A002144 (n + 1)

end A002144

/-! ## A002144.P5182775657030616156

`gcd(A048628(n+1), A055131(n))`
-/

namespace A002144.P5182775657030616156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048628 (n + 1)) (A055131 n)

end

end A002144.P5182775657030616156

namespace A002144

/-- `gcd(A048628(n+1), A055131(n))` -/
def P5182775657030616156.Spec : Prop :=
  ∀ n, (P5182775657030616156.a n : ℤ) = A002144 (n + 1)

end A002144

/-! ## A002144.P9570995644655454766

`A102261(n+1)+A002145(n+1)`
-/

namespace A002144.P9570995644655454766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102261 (n + 1) + A002145 (n + 1)

end

end A002144.P9570995644655454766

namespace A002144

/-- `A102261(n+1)+A002145(n+1)` -/
def P9570995644655454766.Spec : Prop :=
  ∀ n, P9570995644655454766.a n = A002144 (n + 1)

end A002144

/-! ## A002144.P14002242225144743673

`A152676(n+1)+A002314(n+1)`
-/

namespace A002144.P14002242225144743673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152676 (n + 1) + A002314 (n + 1)

end

end A002144.P14002242225144743673

namespace A002144

/-- `A152676(n+1)+A002314(n+1)` -/
def P14002242225144743673.Spec : Prop :=
  ∀ n, P14002242225144743673.a n = A002144 (n + 1)

end A002144

/-! ## A002144.P3476550801389360635

`A022757(n+1)-A002145(n+1)`
-/

namespace A002144.P3476550801389360635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022757 (n + 1) - A002145 (n + 1)

end

end A002144.P3476550801389360635

namespace A002144

/-- `A022757(n+1)-A002145(n+1)` -/
def P3476550801389360635.Spec : Prop :=
  ∀ n, P3476550801389360635.a n = A002144 (n + 1)

end A002144

/-!
# A002145: Primes of the form 4*k + 3.

The programs for A002145, the canonical program `A002145.P4185971227795926526` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002145 has offset 1).

The definition of A002145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002145.P4185971227795926526

`p?[4*n-1]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002145

/-- `p?[4*n-1]` -/
def P4185971227795926526.Spec : Prop :=
  ∀ n, P4185971227795926526.a n = A002145 (n + 1)

theorem P4185971227795926526.correct : P4185971227795926526.Spec := by
  intro n
  simp only [A002145, Nat.add_sub_cancel]

end A002145

/-! ## A002145.P5614670283628910424

`∏{d}[p?[4*n+3], #]`
-/

namespace A002145.P5614670283628910424
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A002145.P5614670283628910424

namespace A002145

/-- `∏{d}[p?[4*n+3], #]` -/
def P5614670283628910424.Spec : Prop :=
  ∀ n, (P5614670283628910424.a n : ℤ) = A002145 (n + 1)

end A002145

/-! ## A002145.P16567332692542860840

`∑{p}[p?[4*n+3], #]`
-/

namespace A002145.P16567332692542860840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A002145.P16567332692542860840

namespace A002145

/-- `∑{p}[p?[4*n+3], #]` -/
def P16567332692542860840.Spec : Prop :=
  ∀ n, (P16567332692542860840.a n : ℤ) = A002145 (n + 1)

end A002145

/-! ## A002145.P7104949461100019391

`∏{p}[p?[4*n+3], #]`
-/

namespace A002145.P7104949461100019391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A002145.P7104949461100019391

namespace A002145

/-- `∏{p}[p?[4*n+3], #]` -/
def P7104949461100019391.Spec : Prop :=
  ∀ n, (P7104949461100019391.a n : ℤ) = A002145 (n + 1)

end A002145

/-! ## A002145.P17838248735825245176

`or(1, p?[or(3, 3*(n+1))])`
-/

namespace A002145.P17838248735825245176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A002145.P17838248735825245176

namespace A002145

/-- `or(1, p?[or(3, 3*(n+1))])` -/
def P17838248735825245176.Spec : Prop :=
  ∀ n, (P17838248735825245176.a n : ℤ) = A002145 (n + 1)

end A002145

/-! ## A002145.P5377997043610302816

`A339900(Δ[n²])`
-/

namespace A002145.P5377997043610302816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339900 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002145.P5377997043610302816

namespace A002145

/-- `A339900(Δ[n²])` -/
def P5377997043610302816.Spec : Prop :=
  ∀ n, P5377997043610302816.a n = A002145 (n + 1)

end A002145

/-! ## A002145.P17832880070391196493

`sqrt(A087691(n+1))`
-/

namespace A002145.P17832880070391196493
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A087691 (n + 1) : ℝ)

end

end A002145.P17832880070391196493

namespace A002145

/-- `sqrt(A087691(n+1))` -/
def P17832880070391196493.Spec : Prop :=
  ∀ n, P17832880070391196493.a n = (A002145 (n + 1) : ℝ)

end A002145

/-! ## A002145.P12623024889372273078

`4*A005099(n+1)-1`
-/

namespace A002145.P12623024889372273078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A005099 (n + 1) - 1

end

end A002145.P12623024889372273078

namespace A002145

/-- `4*A005099(n+1)-1` -/
def P12623024889372273078.Spec : Prop :=
  ∀ n, P12623024889372273078.a n = A002145 (n + 1)

end A002145

/-! ## A002145.P16558440786214724390

`A090670(n+1)+A087915(n+1)`
-/

namespace A002145.P16558440786214724390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090670 (n + 1) + A087915 (n + 1)

end

end A002145.P16558440786214724390

namespace A002145

/-- `A090670(n+1)+A087915(n+1)` -/
def P16558440786214724390.Spec : Prop :=
  ∀ n, P16558440786214724390.a n = A002145 (n + 1)

end A002145

/-! ## A002145.P3866206577688701637

`A190105(n+1)+A005099(n+1)`
-/

namespace A002145.P3866206577688701637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190105 (n + 1) + A005099 (n + 1)

end

end A002145.P3866206577688701637

namespace A002145

/-- `A190105(n+1)+A005099(n+1)` -/
def P3866206577688701637.Spec : Prop :=
  ∀ n, P3866206577688701637.a n = A002145 (n + 1)

end A002145

/-! ## A002145.P10959640161504259300

`A022757(n+1)-A002144(n+1)`
-/

namespace A002145.P10959640161504259300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022757 (n + 1) - A002144 (n + 1)

end

end A002145.P10959640161504259300

namespace A002145

/-- `A022757(n+1)-A002144(n+1)` -/
def P10959640161504259300.Spec : Prop :=
  ∀ n, P10959640161504259300.a n = A002145 (n + 1)

end A002145

/-! ## A002145.P1136178730688241491

`A002144(n+1)-A102261(n+1)`
-/

namespace A002145.P1136178730688241491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1) - A102261 (n + 1)

end

end A002145.P1136178730688241491

namespace A002145

/-- `A002144(n+1)-A102261(n+1)` -/
def P1136178730688241491.Spec : Prop :=
  ∀ n, P1136178730688241491.a n = A002145 (n + 1)

end A002145

/-! ## A002145.P6865656595299013362

`A048630(n+1)/A002144(n+1)`
-/

namespace A002145.P6865656595299013362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048630 (n + 1) : ℚ) / (A002144 (n + 1) : ℚ)

end

end A002145.P6865656595299013362

namespace A002145

/-- `A048630(n+1)/A002144(n+1)` -/
def P6865656595299013362.Spec : Prop :=
  ∀ n, P6865656595299013362.a n = (A002145 (n + 1) : ℚ)

end A002145

/-! ## A002145.P11055504224067682496

`gcd(A034955(n+1), A048630(n+1))`
-/

namespace A002145.P11055504224067682496
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034955 (n + 1)) (A048630 (n + 1))

end

end A002145.P11055504224067682496

namespace A002145

/-- `gcd(A034955(n+1), A048630(n+1))` -/
def P11055504224067682496.Spec : Prop :=
  ∀ n, (P11055504224067682496.a n : ℤ) = A002145 (n + 1)

end A002145

/-! ## A002145.P1477419834345694058

`A045326(n+2)`
-/

namespace A002145.P1477419834345694058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045326 (n + 2)

end

end A002145.P1477419834345694058

namespace A002145

/-- `A045326(n+2)` -/
def P1477419834345694058.Spec : Prop :=
  ∀ n, P1477419834345694058.a n = A002145 (n + 1)

end A002145

/-! ## A002145.P7444211141378726931

`A281664(n+2)+1`
-/

namespace A002145.P7444211141378726931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281664 (n + 2) + 1

end

end A002145.P7444211141378726931

namespace A002145

/-- `A281664(n+2)+1` -/
def P7444211141378726931.Spec : Prop :=
  ∀ n, P7444211141378726931.a n = A002145 (n + 1)

end A002145

/-! ## A002145.P15150805254551851253

`A022757(n+1)-A002313(n+2)`
-/

namespace A002145.P15150805254551851253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022757 (n + 1) - A002313 (n + 2)

end

end A002145.P15150805254551851253

namespace A002145

/-- `A022757(n+1)-A002313(n+2)` -/
def P15150805254551851253.Spec : Prop :=
  ∀ n, P15150805254551851253.a n = A002145 (n + 1)

end A002145

/-! ## A002145.P15582116070426586741

`A002313(n+2)-A102261(n+1)`
-/

namespace A002145.P15582116070426586741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002313 (n + 2) - A102261 (n + 1)

end

end A002145.P15582116070426586741

namespace A002145

/-- `A002313(n+2)-A102261(n+1)` -/
def P15582116070426586741.Spec : Prop :=
  ∀ n, P15582116070426586741.a n = A002145 (n + 1)

end A002145

/-! ## A002145.P17331358843491168694

`A048630(n+1)/A002313(n+2)`
-/

namespace A002145.P17331358843491168694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048630 (n + 1) : ℚ) / (A002313 (n + 2) : ℚ)

end

end A002145.P17331358843491168694

namespace A002145

/-- `A048630(n+1)/A002313(n+2)` -/
def P17331358843491168694.Spec : Prop :=
  ∀ n, P17331358843491168694.a n = (A002145 (n + 1) : ℚ)

end A002145

/-! ## A002145.P13719010742258165453

`A065091(A138971(n+1))`
-/

namespace A002145.P13719010742258165453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A138971 (n + 1)).toNat

end

end A002145.P13719010742258165453

namespace A002145

/-- `A065091(A138971(n+1))` -/
def P13719010742258165453.Spec : Prop :=
  ∀ n, P13719010742258165453.a n = A002145 (n + 1)

end A002145

/-!
# A002146: Smallest prime == 7 (mod 8) where Q(sqrt(-p)) has class number 2n+1.

The programs for A002146, there is no canonical definition to state claims against.
-/

/-! ## A002146.P9561852391970464852

`or(6, A081319(2*n+1))`
-/

namespace A002146.P9561852391970464852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 6 (A081319 (2 * n + 1))

end

end A002146.P9561852391970464852

/-! ## A002146.P16504484655352366283

`or(4, A060649(Δ[n²]))`
-/

namespace A002146.P16504484655352366283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A060649 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A002146.P16504484655352366283

/-! ## A002146.P3628812612647589002

`p?[or(4, A060649(n+1))]`
-/

namespace A002146.P3628812612647589002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A060649 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002146.P3628812612647589002

/-! ## A002146.P16919141512162504874

`p?[A060649(n+1)%A247541(n)]`
-/

namespace A002146.P16919141512162504874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060649 (n + 1)) (A247541 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A002146.P16919141512162504874

/-! ## A002146.P5165928393418599154

`A060649(2*n+1)+A000038(n)²`
-/

namespace A002146.P5165928393418599154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060649 (2 * n + 1) + A000038 n ^ 2

end

end A002146.P5165928393418599154

/-! ## A002146.P5024332952222181868

`or(A060649(2*n+1), A245513(n+3))`
-/

namespace A002146.P5024332952222181868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A060649 (2 * n + 1)) (A245513 (n + 3))

end

end A002146.P5024332952222181868

/-! ## A002146.P12842404956252586221

`or(4, A060651(n))`
-/

namespace A002146.P12842404956252586221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (A060651 n)

end

end A002146.P12842404956252586221

/-! ## A002146.P11171488717411374945

`A000040(A166131(n+2))`
-/

namespace A002146.P11171488717411374945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A166131 (n + 2)).toNat

end

end A002146.P11171488717411374945

/-! ## A002146.P7474241784286849835

`A244586(A060651(n))`
-/

namespace A002146.P7474241784286849835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244586 (A060651 n).toNat

end

end A002146.P7474241784286849835

/-!
# A002147: Largest prime == 7 (mod 8) with class number 2n+1.

The programs for A002147, there is no canonical definition to state claims against.
-/

/-! ## A002147.P5431887921271809884

`∩[A019334(n+1), A192114(n+1)]`
-/

namespace A002147.P5431887921271809884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002147.P5431887921271809884

/-!
# A002148: Smallest prime p==3 (mod 8) such that Q(sqrt(-p)) has class number 2n+1.

The programs for A002148, there is no canonical definition to state claims against.
-/

/-! ## A002148.P13798615785854433807

`∩[A042990(n), A166046(n)]`
-/

namespace A002148.P13798615785854433807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166046 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002148.P13798615785854433807

/-! ## A002148.P14133238710210760418

`∩[A165666(n+1), A166046(n)]`
-/

namespace A002148.P14133238710210760418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165666 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166046 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002148.P14133238710210760418

/-!
# A002149: Largest prime p==3 (mod 8) such that Q(sqrt(-p)) has class number 2n+1.

The programs for A002149, there is no canonical definition to state claims against.
-/

/-! ## A002149.P8762337304698407275

`A038552(Δ[n²])`
-/

namespace A002149.P8762337304698407275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038552 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002149.P8762337304698407275

/-! ## A002149.P18053257770244174943

`A357600(Δ[n²])`
-/

namespace A002149.P18053257770244174943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357600 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002149.P18053257770244174943

/-! ## A002149.P7143850336004405678

`or(1, A038552(2*n+1))`
-/

namespace A002149.P7143850336004405678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A038552 (2 * n + 1))

end

end A002149.P7143850336004405678

/-! ## A002149.P9521894009396866605

`xor(1, A038552(n+1+n))+1`
-/

namespace A002149.P9521894009396866605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A038552 (n + 1 + n)) + 1

end

end A002149.P9521894009396866605

/-! ## A002149.P6615404861290304843

`A097807(n)²*A038552(2*n+1)`
-/

namespace A002149.P6615404861290304843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n ^ 2 * A038552 (2 * n + 1)

end

end A002149.P6615404861290304843

/-! ## A002149.P4669448812747629899

`A038552(2*n+1)+A000007(n+1)`
-/

namespace A002149.P4669448812747629899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038552 (2 * n + 1) + A000007 (n + 1)

end

end A002149.P4669448812747629899

/-! ## A002149.P12856113964246286176

`A038552(2*n+1)*A178334(n+1)`
-/

namespace A002149.P12856113964246286176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038552 (2 * n + 1) * A178334 (n + 1)

end

end A002149.P12856113964246286176

/-! ## A002149.P6229278664474526543

`lcm(A038552(2*n+1), A064179(n+2))`
-/

namespace A002149.P6229278664474526543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038552 (2 * n + 1)) (A064179 (n + 2))

end

end A002149.P6229278664474526543

/-! ## A002149.P11206230269769249667

`A038552(n+1+n)*A057427(n+4)`
-/

namespace A002149.P11206230269769249667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038552 (n + 1 + n) * A057427 (n + 4)

end

end A002149.P11206230269769249667

/-! ## A002149.P15697158485522330969

`A038552(2*n+1)+char[A038552(n+1)]`
-/

namespace A002149.P15697158485522330969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038552 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038552 (2 * n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A002149.P15697158485522330969

/-!
# A002150: Numbers k for which the rank of the elliptic curve y^2 = x^3 - k is 0.

The programs for A002150, there is no canonical definition to state claims against.
-/

/-! ## A002150.P2730484925692143529

`eq[4, a(A060951(n))²]` with `a(0)=2`
-/

namespace A002150.P2730484925692143529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (A060951 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002150.P2730484925692143529

/-! ## A002150.P8962331736810822223

`eq[0, A060951(n+1)]+1`
-/

namespace A002150.P8962331736810822223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002150.P8962331736810822223

/-! ## A002150.P2153251061312299188

`eq[1, 1-A060950(3*9*(n+1))]+1`
-/

namespace A002150.P2153251061312299188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A060950 (3 * (9 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002150.P2153251061312299188

/-! ## A002150.P6908579487804743321

`eq[2, A000032(a(A060951(n)))]` with `a(0)=0`
-/

namespace A002150.P6908579487804743321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A060951 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002150.P6908579487804743321

/-! ## A002150.P15242238048966207604

`eq[2, A000040(a(A060951(n)))]` with `a(0)=1`
-/

namespace A002150.P15242238048966207604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A060951 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002150.P15242238048966207604

/-! ## A002150.P13037190431341729827

`eq[2, A000010(a(A060951(n)))]` with `a(0)=3`
-/

namespace A002150.P13037190431341729827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A060951 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002150.P13037190431341729827

/-! ## A002150.P4082064527021269930

`eq[2, A000045(a(A060951(n)))]` with `a(0)=3`
-/

namespace A002150.P4082064527021269930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000045 (f2 (A060951 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002150.P4082064527021269930

/-! ## A002150.P9207905280152397305

`eq[2, A001222(a(A060951(n)))]` with `a(0)=4`
-/

namespace A002150.P9207905280152397305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A001222 (f2 (A060951 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002150.P9207905280152397305

/-! ## A002150.P7014198897503217308

`eq[2, A007318(a(A060951(n)))]` with `a(0)=4`
-/

namespace A002150.P7014198897503217308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A007318 (f2 (A060951 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002150.P7014198897503217308

/-! ## A002150.P17824071800738302571

`eq[3, A000005(a(A060951(n)))]` with `a(0)=4`
-/

namespace A002150.P17824071800738302571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000005 (f2 (A060951 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002150.P17824071800738302571

/-!
# A002151: Numbers k for which rank of the elliptic curve y^2 = x^3 + k is 0.

The programs for A002151, there is no canonical definition to state claims against.
-/

/-! ## A002151.P7962300983606699716

`eq[0, A060950(n+1)]+1`
-/

namespace A002151.P7962300983606699716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002151.P7962300983606699716

/-! ## A002151.P62529002659561580

`eq[2, A002153(a(A060950(n)))]` with `a(0)=1`
-/

namespace A002151.P62529002659561580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A002153 (f2 (A060950 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002151.P62529002659561580

/-! ## A002151.P1667302113180520003

`eq[3, A000051(a(A060950(n)))]` with `a(0)=1`
-/

namespace A002151.P1667302113180520003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000051 (f2 (A060950 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002151.P1667302113180520003

/-! ## A002151.P15198064054532328250

`record[n+1-A002153(n+1)*A060950(n+1)]`
-/

namespace A002151.P15198064054532328250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A002153 (n + 1) * A060950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002151.P15198064054532328250

/-! ## A002151.P4197565635259741442

`record[n+1-A002159(n+1)*A060950(n+1)]`
-/

namespace A002151.P4197565635259741442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A002159 (n + 1) * A060950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002151.P4197565635259741442

/-!
# A002152: Numbers k for which the rank of the elliptic curve y^2 = x^3 - k is 1.

The programs for A002152, there is no canonical definition to state claims against.
-/

/-! ## A002152.P10393697519163377174

`eq[16, a(A060951(n))²]` with `a(0)=2`
-/

namespace A002152.P10393697519163377174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (A060951 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002152.P10393697519163377174

/-! ## A002152.P5756378732733566290

`eq[1, A060951(n+1)]+1`
-/

namespace A002152.P5756378732733566290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002152.P5756378732733566290

/-! ## A002152.P13528585569925794602

`eq[1, A060950(3*9*(n+1))]+1`
-/

namespace A002152.P13528585569925794602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (3 * (9 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002152.P13528585569925794602

/-! ## A002152.P6466681901117683777

`eq[1, A060951(A028310(n))]`
-/

namespace A002152.P6466681901117683777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060951 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002152.P6466681901117683777

/-! ## A002152.P1222547630277082089

`A020725(eq[1, A060951(n+1)])`
-/

namespace A002152.P1222547630277082089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002152.P1222547630277082089

/-! ## A002152.P10589883012215042285

`eq[3, A000032(a(A060951(n)))]` with `a(0)=0`
-/

namespace A002152.P10589883012215042285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  A000032 (f2 (A060951 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002152.P10589883012215042285

/-! ## A002152.P6768193952564526946

`eq[3, A000040(a(A060951(n)))]` with `a(0)=1`
-/

namespace A002152.P6768193952564526946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A060951 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002152.P6768193952564526946

/-! ## A002152.P12772130639186574623

`eq[2, A000045(a(A060951(n)))]` with `a(0)=4`
-/

namespace A002152.P12772130639186574623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000045 (f2 (A060951 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002152.P12772130639186574623

/-! ## A002152.P6867048605288940469

`eq[2, A000010(a(A060951(n)))]` with `a(0)=5`
-/

namespace A002152.P6867048605288940469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A000010 (f2 (A060951 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002152.P6867048605288940469

/-! ## A002152.P722909398028903291

`eq[3, A000005(a(A060951(n)))]` with `a(0)=6`
-/

namespace A002152.P722909398028903291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f2 =>
  A000005 (f2 (A060951 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002152.P722909398028903291

/-!
# A002153: Numbers k for which the rank of the elliptic curve y^2 = x^3 + k is 1.

The programs for A002153, there is no canonical definition to state claims against.
-/

/-! ## A002153.P9300912144165596989

`eq[1, A060950(n+1)]+1`
-/

namespace A002153.P9300912144165596989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002153.P9300912144165596989

/-! ## A002153.P14693058849440446428

`eq[n, n-a(A060950(n))]` with `a(0)=1`
-/

namespace A002153.P14693058849440446428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - f2 (A060950 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002153.P14693058849440446428

/-! ## A002153.P4725423042836991919

`eq[1, A060950(A028310(n))]`
-/

namespace A002153.P4725423042836991919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002153.P4725423042836991919

/-! ## A002153.P13325963180814570238

`A020725(eq[1, A060950(n+1)])`
-/

namespace A002153.P13325963180814570238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002153.P13325963180814570238

/-! ## A002153.P12089200150313299325

`eq[3, A000051(a(A060950(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A002153.P12089200150313299325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A000051 (f2 (A060950 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002153.P12089200150313299325

/-! ## A002153.P13933662179229874834

`eq[1, A006463(a(A060950(n)))]` with `a(0)=4, a(1)=2`
-/

namespace A002153.P13933662179229874834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 2] fun n f2 =>
  A006463 (f2 (A060950 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002153.P13933662179229874834

/-! ## A002153.P11351612809181343117

`eq[2, A038519(a(A060950(n)))]` with `a(0)=1, a(1)=4`
-/

namespace A002153.P11351612809181343117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  A038519 (f2 (A060950 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002153.P11351612809181343117

/-! ## A002153.P10755568516266539135

`eq[1, A060950(A123108(2*n))]`
-/

namespace A002153.P10755568516266539135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002153.P10755568516266539135

/-!
# A002154: Numbers k for which the rank of the elliptic curve y^2 = x^3 - k is 2.

The programs for A002154, there is no canonical definition to state claims against.
-/

/-! ## A002154.P18171662173226933774

`eq[2, A060951(n+1)]+1`
-/

namespace A002154.P18171662173226933774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060951 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002154.P18171662173226933774

/-! ## A002154.P2992962859283215318

`eq[2, A060951(A028310(n))]`
-/

namespace A002154.P2992962859283215318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060951 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002154.P2992962859283215318

/-! ## A002154.P7955704624718539159

`A020725(eq[2, A060951(n+1)])`
-/

namespace A002154.P7955704624718539159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002154.P7955704624718539159

/-! ## A002154.P7656952571776336936

`eq[2, A060951(A060000(n+1))]`
-/

namespace A002154.P7656952571776336936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060951 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002154.P7656952571776336936

/-! ## A002154.P17580366980146899793

`eq[2, A060951(A066182(n+1))]`
-/

namespace A002154.P17580366980146899793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060951 (A066182 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002154.P17580366980146899793

/-! ## A002154.P7992062524967243542

`A153152(eq[2, A060951(n+1)])`
-/

namespace A002154.P7992062524967243542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060951 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002154.P7992062524967243542

/-! ## A002154.P9742500416268547701

`eq[2, A060951(A233583(n+1))]`
-/

namespace A002154.P9742500416268547701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060951 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002154.P9742500416268547701

/-! ## A002154.P637019104398621359

`eq[2, A060951(A008619(A004273(n)))]`
-/

namespace A002154.P637019104398621359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060951 (A008619 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002154.P637019104398621359

/-!
# A002155: Numbers k for which the rank of the elliptic curve y^2 = x^3 + k is 2.

The programs for A002155, there is no canonical definition to state claims against.
-/

/-! ## A002155.P5754989166427092568

`eq[2, A060950(n+1)]+1`
-/

namespace A002155.P5754989166427092568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002155.P5754989166427092568

/-! ## A002155.P10591754320134866339

`eq[2, sqrt(a(A060950(n)))]` with `a(0)=0, a(1)=1, a(2)=4`
-/

namespace A002155.P10591754320134866339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [0, 1, 4] fun n f2 =>
  Real.sqrt (f2 (A060950 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A002155.P10591754320134866339

/-! ## A002155.P1034794103295896386

`eq[2, A060950(A028310(n))]`
-/

namespace A002155.P1034794103295896386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002155.P1034794103295896386

/-! ## A002155.P16969937015699420984

`A020725(eq[2, A060950(n+1)])`
-/

namespace A002155.P16969937015699420984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002155.P16969937015699420984

/-! ## A002155.P7827463242571141975

`A153152(eq[2, A060950(n+1)])`
-/

namespace A002155.P7827463242571141975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002155.P7827463242571141975

/-! ## A002155.P4143914115550357646

`eq[3, A000051(a(A060950(n)))]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A002155.P4143914115550357646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  A000051 (f2 (A060950 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002155.P4143914115550357646

/-! ## A002155.P5563323912730865472

`eq[1, A006463(a(A060950(n)))]` with `a(0)=0, a(1)=4, a(2)=2`
-/

namespace A002155.P5563323912730865472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 4, 2] fun n f2 =>
  A006463 (f2 (A060950 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002155.P5563323912730865472

/-! ## A002155.P17001753942226915858

`eq[2, A002153(a(A060950(n)))]` with `a(0)=3, a(1)=3, a(2)=1`
-/

namespace A002155.P17001753942226915858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3, 1] fun n f2 =>
  A002153 (f2 (A060950 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002155.P17001753942226915858

/-! ## A002155.P2373231501084208200

`eq[2, A060950(A123108(2*n))]`
-/

namespace A002155.P2373231501084208200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002155.P2373231501084208200

/-! ## A002155.P1619916139371712797

`eq[2, A060950(A233583(n+1))]`
-/

namespace A002155.P1619916139371712797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060950 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002155.P1619916139371712797

/-!
# A002156: Numbers k for which the rank of the elliptic curve y^2 = x^3 - k*x is 0.

The programs for A002156, there is no canonical definition to state claims against.
-/

/-! ## A002156.P10843991400202009296

`lt[A060952(n+1), 1]+1`
-/

namespace A002156.P10843991400202009296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A002156.P10843991400202009296

/-! ## A002156.P13719820577324872161

`record[n+1-A001014(n)*A060952(n+1)]`
-/

namespace A002156.P13719820577324872161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001014 n * A060952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002156.P13719820577324872161

/-! ## A002156.P17610350137305945239

`eq[C(2, n+2), A060952(A028310(n)+1)]+1`
-/

namespace A002156.P17610350137305945239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (A028310 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002156.P17610350137305945239

/-! ## A002156.P16412382582841169393

`record[n+1-A002151(n+1)*A060952(n+1)]`
-/

namespace A002156.P16412382582841169393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A002151 (n + 1) * A060952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002156.P16412382582841169393

/-! ## A002156.P9184313992894447323

`record[n+1-A002153(n+1)*A060952(n+1)]`
-/

namespace A002156.P9184313992894447323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A002153 (n + 1) * A060952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002156.P9184313992894447323

/-! ## A002156.P9641927642447896697

`record[n+1-A002159(n+1)*A060952(n+1)]`
-/

namespace A002156.P9641927642447896697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A002159 (n + 1) * A060952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002156.P9641927642447896697

/-! ## A002156.P15553313836929968760

`record[n+1-A032825(n+1)*A060952(n+1)]`
-/

namespace A002156.P15553313836929968760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A032825 (n + 1) * A060952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002156.P15553313836929968760

/-! ## A002156.P16379037393029193973

`eq[A000007(n), A060952(A000007(n)+n)]`
-/

namespace A002156.P16379037393029193973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002156.P16379037393029193973

/-! ## A002156.P17745271222963266171

`eq[n, A028310(A060952(A028310(n))+n)]`
-/

namespace A002156.P17745271222963266171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A060952 (A028310 n).toNat + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002156.P17745271222963266171

/-! ## A002156.P9791792888157633697

`eq[A060952(A233583(n+1))+n, A233583(n+1)]`
-/

namespace A002156.P9791792888157633697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (A233583 (n + 1)).toNat + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002156.P9791792888157633697

/-!
# A002157: Numbers k for which the rank of the elliptic curve y^2 = x^3 - k*x is 1.

The programs for A002157, there is no canonical definition to state claims against.
-/

/-! ## A002157.P1229653878192593104

`eq[1, A060952(n+1)]+1`
-/

namespace A002157.P1229653878192593104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002157.P1229653878192593104

/-! ## A002157.P11717157965617439867

`record[n/a(A060952(n))]` with `a(0)=2, a(1)=1`
-/

namespace A002157.P11717157965617439867
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (n : ℚ) / f1 (A060952 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002157.P11717157965617439867

/-! ## A002157.P1311605087494483290

`eq[1, A060953(A008574(n))]`
-/

namespace A002157.P1311605087494483290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002157.P1311605087494483290

/-! ## A002157.P2311167825507432705

`eq[1, A060952(A028310(n))]`
-/

namespace A002157.P2311167825507432705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002157.P2311167825507432705

/-! ## A002157.P6908475086858191856

`A020725(eq[1, A060952(n+1)])`
-/

namespace A002157.P6908475086858191856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002157.P6908475086858191856

/-! ## A002157.P2854831348865108467

`eq[1, A060953(A004277(2*n))]`
-/

namespace A002157.P2854831348865108467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A004277 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002157.P2854831348865108467

/-! ## A002157.P16136534240434387266

`eq[1, A060952(A065033(2*n))]`
-/

namespace A002157.P16136534240434387266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002157.P16136534240434387266

/-! ## A002157.P4760672726215937915

`eq[1, A060952(A000007(n)+n)]`
-/

namespace A002157.P4760672726215937915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002157.P4760672726215937915

/-! ## A002157.P17074024241658821282

`eq[1, A060953(A008486(n)+n)]`
-/

namespace A002157.P17074024241658821282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A008486 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002157.P17074024241658821282

/-! ## A002157.P15680479232905224018

`A061395(p?[A000040(n+1)*A060952(n+1)])`
-/

namespace A002157.P15680479232905224018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A060952 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A002157.P15680479232905224018

/-!
# A002158: Numbers k for which the rank of the elliptic curve y^2 = x^3 + k*x is 0.

The programs for A002158, there is no canonical definition to state claims against.
-/

/-! ## A002158.P16463901736999167929

`eq[0, A060953(n+1)]+1`
-/

namespace A002158.P16463901736999167929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002158.P16463901736999167929

/-! ## A002158.P8780716473700014854

`lt[0, (-1)^(4-a(A060953(n)))]` with `a(0)=-4`
-/

namespace A002158.P8780716473700014854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℝ := SequenceMachineLib.rec [-4] fun n f2 =>
  (-1 : ℝ) ^ (4 - f2 (A060953 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A002158.P8780716473700014854

/-! ## A002158.P10521486558319745799

`record[n+1-A002151(n+1)*A060953(n+1)]`
-/

namespace A002158.P10521486558319745799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A002151 (n + 1) * A060953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002158.P10521486558319745799

/-! ## A002158.P3177274010728310253

`record[n+1-A002153(n+1)*A060953(n+1)]`
-/

namespace A002158.P3177274010728310253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A002153 (n + 1) * A060953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002158.P3177274010728310253

/-! ## A002158.P4744655905114192626

`record[n+1-A002159(n+1)*A060953(n+1)]`
-/

namespace A002158.P4744655905114192626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A002159 (n + 1) * A060953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002158.P4744655905114192626

/-! ## A002158.P15247846647501524968

`record[n+1-A045409(n+1)*A060953(n+1)]`
-/

namespace A002158.P15247846647501524968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A045409 (n + 1) * A060953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002158.P15247846647501524968

/-!
# A002159: Numbers k for which the rank of the elliptic curve y^2 = x^3 + k*x is 1.

The programs for A002159, there is no canonical definition to state claims against.
-/

/-! ## A002159.P9520363903420756356

`eq[1, A060953(n+1)]+1`
-/

namespace A002159.P9520363903420756356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002159.P9520363903420756356

/-! ## A002159.P12808222282791654249

`eq[n, n-a(A060953(n))]` with `a(0)=1`
-/

namespace A002159.P12808222282791654249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (n : ℤ) - f2 (A060953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002159.P12808222282791654249

/-! ## A002159.P3828316920826956787

`eq[1, A060953(A028310(n))]`
-/

namespace A002159.P3828316920826956787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002159.P3828316920826956787

/-! ## A002159.P4790553321192300810

`A020725(eq[1, A060953(n+1)])`
-/

namespace A002159.P4790553321192300810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002159.P4790553321192300810

/-! ## A002159.P7744035696421503968

`A065475(eq[1, A060953(n+1)])`
-/

namespace A002159.P7744035696421503968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002159.P7744035696421503968

/-! ## A002159.P16418787012546386319

`eq[1, A060953(A004277(n)-n)]`
-/

namespace A002159.P16418787012546386319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A004277 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002159.P16418787012546386319

/-! ## A002159.P137588400256586418

`eq[3, A000051(a(A060953(n)))]` with `a(0)=2, a(1)=1`
-/

namespace A002159.P137588400256586418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f2 =>
  A000051 (f2 (A060953 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002159.P137588400256586418

/-! ## A002159.P12165918281798396430

`eq[2, A002153(a(A060953(n)))]` with `a(0)=3, a(1)=1`
-/

namespace A002159.P12165918281798396430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f2 =>
  A002153 (f2 (A060953 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002159.P12165918281798396430

/-! ## A002159.P9307006586990997949

`A000720(p?[A000040(n+1)*A060953(n+1)])`
-/

namespace A002159.P9307006586990997949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A060953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A002159.P9307006586990997949

/-! ## A002159.P1395914013206335138

`eq[1, A060953(A233583(n+1))]`
-/

namespace A002159.P1395914013206335138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002159.P1395914013206335138

/-! ## A002159.P16138740383316759590

`eq[1, A060952(A008574(n))]`
-/

namespace A002159.P16138740383316759590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002159.P16138740383316759590

/-!
# A002160: Nearest integer to Pi^n.

The programs for A002160, the canonical program `A002160.P4524844669123245809` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002160 has offset 0).

The definition of A002160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002160.P5704721551176782787

`round(sqrt(π²^n))`
-/

namespace A002160.P5704721551176782787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((Real.pi ^ 2) ^ n))

end

end A002160.P5704721551176782787

namespace A002160

/-- `round(sqrt(π²^n))` -/
def P5704721551176782787.Spec : Prop :=
  ∀ n, P5704721551176782787.a n = A002160 n

end A002160

/-! ## A002160.P4524844669123245809

`floor(A001672(2*n)/A001672(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002160

/-- `floor(A001672(2*n)/A001672(n))` -/
def P4524844669123245809.Spec : Prop :=
  ∀ n, P4524844669123245809.a n = A002160 n

theorem P4524844669123245809.correct : P4524844669123245809.Spec := by
  intro n
  simp only [A002160]

end A002160

/-! ## A002160.P3940597239284239766

`ceil(A001673(2*n)/A001673(n))`
-/

namespace A002160.P3940597239284239766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001673 (2 * n) : ℚ) / (A001673 n : ℚ)⌉

end

end A002160.P3940597239284239766

namespace A002160

/-- `ceil(A001673(2*n)/A001673(n))` -/
def P3940597239284239766.Spec : Prop :=
  ∀ n, P3940597239284239766.a n = A002160 n

end A002160

/-! ## A002160.P10999566048570221923

`round(π^n)%A303529(n+1)`
-/

namespace A002160.P10999566048570221923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.pi ^ n)) (A303529 (n + 1))

end

end A002160.P10999566048570221923

namespace A002160

/-- `round(π^n)%A303529(n+1)` -/
def P10999566048570221923.Spec : Prop :=
  ∀ n, P10999566048570221923.a n = A002160 n

end A002160

/-!
# A002162: Decimal expansion of the natural logarithm of 2.

The programs for A002162, there is no canonical definition to state claims against.
-/

/-! ## A002162.P6524203225502589184

`9-A244009(n)`
-/

namespace A002162.P6524203225502589184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A244009 n

end

end A002162.P6524203225502589184

/-! ## A002162.P4437377004307857126

`A187832(n)+A020761(n)`
-/

namespace A002162.P4437377004307857126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187832 n + A020761 n

end

end A002162.P4437377004307857126

/-! ## A002162.P12768766737002942289

`A187832(n)+5*A000007(n)`
-/

namespace A002162.P12768766737002942289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187832 n + 5 * A000007 n

end

end A002162.P12768766737002942289

/-! ## A002162.P4993760814357789327

`A187832(n)+A063377(2*(n+1))`
-/

namespace A002162.P4993760814357789327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187832 n + A063377 (2 * (n + 1))

end

end A002162.P4993760814357789327

/-! ## A002162.P3918622155532124609

`A187832(n)+A063524(n+1)*A069078(n+1)`
-/

namespace A002162.P3918622155532124609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187832 n + A063524 (n + 1) * A069078 (n + 1)

end

end A002162.P3918622155532124609

/-! ## A002162.P14756984740293532591

`A187832(n+1)+A187832(n)-A369882(n+1)`
-/

namespace A002162.P14756984740293532591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187832 (n + 1) + (A187832 n - A369882 (n + 1))

end

end A002162.P14756984740293532591

/-! ## A002162.P1317642494589779942

`A187832(n)+A063524(n+1)*A239354(n+1)`
-/

namespace A002162.P1317642494589779942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187832 n + A063524 (n + 1) * A239354 (n + 1)

end

end A002162.P1317642494589779942

/-!
# A002163: Decimal expansion of square root of 5.

The programs for A002163, there is no canonical definition to state claims against.
-/

/-! ## A002163.P5829345854379662371

`A098317(A000007(n)+n)`
-/

namespace A002163.P5829345854379662371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098317 ((A000007 n + (n : ℤ)).toNat + 1)

end

end A002163.P5829345854379662371

/-! ## A002163.P8593989344486187620

`A134972(A000007(n)+n)`
-/

namespace A002163.P8593989344486187620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134972 ((A000007 n + (n : ℤ)).toNat + 1)

end

end A002163.P8593989344486187620

/-! ## A002163.P8243196367640578700

`A098317(n)-A000038(n)`
-/

namespace A002163.P8243196367640578700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098317 (n + 1) - A000038 n

end

end A002163.P8243196367640578700

/-! ## A002163.P6153494529142897629

`A294671(n)-A002193(n)`
-/

namespace A002163.P6153494529142897629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294671 (n + 1) - A002193 (n + 1)

end

end A002163.P6153494529142897629

/-! ## A002163.P4891825224065350467

`A098317(or(n, A000007(n)))`
-/

namespace A002163.P4891825224065350467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098317 ((Int.lor (n : ℤ) (A000007 n)).toNat + 1)

end

end A002163.P4891825224065350467

/-! ## A002163.P1265397669135215733

`A134972(or(n, A000007(n)))`
-/

namespace A002163.P1265397669135215733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134972 ((Int.lor (n : ℤ) (A000007 n)).toNat + 1)

end

end A002163.P1265397669135215733

/-! ## A002163.P10275466820827425257

`A134945(n)+A255176(n)-4`
-/

namespace A002163.P10275466820827425257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134945 (n + 1) + (A255176 n - 4)

end

end A002163.P10275466820827425257

/-! ## A002163.P13218952377243725269

`A134972(or(n, A341629(n+1)))`
-/

namespace A002163.P13218952377243725269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134972 ((Int.lor (n : ℤ) (A341629 (n + 1))).toNat + 1)

end

end A002163.P13218952377243725269

/-! ## A002163.P16255492858102633150

`A098317(∏{e}[n+1, A151935(#)]+n)`
-/

namespace A002163.P16255492858102633150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098317 ((∏ p ∈ Nat.primeFactors (f1 n), A151935 (Nat.factorization (f1 n) p) + (n : ℤ)).toNat + 1)

end

end A002163.P16255492858102633150

/-! ## A002163.P11324043271740417245

`A098317(A104457(n)+n-A001622(n))`
-/

namespace A002163.P11324043271740417245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098317 ((A104457 (n + 1) + ((n : ℤ) - A001622 (n + 1))).toNat + 1)

end

end A002163.P11324043271740417245

/-! ## A002163.P2391918050156814485

`A134972(A104457(n)+n-A001622(n))`
-/

namespace A002163.P2391918050156814485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134972 ((A104457 (n + 1) + ((n : ℤ) - A001622 (n + 1))).toNat + 1)

end

end A002163.P2391918050156814485

/-! ## A002163.P1486210904269028491

`A123932(n)+A134945(n)-A040002(n)`
-/

namespace A002163.P1486210904269028491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 n + (A134945 (n + 1) - A040002 n)

end

end A002163.P1486210904269028491

/-! ## A002163.P8110086430269712509

`A098317(n-(A001622(n)-A104457(n)))`
-/

namespace A002163.P8110086430269712509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098317 (((n : ℤ) - (A001622 (n + 1) - A104457 (n + 1))).toNat + 1)

end

end A002163.P8110086430269712509

/-! ## A002163.P4399965272995034068

`A134972(n-(A001622(n)-A104457(n)))`
-/

namespace A002163.P4399965272995034068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134972 (((n : ℤ) - (A001622 (n + 1) - A104457 (n + 1))).toNat + 1)

end

end A002163.P4399965272995034068

/-! ## A002163.P900564845322586134

`A134972(n)+A010054(n+1)*A010054(n)`
-/

namespace A002163.P900564845322586134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134972 (n + 1) + A010054 (n + 1) * A010054 n

end

end A002163.P900564845322586134

/-! ## A002163.P10518537380865614761

`A098317(∏{e}[A015919(n+1), A237705(#+1)]+n)`
-/

namespace A002163.P10518537380865614761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098317 ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, A237705 (Nat.factorization (f1 n).natAbs p + 1) + (n : ℤ)).toNat + 1)

end

end A002163.P10518537380865614761

/-! ## A002163.P5746250667026145419

`A294671(n)-A120731(n+1)`
-/

namespace A002163.P5746250667026145419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294671 (n + 1) - A120731 (n + 1 + 1)

end

end A002163.P5746250667026145419

/-! ## A002163.P12136133615144292003

`A242671(A004280(n+2)-(n+1))`
-/

namespace A002163.P12136133615144292003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242671 (A004280 (n + 2) - (n + 1 : ℤ)).toNat

end

end A002163.P12136133615144292003

/-! ## A002163.P11994099620583474114

`4+A134972(n)-A113311(n+1)`
-/

namespace A002163.P11994099620583474114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + (A134972 (n + 1) - A113311 (n + 1))

end

end A002163.P11994099620583474114

/-! ## A002163.P17200535582976323875

`A123932(n)+A134945(n)-A151798(n+1)`
-/

namespace A002163.P17200535582976323875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123932 n + (A134945 (n + 1) - A151798 (n + 1))

end

end A002163.P17200535582976323875

/-!
# A002164: E.g.f.: high-temperature series in J/2kT for logarithm of partition function for the spin-1/2 linear (1D) Heisenberg model.

The programs for A002164, there is no canonical definition to state claims against.
-/

/-! ## A002164.P10641190608237180982

`A112239(A074933(n+2))`
-/

namespace A002164.P10641190608237180982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112239 (A074933 (n + 2)).toNat

end

end A002164.P10641190608237180982

/-!
# A002167: High temperature series for spin-1/2 Heisenberg specific heat on 3-dimensional b.c.c. lattice.

The programs for A002167, there is no canonical definition to state claims against.
-/

/-! ## A002167.P808738680817784554

`A083677(n+1)*A159787(A063834(n+1))`
-/

namespace A002167.P808738680817784554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083677 (n + 1) * A159787 (A063834 (n + 1)).toNat

end

end A002167.P808738680817784554

/-!
# A002171: Glaisher's chi numbers. a(n) = chi(4*n + 1).

The programs for A002171, there is no canonical definition to state claims against.
-/

/-! ## A002171.P11744780161170958098

`A033999(n)*A138515(n)`
-/

namespace A002171.P11744780161170958098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A138515 n

end

end A002171.P11744780161170958098

/-! ## A002171.P6219187997848975529

`(A004442(n)-n)*A138515(n)`
-/

namespace A002171.P6219187997848975529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * A138515 n

end

end A002171.P6219187997848975529

/-! ## A002171.P18304046580254422955

`A138515(Δ[A168300(n+1)])*A138515(n)`
-/

namespace A002171.P18304046580254422955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168300 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138515 (f1 (n + 1) - f1 n).toNat * A138515 n

end

end A002171.P18304046580254422955

/-! ## A002171.P5075477413199509949

`A009531(2*n+1)*A138515(n)`
-/

namespace A002171.P5075477413199509949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1) * A138515 n

end

end A002171.P5075477413199509949

/-! ## A002171.P8221371231999002906

`A056594(2*n)*A138515(n)`
-/

namespace A002171.P8221371231999002906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A138515 n

end

end A002171.P8221371231999002906

/-! ## A002171.P2531922425436536782

`A138515(n)/A056594(A005408(n)-1)`
-/

namespace A002171.P2531922425436536782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138515 n : ℚ) / (A056594 (A005408 n - 1).toNat : ℚ)

end

end A002171.P2531922425436536782

/-! ## A002171.P7302022572489088754

`A004409(n)/A319553(n)*A138515(n)`
-/

namespace A002171.P7302022572489088754
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004409 n : ℚ) / (A319553 n : ℚ) * (A138515 n : ℚ)

end

end A002171.P7302022572489088754

/-!
# A002172: Glaisher's chi numbers chi(p) for p a prime of the form 4m+1.

The programs for A002172, there is no canonical definition to state claims against.
-/

/-! ## A002172.P12433272627440074243

`2*A046730(n+1)`
-/

namespace A002172.P12433272627440074243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046730 (n + 1)

end

end A002172.P12433272627440074243

/-! ## A002172.P1152204231474797927

`A002171(A005098(n+1))`
-/

namespace A002172.P1152204231474797927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002171 (A005098 (n + 1)).toNat

end

end A002172.P1152204231474797927

/-! ## A002172.P12016552399976040244

`A278720(A080147(n+1))`
-/

namespace A002172.P12016552399976040244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278720 (A080147 (n + 1)).toNat

end

end A002172.P12016552399976040244

/-! ## A002172.P14715494759423864138

`A278720(A138970(n+1)+1)`
-/

namespace A002172.P14715494759423864138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278720 (A138970 (n + 1) + 1).toNat

end

end A002172.P14715494759423864138

/-! ## A002172.P6523315983131019052

`A278720(eq[0, A282038(n+1)]+1)`
-/

namespace A002172.P6523315983131019052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A002172.P6523315983131019052

/-! ## A002172.P8476582086294576443

`A278720(eq[1, A039702(n+1)]+1)`
-/

namespace A002172.P8476582086294576443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A002172.P8476582086294576443

/-! ## A002172.P12145317391978456743

`A278720(eq[2, A227471(n+1)]+1)`
-/

namespace A002172.P12145317391978456743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278720 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A002172.P12145317391978456743

/-! ## A002172.P2798842419909263168

`A046730(A000027(n+1))+A046730(n+1)`
-/

namespace A002172.P2798842419909263168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046730 (A000027 (n + 1)).toNat + A046730 (n + 1)

end

end A002172.P2798842419909263168

/-! ## A002172.P2720001247661822444

`A046730(n+1)+A046730((n+1)%A033009(n+1))`
-/

namespace A002172.P2720001247661822444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046730 (n + 1) + A046730 (Int.tmod (n + 1 : ℤ) (A033009 (n + 1))).toNat

end

end A002172.P2720001247661822444

/-!
# A002173: a(n) = Sum_{d|n, d == 1 mod 4} d^2 - Sum_{d|n, d == 3 mod 4} d^2.

The programs for A002173, the canonical program `A002173.P7206352416500240550` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002173 has offset 1).

The definition of A002173 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050450, A050453, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A002173.P7206352416500240550

`A050450(n+1)-A050453(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A002173

/-- `A050450(n+1)-A050453(n+1)` -/
def P7206352416500240550.Spec : Prop :=
  ∀ n, P7206352416500240550.a n = A002173 (n + 1)

theorem P7206352416500240550.correct : P7206352416500240550.Spec := by
  intro n
  simp only [A002173, Nat.add_sub_cancel]

end A002173

/-! ## A002173.P4121665417745444365

`A138502(A025480(n))`
-/

namespace A002173.P4121665417745444365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138502 (A025480 n).toNat

end

end A002173.P4121665417745444365

namespace A002173

/-- `A138502(A025480(n))` -/
def P4121665417745444365.Spec : Prop :=
  ∀ n, P4121665417745444365.a n = A002173 (n + 1)

end A002173

/-! ## A002173.P12330850040405610791

`A138505(A000265(n+1))`
-/

namespace A002173.P12330850040405610791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138505 (A000265 (n + 1)).toNat

end

end A002173.P12330850040405610791

namespace A002173

/-- `A138505(A000265(n+1))` -/
def P12330850040405610791.Spec : Prop :=
  ∀ n, P12330850040405610791.a n = A002173 (n + 1)

end A002173

/-! ## A002173.P3629144305632156840

`A138505(A166466(n+1)/3)`
-/

namespace A002173.P3629144305632156840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138505 (SequenceMachineLib.roundAway ((A166466 (n + 1) : ℚ) / 3)).toNat

end

end A002173.P3629144305632156840

namespace A002173

/-- `A138505(A166466(n+1)/3)` -/
def P3629144305632156840.Spec : Prop :=
  ∀ n, P3629144305632156840.a n = A002173 (n + 1)

end A002173

/-! ## A002173.P10633322091153210224

`A033999(n)*A138505(n+1)`
-/

namespace A002173.P10633322091153210224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A138505 (n + 1)

end

end A002173.P10633322091153210224

namespace A002173

/-- `A033999(n)*A138505(n+1)` -/
def P10633322091153210224.Spec : Prop :=
  ∀ n, P10633322091153210224.a n = A002173 (n + 1)

end A002173

/-! ## A002173.P13513081759083216266

`A034947(n+1)*A050458(n+1)`
-/

namespace A002173.P13513081759083216266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A050458 (n + 1)

end

end A002173.P13513081759083216266

namespace A002173

/-- `A034947(n+1)*A050458(n+1)` -/
def P13513081759083216266.Spec : Prop :=
  ∀ n, P13513081759083216266.a n = A002173 (n + 1)

end A002173

/-! ## A002173.P12005423392469777717

`2*A050450(n+1)-A050999(n+1)`
-/

namespace A002173.P12005423392469777717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A050450 (n + 1) - A050999 (n + 1)

end

end A002173.P12005423392469777717

namespace A002173

/-- `2*A050450(n+1)-A050999(n+1)` -/
def P12005423392469777717.Spec : Prop :=
  ∀ n, P12005423392469777717.a n = A002173 (n + 1)

end A002173

/-! ## A002173.P6973764478570894498

`A050999(n+1)-2*A050453(n+1)`
-/

namespace A002173.P6973764478570894498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050999 (n + 1) - 2 * A050453 (n + 1)

end

end A002173.P6973764478570894498

namespace A002173

/-- `A050999(n+1)-2*A050453(n+1)` -/
def P6973764478570894498.Spec : Prop :=
  ∀ n, P6973764478570894498.a n = A002173 (n + 1)

end A002173

/-! ## A002173.P2460725126021243632

`∑{d}[n+1, A048298(#)*A138505((n+1)/#)]`
-/

namespace A002173.P2460725126021243632
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048298 d * A138505 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A002173.P2460725126021243632

namespace A002173

/-- `∑{d}[n+1, A048298(#)*A138505((n+1)/#)]` -/
def P2460725126021243632.Spec : Prop :=
  ∀ n, P2460725126021243632.a n = A002173 (n + 1)

end A002173

/-! ## A002173.P7903727388026979475

`∑{d}[n+1, A099894(#-1)*A138505((n+1)/#)]`
-/

namespace A002173.P7903727388026979475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A099894 (d - 1) * A138505 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A002173.P7903727388026979475

namespace A002173

/-- `∑{d}[n+1, A099894(#-1)*A138505((n+1)/#)]` -/
def P7903727388026979475.Spec : Prop :=
  ∀ n, P7903727388026979475.a n = A002173 (n + 1)

end A002173

/-! ## A002173.P16121984598242202764

`A138505(A006519(n+1))*A138505(n+1)`
-/

namespace A002173.P16121984598242202764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138505 (A006519 (n + 1)).toNat * A138505 (n + 1)

end

end A002173.P16121984598242202764

namespace A002173

/-- `A138505(A006519(n+1))*A138505(n+1)` -/
def P16121984598242202764.Spec : Prop :=
  ∀ n, P16121984598242202764.a n = A002173 (n + 1)

end A002173

/-! ## A002173.P15467466664457944609

`A138505(n+1)/A057077(A057077(n)+n)`
-/

namespace A002173.P15467466664457944609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138505 (n + 1) : ℚ) / (A057077 (A057077 n + (n : ℤ)).toNat : ℚ)

end

end A002173.P15467466664457944609

namespace A002173

/-- `A138505(n+1)/A057077(A057077(n)+n)` -/
def P15467466664457944609.Spec : Prop :=
  ∀ n, P15467466664457944609.a n = (A002173 (n + 1) : ℚ)

end A002173

/-! ## A002173.P9009139074956020759

`A138505(n+1)/A120030(n)*A138504(n)`
-/

namespace A002173.P9009139074956020759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138505 (n + 1) : ℚ) / (A120030 n : ℚ) * (A138504 n : ℚ)

end

end A002173.P9009139074956020759

namespace A002173

/-- `A138505(n+1)/A120030(n)*A138504(n)` -/
def P9009139074956020759.Spec : Prop :=
  ∀ n, P9009139074956020759.a n = (A002173 (n + 1) : ℚ)

end A002173

/-! ## A002173.P4575617183740666588

`A138505(n+1)/A122854(n)*A138502(n)`
-/

namespace A002173.P4575617183740666588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138505 (n + 1) : ℚ) / (A122854 n : ℚ) * (A138502 n : ℚ)

end

end A002173.P4575617183740666588

namespace A002173

/-- `A138505(n+1)/A122854(n)*A138502(n)` -/
def P4575617183740666588.Spec : Prop :=
  ∀ n, P4575617183740666588.a n = (A002173 (n + 1) : ℚ)

end A002173

/-! ## A002173.P14745515932694940797

`ratio[A057077(n)]*A138505(n+1)`
-/

namespace A002173.P14745515932694940797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A138505 (n + 1) : ℚ)

end

end A002173.P14745515932694940797

namespace A002173

/-- `ratio[A057077(n)]*A138505(n+1)` -/
def P14745515932694940797.Spec : Prop :=
  ∀ n, P14745515932694940797.a n = (A002173 (n + 1) : ℚ)

end A002173

/-! ## A002173.P14996316056596946834

`-A138505(2*(n+1))`
-/

namespace A002173.P14996316056596946834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A138505 (2 * (n + 1))

end

end A002173.P14996316056596946834

namespace A002173

/-- `-A138505(2*(n+1))` -/
def P14996316056596946834.Spec : Prop :=
  ∀ n, P14996316056596946834.a n = A002173 (n + 1)

end A002173

/-! ## A002173.P3426642938648562684

`-A138504(2*(n+1))/4`
-/

namespace A002173.P3426642938648562684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((A138504 (2 * (n + 1)) : ℚ) / 4)

end

end A002173.P3426642938648562684

namespace A002173

/-- `-A138504(2*(n+1))/4` -/
def P3426642938648562684.Spec : Prop :=
  ∀ n, P3426642938648562684.a n = (A002173 (n + 1) : ℚ)

end A002173

/-! ## A002173.P4396787893704579963

`A056594(2*n)*A138505(n+1)`
-/

namespace A002173.P4396787893704579963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A138505 (n + 1)

end

end A002173.P4396787893704579963

namespace A002173

/-- `A056594(2*n)*A138505(n+1)` -/
def P4396787893704579963.Spec : Prop :=
  ∀ n, P4396787893704579963.a n = A002173 (n + 1)

end A002173

/-! ## A002173.P11360925772413854357

`A057077(2*n)*A138505(n+1)`
-/

namespace A002173.P11360925772413854357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A138505 (n + 1)

end

end A002173.P11360925772413854357

namespace A002173

/-- `A057077(2*n)*A138505(n+1)` -/
def P11360925772413854357.Spec : Prop :=
  ∀ n, P11360925772413854357.a n = A002173 (n + 1)

end A002173

/-!
# A002174: Values taken by reduced totient function psi(n).

The programs for A002174, there is no canonical definition to state claims against.
-/

/-! ## A002174.P10058904125521565429

`record[A322315(n+1)+n]-n`
-/

namespace A002174.P10058904125521565429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322315 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A002174.P10058904125521565429

/-! ## A002174.P14382216970569916514

`A001489(n)+record[A322315(n+1)+n]`
-/

namespace A002174.P14382216970569916514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322315 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002174.P14382216970569916514

/-! ## A002174.P226848066954388040

`eq[A079612(n+1), A270562(n+1)]+1`
-/

namespace A002174.P226848066954388040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270562 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A002174.P226848066954388040

/-! ## A002174.P4916255589624816905

`A015906(eq[A079612(n+1), A270562(n+1)])`
-/

namespace A002174.P4916255589624816905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015906 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A002174.P4916255589624816905

/-! ## A002174.P10010803419800554445

`record[A008619(2*n)%A006511(A322315(n+1))]`
-/

namespace A002174.P10010803419800554445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (2 * n)) (A006511 (A322315 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002174.P10010803419800554445

/-! ## A002174.P15527529924455416400

`record[A052938(2*n)%A006511(A322315(n+1))]`
-/

namespace A002174.P15527529924455416400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052938 (2 * n)) (A006511 (A322315 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002174.P15527529924455416400

/-! ## A002174.P15170702510913495066

`A164020(eq[A079612(n+1), A270562(n+1)])`
-/

namespace A002174.P15170702510913495066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A002174.P15170702510913495066

/-! ## A002174.P11637063028112891482

`A002322(A002396(n+1))`
-/

namespace A002174.P11637063028112891482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (A002396 (n + 1)).toNat

end

end A002174.P11637063028112891482

/-!
# A002175: Excess of number of divisors of 12n+1 of form 4k+1 over those of form 4k+3.

The programs for A002175, the canonical program `A002175.P12639420198237532064` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002175 has offset 0).

The definition of A002175 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008441, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A002175.P12639420198237532064

`A008441(3*n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A002175

/-- `A008441(3*n)` -/
def P12639420198237532064.Spec : Prop :=
  ∀ n, P12639420198237532064.a n = A002175 n

theorem P12639420198237532064.correct : P12639420198237532064.Spec := by
  intro n
  simp only [A002175]

end A002175

/-! ## A002175.P15722343142470898453

`A121363(3*n)`
-/

namespace A002175.P15722343142470898453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121363 (3 * n)

end

end A002175.P15722343142470898453

namespace A002175

/-- `A121363(3*n)` -/
def P15722343142470898453.Spec : Prop :=
  ∀ n, P15722343142470898453.a n = A002175 n

end A002175

/-! ## A002175.P2130208684613056253

`A258291(3*n)`
-/

namespace A002175.P2130208684613056253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258291 (3 * n)

end

end A002175.P2130208684613056253

namespace A002175

/-- `A258291(3*n)` -/
def P2130208684613056253.Spec : Prop :=
  ∀ n, P2130208684613056253.a n = A002175 n

end A002175

/-! ## A002175.P1177259373866378607

`A122865(4*n)`
-/

namespace A002175.P1177259373866378607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122865 (4 * n)

end

end A002175.P1177259373866378607

namespace A002175

/-- `A122865(4*n)` -/
def P1177259373866378607.Spec : Prop :=
  ∀ n, P1177259373866378607.a n = A002175 n

end A002175

/-! ## A002175.P6130328664930448312

`A258277(4*n)`
-/

namespace A002175.P6130328664930448312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258277 (4 * n)

end

end A002175.P6130328664930448312

namespace A002175

/-- `A258277(4*n)` -/
def P6130328664930448312.Spec : Prop :=
  ∀ n, P6130328664930448312.a n = A002175 n

end A002175

/-! ## A002175.P9656248866403441639

`A116604(6*n)`
-/

namespace A002175.P9656248866403441639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116604 (6 * n)

end

end A002175.P9656248866403441639

namespace A002175

/-- `A116604(6*n)` -/
def P9656248866403441639.Spec : Prop :=
  ∀ n, P9656248866403441639.a n = A002175 n

end A002175

/-! ## A002175.P7984348687566078229

`A125079(6*n)`
-/

namespace A002175.P7984348687566078229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125079 (6 * n)

end

end A002175.P7984348687566078229

namespace A002175

/-- `A125079(6*n)` -/
def P7984348687566078229.Spec : Prop :=
  ∀ n, P7984348687566078229.a n = A002175 n

end A002175

/-! ## A002175.P7330406985457784987

`A129447(6*n)`
-/

namespace A002175.P7330406985457784987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129447 (6 * n)

end

end A002175.P7330406985457784987

namespace A002175

/-- `A129447(6*n)` -/
def P7330406985457784987.Spec : Prop :=
  ∀ n, P7330406985457784987.a n = A002175 n

end A002175

/-! ## A002175.P11827308187211771341

`A138741(6*n)`
-/

namespace A002175.P11827308187211771341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138741 (6 * n)

end

end A002175.P11827308187211771341

namespace A002175

/-- `A138741(6*n)` -/
def P11827308187211771341.Spec : Prop :=
  ∀ n, P11827308187211771341.a n = A002175 n

end A002175

/-! ## A002175.P18412595270457508533

`A122856(8*n)`
-/

namespace A002175.P18412595270457508533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122856 (8 * n)

end

end A002175.P18412595270457508533

namespace A002175

/-- `A122856(8*n)` -/
def P18412595270457508533.Spec : Prop :=
  ∀ n, P18412595270457508533.a n = A002175 n

end A002175

/-! ## A002175.P16561867333261513514

`A258278(8*n)`
-/

namespace A002175.P16561867333261513514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258278 (8 * n)

end

end A002175.P16561867333261513514

namespace A002175

/-- `A258278(8*n)` -/
def P16561867333261513514.Spec : Prop :=
  ∀ n, P16561867333261513514.a n = A002175 n

end A002175

/-! ## A002175.P18146308131951658925

`A258228(12*n+1)`
-/

namespace A002175.P18146308131951658925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258228 (12 * n + 1)

end

end A002175.P18146308131951658925

namespace A002175

/-- `A258228(12*n+1)` -/
def P18146308131951658925.Spec : Prop :=
  ∀ n, P18146308131951658925.a n = A002175 n

end A002175

/-! ## A002175.P4545383595346153601

`A258256(12*n+1)`
-/

namespace A002175.P4545383595346153601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258256 (12 * n + 1)

end

end A002175.P4545383595346153601

namespace A002175

/-- `A258256(12*n+1)` -/
def P4545383595346153601.Spec : Prop :=
  ∀ n, P4545383595346153601.a n = A002175 n

end A002175

/-! ## A002175.P11220809471335266659

`-A258210(12*n+1)`
-/

namespace A002175.P11220809471335266659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A258210 (12 * n + 1)

end

end A002175.P11220809471335266659

namespace A002175

/-- `-A258210(12*n+1)` -/
def P11220809471335266659.Spec : Prop :=
  ∀ n, P11220809471335266659.a n = A002175 n

end A002175

/-! ## A002175.P15103948816181547482

`abs(A134343(3*n))`
-/

namespace A002175.P15103948816181547482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134343 (3 * n)|

end

end A002175.P15103948816181547482

namespace A002175

/-- `abs(A134343(3*n))` -/
def P15103948816181547482.Spec : Prop :=
  ∀ n, P15103948816181547482.a n = A002175 n

end A002175

/-! ## A002175.P12089691527426911469

`A004020(3*n)/2`
-/

namespace A002175.P12089691527426911469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004020 (3 * n) : ℚ) / 2

end

end A002175.P12089691527426911469

namespace A002175

/-- `A004020(3*n)/2` -/
def P12089691527426911469.Spec : Prop :=
  ∀ n, P12089691527426911469.a n = (A002175 n : ℚ)

end A002175

/-! ## A002175.P4867261705331533022

`A005883(3*n)/4`
-/

namespace A002175.P4867261705331533022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005883 (3 * n) : ℚ) / 4

end

end A002175.P4867261705331533022

namespace A002175

/-- `A005883(3*n)/4` -/
def P4867261705331533022.Spec : Prop :=
  ∀ n, P4867261705331533022.a n = (A002175 n : ℚ)

end A002175

/-! ## A002175.P11042669292486814768

`lcm(A020985(n), A134343(3*n))`
-/

namespace A002175.P11042669292486814768
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A134343 (3 * n))

end

end A002175.P11042669292486814768

namespace A002175

/-- `lcm(A020985(n), A134343(3*n))` -/
def P11042669292486814768.Spec : Prop :=
  ∀ n, (P11042669292486814768.a n : ℤ) = A002175 n

end A002175

/-! ## A002175.P2475966029530790901

`A002654(12*n+1)`
-/

namespace A002175.P2475966029530790901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (12 * n + 1)

end

end A002175.P2475966029530790901

namespace A002175

/-- `A002654(12*n+1)` -/
def P2475966029530790901.Spec : Prop :=
  ∀ n, P2475966029530790901.a n = A002175 n

end A002175

/-! ## A002175.P4126111939118067709

`A113446(12*n+1)`
-/

namespace A002175.P4126111939118067709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (12 * n + 1)

end

end A002175.P4126111939118067709

namespace A002175

/-- `A113446(12*n+1)` -/
def P4126111939118067709.Spec : Prop :=
  ∀ n, P4126111939118067709.a n = A002175 n

end A002175

/-!
# A002176: a(n) = LCM of denominators of Cotesian numbers {C(n,k), 0 <= k <= n}.

The programs for A002176, there is no canonical definition to state claims against.
-/

/-! ## A002176.P8407338391408670896

`A002177(n+1)/A100620(n+1)*A100621(n+1)`
-/

namespace A002176.P8407338391408670896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002177 (n + 1) : ℚ) / (A100620 (n + 1) : ℚ) * (A100621 (n + 1) : ℚ)

end

end A002176.P8407338391408670896

/-! ## A002176.P3190687441557918736

`A002178(n+1)/A100643(n+1)*A100644(n+1)`
-/

namespace A002176.P3190687441557918736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002178 (n + 1) : ℚ) / (A100643 (n + 1) : ℚ) * (A100644 (n + 1) : ℚ)

end

end A002176.P3190687441557918736

/-! ## A002176.P14443213028505414279

`A091137(n+1)/A067911(n+1)`
-/

namespace A002176.P14443213028505414279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091137 (n + 1) : ℚ) / (A067911 (n + 1) : ℚ)

end

end A002176.P14443213028505414279

/-! ## A002176.P13030898914748877202

`lcm(A003557(A289775(n)), A100621(n+1))`
-/

namespace A002176.P13030898914748877202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003557 (A289775 n).toNat) (A100621 (n + 1))

end

end A002176.P13030898914748877202

/-! ## A002176.P2836316485524407436

`A100621(A005188(n+1)+1)`
-/

namespace A002176.P2836316485524407436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100621 (A005188 (n + 1) + 1).toNat

end

end A002176.P2836316485524407436

/-!
# A002177: Numerators of Cotesian numbers (not in lowest terms): A002176(n)*C(n,0).

The programs for A002177, there is no canonical definition to state claims against.
-/

/-! ## A002177.P17530923891815428116

`A002176(n+1)/A100621(n+1)*A100620(n+1)`
-/

namespace A002177.P17530923891815428116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002176 (n + 1) : ℚ) / (A100621 (n + 1) : ℚ) * (A100620 (n + 1) : ℚ)

end

end A002177.P17530923891815428116

/-! ## A002177.P16580324126994405471

`A100642(∑[n+1])`
-/

namespace A002177.P16580324126994405471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100642 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002177.P16580324126994405471

/-! ## A002177.P12456377170986035268

`or(1, A100642(A253145(n)))`
-/

namespace A002177.P12456377170986035268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A100642 (A253145 n).toNat)

end

end A002177.P12456377170986035268

/-! ## A002177.P844058360343213382

`abs(A100642(A000124(n)+n))`
-/

namespace A002177.P844058360343213382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100642 (A000124 n + (n : ℤ)).toNat|

end

end A002177.P844058360343213382

/-! ## A002177.P15667973995402036509

`abs(A100642(record[A038722(n+1)]))`
-/

namespace A002177.P15667973995402036509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A002177.P15667973995402036509

/-! ## A002177.P9055149624977571018

`gcd(A100642(A253145(n)), A130706(n))`
-/

namespace A002177.P9055149624977571018
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100642 (A253145 n).toNat) (A130706 n)

end

end A002177.P9055149624977571018

/-! ## A002177.P16784300286394005311

`abs(A100642(A253145(n)+A130706(n)))`
-/

namespace A002177.P16784300286394005311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100642 (A253145 n + A130706 n).toNat|

end

end A002177.P16784300286394005311

/-! ## A002177.P12954881237477946513

`abs(A100642(A034856(n+1)+1))`
-/

namespace A002177.P12954881237477946513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100642 (A034856 (n + 1) + 1).toNat|

end

end A002177.P12954881237477946513

/-! ## A002177.P4442252447978756335

`abs(A100642(A253145(n+1)-1))`
-/

namespace A002177.P4442252447978756335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100642 (A253145 (n + 1) - 1).toNat|

end

end A002177.P4442252447978756335

/-! ## A002177.P6755504093749127605

`A057427(n+1)*A100642(A000096(n+1))`
-/

namespace A002177.P6755504093749127605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A100642 (A000096 (n + 1)).toNat

end

end A002177.P6755504093749127605

/-!
# A002178: Numerators of Cotesian numbers (not in lowest terms): A002176*C(n,1).

The programs for A002178, there is no canonical definition to state claims against.
-/

/-! ## A002178.P125168892469046470

`A100642(∑[n+1]+1)`
-/

namespace A002178.P125168892469046470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100642 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A002178.P125168892469046470

/-! ## A002178.P11029111527313977594

`abs(A100642(C(n+2, 2)+1))`
-/

namespace A002178.P11029111527313977594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100642 (Nat.choose (n + 2) 2 + 1)|

end

end A002178.P11029111527313977594

/-! ## A002178.P8741973522922940163

`abs(A100642(A000124(n+1)))`
-/

namespace A002178.P8741973522922940163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100642 (A000124 (n + 1)).toNat|

end

end A002178.P8741973522922940163

/-! ## A002178.P16396449434710320132

`A100642(A000124(n+1))^(A000038(n)+1)`
-/

namespace A002178.P16396449434710320132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100642 (A000124 (n + 1)).toNat : ℚ) ^ (A000038 n + 1 : ℤ)

end

end A002178.P16396449434710320132

/-! ## A002178.P16086165742058507585

`A100642(A000124(n+1))^and(1, A000040(n+1))`
-/

namespace A002178.P16086165742058507585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100642 (A000124 (n + 1)).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A002178.P16086165742058507585

/-! ## A002178.P8359125654866328086

`abs(A100642(A034856(n+1)))`
-/

namespace A002178.P8359125654866328086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A100642 (A034856 (n + 1)).toNat|

end

end A002178.P8359125654866328086

/-! ## A002178.P5237152462437150099

`and(A033999(2*n+1), A100642(A034856(n+1)))`
-/

namespace A002178.P5237152462437150099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A033999 (2 * n + 1)) (A100642 (A034856 (n + 1)).toNat)

end

end A002178.P5237152462437150099

/-!
# A002179: Numerators of Cotesian numbers (not in lowest terms): A002176*C(n,2).

The programs for A002179, there is no canonical definition to state claims against.
-/

/-! ## A002179.P1040990396425116469

`A100642(∑[n+1]+2)*A178334(n)`
-/

namespace A002179.P1040990396425116469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100642 (∑ j ∈ Finset.range (n + 1), f1 j + 2) * A178334 n

end

end A002179.P1040990396425116469

/-! ## A002179.P14417601228530578922

`A100642(A000096(n)+3)-(1-A057427(n))`
-/

namespace A002179.P14417601228530578922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100642 (A000096 n + 3).toNat - (1 - A057427 n)

end

end A002179.P14417601228530578922

/-! ## A002179.P287389244345911901

`A100642(∑[n+2]-2)`
-/

namespace A002179.P287389244345911901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100642 (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A002179.P287389244345911901

/-! ## A002179.P16666200692590391998

`A054977(n)*A100642(A055998(n))`
-/

namespace A002179.P16666200692590391998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A100642 (A055998 n).toNat

end

end A002179.P16666200692590391998

/-! ## A002179.P14827064700822007598

`A100642(A055998(n))+A000038(n+1)`
-/

namespace A002179.P14827064700822007598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100642 (A055998 n).toNat + A000038 (n + 1)

end

end A002179.P14827064700822007598

/-! ## A002179.P13555252424804408535

`A230103(A230104(n+1))+A100642(A055998(n))`
-/

namespace A002179.P13555252424804408535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230103 (A230104 (n + 1)).toNat + A100642 (A055998 n).toNat

end

end A002179.P13555252424804408535

/-!
# A002180: Values taken by the half-totient function phi(m)/2.

The programs for A002180, there is no canonical definition to state claims against.
-/

/-! ## A002180.P4992934391307374232

`∑[round(A083533(n+1)/2)]`
-/

namespace A002180.P4992934391307374232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A083533 (n + 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002180.P4992934391307374232

/-! ## A002180.P15922250992409893885

`∑[A078898(A083533(n+1))]`
-/

namespace A002180.P15922250992409893885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A083533 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002180.P15922250992409893885

/-! ## A002180.P13831200617917578269

`(A083533(n+1)+A002202(n+1))/2`
-/

namespace A002180.P13831200617917578269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083533 (n + 1) + A002202 (n + 1) : ℚ) / 2

end

end A002180.P13831200617917578269

/-! ## A002180.P5067815694757116601

`A002202(n+2)/2`
-/

namespace A002180.P5067815694757116601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002202 (n + 2) : ℚ) / 2

end

end A002180.P5067815694757116601

/-! ## A002180.P8003489258060006201

`A000010(A002181(n+2))/2`
-/

namespace A002180.P8003489258060006201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A002181 (n + 2)).toNat : ℚ) / 2

end

end A002180.P8003489258060006201

/-! ## A002180.P3343958076609266242

`∑[A026741(Δ[A002202(n+1)])]`
-/

namespace A002180.P3343958076609266242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002180.P3343958076609266242

/-! ## A002180.P11547705568005416637

`A000010(A143423(n+2))/2`
-/

namespace A002180.P11547705568005416637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A143423 (n + 2)).toNat : ℚ) / 2

end

end A002180.P11547705568005416637

/-! ## A002180.P11610855654855268209

`A000010(A006511(n+2))/2`
-/

namespace A002180.P11610855654855268209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A006511 (n + 2)).toNat : ℚ) / 2

end

end A002180.P11610855654855268209

/-! ## A002180.P8257141709106617692

`lt[0, A032446(n+1)]+1`
-/

namespace A002180.P8257141709106617692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032446 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A002180.P8257141709106617692

/-! ## A002180.P2712336446214803758

`lt[0, A057826(n+1)]+1`
-/

namespace A002180.P2712336446214803758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057826 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A002180.P2712336446214803758

/-! ## A002180.P6303590085375268140

`lt[2, A282160(n+1)]+1`
-/

namespace A002180.P6303590085375268140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282160 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A002180.P6303590085375268140

/-! ## A002180.P16784893207959333762

`lt[2, A338266(n+1)]+1`
-/

namespace A002180.P16784893207959333762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338266 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A002180.P16784893207959333762

/-! ## A002180.P8883621924340478729

`lt[0, char[ceil(A000010(2*(n+1))/2)]]`
-/

namespace A002180.P8883621924340478729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 (2 * (n + 1)) : ℚ) / 2⌉

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A002180.P8883621924340478729

/-! ## A002180.P12790594491109511859

`lt[0, char[floor((A000010(4*(n+1))+2)/4)]]`
-/

namespace A002180.P12790594491109511859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (4 * (n + 1)) + 2 : ℚ) / 4⌋

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A002180.P12790594491109511859

/-! ## A002180.P1120183534570843472

`lt[1, A322310(2*(n+1))]+1`
-/

namespace A002180.P1120183534570843472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322310 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A002180.P1120183534570843472

/-! ## A002180.P12079194777778640926

`record[A000010(A319048(n+2))/2]`
-/

namespace A002180.P12079194777778640926
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A319048 (n + 2)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002180.P12079194777778640926

/-! ## A002180.P15864926917163103174

`A349136(A002181(n+2))`
-/

namespace A002180.P15864926917163103174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349136 (A002181 (n + 2)).toNat

end

end A002180.P15864926917163103174

/-! ## A002180.P14791057650441010317

`eq[1, A264739(2*(n+1))]+1`
-/

namespace A002180.P14791057650441010317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264739 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002180.P14791057650441010317

/-! ## A002180.P3887011058730464995

`lt[1, A014197(2*(n+1))]+1`
-/

namespace A002180.P3887011058730464995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A002180.P3887011058730464995

/-! ## A002180.P16596444576018636933

`A004525(A002202(n+2))`
-/

namespace A002180.P16596444576018636933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A002202 (n + 2)).toNat

end

end A002180.P16596444576018636933

/-!
# A002181: Least number k such that phi(k) = m, where m runs through the values (A002202) taken by phi.

The programs for A002181, there is no canonical definition to state claims against.
-/

/-! ## A002181.P11234299447206607857

`A006511(n+1)-A196079(n+1)`
-/

namespace A002181.P11234299447206607857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006511 (n + 1) - A196079 (n + 1)

end

end A002181.P11234299447206607857

/-! ## A002181.P11857512568149766064

`A049283(A002202(n+1))`
-/

namespace A002181.P11857512568149766064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A002202 (n + 1)).toNat

end

end A002181.P11857512568149766064

/-! ## A002181.P5218096685121704021

`filter[A049283(n+1), A097325(#)]`
-/

namespace A002181.P5218096685121704021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A002181.P5218096685121704021

/-! ## A002181.P10726364077491878865

`filter[A049283(n+1), A098725(#)]`
-/

namespace A002181.P10726364077491878865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A002181.P10726364077491878865

/-! ## A002181.P12678817483062196398

`filter[A049283(n+1), A115971(#)]`
-/

namespace A002181.P12678817483062196398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A002181.P12678817483062196398

/-! ## A002181.P11863326290416697063

`filter[A049283(n+1), A166486(#)]`
-/

namespace A002181.P11863326290416697063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A002181.P11863326290416697063

/-! ## A002181.P16026541632773190487

`filter[A049283(n+1), A168185(#)]`
-/

namespace A002181.P16026541632773190487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A002181.P16026541632773190487

/-! ## A002181.P16410466650699428382

`filter[A049283(n+1), A316829(#)]`
-/

namespace A002181.P16410466650699428382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316829 (f1 j).toNat = 1) n)

end

end A002181.P16410466650699428382

/-! ## A002181.P9653787970440247371

`A049283(lt[0, A014197(n+1)]+1)`
-/

namespace A002181.P9653787970440247371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A002181.P9653787970440247371

/-! ## A002181.P2829819292980320655

`A049283(lt[0, A049283(n+1)]+1)`
-/

namespace A002181.P2829819292980320655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A002181.P2829819292980320655

/-! ## A002181.P17627377398581256547

`A049283(A000010(A006511(n+1)))`
-/

namespace A002181.P17627377398581256547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (A000010 (A006511 (n + 1)).toNat).toNat

end

end A002181.P17627377398581256547

/-! ## A002181.P48728492418902547

`A057635(A002202(n+1))-A196079(n+1)`
-/

namespace A002181.P48728492418902547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057635 (A002202 (n + 1)).toNat - A196079 (n + 1)

end

end A002181.P48728492418902547

/-! ## A002181.P6771857177932962865

`filter[A049283(n+1), A168181(#)]`
-/

namespace A002181.P6771857177932962865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A002181.P6771857177932962865

/-! ## A002181.P12527597234766733933

`filter[A049283(n+1), A000035(#)]`
-/

namespace A002181.P12527597234766733933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A002181.P12527597234766733933

/-! ## A002181.P3180476000701614046

`filter[A049283(n+1), A168184(#)]`
-/

namespace A002181.P3180476000701614046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A002181.P3180476000701614046

/-! ## A002181.P14351882969075550391

`filter[A049283(n+1), A257680(#)]`
-/

namespace A002181.P14351882969075550391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257680 (f1 j).toNat = 1) n)

end

end A002181.P14351882969075550391

/-! ## A002181.P6604782130638621370

`filter[A049283(n+1), A259044(#)]`
-/

namespace A002181.P6604782130638621370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A002181.P6604782130638621370

/-! ## A002181.P15020498249043597890

`A015126(A143423(n+1))`
-/

namespace A002181.P15020498249043597890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015126 (A143423 (n + 1)).toNat

end

end A002181.P15020498249043597890

/-! ## A002181.P13510293994341077894

`filter[A049283(n+1), A276950(#)]`
-/

namespace A002181.P13510293994341077894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276950 (f1 j).toNat = 1) n)

end

end A002181.P13510293994341077894

/-! ## A002181.P33489023437422343

`A015126(A006511(n+1))`
-/

namespace A002181.P33489023437422343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015126 (A006511 (n + 1)).toNat

end

end A002181.P33489023437422343

/-!
# A002182: Highly composite numbers: numbers n where d(n), the number of divisors of n (A000005), increases to a record.

The programs for A002182, there is no canonical definition to state claims against.
-/

/-! ## A002182.P5695244124093512242

`A135372(n+1)-1`
-/

namespace A002182.P5695244124093512242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135372 (n + 1) - 1

end

end A002182.P5695244124093512242

/-! ## A002182.P17450451283956246722

`A301413(n+1)*A319865(n+1)`
-/

namespace A002182.P17450451283956246722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301413 (n + 1) * A319865 (n + 1)

end

end A002182.P17450451283956246722

/-! ## A002182.P12367160874305661048

`A002110(A108602(n+1))*A301413(n+1)`
-/

namespace A002182.P12367160874305661048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (A108602 (n + 1)).toNat * A301413 (n + 1)

end

end A002182.P12367160874305661048

/-! ## A002182.P6801012933168890704

`A063072(n+1)-A072824(n+1)`
-/

namespace A002182.P6801012933168890704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063072 (n + 1) - A072824 (n + 1)

end

end A002182.P6801012933168890704

/-! ## A002182.P17577923106462048631

`record[A365901(n+1)]`
-/

namespace A002182.P17577923106462048631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365901 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002182.P17577923106462048631

/-! ## A002182.P13656236613999328936

`A262501(n)+a(n-1)` with `a(0)=1`
-/

namespace A002182.P13656236613999328936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A262501 n + a (n - 1)

end

end A002182.P13656236613999328936

/-! ## A002182.P10993278735297873974

`∑[A262501(A028310(n))]`
-/

namespace A002182.P10993278735297873974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262501 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002182.P10993278735297873974

/-! ## A002182.P8457082329613803304

`A054481(n+2)*A054482(n+2)`
-/

namespace A002182.P8457082329613803304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054481 (n + 2) * A054482 (n + 2)

end

end A002182.P8457082329613803304

/-! ## A002182.P3606273084847389757

`∑[A262501(n+1)]+1-A262501(n+1)`
-/

namespace A002182.P3606273084847389757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A262501 (n + 1))

end

end A002182.P3606273084847389757

/-! ## A002182.P14735322791495701693

`A054481(n+2)*A054483(n+2)-A262501(n+1)`
-/

namespace A002182.P14735322791495701693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054481 (n + 2) * A054483 (n + 2) - A262501 (n + 1)

end

end A002182.P14735322791495701693

/-! ## A002182.P18182438296466173256

`A167373(A016885(3*n+4))+A135372(n+1)`
-/

namespace A002182.P18182438296466173256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167373 (A016885 (3 * n + 4)).toNat + A135372 (n + 1)

end

end A002182.P18182438296466173256

/-! ## A002182.P14436488532080674228

`sqrt(A046952(n+1))`
-/

namespace A002182.P14436488532080674228
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A046952 (n + 1) : ℝ)

end

end A002182.P14436488532080674228

/-! ## A002182.P17903292252118712198

`ceil(A046952(n+1)/A135372(n+1))`
-/

namespace A002182.P17903292252118712198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046952 (n + 1) : ℚ) / (A135372 (n + 1) : ℚ)⌉

end

end A002182.P17903292252118712198

/-! ## A002182.P453940048762812698

`A152047(n+1)*A152048(n+1)`
-/

namespace A002182.P453940048762812698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152047 (n + 1) * A152048 (n + 1)

end

end A002182.P453940048762812698

/-! ## A002182.P10993783960379205998

`∩[A097212(n+1), A181804(n+1)]`
-/

namespace A002182.P10993783960379205998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181804 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002182.P10993783960379205998

/-! ## A002182.P7598296310119480188

`A025487(A306802(n+1))`
-/

namespace A002182.P7598296310119480188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (A306802 (n + 1)).toNat

end

end A002182.P7598296310119480188

/-! ## A002182.P3447167062073970583

`∩[A007416(n+1), A140999(n+1)]`
-/

namespace A002182.P3447167062073970583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140999 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002182.P3447167062073970583

/-! ## A002182.P17750250949647906920

`∪[A004778(n+1), A210594(n+1)]`
-/

namespace A002182.P17750250949647906920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002182.P17750250949647906920

/-!
# A002183: Number of divisors of n-th highly composite number.

The programs for A002183, there is no canonical definition to state claims against.
-/

/-! ## A002183.P11828328933565756809

`record[A273353(A336934(n+1))]`
-/

namespace A002183.P11828328933565756809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273353 (A336934 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002183.P11828328933565756809

/-! ## A002183.P11501366957302988556

`record[A273353(n+1)%A273353(n+3)]`
-/

namespace A002183.P11501366957302988556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273353 (n + 1)) (A273353 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002183.P11501366957302988556

/-! ## A002183.P4463019941239880218

`record[A273353(A032742(n+1))]`
-/

namespace A002183.P4463019941239880218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273353 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002183.P4463019941239880218

/-! ## A002183.P931643207200660327

`record[A273353(A008619(n))-A007814(n+1)]`
-/

namespace A002183.P931643207200660327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273353 (A008619 n).toNat - A007814 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002183.P931643207200660327

/-! ## A002183.P16089430268822779828

`record[A273353(A008619(n+1))/(A007814(n+1)+1)]`
-/

namespace A002183.P16089430268822779828
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273353 (A008619 (n + 1)).toNat : ℚ) / (A007814 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002183.P16089430268822779828

/-! ## A002183.P7503907920956652849

`record[A273353(A105220(n)+A002264(n))]`
-/

namespace A002183.P7503907920956652849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273353 (A105220 n + A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002183.P7503907920956652849

/-! ## A002183.P3137840953226573163

`record[A273353(A067004(n+1))]`
-/

namespace A002183.P3137840953226573163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273353 (A067004 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002183.P3137840953226573163

/-! ## A002183.P12677680571351070760

`record[A273353(A054576(n+1))]`
-/

namespace A002183.P12677680571351070760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273353 (A054576 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002183.P12677680571351070760

/-! ## A002183.P4887954946248370798

`record[A349608(n+1)]`
-/

namespace A002183.P4887954946248370798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002183.P4887954946248370798

/-! ## A002183.P8808446933691736070

`record[A053212(n+1)]`
-/

namespace A002183.P8808446933691736070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053212 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002183.P8808446933691736070

/-! ## A002183.P4835940725967511548

`record[A146288(n+1)]`
-/

namespace A002183.P4835940725967511548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002183.P4835940725967511548

/-! ## A002183.P7844081106098578181

`A146288(A306802(n+1))`
-/

namespace A002183.P7844081106098578181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146288 (A306802 (n + 1)).toNat

end

end A002183.P7844081106098578181

/-!
# A002184: a(n) = least primitive factor of 2^(2n+1) - 1.

The programs for A002184, there is no canonical definition to state claims against.
-/

/-! ## A002184.P14413507726766060609

`A112927(2*n+1)`
-/

namespace A002184.P14413507726766060609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112927 (2 * n + 1)

end

end A002184.P14413507726766060609

/-! ## A002184.P15387231653492290741

`A112927(n+1+n)+char[A290338(n+1)]`
-/

namespace A002184.P15387231653492290741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290338 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112927 (n + 1 + n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A002184.P15387231653492290741

/-! ## A002184.P8614534259495815998

`A112927(n+1+n)+char[A317174(n+1)]`
-/

namespace A002184.P8614534259495815998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317174 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112927 (n + 1 + n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A002184.P8614534259495815998

/-! ## A002184.P9496080572565350527

`lcm(A034947(n+1), A112927(A005408(n)))`
-/

namespace A002184.P9496080572565350527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n + 1)) (A112927 (A005408 n).toNat)

end

end A002184.P9496080572565350527

/-!
# A002185: Smallest primitive factor of 2^(2n+1) + 1.

The programs for A002185, there is no canonical definition to state claims against.
-/

/-! ## A002185.P4726755181516875108

`A112927(4*n+2)`
-/

namespace A002185.P4726755181516875108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112927 (4 * n + 2)

end

end A002185.P4726755181516875108

/-! ## A002185.P4128410431975820399

`or(1, A112927(xor(2, 4*n)))`
-/

namespace A002185.P4128410431975820399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A112927 (Nat.xor 2 (4 * n)))

end

end A002185.P4128410431975820399

/-! ## A002185.P10231215584886088900

`A112927(A008586(n)+2)%A297928(n)`
-/

namespace A002185.P10231215584886088900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112927 (A008586 n + 2).toNat) (A297928 n)

end

end A002185.P10231215584886088900

/-! ## A002185.P9004619517741285125

`A112927(A008574(n)+2)%A000302(n+1)`
-/

namespace A002185.P9004619517741285125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112927 (A008574 n + 2).toNat) (A000302 (n + 1))

end

end A002185.P9004619517741285125

/-! ## A002185.P17918949451386853102

`A137734(n²)+A112927(A008586(n)+2)-A028310(n)`
-/

namespace A002185.P17918949451386853102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (n ^ 2) + (A112927 (A008586 n + 2).toNat - A028310 n)

end

end A002185.P17918949451386853102

/-! ## A002185.P4439229817408509161

`A112927(A008586(n)+2)/and(1, A006723(n))`
-/

namespace A002185.P4439229817408509161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112927 (A008586 n + 2).toNat : ℚ) / (Int.land 1 (A006723 n) : ℚ)

end

end A002185.P4439229817408509161

/-!
# A002186: Sprague-Grundy values for the game of Kayles (octal games .77 and .771).

The programs for A002186, there is no canonical definition to state claims against.
-/

/-! ## A002186.P18420576731291970695

`floor(A071074(2*n)/2)`
-/

namespace A002186.P18420576731291970695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A071074 (2 * n) : ℚ) / 2⌋

end

end A002186.P18420576731291970695

/-!
# A002187: Sprague-Grundy values for Dawson's Chess (octal game .137).

The programs for A002187, there is no canonical definition to state claims against.
-/

/-! ## A002187.P2439612925145257188

`val(A173481(A071518(n+1)), 4)`
-/

namespace A002187.P2439612925145257188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A173481 (A071518 (n + 1)).toNat).toNat 4

end

end A002187.P2439612925145257188

/-!
# A002188: Sprague-Grundy value for Grundy's game when starting with n tokens.

The programs for A002188, there is no canonical definition to state claims against.
-/

/-! ## A002188.P1943995435222611900

`and(A110658(n), A136400(n^3))`
-/

namespace A002188.P1943995435222611900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A110658 n) (A136400 (n ^ 3))

end

end A002188.P1943995435222611900

/-! ## A002188.P5567661485176322732

`A110658(n)%A108910(A252866(n+1))`
-/

namespace A002188.P5567661485176322732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110658 n) (A108910 (A252866 (n + 1)).toNat)

end

end A002188.P5567661485176322732

/-! ## A002188.P5221493341897603650

`A110657(A028242(n))%A108910(A252866(n+1))`
-/

namespace A002188.P5221493341897603650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110657 (A028242 n).toNat) (A108910 (A252866 (n + 1)).toNat)

end

end A002188.P5221493341897603650

/-! ## A002188.P38567311145829912

`A110658(n)%A001221(A059599(n))`
-/

namespace A002188.P38567311145829912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110658 n) (A001221 (A059599 n).toNat)

end

end A002188.P38567311145829912

/-! ## A002188.P12725623066308619292

`A122203(lt[A247049(n), A091866(n)])`
-/

namespace A002188.P12725623066308619292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247049 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091866 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A002188.P12725623066308619292

/-!
# A002190: Sum_{n>=0} a(n)*x^n/n!^2 = -log(BesselJ(0,2*sqrt(x))).

The programs for A002190, there is no canonical definition to state claims against.
-/

/-! ## A002190.P8846543815381485266

`abs(A101981(n))`
-/

namespace A002190.P8846543815381485266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A101981 n|

end

end A002190.P8846543815381485266

/-! ## A002190.P3951839185927250242

`lcm(A066715(n), A101981(n))`
-/

namespace A002190.P3951839185927250242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A066715 n) (A101981 n)

end

end A002190.P3951839185927250242

/-! ## A002190.P647815807543032901

`gcd(A000038(n+1), A101981(n))`
-/

namespace A002190.P647815807543032901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (n + 1)) (A101981 n)

end

end A002190.P647815807543032901

/-! ## A002190.P14540503691088996556

`gcd(-A101981(n), A101981(n-char[1]))`
-/

namespace A002190.P14540503691088996556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A101981 n) (A101981 (n - (if ∃ j, f1 j = n then 1 else 0)))

end

end A002190.P14540503691088996556

/-! ## A002190.P12208571304624456056

`A352313(n)/record[A094527(n)]`
-/

namespace A002190.P12208571304624456056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A352313 n : ℚ) / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ)

end

end A002190.P12208571304624456056

/-!
# A002191: Possible values for sum of divisors of n.

The programs for A002191, the canonical program `A002191.P9732241169647202108` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002191 has offset 1).

The definition of A002191 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002191.P9773886202820254562

`∑{d}[A002192(n+1), #]`
-/

namespace A002191.P9773886202820254562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002192 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A002191.P9773886202820254562

namespace A002191

/-- `∑{d}[A002192(n+1), #]` -/
def P9773886202820254562.Spec : Prop :=
  ∀ n, (P9773886202820254562.a n : ℤ) = A002191 (n + 1)

end A002191

/-! ## A002191.P17028913905758657122

`∑{d}[A329821(n+1), #]`
-/

namespace A002191.P17028913905758657122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A002191.P17028913905758657122

namespace A002191

/-- `∑{d}[A329821(n+1), #]` -/
def P17028913905758657122.Spec : Prop :=
  ∀ n, (P17028913905758657122.a n : ℤ) = A002191 (n + 1)

end A002191

/-! ## A002191.P9732241169647202108

`eq[1, A175192(n+1)]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002191

/-- `eq[1, A175192(n+1)]+1` -/
def P9732241169647202108.Spec : Prop :=
  ∀ n, (P9732241169647202108.a n : ℤ) = A002191 (n + 1)

theorem P9732241169647202108.correct : P9732241169647202108.Spec := by
  intro n
  simp only [A002191, Nat.add_sub_cancel]

end A002191

/-! ## A002191.P14938967092408972626

`A083531(n)+a(n-1)` with `a(0)=1`
-/

namespace A002191.P14938967092408972626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A083531 n + a (n - 1)

end

end A002191.P14938967092408972626

namespace A002191

/-- `A083531(n)+a(n-1)` -/
def P14938967092408972626.Spec : Prop :=
  ∀ n, P14938967092408972626.a n = A002191 (n + 1)

end A002191

/-! ## A002191.P8024444138457932800

`A000203(A002192(n+1))`
-/

namespace A002191.P8024444138457932800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002192 (n + 1)).toNat

end

end A002191.P8024444138457932800

namespace A002191

/-- `A000203(A002192(n+1))` -/
def P8024444138457932800.Spec : Prop :=
  ∀ n, P8024444138457932800.a n = A002191 (n + 1)

end A002191

/-! ## A002191.P6188165124766750132

`A000203(A329821(n+1))`
-/

namespace A002191.P6188165124766750132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A329821 (n + 1)).toNat

end

end A002191.P6188165124766750132

namespace A002191

/-- `A000203(A329821(n+1))` -/
def P6188165124766750132.Spec : Prop :=
  ∀ n, P6188165124766750132.a n = A002191 (n + 1)

end A002191

/-! ## A002191.P9305689346521059426

`∪[A007370(n+1), A159886(n+1)]`
-/

namespace A002191.P9305689346521059426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002191.P9305689346521059426

namespace A002191

/-- `∪[A007370(n+1), A159886(n+1)]` -/
def P9305689346521059426.Spec : Prop :=
  ∀ n, (P9305689346521059426.a n : ℤ) = A002191 (n + 1)

end A002191

/-! ## A002191.P7449394762406157802

`∪[A060657(n+1), A275671(n+1)]`
-/

namespace A002191.P7449394762406157802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002191.P7449394762406157802

namespace A002191

/-- `∪[A060657(n+1), A275671(n+1)]` -/
def P7449394762406157802.Spec : Prop :=
  ∀ n, (P7449394762406157802.a n : ℤ) = A002191 (n + 1)

end A002191

/-! ## A002191.P10250192525699950097

`record[A000027(n+1)*A175192(n+1)]`
-/

namespace A002191.P10250192525699950097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A175192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002191.P10250192525699950097

namespace A002191

/-- `record[A000027(n+1)*A175192(n+1)]` -/
def P10250192525699950097.Spec : Prop :=
  ∀ n, P10250192525699950097.a n = A002191 (n + 1)

end A002191

/-! ## A002191.P15563314186611995558

`∑[A083531(n+1)]+1-A083531(n+1)`
-/

namespace A002191.P15563314186611995558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A083531 (n + 1))

end

end A002191.P15563314186611995558

namespace A002191

/-- `∑[A083531(n+1)]+1-A083531(n+1)` -/
def P15563314186611995558.Spec : Prop :=
  ∀ n, P15563314186611995558.a n = A002191 (n + 1)

end A002191

/-! ## A002191.P5225300336991892576

`filter[A211347(n+1), A175192(#)]`
-/

namespace A002191.P5225300336991892576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j).toNat = 1) n)

end

end A002191.P5225300336991892576

namespace A002191

/-- `filter[A211347(n+1), A175192(#)]` -/
def P5225300336991892576.Spec : Prop :=
  ∀ n, P5225300336991892576.a n = A002191 (n + 1)

end A002191

/-! ## A002191.P6295024240275581485

`filter[A173016(n+1), A175192(#)]`
-/

namespace A002191.P6295024240275581485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173016 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j).toNat = 1) n)

end

end A002191.P6295024240275581485

namespace A002191

/-- `filter[A173016(n+1), A175192(#)]` -/
def P6295024240275581485.Spec : Prop :=
  ∀ n, P6295024240275581485.a n = A002191 (n + 1)

end A002191

/-! ## A002191.P4369688628772252007

`record[A007609(A277564(n+1))]`
-/

namespace A002191.P4369688628772252007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007609 (A277564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002191.P4369688628772252007

namespace A002191

/-- `record[A007609(A277564(n+1))]` -/
def P4369688628772252007.Spec : Prop :=
  ∀ n, P4369688628772252007.a n = A002191 (n + 1)

end A002191

/-! ## A002191.P10192358557187514945

`A007609(∑[A185147(n+1)])`
-/

namespace A002191.P10192358557187514945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007609 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002191.P10192358557187514945

namespace A002191

/-- `A007609(∑[A185147(n+1)])` -/
def P10192358557187514945.Spec : Prop :=
  ∀ n, P10192358557187514945.a n = A002191 (n + 1)

end A002191

/-! ## A002191.P1366073756662890971

`filter[n+1, A175192(#)]`
-/

namespace A002191.P1366073756662890971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j) = 1) n)

end

end A002191.P1366073756662890971

namespace A002191

/-- `filter[n+1, A175192(#)]` -/
def P1366073756662890971.Spec : Prop :=
  ∀ n, (P1366073756662890971.a n : ℤ) = A002191 (n + 1)

end A002191

/-! ## A002191.P14299011060007380394

`record[∑{d}[A051444(n+1), #]]`
-/

namespace A002191.P14299011060007380394
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002191.P14299011060007380394

namespace A002191

/-- `record[∑{d}[A051444(n+1), #]]` -/
def P14299011060007380394.Spec : Prop :=
  ∀ n, (P14299011060007380394.a n : ℤ) = A002191 (n + 1)

end A002191

/-! ## A002191.P12594094979904861144

`record[∑{d}[A057637(n+1), #]]`
-/

namespace A002191.P12594094979904861144
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002191.P12594094979904861144

namespace A002191

/-- `record[∑{d}[A057637(n+1), #]]` -/
def P12594094979904861144.Spec : Prop :=
  ∀ n, (P12594094979904861144.a n : ℤ) = A002191 (n + 1)

end A002191

/-! ## A002191.P18394906103724199294

`lt[A175253(n+1), 1]+1`
-/

namespace A002191.P18394906103724199294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175253 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A002191.P18394906103724199294

namespace A002191

/-- `lt[A175253(n+1), 1]+1` -/
def P18394906103724199294.Spec : Prop :=
  ∀ n, (P18394906103724199294.a n : ℤ) = A002191 (n + 1)

end A002191

/-! ## A002191.P13997016842330625910

`lt[1, A283524(n+1)]+1`
-/

namespace A002191.P13997016842330625910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A002191.P13997016842330625910

namespace A002191

/-- `lt[1, A283524(n+1)]+1` -/
def P13997016842330625910.Spec : Prop :=
  ∀ n, (P13997016842330625910.a n : ℤ) = A002191 (n + 1)

end A002191

/-!
# A002192: Least integer with A000203(a(n)) = A002191(n), where A002191 = range of the sum-of-divisors function A000203.

The programs for A002192, there is no canonical definition to state claims against.
-/

/-! ## A002192.P5896802004355228893

`A275987(A329821(n+1))`
-/

namespace A002192.P5896802004355228893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275987 (A329821 (n + 1)).toNat

end

end A002192.P5896802004355228893

/-! ## A002192.P5611228513848016771

`A051444(A002191(n+1))`
-/

namespace A002192.P5611228513848016771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (A002191 (n + 1)).toNat

end

end A002192.P5611228513848016771

/-! ## A002192.P6647778807167856104

`A051444(∑{d}[A329821(n+1), #])`
-/

namespace A002192.P6647778807167856104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A002192.P6647778807167856104

/-! ## A002192.P318576226003281599

`A051444(record[∑{d}[A051444(n+1), #]])`
-/

namespace A002192.P318576226003281599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A002192.P318576226003281599

/-! ## A002192.P11642064794341790402

`A051444(eq[1, A175192(n+1)]+1)`
-/

namespace A002192.P11642064794341790402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A002192.P11642064794341790402

/-! ## A002192.P6939126467058425612

`A051444(lt[0, A286011(n+1)]+1)`
-/

namespace A002192.P6939126467058425612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A002192.P6939126467058425612

/-! ## A002192.P4628068221567099728

`A051444(record[(n+1)*A175192(n+1)])`
-/

namespace A002192.P4628068221567099728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A175192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A002192.P4628068221567099728

/-! ## A002192.P15902270295388626279

`A051444(lt[n, A057637(n+1)²]+1)`
-/

namespace A002192.P15902270295388626279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A002192.P15902270295388626279

/-! ## A002192.P259517219235839633

`A051444(record[n%(A051444(n+1)+n)]+1)`
-/

namespace A002192.P259517219235839633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A051444 (n + 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051444 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A002192.P259517219235839633

/-! ## A002192.P9720584377344403607

`A085790(A074753(A002191(n+1))+1)`
-/

namespace A002192.P9720584377344403607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085790 (A074753 (A002191 (n + 1)).toNat + 1).toNat

end

end A002192.P9720584377344403607

/-!
# A002193: Decimal expansion of square root of 2.

The programs for A002193, there is no canonical definition to state claims against.
-/

/-! ## A002193.P2186266168763426688

`A188582(abs(1-n))`
-/

namespace A002193.P2186266168763426688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188582 |1 - (n : ℤ)|.toNat

end

end A002193.P2186266168763426688

/-! ## A002193.P10244540913488731447

`A014176(n)-floor(acot(n))`
-/

namespace A002193.P10244540913488731447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (n + 1) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A002193.P10244540913488731447

/-! ## A002193.P16919469755767932479

`A014176(A000038(n)+n)`
-/

namespace A002193.P16919469755767932479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 ((A000038 n + (n : ℤ)).toNat + 1)

end

end A002193.P16919469755767932479

/-! ## A002193.P7264062959960052201

`A014176(n)-A000007(n)`
-/

namespace A002193.P7264062959960052201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (n + 1) - A000007 n

end

end A002193.P7264062959960052201

/-! ## A002193.P4929196163328638513

`A294671(n)-A002163(n)`
-/

namespace A002193.P4929196163328638513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294671 (n + 1) - A002163 (n + 1)

end

end A002193.P4929196163328638513

/-! ## A002193.P2197330119769584174

`A014176(n)/A054977(n)`
-/

namespace A002193.P2197330119769584174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014176 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A002193.P2197330119769584174

/-! ## A002193.P2381383804513112562

`A014176(2*A000007(n)+n)`
-/

namespace A002193.P2381383804513112562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 ((2 * A000007 n + (n : ℤ)).toNat + 1)

end

end A002193.P2381383804513112562

/-! ## A002193.P15131139706125402433

`A014176(2*A028310(n)-n)`
-/

namespace A002193.P15131139706125402433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 ((2 * A028310 n - (n : ℤ)).toNat + 1)

end

end A002193.P15131139706125402433

/-! ## A002193.P13433206726286780243

`A014176(n)-A000038(n)/2`
-/

namespace A002193.P13433206726286780243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014176 (n + 1) : ℚ) - (A000038 n : ℚ) / 2

end

end A002193.P13433206726286780243

/-! ## A002193.P7130754147560002053

`A014176(n)/4*A040002(n)`
-/

namespace A002193.P7130754147560002053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014176 (n + 1) : ℚ) / 4 * (A040002 n : ℚ)

end

end A002193.P7130754147560002053

/-! ## A002193.P8253192070027874243

`A014176(n)+n-A028310(n)`
-/

namespace A002193.P8253192070027874243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (n + 1) + ((n : ℤ) - A028310 n)

end

end A002193.P8253192070027874243

/-! ## A002193.P14273388942861871986

`A014176(n)/gcd(2, A000040(n+1))`
-/

namespace A002193.P14273388942861871986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014176 (n + 1) : ℚ) / (Int.gcd 2 (A000040 (n + 1)) : ℚ)

end

end A002193.P14273388942861871986

/-! ## A002193.P17676080881661476694

`A014176(A000007(n)+A000007(n)+n)`
-/

namespace A002193.P17676080881661476694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 ((A000007 n + (A000007 n + (n : ℤ))).toNat + 1)

end

end A002193.P17676080881661476694

/-! ## A002193.P14947522626650836165

`A001622(n)+A014176(n)-A104457(n)`
-/

namespace A002193.P14947522626650836165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1) + (A014176 (n + 1) - A104457 (n + 1))

end

end A002193.P14947522626650836165

/-! ## A002193.P6019257053973712191

`A014176(n)-A010052(n+1)*A010052(n)`
-/

namespace A002193.P6019257053973712191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (n + 1) - A010052 (n + 1) * A010052 n

end

end A002193.P6019257053973712191

/-! ## A002193.P1004904341917313115

`A014176(n)-A010054(n+1)*A010054(n)`
-/

namespace A002193.P1004904341917313115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (n + 1) - A010054 (n + 1) * A010054 n

end

end A002193.P1004904341917313115

/-! ## A002193.P7749386941142194915

`A240828(n+2)+A014176(n)-A185048(n+2)`
-/

namespace A002193.P7749386941142194915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240828 (n + 2) + (A014176 (n + 1) - A185048 (n + 2))

end

end A002193.P7749386941142194915

/-! ## A002193.P16885231411197637396

`A120731(n+1)`
-/

namespace A002193.P16885231411197637396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 (n + 1 + 1)

end

end A002193.P16885231411197637396

/-! ## A002193.P4954476870541176990

`A014176(n)-A089801(n+1)*A089801(n)`
-/

namespace A002193.P4954476870541176990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (n + 1) - A089801 (n + 1) * A089801 n

end

end A002193.P4954476870541176990

/-!
# A002194: Decimal expansion of sqrt(3).

The programs for A002194, there is no canonical definition to state claims against.
-/

/-! ## A002194.P10083708791682557942

`A090388(n-a(n-1)%-1)` with `a(0)=1`
-/

namespace A002194.P10083708791682557942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A090388 (((n : ℤ) - Int.tmod (a (n - 1)) (-1)).toNat + 1)

end

end A002194.P10083708791682557942

/-! ## A002194.P16998228729410762725

`A019973(n)-A000038(n)`
-/

namespace A002194.P16998228729410762725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 (n + 1) - A000038 n

end

end A002194.P16998228729410762725

/-! ## A002194.P15577864464193598171

`A090388(n)-A000007(n)`
-/

namespace A002194.P15577864464193598171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090388 (n + 1) - A000007 n

end

end A002194.P15577864464193598171

/-! ## A002194.P6462300485175452213

`A019973(n)-2*A000007(n)`
-/

namespace A002194.P6462300485175452213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 (n + 1) - 2 * A000007 n

end

end A002194.P6462300485175452213

/-! ## A002194.P8588096264806896198

`A090388(n)-A010051(A048647(2*(n+1)))`
-/

namespace A002194.P8588096264806896198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090388 (n + 1) - A010051 (A048647 (2 * (n + 1))).toNat

end

end A002194.P8588096264806896198

/-! ## A002194.P10273462107757578836

`A019973(n)-A000122(A005117(n+1))`
-/

namespace A002194.P10273462107757578836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 (n + 1) - A000122 (A005117 (n + 1)).toNat

end

end A002194.P10273462107757578836

/-! ## A002194.P4168590603747347970

`xor(A000038(3*n), A019973(n))`
-/

namespace A002194.P4168590603747347970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000038 (3 * n)) (A019973 (n + 1))

end

end A002194.P4168590603747347970

/-! ## A002194.P4969997903067853791

`A097903(∑[n])`
-/

namespace A002194.P4969997903067853791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097903 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002194.P4969997903067853791

/-! ## A002194.P493928797957590253

`A073027(A167614(n+1))`
-/

namespace A002194.P493928797957590253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073027 (A167614 (n + 1)).toNat

end

end A002194.P493928797957590253

/-! ## A002194.P558242808227991209

`A019973(n)-A000122(n²+1)`
-/

namespace A002194.P558242808227991209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019973 (n + 1) - A000122 (n ^ 2 + 1)

end

end A002194.P558242808227991209

/-!
# A002195: Numerators of coefficients for numerical integration.

The programs for A002195, there is no canonical definition to state claims against.
-/

/-! ## A002195.P17930393914471561851

`A141045(∏[∏{e}[n+1, #+1]])`
-/

namespace A002195.P17930393914471561851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141045 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A002195.P17930393914471561851

/-!
# A002196: Denominators of coefficients for numerical integration.

The programs for A002196, there is no canonical definition to state claims against.
-/

/-! ## A002196.P7553028112043234370

`∏{e}[4^n, A002209(#)]`
-/

namespace A002196.P7553028112043234370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A002209 (Nat.factorization (f1 n) p)

end

end A002196.P7553028112043234370

/-! ## A002196.P5710112466725186276

`A002209(2*A056143(n))`
-/

namespace A002196.P5710112466725186276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002209 (2 * A056143 n).toNat

end

end A002196.P5710112466725186276

/-! ## A002196.P18322712686299698336

`A002209(A056143(n)+n)`
-/

namespace A002196.P18322712686299698336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002209 (A056143 n + (n : ℤ)).toNat

end

end A002196.P18322712686299698336

/-! ## A002196.P935234525289372560

`A002209(record[abs(A350951(n+1))])`
-/

namespace A002196.P935234525289372560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A350951 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002209 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A002196.P935234525289372560

/-!
# A002198: Denominators of coefficients for numerical integration.

The programs for A002198, there is no canonical definition to state claims against.
-/

/-! ## A002198.P12250711872128397930

`(2*n+1)*A006685(n)`
-/

namespace A002198.P12250711872128397930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A006685 n

end

end A002198.P12250711872128397930

/-!
# A002199: Least negative primitive root of n-th prime.

The programs for A002199, there is no canonical definition to state claims against.
-/

/-! ## A002199.P9800248973630853439

`Δ[A007504(n)]-A071894(n+1)`
-/

namespace A002199.P9800248973630853439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A071894 (n + 1)

end

end A002199.P9800248973630853439

/-! ## A002199.P10666462040085208271

`A000040(n+1)-A071894(n+1)`
-/

namespace A002199.P10666462040085208271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A071894 (n + 1)

end

end A002199.P10666462040085208271

/-! ## A002199.P8935658198380122495

`∑[A054541(n+1)]-A071894(n+1)`
-/

namespace A002199.P8935658198380122495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A071894 (n + 1)

end

end A002199.P8935658198380122495

/-! ## A002199.P13271138791335808208

`A006093(n+1)+1-A071894(n+1)`
-/

namespace A002199.P13271138791335808208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A071894 (n + 1))

end

end A002199.P13271138791335808208

/-! ## A002199.P6302320853181751983

`A008864(n+1)-(A071894(n+1)+1)`
-/

namespace A002199.P6302320853181751983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - (A071894 (n + 1) + 1)

end

end A002199.P6302320853181751983

/-! ## A002199.P12648162827218330117

`A007504(n+1)-(A071894(n+1)+A007504(n))`
-/

namespace A002199.P12648162827218330117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - (A071894 (n + 1) + A007504 n)

end

end A002199.P12648162827218330117

/-! ## A002199.P8659233169793034572

`A008347(n+1)+A008347(n)-A071894(n+1)`
-/

namespace A002199.P8659233169793034572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (n + 1) + (A008347 n - A071894 (n + 1))

end

end A002199.P8659233169793034572

/-! ## A002199.P9979905344772327919

`A002808(n+1)+A038529(n+1)-A071894(n+1)`
-/

namespace A002199.P9979905344772327919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) + (A038529 (n + 1) - A071894 (n + 1))

end

end A002199.P9979905344772327919

/-! ## A002199.P15933510479657417257

`A001358(n+1)+A065870(n+1)-A071894(n+1)`
-/

namespace A002199.P15933510479657417257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) + (A065870 (n + 1) - A071894 (n + 1))

end

end A002199.P15933510479657417257

/-! ## A002199.P11798871221278068774

`A037168(n+1)-(A071894(n+1)+A040976(n+1))`
-/

namespace A002199.P11798871221278068774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037168 (n + 1) - (A071894 (n + 1) + A040976 (n + 1))

end

end A002199.P11798871221278068774

/-! ## A002199.P1976728148064842702

`A000720(n+1)+A111181(n+1)-A071894(n+1)`
-/

namespace A002199.P1976728148064842702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 1) + (A111181 (n + 1) - A071894 (n + 1))

end

end A002199.P1976728148064842702

/-! ## A002199.P2097165020821087642

`A008578(n+2)-A071894(n+1)`
-/

namespace A002199.P2097165020821087642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A071894 (n + 1)

end

end A002199.P2097165020821087642

/-! ## A002199.P1053383427987032172

`A036467(n+1)+A036467(n)-A071894(n+1)`
-/

namespace A002199.P1053383427987032172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036467 (n + 1) + (A036467 n - A071894 (n + 1))

end

end A002199.P1053383427987032172

/-! ## A002199.P13830611861391205367

`A158611(n+3)-A071894(n+1)`
-/

namespace A002199.P13830611861391205367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 3) - A071894 (n + 1)

end

end A002199.P13830611861391205367

/-! ## A002199.P11214250477680655931

`A090107(eq[1, A054024(n+1)]-A071894(n+1)+1)`
-/

namespace A002199.P11214250477680655931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090107 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A071894 (n + 1) + 1).toNat

end

end A002199.P11214250477680655931

/-! ## A002199.P9281581713621542578

`A109763(2*n+1)-A071894(n+1)`
-/

namespace A002199.P9281581713621542578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109763 (2 * n + 1) - A071894 (n + 1)

end

end A002199.P9281581713621542578

/-! ## A002199.P16896751826277502001

`A092504(n+1)-(A071894(n+1)+A011757(n+1))`
-/

namespace A002199.P16896751826277502001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092504 (n + 1) - (A071894 (n + 1) + A011757 (n + 1))

end

end A002199.P16896751826277502001

/-! ## A002199.P594404908572187711

`∑{p}[A000040(n+1), #-A046146(#)]`
-/

namespace A002199.P594404908572187711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((p : ℤ) - A046146 p)

end

end A002199.P594404908572187711

/-! ## A002199.P4412866566324459242

`record[A111089(n+1)]-A071894(n+1)`
-/

namespace A002199.P4412866566324459242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A071894 (n + 1)

end

end A002199.P4412866566324459242

/-! ## A002199.P7121063900992550211

`A182986(n+2)-A046146(A182986(n+2))`
-/

namespace A002199.P7121063900992550211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) - A046146 (A182986 (n + 2)).toNat

end

end A002199.P7121063900992550211

