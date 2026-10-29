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
import Seq.B000.C018
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
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
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
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A133500: The powertrain or power train map: Powertrain(n): if abcd... is the decimal expansion of a number n, then the powertrain of n is the number n' = a^b*c^d* ..., which ends in an exponent or a base according as the number of digits is even or odd. a(0) = 0 by convention.

The programs for A133500, there is no canonical definition to state claims against.
-/

/-! ## A133500.P16660845851399603233

`A075877(A028310(n))%A187829(n+1)`
-/

namespace A133500.P16660845851399603233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075877 (A028310 n).toNat) (A187829 (n + 1))

end

end A133500.P16660845851399603233

/-! ## A133500.P6659721598229406007

`A075877(A028310(n))-A000007(A089730(n+1))`
-/

namespace A133500.P6659721598229406007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075877 (A028310 n).toNat - A000007 (A089730 (n + 1)).toNat

end

end A133500.P6659721598229406007

/-!
# A133501: Number of steps for "powertrain" operation to converge when started at n.

The programs for A133501, there is no canonical definition to state claims against.
-/

/-! ## A133501.P10737232297845242288

`A133502(n)-1`
-/

namespace A133501.P10737232297845242288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133502 n - 1

end

end A133501.P10737232297845242288

/-! ## A133501.P6255677046926183130

`A070198(n)%A133502(n)`
-/

namespace A133501.P6255677046926183130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A133502 n)

end

end A133501.P6255677046926183130

/-! ## A133501.P11304286685851205654

`A198277(n)%A133502(n)`
-/

namespace A133501.P11304286685851205654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A133502 n)

end

end A133501.P11304286685851205654

/-! ## A133501.P2303537327342388610

`A200748(n)%A133502(n)`
-/

namespace A133501.P2303537327342388610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A133502 n)

end

end A133501.P2303537327342388610

/-! ## A133501.P6899380581514221234

`A134824(n+2)+A133502(n)`
-/

namespace A133501.P6899380581514221234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A133502 n

end

end A133501.P6899380581514221234

/-! ## A133501.P17933438558976405668

`A030494(n+1)%A133502(n)`
-/

namespace A133501.P17933438558976405668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A133502 n)

end

end A133501.P17933438558976405668

/-! ## A133501.P2592630820524530868

`A058197(n+1)%A133502(n)`
-/

namespace A133501.P2592630820524530868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A058197 (n + 1)) (A133502 n)

end

end A133501.P2592630820524530868

/-! ## A133501.P3498071671601362481

`A072828(n+1)%A133502(n)`
-/

namespace A133501.P3498071671601362481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A133502 n)

end

end A133501.P3498071671601362481

/-! ## A133501.P1477911888725926287

`A079782(n+1)%A133502(n)`
-/

namespace A133501.P1477911888725926287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A133502 n)

end

end A133501.P1477911888725926287

/-! ## A133501.P8825184972433770369

`A083685(n+1)%A133502(n)`
-/

namespace A133501.P8825184972433770369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A133502 n)

end

end A133501.P8825184972433770369

/-! ## A133501.P16891441385022602769

`A083800(n+1)%A133502(n)`
-/

namespace A133501.P16891441385022602769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083800 (n + 1)) (A133502 n)

end

end A133501.P16891441385022602769

/-! ## A133501.P10171069211798390909

`A117010(n+1)%A133502(n)`
-/

namespace A133501.P10171069211798390909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117010 (n + 1)) (A133502 n)

end

end A133501.P10171069211798390909

/-! ## A133501.P5113020920234937270

`A121934(n+1)%A133502(n)`
-/

namespace A133501.P5113020920234937270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A133502 n)

end

end A133501.P5113020920234937270

/-! ## A133501.P6279083884042524542

`A166931(n+1)%A133502(n)`
-/

namespace A133501.P6279083884042524542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166931 (n + 1)) (A133502 n)

end

end A133501.P6279083884042524542

/-! ## A133501.P14237129160292276962

`A181562(n+1)%A133502(n)`
-/

namespace A133501.P14237129160292276962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181562 (n + 1)) (A133502 n)

end

end A133501.P14237129160292276962

/-! ## A133501.P8286540155941992414

`A127227(n+3)%A133502(n)`
-/

namespace A133501.P8286540155941992414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127227 (n + 3)) (A133502 n)

end

end A133501.P8286540155941992414

/-! ## A133501.P1559188416956091272

`A127228(n+4)%A133502(n)`
-/

namespace A133501.P1559188416956091272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127228 (n + 4)) (A133502 n)

end

end A133501.P1559188416956091272

/-! ## A133501.P9207965755332882091

`A127229(n+5)%A133502(n)`
-/

namespace A133501.P9207965755332882091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A133502 n)

end

end A133501.P9207965755332882091

/-! ## A133501.P17853480592185145562

`A009994(gcd(n, n+1)*A133502(n))`
-/

namespace A133501.P17853480592185145562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 ((Nat.gcd n (n + 1) : ℤ) * A133502 n).toNat

end

end A133501.P17853480592185145562

/-!
# A133502: A133501(n) + 1.

The programs for A133502, there is no canonical definition to state claims against.
-/

/-! ## A133502.P3638797454271735681

`A133501(n)+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A133502.P3638797454271735681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133501 n + 1

end

end A133502.P3638797454271735681

/-! ## A133502.P11771346154931310248

`A005496(A133501(n))`
-/

namespace A133502.P11771346154931310248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005496 (A133501 n).toNat

end

end A133502.P11771346154931310248

/-! ## A133502.P3961438534342047488

`A008619(2*A133501(n))`
-/

namespace A133502.P3961438534342047488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A133501 n).toNat

end

end A133502.P3961438534342047488

/-! ## A133502.P9022330914460101476

`A028242(2*A133501(n))`
-/

namespace A133502.P9022330914460101476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A133501 n).toNat

end

end A133502.P9022330914460101476

/-! ## A133502.P2252213680087948221

`A052938(2*A133501(n))`
-/

namespace A133502.P2252213680087948221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A133501 n).toNat

end

end A133502.P2252213680087948221

/-! ## A133502.P11585344376740479021

`A328399(2*A133501(n))`
-/

namespace A133502.P11585344376740479021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 (2 * A133501 n).toNat

end

end A133502.P11585344376740479021

/-! ## A133502.P17548956403101880140

`A008611(3*A133501(n))`
-/

namespace A133502.P17548956403101880140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A133501 n).toNat

end

end A133502.P17548956403101880140

/-! ## A133502.P10992445516151060655

`A000005(2^A133501(n))`
-/

namespace A133502.P10992445516151060655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A133501 n : ℤ))).toNat

end

end A133502.P10992445516151060655

/-!
# A133504: Numbers that set records in A133500.

The programs for A133504, there is no canonical definition to state claims against.
-/

/-! ## A133504.P14095429459043490183

`record[A133500(n)]`
-/

namespace A133504.P14095429459043490183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133504.P14095429459043490183

/-! ## A133504.P9846523304035825792

`record[A133048(A004086(n))]`
-/

namespace A133504.P9846523304035825792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133048 (A004086 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133504.P9846523304035825792

/-! ## A133504.P16173712531271846200

`A133500(A133505(n+1))`
-/

namespace A133504.P16173712531271846200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 (A133505 (n + 1)).toNat

end

end A133504.P16173712531271846200

/-! ## A133504.P8797529612329724267

`∪[A000079(A227549(n+1)), A227549(n+1)]`
-/

namespace A133504.P8797529612329724267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A227549 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133504.P8797529612329724267

/-! ## A133504.P5014889812655228738

`lt[∑{e}[(2*n)², n-1-#], n+2]`
-/

namespace A133504.P5014889812655228738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ((n : ℤ) - 1 - (Nat.factorization (f2 n) p : ℤ))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A133504.P5014889812655228738

/-!
# A133505: Numbers where records occur in A133500.

The programs for A133505, there is no canonical definition to state claims against.
-/

/-! ## A133505.P2734482954926888897

`lt[A213300(A070565(n)), A071925(2*n+3)]`
-/

namespace A133505.P2734482954926888897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213300 (A070565 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071925 (2 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133505.P2734482954926888897

/-! ## A133505.P8702441540670838374

`lt[A030096(n+1), A045917(A062384(n+1))]`
-/

namespace A133505.P8702441540670838374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045917 (A062384 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133505.P8702441540670838374

/-!
# A133506: Numbers n such that powertrain(n) < n.

The programs for A133506, there is no canonical definition to state claims against.
-/

/-! ## A133506.P15883295109123778074

`lt[A133500(n), n]`
-/

namespace A133506.P15883295109123778074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A133506.P15883295109123778074

/-! ## A133506.P4063455926876833771

`lt[A075877(n+1), n]+1`
-/

namespace A133506.P4063455926876833771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075877 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A133506.P4063455926876833771

/-! ## A133506.P9152369469130243064

`lt[A000030(n)^(n%10), n]`
-/

namespace A133506.P9152369469130243064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 n ^ (n % 10)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A133506.P9152369469130243064

/-! ## A133506.P8232450364029266772

`lt[A075877(A028310(n)), n]`
-/

namespace A133506.P8232450364029266772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075877 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A133506.P8232450364029266772

/-! ## A133506.P9433092804781611744

`lt[A133048(A004086(n)), n]`
-/

namespace A133506.P9433092804781611744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133048 (A004086 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A133506.P9433092804781611744

/-! ## A133506.P16278413980772385335

`lt[A133048(A004185(n)), n]`
-/

namespace A133506.P16278413980772385335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133048 (A004185 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A133506.P16278413980772385335

/-! ## A133506.P9934646078222924112

`lt[A075877(A233583(n+1)), n]`
-/

namespace A133506.P9934646078222924112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075877 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A133506.P9934646078222924112

/-! ## A133506.P4542059760055507800

`lt[A075877(A000007(n)+n), n]`
-/

namespace A133506.P4542059760055507800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075877 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A133506.P4542059760055507800

/-! ## A133506.P15083901462494594229

`∪[A046510(n+1), A285470(n+1)]`
-/

namespace A133506.P15083901462494594229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285470 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133506.P15083901462494594229

/-!
# A133507: Numbers n such that powertrain(n) > n.

The programs for A133507, there is no canonical definition to state claims against.
-/

/-! ## A133507.P2474916127183720549

`lt[n, A133500(n)]`
-/

namespace A133507.P2474916127183720549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133500 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A133507.P2474916127183720549

/-! ## A133507.P13367827260218123519

`lt[n, A133048(A004086(n))]`
-/

namespace A133507.P13367827260218123519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133048 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A133507.P13367827260218123519

/-! ## A133507.P12182422345167508929

`lt[A244158(n), A007954(n)]`
-/

namespace A133507.P12182422345167508929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244158 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133507.P12182422345167508929

/-! ## A133507.P15506688931134826126

`lt[A007953(A056143(n)), A007954(n)]`
-/

namespace A133507.P15506688931134826126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A056143 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133507.P15506688931134826126

/-! ## A133507.P9590547782238704823

`lt[A007953(A056142(n)), A035930(n)]`
-/

namespace A133507.P9590547782238704823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A056142 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035930 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133507.P9590547782238704823

/-!
# A133509: Numbers k such that m=1 is the only number for which the sum of digits of m^k equals m.

The programs for A133509, there is no canonical definition to state claims against.
-/

/-! ## A133509.P9455600684781092765

`eq[1, A046000(n)]`
-/

namespace A133509.P9455600684781092765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133509.P9455600684781092765

/-! ## A133509.P13395632608000823113

`eq[1, A046019(n)]`
-/

namespace A133509.P13395632608000823113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A133509.P13395632608000823113

/-! ## A133509.P12662152960517303656

`lt[A046000(n), sqrt(A045955(n+1))]`
-/

namespace A133509.P12662152960517303656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046000 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A045955 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A133509.P12662152960517303656

/-! ## A133509.P12712194555061155347

`lt[A046000(n), sqrt(A045956(n+1))]`
-/

namespace A133509.P12712194555061155347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046000 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A045956 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A133509.P12712194555061155347

/-! ## A133509.P4825852645370494669

`lt[A046000(n), sqrt(A045958(n+1))]`
-/

namespace A133509.P4825852645370494669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046000 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A045958 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A133509.P4825852645370494669

/-!
# A133510: Number of primitive H-invariant prime ideals in O_q(M_{2,n}) generic quantum matrices.

The programs for A133510, the canonical program `A133510.P15592531411001779384` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133510 has offset 1).

The definition of A133510 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133510.P7408293318646455158

`ogf((2-5x+2x^2+3x^3)/(1-5x+5x^2+5x^3-6x^4))`
-/

namespace A133510.P7408293318646455158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -5, 2, 3] [1, -5, 5, 5, -6] n

end

end A133510.P7408293318646455158

namespace A133510

/-- `ogf((2-5x+2x^2+3x^3)/(1-5x+5x^2+5x^3-6x^4))` -/
def P7408293318646455158.Spec : Prop :=
  ∀ n, P7408293318646455158.a n = A133510 (n + 1)

end A133510

/-! ## A133510.P15592531411001779384

`(3^(n+2)-2^(n+2)+(-1)^(n+2)+2)/4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133510

/-- `(3^(n+2)-2^(n+2)+(-1)^(n+2)+2)/4` -/
def P15592531411001779384.Spec : Prop :=
  ∀ n, P15592531411001779384.a n = (A133510 (n + 1) : ℚ)

end A133510

/-! ## A133510.P2603972815268390474

`round(A053156(n+2)/2)`
-/

namespace A133510.P2603972815268390474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A053156 (n + 2) : ℚ) / 2)

end

end A133510.P2603972815268390474

namespace A133510

/-- `round(A053156(n+2)/2)` -/
def P2603972815268390474.Spec : Prop :=
  ∀ n, P2603972815268390474.a n = A133510 (n + 1)

end A133510

/-! ## A133510.P14213209913748852034

`A140420(n+1)+2^n`
-/

namespace A133510.P14213209913748852034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140420 (n + 1) + (2 ^ n : ℤ)

end

end A133510.P14213209913748852034

namespace A133510

/-- `A140420(n+1)+2^n` -/
def P14213209913748852034.Spec : Prop :=
  ∀ n, P14213209913748852034.a n = A133510 (n + 1)

end A133510

/-! ## A133510.P5932069332636643813

`A122983(n+2)-2^n`
-/

namespace A133510.P5932069332636643813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122983 (n + 2) - (2 ^ n : ℤ)

end

end A133510.P5932069332636643813

namespace A133510

/-- `A122983(n+2)-2^n` -/
def P5932069332636643813.Spec : Prop :=
  ∀ n, P5932069332636643813.a n = A133510 (n + 1)

end A133510

/-! ## A133510.P2815776991920323293

`A081251(n+1)+1-2^n`
-/

namespace A133510.P2815776991920323293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081251 (n + 1) + 1 - (2 ^ n : ℤ)

end

end A133510.P2815776991920323293

namespace A133510

/-- `A081251(n+1)+1-2^n` -/
def P2815776991920323293.Spec : Prop :=
  ∀ n, P2815776991920323293.a n = A133510 (n + 1)

end A133510

/-! ## A133510.P14299815243786075655

`A083323(n)+A081250(n)`
-/

namespace A133510.P14299815243786075655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083323 n + A081250 n

end

end A133510.P14299815243786075655

namespace A133510

/-- `A083323(n)+A081250(n)` -/
def P14299815243786075655.Spec : Prop :=
  ∀ n, P14299815243786075655.a n = A133510 (n + 1)

end A133510

/-! ## A133510.P1553715262957288670

`A005578(n)+∑[A004054(n)]`
-/

namespace A133510.P1553715262957288670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133510.P1553715262957288670

namespace A133510

/-- `A005578(n)+∑[A004054(n)]` -/
def P1553715262957288670.Spec : Prop :=
  ∀ n, P1553715262957288670.a n = A133510 (n + 1)

end A133510

/-! ## A133510.P17265100333841516982

`A081251(n+1)-A000225(n)`
-/

namespace A133510.P17265100333841516982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081251 (n + 1) - A000225 n

end

end A133510.P17265100333841516982

namespace A133510

/-- `A081251(n+1)-A000225(n)` -/
def P17265100333841516982.Spec : Prop :=
  ∀ n, P17265100333841516982.a n = A133510 (n + 1)

end A133510

/-! ## A133510.P17624987586993756319

`A174395(n+3)+A048573(n)`
-/

namespace A133510.P17624987586993756319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174395 (n + 3) + A048573 n

end

end A133510.P17624987586993756319

namespace A133510

/-- `A174395(n+3)+A048573(n)` -/
def P17624987586993756319.Spec : Prop :=
  ∀ n, P17624987586993756319.a n = A133510 (n + 1)

end A133510

/-! ## A133510.P12072794237687387362

`A053152(n+1)+A080926(n)+2`
-/

namespace A133510.P12072794237687387362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053152 (n + 1) + (A080926 n + 2)

end

end A133510.P12072794237687387362

namespace A133510

/-- `A053152(n+1)+A080926(n)+2` -/
def P12072794237687387362.Spec : Prop :=
  ∀ n, P12072794237687387362.a n = A133510 (n + 1)

end A133510

/-! ## A133510.P149543679669059994

`2*A033113(n+1)-A000225(n)`
-/

namespace A133510.P149543679669059994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033113 (n + 1) - A000225 n

end

end A133510.P149543679669059994

namespace A133510

/-- `2*A033113(n+1)-A000225(n)` -/
def P149543679669059994.Spec : Prop :=
  ∀ n, P149543679669059994.a n = A133510 (n + 1)

end A133510

/-! ## A133510.P981374011724696634

`A083323(n+1)+A122983(n)-A083323(n)`
-/

namespace A133510.P981374011724696634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083323 (n + 1) + (A122983 n - A083323 n)

end

end A133510.P981374011724696634

namespace A133510

/-- `A083323(n+1)+A122983(n)-A083323(n)` -/
def P981374011724696634.Spec : Prop :=
  ∀ n, P981374011724696634.a n = A133510 (n + 1)

end A133510

/-! ## A133510.P1503187636023241865

`A001045(n+1)+A140420(n+1)+A001045(n)`
-/

namespace A133510.P1503187636023241865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A140420 (n + 1) + A001045 n)

end

end A133510.P1503187636023241865

namespace A133510

/-- `A001045(n+1)+A140420(n+1)+A001045(n)` -/
def P1503187636023241865.Spec : Prop :=
  ∀ n, P1503187636023241865.a n = A133510 (n + 1)

end A133510

/-! ## A133510.P436335986438260895

`A000225(n+1)+A140420(n+1)-A000225(n)`
-/

namespace A133510.P436335986438260895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) + (A140420 (n + 1) - A000225 n)

end

end A133510.P436335986438260895

namespace A133510

/-- `A000225(n+1)+A140420(n+1)-A000225(n)` -/
def P436335986438260895.Spec : Prop :=
  ∀ n, P436335986438260895.a n = A133510 (n + 1)

end A133510

/-!
# A133511: a(n) = 3 A113405(n)- A113405(n+1).

The programs for A133511, the canonical program `A133511.P14482885469916783984` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133511 has offset 0).

The definition of A133511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133511.P7230553854509041386

`ogf((-x^2+3x^3)/(1-2x+x^3-2x^4))`
-/

namespace A133511.P7230553854509041386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, -1, 3] [1, -2, 0, 1, -2] n

end

end A133511.P7230553854509041386

namespace A133511

/-- `ogf((-x^2+3x^3)/(1-2x+x^3-2x^4))` -/
def P7230553854509041386.Spec : Prop :=
  ∀ n, P7230553854509041386.a n = A133511 n

end A133511

/-! ## A133511.P5528798635911056572

`A113405(n)-A131531(n+1)`
-/

namespace A133511.P5528798635911056572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n - A131531 (n + 1)

end

end A133511.P5528798635911056572

namespace A133511

/-- `A113405(n)-A131531(n+1)` -/
def P5528798635911056572.Spec : Prop :=
  ∀ n, P5528798635911056572.a n = A133511 n

end A133511

/-! ## A133511.P14482885469916783984

`3*A113405(n)-A113405(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A133511

/-- `3*A113405(n)-A113405(n+1)` -/
def P14482885469916783984.Spec : Prop :=
  ∀ n, P14482885469916783984.a n = A133511 n

theorem P14482885469916783984.correct : P14482885469916783984.Spec := by
  intro n
  simp only [A133511]

end A133511

/-! ## A133511.P7471122278941892772

`2^(n-3)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=-1`
-/

namespace A133511.P7471122278941892772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, -1] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) - a (n - 3)

end

end A133511.P7471122278941892772

namespace A133511

/-- `2^(n-3)-a(n-3)` -/
def P7471122278941892772.Spec : Prop :=
  ∀ n, P7471122278941892772.a n = (A133511 n : ℚ)

end A133511

/-! ## A133511.P14466008080433286525

`A135259(n)+A133513(n)`
-/

namespace A133511.P14466008080433286525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135259 n + A133513 n

end

end A133511.P14466008080433286525

namespace A133511

/-- `A135259(n)+A133513(n)` -/
def P14466008080433286525.Spec : Prop :=
  ∀ n, P14466008080433286525.a n = A133511 n

end A133511

/-! ## A133511.P4939572873935653341

`A131090(n)-A128834(n)`
-/

namespace A133511.P4939572873935653341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 n - A128834 n

end

end A133511.P4939572873935653341

namespace A133511

/-- `A131090(n)-A128834(n)` -/
def P4939572873935653341.Spec : Prop :=
  ∀ n, P4939572873935653341.a n = A133511 n

end A133511

/-! ## A133511.P11442428765214411348

`A131090(n)+A010892(n+2)`
-/

namespace A133511.P11442428765214411348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 n + A010892 (n + 2)

end

end A133511.P11442428765214411348

namespace A133511

/-- `A131090(n)+A010892(n+2)` -/
def P11442428765214411348.Spec : Prop :=
  ∀ n, P11442428765214411348.a n = A133511 n

end A133511

/-! ## A133511.P15752174784812637706

`A131531(n+4)+A113405(n)`
-/

namespace A133511.P15752174784812637706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131531 (n + 4) + A113405 n

end

end A133511.P15752174784812637706

namespace A133511

/-- `A131531(n+4)+A113405(n)` -/
def P15752174784812637706.Spec : Prop :=
  ∀ n, P15752174784812637706.a n = A133511 n

end A133511

/-! ## A133511.P4964136534468814249

`A131666(n)-2*A131531(n+1)`
-/

namespace A133511.P4964136534468814249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 n - 2 * A131531 (n + 1)

end

end A133511.P4964136534468814249

namespace A133511

/-- `A131666(n)-2*A131531(n+1)` -/
def P4964136534468814249.Spec : Prop :=
  ∀ n, P4964136534468814249.a n = A133511 n

end A133511

/-! ## A133511.P5242940875303920007

`A092220(n)+A131666(n)-A128834(n)`
-/

namespace A133511.P5242940875303920007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092220 n + (A131666 n - A128834 n)

end

end A133511.P5242940875303920007

namespace A133511

/-- `A092220(n)+A131666(n)-A128834(n)` -/
def P5242940875303920007.Spec : Prop :=
  ∀ n, P5242940875303920007.a n = A133511 n

end A133511

/-! ## A133511.P5736934717700005356

`A113405(n)+A113405(n)-A131666(n)`
-/

namespace A133511.P5736934717700005356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n + (A113405 n - A131666 n)

end

end A133511.P5736934717700005356

namespace A133511

/-- `A113405(n)+A113405(n)-A131666(n)` -/
def P5736934717700005356.Spec : Prop :=
  ∀ n, P5736934717700005356.a n = A133511 n

end A133511

/-! ## A133511.P13686863237742186039

`A104581(n+1)+A113405(n)+A104581(n)`
-/

namespace A133511.P13686863237742186039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104581 (n + 1) + (A113405 n + A104581 n)

end

end A133511.P13686863237742186039

namespace A133511

/-- `A104581(n+1)+A113405(n)+A104581(n)` -/
def P13686863237742186039.Spec : Prop :=
  ∀ n, P13686863237742186039.a n = A133511 n

end A133511

/-! ## A133511.P13398760922711073666

`A088911(n+1)+A113405(n)-A088911(n)`
-/

namespace A133511.P13398760922711073666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088911 (n + 1) + (A113405 n - A088911 n)

end

end A133511.P13398760922711073666

namespace A133511

/-- `A088911(n+1)+A113405(n)-A088911(n)` -/
def P13398760922711073666.Spec : Prop :=
  ∀ n, P13398760922711073666.a n = A133511 n

end A133511

/-! ## A133511.P17509453950918537261

`A130151(n+1)+A131666(n)-A130151(n)`
-/

namespace A133511.P17509453950918537261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130151 (n + 1) + (A131666 n - A130151 n)

end

end A133511.P17509453950918537261

namespace A133511

/-- `A130151(n+1)+A131666(n)-A130151(n)` -/
def P17509453950918537261.Spec : Prop :=
  ∀ n, P17509453950918537261.a n = A133511 n

end A133511

/-! ## A133511.P12400523934455725608

`A113405(n)+A010892(n+1)*A057078(n+1)`
-/

namespace A133511.P12400523934455725608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 n + A010892 (n + 1) * A057078 (n + 1)

end

end A133511.P12400523934455725608

namespace A133511

/-- `A113405(n)+A010892(n+1)*A057078(n+1)` -/
def P12400523934455725608.Spec : Prop :=
  ∀ n, P12400523934455725608.a n = A133511 n

end A133511

/-! ## A133511.P3193353720803186009

`A131090(n)-(A131531(n+1)+A131531(n+2))`
-/

namespace A133511.P3193353720803186009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131090 n - (A131531 (n + 1) + A131531 (n + 2))

end

end A133511.P3193353720803186009

namespace A133511

/-- `A131090(n)-(A131531(n+1)+A131531(n+2))` -/
def P3193353720803186009.Spec : Prop :=
  ∀ n, P3193353720803186009.a n = A133511 n

end A133511

/-! ## A133511.P16581260554463886158

`Δ[A131666(n)+A010892(n)]`
-/

namespace A133511.P16581260554463886158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 n + A010892 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A133511.P16581260554463886158

namespace A133511

/-- `Δ[A131666(n)+A010892(n)]` -/
def P16581260554463886158.Spec : Prop :=
  ∀ n, P16581260554463886158.a n = A133511 n

end A133511

/-! ## A133511.P12089853633075017872

`2*A113405(n)-A131666(n)`
-/

namespace A133511.P12089853633075017872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A113405 n - A131666 n

end

end A133511.P12089853633075017872

namespace A133511

/-- `2*A113405(n)-A131666(n)` -/
def P12089853633075017872.Spec : Prop :=
  ∀ n, P12089853633075017872.a n = A133511 n

end A133511

/-! ## A133511.P16416883253537028243

`A132780(n)-(A131666(n)+A130151(n))`
-/

namespace A133511.P16416883253537028243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132780 n - (A131666 n + A130151 n)

end

end A133511.P16416883253537028243

namespace A133511

/-- `A132780(n)-(A131666(n)+A130151(n))` -/
def P16416883253537028243.Spec : Prop :=
  ∀ n, P16416883253537028243.a n = A133511 n

end A133511

/-! ## A133511.P13149745514483201509

`A131666(n+1)-(A131666(n)+A128834(n))`
-/

namespace A133511.P13149745514483201509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131666 (n + 1) - (A131666 n + A128834 n)

end

end A133511.P13149745514483201509

namespace A133511

/-- `A131666(n+1)-(A131666(n)+A128834(n))` -/
def P13149745514483201509.Spec : Prop :=
  ∀ n, P13149745514483201509.a n = A133511 n

end A133511

/-!
# A133512: Accept F(1), reject F(1), accept F(2), reject F(2), accept F(3), ...,.

The programs for A133512, there is no canonical definition to state claims against.
-/

/-! ## A133512.P5384694714902595932

`eq[1, abs(a(floor(n/ϕ)))]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A133512.P5384694714902595932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133512.P5384694714902595932

/-! ## A133512.P5566371385168499503

`lt[0, a(floor(n/ϕ))²]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A133512.P5566371385168499503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133512.P5566371385168499503

/-! ## A133512.P3376406372035153607

`eq[1, a(floor(n/ϕ))²]` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A133512.P3376406372035153607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133512.P3376406372035153607

/-! ## A133512.P13875236906024135838

`lt[1, abs(a(floor(n/ϕ)))]` with `a(0)=0, a(1)=2, a(2)=0`
-/

namespace A133512.P13875236906024135838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A133512.P13875236906024135838

/-! ## A133512.P14798951345327386904

`eq[2, a(floor(n/ϕ))!]` with `a(0)=0, a(1)=2, a(2)=1`
-/

namespace A133512.P14798951345327386904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 1] fun n f2 =>
  Nat.factorial (f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133512.P14798951345327386904

/-! ## A133512.P7348567732609553184

`eq[1, round(a(floor(n/ϕ)))]` with `a(0)=0, a(1)=1, a(2)=0`

`round` is left out, it is the identity on integers.
-/

namespace A133512.P7348567732609553184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133512.P7348567732609553184

/-! ## A133512.P17593513170657734305

`eq[2, floor(a(floor(n/ϕ)))]` with `a(0)=0, a(1)=2, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A133512.P17593513170657734305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0] fun n f2 =>
  f2 ⌊(n : ℝ) / Real.goldenRatio⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A133512.P17593513170657734305

/-! ## A133512.P8474923661007950934

`lt[A243612(n+1), 0]`
-/

namespace A133512.P8474923661007950934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243612 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A133512.P8474923661007950934

/-! ## A133512.P3502932339362123252

`lt[A242364(n+1), 1]`
-/

namespace A133512.P3502932339362123252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242364 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A133512.P3502932339362123252

/-! ## A133512.P17738359493665719184

`lt[0, A274455(n+2)]`
-/

namespace A133512.P17738359493665719184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274455 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A133512.P17738359493665719184

/-!
# A133513: Period 6: repeat [0, 1, -3, 0, -1, 3].

The programs for A133513, the canonical program `A133513.P15860712933780427246` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133513 has offset 0).

The definition of A133513 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A133513.anchor (n : ℕ) : A133513 n = [0, 1, -3, 0, -1, 3].getD (n % 6) 0` in `Proof.A133.A133513`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133513.P15860712933780427246

`-a(n-3)` with `a(0)=0, a(1)=1, a(2)=-3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133513

/-- `-a(n-3)` -/
def P15860712933780427246.Spec : Prop :=
  ∀ n, P15860712933780427246.a n = A133513 n

theorem P15860712933780427246.correct : P15860712933780427246.Spec := by
  intro n
  simp only [A133513]

end A133513

/-!
# A133514: Biquadrateful (i.e., not biquadrate-free) palindromes.

The programs for A133514, there is no canonical definition to state claims against.
-/

/-! ## A133514.P6660808783834328440

`∩[A002113(n+1), A046101(n+1)]`
-/

namespace A133514.P6660808783834328440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133514.P6660808783834328440

/-! ## A133514.P6917126940073694041

`∩[A032350(n+1), A046101(n+1)]`
-/

namespace A133514.P6917126940073694041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133514.P6917126940073694041

/-! ## A133514.P9458331071475084835

`∩[A035132(n+1), A046101(n+1)]`
-/

namespace A133514.P9458331071475084835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133514.P9458331071475084835

/-! ## A133514.P2853074031898478860

`∩[A035133(n+1), A046101(n+1)]`
-/

namespace A133514.P2853074031898478860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133514.P2853074031898478860

/-! ## A133514.P17034440310801520695

`filter[A008598(n+1), A136522(#)]`
-/

namespace A133514.P17034440310801520695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A136522 (f1 j).toNat = 1) n)

end

end A133514.P17034440310801520695

/-!
# A133515: Number of n X n binary matrices with every 1 vertically or horizontally adjacent to some 0.

The programs for A133515, there is no canonical definition to state claims against.
-/

/-! ## A133515.P5082840539729589744

`A218354(∑[4*n]+1)`
-/

namespace A133515.P5082840539729589744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A133515.P5082840539729589744

/-! ## A133515.P7711100139634476656

`or(1, A218354(A001844(n)))`
-/

namespace A133515.P7711100139634476656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218354 (A001844 n).toNat)

end

end A133515.P7711100139634476656

/-! ## A133515.P4869540713680529452

`record[A218354(Δ[A235355(n)])]`
-/

namespace A133515.P4869540713680529452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133515.P4869540713680529452

/-! ## A133515.P13601137037668185590

`record[A218354(A330613(n+1))]`
-/

namespace A133515.P13601137037668185590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133515.P13601137037668185590

/-! ## A133515.P12322965463159690495

`record[A003982(n)*A218354(n+1)]`
-/

namespace A133515.P12322965463159690495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A218354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133515.P12322965463159690495

/-!
# A133516: 

The programs for A133516, there is no canonical definition to state claims against.
-/

/-! ## A133516.P9498199630377537540

`C(a(n-1), a(n-2))` with `a(0)=2, a(1)=5`
-/

namespace A133516.P9498199630377537540
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  Nat.choose (a (n - 1)) (a (n - 2))

end

end A133516.P9498199630377537540

/-!
# A133517: Smallest k such that p(n)^3 - k is prime where p(n) is the n-th prime.

The programs for A133517, there is no canonical definition to state claims against.
-/

/-! ## A133517.P3010861517069593141

`A030078(n+1)-A077037(p?[A056847(n)])`
-/

namespace A133517.P3010861517069593141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1) - A077037 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A133517.P3010861517069593141

/-! ## A133517.P5493583873064565361

`A030078(((-1)^n)²+n)%A077037(p?[A056847(n)])`
-/

namespace A133517.P5493583873064565361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030078 (((-1) ^ n) ^ 2 + (n : ℤ)).toNat) (A077037 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A133517.P5493583873064565361

/-! ## A133517.P15685929139714424697

`A121844(Δ[A007504(n)])`
-/

namespace A133517.P15685929139714424697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121844 (f1 (n + 1) - f1 n).toNat

end

end A133517.P15685929139714424697

/-! ## A133517.P8359790039385356687

`A121844(A000040(n+1))`
-/

namespace A133517.P8359790039385356687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121844 (A000040 (n + 1)).toNat

end

end A133517.P8359790039385356687

/-! ## A133517.P9638611069271990328

`A121844(A008578(n+2))`
-/

namespace A133517.P9638611069271990328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121844 (A008578 (n + 2)).toNat

end

end A133517.P9638611069271990328

/-! ## A133517.P18117026655198364945

`A121844(A182986(n+2))`
-/

namespace A133517.P18117026655198364945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121844 (A182986 (n + 2)).toNat

end

end A133517.P18117026655198364945

/-! ## A133517.P6843044721545945039

`A121844(A238853(n+1))`
-/

namespace A133517.P6843044721545945039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121844 (A238853 (n + 1)).toNat

end

end A133517.P6843044721545945039

/-!
# A133518: Smallest k such that p(n)^3 + k is prime where p(n) is the n-th prime.

The programs for A133518, the canonical program `A133518.P1197385440104389255` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133518 has offset 1).

The definition of A133518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133518.P1197385440104389255

`A121842(A000040(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133518

/-- `A121842(A000040(n+1))` -/
def P1197385440104389255.Spec : Prop :=
  ∀ n, P1197385440104389255.a n = A133518 (n + 1)

theorem P1197385440104389255.correct : P1197385440104389255.Spec := by
  intro n
  simp only [A133518, Nat.add_sub_cancel]

end A133518

/-! ## A133518.P14243353853439773998

`A121842(A008578(n+2))`
-/

namespace A133518.P14243353853439773998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 (A008578 (n + 2)).toNat

end

end A133518.P14243353853439773998

namespace A133518

/-- `A121842(A008578(n+2))` -/
def P14243353853439773998.Spec : Prop :=
  ∀ n, P14243353853439773998.a n = A133518 (n + 1)

end A133518

/-! ## A133518.P15112594595037152695

`A121842(A182986(n+2))`
-/

namespace A133518.P15112594595037152695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 (A182986 (n + 2)).toNat

end

end A133518.P15112594595037152695

namespace A133518

/-- `A121842(A182986(n+2))` -/
def P15112594595037152695.Spec : Prop :=
  ∀ n, P15112594595037152695.a n = A133518 (n + 1)

end A133518

/-! ## A133518.P4725382690849728133

`A121842(record[A006530(n+2)])`
-/

namespace A133518.P4725382690849728133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133518.P4725382690849728133

namespace A133518

/-- `A121842(record[A006530(n+2)])` -/
def P4725382690849728133.Spec : Prop :=
  ∀ n, P4725382690849728133.a n = A133518 (n + 1)

end A133518

/-! ## A133518.P2452680048034358462

`A121842(record[A014963(n+2)])`
-/

namespace A133518.P2452680048034358462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133518.P2452680048034358462

namespace A133518

/-- `A121842(record[A014963(n+2)])` -/
def P2452680048034358462.Spec : Prop :=
  ∀ n, P2452680048034358462.a n = A133518 (n + 1)

end A133518

/-! ## A133518.P1935796690994415569

`A121842(record[A020639(n+2)])`
-/

namespace A133518.P1935796690994415569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133518.P1935796690994415569

namespace A133518

/-- `A121842(record[A020639(n+2)])` -/
def P1935796690994415569.Spec : Prop :=
  ∀ n, P1935796690994415569.a n = A133518 (n + 1)

end A133518

/-! ## A133518.P3041877389296832970

`A121842(A006093(n+1)+1)`
-/

namespace A133518.P3041877389296832970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 (A006093 (n + 1) + 1).toNat

end

end A133518.P3041877389296832970

namespace A133518

/-- `A121842(A006093(n+1)+1)` -/
def P3041877389296832970.Spec : Prop :=
  ∀ n, P3041877389296832970.a n = A133518 (n + 1)

theorem P3041877389296832970.correct : P3041877389296832970.Spec := by
  intro n
  simp only [A133518, Nat.add_sub_cancel, A133518.P3041877389296832970.a, A133518.P1197385440104389255.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A121842, A121842.P4729088766007939738.a, A013632, A013632.P6559946879985956067.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133518

/-! ## A133518.P16557414944351236412

`A121842(eq[1, A001222(n+1)]+1)`
-/

namespace A133518.P16557414944351236412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A133518.P16557414944351236412

namespace A133518

/-- `A121842(eq[1, A001222(n+1)]+1)` -/
def P16557414944351236412.Spec : Prop :=
  ∀ n, P16557414944351236412.a n = A133518 (n + 1)

end A133518

/-! ## A133518.P13298093008212998523

`A121842(eq[2, A053204(n)])`
-/

namespace A133518.P13298093008212998523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121842 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A133518.P13298093008212998523

namespace A133518

/-- `A121842(eq[2, A053204(n)])` -/
def P13298093008212998523.Spec : Prop :=
  ∀ n, P13298093008212998523.a n = A133518 (n + 1)

end A133518

/-!
# A133519: Smallest k such that p(n)^4 - k is prime where p(n) is the n-th prime.

The programs for A133519, there is no canonical definition to state claims against.
-/

/-! ## A133519.P818791922501164358

`A056927(p?[comp[n²]]²)`
-/

namespace A133519.P818791922501164358
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2)

end

end A133519.P818791922501164358

/-! ## A133519.P4247303345825357140

`A056927(A001248(n+1))`
-/

namespace A133519.P4247303345825357140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (A001248 (n + 1)).toNat

end

end A133519.P4247303345825357140

/-! ## A133519.P5896379357214234952

`A056927(A359757(n+1))`
-/

namespace A133519.P5896379357214234952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (A359757 (n + 1)).toNat

end

end A133519.P5896379357214234952

/-! ## A133519.P15407112202928992209

`A056927(A280076(n+2))`
-/

namespace A133519.P15407112202928992209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 (A280076 (n + 2)).toNat

end

end A133519.P15407112202928992209

/-! ## A133519.P15257168452468961276

`A056927(Δ[A007504(n)]²)`
-/

namespace A133519.P15257168452468961276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056927 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A133519.P15257168452468961276

/-!
# A133520: Smallest k such that p(n)^4 + k is prime where p(n) is the n-th prime.

The programs for A133520, the canonical program `A133520.P6252828111992592762` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133520 has offset 1).

The definition of A133520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133520.P8782505939527484928

`A053785(A000040(n+1))`
-/

namespace A133520.P8782505939527484928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053785 (A000040 (n + 1)).toNat

end

end A133520.P8782505939527484928

namespace A133520

/-- `A053785(A000040(n+1))` -/
def P8782505939527484928.Spec : Prop :=
  ∀ n, P8782505939527484928.a n = A133520 (n + 1)

end A133520

/-! ## A133520.P1356208670506241557

`A053785(A006005(n+1))`
-/

namespace A133520.P1356208670506241557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053785 (A006005 (n + 1)).toNat

end

end A133520.P1356208670506241557

namespace A133520

/-- `A053785(A006005(n+1))` -/
def P1356208670506241557.Spec : Prop :=
  ∀ n, P1356208670506241557.a n = A133520 (n + 1)

end A133520

/-! ## A133520.P14748411918299380432

`A053785(A008578(n+2))`
-/

namespace A133520.P14748411918299380432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053785 (A008578 (n + 2)).toNat

end

end A133520.P14748411918299380432

namespace A133520

/-- `A053785(A008578(n+2))` -/
def P14748411918299380432.Spec : Prop :=
  ∀ n, P14748411918299380432.a n = A133520 (n + 1)

end A133520

/-! ## A133520.P14875697941436088825

`A053785(A075643(n+2))`
-/

namespace A133520.P14875697941436088825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053785 (A075643 (n + 2)).toNat

end

end A133520.P14875697941436088825

namespace A133520

/-- `A053785(A075643(n+2))` -/
def P14875697941436088825.Spec : Prop :=
  ∀ n, P14875697941436088825.a n = A133520 (n + 1)

end A133520

/-! ## A133520.P346317930370898667

`A053785(A182986(n+2))`
-/

namespace A133520.P346317930370898667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053785 (A182986 (n + 2)).toNat

end

end A133520.P346317930370898667

namespace A133520

/-- `A053785(A182986(n+2))` -/
def P346317930370898667.Spec : Prop :=
  ∀ n, P346317930370898667.a n = A133520 (n + 1)

end A133520

/-! ## A133520.P13040509552299929909

`A053785(record[A006530(n+2)])`
-/

namespace A133520.P13040509552299929909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053785 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133520.P13040509552299929909

namespace A133520

/-- `A053785(record[A006530(n+2)])` -/
def P13040509552299929909.Spec : Prop :=
  ∀ n, P13040509552299929909.a n = A133520 (n + 1)

end A133520

/-! ## A133520.P5121730406640073047

`A053785(record[A014963(n+2)])`
-/

namespace A133520.P5121730406640073047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053785 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133520.P5121730406640073047

namespace A133520

/-- `A053785(record[A014963(n+2)])` -/
def P5121730406640073047.Spec : Prop :=
  ∀ n, P5121730406640073047.a n = A133520 (n + 1)

end A133520

/-! ## A133520.P10897659560120443188

`A053785(record[A020639(n+2)])`
-/

namespace A133520.P10897659560120443188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053785 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133520.P10897659560120443188

namespace A133520

/-- `A053785(record[A020639(n+2)])` -/
def P10897659560120443188.Spec : Prop :=
  ∀ n, P10897659560120443188.a n = A133520 (n + 1)

end A133520

/-! ## A133520.P6252828111992592762

`A053786(A000040(n+1))%A001248(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A133520

/-- `A053786(A000040(n+1))%A001248(n+1)` -/
def P6252828111992592762.Spec : Prop :=
  ∀ n, P6252828111992592762.a n = A133520 (n + 1)

theorem P6252828111992592762.correct : P6252828111992592762.Spec := by
  intro n
  simp only [A133520, Nat.add_sub_cancel]

end A133520

/-! ## A133520.P16778367192951724034

`A053786(A008578(n+2))%A001248(n+1)`
-/

namespace A133520.P16778367192951724034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053786 (A008578 (n + 2)).toNat) (A001248 (n + 1))

end

end A133520.P16778367192951724034

namespace A133520

/-- `A053786(A008578(n+2))%A001248(n+1)` -/
def P16778367192951724034.Spec : Prop :=
  ∀ n, P16778367192951724034.a n = A133520 (n + 1)

end A133520

/-! ## A133520.P6655986362207919388

`A053786(record[A039649(n+1)])%A001248(n+1)`
-/

namespace A133520.P6655986362207919388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053786 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A001248 (n + 1))

