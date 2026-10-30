import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C010
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
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
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C011
import Seq.Opaque.C012
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
# A386302: Positive integers k such that the set {d+k/d : d|k} contains three consecutive integers.

The programs for A386302, there is no canonical definition to state claims against.
-/

/-! ## A386302.P114310904705700277

`A046523(A002720(n+1))*A392163(n+1)`
-/

namespace A386302.P114310904705700277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A002720 (n + 1)).toNat * A392163 (n + 1)

end

end A386302.P114310904705700277

/-!
# A386304: Numbers k such that k - A067666(k) is a square.

The programs for A386304, there is no canonical definition to state claims against.
-/

/-! ## A386304.P16259461589435547197

`A363436(A281471(n+1))`
-/

namespace A386304.P16259461589435547197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363436 (A281471 (n + 1)).toNat

end

end A386304.P16259461589435547197

/-!
# A386305: Numbers of people such that the first person is freed in the variant of the Josephus problem in which one person is skipped, then one is eliminated, then two people are skipped and one eliminated, then three people are skipped and so on.

The programs for A386305, there is no canonical definition to state claims against.
-/

/-! ## A386305.P10880284011054947298

`eq[2, A007495(n+2)]`
-/

namespace A386305.P10880284011054947298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007495 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386305.P10880284011054947298

/-! ## A386305.P11618037497098285154

`eq[1, A291317(n+1)]+1`
-/

namespace A386305.P11618037497098285154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291317 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A386305.P11618037497098285154

/-! ## A386305.P5317155941365034009

`lt[A291317(n+1), A040000(2*n+1)]+1`
-/

namespace A386305.P5317155941365034009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A386305.P5317155941365034009

/-! ## A386305.P13962212934866491860

`filter[A129657(n+1), A291317(#)]`
-/

namespace A386305.P13962212934866491860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A291317 (f1 j).toNat = 1) n)

end

end A386305.P13962212934866491860

/-!
# A386306: a(n) is the total number of prime factors (with multiplicity) of the three sides of the Pythagorean triangle (A046083(n), A046084(n), A009000(n)).

The programs for A386306, there is no canonical definition to state claims against.
-/

/-! ## A386306.P6806062112476790363

`A001222(A046083(n+1))+A001222(A046084(n+1))+A001222(A009000(n+1))`
-/

namespace A386306.P6806062112476790363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046083 (n + 1)).toNat + A001222 (A046084 (n + 1)).toNat + A001222 (A009000 (n + 1)).toNat

end

end A386306.P6806062112476790363

/-! ## A386306.P15938057423772427078

`A001222(A046083(n+1)*A046084(n+1)*A009000(n+1))`
-/

namespace A386306.P15938057423772427078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046083 (n + 1) * A046084 (n + 1) * A009000 (n + 1)).toNat

end

end A386306.P15938057423772427078

/-!
# A386307: Ordered hypotenuses of Pythagorean triples that do not have the form (u^2 - v^2, 2*u*v, u^2 + v^2), where u and v are positive integers.

The programs for A386307, there is no canonical definition to state claims against.
-/

/-! ## A386307.P11565116674088146888

`sqrt(A386308(n+1)²+A386309(n+1)²)`
-/

namespace A386307.P11565116674088146888
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A386308 (n + 1) ^ 2 + A386309 (n + 1) ^ 2 : ℝ)

end

end A386307.P11565116674088146888

/-!
# A386308: Long legs of Pythagorean triples that do not have the form (u^2 - v^2, 2*u*v, u^2 + v^2) ordered by increasing hypotenuse (A386307), where u and v are positive integers.

The programs for A386308, there is no canonical definition to state claims against.
-/

/-! ## A386308.P6326033882603684945

`sqrt(A386307(n+1)²-A386309(n+1)²)`
-/

namespace A386308.P6326033882603684945
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A386307 (n + 1) ^ 2 - A386309 (n + 1) ^ 2 : ℝ)

end

end A386308.P6326033882603684945

/-!
# A386309: Short legs of Pythagorean triples that do not have the form (u^2 - v^2, 2*u*v, u^2 + v^2) ordered by increasing hypotenuse (A386307), where u and v are positive integers.

The programs for A386309, there is no canonical definition to state claims against.
-/

/-! ## A386309.P4628173969760900616

`sqrt(A386307(n+1)²-A386308(n+1)²)`
-/

namespace A386309.P4628173969760900616
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A386307 (n + 1) ^ 2 - A386308 (n + 1) ^ 2 : ℝ)

end

end A386309.P4628173969760900616

/-!
# A386310: Number of divisors d of n such that 2*d^d == 0 (mod n).

The programs for A386310, there is no canonical definition to state claims against.
-/

/-! ## A386310.P13793313178059338258

`A385662(n+1)+A386930(n+1)-A000005(n+1)`
-/

namespace A386310.P13793313178059338258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385662 (n + 1) + (A386930 (n + 1) - A000005 (n + 1))

end

end A386310.P13793313178059338258

/-! ## A386310.P10685314282201459174

`A159631(A249734(n+1))`
-/

namespace A386310.P10685314282201459174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159631 (A249734 (n + 1)).toNat

end

end A386310.P10685314282201459174

/-! ## A386310.P14830385154600664788

`A373588(A058948(n+1))+A046951(2*(n+1))`
-/

namespace A386310.P14830385154600664788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373588 (A058948 (n + 1)).toNat + A046951 (2 * (n + 1))

end

end A386310.P14830385154600664788

/-! ## A386310.P5326810426840400256

`A391503(A295161(2*n+5))+A046951(2*(n+1))`
-/

namespace A386310.P5326810426840400256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391503 (A295161 (2 * n + 5)).toNat + A046951 (2 * (n + 1))

end

end A386310.P5326810426840400256

/-! ## A386310.P325150120244170976

`A384915(A004139(n+1)*A006369(3*(n+1)))`
-/

namespace A386310.P325150120244170976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384915 (A004139 (n + 1) * A006369 (3 * (n + 1))).toNat

end

end A386310.P325150120244170976

/-!
# A386312: Numbers of people such that the last person is freed in the variant of the Josephus problem in which one person is skipped, then one is eliminated, then two people are skipped and one eliminated, then three people are skipped and so on.

The programs for A386312, there is no canonical definition to state claims against.
-/

/-! ## A386312.P178830457415566668

`lt[n, A291317(n+1)]+1`
-/

namespace A386312.P178830457415566668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291317 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A386312.P178830457415566668

/-! ## A386312.P18404530603822599985

`eq[n, A291317(round(sqrt(n²+1)))]`
-/

namespace A386312.P18404530603822599985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291317 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386312.P18404530603822599985

/-!
# A386313: Excess for a circular sparse ruler, A283297(n) - (A000194(n-1) + 1).

The programs for A386313, there is no canonical definition to state claims against.
-/

/-! ## A386313.P1156426070818215797

`and(A285006(n+1), A368032(n+1))`
-/

namespace A386313.P1156426070818215797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A285006 (n + 1)) (A368032 (n + 1))

end

end A386313.P1156426070818215797

/-! ## A386313.P8941489226918872832

`and(A124760(n+1), A258026(A122111(n+3)))`
-/

namespace A386313.P8941489226918872832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A124760 (n + 1)) (A258026 (A122111 (n + 3)).toNat)

end

end A386313.P8941489226918872832

/-! ## A386313.P1437883355815655242

`A277165(and(A175600(n+1), A202266(n+5)))`
-/

namespace A386313.P1437883355815655242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277165 (Int.land (A175600 (n + 1)) (A202266 (n + 5))).toNat

end

end A386313.P1437883355815655242

/-! ## A386313.P11714647866734068564

`C(A031286(n), A378568(A356231(2*n+5)))`
-/

namespace A386313.P11714647866734068564
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A031286 n).toNat (A378568 (A356231 (2 * n + 5)).toNat).toNat

end

end A386313.P11714647866734068564

/-! ## A386313.P7379469151279741531

`A277151(A399448(n+1))`
-/

namespace A386313.P7379469151279741531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277151 (A399448 (n + 1)).toNat

end

end A386313.P7379469151279741531

/-!
# A386314: a(1) = 1 and thereafter a(n) is the smallest number k of the form 6*x+-1 not already in the sequence but where the reduced Collatz step A139391(k) is in the sequence.

The programs for A386314, there is no canonical definition to state claims against.
-/

/-! ## A386314.P9106557505671615956

`filter[A082983(n), A187074(#)]`
-/

namespace A386314.P9106557505671615956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A386314.P9106557505671615956

/-! ## A386314.P11214295464720801693

`filter[A082983(n), A320106(#)]`
-/

namespace A386314.P11214295464720801693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A386314.P11214295464720801693

/-! ## A386314.P15442751912853582270

`filter[A082983(n), A354354(#)]`
-/

namespace A386314.P15442751912853582270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A386314.P15442751912853582270

/-! ## A386314.P12744517371336860827

`filter[A082983(n), A359374(#)]`
-/

namespace A386314.P12744517371336860827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A386314.P12744517371336860827

/-! ## A386314.P17597515060963571764

`filter[A082983(n), A373155(#)]`
-/

namespace A386314.P17597515060963571764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A386314.P17597515060963571764

/-! ## A386314.P13785076897159734500

`filter[A082983(n), A373156(#)]`
-/

namespace A386314.P13785076897159734500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A386314.P13785076897159734500

/-! ## A386314.P2940061597743451680

`filter[A082983(n), A374043(#)]`
-/

namespace A386314.P2940061597743451680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A386314.P2940061597743451680

/-! ## A386314.P9221639681956129638

`filter[A082983(n), A011655(#)]`
-/

namespace A386314.P9221639681956129638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A386314.P9221639681956129638

/-! ## A386314.P18111398549294505227

`filter[A082983(n), A267208(#)]`
-/

namespace A386314.P18111398549294505227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267208 (f1 j).toNat = 1) n)

end

end A386314.P18111398549294505227

/-! ## A386314.P912881614291684294

`filter[A261702(n+1), A354354(#)]`
-/

namespace A386314.P912881614291684294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261702 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A386314.P912881614291684294

/-!
# A386315: Number of points in a face-centered cubic lattice that intersect a sphere of radius n centered on a point in the lattice.

The programs for A386315, there is no canonical definition to state claims against.
-/

/-! ## A386315.P6189665587311125240

`A004015(n²)`
-/

namespace A386315.P6189665587311125240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (n ^ 2)

end

end A386315.P6189665587311125240

/-! ## A386315.P8689014195593413184

`filter[A004015(n), A259044(#)]`
-/

namespace A386315.P8689014195593413184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A386315.P8689014195593413184

/-! ## A386315.P12611778263267438062

`and(-1, A004015(A000290(n)))`
-/

namespace A386315.P12611778263267438062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A004015 (A000290 n).toNat)

end

end A386315.P12611778263267438062

/-! ## A386315.P2288594484472241182

`A004015(A000290(n))%A017486(n)`
-/

namespace A386315.P2288594484472241182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004015 (A000290 n).toNat) (A017486 n)

end

end A386315.P2288594484472241182

/-! ## A386315.P6868059840929015692

`lcm(A001285(n), A004015(A000290(n)))`
-/

namespace A386315.P6868059840929015692
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001285 n) (A004015 (A000290 n).toNat)

end

end A386315.P6868059840929015692

/-! ## A386315.P3471861288610028245

`A005875(2*n²)`
-/

namespace A386315.P3471861288610028245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 (2 * n ^ 2)

end

end A386315.P3471861288610028245

/-! ## A386315.P3638252447039939309

`A213384(2*n²)`
-/

namespace A386315.P3638252447039939309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 (2 * n ^ 2)

end

end A386315.P3638252447039939309

/-! ## A386315.P5385052412641187304

`filter[A005875(n), A259044(#)]`
-/

namespace A386315.P5385052412641187304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A386315.P5385052412641187304

/-! ## A386315.P6819213472920575562

`filter[A213384(2*n), A259044(#)]`
-/

namespace A386315.P6819213472920575562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213384 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A259044 (f1 j).toNat = 1) n)

end

end A386315.P6819213472920575562

/-! ## A386315.P16425909824501535659

`A014455((2*n)²)`
-/

namespace A386315.P16425909824501535659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 ((2 * n) ^ 2)

end

end A386315.P16425909824501535659

/-!
# A386317: Integers t which satisfy 3/2 <= abundancy(t) < 2 but which are not k-deficient-perfect numbers A331627.

The programs for A386317, there is no canonical definition to state claims against.
-/

/-! ## A386317.P5099453329147368420

`A392985(n+1)-A361018(A290056(n+4))`
-/

namespace A386317.P5099453329147368420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392985 (n + 1) - A361018 (A290056 (n + 4)).toNat

end

end A386317.P5099453329147368420

/-! ## A386317.P6976164135417774239

`A392985(n+1)-A293162(A000045(2*(n+2)))`
-/

namespace A386317.P6976164135417774239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392985 (n + 1) - A293162 (A000045 (2 * (n + 2))).toNat

end

end A386317.P6976164135417774239

/-!
# A386319: Triangle read by rows where row n is the start, corner and end vertex numbers of a triangular spiral with n sides on a triangular grid, starting from 1 and working inwards (0 <= k <= n).

The programs for A386319, the canonical program `A386319.P6966133288420860649` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386319 has offset 0).

The definition of A386319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386319.P16351171452032535688

`T(T(n-1,k)-T(n-1,k-1), 1)+T(n-1,k-1)+col(n)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A386319.P16351171452032535688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  SequenceMachineLib.triAt a (((SequenceMachineLib.triUp a n : ℕ) : ℤ) - ((SequenceMachineLib.triUpLeft a n : ℕ) : ℤ)) 1 + SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triCol n

end

end A386319.P16351171452032535688

namespace A386319

/-- `T(T(n-1,k)-T(n-1,k-1), 1)+T(n-1,k-1)+col(n)` -/
def P16351171452032535688.Spec : Prop :=
  ∀ n, (P16351171452032535688.a n : ℤ) = A386319 n

end A386319

/-! ## A386319.P12646637392790776795

`T(n-1,k-1)+row(n)-T(row(n)-1, 1-col(n))` with `a(0)=1`
-/

namespace A386319.P12646637392790776795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUpLeft a n + (SequenceMachineLib.triRow n : ℤ) - SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 1) (1 - (SequenceMachineLib.triCol n : ℤ))

end

end A386319.P12646637392790776795

namespace A386319

/-- `T(n-1,k-1)+row(n)-T(row(n)-1, 1-col(n))` -/
def P12646637392790776795.Spec : Prop :=
  ∀ n, P12646637392790776795.a n = A386319 n

end A386319

/-! ## A386319.P6966133288420860649

`A112367(n)+A086460(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A386319

/-- `A112367(n)+A086460(n)` -/
def P6966133288420860649.Spec : Prop :=
  ∀ n, P6966133288420860649.a n = A386319 n

theorem P6966133288420860649.correct : P6966133288420860649.Spec := by
  intro n
  simp only [A386319]

end A386319

/-! ## A386319.P18414327979911246134

`A144328(n+1)+A087401(n)`
-/

namespace A386319.P18414327979911246134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) + A087401 n

end

end A386319.P18414327979911246134

namespace A386319

/-- `A144328(n+1)+A087401(n)` -/
def P18414327979911246134.Spec : Prop :=
  ∀ n, P18414327979911246134.a n = A386319 n

end A386319

/-! ## A386319.P14619193524005328591

`A141419(n+1)-A123578(n)`
-/

namespace A386319.P14619193524005328591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141419 (n + 1) - A123578 n

end

end A386319.P14619193524005328591

namespace A386319

/-- `A141419(n+1)-A123578(n)` -/
def P14619193524005328591.Spec : Prop :=
  ∀ n, P14619193524005328591.a n = A386319 n

end A386319

/-! ## A386319.P5184676227166292608

`A112367(n)+A035214(n)-A176270(n)`
-/

namespace A386319.P5184676227166292608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + (A035214 n - A176270 n)

end

end A386319.P5184676227166292608

namespace A386319

/-- `A112367(n)+A035214(n)-A176270(n)` -/
def P5184676227166292608.Spec : Prop :=
  ∀ n, P5184676227166292608.a n = A386319 n

end A386319

/-! ## A386319.P9627239899517789299

`A112367(n)+A003991(n+1)-A123578(n)`
-/

namespace A386319.P9627239899517789299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112367 n + (A003991 (n + 1) - A123578 n)

end

end A386319.P9627239899517789299

namespace A386319

/-- `A112367(n)+A003991(n+1)-A123578(n)` -/
def P9627239899517789299.Spec : Prop :=
  ∀ n, P9627239899517789299.a n = A386319 n

end A386319

/-!
# A386320: Primes without {0, 2} as digits.

The programs for A386320, there is no canonical definition to state claims against.
-/

/-! ## A386320.P14006571934998227672

`∩[A038604(n+1), A038618(n+1)]`
-/

namespace A386320.P14006571934998227672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386320.P14006571934998227672

/-! ## A386320.P2448624199989793347

`∩[A038604(n+1), A195943(n+1)]`
-/

namespace A386320.P2448624199989793347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386320.P2448624199989793347

/-! ## A386320.P18020900384138900004

`∩[A038604(n+1), A209931(n+1)]`
-/

namespace A386320.P18020900384138900004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386320.P18020900384138900004

/-! ## A386320.P8876888079943424658

`∩[A038604(n+1), A039113(n+1)]`
-/

namespace A386320.P8876888079943424658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386320.P8876888079943424658

/-! ## A386320.P6327630388203083930

`∩[A038618(n+1), A039113(n+1)]`
-/

namespace A386320.P6327630388203083930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386320.P6327630388203083930

/-! ## A386320.P2082255340895734405

`filter[A038604(n+1), A209929(#)]`
-/

namespace A386320.P2082255340895734405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A386320.P2082255340895734405

/-! ## A386320.P16296906502369746197

`∩[A038618(n+1), A052404(n+1)]`
-/

namespace A386320.P16296906502369746197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386320.P16296906502369746197

/-! ## A386320.P16454408625181363722

`∩[A038604(n+1), A052382(n+1)]`
-/

namespace A386320.P16454408625181363722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386320.P16454408625181363722

/-! ## A386320.P6943244010359214558

`eq[A062584(n), A222211(n)]`
-/

namespace A386320.P6943244010359214558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386320.P6943244010359214558

/-! ## A386320.P13511288102629696834

`eq[A064502(n), A222211(n)]`
-/

namespace A386320.P13511288102629696834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386320.P13511288102629696834

/-! ## A386320.P320883699645156533

`eq[A084413(n), A222211(n)]`
-/

namespace A386320.P320883699645156533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386320.P320883699645156533

/-! ## A386320.P4447055314993426247

`eq[A168014(n), A222211(n)]`
-/

namespace A386320.P4447055314993426247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386320.P4447055314993426247

/-! ## A386320.P17544052582896997768

`eq[A222211(n), A272476(n)]`
-/

namespace A386320.P17544052582896997768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386320.P17544052582896997768

/-! ## A386320.P9512469423110275980

`eq[A222211(n), A327420(n)]`
-/

namespace A386320.P9512469423110275980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386320.P9512469423110275980

/-! ## A386320.P7120953589863343295

`filter[A038604(n+1), A168046(#)]`
-/

namespace A386320.P7120953589863343295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A386320.P7120953589863343295

/-! ## A386320.P1652318583372460271

`eq[A035031(n+1), A222211(n)]`
-/

namespace A386320.P1652318583372460271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386320.P1652318583372460271

/-! ## A386320.P7404681070440840435

`eq[A035032(n+1), A222211(n)]`
-/

namespace A386320.P7404681070440840435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386320.P7404681070440840435

/-! ## A386320.P3589694287452403376

`eq[A065988(n+1), A222211(n)]`
-/

namespace A386320.P3589694287452403376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386320.P3589694287452403376

/-! ## A386320.P1601326797090515959

`eq[A085107(n+1), A222211(n)]`
-/

namespace A386320.P1601326797090515959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386320.P1601326797090515959

/-! ## A386320.P4059786762908942219

`eq[A222211(n), A331102(n)]`
-/

namespace A386320.P4059786762908942219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331102 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386320.P4059786762908942219

/-!
# A386321: Primes without {0, 3} as digits.

The programs for A386321, there is no canonical definition to state claims against.
-/

/-! ## A386321.P12129189404841943891

`∩[A038611(n+1), A038618(n+1)]`
-/

namespace A386321.P12129189404841943891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386321.P12129189404841943891

/-! ## A386321.P18091744291310823970

`∩[A038611(n+1), A195943(n+1)]`
-/

namespace A386321.P18091744291310823970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386321.P18091744291310823970

/-! ## A386321.P1504098361555912630

`∩[A038611(n+1), A209931(n+1)]`
-/

namespace A386321.P1504098361555912630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386321.P1504098361555912630

/-! ## A386321.P11632352948864825455

`∩[A038611(n+1), A039114(n+1)]`
-/

namespace A386321.P11632352948864825455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386321.P11632352948864825455

/-! ## A386321.P10486441669941340935

`∩[A038618(n+1), A039114(n+1)]`
-/

namespace A386321.P10486441669941340935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386321.P10486441669941340935

/-! ## A386321.P4598916523266160823

`filter[A038611(n+1), A209929(#)]`
-/

namespace A386321.P4598916523266160823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A386321.P4598916523266160823

/-! ## A386321.P10969475286245901987

`∩[A038618(n+1), A052405(n+1)]`
-/

namespace A386321.P10969475286245901987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386321.P10969475286245901987

/-! ## A386321.P6301014015966970915

`∩[A038611(n+1), A052382(n+1)]`
-/

namespace A386321.P6301014015966970915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386321.P6301014015966970915

/-! ## A386321.P9505214115259169776

`eq[A062584(n), A222212(n)]`
-/

namespace A386321.P9505214115259169776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386321.P9505214115259169776

/-! ## A386321.P1767734445808304554

`eq[A064502(n), A222212(n)]`
-/

namespace A386321.P1767734445808304554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386321.P1767734445808304554

/-! ## A386321.P12758331630676464949

`eq[A084413(n), A222212(n)]`
-/

namespace A386321.P12758331630676464949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386321.P12758331630676464949

/-! ## A386321.P2532414033720708396

`eq[A168014(n), A222212(n)]`
-/

namespace A386321.P2532414033720708396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386321.P2532414033720708396

/-! ## A386321.P8009268037838216301

`filter[A038611(n+1), A168046(#)]`
-/

namespace A386321.P8009268037838216301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A386321.P8009268037838216301

/-! ## A386321.P6897654700344439096

`eq[A035031(n+1), A222212(n)]`
-/

namespace A386321.P6897654700344439096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386321.P6897654700344439096

/-! ## A386321.P13857171502678728493

`eq[A035032(n+1), A222212(n)]`
-/

namespace A386321.P13857171502678728493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386321.P13857171502678728493

/-! ## A386321.P12371995610039760946

`eq[A038700(n+1), A222212(n)]`
-/

namespace A386321.P12371995610039760946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386321.P12371995610039760946

/-! ## A386321.P647358820633951775

`eq[A065988(n+1), A222212(n)]`
-/

namespace A386321.P647358820633951775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386321.P647358820633951775

/-! ## A386321.P15438752632000979002

`eq[A085107(n+1), A222212(n)]`
-/

namespace A386321.P15438752632000979002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386321.P15438752632000979002

/-! ## A386321.P6359487327617819187

`eq[A093868(n+1), A222212(n)]`
-/

namespace A386321.P6359487327617819187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386321.P6359487327617819187

/-!
# A386322: Primes without {0, 4} as digits.

The programs for A386322, there is no canonical definition to state claims against.
-/

/-! ## A386322.P5685043808971806302

`∩[A038612(n+1), A038618(n+1)]`
-/

namespace A386322.P5685043808971806302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386322.P5685043808971806302

/-! ## A386322.P15971102819425127718

`∩[A038612(n+1), A195943(n+1)]`
-/

namespace A386322.P15971102819425127718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386322.P15971102819425127718

/-! ## A386322.P7810981070780856729

`∩[A038612(n+1), A209931(n+1)]`
-/

namespace A386322.P7810981070780856729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386322.P7810981070780856729

/-! ## A386322.P5165688965383379273

`∩[A038612(n+1), A039115(n+1)]`
-/

namespace A386322.P5165688965383379273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386322.P5165688965383379273

/-! ## A386322.P14454918771586775551

`∩[A038618(n+1), A039115(n+1)]`
-/

namespace A386322.P14454918771586775551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386322.P14454918771586775551

/-! ## A386322.P6792928354796777796

`filter[A038612(n+1), A209929(#)]`
-/

namespace A386322.P6792928354796777796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A386322.P6792928354796777796

/-! ## A386322.P13695100490147724486

`∩[A038618(n+1), A052406(n+1)]`
-/

namespace A386322.P13695100490147724486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386322.P13695100490147724486

/-! ## A386322.P11250271177564976109

`∩[A038612(n+1), A052382(n+1)]`
-/

namespace A386322.P11250271177564976109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386322.P11250271177564976109

/-! ## A386322.P15186688100547651514

`eq[n, A222213(A007918(n))]`
-/

