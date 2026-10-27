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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
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
# A300700: Triangle read by rows: T(n, n-k) = number of k-faces of the concertina n-cube.

The programs for A300700, there is no canonical definition to state claims against.
-/

/-! ## A300700.P15725686235315890562

`A229489(2^A188333(n+1))`
-/

namespace A300700.P15725686235315890562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229489 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A188333 (n + 1) : ℤ))).toNat

end

end A300700.P15725686235315890562

/-! ## A300700.P5835645499533757700

`A007732(C(A301726(n), A180662(n)))`
-/

namespace A300700.P5835645499533757700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (Nat.choose (A301726 n).toNat (A180662 n).toNat)

end

end A300700.P5835645499533757700

/-! ## A300700.P12922311249586647055

`A085684(A124767(n)+A002145(n+1))`
-/

namespace A300700.P12922311249586647055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085684 (A124767 n + A002145 (n + 1)).toNat

end

end A300700.P12922311249586647055

/-! ## A300700.P8578362908168799229

`A000010(A245789(n+1)%A095619(n))`
-/

namespace A300700.P8578362908168799229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.tmod (A245789 (n + 1)) (A095619 n)).toNat

end

end A300700.P8578362908168799229

/-! ## A300700.P9160241645965226030

`gcd(A000385(A097190(n)), A241647(n+1))`
-/

namespace A300700.P9160241645965226030
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000385 (A097190 n).toNat) (A241647 (n + 1))

end

end A300700.P9160241645965226030

/-!
# A300701: a(n) = number of faces in a concertina n-cube.

The programs for A300701, there is no canonical definition to state claims against.
-/

/-! ## A300701.P2922554279359537604

`A274529(A331658(n))`
-/

namespace A300701.P2922554279359537604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274529 (A331658 n).toNat

end

end A300701.P2922554279359537604

/-!
# A300703: Number of compositions (ordered partitions) of n into prime parts that do not divide n.

The programs for A300703, there is no canonical definition to state claims against.
-/

/-! ## A300703.P15447049428017185189

`A333221(A300706(n)+1)`
-/

namespace A300703.P15447049428017185189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333221 (A300706 n + 1).toNat

end

end A300703.P15447049428017185189

/-! ## A300703.P17718306516973280383

`and(A273533(ceil(2^(n-1))), A300706(n))`
-/

namespace A300703.P17718306516973280383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A273533 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat) (A300706 n)

end

end A300703.P17718306516973280383

/-! ## A300703.P6680240425856900879

`and(A061579(A048578(n)), A300706(n))`
-/

namespace A300703.P6680240425856900879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A061579 (A048578 n).toNat) (A300706 n)

end

end A300703.P6680240425856900879

/-! ## A300703.P2107402024956897524

`and(A005408(A241731(n)), A300706(n))`
-/

namespace A300703.P2107402024956897524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005408 (A241731 n).toNat) (A300706 n)

end

end A300703.P2107402024956897524

/-! ## A300703.P16281473875756138561

`and(A007645(A282684(n)), A300706(n))`
-/

namespace A300703.P16281473875756138561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007645 (A282684 n).toNat) (A300706 n)

end

end A300703.P16281473875756138561

/-!
# A300705: Triangle T(n,k) read by rows: the number of n-node connected graphs with k components with no cycles of length less than 5.

The programs for A300705, there is no canonical definition to state claims against.
-/

/-! ## A300705.P14549197803751516893

`A117707(ceil(A293808(n)/2))`
-/

namespace A300705.P14549197803751516893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117707 ⌈(A293808 n : ℚ) / 2⌉.toNat

end

end A300705.P14549197803751516893

/-! ## A300705.P11255420513809829557

`A163352(ceil(A293808(n)/2))`
-/

namespace A300705.P11255420513809829557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 ⌈(A293808 n : ℚ) / 2⌉.toNat

end

end A300705.P11255420513809829557

/-! ## A300705.P16453306771365243601

`A172263(ceil(A293808(n)/2))`
-/

namespace A300705.P16453306771365243601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 ⌈(A293808 n : ℚ) / 2⌉.toNat

end

end A300705.P16453306771365243601

/-! ## A300705.P16162448665686412713

`A172263(round(A293808(n)/2))`
-/

namespace A300705.P16162448665686412713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172263 (SequenceMachineLib.roundAway ((A293808 n : ℚ) / 2)).toNat

end

end A300705.P16162448665686412713

/-! ## A300705.P16269393520357296359

`A255636(A038722(n+1)%A019998(n))`
-/

namespace A300705.P16269393520357296359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255636 (Int.tmod (A038722 (n + 1)) (A019998 n)).toNat

end

end A300705.P16269393520357296359

/-!
# A300706: Number of compositions (ordered partitions) of n into squarefree parts that do not divide n.

The programs for A300706, there is no canonical definition to state claims against.
-/

/-! ## A300706.P12048370908143134081

`A087051(A300703(n))%A167614(n+1)`
-/

namespace A300706.P12048370908143134081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087051 (A300703 n).toNat) (A167614 (n + 1))

end

end A300706.P12048370908143134081

/-!
# A300708: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with x,y,z,w nonnegative integers and z <= w such that x or y is a square and x - y is also a square.

The programs for A300708, there is no canonical definition to state claims against.
-/

/-! ## A300708.P12201774839686839569

`A327222(A185037(n))+A273404(n)`
-/

namespace A300708.P12201774839686839569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 (A185037 n).toNat + A273404 n

end

end A300708.P12201774839686839569

/-! ## A300708.P8134351294212477287

`A327222(A185037(n))+A281976(n)`
-/

namespace A300708.P8134351294212477287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327222 (A185037 n).toNat + A281976 n

end

end A300708.P8134351294212477287

/-! ## A300708.P3462317360964769265

`A273404(n)+∑[A102683(A339502(n+3))]`
-/

namespace A300708.P3462317360964769265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A339502 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273404 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300708.P3462317360964769265

/-! ## A300708.P6372375253304406585

`A281976(n)+∑[A102683(A339502(n+3))]`
-/

namespace A300708.P6372375253304406585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102683 (A339502 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281976 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300708.P6372375253304406585

/-! ## A300708.P3693087795805260776

`A273404(n)+A102683(A185037(n)²)`
-/

namespace A300708.P3693087795805260776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273404 n + A102683 (A185037 n ^ 2).toNat

end

end A300708.P3693087795805260776

/-!
# A300711: a(n) = A000367(n)/A001067(n).

The programs for A300711, there is no canonical definition to state claims against.
-/

/-! ## A300711.P5931254347994174797

`A002445(n+1)*2*(n+1)/A075180(2*(n+1)-1)`
-/

namespace A300711.P5931254347994174797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 (n + 1) * (2 * (n + 1) : ℤ) : ℚ) / (A075180 (2 * (n + 1) - 1) : ℚ)

end

end A300711.P5931254347994174797

/-! ## A300711.P10981185297058294409

`A000367(n+1)/A001067(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A300711.P10981185297058294409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000367 (n + 1) : ℚ) / (A001067 (n + 1) : ℚ)

end

end A300711.P10981185297058294409

/-! ## A300711.P16655484605699863014

`gcd(n+1, A111008(n+1))`
-/

namespace A300711.P16655484605699863014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A111008 (n + 1))

end

end A300711.P16655484605699863014

/-! ## A300711.P13702347117475246121

`A004277(n+1)/gcd(A004277(n+1), A006863(n+1))`
-/

namespace A300711.P13702347117475246121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004277 (n + 1) : ℚ) / (Int.gcd (A004277 (n + 1)) (A006863 (n + 1)) : ℚ)

end

end A300711.P13702347117475246121

/-! ## A300711.P9519023359803926596

`2*(n+1)/gcd(2*(n+1), A075180(2*n+1))`
-/

namespace A300711.P9519023359803926596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (Int.gcd (2 * (n + 1) : ℤ) (A075180 (2 * n + 1)) : ℚ)

end

end A300711.P9519023359803926596

/-! ## A300711.P2927571381537567650

`lcm(2*(n+1), A079612(2*(n+1)))/A079612(2*(n+1))`
-/

namespace A300711.P2927571381537567650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (2 * (n + 1) : ℤ) (A079612 (2 * (n + 1))) : ℚ) / (A079612 (2 * (n + 1)) : ℚ)

end

end A300711.P2927571381537567650

/-! ## A300711.P4952999966795294311

`A092486(2*n+1)/gcd(A079612(2*(n+1)), A092486(2*n+1))`
-/

namespace A300711.P4952999966795294311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092486 (2 * n + 1) : ℚ) / (Int.gcd (A079612 (2 * (n + 1))) (A092486 (2 * n + 1)) : ℚ)

end

end A300711.P4952999966795294311

/-! ## A300711.P5678629028531727512

`A271830(2*n+1)/gcd(A185633(2*(n+1)), A271830(2*n+1))`
-/

namespace A300711.P5678629028531727512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A271830 (2 * n + 1) : ℚ) / (Int.gcd (A185633 (2 * (n + 1))) (A271830 (2 * n + 1)) : ℚ)

end

end A300711.P5678629028531727512

/-! ## A300711.P7128943977301120930

`(n+1)/A195989(n+1)`
-/

namespace A300711.P7128943977301120930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A195989 (n + 1) : ℚ)

end

end A300711.P7128943977301120930

/-! ## A300711.P17864780470920722987

`A300330(2*(n+1))`
-/

namespace A300711.P17864780470920722987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300330 (2 * (n + 1))

end

end A300711.P17864780470920722987

/-! ## A300711.P17514137331883648847

`2*(n+1)/A193267(2*(n+1))`
-/

namespace A300711.P17514137331883648847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℚ) / (A193267 (2 * (n + 1)) : ℚ)

end

end A300711.P17514137331883648847

/-! ## A300711.P10714733348825338126

`A000265(A300330(n+2+n))`
-/

namespace A300711.P10714733348825338126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A300330 (n + 2 + n)).toNat

end

end A300711.P10714733348825338126

/-! ## A300711.P10641053309471719159

`gcd(A030640(n), A281648(n+1))`
-/

namespace A300711.P10641053309471719159
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030640 n) (A281648 (n + 1))

end

end A300711.P10641053309471719159

/-! ## A300711.P2900878987634778983

`A228838(n+1)/A036283(n+1)`
-/

namespace A300711.P2900878987634778983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A228838 (n + 1) : ℚ) / (A036283 (n + 1) : ℚ)

end

end A300711.P2900878987634778983

/-! ## A300711.P7014143342630747289

`A002445(n+1)*A005843(n+1)/A006953(n+1)`
-/

namespace A300711.P7014143342630747289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002445 (n + 1) * A005843 (n + 1) : ℚ) / (A006953 (n + 1) : ℚ)

end

end A300711.P7014143342630747289

/-! ## A300711.P18432789953366956938

`A000027(n+1)/gcd(A000027(n+1), A006953(n+1))`
-/

namespace A300711.P18432789953366956938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (Int.gcd (A000027 (n + 1)) (A006953 (n + 1)) : ℚ)

end

end A300711.P18432789953366956938

/-! ## A300711.P16179488266479642759

`A164877(n+1)/A006953(n+1)`
-/

namespace A300711.P16179488266479642759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164877 (n + 1) : ℚ) / (A006953 (n + 1) : ℚ)

end

end A300711.P16179488266479642759

/-! ## A300711.P14303957662600602344

`A164877(n+1)/A075180(2*n+1)`
-/

namespace A300711.P14303957662600602344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164877 (n + 1) : ℚ) / (A075180 (2 * n + 1) : ℚ)

end

end A300711.P14303957662600602344

/-! ## A300711.P9526778767306786239

`A164877(n+1)/A185633(2*(n+1))`
-/

namespace A300711.P9526778767306786239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164877 (n + 1) : ℚ) / (A185633 (2 * (n + 1)) : ℚ)

end

end A300711.P9526778767306786239

/-! ## A300711.P2196526839122344656

`A164877(n+1)/(A036283(n+1)+A036283(n+1))`
-/

namespace A300711.P2196526839122344656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164877 (n + 1) : ℚ) / (A036283 (n + 1) + A036283 (n + 1) : ℚ)

end

end A300711.P2196526839122344656

/-!
# A300712: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with x,y,z,w nonnegative integers such that 3*x or y is a square and x - y is twice a square.

The programs for A300712, there is no canonical definition to state claims against.
-/

/-! ## A300712.P2276752103836125270

`gcd(A008888(A027187(n)), A282463(n))`
-/

namespace A300712.P2276752103836125270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008888 (A027187 n).toNat) (A282463 n)

end

end A300712.P2276752103836125270

/-! ## A300712.P15320561949354295854

`A001221(A144253(n+1)+A006093(n+1))`
-/

namespace A300712.P15320561949354295854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A144253 (n + 1) + A006093 (n + 1)).toNat

end

end A300712.P15320561949354295854

/-! ## A300712.P8665552142159365089

`A001221(A144253(n+1)+eq[2, A000005(n+1)])`
-/

namespace A300712.P8665552142159365089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A144253 (n + 1) + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)).toNat

end

end A300712.P8665552142159365089

/-! ## A300712.P12367960365677256022

`A300708(8*n)%A265772(n+1)`
-/

namespace A300712.P12367960365677256022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300708 (8 * n)) (A265772 (n + 1))

end

end A300712.P12367960365677256022

/-! ## A300712.P1022909888565834357

`A099652(3*n+5)%(A282463(n)+1)`
-/

namespace A300712.P1022909888565834357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099652 (3 * n + 5)) (A282463 n + 1)

end

end A300712.P1022909888565834357

/-!
# A300716: a(1) = 0; for n > 1, a(n) = Product_{d|n, 1<d<n} prime(A101296(d)-1).

The programs for A300716, there is no canonical definition to state claims against.
-/

/-! ## A300716.P18085562323818347771

`A305812(A046523(n+1)%A272723(n+1))`
-/

namespace A300716.P18085562323818347771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305812 (Int.tmod (A046523 (n + 1)) (A272723 (n + 1))).toNat

end

end A300716.P18085562323818347771

/-! ## A300716.P13289894755278905470

`A305812(A046523(n+1))%A274522(n+1)`
-/

namespace A300716.P13289894755278905470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305812 (A046523 (n + 1)).toNat) (A274522 (n + 1))

end

end A300716.P13289894755278905470

/-! ## A300716.P3631596860049375352

`A305812(A046523(n+1))%A049014(A049020(n))`
-/

namespace A300716.P3631596860049375352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305812 (A046523 (n + 1)).toNat) (A049014 (A049020 n).toNat)

end

end A300716.P3631596860049375352

/-! ## A300716.P17314152338801622920

`A063647(∏{e}[n+1, #+1]^A342085(n+1))`
-/

namespace A300716.P17314152338801622920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063647 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) ^ (A342085 (n + 1) : ℤ))).toNat

end

end A300716.P17314152338801622920

/-! ## A300716.P3872590151909157457

`A293606(A281118(n+1))*A303838(n+1)`
-/

namespace A300716.P3872590151909157457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293606 (A281118 (n + 1)).toNat * A303838 (n + 1)

end

end A300716.P3872590151909157457

/-!
# A300717: Möbius transform of A003557, n divided by its largest squarefree divisor.

The programs for A300717, the canonical program `A300717.P9620325396379969828` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300717 has offset 1).

The definition of A300717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A300717.P6640817346738135017

`A000010(n+1)-A300718(n+1)`
-/

namespace A300717.P6640817346738135017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A300718 (n + 1)

end

end A300717.P6640817346738135017

namespace A300717

/-- `A000010(n+1)-A300718(n+1)` -/
def P6640817346738135017.Spec : Prop :=
  ∀ n, P6640817346738135017.a n = A300717 (n + 1)

theorem P6640817346738135017.correct : P6640817346738135017.Spec := by
  intro n
  simp only [A300717, Nat.add_sub_cancel, A300717.P6640817346738135017.a, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A300718, A300718.P14759680827716810888.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300717

/-! ## A300717.P12101959894026031094

`A003557(n+1)-A300719(n+1)`
-/

namespace A300717.P12101959894026031094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) - A300719 (n + 1)

end

end A300717.P12101959894026031094

namespace A300717

/-- `A003557(n+1)-A300719(n+1)` -/
def P12101959894026031094.Spec : Prop :=
  ∀ n, P12101959894026031094.a n = A300717 (n + 1)

