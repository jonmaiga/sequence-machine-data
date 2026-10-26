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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A363200: Number of connected animals formed from n 6-gon connected truncated octahedra, avoiding connected squares.

The programs for A363200, there is no canonical definition to state claims against.
-/

/-! ## A363200.P12070234268458626681

`A034973(A000774(n)+1)`
-/

namespace A363200.P12070234268458626681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034973 (A000774 n + 1).toNat

end

end A363200.P12070234268458626681

/-! ## A363200.P13654452659589809608

`A342750(A259803(n+1))`
-/

namespace A363200.P13654452659589809608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342750 (A259803 (n + 1)).toNat

end

end A363200.P13654452659589809608

/-! ## A363200.P16375584479134790102

`A236362(3*A391294(n))`
-/

namespace A363200.P16375584479134790102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236362 (3 * A391294 n).toNat

end

end A363200.P16375584479134790102

/-!
# A363202: Number of free linear polycubes of size n, identifying rotations and reflections.

The programs for A363202, there is no canonical definition to state claims against.
-/

/-! ## A363202.P4853683741290335978

`A009152(n)*A033999(n)-A083915(A000142(n))`
-/

namespace A363202.P4853683741290335978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009152 n * A033999 n - A083915 (A000142 n).toNat

end

end A363202.P4853683741290335978

/-! ## A363202.P3542226379278315317

`A093110(A027826(n))`
-/

namespace A363202.P3542226379278315317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093110 (A027826 n).toNat

end

end A363202.P3542226379278315317

/-! ## A363202.P7388759245223448788

`A093110(A171842(n))`
-/

namespace A363202.P7388759245223448788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093110 (A171842 n).toNat

end

end A363202.P7388759245223448788

/-!
# A363203: Number of free linear polycubes of size n, identifying rotations and reflections and avoiding neighbors at [0,0,+-2], [0,+-2,0], and [+-2,0,0].

The programs for A363203, there is no canonical definition to state claims against.
-/

/-! ## A363203.P10491946115618860368

`A074198(A286075(n))`
-/

namespace A363203.P10491946115618860368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074198 (A286075 n).toNat

end

end A363203.P10491946115618860368

/-! ## A363203.P13642895861228238383

`A124455(A239555(n))`
-/

namespace A363203.P13642895861228238383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124455 (A239555 n).toNat

end

end A363203.P13642895861228238383

/-! ## A363203.P16212315077296892289

`∏{e}[A000351(n), A032200(#)]`
-/

namespace A363203.P16212315077296892289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A032200 (Nat.factorization (f1 n).natAbs p)

end

end A363203.P16212315077296892289

/-! ## A363203.P12366195532887958176

`∏{e}[A108051(n+1), A032200(#)]`
-/

namespace A363203.P12366195532887958176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A032200 (Nat.factorization (f1 n).natAbs p)

end

end A363203.P12366195532887958176

/-! ## A363203.P6445146909857471475

`A032200(A326523(n)^n+n)`
-/

namespace A363203.P6445146909857471475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032200 (A326523 n ^ n + (n : ℤ)).toNat

end

end A363203.P6445146909857471475

/-!
# A363204: Number of free linear polycubes of size n, identifying rotations and reflections and avoiding the eight corner-connected neighbors.

The programs for A363204, there is no canonical definition to state claims against.
-/

/-! ## A363204.P16021006603180485733

`A003056(A145874(n+1)+1)`
-/

namespace A363204.P16021006603180485733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A145874 (n + 1) + 1).toNat

end

end A363204.P16021006603180485733

/-! ## A363204.P18020470064545512538

`A003056(A147681(n+1)+1)`
-/

namespace A363204.P18020470064545512538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A147681 (n + 1) + 1).toNat

end

end A363204.P18020470064545512538

/-! ## A363204.P14539630249814505706

`A056482(n+1)+A002024(A000142(n))`
-/

namespace A363204.P14539630249814505706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056482 (n + 1) + A002024 (A000142 n).toNat

end

end A363204.P14539630249814505706

/-! ## A363204.P15693717579579881102

`A002024(A087208(n))-A243348(n+1)`
-/

namespace A363204.P15693717579579881102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A087208 n).toNat - A243348 (n + 1)

end

end A363204.P15693717579579881102

/-!
# A363205: Number of polycubes with n cells, allowing face connections as well as corner connections, identifying mirror images.

The programs for A363205, there is no canonical definition to state claims against.
-/

/-! ## A363205.P7006002320747943636

`A165305(A022302(n))`
-/

namespace A363205.P7006002320747943636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165305 (A022302 n).toNat

end

end A363205.P7006002320747943636

/-!
# A363206: Number of polycubes with n cells, allowing edge connections as well as corner connections, identifying mirror images.

The programs for A363206, there is no canonical definition to state claims against.
-/

/-! ## A363206.P898562686130483067

`A115392(A326268(n))`
-/

namespace A363206.P898562686130483067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115392 (A326268 n).toNat

end

end A363206.P898562686130483067

/-!
# A363207: Number of polycubes avoiding corner connections.

The programs for A363207, there is no canonical definition to state claims against.
-/

/-! ## A363207.P2485941004027834799

`A337138(A052870(n))`
-/

namespace A363207.P2485941004027834799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337138 (A052870 n).toNat

end

end A363207.P2485941004027834799

/-! ## A363207.P10967735363715367268

`∑{d}[A295239(n), A268811(#)]`
-/

namespace A363207.P10967735363715367268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A268811 d

end

end A363207.P10967735363715367268

/-! ## A363207.P5441986672583385087

`round(sqrt(A006330(n)*A321911(n+1)))`
-/

namespace A363207.P5441986672583385087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A006330 n * A321911 (n + 1) : ℝ))

end

end A363207.P5441986672583385087

/-!
# A363208: Number of linear connected animals formed from n 6-gon connected truncated octahedra.

The programs for A363208, there is no canonical definition to state claims against.
-/

/-! ## A363208.P15510655912189470588

`A333301(ceil(exp(n-1)))`
-/

namespace A363208.P15510655912189470588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333301 ⌈Real.exp ((n : ℤ) - 1 : ℝ)⌉.toNat

end

end A363208.P15510655912189470588

/-! ## A363208.P13693560274381747639

`A353357(a(n-1))` with `a(0)=1, a(1)=1, a(2)=3, a(3)=7`
-/

namespace A363208.P13693560274381747639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3, 7] fun n a =>
  A353357 (a (n - 1)).toNat

end

end A363208.P13693560274381747639

/-!
# A363209: Number of linear connected animals formed from n rhombic dodecahedra.

The programs for A363209, there is no canonical definition to state claims against.
-/

/-! ## A363209.P16220010535901608612

`A241183(∑[A052171(n)])`
-/

namespace A363209.P16220010535901608612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241183 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A363209.P16220010535901608612

/-! ## A363209.P16606205093464675289

`A077767(A081018(n)+1)`
-/

namespace A363209.P16606205093464675289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077767 (A081018 n + 1).toNat

end

end A363209.P16606205093464675289

/-!
# A363210: Number of linear connected animals formed from n 4-gon or 6-gon connected truncated octahedra.

The programs for A363210, there is no canonical definition to state claims against.
-/

/-! ## A363210.P11507110700308133137

`A037918(A122455(n)+n)`
-/

namespace A363210.P11507110700308133137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037918 (A122455 n + (n : ℤ)).toNat

end

end A363210.P11507110700308133137

/-! ## A363210.P7453940739559924420

`A324294(A358952(n))+n`
-/

namespace A363210.P7453940739559924420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324294 (A358952 n).toNat + (n : ℤ)

end

end A363210.P7453940739559924420

/-!
# A363211: Number of partitions of n such that 3*(least part) <= greatest part.

The programs for A363211, there is no canonical definition to state claims against.
-/

/-! ## A363211.P4748843560836556432

`A393097(n+1)+A237825(n+1)`
-/

namespace A363211.P4748843560836556432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393097 (n + 1) + A237825 (n + 1)

end

end A363211.P4748843560836556432

/-! ## A363211.P8186441566804525950

`A000041(n+1)-A393972(n+1)`
-/

namespace A363211.P8186441566804525950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A393972 (n + 1)

end

end A363211.P8186441566804525950

/-! ## A363211.P2997179696132548153

`A393097(n+1)+A393973(n+1)-A393972(n+1)`
-/

namespace A363211.P2997179696132548153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393097 (n + 1) + (A393973 (n + 1) - A393972 (n + 1))

end

end A363211.P2997179696132548153

/-! ## A363211.P8741776234731312553

`A003056(A024794(3*n+1))-A024794(n+1)`
-/

namespace A363211.P8741776234731312553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A024794 (3 * n + 1)).toNat - A024794 (n + 1)

end

end A363211.P8741776234731312553

/-! ## A363211.P9099229997665361759

`∑[A157685(A027193(n+2))]`
-/

namespace A363211.P9099229997665361759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (A027193 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363211.P9099229997665361759

/-!
# A363212: Sums of distinct factorials that are of the form x^2 - 1.

The programs for A363212, there is no canonical definition to state claims against.
-/

/-! ## A363212.P9557268624031238212

`∩[n²-1, A059590(n)]`
-/

namespace A363212.P9557268624031238212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363212.P9557268624031238212

/-! ## A363212.P13164323851917454622

`∩[A059590(n), A005563(n)]`
-/

namespace A363212.P13164323851917454622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363212.P13164323851917454622

/-! ## A363212.P11819294688301865687

`∩[A059590(n), A000290(n)-1]`
-/

namespace A363212.P11819294688301865687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363212.P11819294688301865687

/-! ## A363212.P5801975230580564181

`∩[A059590(n), A008865(n+1)+1]`
-/

namespace A363212.P5801975230580564181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059590 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363212.P5801975230580564181

/-! ## A363212.P17117725869548352531

`∩[A059589(A047201(n+1))-1, A005563(n)]`
-/

namespace A363212.P17117725869548352531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059589 (A047201 (n + 1)).toNat - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363212.P17117725869548352531

/-!
# A363213: Number of partitions of n with rank 4 (the rank of a partition is the largest part minus the number of parts).

The programs for A363213, there is no canonical definition to state claims against.
-/

/-! ## A363213.P985783013456791229

`A108611(A101709(n+1)+2)`
-/

namespace A363213.P985783013456791229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A101709 (n + 1) + 2).toNat

end

end A363213.P985783013456791229

/-!
# A363215: Integers p > 1 such that 3^d == 1 (mod p) where d = A000265(p-1).

The programs for A363215, there is no canonical definition to state claims against.
-/

/-! ## A363215.P14295933827132709619

`A385220(n+1)-A185255(3*n)`
-/

namespace A363215.P14295933827132709619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385220 (n + 1) - A185255 (3 * n)

end

end A363215.P14295933827132709619

/-! ## A363215.P5071837385582404318

`A385220(n+1)-A284978(A111123(n))`
-/

namespace A363215.P5071837385582404318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385220 (n + 1) - A284978 (A111123 n).toNat

end

end A363215.P5071837385582404318

/-!
# A363216: Even powerful numbers that are not prime powers.

The programs for A363216, there is no canonical definition to state claims against.
-/

/-! ## A363216.P5593233607266630177

`∪[A390952(n+1), A391756(n+1)]`
-/

namespace A363216.P5593233607266630177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390952 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363216.P5593233607266630177

/-! ## A363216.P1639164936251169502

`∪[A390956(n+1), A395067(n+1)]`
-/

namespace A363216.P1639164936251169502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363216.P1639164936251169502

/-! ## A363216.P2844479883021066333

`∪[A391756(n+1), A395067(n+1)]`
-/

namespace A363216.P2844479883021066333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395067 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363216.P2844479883021066333

/-! ## A363216.P8885186220646108493

`∩[A286708(n+1), A390010(n+1)]`
-/

namespace A363216.P8885186220646108493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363216.P8885186220646108493

/-! ## A363216.P5604213613404655695

`∩[A370266(n+1), A390010(n+1)]`
-/

namespace A363216.P5604213613404655695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363216.P5604213613404655695

/-! ## A363216.P14906469596811575870

`∩[A347960(n+1), A390010(n+1)]`
-/

namespace A363216.P14906469596811575870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363216.P14906469596811575870

/-! ## A363216.P4287160951552040686

`∩[A036785(n+1), A390010(n+1)]`
-/

namespace A363216.P4287160951552040686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363216.P4287160951552040686

/-! ## A363216.P9361777761714520060

`∩[2*A375397(n+1), A001694(n+1)]`
-/

namespace A363216.P9361777761714520060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A375397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363216.P9361777761714520060

/-! ## A363216.P18409684609639050754

`∩[A361098(n+1), A390010(n+1)]`
-/

namespace A363216.P18409684609639050754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363216.P18409684609639050754

/-! ## A363216.P6742573901049632348

`∩[2*A360768(n+1), A001694(n+1)]`
-/

namespace A363216.P6742573901049632348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A360768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363216.P6742573901049632348

/-! ## A363216.P13031467359383215709

`filter[A390010(n+1), A355447(#)]`
-/

namespace A363216.P13031467359383215709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A363216.P13031467359383215709

/-! ## A363216.P16606793131697317712

`filter[A390010(n+1), A379958(#)]`
-/

namespace A363216.P16606793131697317712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379958 (f1 j).toNat = 1) n)

end

end A363216.P16606793131697317712

/-! ## A363216.P10183205593945502736

`∩[2*n, A286708(n+1)]`
-/

namespace A363216.P10183205593945502736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363216.P10183205593945502736

/-! ## A363216.P1446523244121750862

`∩[2*A284342(n+1), A001694(n+1)]`
-/

namespace A363216.P1446523244121750862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A284342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363216.P1446523244121750862

/-! ## A363216.P7217777468494510309

`∩[A375397(n+1), A390010(n+1)]`
-/

namespace A363216.P7217777468494510309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363216.P7217777468494510309

/-! ## A363216.P9221445804259678576

`∩[2*A363101(n+1), A001694(n+1)]`
-/

namespace A363216.P9221445804259678576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A363101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363216.P9221445804259678576

/-! ## A363216.P13073862807188641484

`filter[A286708(n+1), A121262(#)]`
-/

namespace A363216.P13073862807188641484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A363216.P13073862807188641484

/-! ## A363216.P9478666014026352808

`filter[A390010(n+1), A065202(#)]`
-/

namespace A363216.P9478666014026352808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A363216.P9478666014026352808

/-! ## A363216.P16933860444527776006

`filter[A390010(n+1), A202238(#)]`
-/

namespace A363216.P16933860444527776006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A363216.P16933860444527776006

/-! ## A363216.P10913416364532179184

`filter[A286708(n+1), A354097(#)]`
-/

namespace A363216.P10913416364532179184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354097 (f1 j).toNat = 1) n)

end

end A363216.P10913416364532179184

/-!
# A363217: Odd powerful numbers that are not powers of primes.

The programs for A363217, there is no canonical definition to state claims against.
-/

/-! ## A363217.P16850984188856483502

`∪[A216419(n+1), A390953(n+1)]`
-/

namespace A363217.P16850984188856483502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363217.P16850984188856483502

/-! ## A363217.P7933006828715599711

`∪[A216419(n+1), A395674(n+1)]`
-/

namespace A363217.P7933006828715599711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216419 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363217.P7933006828715599711

/-! ## A363217.P14198151265032583126

`∪[A390955(n+1), A395674(n+1)]`
-/

namespace A363217.P14198151265032583126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363217.P14198151265032583126

/-! ## A363217.P18160190750646308129

`∩[A062739(n+1), A369417(n+1)]`
-/

namespace A363217.P18160190750646308129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363217.P18160190750646308129

/-! ## A363217.P9824644855823091322

`∩[A062739(n+1), A369636(n+1)]`
-/

namespace A363217.P9824644855823091322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363217.P9824644855823091322

/-! ## A363217.P10931592857905529316

`∩[A062739(n+1), A286708(n+1)]`
-/

namespace A363217.P10931592857905529316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363217.P10931592857905529316

/-! ## A363217.P12332476760591771086

`∩[A062739(n+1), A370266(n+1)]`
-/

namespace A363217.P12332476760591771086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370266 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363217.P12332476760591771086

/-! ## A363217.P2579371286500331591

`∩[A001694(n+1), A361487(n+1)]`
-/

namespace A363217.P2579371286500331591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363217.P2579371286500331591

/-! ## A363217.P7754134988860312220

`∩[A062739(n+1), A361487(n+1)]`
-/

namespace A363217.P7754134988860312220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363217.P7754134988860312220

/-! ## A363217.P12474308880926109142

`∩[A286708(n+1), A361487(n+1)]`
-/

namespace A363217.P12474308880926109142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363217.P12474308880926109142

/-! ## A363217.P14214874501683395747

`∩[A335851(n+1), A361487(n+1)]`
-/

namespace A363217.P14214874501683395747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363217.P14214874501683395747

/-! ## A363217.P17619799577768288722

`∩[A361487(n+1), A369417(n+1)]`
-/

namespace A363217.P17619799577768288722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363217.P17619799577768288722

/-! ## A363217.P7125171420399076870

`∩[A361487(n+1), A369636(n+1)]`
-/

namespace A363217.P7125171420399076870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363217.P7125171420399076870

/-! ## A363217.P6044999554236156971

`∩[A036785(n+1), A062739(n+1)]`
-/

namespace A363217.P6044999554236156971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363217.P6044999554236156971

/-! ## A363217.P5900556569897947260

`∩[A275196(n+1), A286708(n+1)]`
-/

namespace A363217.P5900556569897947260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363217.P5900556569897947260

/-! ## A363217.P9261376976545835521

`∩[A275196(n+1), A369417(n+1)]`
-/