namespace A386322.P15186688100547651514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222213 (A007918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386322.P15186688100547651514

/-! ## A386322.P7715274234306210309

`eq[A039653(n), A222213(n)]`
-/

namespace A386322.P7715274234306210309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222213 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386322.P7715274234306210309

/-! ## A386322.P466975894746770408

`eq[n, A222213(A051697(n))]`
-/

namespace A386322.P466975894746770408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222213 (A051697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386322.P466975894746770408

/-! ## A386322.P12412731732037533730

`eq[A062584(n), A222213(n)]`
-/

namespace A386322.P12412731732037533730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222213 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386322.P12412731732037533730

/-! ## A386322.P8706535916397489773

`eq[n, A222213(A077018(n))]`
-/

namespace A386322.P8706535916397489773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222213 (A077018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386322.P8706535916397489773

/-! ## A386322.P6549241255382971251

`eq[A084413(n), A222213(n)]`
-/

namespace A386322.P6549241255382971251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222213 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386322.P6549241255382971251

/-! ## A386322.P16821835480498958179

`eq[A168014(n), A222213(n)]`
-/

namespace A386322.P16821835480498958179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222213 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386322.P16821835480498958179

/-! ## A386322.P269466517457877580

`eq[A222213(n), A272476(n)]`
-/

namespace A386322.P269466517457877580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222213 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386322.P269466517457877580

/-! ## A386322.P15453034724856385854

`filter[A038612(n+1), A168046(#)]`
-/

namespace A386322.P15453034724856385854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A386322.P15453034724856385854

/-! ## A386322.P3596094437074288985

`eq[A035031(n+1), A222213(n)]`
-/

namespace A386322.P3596094437074288985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222213 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386322.P3596094437074288985

/-! ## A386322.P13366582770132377275

`eq[A035032(n+1), A222213(n)]`
-/

namespace A386322.P13366582770132377275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222213 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386322.P13366582770132377275

/-! ## A386322.P13764406031098163679

`eq[A038700(n+1), A222213(n)]`
-/

namespace A386322.P13764406031098163679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222213 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386322.P13764406031098163679

/-!
# A386323: Primes without {0, 5} as digits.

The programs for A386323, there is no canonical definition to state claims against.
-/

/-! ## A386323.P8391634571326051456

`∩[A038613(n+1), A038618(n+1)]`
-/

namespace A386323.P8391634571326051456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386323.P8391634571326051456

/-! ## A386323.P16520229065117616976

`∩[A038613(n+1), A195943(n+1)]`
-/

namespace A386323.P16520229065117616976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386323.P16520229065117616976

/-! ## A386323.P3767230515477797551

`p?[A261189(n+1)]`
-/

namespace A386323.P3767230515477797551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A386323.P3767230515477797551

/-! ## A386323.P10219818274355964002

`filter[A261189(n+1), A010051(#)]`
-/

namespace A386323.P10219818274355964002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A386323.P10219818274355964002

/-! ## A386323.P11346480317715542971

`∩[A000040(n+1), A261189(n+1)]`
-/

namespace A386323.P11346480317715542971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386323.P11346480317715542971

/-! ## A386323.P7044996585264086037

`∩[A038613(n+1), A261189(n+1)]`
-/

namespace A386323.P7044996585264086037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386323.P7044996585264086037

/-! ## A386323.P8810032498478601362

`∩[A038618(n+1), A261189(n+1)]`
-/

namespace A386323.P8810032498478601362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386323.P8810032498478601362

/-! ## A386323.P505082878840707235

`∩[A038613(n+1), A209931(n+1)]`
-/

namespace A386323.P505082878840707235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386323.P505082878840707235

/-! ## A386323.P11676294686487887938

`∩[A038613(n+1), A039116(n+1)]`
-/

namespace A386323.P11676294686487887938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386323.P11676294686487887938

/-! ## A386323.P10827090703289448489

`∩[A038618(n+1), A039116(n+1)]`
-/

namespace A386323.P10827090703289448489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386323.P10827090703289448489

/-! ## A386323.P8257821647636660067

`filter[A038613(n+1), A209929(#)]`
-/

namespace A386323.P8257821647636660067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A386323.P8257821647636660067

/-! ## A386323.P10727945966290868740

`∩[A038618(n+1), A052413(n+1)]`
-/

namespace A386323.P10727945966290868740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386323.P10727945966290868740

/-! ## A386323.P13916166688632647634

`∩[A038613(n+1), A052382(n+1)]`
-/

namespace A386323.P13916166688632647634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386323.P13916166688632647634

/-! ## A386323.P417697050231497832

`eq[n, A222214(A007918(n))]`
-/

namespace A386323.P417697050231497832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 (A007918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386323.P417697050231497832

/-! ## A386323.P12386800426156141137

`eq[n, A222214(A051697(n))]`
-/

namespace A386323.P12386800426156141137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 (A051697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386323.P12386800426156141137

/-! ## A386323.P7967064234132354091

`eq[A062584(n), A222214(n)]`
-/

namespace A386323.P7967064234132354091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386323.P7967064234132354091

/-! ## A386323.P12577563406904138320

`eq[A064502(n), A222214(n)]`
-/

namespace A386323.P12577563406904138320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386323.P12577563406904138320

/-! ## A386323.P16381060823182840930

`eq[n, A222214(A077018(n))]`
-/

namespace A386323.P16381060823182840930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 (A077018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386323.P16381060823182840930

/-! ## A386323.P15913349970051482535

`eq[A084413(n), A222214(n)]`
-/

namespace A386323.P15913349970051482535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386323.P15913349970051482535

/-! ## A386323.P16060470447836749775

`eq[A168014(n), A222214(n)]`
-/

namespace A386323.P16060470447836749775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222214 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386323.P16060470447836749775

/-!
# A386324: Primes without {0, 6} as digits.

The programs for A386324, there is no canonical definition to state claims against.
-/

/-! ## A386324.P16760202649174605299

`∩[A038614(n+1), A038618(n+1)]`
-/

namespace A386324.P16760202649174605299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386324.P16760202649174605299

/-! ## A386324.P13641416544495149543

`∩[A038614(n+1), A195943(n+1)]`
-/

namespace A386324.P13641416544495149543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386324.P13641416544495149543

/-! ## A386324.P4606825298520928166

`∩[A038614(n+1), A209931(n+1)]`
-/

namespace A386324.P4606825298520928166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386324.P4606825298520928166

/-! ## A386324.P10808678267127576149

`∩[A038614(n+1), A039117(n+1)]`
-/

namespace A386324.P10808678267127576149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386324.P10808678267127576149

/-! ## A386324.P12748513741303464584

`∩[A038618(n+1), A039117(n+1)]`
-/

namespace A386324.P12748513741303464584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386324.P12748513741303464584

/-! ## A386324.P3667804237035094124

`filter[A038614(n+1), A209929(#)]`
-/

namespace A386324.P3667804237035094124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A386324.P3667804237035094124

/-! ## A386324.P5850520382055421276

`∩[A038618(n+1), A052414(n+1)]`
-/

namespace A386324.P5850520382055421276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386324.P5850520382055421276

/-! ## A386324.P14344640706594659896

`∩[A038614(n+1), A052382(n+1)]`
-/

namespace A386324.P14344640706594659896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386324.P14344640706594659896

/-! ## A386324.P12342699728964561217

`eq[n, A222215(A007918(n))]`
-/

namespace A386324.P12342699728964561217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222215 (A007918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386324.P12342699728964561217

/-! ## A386324.P11702656930255569342

`eq[n, A222215(A051697(n))]`
-/

namespace A386324.P11702656930255569342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222215 (A051697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386324.P11702656930255569342

/-! ## A386324.P9281498461153086245

`eq[A062584(n), A222215(n)]`
-/

namespace A386324.P9281498461153086245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386324.P9281498461153086245

/-! ## A386324.P7049774948115869028

`eq[n, A222215(A077018(n))]`
-/

namespace A386324.P7049774948115869028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222215 (A077018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386324.P7049774948115869028

/-! ## A386324.P16603308933560566257

`eq[A084413(n), A222215(n)]`
-/

namespace A386324.P16603308933560566257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386324.P16603308933560566257

/-! ## A386324.P7805559866949886130

`eq[A168014(n), A222215(n)]`
-/

namespace A386324.P7805559866949886130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386324.P7805559866949886130

/-! ## A386324.P10125727535927574978

`eq[A222215(n), A272476(n)]`
-/

namespace A386324.P10125727535927574978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386324.P10125727535927574978

/-! ## A386324.P6472085764867808801

`eq[A222215(n), A327420(n)]`
-/

namespace A386324.P6472085764867808801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386324.P6472085764867808801

/-! ## A386324.P12780105149163594446

`filter[A038614(n+1), A168046(#)]`
-/

namespace A386324.P12780105149163594446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A386324.P12780105149163594446

/-! ## A386324.P7741474522810934392

`eq[A035031(n+1), A222215(n)]`
-/

namespace A386324.P7741474522810934392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386324.P7741474522810934392

/-! ## A386324.P557790499499931208

`eq[A035032(n+1), A222215(n)]`
-/

namespace A386324.P557790499499931208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386324.P557790499499931208

/-! ## A386324.P6419990558934023477

`eq[A038700(n+1), A222215(n)]`
-/

namespace A386324.P6419990558934023477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222215 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386324.P6419990558934023477

/-!
# A386325: Primes without {0, 7} as digits.

The programs for A386325, there is no canonical definition to state claims against.
-/

/-! ## A386325.P8442755559218868440

`∩[A038615(n+1), A038618(n+1)]`
-/

namespace A386325.P8442755559218868440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386325.P8442755559218868440

/-! ## A386325.P7724812532052921705

`∩[A038615(n+1), A195943(n+1)]`
-/

namespace A386325.P7724812532052921705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386325.P7724812532052921705

/-! ## A386325.P711385031840066124

`∩[A038615(n+1), A209931(n+1)]`
-/

namespace A386325.P711385031840066124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386325.P711385031840066124

/-! ## A386325.P38163058171024039

`∩[A038615(n+1), A039118(n+1)]`
-/

namespace A386325.P38163058171024039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386325.P38163058171024039

/-! ## A386325.P6134259445281454790

`∩[A038618(n+1), A039118(n+1)]`
-/

namespace A386325.P6134259445281454790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386325.P6134259445281454790

/-! ## A386325.P784293029348380530

`∩[A038618(n+1), A376047(n+1)]`
-/

namespace A386325.P784293029348380530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386325.P784293029348380530

/-! ## A386325.P2533090187213156506

`filter[A038615(n+1), A209929(#)]`
-/

namespace A386325.P2533090187213156506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A386325.P2533090187213156506

/-! ## A386325.P12481471453315406205

`∩[A038615(n+1), A052382(n+1)]`
-/

namespace A386325.P12481471453315406205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386325.P12481471453315406205

/-! ## A386325.P3476111611151792230

`∩[A038618(n+1), A052419(n+1)]`
-/

namespace A386325.P3476111611151792230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386325.P3476111611151792230

/-! ## A386325.P13804117841123174173

`eq[A062584(n), A222216(n)]`
-/

namespace A386325.P13804117841123174173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386325.P13804117841123174173

/-! ## A386325.P133627810577967449

`eq[A064502(n), A222216(n)]`
-/

namespace A386325.P133627810577967449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386325.P133627810577967449

/-! ## A386325.P631156822886821277

`eq[A084413(n), A222216(n)]`
-/

namespace A386325.P631156822886821277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386325.P631156822886821277

/-! ## A386325.P16735492733177175872

`eq[A168014(n), A222216(n)]`
-/

namespace A386325.P16735492733177175872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386325.P16735492733177175872

/-! ## A386325.P7247060738096500445

`eq[A222216(n), A272476(n)]`
-/

namespace A386325.P7247060738096500445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386325.P7247060738096500445

/-! ## A386325.P9019185964635432679

`eq[A222216(n), A327420(n)]`
-/

namespace A386325.P9019185964635432679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386325.P9019185964635432679

/-! ## A386325.P18322957109822051766

`filter[A038615(n+1), A168046(#)]`
-/

namespace A386325.P18322957109822051766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A386325.P18322957109822051766

/-! ## A386325.P8720400459911778578

`eq[A035031(n+1), A222216(n)]`
-/

namespace A386325.P8720400459911778578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386325.P8720400459911778578

/-! ## A386325.P9390169077146368256

`eq[A035032(n+1), A222216(n)]`
-/

namespace A386325.P9390169077146368256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386325.P9390169077146368256

/-! ## A386325.P2433719035748017697

`eq[A038700(n+1), A222216(n)]`
-/

namespace A386325.P2433719035748017697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386325.P2433719035748017697

/-! ## A386325.P3404776963180297583

`eq[A085107(n+1), A222216(n)]`
-/

namespace A386325.P3404776963180297583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085107 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222216 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386325.P3404776963180297583

/-!
# A386326: Primes without {0, 8} as digits.

The programs for A386326, there is no canonical definition to state claims against.
-/

/-! ## A386326.P17139648770102794594

`∩[A038616(n+1), A038618(n+1)]`
-/

namespace A386326.P17139648770102794594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386326.P17139648770102794594

/-! ## A386326.P4064789418703792055

`∩[A038616(n+1), A195943(n+1)]`
-/

namespace A386326.P4064789418703792055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386326.P4064789418703792055

/-! ## A386326.P2274865824941612331

`∩[A038616(n+1), A209931(n+1)]`
-/

namespace A386326.P2274865824941612331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386326.P2274865824941612331

/-! ## A386326.P11226860783645042566

`∩[A038616(n+1), A039119(n+1)]`
-/

namespace A386326.P11226860783645042566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386326.P11226860783645042566

/-! ## A386326.P12659012047051334328

`∩[A038618(n+1), A039119(n+1)]`
-/

namespace A386326.P12659012047051334328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386326.P12659012047051334328

/-! ## A386326.P2208189276396335520

`filter[A038616(n+1), A209929(#)]`
-/

namespace A386326.P2208189276396335520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A386326.P2208189276396335520

/-! ## A386326.P14490256494694897881

`∩[A038616(n+1), A052382(n+1)]`
-/

namespace A386326.P14490256494694897881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386326.P14490256494694897881

/-! ## A386326.P4611987664312227372

`∩[A038618(n+1), A052421(n+1)]`
-/

namespace A386326.P4611987664312227372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386326.P4611987664312227372

/-! ## A386326.P17755747056051437111

`eq[n, A222217(A007918(n))]`
-/

namespace A386326.P17755747056051437111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 (A007918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386326.P17755747056051437111

/-! ## A386326.P4878655344532213263

`eq[n, A222217(A051697(n))]`
-/

namespace A386326.P4878655344532213263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 (A051697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386326.P4878655344532213263

/-! ## A386326.P17471498351778569917

`eq[n, A062584(A222217(n))]`
-/

namespace A386326.P17471498351778569917
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386326.P17471498351778569917

/-! ## A386326.P16328575758678619359

`eq[A064502(n), A222217(n)]`
-/

namespace A386326.P16328575758678619359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386326.P16328575758678619359

/-! ## A386326.P6215004020496437062

`eq[n, A222217(A077018(n))]`
-/

namespace A386326.P6215004020496437062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 (A077018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386326.P6215004020496437062

/-! ## A386326.P13220845284476164266

`eq[A084413(n), A222217(n)]`
-/

namespace A386326.P13220845284476164266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386326.P13220845284476164266

/-! ## A386326.P16940222908592443990

`eq[A168014(n), A222217(n)]`
-/

namespace A386326.P16940222908592443990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386326.P16940222908592443990

/-! ## A386326.P17463614205027076655

`eq[A222217(n), A272476(n)]`
-/

namespace A386326.P17463614205027076655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386326.P17463614205027076655

/-! ## A386326.P8214345908413256806

`filter[A038616(n+1), A168046(#)]`
-/

namespace A386326.P8214345908413256806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A386326.P8214345908413256806

/-! ## A386326.P2885722654646351615

`eq[A035031(n+1), A222217(n)]`
-/

namespace A386326.P2885722654646351615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386326.P2885722654646351615

/-! ## A386326.P7252856759511200337

`eq[A035032(n+1), A222217(n)]`
-/

namespace A386326.P7252856759511200337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386326.P7252856759511200337

/-! ## A386326.P1579069335876946647

`eq[A038700(n+1), A222217(n)]`
-/

namespace A386326.P1579069335876946647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222217 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386326.P1579069335876946647

/-!
# A386327: Primes without {0, 9} as digits.

The programs for A386327, there is no canonical definition to state claims against.
-/

/-! ## A386327.P14058684324581418913

`∩[A038617(n+1), A038618(n+1)]`
-/

namespace A386327.P14058684324581418913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386327.P14058684324581418913

/-! ## A386327.P6947686277256820032

`∩[A038617(n+1), A195943(n+1)]`
-/

namespace A386327.P6947686277256820032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386327.P6947686277256820032

/-! ## A386327.P11679138020269663032

`p?[A214678(n+1)]`
-/

namespace A386327.P11679138020269663032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A386327.P11679138020269663032

/-! ## A386327.P17029089160833499821

`filter[A214678(n+1), A010051(#)]`
-/

namespace A386327.P17029089160833499821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A386327.P17029089160833499821

/-! ## A386327.P12538829789206931647

`∩[A000040(n+1), A214678(n+1)]`
-/

namespace A386327.P12538829789206931647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386327.P12538829789206931647

/-! ## A386327.P11280777257315997178

`∩[A038617(n+1), A214678(n+1)]`
-/

namespace A386327.P11280777257315997178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386327.P11280777257315997178

/-! ## A386327.P16101019350866513007

`∩[A038618(n+1), A214678(n+1)]`
-/

namespace A386327.P16101019350866513007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386327.P16101019350866513007

/-! ## A386327.P3004708175190444825

`∩[A042986(n+1), A214678(n+1)]`
-/

namespace A386327.P3004708175190444825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386327.P3004708175190444825

/-! ## A386327.P5875176768163461909

`∩[A182986(n+1), A214678(n+1)]`
-/

namespace A386327.P5875176768163461909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386327.P5875176768163461909

/-! ## A386327.P9970890827446073962

`∩[A038617(n+1), A209931(n+1)]`
-/

namespace A386327.P9970890827446073962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386327.P9970890827446073962

/-! ## A386327.P2418214287942731123

`filter[A038617(n+1), A209929(#)]`
-/

namespace A386327.P2418214287942731123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A209929 (f1 j).toNat = 1) n)

end

end A386327.P2418214287942731123

/-! ## A386327.P1371406115319342251

`∩[A038618(n+1), A007095(n)]`
-/

namespace A386327.P1371406115319342251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386327.P1371406115319342251

/-! ## A386327.P5185491283384462046

`∩[A037479(n+1), A038618(n+1)]`
-/

namespace A386327.P5185491283384462046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386327.P5185491283384462046

/-! ## A386327.P10920445898906169859

`∩[A038617(n+1), A052382(n+1)]`
-/

namespace A386327.P10920445898906169859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386327.P10920445898906169859

/-! ## A386327.P2811485822583206730

`eq[A039653(n), A222218(n)]`
-/

namespace A386327.P2811485822583206730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386327.P2811485822583206730

/-! ## A386327.P6397446919529733782

`eq[A062584(n), A222218(n)]`
-/

namespace A386327.P6397446919529733782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386327.P6397446919529733782

/-! ## A386327.P10325484650240376534

`eq[A064502(n), A222218(n)]`
-/

namespace A386327.P10325484650240376534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386327.P10325484650240376534

/-! ## A386327.P12438136507940308159

`eq[A084413(n), A222218(n)]`
-/

namespace A386327.P12438136507940308159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386327.P12438136507940308159

/-! ## A386327.P14865627400757162716

`eq[A168014(n), A222218(n)]`
-/

namespace A386327.P14865627400757162716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168014 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222218 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386327.P14865627400757162716

/-! ## A386327.P605783694803241167

`eq[A222218(n), A272476(n)]`
-/

namespace A386327.P605783694803241167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222218 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386327.P605783694803241167

/-!
# A386328: Primes without {1, 2} as digits.

The programs for A386328, there is no canonical definition to state claims against.
-/

/-! ## A386328.P16812299605334768050

`∩[A038603(n+1), A038604(n+1)]`
-/

namespace A386328.P16812299605334768050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386328.P16812299605334768050

/-! ## A386328.P963042507656011232

`∩[A038604(n+1), A307636(n+1)]`
-/

namespace A386328.P963042507656011232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386328.P963042507656011232

/-! ## A386328.P9940662860757172721

`∩[A038604(n+1), A132080(n+1)]`
-/

namespace A386328.P9940662860757172721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386328.P9940662860757172721

/-! ## A386328.P8168233587267796899

`∩[A038604(n+1), A383749(n+1)]`
-/

namespace A386328.P8168233587267796899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386328.P8168233587267796899

/-! ## A386328.P9586868753375253087

`∩[A038603(n+1), A039120(n+1)]`
-/

namespace A386328.P9586868753375253087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386328.P9586868753375253087

/-! ## A386328.P53134774231611774

`∩[A038604(n+1), A039120(n+1)]`
-/

namespace A386328.P53134774231611774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039120 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386328.P53134774231611774

/-! ## A386328.P16560981794776515785

`p?[record[A176407(n)]]`
-/

namespace A386328.P16560981794776515785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176407 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A386328.P16560981794776515785

/-! ## A386328.P13482496156719476330

`p?[record[A222220(n)]]`
-/

namespace A386328.P13482496156719476330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A386328.P13482496156719476330

/-! ## A386328.P17414675193274294459

`eq[n, A062584(A035043(n))]`
-/

namespace A386328.P17414675193274294459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A035043 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386328.P17414675193274294459

/-! ## A386328.P10247701103336078408

`eq[A035043(n), A064502(n)]`
-/

namespace A386328.P10247701103336078408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386328.P10247701103336078408

/-! ## A386328.P16837526076136504527

`eq[A035043(n), A084413(n)]`
-/

namespace A386328.P16837526076136504527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386328.P16837526076136504527

/-! ## A386328.P9537772276747402294

`eq[A062584(n), A176407(n)]`
-/

namespace A386328.P9537772276747402294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176407 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386328.P9537772276747402294

/-! ## A386328.P11197446647013822617

`eq[A084413(n), A176407(n)]`
-/

namespace A386328.P11197446647013822617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176407 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386328.P11197446647013822617

/-! ## A386328.P12006227597870712126

`eq[A035043(n), A272476(n)]`
-/

namespace A386328.P12006227597870712126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386328.P12006227597870712126

/-! ## A386328.P17400907984286170314

`eq[A176407(n), A272476(n)]`
-/

namespace A386328.P17400907984286170314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176407 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386328.P17400907984286170314

/-! ## A386328.P15066272195930887301

`eq[A035043(n), A038700(n+1)]`
-/

namespace A386328.P15066272195930887301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386328.P15066272195930887301

/-! ## A386328.P9781642282513386466

`eq[A035043(n), A057637(n+1)]`
-/

namespace A386328.P9781642282513386466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386328.P9781642282513386466

/-! ## A386328.P10479160603272115930

`eq[A035043(n), A086508(n+1)]`
-/

namespace A386328.P10479160603272115930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386328.P10479160603272115930

/-! ## A386328.P6217169340948500275

`eq[A035043(n), A093868(n+1)]`
-/

namespace A386328.P6217169340948500275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386328.P6217169340948500275

/-! ## A386328.P15137360227880551059

`eq[A038700(n+1), A176407(n)]`
-/

namespace A386328.P15137360227880551059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176407 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386328.P15137360227880551059

/-!
# A386329: Primes without {1, 3} as digits.

The programs for A386329, there is no canonical definition to state claims against.
-/

/-! ## A386329.P5479875144444453926

`∩[A038603(n+1), A038611(n+1)]`
-/

namespace A386329.P5479875144444453926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386329.P5479875144444453926

/-! ## A386329.P12752927143851990404

`∩[A038611(n+1), A132080(n+1)]`
-/

namespace A386329.P12752927143851990404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386329.P12752927143851990404

/-! ## A386329.P2745776911279858898

`∩[A038611(n+1), A307636(n+1)]`
-/

namespace A386329.P2745776911279858898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386329.P2745776911279858898

/-! ## A386329.P12348402574075043537

`∩[A038611(n+1), A383749(n+1)]`
-/

namespace A386329.P12348402574075043537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386329.P12348402574075043537

/-! ## A386329.P462383738418360592

`∩[A038603(n+1), A039121(n+1)]`
-/

namespace A386329.P462383738418360592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386329.P462383738418360592

/-! ## A386329.P18279995879458304424

`∩[A038611(n+1), A039121(n+1)]`
-/

namespace A386329.P18279995879458304424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386329.P18279995879458304424

/-! ## A386329.P6535914774115560835

`∩[A038611(n+1), A052383(n+1)]`
-/

namespace A386329.P6535914774115560835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386329.P6535914774115560835

/-! ## A386329.P3308912680849581726

`eq[n, A062584(A222220(n))]`
-/

namespace A386329.P3308912680849581726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222220 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386329.P3308912680849581726

/-! ## A386329.P2387251330293627287

`eq[A064502(n), A222220(n)]`
-/

namespace A386329.P2387251330293627287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386329.P2387251330293627287

/-! ## A386329.P2541101321522731605

`eq[A084413(n), A222220(n)]`
-/

namespace A386329.P2541101321522731605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386329.P2541101321522731605

/-! ## A386329.P10647982458737822303

`eq[A222220(n), A272476(n)]`
-/

namespace A386329.P10647982458737822303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386329.P10647982458737822303

/-! ## A386329.P14862417544753781958

`eq[A222220(n), A327420(n)]`
-/

namespace A386329.P14862417544753781958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222220 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386329.P14862417544753781958

/-! ## A386329.P1243951659020627834

`∩[A038603(n+1), A052405(n+1)]`
-/

namespace A386329.P1243951659020627834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386329.P1243951659020627834

/-!
# A386330: Primes without {1, 4} as digits.

The programs for A386330, there is no canonical definition to state claims against.
-/

/-! ## A386330.P3721202536822727865

`∩[A038603(n+1), A038612(n+1)]`
-/

namespace A386330.P3721202536822727865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386330.P3721202536822727865

/-! ## A386330.P10741928093642816876

`∩[A038612(n+1), A132080(n+1)]`
-/

namespace A386330.P10741928093642816876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386330.P10741928093642816876

/-! ## A386330.P18393955558888918699

`∩[A038612(n+1), A307636(n+1)]`
-/

namespace A386330.P18393955558888918699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386330.P18393955558888918699

/-! ## A386330.P10124965011766435758

`∩[A038612(n+1), A383749(n+1)]`
-/

namespace A386330.P10124965011766435758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386330.P10124965011766435758

/-! ## A386330.P17161347793451868826

`∩[A038603(n+1), A039122(n+1)]`
-/

namespace A386330.P17161347793451868826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386330.P17161347793451868826

/-! ## A386330.P11274904380240240384

`∩[A038612(n+1), A039122(n+1)]`
-/

namespace A386330.P11274904380240240384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386330.P11274904380240240384

/-! ## A386330.P13313665313236328737

`∩[A038612(n+1), A052383(n+1)]`
-/

namespace A386330.P13313665313236328737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386330.P13313665313236328737

/-! ## A386330.P2783247910501091809

`eq[n, A222221(A007918(n))]`
-/

namespace A386330.P2783247910501091809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A007918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386330.P2783247910501091809

/-! ## A386330.P4102496321313492815

`eq[n, A062584(A222221(n))]`
-/

namespace A386330.P4102496321313492815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222221 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386330.P4102496321313492815

/-! ## A386330.P17393337598523777590

`eq[A064502(n), A222221(n)]`
-/

namespace A386330.P17393337598523777590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386330.P17393337598523777590

/-! ## A386330.P11157534059286386230

`eq[A084413(n), A222221(n)]`
-/

namespace A386330.P11157534059286386230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386330.P11157534059286386230

/-! ## A386330.P11767782574973970601

`eq[A222221(n), A272476(n)]`
-/

namespace A386330.P11767782574973970601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386330.P11767782574973970601

/-! ## A386330.P6347845198166457976

`eq[A222221(n), A327420(n)]`
-/

namespace A386330.P6347845198166457976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386330.P6347845198166457976

/-! ## A386330.P3333134729634444650

`eq[A038700(n+1), A222221(n)]`
-/

namespace A386330.P3333134729634444650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386330.P3333134729634444650

/-! ## A386330.P8667201766080986416

`eq[A057637(n+1), A222221(n)]`
-/

namespace A386330.P8667201766080986416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386330.P8667201766080986416

/-! ## A386330.P4377654896154578

`eq[A093868(n+1), A222221(n)]`
-/

namespace A386330.P4377654896154578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386330.P4377654896154578

/-! ## A386330.P2533605535625746297

`∩[A038603(n+1), A052406(n+1)]`
-/

namespace A386330.P2533605535625746297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386330.P2533605535625746297

/-! ## A386330.P853466387041727931

`eq[A222221(n), A295609(n)]`
-/

namespace A386330.P853466387041727931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386330.P853466387041727931

/-!
# A386331: Primes without {1, 5} as digits.

The programs for A386331, there is no canonical definition to state claims against.
-/

/-! ## A386331.P6624611574707490216

`∩[A038603(n+1), A038613(n+1)]`
-/

namespace A386331.P6624611574707490216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386331.P6624611574707490216

/-! ## A386331.P546965158064429805

`∩[A038613(n+1), A132080(n+1)]`
-/

namespace A386331.P546965158064429805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386331.P546965158064429805

/-! ## A386331.P10975883072024448532

`∩[A038613(n+1), A307636(n+1)]`
-/

namespace A386331.P10975883072024448532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386331.P10975883072024448532

/-! ## A386331.P14200162926102460158

`∩[A038613(n+1), A383749(n+1)]`
-/

namespace A386331.P14200162926102460158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386331.P14200162926102460158

/-! ## A386331.P15883284709954448468

`∩[A038603(n+1), A039123(n+1)]`
-/

namespace A386331.P15883284709954448468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386331.P15883284709954448468

/-! ## A386331.P12277490233189644890

`∩[A038613(n+1), A039123(n+1)]`
-/

namespace A386331.P12277490233189644890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386331.P12277490233189644890

/-! ## A386331.P8402759485634559491

`∩[A038613(n+1), A052383(n+1)]`
-/

namespace A386331.P8402759485634559491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386331.P8402759485634559491

/-! ## A386331.P5258494226875106592

`eq[n, A222222(A007918(n))]`
-/

namespace A386331.P5258494226875106592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (A007918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386331.P5258494226875106592

/-! ## A386331.P16027392990376587696

`eq[n, A222222(A056149(n))]`
-/

namespace A386331.P16027392990376587696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (A056149 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386331.P16027392990376587696

/-! ## A386331.P17455783596440987443

`eq[n, A062584(A222222(n))]`
-/

namespace A386331.P17455783596440987443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386331.P17455783596440987443

/-! ## A386331.P16593186948436387432

`eq[A064502(n), A222222(n)]`
-/

namespace A386331.P16593186948436387432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386331.P16593186948436387432

/-! ## A386331.P6870084705779930338

`eq[A084413(n), A222222(n)]`
-/

namespace A386331.P6870084705779930338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386331.P6870084705779930338

/-! ## A386331.P13961805412150603472

`eq[A222222(n), A327420(n)]`
-/

namespace A386331.P13961805412150603472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386331.P13961805412150603472

/-! ## A386331.P13885636166420523121

`eq[A038700(n+1), A222222(n)]`
-/

namespace A386331.P13885636166420523121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386331.P13885636166420523121

/-! ## A386331.P6480738498972137376

`eq[A093868(n+1), A222222(n)]`
-/

namespace A386331.P6480738498972137376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386331.P6480738498972137376

/-! ## A386331.P14676392768107336951

`∩[A038603(n+1), A052413(n+1)]`
-/

namespace A386331.P14676392768107336951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386331.P14676392768107336951

/-!
# A386332: Primes without {1, 6} as digits.

The programs for A386332, there is no canonical definition to state claims against.
-/

/-! ## A386332.P1309764159037682432

`∩[A038603(n+1), A038614(n+1)]`
-/

namespace A386332.P1309764159037682432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386332.P1309764159037682432

/-! ## A386332.P1488107949939868252

`∩[A038614(n+1), A132080(n+1)]`
-/

namespace A386332.P1488107949939868252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386332.P1488107949939868252

/-! ## A386332.P17516242219953776488

`∩[A038614(n+1), A307636(n+1)]`
-/

namespace A386332.P17516242219953776488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386332.P17516242219953776488

/-! ## A386332.P602737007897882880

`∩[A038614(n+1), A383749(n+1)]`
-/

namespace A386332.P602737007897882880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386332.P602737007897882880

/-! ## A386332.P2048328504730692285

`∩[A038603(n+1), A039124(n+1)]`
-/

namespace A386332.P2048328504730692285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386332.P2048328504730692285

/-! ## A386332.P11794632347124763879

`∩[A038614(n+1), A039124(n+1)]`
-/

namespace A386332.P11794632347124763879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386332.P11794632347124763879

/-! ## A386332.P18386490278831818022

`∩[A038614(n+1), A052383(n+1)]`
-/

namespace A386332.P18386490278831818022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386332.P18386490278831818022

/-! ## A386332.P464817110486016004

`eq[n, A222223(A007918(n))]`
-/

namespace A386332.P464817110486016004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A007918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386332.P464817110486016004

/-! ## A386332.P17309938596522191133

`eq[n, A222223(A056149(n))]`
-/

namespace A386332.P17309938596522191133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A056149 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386332.P17309938596522191133

/-! ## A386332.P15150095682718678219

`eq[n, A062584(A222223(n))]`
-/

namespace A386332.P15150095682718678219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222223 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386332.P15150095682718678219

/-! ## A386332.P9402950548676427923

`eq[A064502(n), A222223(n)]`
-/

namespace A386332.P9402950548676427923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386332.P9402950548676427923

/-! ## A386332.P1215936683133510634

`eq[A084413(n), A222223(n)]`
-/

namespace A386332.P1215936683133510634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386332.P1215936683133510634

/-! ## A386332.P954831041348387150

`eq[A222223(n), A272476(n)]`
-/

namespace A386332.P954831041348387150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386332.P954831041348387150

/-! ## A386332.P14923467951167218757

`eq[A222223(n), A327420(n)]`
-/

namespace A386332.P14923467951167218757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386332.P14923467951167218757

/-! ## A386332.P10781785714555600930

`eq[A038700(n+1), A222223(n)]`
-/

namespace A386332.P10781785714555600930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386332.P10781785714555600930

/-! ## A386332.P4050791012780941160

`eq[A057637(n+1), A222223(n)]`
-/

namespace A386332.P4050791012780941160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386332.P4050791012780941160

/-! ## A386332.P11687192924134859995

`eq[A093868(n+1), A222223(n)]`
-/

namespace A386332.P11687192924134859995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386332.P11687192924134859995

/-! ## A386332.P11633138516627237939

`∩[A038603(n+1), A052414(n+1)]`
-/

namespace A386332.P11633138516627237939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386332.P11633138516627237939

/-! ## A386332.P1414174113997398779

`eq[A222223(n), A295609(n)]`
-/

namespace A386332.P1414174113997398779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386332.P1414174113997398779

/-!
# A386333: Primes without {1, 7} as digits.

The programs for A386333, there is no canonical definition to state claims against.
-/

/-! ## A386333.P13690668898160046733

`∩[A038603(n+1), A038615(n+1)]`
-/

namespace A386333.P13690668898160046733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386333.P13690668898160046733

/-! ## A386333.P17587102081641243697

`∩[A038615(n+1), A307636(n+1)]`
-/

namespace A386333.P17587102081641243697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386333.P17587102081641243697

/-! ## A386333.P7841677268397067898

`∩[A038615(n+1), A132080(n+1)]`
-/

namespace A386333.P7841677268397067898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386333.P7841677268397067898

/-! ## A386333.P7326342579989776390

`∩[A038615(n+1), A383749(n+1)]`
-/

namespace A386333.P7326342579989776390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386333.P7326342579989776390

/-! ## A386333.P17138137559480613012

`∩[A038603(n+1), A039125(n+1)]`
-/

namespace A386333.P17138137559480613012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386333.P17138137559480613012

/-! ## A386333.P8435287140062081764

`∩[A038615(n+1), A039125(n+1)]`
-/

namespace A386333.P8435287140062081764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039125 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386333.P8435287140062081764

/-! ## A386333.P10141047383659608664

`∩[A038615(n+1), A052383(n+1)]`
-/

namespace A386333.P10141047383659608664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386333.P10141047383659608664

/-! ## A386333.P8144617438696132334

`eq[n, A062584(A222224(n))]`
-/

namespace A386333.P8144617438696132334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222224 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386333.P8144617438696132334

/-! ## A386333.P5570960774790287449

`eq[A064502(n), A222224(n)]`
-/

namespace A386333.P5570960774790287449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386333.P5570960774790287449

/-! ## A386333.P8332003537949333479

`eq[A084413(n), A222224(n)]`
-/

namespace A386333.P8332003537949333479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386333.P8332003537949333479

/-! ## A386333.P5327993011774584163

`eq[A222224(n), A272476(n)]`
-/

namespace A386333.P5327993011774584163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386333.P5327993011774584163

/-! ## A386333.P3421665469386118249

`eq[A222224(n), A327420(n)]`
-/

namespace A386333.P3421665469386118249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386333.P3421665469386118249

/-! ## A386333.P9570070209834325939

`eq[A038700(n+1), A222224(n)]`
-/

namespace A386333.P9570070209834325939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386333.P9570070209834325939

/-! ## A386333.P15977792542923326204

`eq[A057637(n+1), A222224(n)]`
-/

namespace A386333.P15977792542923326204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386333.P15977792542923326204

/-! ## A386333.P6247356070560871166

`eq[A093868(n+1), A222224(n)]`
-/

namespace A386333.P6247356070560871166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222224 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386333.P6247356070560871166

/-! ## A386333.P15607361622367475818

`∩[A038603(n+1), A052419(n+1)]`
-/

namespace A386333.P15607361622367475818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386333.P15607361622367475818

/-! ## A386333.P6694524179967981427

`∩[A038603(n+1), A376047(n+1)]`
-/

namespace A386333.P6694524179967981427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386333.P6694524179967981427

/-!
# A386334: Primes without {1, 8} as digits.

The programs for A386334, there is no canonical definition to state claims against.
-/

/-! ## A386334.P13177457989832292490

`∩[A038603(n+1), A038616(n+1)]`
-/

namespace A386334.P13177457989832292490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386334.P13177457989832292490

/-! ## A386334.P8629183707894433357

`∩[A038616(n+1), A307636(n+1)]`
-/

namespace A386334.P8629183707894433357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386334.P8629183707894433357

/-! ## A386334.P5982866686748465297

`∩[A038616(n+1), A132080(n+1)]`
-/

namespace A386334.P5982866686748465297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386334.P5982866686748465297

/-! ## A386334.P3576682033381663939

`∩[A038616(n+1), A383749(n+1)]`
-/

namespace A386334.P3576682033381663939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386334.P3576682033381663939

/-! ## A386334.P6967841658782251535

`∩[A038603(n+1), A039126(n+1)]`
-/

namespace A386334.P6967841658782251535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386334.P6967841658782251535

/-! ## A386334.P6425756954298293941

`∩[A038616(n+1), A039126(n+1)]`
-/

namespace A386334.P6425756954298293941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386334.P6425756954298293941

/-! ## A386334.P430177966165684033

`∩[A038616(n+1), A052383(n+1)]`
-/

namespace A386334.P430177966165684033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386334.P430177966165684033

/-! ## A386334.P12121798110398490812

`eq[n, A222225(A007918(n))]`
-/

namespace A386334.P12121798110398490812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A007918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386334.P12121798110398490812

/-! ## A386334.P11998736796037054972

`eq[n, A222225(A056149(n))]`
-/

namespace A386334.P11998736796037054972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A056149 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386334.P11998736796037054972

/-! ## A386334.P1814031763953379881

`eq[n, A062584(A222225(n))]`
-/

namespace A386334.P1814031763953379881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222225 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386334.P1814031763953379881

/-! ## A386334.P3705971931193315365

`eq[A064502(n), A222225(n)]`
-/

namespace A386334.P3705971931193315365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386334.P3705971931193315365

/-! ## A386334.P1359827876778598333

`eq[A084413(n), A222225(n)]`
-/

namespace A386334.P1359827876778598333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386334.P1359827876778598333

/-! ## A386334.P16996407937073757391

`eq[A222225(n), A272476(n)]`
-/

namespace A386334.P16996407937073757391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386334.P16996407937073757391

/-! ## A386334.P5489572075382061827

`eq[A222225(n), A327420(n)]`
-/

namespace A386334.P5489572075382061827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386334.P5489572075382061827

/-! ## A386334.P5046580111587148062

`eq[A038700(n+1), A222225(n)]`
-/

namespace A386334.P5046580111587148062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386334.P5046580111587148062

/-! ## A386334.P12648126723348018669

`eq[A057637(n+1), A222225(n)]`
-/

namespace A386334.P12648126723348018669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386334.P12648126723348018669

/-! ## A386334.P11273864841963120850

`eq[A093868(n+1), A222225(n)]`
-/

namespace A386334.P11273864841963120850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386334.P11273864841963120850

/-! ## A386334.P3064623484514694085

`eq[A222225(n), A319068(n+1)]`
-/

namespace A386334.P3064623484514694085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386334.P3064623484514694085

/-! ## A386334.P13945039552952623366

`∩[A038603(n+1), A052421(n+1)]`
-/

namespace A386334.P13945039552952623366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386334.P13945039552952623366

/-! ## A386334.P8071689115347833990

`eq[A222225(n), A295609(n)]`
-/

namespace A386334.P8071689115347833990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386334.P8071689115347833990

/-!
# A386335: Primes without {2, 3} as digits.

The programs for A386335, the canonical program `A386335.P18013375525764117` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386335 has offset 1).

The definition of A386335 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386335.P18013375525764117

`∩[A038604(n+1), A038611(n+1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A386335

/-- `∩[A038604(n+1), A038611(n+1)]` -/
def P18013375525764117.Spec : Prop :=
  ∀ n, (P18013375525764117.a n : ℤ) = A386335 (n + 1)

theorem P18013375525764117.correct : P18013375525764117.Spec := by
  intro n
  simp only [A386335, Nat.add_sub_cancel]

end A386335

/-! ## A386335.P2553733630728680758

`∩[A038604(n+1), A039128(n+1)]`
-/

namespace A386335.P2553733630728680758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386335.P2553733630728680758

namespace A386335

/-- `∩[A038604(n+1), A039128(n+1)]` -/
def P2553733630728680758.Spec : Prop :=
  ∀ n, (P2553733630728680758.a n : ℤ) = A386335 (n + 1)

end A386335

/-! ## A386335.P12053213123517916538

`∩[A038611(n+1), A039128(n+1)]`
-/

namespace A386335.P12053213123517916538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386335.P12053213123517916538

namespace A386335

/-- `∩[A038611(n+1), A039128(n+1)]` -/
def P12053213123517916538.Spec : Prop :=
  ∀ n, (P12053213123517916538.a n : ℤ) = A386335 (n + 1)

end A386335

/-! ## A386335.P6461048657142033608

`∩[A038604(n+1), A052405(n+1)]`
-/

namespace A386335.P6461048657142033608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386335.P6461048657142033608

namespace A386335

/-- `∩[A038604(n+1), A052405(n+1)]` -/
def P6461048657142033608.Spec : Prop :=
  ∀ n, (P6461048657142033608.a n : ℤ) = A386335 (n + 1)

end A386335

/-! ## A386335.P4742004547671874096

`∩[A038611(n+1), A052404(n+1)]`
-/

namespace A386335.P4742004547671874096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386335.P4742004547671874096

namespace A386335

/-- `∩[A038611(n+1), A052404(n+1)]` -/
def P4742004547671874096.Spec : Prop :=
  ∀ n, (P4742004547671874096.a n : ℤ) = A386335 (n + 1)

end A386335

/-! ## A386335.P11261530075496692206

`p?[record[A222228(n)]]`
-/

namespace A386335.P11261530075496692206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A386335.P11261530075496692206

namespace A386335

/-- `p?[record[A222228(n)]]` -/
def P11261530075496692206.Spec : Prop :=
  ∀ n, P11261530075496692206.a n = A386335 (n + 1)

end A386335

/-! ## A386335.P3070571947007345626

`eq[n, A062584(A035044(n))]`
-/

namespace A386335.P3070571947007345626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A035044 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386335.P3070571947007345626

namespace A386335

/-- `eq[n, A062584(A035044(n))]` -/
def P3070571947007345626.Spec : Prop :=
  ∀ n, (P3070571947007345626.a n : ℤ) = A386335 (n + 1)

end A386335

/-! ## A386335.P2237969103806574502

`eq[A035044(n), A064502(n)]`
-/

namespace A386335.P2237969103806574502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386335.P2237969103806574502

namespace A386335

/-- `eq[A035044(n), A064502(n)]` -/
def P2237969103806574502.Spec : Prop :=
  ∀ n, (P2237969103806574502.a n : ℤ) = A386335 (n + 1)

end A386335

/-! ## A386335.P13605584870150373673

`eq[A035044(n), A084413(n)]`
-/

namespace A386335.P13605584870150373673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386335.P13605584870150373673

namespace A386335

/-- `eq[A035044(n), A084413(n)]` -/
def P13605584870150373673.Spec : Prop :=
  ∀ n, (P13605584870150373673.a n : ℤ) = A386335 (n + 1)

end A386335

/-! ## A386335.P9038527775065015910

`eq[A035044(n), A272476(n)]`
-/

namespace A386335.P9038527775065015910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386335.P9038527775065015910

namespace A386335

/-- `eq[A035044(n), A272476(n)]` -/
def P9038527775065015910.Spec : Prop :=
  ∀ n, (P9038527775065015910.a n : ℤ) = A386335 (n + 1)

end A386335

/-! ## A386335.P17849368712511032395

`eq[A035044(n), A038700(n+1)]`
-/

namespace A386335.P17849368712511032395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386335.P17849368712511032395

namespace A386335

/-- `eq[A035044(n), A038700(n+1)]` -/
def P17849368712511032395.Spec : Prop :=
  ∀ n, (P17849368712511032395.a n : ℤ) = A386335 (n + 1)

end A386335

/-! ## A386335.P12710654301362803781

`eq[A035044(n), A086508(n+1)]`
-/

namespace A386335.P12710654301362803781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086508 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386335.P12710654301362803781

namespace A386335

/-- `eq[A035044(n), A086508(n+1)]` -/
def P12710654301362803781.Spec : Prop :=
  ∀ n, (P12710654301362803781.a n : ℤ) = A386335 (n + 1)

end A386335

/-! ## A386335.P6628023765938147085

`eq[A035044(n), A093868(n+1)]`
-/

namespace A386335.P6628023765938147085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386335.P6628023765938147085

namespace A386335

/-- `eq[A035044(n), A093868(n+1)]` -/
def P6628023765938147085.Spec : Prop :=
  ∀ n, (P6628023765938147085.a n : ℤ) = A386335 (n + 1)

end A386335

/-! ## A386335.P9830320530677449235

`eq[A035044(n), A083169(n+1)]`
-/

namespace A386335.P9830320530677449235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035044 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083169 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386335.P9830320530677449235

namespace A386335

/-- `eq[A035044(n), A083169(n+1)]` -/
def P9830320530677449235.Spec : Prop :=
  ∀ n, (P9830320530677449235.a n : ℤ) = A386335 (n + 1)

end A386335

/-!
# A386336: Primes without {2, 4} as digits.

The programs for A386336, the canonical program `A386336.P17651694690908270259` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386336 has offset 1).

The definition of A386336 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6038 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386336.P17651694690908270259

`∩[A038604(n+1), A038612(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A386336

/-- `∩[A038604(n+1), A038612(n+1)]` -/
def P17651694690908270259.Spec : Prop :=
  ∀ n, (P17651694690908270259.a n : ℤ) = A386336 (n + 1)

theorem P17651694690908270259.correct : P17651694690908270259.Spec := by
  intro n
  simp only [A386336, Nat.add_sub_cancel]

end A386336

/-! ## A386336.P13865502268223542479

`∩[A038604(n+1), A039129(n+1)]`
-/

namespace A386336.P13865502268223542479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386336.P13865502268223542479

namespace A386336

/-- `∩[A038604(n+1), A039129(n+1)]` -/
def P13865502268223542479.Spec : Prop :=
  ∀ n, (P13865502268223542479.a n : ℤ) = A386336 (n + 1)

end A386336

/-! ## A386336.P3422677481142831875

`∩[A038612(n+1), A039129(n+1)]`
-/

namespace A386336.P3422677481142831875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386336.P3422677481142831875

namespace A386336

/-- `∩[A038612(n+1), A039129(n+1)]` -/
def P3422677481142831875.Spec : Prop :=
  ∀ n, (P3422677481142831875.a n : ℤ) = A386336 (n + 1)

end A386336

/-! ## A386336.P1171930115115400393

`∩[A038604(n+1), A052406(n+1)]`
-/

namespace A386336.P1171930115115400393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386336.P1171930115115400393

namespace A386336

/-- `∩[A038604(n+1), A052406(n+1)]` -/
def P1171930115115400393.Spec : Prop :=
  ∀ n, (P1171930115115400393.a n : ℤ) = A386336 (n + 1)

end A386336

/-! ## A386336.P7028420556379129630

`∩[A038612(n+1), A052404(n+1)]`
-/

namespace A386336.P7028420556379129630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386336.P7028420556379129630

namespace A386336

/-- `∩[A038612(n+1), A052404(n+1)]` -/
def P7028420556379129630.Spec : Prop :=
  ∀ n, (P7028420556379129630.a n : ℤ) = A386336 (n + 1)

end A386336

/-! ## A386336.P13174140691320686909

`eq[n, A222228(A051697(n))]`
-/

namespace A386336.P13174140691320686909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A051697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386336.P13174140691320686909

namespace A386336

/-- `eq[n, A222228(A051697(n))]` -/
def P13174140691320686909.Spec : Prop :=
  ∀ n, (P13174140691320686909.a n : ℤ) = A386336 (n + 1)

end A386336

/-! ## A386336.P12673461408025422840

`eq[n, A062584(A222228(n))]`
-/

namespace A386336.P12673461408025422840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222228 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386336.P12673461408025422840

namespace A386336

/-- `eq[n, A062584(A222228(n))]` -/
def P12673461408025422840.Spec : Prop :=
  ∀ n, (P12673461408025422840.a n : ℤ) = A386336 (n + 1)

end A386336

/-! ## A386336.P9876247229883901390

`eq[A064502(n), A222228(n)]`
-/

namespace A386336.P9876247229883901390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386336.P9876247229883901390

namespace A386336

/-- `eq[A064502(n), A222228(n)]` -/
def P9876247229883901390.Spec : Prop :=
  ∀ n, (P9876247229883901390.a n : ℤ) = A386336 (n + 1)

end A386336

/-! ## A386336.P4376879591483770032

`eq[n, A222228(A077018(n))]`
-/

namespace A386336.P4376879591483770032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 (A077018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386336.P4376879591483770032

namespace A386336

/-- `eq[n, A222228(A077018(n))]` -/
def P4376879591483770032.Spec : Prop :=
  ∀ n, (P4376879591483770032.a n : ℤ) = A386336 (n + 1)

end A386336

/-! ## A386336.P8375975067900959312

`eq[A084413(n), A222228(n)]`
-/

namespace A386336.P8375975067900959312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386336.P8375975067900959312

namespace A386336

/-- `eq[A084413(n), A222228(n)]` -/
def P8375975067900959312.Spec : Prop :=
  ∀ n, (P8375975067900959312.a n : ℤ) = A386336 (n + 1)

end A386336

/-! ## A386336.P8843534982495003103

`eq[A222228(n), A272476(n)]`
-/

namespace A386336.P8843534982495003103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386336.P8843534982495003103

namespace A386336

/-- `eq[A222228(n), A272476(n)]` -/
def P8843534982495003103.Spec : Prop :=
  ∀ n, (P8843534982495003103.a n : ℤ) = A386336 (n + 1)

end A386336

/-! ## A386336.P17232729560920113634

`eq[A038700(n+1), A222228(n)]`
-/

namespace A386336.P17232729560920113634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386336.P17232729560920113634

namespace A386336

/-- `eq[A038700(n+1), A222228(n)]` -/
def P17232729560920113634.Spec : Prop :=
  ∀ n, (P17232729560920113634.a n : ℤ) = A386336 (n + 1)

end A386336

/-! ## A386336.P15673997670452652158

`eq[A086508(n+1), A222228(n)]`
-/

namespace A386336.P15673997670452652158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386336.P15673997670452652158

namespace A386336

/-- `eq[A086508(n+1), A222228(n)]` -/
def P15673997670452652158.Spec : Prop :=
  ∀ n, (P15673997670452652158.a n : ℤ) = A386336 (n + 1)

end A386336

/-! ## A386336.P5620876898039342202

`eq[A093868(n+1), A222228(n)]`
-/

namespace A386336.P5620876898039342202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386336.P5620876898039342202

namespace A386336

/-- `eq[A093868(n+1), A222228(n)]` -/
def P5620876898039342202.Spec : Prop :=
  ∀ n, (P5620876898039342202.a n : ℤ) = A386336 (n + 1)

end A386336

/-! ## A386336.P9279645049516258751

`eq[A083169(n+1), A222228(n)]`
-/

namespace A386336.P9279645049516258751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386336.P9279645049516258751

namespace A386336

/-- `eq[A083169(n+1), A222228(n)]` -/
def P9279645049516258751.Spec : Prop :=
  ∀ n, (P9279645049516258751.a n : ℤ) = A386336 (n + 1)

end A386336

/-! ## A386336.P9278594799097675112

`eq[A222228(n), A252358(n)]`
-/

namespace A386336.P9278594799097675112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386336.P9278594799097675112

namespace A386336

/-- `eq[A222228(n), A252358(n)]` -/
def P9278594799097675112.Spec : Prop :=
  ∀ n, (P9278594799097675112.a n : ℤ) = A386336 (n + 1)

end A386336

/-! ## A386336.P10395784371371136147

`eq[A194603(n+1), A222228(n)]`
-/

namespace A386336.P10395784371371136147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386336.P10395784371371136147

namespace A386336

/-- `eq[A194603(n+1), A222228(n)]` -/
def P10395784371371136147.Spec : Prop :=
  ∀ n, (P10395784371371136147.a n : ℤ) = A386336 (n + 1)

end A386336

/-! ## A386336.P1175399897475767204

`eq[A222228(n), A249803(n+1)]`
-/

namespace A386336.P1175399897475767204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222228 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249803 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386336.P1175399897475767204

namespace A386336

/-- `eq[A222228(n), A249803(n+1)]` -/
def P1175399897475767204.Spec : Prop :=
  ∀ n, (P1175399897475767204.a n : ℤ) = A386336 (n + 1)

end A386336

/-!
# A386337: Primes without {2, 6} as digits.

The programs for A386337, the canonical program `A386337.P5423590144065966214` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386337 has offset 1).

The definition of A386337 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6055 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386337.P5423590144065966214

`∩[A038604(n+1), A038614(n+1)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A386337

/-- `∩[A038604(n+1), A038614(n+1)]` -/
def P5423590144065966214.Spec : Prop :=
  ∀ n, (P5423590144065966214.a n : ℤ) = A386337 (n + 1)

theorem P5423590144065966214.correct : P5423590144065966214.Spec := by
  intro n
  simp only [A386337, Nat.add_sub_cancel]

end A386337

/-! ## A386337.P14421567803889050002

`∩[A038604(n+1), A039131(n+1)]`
-/

namespace A386337.P14421567803889050002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386337.P14421567803889050002

namespace A386337

/-- `∩[A038604(n+1), A039131(n+1)]` -/
def P14421567803889050002.Spec : Prop :=
  ∀ n, (P14421567803889050002.a n : ℤ) = A386337 (n + 1)

end A386337

/-! ## A386337.P4609948552981762573

`∩[A038614(n+1), A039131(n+1)]`
-/

namespace A386337.P4609948552981762573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386337.P4609948552981762573

namespace A386337

/-- `∩[A038614(n+1), A039131(n+1)]` -/
def P4609948552981762573.Spec : Prop :=
  ∀ n, (P4609948552981762573.a n : ℤ) = A386337 (n + 1)

end A386337

/-! ## A386337.P16143097063578846110

`∩[A038614(n+1), A052404(n+1)]`
-/

namespace A386337.P16143097063578846110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386337.P16143097063578846110

namespace A386337

/-- `∩[A038614(n+1), A052404(n+1)]` -/
def P16143097063578846110.Spec : Prop :=
  ∀ n, (P16143097063578846110.a n : ℤ) = A386337 (n + 1)

end A386337

/-! ## A386337.P8852491888179877136

`∩[A038604(n+1), A052414(n+1)]`
-/

namespace A386337.P8852491888179877136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386337.P8852491888179877136

namespace A386337

/-- `∩[A038604(n+1), A052414(n+1)]` -/
def P8852491888179877136.Spec : Prop :=
  ∀ n, (P8852491888179877136.a n : ℤ) = A386337 (n + 1)

end A386337

/-! ## A386337.P6314075564558189413

`eq[n, A222230(A007918(n))]`
-/

namespace A386337.P6314075564558189413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A007918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386337.P6314075564558189413

namespace A386337

/-- `eq[n, A222230(A007918(n))]` -/
def P6314075564558189413.Spec : Prop :=
  ∀ n, (P6314075564558189413.a n : ℤ) = A386337 (n + 1)

end A386337

/-! ## A386337.P5909237555682973353

`eq[n, A222230(A051697(n))]`
-/

namespace A386337.P5909237555682973353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A051697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386337.P5909237555682973353

namespace A386337

/-- `eq[n, A222230(A051697(n))]` -/
def P5909237555682973353.Spec : Prop :=
  ∀ n, (P5909237555682973353.a n : ℤ) = A386337 (n + 1)

end A386337

/-! ## A386337.P3302570541648838966

`eq[n, A062584(A222230(n))]`
-/

namespace A386337.P3302570541648838966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222230 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386337.P3302570541648838966

namespace A386337

/-- `eq[n, A062584(A222230(n))]` -/
def P3302570541648838966.Spec : Prop :=
  ∀ n, (P3302570541648838966.a n : ℤ) = A386337 (n + 1)

end A386337

/-! ## A386337.P13999860954929449745

`eq[A064502(n), A222230(n)]`
-/

namespace A386337.P13999860954929449745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386337.P13999860954929449745

namespace A386337

/-- `eq[A064502(n), A222230(n)]` -/
def P13999860954929449745.Spec : Prop :=
  ∀ n, (P13999860954929449745.a n : ℤ) = A386337 (n + 1)

end A386337

/-! ## A386337.P10640081540470476986

`eq[n, A222230(A077018(n))]`
-/

namespace A386337.P10640081540470476986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 (A077018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386337.P10640081540470476986

namespace A386337

/-- `eq[n, A222230(A077018(n))]` -/
def P10640081540470476986.Spec : Prop :=
  ∀ n, (P10640081540470476986.a n : ℤ) = A386337 (n + 1)

end A386337

/-! ## A386337.P2296965929188391861

`eq[A084413(n), A222230(n)]`
-/

namespace A386337.P2296965929188391861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386337.P2296965929188391861

namespace A386337

/-- `eq[A084413(n), A222230(n)]` -/
def P2296965929188391861.Spec : Prop :=
  ∀ n, (P2296965929188391861.a n : ℤ) = A386337 (n + 1)

end A386337

/-! ## A386337.P15616219824253935623

`eq[A222230(n), A272476(n)]`
-/

namespace A386337.P15616219824253935623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386337.P15616219824253935623

namespace A386337

/-- `eq[A222230(n), A272476(n)]` -/
def P15616219824253935623.Spec : Prop :=
  ∀ n, (P15616219824253935623.a n : ℤ) = A386337 (n + 1)

end A386337

/-! ## A386337.P12301958555133979552

`eq[A222230(n), A327420(n)]`
-/

namespace A386337.P12301958555133979552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386337.P12301958555133979552

namespace A386337

/-- `eq[A222230(n), A327420(n)]` -/
def P12301958555133979552.Spec : Prop :=
  ∀ n, (P12301958555133979552.a n : ℤ) = A386337 (n + 1)

end A386337

/-! ## A386337.P18167407619871468085

`eq[A038700(n+1), A222230(n)]`
-/

namespace A386337.P18167407619871468085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386337.P18167407619871468085

namespace A386337

/-- `eq[A038700(n+1), A222230(n)]` -/
def P18167407619871468085.Spec : Prop :=
  ∀ n, (P18167407619871468085.a n : ℤ) = A386337 (n + 1)

end A386337

/-! ## A386337.P13038699508886461697

`eq[A057637(n+1), A222230(n)]`
-/

namespace A386337.P13038699508886461697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386337.P13038699508886461697

namespace A386337

/-- `eq[A057637(n+1), A222230(n)]` -/
def P13038699508886461697.Spec : Prop :=
  ∀ n, (P13038699508886461697.a n : ℤ) = A386337 (n + 1)

end A386337

/-! ## A386337.P13549416621630032352

`eq[A086508(n+1), A222230(n)]`
-/

namespace A386337.P13549416621630032352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386337.P13549416621630032352

namespace A386337

/-- `eq[A086508(n+1), A222230(n)]` -/
def P13549416621630032352.Spec : Prop :=
  ∀ n, (P13549416621630032352.a n : ℤ) = A386337 (n + 1)

end A386337

/-! ## A386337.P6325021860433598763

`eq[A093868(n+1), A222230(n)]`
-/

namespace A386337.P6325021860433598763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386337.P6325021860433598763

namespace A386337

/-- `eq[A093868(n+1), A222230(n)]` -/
def P6325021860433598763.Spec : Prop :=
  ∀ n, (P6325021860433598763.a n : ℤ) = A386337 (n + 1)

end A386337

/-! ## A386337.P17331422319600769582

`eq[A222230(n), A252358(n)]`
-/

namespace A386337.P17331422319600769582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252358 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386337.P17331422319600769582

namespace A386337

/-- `eq[A222230(n), A252358(n)]` -/
def P17331422319600769582.Spec : Prop :=
  ∀ n, (P17331422319600769582.a n : ℤ) = A386337 (n + 1)

end A386337

/-! ## A386337.P4162387565209120168

`eq[A194603(n+1), A222230(n)]`
-/

namespace A386337.P4162387565209120168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386337.P4162387565209120168

namespace A386337

/-- `eq[A194603(n+1), A222230(n)]` -/
def P4162387565209120168.Spec : Prop :=
  ∀ n, (P4162387565209120168.a n : ℤ) = A386337 (n + 1)

end A386337

/-! ## A386337.P467941417766841812

`eq[A222230(n), A249803(n+1)]`
-/

namespace A386337.P467941417766841812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222230 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249803 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386337.P467941417766841812

namespace A386337

/-- `eq[A222230(n), A249803(n+1)]` -/
def P467941417766841812.Spec : Prop :=
  ∀ n, (P467941417766841812.a n : ℤ) = A386337 (n + 1)

end A386337

/-!
# A386338: Primes without {2, 8} as digits.

The programs for A386338, the canonical program `A386338.P12113303320728621064` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386338 has offset 1).

The definition of A386338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386338.P12113303320728621064

`∩[A038604(n+1), A038616(n+1)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A386338

/-- `∩[A038604(n+1), A038616(n+1)]` -/
def P12113303320728621064.Spec : Prop :=
  ∀ n, (P12113303320728621064.a n : ℤ) = A386338 (n + 1)

theorem P12113303320728621064.correct : P12113303320728621064.Spec := by
  intro n
  simp only [A386338, Nat.add_sub_cancel]

end A386338

/-! ## A386338.P2672709978540514393

`∩[A038604(n+1), A039133(n+1)]`
-/

namespace A386338.P2672709978540514393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386338.P2672709978540514393

namespace A386338

/-- `∩[A038604(n+1), A039133(n+1)]` -/
def P2672709978540514393.Spec : Prop :=
  ∀ n, (P2672709978540514393.a n : ℤ) = A386338 (n + 1)

end A386338

/-! ## A386338.P908313378458006041

`∩[A038616(n+1), A039133(n+1)]`
-/

namespace A386338.P908313378458006041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386338.P908313378458006041

namespace A386338

/-- `∩[A038616(n+1), A039133(n+1)]` -/
def P908313378458006041.Spec : Prop :=
  ∀ n, (P908313378458006041.a n : ℤ) = A386338 (n + 1)

end A386338

/-! ## A386338.P14443685844643364349

`∩[A038616(n+1), A052404(n+1)]`
-/

namespace A386338.P14443685844643364349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386338.P14443685844643364349

namespace A386338

/-- `∩[A038616(n+1), A052404(n+1)]` -/
def P14443685844643364349.Spec : Prop :=
  ∀ n, (P14443685844643364349.a n : ℤ) = A386338 (n + 1)

end A386338

/-! ## A386338.P8931312729960161963

`∩[A038604(n+1), A052421(n+1)]`
-/

namespace A386338.P8931312729960161963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386338.P8931312729960161963

namespace A386338

/-- `∩[A038604(n+1), A052421(n+1)]` -/
def P8931312729960161963.Spec : Prop :=
  ∀ n, (P8931312729960161963.a n : ℤ) = A386338 (n + 1)

end A386338

/-! ## A386338.P2714221494236384847

`eq[n, A222232(A007918(n))]`
-/

namespace A386338.P2714221494236384847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A007918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386338.P2714221494236384847

namespace A386338

/-- `eq[n, A222232(A007918(n))]` -/
def P2714221494236384847.Spec : Prop :=
  ∀ n, (P2714221494236384847.a n : ℤ) = A386338 (n + 1)

end A386338

/-! ## A386338.P18051248839475558163

`eq[n, A222232(A051697(n))]`
-/

namespace A386338.P18051248839475558163
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A051697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386338.P18051248839475558163

namespace A386338

/-- `eq[n, A222232(A051697(n))]` -/
def P18051248839475558163.Spec : Prop :=
  ∀ n, (P18051248839475558163.a n : ℤ) = A386338 (n + 1)

end A386338

/-! ## A386338.P6464293211147555799

`eq[n, A062584(A222232(n))]`
-/

namespace A386338.P6464293211147555799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222232 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386338.P6464293211147555799

namespace A386338

/-- `eq[n, A062584(A222232(n))]` -/
def P6464293211147555799.Spec : Prop :=
  ∀ n, (P6464293211147555799.a n : ℤ) = A386338 (n + 1)

end A386338

/-! ## A386338.P15003215715050773800

`eq[A064502(n), A222232(n)]`
-/

namespace A386338.P15003215715050773800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386338.P15003215715050773800

namespace A386338

/-- `eq[A064502(n), A222232(n)]` -/
def P15003215715050773800.Spec : Prop :=
  ∀ n, (P15003215715050773800.a n : ℤ) = A386338 (n + 1)

end A386338

/-! ## A386338.P16343912983315266075

`eq[n, A222232(A077018(n))]`
-/

namespace A386338.P16343912983315266075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 (A077018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386338.P16343912983315266075

namespace A386338

/-- `eq[n, A222232(A077018(n))]` -/
def P16343912983315266075.Spec : Prop :=
  ∀ n, (P16343912983315266075.a n : ℤ) = A386338 (n + 1)

end A386338

/-! ## A386338.P1449438658688601802

`eq[A084413(n), A222232(n)]`
-/

namespace A386338.P1449438658688601802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386338.P1449438658688601802

namespace A386338

/-- `eq[A084413(n), A222232(n)]` -/
def P1449438658688601802.Spec : Prop :=
  ∀ n, (P1449438658688601802.a n : ℤ) = A386338 (n + 1)

end A386338

/-! ## A386338.P264942825267514963

`eq[A222232(n), A272476(n)]`
-/

namespace A386338.P264942825267514963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386338.P264942825267514963

namespace A386338

/-- `eq[A222232(n), A272476(n)]` -/
def P264942825267514963.Spec : Prop :=
  ∀ n, (P264942825267514963.a n : ℤ) = A386338 (n + 1)

end A386338

/-! ## A386338.P10728172757008115475

`eq[A222232(n), A327420(n)]`
-/

namespace A386338.P10728172757008115475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386338.P10728172757008115475

namespace A386338

/-- `eq[A222232(n), A327420(n)]` -/
def P10728172757008115475.Spec : Prop :=
  ∀ n, (P10728172757008115475.a n : ℤ) = A386338 (n + 1)

end A386338

/-! ## A386338.P4921468644513225464

`eq[A038700(n+1), A222232(n)]`
-/

namespace A386338.P4921468644513225464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386338.P4921468644513225464

namespace A386338

/-- `eq[A038700(n+1), A222232(n)]` -/
def P4921468644513225464.Spec : Prop :=
  ∀ n, (P4921468644513225464.a n : ℤ) = A386338 (n + 1)

end A386338

/-! ## A386338.P4948943344061590615

`eq[A057637(n+1), A222232(n)]`
-/

namespace A386338.P4948943344061590615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386338.P4948943344061590615

namespace A386338

/-- `eq[A057637(n+1), A222232(n)]` -/
def P4948943344061590615.Spec : Prop :=
  ∀ n, (P4948943344061590615.a n : ℤ) = A386338 (n + 1)

end A386338

/-! ## A386338.P12687571301569398457

`eq[A086508(n+1), A222232(n)]`
-/

namespace A386338.P12687571301569398457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386338.P12687571301569398457

namespace A386338

/-- `eq[A086508(n+1), A222232(n)]` -/
def P12687571301569398457.Spec : Prop :=
  ∀ n, (P12687571301569398457.a n : ℤ) = A386338 (n + 1)

end A386338

/-! ## A386338.P6467731504300655954

`eq[A093868(n+1), A222232(n)]`
-/

namespace A386338.P6467731504300655954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386338.P6467731504300655954

namespace A386338

/-- `eq[A093868(n+1), A222232(n)]` -/
def P6467731504300655954.Spec : Prop :=
  ∀ n, (P6467731504300655954.a n : ℤ) = A386338 (n + 1)

end A386338

/-! ## A386338.P8220747732886623272

`eq[A210957(n+2), A222232(n)]`
-/

namespace A386338.P8220747732886623272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210957 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386338.P8220747732886623272

namespace A386338

/-- `eq[A210957(n+2), A222232(n)]` -/
def P8220747732886623272.Spec : Prop :=
  ∀ n, (P8220747732886623272.a n : ℤ) = A386338 (n + 1)

end A386338

/-! ## A386338.P8852866642654581465

`eq[A222232(n), A295609(n)]`
-/

namespace A386338.P8852866642654581465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386338.P8852866642654581465

namespace A386338

/-- `eq[A222232(n), A295609(n)]` -/
def P8852866642654581465.Spec : Prop :=
  ∀ n, (P8852866642654581465.a n : ℤ) = A386338 (n + 1)

end A386338

/-! ## A386338.P17805852005711017116

`eq[A083169(n+1), A222232(n)]`
-/

namespace A386338.P17805852005711017116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386338.P17805852005711017116

namespace A386338

/-- `eq[A083169(n+1), A222232(n)]` -/
def P17805852005711017116.Spec : Prop :=
  ∀ n, (P17805852005711017116.a n : ℤ) = A386338 (n + 1)

end A386338

/-!
# A386339: Primes without {2, 9} as digits.

The programs for A386339, there is no canonical definition to state claims against.
-/

/-! ## A386339.P3237612578399961873

`∩[A038604(n+1), A038617(n+1)]`
-/

namespace A386339.P3237612578399961873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386339.P3237612578399961873

/-! ## A386339.P14240185479643777956

`∩[A038604(n+1), A039134(n+1)]`
-/

namespace A386339.P14240185479643777956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386339.P14240185479643777956

/-! ## A386339.P6008726291946574099

`∩[A038617(n+1), A039134(n+1)]`
-/

namespace A386339.P6008726291946574099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386339.P6008726291946574099

/-! ## A386339.P7116815099527809272

`∩[A038617(n+1), A052404(n+1)]`
-/

namespace A386339.P7116815099527809272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386339.P7116815099527809272

/-! ## A386339.P2512784275723802061

`∩[A038604(n+1), A007095(n)]`
-/

namespace A386339.P2512784275723802061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386339.P2512784275723802061

/-! ## A386339.P10456292347638232843

`∩[A037479(n+1), A038604(n+1)]`
-/

namespace A386339.P10456292347638232843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038604 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386339.P10456292347638232843

/-! ## A386339.P3166558898030720275

`eq[n, A062584(A222233(n))]`
-/

namespace A386339.P3166558898030720275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222233 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386339.P3166558898030720275

/-! ## A386339.P9585727208648899463

`eq[A064502(n), A222233(n)]`
-/

namespace A386339.P9585727208648899463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386339.P9585727208648899463

/-! ## A386339.P4766521249450564711

`eq[A084413(n), A222233(n)]`
-/

namespace A386339.P4766521249450564711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386339.P4766521249450564711

/-! ## A386339.P1428339079367479717

`eq[A222233(n), A272476(n)]`
-/

namespace A386339.P1428339079367479717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386339.P1428339079367479717

/-! ## A386339.P5857328237414587008

`eq[A222233(n), A327420(n)]`
-/

namespace A386339.P5857328237414587008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386339.P5857328237414587008

/-! ## A386339.P13139152350565000455

`eq[A038700(n+1), A222233(n)]`
-/

namespace A386339.P13139152350565000455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386339.P13139152350565000455

/-! ## A386339.P13674162040518792436

`eq[A086508(n+1), A222233(n)]`
-/

namespace A386339.P13674162040518792436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386339.P13674162040518792436

/-! ## A386339.P11117550234583626401

`eq[A093868(n+1), A222233(n)]`
-/

namespace A386339.P11117550234583626401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386339.P11117550234583626401

/-! ## A386339.P16804807652358108930

`eq[A210957(n+2), A222233(n)]`
-/

namespace A386339.P16804807652358108930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210957 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386339.P16804807652358108930

/-! ## A386339.P14848745218214825006

`eq[A083169(n+1), A222233(n)]`
-/

namespace A386339.P14848745218214825006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222233 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386339.P14848745218214825006

/-!
# A386340: Primes without {3, 4} as digits.

The programs for A386340, the canonical program `A386340.P1648994612721377908` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386340 has offset 1).

The definition of A386340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4563 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386340.P1648994612721377908

`∩[A038611(n+1), A038612(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A386340

/-- `∩[A038611(n+1), A038612(n+1)]` -/
def P1648994612721377908.Spec : Prop :=
  ∀ n, (P1648994612721377908.a n : ℤ) = A386340 (n + 1)

theorem P1648994612721377908.correct : P1648994612721377908.Spec := by
  intro n
  simp only [A386340, Nat.add_sub_cancel]

end A386340

/-! ## A386340.P3046191920299234626

`∩[A038611(n+1), A039135(n+1)]`
-/

namespace A386340.P3046191920299234626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386340.P3046191920299234626

namespace A386340

/-- `∩[A038611(n+1), A039135(n+1)]` -/
def P3046191920299234626.Spec : Prop :=
  ∀ n, (P3046191920299234626.a n : ℤ) = A386340 (n + 1)

end A386340

/-! ## A386340.P7953633707267467554

`∩[A038612(n+1), A039135(n+1)]`
-/

namespace A386340.P7953633707267467554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386340.P7953633707267467554

namespace A386340

/-- `∩[A038612(n+1), A039135(n+1)]` -/
def P7953633707267467554.Spec : Prop :=
  ∀ n, (P7953633707267467554.a n : ℤ) = A386340 (n + 1)

end A386340

/-! ## A386340.P173241612925184376

`∩[A038611(n+1), A052406(n+1)]`
-/

namespace A386340.P173241612925184376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386340.P173241612925184376

namespace A386340

/-- `∩[A038611(n+1), A052406(n+1)]` -/
def P173241612925184376.Spec : Prop :=
  ∀ n, (P173241612925184376.a n : ℤ) = A386340 (n + 1)

end A386340

/-! ## A386340.P6346650983266471500

`∩[A038612(n+1), A052405(n+1)]`
-/

namespace A386340.P6346650983266471500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386340.P6346650983266471500

namespace A386340

/-- `∩[A038612(n+1), A052405(n+1)]` -/
def P6346650983266471500.Spec : Prop :=
  ∀ n, (P6346650983266471500.a n : ℤ) = A386340 (n + 1)

end A386340

/-! ## A386340.P4999977024309470843

`p?[record[A222235(n)]]`
-/

namespace A386340.P4999977024309470843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A386340.P4999977024309470843

namespace A386340

/-- `p?[record[A222235(n)]]` -/
def P4999977024309470843.Spec : Prop :=
  ∀ n, P4999977024309470843.a n = A386340 (n + 1)

end A386340

/-! ## A386340.P9750784483320170532

`eq[n, A062584(A222234(n))]`
-/

namespace A386340.P9750784483320170532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222234 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386340.P9750784483320170532

namespace A386340

/-- `eq[n, A062584(A222234(n))]` -/
def P9750784483320170532.Spec : Prop :=
  ∀ n, (P9750784483320170532.a n : ℤ) = A386340 (n + 1)

end A386340

/-! ## A386340.P8477652169660655896

`eq[A064502(n), A222234(n)]`
-/

namespace A386340.P8477652169660655896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386340.P8477652169660655896

namespace A386340

/-- `eq[A064502(n), A222234(n)]` -/
def P8477652169660655896.Spec : Prop :=
  ∀ n, (P8477652169660655896.a n : ℤ) = A386340 (n + 1)

end A386340

/-! ## A386340.P645598699923692678

`eq[A084413(n), A222234(n)]`
-/

namespace A386340.P645598699923692678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386340.P645598699923692678

namespace A386340

/-- `eq[A084413(n), A222234(n)]` -/
def P645598699923692678.Spec : Prop :=
  ∀ n, (P645598699923692678.a n : ℤ) = A386340 (n + 1)

end A386340

/-! ## A386340.P13669436459987231421

`eq[A222234(n), A272476(n)]`
-/

namespace A386340.P13669436459987231421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386340.P13669436459987231421

namespace A386340

/-- `eq[A222234(n), A272476(n)]` -/
def P13669436459987231421.Spec : Prop :=
  ∀ n, (P13669436459987231421.a n : ℤ) = A386340 (n + 1)

end A386340

/-! ## A386340.P13296123619021639555

`eq[A038700(n+1), A222234(n)]`
-/

namespace A386340.P13296123619021639555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386340.P13296123619021639555

namespace A386340

/-- `eq[A038700(n+1), A222234(n)]` -/
def P13296123619021639555.Spec : Prop :=
  ∀ n, (P13296123619021639555.a n : ℤ) = A386340 (n + 1)

end A386340

/-! ## A386340.P11583458516106420851

`eq[A057637(n+1), A222234(n)]`
-/

namespace A386340.P11583458516106420851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386340.P11583458516106420851

namespace A386340

/-- `eq[A057637(n+1), A222234(n)]` -/
def P11583458516106420851.Spec : Prop :=
  ∀ n, (P11583458516106420851.a n : ℤ) = A386340 (n + 1)

end A386340

/-! ## A386340.P14992893521230240763

`eq[A093868(n+1), A222234(n)]`
-/

namespace A386340.P14992893521230240763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386340.P14992893521230240763

namespace A386340

/-- `eq[A093868(n+1), A222234(n)]` -/
def P14992893521230240763.Spec : Prop :=
  ∀ n, (P14992893521230240763.a n : ℤ) = A386340 (n + 1)

end A386340

/-!
# A386341: Primes without {3, 6} as digits.

The programs for A386341, the canonical program `A386341.P11111794436961837809` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386341 has offset 1).

The definition of A386341 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4574 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386341.P11111794436961837809

`∩[A038611(n+1), A038614(n+1)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A386341

/-- `∩[A038611(n+1), A038614(n+1)]` -/
def P11111794436961837809.Spec : Prop :=
  ∀ n, (P11111794436961837809.a n : ℤ) = A386341 (n + 1)

theorem P11111794436961837809.correct : P11111794436961837809.Spec := by
  intro n
  simp only [A386341, Nat.add_sub_cancel]

end A386341

/-! ## A386341.P3259225019127381413

`∩[A038611(n+1), A039137(n+1)]`
-/

namespace A386341.P3259225019127381413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386341.P3259225019127381413

namespace A386341

/-- `∩[A038611(n+1), A039137(n+1)]` -/
def P3259225019127381413.Spec : Prop :=
  ∀ n, (P3259225019127381413.a n : ℤ) = A386341 (n + 1)

end A386341

/-! ## A386341.P3324039540333957713

`∩[A038614(n+1), A039137(n+1)]`
-/

namespace A386341.P3324039540333957713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386341.P3324039540333957713

namespace A386341

/-- `∩[A038614(n+1), A039137(n+1)]` -/
def P3324039540333957713.Spec : Prop :=
  ∀ n, (P3324039540333957713.a n : ℤ) = A386341 (n + 1)

end A386341

/-! ## A386341.P6023845135713859351

`∩[A038614(n+1), A052405(n+1)]`
-/

namespace A386341.P6023845135713859351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386341.P6023845135713859351

namespace A386341

/-- `∩[A038614(n+1), A052405(n+1)]` -/
def P6023845135713859351.Spec : Prop :=
  ∀ n, (P6023845135713859351.a n : ℤ) = A386341 (n + 1)

end A386341

/-! ## A386341.P14147019471384067385

`∩[A038611(n+1), A052414(n+1)]`
-/

namespace A386341.P14147019471384067385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386341.P14147019471384067385

namespace A386341

/-- `∩[A038611(n+1), A052414(n+1)]` -/
def P14147019471384067385.Spec : Prop :=
  ∀ n, (P14147019471384067385.a n : ℤ) = A386341 (n + 1)

end A386341

/-! ## A386341.P2102845136228817508

`eq[n, A222236(A007918(n))]`
-/

namespace A386341.P2102845136228817508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 (A007918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386341.P2102845136228817508

namespace A386341

/-- `eq[n, A222236(A007918(n))]` -/
def P2102845136228817508.Spec : Prop :=
  ∀ n, (P2102845136228817508.a n : ℤ) = A386341 (n + 1)

end A386341

/-! ## A386341.P6607747506180228650

`eq[n, A062584(A222236(n))]`
-/

namespace A386341.P6607747506180228650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222236 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386341.P6607747506180228650

namespace A386341

/-- `eq[n, A062584(A222236(n))]` -/
def P6607747506180228650.Spec : Prop :=
  ∀ n, (P6607747506180228650.a n : ℤ) = A386341 (n + 1)

end A386341

/-! ## A386341.P10079066464866443519

`eq[A064502(n), A222236(n)]`
-/

namespace A386341.P10079066464866443519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386341.P10079066464866443519

namespace A386341

/-- `eq[A064502(n), A222236(n)]` -/
def P10079066464866443519.Spec : Prop :=
  ∀ n, (P10079066464866443519.a n : ℤ) = A386341 (n + 1)

end A386341

/-! ## A386341.P1198732003400164939

`eq[A084413(n), A222236(n)]`
-/

namespace A386341.P1198732003400164939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386341.P1198732003400164939

namespace A386341

/-- `eq[A084413(n), A222236(n)]` -/
def P1198732003400164939.Spec : Prop :=
  ∀ n, (P1198732003400164939.a n : ℤ) = A386341 (n + 1)

end A386341

/-! ## A386341.P11153141730661549394

`eq[A222236(n), A272476(n)]`
-/

namespace A386341.P11153141730661549394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386341.P11153141730661549394

namespace A386341

/-- `eq[A222236(n), A272476(n)]` -/
def P11153141730661549394.Spec : Prop :=
  ∀ n, (P11153141730661549394.a n : ℤ) = A386341 (n + 1)

end A386341

/-! ## A386341.P3035984793819336800

`eq[A038700(n+1), A222236(n)]`
-/

namespace A386341.P3035984793819336800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386341.P3035984793819336800

namespace A386341

/-- `eq[A038700(n+1), A222236(n)]` -/
def P3035984793819336800.Spec : Prop :=
  ∀ n, (P3035984793819336800.a n : ℤ) = A386341 (n + 1)

end A386341

/-! ## A386341.P4498763767993762586

`eq[A093868(n+1), A222236(n)]`
-/

namespace A386341.P4498763767993762586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386341.P4498763767993762586

namespace A386341

/-- `eq[A093868(n+1), A222236(n)]` -/
def P4498763767993762586.Spec : Prop :=
  ∀ n, (P4498763767993762586.a n : ℤ) = A386341 (n + 1)

end A386341

/-! ## A386341.P5040027425174490205

`eq[A222236(n), A295609(n)]`
-/

namespace A386341.P5040027425174490205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222236 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386341.P5040027425174490205

namespace A386341

/-- `eq[A222236(n), A295609(n)]` -/
def P5040027425174490205.Spec : Prop :=
  ∀ n, (P5040027425174490205.a n : ℤ) = A386341 (n + 1)

end A386341

/-!
# A386342: Primes without {3, 7} as digits.

The programs for A386342, the canonical program `A386342.P11450868314914418014` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386342 has offset 1).

The definition of A386342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6633 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386342.P11450868314914418014

`∩[A038611(n+1), A038615(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A386342

/-- `∩[A038611(n+1), A038615(n+1)]` -/
def P11450868314914418014.Spec : Prop :=
  ∀ n, (P11450868314914418014.a n : ℤ) = A386342 (n + 1)

theorem P11450868314914418014.correct : P11450868314914418014.Spec := by
  intro n
  simp only [A386342, Nat.add_sub_cancel]

end A386342

/-! ## A386342.P7791260452194792212

`∩[A038611(n+1), A039138(n+1)]`
-/

namespace A386342.P7791260452194792212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386342.P7791260452194792212

namespace A386342

/-- `∩[A038611(n+1), A039138(n+1)]` -/
def P7791260452194792212.Spec : Prop :=
  ∀ n, (P7791260452194792212.a n : ℤ) = A386342 (n + 1)

end A386342

/-! ## A386342.P4872626519276181768

`∩[A038615(n+1), A039138(n+1)]`
-/

namespace A386342.P4872626519276181768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386342.P4872626519276181768

namespace A386342

/-- `∩[A038615(n+1), A039138(n+1)]` -/
def P4872626519276181768.Spec : Prop :=
  ∀ n, (P4872626519276181768.a n : ℤ) = A386342 (n + 1)

end A386342

/-! ## A386342.P1232639807329284070

`∩[A038611(n+1), A376047(n+1)]`
-/

namespace A386342.P1232639807329284070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386342.P1232639807329284070

namespace A386342

/-- `∩[A038611(n+1), A376047(n+1)]` -/
def P1232639807329284070.Spec : Prop :=
  ∀ n, (P1232639807329284070.a n : ℤ) = A386342 (n + 1)

end A386342

/-! ## A386342.P4139354476260336801

`∩[A038615(n+1), A052405(n+1)]`
-/

namespace A386342.P4139354476260336801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386342.P4139354476260336801

namespace A386342

/-- `∩[A038615(n+1), A052405(n+1)]` -/
def P4139354476260336801.Spec : Prop :=
  ∀ n, (P4139354476260336801.a n : ℤ) = A386342 (n + 1)

end A386342

/-! ## A386342.P16696921589114146039

`∩[A038611(n+1), A052419(n+1)]`
-/

namespace A386342.P16696921589114146039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386342.P16696921589114146039

namespace A386342

/-- `∩[A038611(n+1), A052419(n+1)]` -/
def P16696921589114146039.Spec : Prop :=
  ∀ n, (P16696921589114146039.a n : ℤ) = A386342 (n + 1)

end A386342

/-! ## A386342.P7325560463844476987

`eq[n, A062584(A222237(n))]`
-/

namespace A386342.P7325560463844476987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222237 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386342.P7325560463844476987

namespace A386342

/-- `eq[n, A062584(A222237(n))]` -/
def P7325560463844476987.Spec : Prop :=
  ∀ n, (P7325560463844476987.a n : ℤ) = A386342 (n + 1)

end A386342

/-! ## A386342.P13197044237109501292

`eq[A064502(n), A222237(n)]`
-/

namespace A386342.P13197044237109501292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386342.P13197044237109501292

namespace A386342

/-- `eq[A064502(n), A222237(n)]` -/
def P13197044237109501292.Spec : Prop :=
  ∀ n, (P13197044237109501292.a n : ℤ) = A386342 (n + 1)

end A386342

/-! ## A386342.P1591531104850141850

`eq[A084413(n), A222237(n)]`
-/

namespace A386342.P1591531104850141850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386342.P1591531104850141850

namespace A386342

/-- `eq[A084413(n), A222237(n)]` -/
def P1591531104850141850.Spec : Prop :=
  ∀ n, (P1591531104850141850.a n : ℤ) = A386342 (n + 1)

end A386342

/-! ## A386342.P2261188768001713376

`eq[A222237(n), A272476(n)]`
-/

namespace A386342.P2261188768001713376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386342.P2261188768001713376

namespace A386342

/-- `eq[A222237(n), A272476(n)]` -/
def P2261188768001713376.Spec : Prop :=
  ∀ n, (P2261188768001713376.a n : ℤ) = A386342 (n + 1)

end A386342

/-! ## A386342.P11480282792886393525

`eq[A222237(n), A327420(n)]`
-/

namespace A386342.P11480282792886393525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386342.P11480282792886393525

namespace A386342

/-- `eq[A222237(n), A327420(n)]` -/
def P11480282792886393525.Spec : Prop :=
  ∀ n, (P11480282792886393525.a n : ℤ) = A386342 (n + 1)

end A386342

/-! ## A386342.P5072484415039723855

`eq[A057637(n+1), A222237(n)]`
-/

namespace A386342.P5072484415039723855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386342.P5072484415039723855

namespace A386342

/-- `eq[A057637(n+1), A222237(n)]` -/
def P5072484415039723855.Spec : Prop :=
  ∀ n, (P5072484415039723855.a n : ℤ) = A386342 (n + 1)

end A386342

/-! ## A386342.P15439314306739528883

`eq[A093868(n+1), A222237(n)]`
-/

namespace A386342.P15439314306739528883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386342.P15439314306739528883

namespace A386342

/-- `eq[A093868(n+1), A222237(n)]` -/
def P15439314306739528883.Spec : Prop :=
  ∀ n, (P15439314306739528883.a n : ℤ) = A386342 (n + 1)

end A386342

/-!
# A386343: Primes without {3, 8} as digits.

The programs for A386343, the canonical program `A386343.P17130214579981136633` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386343 has offset 1).

The definition of A386343 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386343.P17130214579981136633

`∩[A038611(n+1), A038616(n+1)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A386343

/-- `∩[A038611(n+1), A038616(n+1)]` -/
def P17130214579981136633.Spec : Prop :=
  ∀ n, (P17130214579981136633.a n : ℤ) = A386343 (n + 1)

theorem P17130214579981136633.correct : P17130214579981136633.Spec := by
  intro n
  simp only [A386343, Nat.add_sub_cancel]

end A386343

/-! ## A386343.P15683582189475099826

`∩[A038611(n+1), A039139(n+1)]`
-/

namespace A386343.P15683582189475099826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386343.P15683582189475099826

namespace A386343

/-- `∩[A038611(n+1), A039139(n+1)]` -/
def P15683582189475099826.Spec : Prop :=
  ∀ n, (P15683582189475099826.a n : ℤ) = A386343 (n + 1)

end A386343

/-! ## A386343.P3971009334070007683

`∩[A038616(n+1), A039139(n+1)]`
-/

namespace A386343.P3971009334070007683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386343.P3971009334070007683

namespace A386343

/-- `∩[A038616(n+1), A039139(n+1)]` -/
def P3971009334070007683.Spec : Prop :=
  ∀ n, (P3971009334070007683.a n : ℤ) = A386343 (n + 1)

end A386343

/-! ## A386343.P16573694844823465631

`∩[A038616(n+1), A052405(n+1)]`
-/

namespace A386343.P16573694844823465631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386343.P16573694844823465631

namespace A386343

/-- `∩[A038616(n+1), A052405(n+1)]` -/
def P16573694844823465631.Spec : Prop :=
  ∀ n, (P16573694844823465631.a n : ℤ) = A386343 (n + 1)

end A386343

/-! ## A386343.P9781833373182134438

`∩[A038611(n+1), A052421(n+1)]`
-/

namespace A386343.P9781833373182134438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386343.P9781833373182134438

namespace A386343

/-- `∩[A038611(n+1), A052421(n+1)]` -/
def P9781833373182134438.Spec : Prop :=
  ∀ n, (P9781833373182134438.a n : ℤ) = A386343 (n + 1)

end A386343

/-! ## A386343.P18330344104601903092

`eq[n, A222238(A007918(n))]`
-/

namespace A386343.P18330344104601903092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 (A007918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386343.P18330344104601903092

namespace A386343

/-- `eq[n, A222238(A007918(n))]` -/
def P18330344104601903092.Spec : Prop :=
  ∀ n, (P18330344104601903092.a n : ℤ) = A386343 (n + 1)

end A386343

/-! ## A386343.P4824316472784160040

`eq[n, A062584(A222238(n))]`
-/

namespace A386343.P4824316472784160040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222238 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386343.P4824316472784160040

namespace A386343

/-- `eq[n, A062584(A222238(n))]` -/
def P4824316472784160040.Spec : Prop :=
  ∀ n, (P4824316472784160040.a n : ℤ) = A386343 (n + 1)

end A386343

/-! ## A386343.P8591120926397210876

`eq[A064502(n), A222238(n)]`
-/

namespace A386343.P8591120926397210876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386343.P8591120926397210876

namespace A386343

/-- `eq[A064502(n), A222238(n)]` -/
def P8591120926397210876.Spec : Prop :=
  ∀ n, (P8591120926397210876.a n : ℤ) = A386343 (n + 1)

end A386343

/-! ## A386343.P16484679624987076724

`eq[A084413(n), A222238(n)]`
-/

namespace A386343.P16484679624987076724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386343.P16484679624987076724

namespace A386343

/-- `eq[A084413(n), A222238(n)]` -/
def P16484679624987076724.Spec : Prop :=
  ∀ n, (P16484679624987076724.a n : ℤ) = A386343 (n + 1)

end A386343

/-! ## A386343.P17387916055515029275

`eq[A222238(n), A272476(n)]`
-/

namespace A386343.P17387916055515029275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386343.P17387916055515029275

namespace A386343

/-- `eq[A222238(n), A272476(n)]` -/
def P17387916055515029275.Spec : Prop :=
  ∀ n, (P17387916055515029275.a n : ℤ) = A386343 (n + 1)

end A386343

/-! ## A386343.P5362840682545071346

`eq[A038700(n+1), A222238(n)]`
-/

namespace A386343.P5362840682545071346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386343.P5362840682545071346

namespace A386343

/-- `eq[A038700(n+1), A222238(n)]` -/
def P5362840682545071346.Spec : Prop :=
  ∀ n, (P5362840682545071346.a n : ℤ) = A386343 (n + 1)

end A386343

/-! ## A386343.P2525549147078657838

`eq[A057637(n+1), A222238(n)]`
-/

namespace A386343.P2525549147078657838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386343.P2525549147078657838

namespace A386343

/-- `eq[A057637(n+1), A222238(n)]` -/
def P2525549147078657838.Spec : Prop :=
  ∀ n, (P2525549147078657838.a n : ℤ) = A386343 (n + 1)

end A386343

/-! ## A386343.P10441427156035750824

`eq[A093868(n+1), A222238(n)]`
-/

namespace A386343.P10441427156035750824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222238 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386343.P10441427156035750824

namespace A386343

/-- `eq[A093868(n+1), A222238(n)]` -/
def P10441427156035750824.Spec : Prop :=
  ∀ n, (P10441427156035750824.a n : ℤ) = A386343 (n + 1)

end A386343

/-!
# A386344: Primes without {3, 9} as digits.

The programs for A386344, there is no canonical definition to state claims against.
-/

/-! ## A386344.P16473545511189086411

`∩[A038611(n+1), A038617(n+1)]`
-/

namespace A386344.P16473545511189086411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386344.P16473545511189086411

/-! ## A386344.P4061479179568971665

`∩[A038611(n+1), A039140(n+1)]`
-/

namespace A386344.P4061479179568971665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386344.P4061479179568971665

/-! ## A386344.P555294991550980478

`∩[A038617(n+1), A039140(n+1)]`
-/

namespace A386344.P555294991550980478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386344.P555294991550980478

/-! ## A386344.P7865826913862473590

`∩[A038617(n+1), A052405(n+1)]`
-/

namespace A386344.P7865826913862473590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386344.P7865826913862473590

/-! ## A386344.P4163326159867767963

`∩[A038611(n+1), A007095(n)]`
-/

namespace A386344.P4163326159867767963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386344.P4163326159867767963

/-! ## A386344.P3421880586226274999

`∩[A037479(n+1), A038611(n+1)]`
-/

namespace A386344.P3421880586226274999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386344.P3421880586226274999

/-! ## A386344.P1618709967032178698

`eq[n, A062584(A222239(n))]`
-/

namespace A386344.P1618709967032178698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222239 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386344.P1618709967032178698

/-! ## A386344.P11678903392607460476

`eq[A064502(n), A222239(n)]`
-/

namespace A386344.P11678903392607460476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386344.P11678903392607460476

/-! ## A386344.P1232978865798171708

`eq[A084413(n), A222239(n)]`
-/

namespace A386344.P1232978865798171708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386344.P1232978865798171708

/-! ## A386344.P14803846332878075661

`eq[A222239(n), A272476(n)]`
-/

namespace A386344.P14803846332878075661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386344.P14803846332878075661

/-! ## A386344.P428862236535343114

`eq[A222239(n), A327420(n)]`
-/

namespace A386344.P428862236535343114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386344.P428862236535343114

/-! ## A386344.P11027455782113454147

`eq[A038700(n+1), A222239(n)]`
-/

namespace A386344.P11027455782113454147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386344.P11027455782113454147

/-! ## A386344.P13655332377751079994

`eq[A093868(n+1), A222239(n)]`
-/

namespace A386344.P13655332377751079994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222239 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386344.P13655332377751079994

/-!
# A386345: Primes without {4, 5} as digits.

The programs for A386345, the canonical program `A386345.P11453822956591974223` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386345 has offset 1).

The definition of A386345 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386345.P11453822956591974223

`∩[A038612(n+1), A038613(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A386345

/-- `∩[A038612(n+1), A038613(n+1)]` -/
def P11453822956591974223.Spec : Prop :=
  ∀ n, (P11453822956591974223.a n : ℤ) = A386345 (n + 1)

theorem P11453822956591974223.correct : P11453822956591974223.Spec := by
  intro n
  simp only [A386345, Nat.add_sub_cancel]

end A386345

/-! ## A386345.P18043984368346187329

`p?[A008541(n+1)]`
-/

namespace A386345.P18043984368346187329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A386345.P18043984368346187329

namespace A386345

/-- `p?[A008541(n+1)]` -/
def P18043984368346187329.Spec : Prop :=
  ∀ n, P18043984368346187329.a n = A386345 (n + 1)

end A386345

/-! ## A386345.P3982702921335274118

`filter[A008541(n+2), A010051(#)]`
-/

namespace A386345.P3982702921335274118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A386345.P3982702921335274118

namespace A386345

/-- `filter[A008541(n+2), A010051(#)]` -/
def P3982702921335274118.Spec : Prop :=
  ∀ n, P3982702921335274118.a n = A386345 (n + 1)

end A386345

/-! ## A386345.P12050368614638506743

`∩[A000040(n+1), A008541(n+1)]`
-/

namespace A386345.P12050368614638506743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386345.P12050368614638506743

namespace A386345

/-- `∩[A000040(n+1), A008541(n+1)]` -/
def P12050368614638506743.Spec : Prop :=
  ∀ n, (P12050368614638506743.a n : ℤ) = A386345 (n + 1)

end A386345

/-! ## A386345.P17944410296300551430

`∩[A008541(n+1), A038612(n+1)]`
-/

namespace A386345.P17944410296300551430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386345.P17944410296300551430

namespace A386345

/-- `∩[A008541(n+1), A038612(n+1)]` -/
def P17944410296300551430.Spec : Prop :=
  ∀ n, (P17944410296300551430.a n : ℤ) = A386345 (n + 1)

end A386345

/-! ## A386345.P4693873796015335915

`∩[A008541(n+1), A038613(n+1)]`
-/

namespace A386345.P4693873796015335915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386345.P4693873796015335915

namespace A386345

/-- `∩[A008541(n+1), A038613(n+1)]` -/
def P4693873796015335915.Spec : Prop :=
  ∀ n, (P4693873796015335915.a n : ℤ) = A386345 (n + 1)

end A386345

/-! ## A386345.P11061142263466642332

`∩[A008541(n+1), A045319(n+1)]`
-/

namespace A386345.P11061142263466642332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386345.P11061142263466642332

namespace A386345

/-- `∩[A008541(n+1), A045319(n+1)]` -/
def P11061142263466642332.Spec : Prop :=
  ∀ n, (P11061142263466642332.a n : ℤ) = A386345 (n + 1)

end A386345

/-! ## A386345.P5641640812724214067

`∩[A008541(n+1), A175787(n+1)]`
-/

namespace A386345.P5641640812724214067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386345.P5641640812724214067

namespace A386345

/-- `∩[A008541(n+1), A175787(n+1)]` -/
def P5641640812724214067.Spec : Prop :=
  ∀ n, (P5641640812724214067.a n : ℤ) = A386345 (n + 1)

end A386345

/-! ## A386345.P8477816557635624376

`∩[A038612(n+1), A039141(n+1)]`
-/

namespace A386345.P8477816557635624376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386345.P8477816557635624376

namespace A386345

/-- `∩[A038612(n+1), A039141(n+1)]` -/
def P8477816557635624376.Spec : Prop :=
  ∀ n, (P8477816557635624376.a n : ℤ) = A386345 (n + 1)

end A386345

/-! ## A386345.P10671145030593325480

`∩[A038613(n+1), A039141(n+1)]`
-/

namespace A386345.P10671145030593325480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386345.P10671145030593325480

namespace A386345

/-- `∩[A038613(n+1), A039141(n+1)]` -/
def P10671145030593325480.Spec : Prop :=
  ∀ n, (P10671145030593325480.a n : ℤ) = A386345 (n + 1)

end A386345

/-! ## A386345.P17343893045803675403

`∩[A038613(n+1), A052406(n+1)]`
-/

namespace A386345.P17343893045803675403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386345.P17343893045803675403

namespace A386345

/-- `∩[A038613(n+1), A052406(n+1)]` -/
def P17343893045803675403.Spec : Prop :=
  ∀ n, (P17343893045803675403.a n : ℤ) = A386345 (n + 1)

end A386345

/-! ## A386345.P14108930262019453727

`∩[A038612(n+1), A052413(n+1)]`
-/

namespace A386345.P14108930262019453727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386345.P14108930262019453727

namespace A386345

/-- `∩[A038612(n+1), A052413(n+1)]` -/
def P14108930262019453727.Spec : Prop :=
  ∀ n, (P14108930262019453727.a n : ℤ) = A386345 (n + 1)

end A386345

/-! ## A386345.P8918812375201341343

`p?[record[A222241(n)]]`
-/

namespace A386345.P8918812375201341343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A386345.P8918812375201341343

namespace A386345

/-- `p?[record[A222241(n)]]` -/
def P8918812375201341343.Spec : Prop :=
  ∀ n, P8918812375201341343.a n = A386345 (n + 1)

end A386345

/-! ## A386345.P12912126765908541330

`eq[n, A062584(A222240(n))]`
-/

namespace A386345.P12912126765908541330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222240 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386345.P12912126765908541330

namespace A386345

/-- `eq[n, A062584(A222240(n))]` -/
def P12912126765908541330.Spec : Prop :=
  ∀ n, (P12912126765908541330.a n : ℤ) = A386345 (n + 1)

end A386345

/-! ## A386345.P8584975772148622481

`eq[A064502(n), A222240(n)]`
-/

namespace A386345.P8584975772148622481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386345.P8584975772148622481

namespace A386345

/-- `eq[A064502(n), A222240(n)]` -/
def P8584975772148622481.Spec : Prop :=
  ∀ n, (P8584975772148622481.a n : ℤ) = A386345 (n + 1)

end A386345

/-! ## A386345.P12026128008884866621

`eq[A084413(n), A222240(n)]`
-/

namespace A386345.P12026128008884866621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386345.P12026128008884866621

namespace A386345

/-- `eq[A084413(n), A222240(n)]` -/
def P12026128008884866621.Spec : Prop :=
  ∀ n, (P12026128008884866621.a n : ℤ) = A386345 (n + 1)

end A386345

/-! ## A386345.P10352357999586876389

`eq[A222240(n), A272476(n)]`
-/

namespace A386345.P10352357999586876389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386345.P10352357999586876389

namespace A386345

/-- `eq[A222240(n), A272476(n)]` -/
def P10352357999586876389.Spec : Prop :=
  ∀ n, (P10352357999586876389.a n : ℤ) = A386345 (n + 1)

end A386345

/-! ## A386345.P11742918495882740968

`eq[A222240(n), A327420(n)]`
-/

namespace A386345.P11742918495882740968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386345.P11742918495882740968

namespace A386345

/-- `eq[A222240(n), A327420(n)]` -/
def P11742918495882740968.Spec : Prop :=
  ∀ n, (P11742918495882740968.a n : ℤ) = A386345 (n + 1)

end A386345

/-! ## A386345.P8920259718656535404

`filter[A008541(n+3), A080339(#)]`
-/

namespace A386345.P8920259718656535404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008541 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A386345.P8920259718656535404

namespace A386345

/-- `filter[A008541(n+3), A080339(#)]` -/
def P8920259718656535404.Spec : Prop :=
  ∀ n, P8920259718656535404.a n = A386345 (n + 1)

end A386345

/-! ## A386345.P12981716088975330776

`eq[A038700(n+1), A222240(n)]`
-/

namespace A386345.P12981716088975330776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386345.P12981716088975330776

namespace A386345

/-- `eq[A038700(n+1), A222240(n)]` -/
def P12981716088975330776.Spec : Prop :=
  ∀ n, (P12981716088975330776.a n : ℤ) = A386345 (n + 1)

end A386345

/-!
# A386346: Primes without {4, 6} as digits.

The programs for A386346, the canonical program `A386346.P8892965724520616261` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386346 has offset 1).

The definition of A386346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6157 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386346.P8892965724520616261

`∩[A038612(n+1), A038614(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A386346

/-- `∩[A038612(n+1), A038614(n+1)]` -/
def P8892965724520616261.Spec : Prop :=
  ∀ n, (P8892965724520616261.a n : ℤ) = A386346 (n + 1)

theorem P8892965724520616261.correct : P8892965724520616261.Spec := by
  intro n
  simp only [A386346, Nat.add_sub_cancel]

end A386346

/-! ## A386346.P13585930122733289196

`∩[A038612(n+1), A039142(n+1)]`
-/

namespace A386346.P13585930122733289196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386346.P13585930122733289196

namespace A386346

/-- `∩[A038612(n+1), A039142(n+1)]` -/
def P13585930122733289196.Spec : Prop :=
  ∀ n, (P13585930122733289196.a n : ℤ) = A386346 (n + 1)

end A386346

/-! ## A386346.P13627213357639044142

`∩[A038614(n+1), A039142(n+1)]`
-/

namespace A386346.P13627213357639044142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386346.P13627213357639044142

namespace A386346

/-- `∩[A038614(n+1), A039142(n+1)]` -/
def P13627213357639044142.Spec : Prop :=
  ∀ n, (P13627213357639044142.a n : ℤ) = A386346 (n + 1)

end A386346

/-! ## A386346.P9948443420805285186

`∩[A038614(n+1), A052406(n+1)]`
-/

namespace A386346.P9948443420805285186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386346.P9948443420805285186

namespace A386346

/-- `∩[A038614(n+1), A052406(n+1)]` -/
def P9948443420805285186.Spec : Prop :=
  ∀ n, (P9948443420805285186.a n : ℤ) = A386346 (n + 1)

end A386346

/-! ## A386346.P10778240935965776771

`∩[A038612(n+1), A052414(n+1)]`
-/

namespace A386346.P10778240935965776771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386346.P10778240935965776771

namespace A386346

/-- `∩[A038612(n+1), A052414(n+1)]` -/
def P10778240935965776771.Spec : Prop :=
  ∀ n, (P10778240935965776771.a n : ℤ) = A386346 (n + 1)

end A386346

/-! ## A386346.P13638245272891281685

`eq[n, A222241(A051697(n))]`
-/

namespace A386346.P13638245272891281685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (A051697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386346.P13638245272891281685

namespace A386346

/-- `eq[n, A222241(A051697(n))]` -/
def P13638245272891281685.Spec : Prop :=
  ∀ n, (P13638245272891281685.a n : ℤ) = A386346 (n + 1)

end A386346

/-! ## A386346.P14257065352730683414

`eq[n, A062584(A222241(n))]`
-/

namespace A386346.P14257065352730683414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222241 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386346.P14257065352730683414

namespace A386346

/-- `eq[n, A062584(A222241(n))]` -/
def P14257065352730683414.Spec : Prop :=
  ∀ n, (P14257065352730683414.a n : ℤ) = A386346 (n + 1)

end A386346

/-! ## A386346.P14767901084786578472

`eq[A064502(n), A222241(n)]`
-/

namespace A386346.P14767901084786578472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386346.P14767901084786578472

namespace A386346

/-- `eq[A064502(n), A222241(n)]` -/
def P14767901084786578472.Spec : Prop :=
  ∀ n, (P14767901084786578472.a n : ℤ) = A386346 (n + 1)

end A386346

/-! ## A386346.P13857272429652088417

`eq[n, A222241(A077018(n))]`
-/

namespace A386346.P13857272429652088417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 (A077018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386346.P13857272429652088417

namespace A386346

/-- `eq[n, A222241(A077018(n))]` -/
def P13857272429652088417.Spec : Prop :=
  ∀ n, (P13857272429652088417.a n : ℤ) = A386346 (n + 1)

end A386346

/-! ## A386346.P7559014448365300764

`eq[A084413(n), A222241(n)]`
-/

namespace A386346.P7559014448365300764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386346.P7559014448365300764

namespace A386346

/-- `eq[A084413(n), A222241(n)]` -/
def P7559014448365300764.Spec : Prop :=
  ∀ n, (P7559014448365300764.a n : ℤ) = A386346 (n + 1)

end A386346

/-! ## A386346.P14170033221472548474

`eq[A222241(n), A272476(n)]`
-/

namespace A386346.P14170033221472548474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386346.P14170033221472548474

namespace A386346

/-- `eq[A222241(n), A272476(n)]` -/
def P14170033221472548474.Spec : Prop :=
  ∀ n, (P14170033221472548474.a n : ℤ) = A386346 (n + 1)

end A386346

/-! ## A386346.P512896232889620565

`eq[A038700(n+1), A222241(n)]`
-/

namespace A386346.P512896232889620565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386346.P512896232889620565

namespace A386346

/-- `eq[A038700(n+1), A222241(n)]` -/
def P512896232889620565.Spec : Prop :=
  ∀ n, (P512896232889620565.a n : ℤ) = A386346 (n + 1)

end A386346

/-! ## A386346.P7271876533475316864

`eq[A093868(n+1), A222241(n)]`
-/

namespace A386346.P7271876533475316864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386346.P7271876533475316864

namespace A386346

/-- `eq[A093868(n+1), A222241(n)]` -/
def P7271876533475316864.Spec : Prop :=
  ∀ n, (P7271876533475316864.a n : ℤ) = A386346 (n + 1)

end A386346

/-! ## A386346.P5919788885733770231

`eq[A194603(n+1), A222241(n)]`
-/

namespace A386346.P5919788885733770231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386346.P5919788885733770231

namespace A386346

/-- `eq[A194603(n+1), A222241(n)]` -/
def P5919788885733770231.Spec : Prop :=
  ∀ n, (P5919788885733770231.a n : ℤ) = A386346 (n + 1)

end A386346

/-! ## A386346.P16618017929708714520

`eq[A222241(n), A249803(n+1)]`
-/

namespace A386346.P16618017929708714520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222241 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249803 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386346.P16618017929708714520

namespace A386346

/-- `eq[A222241(n), A249803(n+1)]` -/
def P16618017929708714520.Spec : Prop :=
  ∀ n, (P16618017929708714520.a n : ℤ) = A386346 (n + 1)

end A386346

/-!
# A386347: Primes without {4, 7} as digits.

The programs for A386347, the canonical program `A386347.P3539177770067542842` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386347 has offset 1).

The definition of A386347 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4974 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386347.P3539177770067542842

`∩[A038612(n+1), A038615(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A386347

/-- `∩[A038612(n+1), A038615(n+1)]` -/
def P3539177770067542842.Spec : Prop :=
  ∀ n, (P3539177770067542842.a n : ℤ) = A386347 (n + 1)

theorem P3539177770067542842.correct : P3539177770067542842.Spec := by
  intro n
  simp only [A386347, Nat.add_sub_cancel]

end A386347

/-! ## A386347.P18191202289451345090

`∩[A038612(n+1), A039143(n+1)]`
-/

namespace A386347.P18191202289451345090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386347.P18191202289451345090

namespace A386347

/-- `∩[A038612(n+1), A039143(n+1)]` -/
def P18191202289451345090.Spec : Prop :=
  ∀ n, (P18191202289451345090.a n : ℤ) = A386347 (n + 1)

end A386347

/-! ## A386347.P8766723408947691680

`∩[A038615(n+1), A039143(n+1)]`
-/

namespace A386347.P8766723408947691680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386347.P8766723408947691680

namespace A386347

/-- `∩[A038615(n+1), A039143(n+1)]` -/
def P8766723408947691680.Spec : Prop :=
  ∀ n, (P8766723408947691680.a n : ℤ) = A386347 (n + 1)

end A386347

/-! ## A386347.P9410714963153194505

`∩[A038612(n+1), A376047(n+1)]`
-/

namespace A386347.P9410714963153194505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386347.P9410714963153194505

namespace A386347

/-- `∩[A038612(n+1), A376047(n+1)]` -/
def P9410714963153194505.Spec : Prop :=
  ∀ n, (P9410714963153194505.a n : ℤ) = A386347 (n + 1)

end A386347

/-! ## A386347.P17399934698510096554

`∩[A038615(n+1), A052406(n+1)]`
-/

namespace A386347.P17399934698510096554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386347.P17399934698510096554

namespace A386347

/-- `∩[A038615(n+1), A052406(n+1)]` -/
def P17399934698510096554.Spec : Prop :=
  ∀ n, (P17399934698510096554.a n : ℤ) = A386347 (n + 1)

end A386347

/-! ## A386347.P1602840412427513588

`∩[A038612(n+1), A052419(n+1)]`
-/

namespace A386347.P1602840412427513588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386347.P1602840412427513588

namespace A386347

/-- `∩[A038612(n+1), A052419(n+1)]` -/
def P1602840412427513588.Spec : Prop :=
  ∀ n, (P1602840412427513588.a n : ℤ) = A386347 (n + 1)

end A386347

/-! ## A386347.P10329436114347353475

`eq[n, A062584(A222242(n))]`
-/

namespace A386347.P10329436114347353475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222242 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386347.P10329436114347353475

namespace A386347

/-- `eq[n, A062584(A222242(n))]` -/
def P10329436114347353475.Spec : Prop :=
  ∀ n, (P10329436114347353475.a n : ℤ) = A386347 (n + 1)

end A386347

/-! ## A386347.P8116295584408383138

`eq[A064502(n), A222242(n)]`
-/

namespace A386347.P8116295584408383138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386347.P8116295584408383138

namespace A386347

/-- `eq[A064502(n), A222242(n)]` -/
def P8116295584408383138.Spec : Prop :=
  ∀ n, (P8116295584408383138.a n : ℤ) = A386347 (n + 1)

end A386347

/-! ## A386347.P16139135459376469494

`eq[A084413(n), A222242(n)]`
-/

namespace A386347.P16139135459376469494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386347.P16139135459376469494

namespace A386347

/-- `eq[A084413(n), A222242(n)]` -/
def P16139135459376469494.Spec : Prop :=
  ∀ n, (P16139135459376469494.a n : ℤ) = A386347 (n + 1)

end A386347

/-! ## A386347.P1670999441536943009

`eq[A222242(n), A272476(n)]`
-/

namespace A386347.P1670999441536943009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386347.P1670999441536943009

namespace A386347

/-- `eq[A222242(n), A272476(n)]` -/
def P1670999441536943009.Spec : Prop :=
  ∀ n, (P1670999441536943009.a n : ℤ) = A386347 (n + 1)

end A386347

/-! ## A386347.P827962372160233726

`record[A004179(A038615(n+1))]`
-/

namespace A386347.P827962372160233726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (A038615 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386347.P827962372160233726

namespace A386347

/-- `record[A004179(A038615(n+1))]` -/
def P827962372160233726.Spec : Prop :=
  ∀ n, P827962372160233726.a n = A386347 (n + 1)

end A386347

/-! ## A386347.P14705334687546493107

`eq[A038700(n+1), A222242(n)]`
-/

namespace A386347.P14705334687546493107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386347.P14705334687546493107

namespace A386347

/-- `eq[A038700(n+1), A222242(n)]` -/
def P14705334687546493107.Spec : Prop :=
  ∀ n, (P14705334687546493107.a n : ℤ) = A386347 (n + 1)

end A386347

/-! ## A386347.P15165079205161604390

`eq[A057637(n+1), A222242(n)]`
-/

namespace A386347.P15165079205161604390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386347.P15165079205161604390

namespace A386347

/-- `eq[A057637(n+1), A222242(n)]` -/
def P15165079205161604390.Spec : Prop :=
  ∀ n, (P15165079205161604390.a n : ℤ) = A386347 (n + 1)

end A386347

/-! ## A386347.P13206338095061148905

`eq[A093868(n+1), A222242(n)]`
-/

namespace A386347.P13206338095061148905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386347.P13206338095061148905

namespace A386347

/-- `eq[A093868(n+1), A222242(n)]` -/
def P13206338095061148905.Spec : Prop :=
  ∀ n, (P13206338095061148905.a n : ℤ) = A386347 (n + 1)

end A386347

/-!
# A386348: Primes without {4, 8} as digits.

The programs for A386348, the canonical program `A386348.P14876660133788585214` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386348 has offset 1).

The definition of A386348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6635 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386348.P14876660133788585214

`∩[A038612(n+1), A038616(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A386348

/-- `∩[A038612(n+1), A038616(n+1)]` -/
def P14876660133788585214.Spec : Prop :=
  ∀ n, (P14876660133788585214.a n : ℤ) = A386348 (n + 1)

theorem P14876660133788585214.correct : P14876660133788585214.Spec := by
  intro n
  simp only [A386348, Nat.add_sub_cancel]

end A386348

/-! ## A386348.P17359481028490647014

`∩[A038612(n+1), A039144(n+1)]`
-/

namespace A386348.P17359481028490647014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386348.P17359481028490647014

namespace A386348

/-- `∩[A038612(n+1), A039144(n+1)]` -/
def P17359481028490647014.Spec : Prop :=
  ∀ n, (P17359481028490647014.a n : ℤ) = A386348 (n + 1)

end A386348

/-! ## A386348.P12826305597452071727

`∩[A038616(n+1), A039144(n+1)]`
-/

namespace A386348.P12826305597452071727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386348.P12826305597452071727

namespace A386348

/-- `∩[A038616(n+1), A039144(n+1)]` -/
def P12826305597452071727.Spec : Prop :=
  ∀ n, (P12826305597452071727.a n : ℤ) = A386348 (n + 1)

end A386348

/-! ## A386348.P13006541806416076996

`∩[A038616(n+1), A052406(n+1)]`
-/

namespace A386348.P13006541806416076996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386348.P13006541806416076996

namespace A386348

/-- `∩[A038616(n+1), A052406(n+1)]` -/
def P13006541806416076996.Spec : Prop :=
  ∀ n, (P13006541806416076996.a n : ℤ) = A386348 (n + 1)

end A386348

/-! ## A386348.P12352678970476111383

`∩[A038612(n+1), A052421(n+1)]`
-/

namespace A386348.P12352678970476111383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386348.P12352678970476111383

namespace A386348

/-- `∩[A038612(n+1), A052421(n+1)]` -/
def P12352678970476111383.Spec : Prop :=
  ∀ n, (P12352678970476111383.a n : ℤ) = A386348 (n + 1)

end A386348

/-! ## A386348.P3217741128547598764

`eq[n, A222243(A007918(n))]`
-/

namespace A386348.P3217741128547598764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 (A007918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386348.P3217741128547598764

namespace A386348

/-- `eq[n, A222243(A007918(n))]` -/
def P3217741128547598764.Spec : Prop :=
  ∀ n, (P3217741128547598764.a n : ℤ) = A386348 (n + 1)

end A386348

/-! ## A386348.P12506405287365407614

`eq[n, A222243(A051697(n))]`
-/

namespace A386348.P12506405287365407614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 (A051697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386348.P12506405287365407614

namespace A386348

/-- `eq[n, A222243(A051697(n))]` -/
def P12506405287365407614.Spec : Prop :=
  ∀ n, (P12506405287365407614.a n : ℤ) = A386348 (n + 1)

end A386348

/-! ## A386348.P4765359856210316205

`eq[n, A062584(A222243(n))]`
-/

namespace A386348.P4765359856210316205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222243 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386348.P4765359856210316205

namespace A386348

/-- `eq[n, A062584(A222243(n))]` -/
def P4765359856210316205.Spec : Prop :=
  ∀ n, (P4765359856210316205.a n : ℤ) = A386348 (n + 1)

end A386348

/-! ## A386348.P14183186870986443699

`eq[A064502(n), A222243(n)]`
-/

namespace A386348.P14183186870986443699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386348.P14183186870986443699

namespace A386348

/-- `eq[A064502(n), A222243(n)]` -/
def P14183186870986443699.Spec : Prop :=
  ∀ n, (P14183186870986443699.a n : ℤ) = A386348 (n + 1)

end A386348

/-! ## A386348.P12451438617486861085

`eq[n, A222243(A077018(n))]`
-/

namespace A386348.P12451438617486861085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 (A077018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386348.P12451438617486861085

namespace A386348

/-- `eq[n, A222243(A077018(n))]` -/
def P12451438617486861085.Spec : Prop :=
  ∀ n, (P12451438617486861085.a n : ℤ) = A386348 (n + 1)

end A386348

/-! ## A386348.P1344179814950194349

`eq[A084413(n), A222243(n)]`
-/

namespace A386348.P1344179814950194349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386348.P1344179814950194349

namespace A386348

/-- `eq[A084413(n), A222243(n)]` -/
def P1344179814950194349.Spec : Prop :=
  ∀ n, (P1344179814950194349.a n : ℤ) = A386348 (n + 1)

end A386348

/-! ## A386348.P8598816344225402724

`eq[A222243(n), A272476(n)]`
-/

namespace A386348.P8598816344225402724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386348.P8598816344225402724

namespace A386348

/-- `eq[A222243(n), A272476(n)]` -/
def P8598816344225402724.Spec : Prop :=
  ∀ n, (P8598816344225402724.a n : ℤ) = A386348 (n + 1)

end A386348

/-! ## A386348.P9113122665337808891

`eq[A222243(n), A327420(n)]`
-/

namespace A386348.P9113122665337808891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386348.P9113122665337808891

namespace A386348

/-- `eq[A222243(n), A327420(n)]` -/
def P9113122665337808891.Spec : Prop :=
  ∀ n, (P9113122665337808891.a n : ℤ) = A386348 (n + 1)

end A386348

/-! ## A386348.P1508320356460410433

`eq[A038700(n+1), A222243(n)]`
-/

namespace A386348.P1508320356460410433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386348.P1508320356460410433

namespace A386348

/-- `eq[A038700(n+1), A222243(n)]` -/
def P1508320356460410433.Spec : Prop :=
  ∀ n, (P1508320356460410433.a n : ℤ) = A386348 (n + 1)

end A386348

/-! ## A386348.P5950682549883163964

`eq[A093868(n+1), A222243(n)]`
-/

namespace A386348.P5950682549883163964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386348.P5950682549883163964

namespace A386348

/-- `eq[A093868(n+1), A222243(n)]` -/
def P5950682549883163964.Spec : Prop :=
  ∀ n, (P5950682549883163964.a n : ℤ) = A386348 (n + 1)

end A386348

/-! ## A386348.P5333892774670377233

`eq[A194603(n+1), A222243(n)]`
-/

namespace A386348.P5333892774670377233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386348.P5333892774670377233

namespace A386348

/-- `eq[A194603(n+1), A222243(n)]` -/
def P5333892774670377233.Spec : Prop :=
  ∀ n, (P5333892774670377233.a n : ℤ) = A386348 (n + 1)

end A386348

/-! ## A386348.P7531065286300905447

`eq[A222243(n), A249803(n+1)]`
-/

namespace A386348.P7531065286300905447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222243 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249803 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386348.P7531065286300905447

namespace A386348

/-- `eq[A222243(n), A249803(n+1)]` -/
def P7531065286300905447.Spec : Prop :=
  ∀ n, (P7531065286300905447.a n : ℤ) = A386348 (n + 1)

end A386348

/-!
# A386349: Primes without {4, 9} as digits.

The programs for A386349, there is no canonical definition to state claims against.
-/

/-! ## A386349.P8671459111560175124

`∩[A038612(n+1), A038617(n+1)]`
-/

namespace A386349.P8671459111560175124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386349.P8671459111560175124

/-! ## A386349.P2186716017079460332

`∩[A038612(n+1), A039145(n+1)]`
-/

namespace A386349.P2186716017079460332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386349.P2186716017079460332

/-! ## A386349.P12359674592751386826

`∩[A038617(n+1), A039145(n+1)]`
-/

namespace A386349.P12359674592751386826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386349.P12359674592751386826

/-! ## A386349.P8708045026584244293

`∩[A038617(n+1), A052406(n+1)]`
-/

namespace A386349.P8708045026584244293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386349.P8708045026584244293

/-! ## A386349.P15745256001005780730

`∩[A038612(n+1), A007095(n)]`
-/

namespace A386349.P15745256001005780730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386349.P15745256001005780730

/-! ## A386349.P8589467407182877617

`∩[A037479(n+1), A038612(n+1)]`
-/

namespace A386349.P8589467407182877617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386349.P8589467407182877617

/-! ## A386349.P4862737540539675821

`eq[n, A062584(A222244(n))]`
-/

namespace A386349.P4862737540539675821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222244 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386349.P4862737540539675821

/-! ## A386349.P864384050161372410

`eq[A084413(n), A222244(n)]`
-/

namespace A386349.P864384050161372410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386349.P864384050161372410

/-! ## A386349.P17102158761287230413

`eq[A222244(n), A272476(n)]`
-/

namespace A386349.P17102158761287230413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386349.P17102158761287230413

/-! ## A386349.P1129362399802425505

`eq[A038700(n+1), A222244(n)]`
-/

namespace A386349.P1129362399802425505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386349.P1129362399802425505

/-! ## A386349.P13025779013608498167

`eq[A057637(n+1), A222244(n)]`
-/

namespace A386349.P13025779013608498167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386349.P13025779013608498167

/-! ## A386349.P10208538206897829157

`eq[A093868(n+1), A222244(n)]`
-/

namespace A386349.P10208538206897829157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386349.P10208538206897829157

/-!
# A386350: Primes without {5, 6} as digits.

The programs for A386350, the canonical program `A386350.P2011497625234474322` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386350 has offset 1).

The definition of A386350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6138 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386350.P2011497625234474322

`∩[A038613(n+1), A038614(n+1)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A386350

/-- `∩[A038613(n+1), A038614(n+1)]` -/
def P2011497625234474322.Spec : Prop :=
  ∀ n, (P2011497625234474322.a n : ℤ) = A386350 (n + 1)

theorem P2011497625234474322.correct : P2011497625234474322.Spec := by
  intro n
  simp only [A386350, Nat.add_sub_cancel]

end A386350

/-! ## A386350.P16306269550657994689

`∩[A038613(n+1), A039146(n+1)]`
-/

namespace A386350.P16306269550657994689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386350.P16306269550657994689

namespace A386350

/-- `∩[A038613(n+1), A039146(n+1)]` -/
def P16306269550657994689.Spec : Prop :=
  ∀ n, (P16306269550657994689.a n : ℤ) = A386350 (n + 1)

end A386350

/-! ## A386350.P5778175869450368482

`∩[A038614(n+1), A039146(n+1)]`
-/

namespace A386350.P5778175869450368482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386350.P5778175869450368482

namespace A386350

/-- `∩[A038614(n+1), A039146(n+1)]` -/
def P5778175869450368482.Spec : Prop :=
  ∀ n, (P5778175869450368482.a n : ℤ) = A386350 (n + 1)

end A386350

/-! ## A386350.P5498932543295779691

`∩[A038613(n+1), A052414(n+1)]`
-/

namespace A386350.P5498932543295779691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386350.P5498932543295779691

namespace A386350

/-- `∩[A038613(n+1), A052414(n+1)]` -/
def P5498932543295779691.Spec : Prop :=
  ∀ n, (P5498932543295779691.a n : ℤ) = A386350 (n + 1)

end A386350

/-! ## A386350.P11490682866032219441

`∩[A038614(n+1), A052413(n+1)]`
-/

namespace A386350.P11490682866032219441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386350.P11490682866032219441

namespace A386350

/-- `∩[A038614(n+1), A052413(n+1)]` -/
def P11490682866032219441.Spec : Prop :=
  ∀ n, (P11490682866032219441.a n : ℤ) = A386350 (n + 1)

end A386350

/-! ## A386350.P17178839422807409004

`p?[record[A222246(n)]]`
-/

namespace A386350.P17178839422807409004
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A386350.P17178839422807409004

namespace A386350

/-- `p?[record[A222246(n)]]` -/
def P17178839422807409004.Spec : Prop :=
  ∀ n, P17178839422807409004.a n = A386350 (n + 1)

end A386350

/-! ## A386350.P9566616403687320590

`eq[n, A062584(A222245(n))]`
-/

namespace A386350.P9566616403687320590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222245 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386350.P9566616403687320590

namespace A386350

/-- `eq[n, A062584(A222245(n))]` -/
def P9566616403687320590.Spec : Prop :=
  ∀ n, (P9566616403687320590.a n : ℤ) = A386350 (n + 1)

end A386350

/-! ## A386350.P15675183104560630912

`eq[A064502(n), A222245(n)]`
-/

namespace A386350.P15675183104560630912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386350.P15675183104560630912

namespace A386350

/-- `eq[A064502(n), A222245(n)]` -/
def P15675183104560630912.Spec : Prop :=
  ∀ n, (P15675183104560630912.a n : ℤ) = A386350 (n + 1)

end A386350

/-! ## A386350.P13430121141921952581

`eq[A084413(n), A222245(n)]`
-/

namespace A386350.P13430121141921952581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386350.P13430121141921952581

namespace A386350

/-- `eq[A084413(n), A222245(n)]` -/
def P13430121141921952581.Spec : Prop :=
  ∀ n, (P13430121141921952581.a n : ℤ) = A386350 (n + 1)

end A386350

/-! ## A386350.P9676730551577733396

`eq[A222245(n), A272476(n)]`
-/

namespace A386350.P9676730551577733396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386350.P9676730551577733396

namespace A386350

/-- `eq[A222245(n), A272476(n)]` -/
def P9676730551577733396.Spec : Prop :=
  ∀ n, (P9676730551577733396.a n : ℤ) = A386350 (n + 1)

end A386350

/-! ## A386350.P6749824635313380956

`eq[A222245(n), A327420(n)]`
-/

namespace A386350.P6749824635313380956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386350.P6749824635313380956

namespace A386350

/-- `eq[A222245(n), A327420(n)]` -/
def P6749824635313380956.Spec : Prop :=
  ∀ n, (P6749824635313380956.a n : ℤ) = A386350 (n + 1)

end A386350

/-! ## A386350.P16736554179949230364

`eq[A038700(n+1), A222245(n)]`
-/

namespace A386350.P16736554179949230364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386350.P16736554179949230364

namespace A386350

/-- `eq[A038700(n+1), A222245(n)]` -/
def P16736554179949230364.Spec : Prop :=
  ∀ n, (P16736554179949230364.a n : ℤ) = A386350 (n + 1)

end A386350

/-! ## A386350.P18383483621800827765

`eq[A057637(n+1), A222245(n)]`
-/

namespace A386350.P18383483621800827765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386350.P18383483621800827765

namespace A386350

/-- `eq[A057637(n+1), A222245(n)]` -/
def P18383483621800827765.Spec : Prop :=
  ∀ n, (P18383483621800827765.a n : ℤ) = A386350 (n + 1)

end A386350

/-! ## A386350.P18234110906508229510

`eq[A093868(n+1), A222245(n)]`
-/

namespace A386350.P18234110906508229510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386350.P18234110906508229510

namespace A386350

/-- `eq[A093868(n+1), A222245(n)]` -/
def P18234110906508229510.Spec : Prop :=
  ∀ n, (P18234110906508229510.a n : ℤ) = A386350 (n + 1)

end A386350

/-! ## A386350.P4255590655304530397

`eq[A194603(n+1), A222245(n)]`
-/

namespace A386350.P4255590655304530397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386350.P4255590655304530397

namespace A386350

/-- `eq[A194603(n+1), A222245(n)]` -/
def P4255590655304530397.Spec : Prop :=
  ∀ n, (P4255590655304530397.a n : ℤ) = A386350 (n + 1)

end A386350

/-! ## A386350.P23320734136638924

`eq[A222245(n), A249803(n+1)]`
-/

namespace A386350.P23320734136638924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249803 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386350.P23320734136638924

namespace A386350

/-- `eq[A222245(n), A249803(n+1)]` -/
def P23320734136638924.Spec : Prop :=
  ∀ n, (P23320734136638924.a n : ℤ) = A386350 (n + 1)

end A386350

/-!
# A386351: Primes without {5, 7} as digits.

The programs for A386351, the canonical program `A386351.P7318400634088148714` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386351 has offset 1).

The definition of A386351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4967 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386351.P7318400634088148714

`∩[A038613(n+1), A038615(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A386351

/-- `∩[A038613(n+1), A038615(n+1)]` -/
def P7318400634088148714.Spec : Prop :=
  ∀ n, (P7318400634088148714.a n : ℤ) = A386351 (n + 1)

theorem P7318400634088148714.correct : P7318400634088148714.Spec := by
  intro n
  simp only [A386351, Nat.add_sub_cancel]

end A386351

/-! ## A386351.P11827211726895154089

`∩[A038613(n+1), A039147(n+1)]`
-/

namespace A386351.P11827211726895154089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386351.P11827211726895154089

namespace A386351

/-- `∩[A038613(n+1), A039147(n+1)]` -/
def P11827211726895154089.Spec : Prop :=
  ∀ n, (P11827211726895154089.a n : ℤ) = A386351 (n + 1)

end A386351

/-! ## A386351.P17002138472750645921

`∩[A038615(n+1), A039147(n+1)]`
-/

namespace A386351.P17002138472750645921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386351.P17002138472750645921

namespace A386351

/-- `∩[A038615(n+1), A039147(n+1)]` -/
def P17002138472750645921.Spec : Prop :=
  ∀ n, (P17002138472750645921.a n : ℤ) = A386351 (n + 1)

end A386351

/-! ## A386351.P11779302768325021237

`∩[A038613(n+1), A376047(n+1)]`
-/

namespace A386351.P11779302768325021237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386351.P11779302768325021237

namespace A386351

/-- `∩[A038613(n+1), A376047(n+1)]` -/
def P11779302768325021237.Spec : Prop :=
  ∀ n, (P11779302768325021237.a n : ℤ) = A386351 (n + 1)

end A386351

/-! ## A386351.P4782035607651850529

`∩[A038615(n+1), A052413(n+1)]`
-/

namespace A386351.P4782035607651850529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386351.P4782035607651850529

namespace A386351

/-- `∩[A038615(n+1), A052413(n+1)]` -/
def P4782035607651850529.Spec : Prop :=
  ∀ n, (P4782035607651850529.a n : ℤ) = A386351 (n + 1)

end A386351

/-! ## A386351.P4880630994747862795

`∩[A038613(n+1), A052419(n+1)]`
-/

namespace A386351.P4880630994747862795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386351.P4880630994747862795

namespace A386351

/-- `∩[A038613(n+1), A052419(n+1)]` -/
def P4880630994747862795.Spec : Prop :=
  ∀ n, (P4880630994747862795.a n : ℤ) = A386351 (n + 1)

end A386351

/-! ## A386351.P3381569171204585104

`eq[n, A062584(A222246(n))]`
-/

namespace A386351.P3381569171204585104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222246 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386351.P3381569171204585104

namespace A386351

/-- `eq[n, A062584(A222246(n))]` -/
def P3381569171204585104.Spec : Prop :=
  ∀ n, (P3381569171204585104.a n : ℤ) = A386351 (n + 1)

end A386351

/-! ## A386351.P14692405507687465743

`eq[A064502(n), A222246(n)]`
-/

namespace A386351.P14692405507687465743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386351.P14692405507687465743

namespace A386351

/-- `eq[A064502(n), A222246(n)]` -/
def P14692405507687465743.Spec : Prop :=
  ∀ n, (P14692405507687465743.a n : ℤ) = A386351 (n + 1)

end A386351

/-! ## A386351.P14723030398081657762

`eq[A084413(n), A222246(n)]`
-/

namespace A386351.P14723030398081657762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386351.P14723030398081657762

namespace A386351

/-- `eq[A084413(n), A222246(n)]` -/
def P14723030398081657762.Spec : Prop :=
  ∀ n, (P14723030398081657762.a n : ℤ) = A386351 (n + 1)

end A386351

/-! ## A386351.P5589611584764213583

`eq[A222246(n), A272476(n)]`
-/

namespace A386351.P5589611584764213583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386351.P5589611584764213583

namespace A386351

/-- `eq[A222246(n), A272476(n)]` -/
def P5589611584764213583.Spec : Prop :=
  ∀ n, (P5589611584764213583.a n : ℤ) = A386351 (n + 1)

end A386351

/-! ## A386351.P12244171293420579429

`eq[A222246(n), A327420(n)]`
-/

namespace A386351.P12244171293420579429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386351.P12244171293420579429

namespace A386351

/-- `eq[A222246(n), A327420(n)]` -/
def P12244171293420579429.Spec : Prop :=
  ∀ n, (P12244171293420579429.a n : ℤ) = A386351 (n + 1)

end A386351

/-! ## A386351.P2511274737884413806

`eq[A035032(n+1), A222246(n)]`
-/

namespace A386351.P2511274737884413806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386351.P2511274737884413806

namespace A386351

/-- `eq[A035032(n+1), A222246(n)]` -/
def P2511274737884413806.Spec : Prop :=
  ∀ n, (P2511274737884413806.a n : ℤ) = A386351 (n + 1)

end A386351

/-! ## A386351.P16890194399599188742

`eq[A038700(n+1), A222246(n)]`
-/

namespace A386351.P16890194399599188742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386351.P16890194399599188742

namespace A386351

/-- `eq[A038700(n+1), A222246(n)]` -/
def P16890194399599188742.Spec : Prop :=
  ∀ n, (P16890194399599188742.a n : ℤ) = A386351 (n + 1)

end A386351

/-! ## A386351.P13103967250207636108

`eq[A057637(n+1), A222246(n)]`
-/

namespace A386351.P13103967250207636108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386351.P13103967250207636108

namespace A386351

/-- `eq[A057637(n+1), A222246(n)]` -/
def P13103967250207636108.Spec : Prop :=
  ∀ n, (P13103967250207636108.a n : ℤ) = A386351 (n + 1)

end A386351

/-!
# A386352: Primes without {5, 8} as digits.

The programs for A386352, the canonical program `A386352.P14653844485856961628` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386352 has offset 1).

The definition of A386352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6593 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386352.P14653844485856961628

`∩[A038613(n+1), A038616(n+1)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A386352

/-- `∩[A038613(n+1), A038616(n+1)]` -/
def P14653844485856961628.Spec : Prop :=
  ∀ n, (P14653844485856961628.a n : ℤ) = A386352 (n + 1)

theorem P14653844485856961628.correct : P14653844485856961628.Spec := by
  intro n
  simp only [A386352, Nat.add_sub_cancel]

end A386352

/-! ## A386352.P144686868706225468

`∩[A038613(n+1), A039148(n+1)]`
-/

namespace A386352.P144686868706225468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386352.P144686868706225468

namespace A386352

/-- `∩[A038613(n+1), A039148(n+1)]` -/
def P144686868706225468.Spec : Prop :=
  ∀ n, (P144686868706225468.a n : ℤ) = A386352 (n + 1)

end A386352

/-! ## A386352.P14998289112720419442

`∩[A038616(n+1), A039148(n+1)]`
-/

namespace A386352.P14998289112720419442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039148 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386352.P14998289112720419442

namespace A386352

/-- `∩[A038616(n+1), A039148(n+1)]` -/
def P14998289112720419442.Spec : Prop :=
  ∀ n, (P14998289112720419442.a n : ℤ) = A386352 (n + 1)

end A386352

/-! ## A386352.P4104042912653187955

`∩[A038616(n+1), A052413(n+1)]`
-/

namespace A386352.P4104042912653187955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386352.P4104042912653187955

namespace A386352

/-- `∩[A038616(n+1), A052413(n+1)]` -/
def P4104042912653187955.Spec : Prop :=
  ∀ n, (P4104042912653187955.a n : ℤ) = A386352 (n + 1)

end A386352

/-! ## A386352.P7967012046803167657

`∩[A038613(n+1), A052421(n+1)]`
-/

namespace A386352.P7967012046803167657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386352.P7967012046803167657

namespace A386352

/-- `∩[A038613(n+1), A052421(n+1)]` -/
def P7967012046803167657.Spec : Prop :=
  ∀ n, (P7967012046803167657.a n : ℤ) = A386352 (n + 1)

end A386352

/-! ## A386352.P4508044761642943694

`eq[n, A222247(A007918(n))]`
-/

namespace A386352.P4508044761642943694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (A007918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386352.P4508044761642943694

namespace A386352

/-- `eq[n, A222247(A007918(n))]` -/
def P4508044761642943694.Spec : Prop :=
  ∀ n, (P4508044761642943694.a n : ℤ) = A386352 (n + 1)

end A386352

/-! ## A386352.P10015178608020532578

`eq[n, A222247(A051697(n))]`
-/

namespace A386352.P10015178608020532578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (A051697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386352.P10015178608020532578

namespace A386352

/-- `eq[n, A222247(A051697(n))]` -/
def P10015178608020532578.Spec : Prop :=
  ∀ n, (P10015178608020532578.a n : ℤ) = A386352 (n + 1)

end A386352

/-! ## A386352.P2824132056469887781

`eq[n, A062584(A222247(n))]`
-/

namespace A386352.P2824132056469887781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222247 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386352.P2824132056469887781

namespace A386352

/-- `eq[n, A062584(A222247(n))]` -/
def P2824132056469887781.Spec : Prop :=
  ∀ n, (P2824132056469887781.a n : ℤ) = A386352 (n + 1)

end A386352

/-! ## A386352.P15822830509335475121

`eq[A064502(n), A222247(n)]`
-/

namespace A386352.P15822830509335475121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386352.P15822830509335475121

namespace A386352

/-- `eq[A064502(n), A222247(n)]` -/
def P15822830509335475121.Spec : Prop :=
  ∀ n, (P15822830509335475121.a n : ℤ) = A386352 (n + 1)

end A386352

/-! ## A386352.P10682899150053957706

`eq[n, A222247(A077018(n))]`
-/

namespace A386352.P10682899150053957706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 (A077018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386352.P10682899150053957706

namespace A386352

/-- `eq[n, A222247(A077018(n))]` -/
def P10682899150053957706.Spec : Prop :=
  ∀ n, (P10682899150053957706.a n : ℤ) = A386352 (n + 1)

end A386352

/-! ## A386352.P54773628630222280

`eq[A084413(n), A222247(n)]`
-/

namespace A386352.P54773628630222280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386352.P54773628630222280

namespace A386352

/-- `eq[A084413(n), A222247(n)]` -/
def P54773628630222280.Spec : Prop :=
  ∀ n, (P54773628630222280.a n : ℤ) = A386352 (n + 1)

end A386352

/-! ## A386352.P1485185474240017198

`eq[A222247(n), A272476(n)]`
-/

namespace A386352.P1485185474240017198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386352.P1485185474240017198

namespace A386352

/-- `eq[A222247(n), A272476(n)]` -/
def P1485185474240017198.Spec : Prop :=
  ∀ n, (P1485185474240017198.a n : ℤ) = A386352 (n + 1)

end A386352

/-! ## A386352.P16027908353545385165

`eq[A035031(n+1), A222247(n)]`
-/

namespace A386352.P16027908353545385165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386352.P16027908353545385165

namespace A386352

/-- `eq[A035031(n+1), A222247(n)]` -/
def P16027908353545385165.Spec : Prop :=
  ∀ n, (P16027908353545385165.a n : ℤ) = A386352 (n + 1)

end A386352

/-! ## A386352.P16998815374885805260

`eq[A035032(n+1), A222247(n)]`
-/

namespace A386352.P16998815374885805260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386352.P16998815374885805260

namespace A386352

/-- `eq[A035032(n+1), A222247(n)]` -/
def P16998815374885805260.Spec : Prop :=
  ∀ n, (P16998815374885805260.a n : ℤ) = A386352 (n + 1)

end A386352

/-! ## A386352.P17359842375824058194

`eq[A038700(n+1), A222247(n)]`
-/

namespace A386352.P17359842375824058194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386352.P17359842375824058194

namespace A386352

/-- `eq[A038700(n+1), A222247(n)]` -/
def P17359842375824058194.Spec : Prop :=
  ∀ n, (P17359842375824058194.a n : ℤ) = A386352 (n + 1)

end A386352

/-! ## A386352.P5565560416326218384

`eq[A057637(n+1), A222247(n)]`
-/

namespace A386352.P5565560416326218384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386352.P5565560416326218384

namespace A386352

/-- `eq[A057637(n+1), A222247(n)]` -/
def P5565560416326218384.Spec : Prop :=
  ∀ n, (P5565560416326218384.a n : ℤ) = A386352 (n + 1)

end A386352

/-! ## A386352.P14686794027294820313

`eq[A093868(n+1), A222247(n)]`
-/

namespace A386352.P14686794027294820313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386352.P14686794027294820313

namespace A386352

/-- `eq[A093868(n+1), A222247(n)]` -/
def P14686794027294820313.Spec : Prop :=
  ∀ n, (P14686794027294820313.a n : ℤ) = A386352 (n + 1)

end A386352

/-! ## A386352.P13824849329738691512

`eq[A222247(n), A295609(n)]`
-/

namespace A386352.P13824849329738691512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295609 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386352.P13824849329738691512

namespace A386352

/-- `eq[A222247(n), A295609(n)]` -/
def P13824849329738691512.Spec : Prop :=
  ∀ n, (P13824849329738691512.a n : ℤ) = A386352 (n + 1)

end A386352

/-! ## A386352.P12275034355714719989

`eq[A194603(n+1), A222247(n)]`
-/

namespace A386352.P12275034355714719989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386352.P12275034355714719989

namespace A386352

/-- `eq[A194603(n+1), A222247(n)]` -/
def P12275034355714719989.Spec : Prop :=
  ∀ n, (P12275034355714719989.a n : ℤ) = A386352 (n + 1)

end A386352

/-! ## A386352.P13046740567503871348

`eq[A222247(n), A249803(n+1)]`
-/

namespace A386352.P13046740567503871348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222247 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249803 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386352.P13046740567503871348

namespace A386352

/-- `eq[A222247(n), A249803(n+1)]` -/
def P13046740567503871348.Spec : Prop :=
  ∀ n, (P13046740567503871348.a n : ℤ) = A386352 (n + 1)

end A386352

/-!
# A386353: Primes without {5, 9} as digits.

The programs for A386353, there is no canonical definition to state claims against.
-/

/-! ## A386353.P6380778287705047172

`∩[A038613(n+1), A038617(n+1)]`
-/

namespace A386353.P6380778287705047172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386353.P6380778287705047172

/-! ## A386353.P14877005406709713270

`∩[A038613(n+1), A039149(n+1)]`
-/

namespace A386353.P14877005406709713270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386353.P14877005406709713270

/-! ## A386353.P3921504855345513129

`∩[A038617(n+1), A039149(n+1)]`
-/

namespace A386353.P3921504855345513129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386353.P3921504855345513129

/-! ## A386353.P11343749344414547485

`∩[A038617(n+1), A052413(n+1)]`
-/

namespace A386353.P11343749344414547485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052413 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386353.P11343749344414547485

/-! ## A386353.P2032418925919228065

`∩[A038613(n+1), A007095(n)]`
-/

namespace A386353.P2032418925919228065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386353.P2032418925919228065

/-! ## A386353.P5769973815436828453

`∩[A037479(n+1), A038613(n+1)]`
-/

namespace A386353.P5769973815436828453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038613 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386353.P5769973815436828453

/-! ## A386353.P9342717931742679245

`eq[n, A062584(A222248(n))]`
-/

namespace A386353.P9342717931742679245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222248 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386353.P9342717931742679245

/-! ## A386353.P17212875149474381119

`eq[A064502(n), A222248(n)]`
-/

namespace A386353.P17212875149474381119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386353.P17212875149474381119

/-! ## A386353.P4848168389298979508

`eq[A084413(n), A222248(n)]`
-/

namespace A386353.P4848168389298979508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386353.P4848168389298979508

/-! ## A386353.P16292453300152361824

`eq[A222248(n), A272476(n)]`
-/

namespace A386353.P16292453300152361824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386353.P16292453300152361824

/-! ## A386353.P5083106779478581631

`eq[A035031(n+1), A222248(n)]`
-/

namespace A386353.P5083106779478581631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035031 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386353.P5083106779478581631

/-! ## A386353.P12180618587069821530

`eq[A035032(n+1), A222248(n)]`
-/

namespace A386353.P12180618587069821530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386353.P12180618587069821530

/-! ## A386353.P4378994253733216682

`eq[A038700(n+1), A222248(n)]`
-/

namespace A386353.P4378994253733216682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386353.P4378994253733216682

/-! ## A386353.P10558000770368302671

`eq[A057637(n+1), A222248(n)]`
-/

namespace A386353.P10558000770368302671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386353.P10558000770368302671

/-! ## A386353.P16642405702336989318

`eq[A093868(n+1), A222248(n)]`
-/

namespace A386353.P16642405702336989318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222248 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386353.P16642405702336989318

/-!
# A386354: Primes without {6, 7} as digits.

The programs for A386354, the canonical program `A386354.P16560442262164628227` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386354 has offset 1).

The definition of A386354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4953 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386354.P16560442262164628227

`∩[A038614(n+1), A038615(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A386354

/-- `∩[A038614(n+1), A038615(n+1)]` -/
def P16560442262164628227.Spec : Prop :=
  ∀ n, (P16560442262164628227.a n : ℤ) = A386354 (n + 1)

theorem P16560442262164628227.correct : P16560442262164628227.Spec := by
  intro n
  simp only [A386354, Nat.add_sub_cancel]

end A386354

/-! ## A386354.P4236660608279915338

`∩[A038614(n+1), A039150(n+1)]`
-/

namespace A386354.P4236660608279915338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386354.P4236660608279915338

namespace A386354

/-- `∩[A038614(n+1), A039150(n+1)]` -/
def P4236660608279915338.Spec : Prop :=
  ∀ n, (P4236660608279915338.a n : ℤ) = A386354 (n + 1)

end A386354

/-! ## A386354.P14505109214877609614

`∩[A038615(n+1), A039150(n+1)]`
-/

namespace A386354.P14505109214877609614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386354.P14505109214877609614

namespace A386354

/-- `∩[A038615(n+1), A039150(n+1)]` -/
def P14505109214877609614.Spec : Prop :=
  ∀ n, (P14505109214877609614.a n : ℤ) = A386354 (n + 1)

end A386354

/-! ## A386354.P4551865866648132920

`∩[A038614(n+1), A376047(n+1)]`
-/

namespace A386354.P4551865866648132920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386354.P4551865866648132920

namespace A386354

/-- `∩[A038614(n+1), A376047(n+1)]` -/
def P4551865866648132920.Spec : Prop :=
  ∀ n, (P4551865866648132920.a n : ℤ) = A386354 (n + 1)

end A386354

/-! ## A386354.P2333898538337316875

`∩[A038615(n+1), A052414(n+1)]`
-/

namespace A386354.P2333898538337316875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386354.P2333898538337316875

namespace A386354

/-- `∩[A038615(n+1), A052414(n+1)]` -/
def P2333898538337316875.Spec : Prop :=
  ∀ n, (P2333898538337316875.a n : ℤ) = A386354 (n + 1)

end A386354

/-! ## A386354.P3226465396854497311

`∩[A038614(n+1), A052419(n+1)]`
-/

namespace A386354.P3226465396854497311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386354.P3226465396854497311

namespace A386354

/-- `∩[A038614(n+1), A052419(n+1)]` -/
def P3226465396854497311.Spec : Prop :=
  ∀ n, (P3226465396854497311.a n : ℤ) = A386354 (n + 1)

end A386354

/-! ## A386354.P3685667676188582347

`p?[record[A222250(n)]]`
-/

namespace A386354.P3685667676188582347
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A386354.P3685667676188582347

namespace A386354

/-- `p?[record[A222250(n)]]` -/
def P3685667676188582347.Spec : Prop :=
  ∀ n, P3685667676188582347.a n = A386354 (n + 1)

end A386354

/-! ## A386354.P8279160282631917454

`eq[n, A062584(A222249(n))]`
-/

namespace A386354.P8279160282631917454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222249 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386354.P8279160282631917454

namespace A386354

/-- `eq[n, A062584(A222249(n))]` -/
def P8279160282631917454.Spec : Prop :=
  ∀ n, (P8279160282631917454.a n : ℤ) = A386354 (n + 1)

end A386354

/-! ## A386354.P1514154986715245649

`eq[A064502(n), A222249(n)]`
-/

namespace A386354.P1514154986715245649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386354.P1514154986715245649

namespace A386354

/-- `eq[A064502(n), A222249(n)]` -/
def P1514154986715245649.Spec : Prop :=
  ∀ n, (P1514154986715245649.a n : ℤ) = A386354 (n + 1)

end A386354

/-! ## A386354.P1705763530993989544

`eq[A084413(n), A222249(n)]`
-/

namespace A386354.P1705763530993989544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386354.P1705763530993989544

namespace A386354

/-- `eq[A084413(n), A222249(n)]` -/
def P1705763530993989544.Spec : Prop :=
  ∀ n, (P1705763530993989544.a n : ℤ) = A386354 (n + 1)

end A386354

/-! ## A386354.P15417780535097707375

`eq[A222249(n), A272476(n)]`
-/

namespace A386354.P15417780535097707375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386354.P15417780535097707375

namespace A386354

/-- `eq[A222249(n), A272476(n)]` -/
def P15417780535097707375.Spec : Prop :=
  ∀ n, (P15417780535097707375.a n : ℤ) = A386354 (n + 1)

end A386354

/-! ## A386354.P2592636985153185890

`eq[A222249(n), A327420(n)]`
-/

namespace A386354.P2592636985153185890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386354.P2592636985153185890

namespace A386354

/-- `eq[A222249(n), A327420(n)]` -/
def P2592636985153185890.Spec : Prop :=
  ∀ n, (P2592636985153185890.a n : ℤ) = A386354 (n + 1)

end A386354

/-! ## A386354.P14199628948988568572

`eq[A038700(n+1), A222249(n)]`
-/

namespace A386354.P14199628948988568572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386354.P14199628948988568572

namespace A386354

/-- `eq[A038700(n+1), A222249(n)]` -/
def P14199628948988568572.Spec : Prop :=
  ∀ n, (P14199628948988568572.a n : ℤ) = A386354 (n + 1)

end A386354

/-! ## A386354.P4513091757826740039

`eq[A057637(n+1), A222249(n)]`
-/

namespace A386354.P4513091757826740039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386354.P4513091757826740039

namespace A386354

/-- `eq[A057637(n+1), A222249(n)]` -/
def P4513091757826740039.Spec : Prop :=
  ∀ n, (P4513091757826740039.a n : ℤ) = A386354 (n + 1)

end A386354

/-! ## A386354.P16839889174720224504

`eq[A093868(n+1), A222249(n)]`
-/

namespace A386354.P16839889174720224504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386354.P16839889174720224504

namespace A386354

/-- `eq[A093868(n+1), A222249(n)]` -/
def P16839889174720224504.Spec : Prop :=
  ∀ n, (P16839889174720224504.a n : ℤ) = A386354 (n + 1)

end A386354

/-!
# A386355: Primes without {6, 8} as digits.

The programs for A386355, the canonical program `A386355.P6323683761705395638` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386355 has offset 1).

The definition of A386355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6614 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386355.P6323683761705395638

`∩[A038614(n+1), A038616(n+1)]`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A386355

/-- `∩[A038614(n+1), A038616(n+1)]` -/
def P6323683761705395638.Spec : Prop :=
  ∀ n, (P6323683761705395638.a n : ℤ) = A386355 (n + 1)

theorem P6323683761705395638.correct : P6323683761705395638.Spec := by
  intro n
  simp only [A386355, Nat.add_sub_cancel]

end A386355

/-! ## A386355.P17508909396131879751

`∩[A038614(n+1), A039151(n+1)]`
-/

namespace A386355.P17508909396131879751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386355.P17508909396131879751

namespace A386355

/-- `∩[A038614(n+1), A039151(n+1)]` -/
def P17508909396131879751.Spec : Prop :=
  ∀ n, (P17508909396131879751.a n : ℤ) = A386355 (n + 1)

end A386355

/-! ## A386355.P7363699893141947411

`∩[A038616(n+1), A039151(n+1)]`
-/

namespace A386355.P7363699893141947411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039151 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386355.P7363699893141947411

namespace A386355

/-- `∩[A038616(n+1), A039151(n+1)]` -/
def P7363699893141947411.Spec : Prop :=
  ∀ n, (P7363699893141947411.a n : ℤ) = A386355 (n + 1)

end A386355

/-! ## A386355.P10240060280209387330

`∩[A038616(n+1), A052414(n+1)]`
-/

namespace A386355.P10240060280209387330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386355.P10240060280209387330

namespace A386355

/-- `∩[A038616(n+1), A052414(n+1)]` -/
def P10240060280209387330.Spec : Prop :=
  ∀ n, (P10240060280209387330.a n : ℤ) = A386355 (n + 1)

end A386355

/-! ## A386355.P14025414420152455379

`∩[A038614(n+1), A052421(n+1)]`
-/

namespace A386355.P14025414420152455379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386355.P14025414420152455379

namespace A386355

/-- `∩[A038614(n+1), A052421(n+1)]` -/
def P14025414420152455379.Spec : Prop :=
  ∀ n, (P14025414420152455379.a n : ℤ) = A386355 (n + 1)

end A386355

/-! ## A386355.P7154612108287578901

`eq[n, A222250(A051697(n))]`
-/

namespace A386355.P7154612108287578901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A051697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386355.P7154612108287578901

namespace A386355

/-- `eq[n, A222250(A051697(n))]` -/
def P7154612108287578901.Spec : Prop :=
  ∀ n, (P7154612108287578901.a n : ℤ) = A386355 (n + 1)

end A386355

/-! ## A386355.P17364447735735933476

`eq[n, A062584(A222250(n))]`
-/

namespace A386355.P17364447735735933476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222250 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386355.P17364447735735933476

namespace A386355

/-- `eq[n, A062584(A222250(n))]` -/
def P17364447735735933476.Spec : Prop :=
  ∀ n, (P17364447735735933476.a n : ℤ) = A386355 (n + 1)

end A386355

/-! ## A386355.P10925307480670889308

`eq[A064502(n), A222250(n)]`
-/

namespace A386355.P10925307480670889308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386355.P10925307480670889308

namespace A386355

/-- `eq[A064502(n), A222250(n)]` -/
def P10925307480670889308.Spec : Prop :=
  ∀ n, (P10925307480670889308.a n : ℤ) = A386355 (n + 1)

end A386355

/-! ## A386355.P3932844769639787141

`eq[n, A222250(A077018(n))]`
-/

namespace A386355.P3932844769639787141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A077018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386355.P3932844769639787141

namespace A386355

/-- `eq[n, A222250(A077018(n))]` -/
def P3932844769639787141.Spec : Prop :=
  ∀ n, (P3932844769639787141.a n : ℤ) = A386355 (n + 1)

end A386355

/-! ## A386355.P17647213726032149157

`eq[A084413(n), A222250(n)]`
-/

namespace A386355.P17647213726032149157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386355.P17647213726032149157

namespace A386355

/-- `eq[A084413(n), A222250(n)]` -/
def P17647213726032149157.Spec : Prop :=
  ∀ n, (P17647213726032149157.a n : ℤ) = A386355 (n + 1)

end A386355

/-! ## A386355.P17451217898983136611

`eq[A222250(n), A272476(n)]`
-/

namespace A386355.P17451217898983136611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386355.P17451217898983136611

namespace A386355

/-- `eq[A222250(n), A272476(n)]` -/
def P17451217898983136611.Spec : Prop :=
  ∀ n, (P17451217898983136611.a n : ℤ) = A386355 (n + 1)

end A386355

/-! ## A386355.P15354824521504407496

`eq[A222250(n), A327420(n)]`
-/

namespace A386355.P15354824521504407496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386355.P15354824521504407496

namespace A386355

/-- `eq[A222250(n), A327420(n)]` -/
def P15354824521504407496.Spec : Prop :=
  ∀ n, (P15354824521504407496.a n : ℤ) = A386355 (n + 1)

end A386355

/-! ## A386355.P5228716940145518691

`eq[A038700(n+1), A222250(n)]`
-/

namespace A386355.P5228716940145518691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386355.P5228716940145518691

namespace A386355

/-- `eq[A038700(n+1), A222250(n)]` -/
def P5228716940145518691.Spec : Prop :=
  ∀ n, (P5228716940145518691.a n : ℤ) = A386355 (n + 1)

end A386355

/-! ## A386355.P2400472393130028349

`eq[A057637(n+1), A222250(n)]`
-/

namespace A386355.P2400472393130028349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386355.P2400472393130028349

namespace A386355

/-- `eq[A057637(n+1), A222250(n)]` -/
def P2400472393130028349.Spec : Prop :=
  ∀ n, (P2400472393130028349.a n : ℤ) = A386355 (n + 1)

end A386355

/-! ## A386355.P9791858266976369761

`eq[A093868(n+1), A222250(n)]`
-/

namespace A386355.P9791858266976369761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386355.P9791858266976369761

namespace A386355

/-- `eq[A093868(n+1), A222250(n)]` -/
def P9791858266976369761.Spec : Prop :=
  ∀ n, (P9791858266976369761.a n : ℤ) = A386355 (n + 1)

end A386355

/-! ## A386355.P4144795340973822287

`eq[A194603(n+1), A222250(n)]`
-/

namespace A386355.P4144795340973822287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386355.P4144795340973822287

namespace A386355

/-- `eq[A194603(n+1), A222250(n)]` -/
def P4144795340973822287.Spec : Prop :=
  ∀ n, (P4144795340973822287.a n : ℤ) = A386355 (n + 1)

end A386355

/-! ## A386355.P9144414836620401912

`eq[A222250(n), A249803(n+1)]`
-/

namespace A386355.P9144414836620401912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249803 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386355.P9144414836620401912

namespace A386355

/-- `eq[A222250(n), A249803(n+1)]` -/
def P9144414836620401912.Spec : Prop :=
  ∀ n, (P9144414836620401912.a n : ℤ) = A386355 (n + 1)

end A386355

/-!
# A386356: Primes without {6, 9} as digits.

The programs for A386356, there is no canonical definition to state claims against.
-/

/-! ## A386356.P9087405061069579088

`∩[A038614(n+1), A038617(n+1)]`
-/

namespace A386356.P9087405061069579088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386356.P9087405061069579088

/-! ## A386356.P7118596152642968597

`∩[A038614(n+1), A039152(n+1)]`
-/

namespace A386356.P7118596152642968597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386356.P7118596152642968597

/-! ## A386356.P2648302188755684435

`∩[A038617(n+1), A039152(n+1)]`
-/

namespace A386356.P2648302188755684435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039152 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386356.P2648302188755684435

/-! ## A386356.P2343264020237553626

`∩[A038617(n+1), A052414(n+1)]`
-/

namespace A386356.P2343264020237553626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386356.P2343264020237553626

/-! ## A386356.P6224330846989586428

`∩[A038614(n+1), A007095(n)]`
-/

namespace A386356.P6224330846989586428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386356.P6224330846989586428

/-! ## A386356.P10917869464171413383

`∩[A037479(n+1), A038614(n+1)]`
-/

namespace A386356.P10917869464171413383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038614 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386356.P10917869464171413383

/-! ## A386356.P6131215463926925619

`eq[n, A062584(A222251(n))]`
-/

namespace A386356.P6131215463926925619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222251 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386356.P6131215463926925619

/-! ## A386356.P9293516142130583553

`eq[A064502(n), A222251(n)]`
-/

namespace A386356.P9293516142130583553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386356.P9293516142130583553

/-! ## A386356.P17013282535344224393

`eq[A084413(n), A222251(n)]`
-/

namespace A386356.P17013282535344224393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386356.P17013282535344224393

/-! ## A386356.P6462081845218445907

`eq[A222251(n), A272476(n)]`
-/

namespace A386356.P6462081845218445907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386356.P6462081845218445907

/-! ## A386356.P7524513260670365197

`eq[A038700(n+1), A222251(n)]`
-/

namespace A386356.P7524513260670365197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386356.P7524513260670365197

/-! ## A386356.P1348239067832673620

`eq[A057637(n+1), A222251(n)]`
-/

namespace A386356.P1348239067832673620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386356.P1348239067832673620

/-! ## A386356.P627788784250172117

`eq[A093868(n+1), A222251(n)]`
-/

namespace A386356.P627788784250172117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386356.P627788784250172117

/-!
# A386357: Primes without {7, 8} as digits.

The programs for A386357, the canonical program `A386357.P4558547617115754189` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386357 has offset 1).

The definition of A386357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A386357.P4558547617115754189

`∩[A038615(n+1), A038616(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A386357

/-- `∩[A038615(n+1), A038616(n+1)]` -/
def P4558547617115754189.Spec : Prop :=
  ∀ n, (P4558547617115754189.a n : ℤ) = A386357 (n + 1)

theorem P4558547617115754189.correct : P4558547617115754189.Spec := by
  intro n
  simp only [A386357, Nat.add_sub_cancel]

end A386357

/-! ## A386357.P4839179709278624687

`∩[A038615(n+1), A039153(n+1)]`
-/

namespace A386357.P4839179709278624687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386357.P4839179709278624687

namespace A386357

/-- `∩[A038615(n+1), A039153(n+1)]` -/
def P4839179709278624687.Spec : Prop :=
  ∀ n, (P4839179709278624687.a n : ℤ) = A386357 (n + 1)

end A386357

/-! ## A386357.P7344596167918494260

`∩[A038616(n+1), A039153(n+1)]`
-/

namespace A386357.P7344596167918494260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386357.P7344596167918494260

namespace A386357

/-- `∩[A038616(n+1), A039153(n+1)]` -/
def P7344596167918494260.Spec : Prop :=
  ∀ n, (P7344596167918494260.a n : ℤ) = A386357 (n + 1)

end A386357

/-! ## A386357.P311762558950700221

`∩[A038616(n+1), A376047(n+1)]`
-/

namespace A386357.P311762558950700221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386357.P311762558950700221

namespace A386357

/-- `∩[A038616(n+1), A376047(n+1)]` -/
def P311762558950700221.Spec : Prop :=
  ∀ n, (P311762558950700221.a n : ℤ) = A386357 (n + 1)

end A386357

/-! ## A386357.P4299412445428977289

`∩[A038616(n+1), A052419(n+1)]`
-/

namespace A386357.P4299412445428977289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386357.P4299412445428977289

namespace A386357

/-- `∩[A038616(n+1), A052419(n+1)]` -/
def P4299412445428977289.Spec : Prop :=
  ∀ n, (P4299412445428977289.a n : ℤ) = A386357 (n + 1)

end A386357

/-! ## A386357.P13127760160881853401

`∩[A038615(n+1), A052421(n+1)]`
-/

namespace A386357.P13127760160881853401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386357.P13127760160881853401

namespace A386357

/-- `∩[A038615(n+1), A052421(n+1)]` -/
def P13127760160881853401.Spec : Prop :=
  ∀ n, (P13127760160881853401.a n : ℤ) = A386357 (n + 1)

end A386357

/-! ## A386357.P12513937199820877035

`p?[record[A222253(n)]]`
-/

namespace A386357.P12513937199820877035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A386357.P12513937199820877035

namespace A386357

/-- `p?[record[A222253(n)]]` -/
def P12513937199820877035.Spec : Prop :=
  ∀ n, P12513937199820877035.a n = A386357 (n + 1)

end A386357

/-! ## A386357.P2666503063290697631

`eq[n, A062584(A222252(n))]`
-/

namespace A386357.P2666503063290697631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222252 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386357.P2666503063290697631

namespace A386357

/-- `eq[n, A062584(A222252(n))]` -/
def P2666503063290697631.Spec : Prop :=
  ∀ n, (P2666503063290697631.a n : ℤ) = A386357 (n + 1)

end A386357

/-! ## A386357.P12960472351601765669

`eq[A064502(n), A222252(n)]`
-/

namespace A386357.P12960472351601765669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386357.P12960472351601765669

namespace A386357

/-- `eq[A064502(n), A222252(n)]` -/
def P12960472351601765669.Spec : Prop :=
  ∀ n, (P12960472351601765669.a n : ℤ) = A386357 (n + 1)

end A386357

/-! ## A386357.P13990203287122767428

`eq[A084413(n), A222252(n)]`
-/

namespace A386357.P13990203287122767428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386357.P13990203287122767428

namespace A386357

/-- `eq[A084413(n), A222252(n)]` -/
def P13990203287122767428.Spec : Prop :=
  ∀ n, (P13990203287122767428.a n : ℤ) = A386357 (n + 1)

end A386357

/-! ## A386357.P3618687786620732919

`eq[A222252(n), A272476(n)]`
-/

namespace A386357.P3618687786620732919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386357.P3618687786620732919

namespace A386357

/-- `eq[A222252(n), A272476(n)]` -/
def P3618687786620732919.Spec : Prop :=
  ∀ n, (P3618687786620732919.a n : ℤ) = A386357 (n + 1)

end A386357

/-! ## A386357.P7809352560699426698

`eq[A222252(n), A327420(n)]`
-/

namespace A386357.P7809352560699426698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386357.P7809352560699426698

namespace A386357

/-- `eq[A222252(n), A327420(n)]` -/
def P7809352560699426698.Spec : Prop :=
  ∀ n, (P7809352560699426698.a n : ℤ) = A386357 (n + 1)

end A386357

/-! ## A386357.P5024511921088202259

`eq[A038700(n+1), A222252(n)]`
-/

namespace A386357.P5024511921088202259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386357.P5024511921088202259

namespace A386357

/-- `eq[A038700(n+1), A222252(n)]` -/
def P5024511921088202259.Spec : Prop :=
  ∀ n, (P5024511921088202259.a n : ℤ) = A386357 (n + 1)

end A386357

/-! ## A386357.P7112697473607004197

`eq[A057637(n+1), A222252(n)]`
-/

namespace A386357.P7112697473607004197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386357.P7112697473607004197

namespace A386357

/-- `eq[A057637(n+1), A222252(n)]` -/
def P7112697473607004197.Spec : Prop :=
  ∀ n, (P7112697473607004197.a n : ℤ) = A386357 (n + 1)

end A386357

/-! ## A386357.P11032394731026294636

`eq[A093868(n+1), A222252(n)]`
-/

namespace A386357.P11032394731026294636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222252 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386357.P11032394731026294636

namespace A386357

/-- `eq[A093868(n+1), A222252(n)]` -/
def P11032394731026294636.Spec : Prop :=
  ∀ n, (P11032394731026294636.a n : ℤ) = A386357 (n + 1)

end A386357

/-!
# A386358: Primes without {7, 9} as digits.

The programs for A386358, there is no canonical definition to state claims against.
-/

/-! ## A386358.P14542996027413561494

`∩[A038615(n+1), A038617(n+1)]`
-/

namespace A386358.P14542996027413561494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386358.P14542996027413561494

/-! ## A386358.P16633971091974575661

`∩[A038615(n+1), A039154(n+1)]`
-/

namespace A386358.P16633971091974575661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386358.P16633971091974575661

/-! ## A386358.P3984224505021799595

`∩[A038617(n+1), A039154(n+1)]`
-/

namespace A386358.P3984224505021799595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386358.P3984224505021799595

/-! ## A386358.P2514900498838324416

`∩[A038617(n+1), A376047(n+1)]`
-/

namespace A386358.P2514900498838324416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386358.P2514900498838324416

/-! ## A386358.P3052667209712875589

`∩[A038615(n+1), A007095(n)]`
-/

namespace A386358.P3052667209712875589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386358.P3052667209712875589

/-! ## A386358.P2197003281203146477

`∩[A037479(n+1), A038615(n+1)]`
-/

namespace A386358.P2197003281203146477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386358.P2197003281203146477

/-! ## A386358.P11905137398989058817

`∩[A038617(n+1), A052419(n+1)]`
-/

namespace A386358.P11905137398989058817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386358.P11905137398989058817

/-! ## A386358.P10759535734398805428

`eq[n, A062584(A222253(n))]`
-/

namespace A386358.P10759535734398805428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062584 (A222253 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A386358.P10759535734398805428

/-! ## A386358.P16282748205378713424

`eq[A064502(n), A222253(n)]`
-/

namespace A386358.P16282748205378713424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064502 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386358.P16282748205378713424

/-! ## A386358.P10110460713626875201

`eq[A084413(n), A222253(n)]`
-/

namespace A386358.P10110460713626875201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386358.P10110460713626875201

/-! ## A386358.P8616062719488854207

`eq[A222253(n), A272476(n)]`
-/

namespace A386358.P8616062719488854207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272476 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386358.P8616062719488854207

/-! ## A386358.P8512536800014712374

`eq[A038700(n+1), A222253(n)]`
-/

namespace A386358.P8512536800014712374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222253 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A386358.P8512536800014712374

/-!
# A386359: a(n) = (1/4)*(9^n - 2*4^n + 3), n > 0; a(0) = 0.

The programs for A386359, the canonical program `A386359.P16582126008717073906` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386359 has offset 0).

The definition of A386359 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386359.P465828752280667429

`ogf((x-x^2+18x^3)/(1-14x+49x^2-36x^3))`
-/

namespace A386359.P465828752280667429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -1, 18] [1, -14, 49, -36] n

end

end A386359.P465828752280667429

namespace A386359

/-- `ogf((x-x^2+18x^3)/(1-14x+49x^2-36x^3))` -/
def P465828752280667429.Spec : Prop :=
  ∀ n, P465828752280667429.a n = A386359 n

end A386359

/-! ## A386359.P16582126008717073906

`14*a(n-1)-49*a(n-2)+36*a(n-3)` with `a(0)=0, a(1)=1, a(2)=13, a(3)=151`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386359

/-- `14*a(n-1)-49*a(n-2)+36*a(n-3)` -/
def P16582126008717073906.Spec : Prop :=
  ∀ n, P16582126008717073906.a n = A386359 n

theorem P16582126008717073906.correct : P16582126008717073906.Spec := by
  intro n
  simp only [A386359]

end A386359

/-! ## A386359.P786014518179494860

`ceil(A000392(2*n+1)/2)`
-/

namespace A386359.P786014518179494860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000392 (2 * n + 1) : ℚ) / 2⌉

end

end A386359.P786014518179494860

namespace A386359

/-- `ceil(A000392(2*n+1)/2)` -/
def P786014518179494860.Spec : Prop :=
  ∀ n, P786014518179494860.a n = A386359 n

end A386359

/-! ## A386359.P14253052802763014340

`or(1, floor((3^n/2)²))-A081294(n)`
-/

namespace A386359.P14253052802763014340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊((3 ^ n : ℚ) / 2) ^ 2⌋ - A081294 n

end

end A386359.P14253052802763014340

namespace A386359

/-- `or(1, floor((3^n/2)²))-A081294(n)` -/
def P14253052802763014340.Spec : Prop :=
  ∀ n, P14253052802763014340.a n = A386359 n

end A386359

/-! ## A386359.P10019518903283881288

`record[A084567(n)]-2^comp[or(1, n)+1]`
-/

namespace A386359.P10019518903283881288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084567 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (2 ^ SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A386359.P10019518903283881288

namespace A386359

/-- `record[A084567(n)]-2^comp[or(1, n)+1]` -/
def P10019518903283881288.Spec : Prop :=
  ∀ n, P10019518903283881288.a n = A386359 n

end A386359

/-! ## A386359.P3763498984440289144

`A140420(A004273(n))`
-/

namespace A386359.P3763498984440289144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140420 (A004273 n).toNat

end

end A386359.P3763498984440289144

namespace A386359

/-- `A140420(A004273(n))` -/
def P3763498984440289144.Spec : Prop :=
  ∀ n, P3763498984440289144.a n = A386359 n

end A386359

/-! ## A386359.P14217695839654687693

`A054879(n)-A081294(n)`
-/

namespace A386359.P14217695839654687693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054879 n - A081294 n

end

end A386359.P14217695839654687693

namespace A386359

/-- `A054879(n)-A081294(n)` -/
def P14217695839654687693.Spec : Prop :=
  ∀ n, P14217695839654687693.a n = A386359 n

end A386359

/-! ## A386359.P10469295234046226715

`A054879(n)-A011782(2*n)`
-/

namespace A386359.P10469295234046226715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054879 n - A011782 (2 * n)

end

end A386359.P10469295234046226715

namespace A386359

/-- `A054879(n)-A011782(2*n)` -/
def P10469295234046226715.Spec : Prop :=
  ∀ n, P10469295234046226715.a n = A386359 n

end A386359

/-! ## A386359.P10816092477937604649

`A054878(2*n)-A081294(n)`
-/

namespace A386359.P10816092477937604649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054878 (2 * n) - A081294 n

end

end A386359.P10816092477937604649

namespace A386359

/-- `A054878(2*n)-A081294(n)` -/
def P10816092477937604649.Spec : Prop :=
  ∀ n, P10816092477937604649.a n = A386359 n

end A386359

/-! ## A386359.P16108163998199633643

`A122983(2*n)-A081294(n)`
-/

namespace A386359.P16108163998199633643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122983 (2 * n) - A081294 n

end

end A386359.P16108163998199633643

namespace A386359

/-- `A122983(2*n)-A081294(n)` -/
def P16108163998199633643.Spec : Prop :=
  ∀ n, P16108163998199633643.a n = A386359 n

end A386359

/-! ## A386359.P2978911003904126757

`A122983(2*n)-A011782(2*n)`
-/

namespace A386359.P2978911003904126757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122983 (2 * n) - A011782 (2 * n)

end

end A386359.P2978911003904126757

namespace A386359

/-- `A122983(2*n)-A011782(2*n)` -/
def P2978911003904126757.Spec : Prop :=
  ∀ n, P2978911003904126757.a n = A386359 n

end A386359

/-! ## A386359.P271545912548288093

`A054878(2*n)-A199573(2*n)`
-/

namespace A386359.P271545912548288093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054878 (2 * n) - A199573 (2 * n)

end

end A386359.P271545912548288093

namespace A386359

/-- `A054878(2*n)-A199573(2*n)` -/
def P271545912548288093.Spec : Prop :=
  ∀ n, P271545912548288093.a n = A386359 n

end A386359

/-! ## A386359.P14339468626887690578

`A122983(2*n)-A158302(2*n)`
-/

namespace A386359.P14339468626887690578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122983 (2 * n) - A158302 (2 * n)

end

end A386359.P14339468626887690578

namespace A386359

/-- `A122983(2*n)-A158302(2*n)` -/
def P14339468626887690578.Spec : Prop :=
  ∀ n, P14339468626887690578.a n = A386359 n

end A386359

/-! ## A386359.P1358183808512761842

`A039301(n)+A054879(n)-A039301(n+1)`
-/

namespace A386359.P1358183808512761842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039301 n + (A054879 n - A039301 (n + 1))

end

end A386359.P1358183808512761842

namespace A386359

/-- `A039301(n)+A054879(n)-A039301(n+1)` -/
def P1358183808512761842.Spec : Prop :=
  ∀ n, P1358183808512761842.a n = A386359 n

end A386359

/-!
# A386360: Number of partitions of n such that the least part occurs exactly (1/3)*(number of parts) times.

The programs for A386360, there is no canonical definition to state claims against.
-/

/-! ## A386360.P7857988875969502527

`A121902(∑[A239468(n+1)*A239468(n+1)])`
-/

namespace A386360.P7857988875969502527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239468 (n + 1) * A239468 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A386360.P7857988875969502527

/-!
# A386362: Expansion of (1/x) * Series_Reversion( x/(1+7*x+9*x^2) ).

The programs for A386362, the canonical program `A386362.P2959515689343458494` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386362 has offset 0).

The definition of A386362 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386362.P2959515689343458494

`∑{#}[n, 3^#*C(n, #)*A000108(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A386362

/-- `∑{#}[n, 3^#*C(n, #)*A000108(#+1)]` -/
def P2959515689343458494.Spec : Prop :=
  ∀ n, P2959515689343458494.a n = A386362 n

theorem P2959515689343458494.correct : P2959515689343458494.Spec := by
  intro n
  simp only [A386362]

end A386362

/-! ## A386362.P11889325504765287860

`(A337167(n+1)-A337167(n))/3`
-/

namespace A386362.P11889325504765287860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337167 (n + 1) - A337167 n : ℚ) / 3

end

end A386362.P11889325504765287860

namespace A386362

/-- `(A337167(n+1)-A337167(n))/3` -/
def P11889325504765287860.Spec : Prop :=
  ∀ n, P11889325504765287860.a n = (A386362 n : ℚ)

end A386362

/-! ## A386362.P13543017913816835055

`Δ[A337167(n)/3]`
-/

namespace A386362.P13543017913816835055
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337167 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A386362.P13543017913816835055

namespace A386362

/-- `Δ[A337167(n)/3]` -/
def P13543017913816835055.Spec : Prop :=
  ∀ n, P13543017913816835055.a n = (A386362 n : ℚ)

end A386362

/-! ## A386362.P130112387144150669

`A387309(n)/(n+1)`
-/

namespace A386362.P130112387144150669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387309 n : ℚ) / (n + 1 : ℚ)

end

end A386362.P130112387144150669

namespace A386362

/-- `A387309(n)/(n+1)` -/
def P130112387144150669.Spec : Prop :=
  ∀ n, P130112387144150669.a n = (A386362 n : ℚ)

end A386362

/-! ## A386362.P11709603923935232953

`A385716(n)/∑[n+1]`
-/

namespace A386362.P11709603923935232953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A385716 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A386362.P11709603923935232953

namespace A386362

/-- `A385716(n)/∑[n+1]` -/
def P11709603923935232953.Spec : Prop :=
  ∀ n, P11709603923935232953.a n = (A386362 n : ℚ)

end A386362

/-!
# A386363: Variation of triangle of Entringer numbers (A008281) read by rows: T(n, k) = T(n, k-1) + (n-2)*T(n-1, n-k) for 1 < k <= n, T(n, 1) = T(n-1, n-1) for n > 0, T(n, 0) = 0^n.

The programs for A386363, there is no canonical definition to state claims against.
-/

/-! ## A386363.P13948704212334852003

`A000120(A086810(n)*A212389(n))`
-/

namespace A386363.P13948704212334852003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A086810 n * A212389 n).toNat

end

end A386363.P13948704212334852003

/-! ## A386363.P13527597637250364372

`A333381(9*A063180(n+1))`
-/

namespace A386363.P13527597637250364372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 (9 * A063180 (n + 1)).toNat

end

end A386363.P13527597637250364372

/-! ## A386363.P9153831792900533800

`A060502(A005428(n)*A287315(n))`
-/

namespace A386363.P9153831792900533800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A005428 n * A287315 n).toNat

end

end A386363.P9153831792900533800

/-! ## A386363.P3180804140919042114

`A097805(n)*A124766(A374763(n))`
-/

namespace A386363.P3180804140919042114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n * A124766 (A374763 n).toNat

end

end A386363.P3180804140919042114

/-! ## A386363.P13155122516897912570

`A143594(A143571(n))*A363946(n)`
-/

namespace A386363.P13155122516897912570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143594 (A143571 n).toNat * A363946 n

end

end A386363.P13155122516897912570

/-!
# A386365: Expansion of e.g.f. (Sum_{k>=0} binomial(3*k,k) * x^k)^(1/3).

The programs for A386365, there is no canonical definition to state claims against.
-/

/-! ## A386365.P8032295182207075478

`A037915(n*A382086(n))`
-/

namespace A386365.P8032295182207075478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 ((n : ℤ) * A382086 n).toNat

end

end A386365.P8032295182207075478

/-!
# A386367: a(n) = Sum_{k=0..n-1} binomial(5*k,k) * binomial(5*n-5*k-2,n-k-1).

The programs for A386367, the canonical program `A386367.P15141567921730108809` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386367 has offset 0).

The definition of A386367 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, C(5*#, #)*C(5*n-5*#-2, n-#-1)]` (program `A386367.P15141567921730108809`, by `A386367.P15141567921730108809.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386367.P15141567921730108809

`∑{#}[n-1, C(5*#, #)*C(5*n-5*#-2, n-#-1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386367

/-- `∑{#}[n-1, C(5*#, #)*C(5*n-5*#-2, n-#-1)]` -/
def P15141567921730108809.Spec : Prop :=
  ∀ n, (P15141567921730108809.a n : ℤ) = A386367 n

theorem P15141567921730108809.correct : P15141567921730108809.Spec := by
  intro n
  simp only [A386367]

end A386367

/-! ## A386367.P14860643092191450472

`∑{#}[n-1, 4^(n-#-1)*C(5*n-1, #)]`
-/

namespace A386367.P14860643092191450472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (4 : ℚ) ^ ((n : ℤ) - (k : ℤ) - 1 : ℤ) * (Nat.choose ((5 * n : ℤ) - 1).toNat k : ℚ)

end

end A386367.P14860643092191450472

namespace A386367

/-- `∑{#}[n-1, 4^(n-#-1)*C(5*n-1, #)]` -/
def P14860643092191450472.Spec : Prop :=
  ∀ n, P14860643092191450472.a n = (A386367 n : ℚ)

end A386367

/-!
# A386368: a(n) = Sum_{k=0..n-1} binomial(6*k,k) * binomial(6*n-6*k-2,n-k-1).

The programs for A386368, the canonical program `A386368.P12323432057744217171` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386368 has offset 0).

The definition of A386368 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n-1, C(6*#, #)*C(6*n-6*#-2, n-#-1)]` (program `A386368.P12323432057744217171`, by `A386368.P12323432057744217171.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386368.P13767179398170505258

`∑{#}[n-1, 5^(n-#-1)*C(6*n-1, #)]`
-/

namespace A386368.P13767179398170505258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (5 : ℚ) ^ ((n : ℤ) - (k : ℤ) - 1 : ℤ) * (Nat.choose ((6 * n : ℤ) - 1).toNat k : ℚ)

end

end A386368.P13767179398170505258

namespace A386368

/-- `∑{#}[n-1, 5^(n-#-1)*C(6*n-1, #)]` -/
def P13767179398170505258.Spec : Prop :=
  ∀ n, P13767179398170505258.a n = (A386368 n : ℚ)

end A386368

/-! ## A386368.P12323432057744217171

`∑{#}[n-1, C(6*#, #)*C(6*n-6*#-2, n-#-1)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386368

/-- `∑{#}[n-1, C(6*#, #)*C(6*n-6*#-2, n-#-1)]` -/
def P12323432057744217171.Spec : Prop :=
  ∀ n, (P12323432057744217171.a n : ℤ) = A386368 n

theorem P12323432057744217171.correct : P12323432057744217171.Spec := by
  intro n
  simp only [A386368]

end A386368

/-!
# A386369: a(1) = 0, and for any n > 1, a(n) is the largest k < n such that a(1) + ... + a(k) is a square number.

The programs for A386369, there is no canonical definition to state claims against.
-/

/-! ## A386369.P13542405352498292668

`Δ[A386687(A028310(n))]`
-/

namespace A386369.P13542405352498292668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386687 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A386369.P13542405352498292668

/-! ## A386369.P14083424865564354803

`A385254(∑[char[A385254(n+1)]])`
-/

namespace A386369.P14083424865564354803
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385254 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385254 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A386369.P14083424865564354803

/-! ## A386369.P14159594646595300186

`A386687(1+n)-A386687(A028310(n))`
-/

namespace A386369.P14159594646595300186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386687 (1 + n) - A386687 (A028310 n).toNat

end

end A386369.P14159594646595300186

/-!
# A386370: Square roots of partial sums of A386369 that are square numbers.

The programs for A386370, there is no canonical definition to state claims against.
-/

/-! ## A386370.P3368944341548650927

`sqrt(A386688(n+1))`
-/

namespace A386370.P3368944341548650927
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A386688 (n + 1) : ℝ)

end

end A386370.P3368944341548650927

/-!
# A386371: a(n) = Sum_{k=0..n} (-3)^(n-k) * binomial(5*n+1,k).

The programs for A386371, the canonical program `A386371.P8558047015468742431` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386371 has offset 0).

The definition of A386371 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386371.P8558047015468742431

`∑{#}[n, (-3)^(n-#)*C(5*n+1, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386371

/-- `∑{#}[n, (-3)^(n-#)*C(5*n+1, #)]` -/
def P8558047015468742431.Spec : Prop :=
  ∀ n, P8558047015468742431.a n = (A386371 n : ℚ)

end A386371

/-!
# A386372: Odd numbers of the form k^m that have m binary digits 1.

The programs for A386372, there is no canonical definition to state claims against.
-/

/-! ## A386372.P13397125659603223081

`∩[A003593(n+1), A161792(n+1)]`
-/

namespace A386372.P13397125659603223081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161792 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386372.P13397125659603223081

/-!
# A386374: Number of words of length n over an infinite alphabet such that the letters cover an initial interval and the letter 1 occurs at least as many times as any other letter.

The programs for A386374, there is no canonical definition to state claims against.
-/

/-! ## A386374.P11744517042543847136

`A151733(A027071(n))`
-/

namespace A386374.P11744517042543847136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151733 (A027071 n).toNat

end

end A386374.P11744517042543847136

/-! ## A386374.P15423645923772464428

`A023193(A347002(n+2)+1)`
-/

namespace A386374.P15423645923772464428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A347002 (n + 2) + 1).toNat

end

end A386374.P15423645923772464428

/-!
# A386375: Number of words of length n over an infinite alphabet such that the letters cover an initial interval and the letter 1 occurs more frequently than any other letter.

The programs for A386375, there is no canonical definition to state claims against.
-/

/-! ## A386375.P16315980064059456485

`A110656(A192744(n+1))`
-/

namespace A386375.P16315980064059456485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A192744 (n + 1)).toNat

end

end A386375.P16315980064059456485

/-!
# A386376: a(n) is the smallest integer k such that b(n,k) is squarefree, where b(n,1) = n and b(n, k+1) = b(n,k) + rad(b(n, k)) for k >= 1.

The programs for A386376, there is no canonical definition to state claims against.
-/

/-! ## A386376.P229247678806960424

`A211100(C(n, A323159(n+1)))`
-/

namespace A386376.P229247678806960424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 (Nat.choose n (A323159 (n + 1)).toNat)

end

end A386376.P229247678806960424

/-! ## A386376.P2806548644031422448

`A400142(((n+1)/∏{p}[n+1, #])^A036838(n))`
-/

namespace A386376.P2806548644031422448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400142 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ (A036838 n : ℤ))).toNat

end

end A386376.P2806548644031422448

/-! ## A386376.P9561648816969808284

`A072411(A000188(n+1)^A286370(n+1))`
-/

namespace A386376.P9561648816969808284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (SequenceMachineLib.roundAway ((A000188 (n + 1) : ℚ) ^ (A286370 (n + 1) : ℤ))).toNat

end

end A386376.P9561648816969808284

/-! ## A386376.P11335590149604324108

`A072411(A072411(n+1)^A286370(n+1))`
-/

namespace A386376.P11335590149604324108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (SequenceMachineLib.roundAway ((A072411 (n + 1) : ℚ) ^ (A286370 (n + 1) : ℤ))).toNat

end

end A386376.P11335590149604324108

/-!
# A386379: a(0) = 1; a(n) = Sum_{k=0..floor((n-1)/5)} a(5*k) * a(n-1-5*k).

The programs for A386379, there is no canonical definition to state claims against.
-/

/-! ## A386379.P15367213168688918955

`A295020(A276529(n))`
-/

namespace A386379.P15367213168688918955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295020 (A276529 n).toNat

end

end A386379.P15367213168688918955

/-!
# A386380: a(0) = 1; a(n) = Sum_{k=0..floor((n-1)/6)} a(6*k) * a(n-1-6*k).

The programs for A386380, there is no canonical definition to state claims against.
-/

/-! ## A386380.P10557134446069404932

`A102823(A273734(n))`
-/

namespace A386380.P10557134446069404932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102823 (A273734 n).toNat

end

end A386380.P10557134446069404932

/-!
# A386381: Main diagonal of A386363.

The programs for A386381, there is no canonical definition to state claims against.
-/

/-! ## A386381.P16785747433441927292

`A386363(∑[n]+n)`
-/

namespace A386381.P16785747433441927292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386363 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A386381.P16785747433441927292

/-! ## A386381.P12114302112630306023

`A386363(A000124(n+1))+A000007(2*n+3)`
-/

namespace A386381.P12114302112630306023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386363 (A000124 (n + 1)).toNat + A000007 (2 * n + 3)

end

end A386381.P12114302112630306023

/-! ## A386381.P14156519573340652201

`A213948(A285460(n))`
-/

namespace A386381.P14156519573340652201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213948 (A285460 n).toNat

end

end A386381.P14156519573340652201

/-!
# A386382: Total number of runs in all heapable permutations of length n.

The programs for A386382, there is no canonical definition to state claims against.
-/

/-! ## A386382.P8878892912181638889

`A079693(A356909(n))+A001003(n)`
-/

namespace A386382.P8878892912181638889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079693 (A356909 n).toNat + A001003 n

end

end A386382.P8878892912181638889

/-! ## A386382.P8770068359413686848

`A394325(A027599(n+1))`
-/

namespace A386382.P8770068359413686848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394325 (A027599 (n + 1)).toNat

end

end A386382.P8770068359413686848

/-!
# A386385: Period-32 block rewriting of A157196 (blocks 11 and 2): for block index i, keep if i mod 32 in {3,4,11,12,15,16,19,20,27,28}, else swap 11<->2.

The programs for A386385, there is no canonical definition to state claims against.
-/

/-! ## A386385.P14072317249792970926

`gcd(2, A167865(A098859(2*n+1)))`
-/

namespace A386385.P14072317249792970926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A167865 (A098859 (2 * n + 1)).toNat)

end

end A386385.P14072317249792970926

/-! ## A386385.P12568944851362032658

`A378284(A035607(n)+A001285(n))`
-/

namespace A386385.P12568944851362032658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378284 (A035607 n + A001285 n).toNat

end

end A386385.P12568944851362032658

/-! ## A386385.P4444706138264424107

`A001285(A019538(n+1)*(A001285(n)+3))`
-/

namespace A386385.P4444706138264424107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A019538 (n + 1) * (A001285 n + 3)).toNat

end

end A386385.P4444706138264424107

/-! ## A386385.P6987122050346939435

`gcd(A014420(n), A102795(A008292(n+1)))`
-/

namespace A386385.P6987122050346939435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014420 n) (A102795 (A008292 (n + 1)).toNat)

end

end A386385.P6987122050346939435

/-! ## A386385.P10626349039648282688

`gcd(A001065(A270620(n)), A270647(n+1))`
-/

namespace A386385.P10626349039648282688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001065 (A270620 n).toNat) (A270647 (n + 1))

end

end A386385.P10626349039648282688

/-!
# A386386: Permutation of the nonnegative integers formed by their unique representation (k - 2^m)*2^(m-1) - 1, where 1 < 2^m < k odd, sorted first by k then by m.

The programs for A386386, there is no canonical definition to state claims against.
-/

/-! ## A386386.P901522929116058628

`(A387016(n+1)-1)/2-1`
-/

namespace A386386.P901522929116058628
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387016 (n + 1) - 1 : ℚ) / 2 - 1

end

end A386386.P901522929116058628

/-! ## A386386.P9983444196427248596

`A089654(n+1)*(2*A030530(n+1)-A089654(n+1)+1)/2-1`
-/

namespace A386386.P9983444196427248596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089654 (n + 1) * (2 * A030530 (n + 1) - A089654 (n + 1) + 1) : ℚ) / 2 - 1

end

end A386386.P9983444196427248596

/-! ## A386386.P3949061968363624718

`(A387016(1+n)-3)/2`
-/

namespace A386386.P3949061968363624718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387016 (1 + n) - 3 : ℚ) / 2

end

end A386386.P3949061968363624718

/-! ## A386386.P10516607739419956923

`A097065(A387016(n+1))`
-/

namespace A386386.P10516607739419956923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (A387016 (n + 1)).toNat

end

end A386386.P10516607739419956923

/-! ## A386386.P4306839624848308657

`A249738(A387016(n+1)-1)`
-/

namespace A386386.P4306839624848308657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249738 (A387016 (n + 1) - 1).toNat

end

end A386386.P4306839624848308657

/-! ## A386386.P15581516574665622286

`A004526(A387016(n+1)-3)`
-/

namespace A386386.P15581516574665622286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A387016 (n + 1) - 3).toNat

end

end A386386.P15581516574665622286

/-!
# A386387: a(n) = Sum_{k=0..n} 4^k * binomial(n,k) * Catalan(k).

The programs for A386387, the canonical program `A386387.P16040842207466709507` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386387 has offset 0).

The definition of A386387 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, 4^#*C(n, #)*A000108(#)]` (program `A386387.P16040842207466709507`, by `A386387.P16040842207466709507.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386387.P16040842207466709507

`∑{#}[n, 4^#*C(n, #)*A000108(#)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A386387

/-- `∑{#}[n, 4^#*C(n, #)*A000108(#)]` -/
def P16040842207466709507.Spec : Prop :=
  ∀ n, P16040842207466709507.a n = A386387 n

theorem P16040842207466709507.correct : P16040842207466709507.Spec := by
  intro n
  simp only [A386387]

end A386387

/-! ## A386387.P6140478475776760537

`A340968(∑[n]+4*n+10+n)`
-/

namespace A386387.P6140478475776760537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340968 (∑ j ∈ Finset.range (n + 1), f1 j + (4 * n + 10) + n)

end

end A386387.P6140478475776760537

namespace A386387

/-- `A340968(∑[n]+4*n+10+n)` -/
def P6140478475776760537.Spec : Prop :=
  ∀ n, P6140478475776760537.a n = A386387 n

end A386387

/-!
# A386388: a(n) is the number of complement pairs of 2n-bead balanced bicolor necklaces.

The programs for A386388, there is no canonical definition to state claims against.
-/

/-! ## A386388.P13099813976507818077

`(A003239(n)-A000013(n))/2`
-/

namespace A386388.P13099813976507818077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003239 n - A000013 n : ℚ) / 2

end

end A386388.P13099813976507818077

/-! ## A386388.P16944015207875452044

`∑{d}[n, A383904(#)]`
-/

namespace A386388.P16944015207875452044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A383904 d

end

end A386388.P16944015207875452044

/-! ## A386388.P7878128171535478210

`A387130(n)+A383904(n)`
-/

namespace A386388.P7878128171535478210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387130 n + A383904 n

end

end A386388.P7878128171535478210

/-! ## A386388.P5749195851579361411

`A045629(n)-A000013(n)`
-/

namespace A386388.P5749195851579361411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045629 n - A000013 n

end

end A386388.P5749195851579361411

/-! ## A386388.P11608921975467056828

`A003239(n)-A045629(n)`
-/

namespace A386388.P11608921975467056828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003239 n - A045629 n

end

end A386388.P11608921975467056828

/-!
# A386389: Expansion of (1/x) * Series_Reversion( x/(1+9*x+16*x^2) ).

The programs for A386389, the canonical program `A386389.P16183838799682373208` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386389 has offset 0).

The definition of A386389 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386389.P16183838799682373208

`∑{#}[n, 4^#*C(n, #)*A000108(#+1)]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A386389

/-- `∑{#}[n, 4^#*C(n, #)*A000108(#+1)]` -/
def P16183838799682373208.Spec : Prop :=
  ∀ n, P16183838799682373208.a n = A386389 n

theorem P16183838799682373208.correct : P16183838799682373208.Spec := by
  intro n
  simp only [A386389]

end A386389

/-! ## A386389.P2911781082927266046

`(A386387(n+1)-A386387(n))/4`
-/

namespace A386389.P2911781082927266046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A386387 (n + 1) - A386387 n : ℚ) / 4

end

end A386389.P2911781082927266046

namespace A386389

/-- `(A386387(n+1)-A386387(n))/4` -/
def P2911781082927266046.Spec : Prop :=
  ∀ n, P2911781082927266046.a n = (A386389 n : ℚ)

end A386389

/-!
# A386391: a(n) is the first number with a total of exactly n 4's in the decimal digits of its divisors.

The programs for A386391, there is no canonical definition to state claims against.
-/

/-! ## A386391.P9977514684200542959

`A308416(A294535(n))`
-/

namespace A386391.P9977514684200542959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308416 (A294535 n).toNat

end

end A386391.P9977514684200542959

/-! ## A386391.P17341898983164636275

`record[A220525(A023172(n+1))]`
-/

namespace A386391.P17341898983164636275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220525 (A023172 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386391.P17341898983164636275

/-!
# A386392: a(n) = 4 * binomial(7*n+4,n)/(7*n+4).

The programs for A386392, the canonical program `A386392.P12680172549557109250` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386392 has offset 0).

The definition of A386392 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A386392.anchor (n : ℕ) : (A386392 n : ℚ) = (4 * Nat.choose (7 * n + 4) n : ℚ) / (7 * n + 4 : ℚ)` in `Proof.A386.A386392`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386392.P7765239543539702279

`A386380(6*n+3)`
-/

namespace A386392.P7765239543539702279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386380 (6 * n + 3)

end

end A386392.P7765239543539702279

namespace A386392

/-- `A386380(6*n+3)` -/
def P7765239543539702279.Spec : Prop :=
  ∀ n, P7765239543539702279.a n = A386392 n

end A386392

/-! ## A386392.P12680172549557109250

`4*C(7*n+4, n)/(7*n+4)`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386392

/-- `4*C(7*n+4, n)/(7*n+4)` -/
def P12680172549557109250.Spec : Prop :=
  ∀ n, P12680172549557109250.a n = (A386392 n : ℚ)

end A386392

/-! ## A386392.P17859406663746304634

`A143547(Δ[n²])`
-/

namespace A386392.P17859406663746304634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143547 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A386392.P17859406663746304634

namespace A386392

/-- `A143547(Δ[n²])` -/
def P17859406663746304634.Spec : Prop :=
  ∀ n, P17859406663746304634.a n = A386392 n

end A386392

/-! ## A386392.P2854158021390414158

`record[A143547(C(n, 2*floor(n/2)))]`
-/

namespace A386392.P2854158021390414158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143547 (Nat.choose n (2 * ⌊(n : ℚ) / 2⌋).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386392.P2854158021390414158

namespace A386392

/-- `record[A143547(C(n, 2*floor(n/2)))]` -/
def P2854158021390414158.Spec : Prop :=
  ∀ n, P2854158021390414158.a n = A386392 n

end A386392

/-! ## A386392.P15758095032722758598

`record[A143547((n+1)/2^val(n+1, 2))]`
-/

namespace A386392.P15758095032722758598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143547 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386392.P15758095032722758598

namespace A386392

/-- `record[A143547((n+1)/2^val(n+1, 2))]` -/
def P15758095032722758598.Spec : Prop :=
  ∀ n, P15758095032722758598.a n = A386392 n

end A386392

/-! ## A386392.P17610558739961505771

`record[A143547(A006369(n))]`
-/

namespace A386392.P17610558739961505771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143547 (A006369 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386392.P17610558739961505771

namespace A386392

/-- `record[A143547(A006369(n))]` -/
def P17610558739961505771.Spec : Prop :=
  ∀ n, P17610558739961505771.a n = A386392 n

end A386392

/-! ## A386392.P12912533813973510406

`record[and(A143547(n), A280193(n))]`
-/

namespace A386392.P12912533813973510406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143547 n) (A280193 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A386392.P12912533813973510406

namespace A386392

/-- `record[and(A143547(n), A280193(n))]` -/
def P12912533813973510406.Spec : Prop :=
  ∀ n, P12912533813973510406.a n = A386392 n

end A386392

/-! ## A386392.P7548985930807514654

`A033999(n)²*A143547(2*n+1)`
-/

namespace A386392.P7548985930807514654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A143547 (2 * n + 1)

end

end A386392.P7548985930807514654

namespace A386392

/-- `A033999(n)²*A143547(2*n+1)` -/
def P7548985930807514654.Spec : Prop :=
  ∀ n, P7548985930807514654.a n = A386392 n

end A386392

/-! ## A386392.P5889356872274634016

`A249344(A007425(n+1))+A143547(2*n+1)`
-/

namespace A386392.P5889356872274634016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249344 (A007425 (n + 1)).toNat + A143547 (2 * n + 1)

end

end A386392.P5889356872274634016

namespace A386392

/-- `A249344(A007425(n+1))+A143547(2*n+1)` -/
def P5889356872274634016.Spec : Prop :=
  ∀ n, P5889356872274634016.a n = A386392 n

end A386392

/-! ## A386392.P17096426478398931458

`A143847(A141881(n+1))+A143547(2*n+1)`
-/

namespace A386392.P17096426478398931458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143847 (A141881 (n + 1)).toNat + A143547 (2 * n + 1)

end

end A386392.P17096426478398931458

namespace A386392

/-- `A143847(A141881(n+1))+A143547(2*n+1)` -/
def P17096426478398931458.Spec : Prop :=
  ∀ n, P17096426478398931458.a n = A386392 n

end A386392

/-!
# A386394: a(n) = (5^(2*n) + 3*2^(5*n-2))/7.

The programs for A386394, the canonical program `A386394.P12118259344301044148` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386394 has offset 1).

The definition of A386394 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^(2*(n+1))+3*2^(5*(n+1)-2))/7` (program `A386394.P8684423485226992697`, by `A386394.P8684423485226992697.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386394.P12118259344301044148

`57*a(n-1)-800*a(n-2)` with `a(0)=7, a(1)=199`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386394

/-- `57*a(n-1)-800*a(n-2)` -/
def P12118259344301044148.Spec : Prop :=
  ∀ n, P12118259344301044148.a n = A386394 (n + 1)

theorem P12118259344301044148.correct : P12118259344301044148.Spec := by
  intro n
  simp only [A386394, Nat.add_sub_cancel]

end A386394

/-! ## A386394.P8684423485226992697

`(5^(2*(n+1))+3*2^(5*(n+1)-2))/7`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386394.P8684423485226992697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 ^ (2 * (n + 1)) : ℚ) + 3 * (2 : ℚ) ^ ((5 * (n + 1) : ℤ) - 2 : ℤ)) / 7

end

end A386394.P8684423485226992697

namespace A386394

/-- `(5^(2*(n+1))+3*2^(5*(n+1)-2))/7` -/
def P8684423485226992697.Spec : Prop :=
  ∀ n, P8684423485226992697.a n = (A386394 (n + 1) : ℚ)

theorem P8684423485226992697.correct : P8684423485226992697.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A386394, Nat.add_sub_cancel, A386394.P8684423485226992697.a, A386394.P12118259344301044148.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A386394, Nat.add_sub_cancel, A386394.P8684423485226992697.a, A386394.P12118259344301044148.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A386394

/-!
# A386397: a(n) = (3^(n+2) + 4^(2*n+1))/13.

The programs for A386397, the canonical program `A386397.P7953529038621499286` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386397 has offset 0).

The definition of A386397 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(3^(n+2)+4^(2*n+1))/13` (program `A386397.P1855263368743887285`, by `A386397.P1855263368743887285.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A386397.P17008147665794700352

`ogf((1-12x)/(1-19x+48x^2))`
-/

namespace A386397.P17008147665794700352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -12] [1, -19, 48] n

end

end A386397.P17008147665794700352

namespace A386397

/-- `ogf((1-12x)/(1-19x+48x^2))` -/
def P17008147665794700352.Spec : Prop :=
  ∀ n, P17008147665794700352.a n = A386397 n

end A386397

/-! ## A386397.P7953529038621499286

`19*a(n-1)-48*a(n-2)` with `a(0)=1, a(1)=7`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386397

/-- `19*a(n-1)-48*a(n-2)` -/
def P7953529038621499286.Spec : Prop :=
  ∀ n, P7953529038621499286.a n = A386397 n

theorem P7953529038621499286.correct : P7953529038621499286.Spec := by
  intro n
  simp only [A386397]

end A386397

/-! ## A386397.P1855263368743887285

`(3^(n+2)+4^(2*n+1))/13`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A386397.P1855263368743887285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ (n + 2) + 4 ^ (2 * n + 1) : ℚ) / 13

end

end A386397.P1855263368743887285

namespace A386397

/-- `(3^(n+2)+4^(2*n+1))/13` -/
def P1855263368743887285.Spec : Prop :=
  ∀ n, P1855263368743887285.a n = (A386397 n : ℚ)

theorem P1855263368743887285.correct : P1855263368743887285.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A386397, Nat.add_sub_cancel, A386397.P1855263368743887285.a, A386397.P7953529038621499286.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A386397, Nat.add_sub_cancel, A386397.P1855263368743887285.a, A386397.P7953529038621499286.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A386397

/-! ## A386397.P4737419664045525742

`4*4*a(n-1)-3^(n+1)` with `a(0)=1`
-/

namespace A386397.P4737419664045525742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * (4 * a (n - 1)) - (3 ^ (n + 1) : ℤ)

end

end A386397.P4737419664045525742

namespace A386397

/-- `4*4*a(n-1)-3^(n+1)` -/
def P4737419664045525742.Spec : Prop :=
  ∀ n, P4737419664045525742.a n = A386397 n

end A386397

/-! ## A386397.P15612076089025846445

`16*a(n-1)-A000244(n+1)` with `a(0)=1`
-/

namespace A386397.P15612076089025846445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  16 * a (n - 1) - A000244 (n + 1)

end

end A386397.P15612076089025846445

namespace A386397

/-- `16*a(n-1)-A000244(n+1)` -/
def P15612076089025846445.Spec : Prop :=
  ∀ n, P15612076089025846445.a n = A386397 n

end A386397

/-!
# A386398: a(n) = Sum_{k=0..n} 5^(n-k) * binomial(n,k) * binomial(n+1,k).

The programs for A386398, the canonical program `A386398.P4136958410678571819` is in `Seq.B000.C049`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A386398 has offset 0).

The definition of A386398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A386398.P4136958410678571819

`∑{#}[n, 5^(n-#)*C(n, #)*C(n+1, #)]`

The canonical program, it is in `Seq.B000.C049`.
-/

namespace A386398

/-- `∑{#}[n, 5^(n-#)*C(n, #)*C(n+1, #)]` -/
def P4136958410678571819.Spec : Prop :=
  ∀ n, P4136958410678571819.a n = (A386398 n : ℚ)

end A386398

/-!
# A386399: Number of forests with at most n unlabeled nodes.

The programs for A386399, there is no canonical definition to state claims against.
-/

/-! ## A386399.P4773861390872288769

`∑[A005195(n)]`
-/

namespace A386399.P4773861390872288769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386399.P4773861390872288769

/-! ## A386399.P13161800658335601294

`∑[∑[A144958(n)]]`
-/

namespace A386399.P13161800658335601294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144958 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386399.P13161800658335601294

/-! ## A386399.P9081737963933339930

`∑[A144215(A179865(n+1))]`
-/

namespace A386399.P9081737963933339930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144215 (A179865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386399.P9081737963933339930

/-! ## A386399.P167519787389476596

`∑[A144215(A000007(n)+∑[n])]`
-/

namespace A386399.P167519787389476596
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144215 (A000007 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386399.P167519787389476596

/-! ## A386399.P13087185329297270040

`∑[A331693(n*A061603(n))]`
-/

namespace A386399.P13087185329297270040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331693 ((n : ℤ) * A061603 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A386399.P13087185329297270040

