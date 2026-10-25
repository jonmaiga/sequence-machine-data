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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
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
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A033800: Product t2(q^d); d | 41, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033800, there is no canonical definition to state claims against.
-/

/-! ## A033800.P12398263712593780890

`and(A084904(n), A222479(n+1))^A126671(n+1)`
-/

namespace A033800.P12398263712593780890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A084904 n) (A222479 (n + 1)) : ℚ) ^ (A126671 (n + 1) : ℤ)

end

end A033800.P12398263712593780890

/-! ## A033800.P2647563303405105970

`A124761(A291203(n))^(A343875(n)%A028310(n))`
-/

namespace A033800.P2647563303405105970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124761 (A291203 n).toNat : ℚ) ^ (Int.tmod (A343875 n) (A028310 n) : ℤ)

end

end A033800.P2647563303405105970

/-! ## A033800.P14351657795837284616

`A000035(gcd(A076303(n+1), A336345(n)))`
-/

namespace A033800.P14351657795837284616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (Int.gcd (A076303 (n + 1)) (A336345 n))

end

end A033800.P14351657795837284616

/-! ## A033800.P9712269408098835771

`A014057(val(A223523(n), 2))`
-/

namespace A033800.P9712269408098835771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014057 (SequenceMachineLib.valuation (A223523 n).toNat 2)

end

end A033800.P9712269408098835771

/-! ## A033800.P12925472950281221674

`A055641(A057299(n+1)%A013609(n))`
-/

namespace A033800.P12925472950281221674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (Int.tmod (A057299 (n + 1)) (A013609 n)).toNat

end

end A033800.P12925472950281221674

/-!
# A033801: Product t2(q^d); d | 42, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033801, there is no canonical definition to state claims against.
-/

/-! ## A033801.P9629376916356974571

`A325622(A362625(n+1)+A317846(2*n+3))`
-/

namespace A033801.P9629376916356974571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325622 (A362625 (n + 1) + A317846 (2 * n + 3)).toNat

end

end A033801.P9629376916356974571

/-!
# A033802: Product t2(q^d); d | 43, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033802, there is no canonical definition to state claims against.
-/

/-! ## A033802.P8686492438624001569

`A179081(or(A010054(n), A034447(n+1)))`
-/

namespace A033802.P8686492438624001569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (Int.lor (A010054 n) (A034447 (n + 1))).toNat

end

end A033802.P8686492438624001569

/-! ## A033802.P16633351027773922953

`A035327(A067418(A034447(n+1))%A140756(n+1))`
-/

namespace A033802.P16633351027773922953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.tmod (A067418 (A034447 (n + 1)).toNat) (A140756 (n + 1))).toNat

end

end A033802.P16633351027773922953

/-! ## A033802.P13080973516621849021

`A058343(A107347(n+1))^A004248(n)`
-/

namespace A033802.P13080973516621849021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058343 (A107347 (n + 1)).toNat : ℚ) ^ (A004248 n : ℤ)

end

end A033802.P13080973516621849021

/-! ## A033802.P10187103752492296370

`A058343(A107347(n+1))^A316269(n+2)`
-/

namespace A033802.P10187103752492296370
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058343 (A107347 (n + 1)).toNat : ℚ) ^ (A316269 (n + 2) : ℤ)

end

end A033802.P10187103752492296370

/-! ## A033802.P16728637481088788700

`A058343(A107347(n+1))^(A112351(n)-A209414(n+1))`
-/

namespace A033802.P16728637481088788700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A058343 (A107347 (n + 1)).toNat : ℚ) ^ (A112351 n - A209414 (n + 1) : ℤ)

end

end A033802.P16728637481088788700

/-!
# A033803: Product t2(q^d); d | 44, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033803, there is no canonical definition to state claims against.
-/

/-! ## A033803.P13661140466920598904

`xor(A025466(A043328(n)), A071766(n))`
-/

namespace A033803.P13661140466920598904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025466 (A043328 n).toNat) (A071766 n)

end

end A033803.P13661140466920598904

/-! ## A033803.P10961955090981720834

`xor(A071766(n), A082858(A176417(n)))`
-/

namespace A033803.P10961955090981720834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A071766 n) (A082858 (A176417 n).toNat)

end

end A033803.P10961955090981720834

/-! ## A033803.P11630873974773227124

`xor(A071766(n), A086016(A236523(n+1)))`
-/

namespace A033803.P11630873974773227124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A071766 n) (A086016 (A236523 (n + 1)).toNat)

end

end A033803.P11630873974773227124

/-! ## A033803.P7646035696502229301

`A033791(n)-A188294(A294617(n))`
-/

namespace A033803.P7646035696502229301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033791 n - A188294 (A294617 n).toNat

end

end A033803.P7646035696502229301

/-! ## A033803.P8764143902603797724

`gcd(A072668(A066183(n+1)), A079210(n))`
-/

namespace A033803.P8764143902603797724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072668 (A066183 (n + 1)).toNat) (A079210 n)

end

end A033803.P8764143902603797724

/-!
# A033805: Product t2(q^d); d | 46, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033805, there is no canonical definition to state claims against.
-/

/-! ## A033805.P831092009259766572

`or(A033761(n), A309163(A292200(n+1)))`
-/

namespace A033805.P831092009259766572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033761 n) (A309163 (A292200 (n + 1)).toNat)

end

end A033805.P831092009259766572

/-! ## A033805.P17006092482048931098

`A098841(A007318(n))+A033761(n)`
-/

namespace A033805.P17006092482048931098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098841 (A007318 n).toNat + A033761 n

end

end A033805.P17006092482048931098

/-!
# A033806: Product t2(q^d); d | 47, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033806, there is no canonical definition to state claims against.
-/

/-! ## A033806.P15332676395200246805

`floor(1/gcd(A034432(n+1), A344725(n+1)))`
-/

namespace A033806.P15332676395200246805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (Int.gcd (A034432 (n + 1)) (A344725 (n + 1)) : ℚ)⌋

end

end A033806.P15332676395200246805

/-! ## A033806.P13465768689293028723

`A025455(A253885(A100224(n)²))`
-/

namespace A033806.P13465768689293028723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (A253885 (A100224 n ^ 2).toNat).toNat

end

end A033806.P13465768689293028723

/-! ## A033806.P3215584412308041369

`A093709(A030729(n+1)*A079904(n))`
-/

namespace A033806.P3215584412308041369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093709 (A030729 (n + 1) * A079904 n).toNat

end

end A033806.P3215584412308041369

/-! ## A033806.P4062802032858885193

`A033683(gcd(A034432(n+1), A344725(n+1)))`
-/

namespace A033806.P4062802032858885193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033683 (Int.gcd (A034432 (n + 1)) (A344725 (n + 1)))

end

end A033806.P4062802032858885193

/-! ## A033806.P13869254666402214989

`A025469(A000332(A245039(n+8)))+A010054(n)`
-/

namespace A033806.P13869254666402214989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A000332 (A245039 (n + 8)).toNat).toNat + A010054 n

end

end A033806.P13869254666402214989

/-! ## A033806.P18156704994208644837

`A249832(A325222(n)%A327096(n+1)²)`
-/

namespace A033806.P18156704994208644837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (Int.tmod (A325222 n) (A327096 (n + 1) ^ 2)).toNat

end

end A033806.P18156704994208644837

/-! ## A033806.P163531186663398288

`A114099(A061198(n)%A056178(n))`
-/

namespace A033806.P163531186663398288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (Int.tmod (A061198 n) (A056178 n)).toNat

end

end A033806.P163531186663398288

/-!
# A033807: Product t2(q^d); d | 48, where t2 = theta2(q)/(2*q^(1/4)).

The programs for A033807, there is no canonical definition to state claims against.
-/

/-! ## A033807.P3071844743515446311

`A033783(n)+A010051(A022177(n))`
-/

namespace A033807.P3071844743515446311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033783 n + A010051 (A022177 n).toNat

end

end A033807.P3071844743515446311

/-! ## A033807.P2165043202000753941

`A044941(A000079(n))+A033783(n)`
-/

namespace A033807.P2165043202000753941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A000079 n).toNat + A033783 n

end

end A033807.P2165043202000753941

/-! ## A033807.P15694059239270916068

`A185284(A000009(n))+A033783(n)`
-/

namespace A033807.P15694059239270916068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A000009 n).toNat + A033783 n

end

end A033807.P15694059239270916068

/-! ## A033807.P3542910823464907973

`A185284(A048312(n))+A033783(n)`
-/

namespace A033807.P3542910823464907973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A048312 n).toNat + A033783 n

end

end A033807.P3542910823464907973

/-! ## A033807.P15972491446390256925

`A033783(n)+A000007(A342952(n+1))`
-/

namespace A033807.P15972491446390256925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033783 n + A000007 (A342952 (n + 1)).toNat

end

end A033807.P15972491446390256925

/-!
# A033808: All slopes (a(n)-a(m))/(n-m) are distinct; generated from 0 by greedy algorithm.

The programs for A033808, there is no canonical definition to state claims against.
-/

/-! ## A033808.P13089684383336345890

`∑[A377351(n+1)]-A377351(n+1)`
-/

namespace A033808.P13089684383336345890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377351 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A377351 (n + 1)

end

end A033808.P13089684383336345890

/-! ## A033808.P12576559091111498981

`record[A238086(n+1)%A336659(n+1)]`
-/

namespace A033808.P12576559091111498981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A238086 (n + 1)) (A336659 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033808.P12576559091111498981

/-! ## A033808.P3669980249625743259

`A267304(A374151(n)+A162404(n+1))`
-/

namespace A033808.P3669980249625743259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267304 (A374151 n + A162404 (n + 1)).toNat

end

end A033808.P3669980249625743259

/-!
# A033809: Smallest m>0 such that (2n-1)2^m+1 is prime, or -1 if no such value exists.

The programs for A033809, there is no canonical definition to state claims against.
-/

/-! ## A033809.P3874540224600259303

`A040076(4*n+2)+1`
-/

namespace A033809.P3874540224600259303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (4 * n + 2) + 1

end

end A033809.P3874540224600259303

/-! ## A033809.P3844541473080491316

`A046067(n+1)%(a(n-1)+(2*n+1)*2*n+n+2)` with `a(0)=1`
-/

namespace A033809.P3844541473080491316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A046067 (n + 1)) (a (n - 1) + ((2 * n + 1) * (2 * n) : ℤ) + (n + 2 : ℤ))

end

end A033809.P3844541473080491316

/-! ## A033809.P14246623391649956985

`A028310(A046067(n+1))`
-/

namespace A033809.P14246623391649956985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A046067 (n + 1)).toNat

end

end A033809.P14246623391649956985

/-! ## A033809.P16858762072212906619

`A046067(A254667(n+1))`
-/

namespace A033809.P16858762072212906619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046067 (A254667 (n + 1)).toNat

end

end A033809.P16858762072212906619

/-! ## A033809.P15311112505833694219

`A046067(A348776(n+1))`
-/

namespace A033809.P15311112505833694219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046067 (A348776 (n + 1)).toNat

end

end A033809.P15311112505833694219

/-! ## A033809.P7462145313929188284

`A046067(A233583(n+1)+1)`
-/

namespace A033809.P7462145313929188284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046067 (A233583 (n + 1) + 1).toNat

end

end A033809.P7462145313929188284

/-! ## A033809.P12789278238855865397

`A028310(A040076(2*n+1))`
-/

namespace A033809.P12789278238855865397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A040076 (2 * n + 1)).toNat

end

end A033809.P12789278238855865397

/-! ## A033809.P12903632877750080657

`A046067(n+1)+A000007(n)`
-/

namespace A033809.P12903632877750080657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046067 (n + 1) + A000007 n

end

end A033809.P12903632877750080657

/-! ## A033809.P12490301959806413064

`A046067(A010051(2*(n+1))+n+1)`
-/

namespace A033809.P12490301959806413064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046067 (A010051 (2 * (n + 1)) + (n : ℤ) + 1).toNat

end

end A033809.P12490301959806413064

/-! ## A033809.P2583827589504299165

`A046067(A014197(2*n+1)+n+1)`
-/

namespace A033809.P2583827589504299165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046067 (A014197 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A033809.P2583827589504299165

/-! ## A033809.P12133753010040616738

`floor(A046067(n+1)+1/A046100(n+1))`
-/

namespace A033809.P12133753010040616738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046067 (n + 1) : ℚ) + 1 / (A046100 (n + 1) : ℚ)⌋

end

end A033809.P12133753010040616738

/-! ## A033809.P1494836291253274603

`A046067(A233583(n+2))`
-/

namespace A033809.P1494836291253274603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046067 (A233583 (n + 2)).toNat

end

end A033809.P1494836291253274603

/-! ## A033809.P11534772710399192339

`A078680(Δ[n²])`
-/

namespace A033809.P11534772710399192339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078680 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A033809.P11534772710399192339

/-! ## A033809.P18285008646797830865

`xor(1, xor(1, A078680(2*n+1)))`
-/

namespace A033809.P18285008646797830865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A078680 (2 * n + 1)))

end

end A033809.P18285008646797830865

/-! ## A033809.P430750799127457599

`A078680(2*n+1)%A078654(n+1)`
-/

namespace A033809.P430750799127457599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078680 (2 * n + 1)) (A078654 (n + 1))

end

end A033809.P430750799127457599

/-! ## A033809.P15465389984060676071

`A078680(2*n+1)+A099820(n)%2`
-/

namespace A033809.P15465389984060676071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078680 (2 * n + 1) + Int.tmod (A099820 n) 2

end

end A033809.P15465389984060676071

/-! ## A033809.P8692804383130028444

`A040001(2*n+1)*A078680(2*n+1)`
-/

namespace A033809.P8692804383130028444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n + 1) * A078680 (2 * n + 1)

end

end A033809.P8692804383130028444

/-! ## A033809.P455856603809765863

`A078680(2*n+1)+A008683(A005877(n))`
-/

namespace A033809.P455856603809765863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078680 (2 * n + 1) + A008683 (A005877 n).toNat

end

end A033809.P455856603809765863

/-! ## A033809.P10437926041094684326

`A046067(n+1)+A108129(n+2)-A046069(n+2)`
-/

namespace A033809.P10437926041094684326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046067 (n + 1) + (A108129 (n + 2) - A046069 (n + 2))

end

end A033809.P10437926041094684326

/-! ## A033809.P8806434306719639909

`A078680(2*n+1)+and(1, A309016(n+2))`
-/

namespace A033809.P8806434306719639909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078680 (2 * n + 1) + Int.land 1 (A309016 (n + 2))

end

end A033809.P8806434306719639909

/-!
# A033810: Number of people needed so that probability of at least two sharing a birthday out of n possible days is at least 50%.

The programs for A033810, there is no canonical definition to state claims against.
-/

/-! ## A033810.P15808002252216302293

`A088141(n+1)+1`
-/

namespace A033810.P15808002252216302293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (n + 1) + 1

end

end A033810.P15808002252216302293

/-! ## A033810.P6819593921238905377

`∑[char[A308699(n)-1]]+1`
-/

namespace A033810.P6819593921238905377
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A033810.P6819593921238905377

/-! ## A033810.P16865721212655828566

`A020725(∑[char[A308699(n)-1]])`
-/

namespace A033810.P16865721212655828566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033810.P16865721212655828566

/-! ## A033810.P5989474214863162782

`∑[char[A308699(n)-1]*A141044(n)]`
-/

namespace A033810.P5989474214863162782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 n - 1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A141044 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033810.P5989474214863162782

/-! ## A033810.P5470418452984065841

`A000005(2^∑[char[A308699(n)-1]])`
-/

namespace A033810.P5470418452984065841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308699 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 ^ (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A033810.P5470418452984065841

/-! ## A033810.P222538103886172080

`A339276(A211438(n))+1`
-/

namespace A033810.P222538103886172080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339276 (A211438 n).toNat + 1

end

end A033810.P222538103886172080

/-! ## A033810.P4140453918065178808

`floor(sqrt(A104103(n+1)+A097218(n+1)))`
-/

namespace A033810.P4140453918065178808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A104103 (n + 1) + A097218 (n + 1))

end

end A033810.P4140453918065178808

/-! ## A033810.P14921471620351613456

`A255270(A002808((n+1)*A317295(n+1)))`
-/

namespace A033810.P14921471620351613456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255270 (A002808 ((n + 1 : ℤ) * A317295 (n + 1)).toNat).toNat

end

end A033810.P14921471620351613456

/-!
# A033811: Convolution of natural numbers n >= 1 with Lucas numbers L(k)(A000032) for k >= 2.

The programs for A033811, the canonical program `A033811.P13473248571032266694` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033811 has offset 1).

The definition of A033811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033811.P5906512719651066079

`∑[ceil(∑[ϕ^(n+2)])]`
-/

namespace A033811.P5906512719651066079
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033811.P5906512719651066079

namespace A033811

/-- `∑[ceil(∑[ϕ^(n+2)])]` -/
def P5906512719651066079.Spec : Prop :=
  ∀ n, P5906512719651066079.a n = A033811 (n + 1)

end A033811

/-! ## A033811.P15829750059906041956

`ogf((3+x)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A033811.P15829750059906041956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 1] [1, -3, 2, 1, -1] n

end

end A033811.P15829750059906041956

namespace A033811

/-- `ogf((3+x)/(1-3x+2x^2+x^3-x^4))` -/
def P15829750059906041956.Spec : Prop :=
  ∀ n, P15829750059906041956.a n = A033811 (n + 1)

end A033811

/-! ## A033811.P13473248571032266694

`A023537(n+2)-(n+2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033811

/-- `A023537(n+2)-(n+2)` -/
def P13473248571032266694.Spec : Prop :=
  ∀ n, P13473248571032266694.a n = A033811 (n + 1)

theorem P13473248571032266694.correct : P13473248571032266694.Spec := by
  intro n
  simp only [A033811, Nat.add_sub_cancel]

end A033811

/-! ## A033811.P2551335749932783265

`∑[∑[A163695(n+1)]]+1`
-/

namespace A033811.P2551335749932783265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163695 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A033811.P2551335749932783265

namespace A033811

/-- `∑[∑[A163695(n+1)]]+1` -/
def P2551335749932783265.Spec : Prop :=
  ∀ n, P2551335749932783265.a n = A033811 (n + 1)

end A033811

/-! ## A033811.P5768729186970857830

`A023620(n+1)+2*(n+1)`
-/

namespace A033811.P5768729186970857830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023620 (n + 1) + (2 * (n + 1) : ℤ)

end

end A033811.P5768729186970857830

namespace A033811

/-- `A023620(n+1)+2*(n+1)` -/
def P5768729186970857830.Spec : Prop :=
  ∀ n, P5768729186970857830.a n = A033811 (n + 1)

end A033811

/-! ## A033811.P15969230786192023628

`A023550(n+2)-2*(n+2)`
-/

namespace A033811.P15969230786192023628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023550 (n + 2) - (2 * (n + 2) : ℤ)

end

end A033811.P15969230786192023628

namespace A033811

/-- `A023550(n+2)-2*(n+2)` -/
def P15969230786192023628.Spec : Prop :=
  ∀ n, P15969230786192023628.a n = A033811 (n + 1)

end A033811

/-! ## A033811.P2263572981300238486

`A027181(n+2)-(2*n+5)`
-/

namespace A033811.P2263572981300238486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027181 (n + 2) - (2 * n + 5 : ℤ)

end

end A033811.P2263572981300238486

namespace A033811

/-- `A027181(n+2)-(2*n+5)` -/
def P2263572981300238486.Spec : Prop :=
  ∀ n, P2263572981300238486.a n = A033811 (n + 1)

end A033811

/-! ## A033811.P10430251690737261313

`A192978(n+1)+(n+1)*(n+2)`
-/

namespace A033811.P10430251690737261313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192978 (n + 1) + ((n + 1) * (n + 2) : ℤ)

end

end A033811.P10430251690737261313

namespace A033811

/-- `A192978(n+1)+(n+1)*(n+2)` -/
def P10430251690737261313.Spec : Prop :=
  ∀ n, P10430251690737261313.a n = A033811 (n + 1)

end A033811

/-! ## A033811.P440069624526367673

`A033960(n)-A001924(n)`
-/

namespace A033811.P440069624526367673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033960 n - A001924 n

end

end A033811.P440069624526367673

namespace A033811

/-- `A033960(n)-A001924(n)` -/
def P440069624526367673.Spec : Prop :=
  ∀ n, P440069624526367673.a n = A033811 (n + 1)

end A033811

/-! ## A033811.P16864508324035713461

`A033937(n)+A001924(n+1)`
-/

namespace A033811.P16864508324035713461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033937 n + A001924 (n + 1)

end

end A033811.P16864508324035713461

namespace A033811

/-- `A033937(n)+A001924(n+1)` -/
def P16864508324035713461.Spec : Prop :=
  ∀ n, P16864508324035713461.a n = A033811 (n + 1)

end A033811

/-! ## A033811.P15013286976268736024

`A192971(n+1)+A001595(n)`
-/

namespace A033811.P15013286976268736024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192971 (n + 1) + A001595 n

end

end A033811.P15013286976268736024

namespace A033811

/-- `A192971(n+1)+A001595(n)` -/
def P15013286976268736024.Spec : Prop :=
  ∀ n, P15013286976268736024.a n = A033811 (n + 1)

end A033811

/-! ## A033811.P4505059174754296343

`A192951(n+2)+A192760(n)`
-/

namespace A033811.P4505059174754296343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192951 (n + 2) + A192760 n

end

end A033811.P4505059174754296343

namespace A033811

/-- `A192951(n+2)+A192760(n)` -/
def P4505059174754296343.Spec : Prop :=
  ∀ n, P4505059174754296343.a n = A033811 (n + 1)

end A033811

/-! ## A033811.P7137542579638278195

`A023548(n+1)+A023537(n+1)`
-/

namespace A033811.P7137542579638278195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023548 (n + 1) + A023537 (n + 1)

end

end A033811.P7137542579638278195

namespace A033811

/-- `A023548(n+1)+A023537(n+1)` -/
def P7137542579638278195.Spec : Prop :=
  ∀ n, P7137542579638278195.a n = A033811 (n + 1)

end A033811

/-! ## A033811.P17175017541692334606

`A066982(n+1)+A023549(n+1)`
-/

namespace A033811.P17175017541692334606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066982 (n + 1) + A023549 (n + 1)

end

end A033811.P17175017541692334606

namespace A033811

/-- `A066982(n+1)+A023549(n+1)` -/
def P17175017541692334606.Spec : Prop :=
  ∀ n, P17175017541692334606.a n = A033811 (n + 1)

end A033811

/-! ## A033811.P5160572473810521482

`A027961(n+1)+2*A027181(n)`
-/

namespace A033811.P5160572473810521482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027961 (n + 1) + 2 * A027181 n

end

end A033811.P5160572473810521482

namespace A033811

/-- `A027961(n+1)+2*A027181(n)` -/
def P5160572473810521482.Spec : Prop :=
  ∀ n, P5160572473810521482.a n = A033811 (n + 1)

end A033811

/-! ## A033811.P1992312941382155278

`A000045(n+1)+∑[A182415(n+1)]`
-/

namespace A033811.P1992312941382155278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033811.P1992312941382155278

namespace A033811

/-- `A000045(n+1)+∑[A182415(n+1)]` -/
def P1992312941382155278.Spec : Prop :=
  ∀ n, P1992312941382155278.a n = A033811 (n + 1)

end A033811

/-! ## A033811.P9243367061366323205

`A000045(n+1)+A192973(n+2)-1`
-/

namespace A033811.P9243367061366323205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A192973 (n + 2) - 1)

end

end A033811.P9243367061366323205

namespace A033811

/-- `A000045(n+1)+A192973(n+2)-1` -/
def P9243367061366323205.Spec : Prop :=
  ∀ n, P9243367061366323205.a n = A033811 (n + 1)

end A033811

/-! ## A033811.P6423900041766513875

`A033937(n)+A033937(n)-A001891(n+1)`
-/

namespace A033811.P6423900041766513875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033937 n + (A033937 n - A001891 (n + 1))

end

end A033811.P6423900041766513875

namespace A033811

/-- `A033937(n)+A033937(n)-A001891(n+1)` -/
def P6423900041766513875.Spec : Prop :=
  ∀ n, P6423900041766513875.a n = A033811 (n + 1)

end A033811

/-!
# A033813: Convolution of natural numbers n >= 1 with Lucas numbers L(k) (A000032) for k >= 3.

The programs for A033813, the canonical program `A033813.P18085245078646247327` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033813 has offset 1).

The definition of A033813 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033813.P18085245078646247327

`3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` with `a(0)=4, a(1)=15, a(2)=37, a(3)=77`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033813

/-- `3*a(n-1)-2*a(n-2)-a(n-3)+a(n-4)` -/
def P18085245078646247327.Spec : Prop :=
  ∀ n, P18085245078646247327.a n = A033813 (n + 1)

theorem P18085245078646247327.correct : P18085245078646247327.Spec := by
  intro n
  simp only [A033813, Nat.add_sub_cancel]

end A033813

/-! ## A033813.P15022568653027651416

`∑[floor(∑[ϕ^(n+3)])]`
-/

namespace A033813.P15022568653027651416
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033813.P15022568653027651416

namespace A033813

/-- `∑[floor(∑[ϕ^(n+3)])]` -/
def P15022568653027651416.Spec : Prop :=
  ∀ n, P15022568653027651416.a n = A033813 (n + 1)

end A033813

/-! ## A033813.P2872580309251877221

`ogf((4+3x)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A033813.P2872580309251877221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 3] [1, -3, 2, 1, -1] n

end

end A033813.P2872580309251877221

namespace A033813

/-- `ogf((4+3x)/(1-3x+2x^2+x^3-x^4))` -/
def P2872580309251877221.Spec : Prop :=
  ∀ n, P2872580309251877221.a n = A033813 (n + 1)

end A033813

/-! ## A033813.P3570524517189579748

`∑[round(ϕ^(n+3))]+a(n-1)` with `a(0)=4`
-/

namespace A033813.P3570524517189579748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A033813.P3570524517189579748

namespace A033813

/-- `∑[round(ϕ^(n+3))]+a(n-1)` -/
def P3570524517189579748.Spec : Prop :=
  ∀ n, P3570524517189579748.a n = A033813 (n + 1)

end A033813

/-! ## A033813.P12612187209055858843

`A023620(n+2)-(n+2)`
-/

namespace A033813.P12612187209055858843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023620 (n + 2) - (n + 2 : ℤ)

end

end A033813.P12612187209055858843

namespace A033813

/-- `A023620(n+2)-(n+2)` -/
def P12612187209055858843.Spec : Prop :=
  ∀ n, P12612187209055858843.a n = A033813 (n + 1)

end A033813

/-! ## A033813.P4149511729228572110

`A033811(n+2)-3*(n+2)`
-/

namespace A033813.P4149511729228572110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033811 (n + 2) - (3 * (n + 2) : ℤ)

end

end A033813.P4149511729228572110

namespace A033813

/-- `A033811(n+2)-3*(n+2)` -/
def P4149511729228572110.Spec : Prop :=
  ∀ n, P4149511729228572110.a n = A033813 (n + 1)

end A033813

/-! ## A033813.P9188599583354105514

`A192978(n+2)+n*(n+2)`
-/

namespace A033813.P9188599583354105514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192978 (n + 2) + (n * (n + 2) : ℤ)

end

end A033813.P9188599583354105514

namespace A033813

/-- `A192978(n+2)+n*(n+2)` -/
def P9188599583354105514.Spec : Prop :=
  ∀ n, P9188599583354105514.a n = A033813 (n + 1)

end A033813

/-! ## A033813.P2338050832204776721

`∑[A027181(n+1)]+(n+1)²`
-/

namespace A033813.P2338050832204776721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027181 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A033813.P2338050832204776721

namespace A033813

/-- `∑[A027181(n+1)]+(n+1)²` -/
def P2338050832204776721.Spec : Prop :=
  ∀ n, P2338050832204776721.a n = A033813 (n + 1)

end A033813

/-! ## A033813.P11514057239820588625

`A033960(n)+A001891(n+1)`
-/

namespace A033813.P11514057239820588625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033960 n + A001891 (n + 1)

end

end A033813.P11514057239820588625

namespace A033813

/-- `A033960(n)+A001891(n+1)` -/
def P11514057239820588625.Spec : Prop :=
  ∀ n, P11514057239820588625.a n = A033813 (n + 1)

end A033813

/-! ## A033813.P8899017070886182610

`A037140(n)-A001924(n+1)`
-/

namespace A033813.P8899017070886182610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037140 n - A001924 (n + 1)

end

end A033813.P8899017070886182610

namespace A033813

/-- `A037140(n)-A001924(n+1)` -/
def P8899017070886182610.Spec : Prop :=
  ∀ n, P8899017070886182610.a n = A033813 (n + 1)

end A033813

/-! ## A033813.P6588148776713224802

`A001924(n)+2*A033937(n)`
-/

namespace A033813.P6588148776713224802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n + 2 * A033937 n

end

end A033813.P6588148776713224802

namespace A033813

/-- `A001924(n)+2*A033937(n)` -/
def P6588148776713224802.Spec : Prop :=
  ∀ n, P6588148776713224802.a n = A033813 (n + 1)

end A033813

/-! ## A033813.P5282557673456228326

`A023548(n+1)+2*A023537(n+1)`
-/

namespace A033813.P5282557673456228326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023548 (n + 1) + 2 * A023537 (n + 1)

end

end A033813.P5282557673456228326

namespace A033813

/-- `A023548(n+1)+2*A023537(n+1)` -/
def P5282557673456228326.Spec : Prop :=
  ∀ n, P5282557673456228326.a n = A033813 (n + 1)

end A033813

/-! ## A033813.P5593635805496948798

`A033960(n)+A033960(n)-A033937(n)`
-/

namespace A033813.P5593635805496948798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033960 n + (A033960 n - A033937 n)

end

end A033813.P5593635805496948798

namespace A033813

/-- `A033960(n)+A033960(n)-A033937(n)` -/
def P5593635805496948798.Spec : Prop :=
  ∀ n, P5593635805496948798.a n = A033813 (n + 1)

end A033813

/-! ## A033813.P14739580396232770882

`A001924(n+1)+A033960(n)+A001924(n)`
-/

namespace A033813.P14739580396232770882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (n + 1) + (A033960 n + A001924 n)

end

end A033813.P14739580396232770882

namespace A033813

/-- `A001924(n+1)+A033960(n)+A001924(n)` -/
def P14739580396232770882.Spec : Prop :=
  ∀ n, P14739580396232770882.a n = A033813 (n + 1)

end A033813

/-! ## A033813.P3067747298080752598

`A001891(n+1)+A037140(n)-A033937(n)`
-/

namespace A033813.P3067747298080752598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 (n + 1) + (A037140 n - A033937 n)

end

end A033813.P3067747298080752598

namespace A033813

/-- `A001891(n+1)+A037140(n)-A033937(n)` -/
def P3067747298080752598.Spec : Prop :=
  ∀ n, P3067747298080752598.a n = A033813 (n + 1)

end A033813

/-! ## A033813.P3393843078737065927

`(A037157(n)+A001924(n))/2`
-/

namespace A033813.P3393843078737065927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037157 n + A001924 n : ℚ) / 2

end

end A033813.P3393843078737065927

namespace A033813

/-- `(A037157(n)+A001924(n))/2` -/
def P3393843078737065927.Spec : Prop :=
  ∀ n, P3393843078737065927.a n = (A033813 (n + 1) : ℚ)

end A033813

/-! ## A033813.P11739588945860767325

`2*A033960(n)-A033937(n)`
-/

namespace A033813.P11739588945860767325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033960 n - A033937 n

end

end A033813.P11739588945860767325

namespace A033813

/-- `2*A033960(n)-A033937(n)` -/
def P11739588945860767325.Spec : Prop :=
  ∀ n, P11739588945860767325.a n = A033813 (n + 1)

end A033813

/-! ## A033813.P13269174258813816186

`A037157(n)-2*A033937(n)`
-/

namespace A033813.P13269174258813816186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037157 n - 2 * A033937 n

end

end A033813.P13269174258813816186

namespace A033813

/-- `A037157(n)-2*A033937(n)` -/
def P13269174258813816186.Spec : Prop :=
  ∀ n, P13269174258813816186.a n = A033813 (n + 1)

end A033813

/-! ## A033813.P1746874430272491709

`A033814(n+1)-A033811(n+1)`
-/

namespace A033813.P1746874430272491709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033814 (n + 1) - A033811 (n + 1)

end

end A033813.P1746874430272491709

namespace A033813

/-- `A033814(n+1)-A033811(n+1)` -/
def P1746874430272491709.Spec : Prop :=
  ∀ n, P1746874430272491709.a n = A033813 (n + 1)

end A033813

/-! ## A033813.P9932927750703861950

`A001891(n+1)+A037157(n)-A037140(n)`
-/

namespace A033813.P9932927750703861950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001891 (n + 1) + (A037157 n - A037140 n)

end

end A033813.P9932927750703861950

namespace A033813

/-- `A001891(n+1)+A037157(n)-A037140(n)` -/
def P9932927750703861950.Spec : Prop :=
  ∀ n, P9932927750703861950.a n = A033813 (n + 1)

end A033813

/-!
# A033814: Convolution of positive integers n with Lucas numbers L(k)(A000032) for k >= 4.

The programs for A033814, the canonical program `A033814.P15086063226539162751` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033814 has offset 1).

The definition of A033814 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033814.P15086063226539162751

`A000032(n+8)-11*(n+1)-29`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033814

/-- `A000032(n+8)-11*(n+1)-29` -/
def P15086063226539162751.Spec : Prop :=
  ∀ n, P15086063226539162751.a n = A033814 (n + 1)

theorem P15086063226539162751.correct : P15086063226539162751.Spec := by
  intro n
  simp only [A033814, Nat.add_sub_cancel]

end A033814

/-! ## A033814.P6682144652861515010

`∑[ogf((7+4x)/(1-2x+x^3))]`
-/

namespace A033814.P6682144652861515010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 4] [1, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033814.P6682144652861515010

namespace A033814

/-- `∑[ogf((7+4x)/(1-2x+x^3))]` -/
def P6682144652861515010.Spec : Prop :=
  ∀ n, P6682144652861515010.a n = A033814 (n + 1)

end A033814

/-! ## A033814.P8019284420419856583

`ogf((7+4x)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A033814.P8019284420419856583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 4] [1, -3, 2, 1, -1] n

end

end A033814.P8019284420419856583

namespace A033814

/-- `ogf((7+4x)/(1-3x+2x^2+x^3-x^4))` -/
def P8019284420419856583.Spec : Prop :=
  ∀ n, P8019284420419856583.a n = A033814 (n + 1)

end A033814

/-! ## A033814.P15924449485678844206

`∑[∑[a(n-1)+a(n-2)]]` with `a(0)=7, a(1)=11`
-/