theorem P12101959894026031094.correct : P12101959894026031094.Spec := by
  intro n
  simp only [A300717, Nat.add_sub_cancel, A300717.P12101959894026031094.a, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A300719, A300719.P3463294975664283293.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300717

/-! ## A300717.P9620325396379969828

`∑{d}[n+1, A008683(#)*A000010(#)*A000010((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A300717

/-- `∑{d}[n+1, A008683(#)*A000010(#)*A000010((n+1)/#)]` -/
def P9620325396379969828.Spec : Prop :=
  ∀ n, P9620325396379969828.a n = A300717 (n + 1)

theorem P9620325396379969828.correct : P9620325396379969828.Spec := by
  intro n
  simp only [A300717, Nat.add_sub_cancel]

end A300717

/-! ## A300717.P10043437580112473807

`∑{d}[n+1, #*A341635((n+1)/#)]`
-/

namespace A300717.P10043437580112473807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A341635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300717.P10043437580112473807

namespace A300717

/-- `∑{d}[n+1, #*A341635((n+1)/#)]` -/
def P10043437580112473807.Spec : Prop :=
  ∀ n, P10043437580112473807.a n = A300717 (n + 1)

end A300717

/-! ## A300717.P2619279311931343200

`A039649(n+1)-(A300718(n+1)+1)`
-/

namespace A300717.P2619279311931343200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A300718 (n + 1) + 1)

end

end A300717.P2619279311931343200

namespace A300717

/-- `A039649(n+1)-(A300718(n+1)+1)` -/
def P2619279311931343200.Spec : Prop :=
  ∀ n, P2619279311931343200.a n = A300717 (n + 1)

theorem P2619279311931343200.correct : P2619279311931343200.Spec := by
  intro n
  simp only [A300717, Nat.add_sub_cancel, A300717.P2619279311931343200.a, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A039649, A039649.P16717312505280968063.a, A300718, A300718.P14759680827716810888.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300717

/-! ## A300717.P12503437892955649653

`A109606(n+1)+1-A300718(n+1)`
-/

namespace A300717.P12503437892955649653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (1 - A300718 (n + 1))

end

end A300717.P12503437892955649653

namespace A300717

/-- `A109606(n+1)+1-A300718(n+1)` -/
def P12503437892955649653.Spec : Prop :=
  ∀ n, P12503437892955649653.a n = A300717 (n + 1)

theorem P12503437892955649653.correct : P12503437892955649653.Spec := by
  intro n
  simp only [A300717, Nat.add_sub_cancel, A300717.P12503437892955649653.a, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A109606, A109606.P2415810041766612210.a, A300718, A300718.P14759680827716810888.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300717

/-! ## A300717.P11855274010230614037

`n-(A300718(n+1)+A219428(n+1))`
-/

namespace A300717.P11855274010230614037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A300718 (n + 1) + A219428 (n + 1))

end

end A300717.P11855274010230614037

namespace A300717

/-- `n-(A300718(n+1)+A219428(n+1))` -/
def P11855274010230614037.Spec : Prop :=
  ∀ n, P11855274010230614037.a n = A300717 (n + 1)

theorem P11855274010230614037.correct : P11855274010230614037.Spec := by
  intro n
  simp only [A300717, Nat.add_sub_cancel, A300717.P11855274010230614037.a, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A219428, A219428.P9184341513320465947.a, A300718, A300718.P14759680827716810888.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300717

/-! ## A300717.P6948918846119323299

`1-A051953(n+1)+n-A300718(n+1)`
-/

namespace A300717.P6948918846119323299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051953 (n + 1) + (n : ℤ) - A300718 (n + 1)

end

end A300717.P6948918846119323299

namespace A300717

/-- `1-A051953(n+1)+n-A300718(n+1)` -/
def P6948918846119323299.Spec : Prop :=
  ∀ n, P6948918846119323299.a n = A300717 (n + 1)

theorem P6948918846119323299.correct : P6948918846119323299.Spec := by
  intro n
  simp only [A300717, Nat.add_sub_cancel, A300717.P6948918846119323299.a, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A051953, A051953.P11179276897610979764.a, A300718, A300718.P14759680827716810888.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300717

/-! ## A300717.P2641246782567174485

`∑{d}[n+1, A003557(#)*A008683((n+1)/#)]`
-/

namespace A300717.P2641246782567174485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003557 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300717.P2641246782567174485

namespace A300717

/-- `∑{d}[n+1, A003557(#)*A008683((n+1)/#)]` -/
def P2641246782567174485.Spec : Prop :=
  ∀ n, P2641246782567174485.a n = A300717 (n + 1)

end A300717

/-! ## A300717.P14934590157086401023

`∑{d}[n+1, A000010(#)*A097945((n+1)/#)]`
-/

namespace A300717.P14934590157086401023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A097945 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300717.P14934590157086401023

namespace A300717

/-- `∑{d}[n+1, A000010(#)*A097945((n+1)/#)]` -/
def P14934590157086401023.Spec : Prop :=
  ∀ n, P14934590157086401023.a n = A300717 (n + 1)

end A300717

/-! ## A300717.P12612064122250619534

`∑{d}[n+1, A007431(#)*A276833((n+1)/#)]`
-/

namespace A300717.P12612064122250619534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007431 d * A276833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300717.P12612064122250619534

namespace A300717

/-- `∑{d}[n+1, A007431(#)*A276833((n+1)/#)]` -/
def P12612064122250619534.Spec : Prop :=
  ∀ n, P12612064122250619534.a n = A300717 (n + 1)

end A300717

/-! ## A300717.P5447826900206416414

`∑{d}[n+1, A007427(#)*A326306((n+1)/#)]`
-/

namespace A300717.P5447826900206416414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A326306 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300717.P5447826900206416414

namespace A300717

/-- `∑{d}[n+1, A007427(#)*A326306((n+1)/#)]` -/
def P5447826900206416414.Spec : Prop :=
  ∀ n, P5447826900206416414.a n = A300717 (n + 1)

end A300717

/-! ## A300717.P8640693845522844349

`∑{d}[n+1, A067856(#)*A319993((n+1)/#)]`
-/

namespace A300717.P8640693845522844349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A067856 d * A319993 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300717.P8640693845522844349

namespace A300717

/-- `∑{d}[n+1, A067856(#)*A319993((n+1)/#)]` -/
def P8640693845522844349.Spec : Prop :=
  ∀ n, P8640693845522844349.a n = A300717 (n + 1)

end A300717

/-! ## A300717.P2546716389504440376

`∑{d}[n+1, A092673(#)*A357689((n+1)/#)]`
-/

namespace A300717.P2546716389504440376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092673 d * A357689 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300717.P2546716389504440376

namespace A300717

/-- `∑{d}[n+1, A092673(#)*A357689((n+1)/#)]` -/
def P2546716389504440376.Spec : Prop :=
  ∀ n, P2546716389504440376.a n = A300717 (n + 1)

end A300717

/-! ## A300717.P5959758949208834276

`∏{p}[n+1, #-1]*A003557(n+1)-A300718(n+1)`
-/

namespace A300717.P5959758949208834276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1) - A300718 (n + 1)

end

end A300717.P5959758949208834276

namespace A300717

/-- `∏{p}[n+1, #-1]*A003557(n+1)-A300718(n+1)` -/
def P5959758949208834276.Spec : Prop :=
  ∀ n, P5959758949208834276.a n = A300717 (n + 1)

theorem P5959758949208834276.correct : P5959758949208834276.Spec := by
  intro n
  simp only [A300717, Nat.add_sub_cancel, A300717.P5959758949208834276.f1, A300717.P5959758949208834276.a, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A300718, A300718.P14759680827716810888.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300717

/-! ## A300717.P4074898603021822839

`A000010(n+1)+A300720(n+1)-A010848(n+1)`
-/

namespace A300717.P4074898603021822839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A300720 (n + 1) - A010848 (n + 1))

end

end A300717.P4074898603021822839

namespace A300717

/-- `A000010(n+1)+A300720(n+1)-A010848(n+1)` -/
def P4074898603021822839.Spec : Prop :=
  ∀ n, P4074898603021822839.a n = A300717 (n + 1)

theorem P4074898603021822839.correct : P4074898603021822839.Spec := by
  intro n
  simp only [A300717, Nat.add_sub_cancel, A300717.P4074898603021822839.a, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A010848, A010848.P2527659660694357650.a, A300720, A300720.P15695279460942759688.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A300718, A300718.P14759680827716810888.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300717

/-! ## A300717.P1527075491643474104

`A000005(n+1)+A063070(n+1)-A300718(n+1)`
-/

namespace A300717.P1527075491643474104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (A063070 (n + 1) - A300718 (n + 1))

end

end A300717.P1527075491643474104

namespace A300717

/-- `A000005(n+1)+A063070(n+1)-A300718(n+1)` -/
def P1527075491643474104.Spec : Prop :=
  ∀ n, P1527075491643474104.a n = A300717 (n + 1)

theorem P1527075491643474104.correct : P1527075491643474104.Spec := by
  intro n
  simp only [A300717, Nat.add_sub_cancel, A300717.P1527075491643474104.a, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A000005, A000005.P16091521709108585461.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A063070, A063070.P5416196495209204381.a, A300718, A300718.P14759680827716810888.a, A003557, A003557.P6364735403900941810.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300717

/-! ## A300717.P13596965187944454049

`A046073(n+1)*A060594(n+1)-A300718(n+1)`
-/

namespace A300717.P13596965187944454049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (n + 1) * A060594 (n + 1) - A300718 (n + 1)

end

end A300717.P13596965187944454049

namespace A300717

/-- `A046073(n+1)*A060594(n+1)-A300718(n+1)` -/
def P13596965187944454049.Spec : Prop :=
  ∀ n, P13596965187944454049.a n = A300717 (n + 1)

end A300717

/-! ## A300717.P12436198690212343831

`A300719(A087560(n+1))-A300719(n+1)`
-/

namespace A300717.P12436198690212343831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300719 (A087560 (n + 1)).toNat - A300719 (n + 1)

end

end A300717.P12436198690212343831

namespace A300717

/-- `A300719(A087560(n+1))-A300719(n+1)` -/
def P12436198690212343831.Spec : Prop :=
  ∀ n, P12436198690212343831.a n = A300717 (n + 1)

end A300717

/-! ## A300717.P12458339582239047093

`Δ[A206297(n+1)/2]-A300718(n+1)`
-/

namespace A300717.P12458339582239047093
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206297 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A300718 (n + 1) : ℚ)

end

end A300717.P12458339582239047093

namespace A300717

/-- `Δ[A206297(n+1)/2]-A300718(n+1)` -/
def P12458339582239047093.Spec : Prop :=
  ∀ n, P12458339582239047093.a n = (A300717 (n + 1) : ℚ)

end A300717

/-!
# A300718: Möbius transform of A010848, number of numbers k <= n such that at least one prime factor of n is not a prime factor of k.

The programs for A300718, the canonical program `A300718.P14759680827716810888` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300718 has offset 1).

The definition of A300718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A300718.P14759680827716810888

`A000010(n+1)-A300717(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A300718

/-- `A000010(n+1)-A300717(n+1)` -/
def P14759680827716810888.Spec : Prop :=
  ∀ n, P14759680827716810888.a n = A300718 (n + 1)

theorem P14759680827716810888.correct : P14759680827716810888.Spec := by
  intro n
  simp only [A300718, Nat.add_sub_cancel]

end A300718

/-! ## A300718.P9880068432715352950

`A010848(n+1)-A300720(n+1)`
-/

namespace A300718.P9880068432715352950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (n + 1) - A300720 (n + 1)

end

end A300718.P9880068432715352950

namespace A300718

/-- `A010848(n+1)-A300720(n+1)` -/
def P9880068432715352950.Spec : Prop :=
  ∀ n, P9880068432715352950.a n = A300718 (n + 1)

theorem P9880068432715352950.correct : P9880068432715352950.Spec := by
  intro n
  simp only [A300718, Nat.add_sub_cancel, A300718.P9880068432715352950.a, A300718.P14759680827716810888.a, A000010, A000010.P4673923239450215316.a, A010848, A010848.P2527659660694357650.a, A300717, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A300720, A300720.P15695279460942759688.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300718

/-! ## A300718.P12403322461936249689

`A039649(n+1)-(A300717(n+1)+1)`
-/

namespace A300718.P12403322461936249689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A300717 (n + 1) + 1)

end

end A300718.P12403322461936249689

namespace A300718

/-- `A039649(n+1)-(A300717(n+1)+1)` -/
def P12403322461936249689.Spec : Prop :=
  ∀ n, P12403322461936249689.a n = A300718 (n + 1)

theorem P12403322461936249689.correct : P12403322461936249689.Spec := by
  intro n
  simp only [A300718, Nat.add_sub_cancel, A300718.P12403322461936249689.a, A300718.P14759680827716810888.a, A000010, A000010.P4673923239450215316.a, A039649, A039649.P16717312505280968063.a, A300717, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300718

/-! ## A300718.P11331280273111537233

`A109606(n+1)+1-A300717(n+1)`
-/

namespace A300718.P11331280273111537233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (1 - A300717 (n + 1))

end

end A300718.P11331280273111537233

namespace A300718

/-- `A109606(n+1)+1-A300717(n+1)` -/
def P11331280273111537233.Spec : Prop :=
  ∀ n, P11331280273111537233.a n = A300718 (n + 1)

theorem P11331280273111537233.correct : P11331280273111537233.Spec := by
  intro n
  simp only [A300718, Nat.add_sub_cancel, A300718.P11331280273111537233.a, A300718.P14759680827716810888.a, A000010, A000010.P4673923239450215316.a, A109606, A109606.P2415810041766612210.a, A300717, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300718

/-! ## A300718.P2889692944239368572

`n-(A300717(n+1)+A219428(n+1))`
-/

namespace A300718.P2889692944239368572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A300717 (n + 1) + A219428 (n + 1))

end

end A300718.P2889692944239368572

namespace A300718

/-- `n-(A300717(n+1)+A219428(n+1))` -/
def P2889692944239368572.Spec : Prop :=
  ∀ n, P2889692944239368572.a n = A300718 (n + 1)

theorem P2889692944239368572.correct : P2889692944239368572.Spec := by
  intro n
  simp only [A300718, Nat.add_sub_cancel, A300718.P2889692944239368572.a, A300718.P14759680827716810888.a, A000010, A000010.P4673923239450215316.a, A219428, A219428.P9184341513320465947.a, A300717, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300718

/-! ## A300718.P11862432889152935383

`1-A051953(n+1)+n-A300717(n+1)`
-/

namespace A300718.P11862432889152935383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051953 (n + 1) + (n : ℤ) - A300717 (n + 1)

end

end A300718.P11862432889152935383

namespace A300718

/-- `1-A051953(n+1)+n-A300717(n+1)` -/
def P11862432889152935383.Spec : Prop :=
  ∀ n, P11862432889152935383.a n = A300718 (n + 1)

theorem P11862432889152935383.correct : P11862432889152935383.Spec := by
  intro n
  simp only [A300718, Nat.add_sub_cancel, A300718.P11862432889152935383.a, A300718.P14759680827716810888.a, A000010, A000010.P4673923239450215316.a, A051953, A051953.P11179276897610979764.a, A300717, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300718

/-! ## A300718.P5726990657623886576

`∑{d}[n+1, A008683(#)*A010848((n+1)/#)]`
-/

namespace A300718.P5726990657623886576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A010848 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300718.P5726990657623886576

namespace A300718

/-- `∑{d}[n+1, A008683(#)*A010848((n+1)/#)]` -/
def P5726990657623886576.Spec : Prop :=
  ∀ n, P5726990657623886576.a n = A300718 (n + 1)

end A300718

/-! ## A300718.P3017715541509272157

`∏{p}[n+1, #-1]*A003557(n+1)-A300717(n+1)`
-/

namespace A300718.P3017715541509272157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1) - A300717 (n + 1)

end

end A300718.P3017715541509272157

namespace A300718

/-- `∏{p}[n+1, #-1]*A003557(n+1)-A300717(n+1)` -/
def P3017715541509272157.Spec : Prop :=
  ∀ n, P3017715541509272157.a n = A300718 (n + 1)

end A300718

/-! ## A300718.P3653953087335714046

`A000010(n+1)+A300719(n+1)-A003557(n+1)`
-/

namespace A300718.P3653953087335714046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A300719 (n + 1) - A003557 (n + 1))

end

end A300718.P3653953087335714046

namespace A300718

/-- `A000010(n+1)+A300719(n+1)-A003557(n+1)` -/
def P3653953087335714046.Spec : Prop :=
  ∀ n, P3653953087335714046.a n = A300718 (n + 1)

theorem P3653953087335714046.correct : P3653953087335714046.Spec := by
  intro n
  simp only [A300718, Nat.add_sub_cancel, A300718.P3653953087335714046.a, A300718.P14759680827716810888.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A300717, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A300719, A300719.P3463294975664283293.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300718

/-! ## A300718.P14816498984964052610

`A046073(n+1)*A060594(n+1)-A300717(n+1)`
-/

namespace A300718.P14816498984964052610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046073 (n + 1) * A060594 (n + 1) - A300717 (n + 1)

end

end A300718.P14816498984964052610

namespace A300718

/-- `A046073(n+1)*A060594(n+1)-A300717(n+1)` -/
def P14816498984964052610.Spec : Prop :=
  ∀ n, P14816498984964052610.a n = A300718 (n + 1)

end A300718

/-! ## A300718.P12882335684506989999

`A003557(n+1)*A173557(n+1)-A300717(n+1)`
-/

namespace A300718.P12882335684506989999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) * A173557 (n + 1) - A300717 (n + 1)

end

end A300718.P12882335684506989999

namespace A300718

/-- `A003557(n+1)*A173557(n+1)-A300717(n+1)` -/
def P12882335684506989999.Spec : Prop :=
  ∀ n, P12882335684506989999.a n = A300718 (n + 1)

theorem P12882335684506989999.correct : P12882335684506989999.Spec := by
  intro n
  simp only [A300718, Nat.add_sub_cancel, A300718.P12882335684506989999.a, A300718.P14759680827716810888.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A300717, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300718

/-! ## A300718.P17080925716021348016

`Δ[A206297(n+1)/2]-A300717(n+1)`
-/

namespace A300718.P17080925716021348016
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206297 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (A300717 (n + 1) : ℚ)

end

end A300718.P17080925716021348016

namespace A300718

/-- `Δ[A206297(n+1)/2]-A300717(n+1)` -/
def P17080925716021348016.Spec : Prop :=
  ∀ n, P17080925716021348016.a n = (A300718 (n + 1) : ℚ)

end A300718

/-! ## A300718.P372278011035172651

`A300717(A064549(n+1))-A300717(n+1)`
-/

namespace A300718.P372278011035172651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300717 (A064549 (n + 1)).toNat - A300717 (n + 1)

end

end A300718.P372278011035172651

namespace A300718

/-- `A300717(A064549(n+1))-A300717(n+1)` -/
def P372278011035172651.Spec : Prop :=
  ∀ n, P372278011035172651.a n = A300718 (n + 1)

end A300718

/-!
# A300719: Difference between A003557 (n divided by largest squarefree divisor of n) and its Möbius transform.

The programs for A300719, the canonical program `A300719.P3463294975664283293` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300719 has offset 1).

The definition of A300719 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A300719.P3463294975664283293

`A003557(n+1)-A300717(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A300719

/-- `A003557(n+1)-A300717(n+1)` -/
def P3463294975664283293.Spec : Prop :=
  ∀ n, P3463294975664283293.a n = A300719 (n + 1)

theorem P3463294975664283293.correct : P3463294975664283293.Spec := by
  intro n
  simp only [A300719, Nat.add_sub_cancel]

end A300719

/-! ## A300719.P6788145824369003916

`A051953(n+1)-A300720(n+1)`
-/

namespace A300719.P6788145824369003916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A300720 (n + 1)

end

end A300719.P6788145824369003916

namespace A300719

/-- `A051953(n+1)-A300720(n+1)` -/
def P6788145824369003916.Spec : Prop :=
  ∀ n, P6788145824369003916.a n = A300719 (n + 1)

theorem P6788145824369003916.correct : P6788145824369003916.Spec := by
  intro n
  simp only [A300719, Nat.add_sub_cancel, A300719.P6788145824369003916.a, A300719.P3463294975664283293.a, A003557, A003557.P6364735403900941810.a, A051953, A051953.P11179276897610979764.a, A300717, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A300720, A300720.P15695279460942759688.a, A000010, A000010.P4673923239450215316.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A010848, A010848.P2527659660694357650.a, A300718, A300718.P14759680827716810888.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300719

/-! ## A300719.P7103755667686007038

`A336551(n+1)+1-A300717(n+1)`
-/

namespace A300719.P7103755667686007038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1) + (1 - A300717 (n + 1))

end

end A300719.P7103755667686007038

namespace A300719

/-- `A336551(n+1)+1-A300717(n+1)` -/
def P7103755667686007038.Spec : Prop :=
  ∀ n, P7103755667686007038.a n = A300719 (n + 1)

theorem P7103755667686007038.correct : P7103755667686007038.Spec := by
  intro n
  simp only [A300719, Nat.add_sub_cancel, A300719.P7103755667686007038.a, A300719.P3463294975664283293.a, A003557, A003557.P6364735403900941810.a, A300717, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A336551, A336551.P8666843674191054020.a, A000010, A000010.P4673923239450215316.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300719

/-! ## A300719.P13602190632907855942

`lcm(2, A357689(n+1))/2-A300717(n+1)`
-/

namespace A300719.P13602190632907855942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A357689 (n + 1)) : ℚ) / 2 - (A300717 (n + 1) : ℚ)

end

end A300719.P13602190632907855942

namespace A300719

/-- `lcm(2, A357689(n+1))/2-A300717(n+1)` -/
def P13602190632907855942.Spec : Prop :=
  ∀ n, P13602190632907855942.a n = (A300719 (n + 1) : ℚ)

end A300719

/-! ## A300719.P5360767018951898154

`n+1-(A300717(n+1)+A010848(n+1))`
-/

namespace A300719.P5360767018951898154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A300717 (n + 1) + A010848 (n + 1))

end

end A300719.P5360767018951898154

namespace A300719

/-- `n+1-(A300717(n+1)+A010848(n+1))` -/
def P5360767018951898154.Spec : Prop :=
  ∀ n, P5360767018951898154.a n = A300719 (n + 1)

theorem P5360767018951898154.correct : P5360767018951898154.Spec := by
  intro n
  simp only [A300719, Nat.add_sub_cancel, A300719.P5360767018951898154.a, A300719.P3463294975664283293.a, A003557, A003557.P6364735403900941810.a, A010848, A010848.P2527659660694357650.a, A300717, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A000010, A000010.P4673923239450215316.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300719

/-! ## A300719.P4447459032404304939

`(n+1)/A007947(n+1)-A300717(n+1)`
-/

namespace A300719.P4447459032404304939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007947 (n + 1) : ℚ) - (A300717 (n + 1) : ℚ)

end

end A300719.P4447459032404304939

namespace A300719

/-- `(n+1)/A007947(n+1)-A300717(n+1)` -/
def P4447459032404304939.Spec : Prop :=
  ∀ n, P4447459032404304939.a n = (A300719 (n + 1) : ℚ)

end A300719

/-! ## A300719.P14229209824486310166

`gcd(n+1, A069359(n+1))-A300717(n+1)`
-/

namespace A300719.P14229209824486310166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A069359 (n + 1)) : ℤ) - A300717 (n + 1)

end

end A300719.P14229209824486310166

namespace A300719

/-- `gcd(n+1, A069359(n+1))-A300717(n+1)` -/
def P14229209824486310166.Spec : Prop :=
  ∀ n, P14229209824486310166.a n = A300719 (n + 1)

end A300719

/-! ## A300719.P11031986016938031317

`∑{d}[n+1, A051953(#)*A097945((n+1)/#)]`
-/

namespace A300719.P11031986016938031317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051953 d * A097945 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300719.P11031986016938031317

namespace A300719

/-- `∑{d}[n+1, A051953(#)*A097945((n+1)/#)]` -/
def P11031986016938031317.Spec : Prop :=
  ∀ n, P11031986016938031317.a n = A300719 (n + 1)

end A300719

/-! ## A300719.P17805343783697756218

`∑{d}[n+1, A003557(#)*A157658((n+1)/#)]`
-/

namespace A300719.P17805343783697756218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003557 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300719.P17805343783697756218

namespace A300719

/-- `∑{d}[n+1, A003557(#)*A157658((n+1)/#)]` -/
def P17805343783697756218.Spec : Prop :=
  ∀ n, P17805343783697756218.a n = A300719 (n + 1)

end A300719

/-! ## A300719.P7266116450998744985

`∑{d}[n+1, A062790(#)*A276833((n+1)/#)]`
-/

namespace A300719.P7266116450998744985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062790 d * A276833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300719.P7266116450998744985

namespace A300719

/-- `∑{d}[n+1, A062790(#)*A276833((n+1)/#)]` -/
def P7266116450998744985.Spec : Prop :=
  ∀ n, P7266116450998744985.a n = A300719 (n + 1)

end A300719

/-! ## A300719.P9991014989381228524

`∑{d}[n+1, A001065(#)*A341635((n+1)/#)]`
-/

namespace A300719.P9991014989381228524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A341635 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300719.P9991014989381228524

namespace A300719

/-- `∑{d}[n+1, A001065(#)*A341635((n+1)/#)]` -/
def P9991014989381228524.Spec : Prop :=
  ∀ n, P9991014989381228524.a n = A300719 (n + 1)

end A300719

/-! ## A300719.P9639387300718547282

`∑{d}[n+1, A057427(#-1)*A300717((n+1)/#)]`
-/

namespace A300719.P9639387300718547282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A300717 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300719.P9639387300718547282

namespace A300719

/-- `∑{d}[n+1, A057427(#-1)*A300717((n+1)/#)]` -/
def P9639387300718547282.Spec : Prop :=
  ∀ n, P9639387300718547282.a n = A300719 (n + 1)

end A300719

/-! ## A300719.P9100748061963928231

`A003557(n+1)+A300718(n+1)-A000010(n+1)`
-/

namespace A300719.P9100748061963928231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1) + (A300718 (n + 1) - A000010 (n + 1))

end

end A300719.P9100748061963928231

namespace A300719

/-- `A003557(n+1)+A300718(n+1)-A000010(n+1)` -/
def P9100748061963928231.Spec : Prop :=
  ∀ n, P9100748061963928231.a n = A300719 (n + 1)

theorem P9100748061963928231.correct : P9100748061963928231.Spec := by
  intro n
  simp only [A300719, Nat.add_sub_cancel, A300719.P9100748061963928231.a, A300719.P3463294975664283293.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A300717, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A300718, A300718.P14759680827716810888.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300719

/-! ## A300719.P9071985785019979002

`A076332(n+1)-(A300717(n+1)+A007947(n+1))`
-/

namespace A300719.P9071985785019979002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076332 (n + 1) - (A300717 (n + 1) + A007947 (n + 1))

end

end A300719.P9071985785019979002

namespace A300719

/-- `A076332(n+1)-(A300717(n+1)+A007947(n+1))` -/
def P9071985785019979002.Spec : Prop :=
  ∀ n, P9071985785019979002.a n = A300719 (n + 1)

theorem P9071985785019979002.correct : P9071985785019979002.Spec := by
  intro n
  simp only [A300719, Nat.add_sub_cancel, A300719.P9071985785019979002.a, A300719.P3463294975664283293.a, A003557, A003557.P6364735403900941810.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A076332, A076332.P10547228136457690679.a, A300717, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A000010, A000010.P4673923239450215316.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300719

/-! ## A300719.P1726643690120997867

`A000010(n+1)/A173557(n+1)-A300717(n+1)`
-/

namespace A300719.P1726643690120997867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ) - (A300717 (n + 1) : ℚ)

end

end A300719.P1726643690120997867

namespace A300719

/-- `A000010(n+1)/A173557(n+1)-A300717(n+1)` -/
def P1726643690120997867.Spec : Prop :=
  ∀ n, P1726643690120997867.a n = (A300719 (n + 1) : ℚ)

end A300719

/-! ## A300719.P12531261574026334239

`A341108(n)/A163176(n+1)-A300717(n+1)`
-/

namespace A300719.P12531261574026334239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341108 n : ℚ) / (A163176 (n + 1) : ℚ) - (A300717 (n + 1) : ℚ)

end

end A300719.P12531261574026334239

namespace A300719

/-- `A341108(n)/A163176(n+1)-A300717(n+1)` -/
def P12531261574026334239.Spec : Prop :=
  ∀ n, P12531261574026334239.a n = (A300719 (n + 1) : ℚ)

end A300719

/-!
# A300720: Difference between A010848 and its Möbius transform.

The programs for A300720, the canonical program `A300720.P15695279460942759688` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300720 has offset 1).

The definition of A300720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A300720.P15695279460942759688

`A010848(n+1)-A300718(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A300720

/-- `A010848(n+1)-A300718(n+1)` -/
def P15695279460942759688.Spec : Prop :=
  ∀ n, P15695279460942759688.a n = A300720 (n + 1)

theorem P15695279460942759688.correct : P15695279460942759688.Spec := by
  intro n
  simp only [A300720, Nat.add_sub_cancel]

end A300720

/-! ## A300720.P8475502893301132481

`A051953(n+1)-A300719(n+1)`
-/

namespace A300720.P8475502893301132481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A300719 (n + 1)

end

end A300720.P8475502893301132481

namespace A300720

/-- `A051953(n+1)-A300719(n+1)` -/
def P8475502893301132481.Spec : Prop :=
  ∀ n, P8475502893301132481.a n = A300720 (n + 1)

theorem P8475502893301132481.correct : P8475502893301132481.Spec := by
  intro n
  simp only [A300720, Nat.add_sub_cancel, A300720.P8475502893301132481.a, A300720.P15695279460942759688.a, A010848, A010848.P2527659660694357650.a, A051953, A051953.P11179276897610979764.a, A300718, A300718.P14759680827716810888.a, A300719, A300719.P3463294975664283293.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A300717, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300720

/-! ## A300720.P10028972994963796963

`n+1-(A300719(n+1)+A000010(n+1))`
-/

namespace A300720.P10028972994963796963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A300719 (n + 1) + A000010 (n + 1))

end

end A300720.P10028972994963796963

namespace A300720

/-- `n+1-(A300719(n+1)+A000010(n+1))` -/
def P10028972994963796963.Spec : Prop :=
  ∀ n, P10028972994963796963.a n = A300720 (n + 1)

theorem P10028972994963796963.correct : P10028972994963796963.Spec := by
  intro n
  simp only [A300720, Nat.add_sub_cancel, A300720.P10028972994963796963.a, A300720.P15695279460942759688.a, A000010, A000010.P4673923239450215316.a, A010848, A010848.P2527659660694357650.a, A300718, A300718.P14759680827716810888.a, A300719, A300719.P3463294975664283293.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A300717, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300720

/-! ## A300720.P11777684808155530232

`n+1-(A300718(n+1)+A003557(n+1))`
-/

namespace A300720.P11777684808155530232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A300718 (n + 1) + A003557 (n + 1))

end

end A300720.P11777684808155530232

namespace A300720

/-- `n+1-(A300718(n+1)+A003557(n+1))` -/
def P11777684808155530232.Spec : Prop :=
  ∀ n, P11777684808155530232.a n = A300720 (n + 1)

theorem P11777684808155530232.correct : P11777684808155530232.Spec := by
  intro n
  simp only [A300720, Nat.add_sub_cancel, A300720.P11777684808155530232.a, A300720.P15695279460942759688.a, A003557, A003557.P6364735403900941810.a, A010848, A010848.P2527659660694357650.a, A300718, A300718.P14759680827716810888.a, A000010, A000010.P4673923239450215316.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A300717, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300720

/-! ## A300720.P7369696112036574778

`∑{d}[n+1, A010848(#)*A157658((n+1)/#)]`
-/

namespace A300720.P7369696112036574778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010848 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300720.P7369696112036574778

namespace A300720

/-- `∑{d}[n+1, A010848(#)*A157658((n+1)/#)]` -/
def P7369696112036574778.Spec : Prop :=
  ∀ n, P7369696112036574778.a n = A300720 (n + 1)

end A300720

/-! ## A300720.P585004985993066786

`∑{d}[n+1, A057427(#-1)*A300718((n+1)/#)]`
-/

namespace A300720.P585004985993066786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A300718 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300720.P585004985993066786

namespace A300720

/-- `∑{d}[n+1, A057427(#-1)*A300718((n+1)/#)]` -/
def P585004985993066786.Spec : Prop :=
  ∀ n, P585004985993066786.a n = A300720 (n + 1)

end A300720

/-! ## A300720.P9013562861619497992

`A010848(n+1)+A300717(n+1)-A000010(n+1)`
-/

namespace A300720.P9013562861619497992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010848 (n + 1) + (A300717 (n + 1) - A000010 (n + 1))

end

end A300720.P9013562861619497992

namespace A300720

/-- `A010848(n+1)+A300717(n+1)-A000010(n+1)` -/
def P9013562861619497992.Spec : Prop :=
  ∀ n, P9013562861619497992.a n = A300720 (n + 1)

theorem P9013562861619497992.correct : P9013562861619497992.Spec := by
  intro n
  simp only [A300720, Nat.add_sub_cancel, A300720.P9013562861619497992.a, A300720.P15695279460942759688.a, A000010, A000010.P4673923239450215316.a, A010848, A010848.P2527659660694357650.a, A300717, A300717.P9620325396379969828.f1, A300717.P9620325396379969828.a, A300718, A300718.P14759680827716810888.a, A003557, A003557.P6364735403900941810.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300720

/-! ## A300720.P15029564383035195990

`A300719(A064549(n+1))-A300719(n+1)`
-/

namespace A300720.P15029564383035195990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300719 (A064549 (n + 1)).toNat - A300719 (n + 1)

end

end A300720.P15029564383035195990

namespace A300720

/-- `A300719(A064549(n+1))-A300719(n+1)` -/
def P15029564383035195990.Spec : Prop :=
  ∀ n, P15029564383035195990.a n = A300720 (n + 1)

end A300720

/-!
# A300721: Möbius transform of A060681, the largest difference between consecutive divisors of n (ordered by size).

The programs for A300721, there is no canonical definition to state claims against.
-/

/-! ## A300721.P13494295583091616714

`A000010(n+1)-A300236(n+1)`
-/

namespace A300721.P13494295583091616714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A300236 (n + 1)

end

end A300721.P13494295583091616714

/-! ## A300721.P525557924118635894

`A060681(n+1)-A300722(n+1)`
-/

namespace A300721.P525557924118635894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1) - A300722 (n + 1)

end

end A300721.P525557924118635894

/-! ## A300721.P12699500567435394549

`∑{d}[n+1, A008683(#)*A060681((n+1)/#)]`
-/

namespace A300721.P12699500567435394549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A060681 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300721.P12699500567435394549

/-! ## A300721.P4737938552526851959

`n-floor(n/A020639(n+1))-A300722(n+1)`
-/

namespace A300721.P4737938552526851959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(n : ℚ) / (A020639 (n + 1) : ℚ)⌋ - A300722 (n + 1)

end

end A300721.P4737938552526851959

/-! ## A300721.P1150064435707464087

`ceil(n-n/A074828(n+1))-A300722(n+1)`
-/

namespace A300721.P1150064435707464087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) - (n : ℚ) / (A074828 (n + 1) : ℚ)⌉ - A300722 (n + 1)

end

end A300721.P1150064435707464087

/-! ## A300721.P7769432915085222393

`A024000(A032742(n+1))+n-A300722(n+1)`
-/

namespace A300721.P7769432915085222393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A032742 (n + 1)).toNat + (n : ℤ) - A300722 (n + 1)

end

end A300721.P7769432915085222393

/-! ## A300721.P4105595659187443691

`n-A140106(A286472(n+1))-A300722(n+1)`
-/

namespace A300721.P4105595659187443691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A140106 (A286472 (n + 1)).toNat - A300722 (n + 1)

end

end A300721.P4105595659187443691

/-! ## A300721.P17240864020384484491

`A000010(n+1)+A300239(n+1)-A032742(n+1)`
-/

namespace A300721.P17240864020384484491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A300239 (n + 1) - A032742 (n + 1))

end

end A300721.P17240864020384484491

/-! ## A300721.P14983441879651111945

`A061228(n+1)-(A300722(n+1)+A111234(n+1))`
-/

namespace A300721.P14983441879651111945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 1) - (A300722 (n + 1) + A111234 (n + 1))

end

end A300721.P14983441879651111945

/-! ## A300721.P15261728240989475641

`lcm(A057237(n+1), A220096(n+1))-A300722(n+1)`
-/

namespace A300721.P15261728240989475641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A057237 (n + 1)) (A220096 (n + 1)) : ℤ) - A300722 (n + 1)