namespace A363217.P9261376976545835521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369417 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363217.P9261376976545835521

/-! ## A363217.P8646680365490325092

`∩[A275196(n+1), A369636(n+1)]`
-/

namespace A363217.P8646680365490325092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363217.P8646680365490325092

/-! ## A363217.P4927606314541938441

`∩[A062739(n+1), A361098(n+1)]`
-/

namespace A363217.P4927606314541938441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363217.P4927606314541938441

/-! ## A363217.P14258097864915956298

`∩[A001694(n+1), A360769(n+1)]`
-/

namespace A363217.P14258097864915956298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363217.P14258097864915956298

/-! ## A363217.P4412293751727277106

`∩[A062739(n+1), A360769(n+1)]`
-/

namespace A363217.P4412293751727277106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062739 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360769 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363217.P4412293751727277106

/-!
# A363219: Twice the median of the conjugate of the integer partition with Heinz number n.

The programs for A363219, there is no canonical definition to state claims against.
-/

/-! ## A363219.P7880687414075411316

`A051903(n+1)+A051903(A143115(n+1))`
-/

namespace A363219.P7880687414075411316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1) + A051903 (A143115 (n + 1)).toNat

end

end A363219.P7880687414075411316

/-! ## A363219.P9575136522687447885

`A371733(A161951(n+1)²)`
-/

namespace A363219.P9575136522687447885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371733 (A161951 (n + 1) ^ 2).toNat

end

end A363219.P9575136522687447885

/-! ## A363219.P4124886889700351826

`A051903((n+1)^A360964(n+1))`
-/

namespace A363219.P4124886889700351826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A360964 (n + 1) : ℤ))).toNat

end

end A363219.P4124886889700351826

/-! ## A363219.P1126801745899566176

`A157754((n+1)²*A328878(n+1))`
-/

namespace A363219.P1126801745899566176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157754 (((n + 1) ^ 2 : ℤ) * A328878 (n + 1)).toNat

end

end A363219.P1126801745899566176

/-!
# A363221: Number of strict integer partitions of n such that (length) * (maximum) <= 2n.

The programs for A363221, there is no canonical definition to state claims against.
-/

/-! ## A363221.P3395433427544373464

`A137793(n+1)-A121262(A186769(n))`
-/

namespace A363221.P3395433427544373464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137793 (n + 1) - A121262 (A186769 n).toNat

end

end A363221.P3395433427544373464

/-! ## A363221.P5115065265421077168

`A137793(n+1)-A121262(A324840(n+5))`
-/

namespace A363221.P5115065265421077168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137793 (n + 1) - A121262 (A324840 (n + 5)).toNat

end

end A363221.P5115065265421077168

/-! ## A363221.P6764870891927725363

`A147706(n+1)-A064911(A001333(n))`
-/

namespace A363221.P6764870891927725363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147706 (n + 1) - A064911 (A001333 n).toNat

end

end A363221.P6764870891927725363

/-! ## A363221.P16350245991124020048

`A137793(n+1)-A294927(A195232(n+1))`
-/

namespace A363221.P16350245991124020048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137793 (n + 1) - A294927 (A195232 (n + 1)).toNat

end

end A363221.P16350245991124020048

/-! ## A363221.P12249090527539090565

`A067659(n+4)-A178798(A001399(2*n))`
-/

namespace A363221.P12249090527539090565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067659 (n + 4) - A178798 (A001399 (2 * n)).toNat

end

end A363221.P12249090527539090565

/-!
# A363224: Number of integer compositions of n in which the least part appears more than once.

The programs for A363224, there is no canonical definition to state claims against.
-/

/-! ## A363224.P14410571858773614825

`2^n-A105039(n+1)`
-/

namespace A363224.P14410571858773614825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A105039 (n + 1)

end

end A363224.P14410571858773614825

/-! ## A363224.P2550563340981430930

`abs(A105039(n+1)-A000079(n))`
-/

namespace A363224.P2550563340981430930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105039 (n + 1) - A000079 n|

end

end A363224.P2550563340981430930

/-! ## A363224.P11770429892964257968

`A000225(n)+1-A105039(n+1)`
-/

namespace A363224.P11770429892964257968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A105039 (n + 1))

end

end A363224.P11770429892964257968

/-! ## A363224.P5338385024822095945

`∑[A323111(n+1)]-A001787(n)`
-/

namespace A363224.P5338385024822095945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001787 n

end

end A363224.P5338385024822095945

/-! ## A363224.P6010127307932688619

`A000079(n)-A238342(∑[n+1]+1)`
-/

namespace A363224.P6010127307932688619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A238342 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A363224.P6010127307932688619

/-!
# A363225: Number of integer partitions of n containing three parts (a,b,c) (repeats allowed) such that a + b = c. A variation of sum-full partitions.

The programs for A363225, there is no canonical definition to state claims against.
-/

/-! ## A363225.P10583342628905686407

`A000041(n)-A364345(n)`
-/

namespace A363225.P10583342628905686407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A364345 n

end

end A363225.P10583342628905686407

/-! ## A363225.P16030130480343900750

`A213598(n)-A364345(n)`
-/

namespace A363225.P16030130480343900750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A364345 n

end

end A363225.P16030130480343900750

/-! ## A363225.P15725014908167469313

`sqrt(A001255(n))-A364345(n)`
-/

namespace A363225.P15725014908167469313
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A364345 n : ℝ)

end

end A363225.P15725014908167469313

/-! ## A363225.P15948877944832255660

`∑[A002865(n)]-A364345(n)`
-/

namespace A363225.P15948877944832255660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A364345 n

end

end A363225.P15948877944832255660

/-! ## A363225.P17608901414065366285

`A000065(n)+1-A364345(n)`
-/

namespace A363225.P17608901414065366285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A364345 n)

end

end A363225.P17608901414065366285

/-!
# A363226: Number of strict integer partitions of n containing some three possibly equal parts (a,b,c) such that a + b = c. A variation of sum-full strict partitions.

The programs for A363226, there is no canonical definition to state claims against.
-/

/-! ## A363226.P3109238603352636638

`A000009(n)-A364346(n)`
-/

namespace A363226.P3109238603352636638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A364346 n

end

end A363226.P3109238603352636638

/-! ## A363226.P9490130074722537268

`abs(A081360(n))-A364346(n)`
-/

namespace A363226.P9490130074722537268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081360 n| - A364346 n

end

end A363226.P9490130074722537268

/-! ## A363226.P10800007691257128842

`A172033(2*n)-A364346(n)`
-/

namespace A363226.P10800007691257128842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n) - A364346 n

end

end A363226.P10800007691257128842

/-! ## A363226.P6492098494622576280

`A364916(A000217(n))-A364346(n)`
-/

namespace A363226.P6492098494622576280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (A000217 n).toNat - A364346 n

end

end A363226.P6492098494622576280

/-! ## A363226.P16130919879067764654

`A282892(n)+A035363(n)-A364346(n)`
-/

namespace A363226.P16130919879067764654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282892 n + A035363 n - A364346 n

end

end A363226.P16130919879067764654

/-! ## A363226.P5203043509775434514

`A367214(n)+A367215(n)-A364346(n)`
-/

namespace A363226.P5203043509775434514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367214 n + (A367215 n - A364346 n)

end

end A363226.P5203043509775434514

/-!
# A363227: Positive integers m such that every k with 1 <= k <= m is a linear combination of distinct divisors of m with coefficients +1 or -1.

The programs for A363227, there is no canonical definition to state claims against.
-/

/-! ## A363227.P2286509054615431735

`lt[A122111(n+1), A348439(A046523(n+1)+1)]+1`
-/