namespace A033814.P15924449485678844206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [7, 11] fun n f2 =>
  f2 (n - 1) + f2 (n - 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033814.P15924449485678844206

namespace A033814

/-- `∑[∑[a(n-1)+a(n-2)]]` -/
def P15924449485678844206.Spec : Prop :=
  ∀ n, (P15924449485678844206.a n : ℤ) = A033814 (n + 1)

end A033814

/-! ## A033814.P18048141491691907753

`∑[∑[A288219(n+2)]]`
-/

namespace A033814.P18048141491691907753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288219 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033814.P18048141491691907753

namespace A033814

/-- `∑[∑[A288219(n+2)]]` -/
def P18048141491691907753.Spec : Prop :=
  ∀ n, P18048141491691907753.a n = A033814 (n + 1)

end A033814

/-! ## A033814.P624182316937735374

`∑[∑[A163695(n+3)]]`
-/

namespace A033814.P624182316937735374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163695 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033814.P624182316937735374

namespace A033814

/-- `∑[∑[A163695(n+3)]]` -/
def P624182316937735374.Spec : Prop :=
  ∀ n, P624182316937735374.a n = A033814 (n + 1)

end A033814

/-! ## A033814.P14099966370583303725

`∑[∑[A000032(n+4)]]`
-/

namespace A033814.P14099966370583303725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033814.P14099966370583303725

namespace A033814

/-- `∑[∑[A000032(n+4)]]` -/
def P14099966370583303725.Spec : Prop :=
  ∀ n, P14099966370583303725.a n = A033814 (n + 1)

end A033814

/-! ## A033814.P309003057089965579

`∑[∑[A000204(n+4)]]`
-/

namespace A033814.P309003057089965579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033814.P309003057089965579

namespace A033814

/-- `∑[∑[A000204(n+4)]]` -/
def P309003057089965579.Spec : Prop :=
  ∀ n, P309003057089965579.a n = A033814 (n + 1)

end A033814

/-! ## A033814.P4260225311063237346

`∑[A206417(n+4)-7]`
-/

namespace A033814.P4260225311063237346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206417 (n + 4) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033814.P4260225311063237346

namespace A033814

/-- `∑[A206417(n+4)-7]` -/
def P4260225311063237346.Spec : Prop :=
  ∀ n, P4260225311063237346.a n = A033814 (n + 1)

end A033814

/-! ## A033814.P14791116558313191137

`∑[∑[A001610(n+3)+1]]`
-/

namespace A033814.P14791116558313191137
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (n + 3) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033814.P14791116558313191137

namespace A033814

/-- `∑[∑[A001610(n+3)+1]]` -/
def P14791116558313191137.Spec : Prop :=
  ∀ n, P14791116558313191137.a n = A033814 (n + 1)

end A033814

/-! ## A033814.P2544274816360177606

`∑[A023550(n+2)+2*n]`
-/

namespace A033814.P2544274816360177606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023550 (n + 2) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033814.P2544274816360177606

namespace A033814

/-- `∑[A023550(n+2)+2*n]` -/
def P2544274816360177606.Spec : Prop :=
  ∀ n, P2544274816360177606.a n = A033814 (n + 1)

end A033814

/-! ## A033814.P5854629421258383906

`A037140(n)+A033937(n)`
-/

namespace A033814.P5854629421258383906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037140 n + A033937 n

end

end A033814.P5854629421258383906

namespace A033814

/-- `A037140(n)+A033937(n)` -/
def P5854629421258383906.Spec : Prop :=
  ∀ n, P5854629421258383906.a n = A033814 (n + 1)

end A033814

/-! ## A033814.P11332084677744164969

`A037157(n)-A001891(n+1)`
-/

namespace A033814.P11332084677744164969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037157 n - A001891 (n + 1)

end

end A033814.P11332084677744164969

namespace A033814

/-- `A037157(n)-A001891(n+1)` -/
def P11332084677744164969.Spec : Prop :=
  ∀ n, P11332084677744164969.a n = A033814 (n + 1)

end A033814

/-! ## A033814.P15037913462911333833

`A033960(n)+2*A033937(n)`
-/

namespace A033814.P15037913462911333833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033960 n + 2 * A033937 n

end

end A033814.P15037913462911333833

namespace A033814

/-- `A033960(n)+2*A033937(n)` -/
def P15037913462911333833.Spec : Prop :=
  ∀ n, P15037913462911333833.a n = A033814 (n + 1)

end A033814

/-! ## A033814.P11214359201845026981

`∑[∑[A302126(A020742(n+1))]]`
-/

namespace A033814.P11214359201845026981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (A020742 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033814.P11214359201845026981

namespace A033814

/-- `∑[∑[A302126(A020742(n+1))]]` -/
def P11214359201845026981.Spec : Prop :=
  ∀ n, P11214359201845026981.a n = A033814 (n + 1)

end A033814

/-! ## A033814.P932837636388717762

`A033813(n+1)+A033811(n+1)`
-/

namespace A033814.P932837636388717762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033813 (n + 1) + A033811 (n + 1)

end

end A033814.P932837636388717762

namespace A033814

/-- `A033813(n+1)+A033811(n+1)` -/
def P932837636388717762.Spec : Prop :=
  ∀ n, P932837636388717762.a n = A033814 (n + 1)

end A033814

/-! ## A033814.P4421052105635587596

`A001924(n+1)+2*A033960(n)`
-/

namespace A033814.P4421052105635587596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 (n + 1) + 2 * A033960 n

end

end A033814.P4421052105635587596

namespace A033814

/-- `A001924(n+1)+2*A033960(n)` -/
def P4421052105635587596.Spec : Prop :=
  ∀ n, P4421052105635587596.a n = A033814 (n + 1)

end A033814

/-! ## A033814.P13721915906392524907

`A023537(n+1)+2*A033811(n+1)`
-/

namespace A033814.P13721915906392524907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023537 (n + 1) + 2 * A033811 (n + 1)

end

end A033814.P13721915906392524907

namespace A033814

/-- `A023537(n+1)+2*A033811(n+1)` -/
def P13721915906392524907.Spec : Prop :=
  ∀ n, P13721915906392524907.a n = A033814 (n + 1)

end A033814

/-! ## A033814.P12087327918824869681

`2*A023620(n+2)-A023548(n+2)`
-/

namespace A033814.P12087327918824869681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A023620 (n + 2) - A023548 (n + 2)

end

end A033814.P12087327918824869681

namespace A033814

/-- `2*A023620(n+2)-A023548(n+2)` -/
def P12087327918824869681.Spec : Prop :=
  ∀ n, P12087327918824869681.a n = A033814 (n + 1)

end A033814

/-! ## A033814.P17752860164343347886

`A033937(n)+A037157(n)-A033960(n)`
-/

namespace A033814.P17752860164343347886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033937 n + (A037157 n - A033960 n)

end

end A033814.P17752860164343347886

namespace A033814

/-- `A033937(n)+A037157(n)-A033960(n)` -/
def P17752860164343347886.Spec : Prop :=
  ∀ n, P17752860164343347886.a n = A033814 (n + 1)

end A033814

/-!
# A033815: Number of standard permutations of [ a_1..a_n b_1..b_n ] (b_i is not immediately followed by a_i, for all i).

The programs for A033815, the canonical program `A033815.P3971581222994016201` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033815 has offset 0).

The definition of A033815 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033815.P3971581222994016201

`2*n*(2*n-1)*a(n-1)+n*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033815

/-- `2*n*(2*n-1)*a(n-1)+n*(n-1)*a(n-2)` -/
def P3971581222994016201.Spec : Prop :=
  ∀ n, P3971581222994016201.a n = A033815 n

theorem P3971581222994016201.correct : P3971581222994016201.Spec := by
  intro n
  simp only [A033815]

end A033815

/-! ## A033815.P4650895253175957439

`A002119(n)*n!*(-1)^n`
-/

namespace A033815.P4650895253175957439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002119 n * (Nat.factorial n : ℤ) * (-1) ^ n

end

end A033815.P4650895253175957439

namespace A033815

/-- `A002119(n)*n!*(-1)^n` -/
def P4650895253175957439.Spec : Prop :=
  ∀ n, P4650895253175957439.a n = A033815 n

end A033815

/-! ## A033815.P2240492400751106059

`A161131(2*n)`
-/

namespace A033815.P2240492400751106059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161131 (2 * n)

end

end A033815.P2240492400751106059

namespace A033815

/-- `A161131(2*n)` -/
def P2240492400751106059.Spec : Prop :=
  ∀ n, P2240492400751106059.a n = A033815 n

end A033815

/-! ## A033815.P2952721705773691504

`A161132(2*n)`
-/

namespace A033815.P2952721705773691504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161132 (2 * n)

end

end A033815.P2952721705773691504

namespace A033815

/-- `A161132(2*n)` -/
def P2952721705773691504.Spec : Prop :=
  ∀ n, P2952721705773691504.a n = A033815 n

end A033815

/-! ## A033815.P165820128666485075

`A161134(∑[2*n])`
-/

namespace A033815.P165820128666485075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161134 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033815.P165820128666485075

namespace A033815

/-- `A161134(∑[2*n])` -/
def P165820128666485075.Spec : Prop :=
  ∀ n, P165820128666485075.a n = A033815 n

end A033815

/-!
# A033816: a(n) = 2*n^2 + 3*n + 3.

The programs for A033816, the canonical program `A033816.P2874186077373317365` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033816 has offset 0).

The definition of A033816 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+3*n+3` (program `A033816.P2874186077373317365`, by `A033816.P2874186077373317365.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A033816.P2874186077373317365

`2*n²+3*n+3`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033816

/-- `2*n²+3*n+3` -/
def P2874186077373317365.Spec : Prop :=
  ∀ n, (P2874186077373317365.a n : ℤ) = A033816 n

theorem P2874186077373317365.correct : P2874186077373317365.Spec := by
  intro n
  simp only [A033816]

end A033816

/-! ## A033816.P2598249299856777593

`∑[record[lcm(2, n)+3]]`
-/

namespace A033816.P2598249299856777593
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033816.P2598249299856777593

namespace A033816

/-- `∑[record[lcm(2, n)+3]]` -/
def P2598249299856777593.Spec : Prop :=
  ∀ n, (P2598249299856777593.a n : ℤ) = A033816 n

end A033816

/-! ## A033816.P12624452956931243390

`∑[a(n-1)+4]` with `a(0)=3, a(1)=5`
-/

namespace A033816.P12624452956931243390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 5] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033816.P12624452956931243390

namespace A033816

/-- `∑[a(n-1)+4]` -/
def P12624452956931243390.Spec : Prop :=
  ∀ n, (P12624452956931243390.a n : ℤ) = A033816 n

end A033816

/-! ## A033816.P16607051512985728370

`∑[ogf((3-x+2x^2)/(1-2x+x^2))]`
-/

namespace A033816.P16607051512985728370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033816.P16607051512985728370

namespace A033816

/-- `∑[ogf((3-x+2x^2)/(1-2x+x^2))]` -/
def P16607051512985728370.Spec : Prop :=
  ∀ n, P16607051512985728370.a n = A033816 n

end A033816

/-! ## A033816.P16614329004527545595

`ogf((3-x+2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A033816.P16614329004527545595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -1, 2] [1, -3, 3, -1] n

end

end A033816.P16614329004527545595

namespace A033816

/-- `ogf((3-x+2x^2)/(1-3x+3x^2-x^3))` -/
def P16614329004527545595.Spec : Prop :=
  ∀ n, P16614329004527545595.a n = A033816 n

end A033816

/-! ## A033816.P3000563321746286042

`floor(2/acot(n+1)²-n)`
-/

namespace A033816.P3000563321746286042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n + 1 : ℝ) ^ 2 - (n : ℝ)⌋

end

end A033816.P3000563321746286042

namespace A033816

/-- `floor(2/acot(n+1)²-n)` -/
def P3000563321746286042.Spec : Prop :=
  ∀ n, P3000563321746286042.a n = A033816 n

end A033816

/-! ## A033816.P13753253814603637399

`ceil(2/acot((n+1)²)-n)`
-/

namespace A033816.P13753253814603637399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot ((n + 1) ^ 2 : ℝ) - (n : ℝ)⌉

end

end A033816.P13753253814603637399

namespace A033816

/-- `ceil(2/acot((n+1)²)-n)` -/
def P13753253814603637399.Spec : Prop :=
  ∀ n, P13753253814603637399.a n = A033816 n

end A033816

/-! ## A033816.P6516265553278847966

`round(2/acot(n+1)²-n)`
-/

namespace A033816.P6516265553278847966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 / SequenceMachineLib.acot (n + 1 : ℝ) ^ 2 - (n : ℝ))

end

end A033816.P6516265553278847966

namespace A033816

/-- `round(2/acot(n+1)²-n)` -/
def P6516265553278847966.Spec : Prop :=
  ∀ n, P6516265553278847966.a n = A033816 n

end A033816

/-! ## A033816.P3085805921704932621

`abs(2*n-∑[record[xor(3, n)]])`
-/

namespace A033816.P3085805921704932621
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|

end

end A033816.P3085805921704932621

namespace A033816

/-- `abs(2*n-∑[record[xor(3, n)]])` -/
def P3085805921704932621.Spec : Prop :=
  ∀ n, P3085805921704932621.a n = A033816 n

end A033816

/-! ## A033816.P6567112695437923153

`abs(2*n-C(2*n+3, 2))`
-/

namespace A033816.P6567112695437923153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - (Nat.choose (2 * n + 3) 2 : ℤ)|

end

end A033816.P6567112695437923153

namespace A033816

/-- `abs(2*n-C(2*n+3, 2))` -/
def P6567112695437923153.Spec : Prop :=
  ∀ n, P6567112695437923153.a n = A033816 n

end A033816

/-! ## A033816.P4093768210497566984

`floor(4*n+a(n-1)+1)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A033816.P4093768210497566984
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  4 * n + (a (n - 1) + 1)

end

end A033816.P4093768210497566984

namespace A033816

/-- `floor(4*n+a(n-1)+1)` -/
def P4093768210497566984.Spec : Prop :=
  ∀ n, (P4093768210497566984.a n : ℤ) = A033816 n

theorem P4093768210497566984.correct : P4093768210497566984.Spec := by
  intro n
  induction n with
  | zero => simp [A033816, A033816.P4093768210497566984.a, A033816.P2874186077373317365.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A033816, Nat.add_sub_cancel, A033816.P4093768210497566984.a, A033816.P2874186077373317365.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A033816

/-! ## A033816.P221136329743628575

`abs(record[2*(1-n)²]-(n-1))`
-/

namespace A033816.P221136329743628575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((n : ℤ) - 1)|

end

end A033816.P221136329743628575

namespace A033816

/-- `abs(record[2*(1-n)²]-(n-1))` -/
def P221136329743628575.Spec : Prop :=
  ∀ n, P221136329743628575.a n = A033816 n

end A033816

/-! ## A033816.P12485086273225340134

`∑[4*n-(-1)^a(n-1)]` with `a(0)=3`
-/

namespace A033816.P12485086273225340134
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [3] fun n f1 =>
  (4 * n : ℝ) - (-1 : ℝ) ^ (f1 (n - 1))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033816.P12485086273225340134

namespace A033816

/-- `∑[4*n-(-1)^a(n-1)]` -/
def P12485086273225340134.Spec : Prop :=
  ∀ n, P12485086273225340134.a n = (A033816 n : ℝ)

end A033816

/-! ## A033816.P7109344434072442436

`floor(n-∑[a(n-1)-4])` with `a(0)=-3, a(1)=-4`

`floor` is left out, it is the identity on integers.
-/

namespace A033816.P7109344434072442436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-3, -4] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033816.P7109344434072442436

namespace A033816

/-- `floor(n-∑[a(n-1)-4])` -/
def P7109344434072442436.Spec : Prop :=
  ∀ n, P7109344434072442436.a n = A033816 n

end A033816

/-! ## A033816.P4090343002370763168

`4*((a(n-1)+1)/4+n)` with `a(0)=3`
-/

namespace A033816.P4090343002370763168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  4 * ((a (n - 1) + 1) / 4 + (n : ℚ))

end

end A033816.P4090343002370763168

namespace A033816

/-- `4*((a(n-1)+1)/4+n)` -/
def P4090343002370763168.Spec : Prop :=
  ∀ n, P4090343002370763168.a n = (A033816 n : ℚ)

theorem P4090343002370763168.correct : P4090343002370763168.Spec := by
  intro n
  induction n with
  | zero => simp [A033816, A033816.P4090343002370763168.a, A033816.P2874186077373317365.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A033816, Nat.add_sub_cancel, A033816.P4090343002370763168.a, A033816.P2874186077373317365.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A033816

/-! ## A033816.P1649962172389031985

`ceil((n+1)*(acot(n)+2*n+1))`
-/

namespace A033816.P1649962172389031985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) * (SequenceMachineLib.acot (n : ℝ) + (2 * n + 1 : ℝ))⌉

end

end A033816.P1649962172389031985

namespace A033816

/-- `ceil((n+1)*(acot(n)+2*n+1))` -/
def P1649962172389031985.Spec : Prop :=
  ∀ n, P1649962172389031985.a n = A033816 n

end A033816

/-! ## A033816.P8681707436880705846

`round((2*n+1)/acot(n+1)+ϕ)`
-/

namespace A033816.P8681707436880705846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ) + Real.goldenRatio)

end

end A033816.P8681707436880705846

namespace A033816

/-- `round((2*n+1)/acot(n+1)+ϕ)` -/
def P8681707436880705846.Spec : Prop :=
  ∀ n, P8681707436880705846.a n = A033816 n

end A033816

/-! ## A033816.P614587927596792842

`round((2*n+1)*(acot(n)+n+1))`
-/

namespace A033816.P614587927596792842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℝ) * (SequenceMachineLib.acot (n : ℝ) + (n + 1 : ℝ)))

end

end A033816.P614587927596792842

namespace A033816

/-- `round((2*n+1)*(acot(n)+n+1))` -/
def P614587927596792842.Spec : Prop :=
  ∀ n, P614587927596792842.a n = A033816 n

end A033816

/-! ## A033816.P9034932019334691994

`floor(2*n/acot(n+1)+n+3)`
-/

namespace A033816.P9034932019334691994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ) + (n + 3 : ℝ)⌋

end

end A033816.P9034932019334691994

namespace A033816

/-- `floor(2*n/acot(n+1)+n+3)` -/
def P9034932019334691994.Spec : Prop :=
  ∀ n, P9034932019334691994.a n = A033816 n

end A033816

/-! ## A033816.P16508596510111241311

`Δ[C(2*n, 2)+a(n-1)+2]` with `a(0)=0`
-/

namespace A033816.P16508596510111241311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose (2 * n) 2 + (f1 (n - 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A033816.P16508596510111241311

namespace A033816

/-- `Δ[C(2*n, 2)+a(n-1)+2]` -/
def P16508596510111241311.Spec : Prop :=
  ∀ n, P16508596510111241311.a n = A033816 n

end A033816

/-!
# A033817: Convolution of natural numbers n >= 1 with Lucas numbers L(k) for k >= -4.

The programs for A033817, the canonical program `A033817.P11473347610784516059` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033817 has offset 1).

The definition of A033817 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033817.P11473347610784516059

`∑[∑[a(n-1)+a(n-2)]]` with `a(0)=7, a(1)=-4`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033817

/-- `∑[∑[a(n-1)+a(n-2)]]` -/
def P11473347610784516059.Spec : Prop :=
  ∀ n, P11473347610784516059.a n = A033817 (n + 1)

theorem P11473347610784516059.correct : P11473347610784516059.Spec := by
  intro n
  simp only [A033817, Nat.add_sub_cancel]

end A033817

/-! ## A033817.P5542535965014864935

`∑[a(n-1)-(4-a(n-2))]` with `a(0)=7, a(1)=3`
-/

namespace A033817.P5542535965014864935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 3] fun n f1 =>
  f1 (n - 1) - (4 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033817.P5542535965014864935

namespace A033817

/-- `∑[a(n-1)-(4-a(n-2))]` -/
def P5542535965014864935.Spec : Prop :=
  ∀ n, P5542535965014864935.a n = A033817 (n + 1)

end A033817

/-! ## A033817.P4516884025960248875

`4*(n+1)+A001612(n)`
-/

namespace A033817.P4516884025960248875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) + A001612 n

end

end A033817.P4516884025960248875

namespace A033817

/-- `4*(n+1)+A001612(n)` -/
def P4516884025960248875.Spec : Prop :=
  ∀ n, P4516884025960248875.a n = A033817 (n + 1)

end A033817

/-! ## A033817.P4755143247511300027

`4*n+5+A000032(n)`
-/

namespace A033817.P4755143247511300027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 5 : ℤ) + A000032 n

end

end A033817.P4755143247511300027

namespace A033817

/-- `4*n+5+A000032(n)` -/
def P4755143247511300027.Spec : Prop :=
  ∀ n, P4755143247511300027.a n = A033817 (n + 1)

end A033817

/-! ## A033817.P7274178732786884679

`4*(n+1)+A000211(n)-1`
-/

namespace A033817.P7274178732786884679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) + (A000211 n - 1)

end

end A033817.P7274178732786884679

namespace A033817

/-- `4*(n+1)+A000211(n)-1` -/
def P7274178732786884679.Spec : Prop :=
  ∀ n, P7274178732786884679.a n = A033817 (n + 1)

end A033817

/-! ## A033817.P16819877068855721797

`A127218(2*n)+4*n+5`
-/

namespace A033817.P16819877068855721797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127218 (2 * n) + (4 * n + 5 : ℤ)

end

end A033817.P16819877068855721797

namespace A033817

/-- `A127218(2*n)+4*n+5` -/
def P16819877068855721797.Spec : Prop :=
  ∀ n, P16819877068855721797.a n = A033817 (n + 1)

end A033817

/-! ## A033817.P10353784538990054035

`A302126(2*n+1)+4*n+5`
-/

namespace A033817.P10353784538990054035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302126 (2 * n + 1) + (4 * n + 5 : ℤ)

end

end A033817.P10353784538990054035

namespace A033817

/-- `A302126(2*n+1)+4*n+5` -/
def P10353784538990054035.Spec : Prop :=
  ∀ n, P10353784538990054035.a n = A033817 (n + 1)

end A033817

/-! ## A033817.P11932667531137921061

`A004767(n)+A000211(n)`
-/

namespace A033817.P11932667531137921061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n + A000211 n

end

end A033817.P11932667531137921061

namespace A033817

/-- `A004767(n)+A000211(n)` -/
def P11932667531137921061.Spec : Prop :=
  ∀ n, P11932667531137921061.a n = A033817 (n + 1)

end A033817

/-! ## A033817.P11666879968952043725

`A000211(n)+A016825(n)+1`
-/

namespace A033817.P11666879968952043725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n + (A016825 n + 1)

end

end A033817.P11666879968952043725

namespace A033817

/-- `A000211(n)+A016825(n)+1` -/
def P11666879968952043725.Spec : Prop :=
  ∀ n, P11666879968952043725.a n = A033817 (n + 1)

end A033817

/-! ## A033817.P14345990478961372786

`A037141(n)+A002062(n+1)`
-/

namespace A033817.P14345990478961372786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037141 n + A002062 (n + 1)

end

end A033817.P14345990478961372786

namespace A033817

/-- `A037141(n)+A002062(n+1)` -/
def P14345990478961372786.Spec : Prop :=
  ∀ n, P14345990478961372786.a n = A033817 (n + 1)

end A033817

/-! ## A033817.P10777995563037233043

`A047550(n+1)+A020878(n)`
-/

namespace A033817.P10777995563037233043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047550 (n + 1) + A020878 n

end

end A033817.P10777995563037233043

namespace A033817

/-- `A047550(n+1)+A020878(n)` -/
def P10777995563037233043.Spec : Prop :=
  ∀ n, P10777995563037233043.a n = A033817 (n + 1)

end A033817

/-! ## A033817.P11251346524755444416

`A000032(n)+A004767(n)+2`
-/

namespace A033817.P11251346524755444416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A004767 n + 2)

end

end A033817.P11251346524755444416

namespace A033817

/-- `A000032(n)+A004767(n)+2` -/
def P11251346524755444416.Spec : Prop :=
  ∀ n, P11251346524755444416.a n = A033817 (n + 1)

end A033817

/-! ## A033817.P18061680475950848223

`A000032(n)+Δ[A046092(n)]+1`
-/

namespace A033817.P18061680475950848223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (f1 (n + 1) - f1 n + 1)

end

end A033817.P18061680475950848223

namespace A033817

/-- `A000032(n)+Δ[A046092(n)]+1` -/
def P18061680475950848223.Spec : Prop :=
  ∀ n, P18061680475950848223.a n = A033817 (n + 1)

end A033817

/-! ## A033817.P14815918111452153695

`A000032(n)+record[A004444(n)]+2`
-/

namespace A033817.P14815918111452153695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004444 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2)

end

end A033817.P14815918111452153695

namespace A033817

/-- `A000032(n)+record[A004444(n)]+2` -/
def P14815918111452153695.Spec : Prop :=
  ∀ n, P14815918111452153695.a n = A033817 (n + 1)

end A033817

/-! ## A033817.P12777340090860821892

`A000032(n)+record[A166519(n)]+2`
-/

namespace A033817.P12777340090860821892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2)

end

end A033817.P12777340090860821892

namespace A033817

/-- `A000032(n)+record[A166519(n)]+2` -/
def P12777340090860821892.Spec : Prop :=
  ∀ n, P12777340090860821892.a n = A033817 (n + 1)

end A033817

/-! ## A033817.P15926666380441789673

`A000032(n)+record[A263313(n)]+2`
-/

namespace A033817.P15926666380441789673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263313 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 2)

end

end A033817.P15926666380441789673

namespace A033817

/-- `A000032(n)+record[A263313(n)]+2` -/
def P15926666380441789673.Spec : Prop :=
  ∀ n, P15926666380441789673.a n = A033817 (n + 1)

end A033817

/-! ## A033817.P4657146371151687323

`A000032(n)+A133653(n+2)-1`
-/

namespace A033817.P4657146371151687323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A133653 (n + 2) - 1)

end

end A033817.P4657146371151687323

namespace A033817

/-- `A000032(n)+A133653(n+2)-1` -/
def P4657146371151687323.Spec : Prop :=
  ∀ n, P4657146371151687323.a n = A033817 (n + 1)

end A033817

/-! ## A033817.P17459121243296550819

`A016969(n)+A000032(n)-n-n`
-/

namespace A033817.P17459121243296550819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n + A000032 n - (n : ℤ) - (n : ℤ)

end

end A033817.P17459121243296550819

namespace A033817

/-- `A016969(n)+A000032(n)-n-n` -/
def P17459121243296550819.Spec : Prop :=
  ∀ n, P17459121243296550819.a n = A033817 (n + 1)

end A033817

/-! ## A033817.P5367730830838471352

`A016777(n+1)+A000032(n)+n+1`
-/

namespace A033817.P5367730830838471352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 1) + A000032 n + (n + 1 : ℤ)

end

end A033817.P5367730830838471352

namespace A033817

/-- `A016777(n+1)+A000032(n)+n+1` -/
def P5367730830838471352.Spec : Prop :=
  ∀ n, P5367730830838471352.a n = A033817 (n + 1)

end A033817

/-! ## A033817.P16570424839494880188

`A000032(n)+A166941(n)-A062938(n)`
-/

namespace A033817.P16570424839494880188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A166941 n - A062938 n)

end

end A033817.P16570424839494880188

namespace A033817

/-- `A000032(n)+A166941(n)-A062938(n)` -/
def P16570424839494880188.Spec : Prop :=
  ∀ n, P16570424839494880188.a n = A033817 (n + 1)

end A033817

/-!
# A033818: Convolution of natural numbers n >= 1 with Lucas numbers L(k) for k >= -2.

The programs for A033818, the canonical program `A033818.P738251255217305833` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033818 has offset 1).

The definition of A033818 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 477 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033818.P7740847555464525342

`round(ϕ^(n+2)+n)`
-/

namespace A033818.P7740847555464525342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ (n + 2) + (n : ℝ))

end

end A033818.P7740847555464525342

namespace A033818

/-- `round(ϕ^(n+2)+n)` -/
def P7740847555464525342.Spec : Prop :=
  ∀ n, P7740847555464525342.a n = A033818 (n + 1)

end A033818

/-! ## A033818.P18214061609166643755

`∑[ogf((3-4x)/(1-2x+x^3))]`
-/

namespace A033818.P18214061609166643755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4] [1, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033818.P18214061609166643755

namespace A033818

/-- `∑[ogf((3-4x)/(1-2x+x^3))]` -/
def P18214061609166643755.Spec : Prop :=
  ∀ n, P18214061609166643755.a n = A033818 (n + 1)

end A033818

/-! ## A033818.P4457967304562230787

`ogf((3-4x)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A033818.P4457967304562230787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4] [1, -3, 2, 1, -1] n

end

end A033818.P4457967304562230787

namespace A033818

/-- `ogf((3-4x)/(1-3x+2x^2+x^3-x^4))` -/
def P4457967304562230787.Spec : Prop :=
  ∀ n, P4457967304562230787.a n = A033818 (n + 1)

end A033818

/-! ## A033818.P1251572626911934501

`floor(∑[ϕ*a(n-1)]+n+2)` with `a(0)=1`
-/

namespace A033818.P1251572626911934501
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  Real.goldenRatio * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j + (n + 2 : ℝ)⌋

end

end A033818.P1251572626911934501

namespace A033818

/-- `floor(∑[ϕ*a(n-1)]+n+2)` -/
def P1251572626911934501.Spec : Prop :=
  ∀ n, P1251572626911934501.a n = A033818 (n + 1)

end A033818

/-! ## A033818.P738251255217305833

`∑[∑[a(n-1)+a(n-2)]]` with `a(0)=3, a(1)=-1`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033818

/-- `∑[∑[a(n-1)+a(n-2)]]` -/
def P738251255217305833.Spec : Prop :=
  ∀ n, P738251255217305833.a n = A033818 (n + 1)

theorem P738251255217305833.correct : P738251255217305833.Spec := by
  intro n
  simp only [A033818, Nat.add_sub_cancel]

end A033818

/-! ## A033818.P13935868213411638996

`∑[a(n-1)-(1-a(n-2))]` with `a(0)=3, a(1)=2`
-/

namespace A033818.P13935868213411638996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033818.P13935868213411638996

namespace A033818

/-- `∑[a(n-1)-(1-a(n-2))]` -/
def P13935868213411638996.Spec : Prop :=
  ∀ n, P13935868213411638996.a n = A033818 (n + 1)

end A033818

/-! ## A033818.P5660536299720309760

`3-n+a(n-1)+a(n-2)` with `a(0)=3, a(1)=5`
-/

namespace A033818.P5660536299720309760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  3 - (n : ℤ) + (a (n - 1) + a (n - 2))

end

end A033818.P5660536299720309760

namespace A033818

/-- `3-n+a(n-1)+a(n-2)` -/
def P5660536299720309760.Spec : Prop :=
  ∀ n, P5660536299720309760.a n = A033818 (n + 1)

end A033818

/-! ## A033818.P9687814427653652250

`3-(n-a(n-1)-a(n-2))` with `a(0)=3, a(1)=5`
-/

namespace A033818.P9687814427653652250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5] fun n a =>
  3 - ((n : ℤ) - a (n - 1) - a (n - 2))

end

end A033818.P9687814427653652250

namespace A033818

/-- `3-(n-a(n-1)-a(n-2))` -/
def P9687814427653652250.Spec : Prop :=
  ∀ n, P9687814427653652250.a n = A033818 (n + 1)

end A033818

/-! ## A033818.P8295143220324058580

`∑[A001612(n)]`
-/

namespace A033818.P8295143220324058580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033818.P8295143220324058580

namespace A033818

/-- `∑[A001612(n)]` -/
def P8295143220324058580.Spec : Prop :=
  ∀ n, P8295143220324058580.a n = A033818 (n + 1)

end A033818

/-! ## A033818.P17826469008484015469

`∑[A000032(n)+1]`
-/

namespace A033818.P17826469008484015469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033818.P17826469008484015469

namespace A033818

/-- `∑[A000032(n)+1]` -/
def P17826469008484015469.Spec : Prop :=
  ∀ n, P17826469008484015469.a n = A033818 (n + 1)

end A033818

/-! ## A033818.P3492967560808462979

`∑[A000211(n)-1]`
-/

namespace A033818.P3492967560808462979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000211 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033818.P3492967560808462979

namespace A033818

/-- `∑[A000211(n)-1]` -/
def P3492967560808462979.Spec : Prop :=
  ∀ n, P3492967560808462979.a n = A033818 (n + 1)

end A033818

/-! ## A033818.P232585733401005727

`n+A000032(2+n)`
-/

namespace A033818.P232585733401005727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A000032 (2 + n)

end

end A033818.P232585733401005727

namespace A033818

/-- `n+A000032(2+n)` -/
def P232585733401005727.Spec : Prop :=
  ∀ n, P232585733401005727.a n = A033818 (n + 1)

end A033818

/-! ## A033818.P13487154591199947651

`A000204(n+2)+n`
-/

namespace A033818.P13487154591199947651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) + (n : ℤ)

end

end A033818.P13487154591199947651

namespace A033818

/-- `A000204(n+2)+n` -/
def P13487154591199947651.Spec : Prop :=
  ∀ n, P13487154591199947651.a n = A033818 (n + 1)

end A033818

/-! ## A033818.P6200847740914705245

`A014739(n)+2+n`
-/

namespace A033818.P6200847740914705245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014739 n + 2 + (n : ℤ)

end

end A033818.P6200847740914705245

namespace A033818

/-- `A014739(n)+2+n` -/
def P6200847740914705245.Spec : Prop :=
  ∀ n, P6200847740914705245.a n = A033818 (n + 1)

end A033818

/-! ## A033818.P4356673276029325666

`A080023(n+2)+n`
-/

namespace A033818.P4356673276029325666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080023 (n + 2) + (n : ℤ)

end

end A033818.P4356673276029325666

namespace A033818

/-- `A080023(n+2)+n` -/
def P4356673276029325666.Spec : Prop :=
  ∀ n, P4356673276029325666.a n = A033818 (n + 1)

end A033818

/-! ## A033818.P3208007727998332129

`A169985(n+2)+n`
-/

namespace A033818.P3208007727998332129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 (n + 2) + (n : ℤ)

end

end A033818.P3208007727998332129

namespace A033818

/-- `A169985(n+2)+n` -/
def P3208007727998332129.Spec : Prop :=
  ∀ n, P3208007727998332129.a n = A033818 (n + 1)

end A033818

/-! ## A033818.P131471963924792855

`A254729(n+3)+n`
-/

namespace A033818.P131471963924792855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254729 (n + 3) + (n : ℤ)

end

end A033818.P131471963924792855

namespace A033818

/-- `A254729(n+3)+n` -/
def P131471963924792855.Spec : Prop :=
  ∀ n, P131471963924792855.a n = A033818 (n + 1)

end A033818

/-! ## A033818.P13225856874695857760

`A082587(2*n)+n`
-/

namespace A033818.P13225856874695857760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082587 (2 * n) + (n : ℤ)

end

end A033818.P13225856874695857760

namespace A033818

/-- `A082587(2*n)+n` -/
def P13225856874695857760.Spec : Prop :=
  ∀ n, P13225856874695857760.a n = A033818 (n + 1)

end A033818

/-! ## A033818.P13561363665911854395

`A329723(n+4)+n`
-/

namespace A033818.P13561363665911854395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329723 (n + 4) + (n : ℤ)

end

end A033818.P13561363665911854395

namespace A033818

/-- `A329723(n+4)+n` -/
def P13561363665911854395.Spec : Prop :=
  ∀ n, P13561363665911854395.a n = A033818 (n + 1)

end A033818

/-! ## A033818.P12123675678492645489

`∑[Δ[A001610(n)]+1]`
-/

namespace A033818.P12123675678492645489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033818.P12123675678492645489

namespace A033818

/-- `∑[Δ[A001610(n)]+1]` -/
def P12123675678492645489.Spec : Prop :=
  ∀ n, P12123675678492645489.a n = A033818 (n + 1)

end A033818

/-!
# A033819: Trimorphic numbers: n^3 ends with n. Also m-morphic numbers for all m > 5 such that m-1 is not divisible by 10 and m == 3 (mod 4).

The programs for A033819, there is no canonical definition to state claims against.
-/

/-! ## A033819.P8346114896048120763

`∪[A003226(n+1), A056032(n+1)]`
-/

namespace A033819.P8346114896048120763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033819.P8346114896048120763

/-! ## A033819.P7912244428437832746

`∩[A068407(n+1), A072496(n+1)]`
-/

namespace A033819.P7912244428437832746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033819.P7912244428437832746

/-! ## A033819.P3444386316145281732

`A215558(n+1)^(1/3)`
-/