end

end A300721.P15261728240989475641

/-! ## A300721.P6054934794925125297

`A067541(A005408(n))-A300236(n+1)`
-/

namespace A300721.P6054934794925125297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067541 (A005408 n).toNat - A300236 (n + 1)

end

end A300721.P6054934794925125297

/-! ## A300721.P3405219011289978814

`A054523(A000124(n))-A300236(n+1)`
-/

namespace A300721.P3405219011289978814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (A000124 n).toNat - A300236 (n + 1)

end

end A300721.P3405219011289978814

/-!
# A300722: Difference between A060681 (largest difference between consecutive divisors of n as ordered by size) and its Möbius transform.

The programs for A300722, there is no canonical definition to state claims against.
-/

/-! ## A300722.P8317627938057624643

`A060681(n+1)-A300721(n+1)`
-/

namespace A300722.P8317627938057624643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1) - A300721 (n + 1)

end

end A300722.P8317627938057624643

/-! ## A300722.P10254830352985406356

`A051953(n+1)-A300239(n+1)`
-/

namespace A300722.P10254830352985406356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A300239 (n + 1)

end

end A300722.P10254830352985406356

/-! ## A300722.P16625938392878437171

`n+1-(A300239(n+1)+A000010(n+1))`
-/

namespace A300722.P16625938392878437171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A300239 (n + 1) + A000010 (n + 1))

end

end A300722.P16625938392878437171

/-! ## A300722.P2909778239601238777

`∑{d}[n+1, A060681(#)*A157658((n+1)/#)]`
-/

namespace A300722.P2909778239601238777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A060681 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300722.P2909778239601238777

/-! ## A300722.P10952879853484473635

`∑{d}[n+1, A057427(#-1)*A300721((n+1)/#)]`
-/

namespace A300722.P10952879853484473635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057427 (d - 1) * A300721 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300722.P10952879853484473635

/-! ## A300722.P4701654782002146242

`A060681(n+1)+A300236(n+1)-A000010(n+1)`
-/

namespace A300722.P4701654782002146242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (n + 1) + (A300236 (n + 1) - A000010 (n + 1))

end

end A300722.P4701654782002146242

/-! ## A300722.P7565652194547140794

`A300239(A285109(n+1))-A300239(n+1)`
-/

namespace A300722.P7565652194547140794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300239 (A285109 (n + 1)).toNat - A300239 (n + 1)

end

end A300722.P7565652194547140794

/-!
# A300723: Möbius-transform of A005187(A053645(n)).

The programs for A300723, there is no canonical definition to state claims against.
-/

/-! ## A300723.P5658486817800762058

`A024363(A000009(n)*A000045(n+2))`
-/

namespace A300723.P5658486817800762058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024363 (A000009 n * A000045 (n + 2)).toNat

end

end A300723.P5658486817800762058

/-! ## A300723.P255750525385870263

`and(A000120(A317976(n)), A081306(n+1))`
-/

namespace A300723.P255750525385870263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000120 (A317976 n).toNat) (A081306 (n + 1))

end

end A300723.P255750525385870263

/-!
# A300724: Möbius transform of A053644(n), largest power of 2 less than or equal to n.

The programs for A300724, the canonical program `A300724.P6183862051817097321` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300724 has offset 1).

The definition of A300724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300724.P15951760793531129869

`Δ[A002088(n)]-A300725(n+1)`
-/

namespace A300724.P15951760793531129869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A300725 (n + 1)

end

end A300724.P15951760793531129869

namespace A300724

/-- `Δ[A002088(n)]-A300725(n+1)` -/
def P15951760793531129869.Spec : Prop :=
  ∀ n, P15951760793531129869.a n = A300724 (n + 1)

end A300724

/-! ## A300724.P4595222779861399192

`Δ[A005728(n)]-A300725(n+1)`
-/

namespace A300724.P4595222779861399192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A300725 (n + 1)

end

end A300724.P4595222779861399192

namespace A300724

/-- `Δ[A005728(n)]-A300725(n+1)` -/
def P4595222779861399192.Spec : Prop :=
  ∀ n, P4595222779861399192.a n = A300724 (n + 1)

end A300724

/-! ## A300724.P7640532426160810809

`A000010(n+1)-A300725(n+1)`
-/

namespace A300724.P7640532426160810809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A300725 (n + 1)

end

end A300724.P7640532426160810809

namespace A300724

/-- `A000010(n+1)-A300725(n+1)` -/
def P7640532426160810809.Spec : Prop :=
  ∀ n, P7640532426160810809.a n = A300724 (n + 1)

theorem P7640532426160810809.correct : P7640532426160810809.Spec := by
  intro n
  simp only [A300724, Nat.add_sub_cancel, A300724.P7640532426160810809.a, A300724.P6183862051817097321.f1, A300724.P6183862051817097321.a, A000010, A000010.P4673923239450215316.a, A082908, A082908.P3033675240048837863.a, A300725, A300725.P18126908090071404131.f1, A300725.P18126908090071404131.a, A361984, A361984.P10115388884131320115.f1, A361984.P10115388884131320115.a, A000265, A000265.P16482698636471710744.a, A003557, A003557.P6364735403900941810.a, A006519, A006519.P10435570611646570274.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300724

/-! ## A300724.P5391210911700921512

`A053644(n+1)-A300726(n+1)`
-/

namespace A300724.P5391210911700921512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1) - A300726 (n + 1)

end

end A300724.P5391210911700921512

namespace A300724

/-- `A053644(n+1)-A300726(n+1)` -/
def P5391210911700921512.Spec : Prop :=
  ∀ n, P5391210911700921512.a n = A300724 (n + 1)