namespace A363227.P2286509054615431735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348439 (A046523 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A363227.P2286509054615431735

/-! ## A363227.P9476569582101821009

`lt[A077105(n+4), A022844(A074206(n))]`
-/

namespace A363227.P9476569582101821009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077105 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363227.P9476569582101821009

/-! ## A363227.P16377416185916555206

`lt[A095274(n), A332462(n+1)]+1`
-/

namespace A363227.P16377416185916555206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095274 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332462 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A363227.P16377416185916555206

/-! ## A363227.P13844297357015889235

`lt[A345913(n+1), A048673(n+1)]+1`
-/

namespace A363227.P13844297357015889235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345913 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A363227.P13844297357015889235

/-! ## A363227.P1609764587088977617

`lt[A353866(n+1), A272194(A104725(n))]`
-/

namespace A363227.P1609764587088977617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353866 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272194 (A104725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363227.P1609764587088977617

/-!
# A363228: Exponent of 4 in 9^n - 1.

The programs for A363228, the canonical program `A363228.P8730947747563985722` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363228 has offset 1).

The definition of A363228 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363228.P10961892937014092035

`val(2*(n+1), 4)+1`
-/

namespace A363228.P10961892937014092035
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (2 * (n + 1)) 4 + 1

end

end A363228.P10961892937014092035

namespace A363228

/-- `val(2*(n+1), 4)+1` -/
def P10961892937014092035.Spec : Prop :=
  ∀ n, (P10961892937014092035.a n : ℤ) = A363228 (n + 1)

end A363228

/-! ## A363228.P1100671576959154508

`A244415(n+1)+1`
-/

namespace A363228.P1100671576959154508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244415 (n + 1) + 1

end

end A363228.P1100671576959154508

namespace A363228

/-- `A244415(n+1)+1` -/
def P1100671576959154508.Spec : Prop :=
  ∀ n, P1100671576959154508.a n = A363228 (n + 1)

end A363228

/-! ## A363228.P8730947747563985722

`floor(A090739(n+1)/2)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A363228

/-- `floor(A090739(n+1)/2)` -/
def P8730947747563985722.Spec : Prop :=
  ∀ n, P8730947747563985722.a n = A363228 (n + 1)

theorem P8730947747563985722.correct : P8730947747563985722.Spec := by
  intro n
  simp only [A363228, Nat.add_sub_cancel]

end A363228

/-! ## A363228.P1037606544220083979

`val(8*(n+1), 4)`
-/

namespace A363228.P1037606544220083979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (8 * (n + 1)) 4

end

end A363228.P1037606544220083979

namespace A363228

/-- `val(8*(n+1), 4)` -/
def P1037606544220083979.Spec : Prop :=
  ∀ n, (P1037606544220083979.a n : ℤ) = A363228 (n + 1)

end A363228

/-! ## A363228.P10455007990135586916

`ceil(val(n+1, 2)/2)+1`
-/

namespace A363228.P10455007990135586916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.valuation (n + 1) 2 : ℚ) / 2⌉ + 1

end

end A363228.P10455007990135586916

namespace A363228

/-- `ceil(val(n+1, 2)/2)+1` -/
def P10455007990135586916.Spec : Prop :=
  ∀ n, P10455007990135586916.a n = A363228 (n + 1)

end A363228

/-! ## A363228.P14739576398704183537

`round(val(n+1, 2)/2)+1`
-/

namespace A363228.P14739576398704183537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.valuation (n + 1) 2 : ℚ) / 2) + 1

end

end A363228.P14739576398704183537

namespace A363228

/-- `round(val(n+1, 2)/2)+1` -/
def P14739576398704183537.Spec : Prop :=
  ∀ n, P14739576398704183537.a n = A363228 (n + 1)

end A363228

/-! ## A363228.P17888809278146040545

`floor((val(n+1, 2)+3)/2)`
-/

namespace A363228.P17888809278146040545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.valuation (n + 1) 2 + 3 : ℚ) / 2⌋

end

end A363228.P17888809278146040545

namespace A363228

/-- `floor((val(n+1, 2)+3)/2)` -/
def P17888809278146040545.Spec : Prop :=
  ∀ n, P17888809278146040545.a n = A363228 (n + 1)

end A363228

/-! ## A363228.P4578949525885767609

`A080513(val(n+1, 2))`
-/

namespace A363228.P4578949525885767609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (SequenceMachineLib.valuation (n + 1) 2)

end

end A363228.P4578949525885767609

namespace A363228

/-- `A080513(val(n+1, 2))` -/
def P4578949525885767609.Spec : Prop :=
  ∀ n, P4578949525885767609.a n = A363228 (n + 1)

end A363228

/-! ## A363228.P4280545831521343548

`A109728(val(n+1, 2))`
-/

namespace A363228.P4280545831521343548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109728 (SequenceMachineLib.valuation (n + 1) 2)

end

end A363228.P4280545831521343548

namespace A363228

/-- `A109728(val(n+1, 2))` -/
def P4280545831521343548.Spec : Prop :=
  ∀ n, P4280545831521343548.a n = A363228 (n + 1)

end A363228

/-! ## A363228.P3595729357103606312

`floor(log2(A059161(n))/2)`
-/

namespace A363228.P3595729357103606312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.logb 2 (A059161 n : ℝ) / 2⌋

end

end A363228.P3595729357103606312

namespace A363228

/-- `floor(log2(A059161(n))/2)` -/
def P3595729357103606312.Spec : Prop :=
  ∀ n, P3595729357103606312.a n = A363228 (n + 1)

end A363228

/-! ## A363228.P12067131248181946586

`ceil(A089080(n+2)/2)`
-/

namespace A363228.P12067131248181946586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A089080 (n + 2) : ℚ) / 2⌉

end

end A363228.P12067131248181946586

namespace A363228

/-- `ceil(A089080(n+2)/2)` -/
def P12067131248181946586.Spec : Prop :=
  ∀ n, P12067131248181946586.a n = A363228 (n + 1)

end A363228

/-! ## A363228.P16356992957539173545

`A235127(2*(n+1))+1`
-/

namespace A363228.P16356992957539173545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (2 * (n + 1)) + 1

end

end A363228.P16356992957539173545

namespace A363228

/-- `A235127(2*(n+1))+1` -/
def P16356992957539173545.Spec : Prop :=
  ∀ n, P16356992957539173545.a n = A363228 (n + 1)

end A363228

/-! ## A363228.P15967769345812615804

`ceil(log2(A100892(n+1))/2)`
-/

namespace A363228.P15967769345812615804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A100892 (n + 1) : ℝ) / 2⌉

end

end A363228.P15967769345812615804

namespace A363228

/-- `ceil(log2(A100892(n+1))/2)` -/
def P15967769345812615804.Spec : Prop :=
  ∀ n, P15967769345812615804.a n = A363228 (n + 1)

end A363228

/-! ## A363228.P18170516802501791322

`A008617(A059141(n))`
-/

namespace A363228.P18170516802501791322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (A059141 n).toNat

end

end A363228.P18170516802501791322

namespace A363228

/-- `A008617(A059141(n))` -/
def P18170516802501791322.Spec : Prop :=
  ∀ n, P18170516802501791322.a n = A363228 (n + 1)

end A363228

/-! ## A363228.P6040394357333614308

`A008618(A059144(n))`
-/

namespace A363228.P6040394357333614308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A059144 n).toNat

end

end A363228.P6040394357333614308

namespace A363228

/-- `A008618(A059144(n))` -/
def P6040394357333614308.Spec : Prop :=
  ∀ n, P6040394357333614308.a n = A363228 (n + 1)

end A363228

/-! ## A363228.P12678669822089774827

`A008619(A001511(n+1))`
-/

namespace A363228.P12678669822089774827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A001511 (n + 1)).toNat

end

end A363228.P12678669822089774827

namespace A363228

/-- `A008619(A001511(n+1))` -/
def P12678669822089774827.Spec : Prop :=
  ∀ n, P12678669822089774827.a n = A363228 (n + 1)

end A363228

/-! ## A363228.P7745400885953418320

`A054705(A006519(n+1))`
-/

namespace A363228.P7745400885953418320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054705 (A006519 (n + 1)).toNat

end

end A363228.P7745400885953418320

namespace A363228

/-- `A054705(A006519(n+1))` -/
def P7745400885953418320.Spec : Prop :=
  ∀ n, P7745400885953418320.a n = A363228 (n + 1)

end A363228

/-! ## A363228.P4542057548292829917

`A080513(A007814(n+1))`
-/

namespace A363228.P4542057548292829917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A007814 (n + 1)).toNat

end

end A363228.P4542057548292829917

namespace A363228

/-- `A080513(A007814(n+1))` -/
def P4542057548292829917.Spec : Prop :=
  ∀ n, P4542057548292829917.a n = A363228 (n + 1)

end A363228

/-! ## A363228.P1182845104482035407

`A115362(n)+A096268(n)`
-/

namespace A363228.P1182845104482035407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 n + A096268 n

end

end A363228.P1182845104482035407

namespace A363228

/-- `A115362(n)+A096268(n)` -/
def P1182845104482035407.Spec : Prop :=
  ∀ n, P1182845104482035407.a n = A363228 (n + 1)

end A363228

/-! ## A363228.P14653168523060598371

`A085058(n)-A115362(n)`
-/

namespace A363228.P14653168523060598371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085058 n - A115362 n

end

end A363228.P14653168523060598371

namespace A363228

/-- `A085058(n)-A115362(n)` -/
def P14653168523060598371.Spec : Prop :=
  ∀ n, P14653168523060598371.a n = A363228 (n + 1)

end A363228

/-!
# A363230: Number of partitions of n with rank 3 or higher (the rank of a partition is the largest part minus the number of parts).

The programs for A363230, there is no canonical definition to state claims against.
-/

/-! ## A363230.P7861884363679264315

`A123975(n+1)-A101199(n+1)`
-/

namespace A363230.P7861884363679264315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123975 (n + 1) - A101199 (n + 1)

end

end A363230.P7861884363679264315

/-! ## A363230.P326362650705889705

`A064173(n+1)-Δ[A064174(n+1)]`
-/

namespace A363230.P326362650705889705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (n + 1) - (f1 (n + 1) - f1 n)

end

end A363230.P326362650705889705

/-! ## A363230.P6909820411374967352

`A064173(n+1)+A064174(n+1)-A064174(n+2)`
-/

namespace A363230.P6909820411374967352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (n + 1) + (A064174 (n + 1) - A064174 (n + 2))

end

end A363230.P6909820411374967352

/-! ## A363230.P15059394699979113318

`A000041(n+1)-A064174(n+2)`
-/

namespace A363230.P15059394699979113318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A064174 (n + 2)

end

end A363230.P15059394699979113318

/-! ## A363230.P2206135325427759963

`A003106(n+1)+A039900(n+1)-A064174(n+2)`
-/

namespace A363230.P2206135325427759963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (n + 1) + (A039900 (n + 1) - A064174 (n + 2))

end

end A363230.P2206135325427759963

/-! ## A363230.P10178872444911803174

`A000041(n+1)-(A064173(n+2)+A047993(n+2))`
-/

namespace A363230.P10178872444911803174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A064173 (n + 2) + A047993 (n + 2))

end

end A363230.P10178872444911803174

/-! ## A363230.P12046562426831172854

`A064173(n+2)-Δ[A000041(n+1)]`
-/

namespace A363230.P12046562426831172854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (n + 2) - (f1 (n + 1) - f1 n)

end

end A363230.P12046562426831172854

/-! ## A363230.P15429462999004674804

`A363231(n+1)+A101200(n+1)`
-/

namespace A363230.P15429462999004674804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363231 (n + 1) + A101200 (n + 1)

end

end A363230.P15429462999004674804

/-! ## A363230.P8089042019334574959

`A006141(n+1)+A240057(n+1)-A064174(n+2)`
-/

namespace A363230.P8089042019334574959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006141 (n + 1) + (A240057 (n + 1) - A064174 (n + 2))

end

end A363230.P8089042019334574959

/-!
# A363231: Number of partitions of n with rank 4 or higher (the rank of a partition is the largest part minus the number of parts).

The programs for A363231, there is no canonical definition to state claims against.
-/

/-! ## A363231.P8277671233793118476

`A000041(n+1)-A064173(n+3)`
-/

namespace A363231.P8277671233793118476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - A064173 (n + 3)

end

end A363231.P8277671233793118476

/-! ## A363231.P4216000584976206798

`Δ[A000070(n)]-A064173(n+3)`
-/

namespace A363231.P4216000584976206798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A064173 (n + 3)

end

end A363231.P4216000584976206798

/-! ## A363231.P12909684543332078658

`record[A035363(n)]-A064173(n+3)`
-/

namespace A363231.P12909684543332078658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A064173 (n + 3)

end

end A363231.P12909684543332078658

/-! ## A363231.P1746963935993053674

`A363230(n+1)-A101200(n+1)`
-/

namespace A363231.P1746963935993053674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363230 (n + 1) - A101200 (n + 1)

end

end A363231.P1746963935993053674

/-! ## A363231.P7291640505220536505

`A000041(n+1)-(A101200(n+1)+A064174(n+2))`
-/

namespace A363231.P7291640505220536505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) - (A101200 (n + 1) + A064174 (n + 2))

end

end A363231.P7291640505220536505

/-!
# A363234: Least number divisible by the first n primes whose factorization into maximal prime powers, if ordered by increasing prime divisor, then has these prime power factors in decreasing order.

The programs for A363234, there is no canonical definition to state claims against.
-/

/-! ## A363234.P17567603703078216648

`A181814(A181858(n)+A087086(n))`
-/

namespace A363234.P17567603703078216648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181814 (A181858 n + A087086 n).toNat

end

end A363234.P17567603703078216648

/-! ## A363234.P17864532988842568972

`A181814(eq[0, A365730(n)])`
-/

namespace A363234.P17864532988842568972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181814 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A363234.P17864532988842568972

/-!
# A363235: a(0) = 1; let e be the largest multiplicity such that p^e | a(n); for n>0, a(n) = Sum_{j=1..k} 2^(e(j)-1) where k is the index of the greatest power factor p(k)^e(k) such that p(k-1)^e(k-1) > p(k)^(e(k)+1).

The programs for A363235, there is no canonical definition to state claims against.
-/

/-! ## A363235.P4910834006207602248

`lt[A157684(n+4), A034472(A065120(n))]`
-/

namespace A363235.P4910834006207602248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157684 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 (A065120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363235.P4910834006207602248

/-! ## A363235.P8935029708149972713

`lt[A267508(n+1), A087130(A065120(n))]`
-/

namespace A363235.P8935029708149972713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267508 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087130 (A065120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363235.P8935029708149972713

/-! ## A363235.P16598576356520227730

`lt[A276783(n), A005915(A065120(n))]`
-/

namespace A363235.P16598576356520227730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005915 (A065120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363235.P16598576356520227730

/-! ## A363235.P10609504089965842661

`lt[A122293(n), A371362(A065120(n))]`
-/

namespace A363235.P10609504089965842661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122293 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371362 (A065120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363235.P10609504089965842661

/-! ## A363235.P15730010033715871173

`lt[A014409(n+1), A081436(A153141(n))]`
-/

namespace A363235.P15730010033715871173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014409 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081436 (A153141 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363235.P15730010033715871173

/-!
# A363236: Number of permutations p of [n] such that each element in p has at least one neighbor with opposite parity.

The programs for A363236, there is no canonical definition to state claims against.
-/

/-! ## A363236.P2194463122176888421

`A376542(A033547(n)%A234800(n))`
-/

namespace A363236.P2194463122176888421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376542 (Int.tmod (A033547 n) (A234800 n)).toNat

end

end A363236.P2194463122176888421

/-! ## A363236.P13993631453186737659

`A085731(A090390(n))-A006257(2*n)`
-/

namespace A363236.P13993631453186737659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085731 (A090390 n).toNat - A006257 (2 * n)

end

end A363236.P13993631453186737659

/-!
# A363239: Number of partitions of n with rank a multiple of 7.

The programs for A363239, there is no canonical definition to state claims against.
-/

/-! ## A363239.P2326525220833247364

`A194511(A052810(n+1)+1)`
-/

namespace A363239.P2326525220833247364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194511 (A052810 (n + 1) + 1).toNat

end

end A363239.P2326525220833247364

/-! ## A363239.P6802973715690103327

`A194511(A000041(n+1)+2)`
-/

namespace A363239.P6802973715690103327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194511 (A000041 (n + 1) + 2).toNat

end

end A363239.P6802973715690103327

/-!
# A363242: Numbers whose primorial-base representation contains only odd digits.

The programs for A363242, there is no canonical definition to state claims against.
-/

/-! ## A363242.P7829810014645032272

`eq[1, A000035(A355037(n))]`
-/

namespace A363242.P7829810014645032272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A355037 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363242.P7829810014645032272

/-! ## A363242.P6958037458313227667

`eq[A010215(n), A062157(A355037(n))]`
-/

namespace A363242.P6958037458313227667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010215 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A355037 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A363242.P6958037458313227667

/-! ## A363242.P11818467287290716985

`lt[A010215(A355037(n)), A001148(n)]`
-/

namespace A363242.P11818467287290716985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010215 (A355037 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001148 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363242.P11818467287290716985

/-! ## A363242.P4389824745201515238

`lt[A000007(n), A062157(A355037(n))]`
-/

namespace A363242.P4389824745201515238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A355037 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363242.P4389824745201515238

/-! ## A363242.P10215391605308263683

`lt[A059841(n), A062157(A355037(n))]`
-/

namespace A363242.P10215391605308263683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A355037 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363242.P10215391605308263683

/-! ## A363242.P13719361358954893497

`lt[A355037(n+1), A062157(A355037(n))]`
-/

namespace A363242.P13719361358954893497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A355037 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363242.P13719361358954893497

/-! ## A363242.P1870519840782247583

`eq[A010215(n+4), A010215(A355037(n))]`
-/

namespace A363242.P1870519840782247583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010215 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010215 (A355037 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A363242.P1870519840782247583

/-! ## A363242.P14408824345145580405

`lt[A355037(n+3), A000035(A355037(n))]`
-/

namespace A363242.P14408824345145580405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355037 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A355037 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363242.P14408824345145580405

/-!
# A363244: Numbers that in primorial-base representation have digits with an alternating parity.

The programs for A363244, there is no canonical definition to state claims against.
-/

/-! ## A363244.P15798232982161397061

`∑[A055091(A010049(n)²)]`
-/

namespace A363244.P15798232982161397061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (A010049 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363244.P15798232982161397061

/-!
# A363246: Base-10 palindromes whose arithmetic derivative is also a base-10 palindrome.

The programs for A363246, there is no canonical definition to state claims against.
-/

/-! ## A363246.P17822125485746940858

`∪[A002385(n+1), A363248(n+1)]`
-/

namespace A363246.P17822125485746940858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002385 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363246.P17822125485746940858

/-! ## A363246.P13877165222572277628

`∪[A069217(n+1), A363248(n+1)]`
-/

namespace A363246.P13877165222572277628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363246.P13877165222572277628

/-! ## A363246.P16398033954077055715

`eq[A064834(A003415(n)), A256756(n)]`
-/

namespace A363246.P16398033954077055715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256756 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A363246.P16398033954077055715

/-! ## A363246.P9125283293502913475

`eq[A056965(A003415(n)), A338827(n)]`
-/

namespace A363246.P9125283293502913475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338827 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A363246.P9125283293502913475

/-! ## A363246.P1024057770408707517

`eq[A304105(n+1), A324343(n)]`
-/

namespace A363246.P1024057770408707517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324343 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A363246.P1024057770408707517

/-!
# A363248: Nonprime base-10 palindromes whose arithmetic derivative is a base-10 palindrome.

The programs for A363248, there is no canonical definition to state claims against.
-/

/-! ## A363248.P6432463251602129501

`∩[A141468(n+1), A363246(n+1)]`
-/

namespace A363248.P6432463251602129501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363246 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363248.P6432463251602129501

/-! ## A363248.P15548548983203567855

`A119268(a(n-1))+1` with `a(0)=0, a(1)=1, a(2)=4, a(3)=6, a(4)=9`
-/

namespace A363248.P15548548983203567855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 6, 9] fun n a =>
  A119268 (a (n - 1)).toNat + 1

end

end A363248.P15548548983203567855

/-!
# A363249: Leading digit of 9^n.

The programs for A363249, the canonical program `A363249.P17797656397001054454` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363249 has offset 0).

The definition of A363249 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060956, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363249.P17797656397001054454

`A060956(2*n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A363249

/-- `A060956(2*n)` -/
def P17797656397001054454.Spec : Prop :=
  ∀ n, P17797656397001054454.a n = A363249 n

theorem P17797656397001054454.correct : P17797656397001054454.Spec := by
  intro n
  simp only [A363249]

end A363249

/-! ## A363249.P7175920386645454155

`dr(A060956(A005843(n)))`
-/

namespace A363249.P7175920386645454155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A060956 (A005843 n).toNat)

end

end A363249.P7175920386645454155

namespace A363249

/-- `dr(A060956(A005843(n)))` -/
def P7175920386645454155.Spec : Prop :=
  ∀ n, (P7175920386645454155.a n : ℤ) = A363249 n

end A363249

/-! ## A363249.P4514590969949906129

`A060956(A005843(n))^A001222(A000040(n+1))`
-/

namespace A363249.P4514590969949906129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060956 (A005843 n).toNat : ℚ) ^ (A001222 (A000040 (n + 1)).toNat : ℤ)

end

end A363249.P4514590969949906129

namespace A363249

/-- `A060956(A005843(n))^A001222(A000040(n+1))` -/
def P4514590969949906129.Spec : Prop :=
  ∀ n, P4514590969949906129.a n = (A363249 n : ℚ)

end A363249

/-! ## A363249.P11196947197859755591

`A060956(A005843(n))^A001222(A007510(n+1))`
-/

namespace A363249.P11196947197859755591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060956 (A005843 n).toNat : ℚ) ^ (A001222 (A007510 (n + 1)).toNat : ℤ)

end

end A363249.P11196947197859755591

namespace A363249

/-- `A060956(A005843(n))^A001222(A007510(n+1))` -/
def P11196947197859755591.Spec : Prop :=
  ∀ n, P11196947197859755591.a n = (A363249 n : ℚ)

end A363249

/-! ## A363249.P6686633634968432923

`A060956(A005843(n))^A001222(A090709(n+1))`
-/

namespace A363249.P6686633634968432923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060956 (A005843 n).toNat : ℚ) ^ (A001222 (A090709 (n + 1)).toNat : ℤ)

end

end A363249.P6686633634968432923

namespace A363249

/-- `A060956(A005843(n))^A001222(A090709(n+1))` -/
def P6686633634968432923.Spec : Prop :=
  ∀ n, P6686633634968432923.a n = (A363249 n : ℚ)

end A363249

/-! ## A363249.P6538394782416022436

`A071587(n)%10`
-/

namespace A363249.P6538394782416022436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071587 n) 10

end

end A363249.P6538394782416022436

namespace A363249

/-- `A071587(n)%10` -/
def P6538394782416022436.Spec : Prop :=
  ∀ n, P6538394782416022436.a n = A363249 n

end A363249

/-!
# A363250: Numbers in A363063 arranged in lexicographic order according to ordered prime signature (i.e., multiplicities of prime power factors p^k, written in order of p).

The programs for A363250, there is no canonical definition to state claims against.
-/

/-! ## A363250.P17869544270173644964

`A362227(A363235(n))`
-/

namespace A363250.P17869544270173644964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362227 (A363235 n).toNat

end

end A363250.P17869544270173644964

/-! ## A363250.P16649287869850981330

`A335109(A306588(n+1)+A000217(n))`
-/

namespace A363250.P16649287869850981330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335109 (A306588 (n + 1) + A000217 n).toNat

end

end A363250.P16649287869850981330

/-! ## A363250.P4362599620336376924

`A003958(A000079(n)*A107364(n+1))`
-/

namespace A363250.P4362599620336376924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (A000079 n * A107364 (n + 1)).toNat

end

end A363250.P4362599620336376924

/-! ## A363250.P927585769727081800

`A001227(A055786(n))*A265392(n+1)`
-/

namespace A363250.P927585769727081800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (A055786 n).toNat * A265392 (n + 1)

end

end A363250.P927585769727081800

/-! ## A363250.P8649837939349077271

`lcm(A048656(n+1), A319100(A094864(n)))`
-/

namespace A363250.P8649837939349077271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A048656 (n + 1)) (A319100 (A094864 n).toNat)

end

end A363250.P8649837939349077271

/-!
# A363251: Number of nonisomorphic open quipus with n nodes.

The programs for A363251, there is no canonical definition to state claims against.
-/

/-! ## A363251.P7309334327172945217

`A103221(A319755(n)+2)`
-/

namespace A363251.P7309334327172945217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A319755 n + 2).toNat

end

end A363251.P7309334327172945217

/-! ## A363251.P18365596331344754698

`A358373(A115868(n+2))`
-/

namespace A363251.P18365596331344754698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358373 (A115868 (n + 2)).toNat

end

end A363251.P18365596331344754698

/-! ## A363251.P1429774178267923347

`A008615(A319755(n)+4)`
-/

namespace A363251.P1429774178267923347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A319755 n + 4).toNat

end

end A363251.P1429774178267923347

/-! ## A363251.P18361187940329843253

`A055571(A007560(n+1)+1)`
-/

namespace A363251.P18361187940329843253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055571 (A007560 (n + 1) + 1).toNat

end

end A363251.P18361187940329843253

/-! ## A363251.P475211727310188057

`ceil(A321679(n)/A004275(n+1))`
-/

namespace A363251.P475211727310188057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A321679 n : ℚ) / (A004275 (n + 1) : ℚ)⌉

end

end A363251.P475211727310188057

/-!
# A363252: a(n) = gcd(A000041(n), A000009(n)).

The programs for A363252, there is no canonical definition to state claims against.
-/

/-! ## A363252.P882870527582484849

`gcd(A000041(n), A000009(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A363252.P882870527582484849
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000041 n) (A000009 n)

end

end A363252.P882870527582484849

/-! ## A363252.P632484593404024597

`gcd(A047967(n), A081360(n))`
-/

namespace A363252.P632484593404024597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047967 n) (A081360 n)

end

end A363252.P632484593404024597

/-! ## A363252.P16530204114822333435

`gcd(-A081360(n), ∑[A002865(n)])`
-/

namespace A363252.P16530204114822333435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (-A081360 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A363252.P16530204114822333435

/-! ## A363252.P15414535090686407066

`gcd(A000065(n)+1, ∑[A087897(n)])`
-/

namespace A363252.P15414535090686407066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000065 n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A363252.P15414535090686407066

/-! ## A363252.P12278944882051880952

`ceil(gcd(A087135(n), A139582(n))/2)`
-/

namespace A363252.P12278944882051880952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.gcd (A087135 n) (A139582 n) : ℚ) / 2⌉

end

end A363252.P12278944882051880952

/-! ## A363252.P5706655779899100098

`gcd(abs(A081360(n)), A035363(2*n))`
-/

namespace A363252.P5706655779899100098
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd |A081360 n| (A035363 (2 * n))

end

end A363252.P5706655779899100098

/-! ## A363252.P8391026798996842931

`A000009(n)/A330995(n)`
-/

namespace A363252.P8391026798996842931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000009 n : ℚ) / (A330995 n : ℚ)

end

end A363252.P8391026798996842931

/-! ## A363252.P3605340155806030966

`(A111133(n)+1)/A330995(n)`
-/

namespace A363252.P3605340155806030966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111133 n + 1 : ℚ) / (A330995 n : ℚ)

end

end A363252.P3605340155806030966

/-!
# A363254: Product_{n>=1} (1 + a(n)*x^n) = 1 + 1!!*x + 3!!*x^2 + 5!!*x^3 + 7!!*x^4 + ...

The programs for A363254, there is no canonical definition to state claims against.
-/

/-! ## A363254.P2073034878229052210

`A245092(A094345(∑[n^n]))`
-/

namespace A363254.P2073034878229052210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A094345 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A363254.P2073034878229052210

/-!
# A363255: Product_{n>=1} 1 / (1 - a(n)*x^n) = 1 + 1!!*x + 3!!*x^2 + 5!!*x^3 + 7!!*x^4 + ...

The programs for A363255, there is no canonical definition to state claims against.
-/

/-! ## A363255.P10529435683898863052

`A073198(A014824(n))+1`
-/

namespace A363255.P10529435683898863052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073198 (A014824 n).toNat + 1

end

end A363255.P10529435683898863052

/-!
# A363256: Number of length n strings on the alphabet {0,1,2,3} with digit sum at most 4.

The programs for A363256, the canonical program `A363256.P7867740833640509860` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363256 has offset 0).

The definition of A363256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363256.P7867740833640509860

`(((n+10)*n+35)*n+26)*n/24+1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A363256