end

end A133520.P6655986362207919388

namespace A133520

/-- `A053786(record[A039649(n+1)])%A001248(n+1)` -/
def P6655986362207919388.Spec : Prop :=
  ∀ n, P6655986362207919388.a n = A133520 (n + 1)

end A133520

/-! ## A133520.P8322421260130261189

`A053786(p?[A015919(n+1)])%A001248(n+1)`
-/

namespace A133520.P8322421260130261189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053786 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat) (A001248 (n + 1))

end

end A133520.P8322421260130261189

namespace A133520

/-- `A053786(p?[A015919(n+1)])%A001248(n+1)` -/
def P8322421260130261189.Spec : Prop :=
  ∀ n, P8322421260130261189.a n = A133520 (n + 1)

end A133520

/-! ## A133520.P9480384295884882639

`A053786(A008578(n+2))-p?[A014681(n)]²²`
-/

namespace A133520.P9480384295884882639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053786 (A008578 (n + 2)).toNat - (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2) ^ 2

end

end A133520.P9480384295884882639

namespace A133520

/-- `A053786(A008578(n+2))-p?[A014681(n)]²²` -/
def P9480384295884882639.Spec : Prop :=
  ∀ n, P9480384295884882639.a n = A133520 (n + 1)

end A133520

/-!
# A133522: Smallest k such that p(n)^5 + k is prime where p(n) is the n-th prime.

The programs for A133522, there is no canonical definition to state claims against.
-/

/-! ## A133522.P2906507031853348436

`A053787(p?[comp[n²]])`
-/

namespace A133522.P2906507031853348436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053787 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A133522.P2906507031853348436

/-! ## A133522.P10998193090059716484

`A053787(Δ[A007504(n)])`
-/

namespace A133522.P10998193090059716484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053787 (f1 (n + 1) - f1 n).toNat

end

end A133522.P10998193090059716484

/-! ## A133522.P6348161006829109171

`A053787(A000040(n+1))`
-/

namespace A133522.P6348161006829109171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053787 (A000040 (n + 1)).toNat

end

end A133522.P6348161006829109171

/-! ## A133522.P7692821474783798542

`A053787(A008578(n+2))`
-/

namespace A133522.P7692821474783798542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053787 (A008578 (n + 2)).toNat

end

end A133522.P7692821474783798542

/-! ## A133522.P14979045043501180521

`A053787(A182986(n+2))`
-/

namespace A133522.P14979045043501180521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053787 (A182986 (n + 2)).toNat

end

end A133522.P14979045043501180521

/-! ## A133522.P1720876833281487458

`A053787(record[A006530(n+2)])`
-/

namespace A133522.P1720876833281487458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053787 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133522.P1720876833281487458

/-! ## A133522.P12975660504782654327

`A053787(record[A014963(n+2)])`
-/

namespace A133522.P12975660504782654327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053787 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133522.P12975660504782654327

/-! ## A133522.P13601247483412537074

`A053787(record[A020639(n+2)])`
-/

namespace A133522.P13601247483412537074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053787 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A133522.P13601247483412537074

/-!
# A133523: Number of length n binary sequences with at most 2 of every adjacent 6 bits set.

The programs for A133523, there is no canonical definition to state claims against.
-/

/-! ## A133523.P15459338205854353439

`∑[A128559(∑[A109541(n)])]`
-/

namespace A133523.P15459338205854353439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109541 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128559 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133523.P15459338205854353439

/-! ## A133523.P1819303980621456540

`A332023(n)+A331995(A322801(2*n+1))`
-/

namespace A133523.P1819303980621456540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332023 n + A331995 (A322801 (2 * n + 1)).toNat

end

end A133523.P1819303980621456540

/-! ## A133523.P8112542999210110291

`A331381(C(n, 5))+∑[n]`
-/

namespace A133523.P8112542999210110291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331381 (Nat.choose n 5) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A133523.P8112542999210110291

/-! ## A133523.P1731422967129007609

`A225859(a(n-1))+3` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A133523.P1731422967129007609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A225859 (a (n - 1)).toNat + 3

end

end A133523.P1731422967129007609

/-! ## A133523.P16193196278290584473

`A144111(A167270(n))`
-/

namespace A133523.P16193196278290584473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144111 (A167270 n).toNat

end

end A133523.P16193196278290584473

/-!
# A133524: Sum of squares of four consecutive primes.

The programs for A133524, the canonical program `A133524.P7363267579138448459` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133524 has offset 1).

The definition of A133524 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133524.P7363267579138448459

`A133529(n+1)+A001248(n+4)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133524

/-- `A133529(n+1)+A001248(n+4)` -/
def P7363267579138448459.Spec : Prop :=
  ∀ n, P7363267579138448459.a n = A133524 (n + 1)

theorem P7363267579138448459.correct : P7363267579138448459.Spec := by
  intro n
  simp only [A133524, Nat.add_sub_cancel]

end A133524

/-! ## A133524.P205909959525020085

`A133529(n+2)+A000040(n+1)²`
-/

namespace A133524.P205909959525020085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133529 (n + 2) + A000040 (n + 1) ^ 2

end

end A133524.P205909959525020085

namespace A133524

/-- `A133529(n+2)+A000040(n+1)²` -/
def P205909959525020085.Spec : Prop :=
  ∀ n, P205909959525020085.a n = A133524 (n + 1)

theorem P205909959525020085.correct : P205909959525020085.Spec := by
  intro n
  simp only [A133524, Nat.add_sub_cancel, A133524.P205909959525020085.a, A133524.P7363267579138448459.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A133529, A133529.P6726527200779118077.a, A069484, A069484.P10584348183158188878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133524

/-! ## A133524.P14730575637167491119

`A048851(n+2)+2*A075892(n+3)`
-/

namespace A133524.P14730575637167491119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048851 (n + 2) + 2 * A075892 (n + 3)

end

end A133524.P14730575637167491119

namespace A133524

/-- `A048851(n+2)+2*A075892(n+3)` -/
def P14730575637167491119.Spec : Prop :=
  ∀ n, P14730575637167491119.a n = A133524 (n + 1)

end A133524

/-! ## A133524.P13930697208354592382

`A133529(n+2)+A133529(n+1)-A069484(n+2)`
-/

namespace A133524.P13930697208354592382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133529 (n + 2) + (A133529 (n + 1) - A069484 (n + 2))

end

end A133524.P13930697208354592382

namespace A133524

/-- `A133529(n+2)+A133529(n+1)-A069484(n+2)` -/
def P13930697208354592382.Spec : Prop :=
  ∀ n, P13930697208354592382.a n = A133524 (n + 1)

theorem P13930697208354592382.correct : P13930697208354592382.Spec := by
  intro n
  simp only [A133524, Nat.add_sub_cancel, A133524.P13930697208354592382.a, A133524.P7363267579138448459.a, A001248, A001248.P16278241061688229202.a, A069484, A069484.P10584348183158188878.a, A133529, A133529.P6726527200779118077.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133524

/-! ## A133524.P16135499639951715290

`A075892(n+3)+A075892(n+3)+A069484(n+1)`
-/

namespace A133524.P16135499639951715290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075892 (n + 3) + (A075892 (n + 3) + A069484 (n + 1))

end

end A133524.P16135499639951715290

namespace A133524

/-- `A075892(n+3)+A075892(n+3)+A069484(n+1)` -/
def P16135499639951715290.Spec : Prop :=
  ∀ n, P16135499639951715290.a n = A133524 (n + 1)

end A133524

/-! ## A133524.P5977417860139937562

`A069484(n+1)+A069484(n+3)`
-/

namespace A133524.P5977417860139937562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 1) + A069484 (n + 3)

end

end A133524.P5977417860139937562

namespace A133524

/-- `A069484(n+1)+A069484(n+3)` -/
def P5977417860139937562.Spec : Prop :=
  ∀ n, P5977417860139937562.a n = A133524 (n + 1)

theorem P5977417860139937562.correct : P5977417860139937562.Spec := by
  intro n
  simp only [A133524, Nat.add_sub_cancel, A133524.P5977417860139937562.a, A133524.P7363267579138448459.a, A001248, A001248.P16278241061688229202.a, A069484, A069484.P10584348183158188878.a, A133529, A133529.P6726527200779118077.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133524

/-! ## A133524.P2998926190119821841

`A048851(n+2)+A048851(n+4)`
-/

namespace A133524.P2998926190119821841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048851 (n + 2) + A048851 (n + 4)

end

end A133524.P2998926190119821841

namespace A133524

/-- `A048851(n+2)+A048851(n+4)` -/
def P2998926190119821841.Spec : Prop :=
  ∀ n, P2998926190119821841.a n = A133524 (n + 1)

end A133524

/-! ## A133524.P1744555959581361081

`A000040(n+1)²+A000040(n+2)²+A000040(n+3)²+A000040(n+4)²`
-/

namespace A133524.P1744555959581361081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 + A000040 (n + 2) ^ 2 + A000040 (n + 3) ^ 2 + A000040 (n + 4) ^ 2

end

end A133524.P1744555959581361081

namespace A133524

/-- `A000040(n+1)²+A000040(n+2)²+A000040(n+3)²+A000040(n+4)²` -/
def P1744555959581361081.Spec : Prop :=
  ∀ n, P1744555959581361081.a n = A133524 (n + 1)

theorem P1744555959581361081.correct : P1744555959581361081.Spec := by
  intro n
  simp only [A133524, Nat.add_sub_cancel, A133524.P1744555959581361081.a, A133524.P7363267579138448459.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A133529, A133529.P6726527200779118077.a, A069484, A069484.P10584348183158188878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133524

/-!
# A133525: Sum of third powers of four consecutive primes.

The programs for A133525, the canonical program `A133525.P8571172351566193877` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133525 has offset 1).

The definition of A133525 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133525.P8571172351566193877

`A133530(n+1)+A030078(n+4)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A133525

/-- `A133530(n+1)+A030078(n+4)` -/
def P8571172351566193877.Spec : Prop :=
  ∀ n, P8571172351566193877.a n = A133525 (n + 1)

theorem P8571172351566193877.correct : P8571172351566193877.Spec := by
  intro n
  simp only [A133525, Nat.add_sub_cancel]

end A133525

/-! ## A133525.P15552203505484173791

`A133530(n+2)+A172190(n+1)/2`
-/

namespace A133525.P15552203505484173791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133530 (n + 2) : ℚ) + (A172190 (n + 1) : ℚ) / 2

end

end A133525.P15552203505484173791

namespace A133525

/-- `A133530(n+2)+A172190(n+1)/2` -/
def P15552203505484173791.Spec : Prop :=
  ∀ n, P15552203505484173791.a n = (A133525 (n + 1) : ℚ)