theorem P5391210911700921512.correct : P5391210911700921512.Spec := by
  intro n
  simp only [A300724, Nat.add_sub_cancel, A300724.P5391210911700921512.a, A300724.P6183862051817097321.f1, A300724.P6183862051817097321.a, A053644, A053644.P1707366427427647095.a, A082908, A082908.P3033675240048837863.a, A300726, A300726.P6411943610807453951.a, A361984, A361984.P10115388884131320115.f1, A361984.P10115388884131320115.a, A000265, A000265.P16482698636471710744.a, A006519, A006519.P10435570611646570274.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300724

/-! ## A300724.P4127846990676383927

`A039649(n+1)-(A300725(n+1)+1)`
-/

namespace A300724.P4127846990676383927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A300725 (n + 1) + 1)

end

end A300724.P4127846990676383927

namespace A300724

/-- `A039649(n+1)-(A300725(n+1)+1)` -/
def P4127846990676383927.Spec : Prop :=
  ∀ n, P4127846990676383927.a n = A300724 (n + 1)

theorem P4127846990676383927.correct : P4127846990676383927.Spec := by
  intro n
  simp only [A300724, Nat.add_sub_cancel, A300724.P4127846990676383927.a, A300724.P6183862051817097321.f1, A300724.P6183862051817097321.a, A039649, A039649.P16717312505280968063.a, A082908, A082908.P3033675240048837863.a, A300725, A300725.P18126908090071404131.f1, A300725.P18126908090071404131.a, A361984, A361984.P10115388884131320115.f1, A361984.P10115388884131320115.a, A000010, A000010.P4673923239450215316.a, A000265, A000265.P16482698636471710744.a, A003557, A003557.P6364735403900941810.a, A006519, A006519.P10435570611646570274.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A171977, A171977.P14092944863121073856.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300724

/-! ## A300724.P11965932999785051602

`A109606(n+1)+1-A300725(n+1)`
-/

namespace A300724.P11965932999785051602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + (1 - A300725 (n + 1))

end

end A300724.P11965932999785051602

namespace A300724

/-- `A109606(n+1)+1-A300725(n+1)` -/
def P11965932999785051602.Spec : Prop :=
  ∀ n, P11965932999785051602.a n = A300724 (n + 1)

theorem P11965932999785051602.correct : P11965932999785051602.Spec := by
  intro n
  simp only [A300724, Nat.add_sub_cancel, A300724.P11965932999785051602.a, A300724.P6183862051817097321.f1, A300724.P6183862051817097321.a, A082908, A082908.P3033675240048837863.a, A109606, A109606.P2415810041766612210.a, A300725, A300725.P18126908090071404131.f1, A300725.P18126908090071404131.a, A361984, A361984.P10115388884131320115.f1, A361984.P10115388884131320115.a, A000010, A000010.P4673923239450215316.a, A000265, A000265.P16482698636471710744.a, A003557, A003557.P6364735403900941810.a, A006519, A006519.P10435570611646570274.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A171977, A171977.P14092944863121073856.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300724

/-! ## A300724.P8110346209363306772

`n-(A300725(n+1)+A219428(n+1))`
-/

namespace A300724.P8110346209363306772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A300725 (n + 1) + A219428 (n + 1))

end

end A300724.P8110346209363306772

namespace A300724

/-- `n-(A300725(n+1)+A219428(n+1))` -/
def P8110346209363306772.Spec : Prop :=
  ∀ n, P8110346209363306772.a n = A300724 (n + 1)

theorem P8110346209363306772.correct : P8110346209363306772.Spec := by
  intro n
  simp only [A300724, Nat.add_sub_cancel, A300724.P8110346209363306772.a, A300724.P6183862051817097321.f1, A300724.P6183862051817097321.a, A082908, A082908.P3033675240048837863.a, A219428, A219428.P9184341513320465947.a, A300725, A300725.P18126908090071404131.f1, A300725.P18126908090071404131.a, A361984, A361984.P10115388884131320115.f1, A361984.P10115388884131320115.a, A000010, A000010.P4673923239450215316.a, A000265, A000265.P16482698636471710744.a, A003557, A003557.P6364735403900941810.a, A006519, A006519.P10435570611646570274.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A171977, A171977.P14092944863121073856.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300724

/-! ## A300724.P10788070471643774690

`n+1-(A300726(n+1)+A053645(n+1))`
-/

namespace A300724.P10788070471643774690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A300726 (n + 1) + A053645 (n + 1))

end

end A300724.P10788070471643774690

namespace A300724

/-- `n+1-(A300726(n+1)+A053645(n+1))` -/
def P10788070471643774690.Spec : Prop :=
  ∀ n, P10788070471643774690.a n = A300724 (n + 1)

end A300724

/-! ## A300724.P11975269435926886507

`1-A051953(n+1)+n-A300725(n+1)`
-/

namespace A300724.P11975269435926886507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051953 (n + 1) + (n : ℤ) - A300725 (n + 1)

end

end A300724.P11975269435926886507

namespace A300724

/-- `1-A051953(n+1)+n-A300725(n+1)` -/
def P11975269435926886507.Spec : Prop :=
  ∀ n, P11975269435926886507.a n = A300724 (n + 1)

theorem P11975269435926886507.correct : P11975269435926886507.Spec := by
  intro n
  simp only [A300724, Nat.add_sub_cancel, A300724.P11975269435926886507.a, A300724.P6183862051817097321.f1, A300724.P6183862051817097321.a, A051953, A051953.P11179276897610979764.a, A082908, A082908.P3033675240048837863.a, A300725, A300725.P18126908090071404131.f1, A300725.P18126908090071404131.a, A361984, A361984.P10115388884131320115.f1, A361984.P10115388884131320115.a, A000010, A000010.P4673923239450215316.a, A000265, A000265.P16482698636471710744.a, A003557, A003557.P6364735403900941810.a, A006519, A006519.P10435570611646570274.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A171977, A171977.P14092944863121073856.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300724

/-! ## A300724.P6183862051817097321

`∑{d}[n+1, A082908(#-1)*A361984((n+1)/#)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A300724

/-- `∑{d}[n+1, A082908(#-1)*A361984((n+1)/#)]` -/
def P6183862051817097321.Spec : Prop :=
  ∀ n, P6183862051817097321.a n = A300724 (n + 1)

theorem P6183862051817097321.correct : P6183862051817097321.Spec := by
  intro n
  simp only [A300724, Nat.add_sub_cancel]

end A300724

/-! ## A300724.P17166216347150862621

`∏{p}[n+1, #-1]*A003557(n+1)-A300725(n+1)`
-/

namespace A300724.P17166216347150862621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ((p : ℤ) - 1)) * A003557 (n + 1) - A300725 (n + 1)

end

end A300724.P17166216347150862621

namespace A300724

/-- `∏{p}[n+1, #-1]*A003557(n+1)-A300725(n+1)` -/
def P17166216347150862621.Spec : Prop :=
  ∀ n, P17166216347150862621.a n = A300724 (n + 1)

theorem P17166216347150862621.correct : P17166216347150862621.Spec := by
  intro n
  simp only [A300724, Nat.add_sub_cancel, A300724.P17166216347150862621.f1, A300724.P17166216347150862621.a, A300724.P6183862051817097321.f1, A300724.P6183862051817097321.a, A003557, A003557.P6364735403900941810.a, A082908, A082908.P3033675240048837863.a, A300725, A300725.P18126908090071404131.f1, A300725.P18126908090071404131.a, A361984, A361984.P10115388884131320115.f1, A361984.P10115388884131320115.a, A000265, A000265.P16482698636471710744.a, A006519, A006519.P10435570611646570274.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300724

/-! ## A300724.P12784374515373666929

`(n+1)/∏{p}[n+1, #]*A173557(n+1)-A300725(n+1)`
-/

namespace A300724.P12784374515373666929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ) - (A300725 (n + 1) : ℚ)

end

end A300724.P12784374515373666929

namespace A300724

/-- `(n+1)/∏{p}[n+1, #]*A173557(n+1)-A300725(n+1)` -/
def P12784374515373666929.Spec : Prop :=
  ∀ n, P12784374515373666929.a n = (A300724 (n + 1) : ℚ)

end A300724

/-! ## A300724.P1076073546258156432

`A317839(n+1)+A317841(n+1)-A300725(n+1)`
-/

namespace A300724.P1076073546258156432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317839 (n + 1) + (A317841 (n + 1) - A300725 (n + 1))

end

end A300724.P1076073546258156432

namespace A300724

/-- `A317839(n+1)+A317841(n+1)-A300725(n+1)` -/
def P1076073546258156432.Spec : Prop :=
  ∀ n, P1076073546258156432.a n = A300724 (n + 1)

theorem P1076073546258156432.correct : P1076073546258156432.Spec := by
  intro n
  simp only [A300724, Nat.add_sub_cancel, A300724.P1076073546258156432.a, A300724.P6183862051817097321.f1, A300724.P6183862051817097321.a, A082908, A082908.P3033675240048837863.a, A300725, A300725.P18126908090071404131.f1, A300725.P18126908090071404131.a, A317839, A317839.P17371659085018084050.f1, A317839.P17371659085018084050.a, A317841, A317841.P1605425394467167167.a, A361984, A361984.P10115388884131320115.f1, A361984.P10115388884131320115.a, A000010, A000010.P4673923239450215316.a, A000265, A000265.P16482698636471710744.a, A003557, A003557.P6364735403900941810.a, A006519, A006519.P10435570611646570274.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A317838, A317838.P14369629829777606586.a, A002487, A002487.P6236436194084017932.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A171977, A171977.P14092944863121073856.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A317837, A317837.P16143556663053745700.f1, A317837.P16143556663053745700.a, A000120, A000120.P2816527436160941581.a, A038712, A038712.P3404197303190209645.a, A168081, A168081.P16359451533663323532.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300724

/-! ## A300724.P3511941054886159610

`A002322(n+1)*A034380(n+1)-A300725(n+1)`
-/

namespace A300724.P3511941054886159610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1) * A034380 (n + 1) - A300725 (n + 1)

end

end A300724.P3511941054886159610

namespace A300724

/-- `A002322(n+1)*A034380(n+1)-A300725(n+1)` -/
def P3511941054886159610.Spec : Prop :=
  ∀ n, P3511941054886159610.a n = A300724 (n + 1)

end A300724

/-! ## A300724.P11012538652048390253

`A049633(n)-(A300725(n+1)+A049632(n))`
-/

namespace A300724.P11012538652048390253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049633 n - (A300725 (n + 1) + A049632 n)

end

end A300724.P11012538652048390253

namespace A300724

/-- `A049633(n)-(A300725(n+1)+A049632(n))` -/
def P11012538652048390253.Spec : Prop :=
  ∀ n, P11012538652048390253.a n = A300724 (n + 1)

end A300724

/-! ## A300724.P16238146495933664877

`A054523(A000124(n))-A300725(n+1)`
-/

namespace A300724.P16238146495933664877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054523 (A000124 n).toNat - A300725 (n + 1)

end

end A300724.P16238146495933664877

namespace A300724

/-- `A054523(A000124(n))-A300725(n+1)` -/
def P16238146495933664877.Spec : Prop :=
  ∀ n, P16238146495933664877.a n = A300724 (n + 1)

end A300724

/-!
# A300725: Möbius transform of A053645(n), distance to the largest power of 2 less than or equal to n.

The programs for A300725, the canonical program `A300725.P18126908090071404131` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300725 has offset 1).

The definition of A300725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300725.P9189210831734181638

`Δ[A002088(n)]-A300724(n+1)`
-/

namespace A300725.P9189210831734181638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A300724 (n + 1)

end

end A300725.P9189210831734181638

namespace A300725

/-- `Δ[A002088(n)]-A300724(n+1)` -/
def P9189210831734181638.Spec : Prop :=
  ∀ n, P9189210831734181638.a n = A300725 (n + 1)

end A300725

/-! ## A300725.P17490735781319603258

`Δ[A005728(n)]-A300724(n+1)`
-/

namespace A300725.P17490735781319603258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A300724 (n + 1)

end

end A300725.P17490735781319603258

namespace A300725

/-- `Δ[A005728(n)]-A300724(n+1)` -/
def P17490735781319603258.Spec : Prop :=
  ∀ n, P17490735781319603258.a n = A300725 (n + 1)

end A300725

/-! ## A300725.P2842084181532505422

`A000010(n+1)-A300724(n+1)`
-/

namespace A300725.P2842084181532505422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A300724 (n + 1)

end

end A300725.P2842084181532505422

namespace A300725

/-- `A000010(n+1)-A300724(n+1)` -/
def P2842084181532505422.Spec : Prop :=
  ∀ n, P2842084181532505422.a n = A300725 (n + 1)

end A300725

/-! ## A300725.P13904307750468208535

`sqrt(A127473(n+1))-A300724(n+1)`
-/

namespace A300725.P13904307750468208535
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) - (A300724 (n + 1) : ℝ)

end

end A300725.P13904307750468208535

namespace A300725

/-- `sqrt(A127473(n+1))-A300724(n+1)` -/
def P13904307750468208535.Spec : Prop :=
  ∀ n, P13904307750468208535.a n = (A300725 (n + 1) : ℝ)

end A300725

/-! ## A300725.P6934789594477398587

`A039649(n+1)-(A300724(n+1)+1)`
-/

namespace A300725.P6934789594477398587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - (A300724 (n + 1) + 1)

end

end A300725.P6934789594477398587

namespace A300725

/-- `A039649(n+1)-(A300724(n+1)+1)` -/
def P6934789594477398587.Spec : Prop :=
  ∀ n, P6934789594477398587.a n = A300725 (n + 1)

theorem P6934789594477398587.correct : P6934789594477398587.Spec := by
  intro n
  simp only [A300725, Nat.add_sub_cancel, A300725.P6934789594477398587.a, A300725.P18126908090071404131.f1, A300725.P18126908090071404131.a, A003557, A003557.P6364735403900941810.a, A039649, A039649.P16717312505280968063.a, A300724, A300724.P6183862051817097321.f1, A300724.P6183862051817097321.a, A000010, A000010.P4673923239450215316.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A082908, A082908.P3033675240048837863.a, A361984, A361984.P10115388884131320115.f1, A361984.P10115388884131320115.a, A000265, A000265.P16482698636471710744.a, A006519, A006519.P10435570611646570274.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300725

/-! ## A300725.P8729665939763967811

`n-(A300724(n+1)+A219428(n+1))`
-/

namespace A300725.P8729665939763967811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A300724 (n + 1) + A219428 (n + 1))

end

end A300725.P8729665939763967811

namespace A300725

/-- `n-(A300724(n+1)+A219428(n+1))` -/
def P8729665939763967811.Spec : Prop :=
  ∀ n, P8729665939763967811.a n = A300725 (n + 1)

theorem P8729665939763967811.correct : P8729665939763967811.Spec := by
  intro n
  simp only [A300725, Nat.add_sub_cancel, A300725.P8729665939763967811.a, A300725.P18126908090071404131.f1, A300725.P18126908090071404131.a, A003557, A003557.P6364735403900941810.a, A219428, A219428.P9184341513320465947.a, A300724, A300724.P6183862051817097321.f1, A300724.P6183862051817097321.a, A000010, A000010.P4673923239450215316.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A082908, A082908.P3033675240048837863.a, A361984, A361984.P10115388884131320115.f1, A361984.P10115388884131320115.a, A000265, A000265.P16482698636471710744.a, A006519, A006519.P10435570611646570274.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300725

/-! ## A300725.P14625003994609292868

`1-A051953(n+1)+n-A300724(n+1)`
-/

namespace A300725.P14625003994609292868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A051953 (n + 1) + (n : ℤ) - A300724 (n + 1)

end

end A300725.P14625003994609292868

namespace A300725

/-- `1-A051953(n+1)+n-A300724(n+1)` -/
def P14625003994609292868.Spec : Prop :=
  ∀ n, P14625003994609292868.a n = A300725 (n + 1)

theorem P14625003994609292868.correct : P14625003994609292868.Spec := by
  intro n
  simp only [A300725, Nat.add_sub_cancel, A300725.P14625003994609292868.a, A300725.P18126908090071404131.f1, A300725.P18126908090071404131.a, A003557, A003557.P6364735403900941810.a, A051953, A051953.P11179276897610979764.a, A300724, A300724.P6183862051817097321.f1, A300724.P6183862051817097321.a, A000010, A000010.P4673923239450215316.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A082908, A082908.P3033675240048837863.a, A361984, A361984.P10115388884131320115.f1, A361984.P10115388884131320115.a, A000265, A000265.P16482698636471710744.a, A006519, A006519.P10435570611646570274.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300725

/-! ## A300725.P4393182185532273966

`∑{d}[n+1, A008683(#)*A053645((n+1)/#)]`
-/

namespace A300725.P4393182185532273966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A053645 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A300725.P4393182185532273966

namespace A300725

/-- `∑{d}[n+1, A008683(#)*A053645((n+1)/#)]` -/
def P4393182185532273966.Spec : Prop :=
  ∀ n, P4393182185532273966.a n = A300725 (n + 1)

end A300725

/-! ## A300725.P18126908090071404131

`∏{p}[n+1, #-1]*A003557(n+1)-A300724(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A300725

/-- `∏{p}[n+1, #-1]*A003557(n+1)-A300724(n+1)` -/
def P18126908090071404131.Spec : Prop :=
  ∀ n, P18126908090071404131.a n = A300725 (n + 1)

theorem P18126908090071404131.correct : P18126908090071404131.Spec := by
  intro n
  simp only [A300725, Nat.add_sub_cancel]

end A300725

/-! ## A300725.P14691775639029187784

`(n+1)/∏{p}[n+1, #]*A173557(n+1)-A300724(n+1)`
-/

namespace A300725.P14691775639029187784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * (A173557 (n + 1) : ℚ) - (A300724 (n + 1) : ℚ)

end

end A300725.P14691775639029187784

namespace A300725

/-- `(n+1)/∏{p}[n+1, #]*A173557(n+1)-A300724(n+1)` -/
def P14691775639029187784.Spec : Prop :=
  ∀ n, P14691775639029187784.a n = (A300725 (n + 1) : ℚ)

end A300725

/-! ## A300725.P4471453717561482896

`A000010(n+1)+A300726(n+1)-A053644(n+1)`
-/

namespace A300725.P4471453717561482896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A300726 (n + 1) - A053644 (n + 1))

end

end A300725.P4471453717561482896

namespace A300725

/-- `A000010(n+1)+A300726(n+1)-A053644(n+1)` -/
def P4471453717561482896.Spec : Prop :=
  ∀ n, P4471453717561482896.a n = A300725 (n + 1)

theorem P4471453717561482896.correct : P4471453717561482896.Spec := by
  intro n
  simp only [A300725, Nat.add_sub_cancel, A300725.P4471453717561482896.a, A300725.P18126908090071404131.f1, A300725.P18126908090071404131.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A053644, A053644.P1707366427427647095.a, A300724, A300724.P6183862051817097321.f1, A300724.P6183862051817097321.a, A300726, A300726.P6411943610807453951.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A082908, A082908.P3033675240048837863.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A361984, A361984.P10115388884131320115.f1, A361984.P10115388884131320115.a, A000265, A000265.P16482698636471710744.a, A006519, A006519.P10435570611646570274.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300725

/-! ## A300725.P7275472849312145912

`A048864(n+1)+A048865(n+1)-A300724(n+1)`
-/

namespace A300725.P7275472849312145912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048864 (n + 1) + (A048865 (n + 1) - A300724 (n + 1))

end

end A300725.P7275472849312145912

namespace A300725

/-- `A048864(n+1)+A048865(n+1)-A300724(n+1)` -/
def P7275472849312145912.Spec : Prop :=
  ∀ n, P7275472849312145912.a n = A300725 (n + 1)

end A300725

/-! ## A300725.P15450709543563400932

`A317839(n+1)+A317841(n+1)-A300724(n+1)`
-/

namespace A300725.P15450709543563400932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317839 (n + 1) + (A317841 (n + 1) - A300724 (n + 1))

end

end A300725.P15450709543563400932

namespace A300725

/-- `A317839(n+1)+A317841(n+1)-A300724(n+1)` -/
def P15450709543563400932.Spec : Prop :=
  ∀ n, P15450709543563400932.a n = A300725 (n + 1)

theorem P15450709543563400932.correct : P15450709543563400932.Spec := by
  intro n
  simp only [A300725, Nat.add_sub_cancel, A300725.P15450709543563400932.a, A300725.P18126908090071404131.f1, A300725.P18126908090071404131.a, A003557, A003557.P6364735403900941810.a, A300724, A300724.P6183862051817097321.f1, A300724.P6183862051817097321.a, A317839, A317839.P17371659085018084050.f1, A317839.P17371659085018084050.a, A317841, A317841.P1605425394467167167.a, A000010, A000010.P4673923239450215316.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A082908, A082908.P3033675240048837863.a, A317838, A317838.P14369629829777606586.a, A361984, A361984.P10115388884131320115.f1, A361984.P10115388884131320115.a, A000265, A000265.P16482698636471710744.a, A002487, A002487.P6236436194084017932.a, A006519, A006519.P10435570611646570274.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A317837, A317837.P16143556663053745700.f1, A317837.P16143556663053745700.a, A000120, A000120.P2816527436160941581.a, A168081, A168081.P16359451533663323532.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300725

/-! ## A300725.P14091691152721753496

`A002322(n+1)*A034380(n+1)-A300724(n+1)`
-/

namespace A300725.P14091691152721753496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1) * A034380 (n + 1) - A300724 (n + 1)

end

end A300725.P14091691152721753496

namespace A300725

/-- `A002322(n+1)*A034380(n+1)-A300724(n+1)` -/
def P14091691152721753496.Spec : Prop :=
  ∀ n, P14091691152721753496.a n = A300725 (n + 1)

end A300725

/-! ## A300725.P3186930121909629828

`A049633(n)-(A300724(n+1)+A049632(n))`
-/

namespace A300725.P3186930121909629828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049633 n - (A300724 (n + 1) + A049632 n)

end

end A300725.P3186930121909629828

namespace A300725

/-- `A049633(n)-(A300724(n+1)+A049632(n))` -/
def P3186930121909629828.Spec : Prop :=
  ∀ n, P3186930121909629828.a n = A300725 (n + 1)

end A300725

/-!
# A300726: Difference between A053644 (the largest power of 2 less than or equal to n) and its Möbius transform.

The programs for A300726, the canonical program `A300726.P6411943610807453951` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300726 has offset 1).

The definition of A300726 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A300724, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A300726.P6411943610807453951

`A053644(n+1)-A300724(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A300726

/-- `A053644(n+1)-A300724(n+1)` -/
def P6411943610807453951.Spec : Prop :=
  ∀ n, P6411943610807453951.a n = A300726 (n + 1)

theorem P6411943610807453951.correct : P6411943610807453951.Spec := by
  intro n
  simp only [A300726, Nat.add_sub_cancel]

end A300726

/-! ## A300726.P9842398106696892461

`∑{d}[n+1, A300724(#)]-A300724(n+1)`
-/

namespace A300726.P9842398106696892461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A300724 d - A300724 (n + 1)

end

end A300726.P9842398106696892461

namespace A300726

/-- `∑{d}[n+1, A300724(#)]-A300724(n+1)` -/
def P9842398106696892461.Spec : Prop :=
  ∀ n, P9842398106696892461.a n = A300726 (n + 1)

end A300726

/-! ## A300726.P13861326001110530403

`n+1-(A300724(n+1)+A053645(n+1))`
-/

namespace A300726.P13861326001110530403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A300724 (n + 1) + A053645 (n + 1))

end

end A300726.P13861326001110530403

namespace A300726

/-- `n+1-(A300724(n+1)+A053645(n+1))` -/
def P13861326001110530403.Spec : Prop :=
  ∀ n, P13861326001110530403.a n = A300726 (n + 1)

end A300726

/-! ## A300726.P6500412394833281340

`A062383(A110654(n))-A300724(n+1)`
-/

namespace A300726.P6500412394833281340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A110654 n).toNat - A300724 (n + 1)

end

end A300726.P6500412394833281340

namespace A300726

/-- `A062383(A110654(n))-A300724(n+1)` -/
def P6500412394833281340.Spec : Prop :=
  ∀ n, P6500412394833281340.a n = A300726 (n + 1)

end A300726

/-! ## A300726.P6674639507734697920

`A053644(n+1)+A300725(n+1)-A000010(n+1)`
-/

namespace A300726.P6674639507734697920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1) + (A300725 (n + 1) - A000010 (n + 1))

end

end A300726.P6674639507734697920

namespace A300726

/-- `A053644(n+1)+A300725(n+1)-A000010(n+1)` -/
def P6674639507734697920.Spec : Prop :=
  ∀ n, P6674639507734697920.a n = A300726 (n + 1)

theorem P6674639507734697920.correct : P6674639507734697920.Spec := by
  intro n
  simp only [A300726, Nat.add_sub_cancel, A300726.P6674639507734697920.a, A300726.P6411943610807453951.a, A000010, A000010.P4673923239450215316.a, A053644, A053644.P1707366427427647095.a, A300724, A300724.P6183862051817097321.f1, A300724.P6183862051817097321.a, A300725, A300725.P18126908090071404131.f1, A300725.P18126908090071404131.a, A003557, A003557.P6364735403900941810.a, A082908, A082908.P3033675240048837863.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A361984, A361984.P10115388884131320115.f1, A361984.P10115388884131320115.a, A000265, A000265.P16482698636471710744.a, A006519, A006519.P10435570611646570274.a, A007427, A007427.P16363569186413612215.f1, A007427.P16363569186413612215.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300726

/-!
# A300732: G.f. A(x) satisfies: [x^n] A( x/A(x)^(2*n) ) = 0 for n>=1.

The programs for A300732, there is no canonical definition to state claims against.
-/

/-! ## A300732.P4484183385570781933

`n*A261416(a(n-1))` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A300732.P4484183385570781933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n a =>
  (n : ℤ) * A261416 (a (n - 1)).toNat

end

end A300732.P4484183385570781933

/-!
# A300733: G.f. A(x) satisfies: [x^n] A( x/A(x)^(3*n) ) = 0 for n>=1.

The programs for A300733, there is no canonical definition to state claims against.
-/

/-! ## A300733.P6639695141812269959

`A119253(A293749(n))*A161631(n)`
-/

namespace A300733.P6639695141812269959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119253 (A293749 n).toNat * A161631 n

end

end A300733.P6639695141812269959

/-!
# A300734: G.f. A(x) satisfies: [x^n] A( x/A(x)^(2*n^2) ) = 0 for n>1.

The programs for A300734, there is no canonical definition to state claims against.
-/

/-! ## A300734.P8768057840692543888

`A025897(A133646(n))+A000142(n)`
-/

namespace A300734.P8768057840692543888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025897 (A133646 n).toNat + A000142 n

end

end A300734.P8768057840692543888

/-!
# A300735: E.g.f. A(x) satisfies: [x^n] A(x)^(2*n) = (n+1) * [x^(n-1)] A(x)^(2*n) for n>=1.

The programs for A300735, there is no canonical definition to state claims against.
-/

/-! ## A300735.P13209690050800700017

`A345343(n!)-2`
-/

namespace A300735.P13209690050800700017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345343 (Nat.factorial n) - 2

end

end A300735.P13209690050800700017

/-!
# A300736: O.g.f. A(x) satisfies: A(x) = x*(1 - x*A'(x)) / (1 - 2*x*A'(x)).

The programs for A300736, there is no canonical definition to state claims against.
-/

/-! ## A300736.P8173408839923629235

`A020656(A343417(n)+A213096(n))`
-/

namespace A300736.P8173408839923629235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020656 (A343417 n + A213096 n).toNat

end

end A300736.P8173408839923629235

/-! ## A300736.P2793896372656022731

`A302405(A090367(n)-A002266(n))`
-/

namespace A300736.P2793896372656022731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302405 (A090367 n - A002266 n).toNat

end

end A300736.P2793896372656022731

/-!
# A300737: Numbers of the form (k*i + 1)*(k*j - 1) with i, j >= 1 and k >= 2.

The programs for A300737, there is no canonical definition to state claims against.
-/

/-! ## A300737.P17116051235386596776

`lt[A027023(n), A018783(n+1)]`
-/

namespace A300737.P17116051235386596776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300737.P17116051235386596776

/-! ## A300737.P9964834494088190128

`lt[A057237(n+1), A077462(n)]`
-/

namespace A300737.P9964834494088190128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300737.P9964834494088190128

/-! ## A300737.P15222419009857823110

`lt[A141256(n), A300248(n+1)]`
-/

namespace A300737.P15222419009857823110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141256 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300248 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300737.P15222419009857823110

/-! ## A300737.P5515627056133903216

`lt[A000203(A174824(n+1)), n²]`
-/

namespace A300737.P5515627056133903216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A174824 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A300737.P5515627056133903216

/-! ## A300737.P9122302404072471654

`lt[A057237(n+1)², A304442(n)]`
-/

namespace A300737.P9122302404072471654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300737.P9122302404072471654

/-! ## A300737.P12108812002699211042

`comp[lt[A032741(n), A057237(n+1)]]`
-/

namespace A300737.P12108812002699211042
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A300737.P12108812002699211042

/-! ## A300737.P14394986681478526629

`comp[lt[A077462(n), A020639(n+1)]]`
-/

namespace A300737.P14394986681478526629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A300737.P14394986681478526629

/-! ## A300737.P4583036894962721263

`comp[lt[A077462(n), A074828(n+1)]]`
-/

namespace A300737.P4583036894962721263
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A300737.P4583036894962721263

/-! ## A300737.P5582919700824746014

`lt[A174824(n+1), A053650(n+1)]`
-/

namespace A300737.P5582919700824746014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174824 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053650 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300737.P5582919700824746014

/-! ## A300737.P2127737527692909904

`lt[A290103(n+1), A003415(n+1)]`
-/

namespace A300737.P2127737527692909904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300737.P2127737527692909904

/-!
# A300738: Number of minimal total dominating sets in the n-cycle graph.

The programs for A300738, the canonical program `A300738.P17509295025793297960` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300738 has offset 1).

The definition of A300738 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A300738.P17509295025793297960

`a(n-3)+a(n-4)+a(n-5)+a(n-6)-a(n-8)-a(n-9)` with `a(0)=0, a(1)=0, a(2)=3, a(3)=4, a(4)=5, a(5)=9, a(6)=7, a(7)=4, a(8)=12`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A300738

/-- `a(n-3)+a(n-4)+a(n-5)+a(n-6)-a(n-8)-a(n-9)` -/
def P17509295025793297960.Spec : Prop :=
  ∀ n, P17509295025793297960.a n = A300738 (n + 1)

theorem P17509295025793297960.correct : P17509295025793297960.Spec := by
  intro n
  simp only [A300738, Nat.add_sub_cancel]

end A300738

/-! ## A300738.P4798190429880744107

`A302658(n+2)-(n+1)`
-/

namespace A300738.P4798190429880744107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302658 (n + 2) - (n + 1 : ℤ)

end

end A300738.P4798190429880744107

namespace A300738

/-- `A302658(n+2)-(n+1)` -/
def P4798190429880744107.Spec : Prop :=
  ∀ n, P4798190429880744107.a n = A300738 (n + 1)

theorem P4798190429880744107.correct : P4798190429880744107.Spec := by
  intro n
  simp only [A300738, Nat.add_sub_cancel, A300738.P4798190429880744107.a, A300738.P17509295025793297960.a, A302658, A302658.P14429019079959570714.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300738

/-! ## A300738.P2313789150787151144

`A298823(n+1)-2*(n+1)`
-/

namespace A300738.P2313789150787151144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298823 (n + 1) - (2 * (n + 1) : ℤ)

end

end A300738.P2313789150787151144

namespace A300738

/-- `A298823(n+1)-2*(n+1)` -/
def P2313789150787151144.Spec : Prop :=
  ∀ n, P2313789150787151144.a n = A300738 (n + 1)

theorem P2313789150787151144.correct : P2313789150787151144.Spec := by
  intro n
  simp only [A300738, Nat.add_sub_cancel, A300738.P2313789150787151144.a, A300738.P17509295025793297960.a, A298823, A298823.P17623720946952442995.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300738

/-! ## A300738.P12715849152358213392

`A001608(A026741(n+1))^A000034(n)`
-/

namespace A300738.P12715849152358213392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001608 (A026741 (n + 1)).toNat : ℚ) ^ (A000034 n : ℤ)

end

end A300738.P12715849152358213392

namespace A300738

/-- `A001608(A026741(n+1))^A000034(n)` -/
def P12715849152358213392.Spec : Prop :=
  ∀ n, P12715849152358213392.a n = (A300738 (n + 1) : ℚ)

end A300738

/-! ## A300738.P12394190016781285616

`(2*A302658(n+2))%A298823(n+1)`
-/

namespace A300738.P12394190016781285616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A302658 (n + 2)) (A298823 (n + 1))

end

end A300738.P12394190016781285616

namespace A300738

/-- `(2*A302658(n+2))%A298823(n+1)` -/
def P12394190016781285616.Spec : Prop :=
  ∀ n, P12394190016781285616.a n = A300738 (n + 1)

end A300738

/-!
# A300739: Coordination sequence T1 for Zeolite Code *BEA.

The programs for A300739, there is no canonical definition to state claims against.
-/

/-! ## A300739.P14438379938525768573

`A008000(n)-A290566(A204436(n))`
-/

namespace A300739.P14438379938525768573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A290566 (A204436 n).toNat

end

end A300739.P14438379938525768573

/-! ## A300739.P2090640126338329990

`∑[∑[A001222(A030864(n+1))]]`
-/

namespace A300739.P2090640126338329990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A030864 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300739.P2090640126338329990

/-! ## A300739.P8274368864880395359

`∑[∑[A369475(A231785(3*n+1))]]`
-/

namespace A300739.P8274368864880395359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369475 (A231785 (3 * n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300739.P8274368864880395359

/-! ## A300739.P3838497169421179630

`A299257(n)-∑[A021913(A001700(n))]`
-/

namespace A300739.P3838497169421179630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A001700 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299257 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300739.P3838497169421179630

/-!
# A300740: Coordination sequence T2 for Zeolite Code *BEA.

The programs for A300740, there is no canonical definition to state claims against.
-/

/-! ## A300740.P3756467459697460912

`A009866(n)-A001222(A094433(n))`
-/

namespace A300740.P3756467459697460912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009866 n - A001222 (A094433 n).toNat

end

end A300740.P3756467459697460912

/-! ## A300740.P6686303935843485178

`∑[∑[A339896(A255303(n))+1]]`
-/

namespace A300740.P6686303935843485178
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339896 (A255303 n).toNat + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300740.P6686303935843485178

/-! ## A300740.P16735467628801496852

`∑[A325781(n+1)+record[A325770(n+1)]]`
-/

namespace A300740.P16735467628801496852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325770 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325781 (n + 1) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300740.P16735467628801496852

/-! ## A300740.P17058592627157158742

`A008000(n)-A002828(A002740(n))`
-/

namespace A300740.P17058592627157158742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A002828 (A002740 n).toNat

end

end A300740.P17058592627157158742

/-! ## A300740.P18053023496777013042

`A008012(n)-A007968(A007981(3*n+4))`
-/

namespace A300740.P18053023496777013042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008012 n - A007968 (A007981 (3 * n + 4)).toNat

end

end A300740.P18053023496777013042

/-!
# A300741: Coordination sequence T3 for Zeolite Code *BEA.

The programs for A300741, there is no canonical definition to state claims against.
-/

/-! ## A300741.P12970126641410802666

`∑[A366611(A353764(n+1)²)]`
-/

namespace A300741.P12970126641410802666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366611 (A353764 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300741.P12970126641410802666

/-! ## A300741.P10808742917008783753

`A301152(n)-A359370(A022811(3*n+2))`
-/

namespace A300741.P10808742917008783753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301152 n - A359370 (A022811 (3 * n + 2)).toNat

end

end A300741.P10808742917008783753

/-!
# A300742: Coordination sequence T4 for Zeolite Code *BEA.

The programs for A300742, there is no canonical definition to state claims against.
-/

/-! ## A300742.P17165565716482173323

`A008000(n)-A297246(A291337(n))`
-/

namespace A300742.P17165565716482173323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008000 n - A297246 (A291337 n).toNat

end

end A300742.P17165565716482173323

/-! ## A300742.P2044799670426849928

`A024326(A000244(n+1))+A009870(n)`
-/

namespace A300742.P2044799670426849928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024326 (A000244 (n + 1)).toNat + A009870 n

end

end A300742.P2044799670426849928

/-! ## A300742.P10605806510982479698

`A254379(A166839(n+1))+A008050(n)`
-/

namespace A300742.P10605806510982479698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254379 (A166839 (n + 1)).toNat + A008050 n

end

end A300742.P10605806510982479698

/-! ## A300742.P6374962253344525112

`A127325(A300759(n+1))+A009870(n)`
-/

namespace A300742.P6374962253344525112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127325 (A300759 (n + 1)).toNat + A009870 n

end

end A300742.P6374962253344525112

/-!
# A300744: Coordination sequence T6 for Zeolite Code *BEA.

The programs for A300744, there is no canonical definition to state claims against.
-/

/-! ## A300744.P17351549495315214191

`A151661(A002134(n+6)+A001285(n))`
-/

namespace A300744.P17351549495315214191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151661 (A002134 (n + 6) + A001285 n).toNat

end

end A300744.P17351549495315214191

/-!
# A300748: Least prime divisor of A300629(n).

The programs for A300748, there is no canonical definition to state claims against.
-/

/-! ## A300748.P6419612067097095281

`record[round(sqrt(A162290(n+1)))]`
-/

namespace A300748.P6419612067097095281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A162290 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300748.P6419612067097095281

/-! ## A300748.P9794833939770007988

`record[A141710(n+1)]`
-/

namespace A300748.P9794833939770007988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300748.P9794833939770007988

/-! ## A300748.P3915714226333208048

`record[A002997(n+1)/A081703(n+1)]`
-/

namespace A300748.P3915714226333208048
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002997 (n + 1) : ℚ) / (A081703 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300748.P3915714226333208048

/-!
# A300749: Number of connected squarefree bipartite graphs on n vertices.

The programs for A300749, there is no canonical definition to state claims against.
-/

/-! ## A300749.P11570036829263175438

`A232012(A152536(n))`
-/

namespace A300749.P11570036829263175438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232012 (A152536 n).toNat

end

end A300749.P11570036829263175438

/-! ## A300749.P3107120230686248372

`A257539(A333313(n))`
-/

namespace A300749.P3107120230686248372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257539 (A333313 n).toNat

end

end A300749.P3107120230686248372

/-! ## A300749.P11380996321823027975

`A359415(A032173(n+2))`
-/

namespace A300749.P11380996321823027975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359415 (A032173 (n + 2)).toNat

end

end A300749.P11380996321823027975

/-! ## A300749.P9099909261178910490

`A002013(n)-A085978(A153677(n+1))`
-/

namespace A300749.P9099909261178910490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002013 n - A085978 (A153677 (n + 1)).toNat

end

end A300749.P9099909261178910490

/-! ## A300749.P9743253732653216995

`A333313(n)-A080343(A373128(n+1))`
-/

namespace A300749.P9743253732653216995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333313 n - A080343 (A373128 (n + 1)).toNat

end

end A300749.P9743253732653216995

/-!
# A300751: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with x + 3*y + 5*z a positive square, where x,y,z,w are nonnegative integers such that 2*x or y or z is a square.

The programs for A300751, there is no canonical definition to state claims against.
-/

/-! ## A300751.P1871416682107268656

`A300752(n+1)+A185284(A300715(n))`
-/

namespace A300751.P1871416682107268656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300752 (n + 1) + A185284 (A300715 n).toNat

end

end A300751.P1871416682107268656

/-! ## A300751.P13208234866833107120

`A300752(n+1)%A079397(n)`
-/

namespace A300751.P13208234866833107120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300752 (n + 1)) (A079397 n)

end

end A300751.P13208234866833107120

/-! ## A300751.P14543302122025290951

`A300752(n+1)*A347950((3*floor(n*ϕ²+ϕ)-n)²)`
-/

namespace A300751.P14543302122025290951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300752 (n + 1) * A347950 ((3 * ⌊(n : ℝ) * Real.goldenRatio ^ 2 + Real.goldenRatio⌋ - (n : ℤ)) ^ 2).toNat

end

end A300751.P14543302122025290951

/-! ## A300751.P7920084233641777454

`A300752(n+1)+A010051(A005898(n))`
-/

namespace A300751.P7920084233641777454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300752 (n + 1) + A010051 (A005898 n).toNat

end

end A300751.P7920084233641777454

/-! ## A300751.P16440115060400007301

`A300752(n+1)*A368331(A290353(3*n+1))`
-/

namespace A300751.P16440115060400007301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300752 (n + 1) * A368331 (A290353 (3 * n + 1)).toNat

end

end A300751.P16440115060400007301

/-!
# A300752: Number of ways to write n as x^2 + y^2 + z^2 + w^2 with x + 3*y + 5*z a positive square, where x,y,z,w are nonnegative integers such that 3*x or y or z is a square.

The programs for A300752, there is no canonical definition to state claims against.
-/

/-! ## A300752.P12672297395813538525

`A300751(n+1)-A185284(A300715(n))`
-/

namespace A300752.P12672297395813538525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300751 (n + 1) - A185284 (A300715 n).toNat

end

end A300752.P12672297395813538525

/-!
# A300756: Triangle T(n,k) read by rows: number of squarefree graphs on n nodes with k components.

The programs for A300756, there is no canonical definition to state claims against.
-/

/-! ## A300756.P6955371777990085274

`A106234(n+1)-A001221(A194673(n))`
-/

namespace A300756.P6955371777990085274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106234 (n + 1) - A001221 (A194673 n).toNat

end

end A300756.P6955371777990085274

/-! ## A300756.P13717566615267558033

`A033185(n+1)-(A106235(n+1)+A001221(A194673(n)))`
-/

namespace A300756.P13717566615267558033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (n + 1) - (A106235 (n + 1) + A001221 (A194673 n).toNat)

end

end A300756.P13717566615267558033

/-! ## A300756.P2374324200290981686

`A000194(A215977(n)^A166240(n+1))`
-/

namespace A300756.P2374324200290981686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (SequenceMachineLib.roundAway ((A215977 n : ℚ) ^ (A166240 (n + 1) : ℤ))).toNat

end

end A300756.P2374324200290981686

/-! ## A300756.P13635807646996035524

`A372361(A208825(n+4))+A215977(n)`
-/

namespace A300756.P13635807646996035524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372361 (A208825 (n + 4)).toNat + A215977 n

end

end A300756.P13635807646996035524

/-! ## A300756.P10431348268930906899

`A007558(A238353(n))*A334440(A255704(n+1)²²)`
-/

namespace A300756.P10431348268930906899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007558 (A238353 n).toNat * A334440 ((A255704 (n + 1) ^ 2) ^ 2).toNat

end

end A300756.P10431348268930906899

/-!
# A300757: Number of {0,1} n X n matrices with at least one zero row or column.

The programs for A300757, there is no canonical definition to state claims against.
-/

/-! ## A300757.P18000590370406109807

`2^n²-A048291(n)`
-/

namespace A300757.P18000590370406109807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n ^ 2 : ℤ) - A048291 n

end

end A300757.P18000590370406109807

/-! ## A300757.P6848800557800134352

`abs(A002416(n)-A048291(n))`
-/

namespace A300757.P6848800557800134352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002416 n - A048291 n|

end

end A300757.P6848800557800134352

/-! ## A300757.P15066632246051267136

`A002416(n)-A183109(C(n+1, abs(1-n)))`
-/

namespace A300757.P15066632246051267136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002416 n - A183109 (Nat.choose (n + 1) |1 - (n : ℤ)|.toNat)

end

end A300757.P15066632246051267136

/-! ## A300757.P5097323827247624993

`A000079(n²)-A183109(C(n+1, abs(1-n)))`
-/

namespace A300757.P5097323827247624993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n ^ 2) - A183109 (Nat.choose (n + 1) |1 - (n : ℤ)|.toNat)

end

end A300757.P5097323827247624993

/-! ## A300757.P10913746243855826683

`A002416(n)-A183109(A179865(n+1))`
-/

namespace A300757.P10913746243855826683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002416 n - A183109 (A179865 (n + 1)).toNat

end

end A300757.P10913746243855826683

/-!
# A300758: a(n) = 2n*(n+1)*(2n+1).

The programs for A300758, the canonical program `A300758.P12177003143173864216` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300758 has offset 0).

The definition of A300758 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(n+1)*(2*n+1)` (program `A300758.P12177003143173864216`, by `A300758.P12177003143173864216.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A300758.P12177003143173864216

`2*n*(n+1)*(2*n+1)`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A300758

/-- `2*n*(n+1)*(2*n+1)` -/
def P12177003143173864216.Spec : Prop :=
  ∀ n, (P12177003143173864216.a n : ℤ) = A300758 n

theorem P12177003143173864216.correct : P12177003143173864216.Spec := by
  intro n
  simp only [A300758]

end A300758

/-! ## A300758.P8850570110166306840

`sqrt(A016754(n)*A060300(n))`
-/

namespace A300758.P8850570110166306840
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016754 n * A060300 n : ℝ)