/-- `(((n+10)*n+35)*n+26)*n/24+1` -/
def P7867740833640509860.Spec : Prop :=
  ∀ n, P7867740833640509860.a n = (A363256 n : ℚ)

end A363256

/-! ## A363256.P16334983028214060330

`∑[∑[xor(∑[n+1], char[1])]]`
-/

namespace A363256.P16334983028214060330
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (∑ j ∈ Finset.range (n + 1), f3 j) (if ∃ j, f4 j = n then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363256.P16334983028214060330

namespace A363256

/-- `∑[∑[xor(∑[n+1], char[1])]]` -/
def P16334983028214060330.Spec : Prop :=
  ∀ n, (P16334983028214060330.a n : ℤ) = A363256 n

end A363256

/-! ## A363256.P6857271774931288289

`∑[A003600(n)+∑[n]]`
-/

namespace A363256.P6857271774931288289
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003600 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363256.P6857271774931288289

namespace A363256

/-- `∑[A003600(n)+∑[n]]` -/
def P6857271774931288289.Spec : Prop :=
  ∀ n, P6857271774931288289.a n = A363256 n

end A363256

/-! ## A363256.P14065837304910396156

`∑[A028310(n)+∑[A000096(n)]]`
-/

namespace A363256.P14065837304910396156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363256.P14065837304910396156

namespace A363256

/-- `∑[A028310(n)+∑[A000096(n)]]` -/
def P14065837304910396156.Spec : Prop :=
  ∀ n, P14065837304910396156.a n = A363256 n

end A363256

/-! ## A363256.P14037000772802340444

`∑[record[abs(1-∑[∑[n]])]]`
-/

namespace A363256.P14037000772802340444
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363256.P14037000772802340444

namespace A363256

/-- `∑[record[abs(1-∑[∑[n]])]]` -/
def P14037000772802340444.Spec : Prop :=
  ∀ n, P14037000772802340444.a n = A363256 n

end A363256

/-! ## A363256.P15824914434569922839

`∑[∑[A186783(n+2)]]`
-/

namespace A363256.P15824914434569922839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363256.P15824914434569922839

namespace A363256

/-- `∑[∑[A186783(n+2)]]` -/
def P15824914434569922839.Spec : Prop :=
  ∀ n, P15824914434569922839.a n = A363256 n

end A363256

/-! ## A363256.P17522902118604072447

`A114094(A008458(n))`
-/

namespace A363256.P17522902118604072447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114094 (A008458 n).toNat

end

end A363256.P17522902118604072447

namespace A363256

/-- `A114094(A008458(n))` -/
def P17522902118604072447.Spec : Prop :=
  ∀ n, P17522902118604072447.a n = A363256 n

end A363256

/-! ## A363256.P7452601378187128987

`A209694(∑[n+2]-1)`
-/

namespace A363256.P7452601378187128987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209694 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A363256.P7452601378187128987

namespace A363256

/-- `A209694(∑[n+2]-1)` -/
def P7452601378187128987.Spec : Prop :=
  ∀ n, P7452601378187128987.a n = A363256 n

end A363256

/-! ## A363256.P3005297255215808240

`∑[floor(∑[∑[n+1]]-tanh(n))]`
-/

namespace A363256.P3005297255215808240
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ) - Real.tanh (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363256.P3005297255215808240

namespace A363256

/-- `∑[floor(∑[∑[n+1]]-tanh(n))]` -/
def P3005297255215808240.Spec : Prop :=
  ∀ n, P3005297255215808240.a n = A363256 n

end A363256

/-! ## A363256.P13894864813960036887

`∑[∑[∑[n+1]]-ceil(tanh(n))]`
-/

namespace A363256.P13894864813960036887
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - ⌈Real.tanh (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363256.P13894864813960036887

namespace A363256

/-- `∑[∑[∑[n+1]]-ceil(tanh(n))]` -/
def P13894864813960036887.Spec : Prop :=
  ∀ n, P13894864813960036887.a n = A363256 n

end A363256

/-! ## A363256.P14400521057766204814

`∑[round(∑[∑[n+1]]-tanh(n))]`
-/

namespace A363256.P14400521057766204814
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ) - Real.tanh (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363256.P14400521057766204814

namespace A363256

/-- `∑[round(∑[∑[n+1]]-tanh(n))]` -/
def P14400521057766204814.Spec : Prop :=
  ∀ n, P14400521057766204814.a n = A363256 n

end A363256

/-! ## A363256.P16664695108445810598

`∑[∑[round(∑[n+1]^tanh(n))]]`
-/

namespace A363256.P16664695108445810598
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℝ) ^ (Real.tanh (n : ℝ)))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363256.P16664695108445810598

namespace A363256

/-- `∑[∑[round(∑[n+1]^tanh(n))]]` -/
def P16664695108445810598.Spec : Prop :=
  ∀ n, P16664695108445810598.a n = A363256 n

end A363256

/-! ## A363256.P4049738155537089132

`∑[floor(∑[∑[n+1]^tanh(n+1)])]`
-/

namespace A363256.P4049738155537089132
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℝ) ^ (Real.tanh (n + 1 : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363256.P4049738155537089132

namespace A363256

/-- `∑[floor(∑[∑[n+1]^tanh(n+1)])]` -/
def P4049738155537089132.Spec : Prop :=
  ∀ n, P4049738155537089132.a n = A363256 n

end A363256

/-!
# A363257: a(n) = floor( ((a(n-1) + 1) / 2)^2 ) + 1 for n >= 1, with a(0) = 0.

The programs for A363257, the canonical program `A363257.P6669394307420926275` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363257 has offset 0).

The definition of A363257 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(((a(n-1)+1)/2)²)+1` (program `A363257.P6669394307420926275`, by `A363257.P6669394307420926275.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A363257.P6669394307420926275

`floor(((a(n-1)+1)/2)²)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A363257

/-- `floor(((a(n-1)+1)/2)²)+1` -/
def P6669394307420926275.Spec : Prop :=
  ∀ n, P6669394307420926275.a n = A363257 n

theorem P6669394307420926275.correct : P6669394307420926275.Spec := by
  intro n
  simp only [A363257]

end A363257

/-! ## A363257.P1548239394152862141

`A033638(a(n-1)+1)` with `a(0)=0`
-/

namespace A363257.P1548239394152862141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A033638 (a (n - 1) + 1).toNat

end

end A363257.P1548239394152862141

namespace A363257

/-- `A033638(a(n-1)+1)` -/
def P1548239394152862141.Spec : Prop :=
  ∀ n, P1548239394152862141.a n = A363257 n

end A363257

/-! ## A363257.P2012509567973368798

`A087811(a(n-1))+1` with `a(0)=0, a(1)=1`
-/

namespace A363257.P2012509567973368798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A087811 (a (n - 1)).toNat + 1

end

end A363257.P2012509567973368798

namespace A363257

/-- `A087811(a(n-1))+1` -/
def P2012509567973368798.Spec : Prop :=
  ∀ n, P2012509567973368798.a n = A363257 n

end A363257

/-! ## A363257.P7129332793244108963

`abs(A083392(a(n-1)))+1` with `a(0)=0`
-/

namespace A363257.P7129332793244108963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |A083392 (a (n - 1)).toNat| + 1

end

end A363257.P7129332793244108963

namespace A363257

/-- `abs(A083392(a(n-1)))+1` -/
def P7129332793244108963.Spec : Prop :=
  ∀ n, P7129332793244108963.a n = A363257 n

end A363257

/-! ## A363257.P7025857161681484463

`A002620(a(n-1)+1)+1` with `a(0)=0`
-/

namespace A363257.P7025857161681484463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002620 (a (n - 1) + 1).toNat + 1

end

end A363257.P7025857161681484463

namespace A363257

/-- `A002620(a(n-1)+1)+1` -/
def P7025857161681484463.Spec : Prop :=
  ∀ n, P7025857161681484463.a n = A363257 n

end A363257

/-!
# A363258: Expansion of Sum_{k>0} k * x^(2*k-1) / (1 - x^(4*k-3)).

The programs for A363258, the canonical program `A363258.P12380158314372331947` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363258 has offset 1).

The definition of A363258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363258.P12380158314372331947

`A363903(Δ[n²])`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A363258

/-- `A363903(Δ[n²])` -/
def P12380158314372331947.Spec : Prop :=
  ∀ n, P12380158314372331947.a n = A363258 (n + 1)

theorem P12380158314372331947.correct : P12380158314372331947.Spec := by
  intro n
  simp only [A363258, Nat.add_sub_cancel]

end A363258

/-! ## A363258.P16298404597342633353

`A363903(2*n+1)%(n+2)`
-/

namespace A363258.P16298404597342633353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363903 (2 * n + 1)) (n + 2 : ℤ)

end

end A363258.P16298404597342633353

namespace A363258

/-- `A363903(2*n+1)%(n+2)` -/
def P16298404597342633353.Spec : Prop :=
  ∀ n, P16298404597342633353.a n = A363258 (n + 1)

end A363258

/-! ## A363258.P9526658841180544272

`A000027(A363903(2*n+1))`
-/

namespace A363258.P9526658841180544272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A363903 (2 * n + 1)).toNat

end

end A363258.P9526658841180544272

namespace A363258

/-- `A000027(A363903(2*n+1))` -/
def P9526658841180544272.Spec : Prop :=
  ∀ n, P9526658841180544272.a n = A363258 (n + 1)

end A363258

/-! ## A363258.P13232026303105957140

`A029578(2*A363903(2*n+1))`
-/

namespace A363258.P13232026303105957140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (2 * A363903 (2 * n + 1)).toNat

end

end A363258.P13232026303105957140

namespace A363258

/-- `A029578(2*A363903(2*n+1))` -/
def P13232026303105957140.Spec : Prop :=
  ∀ n, P13232026303105957140.a n = A363258 (n + 1)

end A363258

/-! ## A363258.P10536741264793454882

`A363903(2*n+1)+A000035(2*n)`
-/

namespace A363258.P10536741264793454882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363903 (2 * n + 1) + A000035 (2 * n)

end

end A363258.P10536741264793454882

namespace A363258

/-- `A363903(2*n+1)+A000035(2*n)` -/
def P10536741264793454882.Spec : Prop :=
  ∀ n, P10536741264793454882.a n = A363258 (n + 1)

end A363258

/-! ## A363258.P3973409764702687822

`A010054(A000217(n))*A363903(2*n+1)`
-/

namespace A363258.P3973409764702687822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A000217 n).toNat * A363903 (2 * n + 1)

end

end A363258.P3973409764702687822

namespace A363258

/-- `A010054(A000217(n))*A363903(2*n+1)` -/
def P3973409764702687822.Spec : Prop :=
  ∀ n, P3973409764702687822.a n = A363258 (n + 1)

end A363258

/-!
# A363259: Expansion of Sum_{k>0} k * x^(2*k) / (1 - x^(4*k-1)).

The programs for A363259, the canonical program `A363259.P18232685269626442063` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363259 has offset 1).

The definition of A363259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363259.P18232685269626442063

`A363904(Δ[n²])`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A363259

/-- `A363904(Δ[n²])` -/
def P18232685269626442063.Spec : Prop :=
  ∀ n, P18232685269626442063.a n = A363259 (n + 1)

theorem P18232685269626442063.correct : P18232685269626442063.Spec := by
  intro n
  simp only [A363259, Nat.add_sub_cancel]

end A363259

/-! ## A363259.P3859389020745801163

`A363904(2*n+1)%(n+1)`
-/

namespace A363259.P3859389020745801163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A363904 (2 * n + 1)) (n + 1 : ℤ)

end

end A363259.P3859389020745801163

namespace A363259

/-- `A363904(2*n+1)%(n+1)` -/
def P3859389020745801163.Spec : Prop :=
  ∀ n, P3859389020745801163.a n = A363259 (n + 1)

end A363259

/-! ## A363259.P5097835607422379863

`lcm(A008836(n+1), A363904(2*n+1))`
-/

namespace A363259.P5097835607422379863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008836 (n + 1)) (A363904 (2 * n + 1))

end

end A363259.P5097835607422379863

namespace A363259

/-- `lcm(A008836(n+1), A363904(2*n+1))` -/
def P5097835607422379863.Spec : Prop :=
  ∀ n, (P5097835607422379863.a n : ℤ) = A363259 (n + 1)

end A363259

/-! ## A363259.P9654786847574054329

`A363904(2*n+1)+A099550(A004159(3*(n+1)))`
-/

namespace A363259.P9654786847574054329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363904 (2 * n + 1) + A099550 (A004159 (3 * (n + 1))).toNat

end

end A363259.P9654786847574054329

namespace A363259

/-- `A363904(2*n+1)+A099550(A004159(3*(n+1)))` -/
def P9654786847574054329.Spec : Prop :=
  ∀ n, P9654786847574054329.a n = A363259 (n + 1)

end A363259

/-! ## A363259.P603225428998456294

`A001055(A000040(n+1))*A363904(2*n+1)`
-/

namespace A363259.P603225428998456294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A000040 (n + 1)).toNat * A363904 (2 * n + 1)

end

end A363259.P603225428998456294

namespace A363259

/-- `A001055(A000040(n+1))*A363904(2*n+1)` -/
def P603225428998456294.Spec : Prop :=
  ∀ n, P603225428998456294.a n = A363259 (n + 1)

end A363259

/-! ## A363259.P67055785860676950

`A003415(A005384(n+1))*A363904(2*n+1)`
-/

namespace A363259.P67055785860676950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A005384 (n + 1)).toNat * A363904 (2 * n + 1)

end

end A363259.P67055785860676950

namespace A363259

/-- `A003415(A005384(n+1))*A363904(2*n+1)` -/
def P67055785860676950.Spec : Prop :=
  ∀ n, P67055785860676950.a n = A363259 (n + 1)

end A363259

/-!
# A363260: Number of integer partitions of n with parts disjoint from first differences of parts, meaning no part is the difference of two consecutive parts.

The programs for A363260, there is no canonical definition to state claims against.
-/

/-! ## A363260.P4167452060791474852

`A000041(n)-A364467(n)`
-/

namespace A363260.P4167452060791474852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A364467 n

end

end A363260.P4167452060791474852

/-! ## A363260.P14290870441207771633

`A213598(n)-A364467(n)`
-/

namespace A363260.P14290870441207771633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A364467 n

end

end A363260.P14290870441207771633

/-! ## A363260.P6374646215630328795

`∑[A002865(n)]-A364467(n)`
-/

namespace A363260.P6374646215630328795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A364467 n

end

end A363260.P6374646215630328795

/-! ## A363260.P14317248593817911226

`A000065(n)+1-A364467(n)`
-/

namespace A363260.P14317248593817911226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A364467 n)

end

end A363260.P14317248593817911226

/-! ## A363260.P9687054211845821400

`A238343(A000217(n))-A364467(n)`
-/

namespace A363260.P9687054211845821400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238343 (A000217 n).toNat - A364467 n

end

end A363260.P9687054211845821400

/-!
# A363261: The partial sums of the prime indices of n include half the sum of all prime indices of n.

The programs for A363261, there is no canonical definition to state claims against.
-/

/-! ## A363261.P10259530702858564717

`∩[A333491(n+1), A357976(n+1)]`
-/

namespace A363261.P10259530702858564717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363261.P10259530702858564717

/-! ## A363261.P17658688860326089613

`∩[A357976(n+1), A359908(n+1)]`
-/

namespace A363261.P17658688860326089613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359908 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363261.P17658688860326089613

/-! ## A363261.P7717296671957046426

`∩[A357976(n+1), A359913(n+1)]`
-/

namespace A363261.P7717296671957046426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359913 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A363261.P7717296671957046426

/-!
# A363262: Number of integer compositions of n in which the greatest part appears more than once.

The programs for A363262, there is no canonical definition to state claims against.
-/

/-! ## A363262.P6842958748267256628

`A259361(A176678(n))`
-/

namespace A363262.P6842958748267256628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A176678 n).toNat

end

end A363262.P6842958748267256628

/-! ## A363262.P1480715620680415591

`A341936(A145139(n))`
-/

namespace A363262.P1480715620680415591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341936 (A145139 n).toNat

end

end A363262.P1480715620680415591

/-! ## A363262.P17830152061102929357

`A135660(A059712(n+1))`
-/

namespace A363262.P17830152061102929357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A059712 (n + 1)).toNat

end

end A363262.P17830152061102929357

/-! ## A363262.P14709096094002868039

`A135660(A148639(n+1))`
-/

namespace A363262.P14709096094002868039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135660 (A148639 (n + 1)).toNat

end

end A363262.P14709096094002868039

/-! ## A363262.P10010245970173816386

`A135662(A268069(n+1))`
-/

namespace A363262.P10010245970173816386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (A268069 (n + 1)).toNat

end

end A363262.P10010245970173816386

/-!
# A363263: Number of integer partitions of n covering an initial interval of positive integers with a unique co-mode.

The programs for A363263, there is no canonical definition to state claims against.
-/

/-! ## A363263.P3453022534740499642

`A363484(n)+A363485(n)-A363264(n)`
-/

namespace A363263.P3453022534740499642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363484 n + (A363485 n - A363264 n)

end

end A363263.P3453022534740499642

/-!
# A363264: Number of integer partitions of n covering an initial interval of positive integers with a more than one co-mode.

The programs for A363264, there is no canonical definition to state claims against.
-/

/-! ## A363264.P18134141897598391490

`A363484(n)+A363485(n)-A363263(n)`
-/

namespace A363264.P18134141897598391490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363484 n + (A363485 n - A363263 n)

end

end A363264.P18134141897598391490

/-!
# A363265: Number of integer factorizations of n with a unique mode.

The programs for A363265, there is no canonical definition to state claims against.
-/

/-! ## A363265.P10047467582848824675

`A305193(n+1)-A338624(A000688(n+1))`
-/

namespace A363265.P10047467582848824675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305193 (n + 1) - A338624 (A000688 (n + 1)).toNat

end

end A363265.P10047467582848824675

/-! ## A363265.P6247323381664973317

`A255231(n+1)%A003064(n)`
-/

namespace A363265.P6247323381664973317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255231 (n + 1)) (A003064 n)

end

end A363265.P6247323381664973317

/-! ## A363265.P17702621011165809341

`A255231(n+1)-A054521(A060544(n+1))`
-/

namespace A363265.P17702621011165809341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255231 (n + 1) - A054521 (A060544 (n + 1)).toNat

end

end A363265.P17702621011165809341

/-! ## A363265.P6406614693326294687

`A269393(A255231(n+1))%A152603(n+1)`
-/

namespace A363265.P6406614693326294687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A269393 (A255231 (n + 1)).toNat) (A152603 (n + 1))

end

end A363265.P6406614693326294687

/-! ## A363265.P1827830572251947200

`A194963(A255231(n+1))%A305563(n+1)`
-/

namespace A363265.P1827830572251947200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194963 (A255231 (n + 1)).toNat) (A305563 (n + 1))

end

end A363265.P1827830572251947200

/-!
# A363267: Squares (A000290) alternating with centered squares (A001844).

The programs for A363267, the canonical program `A363267.P14446944804879602199` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363267 has offset 1).

The definition of A363267 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363267.P14446944804879602199

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5, a(4)=9, a(5)=13`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A363267

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P14446944804879602199.Spec : Prop :=
  ∀ n, P14446944804879602199.a n = A363267 (n + 1)

theorem P14446944804879602199.correct : P14446944804879602199.Spec := by
  intro n
  simp only [A363267, Nat.add_sub_cancel]

end A363267

/-! ## A363267.P9047207875643874552

`n/2+3*n²/8+3/4+(-1)^n*(1/4+n/2-n²/8)`
-/

namespace A363267.P9047207875643874552
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 + (3 * n ^ 2 : ℚ) / 8 + (3 : ℚ) / 4 + ((-1) ^ n : ℚ) * ((1 : ℚ) / 4 + (n : ℚ) / 2 - (n ^ 2 : ℚ) / 8)

end

end A363267.P9047207875643874552

namespace A363267

/-- `n/2+3*n²/8+3/4+(-1)^n*(1/4+n/2-n²/8)` -/
def P9047207875643874552.Spec : Prop :=
  ∀ n, P9047207875643874552.a n = (A363267 (n + 1) : ℚ)

theorem P9047207875643874552.correct : P9047207875643874552.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 | 5 =>
      simp [A363267, Nat.add_sub_cancel, A363267.P9047207875643874552.a, A363267.P14446944804879602199.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 6 =>
      have h2 := ih (m + 4) (by omega)
      have h4 := ih (m + 2) (by omega)
      have h6 := ih m (by omega)
      simp only [A363267, Nat.add_sub_cancel, A363267.P9047207875643874552.a, A363267.P14446944804879602199.a, SequenceMachineLib.memo_apply] at h2 h4 h6 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 6 - 2 = m + 4 by omega, show m + 6 - 4 = m + 2 by omega, show m + 6 - 6 = m by omega, show m + 4 < m + 6 by omega, show m + 2 < m + 6 by omega, show m < m + 6 by omega, ↓reduceIte]
      push_cast at h2 h4 h6 ⊢
      rw [← h2, ← h4, ← h6]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A363267

/-! ## A363267.P10997985889558563850

`A147685(A004442(n)+1)`
-/

namespace A363267.P10997985889558563850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147685 (A004442 n + 1).toNat

end

end A363267.P10997985889558563850

namespace A363267

/-- `A147685(A004442(n)+1)` -/
def P10997985889558563850.Spec : Prop :=
  ∀ n, P10997985889558563850.a n = A363267 (n + 1)

end A363267

/-! ## A363267.P2356733545807508583

`A147685(A014681(n+1))`
-/

namespace A363267.P2356733545807508583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147685 (A014681 (n + 1)).toNat

end

end A363267.P2356733545807508583

namespace A363267

/-- `A147685(A014681(n+1))` -/
def P2356733545807508583.Spec : Prop :=
  ∀ n, P2356733545807508583.a n = A363267 (n + 1)

end A363267

/-! ## A363267.P2924654349090332725

`A147685(A103889(n+1))`
-/

namespace A363267.P2924654349090332725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147685 (A103889 (n + 1)).toNat

end

end A363267.P2924654349090332725

namespace A363267

/-- `A147685(A103889(n+1))` -/
def P2924654349090332725.Spec : Prop :=
  ∀ n, P2924654349090332725.a n = A363267 (n + 1)

end A363267

/-! ## A363267.P9574707761844074945

`A147685(A114112(n+1))`
-/

namespace A363267.P9574707761844074945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147685 (A114112 (n + 1)).toNat

end

end A363267.P9574707761844074945

namespace A363267

/-- `A147685(A114112(n+1))` -/
def P9574707761844074945.Spec : Prop :=
  ∀ n, P9574707761844074945.a n = A363267 (n + 1)

end A363267

/-! ## A363267.P1536070881300162864

`abs(A246425((xor(1, n)+1)²))`
-/

namespace A363267.P1536070881300162864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A246425 ((Nat.xor 1 n + 1) ^ 2)|

end

end A363267.P1536070881300162864

namespace A363267

/-- `abs(A246425((xor(1, n)+1)²))` -/
def P1536070881300162864.Spec : Prop :=
  ∀ n, P1536070881300162864.a n = A363267 (n + 1)

end A363267

/-!
# A363268: Squares (A000290) alternating with 1+squares (A002522).

The programs for A363268, the canonical program `A363268.P15081573963768261464` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363268 has offset 1).