namespace A033819.P3444386316145281732
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A215558 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A033819.P3444386316145281732

/-! ## A033819.P6727232964573130843

`∩[comp[A056036(n+1)], A068407(n+1)]`
-/

namespace A033819.P6727232964573130843
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056036 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A033819.P6727232964573130843

/-! ## A033819.P18311798760323469858

`A029942(record[A320053(n)])`
-/

namespace A033819.P18311798760323469858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029942 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033819.P18311798760323469858

/-!
# A033820: Triangle read by rows: T(k,j) = ((2*j+1)/(k+1))*binomial(2*j,j)*binomial(2*k-2*j,k-j).

The programs for A033820, the canonical program `A033820.P6750726917053275800` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033820 has offset 0).

The definition of A033820 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033820.P6750726917053275800

`A078817(A061579(n))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A033820

/-- `A078817(A061579(n))` -/
def P6750726917053275800.Spec : Prop :=
  ∀ n, P6750726917053275800.a n = A033820 n

theorem P6750726917053275800.correct : P6750726917053275800.Spec := by
  intro n
  simp only [A033820]

end A033820

/-! ## A033820.P1143438901160282261

`A028326(n)*A068555(n)-A078817(n)`
-/

namespace A033820.P1143438901160282261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n * A068555 n - A078817 n

end

end A033820.P1143438901160282261

namespace A033820

/-- `A028326(n)*A068555(n)-A078817(n)` -/
def P1143438901160282261.Spec : Prop :=
  ∀ n, P1143438901160282261.a n = A033820 n

end A033820

/-! ## A033820.P13061683082823444705

`A007318(n)*A135573(A061579(n))`
-/

namespace A033820.P13061683082823444705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A135573 (A061579 n).toNat

end

end A033820.P13061683082823444705

namespace A033820

/-- `A007318(n)*A135573(A061579(n))` -/
def P13061683082823444705.Spec : Prop :=
  ∀ n, P13061683082823444705.a n = A033820 n

end A033820

/-! ## A033820.P9560131315361266424

`abs(A117440(n)*A135573(A061579(n)))`
-/

namespace A033820.P9560131315361266424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n * A135573 (A061579 n).toNat|

end

end A033820.P9560131315361266424

namespace A033820

/-- `abs(A117440(n)*A135573(A061579(n)))` -/
def P9560131315361266424.Spec : Prop :=
  ∀ n, P9560131315361266424.a n = A033820 n

end A033820

/-! ## A033820.P12084784706255897775

`abs(A130595(n)*A135573(A061579(n)))`
-/

namespace A033820.P12084784706255897775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A135573 (A061579 n).toNat|

end

end A033820.P12084784706255897775

namespace A033820

/-- `abs(A130595(n)*A135573(A061579(n)))` -/
def P12084784706255897775.Spec : Prop :=
  ∀ n, P12084784706255897775.a n = A033820 n

end A033820

/-! ## A033820.P5029944803837017303

`sqrt(A008459(n))*A135573(A061579(n))`
-/

namespace A033820.P5029944803837017303
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A135573 (A061579 n).toNat : ℝ)

end

end A033820.P5029944803837017303

namespace A033820

/-- `sqrt(A008459(n))*A135573(A061579(n))` -/
def P5029944803837017303.Spec : Prop :=
  ∀ n, P5029944803837017303.a n = (A033820 n : ℝ)

end A033820

/-! ## A033820.P11208704829084548686

`Δ[A102363(n)]*A135573(A061579(n))`
-/

namespace A033820.P11208704829084548686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A135573 (A061579 n).toNat

end

end A033820.P11208704829084548686

namespace A033820

/-- `Δ[A102363(n)]*A135573(A061579(n))` -/
def P11208704829084548686.Spec : Prop :=
  ∀ n, P11208704829084548686.a n = A033820 n

end A033820

/-! ## A033820.P1065559678384235871

`A135573(A061579(n))*A246425(A109128(n))`
-/

namespace A033820.P1065559678384235871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135573 (A061579 n).toNat * A246425 (A109128 n).toNat

end

end A033820.P1065559678384235871

namespace A033820

/-- `A135573(A061579(n))*A246425(A109128(n))` -/
def P1065559678384235871.Spec : Prop :=
  ∀ n, P1065559678384235871.a n = A033820 n

end A033820

/-!
# A033821: Orders of certain groups associated with K3 surfaces and M24.

The programs for A033821, there is no canonical definition to state claims against.
-/

/-! ## A033821.P9341818928159489293

`A007434(A246100(2*(n+2))+3)`
-/

namespace A033821.P9341818928159489293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A246100 (2 * (n + 2)) + 3).toNat

end

end A033821.P9341818928159489293

/-! ## A033821.P15911359859227494799

`A007434(A293724(n)+2*(n+3))`
-/

namespace A033821.P15911359859227494799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A293724 n + (2 * (n + 3) : ℤ)).toNat

end

end A033821.P15911359859227494799

/-! ## A033821.P15911493662292295829

`A007434(lt[A301829(n+2), A027750(n+1)])`
-/

namespace A033821.P15911493662292295829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301829 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A033821.P15911493662292295829

/-! ## A033821.P5932464567825964855

`A007434(lt[A285125(n+1), A285125(3*n+4)])`
-/

namespace A033821.P5932464567825964855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285125 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A033821.P5932464567825964855

/-!
# A033828: Numbers that can be expressed as the product of two 2-digit numbers in at least one way.

The programs for A033828, there is no canonical definition to state claims against.
-/

/-! ## A033828.P6071179545680397418

`lt[9, A033676(A233583(n+1))]`
-/

namespace A033828.P6071179545680397418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A033828.P6071179545680397418

/-! ## A033828.P5061726609452291749

`lt[9, A102097(A168104(n))]`
-/

namespace A033828.P5061726609452291749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102097 (A168104 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A033828.P5061726609452291749

/-! ## A033828.P7981884561392416213

`lt[2, A002839(A033676(n+1))]+1`
-/

namespace A033828.P7981884561392416213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002839 (A033676 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A033828.P7981884561392416213

/-! ## A033828.P1181203993099693986

`A348139(A077342(n+1))`
-/

namespace A033828.P1181203993099693986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348139 (A077342 (n + 1)).toNat

end

end A033828.P1181203993099693986

/-! ## A033828.P12978394919868931981

`A348139(A242474(n+1))`
-/

namespace A033828.P12978394919868931981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348139 (A242474 (n + 1)).toNat

end

end A033828.P12978394919868931981

/-!
# A033829: Numbers that can be expressed as the product of two 3-digit numbers in at least one way.

The programs for A033829, there is no canonical definition to state claims against.
-/

/-! ## A033829.P504038820071830309

`A051022(A348139(n+1)^A008835(n+1))`
-/

namespace A033829.P504038820071830309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (SequenceMachineLib.roundAway ((A348139 (n + 1) : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A033829.P504038820071830309

/-! ## A033829.P17379273372497158308

`A051022(A008835(n+1)²*A348139(n+1))`
-/

namespace A033829.P17379273372497158308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A008835 (n + 1) ^ 2 * A348139 (n + 1)).toNat

end

end A033829.P17379273372497158308

/-! ## A033829.P12159348277112653854

`A051022(A008835(n+1)!*A348139(n+1))`
-/

namespace A033829.P12159348277112653854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 ((Nat.factorial (A008835 (n + 1)).toNat : ℤ) * A348139 (n + 1)).toNat

end

end A033829.P12159348277112653854

/-! ## A033829.P10955053677287565637

`A051022(lcm(A008835(n+1)², A348139(n+1)))`
-/

namespace A033829.P10955053677287565637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (Int.lcm (A008835 (n + 1) ^ 2) (A348139 (n + 1)))

end

end A033829.P10955053677287565637

/-! ## A033829.P4527865812084070805

`A051022(A008835(n+1)*A348139(n+1)*A008835(n+1))`
-/

namespace A033829.P4527865812084070805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051022 (A008835 (n + 1) * A348139 (n + 1) * A008835 (n + 1)).toNat

end

end A033829.P4527865812084070805

/-!
# A033830: Numbers that can be expressed as the product of three 2-digit numbers.

The programs for A033830, there is no canonical definition to state claims against.
-/

/-! ## A033830.P245815754184365579

`10*A033828(A292125(n+1))`
-/

namespace A033830.P245815754184365579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A033828 (A292125 (n + 1)).toNat

end

end A033830.P245815754184365579

/-! ## A033830.P8947971193719740025

`A008592(A033828(n+1)^A060240(n))`
-/

namespace A033830.P8947971193719740025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (SequenceMachineLib.roundAway ((A033828 (n + 1) : ℚ) ^ (A060240 n : ℤ))).toNat

end

end A033830.P8947971193719740025

/-!
# A033831: Number of numbers d dividing n such that d >= 3 and n/d <= d-2.

The programs for A033831, the canonical program `A033831.P4343580932729545234` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033831 has offset 1).

The definition of A033831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033831.P15360647584912319831

`A056924(n+1)-char[A028387(n)]`
-/

namespace A033831.P15360647584912319831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028387 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A033831.P15360647584912319831

namespace A033831

/-- `A056924(n+1)-char[A028387(n)]` -/
def P15360647584912319831.Spec : Prop :=
  ∀ n, P15360647584912319831.a n = A033831 (n + 1)

end A033831

/-! ## A033831.P3683155606437907288

`A056924(n+1)-A005369(n+1)`
-/

namespace A033831.P3683155606437907288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1) - A005369 (n + 1)

end

end A033831.P3683155606437907288

namespace A033831

/-- `A056924(n+1)-A005369(n+1)` -/
def P3683155606437907288.Spec : Prop :=
  ∀ n, P3683155606437907288.a n = A033831 (n + 1)

end A033831

/-! ## A033831.P17208215039928101438

`A135551(n+1)-A100563(n+1)`
-/

namespace A033831.P17208215039928101438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135551 (n + 1) - A100563 (n + 1)

end

end A033831.P17208215039928101438

namespace A033831

/-- `A135551(n+1)-A100563(n+1)` -/
def P17208215039928101438.Spec : Prop :=
  ∀ n, P17208215039928101438.a n = A033831 (n + 1)

end A033831

/-! ## A033831.P16232422692246939379

`floor((A000005(n+1)-A240025(n+1))/2)`
-/

namespace A033831.P16232422692246939379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (n + 1) - A240025 (n + 1) : ℚ) / 2⌋

end

end A033831.P16232422692246939379

namespace A033831

/-- `floor((A000005(n+1)-A240025(n+1))/2)` -/
def P16232422692246939379.Spec : Prop :=
  ∀ n, P16232422692246939379.a n = A033831 (n + 1)

end A033831

/-! ## A033831.P4343580932729545234

`A004526(A055086(n)-A078152(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A033831

/-- `A004526(A055086(n)-A078152(n+1))` -/
def P4343580932729545234.Spec : Prop :=
  ∀ n, P4343580932729545234.a n = A033831 (n + 1)

theorem P4343580932729545234.correct : P4343580932729545234.Spec := by
  intro n
  simp only [A033831, Nat.add_sub_cancel]

end A033831

/-! ## A033831.P14327177602187142978

`A038548(n+1)+A000267(n)-A000267(n+1)`
-/

namespace A033831.P14327177602187142978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) + (A000267 n - A000267 (n + 1))

end

end A033831.P14327177602187142978

namespace A033831

/-- `A038548(n+1)+A000267(n)-A000267(n+1)` -/
def P14327177602187142978.Spec : Prop :=
  ∀ n, P14327177602187142978.a n = A033831 (n + 1)

end A033831

/-! ## A033831.P14301629773591585799

`A056924(n+1)+1-Δ[A000037(n+1)]`
-/

namespace A033831.P14301629773591585799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1) + (1 - (f1 (n + 1) - f1 n))

end

end A033831.P14301629773591585799

namespace A033831

/-- `A056924(n+1)+1-Δ[A000037(n+1)]` -/
def P14301629773591585799.Spec : Prop :=
  ∀ n, P14301629773591585799.a n = A033831 (n + 1)

end A033831

/-! ## A033831.P13440140046590565833

`A004526(A000005(n+1)-Δ[A055086(n)])`
-/

namespace A033831.P13440140046590565833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A033831.P13440140046590565833

namespace A033831

/-- `A004526(A000005(n+1)-Δ[A055086(n)])` -/
def P13440140046590565833.Spec : Prop :=
  ∀ n, P13440140046590565833.a n = A033831 (n + 1)

theorem P13440140046590565833.correct : P13440140046590565833.Spec := by
  intro n
  simp only [A033831, Nat.add_sub_cancel, A033831.P13440140046590565833.f1, A033831.P13440140046590565833.a, A033831.P4343580932729545234.a, A000005, A000005.P16091521709108585461.a, A004526, A004526.P10084182425416171735.a, A055086, A055086.P18168198331367643999.a, A078152, A078152.P14082949690020267377.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A033831

/-! ## A033831.P6673043295252145730

`A056924(n+1)-A056924(Δ[A000037(n+1)])`
-/

namespace A033831.P6673043295252145730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1) - A056924 (f1 (n + 1) - f1 n).toNat

end

end A033831.P6673043295252145730

namespace A033831

/-- `A056924(n+1)-A056924(Δ[A000037(n+1)])` -/
def P6673043295252145730.Spec : Prop :=
  ∀ n, P6673043295252145730.a n = A033831 (n + 1)

end A033831

/-! ## A033831.P3405522217079944880

`A004526(A000005(n+1)-Δ[A000194(n+1)])`
-/

namespace A033831.P3405522217079944880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000005 (n + 1) - (f1 (n + 1) - f1 n)).toNat

end

end A033831.P3405522217079944880

namespace A033831

/-- `A004526(A000005(n+1)-Δ[A000194(n+1)])` -/
def P3405522217079944880.Spec : Prop :=
  ∀ n, P3405522217079944880.a n = A033831 (n + 1)

end A033831

/-! ## A033831.P16106376791468017946

`A000005(n+1)-A394694(n+2)`
-/

namespace A033831.P16106376791468017946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A394694 (n + 2)

end

end A033831.P16106376791468017946

namespace A033831

/-- `A000005(n+1)-A394694(n+2)` -/
def P16106376791468017946.Spec : Prop :=
  ∀ n, P16106376791468017946.a n = A033831 (n + 1)

end A033831

/-!
# A033832: Sum of odd divisors of n < sqrt(n) = sum of even divisors of n < sqrt(n).

The programs for A033832, there is no canonical definition to state claims against.
-/

/-! ## A033832.P1330598688410307895

`A176869(A322179(n)+A192787(3*n+1))`
-/

namespace A033832.P1330598688410307895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176869 (A322179 n + A192787 (3 * n + 1)).toNat

end

end A033832.P1330598688410307895

/-!
# A033833: Highly factorable numbers: numbers with a record number of proper factorizations.

The programs for A033833, there is no canonical definition to state claims against.
-/

/-! ## A033833.P4118214381589964113

`A330973(A272691(n+1))`
-/

namespace A033833.P4118214381589964113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (A272691 (n + 1)).toNat

end

end A033833.P4118214381589964113

/-! ## A033833.P17891533159757219316

`A330973(record[A050322(n+1)])`
-/

namespace A033833.P17891533159757219316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033833.P17891533159757219316

/-! ## A033833.P6806164023617746914

`A330973(record[A331049(n+1)])`
-/

namespace A033833.P6806164023617746914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033833.P6806164023617746914

/-! ## A033833.P4680618479704821373

`A330973(A033834(n+1)+1)`
-/

namespace A033833.P4680618479704821373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330973 (A033834 (n + 1) + 1).toNat

end

end A033833.P4680618479704821373

/-! ## A033833.P17447269999842998754

`A331188(11*A330685(n+1))`
-/

namespace A033833.P17447269999842998754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (11 * A330685 (n + 1)).toNat

end

end A033833.P17447269999842998754

/-! ## A033833.P16206199033275324808

`A331188(lcm(11, A330685(n+1)))`
-/

namespace A033833.P16206199033275324808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331188 (Int.lcm 11 (A330685 (n + 1)))

end

end A033833.P16206199033275324808

/-!
# A033834: Number of proper factorizations of the numbers with a record number of proper factorizations.

The programs for A033834, there is no canonical definition to state claims against.
-/

/-! ## A033834.P18288754322591078070

`A272691(n+1)-1`
-/

namespace A033834.P18288754322591078070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272691 (n + 1) - 1

end

end A033834.P18288754322591078070

/-! ## A033834.P12990963802598649696

`abs(A272691(n+1)+A134824(n+2))`
-/

namespace A033834.P12990963802598649696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A272691 (n + 1) + A134824 (n + 2)|

end

end A033834.P12990963802598649696

/-! ## A033834.P14597603705912599830

`A323202(2*n+1)+A272691(n+1)`
-/

namespace A033834.P14597603705912599830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323202 (2 * n + 1) + A272691 (n + 1)

end

end A033834.P14597603705912599830

/-! ## A033834.P10505443323838380895

`A321800(A091064(n))+A272691(n+1)`
-/

namespace A033834.P10505443323838380895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A091064 n).toNat + A272691 (n + 1)

end

end A033834.P10505443323838380895

/-! ## A033834.P16388731814346237792

`abs(A272691(n+1)+A209615(A017557(n)))`
-/

namespace A033834.P16388731814346237792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A272691 (n + 1) + A209615 (A017557 n).toNat|

end

end A033834.P16388731814346237792

/-! ## A033834.P10566313439265678476

`A321800(Δ[A312656(n)])+A272691(n+1)`
-/

namespace A033834.P10566313439265678476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312656 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (f1 (n + 1) - f1 n).toNat + A272691 (n + 1)

end

end A033834.P10566313439265678476

/-! ## A033834.P12503713235478343974

`A307445(A000040(n+1))+A272691(n+1)`
-/

namespace A033834.P12503713235478343974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A000040 (n + 1)).toNat + A272691 (n + 1)

end

end A033834.P12503713235478343974

/-! ## A033834.P3129173937460607508

`A325970(A006512(n+1))+A272691(n+1)`
-/

namespace A033834.P3129173937460607508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (A006512 (n + 1)).toNat + A272691 (n + 1)

end

end A033834.P3129173937460607508

/-! ## A033834.P12365143352053666466

`A325970(A014663(n+1))+A272691(n+1)`
-/

namespace A033834.P12365143352053666466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (A014663 (n + 1)).toNat + A272691 (n + 1)

end

end A033834.P12365143352053666466

/-! ## A033834.P4217474752730099252

`A307445(A006530(n+2))+A272691(n+1)`
-/

namespace A033834.P4217474752730099252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A006530 (n + 2)).toNat + A272691 (n + 1)

end

end A033834.P4217474752730099252

/-! ## A033834.P4996875984385070972

`A307445(record[A020639(n+2)])+A272691(n+1)`
-/

namespace A033834.P4996875984385070972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A272691 (n + 1)

end

end A033834.P4996875984385070972

/-! ## A033834.P8475390998731463947

`A278071(A020639(2*(n+1)))+A272691(n+1)`
-/

namespace A033834.P8475390998731463947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278071 (A020639 (2 * (n + 1))).toNat + A272691 (n + 1)

end

end A033834.P8475390998731463947

/-! ## A033834.P8395703640204703799

`record[A050322(n+1)-1]`
-/

namespace A033834.P8395703640204703799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033834.P8395703640204703799

/-! ## A033834.P12641052648085386054

`record[A057428(n+1)+A050322(n+1)]`
-/

namespace A033834.P12641052648085386054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (n + 1) + A050322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033834.P12641052648085386054

/-! ## A033834.P11196073687737614065

`A033999(2*n+1)+record[A050322(n+1)]`
-/

namespace A033834.P11196073687737614065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033834.P11196073687737614065

/-! ## A033834.P16414453802138300809

`record[A118830(2*n+1)+A050322(n+2)]`
-/

namespace A033834.P16414453802138300809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (2 * n + 1) + A050322 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033834.P16414453802138300809

/-! ## A033834.P18210160560652859460

`A118830(A017653(n))+record[A050322(n+1)]`
-/