theorem P15552203505484173791.correct : P15552203505484173791.Spec := by
  intro n
  simp only [A133525, Nat.add_sub_cancel, A133525.P15552203505484173791.a, A133525.P8571172351566193877.a, A030078, A030078.P13819432151207990454.a, A133530, A133530.P664862353928632633.a, A172190, A172190.P9019848423872375971.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133534, A133534.P8927698302002784896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133525

/-! ## A133525.P11763555811924319022

`A133530(n+2)+A000040(n+1)^3`
-/

namespace A133525.P11763555811924319022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133530 (n + 2) + A000040 (n + 1) ^ 3

end

end A133525.P11763555811924319022

namespace A133525

/-- `A133530(n+2)+A000040(n+1)^3` -/
def P11763555811924319022.Spec : Prop :=
  ∀ n, P11763555811924319022.a n = A133525 (n + 1)

theorem P11763555811924319022.correct : P11763555811924319022.Spec := by
  intro n
  simp only [A133525, Nat.add_sub_cancel, A133525.P11763555811924319022.a, A133525.P8571172351566193877.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, A133530, A133530.P664862353928632633.a, A133534, A133534.P8927698302002784896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133525

/-! ## A133525.P9796854262800391710

`A133530(n+2)+(A001748(n+1)/3)^3`
-/

namespace A133525.P9796854262800391710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133530 (n + 2) : ℚ) + ((A001748 (n + 1) : ℚ) / 3) ^ 3

end

end A133525.P9796854262800391710

namespace A133525

/-- `A133530(n+2)+(A001748(n+1)/3)^3` -/
def P9796854262800391710.Spec : Prop :=
  ∀ n, P9796854262800391710.a n = (A133525 (n + 1) : ℚ)

theorem P9796854262800391710.correct : P9796854262800391710.Spec := by
  intro n
  simp only [A133525, Nat.add_sub_cancel, A133525.P9796854262800391710.a, A133525.P8571172351566193877.a, A001748, A001748.P16019639290970068825.a, A030078, A030078.P13819432151207990454.a, A133530, A133530.P664862353928632633.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133534, A133534.P8927698302002784896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133525

/-! ## A133525.P11337121537292739451

`A133530(n+2)+A127917(n+1)+A000040(n+1)`
-/

namespace A133525.P11337121537292739451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133530 (n + 2) + (A127917 (n + 1) + A000040 (n + 1))

end

end A133525.P11337121537292739451

namespace A133525

/-- `A133530(n+2)+A127917(n+1)+A000040(n+1)` -/
def P11337121537292739451.Spec : Prop :=
  ∀ n, P11337121537292739451.a n = A133525 (n + 1)

theorem P11337121537292739451.correct : P11337121537292739451.Spec := by
  intro n
  simp only [A133525, Nat.add_sub_cancel, A133525.P11337121537292739451.a, A133525.P8571172351566193877.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, A127917, A127917.P3075272387178552324.a, A133530, A133530.P664862353928632633.a, A133534, A133534.P8927698302002784896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133525

/-! ## A133525.P7050664152368528998

`A133530(n+2)+A000040(C(n+1, n))²*A000040(n+1)`
-/

namespace A133525.P7050664152368528998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133530 (n + 2) + A000040 (Nat.choose (n + 1) n) ^ 2 * A000040 (n + 1)

end

end A133525.P7050664152368528998

namespace A133525

/-- `A133530(n+2)+A000040(C(n+1, n))²*A000040(n+1)` -/
def P7050664152368528998.Spec : Prop :=
  ∀ n, P7050664152368528998.a n = A133525 (n + 1)

end A133525

/-! ## A133525.P11457270726755324014

`A133534(n+1)+A133534(n+3)`
-/

namespace A133525.P11457270726755324014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133534 (n + 1) + A133534 (n + 3)

end

end A133525.P11457270726755324014

namespace A133525

/-- `A133534(n+1)+A133534(n+3)` -/
def P11457270726755324014.Spec : Prop :=
  ∀ n, P11457270726755324014.a n = A133525 (n + 1)

theorem P11457270726755324014.correct : P11457270726755324014.Spec := by
  intro n
  simp only [A133525, Nat.add_sub_cancel, A133525.P11457270726755324014.a, A133525.P8571172351566193877.a, A030078, A030078.P13819432151207990454.a, A133530, A133530.P664862353928632633.a, A133534, A133534.P8927698302002784896.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133525

/-! ## A133525.P9707900884537128815

`A000040(n+1)^3+A000040(n+2)^3+A000040(n+3)^3+A000040(n+4)^3`
-/

namespace A133525.P9707900884537128815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 3 + A000040 (n + 2) ^ 3 + A000040 (n + 3) ^ 3 + A000040 (n + 4) ^ 3

end

end A133525.P9707900884537128815

namespace A133525

/-- `A000040(n+1)^3+A000040(n+2)^3+A000040(n+3)^3+A000040(n+4)^3` -/
def P9707900884537128815.Spec : Prop :=
  ∀ n, P9707900884537128815.a n = A133525 (n + 1)

end A133525

/-! ## A133525.P13521755276028856030

`A133539(n+1)-A030078(A020710(n))`
-/

namespace A133525.P13521755276028856030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133539 (n + 1) - A030078 (A020710 n).toNat

end

end A133525.P13521755276028856030

namespace A133525

/-- `A133539(n+1)-A030078(A020710(n))` -/
def P13521755276028856030.Spec : Prop :=
  ∀ n, P13521755276028856030.a n = A133525 (n + 1)

end A133525

/-! ## A133525.P17720439478343947345

`A133530(n+2)+A005064(A008578(n+2))`
-/

namespace A133525.P17720439478343947345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133530 (n + 2) + A005064 (A008578 (n + 2)).toNat

end

end A133525.P17720439478343947345

namespace A133525

/-- `A133530(n+2)+A005064(A008578(n+2))` -/
def P17720439478343947345.Spec : Prop :=
  ∀ n, P17720439478343947345.a n = A133525 (n + 1)

end A133525

/-! ## A133525.P11275967703252614208

`A133539(n+1)-A000578(A120533(n+1))`
-/

namespace A133525.P11275967703252614208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133539 (n + 1) - A000578 (A120533 (n + 1)).toNat

end

end A133525.P11275967703252614208

namespace A133525

/-- `A133539(n+1)-A000578(A120533(n+1))` -/
def P11275967703252614208.Spec : Prop :=
  ∀ n, P11275967703252614208.a n = A133525 (n + 1)

end A133525

/-!
# A133526: Sum of fourth powers of four consecutive primes.

The programs for A133526, the canonical program `A133526.P8358073913299201745` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133526 has offset 1).

The definition of A133526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133526.P8358073913299201745

`A133531(n+1)+A030514(n+4)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A133526

/-- `A133531(n+1)+A030514(n+4)` -/
def P8358073913299201745.Spec : Prop :=
  ∀ n, P8358073913299201745.a n = A133526 (n + 1)

theorem P8358073913299201745.correct : P8358073913299201745.Spec := by
  intro n
  simp only [A133526, Nat.add_sub_cancel]

end A133526

/-! ## A133526.P17598482278776273479

`A133535(n+1)+A133535(n+3)`
-/

namespace A133526.P17598482278776273479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133535 (n + 1) + A133535 (n + 3)

end

end A133526.P17598482278776273479

namespace A133526

/-- `A133535(n+1)+A133535(n+3)` -/
def P17598482278776273479.Spec : Prop :=
  ∀ n, P17598482278776273479.a n = A133526 (n + 1)

theorem P17598482278776273479.correct : P17598482278776273479.Spec := by
  intro n
  simp only [A133526, Nat.add_sub_cancel, A133526.P17598482278776273479.a, A133526.P8358073913299201745.a, A030514, A030514.P11974636125371552077.a, A133531, A133531.P4606246075334968653.a, A133535, A133535.P17160611315986516138.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133526

/-! ## A133526.P13860859472412323959

`A133531(n+1)+A001248(n+4)²`
-/

namespace A133526.P13860859472412323959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133531 (n + 1) + A001248 (n + 4) ^ 2

end

end A133526.P13860859472412323959

namespace A133526

/-- `A133531(n+1)+A001248(n+4)²` -/
def P13860859472412323959.Spec : Prop :=
  ∀ n, P13860859472412323959.a n = A133526 (n + 1)

theorem P13860859472412323959.correct : P13860859472412323959.Spec := by
  intro n
  simp only [A133526, Nat.add_sub_cancel, A133526.P13860859472412323959.a, A133526.P8358073913299201745.a, A001248, A001248.P16278241061688229202.a, A030514, A030514.P11974636125371552077.a, A133531, A133531.P4606246075334968653.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133535, A133535.P17160611315986516138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133526

/-! ## A133526.P1177100514182836856

`A133540(n+1)-A030514(n+5)`
-/

namespace A133526.P1177100514182836856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133540 (n + 1) - A030514 (n + 5)

end

end A133526.P1177100514182836856

namespace A133526

/-- `A133540(n+1)-A030514(n+5)` -/
def P1177100514182836856.Spec : Prop :=
  ∀ n, P1177100514182836856.a n = A133526 (n + 1)

theorem P1177100514182836856.correct : P1177100514182836856.Spec := by
  intro n
  simp only [A133526, Nat.add_sub_cancel, A133526.P1177100514182836856.a, A133526.P8358073913299201745.a, A030514, A030514.P11974636125371552077.a, A133531, A133531.P4606246075334968653.a, A133540, A133540.P13751763277394668418.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133535, A133535.P17160611315986516138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133526

/-! ## A133526.P1283829018264044352

`A133540(n+1)-A005065(A004139(n+3))`
-/

namespace A133526.P1283829018264044352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133540 (n + 1) - A005065 (A004139 (n + 3)).toNat

end

end A133526.P1283829018264044352

namespace A133526

/-- `A133540(n+1)-A005065(A004139(n+3))` -/
def P1283829018264044352.Spec : Prop :=
  ∀ n, P1283829018264044352.a n = A133526 (n + 1)

end A133526

/-! ## A133526.P7002544082902137280

`A133540(n+1)-A000583(A120533(n+1))`
-/

namespace A133526.P7002544082902137280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133540 (n + 1) - A000583 (A120533 (n + 1)).toNat

end

end A133526.P7002544082902137280

namespace A133526

/-- `A133540(n+1)-A000583(A120533(n+1))` -/
def P7002544082902137280.Spec : Prop :=
  ∀ n, P7002544082902137280.a n = A133526 (n + 1)

end A133526

/-!
# A133527: Sum of fifth powers of four consecutive primes.

The programs for A133527, the canonical program `A133527.P1112467787998249490` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133527 has offset 1).

The definition of A133527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133527.P1112467787998249490

`A133532(n+1)+A050997(n+4)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A133527

/-- `A133532(n+1)+A050997(n+4)` -/
def P1112467787998249490.Spec : Prop :=
  ∀ n, P1112467787998249490.a n = A133527 (n + 1)

theorem P1112467787998249490.correct : P1112467787998249490.Spec := by
  intro n
  simp only [A133527, Nat.add_sub_cancel]

end A133527

/-! ## A133527.P10151798651445162179

`A133536(n+1)+A133536(n+3)`
-/

namespace A133527.P10151798651445162179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133536 (n + 1) + A133536 (n + 3)

end

end A133527.P10151798651445162179

namespace A133527

/-- `A133536(n+1)+A133536(n+3)` -/
def P10151798651445162179.Spec : Prop :=
  ∀ n, P10151798651445162179.a n = A133527 (n + 1)

theorem P10151798651445162179.correct : P10151798651445162179.Spec := by
  intro n
  simp only [A133527, Nat.add_sub_cancel, A133527.P10151798651445162179.a, A133527.P1112467787998249490.a, A050997, A050997.P5231147570234137425.a, A133532, A133532.P11489854846316048726.a, A133536, A133536.P9524943263663054428.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133527

/-! ## A133527.P13753562568294611809

`A133541(n+1)-A050997(n+5)`
-/

namespace A133527.P13753562568294611809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133541 (n + 1) - A050997 (n + 5)

end

end A133527.P13753562568294611809

namespace A133527

/-- `A133541(n+1)-A050997(n+5)` -/
def P13753562568294611809.Spec : Prop :=
  ∀ n, P13753562568294611809.a n = A133527 (n + 1)

theorem P13753562568294611809.correct : P13753562568294611809.Spec := by
  intro n
  simp only [A133527, Nat.add_sub_cancel, A133527.P13753562568294611809.a, A133527.P1112467787998249490.a, A050997, A050997.P5231147570234137425.a, A133532, A133532.P11489854846316048726.a, A133541, A133541.P18226434130076836402.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133536, A133536.P9524943263663054428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133527

/-! ## A133527.P17010393527652692991

`A133541(n+1)+A050997(n+5)*A260196(n+2)`
-/

namespace A133527.P17010393527652692991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133541 (n + 1) + A050997 (n + 5) * A260196 (n + 2)

end

end A133527.P17010393527652692991

namespace A133527

/-- `A133541(n+1)+A050997(n+5)*A260196(n+2)` -/
def P17010393527652692991.Spec : Prop :=
  ∀ n, P17010393527652692991.a n = A133527 (n + 1)

end A133527

/-! ## A133527.P18125102279002460713

`A133541(n+1)-A351193(A120533(n+1))`
-/

namespace A133527.P18125102279002460713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133541 (n + 1) - A351193 (A120533 (n + 1)).toNat

end

end A133527.P18125102279002460713

namespace A133527

/-- `A133541(n+1)-A351193(A120533(n+1))` -/
def P18125102279002460713.Spec : Prop :=
  ∀ n, P18125102279002460713.a n = A133527 (n + 1)

end A133527

/-!
# A133528: Sum of sixth powers of four consecutive primes.

The programs for A133528, the canonical program `A133528.P15802330686603295123` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133528 has offset 1).

The definition of A133528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133528.P15802330686603295123

`A133533(n+1)+A030516(n+4)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A133528

/-- `A133533(n+1)+A030516(n+4)` -/
def P15802330686603295123.Spec : Prop :=
  ∀ n, P15802330686603295123.a n = A133528 (n + 1)

theorem P15802330686603295123.correct : P15802330686603295123.Spec := by
  intro n
  simp only [A133528, Nat.add_sub_cancel]

end A133528

/-! ## A133528.P11594757438739925668

`A133533(n+2)+A000040(n+1)^6`
-/

namespace A133528.P11594757438739925668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133533 (n + 2) + A000040 (n + 1) ^ 6

end

end A133528.P11594757438739925668

namespace A133528

/-- `A133533(n+2)+A000040(n+1)^6` -/
def P11594757438739925668.Spec : Prop :=
  ∀ n, P11594757438739925668.a n = A133528 (n + 1)

theorem P11594757438739925668.correct : P11594757438739925668.Spec := by
  intro n
  simp only [A133528, Nat.add_sub_cancel, A133528.P11594757438739925668.a, A133528.P15802330686603295123.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030516, A030516.P1711246340231228216.a, A133533, A133533.P6140301617002194535.a, A133537, A133537.P14407544762296117018.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133528

/-! ## A133528.P8446478346551993875

`A133533(n+2)+A030078(n+1)*A030078(n+1)`
-/

namespace A133528.P8446478346551993875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133533 (n + 2) + A030078 (n + 1) * A030078 (n + 1)

end

end A133528.P8446478346551993875

namespace A133528

/-- `A133533(n+2)+A030078(n+1)*A030078(n+1)` -/
def P8446478346551993875.Spec : Prop :=
  ∀ n, P8446478346551993875.a n = A133528 (n + 1)

theorem P8446478346551993875.correct : P8446478346551993875.Spec := by
  intro n
  simp only [A133528, Nat.add_sub_cancel, A133528.P8446478346551993875.a, A133528.P15802330686603295123.a, A030078, A030078.P13819432151207990454.a, A030516, A030516.P1711246340231228216.a, A133533, A133533.P6140301617002194535.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133537, A133537.P14407544762296117018.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133528

/-! ## A133528.P8576263611262329526

`A133537(n+1)+A133537(n+3)`
-/

namespace A133528.P8576263611262329526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133537 (n + 1) + A133537 (n + 3)

end

end A133528.P8576263611262329526

namespace A133528

/-- `A133537(n+1)+A133537(n+3)` -/
def P8576263611262329526.Spec : Prop :=
  ∀ n, P8576263611262329526.a n = A133528 (n + 1)

theorem P8576263611262329526.correct : P8576263611262329526.Spec := by
  intro n
  simp only [A133528, Nat.add_sub_cancel, A133528.P8576263611262329526.a, A133528.P15802330686603295123.a, A030516, A030516.P1711246340231228216.a, A133533, A133533.P6140301617002194535.a, A133537, A133537.P14407544762296117018.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133528

/-! ## A133528.P9995575916820633059

`A133542(n+1)-A030516(A020710(n))`
-/

namespace A133528.P9995575916820633059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133542 (n + 1) - A030516 (A020710 n).toNat

end

end A133528.P9995575916820633059

namespace A133528

/-- `A133542(n+1)-A030516(A020710(n))` -/
def P9995575916820633059.Spec : Prop :=
  ∀ n, P9995575916820633059.a n = A133528 (n + 1)

end A133528

/-! ## A133528.P10487117463444935904

`A133542(n+1)-A001014(A120533(n+1))`
-/

namespace A133528.P10487117463444935904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133542 (n + 1) - A001014 (A120533 (n + 1)).toNat

end

end A133528.P10487117463444935904

namespace A133528

/-- `A133542(n+1)-A001014(A120533(n+1))` -/
def P10487117463444935904.Spec : Prop :=
  ∀ n, P10487117463444935904.a n = A133528 (n + 1)

end A133528

/-!
# A133529: Sum of squares of three consecutive primes.

The programs for A133529, the canonical program `A133529.P6726527200779118077` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133529 has offset 1).

The definition of A133529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133529.P6726527200779118077

`A069484(n+1)+A001248(n+3)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A133529

/-- `A069484(n+1)+A001248(n+3)` -/
def P6726527200779118077.Spec : Prop :=
  ∀ n, P6726527200779118077.a n = A133529 (n + 1)

theorem P6726527200779118077.correct : P6726527200779118077.Spec := by
  intro n
  simp only [A133529, Nat.add_sub_cancel]

end A133529

/-! ## A133529.P4289244124514894797

`A001248(n+1)+2*A075892(n+2)`
-/

namespace A133529.P4289244124514894797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + 2 * A075892 (n + 2)

end

end A133529.P4289244124514894797

namespace A133529

/-- `A001248(n+1)+2*A075892(n+2)` -/
def P4289244124514894797.Spec : Prop :=
  ∀ n, P4289244124514894797.a n = A133529 (n + 1)

end A133529

/-! ## A133529.P9709530644011428231

`A348569(n+1)-2*A090076(n+1)`
-/

namespace A133529.P9709530644011428231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348569 (n + 1) - 2 * A090076 (n + 1)

end

end A133529.P9709530644011428231

namespace A133529

/-- `A348569(n+1)-2*A090076(n+1)` -/
def P9709530644011428231.Spec : Prop :=
  ∀ n, P9709530644011428231.a n = A133529 (n + 1)

theorem P9709530644011428231.correct : P9709530644011428231.Spec := by
  intro n
  simp only [A133529, Nat.add_sub_cancel, A133529.P9709530644011428231.a, A133529.P6726527200779118077.a, A001248, A001248.P16278241061688229202.a, A069484, A069484.P10584348183158188878.a, A090076, A090076.P13758090141823920472.a, A348569, A348569.P3113768960193056048.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133529

/-! ## A133529.P422117465949923789

`A034961(n+1)²-2*A127345(n+1)`
-/

namespace A133529.P422117465949923789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034961 (n + 1) ^ 2 - 2 * A127345 (n + 1)

end

end A133529.P422117465949923789

namespace A133529

/-- `A034961(n+1)²-2*A127345(n+1)` -/
def P422117465949923789.Spec : Prop :=
  ∀ n, P422117465949923789.a n = A133529 (n + 1)

theorem P422117465949923789.correct : P422117465949923789.Spec := by
  intro n
  simp only [A133529, Nat.add_sub_cancel, A133529.P422117465949923789.a, A133529.P6726527200779118077.a, A001248, A001248.P16278241061688229202.a, A034961, A034961.P9480249767911558173.a, A069484, A069484.P10584348183158188878.a, A127345, A127345.P8011768576743041729.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133529

/-! ## A133529.P8578153969476847839

`A069484(n+2)+A000040(n+1)²`
-/

namespace A133529.P8578153969476847839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 2) + A000040 (n + 1) ^ 2

end

end A133529.P8578153969476847839

namespace A133529

/-- `A069484(n+2)+A000040(n+1)²` -/
def P8578153969476847839.Spec : Prop :=
  ∀ n, P8578153969476847839.a n = A133529 (n + 1)

theorem P8578153969476847839.correct : P8578153969476847839.Spec := by
  intro n
  simp only [A133529, Nat.add_sub_cancel, A133529.P8578153969476847839.a, A133529.P6726527200779118077.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A069484, A069484.P10584348183158188878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133529

/-! ## A133529.P16082417837914770398

`A048851(n+2)+A065091(n+2)²`
-/

namespace A133529.P16082417837914770398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048851 (n + 2) + A065091 (n + 2) ^ 2

end

end A133529.P16082417837914770398

namespace A133529

/-- `A048851(n+2)+A065091(n+2)²` -/
def P16082417837914770398.Spec : Prop :=
  ∀ n, P16082417837914770398.a n = A133529 (n + 1)

end A133529

/-! ## A133529.P18226930305042611949

`A069484(n+1)+A124434(n+2)+A075892(n+2)`
-/

namespace A133529.P18226930305042611949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 1) + (A124434 (n + 2) + A075892 (n + 2))

end

end A133529.P18226930305042611949

namespace A133529

/-- `A069484(n+1)+A124434(n+2)+A075892(n+2)` -/
def P18226930305042611949.Spec : Prop :=
  ∀ n, P18226930305042611949.a n = A133529 (n + 1)

end A133529

/-! ## A133529.P4138132397974169418

`A006094(n+1)+A069484(n+2)-A291463(n+1)`
-/

namespace A133529.P4138132397974169418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + (A069484 (n + 2) - A291463 (n + 1))

end

end A133529.P4138132397974169418

namespace A133529

/-- `A006094(n+1)+A069484(n+2)-A291463(n+1)` -/
def P4138132397974169418.Spec : Prop :=
  ∀ n, P4138132397974169418.a n = A133529 (n + 1)

theorem P4138132397974169418.correct : P4138132397974169418.Spec := by
  intro n
  simp only [A133529, Nat.add_sub_cancel, A133529.P4138132397974169418.a, A133529.P6726527200779118077.a, A001248, A001248.P16278241061688229202.a, A006094, A006094.P10257567645245129766.a, A069484, A069484.P10584348183158188878.a, A291463, A291463.P14308935140851577628.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133529

/-! ## A133529.P18413694258343320564

`A001248(n+1)+A349660(n+2)+A036689(n+2)`
-/

namespace A133529.P18413694258343320564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (A349660 (n + 2) + A036689 (n + 2))

end

end A133529.P18413694258343320564

namespace A133529

/-- `A001248(n+1)+A349660(n+2)+A036689(n+2)` -/
def P18413694258343320564.Spec : Prop :=
  ∀ n, P18413694258343320564.a n = A133529 (n + 1)

end A133529

/-! ## A133529.P18143977445437399910

`A131686(n+1)+A069484(n+2)-A133524(n+2)`
-/

namespace A133529.P18143977445437399910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131686 (n + 1) + (A069484 (n + 2) - A133524 (n + 2))

end

end A133529.P18143977445437399910

namespace A133529

/-- `A131686(n+1)+A069484(n+2)-A133524(n+2)` -/
def P18143977445437399910.Spec : Prop :=
  ∀ n, P18143977445437399910.a n = A133529 (n + 1)

theorem P18143977445437399910.correct : P18143977445437399910.Spec := by
  intro n
  simp only [A133529, Nat.add_sub_cancel, A133529.P18143977445437399910.a, A133529.P6726527200779118077.a, A001248, A001248.P16278241061688229202.a, A069484, A069484.P10584348183158188878.a, A131686, A131686.P9344451036206820720.a, A133524, A133524.P7363267579138448459.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133529

/-! ## A133529.P1569582711149061839

`A069484(n+2)+A030078(n+1)/A000040(n+1)`
-/

namespace A133529.P1569582711149061839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069484 (n + 2) : ℚ) + (A030078 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A133529.P1569582711149061839

namespace A133529

/-- `A069484(n+2)+A030078(n+1)/A000040(n+1)` -/
def P1569582711149061839.Spec : Prop :=
  ∀ n, P1569582711149061839.a n = (A133529 (n + 1) : ℚ)

theorem P1569582711149061839.correct : P1569582711149061839.Spec := by
  intro n
  simp only [A133529, Nat.add_sub_cancel, A133529.P1569582711149061839.a, A133529.P6726527200779118077.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A030078, A030078.P13819432151207990454.a, A069484, A069484.P10584348183158188878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133529

/-! ## A133529.P13518547141056059088

`A048851(n+3)+A001248(n+1)`
-/

namespace A133529.P13518547141056059088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048851 (n + 3) + A001248 (n + 1)

end

end A133529.P13518547141056059088

namespace A133529

/-- `A048851(n+3)+A001248(n+1)` -/
def P13518547141056059088.Spec : Prop :=
  ∀ n, P13518547141056059088.a n = A133529 (n + 1)

end A133529

/-! ## A133529.P7651834700919176895

`A048851(n+3)+A000040(n+1)²`
-/

namespace A133529.P7651834700919176895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048851 (n + 3) + A000040 (n + 1) ^ 2

end

end A133529.P7651834700919176895

namespace A133529

/-- `A048851(n+3)+A000040(n+1)²` -/
def P7651834700919176895.Spec : Prop :=
  ∀ n, P7651834700919176895.a n = A133529 (n + 1)

end A133529

/-! ## A133529.P16413095825840829056

`A000040(n+1)²+A000040(n+2)²+A000040(n+3)²`
-/

namespace A133529.P16413095825840829056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 + A000040 (n + 2) ^ 2 + A000040 (n + 3) ^ 2

end

end A133529.P16413095825840829056

namespace A133529

/-- `A000040(n+1)²+A000040(n+2)²+A000040(n+3)²` -/
def P16413095825840829056.Spec : Prop :=
  ∀ n, P16413095825840829056.a n = A133529 (n + 1)

theorem P16413095825840829056.correct : P16413095825840829056.Spec := by
  intro n
  simp only [A133529, Nat.add_sub_cancel, A133529.P16413095825840829056.a, A133529.P6726527200779118077.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A069484, A069484.P10584348183158188878.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133529

/-! ## A133529.P3164157692534084378

`A024525(n+3)-A024525(n)`
-/

namespace A133529.P3164157692534084378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 (n + 3) - A024525 n

end

end A133529.P3164157692534084378

namespace A133529

/-- `A024525(n+3)-A024525(n)` -/
def P3164157692534084378.Spec : Prop :=
  ∀ n, P3164157692534084378.a n = A133529 (n + 1)

end A133529

/-! ## A133529.P5176423482728967057

`A131686(n+1)-A069484(n+4)`
-/

namespace A133529.P5176423482728967057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131686 (n + 1) - A069484 (n + 4)

end

end A133529.P5176423482728967057

namespace A133529

/-- `A131686(n+1)-A069484(n+4)` -/
def P5176423482728967057.Spec : Prop :=
  ∀ n, P5176423482728967057.a n = A133529 (n + 1)

theorem P5176423482728967057.correct : P5176423482728967057.Spec := by
  intro n
  simp only [A133529, Nat.add_sub_cancel, A133529.P5176423482728967057.a, A133529.P6726527200779118077.a, A001248, A001248.P16278241061688229202.a, A069484, A069484.P10584348183158188878.a, A131686, A131686.P9344451036206820720.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133524, A133524.P7363267579138448459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133529

/-! ## A133529.P702657338415379017

`A069484(n+2)+A033476(2*n)`
-/

namespace A133529.P702657338415379017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 2) + A033476 (2 * n)

end

end A133529.P702657338415379017

namespace A133529

/-- `A069484(n+2)+A033476(2*n)` -/
def P702657338415379017.Spec : Prop :=
  ∀ n, P702657338415379017.a n = A133529 (n + 1)

end A133529

/-! ## A133529.P15217852477688750597

`A069484(n+2)+p?[A006370(n)]²`
-/

namespace A133529.P15217852477688750597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 2) + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2

end

end A133529.P15217852477688750597

namespace A133529

/-- `A069484(n+2)+p?[A006370(n)]²` -/
def P15217852477688750597.Spec : Prop :=
  ∀ n, P15217852477688750597.a n = A133529 (n + 1)

end A133529

/-!
# A133530: Sum of third powers of three consecutive primes.

The programs for A133530, the canonical program `A133530.P664862353928632633` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133530 has offset 1).

The definition of A133530 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133530.P664862353928632633

`A133534(n+1)+A030078(n+3)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133530

/-- `A133534(n+1)+A030078(n+3)` -/
def P664862353928632633.Spec : Prop :=
  ∀ n, P664862353928632633.a n = A133530 (n + 1)

theorem P664862353928632633.correct : P664862353928632633.Spec := by
  intro n
  simp only [A133530, Nat.add_sub_cancel]

end A133530

/-! ## A133530.P3870784591594406974

`A133534(n+2)+Δ[A007504(n)]^3`
-/

namespace A133530.P3870784591594406974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133534 (n + 2) + (f1 (n + 1) - f1 n) ^ 3

end

end A133530.P3870784591594406974

namespace A133530

/-- `A133534(n+2)+Δ[A007504(n)]^3` -/
def P3870784591594406974.Spec : Prop :=
  ∀ n, P3870784591594406974.a n = A133530 (n + 1)

end A133530

/-! ## A133530.P3630460705357963049

`A000040(n+1)^3+A000040(n+2)^3+A000040(n+3)^3`
-/

namespace A133530.P3630460705357963049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 3 + A000040 (n + 2) ^ 3 + A000040 (n + 3) ^ 3

end

end A133530.P3630460705357963049

namespace A133530

/-- `A000040(n+1)^3+A000040(n+2)^3+A000040(n+3)^3` -/
def P3630460705357963049.Spec : Prop :=
  ∀ n, P3630460705357963049.a n = A133530 (n + 1)

end A133530

/-! ## A133530.P5906336006774734344

`A133525(n+1)-A030078(n+4)`
-/

namespace A133530.P5906336006774734344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133525 (n + 1) - A030078 (n + 4)

end

end A133530.P5906336006774734344

namespace A133530

/-- `A133525(n+1)-A030078(n+4)` -/
def P5906336006774734344.Spec : Prop :=
  ∀ n, P5906336006774734344.a n = A133530 (n + 1)

theorem P5906336006774734344.correct : P5906336006774734344.Spec := by
  intro n
  simp only [A133530, Nat.add_sub_cancel, A133530.P5906336006774734344.a, A133530.P664862353928632633.a, A030078, A030078.P13819432151207990454.a, A133525, A133525.P8571172351566193877.a, A133534, A133534.P8927698302002784896.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133530

/-! ## A133530.P6173150679464824392

`A133539(n+1)-A133534(n+4)`
-/

namespace A133530.P6173150679464824392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133539 (n + 1) - A133534 (n + 4)

end

end A133530.P6173150679464824392

namespace A133530

/-- `A133539(n+1)-A133534(n+4)` -/
def P6173150679464824392.Spec : Prop :=
  ∀ n, P6173150679464824392.a n = A133530 (n + 1)

theorem P6173150679464824392.correct : P6173150679464824392.Spec := by
  intro n
  simp only [A133530, Nat.add_sub_cancel, A133530.P6173150679464824392.a, A133530.P664862353928632633.a, A030078, A030078.P13819432151207990454.a, A133534, A133534.P8927698302002784896.a, A133539, A133539.P3067376241285040569.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133525, A133525.P8571172351566193877.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133530

/-! ## A133530.P5899976304355853141

`A133525(n+1)-A000578(p?[A020742(n)])`
-/

namespace A133530.P5899976304355853141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133525 (n + 1) - A000578 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A133530.P5899976304355853141

namespace A133530

/-- `A133525(n+1)-A000578(p?[A020742(n)])` -/
def P5899976304355853141.Spec : Prop :=
  ∀ n, P5899976304355853141.a n = A133530 (n + 1)

end A133530

/-!
# A133531: Sum of fourth powers of three consecutive primes.

The programs for A133531, the canonical program `A133531.P4606246075334968653` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133531 has offset 1).

The definition of A133531 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133531.P4606246075334968653

`A133535(n+1)+A030514(n+3)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133531

/-- `A133535(n+1)+A030514(n+3)` -/
def P4606246075334968653.Spec : Prop :=
  ∀ n, P4606246075334968653.a n = A133531 (n + 1)

theorem P4606246075334968653.correct : P4606246075334968653.Spec := by
  intro n
  simp only [A133531, Nat.add_sub_cancel]

end A133531

/-! ## A133531.P16469555065123363840

`A133540(n+1)+A133535(n+2)-A133526(n+2)`
-/

namespace A133531.P16469555065123363840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133540 (n + 1) + (A133535 (n + 2) - A133526 (n + 2))

end

end A133531.P16469555065123363840

namespace A133531

/-- `A133540(n+1)+A133535(n+2)-A133526(n+2)` -/
def P16469555065123363840.Spec : Prop :=
  ∀ n, P16469555065123363840.a n = A133531 (n + 1)

theorem P16469555065123363840.correct : P16469555065123363840.Spec := by
  intro n
  simp only [A133531, Nat.add_sub_cancel, A133531.P16469555065123363840.a, A133531.P4606246075334968653.a, A030514, A030514.P11974636125371552077.a, A133526, A133526.P8358073913299201745.a, A133535, A133535.P17160611315986516138.a, A133540, A133540.P13751763277394668418.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133531

/-! ## A133531.P11312695130325918746

`A133526(n+1)-A030514(n+4)`
-/

namespace A133531.P11312695130325918746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133526 (n + 1) - A030514 (n + 4)

end

end A133531.P11312695130325918746

namespace A133531

/-- `A133526(n+1)-A030514(n+4)` -/
def P11312695130325918746.Spec : Prop :=
  ∀ n, P11312695130325918746.a n = A133531 (n + 1)

theorem P11312695130325918746.correct : P11312695130325918746.Spec := by
  intro n
  simp only [A133531, Nat.add_sub_cancel, A133531.P11312695130325918746.a, A133531.P4606246075334968653.a, A030514, A030514.P11974636125371552077.a, A133526, A133526.P8358073913299201745.a, A133535, A133535.P17160611315986516138.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133531

/-! ## A133531.P6574197220829759963

`A133540(n+1)-A133535(n+4)`
-/

namespace A133531.P6574197220829759963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133540 (n + 1) - A133535 (n + 4)

end

end A133531.P6574197220829759963

namespace A133531

/-- `A133540(n+1)-A133535(n+4)` -/
def P6574197220829759963.Spec : Prop :=
  ∀ n, P6574197220829759963.a n = A133531 (n + 1)

theorem P6574197220829759963.correct : P6574197220829759963.Spec := by
  intro n
  simp only [A133531, Nat.add_sub_cancel, A133531.P6574197220829759963.a, A133531.P4606246075334968653.a, A030514, A030514.P11974636125371552077.a, A133535, A133535.P17160611315986516138.a, A133540, A133540.P13751763277394668418.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133526, A133526.P8358073913299201745.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133531

/-! ## A133531.P2597705470379249116

`A133526(n+1)-p?[A020742(n)]²²`
-/

namespace A133531.P2597705470379249116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133526 (n + 1) - (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 2) ^ 2

end

end A133531.P2597705470379249116

namespace A133531

/-- `A133526(n+1)-p?[A020742(n)]²²` -/
def P2597705470379249116.Spec : Prop :=
  ∀ n, P2597705470379249116.a n = A133531 (n + 1)

end A133531

/-! ## A133531.P6447142874625756866

`A133526(n+1)-A000583(p?[A020742(n)])`
-/

namespace A133531.P6447142874625756866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133526 (n + 1) - A000583 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A133531.P6447142874625756866

namespace A133531

/-- `A133526(n+1)-A000583(p?[A020742(n)])` -/
def P6447142874625756866.Spec : Prop :=
  ∀ n, P6447142874625756866.a n = A133531 (n + 1)

end A133531

/-!
# A133532: Sum of fifth powers of three consecutive primes.

The programs for A133532, the canonical program `A133532.P11489854846316048726` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133532 has offset 1).

The definition of A133532 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133532.P11489854846316048726

`A133536(n+1)+A050997(n+3)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133532

/-- `A133536(n+1)+A050997(n+3)` -/
def P11489854846316048726.Spec : Prop :=
  ∀ n, P11489854846316048726.a n = A133532 (n + 1)

theorem P11489854846316048726.correct : P11489854846316048726.Spec := by
  intro n
  simp only [A133532, Nat.add_sub_cancel]

end A133532

/-! ## A133532.P4083660111981283465

`A133536(n+2)+A000040(n+1)²*A030078(n+1)`
-/

namespace A133532.P4083660111981283465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133536 (n + 2) + A000040 (n + 1) ^ 2 * A030078 (n + 1)

end

end A133532.P4083660111981283465

namespace A133532

/-- `A133536(n+2)+A000040(n+1)²*A030078(n+1)` -/
def P4083660111981283465.Spec : Prop :=
  ∀ n, P4083660111981283465.a n = A133532 (n + 1)

theorem P4083660111981283465.correct : P4083660111981283465.Spec := by
  intro n
  simp only [A133532, Nat.add_sub_cancel, A133532.P4083660111981283465.a, A133532.P11489854846316048726.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, A050997, A050997.P5231147570234137425.a, A133536, A133536.P9524943263663054428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133532

/-! ## A133532.P6913098907635216941

`A050997(n+1)+A050997(n+2)+A050997(n+3)`
-/

namespace A133532.P6913098907635216941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 1) + (A050997 (n + 2) + A050997 (n + 3))

end

end A133532.P6913098907635216941

namespace A133532

/-- `A050997(n+1)+A050997(n+2)+A050997(n+3)` -/
def P6913098907635216941.Spec : Prop :=
  ∀ n, P6913098907635216941.a n = A133532 (n + 1)

theorem P6913098907635216941.correct : P6913098907635216941.Spec := by
  intro n
  simp only [A133532, Nat.add_sub_cancel, A133532.P6913098907635216941.a, A133532.P11489854846316048726.a, A050997, A050997.P5231147570234137425.a, A133536, A133536.P9524943263663054428.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133532

/-! ## A133532.P12016109497144222397

`A133527(n+1)-A050997(n+4)`
-/

namespace A133532.P12016109497144222397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133527 (n + 1) - A050997 (n + 4)

end

end A133532.P12016109497144222397

namespace A133532

/-- `A133527(n+1)-A050997(n+4)` -/
def P12016109497144222397.Spec : Prop :=
  ∀ n, P12016109497144222397.a n = A133532 (n + 1)

theorem P12016109497144222397.correct : P12016109497144222397.Spec := by
  intro n
  simp only [A133532, Nat.add_sub_cancel, A133532.P12016109497144222397.a, A133532.P11489854846316048726.a, A050997, A050997.P5231147570234137425.a, A133527, A133527.P1112467787998249490.a, A133536, A133536.P9524943263663054428.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133532

/-! ## A133532.P300066371256355379

`A133541(n+1)-A133536(n+4)`
-/

namespace A133532.P300066371256355379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133541 (n + 1) - A133536 (n + 4)

end

end A133532.P300066371256355379

namespace A133532

/-- `A133541(n+1)-A133536(n+4)` -/
def P300066371256355379.Spec : Prop :=
  ∀ n, P300066371256355379.a n = A133532 (n + 1)

theorem P300066371256355379.correct : P300066371256355379.Spec := by
  intro n
  simp only [A133532, Nat.add_sub_cancel, A133532.P300066371256355379.a, A133532.P11489854846316048726.a, A050997, A050997.P5231147570234137425.a, A133536, A133536.P9524943263663054428.a, A133541, A133541.P18226434130076836402.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133527, A133527.P1112467787998249490.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133532

/-!
# A133533: Sum of sixth powers of three consecutive primes.

The programs for A133533, the canonical program `A133533.P6140301617002194535` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133533 has offset 1).

The definition of A133533 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133533.P6140301617002194535

`A133537(n+1)+A030516(n+3)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133533

/-- `A133537(n+1)+A030516(n+3)` -/
def P6140301617002194535.Spec : Prop :=
  ∀ n, P6140301617002194535.a n = A133533 (n + 1)

theorem P6140301617002194535.correct : P6140301617002194535.Spec := by
  intro n
  simp only [A133533, Nat.add_sub_cancel]

end A133533

/-! ## A133533.P18146058561277354670

`A133542(n+1)+A133537(n+2)-A133528(n+2)`
-/

namespace A133533.P18146058561277354670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133542 (n + 1) + (A133537 (n + 2) - A133528 (n + 2))

end

end A133533.P18146058561277354670

namespace A133533

/-- `A133542(n+1)+A133537(n+2)-A133528(n+2)` -/
def P18146058561277354670.Spec : Prop :=
  ∀ n, P18146058561277354670.a n = A133533 (n + 1)

theorem P18146058561277354670.correct : P18146058561277354670.Spec := by
  intro n
  simp only [A133533, Nat.add_sub_cancel, A133533.P18146058561277354670.a, A133533.P6140301617002194535.a, A030516, A030516.P1711246340231228216.a, A133528, A133528.P15802330686603295123.a, A133537, A133537.P14407544762296117018.a, A133542, A133542.P11638819903937518053.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133533

/-! ## A133533.P3280965760546845854

`A030516(n+1)+A030516(n+2)+A030516(n+3)`
-/

namespace A133533.P3280965760546845854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) + (A030516 (n + 2) + A030516 (n + 3))

end

end A133533.P3280965760546845854

namespace A133533

/-- `A030516(n+1)+A030516(n+2)+A030516(n+3)` -/
def P3280965760546845854.Spec : Prop :=
  ∀ n, P3280965760546845854.a n = A133533 (n + 1)

theorem P3280965760546845854.correct : P3280965760546845854.Spec := by
  intro n
  simp only [A133533, Nat.add_sub_cancel, A133533.P3280965760546845854.a, A133533.P6140301617002194535.a, A030516, A030516.P1711246340231228216.a, A133537, A133537.P14407544762296117018.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133533

/-! ## A133533.P5212782253901658265

`A133528(n+1)-A030516(n+4)`
-/

namespace A133533.P5212782253901658265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133528 (n + 1) - A030516 (n + 4)

end

end A133533.P5212782253901658265

namespace A133533

/-- `A133528(n+1)-A030516(n+4)` -/
def P5212782253901658265.Spec : Prop :=
  ∀ n, P5212782253901658265.a n = A133533 (n + 1)

theorem P5212782253901658265.correct : P5212782253901658265.Spec := by
  intro n
  simp only [A133533, Nat.add_sub_cancel, A133533.P5212782253901658265.a, A133533.P6140301617002194535.a, A030516, A030516.P1711246340231228216.a, A133528, A133528.P15802330686603295123.a, A133537, A133537.P14407544762296117018.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133533

/-! ## A133533.P18348006836328724251

`A133542(n+1)-A133537(n+4)`
-/

namespace A133533.P18348006836328724251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133542 (n + 1) - A133537 (n + 4)

end

end A133533.P18348006836328724251

namespace A133533

/-- `A133542(n+1)-A133537(n+4)` -/
def P18348006836328724251.Spec : Prop :=
  ∀ n, P18348006836328724251.a n = A133533 (n + 1)

theorem P18348006836328724251.correct : P18348006836328724251.Spec := by
  intro n
  simp only [A133533, Nat.add_sub_cancel, A133533.P18348006836328724251.a, A133533.P6140301617002194535.a, A030516, A030516.P1711246340231228216.a, A133537, A133537.P14407544762296117018.a, A133542, A133542.P11638819903937518053.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133528, A133528.P15802330686603295123.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133533

/-! ## A133533.P1865164671404354208

`A133528(n+1)-A001014(p?[A020742(n)])`
-/

namespace A133533.P1865164671404354208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133528 (n + 1) - A001014 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A133533.P1865164671404354208

namespace A133533

/-- `A133528(n+1)-A001014(p?[A020742(n)])` -/
def P1865164671404354208.Spec : Prop :=
  ∀ n, P1865164671404354208.a n = A133533 (n + 1)

end A133533

/-!
# A133534: Sum of third powers of two consecutive primes.

The programs for A133534, the canonical program `A133534.P8927698302002784896` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133534 has offset 1).

The definition of A133534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133534.P8927698302002784896

`A030078(n+1)+A030078(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A133534

/-- `A030078(n+1)+A030078(n+2)` -/
def P8927698302002784896.Spec : Prop :=
  ∀ n, P8927698302002784896.a n = A133534 (n + 1)

theorem P8927698302002784896.correct : P8927698302002784896.Spec := by
  intro n
  simp only [A133534, Nat.add_sub_cancel]

end A133534

/-! ## A133534.P16726314323528600415

`A172190(n+1)+A129701(n+1)`
-/

namespace A133534.P16726314323528600415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172190 (n + 1) + A129701 (n + 1)

end

end A133534.P16726314323528600415

namespace A133534

/-- `A172190(n+1)+A129701(n+1)` -/
def P16726314323528600415.Spec : Prop :=
  ∀ n, P16726314323528600415.a n = A133534 (n + 1)

theorem P16726314323528600415.correct : P16726314323528600415.Spec := by
  intro n
  simp only [A133534, Nat.add_sub_cancel, A133534.P16726314323528600415.a, A133534.P8927698302002784896.a, A030078, A030078.P13819432151207990454.a, A129701, A129701.P1653237727856646442.a, A172190, A172190.P9019848423872375971.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133534

/-! ## A133534.P6867295515201333097

`abs(Δ[Δ[A242188(n)]])`
-/

namespace A133534.P6867295515201333097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242188 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A133534.P6867295515201333097

namespace A133534

/-- `abs(Δ[Δ[A242188(n)]])` -/
def P6867295515201333097.Spec : Prop :=
  ∀ n, P6867295515201333097.a n = A133534 (n + 1)

end A133534

/-! ## A133534.P2595515217310391059

`(A172190(n+2)+A172190(n+1))/2`
-/

namespace A133534.P2595515217310391059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172190 (n + 2) + A172190 (n + 1) : ℚ) / 2

end

end A133534.P2595515217310391059

namespace A133534

/-- `(A172190(n+2)+A172190(n+1))/2` -/
def P2595515217310391059.Spec : Prop :=
  ∀ n, P2595515217310391059.a n = (A133534 (n + 1) : ℚ)

theorem P2595515217310391059.correct : P2595515217310391059.Spec := by
  intro n
  simp only [A133534, Nat.add_sub_cancel, A133534.P2595515217310391059.a, A133534.P8927698302002784896.a, A030078, A030078.P13819432151207990454.a, A172190, A172190.P9019848423872375971.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133534

/-! ## A133534.P3205227443181159679

`abs(Δ[A273960(n+1)²*A273960(n+1)])`
-/

namespace A133534.P3205227443181159679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) ^ 2 * A273960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A133534.P3205227443181159679

namespace A133534

/-- `abs(Δ[A273960(n+1)²*A273960(n+1)])` -/
def P3205227443181159679.Spec : Prop :=
  ∀ n, P3205227443181159679.a n = A133534 (n + 1)

end A133534

/-! ## A133534.P7938340908814883047

`A000040(n+1)^3+A000040(n+2)^3`
-/

namespace A133534.P7938340908814883047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 3 + A000040 (n + 2) ^ 3

end

end A133534.P7938340908814883047

namespace A133534

/-- `A000040(n+1)^3+A000040(n+2)^3` -/
def P7938340908814883047.Spec : Prop :=
  ∀ n, P7938340908814883047.a n = A133534 (n + 1)

end A133534

/-! ## A133534.P225815612887552401

`A133539(n+1)-A133530(n+3)`
-/

namespace A133534.P225815612887552401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133539 (n + 1) - A133530 (n + 3)

end

end A133534.P225815612887552401

namespace A133534

/-- `A133539(n+1)-A133530(n+3)` -/
def P225815612887552401.Spec : Prop :=
  ∀ n, P225815612887552401.a n = A133534 (n + 1)

theorem P225815612887552401.correct : P225815612887552401.Spec := by
  intro n
  simp only [A133534, Nat.add_sub_cancel, A133534.P225815612887552401.a, A133534.P8927698302002784896.a, A030078, A030078.P13819432151207990454.a, A133530, A133530.P664862353928632633.a, A133539, A133539.P3067376241285040569.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133525, A133525.P8571172351566193877.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133534

/-! ## A133534.P1025274470154300504

`A005064(A000040(n+2))+record[A005064(n+2)]`
-/

namespace A133534.P1025274470154300504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005064 (A000040 (n + 2)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133534.P1025274470154300504

namespace A133534

/-- `A005064(A000040(n+2))+record[A005064(n+2)]` -/
def P1025274470154300504.Spec : Prop :=
  ∀ n, P1025274470154300504.a n = A133534 (n + 1)

end A133534

/-! ## A133534.P13147139724798518702

`A088378(A000040(n+2))+record[A088378(n+2)]`
-/

namespace A133534.P13147139724798518702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088378 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088378 (A000040 (n + 2)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133534.P13147139724798518702

namespace A133534

/-- `A088378(A000040(n+2))+record[A088378(n+2)]` -/
def P13147139724798518702.Spec : Prop :=
  ∀ n, P13147139724798518702.a n = A133534 (n + 1)

end A133534

/-! ## A133534.P1830417432967315974

`A224787(A000040(n+2))+record[A224787(n+2)]`
-/

namespace A133534.P1830417432967315974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224787 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224787 (A000040 (n + 2)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133534.P1830417432967315974

namespace A133534

/-- `A224787(A000040(n+2))+record[A224787(n+2)]` -/
def P1830417432967315974.Spec : Prop :=
  ∀ n, P1830417432967315974.a n = A133534 (n + 1)

end A133534

/-! ## A133534.P3686195681459566564

`A000578(A065091(n+1))+p?[A000430(n+1)]^3`
-/

namespace A133534.P3686195681459566564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A065091 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 3

end

end A133534.P3686195681459566564

namespace A133534

/-- `A000578(A065091(n+1))+p?[A000430(n+1)]^3` -/
def P3686195681459566564.Spec : Prop :=
  ∀ n, P3686195681459566564.a n = A133534 (n + 1)

end A133534

/-! ## A133534.P4477606028689511038

`A000578(A065091(n+1))+record[(A000010(n+1)+1)^3]`
-/

namespace A133534.P4477606028689511038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A065091 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133534.P4477606028689511038

namespace A133534

/-- `A000578(A065091(n+1))+record[(A000010(n+1)+1)^3]` -/
def P4477606028689511038.Spec : Prop :=
  ∀ n, P4477606028689511038.a n = A133534 (n + 1)

end A133534

/-! ## A133534.P812725315975821472

`A000578(A000040(n+2))+A000578(A000040(n+1))`
-/

namespace A133534.P812725315975821472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A000040 (n + 2)).toNat + A000578 (A000040 (n + 1)).toNat

end

end A133534.P812725315975821472

namespace A133534

/-- `A000578(A000040(n+2))+A000578(A000040(n+1))` -/
def P812725315975821472.Spec : Prop :=
  ∀ n, P812725315975821472.a n = A133534 (n + 1)

end A133534

/-! ## A133534.P11338159365520461361

`∑{p}[A006094(n+1), #*#²]`
-/

namespace A133534.P11338159365520461361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p * p ^ 2

end

end A133534.P11338159365520461361

namespace A133534

/-- `∑{p}[A006094(n+1), #*#²]` -/
def P11338159365520461361.Spec : Prop :=
  ∀ n, (P11338159365520461361.a n : ℤ) = A133534 (n + 1)

end A133534

/-! ## A133534.P16375361758998288991

`∩[A086119(n+1), A352423(n+1)]`
-/

namespace A133534.P16375361758998288991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133534.P16375361758998288991

namespace A133534

/-- `∩[A086119(n+1), A352423(n+1)]` -/
def P16375361758998288991.Spec : Prop :=
  ∀ n, (P16375361758998288991.a n : ℤ) = A133534 (n + 1)

end A133534

/-! ## A133534.P4133409732030238656

`∩[A120398(n+1), A352423(n+1)]`
-/

namespace A133534.P4133409732030238656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133534.P4133409732030238656

namespace A133534

/-- `∩[A120398(n+1), A352423(n+1)]` -/
def P4133409732030238656.Spec : Prop :=
  ∀ n, (P4133409732030238656.a n : ℤ) = A133534 (n + 1)

end A133534

/-! ## A133534.P13141444770689980569

`∩[A086121(n+1), A352423(n+1)]`
-/

namespace A133534.P13141444770689980569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133534.P13141444770689980569

namespace A133534

/-- `∩[A086121(n+1), A352423(n+1)]` -/
def P13141444770689980569.Spec : Prop :=
  ∀ n, (P13141444770689980569.a n : ℤ) = A133534 (n + 1)

end A133534

/-!
# A133535: Sum of fourth powers of two consecutive primes.

The programs for A133535, the canonical program `A133535.P17160611315986516138` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133535 has offset 1).

The definition of A133535 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133535.P17160611315986516138

`A030514(n+1)+A030514(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A133535

/-- `A030514(n+1)+A030514(n+2)` -/
def P17160611315986516138.Spec : Prop :=
  ∀ n, P17160611315986516138.a n = A133535 (n + 1)

theorem P17160611315986516138.correct : P17160611315986516138.Spec := by
  intro n
  simp only [A133535, Nat.add_sub_cancel]

end A133535

/-! ## A133535.P5886586461279885593

`A276963(n+1)+A172191(n+1)`
-/

namespace A133535.P5886586461279885593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276963 (n + 1) + A172191 (n + 1)

end

end A133535.P5886586461279885593

namespace A133535

/-- `A276963(n+1)+A172191(n+1)` -/
def P5886586461279885593.Spec : Prop :=
  ∀ n, P5886586461279885593.a n = A133535 (n + 1)

theorem P5886586461279885593.correct : P5886586461279885593.Spec := by
  intro n
  simp only [A133535, Nat.add_sub_cancel, A133535.P5886586461279885593.a, A133535.P17160611315986516138.a, A030514, A030514.P11974636125371552077.a, A172191, A172191.P932075180131269683.a, A276963, A276963.P1585485731778849749.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133535

/-! ## A133535.P2438106603196859544

`A001248(n+1)²+A065091(n+1)²²`
-/

namespace A133535.P2438106603196859544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2 + (A065091 (n + 1) ^ 2) ^ 2

end

end A133535.P2438106603196859544

namespace A133535

/-- `A001248(n+1)²+A065091(n+1)²²` -/
def P2438106603196859544.Spec : Prop :=
  ∀ n, P2438106603196859544.a n = A133535 (n + 1)

theorem P2438106603196859544.correct : P2438106603196859544.Spec := by
  intro n
  simp only [A133535, Nat.add_sub_cancel, A133535.P2438106603196859544.a, A133535.P17160611315986516138.a, A001248, A001248.P16278241061688229202.a, A030514, A030514.P11974636125371552077.a, A065091, A065091.P6971844946592549357.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133535

/-! ## A133535.P11350957030469687987

`A000040(n+1)^4+A000040(n+2)^4`
-/

namespace A133535.P11350957030469687987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 4 + A000040 (n + 2) ^ 4

end

end A133535.P11350957030469687987

namespace A133535

/-- `A000040(n+1)^4+A000040(n+2)^4` -/
def P11350957030469687987.Spec : Prop :=
  ∀ n, P11350957030469687987.a n = A133535 (n + 1)

end A133535

/-! ## A133535.P15560776613749366254

`A133536(n+1)-(A138407(n+1)+A138407(n+2))`
-/

namespace A133535.P15560776613749366254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133536 (n + 1) - (A138407 (n + 1) + A138407 (n + 2))

end

end A133535.P15560776613749366254

namespace A133535

/-- `A133536(n+1)-(A138407(n+1)+A138407(n+2))` -/
def P15560776613749366254.Spec : Prop :=
  ∀ n, P15560776613749366254.a n = A133535 (n + 1)

theorem P15560776613749366254.correct : P15560776613749366254.Spec := by
  intro n
  simp only [A133535, Nat.add_sub_cancel, A133535.P15560776613749366254.a, A133535.P17160611315986516138.a, A030514, A030514.P11974636125371552077.a, A133536, A133536.P9524943263663054428.a, A138407, A138407.P5183959354295253319.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A050997, A050997.P5231147570234137425.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133535

/-! ## A133535.P11190096821883339157

`A133540(n+1)-A133531(n+3)`
-/

namespace A133535.P11190096821883339157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133540 (n + 1) - A133531 (n + 3)

end

end A133535.P11190096821883339157

namespace A133535

/-- `A133540(n+1)-A133531(n+3)` -/
def P11190096821883339157.Spec : Prop :=
  ∀ n, P11190096821883339157.a n = A133535 (n + 1)

theorem P11190096821883339157.correct : P11190096821883339157.Spec := by
  intro n
  simp only [A133535, Nat.add_sub_cancel, A133535.P11190096821883339157.a, A133535.P17160611315986516138.a, A030514, A030514.P11974636125371552077.a, A133531, A133531.P4606246075334968653.a, A133540, A133540.P13751763277394668418.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133526, A133526.P8358073913299201745.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133535

/-! ## A133535.P16626739616269058400

`A033476(2*n)²+A001248(n+2)²`
-/

namespace A133535.P16626739616269058400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (2 * n) ^ 2 + A001248 (n + 2) ^ 2

end

end A133535.P16626739616269058400

namespace A133535

/-- `A033476(2*n)²+A001248(n+2)²` -/
def P16626739616269058400.Spec : Prop :=
  ∀ n, P16626739616269058400.a n = A133535 (n + 1)

end A133535

/-! ## A133535.P11995864249995512825

`A000583(A000040(n+1))+A000583(A065091(n+1))`
-/

namespace A133535.P11995864249995512825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A000040 (n + 1)).toNat + A000583 (A065091 (n + 1)).toNat

end

end A133535.P11995864249995512825

namespace A133535

/-- `A000583(A000040(n+1))+A000583(A065091(n+1))` -/
def P11995864249995512825.Spec : Prop :=
  ∀ n, P11995864249995512825.a n = A133535 (n + 1)

end A133535

/-! ## A133535.P13864476092315464340

`record[∑{p}[A116570(n), #²²]]`
-/

namespace A133535.P13864476092315464340
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, (p ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133535.P13864476092315464340

namespace A133535

/-- `record[∑{p}[A116570(n), #²²]]` -/
def P13864476092315464340.Spec : Prop :=
  ∀ n, (P13864476092315464340.a n : ℤ) = A133535 (n + 1)

end A133535

/-! ## A133535.P15701985492792066492

`∑{p}[A006094(n+1), #^4]`
-/

namespace A133535.P15701985492792066492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 4

end

end A133535.P15701985492792066492

namespace A133535

/-- `∑{p}[A006094(n+1), #^4]` -/
def P15701985492792066492.Spec : Prop :=
  ∀ n, (P15701985492792066492.a n : ℤ) = A133535 (n + 1)

end A133535

/-! ## A133535.P13228002580764137490

`∑{p}[A116570(2*n), #²²]`
-/

namespace A133535.P13228002580764137490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p ^ 2) ^ 2

end

end A133535.P13228002580764137490

namespace A133535

/-- `∑{p}[A116570(2*n), #²²]` -/
def P13228002580764137490.Spec : Prop :=
  ∀ n, (P13228002580764137490.a n : ℤ) = A133535 (n + 1)

end A133535

/-! ## A133535.P8847811909793226550

`∑{p}[sqrt(A166329(n+1)), #²²]`
-/

namespace A133535.P8847811909793226550
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A166329 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, (p ^ 2) ^ 2

end

end A133535.P8847811909793226550

namespace A133535

/-- `∑{p}[sqrt(A166329(n+1)), #²²]` -/
def P8847811909793226550.Spec : Prop :=
  ∀ n, (P8847811909793226550.a n : ℤ) = A133535 (n + 1)

end A133535

/-! ## A133535.P1701089351819404365

`∑{p}[A033476(2*n+1), #²²]`
-/

namespace A133535.P1701089351819404365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p ^ 2) ^ 2

end

end A133535.P1701089351819404365

namespace A133535

/-- `∑{p}[A033476(2*n+1), #²²]` -/
def P1701089351819404365.Spec : Prop :=
  ∀ n, (P1701089351819404365.a n : ℤ) = A133535 (n + 1)

end A133535

/-!
# A133536: Sum of fifth powers of two consecutive primes.

The programs for A133536, the canonical program `A133536.P9524943263663054428` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133536 has offset 1).

The definition of A133536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133536.P9524943263663054428

`A050997(n+1)+A050997(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A133536

/-- `A050997(n+1)+A050997(n+2)` -/
def P9524943263663054428.Spec : Prop :=
  ∀ n, P9524943263663054428.a n = A133536 (n + 1)

theorem P9524943263663054428.correct : P9524943263663054428.Spec := by
  intro n
  simp only [A133536, Nat.add_sub_cancel]

end A133536

/-! ## A133536.P8571075623828546311

`abs(Δ[A273960(n+1)^5])`
-/

namespace A133536.P8571075623828546311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A133536.P8571075623828546311

namespace A133536

/-- `abs(Δ[A273960(n+1)^5])` -/
def P8571075623828546311.Spec : Prop :=
  ∀ n, P8571075623828546311.a n = A133536 (n + 1)

end A133536

/-! ## A133536.P15096598848852171015

`A133541(n+1)-A133532(n+3)`
-/

namespace A133536.P15096598848852171015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133541 (n + 1) - A133532 (n + 3)

end

end A133536.P15096598848852171015

namespace A133536

/-- `A133541(n+1)-A133532(n+3)` -/
def P15096598848852171015.Spec : Prop :=
  ∀ n, P15096598848852171015.a n = A133536 (n + 1)

theorem P15096598848852171015.correct : P15096598848852171015.Spec := by
  intro n
  simp only [A133536, Nat.add_sub_cancel, A133536.P15096598848852171015.a, A133536.P9524943263663054428.a, A050997, A050997.P5231147570234137425.a, A133532, A133532.P11489854846316048726.a, A133541, A133541.P18226434130076836402.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133527, A133527.P1112467787998249490.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133536

/-! ## A133536.P3810593100398942843

`∑{d}[A000040(n+1), A000040(A001222(#)+n+1)^5]`
-/

namespace A133536.P3810593100398942843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000040 (A001222 d + (n + 1 : ℤ)).toNat ^ 5

end

end A133536.P3810593100398942843

namespace A133536

/-- `∑{d}[A000040(n+1), A000040(A001222(#)+n+1)^5]` -/
def P3810593100398942843.Spec : Prop :=
  ∀ n, P3810593100398942843.a n = A133536 (n + 1)

end A133536

/-! ## A133536.P14362382536996372799

`A351193(A000040(n+2))+record[A351193(n+2)]`
-/

namespace A133536.P14362382536996372799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351193 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351193 (A000040 (n + 2)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133536.P14362382536996372799

namespace A133536

/-- `A351193(A000040(n+2))+record[A351193(n+2)]` -/
def P14362382536996372799.Spec : Prop :=
  ∀ n, P14362382536996372799.a n = A133536 (n + 1)

end A133536

/-! ## A133536.P13939110522348529231

`∑{p}[A006094(n+1), #^5]`
-/

namespace A133536.P13939110522348529231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 5

end

end A133536.P13939110522348529231

namespace A133536

/-- `∑{p}[A006094(n+1), #^5]` -/
def P13939110522348529231.Spec : Prop :=
  ∀ n, (P13939110522348529231.a n : ℤ) = A133536 (n + 1)

end A133536

/-!
# A133537: Sum of sixth powers of two consecutive primes.

The programs for A133537, the canonical program `A133537.P14407544762296117018` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133537 has offset 1).

The definition of A133537 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133537.P14407544762296117018

`A030516(n+1)+A030516(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A133537

/-- `A030516(n+1)+A030516(n+2)` -/
def P14407544762296117018.Spec : Prop :=
  ∀ n, P14407544762296117018.a n = A133537 (n + 1)

theorem P14407544762296117018.correct : P14407544762296117018.Spec := by
  intro n
  simp only [A133537, Nat.add_sub_cancel]

end A133537

/-! ## A133537.P5107991358777255969

`A133542(n+1)-A133533(n+3)`
-/

namespace A133537.P5107991358777255969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133542 (n + 1) - A133533 (n + 3)

end

end A133537.P5107991358777255969

namespace A133537

/-- `A133542(n+1)-A133533(n+3)` -/
def P5107991358777255969.Spec : Prop :=
  ∀ n, P5107991358777255969.a n = A133537 (n + 1)

theorem P5107991358777255969.correct : P5107991358777255969.Spec := by
  intro n
  simp only [A133537, Nat.add_sub_cancel, A133537.P5107991358777255969.a, A133537.P14407544762296117018.a, A030516, A030516.P1711246340231228216.a, A133533, A133533.P6140301617002194535.a, A133542, A133542.P11638819903937518053.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133528, A133528.P15802330686603295123.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133537

/-! ## A133537.P14335808140693623874

`A001014(A065091(n+1))+Δ[A242188(n)]²`
-/

namespace A133537.P14335808140693623874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242188 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A065091 (n + 1)).toNat + (f1 (n + 1) - f1 n) ^ 2

end

end A133537.P14335808140693623874

namespace A133537

/-- `A001014(A065091(n+1))+Δ[A242188(n)]²` -/
def P14335808140693623874.Spec : Prop :=
  ∀ n, P14335808140693623874.a n = A133537 (n + 1)

end A133537

/-! ## A133537.P6112419013386776992

`A001014(A065091(n+1))+sqrt(A030631(n+1))`
-/

namespace A133537.P6112419013386776992
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001014 (A065091 (n + 1)).toNat : ℝ) + Real.sqrt (A030631 (n + 1) : ℝ)

end

end A133537.P6112419013386776992

namespace A133537

/-- `A001014(A065091(n+1))+sqrt(A030631(n+1))` -/
def P6112419013386776992.Spec : Prop :=
  ∀ n, P6112419013386776992.a n = (A133537 (n + 1) : ℝ)

end A133537

/-! ## A133537.P8334107694694446930

`A001014(A065091(n+1))+Δ[A007504(n)]^6`
-/

namespace A133537.P8334107694694446930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A065091 (n + 1)).toNat + (f1 (n + 1) - f1 n) ^ 6

end

end A133537.P8334107694694446930

namespace A133537

/-- `A001014(A065091(n+1))+Δ[A007504(n)]^6` -/
def P8334107694694446930.Spec : Prop :=
  ∀ n, P8334107694694446930.a n = A133537 (n + 1)

end A133537

/-! ## A133537.P6577754755315703036

`A001014(A065091(n+1))+Δ[A008348(n)]^6`
-/

namespace A133537.P6577754755315703036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A065091 (n + 1)).toNat + (f1 (n + 1) - f1 n) ^ 6

end

end A133537.P6577754755315703036

namespace A133537

/-- `A001014(A065091(n+1))+Δ[A008348(n)]^6` -/
def P6577754755315703036.Spec : Prop :=
  ∀ n, P6577754755315703036.a n = A133537 (n + 1)

end A133537

/-! ## A133537.P17242942958690752616

`A001014(A065091(n+1))+Δ[A022837(n)]^6`
-/

namespace A133537.P17242942958690752616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A065091 (n + 1)).toNat + (f1 (n + 1) - f1 n) ^ 6

end

end A133537.P17242942958690752616

namespace A133537

/-- `A001014(A065091(n+1))+Δ[A022837(n)]^6` -/
def P17242942958690752616.Spec : Prop :=
  ∀ n, P17242942958690752616.a n = A133537 (n + 1)

end A133537

/-! ## A133537.P18018958263171020220

`A001014(A065091(n+1))+A001248(n+1)^3`
-/

namespace A133537.P18018958263171020220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A065091 (n + 1)).toNat + A001248 (n + 1) ^ 3

end

end A133537.P18018958263171020220

namespace A133537

/-- `A001014(A065091(n+1))+A001248(n+1)^3` -/
def P18018958263171020220.Spec : Prop :=
  ∀ n, P18018958263171020220.a n = A133537 (n + 1)

end A133537

/-! ## A133537.P18122055783009690704

`A001014(A065091(n+1))+(A172190(n+1)/2)²`
-/

namespace A133537.P18122055783009690704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001014 (A065091 (n + 1)).toNat : ℚ) + ((A172190 (n + 1) : ℚ) / 2) ^ 2

end

end A133537.P18122055783009690704

namespace A133537

/-- `A001014(A065091(n+1))+(A172190(n+1)/2)²` -/
def P18122055783009690704.Spec : Prop :=
  ∀ n, P18122055783009690704.a n = (A133537 (n + 1) : ℚ)

end A133537

/-! ## A133537.P3438129146094435173

`A001014(A065091(n+1))+sqrt(A030514(n+1)^3)`
-/

namespace A133537.P3438129146094435173
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001014 (A065091 (n + 1)).toNat : ℝ) + Real.sqrt (A030514 (n + 1) ^ 3 : ℝ)

end

end A133537.P3438129146094435173

namespace A133537

/-- `A001014(A065091(n+1))+sqrt(A030514(n+1)^3)` -/
def P3438129146094435173.Spec : Prop :=
  ∀ n, P3438129146094435173.a n = (A133537 (n + 1) : ℝ)

end A133537

/-! ## A133537.P18046524064117952130

`A001014(A000040(n+1))+A001014(A065091(n+1))`
-/

namespace A133537.P18046524064117952130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 (A000040 (n + 1)).toNat + A001014 (A065091 (n + 1)).toNat

end

end A133537.P18046524064117952130

namespace A133537

/-- `A001014(A000040(n+1))+A001014(A065091(n+1))` -/
def P18046524064117952130.Spec : Prop :=
  ∀ n, P18046524064117952130.a n = A133537 (n + 1)

end A133537

/-! ## A133537.P15839055490759097810

`∑{p}[A116570(2*n), #^6]`
-/

namespace A133537.P15839055490759097810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p ^ 6

end

end A133537.P15839055490759097810

namespace A133537

/-- `∑{p}[A116570(2*n), #^6]` -/
def P15839055490759097810.Spec : Prop :=
  ∀ n, (P15839055490759097810.a n : ℤ) = A133537 (n + 1)

end A133537

/-! ## A133537.P9665857758427783841

`∑{p}[A006094(n+1), (#^3)²]`
-/

namespace A133537.P9665857758427783841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (p ^ 3) ^ 2

end

end A133537.P9665857758427783841

namespace A133537

/-- `∑{p}[A006094(n+1), (#^3)²]` -/
def P9665857758427783841.Spec : Prop :=
  ∀ n, (P9665857758427783841.a n : ℤ) = A133537 (n + 1)

end A133537

/-! ## A133537.P13527599050268455342

`∑{p}[A033476(2*n+1), A001014(#)]`
-/

namespace A133537.P13527599050268455342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001014 p

end

end A133537.P13527599050268455342

namespace A133537

/-- `∑{p}[A033476(2*n+1), A001014(#)]` -/
def P13527599050268455342.Spec : Prop :=
  ∀ n, P13527599050268455342.a n = A133537 (n + 1)

end A133537

/-!
# A133538: Sum of seventh powers of two consecutive primes.

The programs for A133538, the canonical program `A133538.P15090665572470538733` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133538 has offset 1).

The definition of A133538 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133538.P15090665572470538733

`A092759(n+1)+A092759(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A133538

/-- `A092759(n+1)+A092759(n+2)` -/
def P15090665572470538733.Spec : Prop :=
  ∀ n, P15090665572470538733.a n = A133538 (n + 1)

theorem P15090665572470538733.correct : P15090665572470538733.Spec := by
  intro n
  simp only [A133538, Nat.add_sub_cancel]

end A133538

/-! ## A133538.P10899909839550709704

`A000040(n+1)^7+A000040(n+2)^7`
-/

namespace A133538.P10899909839550709704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 7 + A000040 (n + 2) ^ 7

end

end A133538.P10899909839550709704

namespace A133538

/-- `A000040(n+1)^7+A000040(n+2)^7` -/
def P10899909839550709704.Spec : Prop :=
  ∀ n, P10899909839550709704.a n = A133538 (n + 1)

end A133538

/-! ## A133538.P17137675574492377754

`A092759(n+1)+A086874(n+1)`
-/

namespace A133538.P17137675574492377754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092759 (n + 1) + A086874 (n + 1)

end

end A133538.P17137675574492377754

namespace A133538

/-- `A092759(n+1)+A086874(n+1)` -/
def P17137675574492377754.Spec : Prop :=
  ∀ n, P17137675574492377754.a n = A133538 (n + 1)

end A133538

/-! ## A133538.P11115491966724182798

`abs(Δ[A273960(n+1)^7])`
-/

namespace A133538.P11115491966724182798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) ^ 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A133538.P11115491966724182798

namespace A133538

/-- `abs(Δ[A273960(n+1)^7])` -/
def P11115491966724182798.Spec : Prop :=
  ∀ n, P11115491966724182798.a n = A133538 (n + 1)

end A133538

/-! ## A133538.P11655677172317864568

`A001015(A000040(n+1))+A001015(A065091(n+1))`
-/

namespace A133538.P11655677172317864568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001015 (A000040 (n + 1)).toNat + A001015 (A065091 (n + 1)).toNat

end

end A133538.P11655677172317864568

namespace A133538

/-- `A001015(A000040(n+1))+A001015(A065091(n+1))` -/
def P11655677172317864568.Spec : Prop :=
  ∀ n, P11655677172317864568.a n = A133538 (n + 1)

end A133538

/-! ## A133538.P715345227985831782

`record[∑{p}[A116570(n), A001015(#)]]`
-/

namespace A133538.P715345227985831782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, A001015 p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133538.P715345227985831782

namespace A133538

/-- `record[∑{p}[A116570(n), A001015(#)]]` -/
def P715345227985831782.Spec : Prop :=
  ∀ n, P715345227985831782.a n = A133538 (n + 1)

end A133538

/-! ## A133538.P10454767469273968994

`∑{p}[A006094(n+1), A001015(#)]`
-/

namespace A133538.P10454767469273968994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001015 p

end

end A133538.P10454767469273968994

namespace A133538

/-- `∑{p}[A006094(n+1), A001015(#)]` -/
def P10454767469273968994.Spec : Prop :=
  ∀ n, P10454767469273968994.a n = A133538 (n + 1)

end A133538

/-! ## A133538.P5778121244384946953

`∑{p}[A116570(2*n), A001015(#)]`
-/

namespace A133538.P5778121244384946953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001015 p

end

end A133538.P5778121244384946953

namespace A133538

/-- `∑{p}[A116570(2*n), A001015(#)]` -/
def P5778121244384946953.Spec : Prop :=
  ∀ n, P5778121244384946953.a n = A133538 (n + 1)

end A133538

/-!
# A133539: Sum of third powers of five consecutive primes.

The programs for A133539, the canonical program `A133539.P3067376241285040569` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133539 has offset 1).

The definition of A133539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133539.P3067376241285040569

`A133525(n+1)+A030078(n+5)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A133539

/-- `A133525(n+1)+A030078(n+5)` -/
def P3067376241285040569.Spec : Prop :=
  ∀ n, P3067376241285040569.a n = A133539 (n + 1)

theorem P3067376241285040569.correct : P3067376241285040569.Spec := by
  intro n
  simp only [A133539, Nat.add_sub_cancel]

end A133539

/-! ## A133539.P11854276895993434011

`A133525(n+2)+A000040(n+1)^3`
-/

namespace A133539.P11854276895993434011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133525 (n + 2) + A000040 (n + 1) ^ 3

end

end A133539.P11854276895993434011

namespace A133539

/-- `A133525(n+2)+A000040(n+1)^3` -/
def P11854276895993434011.Spec : Prop :=
  ∀ n, P11854276895993434011.a n = A133539 (n + 1)

theorem P11854276895993434011.correct : P11854276895993434011.Spec := by
  intro n
  simp only [A133539, Nat.add_sub_cancel, A133539.P11854276895993434011.a, A133539.P3067376241285040569.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, A133525, A133525.P8571172351566193877.a, A133530, A133530.P664862353928632633.a, A133534, A133534.P8927698302002784896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133539

/-! ## A133539.P14158529841535359116

`A133525(n+2)+sqrt(A001248(n+1)^3)`
-/

namespace A133539.P14158529841535359116
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A133525 (n + 2) : ℝ) + Real.sqrt (A001248 (n + 1) ^ 3 : ℝ)

end

end A133539.P14158529841535359116

namespace A133539

/-- `A133525(n+2)+sqrt(A001248(n+1)^3)` -/
def P14158529841535359116.Spec : Prop :=
  ∀ n, P14158529841535359116.a n = (A133539 (n + 1) : ℝ)

end A133539

/-! ## A133539.P1757004999252957731

`A133525(n+2)+(A006093(n+1)+1)^3`
-/

namespace A133539.P1757004999252957731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133525 (n + 2) + (A006093 (n + 1) + 1) ^ 3

end

end A133539.P1757004999252957731

namespace A133539

/-- `A133525(n+2)+(A006093(n+1)+1)^3` -/
def P1757004999252957731.Spec : Prop :=
  ∀ n, P1757004999252957731.a n = A133539 (n + 1)

theorem P1757004999252957731.correct : P1757004999252957731.Spec := by
  intro n
  simp only [A133539, Nat.add_sub_cancel, A133539.P1757004999252957731.a, A133539.P3067376241285040569.a, A006093, A006093.P2906174024863549003.a, A030078, A030078.P13819432151207990454.a, A133525, A133525.P8571172351566193877.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133530, A133530.P664862353928632633.a, A133534, A133534.P8927698302002784896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133539

/-! ## A133539.P2919269938614135819

`A133525(n+2)+(A001748(n+1)/3)^3`
-/

namespace A133539.P2919269938614135819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133525 (n + 2) : ℚ) + ((A001748 (n + 1) : ℚ) / 3) ^ 3

end

end A133539.P2919269938614135819

namespace A133539

/-- `A133525(n+2)+(A001748(n+1)/3)^3` -/
def P2919269938614135819.Spec : Prop :=
  ∀ n, P2919269938614135819.a n = (A133539 (n + 1) : ℚ)

theorem P2919269938614135819.correct : P2919269938614135819.Spec := by
  intro n
  simp only [A133539, Nat.add_sub_cancel, A133539.P2919269938614135819.a, A133539.P3067376241285040569.a, A001748, A001748.P16019639290970068825.a, A030078, A030078.P13819432151207990454.a, A133525, A133525.P8571172351566193877.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133530, A133530.P664862353928632633.a, A133534, A133534.P8927698302002784896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133539

/-! ## A133539.P14146208365803659261

`A133525(n+1)+A133525(n+2)-A133530(n+2)`
-/

namespace A133539.P14146208365803659261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133525 (n + 1) + (A133525 (n + 2) - A133530 (n + 2))

end

end A133539.P14146208365803659261

namespace A133539

/-- `A133525(n+1)+A133525(n+2)-A133530(n+2)` -/
def P14146208365803659261.Spec : Prop :=
  ∀ n, P14146208365803659261.a n = A133539 (n + 1)

theorem P14146208365803659261.correct : P14146208365803659261.Spec := by
  intro n
  simp only [A133539, Nat.add_sub_cancel, A133539.P14146208365803659261.a, A133539.P3067376241285040569.a, A030078, A030078.P13819432151207990454.a, A133525, A133525.P8571172351566193877.a, A133530, A133530.P664862353928632633.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133534, A133534.P8927698302002784896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133539

/-! ## A133539.P11484204878385031076

`A133534(n+1)+A133530(n+3)`
-/

namespace A133539.P11484204878385031076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133534 (n + 1) + A133530 (n + 3)

end

end A133539.P11484204878385031076

namespace A133539

/-- `A133534(n+1)+A133530(n+3)` -/
def P11484204878385031076.Spec : Prop :=
  ∀ n, P11484204878385031076.a n = A133539 (n + 1)

theorem P11484204878385031076.correct : P11484204878385031076.Spec := by
  intro n
  simp only [A133539, Nat.add_sub_cancel, A133539.P11484204878385031076.a, A133539.P3067376241285040569.a, A030078, A030078.P13819432151207990454.a, A133525, A133525.P8571172351566193877.a, A133530, A133530.P664862353928632633.a, A133534, A133534.P8927698302002784896.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133539

/-! ## A133539.P14970426070947502381

`A000040(n+1)^3+A000040(n+2)^3+A000040(n+3)^3+A000040(n+4)^3+A000040(n+5)^3`
-/

namespace A133539.P14970426070947502381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 3 + A000040 (n + 2) ^ 3 + A000040 (n + 3) ^ 3 + A000040 (n + 4) ^ 3 + A000040 (n + 5) ^ 3

end

end A133539.P14970426070947502381

namespace A133539

/-- `A000040(n+1)^3+A000040(n+2)^3+A000040(n+3)^3+A000040(n+4)^3+A000040(n+5)^3` -/
def P14970426070947502381.Spec : Prop :=
  ∀ n, P14970426070947502381.a n = A133539 (n + 1)

end A133539

/-! ## A133539.P10729095339515376544

`A133525(n+1)+A000578(A120533(n+1))`
-/

namespace A133539.P10729095339515376544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133525 (n + 1) + A000578 (A120533 (n + 1)).toNat

end

end A133539.P10729095339515376544

namespace A133539

/-- `A133525(n+1)+A000578(A120533(n+1))` -/
def P10729095339515376544.Spec : Prop :=
  ∀ n, P10729095339515376544.a n = A133539 (n + 1)

end A133539

/-!
# A133540: Sum of fourth powers of five consecutive primes.

The programs for A133540, the canonical program `A133540.P13751763277394668418` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133540 has offset 1).

The definition of A133540 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133540.P13751763277394668418

`A133526(n+1)+A030514(n+5)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A133540

/-- `A133526(n+1)+A030514(n+5)` -/
def P13751763277394668418.Spec : Prop :=
  ∀ n, P13751763277394668418.a n = A133540 (n + 1)

theorem P13751763277394668418.correct : P13751763277394668418.Spec := by
  intro n
  simp only [A133540, Nat.add_sub_cancel]

end A133540

/-! ## A133540.P9459622559350491169

`A133526(n+1)+A133526(n+2)-A133531(n+2)`
-/

namespace A133540.P9459622559350491169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133526 (n + 1) + (A133526 (n + 2) - A133531 (n + 2))

end

end A133540.P9459622559350491169

namespace A133540

/-- `A133526(n+1)+A133526(n+2)-A133531(n+2)` -/
def P9459622559350491169.Spec : Prop :=
  ∀ n, P9459622559350491169.a n = A133540 (n + 1)

theorem P9459622559350491169.correct : P9459622559350491169.Spec := by
  intro n
  simp only [A133540, Nat.add_sub_cancel, A133540.P9459622559350491169.a, A133540.P13751763277394668418.a, A030514, A030514.P11974636125371552077.a, A133526, A133526.P8358073913299201745.a, A133531, A133531.P4606246075334968653.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133535, A133535.P17160611315986516138.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133540

/-! ## A133540.P15437094099143556921

`A133535(n+1)+A133531(n+3)`
-/

namespace A133540.P15437094099143556921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133535 (n + 1) + A133531 (n + 3)

end

end A133540.P15437094099143556921

namespace A133540

/-- `A133535(n+1)+A133531(n+3)` -/
def P15437094099143556921.Spec : Prop :=
  ∀ n, P15437094099143556921.a n = A133540 (n + 1)

theorem P15437094099143556921.correct : P15437094099143556921.Spec := by
  intro n
  simp only [A133540, Nat.add_sub_cancel, A133540.P15437094099143556921.a, A133540.P13751763277394668418.a, A030514, A030514.P11974636125371552077.a, A133526, A133526.P8358073913299201745.a, A133531, A133531.P4606246075334968653.a, A133535, A133535.P17160611315986516138.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133540

/-! ## A133540.P12200438156741874532

`A133535(A020705(n))+A133535(n+2)+A030514(n+1)`
-/

namespace A133540.P12200438156741874532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133535 (A020705 n).toNat + (A133535 (n + 2) + A030514 (n + 1))

end

end A133540.P12200438156741874532

namespace A133540

/-- `A133535(A020705(n))+A133535(n+2)+A030514(n+1)` -/
def P12200438156741874532.Spec : Prop :=
  ∀ n, P12200438156741874532.a n = A133540 (n + 1)

end A133540

/-! ## A133540.P13299971253240189092

`A030514(A020710(n))+A133531(n+2)+A030514(n+1)`
-/

namespace A133540.P13299971253240189092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (A020710 n).toNat + (A133531 (n + 2) + A030514 (n + 1))

end

end A133540.P13299971253240189092

namespace A133540

/-- `A030514(A020710(n))+A133531(n+2)+A030514(n+1)` -/
def P13299971253240189092.Spec : Prop :=
  ∀ n, P13299971253240189092.a n = A133540 (n + 1)

end A133540

/-! ## A133540.P17256634739484968593

`A133526(n+1)+A000583(A120533(n+1))`
-/

namespace A133540.P17256634739484968593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133526 (n + 1) + A000583 (A120533 (n + 1)).toNat

end

end A133540.P17256634739484968593

namespace A133540

/-- `A133526(n+1)+A000583(A120533(n+1))` -/
def P17256634739484968593.Spec : Prop :=
  ∀ n, P17256634739484968593.a n = A133540 (n + 1)

end A133540

/-! ## A133540.P4842078745092402659

`A000583(A120533(n+1))+A133531(n+2)+A030514(n+1)`
-/

namespace A133540.P4842078745092402659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 (A120533 (n + 1)).toNat + (A133531 (n + 2) + A030514 (n + 1))

end

end A133540.P4842078745092402659

namespace A133540

/-- `A000583(A120533(n+1))+A133531(n+2)+A030514(n+1)` -/
def P4842078745092402659.Spec : Prop :=
  ∀ n, P4842078745092402659.a n = A133540 (n + 1)

end A133540

/-!
# A133541: Sum of fifth powers of five consecutive primes.

The programs for A133541, the canonical program `A133541.P18226434130076836402` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133541 has offset 1).

The definition of A133541 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133541.P18226434130076836402

`A133527(n+1)+A050997(n+5)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A133541

/-- `A133527(n+1)+A050997(n+5)` -/
def P18226434130076836402.Spec : Prop :=
  ∀ n, P18226434130076836402.a n = A133541 (n + 1)

theorem P18226434130076836402.correct : P18226434130076836402.Spec := by
  intro n
  simp only [A133541, Nat.add_sub_cancel]

end A133541

/-! ## A133541.P1075851344310651232

`A133527(n+1)+A133527(n+2)-A133532(n+2)`
-/

namespace A133541.P1075851344310651232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133527 (n + 1) + (A133527 (n + 2) - A133532 (n + 2))

end

end A133541.P1075851344310651232

namespace A133541

/-- `A133527(n+1)+A133527(n+2)-A133532(n+2)` -/
def P1075851344310651232.Spec : Prop :=
  ∀ n, P1075851344310651232.a n = A133541 (n + 1)

theorem P1075851344310651232.correct : P1075851344310651232.Spec := by
  intro n
  simp only [A133541, Nat.add_sub_cancel, A133541.P1075851344310651232.a, A133541.P18226434130076836402.a, A050997, A050997.P5231147570234137425.a, A133527, A133527.P1112467787998249490.a, A133532, A133532.P11489854846316048726.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133536, A133536.P9524943263663054428.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133541

/-! ## A133541.P2733673229980659645

`A133536(n+1)+A133532(n+3)`
-/

namespace A133541.P2733673229980659645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133536 (n + 1) + A133532 (n + 3)

end

end A133541.P2733673229980659645

namespace A133541

/-- `A133536(n+1)+A133532(n+3)` -/
def P2733673229980659645.Spec : Prop :=
  ∀ n, P2733673229980659645.a n = A133541 (n + 1)

theorem P2733673229980659645.correct : P2733673229980659645.Spec := by
  intro n
  simp only [A133541, Nat.add_sub_cancel, A133541.P2733673229980659645.a, A133541.P18226434130076836402.a, A050997, A050997.P5231147570234137425.a, A133527, A133527.P1112467787998249490.a, A133532, A133532.P11489854846316048726.a, A133536, A133536.P9524943263663054428.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133541

/-! ## A133541.P16900690397331127735

`A133536(A020705(n))+A133536(n+2)+A050997(n+1)`
-/

namespace A133541.P16900690397331127735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133536 (A020705 n).toNat + (A133536 (n + 2) + A050997 (n + 1))

end

end A133541.P16900690397331127735

namespace A133541

/-- `A133536(A020705(n))+A133536(n+2)+A050997(n+1)` -/
def P16900690397331127735.Spec : Prop :=
  ∀ n, P16900690397331127735.a n = A133541 (n + 1)

end A133541

/-! ## A133541.P3442489056059031947

`A050997(A020710(n))+A133536(n+1)+A133536(n+3)`
-/

namespace A133541.P3442489056059031947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (A020710 n).toNat + (A133536 (n + 1) + A133536 (n + 3))

end

end A133541.P3442489056059031947

namespace A133541

/-- `A050997(A020710(n))+A133536(n+1)+A133536(n+3)` -/
def P3442489056059031947.Spec : Prop :=
  ∀ n, P3442489056059031947.a n = A133541 (n + 1)

end A133541

/-! ## A133541.P10453333612221367308

`A351193(A120533(n+1))+A133527(n+1)`
-/

namespace A133541.P10453333612221367308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351193 (A120533 (n + 1)).toNat + A133527 (n + 1)

end

end A133541.P10453333612221367308

namespace A133541

/-- `A351193(A120533(n+1))+A133527(n+1)` -/
def P10453333612221367308.Spec : Prop :=
  ∀ n, P10453333612221367308.a n = A133541 (n + 1)

end A133541

/-!
# A133542: Sum of sixth powers of five consecutive primes.

The programs for A133542, the canonical program `A133542.P11638819903937518053` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133542 has offset 1).

The definition of A133542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133542.P11638819903937518053

`A133528(n+1)+A030516(n+5)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A133542

/-- `A133528(n+1)+A030516(n+5)` -/
def P11638819903937518053.Spec : Prop :=
  ∀ n, P11638819903937518053.a n = A133542 (n + 1)

theorem P11638819903937518053.correct : P11638819903937518053.Spec := by
  intro n
  simp only [A133542, Nat.add_sub_cancel]

end A133542

/-! ## A133542.P7801823920080624749

`A133528(n+2)+A030078(n+1)²`
-/

namespace A133542.P7801823920080624749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133528 (n + 2) + A030078 (n + 1) ^ 2

end

end A133542.P7801823920080624749

namespace A133542

/-- `A133528(n+2)+A030078(n+1)²` -/
def P7801823920080624749.Spec : Prop :=
  ∀ n, P7801823920080624749.a n = A133542 (n + 1)

theorem P7801823920080624749.correct : P7801823920080624749.Spec := by
  intro n
  simp only [A133542, Nat.add_sub_cancel, A133542.P7801823920080624749.a, A133542.P11638819903937518053.a, A030078, A030078.P13819432151207990454.a, A030516, A030516.P1711246340231228216.a, A133528, A133528.P15802330686603295123.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133533, A133533.P6140301617002194535.a, A133537, A133537.P14407544762296117018.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133542

/-! ## A133542.P7520785671600805099

`A133528(n+1)+A133528(n+2)-A133533(n+2)`
-/

namespace A133542.P7520785671600805099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133528 (n + 1) + (A133528 (n + 2) - A133533 (n + 2))

end

end A133542.P7520785671600805099

namespace A133542

/-- `A133528(n+1)+A133528(n+2)-A133533(n+2)` -/
def P7520785671600805099.Spec : Prop :=
  ∀ n, P7520785671600805099.a n = A133542 (n + 1)

theorem P7520785671600805099.correct : P7520785671600805099.Spec := by
  intro n
  simp only [A133542, Nat.add_sub_cancel, A133542.P7520785671600805099.a, A133542.P11638819903937518053.a, A030516, A030516.P1711246340231228216.a, A133528, A133528.P15802330686603295123.a, A133533, A133533.P6140301617002194535.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133537, A133537.P14407544762296117018.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133542

/-! ## A133542.P10913028194574843521

`A133537(n+1)+A133533(n+3)`
-/

namespace A133542.P10913028194574843521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133537 (n + 1) + A133533 (n + 3)

end

end A133542.P10913028194574843521

namespace A133542

/-- `A133537(n+1)+A133533(n+3)` -/
def P10913028194574843521.Spec : Prop :=
  ∀ n, P10913028194574843521.a n = A133542 (n + 1)

theorem P10913028194574843521.correct : P10913028194574843521.Spec := by
  intro n
  simp only [A133542, Nat.add_sub_cancel, A133542.P10913028194574843521.a, A133542.P11638819903937518053.a, A030516, A030516.P1711246340231228216.a, A133528, A133528.P15802330686603295123.a, A133533, A133533.P6140301617002194535.a, A133537, A133537.P14407544762296117018.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133542

/-! ## A133542.P3025640879028421244

`A133537(A020705(n))+A133537(n+2)+A030516(n+1)`
-/

namespace A133542.P3025640879028421244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133537 (A020705 n).toNat + (A133537 (n + 2) + A030516 (n + 1))

end

end A133542.P3025640879028421244

namespace A133542

/-- `A133537(A020705(n))+A133537(n+2)+A030516(n+1)` -/
def P3025640879028421244.Spec : Prop :=
  ∀ n, P3025640879028421244.a n = A133542 (n + 1)

end A133542

/-!
# A133544: A007318 * A052474.

The programs for A133544, there is no canonical definition to state claims against.
-/

/-! ## A133544.P14434539728922244640

`A007318(n)*A052474(A002260(n+1))`
-/

namespace A133544.P14434539728922244640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A052474 (A002260 (n + 1)).toNat

end

end A133544.P14434539728922244640

/-! ## A133544.P5352290291652708636

`sqrt(A008459(n))*A052474(A002260(n+1))`
-/

namespace A133544.P5352290291652708636
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A052474 (A002260 (n + 1)).toNat : ℝ)

end

end A133544.P5352290291652708636

/-! ## A133544.P14995281434077884514

`Δ[A102363(n)]*A052474(A002260(n+1))`
-/

namespace A133544.P14995281434077884514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A052474 (A002260 (n + 1)).toNat

end

end A133544.P14995281434077884514

/-! ## A133544.P4587220501079133200

`(A014473(n)+1)*A052474(A002260(n+1))`
-/

namespace A133544.P4587220501079133200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A052474 (A002260 (n + 1)).toNat

end

end A133544.P4587220501079133200

/-! ## A133544.P1985328067694589122

`A094438(n)-A138781(A008459(n))`
-/

namespace A133544.P1985328067694589122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094438 n - A138781 (A008459 n).toNat

end

end A133544.P1985328067694589122

/-!
# A133545: (A000012 * A007318 - A007318 * A000012) - A000012.

The programs for A133545, the canonical program `A133545.P7259488329024112066` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133545 has offset 1).

The definition of A133545 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133545.P7259488329024112066

`A131415(n)+A014473(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A133545

/-- `A131415(n)+A014473(n)` -/
def P7259488329024112066.Spec : Prop :=
  ∀ n, P7259488329024112066.a n = A133545 (n + 1)

theorem P7259488329024112066.correct : P7259488329024112066.Spec := by
  intro n
  simp only [A133545, Nat.add_sub_cancel]

end A133545

/-! ## A133545.P1534402124101351866

`A055248(n)+∑[A214292(n)]`
-/

namespace A133545.P1534402124101351866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133545.P1534402124101351866

namespace A133545

/-- `A055248(n)+∑[A214292(n)]` -/
def P1534402124101351866.Spec : Prop :=
  ∀ n, P1534402124101351866.a n = A133545 (n + 1)

end A133545

/-! ## A133545.P17854138569080980646

`A007318(n)+A131415(n)-1`
-/

namespace A133545.P17854138569080980646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A131415 n - 1)

end

end A133545.P17854138569080980646

namespace A133545

/-- `A007318(n)+A131415(n)-1` -/
def P17854138569080980646.Spec : Prop :=
  ∀ n, P17854138569080980646.a n = A133545 (n + 1)

theorem P17854138569080980646.correct : P17854138569080980646.Spec := by
  intro n
  simp only [A133545, Nat.add_sub_cancel, A133545.P17854138569080980646.a, A133545.P7259488329024112066.a, A007318, A007318.P11755526479805562006.a, A014473, A014473.P9301799580602651200.a, A131415, A131415.P7466821744159895081.a, A051597, A051597.P4383731425265306086.a, A055248, A055248.P3086643025084055619.a, A074909, A074909.P6402560185863182536.a, A014430, A014430.P2601729842851247134.a, A102363, A102363.P15098294147514921799.a, A140513, A140513.P13579608035938851890.a, A137688, A137688.P9746695207037186753.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A133545

/-! ## A133545.P15959637917208969701

`A055248(n)+A135278(n)-1`
-/

namespace A133545.P15959637917208969701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n + (A135278 n - 1)

end

end A133545.P15959637917208969701

namespace A133545

/-- `A055248(n)+A135278(n)-1` -/
def P15959637917208969701.Spec : Prop :=
  ∀ n, P15959637917208969701.a n = A133545 (n + 1)

end A133545

/-! ## A133545.P1358215238884821126

`A130301(n+1)+A055248(n)-A130296(n+1)`
-/

namespace A133545.P1358215238884821126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130301 (n + 1) + (A055248 n - A130296 (n + 1))

end

end A133545.P1358215238884821126

namespace A133545

/-- `A130301(n+1)+A055248(n)-A130296(n+1)` -/
def P1358215238884821126.Spec : Prop :=
  ∀ n, P1358215238884821126.a n = A133545 (n + 1)

end A133545

/-! ## A133545.P14984602849539654661

`A055248(n)+A014473(A014132(n+1))`
-/

namespace A133545.P14984602849539654661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n + A014473 (A014132 (n + 1)).toNat

end

end A133545.P14984602849539654661

namespace A133545

/-- `A055248(n)+A014473(A014132(n+1))` -/
def P14984602849539654661.Spec : Prop :=
  ∀ n, P14984602849539654661.a n = A133545 (n + 1)

end A133545

/-! ## A133545.P785665193021250210

`A055248(n)+A014473(A003057(n+2)+n)`
-/

namespace A133545.P785665193021250210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n + A014473 (A003057 (n + 2) + (n : ℤ)).toNat

end

end A133545.P785665193021250210

namespace A133545

/-- `A055248(n)+A014473(A003057(n+2)+n)` -/
def P785665193021250210.Spec : Prop :=
  ∀ n, P785665193021250210.a n = A133545 (n + 1)

end A133545

/-! ## A133545.P7475237451394160548

`A131415(n)+A004524(A109128(n))`
-/

namespace A133545.P7475237451394160548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131415 n + A004524 (A109128 n).toNat

end

end A133545.P7475237451394160548

namespace A133545

/-- `A131415(n)+A004524(A109128(n))` -/
def P7475237451394160548.Spec : Prop :=
  ∀ n, P7475237451394160548.a n = A133545 (n + 1)

end A133545

/-! ## A133545.P16057969868261779033

`A055248(n)-A024000(A135278(n))`
-/

namespace A133545.P16057969868261779033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n - A024000 (A135278 n).toNat

end

end A133545.P16057969868261779033

namespace A133545

/-- `A055248(n)-A024000(A135278(n))` -/
def P16057969868261779033.Spec : Prop :=
  ∀ n, P16057969868261779033.a n = A133545 (n + 1)

end A133545

/-! ## A133545.P17060977334876009110

`A055248(n)+A028242(A131768(n))`
-/

namespace A133545.P17060977334876009110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 n + A028242 (A131768 n).toNat

end

end A133545.P17060977334876009110

namespace A133545

/-- `A055248(n)+A028242(A131768(n))` -/
def P17060977334876009110.Spec : Prop :=
  ∀ n, P17060977334876009110.a n = A133545 (n + 1)

end A133545

/-!
# A133546: Binomial transform of [1,3,5,6,7,8,9,10,11,...] (i.e., positive integers except 2 and 4).

The programs for A133546, the canonical program `A133546.P17243961254430793136` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133546 has offset 1).

The definition of A133546 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133546.P17243961254430793136

`ogf((1-2x+x^2-x^3)/(1-6x+13x^2-12x^3+4x^4))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133546

/-- `ogf((1-2x+x^2-x^3)/(1-6x+13x^2-12x^3+4x^4))` -/
def P17243961254430793136.Spec : Prop :=
  ∀ n, P17243961254430793136.a n = A133546 (n + 1)

theorem P17243961254430793136.correct : P17243961254430793136.Spec := by
  intro n
  simp only [A133546, Nat.add_sub_cancel]

end A133546

/-! ## A133546.P9390790951508058043

`∑[ogf((1-3x^2)/(1-4x+4x^2))]-n`
-/

namespace A133546.P9390790951508058043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -4, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A133546.P9390790951508058043

namespace A133546

/-- `∑[ogf((1-3x^2)/(1-4x+4x^2))]-n` -/
def P9390790951508058043.Spec : Prop :=
  ∀ n, P9390790951508058043.a n = A133546 (n + 1)

end A133546

/-! ## A133546.P7738650324483562279

`∑[∑[ogf((1-2x+x^2-x^3)/(1-4x+4x^2))]]`
-/

namespace A133546.P7738650324483562279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1, -1] [1, -4, 4] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133546.P7738650324483562279

namespace A133546

/-- `∑[∑[ogf((1-2x+x^2-x^3)/(1-4x+4x^2))]]` -/
def P7738650324483562279.Spec : Prop :=
  ∀ n, P7738650324483562279.a n = A133546 (n + 1)

end A133546

/-! ## A133546.P12951077968118815164

`(n/2+3)*2^n-(n+2)`
-/

namespace A133546.P12951077968118815164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 3) * (2 ^ n : ℚ) - (n + 2 : ℚ)

end

end A133546.P12951077968118815164

namespace A133546

/-- `(n/2+3)*2^n-(n+2)` -/
def P12951077968118815164.Spec : Prop :=
  ∀ n, P12951077968118815164.a n = (A133546 (n + 1) : ℚ)

end A133546

/-! ## A133546.P9136569791128566154

`∑[∑[A111297(n)]]`
-/

namespace A133546.P9136569791128566154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111297 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133546.P9136569791128566154

namespace A133546

/-- `∑[∑[A111297(n)]]` -/
def P9136569791128566154.Spec : Prop :=
  ∀ n, P9136569791128566154.a n = A133546 (n + 1)

end A133546

/-! ## A133546.P15936165423075387529

`record[A045891(n)-n]`
-/

namespace A133546.P15936165423075387529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045891 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133546.P15936165423075387529

namespace A133546

/-- `record[A045891(n)-n]` -/
def P15936165423075387529.Spec : Prop :=
  ∀ n, P15936165423075387529.a n = A133546 (n + 1)

end A133546

/-! ## A133546.P17297121620339711206

`record[∑[A034007(n)]-n]`
-/

namespace A133546.P17297121620339711206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133546.P17297121620339711206

namespace A133546

/-- `record[∑[A034007(n)]-n]` -/
def P17297121620339711206.Spec : Prop :=
  ∀ n, P17297121620339711206.a n = A133546 (n + 1)

end A133546

/-! ## A133546.P17531344988461147111

`∑[A109975(n+1)-1]`
-/

namespace A133546.P17531344988461147111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133546.P17531344988461147111

namespace A133546

/-- `∑[A109975(n+1)-1]` -/
def P17531344988461147111.Spec : Prop :=
  ∀ n, P17531344988461147111.a n = A133546 (n + 1)

end A133546

/-! ## A133546.P17025501966798032870

`∑[A034007(n+2)-1]`
-/

namespace A133546.P17025501966798032870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034007 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133546.P17025501966798032870

namespace A133546

/-- `∑[A034007(n+2)-1]` -/
def P17025501966798032870.Spec : Prop :=
  ∀ n, P17025501966798032870.a n = A133546 (n + 1)

end A133546

/-! ## A133546.P1217081571929044195

`∑[∑[A049610(n)+2^n]]`
-/

namespace A133546.P1217081571929044195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 n + (2 ^ n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133546.P1217081571929044195

namespace A133546

/-- `∑[∑[A049610(n)+2^n]]` -/
def P1217081571929044195.Spec : Prop :=
  ∀ n, P1217081571929044195.a n = A133546 (n + 1)

end A133546

/-! ## A133546.P17424340274721541240

`∑[A045623(n)+2^n-1]`
-/

namespace A133546.P17424340274721541240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n + ((2 ^ n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133546.P17424340274721541240

namespace A133546

/-- `∑[A045623(n)+2^n-1]` -/
def P17424340274721541240.Spec : Prop :=
  ∀ n, P17424340274721541240.a n = A133546 (n + 1)

end A133546

/-! ## A133546.P9484387143882059305

`∑[∑[A131577(n)+A045891(n)]]`
-/

namespace A133546.P9484387143882059305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A045891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133546.P9484387143882059305

namespace A133546

/-- `∑[∑[A131577(n)+A045891(n)]]` -/
def P9484387143882059305.Spec : Prop :=
  ∀ n, P9484387143882059305.a n = A133546 (n + 1)

end A133546

/-! ## A133546.P13092183218621811827

`∑[A000079(n)+A045623(n)-1]`
-/

namespace A133546.P13092183218621811827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A045623 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133546.P13092183218621811827

namespace A133546

/-- `∑[A000079(n)+A045623(n)-1]` -/
def P13092183218621811827.Spec : Prop :=
  ∀ n, P13092183218621811827.a n = A133546 (n + 1)

end A133546

/-!
# A133547: a(n) = sum of squares of first n odd primes.

The programs for A133547, the canonical program `A133547.P11212506623590984264` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133547 has offset 1).

The definition of A133547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133547.P11212506623590984264

`A024450(n+2)-4`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A133547

/-- `A024450(n+2)-4` -/
def P11212506623590984264.Spec : Prop :=
  ∀ n, P11212506623590984264.a n = A133547 (n + 1)

theorem P11212506623590984264.correct : P11212506623590984264.Spec := by
  intro n
  simp only [A133547, Nat.add_sub_cancel]

end A133547

/-! ## A133547.P7149585167596978241

`∑[p?[2*n+1]²]`
-/

namespace A133547.P7149585167596978241
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133547.P7149585167596978241

namespace A133547

/-- `∑[p?[2*n+1]²]` -/
def P7149585167596978241.Spec : Prop :=
  ∀ n, (P7149585167596978241.a n : ℤ) = A133547 (n + 1)

end A133547

/-! ## A133547.P15334930525620252715

`∑[p?[2*n+1]^2]`
-/

namespace A133547.P15334930525620252715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133547.P15334930525620252715

namespace A133547

/-- `∑[p?[2*n+1]^2]` -/
def P15334930525620252715.Spec : Prop :=
  ∀ n, (P15334930525620252715.a n : ℤ) = A133547 (n + 1)

end A133547

/-! ## A133547.P9329116093377141927

`∑[or(1, p?[n+1+n]²)]`
-/

namespace A133547.P9329116093377141927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133547.P9329116093377141927

namespace A133547

/-- `∑[or(1, p?[n+1+n]²)]` -/
def P9329116093377141927.Spec : Prop :=
  ∀ n, (P9329116093377141927.a n : ℤ) = A133547 (n + 1)

end A133547

/-! ## A133547.P6247661678464142282

`∑[∑{p}[p?[n+1+n], #²]]`
-/

namespace A133547.P6247661678464142282
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133547.P6247661678464142282

namespace A133547

/-- `∑[∑{p}[p?[n+1+n], #²]]` -/
def P6247661678464142282.Spec : Prop :=
  ∀ n, (P6247661678464142282.a n : ℤ) = A133547 (n + 1)

end A133547

/-! ## A133547.P16721086918817881130

`a(n-1)+p?[2*n+1]²` with `a(0)=9`
-/

namespace A133547.P16721086918817881130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 2

end

end A133547.P16721086918817881130

namespace A133547

/-- `a(n-1)+p?[2*n+1]²` -/
def P16721086918817881130.Spec : Prop :=
  ∀ n, (P16721086918817881130.a n : ℤ) = A133547 (n + 1)

end A133547

/-! ## A133547.P7060038415500017929

`∑[p?[2*n+1]*p?[2*n+1]]`
-/

namespace A133547.P7060038415500017929
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) * f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133547.P7060038415500017929

namespace A133547

/-- `∑[p?[2*n+1]*p?[2*n+1]]` -/
def P7060038415500017929.Spec : Prop :=
  ∀ n, (P7060038415500017929.a n : ℤ) = A133547 (n + 1)

end A133547

/-! ## A133547.P1936760155787383499

`∑[A065091(n+1)²]`
-/

namespace A133547.P1936760155787383499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133547.P1936760155787383499

namespace A133547

/-- `∑[A065091(n+1)²]` -/
def P1936760155787383499.Spec : Prop :=
  ∀ n, P1936760155787383499.a n = A133547 (n + 1)

end A133547

/-! ## A133547.P8365197690700787630

`∑[A001248(n+2)]`
-/

namespace A133547.P8365197690700787630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133547.P8365197690700787630

namespace A133547

/-- `∑[A001248(n+2)]` -/
def P8365197690700787630.Spec : Prop :=
  ∀ n, P8365197690700787630.a n = A133547 (n + 1)

end A133547

/-! ## A133547.P16323865255961639733

`∑[A000040(n+2)²]`
-/

namespace A133547.P16323865255961639733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133547.P16323865255961639733

namespace A133547

/-- `∑[A000040(n+2)²]` -/
def P16323865255961639733.Spec : Prop :=
  ∀ n, P16323865255961639733.a n = A133547 (n + 1)

end A133547

/-! ## A133547.P17849785349383414632

`∑[A006005(n+2)²]`
-/

namespace A133547.P17849785349383414632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133547.P17849785349383414632

namespace A133547

/-- `∑[A006005(n+2)²]` -/
def P17849785349383414632.Spec : Prop :=
  ∀ n, P17849785349383414632.a n = A133547 (n + 1)

end A133547

/-! ## A133547.P11950687667525570424

`∑[A073579(n+2)²]`
-/

namespace A133547.P11950687667525570424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073579 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133547.P11950687667525570424

namespace A133547

/-- `∑[A073579(n+2)²]` -/
def P11950687667525570424.Spec : Prop :=
  ∀ n, P11950687667525570424.a n = A133547 (n + 1)

end A133547

/-! ## A133547.P12700984971179257346

`∑[A273960(n+2)²]`
-/

namespace A133547.P12700984971179257346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133547.P12700984971179257346

namespace A133547

/-- `∑[A273960(n+2)²]` -/
def P12700984971179257346.Spec : Prop :=
  ∀ n, P12700984971179257346.a n = A133547 (n + 1)

end A133547

/-! ## A133547.P10926077621079079737

`∑[A280076(n+3)]`
-/

namespace A133547.P10926077621079079737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133547.P10926077621079079737

namespace A133547

/-- `∑[A280076(n+3)]` -/
def P10926077621079079737.Spec : Prop :=
  ∀ n, P10926077621079079737.a n = A133547 (n + 1)

end A133547

/-! ## A133547.P6089358758024263555

`A024525(n+2)-5`
-/

namespace A133547.P6089358758024263555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 (n + 2) - 5

end

end A133547.P6089358758024263555

namespace A133547

/-- `A024525(n+2)-5` -/
def P6089358758024263555.Spec : Prop :=
  ∀ n, P6089358758024263555.a n = A133547 (n + 1)

end A133547

/-! ## A133547.P7594707721360987800

`∑[record[p?[xor(1, n)]²]]`
-/

namespace A133547.P7594707721360987800
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133547.P7594707721360987800

namespace A133547

/-- `∑[record[p?[xor(1, n)]²]]` -/
def P7594707721360987800.Spec : Prop :=
  ∀ n, (P7594707721360987800.a n : ℤ) = A133547 (n + 1)

end A133547

/-! ## A133547.P18106181807283417540

`∑[p?[comp[n!]]²]`
-/

namespace A133547.P18106181807283417540
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133547.P18106181807283417540

namespace A133547

/-- `∑[p?[comp[n!]]²]` -/
def P18106181807283417540.Spec : Prop :=
  ∀ n, (P18106181807283417540.a n : ℤ) = A133547 (n + 1)

end A133547

/-! ## A133547.P889638542578481219

`∑[record[∑{p}[n+3, #²]]]`
-/

namespace A133547.P889638542578481219
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133547.P889638542578481219

namespace A133547

/-- `∑[record[∑{p}[n+3, #²]]]` -/
def P889638542578481219.Spec : Prop :=
  ∀ n, (P889638542578481219.a n : ℤ) = A133547 (n + 1)

end A133547

/-! ## A133547.P13215549337529505885

`∑[A338576(p?[2*n+1])]`
-/

namespace A133547.P13215549337529505885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338576 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133547.P13215549337529505885

namespace A133547

/-- `∑[A338576(p?[2*n+1])]` -/
def P13215549337529505885.Spec : Prop :=
  ∀ n, P13215549337529505885.a n = A133547 (n + 1)

end A133547

/-! ## A133547.P10755960104344342485

`∑[A327238(p?[2*n+1])]`
-/

namespace A133547.P10755960104344342485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327238 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133547.P10755960104344342485

namespace A133547

/-- `∑[A327238(p?[2*n+1])]` -/
def P10755960104344342485.Spec : Prop :=
  ∀ n, P10755960104344342485.a n = A133547 (n + 1)

end A133547

/-!
# A133548: a(n) = sum of cubes of first n odd primes.

The programs for A133548, the canonical program `A133548.P7794647710270492703` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133548 has offset 1).

The definition of A133548 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A098999, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133548.P7794647710270492703

`A098999(n+2)-8`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133548

/-- `A098999(n+2)-8` -/
def P7794647710270492703.Spec : Prop :=
  ∀ n, P7794647710270492703.a n = A133548 (n + 1)

theorem P7794647710270492703.correct : P7794647710270492703.Spec := by
  intro n
  simp only [A133548, Nat.add_sub_cancel]

end A133548

/-! ## A133548.P1590175216757732575

`∑[p?[2*n+1]^3]`
-/

namespace A133548.P1590175216757732575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133548.P1590175216757732575

namespace A133548

/-- `∑[p?[2*n+1]^3]` -/
def P1590175216757732575.Spec : Prop :=
  ∀ n, (P1590175216757732575.a n : ℤ) = A133548 (n + 1)

end A133548

/-! ## A133548.P13189645299297079957

`∑[p?[2*n+1]²*p?[2*n+1]]`
-/

namespace A133548.P13189645299297079957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2 * f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133548.P13189645299297079957

namespace A133548

/-- `∑[p?[2*n+1]²*p?[2*n+1]]` -/
def P13189645299297079957.Spec : Prop :=
  ∀ n, (P13189645299297079957.a n : ℤ) = A133548 (n + 1)

end A133548

/-! ## A133548.P15579424660269421236

`∑[A065091(n+1)^3]`
-/

namespace A133548.P15579424660269421236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133548.P15579424660269421236

namespace A133548

/-- `∑[A065091(n+1)^3]` -/
def P15579424660269421236.Spec : Prop :=
  ∀ n, P15579424660269421236.a n = A133548 (n + 1)

end A133548

/-! ## A133548.P17555230389069983341

`∑[A030078(n+2)]`
-/

namespace A133548.P17555230389069983341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133548.P17555230389069983341

namespace A133548

/-- `∑[A030078(n+2)]` -/
def P17555230389069983341.Spec : Prop :=
  ∀ n, P17555230389069983341.a n = A133548 (n + 1)

end A133548

/-! ## A133548.P9409652597049781211

`∑[sqrt(A030516(n+2))]`
-/

namespace A133548.P9409652597049781211
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030516 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133548.P9409652597049781211

namespace A133548

/-- `∑[sqrt(A030516(n+2))]` -/
def P9409652597049781211.Spec : Prop :=
  ∀ n, P9409652597049781211.a n = (A133548 (n + 1) : ℝ)

end A133548

/-! ## A133548.P17773061964915939355

`∑[A153481(n+2)+2]`
-/

namespace A133548.P17773061964915939355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153481 (n + 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133548.P17773061964915939355

namespace A133548

/-- `∑[A153481(n+2)+2]` -/
def P17773061964915939355.Spec : Prop :=
  ∀ n, P17773061964915939355.a n = A133548 (n + 1)

end A133548

/-! ## A133548.P5209470341947016146

`∑[A172190(n+2)/2]`
-/

namespace A133548.P5209470341947016146
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172190 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133548.P5209470341947016146

namespace A133548

/-- `∑[A172190(n+2)/2]` -/
def P5209470341947016146.Spec : Prop :=
  ∀ n, P5209470341947016146.a n = (A133548 (n + 1) : ℚ)

end A133548

/-! ## A133548.P2711849264429238889

`∑[A000040(n+2)^3]`
-/

namespace A133548.P2711849264429238889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133548.P2711849264429238889

namespace A133548

/-- `∑[A000040(n+2)^3]` -/
def P2711849264429238889.Spec : Prop :=
  ∀ n, P2711849264429238889.a n = A133548 (n + 1)

end A133548

/-! ## A133548.P10203593383537172055

`∑[sqrt(sqrt(A030631(n+2)))]`
-/

namespace A133548.P10203593383537172055
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A030631 (n + 2) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133548.P10203593383537172055

namespace A133548

/-- `∑[sqrt(sqrt(A030631(n+2)))]` -/
def P10203593383537172055.Spec : Prop :=
  ∀ n, P10203593383537172055.a n = (A133548 (n + 1) : ℝ)

end A133548

/-! ## A133548.P2897422844367404834

`∑[A000040(n+2)*A001248(n+2)]`
-/

namespace A133548.P2897422844367404834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A001248 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133548.P2897422844367404834

namespace A133548

/-- `∑[A000040(n+2)*A001248(n+2)]` -/
def P2897422844367404834.Spec : Prop :=
  ∀ n, P2897422844367404834.a n = A133548 (n + 1)

end A133548

/-! ## A133548.P1184694680757602139

`∑[A000040(n+2)²*A006005(n+2)]`
-/

namespace A133548.P1184694680757602139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) ^ 2 * A006005 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133548.P1184694680757602139

namespace A133548

/-- `∑[A000040(n+2)²*A006005(n+2)]` -/
def P1184694680757602139.Spec : Prop :=
  ∀ n, P1184694680757602139.a n = A133548 (n + 1)

end A133548

/-! ## A133548.P343277378362747785

`∑[Δ[A007504(n+1)]*A001248(n+2)]`
-/

namespace A133548.P343277378362747785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) * A001248 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133548.P343277378362747785

namespace A133548

/-- `∑[Δ[A007504(n+1)]*A001248(n+2)]` -/
def P343277378362747785.Spec : Prop :=
  ∀ n, P343277378362747785.a n = A133548 (n + 1)

end A133548

/-! ## A133548.P1401595502207248829

`∑[record[p?[xor(1, n)]^3]]`
-/

namespace A133548.P1401595502207248829
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) ^ 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133548.P1401595502207248829

namespace A133548

/-- `∑[record[p?[xor(1, n)]^3]]` -/
def P1401595502207248829.Spec : Prop :=
  ∀ n, (P1401595502207248829.a n : ℤ) = A133548 (n + 1)

end A133548

/-! ## A133548.P5095333156506655579

`∑[record[A006530(n+3)^3]]`
-/

namespace A133548.P5095333156506655579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133548.P5095333156506655579

namespace A133548

/-- `∑[record[A006530(n+3)^3]]` -/
def P5095333156506655579.Spec : Prop :=
  ∀ n, P5095333156506655579.a n = A133548 (n + 1)

end A133548

/-! ## A133548.P1370767519254407253

`∑[record[A020639(n+3)^3]]`
-/

namespace A133548.P1370767519254407253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3) ^ 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133548.P1370767519254407253

namespace A133548

/-- `∑[record[A020639(n+3)^3]]` -/
def P1370767519254407253.Spec : Prop :=
  ∀ n, P1370767519254407253.a n = A133548 (n + 1)

end A133548

/-! ## A133548.P17767876121399394240

`∑[A033477(3*(n+1))]`
-/

namespace A133548.P17767876121399394240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033477 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133548.P17767876121399394240

namespace A133548

/-- `∑[A033477(3*(n+1))]` -/
def P17767876121399394240.Spec : Prop :=
  ∀ n, P17767876121399394240.a n = A133548 (n + 1)

end A133548

/-! ## A133548.P6444242674243781038

`∑[record[A051417(n+1)²*A051417(n+1)]]`
-/

namespace A133548.P6444242674243781038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051417 (n + 1) ^ 2 * A051417 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133548.P6444242674243781038

namespace A133548

/-- `∑[record[A051417(n+1)²*A051417(n+1)]]` -/
def P6444242674243781038.Spec : Prop :=
  ∀ n, P6444242674243781038.a n = A133548 (n + 1)

end A133548

/-! ## A133548.P635450862459185743

`∑[record[A076565(n+1)²*A076565(n+1)]]`
-/

namespace A133548.P635450862459185743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076565 (n + 1) ^ 2 * A076565 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133548.P635450862459185743

namespace A133548

/-- `∑[record[A076565(n+1)²*A076565(n+1)]]` -/
def P635450862459185743.Spec : Prop :=
  ∀ n, P635450862459185743.a n = A133548 (n + 1)

end A133548

/-! ## A133548.P7347912473624565407

`∑[record[A088836(n+1)²*A088836(n+1)]]`
-/

namespace A133548.P7347912473624565407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088836 (n + 1) ^ 2 * A088836 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133548.P7347912473624565407

namespace A133548

/-- `∑[record[A088836(n+1)²*A088836(n+1)]]` -/
def P7347912473624565407.Spec : Prop :=
  ∀ n, P7347912473624565407.a n = A133548 (n + 1)

end A133548

/-!
# A133549: Sum of the fourth powers of the first n odd primes.

The programs for A133549, the canonical program `A133549.P4699963464634886654` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133549 has offset 1).

The definition of A133549 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122102, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133549.P4699963464634886654

`A122102(n+2)-16`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133549

/-- `A122102(n+2)-16` -/
def P4699963464634886654.Spec : Prop :=
  ∀ n, P4699963464634886654.a n = A133549 (n + 1)

theorem P4699963464634886654.correct : P4699963464634886654.Spec := by
  intro n
  simp only [A133549, Nat.add_sub_cancel]

end A133549

/-! ## A133549.P2147979070387485574

`∑[p?[2*n+1]^4]`
-/

namespace A133549.P2147979070387485574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133549.P2147979070387485574

namespace A133549

/-- `∑[p?[2*n+1]^4]` -/
def P2147979070387485574.Spec : Prop :=
  ∀ n, (P2147979070387485574.a n : ℤ) = A133549 (n + 1)

end A133549

/-! ## A133549.P1706391338075008966

`∑[p?[2*n+1]²²]`
-/

namespace A133549.P1706391338075008966
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133549.P1706391338075008966

namespace A133549

/-- `∑[p?[2*n+1]²²]` -/
def P1706391338075008966.Spec : Prop :=
  ∀ n, (P1706391338075008966.a n : ℤ) = A133549 (n + 1)

end A133549

/-! ## A133549.P898946002195657164

`∑[A065091(n+1)^4]`
-/

namespace A133549.P898946002195657164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133549.P898946002195657164

namespace A133549

/-- `∑[A065091(n+1)^4]` -/
def P898946002195657164.Spec : Prop :=
  ∀ n, P898946002195657164.a n = A133549 (n + 1)

end A133549

/-! ## A133549.P12530692350007103203

`∑[(A143928(n+1)/2)²]`
-/

namespace A133549.P12530692350007103203
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A143928 (n + 1) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133549.P12530692350007103203

namespace A133549

/-- `∑[(A143928(n+1)/2)²]` -/
def P12530692350007103203.Spec : Prop :=
  ∀ n, P12530692350007103203.a n = (A133549 (n + 1) : ℚ)

end A133549

/-! ## A133549.P12687163597955279195

`∑[A030514(n+2)]`
-/

namespace A133549.P12687163597955279195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030514 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133549.P12687163597955279195

namespace A133549

/-- `∑[A030514(n+2)]` -/
def P12687163597955279195.Spec : Prop :=
  ∀ n, P12687163597955279195.a n = A133549 (n + 1)

end A133549

/-! ## A133549.P9350408313705434992

`∑[A001248(n+2)²]`
-/

namespace A133549.P9350408313705434992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133549.P9350408313705434992

namespace A133549

/-- `∑[A001248(n+2)²]` -/
def P9350408313705434992.Spec : Prop :=
  ∀ n, P9350408313705434992.a n = A133549 (n + 1)

end A133549

/-! ## A133549.P10793443699506041133

`∑[sqrt(A179645(n+2))]`
-/

namespace A133549.P10793443699506041133
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A179645 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133549.P10793443699506041133

namespace A133549

/-- `∑[sqrt(A179645(n+2))]` -/
def P10793443699506041133.Spec : Prop :=
  ∀ n, P10793443699506041133.a n = (A133549 (n + 1) : ℝ)

end A133549

/-! ## A133549.P13561012327457119249

`∑[A172191(n+2)/2]`
-/

namespace A133549.P13561012327457119249
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172191 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133549.P13561012327457119249

namespace A133549

/-- `∑[A172191(n+2)/2]` -/
def P13561012327457119249.Spec : Prop :=
  ∀ n, P13561012327457119249.a n = (A133549 (n + 1) : ℚ)

end A133549

/-! ## A133549.P752693294346726406

`∑[A000040(n+2)^4]`
-/

namespace A133549.P752693294346726406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133549.P752693294346726406

namespace A133549

/-- `∑[A000040(n+2)^4]` -/
def P752693294346726406.Spec : Prop :=
  ∀ n, P752693294346726406.a n = A133549 (n + 1)

end A133549

/-! ## A133549.P1606265240218878042

`∑[A006005(n+2)²²]`
-/

namespace A133549.P1606265240218878042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006005 (n + 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133549.P1606265240218878042

namespace A133549

/-- `∑[A006005(n+2)²²]` -/
def P1606265240218878042.Spec : Prop :=
  ∀ n, P1606265240218878042.a n = A133549 (n + 1)

end A133549

/-! ## A133549.P4008406282523265607

`∑[A073579(n+2)²²]`
-/

namespace A133549.P4008406282523265607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A073579 (n + 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133549.P4008406282523265607

namespace A133549

/-- `∑[A073579(n+2)²²]` -/
def P4008406282523265607.Spec : Prop :=
  ∀ n, P4008406282523265607.a n = A133549 (n + 1)

end A133549

/-! ## A133549.P4304781841704929772

`∑[A273960(n+2)²²]`
-/

namespace A133549.P4304781841704929772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A273960 (n + 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133549.P4304781841704929772

namespace A133549

/-- `∑[A273960(n+2)²²]` -/
def P4304781841704929772.Spec : Prop :=
  ∀ n, P4304781841704929772.a n = A133549 (n + 1)

end A133549

/-! ## A133549.P15990596077599817733

`∑[Δ[A237589(n+1)]²²]`
-/

namespace A133549.P15990596077599817733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) - f2 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133549.P15990596077599817733

namespace A133549

/-- `∑[Δ[A237589(n+1)]²²]` -/
def P15990596077599817733.Spec : Prop :=
  ∀ n, P15990596077599817733.a n = A133549 (n + 1)

end A133549

/-! ## A133549.P1222567308624738386

`∑[A000040(2*(n+1)-n)²²]`
-/

namespace A133549.P1222567308624738386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (2 * (n + 1) - n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133549.P1222567308624738386

namespace A133549

/-- `∑[A000040(2*(n+1)-n)²²]` -/
def P1222567308624738386.Spec : Prop :=
  ∀ n, P1222567308624738386.a n = A133549 (n + 1)

end A133549

/-! ## A133549.P14438604494946728975

`∑[A280076(n+3)²]`
-/

namespace A133549.P14438604494946728975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133549.P14438604494946728975

namespace A133549

/-- `∑[A280076(n+3)²]` -/
def P14438604494946728975.Spec : Prop :=
  ∀ n, P14438604494946728975.a n = A133549 (n + 1)

end A133549

/-! ## A133549.P70473369766140448

`∑[record[A006530(n+3)^4]]`
-/

namespace A133549.P70473369766140448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 3) ^ 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133549.P70473369766140448

namespace A133549

/-- `∑[record[A006530(n+3)^4]]` -/
def P70473369766140448.Spec : Prop :=
  ∀ n, P70473369766140448.a n = A133549 (n + 1)

end A133549

/-! ## A133549.P12625429698612990121

`∑[record[A020639(n+3)^4]]`
-/

namespace A133549.P12625429698612990121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 3) ^ 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133549.P12625429698612990121

namespace A133549

/-- `∑[record[A020639(n+3)^4]]` -/
def P12625429698612990121.Spec : Prop :=
  ∀ n, P12625429698612990121.a n = A133549 (n + 1)

end A133549

/-! ## A133549.P5876825858798518353

`∑[A006530(2*A000040(n+2))²²]`
-/

namespace A133549.P5876825858798518353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006530 (2 * A000040 (n + 2)).toNat ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133549.P5876825858798518353

namespace A133549

/-- `∑[A006530(2*A000040(n+2))²²]` -/
def P5876825858798518353.Spec : Prop :=
  ∀ n, P5876825858798518353.a n = A133549 (n + 1)

end A133549

/-! ## A133549.P5112698045153591636

`∑[A033476(2*(n+1))²]`
-/

namespace A133549.P5112698045153591636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133549.P5112698045153591636

namespace A133549

/-- `∑[A033476(2*(n+1))²]` -/
def P5112698045153591636.Spec : Prop :=
  ∀ n, P5112698045153591636.a n = A133549 (n + 1)

end A133549

/-!
# A133550: Sum of fifth powers of n odd primes.

The programs for A133550, the canonical program `A133550.P10196551962089254403` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133550 has offset 1).

The definition of A133550 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122103, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133550.P10196551962089254403

`A122103(n+2)-32`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133550

/-- `A122103(n+2)-32` -/
def P10196551962089254403.Spec : Prop :=
  ∀ n, P10196551962089254403.a n = A133550 (n + 1)

theorem P10196551962089254403.correct : P10196551962089254403.Spec := by
  intro n
  simp only [A133550, Nat.add_sub_cancel]

end A133550

/-! ## A133550.P6323634235560232520

`∑[p?[2*n+1]^5]`
-/

namespace A133550.P6323634235560232520
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133550.P6323634235560232520

namespace A133550

/-- `∑[p?[2*n+1]^5]` -/
def P6323634235560232520.Spec : Prop :=
  ∀ n, (P6323634235560232520.a n : ℤ) = A133550 (n + 1)

end A133550

/-! ## A133550.P10582387892062203562

`∑[p?[2*n+1]²²*p?[2*n+1]]`
-/

namespace A133550.P10582387892062203562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2) ^ 2 * f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133550.P10582387892062203562

namespace A133550

/-- `∑[p?[2*n+1]²²*p?[2*n+1]]` -/
def P10582387892062203562.Spec : Prop :=
  ∀ n, (P10582387892062203562.a n : ℤ) = A133550 (n + 1)

end A133550

/-! ## A133550.P2173942659603465224

`∑[A065091(n+1)^5]`
-/

namespace A133550.P2173942659603465224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133550.P2173942659603465224

namespace A133550

/-- `∑[A065091(n+1)^5]` -/
def P2173942659603465224.Spec : Prop :=
  ∀ n, P2173942659603465224.a n = A133550 (n + 1)

end A133550

/-! ## A133550.P13372884468777517377

`∑[A050997(n+2)]`
-/

namespace A133550.P13372884468777517377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050997 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133550.P13372884468777517377

namespace A133550

/-- `∑[A050997(n+2)]` -/
def P13372884468777517377.Spec : Prop :=
  ∀ n, P13372884468777517377.a n = A133550 (n + 1)

end A133550

/-! ## A133550.P3634530170703193340

`∑[sqrt(A030629(n+2))]`
-/

namespace A133550.P3634530170703193340
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030629 (n + 2) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133550.P3634530170703193340

namespace A133550

/-- `∑[sqrt(A030629(n+2))]` -/
def P3634530170703193340.Spec : Prop :=
  ∀ n, P3634530170703193340.a n = (A133550 (n + 1) : ℝ)

end A133550

/-! ## A133550.P15858594602712051535

`∑[record[p?[xor(1, n)]^5]]`
-/

namespace A133550.P15858594602712051535
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) ^ 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133550.P15858594602712051535

namespace A133550

/-- `∑[record[p?[xor(1, n)]^5]]` -/
def P15858594602712051535.Spec : Prop :=
  ∀ n, (P15858594602712051535.a n : ℤ) = A133550 (n + 1)

end A133550

/-! ## A133550.P16563667920052218463

`∑[record[A351193(n+3)]]`
-/

namespace A133550.P16563667920052218463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351193 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133550.P16563667920052218463

namespace A133550

/-- `∑[record[A351193(n+3)]]` -/
def P16563667920052218463.Spec : Prop :=
  ∀ n, P16563667920052218463.a n = A133550 (n + 1)

end A133550

/-! ## A133550.P6484896153078787543

`∑[A000584(p?[2*n+1])]`
-/

namespace A133550.P6484896153078787543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133550.P6484896153078787543

namespace A133550

/-- `∑[A000584(p?[2*n+1])]` -/
def P6484896153078787543.Spec : Prop :=
  ∀ n, P6484896153078787543.a n = A133550 (n + 1)

end A133550

/-! ## A133550.P4287043708492242851

`∑[A017674(p?[2*n+1])]`
-/

namespace A133550.P4287043708492242851
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017674 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133550.P4287043708492242851

namespace A133550

/-- `∑[A017674(p?[2*n+1])]` -/
def P4287043708492242851.Spec : Prop :=
  ∀ n, P4287043708492242851.a n = A133550 (n + 1)

end A133550

/-! ## A133550.P14776084793497853103

`∑[A351193(p?[2*n+1])]`
-/

namespace A133550.P14776084793497853103
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351193 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133550.P14776084793497853103

namespace A133550

/-- `∑[A351193(p?[2*n+1])]` -/
def P14776084793497853103.Spec : Prop :=
  ∀ n, P14776084793497853103.a n = A133550 (n + 1)

end A133550

/-! ## A133550.P14145411721756658902

`∑[A351603(p?[2*n+1])]`
-/

namespace A133550.P14145411721756658902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351603 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133550.P14145411721756658902

namespace A133550

/-- `∑[A351603(p?[2*n+1])]` -/
def P14145411721756658902.Spec : Prop :=
  ∀ n, P14145411721756658902.a n = A133550 (n + 1)

end A133550

/-! ## A133550.P5256385615428948923

`∑[A352051(p?[2*n+1])]`
-/

namespace A133550.P5256385615428948923
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352051 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133550.P5256385615428948923

namespace A133550

/-- `∑[A352051(p?[2*n+1])]` -/
def P5256385615428948923.Spec : Prop :=
  ∀ n, P5256385615428948923.a n = A133550 (n + 1)

end A133550

/-! ## A133550.P3009492667639581859

`∑[A373000(p?[2*n+1])]`
-/

namespace A133550.P3009492667639581859
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373000 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133550.P3009492667639581859

namespace A133550

/-- `∑[A373000(p?[2*n+1])]` -/
def P3009492667639581859.Spec : Prop :=
  ∀ n, P3009492667639581859.a n = A133550 (n + 1)

end A133550

/-! ## A133550.P1613581795840695790

`∑[A343285(p?[2*n+1])]`
-/

namespace A133550.P1613581795840695790
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343285 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133550.P1613581795840695790

namespace A133550

/-- `∑[A343285(p?[2*n+1])]` -/
def P1613581795840695790.Spec : Prop :=
  ∀ n, P1613581795840695790.a n = A133550 (n + 1)

end A133550

/-! ## A133550.P15386370702678058061

`∑[A343325(p?[2*n+1])]`
-/

namespace A133550.P15386370702678058061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343325 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133550.P15386370702678058061

namespace A133550

/-- `∑[A343325(p?[2*n+1])]` -/
def P15386370702678058061.Spec : Prop :=
  ∀ n, P15386370702678058061.a n = A133550 (n + 1)

end A133550

/-!
# A133552: Number of length n binary sequences with at most 4 of every adjacent 6 bits set.

The programs for A133552, there is no canonical definition to state claims against.
-/

/-! ## A133552.P1753474467913171199

`A139708(A133024(n+2)-2^n-A151975(n+2))`
-/

namespace A133552.P1753474467913171199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139708 (A133024 (n + 2) - (2 ^ n : ℤ) - A151975 (n + 2)).toNat

end

end A133552.P1753474467913171199

/-! ## A133552.P16388435943667052525

`A164256(n)+A038189(A121654(n))`
-/

namespace A133552.P16388435943667052525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164256 n + A038189 (A121654 n).toNat

end

end A133552.P16388435943667052525

/-! ## A133552.P9814956103049369419

`A265359(A279553(n)+A002525(n))`
-/

namespace A133552.P9814956103049369419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265359 (A279553 n + A002525 n).toNat

end

end A133552.P9814956103049369419

/-! ## A133552.P490937148027514389

`A279367(A114226(n))`
-/

namespace A133552.P490937148027514389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279367 (A114226 n).toNat

end

end A133552.P490937148027514389

/-!
# A133553: E.g.f. satisfies: A(x) = x*(sec(exp(A(x))-1)).

The programs for A133553, there is no canonical definition to state claims against.
-/

/-! ## A133553.P18191866419247599323

`A000272(n)-A023416(A003463(n))`
-/

namespace A133553.P18191866419247599323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000272 n - A023416 (A003463 n).toNat

end

end A133553.P18191866419247599323

/-! ## A133553.P2099940422477912301

`lcm(n, A327005(12*(n+1)))`
-/

namespace A133553.P2099940422477912301
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A327005 (12 * (n + 1)))

end

end A133553.P2099940422477912301

/-!
# A133554: Lesser of emirps (pairs) with only prime digits (A128388).

The programs for A133554, there is no canonical definition to state claims against.
-/

/-! ## A133554.P10409926081894073387

`∩[A019546(n+1), A109308(n+1)]`
-/

namespace A133554.P10409926081894073387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019546 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133554.P10409926081894073387

/-! ## A133554.P2028485088887899239

`∩[A046034(n+1), A109308(n+1)]`
-/

namespace A133554.P2028485088887899239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046034 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133554.P2028485088887899239

/-! ## A133554.P7839137878755576371

`∩[A062087(n+1), A109308(n+1)]`
-/

namespace A133554.P7839137878755576371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133554.P7839137878755576371

/-! ## A133554.P235340522332636553

`∩[A109308(n+1), A128388(n+1)]`
-/

namespace A133554.P235340522332636553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133554.P235340522332636553

/-! ## A133554.P14208091897278458814

`∩[A109308(n+1), A160748(n+1)]`
-/

namespace A133554.P14208091897278458814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133554.P14208091897278458814

/-!
# A133555: Order of A113709(n) among composite positive integers.

The programs for A133555, the canonical program `A133555.P10224486640532332811` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133555 has offset 2).

The definition of A133555 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A113709, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A133555.P10224486640532332811

`A066246(A113709(n+2))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A133555

/-- `A066246(A113709(n+2))` -/
def P10224486640532332811.Spec : Prop :=
  ∀ n, P10224486640532332811.a n = A133555 (n + 2)

theorem P10224486640532332811.correct : P10224486640532332811.Spec := by
  intro n
  simp only [A133555, Nat.add_sub_cancel]

end A133555

/-! ## A133555.P6190620546530914408

`A113709(n+2)-(n+3)`
-/

namespace A133555.P6190620546530914408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113709 (n + 2) - (n + 3 : ℤ)

end

end A133555.P6190620546530914408

namespace A133555

/-- `A113709(n+2)-(n+3)` -/
def P6190620546530914408.Spec : Prop :=
  ∀ n, P6190620546530914408.a n = A133555 (n + 2)

end A133555

/-! ## A133555.P8185194457756887108

`A026238(A113709(n+2))`
-/

namespace A133555.P8185194457756887108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A113709 (n + 2)).toNat

end

end A133555.P8185194457756887108

namespace A133555

/-- `A026238(A113709(n+2))` -/
def P8185194457756887108.Spec : Prop :=
  ∀ n, P8185194457756887108.a n = A133555 (n + 2)

end A133555

/-! ## A133555.P16984758923601538422

`A062298(A113709(n+2)-1)`
-/

namespace A133555.P16984758923601538422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A113709 (n + 2) - 1).toNat

end

end A133555.P16984758923601538422

namespace A133555

/-- `A062298(A113709(n+2)-1)` -/
def P16984758923601538422.Spec : Prop :=
  ∀ n, P16984758923601538422.a n = A133555 (n + 2)

end A133555

/-! ## A133555.P11405597444820557462

`A065855(lcm(2, A113709(n+2)))`
-/

namespace A133555.P11405597444820557462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (Int.lcm 2 (A113709 (n + 2)))

end

end A133555.P11405597444820557462

namespace A133555

/-- `A065855(lcm(2, A113709(n+2)))` -/
def P11405597444820557462.Spec : Prop :=
  ∀ n, P11405597444820557462.a n = A133555 (n + 2)

end A133555

/-! ## A133555.P12623610427723720898

`A023445(A113709(n+2)-n)`
-/

namespace A133555.P12623610427723720898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A113709 (n + 2) - (n : ℤ)).toNat

end

end A133555.P12623610427723720898

namespace A133555

/-- `A023445(A113709(n+2)-n)` -/
def P12623610427723720898.Spec : Prop :=
  ∀ n, P12623610427723720898.a n = A133555 (n + 2)

end A133555

/-! ## A133555.P5365505210320050246

`A065855(A113709(n+2)+char[1])`
-/

namespace A133555.P5365505210320050246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (A113709 (n + 2) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A133555.P5365505210320050246

namespace A133555

/-- `A065855(A113709(n+2)+char[1])` -/
def P5365505210320050246.Spec : Prop :=
  ∀ n, P5365505210320050246.a n = A133555 (n + 2)

end A133555

/-! ## A133555.P16502481728923017520

`A066136(abs(A038608(A113709(n+2))))`
-/

namespace A133555.P16502481728923017520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066136 |A038608 (A113709 (n + 2)).toNat|.toNat

end

end A133555.P16502481728923017520

namespace A133555

/-- `A066136(abs(A038608(A113709(n+2))))` -/
def P16502481728923017520.Spec : Prop :=
  ∀ n, P16502481728923017520.a n = A133555 (n + 2)

end A133555

/-! ## A133555.P1960498057549825984

`A065855(A113709(n+2)%A001748(n+1))`
-/

namespace A133555.P1960498057549825984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065855 (Int.tmod (A113709 (n + 2)) (A001748 (n + 1))).toNat

end

end A133555.P1960498057549825984

namespace A133555

/-- `A065855(A113709(n+2)%A001748(n+1))` -/
def P1960498057549825984.Spec : Prop :=
  ∀ n, P1960498057549825984.a n = A133555 (n + 2)

end A133555

/-!
# A133557: Numbers k for which the sum of squares of five consecutive primes starting with prime(k) is prime (A133559).

The programs for A133557, there is no canonical definition to state claims against.
-/

/-! ## A133557.P2870091905480358537

`eq[1, A001222(A131686(n+1))]+1`
-/

namespace A133557.P2870091905480358537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A131686 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A133557.P2870091905480358537

/-! ## A133557.P9875597396576851776

`lt[A001222(A131686(n+1)+A000038(n)), 2]+1`
-/

namespace A133557.P9875597396576851776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A131686 (n + 1) + A000038 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A133557.P9875597396576851776

/-!
# A133558: a(n) = a(n-1) + 9*a(n-2) for n >= 2, a(0)=1, a(1)=2.

The programs for A133558, the canonical program `A133558.P9500124779766699515` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133558 has offset 0).

The definition of A133558 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+9*a(n-2)` (program `A133558.P9500124779766699515`, by `A133558.P9500124779766699515.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133558.P12248164551890328170

`ogf((1+x)/(1-x-9x^2))`
-/

namespace A133558.P12248164551890328170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -1, -9] n

end

end A133558.P12248164551890328170

namespace A133558

/-- `ogf((1+x)/(1-x-9x^2))` -/
def P12248164551890328170.Spec : Prop :=
  ∀ n, P12248164551890328170.a n = A133558 n

end A133558

/-! ## A133558.P9500124779766699515

`a(n-1)+9*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133558

/-- `a(n-1)+9*a(n-2)` -/
def P9500124779766699515.Spec : Prop :=
  ∀ n, (P9500124779766699515.a n : ℤ) = A133558 n

theorem P9500124779766699515.correct : P9500124779766699515.Spec := by
  intro n
  simp only [A133558]

end A133558

/-! ## A133558.P6378061850032185000

`a(n-1)+lcm(9, a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A133558.P6378061850032185000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + Nat.lcm 9 (a (n - 2))

end

end A133558.P6378061850032185000

namespace A133558

/-- `a(n-1)+lcm(9, a(n-2))` -/
def P6378061850032185000.Spec : Prop :=
  ∀ n, (P6378061850032185000.a n : ℤ) = A133558 n

end A133558

/-! ## A133558.P2089669297855475604

`a(n-1)-9*ceil(-a(n-2))` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A133558.P2089669297855475604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - 9 * (-a (n - 2))

end

end A133558.P2089669297855475604

namespace A133558

/-- `a(n-1)-9*ceil(-a(n-2))` -/
def P2089669297855475604.Spec : Prop :=
  ∀ n, P2089669297855475604.a n = A133558 n

end A133558

/-! ## A133558.P6195034029791748491

`a(n-1)-9*round(-a(n-2))` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A133558.P6195034029791748491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - 9 * (-a (n - 2))

end

end A133558.P6195034029791748491

namespace A133558

/-- `a(n-1)-9*round(-a(n-2))` -/
def P6195034029791748491.Spec : Prop :=
  ∀ n, P6195034029791748491.a n = A133558 n

end A133558

/-! ## A133558.P15288570302075574612

`a(n-1)+a(n-2)/(1/3)²` with `a(0)=1, a(1)=2`
-/

namespace A133558.P15288570302075574612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + a (n - 2) / ((1 : ℚ) / 3) ^ 2

end

end A133558.P15288570302075574612

namespace A133558

/-- `a(n-1)+a(n-2)/(1/3)²` -/
def P15288570302075574612.Spec : Prop :=
  ∀ n, P15288570302075574612.a n = (A133558 n : ℚ)

end A133558

/-! ## A133558.P3534458517459097386

`2*5*a(n-2)-(a(n-2)-a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A133558.P3534458517459097386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (5 * a (n - 2)) - (a (n - 2) - a (n - 1))

end

end A133558.P3534458517459097386

namespace A133558

/-- `2*5*a(n-2)-(a(n-2)-a(n-1))` -/
def P3534458517459097386.Spec : Prop :=
  ∀ n, P3534458517459097386.a n = A133558 n

end A133558

/-!
# A133559: Primes which have a partition as the sum of squares of five consecutive primes.

The programs for A133559, there is no canonical definition to state claims against.
-/

/-! ## A133559.P3776840034366183540

`∩[A131686(n+1), A376916(n+1)]`
-/

namespace A133559.P3776840034366183540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133559.P3776840034366183540

/-! ## A133559.P4400295914174819236

`A131686(A133557(n+1))`
-/

namespace A133559.P4400295914174819236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131686 (A133557 (n + 1)).toNat

end

end A133559.P4400295914174819236

/-! ## A133559.P9067911233907388633

`p?[A131686(n+1)]`
-/

namespace A133559.P9067911233907388633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131686 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133559.P9067911233907388633

/-! ## A133559.P17137251714045063293

`p?[record[A131686(A106466(n))]]`
-/

namespace A133559.P17137251714045063293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131686 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133559.P17137251714045063293

/-! ## A133559.P5430120225517182683

`p?[record[A131686(A242112(n))]]`
-/

namespace A133559.P5430120225517182683
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131686 (A242112 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133559.P5430120225517182683

/-!
# A133560: Primes which have a partition as the sum of squares of seven consecutive primes.

The programs for A133560, there is no canonical definition to state claims against.
-/

/-! ## A133560.P11158964614295097882

`A133562(A133561(n+1))`
-/

namespace A133560.P11158964614295097882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133562 (A133561 (n + 1)).toNat

end

end A133560.P11158964614295097882

/-! ## A133560.P9694154109299044418

`∩[A133562(n+1), A376916(n+1)]`
-/

namespace A133560.P9694154109299044418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376916 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A133560.P9694154109299044418

/-! ## A133560.P5652884444699321156

`p?[A133562(n+1)]`
-/

namespace A133560.P5652884444699321156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133560.P5652884444699321156

/-! ## A133560.P10148932428364537520

`p?[record[A133562(A152271(n))]]`
-/

namespace A133560.P10148932428364537520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133562 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133560.P10148932428364537520

/-! ## A133560.P3092454518906745955

`p?[record[A133562(A291769(n))]]`
-/

namespace A133560.P3092454518906745955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133562 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A133560.P3092454518906745955

/-!
# A133562: Numbers which are the sum of the squares of seven consecutive primes.

The programs for A133562, the canonical program `A133562.P2922805213875527912` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133562 has offset 1).

The definition of A133562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133562.P2922805213875527912

`A131686(n+3)+A069484(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A133562

/-- `A131686(n+3)+A069484(n+1)` -/
def P2922805213875527912.Spec : Prop :=
  ∀ n, P2922805213875527912.a n = A133562 (n + 1)

theorem P2922805213875527912.correct : P2922805213875527912.Spec := by
  intro n
  simp only [A133562, Nat.add_sub_cancel]

end A133562

/-! ## A133562.P9738395739938001716

`A131686(n+3)+A048851(n+2)`
-/

namespace A133562.P9738395739938001716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131686 (n + 3) + A048851 (n + 2)

end

end A133562.P9738395739938001716

namespace A133562

/-- `A131686(n+3)+A048851(n+2)` -/
def P9738395739938001716.Spec : Prop :=
  ∀ n, P9738395739938001716.a n = A133562 (n + 1)

end A133562

/-! ## A133562.P4706747194499167754

`A133529(n+1)+A133524(n+4)`
-/

namespace A133562.P4706747194499167754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133529 (n + 1) + A133524 (n + 4)

end

end A133562.P4706747194499167754

namespace A133562

/-- `A133529(n+1)+A133524(n+4)` -/
def P4706747194499167754.Spec : Prop :=
  ∀ n, P4706747194499167754.a n = A133562 (n + 1)

theorem P4706747194499167754.correct : P4706747194499167754.Spec := by
  intro n
  simp only [A133562, Nat.add_sub_cancel, A133562.P4706747194499167754.a, A133562.P2922805213875527912.a, A069484, A069484.P10584348183158188878.a, A131686, A131686.P9344451036206820720.a, A133524, A133524.P7363267579138448459.a, A133529, A133529.P6726527200779118077.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133562

/-! ## A133562.P12593100248390464276

`A001248(n+1)+A133529(n+2)+A133529(n+5)`
-/

namespace A133562.P12593100248390464276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) + (A133529 (n + 2) + A133529 (n + 5))

end

end A133562.P12593100248390464276

namespace A133562

/-- `A001248(n+1)+A133529(n+2)+A133529(n+5)` -/
def P12593100248390464276.Spec : Prop :=
  ∀ n, P12593100248390464276.a n = A133562 (n + 1)

theorem P12593100248390464276.correct : P12593100248390464276.Spec := by
  intro n
  simp only [A133562, Nat.add_sub_cancel, A133562.P12593100248390464276.a, A133562.P2922805213875527912.a, A001248, A001248.P16278241061688229202.a, A069484, A069484.P10584348183158188878.a, A131686, A131686.P9344451036206820720.a, A133529, A133529.P6726527200779118077.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A133524, A133524.P7363267579138448459.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A133562

/-! ## A133562.P18297687738530480339

`A024525(n+7)-A024525(n)`
-/

namespace A133562.P18297687738530480339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024525 (n + 7) - A024525 n

end

end A133562.P18297687738530480339

namespace A133562

/-- `A024525(n+7)-A024525(n)` -/
def P18297687738530480339.Spec : Prop :=
  ∀ n, P18297687738530480339.a n = A133562 (n + 1)

end A133562

/-!
# A133563: Expansion of chi(-q) / chi(-q^5) in powers of q where chi() is a Ramanujan theta function.

The programs for A133563, there is no canonical definition to state claims against.
-/

/-! ## A133563.P7910170588554790482

`A112203(3*n+1)`
-/

namespace A133563.P7910170588554790482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112203 (3 * n + 1)

end

end A133563.P7910170588554790482

/-! ## A133563.P18195194093066155465

`or(char[1], A112203(A016777(n)))`
-/

namespace A133563.P18195194093066155465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A112203 (A016777 n).toNat)

end

end A133563.P18195194093066155465

/-! ## A133563.P16818893143246627573

`A112203(A016777(n))+A000007(n+1)`
-/

namespace A133563.P16818893143246627573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112203 (A016777 n).toNat + A000007 (n + 1)

end

end A133563.P16818893143246627573

/-! ## A133563.P10066891672057820003

`A112203(A016777(n))+A000038(n+1)`
-/

namespace A133563.P10066891672057820003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112203 (A016777 n).toNat + A000038 (n + 1)

end

end A133563.P10066891672057820003

/-! ## A133563.P3084241494354863029

`A000034(2*n)*A112203(A016777(n))`
-/

namespace A133563.P3084241494354863029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A112203 (A016777 n).toNat

end

end A133563.P3084241494354863029

/-! ## A133563.P15690316820752558777

`A112203(A016777(n))%A000041(n+2)`
-/

namespace A133563.P15690316820752558777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112203 (A016777 n).toNat) (A000041 (n + 2))

end

end A133563.P15690316820752558777

/-! ## A133563.P16278385910074430701

`A112203(A016777(n))+and(2, A000583(n))`
-/

namespace A133563.P16278385910074430701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112203 (A016777 n).toNat + Int.land 2 (A000583 n)

end

end A133563.P16278385910074430701

/-! ## A133563.P6674518549708231872

`A112203(A016777(n))-n*A000007(n)`
-/

namespace A133563.P6674518549708231872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112203 (A016777 n).toNat - (n : ℤ) * A000007 n

end

end A133563.P6674518549708231872

/-! ## A133563.P10377562838671903912

`A000035(Δ[n²])*A112203(A016777(n))`
-/

namespace A133563.P10377562838671903912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A112203 (A016777 n).toNat

end

end A133563.P10377562838671903912

/-! ## A133563.P5408838453875546607

`A112203(A016777(n))^(A043529(2*n)-1)`
-/

namespace A133563.P5408838453875546607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112203 (A016777 n).toNat : ℚ) ^ (A043529 (2 * n) - 1 : ℤ)

end

end A133563.P5408838453875546607

/-! ## A133563.P10280945305119029107

`A112203(A016777(n))/A010132(A145341(n+1))`
-/

namespace A133563.P10280945305119029107
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112203 (A016777 n).toNat : ℚ) / (A010132 (A145341 (n + 1)).toNat : ℚ)

end

end A133563.P10280945305119029107

/-! ## A133563.P17960465282908724358

`A112203(A016777(n))/A000034(A247097(n+2))`
-/

namespace A133563.P17960465282908724358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112203 (A016777 n).toNat : ℚ) / (A000034 (A247097 (n + 2)).toNat : ℚ)

end

end A133563.P17960465282908724358

/-! ## A133563.P7562905919150789641

`A157228(A225574(n+1))+A112203(A016777(n))`
-/

namespace A133563.P7562905919150789641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157228 (A225574 (n + 1)).toNat + A112203 (A016777 n).toNat

end

end A133563.P7562905919150789641

/-! ## A133563.P3032405322771658326

`A057427(A054125(n))*A112203(A016777(n))`
-/

namespace A133563.P3032405322771658326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A054125 n).toNat * A112203 (A016777 n).toNat

end

end A133563.P3032405322771658326

/-! ## A133563.P6705409819446901795

`A057427(A072405(n))*A112203(A016777(n))`
-/

namespace A133563.P6705409819446901795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A072405 n).toNat * A112203 (A016777 n).toNat

end

end A133563.P6705409819446901795

/-! ## A133563.P17974491976331117435

`A112203(A016777(n))^A014963(∑[n+1])`
-/

namespace A133563.P17974491976331117435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112203 (A016777 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A133563.P17974491976331117435

/-!
# A133564: a(1)=1. a(n+1) = sum{k=isolated divisors of n} a(k). An isolated divisor, k, of n is a positive divisor of n where neither (k-1) nor (k+1) divides n.

The programs for A133564, there is no canonical definition to state claims against.
-/

/-! ## A133564.P3395990231129900202

`A185283(A089797(n+2)-A297167(n+1))`
-/

namespace A133564.P3395990231129900202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A089797 (n + 2) - A297167 (n + 1)).toNat

end

end A133564.P3395990231129900202

/-! ## A133564.P16469042963218397423

`A048766(xor(2, A129016(n)))`
-/

namespace A133564.P16469042963218397423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.xor 2 (A129016 n)).toNat

end

end A133564.P16469042963218397423

/-! ## A133564.P14481928319441235221

`A127321(A008611(∑[A306098(n)]))`
-/

namespace A133564.P14481928319441235221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A008611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A133564.P14481928319441235221

/-! ## A133564.P15152852802217469153

`A060576(A038505(n))+A011869(n)`
-/

namespace A133564.P15152852802217469153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A038505 n).toNat + A011869 n

end

end A133564.P15152852802217469153

/-! ## A133564.P8981160985289857698

`A060576(A089068(n))+A011869(n)`
-/

namespace A133564.P8981160985289857698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A089068 n).toNat + A011869 n

end

end A133564.P8981160985289857698

/-!
# A133565: a(1)=1. a(n+1) = sum{k=non-isolated divisors of n} a(k). A non-isolated divisor, k, of n is a positive divisor of n where (k-1) or (k+1) divides n.

The programs for A133565, there is no canonical definition to state claims against.
-/

/-! ## A133565.P13372604566255402726

`A125005(gcd(A193356(5*(n+2)), A334511(n+15)))`
-/

namespace A133565.P13372604566255402726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (Int.gcd (A193356 (5 * (n + 2))) (A334511 (n + 15)))

end

end A133565.P13372604566255402726

/-! ## A133565.P10620521215971144549

`A008619(A329037(A027642(n)))%A010156(n)`
-/

namespace A133565.P10620521215971144549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A329037 (A027642 n).toNat).toNat) (A010156 n)

end

end A133565.P10620521215971144549

/-! ## A133565.P7122857725233875264

`A340928(∑[∏{p}[2*n, n*val(#², 2)]]-n+4)`
-/

namespace A133565.P7122857725233875264
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), n * SequenceMachineLib.valuation (p ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340928 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) + 4).toNat

end

end A133565.P7122857725233875264

/-! ## A133565.P10788574407979271900

`A340928(2*A132226(n+1)+n+1)`
-/

namespace A133565.P10788574407979271900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340928 (2 * A132226 (n + 1) + (n : ℤ) + 1).toNat

end

end A133565.P10788574407979271900

/-! ## A133565.P7819142275144105722

`A058060(A059926(n+5))`
-/

namespace A133565.P7819142275144105722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058060 (A059926 (n + 5)).toNat

end

end A133565.P7819142275144105722

/-!
# A133566: Triangle read by rows: (1,1,1,...) on the main diagonal and (0,1,0,1,...) on the subdiagonal.

The programs for A133566, the canonical program `A133566.P1529178751528163076` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133566 has offset 1).

The definition of A133566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133566.P1529178751528163076

`(T(n-1,k)-T(n-1,k-1))*(T(n-2,k-1)-T(n-1,k-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133566

/-- `(T(n-1,k)-T(n-1,k-1))*(T(n-2,k-1)-T(n-1,k-1))` -/
def P1529178751528163076.Spec : Prop :=
  ∀ n, P1529178751528163076.a n = A133566 (n + 1)

theorem P1529178751528163076.correct : P1529178751528163076.Spec := by
  intro n
  simp only [A133566, Nat.add_sub_cancel]

end A133566

/-! ## A133566.P5541505116376594524

`C(col(n)%2, row(n)-col(n))`
-/

namespace A133566.P5541505116376594524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triCol n % 2) ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat

end

end A133566.P5541505116376594524

namespace A133566

/-- `C(col(n)%2, row(n)-col(n))` -/
def P5541505116376594524.Spec : Prop :=
  ∀ n, (P5541505116376594524.a n : ℤ) = A133566 (n + 1)

end A133566

/-! ## A133566.P5916010141666871119

`(T(n-1,k-1)+T(n-1,k+1)-T(n-2,k-1))*(T(n-1,k-1)-T(n-2,k-1))` with `a(0)=1`
-/

namespace A133566.P5916010141666871119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUpRight a n - SequenceMachineLib.triUp2Left a n) * (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2Left a n)

end

end A133566.P5916010141666871119

namespace A133566

/-- `(T(n-1,k-1)+T(n-1,k+1)-T(n-2,k-1))*(T(n-1,k-1)-T(n-2,k-1))` -/
def P5916010141666871119.Spec : Prop :=
  ∀ n, P5916010141666871119.a n = A133566 (n + 1)

end A133566

/-! ## A133566.P4140117975972924571

`(T(n-2,k)+T(n-1,k-1)-T(n-2,k-1))*(T(n-1,k-1)-T(n-2,k-1))` with `a(0)=1`
-/

namespace A133566.P4140117975972924571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUp2 a n + SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2Left a n) * (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2Left a n)

end

end A133566.P4140117975972924571

namespace A133566

/-- `(T(n-2,k)+T(n-1,k-1)-T(n-2,k-1))*(T(n-1,k-1)-T(n-2,k-1))` -/
def P4140117975972924571.Spec : Prop :=
  ∀ n, P4140117975972924571.a n = A133566 (n + 1)

end A133566

/-! ## A133566.P4049745025011610591

`char[∑[round((lcm(3, n)-n)/3)]+n]`
-/

namespace A133566.P4049745025011610591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((Nat.lcm 3 n : ℤ) - (n : ℤ) : ℚ) / 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A133566.P4049745025011610591

namespace A133566

/-- `char[∑[round((lcm(3, n)-n)/3)]+n]` -/
def P4049745025011610591.Spec : Prop :=
  ∀ n, (P4049745025011610591.a n : ℤ) = A133566 (n + 1)

end A133566

/-! ## A133566.P17505858494703457890

`(1-(2-T(n-1,k+1))*T(n-2,k-1))*(T(n-1,k-1)-T(n-2,k-1))` with `a(0)=1`
-/

namespace A133566.P17505858494703457890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - (2 - SequenceMachineLib.triUpRight a n) * SequenceMachineLib.triUp2Left a n) * (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2Left a n)

end

end A133566.P17505858494703457890

namespace A133566

/-- `(1-(2-T(n-1,k+1))*T(n-2,k-1))*(T(n-1,k-1)-T(n-2,k-1))` -/
def P17505858494703457890.Spec : Prop :=
  ∀ n, P17505858494703457890.a n = A133566 (n + 1)

end A133566

/-! ## A133566.P408663173826973772

`(1-(2-T(n-2,k))*T(n-2,k-1))*(T(n-1,k-1)-T(n-2,k-1))` with `a(0)=1`
-/

namespace A133566.P408663173826973772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - (2 - SequenceMachineLib.triUp2 a n) * SequenceMachineLib.triUp2Left a n) * (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp2Left a n)

end

end A133566.P408663173826973772

namespace A133566

/-- `(1-(2-T(n-2,k))*T(n-2,k-1))*(T(n-1,k-1)-T(n-2,k-1))` -/
def P408663173826973772.Spec : Prop :=
  ∀ n, P408663173826973772.a n = A133566 (n + 1)

end A133566

/-! ## A133566.P12629626890786675749

`char[2*floor(n/3)*ceil(n/3)-n]`
-/

namespace A133566.P12629626890786675749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (⌊(n : ℚ) / 3⌋ * ⌈(n : ℚ) / 3⌉) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A133566.P12629626890786675749

namespace A133566

/-- `char[2*floor(n/3)*ceil(n/3)-n]` -/
def P12629626890786675749.Spec : Prop :=
  ∀ n, (P12629626890786675749.a n : ℤ) = A133566 (n + 1)

end A133566

/-! ## A133566.P4528311953711429715

`(T(n-2,k-1)+T(n-1,k-1))*(col(n)+2-(T(n-1,k-1)+row(n)))` with `a(0)=1`
-/

namespace A133566.P4528311953711429715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUpLeft a n) * ((SequenceMachineLib.triCol n + 2 : ℤ) - (SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triRow n : ℤ)))

end

end A133566.P4528311953711429715

namespace A133566

/-- `(T(n-2,k-1)+T(n-1,k-1))*(col(n)+2-(T(n-1,k-1)+row(n)))` -/
def P4528311953711429715.Spec : Prop :=
  ∀ n, P4528311953711429715.a n = A133566 (n + 1)

end A133566

/-! ## A133566.P13100801490678264277

`char[C(2*(n+2), 2)-2]+char[C(n, 2)-1]`
-/

namespace A133566.P13100801490678264277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 2)) 2 : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A133566.P13100801490678264277

namespace A133566

/-- `char[C(2*(n+2), 2)-2]+char[C(n, 2)-1]` -/
def P13100801490678264277.Spec : Prop :=
  ∀ n, (P13100801490678264277.a n : ℤ) = A133566 (n + 1)

end A133566

/-! ## A133566.P90944525375415006

`C(∑[char[∑[n]]]%2, C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A133566.P90944525375415006
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((∑ j ∈ Finset.range (n + 1), f1 j) % 2) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat

end

end A133566.P90944525375415006

namespace A133566

/-- `C(∑[char[∑[n]]]%2, C(comp[∑[n]]-n, 2)-(n+1))` -/
def P90944525375415006.Spec : Prop :=
  ∀ n, (P90944525375415006.a n : ℤ) = A133566 (n + 1)

end A133566

/-! ## A133566.P11788246818055805948

`char[-xor((2*n+1)*(n+3), -1)]+char[∑[n-1]]`
-/

namespace A133566.P11788246818055805948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((2 * n + 1) * (n + 3) : ℤ) (-1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

end

end A133566.P11788246818055805948

namespace A133566

/-- `char[-xor((2*n+1)*(n+3), -1)]+char[∑[n-1]]` -/
def P11788246818055805948.Spec : Prop :=
  ∀ n, (P11788246818055805948.a n : ℤ) = A133566 (n + 1)

end A133566

/-! ## A133566.P12091188477983676956

`round(char[∑[2-char[n²]]-2]/(C(comp[∑[n]]-n, 2)-n))`
-/

namespace A133566.P12091188477983676956
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℚ) / ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ) : ℚ))

end

end A133566.P12091188477983676956

namespace A133566

/-- `round(char[∑[2-char[n²]]-2]/(C(comp[∑[n]]-n, 2)-n))` -/
def P12091188477983676956.Spec : Prop :=
  ∀ n, P12091188477983676956.a n = A133566 (n + 1)

end A133566

/-! ## A133566.P11829216357340505445

`A105851(n)%2`
-/

namespace A133566.P11829216357340505445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A105851 n) 2

end

end A133566.P11829216357340505445

namespace A133566

/-- `A105851(n)%2` -/
def P11829216357340505445.Spec : Prop :=
  ∀ n, P11829216357340505445.a n = A133566 (n + 1)

end A133566

/-! ## A133566.P10574455144077971480

`A196389(n)%2`
-/

namespace A133566.P10574455144077971480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196389 n) 2

end

end A133566.P10574455144077971480

namespace A133566

/-- `A196389(n)%2` -/
def P10574455144077971480.Spec : Prop :=
  ∀ n, P10574455144077971480.a n = A133566 (n + 1)

end A133566

/-! ## A133566.P4084105234902365492

`A198792(n)%2`
-/

namespace A133566.P4084105234902365492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198792 n) 2

end

end A133566.P4084105234902365492

namespace A133566

/-- `A198792(n)%2` -/
def P4084105234902365492.Spec : Prop :=
  ∀ n, P4084105234902365492.a n = A133566 (n + 1)

end A133566

/-! ## A133566.P12620946478616709998

`and(1, A112334(n))`
-/

namespace A133566.P12620946478616709998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A112334 n)

end

end A133566.P12620946478616709998

namespace A133566

/-- `and(1, A112334(n))` -/
def P12620946478616709998.Spec : Prop :=
  ∀ n, P12620946478616709998.a n = A133566 (n + 1)

end A133566

/-! ## A133566.P8082222055373880639

`A152920(n+2)%2`
-/

namespace A133566.P8082222055373880639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152920 (n + 2)) 2

end

end A133566.P8082222055373880639

namespace A133566

/-- `A152920(n+2)%2` -/
def P8082222055373880639.Spec : Prop :=
  ∀ n, P8082222055373880639.a n = A133566 (n + 1)

end A133566

/-! ## A133566.P1379696523027617675

`floor(1/A325027(n+1))`
-/

namespace A133566.P1379696523027617675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A325027 (n + 1) : ℚ)⌋

end

end A133566.P1379696523027617675

namespace A133566

/-- `floor(1/A325027(n+1))` -/
def P1379696523027617675.Spec : Prop :=
  ∀ n, P1379696523027617675.a n = A133566 (n + 1)

end A133566

/-! ## A133566.P17695376341332251639

`1-floor(atan(A061865(n+1)))`
-/

namespace A133566.P17695376341332251639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊Real.arctan (A061865 (n + 1) : ℝ)⌋

end

end A133566.P17695376341332251639

namespace A133566

/-- `1-floor(atan(A061865(n+1)))` -/
def P17695376341332251639.Spec : Prop :=
  ∀ n, P17695376341332251639.a n = A133566 (n + 1)

end A133566

/-!
# A133567: A007318 * A133566.

The programs for A133567, the canonical program `A133567.P2335698315275832870` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133567 has offset 1).

The definition of A133567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133567.P2335698315275832870

`A103371(n)/A133084(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133567

/-- `A103371(n)/A133084(n+1)` -/
def P2335698315275832870.Spec : Prop :=
  ∀ n, P2335698315275832870.a n = (A133567 (n + 1) : ℚ)

end A133567

/-! ## A133567.P18012471732397841101

`A208913(n+1)/A059268(n)`
-/

namespace A133567.P18012471732397841101
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208913 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A133567.P18012471732397841101

namespace A133567

/-- `A208913(n+1)/A059268(n)` -/
def P18012471732397841101.Spec : Prop :=
  ∀ n, P18012471732397841101.a n = (A133567 (n + 1) : ℚ)

end A133567

/-! ## A133567.P1707979373467170288

`A208913(n+1)/A000079(A002262(n))`
-/

namespace A133567.P1707979373467170288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208913 (n + 1) : ℚ) / (A000079 (A002262 n).toNat : ℚ)

end

end A133567.P1707979373467170288

namespace A133567

/-- `A208913(n+1)/A000079(A002262(n))` -/
def P1707979373467170288.Spec : Prop :=
  ∀ n, P1707979373467170288.a n = (A133567 (n + 1) : ℚ)

end A133567

/-! ## A133567.P2912224645704393087

`A208520(n+1)/A016116(A002262(n))`
-/

namespace A133567.P2912224645704393087
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208520 (n + 1) : ℚ) / (A016116 (A002262 n).toNat : ℚ)

end

end A133567.P2912224645704393087

namespace A133567

/-- `A208520(n+1)/A016116(A002262(n))` -/
def P2912224645704393087.Spec : Prop :=
  ∀ n, P2912224645704393087.a n = (A133567 (n + 1) : ℚ)

end A133567

/-! ## A133567.P14116878357877396957

`A208905(n+1)/A016116(A002260(n+1))`
-/

namespace A133567.P14116878357877396957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208905 (n + 1) : ℚ) / (A016116 (A002260 (n + 1)).toNat : ℚ)

end

end A133567.P14116878357877396957

namespace A133567

/-- `A208905(n+1)/A016116(A002260(n+1))` -/
def P14116878357877396957.Spec : Prop :=
  ∀ n, P14116878357877396957.a n = (A133567 (n + 1) : ℚ)

end A133567

/-! ## A133567.P1566048533188275246

`A208905(n+1)/A016116(A002262(n)+1)`
-/

namespace A133567.P1566048533188275246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208905 (n + 1) : ℚ) / (A016116 (A002262 n + 1).toNat : ℚ)

end

end A133567.P1566048533188275246

namespace A133567

/-- `A208905(n+1)/A016116(A002262(n)+1)` -/
def P1566048533188275246.Spec : Prop :=
  ∀ n, P1566048533188275246.a n = (A133567 (n + 1) : ℚ)

end A133567

/-! ## A133567.P7883502353785865291

`A208913(n+1)/A016116(2*A002262(n))`
-/

namespace A133567.P7883502353785865291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208913 (n + 1) : ℚ) / (A016116 (2 * A002262 n).toNat : ℚ)

end

end A133567.P7883502353785865291

namespace A133567

/-- `A208913(n+1)/A016116(2*A002262(n))` -/
def P7883502353785865291.Spec : Prop :=
  ∀ n, P7883502353785865291.a n = (A133567 (n + 1) : ℚ)

end A133567

/-! ## A133567.P6556395724484436778

`A208913(n+1)/A060546(2*A002262(n))`
-/

namespace A133567.P6556395724484436778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208913 (n + 1) : ℚ) / (A060546 (2 * A002262 n).toNat : ℚ)

end

end A133567.P6556395724484436778

namespace A133567

/-- `A208913(n+1)/A060546(2*A002262(n))` -/
def P6556395724484436778.Spec : Prop :=
  ∀ n, P6556395724484436778.a n = (A133567 (n + 1) : ℚ)

end A133567

/-! ## A133567.P17899506854924135793

`A208520(n+1)/A016116(A002260(n+1)-1)`
-/

namespace A133567.P17899506854924135793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208520 (n + 1) : ℚ) / (A016116 (A002260 (n + 1) - 1).toNat : ℚ)

end

end A133567.P17899506854924135793

namespace A133567

/-- `A208520(n+1)/A016116(A002260(n+1)-1)` -/
def P17899506854924135793.Spec : Prop :=
  ∀ n, P17899506854924135793.a n = (A133567 (n + 1) : ℚ)

end A133567

/-! ## A133567.P4891694923483371815

`A173402(n+1)+A173402(n+1)+A173398(n+2)`
-/

namespace A133567.P4891694923483371815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173402 (n + 1) + (A173402 (n + 1) + A173398 (n + 2))

end

end A133567.P4891694923483371815

namespace A133567

/-- `A173402(n+1)+A173402(n+1)+A173398(n+2)` -/
def P4891694923483371815.Spec : Prop :=
  ∀ n, P4891694923483371815.a n = A133567 (n + 1)

end A133567

/-! ## A133567.P9024799482127012226

`A133084(A014132(n+2))-A133084(n+2)`
-/

namespace A133567.P9024799482127012226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133084 (A014132 (n + 2)).toNat - A133084 (n + 2)

end

end A133567.P9024799482127012226

namespace A133567

/-- `A133084(A014132(n+2))-A133084(n+2)` -/
def P9024799482127012226.Spec : Prop :=
  ∀ n, P9024799482127012226.a n = A133567 (n + 1)

end A133567

/-! ## A133567.P12290542618128462351

`gcd(A141665(A080036(n)), A141665(n))`
-/

namespace A133567.P12290542618128462351
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141665 (A080036 n).toNat) (A141665 n)

end

end A133567.P12290542618128462351

namespace A133567

/-- `gcd(A141665(A080036(n)), A141665(n))` -/
def P12290542618128462351.Spec : Prop :=
  ∀ n, (P12290542618128462351.a n : ℤ) = A133567 (n + 1)

end A133567

/-! ## A133567.P428641482821182727

`A208905(n+1)/A059268(n)*A000188(A059268(n))`
-/

namespace A133567.P428641482821182727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208905 (n + 1) : ℚ) / (A059268 n : ℚ) * (A000188 (A059268 n).toNat : ℚ)

end

end A133567.P428641482821182727

namespace A133567

/-- `A208905(n+1)/A059268(n)*A000188(A059268(n))` -/
def P428641482821182727.Spec : Prop :=
  ∀ n, P428641482821182727.a n = (A133567 (n + 1) : ℚ)

end A133567

/-! ## A133567.P4061699491772433231

`A208520(n+1)/A059268(n)*A019554(A059268(n))`
-/

namespace A133567.P4061699491772433231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208520 (n + 1) : ℚ) / (A059268 n : ℚ) * (A019554 (A059268 n).toNat : ℚ)

end

end A133567.P4061699491772433231

namespace A133567

/-- `A208520(n+1)/A059268(n)*A019554(A059268(n))` -/
def P4061699491772433231.Spec : Prop :=
  ∀ n, P4061699491772433231.a n = (A133567 (n + 1) : ℚ)

end A133567

/-! ## A133567.P2522613627240853944

`A208905(n+1)/A000188(2*A059268(n))`
-/

namespace A133567.P2522613627240853944
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208905 (n + 1) : ℚ) / (A000188 (2 * A059268 n).toNat : ℚ)

end

end A133567.P2522613627240853944

namespace A133567

/-- `A208905(n+1)/A000188(2*A059268(n))` -/
def P2522613627240853944.Spec : Prop :=
  ∀ n, P2522613627240853944.a n = (A133567 (n + 1) : ℚ)

end A133567

/-!
# A133569: A133566 * A007318 as infinite lower triangular matrices.

The programs for A133569, there is no canonical definition to state claims against.
-/

/-! ## A133569.P10215944502107386113

`A124459(n+1)-A133087(n)`
-/

namespace A133569.P10215944502107386113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124459 (n + 1) - A133087 n

end

end A133569.P10215944502107386113

/-! ## A133569.P9675340061341617563

`A000120(A174031(n+1)+A111825(n))`
-/

namespace A133569.P9675340061341617563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A174031 (n + 1) + A111825 n).toNat

end

end A133569.P9675340061341617563

/-! ## A133569.P6769598921471389842

`char[∑[n-1]]+A174103(n+2)%A093560(n)`
-/

namespace A133569.P6769598921471389842
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + Int.tmod (A174103 (n + 2)) (A093560 n)

end

end A133569.P6769598921471389842

/-! ## A133569.P12492372311579670914

`A028310(A174103(n+2)%A093560(n))`
-/

namespace A133569.P12492372311579670914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A174103 (n + 2)) (A093560 n)).toNat

end

end A133569.P12492372311579670914

/-!
# A133570: "Exact" continued fraction of e.

The programs for A133570, the canonical program `A133570.P15633273170178896831` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133570 has offset 0).

The definition of A133570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133570.P15633273170178896831

`ogf((3-4x+8x^2-3x^3+5x^4-x^5)/(1+2x^2+x^4))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133570

/-- `ogf((3-4x+8x^2-3x^3+5x^4-x^5)/(1+2x^2+x^4))` -/
def P15633273170178896831.Spec : Prop :=
  ∀ n, P15633273170178896831.a n = A133570 n

theorem P15633273170178896831.correct : P15633273170178896831.Spec := by
  intro n
  simp only [A133570]

end A133570

/-!
# A133571: Triangle read by rows, A007318 * A133080 + A133080 * A007318 - A007318, as infinite lower triangular matrices.

The programs for A133571, there is no canonical definition to state claims against.
-/

/-! ## A133571.P8571117573662873297

`A133087(n)+A133084(n+1)-A007318(n)`
-/

namespace A133571.P8571117573662873297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133087 n + A133084 (n + 1) - A007318 n

end

end A133571.P8571117573662873297

/-!
# A133572: Row sums of triangle A133571.

The programs for A133572, the canonical program `A133572.P12878525106243833995` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133572 has offset 1).

The definition of A133572 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A133572.P12878525106243833995

`ogf((1+4x+2x^2)/(1-4x^2))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133572

/-- `ogf((1+4x+2x^2)/(1-4x^2))` -/
def P12878525106243833995.Spec : Prop :=
  ∀ n, P12878525106243833995.a n = A133572 (n + 1)

theorem P12878525106243833995.correct : P12878525106243833995.Spec := by
  intro n
  simp only [A133572, Nat.add_sub_cancel]

end A133572

/-! ## A133572.P4081310523660574841

`4*a(n-2)` with `a(0)=1, a(1)=4, a(2)=6`
-/

namespace A133572.P4081310523660574841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4, 6] fun n a =>
  4 * a (n - 2)

end

end A133572.P4081310523660574841

namespace A133572

/-- `4*a(n-2)` -/
def P4081310523660574841.Spec : Prop :=
  ∀ n, (P4081310523660574841.a n : ℤ) = A133572 (n + 1)

end A133572

/-! ## A133572.P2841835851594846683

`a(n-2)/(1/2)²` with `a(0)=1, a(1)=4, a(2)=6`
-/

namespace A133572.P2841835851594846683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4, 6] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2

end

end A133572.P2841835851594846683

namespace A133572

/-- `a(n-2)/(1/2)²` -/
def P2841835851594846683.Spec : Prop :=
  ∀ n, P2841835851594846683.a n = (A133572 (n + 1) : ℚ)

end A133572

/-! ## A133572.P15626338579696467049

`floor(2^or(1, n-1)+2^n)`
-/

namespace A133572.P15626338579696467049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 : ℚ) ^ (Int.lor 1 ((n : ℤ) - 1) : ℤ) + (2 ^ n : ℚ)⌋

end

end A133572.P15626338579696467049

namespace A133572

/-- `floor(2^or(1, n-1)+2^n)` -/
def P15626338579696467049.Spec : Prop :=
  ∀ n, P15626338579696467049.a n = A133572 (n + 1)

end A133572

/-! ## A133572.P3779721402591782430

`2^(n+1)-A199573(n)`
-/

namespace A133572.P3779721402591782430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A199573 n

end

end A133572.P3779721402591782430

namespace A133572

/-- `2^(n+1)-A199573(n)` -/
def P3779721402591782430.Spec : Prop :=
  ∀ n, P3779721402591782430.a n = A133572 (n + 1)

end A133572

/-! ## A133572.P8920158879031980545

`A029744(comp[or(2, n)-1]+1)`
-/

namespace A133572.P8920158879031980545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A133572.P8920158879031980545

namespace A133572

/-- `A029744(comp[or(2, n)-1]+1)` -/
def P8920158879031980545.Spec : Prop :=
  ∀ n, P8920158879031980545.a n = A133572 (n + 1)

end A133572

/-! ## A133572.P8113347329614265974

`A029744(comp[comp[or(2, n)]+1]+1)`
-/

namespace A133572.P8113347329614265974
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A133572.P8113347329614265974

namespace A133572

/-- `A029744(comp[comp[or(2, n)]+1]+1)` -/
def P8113347329614265974.Spec : Prop :=
  ∀ n, P8113347329614265974.a n = A133572 (n + 1)

end A133572

/-! ## A133572.P1148871262496850258

`A029744(char[Δ[n²]]+2*n+1)`
-/

namespace A133572.P1148871262496850258
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2 * n + 1)

end

end A133572.P1148871262496850258

namespace A133572

/-- `A029744(char[Δ[n²]]+2*n+1)` -/
def P1148871262496850258.Spec : Prop :=
  ∀ n, P1148871262496850258.a n = A133572 (n + 1)

end A133572

/-! ## A133572.P2664036777774420184

`or(a(n-1), A266550(n+2))+1` with `a(0)=1`
-/

namespace A133572.P2664036777774420184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (a (n - 1)) (A266550 (n + 2)) + 1

end

end A133572.P2664036777774420184

namespace A133572

/-- `or(a(n-1), A266550(n+2))+1` -/
def P2664036777774420184.Spec : Prop :=
  ∀ n, P2664036777774420184.a n = A133572 (n + 1)

end A133572

/-! ## A133572.P9776138999741944009

`(A026741(n)/(abs(1-n)+1)+1)*2^n`
-/

namespace A133572.P9776138999741944009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A026741 n : ℚ) / (|1 - (n : ℤ)| + 1 : ℚ) + 1) * (2 ^ n : ℚ)

end

end A133572.P9776138999741944009

namespace A133572

/-- `(A026741(n)/(abs(1-n)+1)+1)*2^n` -/
def P9776138999741944009.Spec : Prop :=
  ∀ n, P9776138999741944009.a n = (A133572 (n + 1) : ℚ)

end A133572

/-! ## A133572.P4180027107417843015

`A131577(n)+A084221(n)`
-/

namespace A133572.P4180027107417843015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + A084221 n

end

end A133572.P4180027107417843015

namespace A133572

/-- `A131577(n)+A084221(n)` -/
def P4180027107417843015.Spec : Prop :=
  ∀ n, P4180027107417843015.a n = A133572 (n + 1)

end A133572

/-! ## A133572.P10899216604851719948

`A140252(n)+A083318(n)`
-/

namespace A133572.P10899216604851719948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140252 n + A083318 n

end

end A133572.P10899216604851719948

namespace A133572

/-- `A140252(n)+A083318(n)` -/
def P10899216604851719948.Spec : Prop :=
  ∀ n, P10899216604851719948.a n = A133572 (n + 1)

end A133572

/-! ## A133572.P14672621634283228450

`A158302(n)+A155559(n)`
-/

namespace A133572.P14672621634283228450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158302 n + A155559 n

end

end A133572.P14672621634283228450

namespace A133572

/-- `A158302(n)+A155559(n)` -/
def P14672621634283228450.Spec : Prop :=
  ∀ n, P14672621634283228450.a n = A133572 (n + 1)

end A133572

/-! ## A133572.P10723832407347260924

`A290662(n)+A057427(n)`
-/

namespace A133572.P10723832407347260924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290662 n + A057427 n

end

end A133572.P10723832407347260924

namespace A133572

/-- `A290662(n)+A057427(n)` -/
def P10723832407347260924.Spec : Prop :=
  ∀ n, P10723832407347260924.a n = A133572 (n + 1)

end A133572

/-! ## A133572.P11035416703338826782

`A283642(n)+A084183(n)`
-/

namespace A133572.P11035416703338826782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 n + A084183 n

end

end A133572.P11035416703338826782

namespace A133572

/-- `A283642(n)+A084183(n)` -/
def P11035416703338826782.Spec : Prop :=
  ∀ n, P11035416703338826782.a n = A133572 (n + 1)

end A133572

/-! ## A133572.P18220949573684353289

`A290662(n)-A057428(n)`
-/

namespace A133572.P18220949573684353289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290662 n - A057428 n

end

end A133572.P18220949573684353289

namespace A133572

/-- `A290662(n)-A057428(n)` -/
def P18220949573684353289.Spec : Prop :=
  ∀ n, P18220949573684353289.a n = A133572 (n + 1)

end A133572

/-! ## A133572.P15886083937937250500

`A011782(n)*A103947(n)`
-/

namespace A133572.P15886083937937250500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A103947 n

end

end A133572.P15886083937937250500

namespace A133572

/-- `A011782(n)*A103947(n)` -/
def P15886083937937250500.Spec : Prop :=
  ∀ n, P15886083937937250500.a n = A133572 (n + 1)

end A133572

/-! ## A133572.P10029909078785189833

`A000034(n)*A122756(n)`
-/

namespace A133572.P10029909078785189833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A122756 n

end

end A133572.P10029909078785189833

namespace A133572

/-- `A000034(n)*A122756(n)` -/
def P10029909078785189833.Spec : Prop :=
  ∀ n, P10029909078785189833.a n = A133572 (n + 1)

end A133572

/-! ## A133572.P12717861599390132785

`A074323(n)*A143095(n)`
-/

namespace A133572.P12717861599390132785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 n * A143095 n

end

end A133572.P12717861599390132785

namespace A133572

/-- `A074323(n)*A143095(n)` -/
def P12717861599390132785.Spec : Prop :=
  ∀ n, P12717861599390132785.a n = A133572 (n + 1)

end A133572

/-!
# A133573: Expansion of ( 5 * phi(-q^5)^2 - phi(-q)^2 ) / 4 in powers of q where phi() is a Ramanujan theta function.

The programs for A133573, there is no canonical definition to state claims against.
-/

/-! ## A133573.P14035073724833196502

`(-1)^n*A133574(n)`
-/

namespace A133573.P14035073724833196502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A133574 n

end

end A133573.P14035073724833196502

/-! ## A133573.P8365630942522476364

`A133574(n)*A309873(n+1)`
-/

namespace A133573.P8365630942522476364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133574 n * A309873 (n + 1)

end

end A133573.P8365630942522476364

/-! ## A133573.P3453745641986936666

`A133574(n)/A133574(Δ[or(1, n)])`
-/

namespace A133573.P3453745641986936666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133574 n : ℚ) / (A133574 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ)

end

end A133573.P3453745641986936666

/-! ## A133573.P1871895538617646986

`A133574(n)/A133574(Δ[A004526(n)])`
-/

namespace A133573.P1871895538617646986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133574 n : ℚ) / (A133574 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A133573.P1871895538617646986

/-! ## A133573.P2570385924806379854

`A133574(n)/A057079(3*n+2)`
-/

namespace A133573.P2570385924806379854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133574 n : ℚ) / (A057079 (3 * n + 2) : ℚ)

end

end A133573.P2570385924806379854

/-! ## A133573.P5178168922388565975

`A133574(n)/A010815(A001318(2*(n+2)))`
-/

namespace A133573.P5178168922388565975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133574 n : ℚ) / (A010815 (A001318 (2 * (n + 2))).toNat : ℚ)

end

end A133573.P5178168922388565975

/-! ## A133573.P2549132418406600395

`A133574(n)*A143621(A016742(n))`
-/

namespace A133573.P2549132418406600395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133574 n * A143621 (A016742 n).toNat

end

end A133573.P2549132418406600395

/-!
# A133574: Expansion of (5 * phi(q^5)^2 - phi(q)^2) / 4 in powers of q where phi() is a Ramanujan theta function.

The programs for A133574, there is no canonical definition to state claims against.
-/

/-! ## A133574.P9736093440570885382

`(-1)^n*A133573(n)`
-/

namespace A133574.P9736093440570885382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A133573 n

end

end A133574.P9736093440570885382

/-! ## A133574.P5097248626173780974

`A133573(n)*A309873(n+1)`
-/

namespace A133574.P5097248626173780974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133573 n * A309873 (n + 1)

end

end A133574.P5097248626173780974

/-! ## A133574.P12517679805880253188

`A133573(n)/(A004442(n)-n)`
-/

namespace A133574.P12517679805880253188
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133573 n : ℚ) / (A004442 n - (n : ℤ) : ℚ)

end

end A133574.P12517679805880253188

/-! ## A133574.P6037011766649712180

`A133573(n)/A195679(n+2)`
-/

namespace A133574.P6037011766649712180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133573 n : ℚ) / (A195679 (n + 2) : ℚ)

end

end A133574.P6037011766649712180

/-! ## A133574.P1189184452236898108

`A133573(A109043(n))`
-/

namespace A133574.P1189184452236898108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133573 (A109043 n).toNat

end

end A133574.P1189184452236898108

/-! ## A133574.P7386271159531309036

`A133573(2*n)`
-/

namespace A133574.P7386271159531309036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133573 (2 * n)

end

end A133574.P7386271159531309036

/-! ## A133574.P11852217084732735121

`A133573(n+n)%A058331(n+1)`
-/

namespace A133574.P11852217084732735121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133573 (n + n)) (A058331 (n + 1))

end

end A133574.P11852217084732735121

/-! ## A133574.P14744142683966061864

`or(A000007(n), A133573(A016813(n)-1))`
-/

namespace A133574.P14744142683966061864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A133573 (A016813 n - 1).toNat)

end

end A133574.P14744142683966061864

/-!
# A133576: Numbers which are sums of consecutive composites.

The programs for A133576, there is no canonical definition to state claims against.
-/

/-! ## A133576.P8305928646373037046

`comp[A140464(n+1)-1]+1`
-/

namespace A133576.P8305928646373037046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140464 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A133576.P8305928646373037046

/-! ## A133576.P1732380199538603031

`comp[A037174(n+1)-2]+2`
-/

namespace A133576.P1732380199538603031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037174 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A133576.P1732380199538603031

/-! ## A133576.P3860770128676869065

`eq[char[A140464(n+1)], A000007(n)]`
-/

namespace A133576.P3860770128676869065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140464 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A133576.P3860770128676869065

/-! ## A133576.P12440904957239292525

`eq[char[A140464(n+1)], A000038(n)]`
-/

namespace A133576.P12440904957239292525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140464 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A133576.P12440904957239292525

/-! ## A133576.P9287634785105883908

`comp[A140464(n+1)*A334946(n+1)]`
-/

namespace A133576.P9287634785105883908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140464 (n + 1) * A334946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A133576.P9287634785105883908

/-! ## A133576.P16791406585665447312

`eq[char[A037174(n+1)], A019590(n+1)]`
-/

namespace A133576.P16791406585665447312
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037174 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A133576.P16791406585665447312

/-! ## A133576.P2048025176309919887

`eq[A008683((n+1)*(n+1)), char[A140464(n+1)]]`
-/

namespace A133576.P2048025176309919887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140464 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A133576.P2048025176309919887

/-!
# A133577: a(n) = a(n-1) + 10*a(n-2) for n >= 2, a(0)=1, a(1)=2.

The programs for A133577, the canonical program `A133577.P14528442997950873446` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133577 has offset 0).

The definition of A133577 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+10*a(n-2)` (program `A133577.P14528442997950873446`, by `A133577.P14528442997950873446.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133577.P7235416350820391046

`ogf((1+x)/(1-x-10x^2))`
-/

namespace A133577.P7235416350820391046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -1, -10] n

end

end A133577.P7235416350820391046

namespace A133577

/-- `ogf((1+x)/(1-x-10x^2))` -/
def P7235416350820391046.Spec : Prop :=
  ∀ n, P7235416350820391046.a n = A133577 n

end A133577

/-! ## A133577.P14528442997950873446

`a(n-1)+10*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133577

/-- `a(n-1)+10*a(n-2)` -/
def P14528442997950873446.Spec : Prop :=
  ∀ n, (P14528442997950873446.a n : ℤ) = A133577 n

theorem P14528442997950873446.correct : P14528442997950873446.Spec := by
  intro n
  simp only [A133577]

end A133577

/-! ## A133577.P15869797312120861732

`a(n-1)-10*floor(-a(n-2))` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A133577.P15869797312120861732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - 10 * (-a (n - 2))

end

end A133577.P15869797312120861732

namespace A133577

/-- `a(n-1)-10*floor(-a(n-2))` -/
def P15869797312120861732.Spec : Prop :=
  ∀ n, P15869797312120861732.a n = A133577 n

end A133577

/-! ## A133577.P3794721343196428156

`a(n-1)-10*ceil(-a(n-2))` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A133577.P3794721343196428156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - 10 * (-a (n - 2))

end

end A133577.P3794721343196428156

namespace A133577

/-- `a(n-1)-10*ceil(-a(n-2))` -/
def P3794721343196428156.Spec : Prop :=
  ∀ n, P3794721343196428156.a n = A133577 n

end A133577

/-! ## A133577.P13460209784596276323

`a(n-1)-10*round(-a(n-2))` with `a(0)=1, a(1)=2`

`round` is left out, it is the identity on integers.
-/

namespace A133577.P13460209784596276323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - 10 * (-a (n - 2))

end

end A133577.P13460209784596276323

namespace A133577

/-- `a(n-1)-10*round(-a(n-2))` -/
def P13460209784596276323.Spec : Prop :=
  ∀ n, P13460209784596276323.a n = A133577 n

end A133577

/-! ## A133577.P14244456225878257210

`a(n-1)+lcm(5, a(n-2)+a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A133577.P14244456225878257210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + Nat.lcm 5 (a (n - 2) + a (n - 2))

end

end A133577.P14244456225878257210

namespace A133577

/-- `a(n-1)+lcm(5, a(n-2)+a(n-2))` -/
def P14244456225878257210.Spec : Prop :=
  ∀ n, (P14244456225878257210.a n : ℤ) = A133577 n

end A133577

/-!
# A133578: Let p = prime(n); then a(n) = (sum of prime factors of p+1) + (sum of prime factors of p-1). a(1) = 4 by convention.

The programs for A133578, the canonical program `A133578.P2891795595979798693` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133578 has offset 1).

The definition of A133578 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133578.P2891795595979798693

`2*A210934(n+1)-A133685(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A133578

/-- `2*A210934(n+1)-A133685(n+1)` -/
def P2891795595979798693.Spec : Prop :=
  ∀ n, P2891795595979798693.a n = A133578 (n + 1)

theorem P2891795595979798693.correct : P2891795595979798693.Spec := by
  intro n
  simp only [A133578, Nat.add_sub_cancel]

end A133578

/-! ## A133578.P11838207338158892003

`A210934(n+1)+A028310(A210936(n+1))`
-/

namespace A133578.P11838207338158892003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210934 (n + 1) + A028310 (A210936 (n + 1)).toNat

end

end A133578.P11838207338158892003

namespace A133578

/-- `A210934(n+1)+A028310(A210936(n+1))` -/
def P11838207338158892003.Spec : Prop :=
  ∀ n, P11838207338158892003.a n = A133578 (n + 1)

end A133578

/-! ## A133578.P6087590462319935703

`A004277(A210934(n+1))-A133685(n+1)`
-/

namespace A133578.P6087590462319935703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A210934 (n + 1)).toNat - A133685 (n + 1)

end

end A133578.P6087590462319935703

namespace A133578

/-- `A004277(A210934(n+1))-A133685(n+1)` -/
def P6087590462319935703.Spec : Prop :=
  ∀ n, P6087590462319935703.a n = A133578 (n + 1)

end A133578

/-! ## A133578.P17623751939068133185

`2*A001414(A008864(n+1))-A133685(n+1)`
-/

namespace A133578.P17623751939068133185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001414 (A008864 (n + 1)).toNat - A133685 (n + 1)

end

end A133578.P17623751939068133185

namespace A133578

/-- `2*A001414(A008864(n+1))-A133685(n+1)` -/
def P17623751939068133185.Spec : Prop :=
  ∀ n, P17623751939068133185.a n = A133578 (n + 1)

end A133578

/-! ## A133578.P16669289919203560072

`A210934(n+1)+A210936(n+1)+A000007(n)`
-/

namespace A133578.P16669289919203560072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210934 (n + 1) + (A210936 (n + 1) + A000007 n)

end

end A133578.P16669289919203560072

namespace A133578

/-- `A210934(n+1)+A210936(n+1)+A000007(n)` -/
def P16669289919203560072.Spec : Prop :=
  ∀ n, P16669289919203560072.a n = A133578 (n + 1)

end A133578

/-! ## A133578.P8880043533214351182

`2*A001414(A000040(n+1)+1)-A133685(n+1)`
-/

namespace A133578.P8880043533214351182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001414 (A000040 (n + 1) + 1).toNat - A133685 (n + 1)

end

end A133578.P8880043533214351182

namespace A133578

/-- `2*A001414(A000040(n+1)+1)-A133685(n+1)` -/
def P8880043533214351182.Spec : Prop :=
  ∀ n, P8880043533214351182.a n = A133578 (n + 1)

end A133578

/-! ## A133578.P6630122640755274834

`A001414(A084921(n+1))+A000032(C(2, n+2))`
-/

namespace A133578.P6630122640755274834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A084921 (n + 1)).toNat + A000032 (Nat.choose 2 (n + 2))

end

end A133578.P6630122640755274834

namespace A133578

/-- `A001414(A084921(n+1))+A000032(C(2, n+2))` -/
def P6630122640755274834.Spec : Prop :=
  ∀ n, P6630122640755274834.a n = A133578 (n + 1)

end A133578

/-! ## A133578.P7377707696052313301

`A001414(A084921(n+1))+A020639(A004277(n))`
-/

namespace A133578.P7377707696052313301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A084921 (n + 1)).toNat + A020639 (A004277 n).toNat