The definition of A363268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363268.P15081573963768261464

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=2, a(4)=9`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A363268

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P15081573963768261464.Spec : Prop :=
  ∀ n, P15081573963768261464.a n = A363268 (n + 1)

theorem P15081573963768261464.correct : P15081573963768261464.Spec := by
  intro n
  simp only [A363268, Nat.add_sub_cancel]

end A363268

/-! ## A363268.P1931370273273308056

`A397113(n)+1+n`
-/

namespace A363268.P1931370273273308056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397113 n + 1 + (n : ℤ)

end

end A363268.P1931370273273308056

namespace A363268

/-- `A397113(n)+1+n` -/
def P1931370273273308056.Spec : Prop :=
  ∀ n, P1931370273273308056.a n = A363268 (n + 1)

end A363268

/-! ## A363268.P1681998619193227055

`(A338043(n+1)-n)/2`
-/

namespace A363268.P1681998619193227055
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338043 (n + 1) - (n : ℤ) : ℚ) / 2

end

end A363268.P1681998619193227055

namespace A363268

/-- `(A338043(n+1)-n)/2` -/
def P1681998619193227055.Spec : Prop :=
  ∀ n, P1681998619193227055.a n = (A363268 (n + 1) : ℚ)

end A363268

/-! ## A363268.P5258317922050326262

`A141310(n)+A131805(n)`
-/

namespace A363268.P5258317922050326262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n + A131805 n

end

end A363268.P5258317922050326262

namespace A363268

/-- `A141310(n)+A131805(n)` -/
def P5258317922050326262.Spec : Prop :=
  ∀ n, P5258317922050326262.a n = A363268 (n + 1)

end A363268

/-! ## A363268.P14717196274857942613

`A264754(n)-A014682(n)`
-/

namespace A363268.P14717196274857942613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264754 n - A014682 n

end

end A363268.P14717196274857942613

namespace A363268

/-- `A264754(n)-A014682(n)` -/
def P14717196274857942613.Spec : Prop :=
  ∀ n, P14717196274857942613.a n = A363268 (n + 1)

end A363268

/-! ## A363268.P2135026233002891649

`A000034(n)-A317300(n)`
-/

namespace A363268.P2135026233002891649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n - A317300 n

end

end A363268.P2135026233002891649

namespace A363268

/-- `A000034(n)-A317300(n)` -/
def P2135026233002891649.Spec : Prop :=
  ∀ n, P2135026233002891649.a n = A363268 (n + 1)

end A363268

/-! ## A363268.P4777837121963398767

`A257083(n)-A213037(n)`
-/

namespace A363268.P4777837121963398767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 n - A213037 n

end

end A363268.P4777837121963398767

namespace A363268

/-- `A257083(n)-A213037(n)` -/
def P4777837121963398767.Spec : Prop :=
  ∀ n, P4777837121963398767.a n = A363268 (n + 1)

end A363268

/-! ## A363268.P1122952219071553015

`A000035(n)+A028242(n)²`
-/

namespace A363268.P1122952219071553015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + A028242 n ^ 2

end

end A363268.P1122952219071553015

namespace A363268

/-- `A000035(n)+A028242(n)²` -/
def P1122952219071553015.Spec : Prop :=
  ∀ n, P1122952219071553015.a n = A363268 (n + 1)

end A363268

/-! ## A363268.P15566395449780601012

`A093178(n+1)+A008794(n)`
-/

namespace A363268.P15566395449780601012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (n + 1) + A008794 n

end

end A363268.P15566395449780601012

namespace A363268

/-- `A093178(n+1)+A008794(n)` -/
def P15566395449780601012.Spec : Prop :=
  ∀ n, P15566395449780601012.a n = A363268 (n + 1)

end A363268

/-! ## A363268.P13326265802113343261

`A008794(n)+A237420(n)+1`
-/

namespace A363268.P13326265802113343261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n + (A237420 n + 1)

end

end A363268.P13326265802113343261

namespace A363268

/-- `A008794(n)+A237420(n)+1` -/
def P13326265802113343261.Spec : Prop :=
  ∀ n, P13326265802113343261.a n = A363268 (n + 1)

end A363268

/-! ## A363268.P1276571806626398216

`A081346(n)-A001082(n+1)`
-/

namespace A363268.P1276571806626398216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081346 n - A001082 (n + 1)

end

end A363268.P1276571806626398216

namespace A363268

/-- `A081346(n)-A001082(n+1)` -/
def P1276571806626398216.Spec : Prop :=
  ∀ n, P1276571806626398216.a n = A363268 (n + 1)

end A363268

/-! ## A363268.P7142856703218246597

`A099392(n+1)-A174474(n)`
-/

namespace A363268.P7142856703218246597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099392 (n + 1) - A174474 n

end

end A363268.P7142856703218246597

namespace A363268

/-- `A099392(n+1)-A174474(n)` -/
def P7142856703218246597.Spec : Prop :=
  ∀ n, P7142856703218246597.a n = A363268 (n + 1)

end A363268

/-! ## A363268.P11701135090316251932

`A338041(n+1)-A032766(n)`
-/

namespace A363268.P11701135090316251932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338041 (n + 1) - A032766 n

end

end A363268.P11701135090316251932

namespace A363268

/-- `A338041(n+1)-A032766(n)` -/
def P11701135090316251932.Spec : Prop :=
  ∀ n, P11701135090316251932.a n = A363268 (n + 1)

end A363268

/-! ## A363268.P249750807789617006

`A217571(n+1)-A185452(n)`
-/

namespace A363268.P249750807789617006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217571 (n + 1) - A185452 n

end

end A363268.P249750807789617006

namespace A363268

/-- `A217571(n+1)-A185452(n)` -/
def P249750807789617006.Spec : Prop :=
  ∀ n, P249750807789617006.a n = A363268 (n + 1)

end A363268

/-! ## A363268.P13558109468731807710

`A230584(n+1)-A266662(n)`
-/

namespace A363268.P13558109468731807710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230584 (n + 1) - A266662 n

end

end A363268.P13558109468731807710

namespace A363268

/-- `A230584(n+1)-A266662(n)` -/
def P13558109468731807710.Spec : Prop :=
  ∀ n, P13558109468731807710.a n = A363268 (n + 1)

end A363268

/-! ## A363268.P11628822560784969867

`char[A005408(n)]+A028242(n)²`
-/

namespace A363268.P11628822560784969867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + A028242 n ^ 2

end

end A363268.P11628822560784969867

namespace A363268

/-- `char[A005408(n)]+A028242(n)²` -/
def P11628822560784969867.Spec : Prop :=
  ∀ n, P11628822560784969867.a n = A363268 (n + 1)

end A363268

/-! ## A363268.P17820087454133903071

`A093178(n+1)+A004526(n)²`
-/

namespace A363268.P17820087454133903071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (n + 1) + A004526 n ^ 2

end

end A363268.P17820087454133903071

namespace A363268

/-- `A093178(n+1)+A004526(n)²` -/
def P17820087454133903071.Spec : Prop :=
  ∀ n, P17820087454133903071.a n = A363268 (n + 1)

end A363268

/-! ## A363268.P15982000649260679640

`A082742(n+1)-A064455(n+1)`
-/

namespace A363268.P15982000649260679640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082742 (n + 1) - A064455 (n + 1)

end

end A363268.P15982000649260679640

namespace A363268

/-- `A082742(n+1)-A064455(n+1)` -/
def P15982000649260679640.Spec : Prop :=
  ∀ n, P15982000649260679640.a n = A363268 (n + 1)

end A363268

/-! ## A363268.P15226302506488086370

`A373662(n+1)-A217571(n+1)`
-/

namespace A363268.P15226302506488086370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373662 (n + 1) - A217571 (n + 1)

end

end A363268.P15226302506488086370

namespace A363268

/-- `A373662(n+1)-A217571(n+1)` -/
def P15226302506488086370.Spec : Prop :=
  ∀ n, P15226302506488086370.a n = A363268 (n + 1)

end A363268

/-! ## A363268.P9086592284928731709

`Δ[A004526(n)]+A028242(n)²`
-/

namespace A363268.P9086592284928731709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A028242 n ^ 2

end

end A363268.P9086592284928731709

namespace A363268

/-- `Δ[A004526(n)]+A028242(n)²` -/
def P9086592284928731709.Spec : Prop :=
  ∀ n, P9086592284928731709.a n = A363268 (n + 1)

end A363268

/-!
# A363269: Positive squares (A000290) alternating with positive square pyramidal numbers (A000330).

The programs for A363269, the canonical program `A363269.P9036724610374014256` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363269 has offset 1).

The definition of A363269 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363269.P9036724610374014256

`4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=5, a(4)=9, a(5)=14, a(6)=16, a(7)=30`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A363269

/-- `4*a(n-2)-6*a(n-4)+4*a(n-6)-a(n-8)` -/
def P9036724610374014256.Spec : Prop :=
  ∀ n, P9036724610374014256.a n = A363269 (n + 1)

theorem P9036724610374014256.correct : P9036724610374014256.Spec := by
  intro n
  simp only [A363269, Nat.add_sub_cancel]

end A363269

/-! ## A363269.P15061994936326919128

`A079097(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A363269.P15061994936326919128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A079097 n + a (n - 2)

end

end A363269.P15061994936326919128

namespace A363269

/-- `A079097(n)+a(n-2)` -/
def P15061994936326919128.Spec : Prop :=
  ∀ n, P15061994936326919128.a n = A363269 (n + 1)

end A363269

/-! ## A363269.P12875085801088255796

`A029637(A101881(n+1))`
-/

namespace A363269.P12875085801088255796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029637 (A101881 (n + 1)).toNat

end

end A363269.P12875085801088255796

namespace A363269

/-- `A029637(A101881(n+1))` -/
def P12875085801088255796.Spec : Prop :=
  ∀ n, P12875085801088255796.a n = A363269 (n + 1)

end A363269

/-! ## A363269.P9013854663605870590

`A034807(A014616(n+1))`
-/

namespace A363269.P9013854663605870590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 (A014616 (n + 1)).toNat

end

end A363269.P9013854663605870590

namespace A363269

/-- `A034807(A014616(n+1))` -/
def P9013854663605870590.Spec : Prop :=
  ∀ n, P9013854663605870590.a n = A363269 (n + 1)

end A363269

/-! ## A363269.P14253724978823063469

`A034807(A184674(n+2))`
-/

namespace A363269.P14253724978823063469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034807 (A184674 (n + 2)).toNat

end

end A363269.P14253724978823063469

namespace A363269

/-- `A034807(A184674(n+2))` -/
def P14253724978823063469.Spec : Prop :=
  ∀ n, P14253724978823063469.a n = A363269 (n + 1)

end A363269

/-! ## A363269.P11135983069303624023

`A061896(A116940(n+1))`
-/

namespace A363269.P11135983069303624023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 (A116940 (n + 1)).toNat

end

end A363269.P11135983069303624023

namespace A363269

/-- `A061896(A116940(n+1))` -/
def P11135983069303624023.Spec : Prop :=
  ∀ n, P11135983069303624023.a n = A363269 (n + 1)

end A363269

/-! ## A363269.P14231548947229247064

`A123185(A053669(3*n+1)+A000217(n+2))`
-/

namespace A363269.P14231548947229247064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123185 (A053669 (3 * n + 1) + A000217 (n + 2)).toNat

end

end A363269.P14231548947229247064

namespace A363269

/-- `A123185(A053669(3*n+1)+A000217(n+2))` -/
def P14231548947229247064.Spec : Prop :=
  ∀ n, P14231548947229247064.a n = A363269 (n + 1)

end A363269

/-!
# A363270: The result, starting from n, of Collatz steps x -> (3x+1)/2 while odd, followed by x -> x/2 while even.

The programs for A363270, the canonical program `A363270.P16204240149667197490` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363270 has offset 1).