namespace A033834.P18210160560652859460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118830 (A017653 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033834.P18210160560652859460

/-! ## A033834.P8439083901577930342

`A057428(A311964(n))+record[A050322(n+1)]`
-/

namespace A033834.P8439083901577930342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (A311964 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033834.P8439083901577930342

/-! ## A033834.P12550239112100024232

`A008683(A006512(n+1))+record[A050322(n+1)]`
-/

namespace A033834.P12550239112100024232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006512 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033834.P12550239112100024232

/-! ## A033834.P6683777295922085070

`record[A050322(n+1)]+A008683(A008578(n+2))`
-/

namespace A033834.P6683777295922085070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A008683 (A008578 (n + 2)).toNat

end

end A033834.P6683777295922085070

/-!
# A033837: Smallest number > 1 equal to sum of n-th powers of its base-5 digits, or 0 if no such number exists (written in base 10).

The programs for A033837, there is no canonical definition to state claims against.
-/

/-! ## A033837.P646059583630559093

`A162222(A013642(n+1)*A187595(n+1))`
-/

namespace A033837.P646059583630559093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162222 (A013642 (n + 1) * A187595 (n + 1)).toNat

end

end A033837.P646059583630559093

/-! ## A033837.P8568421186535950112

`A162222(A013642(n+1)^A162226(n+1))`
-/

namespace A033837.P8568421186535950112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162222 (SequenceMachineLib.roundAway ((A013642 (n + 1) : ℚ) ^ (A162226 (n + 1) : ℤ))).toNat

end

end A033837.P8568421186535950112

/-!
# A033838: Smallest number > 1 equal to sum of n-th powers of its base-6 digits, or 0 if no such number exists (written in base 10).

The programs for A033838, there is no canonical definition to state claims against.
-/

/-! ## A033838.P10951578264329441148

`A162225(A238524(n+1)^A135313(n))`
-/

namespace A033838.P10951578264329441148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162225 (SequenceMachineLib.roundAway ((A238524 (n + 1) : ℚ) ^ (A135313 n : ℤ))).toNat

end

end A033838.P10951578264329441148

/-!
# A033842: Triangle of coefficients of certain polynomials (exponents in decreasing order).

The programs for A033842, the canonical program `A033842.P15752124619344922902` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033842 has offset 0).

The definition of A033842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033842.P15752124619344922902

`A049323(A061579(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A033842

/-- `A049323(A061579(n))` -/
def P15752124619344922902.Spec : Prop :=
  ∀ n, P15752124619344922902.a n = A033842 n

theorem P15752124619344922902.correct : P15752124619344922902.Spec := by
  intro n
  simp only [A033842]

end A033842

/-! ## A033842.P6546780410342932351

`A049323(A038722(n+1)-1)`
-/

namespace A033842.P6546780410342932351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049323 (A038722 (n + 1) - 1).toNat

end

end A033842.P6546780410342932351

namespace A033842

/-- `A049323(A038722(n+1)-1)` -/
def P6546780410342932351.Spec : Prop :=
  ∀ n, P6546780410342932351.a n = A033842 n

end A033842

/-! ## A033842.P5090855728586199140

`A049323(A038722(n+2))`
-/

namespace A033842.P5090855728586199140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049323 (A038722 (n + 2)).toNat

end

end A033842.P5090855728586199140

namespace A033842

/-- `A049323(A038722(n+2))` -/
def P5090855728586199140.Spec : Prop :=
  ∀ n, P5090855728586199140.a n = A033842 n

end A033842

/-! ## A033842.P8567284587413978579

`A201685(n+1)/A137948(n)`
-/

namespace A033842.P8567284587413978579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201685 (n + 1) : ℚ) / (A137948 n : ℚ)

end

end A033842.P8567284587413978579

namespace A033842

/-- `A201685(n+1)/A137948(n)` -/
def P8567284587413978579.Spec : Prop :=
  ∀ n, P8567284587413978579.a n = (A033842 n : ℚ)

end A033842

/-! ## A033842.P16968621791534423526

`A066324(n+1)/A288777(n+1)`
-/

namespace A033842.P16968621791534423526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066324 (n + 1) : ℚ) / (A288777 (n + 1) : ℚ)

end

end A033842.P16968621791534423526

namespace A033842

/-- `A066324(n+1)/A288777(n+1)` -/
def P16968621791534423526.Spec : Prop :=
  ∀ n, P16968621791534423526.a n = (A033842 n : ℚ)

end A033842

/-! ## A033842.P18205734367135555200

`A061356(n+2)/A004736(n+1)`
-/

namespace A033842.P18205734367135555200
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061356 (n + 2) : ℚ) / (A004736 (n + 1) : ℚ)

end

end A033842.P18205734367135555200

namespace A033842

/-- `A061356(n+2)/A004736(n+1)` -/
def P18205734367135555200.Spec : Prop :=
  ∀ n, P18205734367135555200.a n = (A033842 n : ℚ)

end A033842

/-! ## A033842.P14286347566542006432

`A061356(n+2)/(A127739(n+1)-n)`
-/

namespace A033842.P14286347566542006432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061356 (n + 2) : ℚ) / (A127739 (n + 1) - (n : ℤ) : ℚ)

end

end A033842.P14286347566542006432

namespace A033842

/-- `A061356(n+2)/(A127739(n+1)-n)` -/
def P14286347566542006432.Spec : Prop :=
  ∀ n, P14286347566542006432.a n = (A033842 n : ℚ)

end A033842

/-! ## A033842.P10210682019212681641

`A206429(n+2)/A063929(n+1)`
-/

namespace A033842.P10210682019212681641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206429 (n + 2) : ℚ) / (A063929 (n + 1) : ℚ)

end

end A033842.P10210682019212681641

namespace A033842

/-- `A206429(n+2)/A063929(n+1)` -/
def P10210682019212681641.Spec : Prop :=
  ∀ n, P10210682019212681641.a n = (A033842 n : ℚ)

end A033842

/-! ## A033842.P1489309556323051169

`A061356(n+2)/A000005(A130321(n))`
-/

namespace A033842.P1489309556323051169
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061356 (n + 2) : ℚ) / (A000005 (A130321 n).toNat : ℚ)

end

end A033842.P1489309556323051169

namespace A033842

/-- `A061356(n+2)/A000005(A130321(n))` -/
def P1489309556323051169.Spec : Prop :=
  ∀ n, P1489309556323051169.a n = (A033842 n : ℚ)

end A033842

/-! ## A033842.P11440453577907172477

`A061356(n+2)/A000005(A140303(n))`
-/

namespace A033842.P11440453577907172477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061356 (n + 2) : ℚ) / (A000005 (A140303 n).toNat : ℚ)

end

end A033842.P11440453577907172477

namespace A033842

/-- `A061356(n+2)/A000005(A140303(n))` -/
def P11440453577907172477.Spec : Prop :=
  ∀ n, P11440453577907172477.a n = (A033842 n : ℚ)

end A033842

/-!
# A033843: Number of twin primes < 2^n.

The programs for A033843, there is no canonical definition to state claims against.
-/

/-! ## A033843.P7361950273130394765

`A071538(∑[2^n])`
-/

namespace A033843.P7361950273130394765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A033843.P7361950273130394765

/-! ## A033843.P13726907647329026678

`A082462(A007053(n+1))`
-/

namespace A033843.P13726907647329026678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082462 (A007053 (n + 1)).toNat

end

end A033843.P13726907647329026678

/-! ## A033843.P1931037575034038314

`record[A071538(A331595(n+1))]`
-/

namespace A033843.P1931037575034038314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A331595 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033843.P1931037575034038314

/-! ## A033843.P17726061283337556268

`A071538(A131572(2*n+2))+A000007(n+1)`
-/

namespace A033843.P17726061283337556268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A131572 (2 * n + 2)).toNat + A000007 (n + 1)

end

end A033843.P17726061283337556268

/-! ## A033843.P18149837718834517764

`A071538(A131572(2*(n+1)))+A007814(2*n+1)`
-/

namespace A033843.P18149837718834517764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A131572 (2 * (n + 1))).toNat + A007814 (2 * n + 1)

end

end A033843.P18149837718834517764

/-!
# A033844: a(n) = prime(2^n).

The programs for A033844, there is no canonical definition to state claims against.
-/

/-! ## A033844.P8334773526896502162

`A018249(n)+1`
-/

namespace A033844.P8334773526896502162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018249 n + 1

end

end A033844.P8334773526896502162

/-! ## A033844.P10845611982581917295

`A051440(n)-1`
-/

namespace A033844.P10845611982581917295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051440 n - 1

end

end A033844.P10845611982581917295

/-! ## A033844.P5785760970167865133

`A051439(n)-A074325(n)`
-/

namespace A033844.P5785760970167865133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051439 n - A074325 n

end

end A033844.P5785760970167865133

/-! ## A033844.P4037167708818248243

`record[2/A000005(n+1)*A353397(n+1)]`
-/

namespace A033844.P4037167708818248243
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A000005 (n + 1) : ℚ) * (A353397 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033844.P4037167708818248243

/-! ## A033844.P4525242567379203698

`A073799(A028310(n))+A063524(n)`
-/

namespace A033844.P4525242567379203698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073799 (A028310 n).toNat + A063524 n

end

end A033844.P4525242567379203698

/-! ## A033844.P4888819399599054645

`or(A000035(n), A073799(A028310(n)))`
-/

namespace A033844.P4888819399599054645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A073799 (A028310 n).toNat)

end

end A033844.P4888819399599054645

/-! ## A033844.P5304005891437478172

`or(A023532(n), A073799(A028310(n)))`
-/

namespace A033844.P5304005891437478172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023532 n) (A073799 (A028310 n).toNat)

end

end A033844.P5304005891437478172

/-! ## A033844.P2646924030481104612

`or(A073424(n), A073799(A028310(n)))`
-/

namespace A033844.P2646924030481104612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073424 n) (A073799 (A028310 n).toNat)

end

end A033844.P2646924030481104612

/-! ## A033844.P10547605742868630226

`or(A073799(A028310(n)), A101264(n))`
-/

namespace A033844.P10547605742868630226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A073799 (A028310 n).toNat) (A101264 n)

end

end A033844.P10547605742868630226

/-! ## A033844.P1517601139783494744

`A073799(A065033(2*n))+A063524(n)`
-/

namespace A033844.P1517601139783494744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073799 (A065033 (2 * n)).toNat + A063524 n

end

end A033844.P1517601139783494744

/-!
# A033845: Numbers k of the form 2^i*3^j, where i and j >= 1.

The programs for A033845, there is no canonical definition to state claims against.
-/

/-! ## A033845.P2028813536132701555

`∑[6*A061987(n)]`
-/

namespace A033845.P2028813536132701555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A061987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033845.P2028813536132701555

/-! ## A033845.P14594418345808381368

`2*A065119(n+1)`
-/

namespace A033845.P14594418345808381368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A065119 (n + 1)

end

end A033845.P14594418345808381368

/-! ## A033845.P568861982526116116

`6*A003586(n+1)`
-/

namespace A033845.P568861982526116116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A003586 (n + 1)

end

end A033845.P568861982526116116

/-! ## A033845.P8693298988682729371

`3*(A190812(n+1)+1)`
-/

namespace A033845.P8693298988682729371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A190812 (n + 1) + 1)

end

end A033845.P8693298988682729371

/-! ## A033845.P6957015040246315767

`6*(A259823(n+1)-A259823(n))`
-/

namespace A033845.P6957015040246315767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A259823 (n + 1) - A259823 n)

end

end A033845.P6957015040246315767

/-! ## A033845.P2042793600292467375

`A187778(n+2)`
-/

namespace A033845.P2042793600292467375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187778 (n + 2)

end

end A033845.P2042793600292467375

/-! ## A033845.P12201608292602439834

`3*A007694(n+2)`
-/

namespace A033845.P12201608292602439834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007694 (n + 2)

end

end A033845.P12201608292602439834

/-! ## A033845.P4454903251478674626

`lcm(A007694(n+2), A065119(n+1))`
-/

namespace A033845.P4454903251478674626
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007694 (n + 2)) (A065119 (n + 1))

end

end A033845.P4454903251478674626

/-! ## A033845.P1220010292049538916

`∩[A007694(n+1), A065119(n+1)]`
-/

namespace A033845.P1220010292049538916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065119 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033845.P1220010292049538916

/-! ## A033845.P7079903087582059511

`A003586(eq[2, A086412(n+1)]+1)`
-/

namespace A033845.P7079903087582059511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A033845.P7079903087582059511

/-! ## A033845.P14216975960807345821

`3*sqrt(A063755(n+2))`
-/

namespace A033845.P14216975960807345821
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * Real.sqrt (A063755 (n + 2) : ℝ)

end

end A033845.P14216975960807345821

/-! ## A033845.P4138019622125323762

`A065119(n+1)²/A003586(n+1)-A065119(n+1)`
-/

namespace A033845.P4138019622125323762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065119 (n + 1) ^ 2 : ℚ) / (A003586 (n + 1) : ℚ) - (A065119 (n + 1) : ℚ)

end

end A033845.P4138019622125323762

/-! ## A033845.P2485760077470231333

`A095678(3*n+1)`
-/

namespace A033845.P2485760077470231333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095678 (3 * n + 1)

end

end A033845.P2485760077470231333

/-! ## A033845.P12659827134444382013

`A000423(n+3)`
-/

namespace A033845.P12659827134444382013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000423 (n + 3)

end

end A033845.P12659827134444382013

/-! ## A033845.P12036831048155249257

`Δ[3*A174030(n+1)]`
-/

namespace A033845.P12036831048155249257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A174030 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033845.P12036831048155249257

/-! ## A033845.P10172712364267684708

`∩[A065119(n+1), A333978(n+1)]`
-/

namespace A033845.P10172712364267684708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033845.P10172712364267684708

/-! ## A033845.P8577924077513222025

`∩[A003586(n+1), A085129(n+1)]`
-/

namespace A033845.P8577924077513222025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033845.P8577924077513222025

/-! ## A033845.P665378881509269862

`∩[A007694(n+1), A085129(n+1)]`
-/

namespace A033845.P665378881509269862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033845.P665378881509269862

/-! ## A033845.P5341071983497153295

`∩[A065119(n+1), A085129(n+1)]`
-/

namespace A033845.P5341071983497153295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033845.P5341071983497153295

/-! ## A033845.P5722475078624178573

`∩[A085129(n+1), A257997(n+1)]`
-/

namespace A033845.P5722475078624178573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033845.P5722475078624178573

/-!
# A033846: Numbers whose prime factors are 2 and 5.

The programs for A033846, there is no canonical definition to state claims against.
-/

/-! ## A033846.P5251843671275668227

`10*A003592(n+1)`
-/

namespace A033846.P5251843671275668227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A003592 (n + 1)

end

end A033846.P5251843671275668227

/-! ## A033846.P11114987677488464528

`2*A086761(n+1)`
-/

namespace A033846.P11114987677488464528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A086761 (n + 1)

end

end A033846.P11114987677488464528

/-! ## A033846.P10855978008649715081

`10*(A158911(n+1)+1)`
-/

namespace A033846.P10855978008649715081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A158911 (n + 1) + 1)

end

end A033846.P10855978008649715081

/-! ## A033846.P16030782633342563143

`2*record[5*A003592(A328397(n))]`
-/

namespace A033846.P16030782633342563143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A003592 (A328397 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033846.P16030782633342563143

/-! ## A033846.P1390363337673301935

`10*(∑[A164768(n+1)]+1-A164768(n+1))`
-/

namespace A033846.P1390363337673301935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164768 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (∑ j ∈ Finset.range (n + 1), f1 j + (1 - A164768 (n + 1)))

end

end A033846.P1390363337673301935

/-! ## A033846.P11035805120546348031

`∩[A086761(n+1), A363292(n+1)]`
-/

namespace A033846.P11035805120546348031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033846.P11035805120546348031

/-! ## A033846.P456124298938790034

`∩[A036311(n+1), A363292(n+1)]`
-/

namespace A033846.P456124298938790034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033846.P456124298938790034

/-! ## A033846.P11324828653766560510

`∩[A003592(n+1), A363292(n+1)]`
-/

namespace A033846.P11324828653766560510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003592 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033846.P11324828653766560510

/-! ## A033846.P12335879676704229293

`∩[A337801(n+1), A363292(n+1)]`
-/

namespace A033846.P12335879676704229293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033846.P12335879676704229293

/-! ## A033846.P6460358673223820626

`∩[A337800(n+1), A363292(n+1)]`
-/

namespace A033846.P6460358673223820626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033846.P6460358673223820626

/-! ## A033846.P15263322975713452045

`A095678(3*n+2)`
-/

namespace A033846.P15263322975713452045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095678 (3 * n + 2)

end

end A033846.P15263322975713452045

/-! ## A033846.P4036086632735898600

`∩[A070023(n+1), A363292(n+1)]`
-/

namespace A033846.P4036086632735898600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033846.P4036086632735898600

/-! ## A033846.P5219343712738281512

`∩[A257997(n+1), A363292(n+1)]`
-/

namespace A033846.P5219343712738281512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033846.P5219343712738281512

/-! ## A033846.P7868855427106089644

`10*record[lcm(3, A051037(n+1))/3]`
-/

namespace A033846.P7868855427106089644
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (A051037 (n + 1)) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  10 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033846.P7868855427106089644

/-! ## A033846.P620452680805373309

`2*∩[A080193(n+1), A108513(n+1)]`
-/

namespace A033846.P620452680805373309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033846.P620452680805373309

/-! ## A033846.P2462537903502020692

`2*∩[A080193(n+1), A337800(n+1)]`
-/

namespace A033846.P2462537903502020692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033846.P2462537903502020692

/-! ## A033846.P14144725781276948184

`∩[A080193(n+1), A363292(n+1)]`
-/

namespace A033846.P14144725781276948184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033846.P14144725781276948184

/-! ## A033846.P8255663558101521698

`∩[2*A051037(n+1), A363292(n+1)]`
-/

namespace A033846.P8255663558101521698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033846.P8255663558101521698

/-! ## A033846.P15433600324274355906

`∩[A051037(n+1), A363292(n+1)]`
-/

namespace A033846.P15433600324274355906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363292 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033846.P15433600324274355906

/-! ## A033846.P6687444732766258363

`2*∩[A085128(n+1), A337800(n+1)]`
-/

namespace A033846.P6687444732766258363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337800 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033846.P6687444732766258363

/-!
# A033847: Numbers whose prime factors are 2 and 7.

The programs for A033847, there is no canonical definition to state claims against.
-/

/-! ## A033847.P15790744353604860585

`14*A003591(n+1)`
-/

namespace A033847.P15790744353604860585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A003591 (n + 1)

end

end A033847.P15790744353604860585

/-! ## A033847.P16541184150433177021

`∑[14*A165742(A028310(n))]`
-/

namespace A033847.P16541184150433177021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A165742 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033847.P16541184150433177021

/-! ## A033847.P11187296183723342491

`record[14*A003591(A133310(n))]`
-/

namespace A033847.P11187296183723342491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A003591 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033847.P11187296183723342491

/-! ## A033847.P4871781946448140503

`record[14*A003591(A106466(n))]`
-/

namespace A033847.P4871781946448140503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A003591 (A106466 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033847.P4871781946448140503

/-! ## A033847.P13016434621807945898

`14*record[A003591(A126759(n))]`
-/

namespace A033847.P13016434621807945898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (A126759 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033847.P13016434621807945898

/-! ## A033847.P10091852378900792070

`∩[A003591(n+1), A143204(n+1)]`
-/

namespace A033847.P10091852378900792070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033847.P10091852378900792070

/-! ## A033847.P4662473372117398078

`∩[A108319(n+1), A143204(n+1)]`
-/

namespace A033847.P4662473372117398078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033847.P4662473372117398078

/-! ## A033847.P10112486239518269853

`∩[A108513(n+1), A143204(n+1)]`
-/

namespace A033847.P10112486239518269853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033847.P10112486239518269853

/-! ## A033847.P1196582537328605985

`∩[A143204(n+1), A342950(n+1)]`
-/

namespace A033847.P1196582537328605985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033847.P1196582537328605985

/-! ## A033847.P3332619967006489832

`record[14*A003591(A134478(n))]`
-/

namespace A033847.P3332619967006489832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A003591 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033847.P3332619967006489832

/-! ## A033847.P4545791202232691483

`∩[2*A080194(n+1), A143204(n+1)]`
-/

namespace A033847.P4545791202232691483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033847.P4545791202232691483

/-! ## A033847.P8255730911389741457

`∩[A080194(n+1), A143204(n+1)]`
-/

namespace A033847.P8255730911389741457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033847.P8255730911389741457

/-! ## A033847.P16011194308819520137

`∩[A036312(n+1), A143204(n+1)]`
-/

namespace A033847.P16011194308819520137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033847.P16011194308819520137

/-! ## A033847.P1503103921909669406

`∩[2*A219174(n+1), A143204(n+1)]`
-/

namespace A033847.P1503103921909669406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A219174 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033847.P1503103921909669406

/-! ## A033847.P13373268285622996350

`∩[A143204(n+1), A219174(n+1)]`
-/

namespace A033847.P13373268285622996350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219174 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033847.P13373268285622996350

/-! ## A033847.P13635296798011309726

`14*record[A003591(A028920(n))]`
-/

namespace A033847.P13635296798011309726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003591 (A028920 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033847.P13635296798011309726

/-! ## A033847.P10662013585733756901

`∩[2*A177805(n+1), A143204(n+1)]`
-/

namespace A033847.P10662013585733756901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A177805 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033847.P10662013585733756901

/-! ## A033847.P18157654347407932818

`∩[A057844(n+1), A080194(n+1)]`
-/

namespace A033847.P18157654347407932818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033847.P18157654347407932818

/-! ## A033847.P13787468218490650774

`∩[A057844(n+1), A143204(n+1)]`
-/

namespace A033847.P13787468218490650774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057844 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033847.P13787468218490650774

/-! ## A033847.P13736998599834067595

`∩[A143204(n+1), A177805(n+1)]`
-/

namespace A033847.P13736998599834067595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177805 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033847.P13736998599834067595

/-!
# A033848: Numbers whose prime factors are 2 and 11.

The programs for A033848, there is no canonical definition to state claims against.
-/

/-! ## A033848.P16553032683447357823

`22*A003596(n+1)`
-/

namespace A033848.P16553032683447357823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  22 * A003596 (n + 1)

end

end A033848.P16553032683447357823

/-! ## A033848.P1143908907278194619

`22*∪[2*A107988(n+1), A107988(n+1)]`
-/

namespace A033848.P1143908907278194619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107988 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A033848.P1143908907278194619

/-! ## A033848.P3236908169150525849

`∩[A036302(n+1), A066887(n+1)]`
-/

namespace A033848.P3236908169150525849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033848.P3236908169150525849

/-! ## A033848.P7346372593733906479

`∩[A080195(n+1), A371288(n+1)]`
-/

namespace A033848.P7346372593733906479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033848.P7346372593733906479

/-! ## A033848.P14729743394404777338

`A008604(A003596(n+1))`
-/

namespace A033848.P14729743394404777338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008604 (A003596 (n + 1)).toNat

end

end A033848.P14729743394404777338

/-!
# A033849: Numbers whose prime factors are 3 and 5.

The programs for A033849, there is no canonical definition to state claims against.
-/

/-! ## A033849.P18289000902433211248

`15*A003593(n+1)`
-/

namespace A033849.P18289000902433211248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A003593 (n + 1)

end

end A033849.P18289000902433211248

/-! ## A033849.P11800124657463237785

`A095678(3*(n+1))`
-/

namespace A033849.P11800124657463237785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095678 (3 * (n + 1))

end

end A033849.P11800124657463237785

/-! ## A033849.P6099223829869848068

`15*record[lcm(2, A051037(n+1))/2]`
-/

namespace A033849.P6099223829869848068
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A051037 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  15 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033849.P6099223829869848068

/-! ## A033849.P7051690380849435525

`15*A051037(eq[1, A051037(n+1)%2]+1)`
-/

namespace A033849.P7051690380849435525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051037 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A051037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A033849.P7051690380849435525

/-! ## A033849.P1433765562760398107

`15*A051037(eq[1, and(1, A051037(n+1))]+1)`
-/

namespace A033849.P1433765562760398107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A051037 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A051037 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A033849.P1433765562760398107

/-! ## A033849.P15806082957212887173

`15*A051037(eq[1, gcd(8, A051037(n+1))]+1)`
-/

namespace A033849.P15806082957212887173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A051037 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A051037 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A033849.P15806082957212887173

/-! ## A033849.P11546247294311591696

`record[(A143207(n+1)/2)²%A143207(n+1)]`
-/

namespace A033849.P11546247294311591696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (((A143207 (n + 1) : ℚ) / 2) ^ 2)) (A143207 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033849.P11546247294311591696

/-! ## A033849.P6751477249744224957

`15*A051037(record[n*and(1, A051037(n+1))]+1)`
-/

namespace A033849.P6751477249744224957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A051037 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A051037 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A033849.P6751477249744224957

/-! ## A033849.P2894052681029594964

`∩[A003593(n+1), A256617(n+1)]`
-/

namespace A033849.P2894052681029594964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033849.P2894052681029594964

/-! ## A033849.P1167962557280621848

`∩[A036315(n+1), A256617(n+1)]`
-/

namespace A033849.P1167962557280621848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033849.P1167962557280621848

/-! ## A033849.P16852084162422585599

`∩[A056741(n+1), A256617(n+1)]`
-/

namespace A033849.P16852084162422585599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033849.P16852084162422585599

/-! ## A033849.P2035937195736386959

`∩[A080193(n+1), A256617(n+1)]`
-/

namespace A033849.P2035937195736386959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080193 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033849.P2035937195736386959

/-! ## A033849.P12053709954991229441

`∩[A143512(n+1), A256617(n+1)]`
-/

namespace A033849.P12053709954991229441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033849.P12053709954991229441

/-! ## A033849.P3535593957673649310

`∩[A256617(n+1), A337801(n+1)]`
-/

namespace A033849.P3535593957673649310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337801 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033849.P3535593957673649310

/-! ## A033849.P15714129563106929581

`∩[A015965(n+1), A256617(n+1)]`
-/

namespace A033849.P15714129563106929581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015965 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033849.P15714129563106929581

/-! ## A033849.P18390118194444216364

`∩[A256617(n+1), A261141(n+1)]`
-/

namespace A033849.P18390118194444216364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033849.P18390118194444216364

/-!
# A033850: Numbers whose prime factors are 3 and 7.

The programs for A033850, there is no canonical definition to state claims against.
-/

/-! ## A033850.P4056789876435892699

`21*A003594(n+1)`
-/

namespace A033850.P4056789876435892699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A003594 (n + 1)

end

end A033850.P4056789876435892699

/-! ## A033850.P10815598326850357663

`21*record[A108347(n+1)/gcd(5, A108347(n+1))]`
-/

namespace A033850.P10815598326850357663
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108347 (n + 1) : ℚ) / (Int.gcd 5 (A108347 (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  21 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033850.P10815598326850357663

/-! ## A033850.P9586164083322468120

`21*A108319(record[(n+1)*A108319(n+1)%2])`
-/

namespace A033850.P9586164083322468120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A108319 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  21 * A108319 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033850.P9586164083322468120

/-! ## A033850.P9718743953564665676

`21*record[lcm(10, A002473(n+1))/10]`
-/

namespace A033850.P9718743953564665676
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 10 (A002473 (n + 1)) : ℚ) / 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  21 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033850.P9718743953564665676

/-! ## A033850.P2343230369449736990

`∩[A014945(n+1), A080194(n+1)]`
-/

namespace A033850.P2343230369449736990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033850.P2343230369449736990

/-! ## A033850.P1231965058839580445

`∩[A015951(n+1), A080194(n+1)]`
-/

namespace A033850.P1231965058839580445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033850.P1231965058839580445

/-! ## A033850.P11581832876473922673

`∩[A045588(n+1), A080194(n+1)]`
-/

namespace A033850.P11581832876473922673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033850.P11581832876473922673

/-! ## A033850.P17640444094794899910

`∩[A003594(n+1), A325198(n+1)]`
-/

namespace A033850.P17640444094794899910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033850.P17640444094794899910

/-! ## A033850.P6764706553646140100

`∩[A014945(n+1), A325198(n+1)]`
-/

namespace A033850.P6764706553646140100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014945 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033850.P6764706553646140100

/-! ## A033850.P4618289090088718871

`∩[A014959(n+1), A325198(n+1)]`
-/

namespace A033850.P4618289090088718871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033850.P4618289090088718871

/-!
# A033851: Numbers whose prime factors are 5 and 7.

The programs for A033851, there is no canonical definition to state claims against.
-/

/-! ## A033851.P10541442340480020190

`35*A003595(n+1)`
-/

namespace A033851.P10541442340480020190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  35 * A003595 (n + 1)

end

end A033851.P10541442340480020190

/-! ## A033851.P3365222737017984845

`record[35*A003595(A133310(n))]`
-/

namespace A033851.P3365222737017984845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  35 * A003595 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033851.P3365222737017984845

/-! ## A033851.P16028488444423211449

`record[35*A003595(A246694(n))]`
-/

namespace A033851.P16028488444423211449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  35 * A003595 (A246694 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033851.P16028488444423211449

/-! ## A033851.P12805909166380791228

`record[35*A003595(A106466(n))]`
-/

namespace A033851.P12805909166380791228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  35 * A003595 (A106466 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033851.P12805909166380791228

/-! ## A033851.P5751318882719676937

`record[35*A003595(A203814(n))]`
-/

namespace A033851.P5751318882719676937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  35 * A003595 (A203814 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033851.P5751318882719676937

/-! ## A033851.P12882204729652751202

`record[35*A003595(A134478(n))]`
-/

namespace A033851.P12882204729652751202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  35 * A003595 (A134478 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033851.P12882204729652751202

/-! ## A033851.P10223823611428917609

`∩[A003595(n+1), A256617(n+1)]`
-/

namespace A033851.P10223823611428917609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033851.P10223823611428917609

/-! ## A033851.P3355523484754024632

`∩[A036320(n+1), A256617(n+1)]`
-/

namespace A033851.P3355523484754024632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033851.P3355523484754024632

/-! ## A033851.P10681549870872137957

`∩[A080194(n+1), A256617(n+1)]`
-/

namespace A033851.P10681549870872137957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080194 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033851.P10681549870872137957

/-! ## A033851.P2991184106236361083

`∩[A108513(n+1), A256617(n+1)]`
-/

namespace A033851.P2991184106236361083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256617 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033851.P2991184106236361083

/-!
# A033853: Integers k such that j(k)*d(k)=phi(k), where j = A033831.

The programs for A033853, there is no canonical definition to state claims against.
-/

/-! ## A033853.P17860426812710000279

`A062804(A319686(2*n+1)+A270831(n+1))`
-/

namespace A033853.P17860426812710000279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062804 (A319686 (2 * n + 1) + A270831 (n + 1)).toNat

end

end A033853.P17860426812710000279

/-!
# A033855: Numbers k such that j(k)*phi(k) = s(phi(k)), where j(k) = A033831(k), s(k) = sigma(k) - k.

The programs for A033855, there is no canonical definition to state claims against.
-/

/-! ## A033855.P11298096754635268027

`A006087(A001168(n+1))`
-/

namespace A033855.P11298096754635268027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006087 (A001168 (n + 1)).toNat

end

end A033855.P11298096754635268027

/-! ## A033855.P7980461286483884911

`A054424(A088218(n)+n)`
-/

namespace A033855.P7980461286483884911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054424 (A088218 n + (n : ℤ)).toNat

end

end A033855.P7980461286483884911

/-!
# A033859: Numbers k such that A033831(k) = A034444(k) where A034444(k) = number of unitary divisors of k.

The programs for A033859, the canonical program `A033859.P9143334773756198897` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033859 has offset 1).

The definition of A033859 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 770 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033859.P15263966983034433468

`eq[A033831(n+1), A034444(n+1)]+1`
-/

namespace A033859.P15263966983034433468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A033859.P15263966983034433468

namespace A033859

/-- `eq[A033831(n+1), A034444(n+1)]+1` -/
def P15263966983034433468.Spec : Prop :=
  ∀ n, (P15263966983034433468.a n : ℤ) = A033859 (n + 1)

end A033859

/-! ## A033859.P9143334773756198897

`eq[2^A001221(n+1), A033831(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A033859

/-- `eq[2^A001221(n+1), A033831(n+1)]+1` -/
def P9143334773756198897.Spec : Prop :=
  ∀ n, (P9143334773756198897.a n : ℤ) = A033859 (n + 1)

theorem P9143334773756198897.correct : P9143334773756198897.Spec := by
  intro n
  simp only [A033859, Nat.add_sub_cancel]

end A033859

/-! ## A033859.P8983834665584915073

`A020725(eq[A033831(n+1), A034444(n+1)])`
-/

namespace A033859.P8983834665584915073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A033859.P8983834665584915073

namespace A033859

/-- `A020725(eq[A033831(n+1), A034444(n+1)])` -/
def P8983834665584915073.Spec : Prop :=
  ∀ n, P8983834665584915073.a n = A033859 (n + 1)

end A033859

/-! ## A033859.P14921183580717807352

`A020725(eq[2^A001221(n+1), A033831(n+1)])`
-/

namespace A033859.P14921183580717807352
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033831 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n)

end

end A033859.P14921183580717807352

namespace A033859

/-- `A020725(eq[2^A001221(n+1), A033831(n+1)])` -/
def P14921183580717807352.Spec : Prop :=
  ∀ n, P14921183580717807352.a n = A033859 (n + 1)

end A033859

/-! ## A033859.P14758115484093675984

`eq[A056924(n+1)-A005369(n+1), A034444(n+1)]+1`
-/

namespace A033859.P14758115484093675984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1) - A005369 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A033859.P14758115484093675984

namespace A033859

/-- `eq[A056924(n+1)-A005369(n+1), A034444(n+1)]+1` -/
def P14758115484093675984.Spec : Prop :=
  ∀ n, (P14758115484093675984.a n : ℤ) = A033859 (n + 1)

end A033859

/-! ## A033859.P10911872519433868322

`eq[A056924(n+1)-A005369(n+1), 2^A001221(n+1)]+1`
-/

namespace A033859.P10911872519433868322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1) - A005369 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001221 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A033859.P10911872519433868322

namespace A033859

/-- `eq[A056924(n+1)-A005369(n+1), 2^A001221(n+1)]+1` -/
def P10911872519433868322.Spec : Prop :=
  ∀ n, (P10911872519433868322.a n : ℤ) = A033859 (n + 1)

end A033859

/-!
# A033860: Sort-then-add sequence: a(n+1) = a(n) + sort(a(n)).

The programs for A033860, there is no canonical definition to state claims against.
-/

/-! ## A033860.P11006791565612946274

`A070196(a(n-1))` with `a(0)=1`
-/

namespace A033860.P11006791565612946274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A070196 (a (n - 1)).toNat

end

end A033860.P11006791565612946274

/-! ## A033860.P17041685579317311644

`A004185(a(n-1))+a(n-1)` with `a(0)=1`
-/

namespace A033860.P17041685579317311644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004185 (a (n - 1)).toNat + a (n - 1)

end

end A033860.P17041685579317311644

/-! ## A033860.P14761161081557187144

`a(n-1)+a(n-1)-A193581(a(n-1))` with `a(0)=1`
-/

namespace A033860.P14761161081557187144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) - A193581 (a (n - 1)).toNat)

end

end A033860.P14761161081557187144

/-! ## A033860.P7084830612794666221

`A374731(A032555(n+1))`
-/

namespace A033860.P7084830612794666221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374731 (A032555 (n + 1)).toNat

end

end A033860.P7084830612794666221

/-! ## A033860.P13859955537846319533

`A374731(A032557(n+1))`
-/

namespace A033860.P13859955537846319533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374731 (A032557 (n + 1)).toNat

end

end A033860.P13859955537846319533

/-!
# A033862: Sorted number reached from starter n in Sort-then-add sequence, or -1 if never reaches sorted number.

The programs for A033862, there is no canonical definition to state claims against.
-/

/-! ## A033862.P7325741307597641647

`A001222(A000079(A004185(n+1)%(n+1)))+n+1`
-/

namespace A033862.P7325741307597641647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000079 (Int.tmod (A004185 (n + 1)) (n + 1 : ℤ)).toNat).toNat + (n + 1 : ℤ)

end

end A033862.P7325741307597641647

/-!
# A033863: Least number of Sort-then-add persistence n.

The programs for A033863, there is no canonical definition to state claims against.
-/

/-! ## A033863.P14841603503892583569

`floor(A033908(n)+acot(n))`
-/

namespace A033863.P14841603503892583569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033908 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A033863.P14841603503892583569

/-! ## A033863.P14106580342657776542

`A033908(n)+A000007(n)`
-/

namespace A033863.P14106580342657776542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033908 n + A000007 n

end

end A033863.P14106580342657776542

/-! ## A033863.P13853353992487375330

`A088157(n)+A033908(n)`
-/

namespace A033863.P13853353992487375330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088157 n + A033908 n

end

end A033863.P13853353992487375330

/-! ## A033863.P1511572650316842855

`A112316(n)+A033908(n)`
-/

namespace A033863.P1511572650316842855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 n + A033908 n

end

end A033863.P1511572650316842855

/-! ## A033863.P955568924975173691

`A151810(n)+A033908(n)`
-/

namespace A033863.P955568924975173691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151810 n + A033908 n

end

end A033863.P955568924975173691

/-!
# A033864: Sorted number reached from A033863(n) by Sort-then-add.

The programs for A033864, there is no canonical definition to state claims against.
-/

/-! ## A033864.P8061887774553702750

`A033862(A033863(A033909(n+3)+n))`
-/

namespace A033864.P8061887774553702750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A033863 (A033909 (n + 3) + (n : ℤ)).toNat).toNat

end

end A033864.P8061887774553702750

/-! ## A033864.P3315750709696079421

`A033862(A033863(n))`
-/

namespace A033864.P3315750709696079421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (A033863 n).toNat

end

end A033864.P3315750709696079421

/-! ## A033864.P11824819445860783912

`A033862(∏{e}[2^n, A033908(#)])`
-/

namespace A033864.P11824819445860783912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033862 (∏ p ∈ Nat.primeFactors (f1 n), A033908 (Nat.factorization (f1 n) p)).toNat

end

end A033864.P11824819445860783912

/-!
# A033865: Start with n; if palindrome, stop; otherwise add to itself with digits reversed; a(n) gives palindrome at which it stops, or -1 if no palindrome is ever reached.

The programs for A033865, there is no canonical definition to state claims against.
-/

/-! ## A033865.P13681284582556616235

`A118759((n-9*floor((n-1)/9))*(10^floor((n+8)/9)-1)/9-A321797(n))`
-/

namespace A033865.P13681284582556616235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (SequenceMachineLib.roundAway (((n : ℤ) - 9 * ⌊((n : ℤ) - 1 : ℚ) / 9⌋ : ℚ) * (((10 : ℚ) ^ (⌊(n + 8 : ℚ) / 9⌋ : ℤ) - 1) / 9) - (A321797 n : ℚ))).toNat

end

end A033865.P13681284582556616235

/-! ## A033865.P6853932026080833354

`A118759(A010785(n)-A321538(n))`
-/

namespace A033865.P6853932026080833354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A010785 n - A321538 n).toNat

end

end A033865.P6853932026080833354

/-! ## A033865.P15688636332227319260

`A118759(A010785(n))-A321797(n)`
-/

namespace A033865.P15688636332227319260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A010785 n).toNat - A321797 n

end

end A033865.P15688636332227319260

/-! ## A033865.P16288615240766108820

`A002113(n+1)/A072411(A007040(n+1)+1)`
-/

namespace A033865.P16288615240766108820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002113 (n + 1) : ℚ) / (A072411 (A007040 (n + 1) + 1).toNat : ℚ)

end

end A033865.P16288615240766108820

/-!
# A033866: Least number of Reverse-then-add persistence n.

The programs for A033866, there is no canonical definition to state claims against.
-/

/-! ## A033866.P15574609228564507028

`or(C(2, n), A023109(n))`
-/

namespace A033866.P15574609228564507028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 n : ℤ) (A023109 n)

end

end A033866.P15574609228564507028

/-! ## A033866.P1400009862372804972

`A023109(floor((n+1)/(11*a(n-1)))+n)` with `a(0)=1`
-/

namespace A033866.P1400009862372804972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A023109 (⌊(n + 1 : ℚ) / (11 * a (n - 1) : ℚ)⌋ + (n : ℤ)).toNat

end

end A033866.P1400009862372804972

/-! ## A033866.P4834802792081779646

`A023109(n)+A000007(n)`
-/

namespace A033866.P4834802792081779646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023109 n + A000007 n

end

end A033866.P4834802792081779646

/-! ## A033866.P3370528051178005291

`A088157(n)+A023109(n)`
-/

namespace A033866.P3370528051178005291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088157 n + A023109 n

end

end A033866.P3370528051178005291

/-! ## A033866.P10393705972438330386

`A112316(n)+A023109(n)`
-/

namespace A033866.P10393705972438330386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 n + A023109 n

end

end A033866.P10393705972438330386

/-!
# A033867: Palindrome reached from A033866(n) by Reverse-then-add.

The programs for A033867, there is no canonical definition to state claims against.
-/

/-! ## A033867.P1840558564127684390

`A033865(A033866(n))`
-/

namespace A033867.P1840558564127684390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (A033866 n).toNat

end

end A033867.P1840558564127684390

/-! ## A033867.P897536830497457986

`A033865(or(C(2, n), A023109(n)))`
-/

namespace A033867.P897536830497457986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (Int.lor (Nat.choose 2 n : ℤ) (A023109 n)).toNat

end

end A033867.P897536830497457986

/-! ## A033867.P517058569751002766

`A033865(or(char[n²], A023109(n)))`
-/

namespace A033867.P517058569751002766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A023109 n)).toNat

end

end A033867.P517058569751002766

/-! ## A033867.P11991213583426266004

`A033865(floor(A023109(n)+acot(n)))`
-/

namespace A033867.P11991213583426266004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 ⌊(A023109 n : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A033867.P11991213583426266004

/-! ## A033867.P8191688360838139417

`A033865(A023109(n)^ceil(sin(n)²))`
-/

namespace A033867.P8191688360838139417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033865 (SequenceMachineLib.roundAway ((A023109 n : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ))).toNat

end

end A033867.P8191688360838139417

/-!
# A033868: Numbers n such that 7*n-11 is prime.

The programs for A033868, the canonical program `A033868.P9616034218409755744` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033868 has offset 1).

The definition of A033868 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A024903, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A033868.P9616034218409755744

`A024903(n+1)+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033868

/-- `A024903(n+1)+1` -/
def P9616034218409755744.Spec : Prop :=
  ∀ n, P9616034218409755744.a n = A033868 (n + 1)

theorem P9616034218409755744.correct : P9616034218409755744.Spec := by
  intro n
  simp only [A033868, Nat.add_sub_cancel]

end A033868

/-! ## A033868.P5343026681803400596

`A089033(n+1)+2`
-/

namespace A033868.P5343026681803400596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089033 (n + 1) + 2

end

end A033868.P5343026681803400596

namespace A033868

/-- `A089033(n+1)+2` -/
def P5343026681803400596.Spec : Prop :=
  ∀ n, P5343026681803400596.a n = A033868 (n + 1)

theorem P5343026681803400596.correct : P5343026681803400596.Spec := by
  intro n
  simp only [A033868, Nat.add_sub_cancel, A033868.P5343026681803400596.a, A033868.P9616034218409755744.a, A024903, A024903.P4550380014997824967.f1, A024903.P4550380014997824967.a, A089033, A089033.P1967463785301948197.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033868

/-! ## A033868.P15281946055882007525

`A090614(n+1)*2+2`
-/

namespace A033868.P15281946055882007525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090614 (n + 1) * 2 + 2

end

end A033868.P15281946055882007525

namespace A033868

/-- `A090614(n+1)*2+2` -/
def P15281946055882007525.Spec : Prop :=
  ∀ n, P15281946055882007525.a n = A033868 (n + 1)

end A033868

/-! ## A033868.P15133216689414389563

`ceil(A045437(n+1)/7)+1`
-/

namespace A033868.P15133216689414389563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A045437 (n + 1) : ℚ) / 7⌉ + 1

end

end A033868.P15133216689414389563

namespace A033868

/-- `ceil(A045437(n+1)/7)+1` -/
def P15133216689414389563.Spec : Prop :=
  ∀ n, P15133216689414389563.a n = A033868 (n + 1)

end A033868

/-! ## A033868.P938175174104408398

`A005843(A090614(n+1)+1)`
-/

namespace A033868.P938175174104408398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A090614 (n + 1) + 1).toNat

end

end A033868.P938175174104408398

namespace A033868

/-- `A005843(A090614(n+1)+1)` -/
def P938175174104408398.Spec : Prop :=
  ∀ n, P938175174104408398.a n = A033868 (n + 1)

end A033868

/-! ## A033868.P8947758776498508670

`A004273(A090614(n+1)+1)+1`
-/

namespace A033868.P8947758776498508670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A090614 (n + 1) + 1).toNat + 1

end

end A033868.P8947758776498508670

namespace A033868

/-- `A004273(A090614(n+1)+1)+1` -/
def P8947758776498508670.Spec : Prop :=
  ∀ n, P8947758776498508670.a n = A033868 (n + 1)

end A033868

/-! ## A033868.P6090114202198896497

`eq[1, A001222(7*n+3)]+2`
-/

namespace A033868.P6090114202198896497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (7 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A033868.P6090114202198896497

namespace A033868

/-- `eq[1, A001222(7*n+3)]+2` -/
def P6090114202198896497.Spec : Prop :=
  ∀ n, (P6090114202198896497.a n : ℤ) = A033868 (n + 1)

end A033868

/-! ## A033868.P5701165179175859701

`eq[2, A000005(7*n+3)]+2`
-/

namespace A033868.P5701165179175859701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (7 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A033868.P5701165179175859701

namespace A033868

/-- `eq[2, A000005(7*n+3)]+2` -/
def P5701165179175859701.Spec : Prop :=
  ∀ n, (P5701165179175859701.a n : ℤ) = A033868 (n + 1)

end A033868

/-! ## A033868.P6531974911480591768

`lt[A001222(6*n+3+n), 2]+2`
-/

namespace A033868.P6531974911480591768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (6 * n + 3 + n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A033868.P6531974911480591768

namespace A033868

/-- `lt[A001222(6*n+3+n), 2]+2` -/
def P6531974911480591768.Spec : Prop :=
  ∀ n, (P6531974911480591768.a n : ℤ) = A033868 (n + 1)

end A033868

/-! ## A033868.P1302596709952004588

`lt[A000005(5*n+2*n+3), 3]+2`
-/

namespace A033868.P1302596709952004588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n + (2 * n + 3))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A033868.P1302596709952004588

namespace A033868

/-- `lt[A000005(5*n+2*n+3), 3]+2` -/
def P1302596709952004588.Spec : Prop :=
  ∀ n, (P1302596709952004588.a n : ℤ) = A033868 (n + 1)

end A033868

/-! ## A033868.P13845859573277650919

`A014681(A024903(n+1))`
-/

namespace A033868.P13845859573277650919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A024903 (n + 1)).toNat

end

end A033868.P13845859573277650919

namespace A033868

/-- `A014681(A024903(n+1))` -/
def P13845859573277650919.Spec : Prop :=
  ∀ n, P13845859573277650919.a n = A033868 (n + 1)

end A033868

/-! ## A033868.P4764548466775272152

`A321220(A089033(n+1))`
-/

namespace A033868.P4764548466775272152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321220 (A089033 (n + 1)).toNat

end

end A033868.P4764548466775272152

namespace A033868

/-- `A321220(A089033(n+1))` -/
def P4764548466775272152.Spec : Prop :=
  ∀ n, P4764548466775272152.a n = A033868 (n + 1)

end A033868

/-! ## A033868.P11799055177029347579

`2*(lt[n, A060684(7*n+1)]+1)`
-/

namespace A033868.P11799055177029347579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060684 (7 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A033868.P11799055177029347579

namespace A033868

/-- `2*(lt[n, A060684(7*n+1)]+1)` -/
def P11799055177029347579.Spec : Prop :=
  ∀ n, (P11799055177029347579.a n : ℤ) = A033868 (n + 1)

end A033868

/-! ## A033868.P6249613552515263788

`A138999(A045437(n+1))+1`
-/

namespace A033868.P6249613552515263788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138999 (A045437 (n + 1)).toNat + 1

end

end A033868.P6249613552515263788

namespace A033868

/-- `A138999(A045437(n+1))+1` -/
def P6249613552515263788.Spec : Prop :=
  ∀ n, P6249613552515263788.a n = A033868 (n + 1)

end A033868

/-! ## A033868.P6055239546925501690

`A194510(A045437(n+1)+1)`
-/

namespace A033868.P6055239546925501690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194510 (A045437 (n + 1) + 1).toNat

end

end A033868.P6055239546925501690

namespace A033868

/-- `A194510(A045437(n+1)+1)` -/
def P6055239546925501690.Spec : Prop :=
  ∀ n, P6055239546925501690.a n = A033868 (n + 1)

end A033868

/-! ## A033868.P13605761671141396333

`A187185(A045425(n+2))+1`
-/

namespace A033868.P13605761671141396333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187185 (A045425 (n + 2)).toNat + 1

end

end A033868.P13605761671141396333

namespace A033868

/-- `A187185(A045425(n+2))+1` -/
def P13605761671141396333.Spec : Prop :=
  ∀ n, P13605761671141396333.a n = A033868 (n + 1)

end A033868

/-! ## A033868.P745767542070772020

`eq[1, A061358(A019430(n))]+1`
-/

namespace A033868.P745767542070772020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A019430 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A033868.P745767542070772020

namespace A033868

/-- `eq[1, A061358(A019430(n))]+1` -/
def P745767542070772020.Spec : Prop :=
  ∀ n, (P745767542070772020.a n : ℤ) = A033868 (n + 1)

end A033868

/-! ## A033868.P13128643922776425521

`2*A008617(A045437(n+1)+1)`
-/

namespace A033868.P13128643922776425521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008617 (A045437 (n + 1) + 1).toNat

end

end A033868.P13128643922776425521

namespace A033868

/-- `2*A008617(A045437(n+1)+1)` -/
def P13128643922776425521.Spec : Prop :=
  ∀ n, P13128643922776425521.a n = A033868 (n + 1)

end A033868

/-! ## A033868.P9492791675421710243

`lt[A306927(7*n+3), A039702(2*n+1)+1]+2`
-/

namespace A033868.P9492791675421710243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306927 (7 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039702 (2 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A033868.P9492791675421710243

namespace A033868

/-- `lt[A306927(7*n+3), A039702(2*n+1)+1]+2` -/
def P9492791675421710243.Spec : Prop :=
  ∀ n, (P9492791675421710243.a n : ℤ) = A033868 (n + 1)

end A033868

/-!
# A033869: Weight distribution of [79,40,15] binary quadratic-residue (or QR) code.

The programs for A033869, there is no canonical definition to state claims against.
-/

/-! ## A033869.P2345611183874558698

`A000073(A210709(comp[2*(n+1)])+1)`
-/

namespace A033869.P2345611183874558698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (A210709 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A033869.P2345611183874558698

/-! ## A033869.P13108292449106454644

`A000073(A180989(2*n+3)+a(n-1))` with `a(0)=1`
-/

namespace A033869.P13108292449106454644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000073 (A180989 (2 * n + 3) + a (n - 1)).toNat

end

end A033869.P13108292449106454644

/-! ## A033869.P11149598794549213041

`char[A051867(n)]*A240216(A002865(n))`
-/

namespace A033869.P11149598794549213041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051867 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A240216 (A002865 n).toNat

end

end A033869.P11149598794549213041

/-! ## A033869.P14688767192400907738

`A114099(A018783(n))*A240216(A002865(n))`
-/

namespace A033869.P14688767192400907738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114099 (A018783 n).toNat * A240216 (A002865 n).toNat

end

end A033869.P14688767192400907738

/-! ## A033869.P17987972473616957018

`A010052(A195170(n))*A240216(A002865(n))`
-/

namespace A033869.P17987972473616957018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A195170 n).toNat * A240216 (A002865 n).toNat

end

end A033869.P17987972473616957018

/-!
# A033870: Divisors = 1 (mod 4) of Descartes's 198585576189.

The programs for A033870, there is no canonical definition to state claims against.
-/

/-! ## A033870.P12412126545308585767

`∩[A222262(n+1), A016813(n)]`
-/

namespace A033870.P12412126545308585767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033870.P12412126545308585767

/-! ## A033870.P910899343337795090

`∩[A222262(n+1), A004767(n)-2]`
-/

namespace A033870.P910899343337795090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033870.P910899343337795090

/-! ## A033870.P12644420680532793091

`∩[A222262(n+1), A277549(n+1)]`
-/

namespace A033870.P12644420680532793091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033870.P12644420680532793091

/-! ## A033870.P4473830737669540326

`∩[A222262(n+1), A304868(n+1)]`
-/

namespace A033870.P4473830737669540326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033870.P4473830737669540326

/-! ## A033870.P6306727137822361180

`∩[A026448(n+1), A222262(n+1)]`
-/

namespace A033870.P6306727137822361180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033870.P6306727137822361180

/-! ## A033870.P13259543868534401084

`∩[A047438(n+1), A222262(n+1)]`
-/

namespace A033870.P13259543868534401084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047438 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033870.P13259543868534401084

/-! ## A033870.P3299215378174451709

`∩[A047610(n+1), A222262(n+1)]`
-/

namespace A033870.P3299215378174451709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047610 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033870.P3299215378174451709

/-! ## A033870.P12506475764407131975

`∩[A047616(n+1), A222262(n+1)]`
-/

namespace A033870.P12506475764407131975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033870.P12506475764407131975

/-! ## A033870.P1790518022722554541

`∩[A047619(n+1), A222262(n+1)]`
-/

namespace A033870.P1790518022722554541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222262 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033870.P1790518022722554541

/-! ## A033870.P4130375283547922528

`∩[A222262(n+1), A230239(n+1)]`
-/

namespace A033870.P4130375283547922528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033870.P4130375283547922528

/-!
# A033871: Divisors = 3 (mod 4) of Descartes's 198585576189.

The programs for A033871, there is no canonical definition to state claims against.
-/

/-! ## A033871.P2542584775958612053

`∩[4*n+3, A222262(n+2)]`
-/

namespace A033871.P2542584775958612053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222262 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033871.P2542584775958612053

/-! ## A033871.P2144947249175136326

`∩[A222262(n+1), A338691(n+1)]`
-/

namespace A033871.P2144947249175136326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338691 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A033871.P2144947249175136326

/-! ## A033871.P800321970159152025

`filter[A222262(n+1), A021913(#)]`
-/

namespace A033871.P800321970159152025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A021913 (f1 j).toNat = 1) n)