end

end A133578.P7377707696052313301

namespace A133578

/-- `A001414(A084921(n+1))+A020639(A004277(n))` -/
def P7377707696052313301.Spec : Prop :=
  ∀ n, P7377707696052313301.a n = A133578 (n + 1)

end A133578

/-! ## A133578.P12658106646728821989

`A001414(A084921(n+1))+A020639(A022144(n))`
-/

namespace A133578.P12658106646728821989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A084921 (n + 1)).toNat + A020639 (A022144 n).toNat

end

end A133578.P12658106646728821989

namespace A133578

/-- `A001414(A084921(n+1))+A020639(A022144(n))` -/
def P12658106646728821989.Spec : Prop :=
  ∀ n, P12658106646728821989.a n = A133578 (n + 1)

end A133578

/-! ## A133578.P14201749561678720426

`A001414(A084921(n+1))+A020639(A037225(n))`
-/

namespace A133578.P14201749561678720426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A084921 (n + 1)).toNat + A020639 (A037225 n).toNat

end

end A133578.P14201749561678720426

namespace A133578

/-- `A001414(A084921(n+1))+A020639(A037225(n))` -/
def P14201749561678720426.Spec : Prop :=
  ∀ n, P14201749561678720426.a n = A133578 (n + 1)

end A133578