The definition of A363270 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4094 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363270.P16204240149667197490

`A000265(A085062(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A363270

/-- `A000265(A085062(n+1))` -/
def P16204240149667197490.Spec : Prop :=
  ∀ n, P16204240149667197490.a n = A363270 (n + 1)

theorem P16204240149667197490.correct : P16204240149667197490.Spec := by
  intro n
  simp only [A363270, Nat.add_sub_cancel]

end A363270

/-! ## A363270.P9564678031691807217

`A000265(A394497(n+2)-1)`
-/

namespace A363270.P9564678031691807217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A394497 (n + 2) - 1).toNat

end

end A363270.P9564678031691807217

namespace A363270

/-- `A000265(A394497(n+2)-1)` -/
def P9564678031691807217.Spec : Prop :=
  ∀ n, P9564678031691807217.a n = A363270 (n + 1)

end A363270

/-!
# A363271: Vertical sum of n in base 10.

The programs for A363271, there is no canonical definition to state claims against.
-/

/-! ## A363271.P4915673159664746253

`∑{digits}[n+1, round(sinh(sqrt(#)))]`
-/

namespace A363271.P4915673159664746253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => SequenceMachineLib.roundAway (Real.sinh (Real.sqrt (x : ℝ)))).sum

end

end A363271.P4915673159664746253

/-! ## A363271.P14443615338938238076

`∑{digits}[n+1, C(#, 9)+#]`
-/

namespace A363271.P14443615338938238076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x 9 + x).sum

end

end A363271.P14443615338938238076

/-! ## A363271.P14735338798243078127

`∑{digits}[n+1, #]+val(n+2, 10)`
-/

namespace A363271.P14735338798243078127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + SequenceMachineLib.valuation (n + 2) 10

end

end A363271.P14735338798243078127

/-! ## A363271.P10588786969376603362

`∑{digits}[n+1, A004728(#)]`
-/

namespace A363271.P10588786969376603362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A004728 x).sum

end

end A363271.P10588786969376603362

/-! ## A363271.P18209469493155457795

`∑{digits}[n+1, A007095(#)]`
-/

namespace A363271.P18209469493155457795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A007095 x).sum

end

end A363271.P18209469493155457795

/-! ## A363271.P12784438510130970595

`∑{digits}[n+1, A043094(#)]`
-/

namespace A363271.P12784438510130970595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A043094 x).sum

end

end A363271.P12784438510130970595

/-! ## A363271.P3147216981671096622

`∑{digits}[n+1, A048306(#)]`
-/

namespace A363271.P3147216981671096622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A048306 x).sum

end

end A363271.P3147216981671096622

/-! ## A363271.P2200774879855193299

`∑{digits}[n+1, A048320(#)]`
-/

namespace A363271.P2200774879855193299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A048320 x).sum

end

end A363271.P2200774879855193299

/-! ## A363271.P16386852191025316295

`∑{digits}[n+1, A048334(#)]`
-/

namespace A363271.P16386852191025316295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A048334 x).sum

end

end A363271.P16386852191025316295

/-! ## A363271.P7610143458409538852

`∑{digits}[n+1, A073294(#)]`
-/

namespace A363271.P7610143458409538852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A073294 x).sum

end

end A363271.P7610143458409538852

/-!
# A363276: Number of partitions of n such that 4*(least part) <= greatest part.

The programs for A363276, there is no canonical definition to state claims against.
-/

/-! ## A363276.P11975876383997016033

`∑[∑[A076489(A000129(n))]]`
-/

namespace A363276.P11975876383997016033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 (A000129 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363276.P11975876383997016033

/-! ## A363276.P6495416675997707415

`∑[A108611(Δ[A185721(n+3)])]`
-/

namespace A363276.P6495416675997707415
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185721 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363276.P6495416675997707415

/-! ## A363276.P7466258965145651957

`∑[A026811(n+1)%A018683(n+1)]`
-/

namespace A363276.P7466258965145651957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026811 (n + 1)) (A018683 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363276.P7466258965145651957

/-!
# A363277: Sum of the divisor complements of the squarefree divisors of n that are <= sqrt(n).

The programs for A363277, there is no canonical definition to state claims against.
-/

/-! ## A363277.P6719444835319890950

`A070038(n+1)-A184955(A026741(n))`
-/

namespace A363277.P6719444835319890950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) - A184955 (A026741 n).toNat

end

end A363277.P6719444835319890950

/-! ## A363277.P18108871125529296446

`A070038(n+1)-A000089(A130441(n+2))`
-/

namespace A363277.P18108871125529296446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) - A000089 (A130441 (n + 2)).toNat

end

end A363277.P18108871125529296446

/-! ## A363277.P6492322630351023321

`A070038(n+1)-A184955(A266642(n))`
-/

namespace A363277.P6492322630351023321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070038 (n + 1) - A184955 (A266642 n).toNat

end

end A363277.P6492322630351023321

/-!
# A363279: a(0)=1; a(1)=2. For n>1, a(n) is the number of contiguous groups in the sequence thus far whose sum is n.

The programs for A363279, there is no canonical definition to state claims against.
-/

/-! ## A363279.P13078619210227845642

`A146292(A001043(n+1)+8)`
-/

namespace A363279.P13078619210227845642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146292 (A001043 (n + 1) + 8).toNat

end

end A363279.P13078619210227845642

/-! ## A363279.P17397252677473984073

`∏{e}[A374184(A003945(n)), #]`
-/

namespace A363279.P17397252677473984073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374184 (A003945 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A363279.P17397252677473984073

/-! ## A363279.P11105056185792029924

`A083671(A100371(n+4)-n)`
-/

namespace A363279.P11105056185792029924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083671 (A100371 (n + 4) - (n : ℤ)).toNat

end

end A363279.P11105056185792029924

/-! ## A363279.P8590708216026879497

`A001222(A293214(3*n+5)+2*n+1)`
-/

namespace A363279.P8590708216026879497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A293214 (3 * n + 5) + (2 * n : ℤ) + 1).toNat

end

end A363279.P8590708216026879497

/-! ## A363279.P632262521100468357

`A135010(A103718(n)+A026003(n))`
-/

namespace A363279.P632262521100468357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (A103718 n + A026003 n).toNat

end

end A363279.P632262521100468357

/-!
# A363282: Squares (A000290) and centered squares (A001844), in increasing order (i.e., sorted and without duplicates).

The programs for A363282, the canonical program `A363282.P3772902106130009921` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363282 has offset 1).

The definition of A363282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363282.P3772902106130009921

`∪[∑[4*n]+1, (n+1)²]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A363282

/-- `∪[∑[4*n]+1, (n+1)²]` -/
def P3772902106130009921.Spec : Prop :=
  ∀ n, (P3772902106130009921.a n : ℤ) = A363282 (n + 1)

theorem P3772902106130009921.correct : P3772902106130009921.Spec := by
  intro n
  simp only [A363282, Nat.add_sub_cancel]

end A363282

/-! ## A363282.P1757130895549696538

`∪[∑[4*n], A005563(n)]+1`
-/

namespace A363282.P1757130895549696538
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n + 1

end

end A363282.P1757130895549696538

namespace A363282

/-- `∪[∑[4*n], A005563(n)]+1` -/
def P1757130895549696538.Spec : Prop :=
  ∀ n, (P1757130895549696538.a n : ℤ) = A363282 (n + 1)

end A363282

/-! ## A363282.P13677648308733635107

`∪[A005563(n), A046092(n)]+1`
-/

namespace A363282.P13677648308733635107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A363282.P13677648308733635107

namespace A363282

/-- `∪[A005563(n), A046092(n)]+1` -/
def P13677648308733635107.Spec : Prop :=
  ∀ n, (P13677648308733635107.a n : ℤ) = A363282 (n + 1)

end A363282

/-! ## A363282.P8343562372126381864

`record[A363319(A032742(n+1))]`
-/

namespace A363282.P8343562372126381864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363319 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363282.P8343562372126381864

namespace A363282

/-- `record[A363319(A032742(n+1))]` -/
def P8343562372126381864.Spec : Prop :=
  ∀ n, P8343562372126381864.a n = A363282 (n + 1)

end A363282

/-! ## A363282.P2867329325725736725

`record[A363319(A077609(n+1))]`
-/

namespace A363282.P2867329325725736725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363319 (A077609 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363282.P2867329325725736725

namespace A363282

/-- `record[A363319(A077609(n+1))]` -/
def P2867329325725736725.Spec : Prop :=
  ∀ n, P2867329325725736725.a n = A363282 (n + 1)

end A363282

/-! ## A363282.P8443580413662307791

`A000027(∪[A001844(n), (n+1)²])`
-/

namespace A363282.P8443580413662307791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n)

end

end A363282.P8443580413662307791

namespace A363282

/-- `A000027(∪[A001844(n), (n+1)²])` -/
def P8443580413662307791.Spec : Prop :=
  ∀ n, P8443580413662307791.a n = A363282 (n + 1)

end A363282

/-! ## A363282.P954617180183641458

`record[A363319(A022290(n+1))]`
-/

namespace A363282.P954617180183641458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363319 (A022290 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363282.P954617180183641458

namespace A363282

/-- `record[A363319(A022290(n+1))]` -/
def P954617180183641458.Spec : Prop :=
  ∀ n, P954617180183641458.a n = A363282 (n + 1)

end A363282

/-! ## A363282.P15521718244330089153

`A028310(∪[(n+1)², A001844(n)])`
-/

namespace A363282.P15521718244330089153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A363282.P15521718244330089153

namespace A363282

/-- `A028310(∪[(n+1)², A001844(n)])` -/
def P15521718244330089153.Spec : Prop :=
  ∀ n, P15521718244330089153.a n = A363282 (n + 1)

end A363282

/-! ## A363282.P8230820067947635380

`record[A025480(A008833(2*(n+1))+1)]`
-/

namespace A363282.P8230820067947635380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A008833 (2 * (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A363282.P8230820067947635380

namespace A363282

/-- `record[A025480(A008833(2*(n+1))+1)]` -/
def P8230820067947635380.Spec : Prop :=
  ∀ n, P8230820067947635380.a n = A363282 (n + 1)

end A363282

/-!
# A363283: Squares (A000290) and (1+squares) (A002522), in increasing order.

The programs for A363283, the canonical program `A363283.P18048615763162172572` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363283 has offset 1).

The definition of A363283 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363283.P14524958751864426245

`(2*(n+1)²+2*(n+1)+5-(2*(n+1)-3)*(-1)^(n+1))/8`
-/

namespace A363283.P14524958751864426245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) ^ 2 + 2 * (n + 1) + 5 : ℤ) - ((2 * (n + 1) : ℤ) - 3) * (-1) ^ (n + 1) : ℚ) / 8

end

end A363283.P14524958751864426245

namespace A363283

/-- `(2*(n+1)²+2*(n+1)+5-(2*(n+1)-3)*(-1)^(n+1))/8` -/
def P14524958751864426245.Spec : Prop :=
  ∀ n, P14524958751864426245.a n = (A363283 (n + 1) : ℚ)

theorem P14524958751864426245.correct : P14524958751864426245.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A363283, Nat.add_sub_cancel, A363283.P14524958751864426245.a, A363283.P18048615763162172572.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A363283, Nat.add_sub_cancel, A363283.P14524958751864426245.a, A363283.P18048615763162172572.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A363283

/-! ## A363283.P18048615763162172572

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=9`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A363283

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P18048615763162172572.Spec : Prop :=
  ∀ n, P18048615763162172572.a n = A363283 (n + 1)

theorem P18048615763162172572.correct : P18048615763162172572.Spec := by
  intro n
  simp only [A363283, Nat.add_sub_cancel]

end A363283

/-! ## A363283.P435648735656667690

`∑[gcd(n, n%2)]+1`
-/

namespace A363283.P435648735656667690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A363283.P435648735656667690

namespace A363283

/-- `∑[gcd(n, n%2)]+1` -/
def P435648735656667690.Spec : Prop :=
  ∀ n, (P435648735656667690.a n : ℤ) = A363283 (n + 1)

end A363283

/-! ## A363283.P15972159187180597567

`∑[n^∑{p}[n, val(#, 2)]]`
-/

namespace A363283.P15972159187180597567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (∑ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363283.P15972159187180597567

namespace A363283

/-- `∑[n^∑{p}[n, val(#, 2)]]` -/
def P15972159187180597567.Spec : Prop :=
  ∀ n, (P15972159187180597567.a n : ℤ) = A363283 (n + 1)

end A363283

/-! ## A363283.P3776724880592652906

`∑[∏{p}[n, n^val(#, 2)]]`
-/

namespace A363283.P3776724880592652906
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), n ^ SequenceMachineLib.valuation p 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363283.P3776724880592652906

namespace A363283

/-- `∑[∏{p}[n, n^val(#, 2)]]` -/
def P3776724880592652906.Spec : Prop :=
  ∀ n, (P3776724880592652906.a n : ℤ) = A363283 (n + 1)

end A363283

/-! ## A363283.P14864754514350877072

`∑[n^∑{p}[n, C(2, #)]]`
-/

namespace A363283.P14864754514350877072
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose 2 p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363283.P14864754514350877072

namespace A363283

/-- `∑[n^∑{p}[n, C(2, #)]]` -/
def P14864754514350877072.Spec : Prop :=
  ∀ n, (P14864754514350877072.a n : ℤ) = A363283 (n + 1)

end A363283

/-! ## A363283.P8013903200723176391

`∑[∏{p}[n, n^C(2, #)]]`
-/

namespace A363283.P8013903200723176391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), n ^ Nat.choose 2 p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363283.P8013903200723176391

namespace A363283

/-- `∑[∏{p}[n, n^C(2, #)]]` -/
def P8013903200723176391.Spec : Prop :=
  ∀ n, (P8013903200723176391.a n : ℤ) = A363283 (n + 1)

end A363283

/-! ## A363283.P17443036661009285816

`∑[C(n, ∑{p}[n, C(2, #)])]`
-/