end

end A300758.P8850570110166306840

namespace A300758

/-- `sqrt(A016754(n)*A060300(n))` -/
def P8850570110166306840.Spec : Prop :=
  ∀ n, P8850570110166306840.a n = (A300758 n : ℝ)

end A300758

/-! ## A300758.P16471406278557028760

`Δ[2*C(n², 2)]`
-/

namespace A300758.P16471406278557028760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (n ^ 2) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A300758.P16471406278557028760

namespace A300758

/-- `Δ[2*C(n², 2)]` -/
def P16471406278557028760.Spec : Prop :=
  ∀ n, P16471406278557028760.a n = A300758 n

theorem P16471406278557028760.correct : P16471406278557028760.Spec := by
  intro n
  simp only [A300758, Nat.add_sub_cancel, A300758.P16471406278557028760.f1, A300758.P16471406278557028760.a, A300758.P12177003143173864216.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A300758

/-! ## A300758.P3190795863338353867

`lcm(2, ∑[12*n^2])`
-/

namespace A300758.P3190795863338353867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A300758.P3190795863338353867

namespace A300758

/-- `lcm(2, ∑[12*n^2])` -/
def P3190795863338353867.Spec : Prop :=
  ∀ n, (P3190795863338353867.a n : ℤ) = A300758 n

end A300758

/-! ## A300758.P12262790851817269597

`Δ[lcm(1-n², n²)]`
-/

namespace A300758.P12262790851817269597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (n ^ 2 : ℤ)) (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A300758.P12262790851817269597

namespace A300758

/-- `Δ[lcm(1-n², n²)]` -/
def P12262790851817269597.Spec : Prop :=
  ∀ n, P12262790851817269597.a n = A300758 n

end A300758

/-! ## A300758.P9177128350193972733

`a(n-1)+12*n²` with `a(0)=0`
-/

namespace A300758.P9177128350193972733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 12 * n ^ 2

end

end A300758.P9177128350193972733

namespace A300758

/-- `a(n-1)+12*n²` -/
def P9177128350193972733.Spec : Prop :=
  ∀ n, (P9177128350193972733.a n : ℤ) = A300758 n

theorem P9177128350193972733.correct : P9177128350193972733.Spec := by
  intro n
  induction n with
  | zero => simp [A300758, A300758.P9177128350193972733.a, A300758.P12177003143173864216.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A300758, Nat.add_sub_cancel, A300758.P9177128350193972733.a, A300758.P12177003143173864216.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A300758

/-! ## A300758.P239029666923396283

`Δ[n^4]-or(1, 2*n)`
-/

namespace A300758.P239029666923396283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.lor 1 (2 * n) : ℤ)

end

end A300758.P239029666923396283

namespace A300758

/-- `Δ[n^4]-or(1, 2*n)` -/
def P239029666923396283.Spec : Prop :=
  ∀ n, P239029666923396283.a n = A300758 n

end A300758

/-! ## A300758.P9768375943689835740

`xor(1, Δ[n^4]-2*n)`
-/

namespace A300758.P9768375943689835740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (2 * n : ℤ))