end

end A033871.P800321970159152025

/-! ## A033871.P7089023993173321077

`filter[A222262(n+1), A038189(#)]`
-/

namespace A033871.P7089023993173321077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A033871.P7089023993173321077

/-! ## A033871.P7064440205961139994

`filter[A222262(n+1), A089013(#)]`
-/

namespace A033871.P7064440205961139994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089013 (f1 j).toNat = 1) n)

end

end A033871.P7064440205961139994

/-! ## A033871.P2099137140132193667

`filter[A222262(n+1), A292077(#)]`
-/

namespace A033871.P2099137140132193667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222262 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292077 (f1 j).toNat = 1) n)

end

end A033871.P2099137140132193667

/-!
# A033872: Numbers k such that A033831(k) is prime.

The programs for A033872, there is no canonical definition to state claims against.
-/

/-! ## A033872.P16194536508685715021

`lt[A033831(n+1)+1, A242931(A033831(n+1)+1)]+1`
-/

namespace A033872.P16194536508685715021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033831 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242931 (A033831 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A033872.P16194536508685715021

/-! ## A033872.P11660146068201644447

`eq[2, A037234(A033831(n+1))]+1`
-/

namespace A033872.P11660146068201644447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037234 (A033831 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A033872.P11660146068201644447

/-! ## A033872.P17964526560621776317

`eq[2, A037234(A033831(A028310(n)))]`
-/

namespace A033872.P17964526560621776317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037234 (A033831 (A028310 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A033872.P17964526560621776317

/-! ## A033872.P9101483791603149400

`lt[A333381(n), A242931(A033831(n+1)+1)]+1`
-/

namespace A033872.P9101483791603149400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242931 (A033831 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A033872.P9101483791603149400

/-! ## A033872.P5527067164855081620

`lt[A340102(n), A242931(A033831(n+1)+1)]+1`
-/

namespace A033872.P5527067164855081620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340102 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242931 (A033831 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A033872.P5527067164855081620

/-!
# A033873: Difference between first prime > 10^n (A003617) and 10^n.

The programs for A033873, the canonical program `A033873.P18414686977204439608` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033873 has offset 0).

The definition of A033873 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003617, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A033873.P18414686977204439608

`A003617(n+1)-10^n`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A033873

/-- `A003617(n+1)-10^n` -/
def P18414686977204439608.Spec : Prop :=
  ∀ n, P18414686977204439608.a n = A033873 n

theorem P18414686977204439608.correct : P18414686977204439608.Spec := by
  intro n
  simp only [A033873]

end A033873

/-! ## A033873.P8281970831084618348

`A038804(A233583(n+1))-A033874(A233583(n+1))`
-/

namespace A033873.P8281970831084618348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038804 (A233583 (n + 1)).toNat - A033874 (A233583 (n + 1)).toNat

end

end A033873.P8281970831084618348

namespace A033873

/-- `A038804(A233583(n+1))-A033874(A233583(n+1))` -/
def P8281970831084618348.Spec : Prop :=
  ∀ n, P8281970831084618348.a n = A033873 n

end A033873

/-! ## A033873.P17248823316204356022

`A272006(n+1)+1`
-/

namespace A033873.P17248823316204356022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272006 (n + 1) + 1

end

end A033873.P17248823316204356022

namespace A033873

/-- `A272006(n+1)+1` -/
def P17248823316204356022.Spec : Prop :=
  ∀ n, P17248823316204356022.a n = A033873 n

theorem P17248823316204356022.correct : P17248823316204356022.Spec := by
  intro n
  simp only [A033873, Nat.add_sub_cancel, A033873.P17248823316204356022.a, A033873.P18414686977204439608.a, A003617, A003617.P3664545779481022082.a, A272006, A272006.P12335751938190877041.a, A011557, A011557.P11220211478167790856.a, A062397, A062397.P11904164326522871108.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033873

/-! ## A033873.P13026027267529053744

`A004442(A272006(n+1))`
-/

namespace A033873.P13026027267529053744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A272006 (n + 1)).toNat

end

end A033873.P13026027267529053744

namespace A033873

/-- `A004442(A272006(n+1))` -/
def P13026027267529053744.Spec : Prop :=
  ∀ n, P13026027267529053744.a n = A033873 n

end A033873

/-! ## A033873.P14482215726085194854

`or(1, A272006(A008611(3*n)))`
-/

namespace A033873.P14482215726085194854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A272006 (A008611 (3 * n)).toNat)

end

end A033873.P14482215726085194854

namespace A033873

/-- `or(1, A272006(A008611(3*n)))` -/
def P14482215726085194854.Spec : Prop :=
  ∀ n, P14482215726085194854.a n = A033873 n

end A033873

/-! ## A033873.P13356314468852450084

`xor(A033999(n)², A272006(A008611(3*n)))`
-/

namespace A033873.P13356314468852450084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n ^ 2) (A272006 (A008611 (3 * n)).toNat)

end

end A033873.P13356314468852450084

namespace A033873

/-- `xor(A033999(n)², A272006(A008611(3*n)))` -/
def P13356314468852450084.Spec : Prop :=
  ∀ n, P13356314468852450084.a n = A033873 n

end A033873

/-! ## A033873.P14990963731451804009

`A139052(2*n+1)-A011557(n)`
-/

namespace A033873.P14990963731451804009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139052 (2 * n + 1) - A011557 n

end

end A033873.P14990963731451804009

namespace A033873

/-- `A139052(2*n+1)-A011557(n)` -/
def P14990963731451804009.Spec : Prop :=
  ∀ n, P14990963731451804009.a n = A033873 n

end A033873

/-! ## A033873.P10954396799011445199

`A101592(2*n+1)-Δ[A002275(n)]`
-/

namespace A033873.P10954396799011445199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101592 (2 * n + 1) - (f1 (n + 1) - f1 n)

end

end A033873.P10954396799011445199

namespace A033873

/-- `A101592(2*n+1)-Δ[A002275(n)]` -/
def P10954396799011445199.Spec : Prop :=
  ∀ n, P10954396799011445199.a n = A033873 n

end A033873

/-! ## A033873.P14173290081455497263

`A139053(A016777(n))-A011557(n)`
-/

namespace A033873.P14173290081455497263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139053 (A016777 n).toNat - A011557 n

end

end A033873.P14173290081455497263

namespace A033873

/-- `A139053(A016777(n))-A011557(n)` -/
def P14173290081455497263.Spec : Prop :=
  ∀ n, P14173290081455497263.a n = A033873 n

end A033873

/-! ## A033873.P3630486513703667978

`A084475(A300576(n+2))`
-/

namespace A033873.P3630486513703667978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084475 (A300576 (n + 2)).toNat

end

end A033873.P3630486513703667978

namespace A033873

/-- `A084475(A300576(n+2))` -/
def P3630486513703667978.Spec : Prop :=
  ∀ n, P3630486513703667978.a n = A033873 n

end A033873

/-!
# A033874: Difference between the largest prime < 10^n (A003618) and 10^n.

The programs for A033874, there is no canonical definition to state claims against.
-/

/-! ## A033874.P7198296343839315762

`A038804(n+1)-A033873(n+1)`
-/

namespace A033874.P7198296343839315762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038804 (n + 1) - A033873 (n + 1)

end

end A033874.P7198296343839315762

/-! ## A033874.P16135964152993185880

`A109937(n+1)-A272006(n+2)`
-/

namespace A033874.P16135964152993185880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109937 (n + 1) - A272006 (n + 2)

end

end A033874.P16135964152993185880

/-! ## A033874.P15641612847708518884

`A109937(n+1)+1-A033873(n+1)`
-/

namespace A033874.P15641612847708518884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109937 (n + 1) + 1 - A033873 (n + 1)

end

end A033874.P15641612847708518884

/-! ## A033874.P7255261427075935743

`A038804(n+1)-(A272006(n+2)+1)`
-/

namespace A033874.P7255261427075935743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038804 (n + 1) - (A272006 (n + 2) + 1)

end

end A033874.P7255261427075935743

/-! ## A033874.P15450189336176234765

`A038804(n+1)-A004442(A272006(n+2))`
-/

namespace A033874.P15450189336176234765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038804 (n + 1) - A004442 (A272006 (n + 2)).toNat

end

end A033874.P15450189336176234765

/-! ## A033874.P7812652804398436427

`A014681(A038804(n+1)-A272006(n+2))`
-/

namespace A033874.P7812652804398436427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A038804 (n + 1) - A272006 (n + 2)).toNat

end

end A033874.P7812652804398436427

/-! ## A033874.P7456104219100651310

`A038804(n+1)+A001489(A272006(n+2)+2)+1`
-/

namespace A033874.P7456104219100651310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038804 (n + 1) + A001489 (A272006 (n + 2) + 2).toNat + 1

end

end A033874.P7456104219100651310

/-! ## A033874.P4882075671171778593

`A233583(A038804(n+1)-A272006(n+2))`
-/

namespace A033874.P4882075671171778593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A038804 (n + 1) - A272006 (n + 2)).toNat

end

end A033874.P4882075671171778593

/-! ## A033874.P11231893318914517100

`A011557(n+1)-A003618(n+1)`
-/

namespace A033874.P11231893318914517100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) - A003618 (n + 1)

end

end A033874.P11231893318914517100

/-! ## A033874.P8971325860731914301

`A178500(n+1)-A003618(n+1)`
-/

namespace A033874.P8971325860731914301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178500 (n + 1) - A003618 (n + 1)

end

end A033874.P8971325860731914301

/-! ## A033874.P17254818927983169033

`A017934(2*(n+1))-A003618(n+1)`
-/

namespace A033874.P17254818927983169033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (2 * (n + 1)) - A003618 (n + 1)

end

end A033874.P17254818927983169033

/-! ## A033874.P12037028105449628760

`A017934(2*(n+1))-A132153(2*(n+1))`
-/

namespace A033874.P12037028105449628760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017934 (2 * (n + 1)) - A132153 (2 * (n + 1))

end

end A033874.P12037028105449628760

/-! ## A033874.P9410539225605426599

`A017934(A103517(n))%A003618(n+1)`
-/

namespace A033874.P9410539225605426599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017934 (A103517 n).toNat) (A003618 (n + 1))

end

end A033874.P9410539225605426599

/-! ## A033874.P3336875285047336047

`A098450(n+1)+A119320(n+1)-A003618(n+1)`
-/

namespace A033874.P3336875285047336047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098450 (n + 1) + (A119320 (n + 1) - A003618 (n + 1))

end

end A033874.P3336875285047336047

/-!
# A033875: Skipping from prime to prime by least powers of 2.

The programs for A033875, there is no canonical definition to state claims against.
-/

/-! ## A033875.P4343198768337958736

`a(n-1)+2^A067760((a(n-1)-1)/2)` with `a(0)=2, a(1)=3`
-/

namespace A033875.P4343198768337958736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) + (2 : ℚ) ^ (A067760 (SequenceMachineLib.roundAway ((a (n - 1) - 1) / 2)).toNat : ℤ)

end

end A033875.P4343198768337958736

/-! ## A033875.P15336539542712302734

`A139758(A000720(a(n-1)))` with `a(0)=2`
-/

namespace A033875.P15336539542712302734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A139758 (A000720 (a (n - 1)).toNat).toNat

end

end A033875.P15336539542712302734

/-! ## A033875.P7137384312698848585

`A123317(a(n-1))+a(n-1)` with `a(0)=2`
-/

namespace A033875.P7137384312698848585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A123317 (a (n - 1)).toNat + a (n - 1)

end

end A033875.P7137384312698848585

/-! ## A033875.P11178744813907400418

`A123318(a(n-1))` with `a(0)=2`
-/

namespace A033875.P11178744813907400418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A123318 (a (n - 1)).toNat

end

end A033875.P11178744813907400418

/-! ## A033875.P16699434597551557159

`record[A123318(A049149(n+1))]`
-/

namespace A033875.P16699434597551557159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123318 (A049149 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033875.P16699434597551557159

/-!
# A033876: Expansion of 1/(2*x) * (1/(1-4*x)^(3/2)-1).

The programs for A033876, the canonical program `A033876.P16870416633292688167` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033876 has offset 0).

The definition of A033876 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037965, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A033876.P16870416633292688167