/-!
# A133579: a(0)=a(1)=1; for n > 1, a(n) = 3*a(n-1) if a(n-1) and n are coprime, otherwise a(n) = a(n-1)/gcd(a(n-1), n).

The programs for A133579, the canonical program `A133579.P16500229085264912069` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133579 has offset 0).

The definition of A133579 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A133579.P6838785784942470241

`3^A253092(n)`
-/

namespace A133579.P6838785784942470241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A253092 n : ℤ)

end

end A133579.P6838785784942470241

namespace A133579

/-- `3^A253092(n)` -/
def P6838785784942470241.Spec : Prop :=
  ∀ n, P6838785784942470241.a n = (A133579 n : ℚ)

end A133579

/-! ## A133579.P16500229085264912069

`A000244(A253092(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A133579

/-- `A000244(A253092(n))` -/
def P16500229085264912069.Spec : Prop :=
  ∀ n, P16500229085264912069.a n = A133579 n

theorem P16500229085264912069.correct : P16500229085264912069.Spec := by
  intro n
  simp only [A133579]

end A133579

/-! ## A133579.P16741820124362713801

`A017913(2*A253092(n))`
-/

namespace A133579.P16741820124362713801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017913 (2 * A253092 n).toNat

end

end A133579.P16741820124362713801

namespace A133579

/-- `A017913(2*A253092(n))` -/
def P16741820124362713801.Spec : Prop :=
  ∀ n, P16741820124362713801.a n = A133579 n

end A133579

/-! ## A133579.P4479248941605198348

`A038754(2*A253092(n))`
-/

namespace A133579.P4479248941605198348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 (2 * A253092 n).toNat

end

end A133579.P4479248941605198348

namespace A133579

/-- `A038754(2*A253092(n))` -/
def P4479248941605198348.Spec : Prop :=
  ∀ n, P4479248941605198348.a n = A133579 n

end A133579

/-! ## A133579.P13022537308028878793

`A108411(2*A253092(n))`
-/

namespace A133579.P13022537308028878793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (2 * A253092 n).toNat

end

end A133579.P13022537308028878793

namespace A133579

/-- `A108411(2*A253092(n))` -/
def P13022537308028878793.Spec : Prop :=
  ∀ n, P13022537308028878793.a n = A133579 n

end A133579

/-! ## A133579.P5402408843973693793

`A258439(2*A253092(n))`
-/

namespace A133579.P5402408843973693793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258439 (2 * A253092 n).toNat

end

end A133579.P5402408843973693793

namespace A133579

/-- `A258439(2*A253092(n))` -/
def P5402408843973693793.Spec : Prop :=
  ∀ n, P5402408843973693793.a n = A133579 n

end A133579

/-! ## A133579.P14370335498587150153

`A108411(A253092(n)+A253092(n)+1)`
-/

namespace A133579.P14370335498587150153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (A253092 n + (A253092 n + 1)).toNat

end

end A133579.P14370335498587150153

namespace A133579

/-- `A108411(A253092(n)+A253092(n)+1)` -/
def P14370335498587150153.Spec : Prop :=
  ∀ n, P14370335498587150153.a n = A133579 n

end A133579

/-!
# A133580: a(0)=a(1)=1; for n>1, a(n) = 2*a(n-1) + 1 if a(n-1) and n are coprime, otherwise a(n) = a(n-1)/gcd(a(n-1),n).

The programs for A133580, there is no canonical definition to state claims against.
-/

/-! ## A133580.P1589472953588393773

`A290649(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3, a(3)=1`
-/

namespace A133580.P1589472953588393773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 1] fun n a =>
  A290649 (a (n - 1)).toNat

end

end A133580.P1589472953588393773

/-! ## A133580.P2322554353277887977

`A086839(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3, a(3)=1, a(4)=3`
-/

namespace A133580.P2322554353277887977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 1, 3] fun n a =>
  A086839 (a (n - 1)).toNat

end

end A133580.P2322554353277887977

/-! ## A133580.P15777759445596246802

`∑{d}[A349346(floor(4*3^(n-1))), #]`
-/

namespace A133580.P15777759445596246802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349346 ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A133580.P15777759445596246802

/-! ## A133580.P51233040447714296

`A134444(A084508(n))`
-/

namespace A133580.P51233040447714296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134444 (A084508 n).toNat

end

end A133580.P51233040447714296

/-! ## A133580.P7663229467240676534

`A104568(A241892(n))`
-/

namespace A133580.P7663229467240676534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104568 (A241892 n).toNat

end

end A133580.P7663229467240676534

/-!
# A133581: (k^2)-th k-smooth number for k = prime(n).

The programs for A133581, there is no canonical definition to state claims against.
-/

/-! ## A133581.P13284994043312632224

`A282197(n+3)+A080907(A001142(n))`
-/

namespace A133581.P13284994043312632224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282197 (n + 3) + A080907 (A001142 n).toNat

end

end A133581.P13284994043312632224

/-!
# A133582: a(n) is found from a(n-1) by dividing by D-1 and multiplying by D, where D is the smallest number that is not a divisor of a(n-1).

The programs for A133582, there is no canonical definition to state claims against.
-/

/-! ## A133582.P655640140326432166

`A350509(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A133582.P655640140326432166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A350509 (a (n - 1)).toNat + a (n - 1)

end

end A133582.P655640140326432166

/-! ## A133582.P11861019419761508783

`record[A052330(n)%A117321(n+1)]`
-/

namespace A133582.P11861019419761508783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052330 n) (A117321 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133582.P11861019419761508783

/-! ## A133582.P717404839869120103

`record[gcd(A052330(n), A339170(n))]`
-/

namespace A133582.P717404839869120103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052330 n) (A339170 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133582.P717404839869120103

/-! ## A133582.P1420341439076065369

`A018293(lt[A326622(n+4), 2])`
-/

namespace A133582.P1420341439076065369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326622 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018293 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A133582.P1420341439076065369

/-! ## A133582.P7913014699365537057

`record[gcd(A339170(n)², A344535(n))]`
-/

namespace A133582.P7913014699365537057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A339170 n ^ 2) (A344535 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133582.P7913014699365537057

/-!
# A133585: Expansion of x - x^2*(2*x+1)*(x^2-2) / ( (x^2-x-1)*(x^2+x-1) ).

The programs for A133585, the canonical program `A133585.P6048927223613832197` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133585 has offset 1).

The definition of A133585 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+x^2-x^3-x^4)/(1-3x^2+x^4))` (program `A133585.P6048927223613832197`, by `A133585.P6048927223613832197.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133585.P6048927223613832197

`ogf((1+2x+x^2-x^3-x^4)/(1-3x^2+x^4))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133585

/-- `ogf((1+2x+x^2-x^3-x^4)/(1-3x^2+x^4))` -/
def P6048927223613832197.Spec : Prop :=
  ∀ n, P6048927223613832197.a n = A133585 (n + 1)

theorem P6048927223613832197.correct : P6048927223613832197.Spec := by
  intro n
  simp only [A133585, Nat.add_sub_cancel]

end A133585

/-! ## A133585.P6286980513044373582

`floor(ϕ²*a(n-2))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A133585.P6286980513044373582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  ⌊Real.goldenRatio ^ 2 * (a (n - 2) : ℝ)⌋

end

end A133585.P6286980513044373582

namespace A133585

/-- `floor(ϕ²*a(n-2))` -/
def P6286980513044373582.Spec : Prop :=
  ∀ n, P6286980513044373582.a n = A133585 (n + 1)

end A133585

/-! ## A133585.P14950893215130069909

`round(ϕ²*a(n-2))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A133585.P14950893215130069909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 * (a (n - 2) : ℝ))

end

end A133585.P14950893215130069909

namespace A133585

/-- `round(ϕ²*a(n-2))` -/
def P14950893215130069909.Spec : Prop :=
  ∀ n, P14950893215130069909.a n = A133585 (n + 1)

end A133585

/-! ## A133585.P8978124650635262092

`record[a(n-4)-a(n-2)]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=0`
-/

namespace A133585.P8978124650635262092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 0, 0] fun n f1 =>
  f1 (n - 4) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133585.P8978124650635262092

namespace A133585

/-- `record[a(n-4)-a(n-2)]` -/
def P8978124650635262092.Spec : Prop :=
  ∀ n, P8978124650635262092.a n = A133585 (n + 1)

end A133585

/-! ## A133585.P8417785285786264250

`∑[3*a(n-2)-a(n-4)]` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1, a(4)=5, a(5)=3`
-/

namespace A133585.P8417785285786264250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 1, 5, 3] fun n f1 =>
  3 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133585.P8417785285786264250

namespace A133585

/-- `∑[3*a(n-2)-a(n-4)]` -/
def P8417785285786264250.Spec : Prop :=
  ∀ n, P8417785285786264250.a n = A133585 (n + 1)

end A133585

/-! ## A133585.P17641813051738823294

`∑[A000045(char[1]+xor(1, n))]`
-/

namespace A133585.P17641813051738823294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((if ∃ j, f2 j = n then 1 else 0) + Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133585.P17641813051738823294

namespace A133585

/-- `∑[A000045(char[1]+xor(1, n))]` -/
def P17641813051738823294.Spec : Prop :=
  ∀ n, P17641813051738823294.a n = A133585 (n + 1)

end A133585

/-! ## A133585.P15065857182667824959

`∑[A000045(xor(1, n-char[1]))]`
-/

namespace A133585.P15065857182667824959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.xor 1 ((n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133585.P15065857182667824959

namespace A133585

/-- `∑[A000045(xor(1, n-char[1]))]` -/
def P15065857182667824959.Spec : Prop :=
  ∀ n, P15065857182667824959.a n = A133585 (n + 1)

end A133585

/-! ## A133585.P2163441973582829991

`A108362(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A133585.P2163441973582829991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A108362 n + a (n - 1)

end

end A133585.P2163441973582829991

namespace A133585

/-- `A108362(n)+a(n-1)` -/
def P2163441973582829991.Spec : Prop :=
  ∀ n, P2163441973582829991.a n = A133585 (n + 1)

end A133585

/-! ## A133585.P8131659411434541431

`∑[A000045(or(1, n)-char[2*n+3])]`
-/

namespace A133585.P8131659411434541431
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.lor 1 n - (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133585.P8131659411434541431

namespace A133585

/-- `∑[A000045(or(1, n)-char[2*n+3])]` -/
def P8131659411434541431.Spec : Prop :=
  ∀ n, P8131659411434541431.a n = A133585 (n + 1)

end A133585

/-! ## A133585.P16574836879738504375

`∑[A000045(ceil((or(1, n)²+1)/(n+2)))]`
-/

namespace A133585.P16574836879738504375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ⌈(Nat.lor 1 n ^ 2 + 1 : ℚ) / (n + 2 : ℚ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133585.P16574836879738504375

namespace A133585

/-- `∑[A000045(ceil((or(1, n)²+1)/(n+2)))]` -/
def P16574836879738504375.Spec : Prop :=
  ∀ n, P16574836879738504375.a n = A133585 (n + 1)

end A133585

/-! ## A133585.P10030657764006515469

`A071679(n+1)-A094966(n)`
-/

namespace A133585.P10030657764006515469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 1) - A094966 n

end

end A133585.P10030657764006515469

namespace A133585

/-- `A071679(n+1)-A094966(n)` -/
def P10030657764006515469.Spec : Prop :=
  ∀ n, P10030657764006515469.a n = A133585 (n + 1)

end A133585

/-! ## A133585.P8851682949712531068

`A040001(n)*A094967(n+1)`
-/

namespace A133585.P8851682949712531068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n * A094967 (n + 1)

end

end A133585.P8851682949712531068

namespace A133585

/-- `A040001(n)*A094967(n+1)` -/
def P8851682949712531068.Spec : Prop :=
  ∀ n, P8851682949712531068.a n = A133585 (n + 1)

end A133585

/-! ## A133585.P11780551599423518307

`record[A337879(2*(n+1))+Δ[A337879(2*n+1)]]`
-/

namespace A133585.P11780551599423518307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337879 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337879 (2 * (n + 1)) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A133585.P11780551599423518307

namespace A133585

/-- `record[A337879(2*(n+1))+Δ[A337879(2*n+1)]]` -/
def P11780551599423518307.Spec : Prop :=
  ∀ n, P11780551599423518307.a n = A133585 (n + 1)

end A133585

/-! ## A133585.P8761293337809585014

`A000045(n+1)+a(2*A002265(2*n)-1)` with `a(0)=1, a(1)=2`
-/

namespace A133585.P8761293337809585014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000045 (n + 1) + a (2 * A002265 (2 * n) - 1).toNat

end

end A133585.P8761293337809585014

namespace A133585

/-- `A000045(n+1)+a(2*A002265(2*n)-1)` -/
def P8761293337809585014.Spec : Prop :=
  ∀ n, P8761293337809585014.a n = A133585 (n + 1)

end A133585

/-! ## A133585.P8797001303014985487

`A014963(A318658(n+1))*A094967(n+1)`
-/

namespace A133585.P8797001303014985487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A318658 (n + 1)).toNat * A094967 (n + 1)

end

end A133585.P8797001303014985487

namespace A133585

/-- `A014963(A318658(n+1))*A094967(n+1)` -/
def P8797001303014985487.Spec : Prop :=
  ∀ n, P8797001303014985487.a n = A133585 (n + 1)

end A133585

/-! ## A133585.P16856337610582027903

`A000032(n+2)-floor(ϕ*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A133585.P16856337610582027903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000032 (n + 2) - ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋

end

end A133585.P16856337610582027903

namespace A133585

/-- `A000032(n+2)-floor(ϕ*a(n-1))` -/
def P16856337610582027903.Spec : Prop :=
  ∀ n, P16856337610582027903.a n = A133585 (n + 1)

end A133585

/-! ## A133585.P3715939878598226029

`∪[A048575(n), A055819(n)]`
-/

namespace A133585.P3715939878598226029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055819 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133585.P3715939878598226029

namespace A133585

/-- `∪[A048575(n), A055819(n)]` -/
def P3715939878598226029.Spec : Prop :=
  ∀ n, (P3715939878598226029.a n : ℤ) = A133585 (n + 1)

end A133585

/-! ## A133585.P710641421717084093

`∪[A048575(n), A126358(n)]`
-/

namespace A133585.P710641421717084093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126358 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133585.P710641421717084093

namespace A133585

/-- `∪[A048575(n), A126358(n)]` -/
def P710641421717084093.Spec : Prop :=
  ∀ n, (P710641421717084093.a n : ℤ) = A133585 (n + 1)

end A133585

/-! ## A133585.P372061559385472090

`∪[A055819(n), A122367(n)]`
-/

namespace A133585.P372061559385472090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055819 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133585.P372061559385472090

namespace A133585

/-- `∪[A055819(n), A122367(n)]` -/
def P372061559385472090.Spec : Prop :=
  ∀ n, (P372061559385472090.a n : ℤ) = A133585 (n + 1)

end A133585

/-! ## A133585.P1908610338011820845

`∪[A122367(n), A126358(n)]`
-/

namespace A133585.P1908610338011820845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126358 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A133585.P1908610338011820845

namespace A133585

/-- `∪[A122367(n), A126358(n)]` -/
def P1908610338011820845.Spec : Prop :=
  ∀ n, (P1908610338011820845.a n : ℤ) = A133585 (n + 1)

end A133585

/-!
# A133586: Expansion of x*(1+2*x)/( (x^2-x-1)*(x^2+x-1) ).

The programs for A133586, the canonical program `A133586.P4276307540648654568` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133586 has offset 1).

The definition of A133586 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1-3x^2+x^4))` (program `A133586.P4276307540648654568`, by `A133586.P4276307540648654568.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133586.P4276307540648654568

`ogf((1+2x)/(1-3x^2+x^4))`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133586

/-- `ogf((1+2x)/(1-3x^2+x^4))` -/
def P4276307540648654568.Spec : Prop :=
  ∀ n, P4276307540648654568.a n = A133586 (n + 1)

theorem P4276307540648654568.correct : P4276307540648654568.Spec := by
  intro n
  simp only [A133586, Nat.add_sub_cancel]

end A133586

/-! ## A133586.P15226540170135718035

`ceil(ϕ²*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A133586.P15226540170135718035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈Real.goldenRatio ^ 2 * (a (n - 2) : ℝ)⌉

end

end A133586.P15226540170135718035

namespace A133586

/-- `ceil(ϕ²*a(n-2))` -/
def P15226540170135718035.Spec : Prop :=
  ∀ n, P15226540170135718035.a n = A133586 (n + 1)

end A133586

/-! ## A133586.P14762773071149680966

`ceil(a(n-2)/(2-ϕ))` with `a(0)=1, a(1)=2`
-/

namespace A133586.P14762773071149680966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈(a (n - 2) : ℝ) / (2 - Real.goldenRatio)⌉

end

end A133586.P14762773071149680966

namespace A133586

/-- `ceil(a(n-2)/(2-ϕ))` -/
def P14762773071149680966.Spec : Prop :=
  ∀ n, P14762773071149680966.a n = A133586 (n + 1)

end A133586

/-! ## A133586.P4667269966050510666

`ceil(ϕ*ϕ*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A133586.P4667269966050510666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌈Real.goldenRatio * (Real.goldenRatio * (a (n - 2) : ℝ))⌉

end

end A133586.P4667269966050510666

namespace A133586

/-- `ceil(ϕ*ϕ*a(n-2))` -/
def P4667269966050510666.Spec : Prop :=
  ∀ n, P4667269966050510666.a n = A133586 (n + 1)

end A133586

/-! ## A133586.P15926953716816269968

`∑[3*a(n-2)-a(n-4)]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A133586.P15926953716816269968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 3] fun n f1 =>
  3 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133586.P15926953716816269968

namespace A133586

/-- `∑[3*a(n-2)-a(n-4)]` -/
def P15926953716816269968.Spec : Prop :=
  ∀ n, P15926953716816269968.a n = A133586 (n + 1)

end A133586

/-! ## A133586.P17966850273343024822

`∑[A098054(2*(n+1))]`
-/

namespace A133586.P17966850273343024822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098054 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133586.P17966850273343024822

namespace A133586

/-- `∑[A098054(2*(n+1))]` -/
def P17966850273343024822.Spec : Prop :=
  ∀ n, P17966850273343024822.a n = A133586 (n + 1)

end A133586

/-! ## A133586.P9649625986343869443

`∑[A212804(xor(1, n+1))]`
-/

namespace A133586.P9649625986343869443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (Nat.xor 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133586.P9649625986343869443

namespace A133586

/-- `∑[A212804(xor(1, n+1))]` -/
def P9649625986343869443.Spec : Prop :=
  ∀ n, P9649625986343869443.a n = A133586 (n + 1)

end A133586

/-! ## A133586.P7532838793087546804

`A135992(n)+a(n-1)` with `a(0)=1`
-/

namespace A133586.P7532838793087546804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135992 n + a (n - 1)

end

end A133586.P7532838793087546804

namespace A133586

/-- `A135992(n)+a(n-1)` -/
def P7532838793087546804.Spec : Prop :=
  ∀ n, P7532838793087546804.a n = A133586 (n + 1)

end A133586

/-! ## A133586.P13842622518704092157

`A133585(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A133586.P13842622518704092157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A133585 n + a (n - 2)

end

end A133586.P13842622518704092157

namespace A133586

/-- `A133585(n)+a(n-2)` -/
def P13842622518704092157.Spec : Prop :=
  ∀ n, P13842622518704092157.a n = A133586 (n + 1)

end A133586

/-! ## A133586.P1816519227250819182

`∑[A000045(abs((-1)^n-n))]`
-/

namespace A133586.P1816519227250819182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |(-1) ^ n - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133586.P1816519227250819182

namespace A133586

/-- `∑[A000045(abs((-1)^n-n))]` -/
def P1816519227250819182.Spec : Prop :=
  ∀ n, P1816519227250819182.a n = A133586 (n + 1)

end A133586

/-! ## A133586.P1065572247751293268

`∑[A001611(abs(2*n-xor(1, n)))-1]`
-/

namespace A133586.P1065572247751293268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 |(2 * n : ℤ) - (Nat.xor 1 n : ℤ)|.toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133586.P1065572247751293268

namespace A133586

/-- `∑[A001611(abs(2*n-xor(1, n)))-1]` -/
def P1065572247751293268.Spec : Prop :=
  ∀ n, P1065572247751293268.a n = A133586 (n + 1)

end A133586

/-! ## A133586.P9514842930544835933

`A096748(A014601(n))`
-/

namespace A133586.P9514842930544835933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 (A014601 n).toNat

end

end A133586.P9514842930544835933

namespace A133586

/-- `A096748(A014601(n))` -/
def P9514842930544835933.Spec : Prop :=
  ∀ n, P9514842930544835933.a n = A133586 (n + 1)

end A133586

/-! ## A133586.P17969395671687103275

`A094967(n)+A005013(n)`
-/

namespace A133586.P17969395671687103275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 n + A005013 n

end

end A133586.P17969395671687103275

namespace A133586

/-- `A094967(n)+A005013(n)` -/
def P17969395671687103275.Spec : Prop :=
  ∀ n, P17969395671687103275.a n = A133586 (n + 1)

end A133586

/-! ## A133586.P14231182925556813384

`A094966(n)+∑[A212804(n)]`
-/

namespace A133586.P14231182925556813384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133586.P14231182925556813384

namespace A133586

/-- `A094966(n)+∑[A212804(n)]` -/
def P14231182925556813384.Spec : Prop :=
  ∀ n, P14231182925556813384.a n = A133586 (n + 1)

end A133586

/-! ## A133586.P13904630795198626983

`A094966(n)+A000045(n+1)`
-/

namespace A133586.P13904630795198626983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 n + A000045 (n + 1)

end

end A133586.P13904630795198626983

namespace A133586

/-- `A094966(n)+A000045(n+1)` -/
def P13904630795198626983.Spec : Prop :=
  ∀ n, P13904630795198626983.a n = A133586 (n + 1)

end A133586

/-! ## A133586.P11102308376357932562

`A108362(n+1)+A108362(n)`
-/

namespace A133586.P11102308376357932562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108362 (n + 1) + A108362 n

end

end A133586.P11102308376357932562

namespace A133586

/-- `A108362(n+1)+A108362(n)` -/
def P11102308376357932562.Spec : Prop :=
  ∀ n, P11102308376357932562.a n = A133586 (n + 1)

end A133586

/-! ## A133586.P10098979121093058746

`A292412(n+1)+A000045(n)`
-/

namespace A133586.P10098979121093058746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292412 (n + 1) + A000045 n

end

end A133586.P10098979121093058746

namespace A133586

/-- `A292412(n+1)+A000045(n)` -/
def P10098979121093058746.Spec : Prop :=
  ∀ n, P10098979121093058746.a n = A133586 (n + 1)

end A133586

/-! ## A133586.P15266546509232245807

`∑[A094967(n+1)-A000045(n)]`
-/

namespace A133586.P15266546509232245807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 (n + 1) - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133586.P15266546509232245807

namespace A133586

/-- `∑[A094967(n+1)-A000045(n)]` -/
def P15266546509232245807.Spec : Prop :=
  ∀ n, P15266546509232245807.a n = A133586 (n + 1)

end A133586

/-! ## A133586.P12478229472439123928

`∑[A000045(or(1, n+1))-A000045(n)]`
-/

namespace A133586.P12478229472439123928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.lor 1 (n + 1)) - A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A133586.P12478229472439123928

namespace A133586

/-- `∑[A000045(or(1, n+1))-A000045(n)]` -/
def P12478229472439123928.Spec : Prop :=
  ∀ n, P12478229472439123928.a n = A133586 (n + 1)

end A133586

/-! ## A133586.P2386566089348112421

`A000045(and(1, n)+n)+A000045(n+1)`
-/

namespace A133586.P2386566089348112421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.land 1 n + n) + A000045 (n + 1)

end

end A133586.P2386566089348112421

namespace A133586

/-- `A000045(and(1, n)+n)+A000045(n+1)` -/
def P2386566089348112421.Spec : Prop :=
  ∀ n, P2386566089348112421.a n = A133586 (n + 1)

end A133586

/-!
# A133592: a(n) = 2*a(n-1)+6*a(n-2) for n>=3, a(0)=1, a(1)=2, a(2)=8.

The programs for A133592, the canonical program `A133592.P2520831876001229384` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133592 has offset 0).

The definition of A133592 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+6*a(n-2)` (program `A133592.P2520831876001229384`, by `A133592.P2520831876001229384.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133592.P4073163179577638638

`ogf((1-2x^2)/(1-2x-6x^2))`
-/

namespace A133592.P4073163179577638638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -2] [1, -2, -6] n

end

end A133592.P4073163179577638638

namespace A133592

/-- `ogf((1-2x^2)/(1-2x-6x^2))` -/
def P4073163179577638638.Spec : Prop :=
  ∀ n, P4073163179577638638.a n = A133592 n

end A133592

/-! ## A133592.P2520831876001229384

`2*a(n-1)+6*a(n-2)` with `a(0)=1, a(1)=2, a(2)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133592

/-- `2*a(n-1)+6*a(n-2)` -/
def P2520831876001229384.Spec : Prop :=
  ∀ n, (P2520831876001229384.a n : ℤ) = A133592 n

theorem P2520831876001229384.correct : P2520831876001229384.Spec := by
  intro n
  simp only [A133592]

end A133592

/-! ## A133592.P13738132644058809954

`2*(or(1, 3*a(n-2))-(1-a(n-1)))` with `a(0)=1, a(1)=2`
-/

namespace A133592.P13738132644058809954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * (Int.lor 1 (3 * a (n - 2)) - (1 - a (n - 1)))

end

end A133592.P13738132644058809954

namespace A133592

/-- `2*(or(1, 3*a(n-2))-(1-a(n-1)))` -/
def P13738132644058809954.Spec : Prop :=
  ∀ n, P13738132644058809954.a n = A133592 n

end A133592

/-! ## A133592.P1857863836288704869

`2-2*(1-3*a(n-2)-a(n-1))` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A133592.P1857863836288704869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 8] fun n a =>
  2 - 2 * (1 - 3 * a (n - 2) - a (n - 1))

end

end A133592.P1857863836288704869

namespace A133592

/-- `2-2*(1-3*a(n-2)-a(n-1))` -/
def P1857863836288704869.Spec : Prop :=
  ∀ n, P1857863836288704869.a n = A133592 n

end A133592

/-! ## A133592.P8135899895563906790

`ceil((A083099(n+1)+A083099(n))*2/3)`
-/

namespace A133592.P8135899895563906790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A083099 (n + 1) + A083099 n : ℚ) * ((2 : ℚ) / 3)⌉

end

end A133592.P8135899895563906790

namespace A133592

/-- `ceil((A083099(n+1)+A083099(n))*2/3)` -/
def P8135899895563906790.Spec : Prop :=
  ∀ n, P8135899895563906790.a n = A133592 n

end A133592

/-!
# A133594: a(n) = 3*a(n-1)+12*a(n-2) for n>=3, a(0)=1, a(1)=3, a(2)=18 .

The programs for A133594, the canonical program `A133594.P11153662702442383877` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A133594 has offset 0).

The definition of A133594 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+12*a(n-2)` (program `A133594.P11153662702442383877`, by `A133594.P11153662702442383877.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A133594.P10383697190956907987

`ogf((1-3x^2)/(1-3x-12x^2))`
-/

namespace A133594.P10383697190956907987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3] [1, -3, -12] n

end

end A133594.P10383697190956907987

namespace A133594

/-- `ogf((1-3x^2)/(1-3x-12x^2))` -/
def P10383697190956907987.Spec : Prop :=
  ∀ n, P10383697190956907987.a n = A133594 n

end A133594

/-! ## A133594.P11153662702442383877

`3*a(n-1)+12*a(n-2)` with `a(0)=1, a(1)=3, a(2)=18`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A133594

/-- `3*a(n-1)+12*a(n-2)` -/
def P11153662702442383877.Spec : Prop :=
  ∀ n, (P11153662702442383877.a n : ℤ) = A133594 n

theorem P11153662702442383877.correct : P11153662702442383877.Spec := by
  intro n
  simp only [A133594]

end A133594

/-!
# A133596: E.g.f. satisfies: A(x) = x*(sinh(sinh(A(x)))+1).

The programs for A133596, there is no canonical definition to state claims against.
-/

/-! ## A133596.P3312776443524532285

`A108125(n+1)/(n+1)*A118759(A108125(n))`
-/

namespace A133596.P3312776443524532285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108125 (n + 1) : ℚ) / (n + 1 : ℚ) * (A118759 (A108125 n).toNat : ℚ)

end

end A133596.P3312776443524532285

/-! ## A133596.P9127148483913506407

`A245092(A108125(n+1)/(n+1)*A108125(n))`
-/

namespace A133596.P9127148483913506407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (SequenceMachineLib.roundAway ((A108125 (n + 1) : ℚ) / (n + 1 : ℚ) * (A108125 n : ℚ))).toNat

end

end A133596.P9127148483913506407

/-!
# A133599: A097806 * A133080 * A007318.

The programs for A133599, there is no canonical definition to state claims against.
-/

/-! ## A133599.P9338863546262994060

`∑{d}[A101161(n), A303378(A014963(#)²)]`
-/

namespace A133599.P9338863546262994060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A303378 (A014963 d ^ 2).toNat

end

end A133599.P9338863546262994060

/-! ## A133599.P9631662941440866446

`or(A122934(n+1), A274011(A116647(n+1)))`
-/

namespace A133599.P9631662941440866446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122934 (n + 1)) (A274011 (A116647 (n + 1)).toNat)

end

end A133599.P9631662941440866446

/-! ## A133599.P5725563154020688234

`or(1, A062571(A110197(n)))`
-/

namespace A133599.P5725563154020688234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A062571 (A110197 n).toNat)

end

end A133599.P5725563154020688234

/-! ## A133599.P11182165212650004309

`A181672(A135313(n+1)+1)`
-/

namespace A133599.P11182165212650004309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181672 (A135313 (n + 1) + 1).toNat

end

end A133599.P11182165212650004309

/-! ## A133599.P14588299907634914274

`A072219(A269276(n+1)+16)`
-/

namespace A133599.P14588299907634914274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072219 (A269276 (n + 1) + 16).toNat

end

end A133599.P14588299907634914274