end

end A300758.P9768375943689835740

namespace A300758

/-- `xor(1, Δ[n^4]-2*n)` -/
def P9768375943689835740.Spec : Prop :=
  ∀ n, P9768375943689835740.a n = A300758 n

end A300758

/-! ## A300758.P16659340708960299081

`xor(1, Δ[n²²])-2*n`
-/

namespace A300758.P16659340708960299081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) - (2 * n : ℤ)

end

end A300758.P16659340708960299081

namespace A300758

/-- `xor(1, Δ[n²²])-2*n` -/
def P16659340708960299081.Spec : Prop :=
  ∀ n, P16659340708960299081.a n = A300758 n

end A300758

/-! ## A300758.P8906080969821138196

`Δ[gcd(n, 2*n)²²-n²]`
-/

namespace A300758.P8906080969821138196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd n (2 * n) ^ 2) ^ 2 : ℤ) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A300758.P8906080969821138196

namespace A300758

/-- `Δ[gcd(n, 2*n)²²-n²]` -/
def P8906080969821138196.Spec : Prop :=
  ∀ n, P8906080969821138196.a n = A300758 n

theorem P8906080969821138196.correct : P8906080969821138196.Spec := by
  intro n
  simp only [A300758, Nat.add_sub_cancel, A300758.P8906080969821138196.f1, A300758.P8906080969821138196.a, A300758.P12177003143173864216.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A300758

/-! ## A300758.P13616783282511359926

`Δ[or(2, n²²)]-(2*n+1)`
-/

namespace A300758.P13616783282511359926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 ((n ^ 2) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (2 * n + 1 : ℤ)

end

end A300758.P13616783282511359926

namespace A300758

/-- `Δ[or(2, n²²)]-(2*n+1)` -/
def P13616783282511359926.Spec : Prop :=
  ∀ n, P13616783282511359926.a n = A300758 n

end A300758

/-! ## A300758.P6227579510621178016

`Δ[(n+1)*n*lcm(n, n-1)]`
-/

namespace A300758.P6227579510621178016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n * Int.lcm (n : ℤ) ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A300758.P6227579510621178016

namespace A300758

/-- `Δ[(n+1)*n*lcm(n, n-1)]` -/
def P6227579510621178016.Spec : Prop :=
  ∀ n, P6227579510621178016.a n = A300758 n

end A300758

/-! ## A300758.P5604645154501410108

`∑[A135453(n)]`
-/

namespace A300758.P5604645154501410108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300758.P5604645154501410108

namespace A300758

/-- `∑[A135453(n)]` -/
def P5604645154501410108.Spec : Prop :=
  ∀ n, P5604645154501410108.a n = A300758 n

end A300758

/-! ## A300758.P10462335548099138982

`A063497(n)/5`
-/

namespace A300758.P10462335548099138982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063497 n : ℚ) / 5

end

end A300758.P10462335548099138982

namespace A300758

/-- `A063497(n)/5` -/
def P10462335548099138982.Spec : Prop :=
  ∀ n, P10462335548099138982.a n = (A300758 n : ℚ)

theorem P10462335548099138982.correct : P10462335548099138982.Spec := by
  intro n
  simp only [A300758, Nat.add_sub_cancel, A300758.P10462335548099138982.a, A300758.P12177003143173864216.a, A063497, A063497.P14189921204005272401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300758

/-! ## A300758.P8129473970574726676

`∑[A195824(n)]/2`
-/

namespace A300758.P8129473970574726676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195824 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A300758.P8129473970574726676

namespace A300758

/-- `∑[A195824(n)]/2` -/
def P8129473970574726676.Spec : Prop :=
  ∀ n, P8129473970574726676.a n = (A300758 n : ℚ)

end A300758

/-! ## A300758.P15709297886464999253

`∑[A016910(n)]/3`
-/

namespace A300758.P15709297886464999253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016910 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A300758.P15709297886464999253

namespace A300758

/-- `∑[A016910(n)]/3` -/
def P15709297886464999253.Spec : Prop :=
  ∀ n, P15709297886464999253.a n = (A300758 n : ℚ)

end A300758

/-! ## A300758.P10963287592290744346

`A181773(n+1)/4`
-/

namespace A300758.P10963287592290744346
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181773 (n + 1) : ℚ) / 4

end

end A300758.P10963287592290744346

namespace A300758

/-- `A181773(n+1)/4` -/
def P10963287592290744346.Spec : Prop :=
  ∀ n, P10963287592290744346.a n = (A300758 n : ℚ)

theorem P10963287592290744346.correct : P10963287592290744346.Spec := by
  intro n
  simp only [A300758, Nat.add_sub_cancel, A300758.P10963287592290744346.a, A300758.P12177003143173864216.a, A181773, A181773.P17003731437091766161.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300758

/-! ## A300758.P10394056019546051564

`A033580(n)+A033430(n)`
-/

namespace A300758.P10394056019546051564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033580 n + A033430 n

end

end A300758.P10394056019546051564

namespace A300758

/-- `A033580(n)+A033430(n)` -/
def P10394056019546051564.Spec : Prop :=
  ∀ n, P10394056019546051564.a n = A300758 n

theorem P10394056019546051564.correct : P10394056019546051564.Spec := by
  intro n
  simp only [A300758, Nat.add_sub_cancel, A300758.P10394056019546051564.a, A300758.P12177003143173864216.a, A033430, A033430.P5214425656551841819.a, A033580, A033580.P10508890947649140634.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300758

/-! ## A300758.P4962105858383028501

`A061804(n)+A033581(n)`
-/

namespace A300758.P4962105858383028501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061804 n + A033581 n

end

end A300758.P4962105858383028501

namespace A300758

/-- `A061804(n)+A033581(n)` -/
def P4962105858383028501.Spec : Prop :=
  ∀ n, P4962105858383028501.a n = A300758 n

theorem P4962105858383028501.correct : P4962105858383028501.Spec := by
  intro n
  simp only [A300758, Nat.add_sub_cancel, A300758.P4962105858383028501.a, A300758.P12177003143173864216.a, A033581, A033581.P13583599227635646969.a, A061804, A061804.P16305426185761710400.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300758

/-! ## A300758.P2385194919260373255

`A084367(n)+A014105(n)`
-/

namespace A300758.P2385194919260373255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084367 n + A014105 n

end

end A300758.P2385194919260373255

namespace A300758

/-- `A084367(n)+A014105(n)` -/
def P2385194919260373255.Spec : Prop :=
  ∀ n, P2385194919260373255.a n = A300758 n

theorem P2385194919260373255.correct : P2385194919260373255.Spec := by
  intro n
  simp only [A300758, Nat.add_sub_cancel, A300758.P2385194919260373255.a, A300758.P12177003143173864216.a, A014105, A014105.P182524374866796289.a, A084367, A084367.P17760541641912809913.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A300758

/-!
# A300759: Multiply a(n) by the first digit of a(n+1) to get a(n+2). The sequence starts with a(1) = 1 and a(2) = 2.

The programs for A300759, there is no canonical definition to state claims against.
-/

/-! ## A300759.P3064306132440370158

`A004086(a(n-1))%10*a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A300759.P3064306132440370158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.tmod (A004086 (a (n - 1)).toNat) 10 * a (n - 2)

end

end A300759.P3064306132440370158

/-! ## A300759.P15641867125315955149

`a(n-2)*A000030(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A300759.P15641867125315955149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) * A000030 (a (n - 1)).toNat

end

end A300759.P15641867125315955149

/-! ## A300759.P11413349705458906153

`val(A061509(a(n-1)), 2)*a(n-2)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A300759.P11413349705458906153
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  SequenceMachineLib.valuation (A061509 (a (n - 1))).toNat 2 * a (n - 2)

end

end A300759.P11413349705458906153

/-!
# A300763: a(n) = ceiling(n/g^3), where g = (1+sqrt(5))/2 is the golden ratio.

The programs for A300763, the canonical program `A300763.P6619392741313547941` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300763 has offset 0).

The definition of A300763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300763.P2786955371506920014

`ceil(n/ϕ^3)`
-/

namespace A300763.P2786955371506920014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.goldenRatio ^ 3⌉

end

end A300763.P2786955371506920014

namespace A300763

/-- `ceil(n/ϕ^3)` -/
def P2786955371506920014.Spec : Prop :=
  ∀ n, P2786955371506920014.a n = A300763 n

end A300763

/-! ## A300763.P4426804590862101476

`ceil(lcm(2, 2*n)/ϕ)-n`
-/

namespace A300763.P4426804590862101476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lcm 2 (2 * n) : ℝ) / Real.goldenRatio⌉ - (n : ℤ)

end

end A300763.P4426804590862101476

namespace A300763

/-- `ceil(lcm(2, 2*n)/ϕ)-n` -/
def P4426804590862101476.Spec : Prop :=
  ∀ n, P4426804590862101476.a n = A300763 n

end A300763

/-! ## A300763.P3817056284486114094

`(floor(n/ϕ^3)+1)%(n+1)`
-/

namespace A300763.P3817056284486114094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (⌊(n : ℝ) / Real.goldenRatio ^ 3⌋ + 1) (n + 1 : ℤ)

end

end A300763.P3817056284486114094

namespace A300763

/-- `(floor(n/ϕ^3)+1)%(n+1)` -/
def P3817056284486114094.Spec : Prop :=
  ∀ n, P3817056284486114094.a n = A300763 n

end A300763

/-! ## A300763.P6490768134931648361

`ceil(xor(1, 2*n+1)/ϕ)-n`
-/

namespace A300763.P6490768134931648361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (2 * n + 1) : ℝ) / Real.goldenRatio⌉ - (n : ℤ)

end

end A300763.P6490768134931648361

namespace A300763

/-- `ceil(xor(1, 2*n+1)/ϕ)-n` -/
def P6490768134931648361.Spec : Prop :=
  ∀ n, P6490768134931648361.a n = A300763 n

end A300763

/-! ## A300763.P10816721549694876658

`ceil(2*n/ϕ)-gcd(n, 2*n)`
-/

namespace A300763.P10816721549694876658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * n : ℝ) / Real.goldenRatio⌉ - (Nat.gcd n (2 * n) : ℤ)

end

end A300763.P10816721549694876658

namespace A300763

/-- `ceil(2*n/ϕ)-gcd(n, 2*n)` -/
def P10816721549694876658.Spec : Prop :=
  ∀ n, P10816721549694876658.a n = A300763 n

end A300763

/-! ## A300763.P6619392741313547941

`floor((n-a(a(n-1)))/4)+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A300763

/-- `floor((n-a(a(n-1)))/4)+1` -/
def P6619392741313547941.Spec : Prop :=
  ∀ n, P6619392741313547941.a n = A300763 n

theorem P6619392741313547941.correct : P6619392741313547941.Spec := by
  intro n
  simp only [A300763]

end A300763

/-! ## A300763.P13710631808956270088

`floor((4-(a(a(n-1))-n))/4)` with `a(0)=0`
-/

namespace A300763.P13710631808956270088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(4 - (a (a (n - 1)).toNat - (n : ℤ)) : ℚ) / 4⌋

end

end A300763.P13710631808956270088

namespace A300763

/-- `floor((4-(a(a(n-1))-n))/4)` -/
def P13710631808956270088.Spec : Prop :=
  ∀ n, P13710631808956270088.a n = A300763 n

end A300763

/-! ## A300763.P16061719933283387865

`ceil(and(2*n+1, 2*n)/ϕ)-n`
-/

namespace A300763.P16061719933283387865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.land (2 * n + 1) (2 * n) : ℝ) / Real.goldenRatio⌉ - (n : ℤ)

end

end A300763.P16061719933283387865

namespace A300763

/-- `ceil(and(2*n+1, 2*n)/ϕ)-n` -/
def P16061719933283387865.Spec : Prop :=
  ∀ n, P16061719933283387865.a n = A300763 n

end A300763

/-! ## A300763.P4260398533258714147

`n-floor(and(2*n+1, 2*n)/ϕ²)`
-/

namespace A300763.P4260398533258714147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ⌊(Nat.land (2 * n + 1) (2 * n) : ℝ) / Real.goldenRatio ^ 2⌋

end

end A300763.P4260398533258714147

namespace A300763

/-- `n-floor(and(2*n+1, 2*n)/ϕ²)` -/
def P4260398533258714147.Spec : Prop :=
  ∀ n, P4260398533258714147.a n = A300763 n

end A300763

/-! ## A300763.P7313150335344314372

`n-A187329(n)`
-/

namespace A300763.P7313150335344314372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A187329 n

end

end A300763.P7313150335344314372

namespace A300763

/-- `n-A187329(n)` -/
def P7313150335344314372.Spec : Prop :=
  ∀ n, P7313150335344314372.a n = A300763 n

end A300763

/-! ## A300763.P15630967247869094800

`2*n-A187330(n)`
-/

namespace A300763.P15630967247869094800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A187330 n

end

end A300763.P15630967247869094800

namespace A300763

/-- `2*n-A187330(n)` -/
def P15630967247869094800.Spec : Prop :=
  ∀ n, P15630967247869094800.a n = A300763 n

end A300763

/-! ## A300763.P9239344790703502232

`A198082(n)-2*n`
-/

namespace A300763.P9239344790703502232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 n - (2 * n : ℤ)

end

end A300763.P9239344790703502232

namespace A300763

/-- `A198082(n)-2*n` -/
def P9239344790703502232.Spec : Prop :=
  ∀ n, P9239344790703502232.a n = A300763 n

end A300763

/-! ## A300763.P2850716008584595384

`A004958(n)-4*n`
-/

namespace A300763.P2850716008584595384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004958 n - (4 * n : ℤ)

end

end A300763.P2850716008584595384

namespace A300763

/-- `A004958(n)-4*n` -/
def P2850716008584595384.Spec : Prop :=
  ∀ n, P2850716008584595384.a n = A300763 n

end A300763

/-! ## A300763.P9644548175204484681

`comp[A026352(2*n)]-n`
-/

namespace A300763.P9644548175204484681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A300763.P9644548175204484681

namespace A300763

/-- `comp[A026352(2*n)]-n` -/
def P9644548175204484681.Spec : Prop :=
  ∀ n, P9644548175204484681.a n = A300763 n

end A300763

/-! ## A300763.P5828601178840826157

`n-∑[char[A188188(n+2)]]`
-/

namespace A300763.P5828601178840826157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188188 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A300763.P5828601178840826157

namespace A300763

/-- `n-∑[char[A188188(n+2)]]` -/
def P5828601178840826157.Spec : Prop :=
  ∀ n, P5828601178840826157.a n = A300763 n

end A300763

/-! ## A300763.P9153415416580829134

`∑[char[A026351(2*n)+n]]`
-/

namespace A300763.P9153415416580829134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (2 * n) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300763.P9153415416580829134

namespace A300763

/-- `∑[char[A026351(2*n)+n]]` -/
def P9153415416580829134.Spec : Prop :=
  ∀ n, (P9153415416580829134.a n : ℤ) = A300763 n

end A300763

/-! ## A300763.P11117713187648320323

`A188187(n)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A300763.P11117713187648320323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A188187 n + a (n - 1)

end

end A300763.P11117713187648320323

namespace A300763

/-- `A188187(n)+a(n-1)` -/
def P11117713187648320323.Spec : Prop :=
  ∀ n, P11117713187648320323.a n = A300763 n

end A300763

/-! ## A300763.P12972738536975416192

`2*n-comp[A187339(n+1)]`
-/

namespace A300763.P12972738536975416192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187339 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A300763.P12972738536975416192

namespace A300763

/-- `2*n-comp[A187339(n+1)]` -/
def P12972738536975416192.Spec : Prop :=
  ∀ n, P12972738536975416192.a n = A300763 n

end A300763

/-! ## A300763.P867612393545158500

`A188189(n)+a(n-2)` with `a(0)=0, a(1)=1, a(2)=1`
-/

namespace A300763.P867612393545158500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 1] fun n a =>
  A188189 n + a (n - 2)

end

end A300763.P867612393545158500

namespace A300763

/-- `A188189(n)+a(n-2)` -/
def P867612393545158500.Spec : Prop :=
  ∀ n, P867612393545158500.a n = A300763 n

end A300763

/-! ## A300763.P2839009504349355181

`A002265(n-a(a(n-1))+4)` with `a(0)=0`
-/

namespace A300763.P2839009504349355181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A002265 ((n : ℤ) - a (a (n - 1)).toNat + 4).toNat

end

end A300763.P2839009504349355181

namespace A300763

/-- `A002265(n-a(a(n-1))+4)` -/
def P2839009504349355181.Spec : Prop :=
  ∀ n, P2839009504349355181.a n = A300763 n

end A300763

/-!
# A300764: Number of n X n 0..1 arrays with every element equal to 1, 2, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300764, there is no canonical definition to state claims against.
-/

/-! ## A300764.P422171250229853834

`A300769(∑[4*n]+1)`
-/

namespace A300764.P422171250229853834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300769 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300764.P422171250229853834

/-! ## A300764.P7009038428176271291

`A300769(A001844(n))+char[22]`
-/

namespace A300764.P7009038428176271291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300769 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300764.P7009038428176271291

/-! ## A300764.P7796265944153017467

`record[A003982(n)*A300769(n+1)]`
-/

namespace A300764.P7796265944153017467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A300769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300764.P7796265944153017467

/-! ## A300764.P4426049378048367625

`A326684(n)+A300769(A001844(n))`
-/

namespace A300764.P4426049378048367625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326684 n + A300769 (A001844 n).toNat

end

end A300764.P4426049378048367625

/-! ## A300764.P2609231547216624948

`A287384(n)*A300769(A001844(n))`
-/

namespace A300764.P2609231547216624948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287384 n * A300769 (A001844 n).toNat

end

end A300764.P2609231547216624948

/-!
# A300765: Number of nX4 0..1 arrays with every element equal to 1, 2, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300765, there is no canonical definition to state claims against.
-/

/-! ## A300765.P17767786167834388495

`A300769(∑[n+3]+7)`
-/

namespace A300765.P17767786167834388495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300769 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A300765.P17767786167834388495

/-! ## A300765.P18373473471459597445

`A300769(A052905(n)+9)+char[19]`
-/

namespace A300765.P18373473471459597445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300769 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300765.P18373473471459597445

/-! ## A300765.P5946449332444413766

`or(char[1], A300769(A046691(n+1)+8))`
-/

namespace A300765.P5946449332444413766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A300769 (A046691 (n + 1) + 8).toNat)

end

end A300765.P5946449332444413766

/-! ## A300765.P2586719056659511839

`A000041(C(2, n+2))*A300769(A141214(n)+7)`
-/

namespace A300765.P2586719056659511839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A300769 (A141214 n + 7).toNat

end

end A300765.P2586719056659511839

/-! ## A300765.P13535591819219393801

`A300769(A052905(n)+9)%A000108(A018252(n+2))`
-/

namespace A300765.P13535591819219393801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300769 (A052905 n + 9).toNat) (A000108 (A018252 (n + 2)).toNat)

end

end A300765.P13535591819219393801

/-!
# A300766: Number of nX5 0..1 arrays with every element equal to 1, 2, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300766, there is no canonical definition to state claims against.
-/

/-! ## A300766.P14597691373418375004

`A300769(∑[n+4]+11)`
-/

namespace A300766.P14597691373418375004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300769 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A300766.P14597691373418375004

/-! ## A300766.P7583483959210878460

`A300769(A000217(n+4)+5)+char[18]`
-/

namespace A300766.P7583483959210878460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300769 (A000217 (n + 4) + 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300766.P7583483959210878460

/-! ## A300766.P4018282348831978661

`A007318(and(3, -n))*A300769(A000217(n+4)+5)`
-/

namespace A300766.P4018282348831978661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 3 (-(n : ℤ))).toNat * A300769 (A000217 (n + 4) + 5).toNat

end

end A300766.P4018282348831978661

/-! ## A300766.P5847039047963280088

`A007318(floor(n/12))*A300769(A000217(n+4)+5)`
-/

namespace A300766.P5847039047963280088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 12⌋.toNat * A300769 (A000217 (n + 4) + 5).toNat

end

end A300766.P5847039047963280088

/-! ## A300766.P6996851719700025199

`A300769(A000217(n+4)+5)%A000041(10*n+7)`
-/

namespace A300766.P6996851719700025199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300769 (A000217 (n + 4) + 5).toNat) (A000041 (10 * n + 7))

end

end A300766.P6996851719700025199

/-!
# A300767: Number of nX6 0..1 arrays with every element equal to 1, 2, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300767, there is no canonical definition to state claims against.
-/

/-! ## A300767.P3744636408823997304

`A300769(∑[n+5]+16)`
-/

namespace A300767.P3744636408823997304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300769 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A300767.P3744636408823997304

/-! ## A300767.P762718535809956638

`A300769(A016028(n+8)+3)+char[18]`
-/

namespace A300767.P762718535809956638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300769 (A016028 (n + 8) + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A300767.P762718535809956638

/-! ## A300767.P16287975730601452552

`A300769(A166136(n+4))+A185284(n)`
-/

namespace A300767.P16287975730601452552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300769 (A166136 (n + 4)).toNat + A185284 n

end

end A300767.P16287975730601452552

/-! ## A300767.P6913499598445315521

`A300769(A166136(n+4))%A300433(n+3)`
-/

namespace A300767.P6913499598445315521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300769 (A166136 (n + 4)).toNat) (A300433 (n + 3))

end

end A300767.P6913499598445315521

/-! ## A300767.P2324807118420853490

`A007318(C(2, n))*A300769(A016028(n+8)+3)`
-/

namespace A300767.P2324807118420853490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A300769 (A016028 (n + 8) + 3).toNat

end

end A300767.P2324807118420853490

/-!
# A300768: Number of nX7 0..1 arrays with every element equal to 1, 2, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300768, there is no canonical definition to state claims against.
-/

/-! ## A300768.P17340675420979651487

`A300769(A167487(n+5))`
-/

namespace A300768.P17340675420979651487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300769 (A167487 (n + 5)).toNat

end

end A300768.P17340675420979651487

/-! ## A300768.P16381642712535029358

`A300769(A056119(n)+28)`
-/

namespace A300768.P16381642712535029358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300769 (A056119 n + 28).toNat

end

end A300768.P16381642712535029358

/-! ## A300768.P2332005842210430663

`A300769(eq[11, A066657(n)])`
-/

namespace A300768.P2332005842210430663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300769 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300768.P2332005842210430663

/-! ## A300768.P6908331217805703984

`A300769(A166136(n+5)+1)`
-/

namespace A300768.P6908331217805703984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300769 (A166136 (n + 5) + 1).toNat

end

end A300768.P6908331217805703984

/-! ## A300768.P17917857313358424678

`A300769(A000124(n+6)+6)`
-/

namespace A300768.P17917857313358424678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300769 (A000124 (n + 6) + 6).toNat

end

end A300768.P17917857313358424678

/-!
# A300769: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300769, there is no canonical definition to state claims against.
-/

/-! ## A300769.P14042536016806311985

`A326684(A059117(n))+A300435(n+1)`
-/

namespace A300769.P14042536016806311985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326684 (A059117 n).toNat + A300435 (n + 1)

end

end A300769.P14042536016806311985

/-!
# A300770: Number of n X n 0..1 arrays with every element equal to 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300770, there is no canonical definition to state claims against.
-/

/-! ## A300770.P14491488217251293694

`A300776(∑[4*n]+1)`
-/

namespace A300770.P14491488217251293694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300770.P14491488217251293694

/-! ## A300770.P15462287036483859653

`record[char[A046092(n)]*A300776(n+1)]`
-/

namespace A300770.P15462287036483859653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A300776 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300770.P15462287036483859653

/-! ## A300770.P6495433390566425009

`A007318(∑[n])*A300776(A001844(n))`
-/

namespace A300770.P6495433390566425009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A300776 (A001844 n).toNat

end

end A300770.P6495433390566425009

/-! ## A300770.P6320162060731958816

`gcd(11, A007318(n))*A300776(A001844(n))`
-/

namespace A300770.P6320162060731958816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 11 (A007318 n) : ℤ) * A300776 (A001844 n).toNat

end

end A300770.P6320162060731958816

/-! ## A300770.P18215727206166973982

`A014963(4*n+2)*A300776(A001844(n))`
-/

namespace A300770.P18215727206166973982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 2) * A300776 (A001844 n).toNat

end

end A300770.P18215727206166973982

/-!
# A300771: Number of nX3 0..1 arrays with every element equal to 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300771, there is no canonical definition to state claims against.
-/

/-! ## A300771.P13318075713859929182

`A300776(∑[n+2]+4)`
-/

namespace A300771.P13318075713859929182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300771.P13318075713859929182

/-! ## A300771.P1969731384552832145

`A057427(n)*A300776(A055998(n)+6)`
-/

namespace A300771.P1969731384552832145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A300776 (A055998 n + 6).toNat

end

end A300771.P1969731384552832145

/-! ## A300771.P10558389681233133117

`A300776(A167614(n+1))%A034474(n)`
-/

namespace A300771.P10558389681233133117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300776 (A167614 (n + 1)).toNat) (A034474 n)

end

end A300771.P10558389681233133117

/-! ## A300771.P17056440915076886734

`A300776(A167614(n+1))+A034449(n+1)`
-/

namespace A300771.P17056440915076886734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (A167614 (n + 1)).toNat + A034449 (n + 1)

end

end A300771.P17056440915076886734

/-! ## A300771.P16186610975262779343

`A300776(A167614(n+1))+A034450(n+1)`
-/

namespace A300771.P16186610975262779343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (A167614 (n + 1)).toNat + A034450 (n + 1)

end

end A300771.P16186610975262779343

/-!
# A300772: Number of nX4 0..1 arrays with every element equal to 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300772, there is no canonical definition to state claims against.
-/

/-! ## A300772.P1527181332095808614

`A300776(A374004(n+1))`
-/

namespace A300772.P1527181332095808614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (A374004 (n + 1)).toNat

end

end A300772.P1527181332095808614

/-! ## A300772.P13784472626782620054

`A300776(A141214(n)+7)`
-/

namespace A300772.P13784472626782620054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (A141214 n + 7).toNat

end

end A300772.P13784472626782620054

/-! ## A300772.P11024069482083992702

`A300776(A052905(n)+9)`
-/

namespace A300772.P11024069482083992702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (A052905 n + 9).toNat

end

end A300772.P11024069482083992702

/-! ## A300772.P13196361475388779700

`A300776(A055999(n)+10)`
-/

namespace A300772.P13196361475388779700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (A055999 n + 10).toNat

end

end A300772.P13196361475388779700

/-! ## A300772.P1013649412383164357

`A300776(A167614(n+2)+1)`
-/

namespace A300772.P1013649412383164357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (A167614 (n + 2) + 1).toNat

end

end A300772.P1013649412383164357

/-!
# A300773: Number of nX5 0..1 arrays with every element equal to 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300773, there is no canonical definition to state claims against.
-/

/-! ## A300773.P4078382761968818975

`A300776(A374005(n+1))`
-/

namespace A300773.P4078382761968818975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (A374005 (n + 1)).toNat

end

end A300773.P4078382761968818975

/-! ## A300773.P14594934675427724088

`A300776(A167499(n+3))`
-/

namespace A300773.P14594934675427724088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (A167499 (n + 3)).toNat

end

end A300773.P14594934675427724088

/-! ## A300773.P12147065539808699388

`A300776(A052905(n+3)-(2*n+1))`
-/

namespace A300773.P12147065539808699388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A300773.P12147065539808699388

/-! ## A300773.P14906846166962297144

`A300776(A027379(n+4)-(2*n+3))`
-/

namespace A300773.P14906846166962297144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (A027379 (n + 4) - (2 * n + 3 : ℤ)).toNat

end

end A300773.P14906846166962297144

/-! ## A300773.P16626334562902776166

`record[A300776(A167499(A067628(n)))]`
-/

namespace A300773.P16626334562902776166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (A167499 (A067628 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300773.P16626334562902776166

/-!
# A300774: Number of nX6 0..1 arrays with every element equal to 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300774, there is no canonical definition to state claims against.
-/

/-! ## A300774.P4869478481031578178

`A300776(A374007(n+1))`
-/

namespace A300774.P4869478481031578178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (A374007 (n + 1)).toNat

end

end A300774.P4869478481031578178

/-! ## A300774.P15814869054984044618

`A300776(A167499(n+4)+1)`
-/

namespace A300774.P15814869054984044618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (A167499 (n + 4) + 1).toNat

end

end A300774.P15814869054984044618

/-! ## A300774.P11455424472659938042

`A300776(eq[3, A219347(n)])`
-/

namespace A300774.P11455424472659938042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300774.P11455424472659938042

/-! ## A300774.P351388580022615800

`A300776(eq[5, A193592(n)])`
-/

namespace A300774.P351388580022615800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300774.P351388580022615800

/-! ## A300774.P10270497189884064777

`A300776(eq[8, A258709(n)])`
-/

namespace A300774.P10270497189884064777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300774.P10270497189884064777

/-!
# A300775: Number of nX7 0..1 arrays with every element equal to 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300775, there is no canonical definition to state claims against.
-/

/-! ## A300775.P9487282256843867484

`A300776(A374008(n+1))`
-/

namespace A300775.P9487282256843867484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (A374008 (n + 1)).toNat

end

end A300775.P9487282256843867484

/-! ## A300775.P14092560937508817246

`A300776(eq[8, A131818(n+1)])`
-/

namespace A300775.P14092560937508817246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300775.P14092560937508817246

/-! ## A300775.P8717724780975147400

`A300776(eq[4, A219347(n)])`
-/

namespace A300775.P8717724780975147400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300775.P8717724780975147400

/-! ## A300775.P1845408859141478780

`A300776(eq[6, A193592(n)])`
-/

namespace A300775.P1845408859141478780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300775.P1845408859141478780

/-! ## A300775.P10255175294150647570

`A300776(eq[7, A200370(n+1)])`
-/

namespace A300775.P10255175294150647570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300776 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A300775.P10255175294150647570

/-!
# A300776: T(n,k)=Number of nXk 0..1 arrays with every element equal to 2, 3, 4 or 6 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300776, there is no canonical definition to state claims against.
-/

/-! ## A300776.P7497116008573196770

`A348264(A157148(n))+A300646(n+1)`
-/

namespace A300776.P7497116008573196770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348264 (A157148 n).toNat + A300646 (n + 1)

end

end A300776.P7497116008573196770

/-! ## A300776.P61552113381401782

`A301636(A146772(n))+A064532(A007318(n))`
-/

namespace A300776.P61552113381401782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301636 (A146772 n).toNat + A064532 (A007318 n).toNat

end

end A300776.P61552113381401782

/-! ## A300776.P11132092891785601494

`A301636(A146772(n))+A139756(A051159(n))`
-/

namespace A300776.P11132092891785601494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301636 (A146772 n).toNat + A139756 (A051159 n).toNat

end

end A300776.P11132092891785601494

/-! ## A300776.P4745819809926330980

`A348264(A157148(n))+A301636(A146772(n))`
-/

namespace A300776.P4745819809926330980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348264 (A157148 n).toNat + A301636 (A146772 n).toNat

end

end A300776.P4745819809926330980

/-! ## A300776.P12544803163403179653

`A348264(A028338(n))+A300646(n+1)`
-/

namespace A300776.P12544803163403179653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348264 (A028338 n).toNat + A300646 (n + 1)

end

end A300776.P12544803163403179653

/-!
# A300777: Primes of the form a^2 + b^2 such that both a^2 + 3b^2 and 3a^2 + b^2 are prime.

The programs for A300777, there is no canonical definition to state claims against.
-/

/-! ## A300777.P11883896123204401976

`A329946(eq[A071538(n+2), A330443(n)])`
-/

namespace A300777.P11883896123204401976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329946 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A300777.P11883896123204401976

/-!
# A300778: Number of grid points visible from a corner of an m X n rectangular region on a square grid written as triangle T(m,n), 1 <= n <= m.

The programs for A300778, there is no canonical definition to state claims against.
-/

/-! ## A300778.P10733172915208959916

`A333295(n+1)+2`
-/

namespace A300778.P10733172915208959916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333295 (n + 1) + 2

end

end A300778.P10733172915208959916

/-! ## A300778.P6149295855430987419

`A331781(comp[∑[n]]+1)+2`
-/

namespace A300778.P6149295855430987419
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331781 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 2

end

end A300778.P6149295855430987419

/-! ## A300778.P9584364901856032111

`A009056(A333295(n+1))`
-/

namespace A300778.P9584364901856032111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A333295 (n + 1)).toNat

end

end A300778.P9584364901856032111

/-! ## A300778.P11550233078929576513

`A135646(A245300(n)+1)+2`
-/

namespace A300778.P11550233078929576513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135646 (A245300 n + 1).toNat + 2

end

end A300778.P11550233078929576513

/-! ## A300778.P445536443453769145

`A049695(A245300(comp[∑[n]]))+1`
-/

namespace A300778.P445536443453769145
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049695 (A245300 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat + 1

end

end A300778.P445536443453769145

/-! ## A300778.P17223961058425621735

`A049687(A001283(n+2)-A193974(n))`
-/

namespace A300778.P17223961058425621735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 (A001283 (n + 2) - A193974 n).toNat

end

end A300778.P17223961058425621735

/-!
# A300785: Triangle read by rows: T(n,k) = 140*k^3*(n-k)^3 - 14*k*(n-k) + 1; n >= 0, 0 <= k <= n.

The programs for A300785, the canonical program `A300785.P6956397080688968554` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300785 has offset 0).

The definition of A300785 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `140*col(n)^3*(row(n)-col(n))^3-14*col(n)*(row(n)-col(n))+1` (program `A300785.P6956397080688968554`, by `A300785.P6956397080688968554.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A300785.P6956397080688968554

`140*col(n)^3*(row(n)-col(n))^3-14*col(n)*(row(n)-col(n))+1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A300785

/-- `140*col(n)^3*(row(n)-col(n))^3-14*col(n)*(row(n)-col(n))+1` -/
def P6956397080688968554.Spec : Prop :=
  ∀ n, P6956397080688968554.a n = A300785 n

theorem P6956397080688968554.correct : P6956397080688968554.Spec := by
  intro n
  simp only [A300785]

end A300785

/-! ## A300785.P10531330025988253284

`A071190(A276777(n)^6)`
-/

namespace A300785.P10531330025988253284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071190 (A276777 n ^ 6).toNat

end

end A300785.P10531330025988253284

namespace A300785

/-- `A071190(A276777(n)^6)` -/
def P10531330025988253284.Spec : Prop :=
  ∀ n, P10531330025988253284.a n = A300785 n

end A300785

/-! ## A300785.P4343637427995512315

`A072079(A276777(n)^6)`
-/

namespace A300785.P4343637427995512315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072079 (A276777 n ^ 6).toNat

end

end A300785.P4343637427995512315

namespace A300785

/-- `A072079(A276777(n)^6)` -/
def P4343637427995512315.Spec : Prop :=
  ∀ n, P4343637427995512315.a n = A300785 n

end A300785

/-! ## A300785.P3018314773271761111

`A284587(A276777(n)^6)`
-/

namespace A300785.P3018314773271761111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284587 (A276777 n ^ 6).toNat

end

end A300785.P3018314773271761111

namespace A300785

/-- `A284587(A276777(n)^6)` -/
def P3018314773271761111.Spec : Prop :=
  ∀ n, P3018314773271761111.a n = A300785 n

end A300785

/-! ## A300785.P1978360300024809708

`A295314(A276777(n)^6)`
-/

namespace A300785.P1978360300024809708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295314 (A276777 n ^ 6).toNat

end

end A300785.P1978360300024809708

namespace A300785

/-- `A295314(A276777(n)^6)` -/
def P1978360300024809708.Spec : Prop :=
  ∀ n, P1978360300024809708.a n = A300785 n

end A300785

/-!
# A300786: L.g.f.: log(Product_{k>=1} (1 + k*x^k)) = Sum_{n>=1} a(n)*x^n/n.

The programs for A300786, the canonical program `A300786.P3832554018112569054` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300786 has offset 1).

The definition of A300786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 624 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300786.P3832554018112569054

`∑{d}[n+1, (-((n+1)/#))^(#+1)]`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A300786

/-- `∑{d}[n+1, (-((n+1)/#))^(#+1)]` -/
def P3832554018112569054.Spec : Prop :=
  ∀ n, P3832554018112569054.a n = (A300786 (n + 1) : ℚ)

end A300786

/-!
# A300787: Number of integer partitions of n in which the even parts appear as often at even positions as at odd positions.

The programs for A300787, there is no canonical definition to state claims against.
-/

/-! ## A300787.P13563287314415859873

`A344612(A274681(n+2))`
-/

namespace A300787.P13563287314415859873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344612 (A274681 (n + 2)).toNat

end

end A300787.P13563287314415859873

/-! ## A300787.P4843709817920005389

`A344612(A274979(n+2)+1)`
-/

namespace A300787.P4843709817920005389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344612 (A274979 (n + 2) + 1).toNat

end

end A300787.P4843709817920005389

/-! ## A300787.P16980921285587541908

`A005987(n)-(A326530(n)+A025466(A138278(n)))`
-/

namespace A300787.P16980921285587541908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005987 n - (A326530 n + A025466 (A138278 n).toNat)

end

end A300787.P16980921285587541908

/-! ## A300787.P10075124459375414462

`A005987(n)+A000007(A061561(n))-A326530(n)`
-/

namespace A300787.P10075124459375414462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005987 n + (A000007 (A061561 n).toNat - A326530 n)

end

end A300787.P10075124459375414462

/-! ## A300787.P5079761803619480392

`A005987(n)-A093411(A000079(n))*A326530(n)`
-/

namespace A300787.P5079761803619480392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005987 n - A093411 (A000079 n).toNat * A326530 n

end

end A300787.P5079761803619480392

/-!
# A300788: Number of strict integer partitions of n in which the even parts appear as often at even positions as at odd positions.

The programs for A300788, there is no canonical definition to state claims against.
-/

/-! ## A300788.P9756461633618193909

`A352833(xor(1, n+1))`
-/

namespace A300788.P9756461633618193909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352833 (Nat.xor 1 (n + 1))

end

end A300788.P9756461633618193909

/-! ## A300788.P1027874170572900658

`A352833(Δ[or(1, n)]+n)`
-/

namespace A300788.P1027874170572900658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352833 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ)).toNat

end

end A300788.P1027874170572900658

/-! ## A300788.P14499252500140714995

`A352833(Δ[n²]-xor(1, n))`
-/

namespace A300788.P14499252500140714995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352833 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (Nat.xor 1 n : ℤ)).toNat

end

end A300788.P14499252500140714995

/-! ## A300788.P12737884867025537296

`A352833(n+1-(-1)^n)`
-/

namespace A300788.P12737884867025537296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352833 ((n + 1 : ℤ) - (-1) ^ n).toNat

end

end A300788.P12737884867025537296

/-! ## A300788.P428971112960066820

`A143824(A078012(n)+char[1])`
-/

namespace A300788.P428971112960066820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143824 (A078012 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A300788.P428971112960066820

/-!
# A300789: Heinz numbers of integer partitions whose Young diagram can be tiled by dominos.

The programs for A300789, there is no canonical definition to state claims against.
-/

/-! ## A300789.P1298919092178360821

`lt[0, A300060(n+1)]+1`
-/

namespace A300789.P1298919092178360821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300060 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A300789.P1298919092178360821

/-! ## A300789.P6356411585681493922

`lt[0, A300056(n+1)]+1`
-/

namespace A300789.P6356411585681493922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300056 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A300789.P6356411585681493922

/-! ## A300789.P15420679650649235379

`record[(n+1)/gcd(A000040(n+1), A300056(n+1))]`
-/

namespace A300789.P15420679650649235379
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (A000040 (n + 1)) (A300056 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300789.P15420679650649235379

/-! ## A300789.P8713398927174960006

`record[(n+1)%(A080458(n+1)^A300056(n+1))]`
-/

namespace A300789.P8713398927174960006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (SequenceMachineLib.roundAway ((A080458 (n + 1) : ℚ) ^ (A300056 (n + 1) : ℤ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300789.P8713398927174960006

/-! ## A300789.P13287251644893323475

`lt[A000007(n), A300056(A028310(n))]`
-/

namespace A300789.P13287251644893323475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300056 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A300789.P13287251644893323475

/-!
# A300790: Numbers k the smallest solution of A023900(m) = s, m >= 1, s <> 0, such that A023900(k) is negative and k is nonprime.

The programs for A300790, there is no canonical definition to state claims against.
-/

/-! ## A300790.P721293243275874977

`A336568(A094004(n+1)-A155043(n))`
-/

namespace A300790.P721293243275874977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336568 (A094004 (n + 1) - A155043 n).toNat

end

end A300790.P721293243275874977

/-! ## A300790.P11902179158746193966

`∩[A293523(n+1), A355571(n+1)]`
-/

namespace A300790.P11902179158746193966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293523 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A300790.P11902179158746193966

/-!
# A300792: Number of ways to write n as x^2 + y^2 + z^2 + w^2, where w is a positive integer and x,y,z are nonnegative integers such that x or y or z is a square and 9*x^2 + 16*y^2 + 24*z^2 is also a square.

The programs for A300792, there is no canonical definition to state claims against.
-/

/-! ## A300792.P6028106127996007848

`A198338(A128060(3*n+1)+A083243(n+1))`
-/

namespace A300792.P6028106127996007848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198338 (A128060 (3 * n + 1) + A083243 (n + 1)).toNat

end

end A300792.P6028106127996007848

/-! ## A300792.P17974603843229541064

`A337454(A337450(n+1)+A337411(n+1))`
-/

namespace A300792.P17974603843229541064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337454 (A337450 (n + 1) + A337411 (n + 1)).toNat

end

end A300792.P17974603843229541064

/-! ## A300792.P15785148285428128656

`A317905(A317923(3*(n+1)))+A317896(n+1)`
-/

namespace A300792.P15785148285428128656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317905 (A317923 (3 * (n + 1))).toNat + A317896 (n + 1)

end

end A300792.P15785148285428128656

/-! ## A300792.P12779931281417406021

`A076526(record[xor(5, A345291(n))])`
-/

namespace A300792.P12779931281417406021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 5 (A345291 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076526 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A300792.P12779931281417406021

/-! ## A300792.P5048459668966258982

`A217612(or(A048766(n), A271225(n)))`
-/

namespace A300792.P5048459668966258982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217612 (Int.lor (A048766 n) (A271225 n)).toNat

end

end A300792.P5048459668966258982

/-!
# A300793: a(n) is the n-th derivative of arcsinh(1/x) at x=1 times (-2)^n/sqrt(2) for n >= 1.

The programs for A300793, there is no canonical definition to state claims against.
-/

/-! ## A300793.P3552851859856697410

`A292266(A322110(2*n))-A357180(3*n+2)`
-/

namespace A300793.P3552851859856697410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292266 (A322110 (2 * n)).toNat - A357180 (3 * n + 2)

end

end A300793.P3552851859856697410

/-!
# A300795: Number of vertices of the master corner polyhedron on the cyclic group of order n + 1.

The programs for A300795, there is no canonical definition to state claims against.
-/

/-! ## A300795.P17342139680978134832

`record[A321862(A039598(n))]`
-/

namespace A300795.P17342139680978134832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321862 (A039598 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300795.P17342139680978134832

/-! ## A300795.P11623347595431991945

`∑[A373198(∑[A005638(n)])]`
-/

namespace A300795.P11623347595431991945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005638 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373198 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300795.P11623347595431991945

/-! ## A300795.P15543291304738760823

`∑[A353376(A128561(n+1))]`
-/

namespace A300795.P15543291304738760823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353376 (A128561 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300795.P15543291304738760823

/-! ## A300795.P14139977189825483492

`∑[A329515(A000079(floor((n²+6)/12)))]`
-/

namespace A300795.P14139977189825483492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329515 (A000079 ⌊(n ^ 2 + 6 : ℚ) / 12⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A300795.P14139977189825483492

/-! ## A300795.P2140351692217677408

`lt[∏{p}[A007678(n+1), #], A058049(n+1)]`
-/

namespace A300795.P2140351692217677408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007678 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058049 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A300795.P2140351692217677408

/-!
# A300797: Number of strict trees of weight 2n + 1 in which all outdegrees and all leaves are odd.

The programs for A300797, there is no canonical definition to state claims against.
-/

/-! ## A300797.P7355475762340438489

`round(A163859(n)/((ceil(n/2)+1)*n!))`
-/

namespace A300797.P7355475762340438489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A163859 n : ℚ) / ((⌈(n : ℚ) / 2⌉ + 1) * (Nat.factorial n : ℤ) : ℚ))

end

end A300797.P7355475762340438489

/-! ## A300797.P4203086580421907011

`A094275(A000672(n))`
-/

namespace A300797.P4203086580421907011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094275 (A000672 n).toNat

end

end A300797.P4203086580421907011

/-! ## A300797.P4152154999254410006

`A204553(A148069(n))`
-/

namespace A300797.P4152154999254410006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204553 (A148069 n).toNat

end

end A300797.P4152154999254410006

/-! ## A300797.P8374015748121150592

`A365383(A011897(n))`
-/

namespace A300797.P8374015748121150592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365383 (A011897 n).toNat

end

end A300797.P8374015748121150592

/-! ## A300797.P2217738178996018588

`A257212(A305197(n))`
-/

namespace A300797.P2217738178996018588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257212 (A305197 n).toNat

end

end A300797.P2217738178996018588

/-!
# A300798: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300798, there is no canonical definition to state claims against.
-/

/-! ## A300798.P11807588742299423698

`A300804(∑[4*n]+1)`
-/

namespace A300798.P11807588742299423698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A300798.P11807588742299423698

/-! ## A300798.P3270449221816909276

`record[A003982(n)*A300804(n+1)]`
-/

namespace A300798.P3270449221816909276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A300804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300798.P3270449221816909276

/-! ## A300798.P13369510919357632476

`record[and(A185917(n+1), A300804(n+1))]`
-/

namespace A300798.P13369510919357632476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A300804 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A300798.P13369510919357632476

/-! ## A300798.P1144413611746062542

`lcm(A007318(n), A300804(A001844(n)))`
-/

namespace A300798.P1144413611746062542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A300804 (A001844 n).toNat)

end

end A300798.P1144413611746062542

/-! ## A300798.P11145137713553747796

`A014963(6*(n+1))*A300804(A001844(n))`
-/

namespace A300798.P11145137713553747796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A300804 (A001844 n).toNat

end

end A300798.P11145137713553747796

/-!
# A300799: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3 or 4 horizontally, vertically or antidiagonally adjacent elements, with upper left element zero.

The programs for A300799, the canonical program `A300799.P6552887061292659128` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A300799 has offset 1).

The definition of A300799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A300799.P11234340186667189123

`ogf((4+4x-8x^2)/(1-7x-3x^2+5x^3))`
-/

namespace A300799.P11234340186667189123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 4, -8] [1, -7, -3, 5] n

end

end A300799.P11234340186667189123

namespace A300799

/-- `ogf((4+4x-8x^2)/(1-7x-3x^2+5x^3))` -/
def P11234340186667189123.Spec : Prop :=
  ∀ n, P11234340186667189123.a n = A300799 (n + 1)

end A300799

/-! ## A300799.P6552887061292659128

`7*a(n-1)+3*a(n-2)-5*a(n-3)` with `a(0)=4, a(1)=32, a(2)=228`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A300799

/-- `7*a(n-1)+3*a(n-2)-5*a(n-3)` -/
def P6552887061292659128.Spec : Prop :=
  ∀ n, P6552887061292659128.a n = A300799 (n + 1)

theorem P6552887061292659128.correct : P6552887061292659128.Spec := by
  intro n
  simp only [A300799, Nat.add_sub_cancel]

end A300799

/-! ## A300799.P18439882432857185188

`A300804(∑[n+2]+4)`
-/

namespace A300799.P18439882432857185188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300804 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A300799.P18439882432857185188

namespace A300799

/-- `A300804(∑[n+2]+4)` -/
def P18439882432857185188.Spec : Prop :=
  ∀ n, P18439882432857185188.a n = A300799 (n + 1)

end A300799

/-! ## A300799.P15229430827764552055

`lcm(2, A300804(A167614(n+1)))`
-/

namespace A300799.P15229430827764552055
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A300804 (A167614 (n + 1)).toNat)

end

end A300799.P15229430827764552055

namespace A300799

/-- `lcm(2, A300804(A167614(n+1)))` -/
def P15229430827764552055.Spec : Prop :=
  ∀ n, (P15229430827764552055.a n : ℤ) = A300799 (n + 1)

end A300799

/-! ## A300799.P2695415338802322050

`A300804(A167614(n+1))%∏[A167499(n)]`
-/

namespace A300799.P2695415338802322050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300804 (A167614 (n + 1)).toNat) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A300799.P2695415338802322050

namespace A300799

/-- `A300804(A167614(n+1))%∏[A167499(n)]` -/
def P2695415338802322050.Spec : Prop :=
  ∀ n, P2695415338802322050.a n = A300799 (n + 1)

end A300799