namespace A363283.P17443036661009285816
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (∑ p ∈ Nat.primeFactors (f2 n), Nat.choose 2 p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363283.P17443036661009285816

namespace A363283

/-- `∑[C(n, ∑{p}[n, C(2, #)])]` -/
def P17443036661009285816.Spec : Prop :=
  ∀ n, (P17443036661009285816.a n : ℤ) = A363283 (n + 1)

end A363283

/-! ## A363283.P13888827165740303146

`∑[∏{p}[n, C(n, C(2, #))]]`
-/

namespace A363283.P13888827165740303146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.choose n (Nat.choose 2 p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363283.P13888827165740303146

namespace A363283

/-- `∑[∏{p}[n, C(n, C(2, #))]]` -/
def P13888827165740303146.Spec : Prop :=
  ∀ n, (P13888827165740303146.a n : ℤ) = A363283 (n + 1)

end A363283

/-! ## A363283.P8075514696028037829

`∪[(n+1)², n²+1]`
-/

namespace A363283.P8075514696028037829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A363283.P8075514696028037829

namespace A363283

/-- `∪[(n+1)², n²+1]` -/
def P8075514696028037829.Spec : Prop :=
  ∀ n, (P8075514696028037829.a n : ℤ) = A363283 (n + 1)

end A363283

/-! ## A363283.P10595892915258344024

`∑[floor(n/a(n-1))]` with `a(0)=1`
-/

namespace A363283.P10595892915258344024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(n : ℚ) / (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363283.P10595892915258344024

namespace A363283

/-- `∑[floor(n/a(n-1))]` -/
def P10595892915258344024.Spec : Prop :=
  ∀ n, P10595892915258344024.a n = A363283 (n + 1)

end A363283

/-! ## A363283.P7311091626445212471

`∑[floor(root(n, a(n-1)))]` with `a(0)=1`
-/

namespace A363283.P7311091626445212471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(n : ℝ) ^ (1 / (f1 (n - 1) : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363283.P7311091626445212471

namespace A363283

/-- `∑[floor(root(n, a(n-1)))]` -/
def P7311091626445212471.Spec : Prop :=
  ∀ n, P7311091626445212471.a n = A363283 (n + 1)

end A363283

/-! ## A363283.P17052923698270024477

`∑[n^(a(n-1)%2)]` with `a(0)=1`
-/

namespace A363283.P17052923698270024477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n ^ (f1 (n - 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363283.P17052923698270024477

namespace A363283

/-- `∑[n^(a(n-1)%2)]` -/
def P17052923698270024477.Spec : Prop :=
  ∀ n, (P17052923698270024477.a n : ℤ) = A363283 (n + 1)

end A363283

/-! ## A363283.P9332555132721209521

`∑[n/or(1, a(n-1))]` with `a(0)=1`
-/

namespace A363283.P9332555132721209521
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℚ) / (Int.lor 1 (SequenceMachineLib.roundAway (f1 (n - 1))) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363283.P9332555132721209521

namespace A363283

/-- `∑[n/or(1, a(n-1))]` -/
def P9332555132721209521.Spec : Prop :=
  ∀ n, P9332555132721209521.a n = (A363283 (n + 1) : ℚ)

end A363283

/-! ## A363283.P5695671158493940206

`∑[n^and(1, a(n-1))]` with `a(0)=1`
-/

namespace A363283.P5695671158493940206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n ^ Nat.land 1 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363283.P5695671158493940206

namespace A363283

/-- `∑[n^and(1, a(n-1))]` -/
def P5695671158493940206.Spec : Prop :=
  ∀ n, (P5695671158493940206.a n : ℤ) = A363283 (n + 1)

end A363283

/-! ## A363283.P9459938336376223019

`∑[ceil(n/a(n-1)²)]` with `a(0)=1`
-/

namespace A363283.P9459938336376223019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌈(n : ℚ) / (f1 (n - 1) ^ 2 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363283.P9459938336376223019

namespace A363283

/-- `∑[ceil(n/a(n-1)²)]` -/
def P9459938336376223019.Spec : Prop :=
  ∀ n, P9459938336376223019.a n = A363283 (n + 1)

end A363283

/-! ## A363283.P13111600606703271619

`∑[or(1, n)-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A363283.P13111600606703271619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (Nat.lor 1 n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363283.P13111600606703271619

namespace A363283

/-- `∑[or(1, n)-a(n-1)]` -/
def P13111600606703271619.Spec : Prop :=
  ∀ n, P13111600606703271619.a n = A363283 (n + 1)

end A363283

/-! ## A363283.P13882140699119651223

`∑[n-and(n, a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A363283.P13882140699119651223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (n : ℤ) - Int.land (n : ℤ) (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363283.P13882140699119651223

namespace A363283

/-- `∑[n-and(n, a(n-1))]` -/
def P13882140699119651223.Spec : Prop :=
  ∀ n, P13882140699119651223.a n = A363283 (n + 1)

end A363283

/-! ## A363283.P11820561580141488857

`∑[ceil(n^(2-a(n-1)))]` with `a(0)=1`
-/

namespace A363283.P11820561580141488857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌈(n : ℚ) ^ (2 - f1 (n - 1) : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363283.P11820561580141488857

namespace A363283

/-- `∑[ceil(n^(2-a(n-1)))]` -/
def P11820561580141488857.Spec : Prop :=
  ∀ n, P11820561580141488857.a n = A363283 (n + 1)

end A363283

/-! ## A363283.P11670745670983066671

`∑[floor(n*a(n-1)^(-1))]` with `a(0)=1`
-/

namespace A363283.P11670745670983066671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ⌊(n : ℚ) * (f1 (n - 1) : ℚ) ^ (-1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363283.P11670745670983066671

namespace A363283

/-- `∑[floor(n*a(n-1)^(-1))]` -/
def P11670745670983066671.Spec : Prop :=
  ∀ n, P11670745670983066671.a n = A363283 (n + 1)

end A363283

/-!
# A363284: Numbers that are square or square pyramidal.

The programs for A363284, the canonical program `A363284.P17953753216907145725` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363284 has offset 1).

The definition of A363284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363284.P17953753216907145725

`∪[n², ∑[n²]]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A363284

/-- `∪[n², ∑[n²]]` -/
def P17953753216907145725.Spec : Prop :=
  ∀ n, (P17953753216907145725.a n : ℤ) = A363284 (n + 1)

theorem P17953753216907145725.correct : P17953753216907145725.Spec := by
  intro n
  simp only [A363284, Nat.add_sub_cancel]

end A363284

/-! ## A363284.P15276651252013026511

`∪[n², A000330(n)]*A057427(n)`
-/

namespace A363284.P15276651252013026511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) * A057427 n

end

end A363284.P15276651252013026511

namespace A363284

/-- `∪[n², A000330(n)]*A057427(n)` -/
def P15276651252013026511.Spec : Prop :=
  ∀ n, P15276651252013026511.a n = A363284 (n + 1)

end A363284

/-! ## A363284.P5594648301625179599

`∪[n², A000330(n)]+Δ[A130330(n)]%2`
-/

namespace A363284.P5594648301625179599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130330 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) + Int.tmod (f3 (n + 1) - f3 n) 2

end

end A363284.P5594648301625179599

namespace A363284

/-- `∪[n², A000330(n)]+Δ[A130330(n)]%2` -/
def P5594648301625179599.Spec : Prop :=
  ∀ n, P5594648301625179599.a n = A363284 (n + 1)

end A363284

/-! ## A363284.P11456465023458680608

`∪[n², A000330(n)]^(Δ[A007623(n)]%2)`
-/

namespace A363284.P11456465023458680608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n : ℚ) ^ (Int.tmod (f3 (n + 1) - f3 n) 2 : ℤ)

end

end A363284.P11456465023458680608

namespace A363284

/-- `∪[n², A000330(n)]^(Δ[A007623(n)]%2)` -/
def P11456465023458680608.Spec : Prop :=
  ∀ n, P11456465023458680608.a n = (A363284 (n + 1) : ℚ)

end A363284

/-! ## A363284.P8879393057601039789

`A010051(2*(n+2))+∪[n², A000330(n)]`
-/

namespace A363284.P8879393057601039789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 2)) + (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A363284.P8879393057601039789

namespace A363284

/-- `A010051(2*(n+2))+∪[n², A000330(n)]` -/
def P8879393057601039789.Spec : Prop :=
  ∀ n, P8879393057601039789.a n = A363284 (n + 1)

end A363284

/-! ## A363284.P1715387173239692767

`∪[(n+1)², A000330(n)]%A001034(n+1)`
-/

namespace A363284.P1715387173239692767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A001034 (n + 1))

end

end A363284.P1715387173239692767

namespace A363284

/-- `∪[(n+1)², A000330(n)]%A001034(n+1)` -/
def P1715387173239692767.Spec : Prop :=
  ∀ n, P1715387173239692767.a n = A363284 (n + 1)

end A363284

/-! ## A363284.P15988162045914963474

`∪[n², A000330(n)]%A004798(n+1)`
-/

namespace A363284.P15988162045914963474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A004798 (n + 1))

end

end A363284.P15988162045914963474

namespace A363284

/-- `∪[n², A000330(n)]%A004798(n+1)` -/
def P15988162045914963474.Spec : Prop :=
  ∀ n, P15988162045914963474.a n = A363284 (n + 1)

end A363284

/-! ## A363284.P15657764201161281687

`∪[n², A000330(n)]%A025192(n)`
-/

namespace A363284.P15657764201161281687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A025192 n)

end

end A363284.P15657764201161281687

namespace A363284

/-- `∪[n², A000330(n)]%A025192(n)` -/
def P15657764201161281687.Spec : Prop :=
  ∀ n, P15657764201161281687.a n = A363284 (n + 1)

end A363284

/-! ## A363284.P1110262161150312004

`∪[A000330(n), (n+1)²]%A000351(n)`
-/

namespace A363284.P1110262161150312004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n : ℤ) (A000351 n)

end

end A363284.P1110262161150312004

namespace A363284

/-- `∪[A000330(n), (n+1)²]%A000351(n)` -/
def P1110262161150312004.Spec : Prop :=
  ∀ n, P1110262161150312004.a n = A363284 (n + 1)

end A363284

/-!
# A363285: a(n) is the smallest multiple k of 2^n such that |sigma(k) - 2*k| = 2^n, where sigma = A000203.

The programs for A363285, there is no canonical definition to state claims against.
-/

/-! ## A363285.P11052680754148137616

`A161150(A331217(n))`
-/

namespace A363285.P11052680754148137616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161150 (A331217 n).toNat

end

end A363285.P11052680754148137616

/-! ## A363285.P6198888662035830605

`A048671(A000079(n)*A201914(n))`
-/

namespace A363285.P6198888662035830605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (A000079 n * A201914 n).toNat

end

end A363285.P6198888662035830605

/-!
# A363286: Odd primes p such that the congruence 2^x == 1 (mod p) has no solution for 0 < x < (p - 1)/2.

The programs for A363286, there is no canonical definition to state claims against.
-/

/-! ## A363286.P14445761748762668459

`∪[A001122(n+1), A115591(n+1)]`
-/

namespace A363286.P14445761748762668459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363286.P14445761748762668459

/-! ## A363286.P6468797858343699487

`∪[A115591(n+1), A216371(n+1)]`
-/

namespace A363286.P6468797858343699487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363286.P6468797858343699487

/-! ## A363286.P12271441260339011353

`∪[A155072(n+1), A216371(n+1)]`
-/

namespace A363286.P12271441260339011353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A363286.P12271441260339011353

/-! ## A363286.P7856421210483955525

`A226181(lt[A261955(n), A103949(n)])`
-/

namespace A363286.P7856421210483955525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261955 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103949 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226181 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A363286.P7856421210483955525

/-! ## A363286.P4711712055694328961

`A357057(A085492(n+1))`
-/

namespace A363286.P4711712055694328961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357057 (A085492 (n + 1)).toNat

end

end A363286.P4711712055694328961

/-!
# A363287: Numbers which cannot be written as the sum of 4 distinct proper prime powers (A246547).

The programs for A363287, there is no canonical definition to state claims against.
-/

/-! ## A363287.P17300779169193770694

`∑[A043290(A183402(n+1))]`
-/

namespace A363287.P17300779169193770694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043290 (A183402 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363287.P17300779169193770694

/-! ## A363287.P15412077896056851715

`lt[A010106(n+2), A151727(n)]+1`
-/

namespace A363287.P15412077896056851715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010106 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151727 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A363287.P15412077896056851715

/-! ## A363287.P2940903766300496133

`lt[A136678(n+3), A127026(n+1)]`
-/

namespace A363287.P2940903766300496133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136678 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127026 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A363287.P2940903766300496133

/-! ## A363287.P17783315320133600063

`lt[A299045(n+3), A233764(n)]-1`
-/

namespace A363287.P17783315320133600063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299045 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A363287.P17783315320133600063

/-! ## A363287.P12769792384307279761

`∑[A318950(2*n+1)!]`
-/

namespace A363287.P12769792384307279761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A318950 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363287.P12769792384307279761

/-!
# A363288: a(n) = (2*n^3 - n^2 + 3*n - 2)/2.

The programs for A363288, the canonical program `A363288.P8724485179439552269` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363288 has offset 1).

The definition of A363288 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*(n+1)^3-(n+1)²+3*(n+1)-2)/2` (program `A363288.P7372719362022792564`, by `A363288.P7372719362022792564.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A363288.P7372719362022792564

`(2*(n+1)^3-(n+1)²+3*(n+1)-2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A363288.P7372719362022792564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) ^ 3 : ℤ) - ((n + 1) ^ 2 : ℤ) + (3 * (n + 1) : ℤ) - 2 : ℚ) / 2

end

end A363288.P7372719362022792564

namespace A363288

/-- `(2*(n+1)^3-(n+1)²+3*(n+1)-2)/2` -/
def P7372719362022792564.Spec : Prop :=
  ∀ n, P7372719362022792564.a n = (A363288 (n + 1) : ℚ)

theorem P7372719362022792564.correct : P7372719362022792564.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A363288, Nat.add_sub_cancel, A363288.P7372719362022792564.a, A363288.P8724485179439552269.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A363288, Nat.add_sub_cancel, A363288.P7372719362022792564.a, A363288.P8724485179439552269.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A363288

/-! ## A363288.P8724485179439552269

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=8, a(2)=26, a(3)=61`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A363288

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P8724485179439552269.Spec : Prop :=
  ∀ n, P8724485179439552269.a n = A363288 (n + 1)

theorem P8724485179439552269.correct : P8724485179439552269.Spec := by
  intro n
  simp only [A363288, Nat.add_sub_cancel]

end A363288

/-! ## A363288.P14815645721991655994

`A002411(n+1)+n*A000217(n+2)-A046092(n)`
-/

namespace A363288.P14815645721991655994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002411 (n + 1) + (n : ℤ) * A000217 (n + 2) - A046092 n

end

end A363288.P14815645721991655994

namespace A363288

/-- `A002411(n+1)+n*A000217(n+2)-A046092(n)` -/
def P14815645721991655994.Spec : Prop :=
  ∀ n, P14815645721991655994.a n = A363288 (n + 1)

end A363288

/-! ## A363288.P3861862093096770187

`(n+1)^3-C(n, 2)`
-/

namespace A363288.P3861862093096770187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 3 : ℤ) - (Nat.choose n 2 : ℤ)

end

end A363288.P3861862093096770187

namespace A363288

/-- `(n+1)^3-C(n, 2)` -/
def P3861862093096770187.Spec : Prop :=
  ∀ n, P3861862093096770187.a n = A363288 (n + 1)

end A363288

/-! ## A363288.P1919882746056467769

`∑[∑[floor(6/acot(n))-1]-1]`
-/

namespace A363288.P1919882746056467769
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊6 / SequenceMachineLib.acot (n : ℝ)⌋ - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363288.P1919882746056467769

namespace A363288

/-- `∑[∑[floor(6/acot(n))-1]-1]` -/
def P1919882746056467769.Spec : Prop :=
  ∀ n, P1919882746056467769.a n = A363288 (n + 1)

end A363288

/-! ## A363288.P2490379425604656443

`∑[6*n+a(n-1)-1]` with `a(0)=1, a(1)=7`
-/

namespace A363288.P2490379425604656443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  (6 * n : ℤ) + (f1 (n - 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363288.P2490379425604656443

namespace A363288

/-- `∑[6*n+a(n-1)-1]` -/
def P2490379425604656443.Spec : Prop :=
  ∀ n, P2490379425604656443.a n = A363288 (n + 1)

end A363288

/-! ## A363288.P7151433486079383809

`∑[6*n-(1-a(n-1))]` with `a(0)=1, a(1)=7`
-/

namespace A363288.P7151433486079383809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  (6 * n : ℤ) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363288.P7151433486079383809

namespace A363288

/-- `∑[6*n-(1-a(n-1))]` -/
def P7151433486079383809.Spec : Prop :=
  ∀ n, P7151433486079383809.a n = A363288 (n + 1)

end A363288

/-! ## A363288.P4613768577224439191

`abs(Δ[n²]+∑[n*(xor(2, 4*n)-n)])`
-/

namespace A363288.P4613768577224439191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.xor 2 (4 * n) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j|

end

end A363288.P4613768577224439191

namespace A363288

/-- `abs(Δ[n²]+∑[n*(xor(2, 4*n)-n)])` -/
def P4613768577224439191.Spec : Prop :=
  ∀ n, P4613768577224439191.a n = A363288 (n + 1)

end A363288

/-! ## A363288.P12941153238399855730

`floor(∑[xor(2, (2*n+1+n)²)/3]+n)`
-/

namespace A363288.P12941153238399855730
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 ((2 * n + 1 + n) ^ 2) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)⌋

end

end A363288.P12941153238399855730

namespace A363288

/-- `floor(∑[xor(2, (2*n+1+n)²)/3]+n)` -/
def P12941153238399855730.Spec : Prop :=
  ∀ n, P12941153238399855730.a n = A363288 (n + 1)

end A363288

/-! ## A363288.P17703831317014237012

`ceil(∑[xor(2, (2*n+1+n)²)/3]+n)`
-/

namespace A363288.P17703831317014237012
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 ((2 * n + 1 + n) ^ 2) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)⌉

end

end A363288.P17703831317014237012

namespace A363288

/-- `ceil(∑[xor(2, (2*n+1+n)²)/3]+n)` -/
def P17703831317014237012.Spec : Prop :=
  ∀ n, P17703831317014237012.a n = A363288 (n + 1)

end A363288

/-! ## A363288.P17512884639481876403

`round(∑[xor(2, (2*n+1+n)²)/3]+n)`
-/

namespace A363288.P17512884639481876403
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 ((2 * n + 1 + n) ^ 2) : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ))

end

end A363288.P17512884639481876403

namespace A363288

/-- `round(∑[xor(2, (2*n+1+n)²)/3]+n)` -/
def P17512884639481876403.Spec : Prop :=
  ∀ n, P17512884639481876403.a n = A363288 (n + 1)

end A363288

/-! ## A363288.P2585074714778620839

`∑[∑[floor((or(1, 2*n)+n)*(2*n+1)/(n+1))]]`
-/

namespace A363288.P2585074714778620839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((Nat.lor 1 (2 * n) + n) * (2 * n + 1) : ℚ) / (n + 1 : ℚ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A363288.P2585074714778620839

namespace A363288

/-- `∑[∑[floor((or(1, 2*n)+n)*(2*n+1)/(n+1))]]` -/
def P2585074714778620839.Spec : Prop :=
  ∀ n, P2585074714778620839.a n = A363288 (n + 1)

end A363288

/-! ## A363288.P3882507221983552828

`A081436(n)+n`
-/

namespace A363288.P3882507221983552828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081436 n + (n : ℤ)

end

end A363288.P3882507221983552828

namespace A363288

/-- `A081436(n)+n` -/
def P3882507221983552828.Spec : Prop :=
  ∀ n, P3882507221983552828.a n = A363288 (n + 1)

end A363288

/-! ## A363288.P16553124168474827812

`∑[A056109(n)]+n`
-/

namespace A363288.P16553124168474827812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056109 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A363288.P16553124168474827812

namespace A363288

/-- `∑[A056109(n)]+n` -/
def P16553124168474827812.Spec : Prop :=
  ∀ n, P16553124168474827812.a n = A363288 (n + 1)

end A363288

/-! ## A363288.P13524748555572277700

`A261893(n)+∑[n]`
-/

namespace A363288.P13524748555572277700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261893 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A363288.P13524748555572277700

namespace A363288

/-- `A261893(n)+∑[n]` -/
def P13524748555572277700.Spec : Prop :=
  ∀ n, P13524748555572277700.a n = A363288 (n + 1)

end A363288

/-! ## A363288.P17909163907765429922

`∑[A141631(n+1)]-1`
-/

namespace A363288.P17909163907765429922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A363288.P17909163907765429922

namespace A363288

/-- `∑[A141631(n+1)]-1` -/
def P17909163907765429922.Spec : Prop :=
  ∀ n, P17909163907765429922.a n = A363288 (n + 1)

end A363288

/-! ## A363288.P8013702703392774357

`A147656(n)+(n+1)²`
-/

namespace A363288.P8013702703392774357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147656 n + ((n + 1) ^ 2 : ℤ)

end

end A363288.P8013702703392774357

namespace A363288

/-- `A147656(n)+(n+1)²` -/
def P8013702703392774357.Spec : Prop :=
  ∀ n, P8013702703392774357.a n = A363288 (n + 1)

end A363288

/-! ## A363288.P12651290617048448094

`A002414(n+1)-n²`
-/

namespace A363288.P12651290617048448094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 (n + 1) - (n ^ 2 : ℤ)

end

end A363288.P12651290617048448094

namespace A363288

/-- `A002414(n+1)-n²` -/
def P12651290617048448094.Spec : Prop :=
  ∀ n, P12651290617048448094.a n = A363288 (n + 1)

end A363288

/-! ## A363288.P6721481487499584372

`A094792(n)-∑[n+1]`
-/

namespace A363288.P6721481487499584372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094792 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A363288.P6721481487499584372

namespace A363288

/-- `A094792(n)-∑[n+1]` -/
def P6721481487499584372.Spec : Prop :=
  ∀ n, P6721481487499584372.a n = A363288 (n + 1)

end A363288

/-! ## A363288.P6038140523810466600

`A000566(n+1)+n^3`
-/

namespace A363288.P6038140523810466600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (n + 1) + (n ^ 3 : ℤ)

end

end A363288.P6038140523810466600

namespace A363288

/-- `A000566(n+1)+n^3` -/
def P6038140523810466600.Spec : Prop :=
  ∀ n, P6038140523810466600.a n = A363288 (n + 1)

end A363288

/-!
# A363289: Sum of the divisor complements of the unitary squarefree divisors of n.

The programs for A363289, the canonical program `A363289.P16353969291732176041` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363289 has offset 1).

The definition of A363289 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A363289.P8701028491797310706

`∑{d}[A055231(n+1), (n+1)/#]`
-/

namespace A363289.P8701028491797310706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (n + 1 : ℚ) / (d : ℚ)

end

end A363289.P8701028491797310706

namespace A363289

/-- `∑{d}[A055231(n+1), (n+1)/#]` -/
def P8701028491797310706.Spec : Prop :=
  ∀ n, P8701028491797310706.a n = (A363289 (n + 1) : ℚ)

end A363289

/-! ## A363289.P10849056396781491665

`gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])*A092261(n+1)`
-/

namespace A363289.P10849056396781491665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)) : ℤ) * A092261 (n + 1)

end

end A363289.P10849056396781491665

namespace A363289

/-- `gcd(n+1, ∑{p}[n+1, ((n+1)/#)²])*A092261(n+1)` -/
def P10849056396781491665.Spec : Prop :=
  ∀ n, P10849056396781491665.a n = A363289 (n + 1)

end A363289

/-! ## A363289.P5417550382920069841

`A057521(n+1)*A092261(n+1)`
-/

namespace A363289.P5417550382920069841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1) * A092261 (n + 1)

end

end A363289.P5417550382920069841

namespace A363289

/-- `A057521(n+1)*A092261(n+1)` -/
def P5417550382920069841.Spec : Prop :=
  ∀ n, P5417550382920069841.a n = A363289 (n + 1)

end A363289

/-! ## A363289.P16353969291732176041

`∑{d}[A055231(n+1), #]*A057521(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A363289

/-- `∑{d}[A055231(n+1), #]*A057521(n+1)` -/
def P16353969291732176041.Spec : Prop :=
  ∀ n, P16353969291732176041.a n = A363289 (n + 1)

theorem P16353969291732176041.correct : P16353969291732176041.Spec := by
  intro n
  simp only [A363289, Nat.add_sub_cancel]

end A363289

/-! ## A363289.P3089659705957159935

`∑{d}[n+1, A008683(#)*A107758((n+1)/#)]`
-/

namespace A363289.P3089659705957159935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A107758 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A363289.P3089659705957159935

namespace A363289

/-- `∑{d}[n+1, A008683(#)*A107758((n+1)/#)]` -/
def P3089659705957159935.Spec : Prop :=
  ∀ n, P3089659705957159935.a n = A363289 (n + 1)

end A363289

/-! ## A363289.P4411558093975799098

`A000113(A055231(n+1))*A057521(n+1)`
-/

namespace A363289.P4411558093975799098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000113 (A055231 (n + 1)).toNat * A057521 (n + 1)

end

end A363289.P4411558093975799098

namespace A363289

/-- `A000113(A055231(n+1))*A057521(n+1)` -/
def P4411558093975799098.Spec : Prop :=
  ∀ n, P4411558093975799098.a n = A363289 (n + 1)

end A363289

/-! ## A363289.P11453159854942636514

`A064549(A003557(n+1))*A092261(n+1)`
-/

namespace A363289.P11453159854942636514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064549 (A003557 (n + 1)).toNat * A092261 (n + 1)

end

end A363289.P11453159854942636514

namespace A363289

/-- `A064549(A003557(n+1))*A092261(n+1)` -/
def P11453159854942636514.Spec : Prop :=
  ∀ n, P11453159854942636514.a n = A363289 (n + 1)

end A363289

/-! ## A363289.P8050823988773605634

`∑{d}[A000007(3*(n+1))+∏{p}[n+1, lcm(n+1, #²)/(n+1)], (n+1)/#]`
-/

namespace A363289.P8050823988773605634
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (3 * (n + 1)) : ℚ) + ∏ p ∈ Nat.primeFactors (f2 n), (Nat.lcm (n + 1) (p ^ 2) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, (n + 1 : ℚ) / (d : ℚ)

end

end A363289.P8050823988773605634

namespace A363289

/-- `∑{d}[A000007(3*(n+1))+∏{p}[n+1, lcm(n+1, #²)/(n+1)], (n+1)/#]` -/
def P8050823988773605634.Spec : Prop :=
  ∀ n, P8050823988773605634.a n = (A363289 (n + 1) : ℚ)

end A363289

/-!
# A363291: Sum of divisors of 4*n-1 of form 4*k+1.

The programs for A363291, the canonical program `A363291.P5280356287079717182` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363291 has offset 1).

The definition of A363291 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A050449, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A363291.P5280356287079717182

`A050449(4*(n+1)-1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A363291

/-- `A050449(4*(n+1)-1)` -/
def P5280356287079717182.Spec : Prop :=
  ∀ n, P5280356287079717182.a n = A363291 (n + 1)

theorem P5280356287079717182.correct : P5280356287079717182.Spec := by
  intro n
  simp only [A363291, Nat.add_sub_cancel]

end A363291

/-! ## A363291.P16460607503025175893

`A239053(n+1)-A363359(n+1)`
-/

namespace A363291.P16460607503025175893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239053 (n + 1) - A363359 (n + 1)

end

end A363291.P16460607503025175893

namespace A363291

/-- `A239053(n+1)-A363359(n+1)` -/
def P16460607503025175893.Spec : Prop :=
  ∀ n, P16460607503025175893.a n = A363291 (n + 1)

end A363291

/-! ## A363291.P953670615446701589

`A239053(n+1)/2-A053091(n+1)`
-/

namespace A363291.P953670615446701589
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239053 (n + 1) : ℚ) / 2 - (A053091 (n + 1) : ℚ)

end

end A363291.P953670615446701589

namespace A363291

/-- `A239053(n+1)/2-A053091(n+1)` -/
def P953670615446701589.Spec : Prop :=
  ∀ n, P953670615446701589.a n = (A363291 (n + 1) : ℚ)

end A363291

/-! ## A363291.P15296637792301002088

`A363316(2*(n+1))`
-/

namespace A363291.P15296637792301002088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363316 (2 * (n + 1))

end

end A363291.P15296637792301002088

namespace A363291

/-- `A363316(2*(n+1))` -/
def P15296637792301002088.Spec : Prop :=
  ∀ n, P15296637792301002088.a n = A363291 (n + 1)

end A363291

/-! ## A363291.P2179020261074846576

`A008438(2*n+1)-A363392(2*(n+1))`
-/

namespace A363291.P2179020261074846576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008438 (2 * n + 1) - A363392 (2 * (n + 1))

end

end A363291.P2179020261074846576

namespace A363291

/-- `A008438(2*n+1)-A363392(2*(n+1))` -/
def P2179020261074846576.Spec : Prop :=
  ∀ n, P2179020261074846576.a n = A363291 (n + 1)

end A363291

/-! ## A363291.P12671849876549110086

`A293901(3*(n+1)+n)`
-/

namespace A363291.P12671849876549110086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293901 (3 * (n + 1) + n)

end

end A363291.P12671849876549110086

namespace A363291

/-- `A293901(3*(n+1)+n)` -/
def P12671849876549110086.Spec : Prop :=
  ∀ n, P12671849876549110086.a n = A363291 (n + 1)

end A363291

/-! ## A363291.P9368144786651921073

`A050464(3*(n+1)+n)`
-/

namespace A363291.P9368144786651921073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050464 (3 * (n + 1) + n)

end

end A363291.P9368144786651921073

namespace A363291

/-- `A050464(3*(n+1)+n)` -/
def P9368144786651921073.Spec : Prop :=
  ∀ n, P9368144786651921073.a n = A363291 (n + 1)

end A363291

/-! ## A363291.P16509059965063711688

`A082053(3*(n+1)+n)`
-/

namespace A363291.P16509059965063711688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082053 (3 * (n + 1) + n)

end

end A363291.P16509059965063711688

namespace A363291

/-- `A082053(3*(n+1)+n)` -/
def P16509059965063711688.Spec : Prop :=
  ∀ n, P16509059965063711688.a n = A363291 (n + 1)

end A363291

/-! ## A363291.P13584426493658071635

`A239053(n+1)-A050452(record[xor(3, n)])`
-/

namespace A363291.P13584426493658071635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239053 (n + 1) - A050452 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A363291.P13584426493658071635

namespace A363291

/-- `A239053(n+1)-A050452(record[xor(3, n)])` -/
def P13584426493658071635.Spec : Prop :=
  ∀ n, P13584426493658071635.a n = A363291 (n + 1)

end A363291

/-! ## A363291.P4828808169337975262

`A239053(n+1)-A050452(4*n+3)`
-/

namespace A363291.P4828808169337975262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239053 (n + 1) - A050452 (4 * n + 3)

end

end A363291.P4828808169337975262

namespace A363291

/-- `A239053(n+1)-A050452(4*n+3)` -/
def P4828808169337975262.Spec : Prop :=
  ∀ n, P4828808169337975262.a n = A363291 (n + 1)

end A363291

/-! ## A363291.P17756673770741987577

`A239053(n+1)-A050460(3*(n+1)+n)`
-/

namespace A363291.P17756673770741987577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239053 (n + 1) - A050460 (3 * (n + 1) + n)

end

end A363291.P17756673770741987577

namespace A363291

/-- `A239053(n+1)-A050460(3*(n+1)+n)` -/
def P17756673770741987577.Spec : Prop :=
  ∀ n, P17756673770741987577.a n = A363291 (n + 1)

end A363291

/-! ## A363291.P17624614014650415547

`A001281(A239053(n+1))-A053091(n+1)`
-/

namespace A363291.P17624614014650415547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A239053 (n + 1)).toNat - A053091 (n + 1)

end

end A363291.P17624614014650415547

namespace A363291

/-- `A001281(A239053(n+1))-A053091(n+1)` -/
def P17624614014650415547.Spec : Prop :=
  ∀ n, P17624614014650415547.a n = A363291 (n + 1)

end A363291

/-!
# A363292: Numbers whose sum of (distinct) prime divisors (A008472) equals 7.

The programs for A363292, there is no canonical definition to state claims against.
-/

/-! ## A363292.P14474819914335188580

`eq[4, A066328(n+1)]+1`
-/

namespace A363292.P14474819914335188580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363292.P14474819914335188580

/-! ## A363292.P16743309723258742923

`eq[7, A008472(n+1)]+1`
-/

namespace A363292.P16743309723258742923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363292.P16743309723258742923

/-! ## A363292.P8595998368918372718

`eq[4, A000720(A007947(n+1))]+1`
-/

namespace A363292.P8595998368918372718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A363292.P8595998368918372718

/-! ## A363292.P10430046161376584839

`A081382(a(n-1))` with `a(0)=7`
-/

namespace A363292.P10430046161376584839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A081382 (a (n - 1)).toNat

end

end A363292.P10430046161376584839

/-! ## A363292.P2729008127953160691

`eq[4, A066328(A028310(n))]`
-/

namespace A363292.P2729008127953160691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066328 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A363292.P2729008127953160691

/-!
# A363294: G.f. A(x) satisfies: A(x) = x * exp( A(x)^2/x + A(-x^2)^2/(2*x^2) + A(x^3)^2/(3*x^3) + A(-x^4)^2/(4*x^4) + ... ).

The programs for A363294, there is no canonical definition to state claims against.
-/

/-! ## A363294.P12458337488232603884

`A387141(A389410(n+1))`
-/

namespace A363294.P12458337488232603884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387141 (A389410 (n + 1)).toNat

end

end A363294.P12458337488232603884

/-! ## A363294.P10102119571725740867

`A249728(n^n)`
-/

namespace A363294.P10102119571725740867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249728 (n ^ n)

end

end A363294.P10102119571725740867

/-!
# A363298: Number of refactorable unitary divisors of n.

The programs for A363298, there is no canonical definition to state claims against.
-/

/-! ## A363298.P14625458916813804634

`gcd(A000001(A016754(n)), A023645(n+1))`
-/

namespace A363298.P14625458916813804634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000001 (A016754 n).toNat) (A023645 (n + 1))

end

end A363298.P14625458916813804634

/-! ## A363298.P16464616704184693047

`A043276(A363085(n+1)^A043276(n+1))`
-/

namespace A363298.P16464616704184693047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (SequenceMachineLib.roundAway ((A363085 (n + 1) : ℚ) ^ (A043276 (n + 1) : ℤ))).toNat

end

end A363298.P16464616704184693047

/-! ## A363298.P15993619569077243397

`gcd(A063659(A063659(n+1)), A063690(n+1))`
-/

namespace A363298.P15993619569077243397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A063659 (A063659 (n + 1)).toNat) (A063690 (n + 1))

end

end A363298.P15993619569077243397

/-! ## A363298.P15067725839062081191

`gcd(A069276(n+1), A338050(A363085(n+1)))`
-/

namespace A363298.P15067725839062081191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069276 (n + 1)) (A338050 (A363085 (n + 1)).toNat)

end

end A363298.P15067725839062081191

/-! ## A363298.P3750978017440900444

`A060369(gcd(A297963(2*n), A329411(n+1)))`
-/

namespace A363298.P3750978017440900444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060369 (Int.gcd (A297963 (2 * n)) (A329411 (n + 1)))

end

end A363298.P3750978017440900444

/-!
# A363299: a(n) is the sum of the n-th powers of the terms of row 4 of Pascal's triangle.

The programs for A363299, the canonical program `A363299.P9999244765055945296` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A363299 has offset 0).

The definition of A363299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A363299.P9999244765055945296

`6^n+2*(4^n+1)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A363299

/-- `6^n+2*(4^n+1)` -/
def P9999244765055945296.Spec : Prop :=
  ∀ n, (P9999244765055945296.a n : ℤ) = A363299 n

theorem P9999244765055945296.correct : P9999244765055945296.Spec := by
  intro n
  simp only [A363299]

end A363299

/-! ## A363299.P4288287162579200076

`A309010(eq[4, A002262(n)])`
-/

namespace A363299.P4288287162579200076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A363299.P4288287162579200076

namespace A363299

/-- `A309010(eq[4, A002262(n)])` -/
def P4288287162579200076.Spec : Prop :=
  ∀ n, P4288287162579200076.a n = A363299 n

end A363299

/-! ## A363299.P14587695404190867029

`A309010(A000096(n+3)+5)`
-/

namespace A363299.P14587695404190867029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309010 (A000096 (n + 3) + 5).toNat

end

end A363299.P14587695404190867029

namespace A363299

/-- `A309010(A000096(n+3)+5)` -/
def P14587695404190867029.Spec : Prop :=
  ∀ n, P14587695404190867029.a n = A363299 n

end A363299

/-! ## A363299.P15164772564650281370

`A000027(A094373(2*(n+1))+A062394(n))`
-/

namespace A363299.P15164772564650281370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A094373 (2 * (n + 1)) + A062394 n).toNat

end

end A363299.P15164772564650281370

namespace A363299

/-- `A000027(A094373(2*(n+1))+A062394(n))` -/
def P15164772564650281370.Spec : Prop :=
  ∀ n, P15164772564650281370.a n = A363299 n

end A363299