`A037965(n+2)-A001700(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A033876

/-- `A037965(n+2)-A001700(n)` -/
def P16870416633292688167.Spec : Prop :=
  ∀ n, P16870416633292688167.a n = A033876 n

theorem P16870416633292688167.correct : P16870416633292688167.Spec := by
  intro n
  simp only [A033876]

end A033876

/-! ## A033876.P7180506891054371528

`(2*n+3)*C(2*n+1, n)`
-/

namespace A033876.P7180506891054371528
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 3) * Nat.choose (2 * n + 1) n

end

end A033876.P7180506891054371528

namespace A033876

/-- `(2*n+3)*C(2*n+1, n)` -/
def P7180506891054371528.Spec : Prop :=
  ∀ n, (P7180506891054371528.a n : ℤ) = A033876 n

end A033876

/-! ## A033876.P17845918534751515042

`∏[2/(n+1)+4]/2`
-/

namespace A033876.P17845918534751515042
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A033876.P17845918534751515042

namespace A033876

/-- `∏[2/(n+1)+4]/2` -/
def P17845918534751515042.Spec : Prop :=
  ∀ n, P17845918534751515042.a n = (A033876 n : ℚ)

end A033876

/-! ## A033876.P18334334937905851335

`(2/(n+1)+4)*a(n-1)` with `a(0)=3`
-/

namespace A033876.P18334334937905851335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (2 / (n + 1 : ℚ) + 4) * a (n - 1)

end

end A033876.P18334334937905851335

namespace A033876

/-- `(2/(n+1)+4)*a(n-1)` -/
def P18334334937905851335.Spec : Prop :=
  ∀ n, P18334334937905851335.a n = (A033876 n : ℚ)

end A033876

/-! ## A033876.P5080618323027918240

`A242172(Δ[n²])`
-/

namespace A033876.P5080618323027918240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242172 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A033876.P5080618323027918240

namespace A033876

/-- `A242172(Δ[n²])` -/
def P5080618323027918240.Spec : Prop :=
  ∀ n, P5080618323027918240.a n = A033876 n

end A033876

/-! ## A033876.P9141720929637336513

`record[A275324(n+3)]`
-/

namespace A033876.P9141720929637336513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275324 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033876.P9141720929637336513

namespace A033876

/-- `record[A275324(n+3)]` -/
def P9141720929637336513.Spec : Prop :=
  ∀ n, P9141720929637336513.a n = A033876 n

end A033876

/-! ## A033876.P17893510546269355723

`A275324(2*n+3)`
-/

namespace A033876.P17893510546269355723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275324 (2 * n + 3)

end

end A033876.P17893510546269355723

namespace A033876

/-- `A275324(2*n+3)` -/
def P17893510546269355723.Spec : Prop :=
  ∀ n, P17893510546269355723.a n = A033876 n

end A033876

/-! ## A033876.P12562414400313468641

`floor(A002457(n+1)/2)`
-/

namespace A033876.P12562414400313468641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002457 (n + 1) : ℚ) / 2⌋

end

end A033876.P12562414400313468641

namespace A033876

/-- `floor(A002457(n+1)/2)` -/
def P12562414400313468641.Spec : Prop :=
  ∀ n, P12562414400313468641.a n = A033876 n

end A033876

/-! ## A033876.P224846593673142267

`record[A056040(n+3)/2]`
-/

namespace A033876.P224846593673142267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056040 (n + 3) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033876.P224846593673142267

namespace A033876

/-- `record[A056040(n+3)/2]` -/
def P224846593673142267.Spec : Prop :=
  ∀ n, P224846593673142267.a n = (A033876 n : ℚ)

end A033876

/-! ## A033876.P12992650676994764951

`floor(A046212(2*(n+2))/2)`
-/

namespace A033876.P12992650676994764951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A046212 (2 * (n + 2)) : ℚ) / 2⌋

end

end A033876.P12992650676994764951

namespace A033876

/-- `floor(A046212(2*(n+2))/2)` -/
def P12992650676994764951.Spec : Prop :=
  ∀ n, P12992650676994764951.a n = A033876 n

end A033876

/-! ## A033876.P14551028128214026549

`floor(A056040(2*n+3)/2)`
-/

namespace A033876.P14551028128214026549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056040 (2 * n + 3) : ℚ) / 2⌋

end

end A033876.P14551028128214026549

namespace A033876

/-- `floor(A056040(2*n+3)/2)` -/
def P14551028128214026549.Spec : Prop :=
  ∀ n, P14551028128214026549.a n = A033876 n

end A033876

/-! ## A033876.P15099697123886351998

`ceil(A100071(2*n+3)/2)`
-/

namespace A033876.P15099697123886351998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100071 (2 * n + 3) : ℚ) / 2⌉

end

end A033876.P15099697123886351998

namespace A033876

/-- `ceil(A100071(2*n+3)/2)` -/
def P15099697123886351998.Spec : Prop :=
  ∀ n, P15099697123886351998.a n = A033876 n

end A033876

/-! ## A033876.P11760375048263076987

`(2*n+3)*A088218(n+1)`
-/

namespace A033876.P11760375048263076987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * A088218 (n + 1)

end

end A033876.P11760375048263076987

namespace A033876

/-- `(2*n+3)*A088218(n+1)` -/
def P11760375048263076987.Spec : Prop :=
  ∀ n, P11760375048263076987.a n = A033876 n

end A033876

/-! ## A033876.P18423374410503994581

`lcm(2*n+1, A242172(2*n+1))`
-/

namespace A033876.P18423374410503994581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A242172 (2 * n + 1))

end

end A033876.P18423374410503994581

namespace A033876

/-- `lcm(2*n+1, A242172(2*n+1))` -/
def P18423374410503994581.Spec : Prop :=
  ∀ n, (P18423374410503994581.a n : ℤ) = A033876 n

end A033876

/-! ## A033876.P13647427798124681224

`(2*n+3)*Δ[n²]*A000108(n)`
-/

namespace A033876.P13647427798124681224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 3 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000108 n

end

end A033876.P13647427798124681224

namespace A033876

/-- `(2*n+3)*Δ[n²]*A000108(n)` -/
def P13647427798124681224.Spec : Prop :=
  ∀ n, P13647427798124681224.a n = A033876 n

end A033876

/-! ## A033876.P10509666915480149116

`A000917(n)-A002737(n)`
-/

namespace A033876.P10509666915480149116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000917 n - A002737 n

end

end A033876.P10509666915480149116

namespace A033876

/-- `A000917(n)-A002737(n)` -/
def P10509666915480149116.Spec : Prop :=
  ∀ n, P10509666915480149116.a n = A033876 n

end A033876

/-! ## A033876.P4677352851558674493

`A002011(n)-A257589(n)`
-/

namespace A033876.P4677352851558674493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002011 n - A257589 n

end

end A033876.P4677352851558674493

namespace A033876

/-- `A002011(n)-A257589(n)` -/
def P4677352851558674493.Spec : Prop :=
  ∀ n, P4677352851558674493.a n = A033876 n

end A033876

/-! ## A033876.P14027822688200285735

`A002737(n)+A001700(n+1)`
-/

namespace A033876.P14027822688200285735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002737 n + A001700 (n + 1)

end

end A033876.P14027822688200285735

namespace A033876

/-- `A002737(n)+A001700(n+1)` -/
def P14027822688200285735.Spec : Prop :=
  ∀ n, P14027822688200285735.a n = A033876 n

end A033876

/-! ## A033876.P2069341012367566257

`A004171(n)+A000531(n+1)`
-/

namespace A033876.P2069341012367566257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004171 n + A000531 (n + 1)

end

end A033876.P2069341012367566257

namespace A033876

/-- `A004171(n)+A000531(n+1)` -/
def P2069341012367566257.Spec : Prop :=
  ∀ n, P2069341012367566257.a n = A033876 n

end A033876

/-! ## A033876.P11162882485861015334

`A005430(n+1)+A001700(n)`
-/

namespace A033876.P11162882485861015334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005430 (n + 1) + A001700 n

end

end A033876.P11162882485861015334

namespace A033876

/-- `A005430(n+1)+A001700(n)` -/
def P11162882485861015334.Spec : Prop :=
  ∀ n, P11162882485861015334.a n = A033876 n

end A033876

/-!
# A033877: Triangular array read by rows associated with Schroeder numbers: T(1,k) = 1; T(n,k) = 0 if k < n; T(n,k) = T(n,k-1) + T(n-1,k-1) + T(n-1,k).

The programs for A033877, there is no canonical definition to state claims against.
-/

/-! ## A033877.P11230067467904199523

`A106579(comp[∑[n]])`
-/

namespace A033877.P11230067467904199523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A033877.P11230067467904199523

/-! ## A033877.P14744565235318022889

`A080247(A061579(n))`
-/

namespace A033877.P14744565235318022889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 (A061579 n).toNat

end

end A033877.P14744565235318022889

/-! ## A033877.P5523673721425818707

`A080247(A114327(n)+n)`
-/

namespace A033877.P5523673721425818707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 (A114327 n + (n : ℤ)).toNat

end

end A033877.P5523673721425818707

/-! ## A033877.P16679923184375746236

`A080247(A038722(n+1)-1)`
-/

namespace A033877.P16679923184375746236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 (A038722 (n + 1) - 1).toNat

end

end A033877.P16679923184375746236

/-! ## A033877.P10873901099839514687

`A080247((A007401(n+1)-n)²-(n+1))`
-/

namespace A033877.P10873901099839514687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 ((A007401 (n + 1) - (n : ℤ)) ^ 2 - (n + 1 : ℤ)).toNat

end

end A033877.P10873901099839514687

/-! ## A033877.P8490263430832984426

`A080247((n+1-A014132(n+1))²-(n+1))`
-/

namespace A033877.P8490263430832984426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 (((n + 1 : ℤ) - A014132 (n + 1)) ^ 2 - (n + 1 : ℤ)).toNat

end

end A033877.P8490263430832984426

/-!
# A033878: Triangular array associated with Schroeder numbers.

The programs for A033878, there is no canonical definition to state claims against.
-/

/-! ## A033878.P2323907086096408687

`A106579(n+1)+A106579(n)`
-/

namespace A033878.P2323907086096408687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 (n + 1) + A106579 n

end

end A033878.P2323907086096408687

/-! ## A033878.P7173920559743375948

`A132372(A061579(n))`
-/

namespace A033878.P7173920559743375948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132372 (A061579 n).toNat

end

end A033878.P7173920559743375948

/-! ## A033878.P412553267187451440

`A132372(A114327(n)+n)`
-/

namespace A033878.P412553267187451440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132372 (A114327 n + (n : ℤ)).toNat

end

end A033878.P412553267187451440

/-! ## A033878.P2662617537401056203

`A132372(A038722(n+1)-1)`
-/

namespace A033878.P2662617537401056203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132372 (A038722 (n + 1) - 1).toNat

end

end A033878.P2662617537401056203

/-! ## A033878.P4597060340971447933

`A132372(A002024(n+1)²-(n+1))`
-/

namespace A033878.P4597060340971447933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132372 (A002024 (n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A033878.P4597060340971447933

/-! ## A033878.P17373375604607618795

`A132372((A003056(n)+1)²-(n+1))`
-/

namespace A033878.P17373375604607618795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132372 ((A003056 n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A033878.P17373375604607618795

/-! ## A033878.P7155320695044002524

`abs(A103136(A114327(n)+n))`
-/

namespace A033878.P7155320695044002524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103136 (A114327 n + (n : ℤ)).toNat|

end

end A033878.P7155320695044002524

/-! ## A033878.P14977228447264035884

`gcd(A000038(n), A103136(A061579(n)))`
-/

namespace A033878.P14977228447264035884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A103136 (A061579 n).toNat)

end

end A033878.P14977228447264035884

/-! ## A033878.P16101118566974816802

`lcm(A020985(n), A103136(A061579(n)))`
-/

namespace A033878.P16101118566974816802
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A103136 (A061579 n).toNat)

end

end A033878.P16101118566974816802

/-! ## A033878.P5231130436621952994

`∑{d}[A103136(A061579(n)), A000010(#)]`
-/

namespace A033878.P5231130436621952994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103136 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A033878.P5231130436621952994

/-!
# A033879: Deficiency of n, or 2n - (sum of divisors of n).

The programs for A033879, the canonical program `A033879.P11735613842914743111` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033879 has offset 1).

The definition of A033879 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033879.P11735613842914743111

`-A033880(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A033879

/-- `-A033880(n+1)` -/
def P11735613842914743111.Spec : Prop :=
  ∀ n, P11735613842914743111.a n = A033879 (n + 1)

theorem P11735613842914743111.correct : P11735613842914743111.Spec := by
  intro n
  simp only [A033879, Nat.add_sub_cancel]

end A033879

/-! ## A033879.P7460477976013556068

`n+1-A001065(n+1)`
-/

namespace A033879.P7460477976013556068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A001065 (n + 1)

end

end A033879.P7460477976013556068

namespace A033879

/-- `n+1-A001065(n+1)` -/
def P7460477976013556068.Spec : Prop :=
  ∀ n, P7460477976013556068.a n = A033879 (n + 1)

theorem P7460477976013556068.correct : P7460477976013556068.Spec := by
  intro n
  simp only [A033879, Nat.add_sub_cancel, A033879.P7460477976013556068.a, A033879.P11735613842914743111.a, A001065, A001065.P4097147489331274860.a, A033880, A033880.P6005875780263802708.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033879

/-! ## A033879.P15701232708530105189

`A117966(A295882(n+1))`
-/

namespace A033879.P15701232708530105189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A295882 (n + 1)).toNat

end

end A033879.P15701232708530105189

namespace A033879

/-- `A117966(A295882(n+1))` -/
def P15701232708530105189.Spec : Prop :=
  ∀ n, P15701232708530105189.a n = A033879 (n + 1)

end A033879

/-! ## A033879.P7493836822834225019

`A294898(n+1)+A000120(n+1)`
-/

namespace A033879.P7493836822834225019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294898 (n + 1) + A000120 (n + 1)

end

end A033879.P7493836822834225019

namespace A033879

/-- `A294898(n+1)+A000120(n+1)` -/
def P7493836822834225019.Spec : Prop :=
  ∀ n, P7493836822834225019.a n = A033879 (n + 1)

theorem P7493836822834225019.correct : P7493836822834225019.Spec := by
  intro n
  simp only [A033879, Nat.add_sub_cancel, A033879.P7493836822834225019.a, A033879.P11735613842914743111.a, A000120, A000120.P2816527436160941581.a, A033880, A033880.P6005875780263802708.a, A294898, A294898.P11311681912968614755.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033879

/-! ## A033879.P5920131831264405421

`A005843(n+1)-A000203(n+1)`
-/

namespace A033879.P5920131831264405421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (n + 1) - A000203 (n + 1)

end

end A033879.P5920131831264405421

namespace A033879

/-- `A005843(n+1)-A000203(n+1)` -/
def P5920131831264405421.Spec : Prop :=
  ∀ n, P5920131831264405421.a n = A033879 (n + 1)

theorem P5920131831264405421.correct : P5920131831264405421.Spec := by
  intro n
  simp only [A033879, Nat.add_sub_cancel, A033879.P5920131831264405421.a, A033879.P11735613842914743111.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005843, A005843.P3167286115683555970.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033879

/-! ## A033879.P4716321138926166114

`A003958(n+1)-A324044(n+1)`
-/

namespace A033879.P4716321138926166114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003958 (n + 1) - A324044 (n + 1)

end

end A033879.P4716321138926166114

namespace A033879

/-- `A003958(n+1)-A324044(n+1)` -/
def P4716321138926166114.Spec : Prop :=
  ∀ n, P4716321138926166114.a n = A033879 (n + 1)

theorem P4716321138926166114.correct : P4716321138926166114.Spec := by
  intro n
  simp only [A033879, Nat.add_sub_cancel, A033879.P4716321138926166114.a, A033879.P11735613842914743111.a, A003958, A003958.P196685604458257440.a, A033880, A033880.P6005875780263802708.a, A324044, A324044.P16013423005150912487.a, A001065, A001065.P4097147489331274860.a, A125131, A125131.P2814879206416894113.f1, A125131.P2814879206416894113.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A120007, A120007.P17212889191585270917.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A061397, A061397.P17730824645895443051.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033879

/-! ## A033879.P9399290943161893772

`A325814(n+1)-A034460(n+1)`
-/

namespace A033879.P9399290943161893772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (n + 1) - A034460 (n + 1)

end

end A033879.P9399290943161893772

namespace A033879

/-- `A325814(n+1)-A034460(n+1)` -/
def P9399290943161893772.Spec : Prop :=
  ∀ n, P9399290943161893772.a n = A033879 (n + 1)

theorem P9399290943161893772.correct : P9399290943161893772.Spec := by
  intro n
  simp only [A033879, Nat.add_sub_cancel, A033879.P9399290943161893772.a, A033879.P11735613842914743111.a, A033880, A033880.P6005875780263802708.a, A034460, A034460.P1958235575820581513.a, A325814, A325814.P16316630090321165520.a, A001065, A001065.P4097147489331274860.a, A034448, A034448.P17017727775393200719.a, A048146, A048146.P9985884013456677192.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A379812, A379812.P10955070158037639960.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033879

/-! ## A033879.P2188653019752006152

`A066503(n+1)-A326143(n+1)`
-/

namespace A033879.P2188653019752006152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066503 (n + 1) - A326143 (n + 1)

end

end A033879.P2188653019752006152

namespace A033879

/-- `A066503(n+1)-A326143(n+1)` -/
def P2188653019752006152.Spec : Prop :=
  ∀ n, P2188653019752006152.a n = A033879 (n + 1)

theorem P2188653019752006152.correct : P2188653019752006152.Spec := by
  intro n
  simp only [A033879, Nat.add_sub_cancel, A033879.P2188653019752006152.a, A033879.P11735613842914743111.a, A033880, A033880.P6005875780263802708.a, A066503, A066503.P17588364347287804265.a, A326143, A326143.P176859411368788289.a, A001065, A001065.P4097147489331274860.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A326142, A326142.P15415912859726343761.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033879

/-! ## A033879.P9667490610592536769

`A286385(n+1)-A252748(n+1)`
-/

namespace A033879.P9667490610592536769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286385 (n + 1) - A252748 (n + 1)

end

end A033879.P9667490610592536769

namespace A033879

/-- `A286385(n+1)-A252748(n+1)` -/
def P9667490610592536769.Spec : Prop :=
  ∀ n, P9667490610592536769.a n = A033879 (n + 1)

end A033879

/-! ## A033879.P15006982332086106098

`A318878(n+1)-A318879(n+1)`
-/

namespace A033879.P15006982332086106098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318878 (n + 1) - A318879 (n + 1)

end

end A033879.P15006982332086106098

namespace A033879

/-- `A318878(n+1)-A318879(n+1)` -/
def P15006982332086106098.Spec : Prop :=
  ∀ n, P15006982332086106098.a n = A033879 (n + 1)

end A033879

/-! ## A033879.P9257139844759308375

`A325314(n+1)-A325313(n+1)`
-/

namespace A033879.P9257139844759308375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325314 (n + 1) - A325313 (n + 1)

end

end A033879.P9257139844759308375

namespace A033879

/-- `A325314(n+1)-A325313(n+1)` -/
def P9257139844759308375.Spec : Prop :=
  ∀ n, P9257139844759308375.a n = A033879 (n + 1)

end A033879

/-! ## A033879.P11854364135434618094

`A325976(n+1)-A325826(n+1)`
-/

namespace A033879.P11854364135434618094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325976 (n + 1) - A325826 (n + 1)

end

end A033879.P11854364135434618094

namespace A033879

/-- `A325976(n+1)-A325826(n+1)` -/
def P11854364135434618094.Spec : Prop :=
  ∀ n, P11854364135434618094.a n = A033879 (n + 1)

end A033879

/-! ## A033879.P16946012764857712465

`A325959(n+1)-A325969(n+1)`
-/

namespace A033879.P16946012764857712465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325959 (n + 1) - A325969 (n + 1)

end

end A033879.P16946012764857712465

namespace A033879

/-- `A325959(n+1)-A325969(n+1)` -/
def P16946012764857712465.Spec : Prop :=
  ∀ n, P16946012764857712465.a n = A033879 (n + 1)

end A033879

/-! ## A033879.P16123426509595242502

`A325978(n+1)-A325977(n+1)`
-/

namespace A033879.P16123426509595242502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325978 (n + 1) - A325977 (n + 1)

end

end A033879.P16123426509595242502

namespace A033879

/-- `A325978(n+1)-A325977(n+1)` -/
def P16123426509595242502.Spec : Prop :=
  ∀ n, P16123426509595242502.a n = A033879 (n + 1)

theorem P16123426509595242502.correct : P16123426509595242502.Spec := by
  intro n
  simp only [A033879, Nat.add_sub_cancel, A033879.P16123426509595242502.a, A033879.P11735613842914743111.a, A033880, A033880.P6005875780263802708.a, A325977, A325977.P12931186378742614702.a, A325978, A325978.P3623255337971187287.a, A001065, A001065.P4097147489331274860.a, A034460, A034460.P1958235575820581513.a, A325313, A325313.P16190563631669618661.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A048250, A048250.P6137918235727910070.a, A001615, A001615.P12078511981713404634.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033879

/-! ## A033879.P17270790053618868529

`A326044(n+1)-A326045(n+1)`
-/

namespace A033879.P17270790053618868529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326044 (n + 1) - A326045 (n + 1)

end

end A033879.P17270790053618868529

namespace A033879

/-- `A326044(n+1)-A326045(n+1)` -/
def P17270790053618868529.Spec : Prop :=
  ∀ n, P17270790053618868529.a n = A033879 (n + 1)

theorem P17270790053618868529.correct : P17270790053618868529.Spec := by
  intro n
  simp only [A033879, Nat.add_sub_cancel, A033879.P17270790053618868529.a, A033879.P11735613842914743111.a, A033880, A033880.P6005875780263802708.a, A326044, A326044.P15136315853744446267.a, A326045, A326045.P9050702323358522594.a, A001065, A001065.P4097147489331274860.a, A326040, A326040.P15308237361060723767.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A326039, A326039.P9256592062457246146.a, A326038, A326038.P7461773891542618718.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033879

/-! ## A033879.P1797039505678223868

`A326049(n+1)-A326050(n+1)`
-/

namespace A033879.P1797039505678223868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326049 (n + 1) - A326050 (n + 1)

end

end A033879.P1797039505678223868

namespace A033879

/-- `A326049(n+1)-A326050(n+1)` -/
def P1797039505678223868.Spec : Prop :=
  ∀ n, P1797039505678223868.a n = A033879 (n + 1)

theorem P1797039505678223868.correct : P1797039505678223868.Spec := by
  intro n
  simp only [A033879, Nat.add_sub_cancel, A033879.P1797039505678223868.a, A033879.P11735613842914743111.a, A033880, A033880.P6005875780263802708.a, A326049, A326049.P12761554379503345949.a, A326050, A326050.P4515014402688933711.a, A001065, A001065.P4097147489331274860.a, A082052, A082052.P17956952017327585217.f1, A082052.P17956952017327585217.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A166486, A166486.P13501783531280266850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033879

/-! ## A033879.P11274652434401467605

`A326055(n+1)-A326054(n+1)`
-/

namespace A033879.P11274652434401467605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326055 (n + 1) - A326054 (n + 1)

end

end A033879.P11274652434401467605

namespace A033879

/-- `A326055(n+1)-A326054(n+1)` -/
def P11274652434401467605.Spec : Prop :=
  ∀ n, P11274652434401467605.a n = A033879 (n + 1)

theorem P11274652434401467605.correct : P11274652434401467605.Spec := by
  intro n
  simp only [A033879, Nat.add_sub_cancel, A033879.P11274652434401467605.a, A033879.P11735613842914743111.a, A033880, A033880.P6005875780263802708.a, A326054, A326054.P11521875358712095530.a, A326055, A326055.P11347868664017450431.a, A001065, A001065.P4097147489331274860.a, A326053, A326053.P16383788461503311404.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008833, A008833.P18388074464065390543.a, A007913, A007913.P11359412940648999332.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033879

/-! ## A033879.P9234208732351052015

`A326058(n+1)-A326059(n+1)`
-/

namespace A033879.P9234208732351052015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326058 (n + 1) - A326059 (n + 1)

end

end A033879.P9234208732351052015

namespace A033879

/-- `A326058(n+1)-A326059(n+1)` -/
def P9234208732351052015.Spec : Prop :=
  ∀ n, P9234208732351052015.a n = A033879 (n + 1)

theorem P9234208732351052015.correct : P9234208732351052015.Spec := by
  intro n
  simp only [A033879, Nat.add_sub_cancel, A033879.P9234208732351052015.a, A033879.P11735613842914743111.a, A033880, A033880.P6005875780263802708.a, A326058, A326058.P945554037685919267.a, A326059, A326059.P8887039783102292576.a, A001065, A001065.P4097147489331274860.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, A285309, A285309.P12080858862407877190.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A037213, A037213.P7544062464691828526.a, A000196, A000196.P15434771586934192083.a, A010052, A010052.P917763524850441347.f1, A010052.P917763524850441347.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033879

/-! ## A033879.P7446957778986231353

`A326068(n+1)-A326067(n+1)`
-/

namespace A033879.P7446957778986231353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326068 (n + 1) - A326067 (n + 1)

end

end A033879.P7446957778986231353

namespace A033879

/-- `A326068(n+1)-A326067(n+1)` -/
def P7446957778986231353.Spec : Prop :=
  ∀ n, P7446957778986231353.a n = A033879 (n + 1)

end A033879

/-! ## A033879.P13198784866850993504

`A065620(A295881(n+1))`
-/

namespace A033879.P13198784866850993504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A295881 (n + 1)).toNat

end

end A033879.P13198784866850993504

namespace A033879

/-- `A065620(A295881(n+1))` -/
def P13198784866850993504.Spec : Prop :=
  ∀ n, P13198784866850993504.a n = A033879 (n + 1)

end A033879

/-!
# A033880: Abundance of n, or (sum of divisors of n) - 2n.

The programs for A033880, the canonical program `A033880.P6005875780263802708` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033880 has offset 1).

The definition of A033880 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033880.P6005875780263802708

`A001065(n+1)-(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A033880

/-- `A001065(n+1)-(n+1)` -/
def P6005875780263802708.Spec : Prop :=
  ∀ n, P6005875780263802708.a n = A033880 (n + 1)

theorem P6005875780263802708.correct : P6005875780263802708.Spec := by
  intro n
  simp only [A033880, Nat.add_sub_cancel]

end A033880

/-! ## A033880.P5993942589988235556

`A000203(n+1)-A005843(n+1)`
-/

namespace A033880.P5993942589988235556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A005843 (n + 1)

end

end A033880.P5993942589988235556

namespace A033880

/-- `A000203(n+1)-A005843(n+1)` -/
def P5993942589988235556.Spec : Prop :=
  ∀ n, P5993942589988235556.a n = A033880 (n + 1)

theorem P5993942589988235556.correct : P5993942589988235556.Spec := by
  intro n
  simp only [A033880, Nat.add_sub_cancel, A033880.P5993942589988235556.a, A033880.P6005875780263802708.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033880

/-! ## A033880.P18212552127170526022

`∑{d}[n+1, #]-2*(n+1)`
-/

namespace A033880.P18212552127170526022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (2 * (n + 1) : ℤ)

end

end A033880.P18212552127170526022

namespace A033880

/-- `∑{d}[n+1, #]-2*(n+1)` -/
def P18212552127170526022.Spec : Prop :=
  ∀ n, P18212552127170526022.a n = A033880 (n + 1)

theorem P18212552127170526022.correct : P18212552127170526022.Spec := by
  intro n
  simp only [A033880, Nat.add_sub_cancel, A033880.P18212552127170526022.f1, A033880.P18212552127170526022.a, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033880

/-! ## A033880.P16514564337843354835

`∑{d}[n+1, #]-(n+2)-n`
-/

namespace A033880.P16514564337843354835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 2 : ℤ) - (n : ℤ)

end

end A033880.P16514564337843354835

namespace A033880

/-- `∑{d}[n+1, #]-(n+2)-n` -/
def P16514564337843354835.Spec : Prop :=
  ∀ n, P16514564337843354835.a n = A033880 (n + 1)

theorem P16514564337843354835.correct : P16514564337843354835.Spec := by
  intro n
  simp only [A033880, Nat.add_sub_cancel, A033880.P16514564337843354835.f1, A033880.P16514564337843354835.a, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033880

/-! ## A033880.P7394716011369289778

`Δ[-A111490(n)]`
-/

namespace A033880.P7394716011369289778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A111490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033880.P7394716011369289778

namespace A033880

/-- `Δ[-A111490(n)]` -/
def P7394716011369289778.Spec : Prop :=
  ∀ n, P7394716011369289778.a n = A033880 (n + 1)

end A033880

/-! ## A033880.P14111750016497696141

`-A033879(n+1)`
-/

namespace A033880.P14111750016497696141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A033879 (n + 1)

end

end A033880.P14111750016497696141

namespace A033880

/-- `-A033879(n+1)` -/
def P14111750016497696141.Spec : Prop :=
  ∀ n, P14111750016497696141.a n = A033880 (n + 1)

theorem P14111750016497696141.correct : P14111750016497696141.Spec := by
  intro n
  simp only [A033880, Nat.add_sub_cancel, A033880.P14111750016497696141.a, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, A033879, A033879.P11735613842914743111.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033880

/-! ## A033880.P5456668780333928149

`A237588(n+1)-1`
-/

namespace A033880.P5456668780333928149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) - 1

end

end A033880.P5456668780333928149

namespace A033880

/-- `A237588(n+1)-1` -/
def P5456668780333928149.Spec : Prop :=
  ∀ n, P5456668780333928149.a n = A033880 (n + 1)

theorem P5456668780333928149.correct : P5456668780333928149.Spec := by
  intro n
  simp only [A033880, Nat.add_sub_cancel, A033880.P5456668780333928149.a, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, A237588, A237588.P7919289499905681947.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033880

/-! ## A033880.P8552554198069193325

`n-A353190(n+1)`
-/

namespace A033880.P8552554198069193325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A353190 (n + 1)

end

end A033880.P8552554198069193325

namespace A033880

/-- `n-A353190(n+1)` -/
def P8552554198069193325.Spec : Prop :=
  ∀ n, P8552554198069193325.a n = A033880 (n + 1)

theorem P8552554198069193325.correct : P8552554198069193325.Spec := by
  intro n
  simp only [A033880, Nat.add_sub_cancel, A033880.P8552554198069193325.a, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, A353190, A353190.P11422691785722745783.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A005408, A005408.P17437947328870227736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033880

/-! ## A033880.P18395672025678288558

`∑[A340793(n+1)-2]`
-/

namespace A033880.P18395672025678288558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033880.P18395672025678288558

namespace A033880

/-- `∑[A340793(n+1)-2]` -/
def P18395672025678288558.Spec : Prop :=
  ∀ n, P18395672025678288558.a n = A033880 (n + 1)

end A033880

/-! ## A033880.P4733010607349913480

`1-A033885(n+1)+n`
-/

namespace A033880.P4733010607349913480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033885 (n + 1) + (n : ℤ)

end

end A033880.P4733010607349913480

namespace A033880

/-- `1-A033885(n+1)+n` -/
def P4733010607349913480.Spec : Prop :=
  ∀ n, P4733010607349913480.a n = A033880 (n + 1)

theorem P4733010607349913480.correct : P4733010607349913480.Spec := by
  intro n
  simp only [A033880, Nat.add_sub_cancel, A033880.P4733010607349913480.a, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, A033885, A033885.P17185518779977576955.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008585, A008585.P13732812384316341435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033880

/-! ## A033880.P5762115936006271639

`A039653(n+1)-Δ[n²]`
-/

namespace A033880.P5762115936006271639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A033880.P5762115936006271639

namespace A033880

/-- `A039653(n+1)-Δ[n²]` -/
def P5762115936006271639.Spec : Prop :=
  ∀ n, P5762115936006271639.a n = A033880 (n + 1)

end A033880

/-! ## A033880.P3887443290367986230

`∑[n-1]-A024816(n+1)`
-/

namespace A033880.P3887443290367986230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A024816 (n + 1)

end

end A033880.P3887443290367986230

namespace A033880

/-- `∑[n-1]-A024816(n+1)` -/
def P3887443290367986230.Spec : Prop :=
  ∀ n, P3887443290367986230.a n = A033880 (n + 1)

end A033880

/-! ## A033880.P16020045453062125124

`A091818(n+1)/2-(n+1)`
-/

namespace A033880.P16020045453062125124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091818 (n + 1) : ℚ) / 2 - (n + 1 : ℚ)

end

end A033880.P16020045453062125124

namespace A033880

/-- `A091818(n+1)/2-(n+1)` -/
def P16020045453062125124.Spec : Prop :=
  ∀ n, P16020045453062125124.a n = (A033880 (n + 1) : ℚ)

theorem P16020045453062125124.correct : P16020045453062125124.Spec := by
  intro n
  simp only [A033880, Nat.add_sub_cancel, A033880.P16020045453062125124.a, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, A091818, A091818.P1536144604709334989.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033880

/-! ## A033880.P4510161722379816861

`A155085(n+1)-3*(n+1)`
-/

namespace A033880.P4510161722379816861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155085 (n + 1) - (3 * (n + 1) : ℤ)

end

end A033880.P4510161722379816861

namespace A033880

/-- `A155085(n+1)-3*(n+1)` -/
def P4510161722379816861.Spec : Prop :=
  ∀ n, P4510161722379816861.a n = A033880 (n + 1)

theorem P4510161722379816861.correct : P4510161722379816861.Spec := by
  intro n
  simp only [A033880, Nat.add_sub_cancel, A033880.P4510161722379816861.a, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, A155085, A155085.P3282672389110014595.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033880

/-! ## A033880.P403183417378320810

`A088580(n+1)-(2*n+3)`
-/

namespace A033880.P403183417378320810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088580 (n + 1) - (2 * n + 3 : ℤ)

end

end A033880.P403183417378320810

namespace A033880

/-- `A088580(n+1)-(2*n+3)` -/
def P403183417378320810.Spec : Prop :=
  ∀ n, P403183417378320810.a n = A033880 (n + 1)

theorem P403183417378320810.correct : P403183417378320810.Spec := by
  intro n
  simp only [A033880, Nat.add_sub_cancel, A033880.P403183417378320810.a, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, A088580, A088580.P3089093194242277422.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033880

/-! ## A033880.P16210991318298151069

`A224880(n+1)-4*(n+1)`
-/

namespace A033880.P16210991318298151069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224880 (n + 1) - (4 * (n + 1) : ℤ)

end

end A033880.P16210991318298151069

namespace A033880

/-- `A224880(n+1)-4*(n+1)` -/
def P16210991318298151069.Spec : Prop :=
  ∀ n, P16210991318298151069.a n = A033880 (n + 1)

theorem P16210991318298151069.correct : P16210991318298151069.Spec := by
  intro n
  simp only [A033880, Nat.add_sub_cancel, A033880.P16210991318298151069.a, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, A224880, A224880.P6096983120324589862.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A033879, A033879.P11735613842914743111.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033880

/-! ## A033880.P17023378251289535122

`∑{d}[n+1, #-2*A000010(#)]`
-/

namespace A033880.P17023378251289535122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 2 * A000010 d)

end

end A033880.P17023378251289535122

namespace A033880

/-- `∑{d}[n+1, #-2*A000010(#)]` -/
def P17023378251289535122.Spec : Prop :=
  ∀ n, P17023378251289535122.a n = A033880 (n + 1)

end A033880

/-! ## A033880.P1342193833172901490

`A000203(C(n+1, n))-(n+2)-n`
-/

namespace A033880.P1342193833172901490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (Nat.choose (n + 1) n) - (n + 2 : ℤ) - (n : ℤ)

end

end A033880.P1342193833172901490

namespace A033880

/-- `A000203(C(n+1, n))-(n+2)-n` -/
def P1342193833172901490.Spec : Prop :=
  ∀ n, P1342193833172901490.a n = A033880 (n + 1)

end A033880

/-! ## A033880.P4971008209989599982

`Δ[a(n-1)-(2*n-A000203(n))]` with `a(0)=0`
-/

namespace A033880.P4971008209989599982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - ((2 * n : ℤ) - A000203 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033880.P4971008209989599982

namespace A033880

/-- `Δ[a(n-1)-(2*n-A000203(n))]` -/
def P4971008209989599982.Spec : Prop :=
  ∀ n, P4971008209989599982.a n = A033880 (n + 1)

end A033880

/-! ## A033880.P10330557733757827856

`A000203(2*n-(n-1))-2*n-2`
-/

namespace A033880.P10330557733757827856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat - (2 * n : ℤ) - 2

end

end A033880.P10330557733757827856

namespace A033880

/-- `A000203(2*n-(n-1))-2*n-2` -/
def P10330557733757827856.Spec : Prop :=
  ∀ n, P10330557733757827856.a n = A033880 (n + 1)

end A033880

/-!
# A033881: Abundancy of n-th abundant number: sigma(k) - 2k for k such that this is > 0.

The programs for A033881, the canonical program `A033881.P3139120918464982481` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033881 has offset 1).

The definition of A033881 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005101, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A033881.P3139120918464982481

`A033880(A005101(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A033881

/-- `A033880(A005101(n+1))` -/
def P3139120918464982481.Spec : Prop :=
  ∀ n, P3139120918464982481.a n = A033881 (n + 1)

theorem P3139120918464982481.correct : P3139120918464982481.Spec := by
  intro n
  simp only [A033881, Nat.add_sub_cancel]

end A033881

/-! ## A033881.P11728709133099012069

`A205098(n+1)-A005101(n+1)`
-/

namespace A033881.P11728709133099012069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205098 (n + 1) - A005101 (n + 1)

end

end A033881.P11728709133099012069

namespace A033881

/-- `A205098(n+1)-A005101(n+1)` -/
def P11728709133099012069.Spec : Prop :=
  ∀ n, P11728709133099012069.a n = A033881 (n + 1)

end A033881

/-! ## A033881.P10664216116716650699

`A204822(n+1)-A224907(n+1)`
-/

namespace A033881.P10664216116716650699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204822 (n + 1) - A224907 (n + 1)

end

end A033881.P10664216116716650699

namespace A033881

/-- `A204822(n+1)-A224907(n+1)` -/
def P10664216116716650699.Spec : Prop :=
  ∀ n, P10664216116716650699.a n = A033881 (n + 1)

end A033881

/-! ## A033881.P489243340221411164

`A204822(n+1)-2*A005101(n+1)`
-/

namespace A033881.P489243340221411164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204822 (n + 1) - 2 * A005101 (n + 1)

end

end A033881.P489243340221411164

namespace A033881

/-- `A204822(n+1)-2*A005101(n+1)` -/
def P489243340221411164.Spec : Prop :=
  ∀ n, P489243340221411164.a n = A033881 (n + 1)

end A033881

/-! ## A033881.P15856807436380395762

`2*A205098(n+1)-A204822(n+1)`
-/

namespace A033881.P15856807436380395762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A205098 (n + 1) - A204822 (n + 1)

end

end A033881.P15856807436380395762

namespace A033881

/-- `2*A205098(n+1)-A204822(n+1)` -/
def P15856807436380395762.Spec : Prop :=
  ∀ n, P15856807436380395762.a n = A033881 (n + 1)

end A033881

/-! ## A033881.P6426789193377273679

`A000203(A005101(n+1))-A224907(n+1)`
-/

namespace A033881.P6426789193377273679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A005101 (n + 1)).toNat - A224907 (n + 1)

end

end A033881.P6426789193377273679

namespace A033881

/-- `A000203(A005101(n+1))-A224907(n+1)` -/
def P6426789193377273679.Spec : Prop :=
  ∀ n, P6426789193377273679.a n = A033881 (n + 1)

end A033881

/-! ## A033881.P4819822043906210375

`A000203(A224907(n+1)/2)-A224907(n+1)`
-/

namespace A033881.P4819822043906210375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway ((A224907 (n + 1) : ℚ) / 2)).toNat - A224907 (n + 1)

end

end A033881.P4819822043906210375

namespace A033881

/-- `A000203(A224907(n+1)/2)-A224907(n+1)` -/
def P4819822043906210375.Spec : Prop :=
  ∀ n, P4819822043906210375.a n = A033881 (n + 1)

end A033881

/-! ## A033881.P18093282464091543876

`A000203(lt[2*(n+1), A000203(n+1)]+1)-A224907(n+1)`
-/

namespace A033881.P18093282464091543876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - A224907 (n + 1)

end

end A033881.P18093282464091543876

namespace A033881

/-- `A000203(lt[2*(n+1), A000203(n+1)]+1)-A224907(n+1)` -/
def P18093282464091543876.Spec : Prop :=
  ∀ n, P18093282464091543876.a n = A033881 (n + 1)

end A033881

/-! ## A033881.P711405717347648391

`A000203(A005101(n+1))-2*(lt[2*(n+1), A000203(n+1)]+1)`
-/

namespace A033881.P711405717347648391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A005101 (n + 1)).toNat - (2 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) : ℤ)

end

end A033881.P711405717347648391

namespace A033881

/-- `A000203(A005101(n+1))-2*(lt[2*(n+1), A000203(n+1)]+1)` -/
def P711405717347648391.Spec : Prop :=
  ∀ n, P711405717347648391.a n = A033881 (n + 1)

end A033881

/-! ## A033881.P9766735749968624053

`A000007(n+1)-A033879(A005101(n+1))`
-/

namespace A033881.P9766735749968624053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A033879 (A005101 (n + 1)).toNat

end

end A033881.P9766735749968624053

namespace A033881

/-- `A000007(n+1)-A033879(A005101(n+1))` -/
def P9766735749968624053.Spec : Prop :=
  ∀ n, P9766735749968624053.a n = A033881 (n + 1)

theorem P9766735749968624053.correct : P9766735749968624053.Spec := by
  intro n
  simp only [A033881, Nat.add_sub_cancel, A033881.P9766735749968624053.a, A033881.P3139120918464982481.a, A000007, A000007.P6599383543502402472.a, A005101, A005101.P6705997063366613997.f1, A005101.P6705997063366613997.f2, A005101.P6705997063366613997.a, A033879, A033879.P11735613842914743111.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, A082551, A082551.P4316828637772613674.f1, A082551.P4316828637772613674.f2, A082551.P4316828637772613674.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033881

/-! ## A033881.P9378883133813848798

`A001065(gcd(n, n+1))-A033879(A005101(n+1))`
-/

namespace A033881.P9378883133813848798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (Nat.gcd n (n + 1)) - A033879 (A005101 (n + 1)).toNat

end

end A033881.P9378883133813848798

namespace A033881

/-- `A001065(gcd(n, n+1))-A033879(A005101(n+1))` -/
def P9378883133813848798.Spec : Prop :=
  ∀ n, P9378883133813848798.a n = A033881 (n + 1)

end A033881

/-! ## A033881.P13873130233871802926

`A000203(eq[1, A294937(n+1)]+1)-A224907(n+1)`
-/

namespace A033881.P13873130233871802926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) - A224907 (n + 1)

end

end A033881.P13873130233871802926

namespace A033881

/-- `A000203(eq[1, A294937(n+1)]+1)-A224907(n+1)` -/
def P13873130233871802926.Spec : Prop :=
  ∀ n, P13873130233871802926.a n = A033881 (n + 1)

end A033881

/-! ## A033881.P11084336096987648069

`A033880(lt[0, A033880(n+1)]+1)`
-/

namespace A033881.P11084336096987648069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A033881.P11084336096987648069

namespace A033881

/-- `A033880(lt[0, A033880(n+1)]+1)` -/
def P11084336096987648069.Spec : Prop :=
  ∀ n, P11084336096987648069.a n = A033881 (n + 1)

end A033881

/-! ## A033881.P12679022278673985255

`A237588(lt[2*(n+1), A000203(n+1)]+1)-1`
-/

namespace A033881.P12679022278673985255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - 1

end

end A033881.P12679022278673985255

namespace A033881

/-- `A237588(lt[2*(n+1), A000203(n+1)]+1)-1` -/
def P12679022278673985255.Spec : Prop :=
  ∀ n, P12679022278673985255.a n = A033881 (n + 1)

end A033881

/-! ## A033881.P11292135963167807902

`A000203(lt[n+1, A001065(n+1)]+1)-A224907(n+1)`
-/

namespace A033881.P11292135963167807902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - A224907 (n + 1)

end

end A033881.P11292135963167807902

namespace A033881

/-- `A000203(lt[n+1, A001065(n+1)]+1)-A224907(n+1)` -/
def P11292135963167807902.Spec : Prop :=
  ∀ n, P11292135963167807902.a n = A033881 (n + 1)

end A033881

/-! ## A033881.P15685523101650557465

`A001065(lt[2*(n+1), A000203(n+1)]+1)-A005101(n+1)`
-/

namespace A033881.P15685523101650557465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - A005101 (n + 1)

end

end A033881.P15685523101650557465

namespace A033881

/-- `A001065(lt[2*(n+1), A000203(n+1)]+1)-A005101(n+1)` -/
def P15685523101650557465.Spec : Prop :=
  ∀ n, P15685523101650557465.a n = A033881 (n + 1)

end A033881

/-!
# A033882: Abundancy of the abundant or perfect numbers: m = sigma(k)-2k for n such that m >= 0.

The programs for A033882, the canonical program `A033882.P18084102587079416063` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033882 has offset 1).

The definition of A033882 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A023196, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A033882.P18084102587079416063

`A033880(A023196(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A033882

/-- `A033880(A023196(n+1))` -/
def P18084102587079416063.Spec : Prop :=
  ∀ n, P18084102587079416063.a n = A033882 (n + 1)

theorem P18084102587079416063.correct : P18084102587079416063.Spec := by
  intro n
  simp only [A033882, Nat.add_sub_cancel]

end A033882

/-! ## A033882.P12771198010782003140

`abs(A033879(lt[A033879(n+1), 1]+1))`
-/

namespace A033882.P12771198010782003140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033879 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)|

end

end A033882.P12771198010782003140

namespace A033882

/-- `abs(A033879(lt[A033879(n+1), 1]+1))` -/
def P12771198010782003140.Spec : Prop :=
  ∀ n, P12771198010782003140.a n = A033882 (n + 1)

end A033882

/-! ## A033882.P7945257113446254108

`∑{d}[A033879(A023196(n+1)), A000010(#)]`
-/

namespace A033882.P7945257113446254108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A023196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A033882.P7945257113446254108

namespace A033882

/-- `∑{d}[A033879(A023196(n+1)), A000010(#)]` -/
def P7945257113446254108.Spec : Prop :=
  ∀ n, P7945257113446254108.a n = A033882 (n + 1)

end A033882

/-! ## A033882.P2622771321829410644

`A010873(4*n)-A033879(A023196(n+1))`
-/

namespace A033882.P2622771321829410644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (4 * n) - A033879 (A023196 (n + 1)).toNat

end

end A033882.P2622771321829410644

namespace A033882

/-- `A010873(4*n)-A033879(A023196(n+1))` -/
def P2622771321829410644.Spec : Prop :=
  ∀ n, P2622771321829410644.a n = A033882 (n + 1)

end A033882

/-! ## A033882.P15297630340446491575

`A256434(A020639(n+2))-A033879(A023196(n+1))`
-/

namespace A033882.P15297630340446491575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256434 (A020639 (n + 2)).toNat - A033879 (A023196 (n + 1)).toNat

end

end A033882.P15297630340446491575

namespace A033882

/-- `A256434(A020639(n+2))-A033879(A023196(n+1))` -/
def P15297630340446491575.Spec : Prop :=
  ∀ n, P15297630340446491575.a n = A033882 (n + 1)

end A033882

/-! ## A033882.P13696116822234187333

`A001065(A023196(n+1))-A023196(A000027(n+1))`
-/

namespace A033882.P13696116822234187333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A023196 (n + 1)).toNat - A023196 (A000027 (n + 1)).toNat

end

end A033882.P13696116822234187333

namespace A033882

/-- `A001065(A023196(n+1))-A023196(A000027(n+1))` -/
def P13696116822234187333.Spec : Prop :=
  ∀ n, P13696116822234187333.a n = A033882 (n + 1)

end A033882

/-! ## A033882.P6624221696863141895

`A256434(∑[n]+41)-A033879(A023196(n+1))`
-/

namespace A033882.P6624221696863141895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256434 (∑ j ∈ Finset.range (n + 1), f1 j + 41) - A033879 (A023196 (n + 1)).toNat

end

end A033882.P6624221696863141895

namespace A033882

/-- `A256434(∑[n]+41)-A033879(A023196(n+1))` -/
def P6624221696863141895.Spec : Prop :=
  ∀ n, P6624221696863141895.a n = A033882 (n + 1)

end A033882

/-!
# A033883: Deficiency of the deficient or perfect numbers: m = 2n - sigma(n) for n such that m >= 0.

The programs for A033883, the canonical program `A033883.P11300718746933929236` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033883 has offset 0).

The definition of A033883 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033883.P11300718746933929236

`A033879(A263837(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A033883

/-- `A033879(A263837(n+1))` -/
def P11300718746933929236.Spec : Prop :=
  ∀ n, P11300718746933929236.a n = A033883 n

theorem P11300718746933929236.correct : P11300718746933929236.Spec := by
  intro n
  simp only [A033883]

end A033883

/-! ## A033883.P8270429576724370593

`A103977(A263837(2*n+1-n))`
-/

namespace A033883.P8270429576724370593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (A263837 (2 * n + 1 - n)).toNat

end

end A033883.P8270429576724370593

namespace A033883

/-- `A103977(A263837(2*n+1-n))` -/
def P8270429576724370593.Spec : Prop :=
  ∀ n, P8270429576724370593.a n = A033883 n

end A033883

/-! ## A033883.P8023248446140541562

`A033879(record[n+1-A318679(n+1)])`
-/

namespace A033883.P8023248446140541562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A318679 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033883.P8023248446140541562

namespace A033883

/-- `A033879(record[n+1-A318679(n+1)])` -/
def P8023248446140541562.Spec : Prop :=
  ∀ n, P8023248446140541562.a n = A033883 n

end A033883

/-! ## A033883.P15557303178177535045

`A033879(record[(n+1)*A294935(n+1)])`
-/

namespace A033883.P15557303178177535045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294935 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033883.P15557303178177535045

namespace A033883

/-- `A033879(record[(n+1)*A294935(n+1)])` -/
def P15557303178177535045.Spec : Prop :=
  ∀ n, P15557303178177535045.a n = A033883 n

end A033883

/-! ## A033883.P17698672361565861193

`A033879(lt[A000203(n+1), 2*(n+2)]+1)`
-/

namespace A033883.P17698672361565861193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A033883.P17698672361565861193

namespace A033883

/-- `A033879(lt[A000203(n+1), 2*(n+2)]+1)` -/
def P17698672361565861193.Spec : Prop :=
  ∀ n, P17698672361565861193.a n = A033883 n

end A033883

/-! ## A033883.P1616839210987158495

`A033879(lt[A039653(n), 2*n])`
-/

namespace A033883.P1616839210987158495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A033883.P1616839210987158495

namespace A033883

/-- `A033879(lt[A039653(n), 2*n])` -/
def P1616839210987158495.Spec : Prop :=
  ∀ n, P1616839210987158495.a n = A033883 n

end A033883

/-! ## A033883.P15667382333895899475

`∑{d}[A263837(n+1), A083254(#)]`
-/

namespace A033883.P15667382333895899475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A083254 d

end

end A033883.P15667382333895899475

namespace A033883

/-- `∑{d}[A263837(n+1), A083254(#)]` -/
def P15667382333895899475.Spec : Prop :=
  ∀ n, P15667382333895899475.a n = A033883 n

end A033883

/-! ## A033883.P5710066399464245498

`A033879(lt[A039653(n)/2, n])`
-/

namespace A033883.P5710066399464245498
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039653 n : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A033883.P5710066399464245498

namespace A033883

/-- `A033879(lt[A039653(n)/2, n])` -/
def P5710066399464245498.Spec : Prop :=
  ∀ n, P5710066399464245498.a n = A033883 n

end A033883

/-! ## A033883.P14009285511372872089

`A033879(lt[A039653(n)-n, n])`
-/

namespace A033883.P14009285511372872089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A033883.P14009285511372872089

namespace A033883

/-- `A033879(lt[A039653(n)-n, n])` -/
def P14009285511372872089.Spec : Prop :=
  ∀ n, P14009285511372872089.a n = A033883 n

end A033883

/-! ## A033883.P4827487170392062346

`-A033880(A263837(xor(16, xor(16, n+1))))`
-/

namespace A033883.P4827487170392062346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A033880 (A263837 (Nat.xor 16 (Nat.xor 16 (n + 1)))).toNat

end

end A033883.P4827487170392062346

namespace A033883

/-- `-A033880(A263837(xor(16, xor(16, n+1))))` -/
def P4827487170392062346.Spec : Prop :=
  ∀ n, P4827487170392062346.a n = A033883 n

end A033883

/-! ## A033883.P2020787674828223960

`-A033880(A263837(gcd(n, n+1)+n))`
-/

namespace A033883.P2020787674828223960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A033880 (A263837 (Nat.gcd n (n + 1) + n)).toNat

end

end A033883.P2020787674828223960

namespace A033883

/-- `-A033880(A263837(gcd(n, n+1)+n))` -/
def P2020787674828223960.Spec : Prop :=
  ∀ n, P2020787674828223960.a n = A033883 n

end A033883

/-! ## A033883.P10499237289953411785

`A033879(lt[A088580(n+1)/2, n+2]+1)`
-/

namespace A033883.P10499237289953411785
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088580 (n + 1) : ℚ) / 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1)

end

end A033883.P10499237289953411785

namespace A033883

/-- `A033879(lt[A088580(n+1)/2, n+2]+1)` -/
def P10499237289953411785.Spec : Prop :=
  ∀ n, P10499237289953411785.a n = A033883 n

end A033883

/-! ## A033883.P7721325198386369690

`∑{d}[A033880(A263837(n+1)), A000010(#)]`
-/

namespace A033883.P7721325198386369690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A263837 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A033883.P7721325198386369690

namespace A033883

/-- `∑{d}[A033880(A263837(n+1)), A000010(#)]` -/
def P7721325198386369690.Spec : Prop :=
  ∀ n, P7721325198386369690.a n = A033883 n

end A033883

/-! ## A033883.P2227144757534659659

`lt[A000203(n+1), 2*(n+2)]+1-A001065(A263837(n+1))`
-/

namespace A033883.P2227144757534659659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1 : ℤ) - A001065 (A263837 (n + 1)).toNat

end

end A033883.P2227144757534659659

namespace A033883

/-- `lt[A000203(n+1), 2*(n+2)]+1-A001065(A263837(n+1))` -/
def P2227144757534659659.Spec : Prop :=
  ∀ n, P2227144757534659659.a n = A033883 n

end A033883

/-! ## A033883.P2453807183934168138

`-A033880(A263837(n+1))%A054280(n+1)`
-/

namespace A033883.P2453807183934168138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-A033880 (A263837 (n + 1)).toNat) (A054280 (n + 1))

end

end A033883.P2453807183934168138

namespace A033883

/-- `-A033880(A263837(n+1))%A054280(n+1)` -/
def P2453807183934168138.Spec : Prop :=
  ∀ n, P2453807183934168138.a n = A033883 n

end A033883

/-!
# A033884: Deficiency of n-th deficient number: 2k - sigma(k) for k such that this is > 0.

The programs for A033884, the canonical program `A033884.P16185199075458043016` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033884 has offset 1).

The definition of A033884 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A033884.P16185199075458043016

`A033879(A005100(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A033884

/-- `A033879(A005100(n+1))` -/
def P16185199075458043016.Spec : Prop :=
  ∀ n, P16185199075458043016.a n = A033884 (n + 1)

theorem P16185199075458043016.correct : P16185199075458043016.Spec := by
  intro n
  simp only [A033884, Nat.add_sub_cancel]

end A033884

/-! ## A033884.P7198662811587864403

`A033879(record[n-A082551(n+1)])`
-/

namespace A033884.P7198662811587864403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A082551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A033884.P7198662811587864403

namespace A033884

/-- `A033879(record[n-A082551(n+1)])` -/
def P7198662811587864403.Spec : Prop :=
  ∀ n, P7198662811587864403.a n = A033884 (n + 1)

end A033884

/-! ## A033884.P18297479370534097993

`A033879(lt[A060862(n+1), 1]+1)`
-/

namespace A033884.P18297479370534097993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A033884.P18297479370534097993

namespace A033884

/-- `A033879(lt[A060862(n+1), 1]+1)` -/
def P18297479370534097993.Spec : Prop :=
  ∀ n, P18297479370534097993.a n = A033884 (n + 1)

end A033884

/-! ## A033884.P14653977637402731700

`A033879(lt[A294936(n+1), 1]+1)`
-/

namespace A033884.P14653977637402731700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A033884.P14653977637402731700

namespace A033884

/-- `A033879(lt[A294936(n+1), 1]+1)` -/
def P14653977637402731700.Spec : Prop :=
  ∀ n, P14653977637402731700.a n = A033884 (n + 1)

end A033884

/-! ## A033884.P4261245708616778160

`A033879(lt[A337690(n+1), 1]+1)`
-/

namespace A033884.P4261245708616778160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337690 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A033884.P4261245708616778160

namespace A033884

/-- `A033879(lt[A337690(n+1), 1]+1)` -/
def P4261245708616778160.Spec : Prop :=
  ∀ n, P4261245708616778160.a n = A033884 (n + 1)

end A033884

/-! ## A033884.P12861471676139057297

`A033879(lt[A341620(n+1), 1]+1)`
-/

namespace A033884.P12861471676139057297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A033884.P12861471676139057297

namespace A033884

/-- `A033879(lt[A341620(n+1), 1]+1)` -/
def P12861471676139057297.Spec : Prop :=
  ∀ n, P12861471676139057297.a n = A033884 (n + 1)

end A033884

/-! ## A033884.P11789698182544286692

`A005100(n+1)-A205099(n+1)`
-/

namespace A033884.P11789698182544286692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1) - A205099 (n + 1)

end

end A033884.P11789698182544286692

namespace A033884

/-- `A005100(n+1)-A205099(n+1)` -/
def P11789698182544286692.Spec : Prop :=
  ∀ n, P11789698182544286692.a n = A033884 (n + 1)

end A033884

/-! ## A033884.P6193581196042496866

`A225241(n+1)-A204823(n+1)`
-/

namespace A033884.P6193581196042496866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225241 (n + 1) - A204823 (n + 1)

end

end A033884.P6193581196042496866

namespace A033884

/-- `A225241(n+1)-A204823(n+1)` -/
def P6193581196042496866.Spec : Prop :=
  ∀ n, P6193581196042496866.a n = A033884 (n + 1)

end A033884

/-! ## A033884.P7133927705372875218

`A103977(A005100(2*n+1-n))`
-/

namespace A033884.P7133927705372875218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103977 (A005100 (2 * n + 1 - n)).toNat

end

end A033884.P7133927705372875218

namespace A033884

/-- `A103977(A005100(2*n+1-n))` -/
def P7133927705372875218.Spec : Prop :=
  ∀ n, P7133927705372875218.a n = A033884 (n + 1)

end A033884

/-! ## A033884.P3487721990682076234

`record[A125746(n+1)]-A205099(n+1)`
-/

namespace A033884.P3487721990682076234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A205099 (n + 1)

end

end A033884.P3487721990682076234

namespace A033884

/-- `record[A125746(n+1)]-A205099(n+1)` -/
def P3487721990682076234.Spec : Prop :=
  ∀ n, P3487721990682076234.a n = A033884 (n + 1)

end A033884

/-! ## A033884.P5404273167838746895

`2*A005100(n+1)-A204823(n+1)`
-/

namespace A033884.P5404273167838746895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005100 (n + 1) - A204823 (n + 1)

end

end A033884.P5404273167838746895

namespace A033884

/-- `2*A005100(n+1)-A204823(n+1)` -/
def P5404273167838746895.Spec : Prop :=
  ∀ n, P5404273167838746895.a n = A033884 (n + 1)

end A033884

/-! ## A033884.P10538619283435681216

`A204823(n+1)-2*A205099(n+1)`
-/

namespace A033884.P10538619283435681216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204823 (n + 1) - 2 * A205099 (n + 1)

end

end A033884.P10538619283435681216

namespace A033884

/-- `A204823(n+1)-2*A205099(n+1)` -/
def P10538619283435681216.Spec : Prop :=
  ∀ n, P10538619283435681216.a n = A033884 (n + 1)

end A033884

/-! ## A033884.P18180084688716237035

`A033879(lt[A000203(abs(1-n)+1), 2*n])`
-/

namespace A033884.P18180084688716237035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A033884.P18180084688716237035

namespace A033884

/-- `A033879(lt[A000203(abs(1-n)+1), 2*n])` -/
def P18180084688716237035.Spec : Prop :=
  ∀ n, P18180084688716237035.a n = A033884 (n + 1)

end A033884

/-! ## A033884.P11924797280858044184

`A033879(lt[A000203(n+1), 2*(n+1)]+1)`
-/

namespace A033884.P11924797280858044184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A033884.P11924797280858044184

namespace A033884

/-- `A033879(lt[A000203(n+1), 2*(n+1)]+1)` -/
def P11924797280858044184.Spec : Prop :=
  ∀ n, P11924797280858044184.a n = A033884 (n + 1)

end A033884

/-! ## A033884.P2773834503677116232

`2*(lt[A341620(n+1), 1]+1)-A204823(n+1)`
-/

namespace A033884.P2773834503677116232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) : ℤ) - A204823 (n + 1)

end

end A033884.P2773834503677116232

namespace A033884

/-- `2*(lt[A341620(n+1), 1]+1)-A204823(n+1)` -/
def P2773834503677116232.Spec : Prop :=
  ∀ n, P2773834503677116232.a n = A033884 (n + 1)

end A033884

/-! ## A033884.P5290264570419793642

`A225241(n+1)-A000203(A005100(n+1))`
-/

namespace A033884.P5290264570419793642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225241 (n + 1) - A000203 (A005100 (n + 1)).toNat

end

end A033884.P5290264570419793642

namespace A033884

/-- `A225241(n+1)-A000203(A005100(n+1))` -/
def P5290264570419793642.Spec : Prop :=
  ∀ n, P5290264570419793642.a n = A033884 (n + 1)

end A033884

/-! ## A033884.P10106938502960654932

`A033879(lt[A064987(n+1), 2*(n+1)²]+1)`
-/

namespace A033884.P10106938502960654932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064987 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A033884.P10106938502960654932

namespace A033884

/-- `A033879(lt[A064987(n+1), 2*(n+1)²]+1)` -/
def P10106938502960654932.Spec : Prop :=
  ∀ n, P10106938502960654932.a n = A033884 (n + 1)

end A033884

/-! ## A033884.P12446685430210081897

`A001065(gcd(n, n+1))-A033880(A005100(n+1))`
-/

namespace A033884.P12446685430210081897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (Nat.gcd n (n + 1)) - A033880 (A005100 (n + 1)).toNat

end

end A033884.P12446685430210081897

namespace A033884

/-- `A001065(gcd(n, n+1))-A033880(A005100(n+1))` -/
def P12446685430210081897.Spec : Prop :=
  ∀ n, P12446685430210081897.a n = A033884 (n + 1)

end A033884

/-! ## A033884.P4602409639634669231

`A326068(A225241(n+1))`
-/

namespace A033884.P4602409639634669231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326068 (A225241 (n + 1)).toNat

end

end A033884.P4602409639634669231

namespace A033884

/-- `A326068(A225241(n+1))` -/
def P4602409639634669231.Spec : Prop :=
  ∀ n, P4602409639634669231.a n = A033884 (n + 1)

end A033884

/-! ## A033884.P4749077526960882297

`A326068(2*A005100(n+1))`
-/

namespace A033884.P4749077526960882297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326068 (2 * A005100 (n + 1)).toNat

end

end A033884.P4749077526960882297

namespace A033884

/-- `A326068(2*A005100(n+1))` -/
def P4749077526960882297.Spec : Prop :=
  ∀ n, P4749077526960882297.a n = A033884 (n + 1)

end A033884

/-!
# A033885: a(n) = 3*n - sum of divisors of n.

The programs for A033885, the canonical program `A033885.P17185518779977576955` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033885 has offset 1).

The definition of A033885 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033885.P17185518779977576955

`A008585(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A033885

/-- `A008585(n+1)-A000203(n+1)` -/
def P17185518779977576955.Spec : Prop :=
  ∀ n, P17185518779977576955.a n = A033885 (n + 1)

theorem P17185518779977576955.correct : P17185518779977576955.Spec := by
  intro n
  simp only [A033885, Nat.add_sub_cancel]

end A033885

/-! ## A033885.P1100004503983371982

`3*(n+1)-∑{d}[n+1, #]`
-/

namespace A033885.P1100004503983371982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A033885.P1100004503983371982

namespace A033885

/-- `3*(n+1)-∑{d}[n+1, #]` -/
def P1100004503983371982.Spec : Prop :=
  ∀ n, P1100004503983371982.a n = A033885 (n + 1)

theorem P1100004503983371982.correct : P1100004503983371982.Spec := by
  intro n
  simp only [A033885, Nat.add_sub_cancel, A033885.P1100004503983371982.f1, A033885.P1100004503983371982.a, A033885.P17185518779977576955.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008585, A008585.P13732812384316341435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033885

/-! ## A033885.P2927119220941074232

`∑[3-(∑{d}[n+1, #]-∑{d}[n, #])]`
-/

namespace A033885.P2927119220941074232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (((∑ d ∈ Nat.divisors (f2 n), d : ℕ) : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033885.P2927119220941074232

namespace A033885

/-- `∑[3-(∑{d}[n+1, #]-∑{d}[n, #])]` -/
def P2927119220941074232.Spec : Prop :=
  ∀ n, P2927119220941074232.a n = A033885 (n + 1)

end A033885

/-! ## A033885.P17223162631238366827

`2-(∑{d}[n+1, #]-Δ[n²])+n`
-/

namespace A033885.P17223162631238366827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))) + (n : ℤ)

end

end A033885.P17223162631238366827

namespace A033885

/-- `2-(∑{d}[n+1, #]-Δ[n²])+n` -/
def P17223162631238366827.Spec : Prop :=
  ∀ n, P17223162631238366827.a n = A033885 (n + 1)

theorem P17223162631238366827.correct : P17223162631238366827.Spec := by
  intro n
  simp only [A033885, Nat.add_sub_cancel, A033885.P17223162631238366827.f1, A033885.P17223162631238366827.f2, A033885.P17223162631238366827.a, A033885.P17185518779977576955.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008585, A008585.P13732812384316341435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033885

/-! ## A033885.P15683785708982882985

`A353190(n+1)+1`
-/

namespace A033885.P15683785708982882985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353190 (n + 1) + 1

end

end A033885.P15683785708982882985

namespace A033885

/-- `A353190(n+1)+1` -/
def P15683785708982882985.Spec : Prop :=
  ∀ n, P15683785708982882985.a n = A033885 (n + 1)

theorem P15683785708982882985.correct : P15683785708982882985.Spec := by
  intro n
  simp only [A033885, Nat.add_sub_cancel, A033885.P15683785708982882985.a, A033885.P17185518779977576955.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008585, A008585.P13732812384316341435.a, A353190, A353190.P11422691785722745783.a, A001065, A001065.P4097147489331274860.a, A005408, A005408.P17437947328870227736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033885

/-! ## A033885.P7064797792723530896

`∑[3-A340793(n+1)]`
-/

namespace A033885.P7064797792723530896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033885.P7064797792723530896

namespace A033885

/-- `∑[3-A340793(n+1)]` -/
def P7064797792723530896.Spec : Prop :=
  ∀ n, P7064797792723530896.a n = A033885 (n + 1)

end A033885

/-! ## A033885.P7606734047577881126

`Δ[A111490(n)]+n+1`
-/

namespace A033885.P7606734047577881126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℤ)

end

end A033885.P7606734047577881126

namespace A033885

/-- `Δ[A111490(n)]+n+1` -/
def P7606734047577881126.Spec : Prop :=
  ∀ n, P7606734047577881126.a n = A033885 (n + 1)

end A033885

/-! ## A033885.P14988731436206809254

`n+1+A033879(n+1)`
-/

namespace A033885.P14988731436206809254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A033879 (n + 1)

end

end A033885.P14988731436206809254

namespace A033885

/-- `n+1+A033879(n+1)` -/
def P14988731436206809254.Spec : Prop :=
  ∀ n, P14988731436206809254.a n = A033885 (n + 1)

theorem P14988731436206809254.correct : P14988731436206809254.Spec := by
  intro n
  simp only [A033885, Nat.add_sub_cancel, A033885.P14988731436206809254.a, A033885.P17185518779977576955.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008585, A008585.P13732812384316341435.a, A033879, A033879.P11735613842914743111.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033885

/-! ## A033885.P17253713055563943599

`1-A033880(n+1)+n`
-/

namespace A033885.P17253713055563943599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033880 (n + 1) + (n : ℤ)

end

end A033885.P17253713055563943599

namespace A033885

/-- `1-A033880(n+1)+n` -/
def P17253713055563943599.Spec : Prop :=
  ∀ n, P17253713055563943599.a n = A033885 (n + 1)

theorem P17253713055563943599.correct : P17253713055563943599.Spec := by
  intro n
  simp only [A033885, Nat.add_sub_cancel, A033885.P17253713055563943599.a, A033885.P17185518779977576955.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008585, A008585.P13732812384316341435.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033885

/-! ## A033885.P3585539381738264472

`A235796(n+1)+2+n`
-/

namespace A033885.P3585539381738264472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1) + 2 + (n : ℤ)

end

end A033885.P3585539381738264472

namespace A033885

/-- `A235796(n+1)+2+n` -/
def P3585539381738264472.Spec : Prop :=
  ∀ n, P3585539381738264472.a n = A033885 (n + 1)

theorem P3585539381738264472.correct : P3585539381738264472.Spec := by
  intro n
  simp only [A033885, Nat.add_sub_cancel, A033885.P3585539381738264472.a, A033885.P17185518779977576955.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008585, A008585.P13732812384316341435.a, A235796, A235796.P10282550748648679139.a, A033879, A033879.P11735613842914743111.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033885

/-! ## A033885.P16697792547183074693

`2-A237588(n+1)+n`
-/

namespace A033885.P16697792547183074693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A237588 (n + 1) + (n : ℤ)

end

end A033885.P16697792547183074693

namespace A033885

/-- `2-A237588(n+1)+n` -/
def P16697792547183074693.Spec : Prop :=
  ∀ n, P16697792547183074693.a n = A033885 (n + 1)

theorem P16697792547183074693.correct : P16697792547183074693.Spec := by
  intro n
  simp only [A033885, Nat.add_sub_cancel, A033885.P16697792547183074693.a, A033885.P17185518779977576955.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008585, A008585.P13732812384316341435.a, A237588, A237588.P7919289499905681947.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033885

/-! ## A033885.P4186458252455519606

`A024816(n+1)+∑[2-n]`
-/

namespace A033885.P4186458252455519606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024816 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033885.P4186458252455519606

namespace A033885

/-- `A024816(n+1)+∑[2-n]` -/
def P4186458252455519606.Spec : Prop :=
  ∀ n, P4186458252455519606.a n = A033885 (n + 1)

end A033885

/-! ## A033885.P13642338472589257446

`2*(n+1)-A001065(n+1)`
-/

namespace A033885.P13642338472589257446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A001065 (n + 1)

end

end A033885.P13642338472589257446

namespace A033885

/-- `2*(n+1)-A001065(n+1)` -/
def P13642338472589257446.Spec : Prop :=
  ∀ n, P13642338472589257446.a n = A033885 (n + 1)

theorem P13642338472589257446.correct : P13642338472589257446.Spec := by
  intro n
  simp only [A033885, Nat.add_sub_cancel, A033885.P13642338472589257446.a, A033885.P17185518779977576955.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A008585, A008585.P13732812384316341435.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033885

/-! ## A033885.P13412099790446829864

`4*(n+1)-A155085(n+1)`
-/

namespace A033885.P13412099790446829864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * (n + 1) : ℤ) - A155085 (n + 1)

end

end A033885.P13412099790446829864

namespace A033885

/-- `4*(n+1)-A155085(n+1)` -/
def P13412099790446829864.Spec : Prop :=
  ∀ n, P13412099790446829864.a n = A033885 (n + 1)

theorem P13412099790446829864.correct : P13412099790446829864.Spec := by
  intro n
  simp only [A033885, Nat.add_sub_cancel, A033885.P13412099790446829864.a, A033885.P17185518779977576955.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008585, A008585.P13732812384316341435.a, A155085, A155085.P3282672389110014595.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033885

/-! ## A033885.P11249543546771597382

`5*(n+1)-A224880(n+1)`
-/

namespace A033885.P11249543546771597382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) : ℤ) - A224880 (n + 1)

end

end A033885.P11249543546771597382

namespace A033885

/-- `5*(n+1)-A224880(n+1)` -/
def P11249543546771597382.Spec : Prop :=
  ∀ n, P11249543546771597382.a n = A033885 (n + 1)

theorem P11249543546771597382.correct : P11249543546771597382.Spec := by
  intro n
  simp only [A033885, Nat.add_sub_cancel, A033885.P11249543546771597382.a, A033885.P17185518779977576955.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008585, A008585.P13732812384316341435.a, A224880, A224880.P6096983120324589862.a, A033879, A033879.P11735613842914743111.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033885

/-! ## A033885.P15789021061133043392

`a(n-1)+3-A053222(n)` with `a(0)=2`
-/

namespace A033885.P15789021061133043392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (3 - A053222 n)

end

end A033885.P15789021061133043392

namespace A033885

/-- `a(n-1)+3-A053222(n)` -/
def P15789021061133043392.Spec : Prop :=
  ∀ n, P15789021061133043392.a n = A033885 (n + 1)

theorem P15789021061133043392.correct : P15789021061133043392.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A033885, Nat.add_sub_cancel, A033885.P15789021061133043392.a, A033885.P17185518779977576955.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008585, A008585.P13732812384316341435.a, A053222, A053222.P10935068220858784370.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A033885, Nat.add_sub_cancel, A033885.P15789021061133043392.a, A033885.P17185518779977576955.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008585, A008585.P13732812384316341435.a, A053222, A053222.P10935068220858784370.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A033885

/-! ## A033885.P12683011309087813223

`∑{d}[n+1, 3*A000010(#)-#]`
-/

namespace A033885.P12683011309087813223
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (3 * A000010 d - (d : ℤ))

end

end A033885.P12683011309087813223

namespace A033885

/-- `∑{d}[n+1, 3*A000010(#)-#]` -/
def P12683011309087813223.Spec : Prop :=
  ∀ n, P12683011309087813223.a n = A033885 (n + 1)

end A033885

/-! ## A033885.P1447311623789119727

`A016789(n)-A039653(n+1)`
-/

namespace A033885.P1447311623789119727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n - A039653 (n + 1)

end

end A033885.P1447311623789119727

namespace A033885

/-- `A016789(n)-A039653(n+1)` -/
def P1447311623789119727.Spec : Prop :=
  ∀ n, P1447311623789119727.a n = A033885 (n + 1)

end A033885

/-! ## A033885.P15294481639657905989

`A152864(n+1)+A062968(n+1)`
-/

namespace A033885.P15294481639657905989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152864 (n + 1) + A062968 (n + 1)

end

end A033885.P15294481639657905989

namespace A033885

/-- `A152864(n+1)+A062968(n+1)` -/
def P15294481639657905989.Spec : Prop :=
  ∀ n, P15294481639657905989.a n = A033885 (n + 1)

theorem P15294481639657905989.correct : P15294481639657905989.Spec := by
  intro n
  simp only [A033885, Nat.add_sub_cancel, A033885.P15294481639657905989.a, A033885.P17185518779977576955.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A008585, A008585.P13732812384316341435.a, A062968, A062968.P12745258028289340812.a, A152864, A152864.P17433297577997831622.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A033879, A033879.P11735613842914743111.a, A049820, A049820.P9428372222244335888.a, A000005, A000005.P16091521709108585461.a, A033880, A033880.P6005875780263802708.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033885

/-! ## A033885.P7605592593715071617

`A117966(A295882(n+1))+n+1`
-/

namespace A033885.P7605592593715071617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A295882 (n + 1)).toNat + (n + 1 : ℤ)

end

end A033885.P7605592593715071617

namespace A033885

/-- `A117966(A295882(n+1))+n+1` -/
def P7605592593715071617.Spec : Prop :=
  ∀ n, P7605592593715071617.a n = A033885 (n + 1)

end A033885

/-!
# A033886: Number of connected 4-regular simple graphs on n vertices with girth at least 4.

The programs for A033886, there is no canonical definition to state claims against.
-/

/-! ## A033886.P16156988569867862085

`A184944(n)+A058343(n)`
-/

namespace A033886.P16156988569867862085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184944 n + A058343 n

end

end A033886.P16156988569867862085

/-! ## A033886.P8715517962596134730

`A006820(n)-A184943(n)`
-/

namespace A033886.P8715517962596134730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006820 n - A184943 n

end

end A033886.P8715517962596134730

/-! ## A033886.P14241076276194096191

`A185344(n)-A185044(n)`
-/

namespace A033886.P14241076276194096191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185344 n - A185044 n

end

end A033886.P14241076276194096191

/-! ## A033886.P10363570008710776237

`A068934(A077169(n))-A184943(n)`
-/

namespace A033886.P10363570008710776237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068934 (A077169 n).toNat - A184943 n

end

end A033886.P10363570008710776237

/-! ## A033886.P15352927523446182563

`A058348(n)+A184945(n)+A184944(n)`
-/

namespace A033886.P15352927523446182563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 n + (A184945 n + A184944 n)

end

end A033886.P15352927523446182563

/-!
# A033887: a(n) = Fibonacci(3*n + 1).

The programs for A033887, the canonical program `A033887.P16222940499921991162` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033887 has offset 0).

The definition of A033887 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033887.P16222940499921991162

`4*a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033887

/-- `4*a(n-1)+a(n-2)` -/
def P16222940499921991162.Spec : Prop :=
  ∀ n, (P16222940499921991162.a n : ℤ) = A033887 n

theorem P16222940499921991162.correct : P16222940499921991162.Spec := by
  intro n
  simp only [A033887]

end A033887

/-! ## A033887.P8634766098715130849

`2*A049651(n)+1`
-/

namespace A033887.P8634766098715130849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049651 n + 1

end

end A033887.P8634766098715130849

namespace A033887

/-- `2*A049651(n)+1` -/
def P8634766098715130849.Spec : Prop :=
  ∀ n, P8634766098715130849.a n = A033887 n

end A033887

/-! ## A033887.P17480442589400428578

`A167808(3*n+1)`
-/

namespace A033887.P17480442589400428578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 (3 * n + 1)

end

end A033887.P17480442589400428578

namespace A033887

/-- `A167808(3*n+1)` -/
def P17480442589400428578.Spec : Prop :=
  ∀ n, P17480442589400428578.a n = A033887 n

end A033887

/-! ## A033887.P4587195269805493008

`A000045(A016777(n))`
-/

namespace A033887.P4587195269805493008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A016777 n).toNat

end

end A033887.P4587195269805493008

namespace A033887

/-- `A000045(A016777(n))` -/
def P4587195269805493008.Spec : Prop :=
  ∀ n, P4587195269805493008.a n = A033887 n

end A033887

/-! ## A033887.P8963102772492415177

`A001076(n)+A001077(n)`
-/

namespace A033887.P8963102772492415177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 n + A001077 n

end

end A033887.P8963102772492415177

namespace A033887

/-- `A001076(n)+A001077(n)` -/
def P8963102772492415177.Spec : Prop :=
  ∀ n, P8963102772492415177.a n = A033887 n

end A033887

/-! ## A033887.P11136553636818181853

`A001076(n+1)-A001076(n)`
-/

namespace A033887.P11136553636818181853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 (n + 1) - A001076 n

end

end A033887.P11136553636818181853

namespace A033887

/-- `A001076(n+1)-A001076(n)` -/
def P11136553636818181853.Spec : Prop :=
  ∀ n, P11136553636818181853.a n = A033887 n

end A033887

/-! ## A033887.P16682561863398010247

`((1+sqrt(5))*(2+sqrt(5))^n-(1-sqrt(5))*(2-sqrt(5))^n)/(2*sqrt(5))`
-/

namespace A033887.P16682561863398010247
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (5 : ℝ)) * (2 + Real.sqrt (5 : ℝ)) ^ n - (1 - Real.sqrt (5 : ℝ)) * (2 - Real.sqrt (5 : ℝ)) ^ n) / (2 * Real.sqrt (5 : ℝ))

end

end A033887.P16682561863398010247

namespace A033887

/-- `((1+sqrt(5))*(2+sqrt(5))^n-(1-sqrt(5))*(2-sqrt(5))^n)/(2*sqrt(5))` -/
def P16682561863398010247.Spec : Prop :=
  ∀ n, P16682561863398010247.a n = (A033887 n : ℝ)

theorem P16682561863398010247.correct : P16682561863398010247.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A033887, Nat.add_sub_cancel, A033887.P16682561863398010247.a, A033887.P16222940499921991162.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A033887, Nat.add_sub_cancel, A033887.P16682561863398010247.a, A033887.P16222940499921991162.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A033887

/-! ## A033887.P15480190580534811997

`ogf((-1+x)/(-1+4x+x^2))`
-/

namespace A033887.P15480190580534811997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -4, -1] n

end

end A033887.P15480190580534811997

namespace A033887

/-- `ogf((-1+x)/(-1+4x+x^2))` -/
def P15480190580534811997.Spec : Prop :=
  ∀ n, P15480190580534811997.a n = A033887 n

end A033887

/-! ## A033887.P12274435942880510342

`round(ϕ^3*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A033887.P12274435942880510342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 3 * (a (n - 1) : ℝ))

end

end A033887.P12274435942880510342

namespace A033887

/-- `round(ϕ^3*a(n-1))` -/
def P12274435942880510342.Spec : Prop :=
  ∀ n, P12274435942880510342.a n = A033887 n

end A033887

/-! ## A033887.P10130627530151619368

`a(n-2)+lcm(4, a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A033887.P10130627530151619368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + Nat.lcm 4 (a (n - 1))

end

end A033887.P10130627530151619368

namespace A033887

/-- `a(n-2)+lcm(4, a(n-1))` -/
def P10130627530151619368.Spec : Prop :=
  ∀ n, (P10130627530151619368.a n : ℤ) = A033887 n

end A033887

/-! ## A033887.P3847638129484315412

`a(n-2)+a(n-1)/(1/2)²` with `a(0)=1, a(1)=3`
-/

namespace A033887.P3847638129484315412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 2) + a (n - 1) / ((1 : ℚ) / 2) ^ 2

end

end A033887.P3847638129484315412

namespace A033887

/-- `a(n-2)+a(n-1)/(1/2)²` -/
def P3847638129484315412.Spec : Prop :=
  ∀ n, P3847638129484315412.a n = (A033887 n : ℚ)

end A033887

/-! ## A033887.P13930922025324509313

`4-(4*(1-a(n-1))-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A033887.P13930922025324509313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 - (4 * (1 - a (n - 1)) - a (n - 2))

end

end A033887.P13930922025324509313

namespace A033887

/-- `4-(4*(1-a(n-1))-a(n-2))` -/
def P13930922025324509313.Spec : Prop :=
  ∀ n, P13930922025324509313.a n = A033887 n

end A033887

/-! ## A033887.P9814642326319037637

`a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A033887.P9814642326319037637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + a (n - 2))))

end

end A033887.P9814642326319037637

namespace A033887

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-2)` -/
def P9814642326319037637.Spec : Prop :=
  ∀ n, (P9814642326319037637.a n : ℤ) = A033887 n

theorem P9814642326319037637.correct : P9814642326319037637.Spec := by
  intro n
  simp only [A033887, Nat.add_sub_cancel, A033887.P9814642326319037637.a, A033887.P16222940499921991162.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A033887

/-! ## A033887.P1876732516764011061

`Δ[A001076(n)]`
-/

namespace A033887.P1876732516764011061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033887.P1876732516764011061

namespace A033887

/-- `Δ[A001076(n)]` -/
def P1876732516764011061.Spec : Prop :=
  ∀ n, P1876732516764011061.a n = A033887 n

end A033887

/-! ## A033887.P15573003406785826980

`A014437(2*n)`
-/

namespace A033887.P15573003406785826980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014437 (2 * n)

end

end A033887.P15573003406785826980

namespace A033887

/-- `A014437(2*n)` -/
def P15573003406785826980.Spec : Prop :=
  ∀ n, P15573003406785826980.a n = A033887 n

end A033887

/-! ## A033887.P7711619704435567052

`A079977(6*n)`
-/

namespace A033887.P7711619704435567052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079977 (6 * n)

end

end A033887.P7711619704435567052

namespace A033887

/-- `A079977(6*n)` -/
def P7711619704435567052.Spec : Prop :=
  ∀ n, P7711619704435567052.a n = A033887 n

end A033887

/-! ## A033887.P3599197234242350900

`A327035(9*n)`
-/

namespace A033887.P3599197234242350900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 (9 * n)

end

end A033887.P3599197234242350900

namespace A033887

/-- `A327035(9*n)` -/
def P3599197234242350900.Spec : Prop :=
  ∀ n, P3599197234242350900.a n = A033887 n

end A033887

/-! ## A033887.P2272954662583543960

`∑[A006355(3*n)]`
-/

namespace A033887.P2272954662583543960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033887.P2272954662583543960

namespace A033887

/-- `∑[A006355(3*n)]` -/
def P2272954662583543960.Spec : Prop :=
  ∀ n, P2272954662583543960.a n = A033887 n

end A033887

/-! ## A033887.P12961793448752077813

`Δ[A059973(2*n)]`
-/

namespace A033887.P12961793448752077813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059973 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033887.P12961793448752077813

namespace A033887

/-- `Δ[A059973(2*n)]` -/
def P12961793448752077813.Spec : Prop :=
  ∀ n, P12961793448752077813.a n = A033887 n

end A033887

/-! ## A033887.P4884624118297777823

`Δ[A004695(3*n)]`
-/

namespace A033887.P4884624118297777823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033887.P4884624118297777823

namespace A033887

/-- `Δ[A004695(3*n)]` -/
def P4884624118297777823.Spec : Prop :=
  ∀ n, P4884624118297777823.a n = A033887 n

end A033887

/-!
# A033888: a(n) = Fibonacci(4*n).

The programs for A033888, the canonical program `A033888.P16330144970251278705` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033888 has offset 0).

The definition of A033888 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033888.P16330144970251278705

`7*a(n-1)-a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033888

/-- `7*a(n-1)-a(n-2)` -/
def P16330144970251278705.Spec : Prop :=
  ∀ n, P16330144970251278705.a n = A033888 n

theorem P16330144970251278705.correct : P16330144970251278705.Spec := by
  intro n
  simp only [A033888]

end A033888

/-! ## A033888.P4920721723622916729

`3*A004187(n)`
-/

namespace A033888.P4920721723622916729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A004187 n

end

end A033888.P4920721723622916729

namespace A033888

/-- `3*A004187(n)` -/
def P4920721723622916729.Spec : Prop :=
  ∀ n, P4920721723622916729.a n = A033888 n

end A033888

/-! ## A033888.P9686411579520640431

`ogf(3x/(1-7x+x^2))`
-/

namespace A033888.P9686411579520640431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -7, 1] n

end

end A033888.P9686411579520640431

namespace A033888

/-- `ogf(3x/(1-7x+x^2))` -/
def P9686411579520640431.Spec : Prop :=
  ∀ n, P9686411579520640431.a n = A033888 n

end A033888

/-! ## A033888.P18391754220823815235

`ceil(ϕ^4*a(n-1))` with `a(0)=0, a(1)=3`
-/

namespace A033888.P18391754220823815235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  ⌈Real.goldenRatio ^ 4 * (a (n - 1) : ℝ)⌉

end

end A033888.P18391754220823815235

namespace A033888

/-- `ceil(ϕ^4*a(n-1))` -/
def P18391754220823815235.Spec : Prop :=
  ∀ n, P18391754220823815235.a n = A033888 n

end A033888

/-! ## A033888.P11708314142521286385

`round(ϕ^4*a(n-1))` with `a(0)=0, a(1)=3`
-/

namespace A033888.P11708314142521286385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 4 * (a (n - 1) : ℝ))

end

end A033888.P11708314142521286385

namespace A033888

/-- `round(ϕ^4*a(n-1))` -/
def P11708314142521286385.Spec : Prop :=
  ∀ n, P11708314142521286385.a n = A033888 n

end A033888

/-! ## A033888.P8104741992659023710

`A081002(n)-1`
-/

namespace A033888.P8104741992659023710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081002 n - 1

end

end A033888.P8104741992659023710

namespace A033888

/-- `A081002(n)-1` -/
def P8104741992659023710.Spec : Prop :=
  ∀ n, P8104741992659023710.a n = A033888 n

end A033888

/-! ## A033888.P8232172384653109476

`A001906(2*n)`
-/

namespace A033888.P8232172384653109476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (2 * n)

end

end A033888.P8232172384653109476

namespace A033888

/-- `A001906(2*n)` -/
def P8232172384653109476.Spec : Prop :=
  ∀ n, P8232172384653109476.a n = A033888 n

end A033888

/-! ## A033888.P15578779408709421376

`A081072(n)-3`
-/

namespace A033888.P15578779408709421376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081072 n - 3

end

end A033888.P15578779408709421376

namespace A033888

/-- `A081072(n)-3` -/
def P15578779408709421376.Spec : Prop :=
  ∀ n, P15578779408709421376.a n = A033888 n

theorem P15578779408709421376.correct : P15578779408709421376.Spec := by
  intro n
  simp only [A033888, Nat.add_sub_cancel, A033888.P15578779408709421376.a, A033888.P16330144970251278705.a, A081072, A081072.P6725620215786614116.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A033888

/-! ## A033888.P1439963884275245309

`A254884(2*n)`
-/

namespace A033888.P1439963884275245309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254884 (2 * n)

end

end A033888.P1439963884275245309

namespace A033888

/-- `A254884(2*n)` -/
def P1439963884275245309.Spec : Prop :=
  ∀ n, P1439963884275245309.a n = A033888 n

end A033888

/-! ## A033888.P1125362154515372674

`A142880(3*n)`
-/

namespace A033888.P1125362154515372674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142880 (3 * n)

end

end A033888.P1125362154515372674

namespace A033888

/-- `A142880(3*n)` -/
def P1125362154515372674.Spec : Prop :=
  ∀ n, P1125362154515372674.a n = A033888 n

end A033888

/-! ## A033888.P14227879877029380798

`A142881(3*n)`
-/

namespace A033888.P14227879877029380798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142881 (3 * n)

end

end A033888.P14227879877029380798

namespace A033888

/-- `A142881(3*n)` -/
def P14227879877029380798.Spec : Prop :=
  ∀ n, P14227879877029380798.a n = A033888 n

end A033888

/-! ## A033888.P898348066110527269

`A000045(4*n)`
-/

namespace A033888.P898348066110527269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (4 * n)

end

end A033888.P898348066110527269

namespace A033888

/-- `A000045(4*n)` -/
def P898348066110527269.Spec : Prop :=
  ∀ n, P898348066110527269.a n = A033888 n

end A033888

/-! ## A033888.P12144651915267452199

`A094966(4*n)`
-/

namespace A033888.P12144651915267452199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094966 (4 * n)

end

end A033888.P12144651915267452199

namespace A033888

/-- `A094966(4*n)` -/
def P12144651915267452199.Spec : Prop :=
  ∀ n, P12144651915267452199.a n = A033888 n

end A033888

/-! ## A033888.P4015921634293885892

`A109522(4*n)`
-/

namespace A033888.P4015921634293885892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109522 (4 * n)

end

end A033888.P4015921634293885892

namespace A033888

/-- `A109522(4*n)` -/
def P4015921634293885892.Spec : Prop :=
  ∀ n, P4015921634293885892.a n = A033888 n

end A033888

/-! ## A033888.P14467616837945150194

`A098054(8*n)`
-/

namespace A033888.P14467616837945150194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098054 (8 * n)

end

end A033888.P14467616837945150194

namespace A033888

/-- `A098054(8*n)` -/
def P14467616837945150194.Spec : Prop :=
  ∀ n, P14467616837945150194.a n = A033888 n

end A033888

/-! ## A033888.P3761956923496330886

`A103609(8*n)`
-/

namespace A033888.P3761956923496330886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (8 * n)

end

end A033888.P3761956923496330886

namespace A033888

/-- `A103609(8*n)` -/
def P3761956923496330886.Spec : Prop :=
  ∀ n, P3761956923496330886.a n = A033888 n

end A033888

/-! ## A033888.P4080999658677721667

`A055588(2*n)-1`
-/

namespace A033888.P4080999658677721667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 (2 * n) - 1

end

end A033888.P4080999658677721667

namespace A033888

/-- `A055588(2*n)-1` -/
def P4080999658677721667.Spec : Prop :=
  ∀ n, P4080999658677721667.a n = A033888 n

end A033888

/-! ## A033888.P4742485793902278468

`A249450(2*n)+2`
-/

namespace A033888.P4742485793902278468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249450 (2 * n) + 2

end

end A033888.P4742485793902278468

namespace A033888

/-- `A249450(2*n)+2` -/
def P4742485793902278468.Spec : Prop :=
  ∀ n, P4742485793902278468.a n = A033888 n

end A033888

/-! ## A033888.P17030098638670898820

`A128535(Δ[n²])+1`
-/

namespace A033888.P17030098638670898820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128535 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A033888.P17030098638670898820

namespace A033888

/-- `A128535(Δ[n²])+1` -/
def P17030098638670898820.Spec : Prop :=
  ∀ n, P17030098638670898820.a n = A033888 n

end A033888

/-! ## A033888.P9767358074855387336

`A295725(3*n+n+1)`
-/

namespace A033888.P9767358074855387336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295725 (3 * n + (n + 1))

end

end A033888.P9767358074855387336

namespace A033888

/-- `A295725(3*n+n+1)` -/
def P9767358074855387336.Spec : Prop :=
  ∀ n, P9767358074855387336.a n = A033888 n

end A033888

/-!
# A033889: a(n) = Fibonacci(4*n + 1).

The programs for A033889, the canonical program `A033889.P13788262088628196839` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033889 has offset 0).

The definition of A033889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033889.P13788262088628196839

`7*a(n-1)-a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033889

/-- `7*a(n-1)-a(n-2)` -/
def P13788262088628196839.Spec : Prop :=
  ∀ n, P13788262088628196839.a n = A033889 n

theorem P13788262088628196839.correct : P13788262088628196839.Spec := by
  intro n
  simp only [A033889]

end A033889

/-! ## A033889.P3978714292853824220

`A167816(4*n+1)`
-/

namespace A033889.P3978714292853824220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167816 (4 * n + 1)

end

end A033889.P3978714292853824220

namespace A033889

/-- `A167816(4*n+1)` -/
def P3978714292853824220.Spec : Prop :=
  ∀ n, P3978714292853824220.a n = A033889 n

end A033889

/-! ## A033889.P16665729540841887712

`A000045(A016813(n))`
-/

namespace A033889.P16665729540841887712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A016813 n).toNat

end

end A033889.P16665729540841887712

namespace A033889

/-- `A000045(A016813(n))` -/
def P16665729540841887712.Spec : Prop :=
  ∀ n, P16665729540841887712.a n = A033889 n

end A033889

/-! ## A033889.P5080169228537529907

`A004187(n+1)-2*A004187(n)`
-/

namespace A033889.P5080169228537529907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 (n + 1) - 2 * A004187 n

end

end A033889.P5080169228537529907

namespace A033889

/-- `A004187(n+1)-2*A004187(n)` -/
def P5080169228537529907.Spec : Prop :=
  ∀ n, P5080169228537529907.a n = A033889 n

end A033889

/-! ## A033889.P6225229469150925827

`ogf((1-2x)/(1-7x+x^2))`
-/

namespace A033889.P6225229469150925827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2] [1, -7, 1] n

end

end A033889.P6225229469150925827

namespace A033889

/-- `ogf((1-2x)/(1-7x+x^2))` -/
def P6225229469150925827.Spec : Prop :=
  ∀ n, P6225229469150925827.a n = A033889 n

end A033889

/-! ## A033889.P5383378866303325960

`ceil(∑[(ϕ^n)²²/ϕ])`
-/

namespace A033889.P5383378866303325960
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((Real.goldenRatio ^ n) ^ 2) ^ 2 / Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A033889.P5383378866303325960

namespace A033889

/-- `ceil(∑[(ϕ^n)²²/ϕ])` -/
def P5383378866303325960.Spec : Prop :=
  ∀ n, P5383378866303325960.a n = A033889 n

end A033889

/-! ## A033889.P5459065631337113077

`floor(ϕ^4*a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A033889.P5459065631337113077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  ⌊Real.goldenRatio ^ 4 * (a (n - 1) : ℝ)⌋

end

end A033889.P5459065631337113077

namespace A033889

/-- `floor(ϕ^4*a(n-1))` -/
def P5459065631337113077.Spec : Prop :=
  ∀ n, P5459065631337113077.a n = A033889 n

end A033889

/-! ## A033889.P1905265123910997648

`round(ϕ^4*a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A033889.P1905265123910997648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ 4 * (a (n - 1) : ℝ))

end

end A033889.P1905265123910997648

namespace A033889

/-- `round(ϕ^4*a(n-1))` -/
def P1905265123910997648.Spec : Prop :=
  ∀ n, P1905265123910997648.a n = A033889 n

end A033889

/-! ## A033889.P2070901218552968801

`record[A099496(n)]`
-/

namespace A033889.P2070901218552968801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033889.P2070901218552968801

namespace A033889

/-- `record[A099496(n)]` -/
def P2070901218552968801.Spec : Prop :=
  ∀ n, P2070901218552968801.a n = A033889 n

end A033889

/-! ## A033889.P14251320322256900914

`record[A178115(n)]`
-/

namespace A033889.P14251320322256900914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033889.P14251320322256900914

namespace A033889

/-- `record[A178115(n)]` -/
def P14251320322256900914.Spec : Prop :=
  ∀ n, P14251320322256900914.a n = A033889 n

end A033889

/-! ## A033889.P7698561484967606830

`A081007(n)+1`
-/

namespace A033889.P7698561484967606830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081007 n + 1

end

end A033889.P7698561484967606830

namespace A033889

/-- `A081007(n)+1` -/
def P7698561484967606830.Spec : Prop :=
  ∀ n, P7698561484967606830.a n = A033889 n

end A033889

/-! ## A033889.P3871573969925679541

`A081003(n)-1`
-/

namespace A033889.P3871573969925679541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081003 n - 1

end

end A033889.P3871573969925679541

namespace A033889

/-- `A081003(n)-1` -/
def P3871573969925679541.Spec : Prop :=
  ∀ n, P3871573969925679541.a n = A033889 n

end A033889

/-! ## A033889.P11175414747994290194

`A081010(n)-2`
-/

namespace A033889.P11175414747994290194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081010 n - 2

end

end A033889.P11175414747994290194

namespace A033889

/-- `A081010(n)-2` -/
def P11175414747994290194.Spec : Prop :=
  ∀ n, P11175414747994290194.a n = A033889 n

end A033889

/-! ## A033889.P11955827168482126222

`A099496(2*n)`
-/

namespace A033889.P11955827168482126222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099496 (2 * n)

end

end A033889.P11955827168482126222

namespace A033889

/-- `A099496(2*n)` -/
def P11955827168482126222.Spec : Prop :=
  ∀ n, P11955827168482126222.a n = A033889 n

end A033889

/-! ## A033889.P18365036468823633877

`A122367(2*n)`
-/

namespace A033889.P18365036468823633877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 (2 * n)

end

end A033889.P18365036468823633877

namespace A033889

/-- `A122367(2*n)` -/
def P18365036468823633877.Spec : Prop :=
  ∀ n, P18365036468823633877.a n = A033889 n

end A033889

/-! ## A033889.P16538838677915784635

`A094967(4*n)`
-/

namespace A033889.P16538838677915784635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094967 (4 * n)

end

end A033889.P16538838677915784635

namespace A033889

/-- `A094967(4*n)` -/
def P16538838677915784635.Spec : Prop :=
  ∀ n, P16538838677915784635.a n = A033889 n

end A033889

/-! ## A033889.P8662846044646510514

`A097131(4*n)`
-/

namespace A033889.P8662846044646510514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097131 (4 * n)

end

end A033889.P8662846044646510514

namespace A033889

/-- `A097131(4*n)` -/
def P8662846044646510514.Spec : Prop :=
  ∀ n, P8662846044646510514.a n = A033889 n

end A033889

/-! ## A033889.P8424775385590606441

`A108362(4*n)`
-/

namespace A033889.P8424775385590606441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108362 (4 * n)

end

end A033889.P8424775385590606441

namespace A033889

/-- `A108362(4*n)` -/
def P8424775385590606441.Spec : Prop :=
  ∀ n, P8424775385590606441.a n = A033889 n

end A033889

/-! ## A033889.P12809683741004617704

`A115008(4*n)`
-/

namespace A033889.P12809683741004617704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115008 (4 * n)

end

end A033889.P12809683741004617704

namespace A033889

/-- `A115008(4*n)` -/
def P12809683741004617704.Spec : Prop :=
  ∀ n, P12809683741004617704.a n = A033889 n

end A033889

/-! ## A033889.P5920532470841062388

`A116698(4*n)`
-/

namespace A033889.P5920532470841062388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116698 (4 * n)

end

end A033889.P5920532470841062388

namespace A033889

/-- `A116698(4*n)` -/
def P5920532470841062388.Spec : Prop :=
  ∀ n, P5920532470841062388.a n = A033889 n

end A033889

/-!
# A033890: a(n) = Fibonacci(4*n + 2).

The programs for A033890, the canonical program `A033890.P5358019263246942131` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033890 has offset 0).

The definition of A033890 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033890.P5358019263246942131

`7*a(n-1)-a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033890

/-- `7*a(n-1)-a(n-2)` -/
def P5358019263246942131.Spec : Prop :=
  ∀ n, P5358019263246942131.a n = A033890 n

theorem P5358019263246942131.correct : P5358019263246942131.Spec := by
  intro n
  simp only [A033890]

end A033890

/-! ## A033890.P14763972533254169640

`A001906(2*n+1)`
-/

namespace A033890.P14763972533254169640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (2 * n + 1)

end

end A033890.P14763972533254169640

namespace A033890

/-- `A001906(2*n+1)` -/
def P14763972533254169640.Spec : Prop :=
  ∀ n, P14763972533254169640.a n = A033890 n

end A033890

/-! ## A033890.P470711949090441258

`A167816(4*n+2)`
-/

namespace A033890.P470711949090441258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167816 (4 * n + 2)

end

end A033890.P470711949090441258

namespace A033890

/-- `A167816(4*n+2)` -/
def P470711949090441258.Spec : Prop :=
  ∀ n, P470711949090441258.a n = A033890 n

end A033890

/-! ## A033890.P17383289660918014365

`A000045(A016825(n))`
-/

namespace A033890.P17383289660918014365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A016825 n).toNat

end

end A033890.P17383289660918014365

namespace A033890

/-- `A000045(A016825(n))` -/
def P17383289660918014365.Spec : Prop :=
  ∀ n, P17383289660918014365.a n = A033890 n

end A033890

/-! ## A033890.P2691656306542590217

`((3+sqrt(5))^(1+2*n)-(3-sqrt(5))^(1+2*n))/(2^(1+2*n)*sqrt(5))`
-/

namespace A033890.P2691656306542590217
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((3 + Real.sqrt (5 : ℝ)) ^ (1 + 2 * n) - (3 - Real.sqrt (5 : ℝ)) ^ (1 + 2 * n)) / ((2 ^ (1 + 2 * n) : ℝ) * Real.sqrt (5 : ℝ))

end

end A033890.P2691656306542590217

namespace A033890

/-- `((3+sqrt(5))^(1+2*n)-(3-sqrt(5))^(1+2*n))/(2^(1+2*n)*sqrt(5))` -/
def P2691656306542590217.Spec : Prop :=
  ∀ n, P2691656306542590217.a n = (A033890 n : ℝ)

theorem P2691656306542590217.correct : P2691656306542590217.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A033890, Nat.add_sub_cancel, A033890.P2691656306542590217.a, A033890.P5358019263246942131.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A033890, Nat.add_sub_cancel, A033890.P2691656306542590217.a, A033890.P5358019263246942131.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A033890

/-! ## A033890.P18289856775835438255

`ogf((1+x)/(1-7x+x^2))`
-/

namespace A033890.P18289856775835438255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -7, 1] n

end

end A033890.P18289856775835438255

namespace A033890

/-- `ogf((1+x)/(1-7x+x^2))` -/
def P18289856775835438255.Spec : Prop :=
  ∀ n, P18289856775835438255.a n = A033890 n

end A033890

/-! ## A033890.P11897186624844832395

`Δ[A049684(n)]`
-/

namespace A033890.P11897186624844832395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033890.P11897186624844832395

namespace A033890

/-- `Δ[A049684(n)]` -/
def P11897186624844832395.Spec : Prop :=
  ∀ n, P11897186624844832395.a n = A033890 n

end A033890

/-! ## A033890.P6630929627117361857

`A081008(n)+1`
-/

namespace A033890.P6630929627117361857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081008 n + 1

end

end A033890.P6630929627117361857

namespace A033890

/-- `A081008(n)+1` -/
def P6630929627117361857.Spec : Prop :=
  ∀ n, P6630929627117361857.a n = A033890 n

end A033890

/-! ## A033890.P5478642670240635670

`A081004(n)-1`
-/

namespace A033890.P5478642670240635670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081004 n - 1

end

end A033890.P5478642670240635670

namespace A033890

/-- `A081004(n)-1` -/
def P5478642670240635670.Spec : Prop :=
  ∀ n, P5478642670240635670.a n = A033890 n

end A033890

/-! ## A033890.P15584771924170189941

`A081073(n)-3`
-/

namespace A033890.P15584771924170189941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081073 n - 3

end

end A033890.P15584771924170189941

namespace A033890

/-- `A081073(n)-3` -/
def P15584771924170189941.Spec : Prop :=
  ∀ n, P15584771924170189941.a n = A033890 n

end A033890

/-! ## A033890.P9805847212239149544

`A052952(4*n)`
-/

namespace A033890.P9805847212239149544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 (4 * n)

end

end A033890.P9805847212239149544

namespace A033890

/-- `A052952(4*n)` -/
def P9805847212239149544.Spec : Prop :=
  ∀ n, P9805847212239149544.a n = A033890 n

end A033890

/-! ## A033890.P13944503382056625060

`A109794(4*n)`
-/

namespace A033890.P13944503382056625060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109794 (4 * n)

end

end A033890.P13944503382056625060

namespace A033890

/-- `A109794(4*n)` -/
def P13944503382056625060.Spec : Prop :=
  ∀ n, P13944503382056625060.a n = A033890 n

end A033890

/-! ## A033890.P15661562616529185593

`A147600(4*n)`
-/

namespace A033890.P15661562616529185593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147600 (4 * n)

end

end A033890.P15661562616529185593

namespace A033890

/-- `A147600(4*n)` -/
def P15661562616529185593.Spec : Prop :=
  ∀ n, P15661562616529185593.a n = A033890 n

end A033890

/-! ## A033890.P2964921480661297965

`A373566(4*n)`
-/

namespace A033890.P2964921480661297965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373566 (4 * n)

end

end A033890.P2964921480661297965

namespace A033890

/-- `A373566(4*n)` -/
def P2964921480661297965.Spec : Prop :=
  ∀ n, P2964921480661297965.a n = A033890 n

end A033890

/-! ## A033890.P1173321128708010686

`A096748(8*n)`
-/

namespace A033890.P1173321128708010686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096748 (8 * n)

end

end A033890.P1173321128708010686

namespace A033890

/-- `A096748(8*n)` -/
def P1173321128708010686.Spec : Prop :=
  ∀ n, P1173321128708010686.a n = A033890 n

end A033890

/-! ## A033890.P4052313886932030167

`Δ[A001906(n)²]`
-/

namespace A033890.P4052313886932030167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033890.P4052313886932030167

namespace A033890

/-- `Δ[A001906(n)²]` -/
def P4052313886932030167.Spec : Prop :=
  ∀ n, P4052313886932030167.a n = A033890 n

end A033890

/-! ## A033890.P11432021665855554382

`A088305(Δ[n²])`
-/

namespace A033890.P11432021665855554382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088305 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A033890.P11432021665855554382

namespace A033890

/-- `A088305(Δ[n²])` -/
def P11432021665855554382.Spec : Prop :=
  ∀ n, P11432021665855554382.a n = A033890 n

end A033890

/-! ## A033890.P8317491784821392040

`A152189(Δ[n²])`
-/

namespace A033890.P8317491784821392040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152189 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A033890.P8317491784821392040

namespace A033890

/-- `A152189(Δ[n²])` -/
def P8317491784821392040.Spec : Prop :=
  ∀ n, P8317491784821392040.a n = A033890 n

end A033890

/-! ## A033890.P14462369077528202372

`A237268(Δ[n²])`
-/

namespace A033890.P14462369077528202372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237268 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A033890.P14462369077528202372

namespace A033890

/-- `A237268(Δ[n²])` -/
def P14462369077528202372.Spec : Prop :=
  ∀ n, P14462369077528202372.a n = A033890 n

end A033890

/-! ## A033890.P2993068888451660378

`∑[record[A219233(n)]]`
-/

namespace A033890.P2993068888451660378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219233 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A033890.P2993068888451660378

namespace A033890

/-- `∑[record[A219233(n)]]` -/
def P2993068888451660378.Spec : Prop :=
  ∀ n, P2993068888451660378.a n = A033890 n

end A033890

/-!
# A033891: a(n) = Fibonacci(4*n+3).

The programs for A033891, the canonical program `A033891.P1436371791952091862` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A033891 has offset 0).

The definition of A033891 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A033891.P1436371791952091862

`7*a(n-1)-a(n-2)` with `a(0)=2, a(1)=13`

The canonical program, it is in `Seq.B000.C006`.
-/

namespace A033891

/-- `7*a(n-1)-a(n-2)` -/
def P1436371791952091862.Spec : Prop :=
  ∀ n, P1436371791952091862.a n = A033891 n

theorem P1436371791952091862.correct : P1436371791952091862.Spec := by
  intro n
  simp only [A033891]

end A033891

/-! ## A033891.P3559647171071752051

`A167816(4*n+3)`
-/

namespace A033891.P3559647171071752051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167816 (4 * n + 3)

end

end A033891.P3559647171071752051

namespace A033891

/-- `A167816(4*n+3)` -/
def P3559647171071752051.Spec : Prop :=
  ∀ n, P3559647171071752051.a n = A033891 n

end A033891

/-! ## A033891.P15165615823203563421

`A004187(n+1)+A049685(n)`
-/

namespace A033891.P15165615823203563421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004187 (n + 1) + A049685 n

end

end A033891.P15165615823203563421

namespace A033891

/-- `A004187(n+1)+A049685(n)` -/
def P15165615823203563421.Spec : Prop :=
  ∀ n, P15165615823203563421.a n = A033891 n

end A033891

/-! ## A033891.P13485301516577921766

`2*A004187(n+1)-A004187(n)`
-/

namespace A033891.P13485301516577921766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004187 (n + 1) - A004187 n

end

end A033891.P13485301516577921766

namespace A033891

/-- `2*A004187(n+1)-A004187(n)` -/
def P13485301516577921766.Spec : Prop :=
  ∀ n, P13485301516577921766.a n = A033891 n

end A033891

/-! ## A033891.P1521168618201328808

`ogf((2-x)/(1-7x+x^2))`
-/

namespace A033891.P1521168618201328808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1] [1, -7, 1] n

end

end A033891.P1521168618201328808

namespace A033891

/-- `ogf((2-x)/(1-7x+x^2))` -/
def P1521168618201328808.Spec : Prop :=
  ∀ n, P1521168618201328808.a n = A033891 n

end A033891

/-! ## A033891.P3598149397143414245

`ceil(∑[ϕ*(ϕ^n)²²])`
-/

namespace A033891.P3598149397143414245
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio * ((Real.goldenRatio ^ n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A033891.P3598149397143414245

namespace A033891

/-- `ceil(∑[ϕ*(ϕ^n)²²])` -/
def P3598149397143414245.Spec : Prop :=
  ∀ n, P3598149397143414245.a n = A033891 n

end A033891

/-! ## A033891.P1161042389285144463

`floor(ϕ^4*a(n-1))` with `a(0)=2`
-/

namespace A033891.P1161042389285144463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊Real.goldenRatio ^ 4 * (a (n - 1) : ℝ)⌋

end

end A033891.P1161042389285144463

namespace A033891

/-- `floor(ϕ^4*a(n-1))` -/
def P1161042389285144463.Spec : Prop :=
  ∀ n, P1161042389285144463.a n = A033891 n

end A033891

/-! ## A033891.P13017461882279321074

`floor(a(n-1)/ϕ^-4)` with `a(0)=2`
-/

namespace A033891.P13017461882279321074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(a (n - 1) : ℝ) / Real.goldenRatio ^ (-4 : ℤ)⌋

end

end A033891.P13017461882279321074

namespace A033891

/-- `floor(a(n-1)/ϕ^-4)` -/
def P13017461882279321074.Spec : Prop :=
  ∀ n, P13017461882279321074.a n = A033891 n

end A033891

/-! ## A033891.P6661093808726629195

`floor(ϕ²²*floor(a(n-1)))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A033891.P6661093808726629195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌊(Real.goldenRatio ^ 2) ^ 2 * (a (n - 1) : ℝ)⌋

end

end A033891.P6661093808726629195

namespace A033891

/-- `floor(ϕ²²*floor(a(n-1)))` -/
def P6661093808726629195.Spec : Prop :=
  ∀ n, P6661093808726629195.a n = A033891 n

end A033891

/-! ## A033891.P18103497654021471170

`Δ[A081018(n)]`
-/

namespace A033891.P18103497654021471170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A033891.P18103497654021471170

namespace A033891

/-- `Δ[A081018(n)]` -/
def P18103497654021471170.Spec : Prop :=
  ∀ n, P18103497654021471170.a n = A033891 n

end A033891

/-! ## A033891.P9814637413512875460

`A081009(n)+1`
-/

namespace A033891.P9814637413512875460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081009 n + 1

end

end A033891.P9814637413512875460

namespace A033891

/-- `A081009(n)+1` -/
def P9814637413512875460.Spec : Prop :=
  ∀ n, P9814637413512875460.a n = A033891 n

end A033891

/-! ## A033891.P17244543231737927736

`A172968(n+1)`
-/

namespace A033891.P17244543231737927736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172968 (n + 1)

end

end A033891.P17244543231737927736

namespace A033891

/-- `A172968(n+1)` -/
def P17244543231737927736.Spec : Prop :=
  ∀ n, P17244543231737927736.a n = A033891 n

end A033891

/-! ## A033891.P2640006524920939431

`A081005(n)-1`
-/

namespace A033891.P2640006524920939431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081005 n - 1

end

end A033891.P2640006524920939431

namespace A033891

/-- `A081005(n)-1` -/
def P2640006524920939431.Spec : Prop :=
  ∀ n, P2640006524920939431.a n = A033891 n

end A033891

/-! ## A033891.P580005247831238716

`A081013(n)+2`
-/

namespace A033891.P580005247831238716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081013 n + 2

end

end A033891.P580005247831238716

namespace A033891

/-- `A081013(n)+2` -/
def P580005247831238716.Spec : Prop :=
  ∀ n, P580005247831238716.a n = A033891 n

end A033891

/-! ## A033891.P459575004806311949

`A081011(n)-2`
-/

namespace A033891.P459575004806311949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081011 n - 2

end

end A033891.P459575004806311949

namespace A033891

/-- `A081011(n)-2` -/
def P459575004806311949.Spec : Prop :=
  ∀ n, P459575004806311949.a n = A033891 n

end A033891

/-! ## A033891.P13496580215293926679

`A048575(2*n)`
-/

namespace A033891.P13496580215293926679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048575 (2 * n)

end

end A033891.P13496580215293926679

namespace A033891

/-- `A048575(2*n)` -/
def P13496580215293926679.Spec : Prop :=
  ∀ n, P13496580215293926679.a n = A033891 n

end A033891

/-! ## A033891.P4786506726765511633

`A020695(4*n)`
-/

namespace A033891.P4786506726765511633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 (4 * n)

end

end A033891.P4786506726765511633

namespace A033891

/-- `A020695(4*n)` -/
def P4786506726765511633.Spec : Prop :=
  ∀ n, P4786506726765511633.a n = A033891 n

end A033891

/-! ## A033891.P17185828187190331522

`A097594(8*n)`
-/

namespace A033891.P17185828187190331522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097594 (8 * n)

end

end A033891.P17185828187190331522

namespace A033891

/-- `A097594(8*n)` -/
def P17185828187190331522.Spec : Prop :=
  ∀ n, P17185828187190331522.a n = A033891 n

end A033891

/-! ## A033891.P10907148614229417443

`A122367(Δ[n²])`
-/

namespace A033891.P10907148614229417443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122367 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A033891.P10907148614229417443

namespace A033891

/-- `A122367(Δ[n²])` -/
def P10907148614229417443.Spec : Prop :=
  ∀ n, P10907148614229417443.a n = A033891 n

end A033891

/-! ## A033891.P4610508581930860642

`∑[A056914(n)]+1`
-/

namespace A033891.P4610508581930860642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056914 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A033891.P4610508581930860642

namespace A033891

/-- `∑[A056914(n)]+1` -/
def P4610508581930860642.Spec : Prop :=
  ∀ n, P4610508581930860642.a n = A033891 n

end A033891

/-!
# A033892: Orders of subgroups of M24.

The programs for A033892, there is no canonical definition to state claims against.
-/

/-! ## A033892.P10857933525269529220

`lt[A164962(n+1), 2*A238256(n+1)]`
-/

namespace A033892.P10857933525269529220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238256 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033892.P10857933525269529220

/-! ## A033892.P3423735676558551759

`lt[A048266(A111008(n)), A048276(n)]`
-/

namespace A033892.P3423735676558551759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A111008 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048276 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033892.P3423735676558551759

/-! ## A033892.P1144167776752006340

`lt[A004526(A164962(n+1)), A238256(n+1)]`
-/

namespace A033892.P1144167776752006340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A164962 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238256 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A033892.P1144167776752006340

/-!
# A033893: Sort then Add, a(1)=3.

The programs for A033893, there is no canonical definition to state claims against.
-/

/-! ## A033893.P5106554767585670433

`A070196(a(n-1))` with `a(0)=3`
-/

namespace A033893.P5106554767585670433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A070196 (a (n - 1)).toNat

end

end A033893.P5106554767585670433

/-! ## A033893.P4440170888112825041

`A004185(a(n-1))+a(n-1)` with `a(0)=3`
-/

namespace A033893.P4440170888112825041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A004185 (a (n - 1)).toNat + a (n - 1)

end

end A033893.P4440170888112825041

/-! ## A033893.P17917537524148238153

`A328447(a(n-1))+a(n-1)` with `a(0)=3`
-/

namespace A033893.P17917537524148238153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A328447 (a (n - 1)).toNat + a (n - 1)

end

end A033893.P17917537524148238153

/-! ## A033893.P11823140545477214880

`a(n-1)+a(n-1)-A193581(a(n-1))` with `a(0)=3`
-/

namespace A033893.P11823140545477214880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (a (n - 1) - A193581 (a (n - 1)).toNat)

end

end A033893.P11823140545477214880

/-! ## A033893.P12440452673235041950

`record[A070196(a(A220096(n)))]` with `a(0)=3`
-/

namespace A033893.P12440452673235041950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  A070196 (f1 (A220096 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033893.P12440452673235041950

/-!
# A033894: Sort then Add, a(1)=5.

The programs for A033894, there is no canonical definition to state claims against.
-/

/-! ## A033894.P8472772357601554023

`A070196(a(n-1))` with `a(0)=5`
-/

namespace A033894.P8472772357601554023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A070196 (a (n - 1)).toNat

end

end A033894.P8472772357601554023

/-! ## A033894.P12341208152995993369

`A004185(a(n-1))+a(n-1)` with `a(0)=5`
-/

namespace A033894.P12341208152995993369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A004185 (a (n - 1)).toNat + a (n - 1)

end

end A033894.P12341208152995993369

/-! ## A033894.P1396245640398520581

`a(n-1)+a(n-1)-A193581(a(n-1))` with `a(0)=5`
-/

namespace A033894.P1396245640398520581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (a (n - 1) - A193581 (a (n - 1)).toNat)

end

end A033894.P1396245640398520581

/-! ## A033894.P1876686506163606579

`record[A070196(a(A193581(n)))]` with `a(0)=5`
-/

namespace A033894.P1876686506163606579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A070196 (f1 (A193581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033894.P1876686506163606579

/-!
# A033895: Sort then Add, a(1)=7.

The programs for A033895, there is no canonical definition to state claims against.
-/

/-! ## A033895.P9392187622381260206

`A070196(a(n-1))` with `a(0)=7`
-/

namespace A033895.P9392187622381260206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A070196 (a (n - 1)).toNat

end

end A033895.P9392187622381260206

/-! ## A033895.P13200714775841018483

`A004185(a(n-1))+a(n-1)` with `a(0)=7`
-/

namespace A033895.P13200714775841018483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A004185 (a (n - 1)).toNat + a (n - 1)

end

end A033895.P13200714775841018483

/-! ## A033895.P18032833564380831820

`A328447(a(n-1))+a(n-1)` with `a(0)=7`
-/

namespace A033895.P18032833564380831820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A328447 (a (n - 1)).toNat + a (n - 1)

end

end A033895.P18032833564380831820

/-! ## A033895.P8612400487738140339

`a(n-1)+a(n-1)-A193581(a(n-1))` with `a(0)=7`
-/

namespace A033895.P8612400487738140339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  a (n - 1) + (a (n - 1) - A193581 (a (n - 1)).toNat)

end

end A033895.P8612400487738140339

/-! ## A033895.P14664799174493549295

`record[A070196(a(A220096(n)))]` with `a(0)=7`
-/

namespace A033895.P14664799174493549295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A070196 (f1 (A220096 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033895.P14664799174493549295

/-!
# A033896: Sort then Add, a(1) =9.

The programs for A033896, there is no canonical definition to state claims against.
-/

/-! ## A033896.P15450958027177752025

`A070196(a(n-1))` with `a(0)=9`
-/

namespace A033896.P15450958027177752025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A070196 (a (n - 1)).toNat

end

end A033896.P15450958027177752025

/-! ## A033896.P1802593525096086971

`A004185(a(n-1))+a(n-1)` with `a(0)=9`
-/

namespace A033896.P1802593525096086971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  A004185 (a (n - 1)).toNat + a (n - 1)

end

end A033896.P1802593525096086971

/-! ## A033896.P3598743404655349043

`a(n-1)+a(n-1)-A193581(a(n-1))` with `a(0)=9`
-/

namespace A033896.P3598743404655349043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + (a (n - 1) - A193581 (a (n - 1)).toNat)

end

end A033896.P3598743404655349043

/-! ## A033896.P5018028771205104481

`record[A070196(a(A193581(n)))]` with `a(0)=9`
-/

namespace A033896.P5018028771205104481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f1 =>
  A070196 (f1 (A193581 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033896.P5018028771205104481

/-! ## A033896.P4583186806718097249

`record[A070196(a(A220096(n)))]` with `a(0)=9`
-/

namespace A033896.P4583186806718097249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f1 =>
  A070196 (f1 (A220096 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033896.P4583186806718097249

/-!
# A033897: Sort then Add, a(1)=13.

The programs for A033897, there is no canonical definition to state claims against.
-/

/-! ## A033897.P1024237772556233817

`A070196(a(n-1))` with `a(0)=13`
-/

namespace A033897.P1024237772556233817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A070196 (a (n - 1)).toNat

end

end A033897.P1024237772556233817

/-! ## A033897.P4550936381379126884

`A004185(a(n-1))+a(n-1)` with `a(0)=13`
-/

namespace A033897.P4550936381379126884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A004185 (a (n - 1)).toNat + a (n - 1)

end

end A033897.P4550936381379126884

/-! ## A033897.P18313007066724835733

`a(n-1)+a(n-1)-A193581(a(n-1))` with `a(0)=13`
-/

namespace A033897.P18313007066724835733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  a (n - 1) + (a (n - 1) - A193581 (a (n - 1)).toNat)

end

end A033897.P18313007066724835733

/-! ## A033897.P14628456139101682663

`record[A070196(a(A220096(n)))]` with `a(0)=13`
-/

namespace A033897.P14628456139101682663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [13] fun n f1 =>
  A070196 (f1 (A220096 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033897.P14628456139101682663

/-!
# A033898: Sort then Add, a(1)=15.

The programs for A033898, there is no canonical definition to state claims against.
-/

/-! ## A033898.P8876710150241429609

`A070196(a(n-1))` with `a(0)=15`
-/

namespace A033898.P8876710150241429609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  A070196 (a (n - 1)).toNat

end

end A033898.P8876710150241429609

/-! ## A033898.P2762141483776640455

`A004185(a(n-1))+a(n-1)` with `a(0)=15`
-/

namespace A033898.P2762141483776640455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  A004185 (a (n - 1)).toNat + a (n - 1)

end

end A033898.P2762141483776640455

/-! ## A033898.P14805675238588677849

`a(n-1)+a(n-1)-A193581(a(n-1))` with `a(0)=15`
-/

namespace A033898.P14805675238588677849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15] fun n a =>
  a (n - 1) + (a (n - 1) - A193581 (a (n - 1)).toNat)

end

end A033898.P14805675238588677849

/-! ## A033898.P14662828915559821459

`record[A070196(a(A220096(n)))]` with `a(0)=15, a(1)=1, a(2)=15, a(3)=1`
-/

namespace A033898.P14662828915559821459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [15, 1, 15, 1] fun n f1 =>
  A070196 (f1 (A220096 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033898.P14662828915559821459

/-!
# A033899: Sort then Add, a(1)=17.

The programs for A033899, there is no canonical definition to state claims against.
-/

/-! ## A033899.P11743936437992928515

`A070196(a(n-1))` with `a(0)=17`
-/

namespace A033899.P11743936437992928515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [17] fun n a =>
  A070196 (a (n - 1)).toNat

end

end A033899.P11743936437992928515

/-! ## A033899.P18374582287041032615

`A004185(a(n-1))+a(n-1)` with `a(0)=17`
-/

namespace A033899.P18374582287041032615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [17] fun n a =>
  A004185 (a (n - 1)).toNat + a (n - 1)

end

end A033899.P18374582287041032615

/-! ## A033899.P12193501024611724765

`a(n-1)+a(n-1)-A193581(a(n-1))` with `a(0)=17`
-/

namespace A033899.P12193501024611724765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [17] fun n a =>
  a (n - 1) + (a (n - 1) - A193581 (a (n - 1)).toNat)

end

end A033899.P12193501024611724765

/-! ## A033899.P14252542733048621945

`record[A070196(a(A220096(n)))]` with `a(0)=17`
-/

namespace A033899.P14252542733048621945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [17] fun n f1 =>
  A070196 (f1 (A220096 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A033899.P14252542733048621945

