import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
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

/-!
# A384300: a(n) = Product_{k=0..2*n-1} (3*n+k-2).

The programs for A384300, there is no canonical definition to state claims against.
-/

/-! ## A384300.P17694019635554967954

`A265609(A383465(n))`
-/

namespace A384300.P17694019635554967954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265609 (A383465 n).toNat

end

end A384300.P17694019635554967954

/-! ## A384300.P1830565575423527987

`A265609(A383464(n)+A022266(n))`
-/

namespace A384300.P1830565575423527987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265609 (A383464 n + A022266 n).toNat

end

end A384300.P1830565575423527987

/-!
# A384301: a(n) = Product_{k=0..2*n-1} (3*n+k-1).

The programs for A384301, there is no canonical definition to state claims against.
-/

/-! ## A384301.P8917688582776095106

`A124320(A022267(n))`
-/

namespace A384301.P8917688582776095106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124320 (A022267 n).toNat

end

end A384301.P8917688582776095106

/-!
# A384302: a(n) = Product_{k=0..2*n-1} (3*n+k).

The programs for A384302, there is no canonical definition to state claims against.
-/

/-! ## A384302.P15195205952971265681

`A008279(A022282(n))`
-/

namespace A384302.P15195205952971265681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 (A022282 n).toNat

end

end A384302.P15195205952971265681

/-!
# A384303: a(n) = Product_{k=0..2*n-1} (3*n+k+1).

The programs for A384303, there is no canonical definition to state claims against.
-/

/-! ## A384303.P3359867300832126695

`(2*n)!*C(5*n, 2*n)`
-/

namespace A384303.P3359867300832126695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n) * Nat.choose (5 * n) (2 * n)

end

end A384303.P3359867300832126695

/-! ## A384303.P4127119304777601839

`A166384(n)/A064352(n)`
-/

namespace A384303.P4127119304777601839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166384 n : ℚ) / (A064352 n : ℚ)

end

end A384303.P4127119304777601839

/-! ## A384303.P5743943016716270188

`A124320(A081268(n))`
-/

namespace A384303.P5743943016716270188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124320 (A081268 n).toNat

end

end A384303.P5743943016716270188

/-!
# A384306: Primes whose sum of digits in both base 8 and base 10 are recursively prime down to 2, 3, 5, or 7.

The programs for A384306, there is no canonical definition to state claims against.
-/

/-! ## A384306.P17457164123330501917

`A280996(A115891(n+1))`
-/

namespace A384306.P17457164123330501917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280996 (A115891 (n + 1)).toNat

end

end A384306.P17457164123330501917

/-! ## A384306.P13864643972690413939

`∩[A046713(n+1), A243497(n)]`
-/

namespace A384306.P13864643972690413939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243497 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384306.P13864643972690413939

/-!
# A384309: a(1) = 1. Thereafter a(n) is the cardinality of the set of terms whose leading decimal digit is the same as that of a(n-1).

The programs for A384309, there is no canonical definition to state claims against.
-/

/-! ## A384309.P9584898024783083663

`A074909(lt[A224173(n+1), A002088(3*n+4)])`
-/

namespace A384309.P9584898024783083663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224173 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A384309.P9584898024783083663

/-! ## A384309.P17153432128439555706

`A057979(lt[A185316(n), A259153(n)])`
-/

namespace A384309.P17153432128439555706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A384309.P17153432128439555706

/-! ## A384309.P8058306258148826776

`A152271(lt[A351005(n), A208746(n+1)])`
-/

namespace A384309.P8058306258148826776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351005 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A384309.P8058306258148826776

/-! ## A384309.P5859676027616335390

`A059300(lt[A227060(n+1), A001358(2*n+3)])`
-/

namespace A384309.P5859676027616335390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059300 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A384309.P5859676027616335390

/-! ## A384309.P1317010173073939784

`A378938(lt[A218638(n+1), A007089(n)])`
-/

namespace A384309.P1317010173073939784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378938 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A384309.P1317010173073939784

/-!
# A384311: a(n) is the number of ways to partition an n X n X n cube into 4 noncongruent cuboids.

The programs for A384311, there is no canonical definition to state claims against.
-/

/-! ## A384311.P157205727502244332

`A386756(n+1)+A052928(n)`
-/

namespace A384311.P157205727502244332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386756 (n + 1) + A052928 n

end

end A384311.P157205727502244332

/-! ## A384311.P2202937714075970480

`A004526(n)+A386756(n+1)+A004526(n)`
-/

namespace A384311.P2202937714075970480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A386756 (n + 1) + A004526 n)

end

end A384311.P2202937714075970480

/-! ## A384311.P17095343083506311511

`A387171(n+1)+A265645(n)`
-/

namespace A384311.P17095343083506311511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387171 (n + 1) + A265645 n

end

end A384311.P17095343083506311511

/-! ## A384311.P8730372300861465597

`A386296(A141214(n+1))`
-/

namespace A384311.P8730372300861465597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386296 (A141214 (n + 1)).toNat

end

end A384311.P8730372300861465597

/-!
# A384312: Third center column of elementary triangular automaton rule 86, starting from a lone 1 cell.

The programs for A384312, there is no canonical definition to state claims against.
-/

/-! ## A384312.P15438779849510889941

`A156728(A194120(3*n))`
-/

namespace A384312.P15438779849510889941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156728 (A194120 (3 * n)).toNat

end

end A384312.P15438779849510889941

/-! ## A384312.P12265142388420509801

`A005614(A185019(n+1)+A000203(n+1))`
-/

namespace A384312.P12265142388420509801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 (A185019 (n + 1) + A000203 (n + 1)).toNat

end

end A384312.P12265142388420509801

/-! ## A384312.P17158602188354903904

`A054354(A194120(3*n))^A379010(n+1)`
-/

namespace A384312.P17158602188354903904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054354 (A194120 (3 * n)).toNat : ℚ) ^ (A379010 (n + 1) : ℤ)

end

end A384312.P17158602188354903904

/-! ## A384312.P2793240884575516325

`A054354(A194120(3*n))^A014486(2*(n+1))`
-/

namespace A384312.P2793240884575516325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054354 (A194120 (3 * n)).toNat : ℚ) ^ (A014486 (2 * (n + 1)) : ℤ)

end

end A384312.P2793240884575516325

/-! ## A384312.P2695964322807960835

`A359550(A191661(n)+A000930(n))`
-/

namespace A384312.P2695964322807960835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359550 (A191661 n + A000930 n).toNat

end

end A384312.P2695964322807960835

/-!
# A384313: a(n) = pos(M(n)), where M(n) is the n X n circulant matrix with (row 1) = (F(0), F(1), ..., F(n-1)), where F = A000045 (Fibonacci numbers), and pos(M(n)) is the positive part of the determinant of M(n); see A380661.

The programs for A384313, there is no canonical definition to state claims against.
-/

/-! ## A384313.P9148116257943224569

`A384080(n+1)+A384079(n+1)`
-/

namespace A384313.P9148116257943224569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384080 (n + 1) + A384079 (n + 1)

end

end A384313.P9148116257943224569

/-!
# A384317: Number of integer partitions of n with more than one possible way to choose disjoint strict partitions of each part.

The programs for A384317, there is no canonical definition to state claims against.
-/

/-! ## A384317.P15878133148689691209

`A384395(n)+A384319(n)`
-/

namespace A384317.P15878133148689691209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384395 n + A384319 n

end

end A384317.P15878133148689691209

/-! ## A384317.P4080253941098230521

`A000041(n)-A384348(n)`
-/

namespace A384317.P4080253941098230521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A384348 n

end

end A384317.P4080253941098230521

/-! ## A384317.P17120676941644689129

`A213598(n)-A384348(n)`
-/

namespace A384317.P17120676941644689129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A384348 n

end

end A384317.P17120676941644689129

/-! ## A384317.P10956109860060121538

`A330643(n)-A384348(n)`
-/

namespace A384317.P10956109860060121538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330643 n - A384348 n

end

end A384317.P10956109860060121538

/-! ## A384317.P4062967272738899398

`A239830(A000217(n))-A384348(n)`
-/

namespace A384317.P4062967272738899398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239830 (A000217 n).toNat - A384348 n

end

end A384317.P4062967272738899398

/-!
# A384318: Number of strict integer partitions of n that are not maximally refined.

The programs for A384318, there is no canonical definition to state claims against.
-/

/-! ## A384318.P14545290310039105791

`A000009(n)-A179009(n)`
-/

namespace A384318.P14545290310039105791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A179009 n

end

end A384318.P14545290310039105791

/-! ## A384318.P10229441820309092207

`A357982(A008578(n+1))-A179009(n)`
-/

namespace A384318.P10229441820309092207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357982 (A008578 (n + 1)).toNat - A179009 n

end

end A384318.P10229441820309092207

/-! ## A384318.P3770416968738228996

`A050361(A000079(n))-A179009(n)`
-/

namespace A384318.P3770416968738228996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A000079 n).toNat - A179009 n

end

end A384318.P3770416968738228996

/-! ## A384318.P1451879867700708893

`A050361(A173300(2*n+1))-A179009(n)`
-/

namespace A384318.P1451879867700708893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A173300 (2 * n + 1)).toNat - A179009 n

end

end A384318.P1451879867700708893

/-!
# A384319: Number of strict integer partitions of n with exactly two possible ways to choose disjoint strict partitions of each part.

The programs for A384319, there is no canonical definition to state claims against.
-/

/-! ## A384319.P14162412566360667667

`A384317(n)-A384395(n)`
-/

namespace A384319.P14162412566360667667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384317 n - A384395 n

end

end A384319.P14162412566360667667

/-! ## A384319.P11696105658983058338

`A086435(A117265(n)*A340811(n+2))`
-/

namespace A384319.P11696105658983058338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086435 (A117265 n * A340811 (n + 2)).toNat

end

end A384319.P11696105658983058338

/-! ## A384319.P15396684273137532720

`A186437(A122832(n))`
-/

namespace A384319.P15396684273137532720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186437 (A122832 n).toNat

end

end A384319.P15396684273137532720

/-! ## A384319.P7279314088824735429

`A268341(A216916(n))`
-/

namespace A384319.P7279314088824735429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268341 (A216916 n).toNat

end

end A384319.P7279314088824735429

/-! ## A384319.P7121922786916619664

`A379731(A147721(n))`
-/

namespace A384319.P7121922786916619664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379731 (A147721 n).toNat

end

end A384319.P7121922786916619664

/-!
# A384320: Heinz numbers of integer partitions whose distinct parts are maximally refined.

The programs for A384320, there is no canonical definition to state claims against.
-/

/-! ## A384320.P2716427406635732402

`lt[A364345(n), A028552(A319916(n))]`
-/

namespace A384320.P2716427406635732402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364345 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 (A319916 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A384320.P2716427406635732402

/-! ## A384320.P9241342784181209815

`A384349(n+1)%A128367(2*n+3)`
-/

namespace A384320.P9241342784181209815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384349 (n + 1)) (A128367 (2 * n + 3))

end

end A384320.P9241342784181209815

/-! ## A384320.P10219991295952510702

`A384389(A038207(n))+A384349(n+1)`
-/

namespace A384320.P10219991295952510702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384389 (A038207 n).toNat + A384349 (n + 1)

end

end A384320.P10219991295952510702

/-! ## A384320.P3140954646498671453

`A367931(A113370(n))*A384349(n+1)`
-/

namespace A384320.P3140954646498671453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367931 (A113370 n).toNat * A384349 (n + 1)

end

end A384320.P3140954646498671453

/-! ## A384320.P17252940266973473488

`A384349(n+1)%A006002(A015128(n))`
-/

namespace A384320.P17252940266973473488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A384349 (n + 1)) (A006002 (A015128 n).toNat)

end

end A384320.P17252940266973473488

/-!
# A384321: Numbers whose distinct prime indices are not maximally refined.

The programs for A384321, there is no canonical definition to state claims against.
-/

/-! ## A384321.P10851038394617339412

`comp[A384349(n+1)-1]+1`
-/

namespace A384321.P10851038394617339412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384349 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A384321.P10851038394617339412

/-! ## A384321.P10637033911001776674

`∪[A020146(n+1), A384322(n+1)]`
-/

namespace A384321.P10637033911001776674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384321.P10637033911001776674

/-! ## A384321.P1510762206835524541

`∪[A020196(n+1), A384322(n+1)]`
-/

namespace A384321.P1510762206835524541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384321.P1510762206835524541

/-! ## A384321.P6677894027462269027

`∪[A020244(n+1), A384322(n+1)]`
-/

namespace A384321.P6677894027462269027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020244 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384321.P6677894027462269027

/-! ## A384321.P12949176296204026784

`∪[A020294(n+1), A384322(n+1)]`
-/

namespace A384321.P12949176296204026784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020294 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384321.P12949176296204026784

/-! ## A384321.P10512746040760027252

`∪[A020325(n+1), A384322(n+1)]`
-/

namespace A384321.P10512746040760027252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384321.P10512746040760027252

/-! ## A384321.P14832362378977062348

`∪[A032697(n+1), A384322(n+1)]`
-/

namespace A384321.P14832362378977062348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032697 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384321.P14832362378977062348

/-! ## A384321.P1163465942793500407

`∪[A036320(n+1), A384322(n+1)]`
-/

namespace A384321.P1163465942793500407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384321.P1163465942793500407

/-! ## A384321.P13536652477008915346

`∪[A036490(n+1), A384322(n+1)]`
-/

namespace A384321.P13536652477008915346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384321.P13536652477008915346

/-! ## A384321.P11357474903134873936

`∪[A038509(n+1), A384322(n+1)]`
-/

namespace A384321.P11357474903134873936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384321.P11357474903134873936

/-!
# A384322: Heinz numbers of strict integer partitions with more than one possible way to choose disjoint strict partitions of each part, i.e., strict partitions that can be properly refined.

The programs for A384322, there is no canonical definition to state claims against.
-/

/-! ## A384322.P4610389246236395739

`record[A007913(A384321(n+1))]`
-/

namespace A384322.P4610389246236395739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A384321 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384322.P4610389246236395739

/-! ## A384322.P12610226741770868640

`filter[A384321(n+1), A008966(#)]`
-/

namespace A384322.P12610226741770868640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A384322.P12610226741770868640

/-! ## A384322.P13485075919824245712

`filter[A384321(n+1), A049240(#)]`
-/

namespace A384322.P13485075919824245712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A384322.P13485075919824245712

/-! ## A384322.P19973860833586423

`filter[A384321(n+1), A132350(#)]`
-/

namespace A384322.P19973860833586423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A132350 (f1 j).toNat = 1) n)

end

end A384322.P19973860833586423

/-! ## A384322.P16012265673630690616

`filter[A384321(n+1), A181183(#)]`
-/

namespace A384322.P16012265673630690616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A384322.P16012265673630690616

/-! ## A384322.P8239801218130525474

`filter[A384321(n+1), A267594(#)]`
-/

namespace A384322.P8239801218130525474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267594 (f1 j).toNat = 1) n)

end

end A384322.P8239801218130525474

/-! ## A384322.P16872743791389168985

`filter[A384321(n+1), A267635(#)]`
-/

namespace A384322.P16872743791389168985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267635 (f1 j).toNat = 1) n)

end

end A384322.P16872743791389168985

/-! ## A384322.P1311496647387543294

`filter[A384321(n+1), A295316(#)]`
-/

namespace A384322.P1311496647387543294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A384322.P1311496647387543294

/-! ## A384322.P12244054241806380804

`filter[A384321(n+1), A307421(#)]`
-/

namespace A384322.P12244054241806380804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307421 (f1 j).toNat = 1) n)

end

end A384322.P12244054241806380804

/-! ## A384322.P2196860014733546835

`filter[A384321(n+1), A323154(#)]`
-/

namespace A384322.P2196860014733546835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384321 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A384322.P2196860014733546835

/-!
# A384327: Minimal Trips Around The Collatz Galaxy: a(n) is the minimal cycle length containing n. Each step in the cycle must be either to the next larger integer or follow a Collatz trajectory: k -> 3k+1 if k is odd or k -> k/2 if k is even.

The programs for A384327, there is no canonical definition to state claims against.
-/

/-! ## A384327.P956383973547924727

`A079085(A257418(n))`
-/

namespace A384327.P956383973547924727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079085 (A257418 n).toNat

end

end A384327.P956383973547924727

/-! ## A384327.P15290506671690793652

`A059841(n)+∑[A010051(A000129(n)+2)]`
-/

namespace A384327.P15290506671690793652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000129 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384327.P15290506671690793652

/-! ## A384327.P3650313735574866216

`A261100(n+1)+A000035(A169966(n+2))`
-/

namespace A384327.P3650313735574866216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261100 (n + 1) + A000035 (A169966 (n + 2)).toNat

end

end A384327.P3650313735574866216

/-! ## A384327.P11179976696113672769

`A348213(n+2)+A162912(A281909(n+2))`
-/

namespace A384327.P11179976696113672769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348213 (n + 2) + A162912 (A281909 (n + 2)).toNat

end

end A384327.P11179976696113672769

/-! ## A384327.P16396101993995420215

`A070939(A352745(3*n+2)+A010815(n))`
-/

namespace A384327.P16396101993995420215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A352745 (3 * n + 2) + A010815 n).toNat

end

end A384327.P16396101993995420215

/-!
# A384328: Expansion of 1 / ((1-x)^3 * (1-x^7)).

The programs for A384328, the canonical program `A384328.P11309829807178330690` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384328 has offset 0).

The definition of A384328 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+3x^2-x^3-x^7+3x^8-3x^9+x^10))` (program `A384328.P11309829807178330690`, by `A384328.P11309829807178330690.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384328.P11309829807178330690

`ogf(1/(1-3x+3x^2-x^3-x^7+3x^8-3x^9+x^10))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384328

/-- `ogf(1/(1-3x+3x^2-x^3-x^7+3x^8-3x^9+x^10))` -/
def P11309829807178330690.Spec : Prop :=
  ∀ n, P11309829807178330690.a n = A384328 n

theorem P11309829807178330690.correct : P11309829807178330690.Spec := by
  intro n
  simp only [A384328]

end A384328

/-! ## A384328.P4772623112008026227

`floor((n+3)*(n²+12*n+26)/42)`
-/

namespace A384328.P4772623112008026227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 3) * (n ^ 2 + 12 * n + 26) : ℚ) / 42⌋

end

end A384328.P4772623112008026227

namespace A384328

/-- `floor((n+3)*(n²+12*n+26)/42)` -/
def P4772623112008026227.Spec : Prop :=
  ∀ n, P4772623112008026227.a n = A384328 n

end A384328

/-! ## A384328.P4828759707596909953

`∑[A008725(n)]`
-/

namespace A384328.P4828759707596909953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384328.P4828759707596909953

namespace A384328

/-- `∑[A008725(n)]` -/
def P4828759707596909953.Spec : Prop :=
  ∀ n, P4828759707596909953.a n = A384328 n

end A384328

/-! ## A384328.P3356856484018043704

`∑[A174738(n)+n+1]`
-/

namespace A384328.P3356856484018043704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174738 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384328.P3356856484018043704

namespace A384328

/-- `∑[A174738(n)+n+1]` -/
def P3356856484018043704.Spec : Prop :=
  ∀ n, P3356856484018043704.a n = A384328 n

end A384328

/-! ## A384328.P15419248095868330626

`∑[A011867(n+5)]`
-/

namespace A384328.P15419248095868330626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011867 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384328.P15419248095868330626

namespace A384328

/-- `∑[A011867(n+5)]` -/
def P15419248095868330626.Spec : Prop :=
  ∀ n, P15419248095868330626.a n = A384328 n

end A384328

/-! ## A384328.P6782569805345319783

`∑[record[A008721(n)]]`
-/

namespace A384328.P6782569805345319783
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008721 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384328.P6782569805345319783

namespace A384328

/-- `∑[record[A008721(n)]]` -/
def P6782569805345319783.Spec : Prop :=
  ∀ n, P6782569805345319783.a n = A384328 n

end A384328

/-! ## A384328.P8568479648375593616

`∑[A008721(2*n)]`
-/

namespace A384328.P8568479648375593616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008721 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384328.P8568479648375593616

namespace A384328

/-- `∑[A008721(2*n)]` -/
def P8568479648375593616.Spec : Prop :=
  ∀ n, P8568479648375593616.a n = A384328 n

end A384328

/-! ## A384328.P14911992829520821710

`∑[∑[A008617(2*n)]]`
-/

namespace A384328.P14911992829520821710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008617 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384328.P14911992829520821710

namespace A384328

/-- `∑[∑[A008617(2*n)]]` -/
def P14911992829520821710.Spec : Prop :=
  ∀ n, P14911992829520821710.a n = A384328 n

end A384328

/-!
# A384332: Expansion of Product_{k>=1} (1 + k*x)^((2/3)^k).

The programs for A384332, there is no canonical definition to state claims against.
-/

/-! ## A384332.P8569467653799154867

`xor(A008472(A023145(3*n+1)), A015132(n))`
-/

namespace A384332.P8569467653799154867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008472 (A023145 (3 * n + 1)).toNat) (A015132 n)

end

end A384332.P8569467653799154867

/-!
# A384335: Expansion of g.f.: cosh(7*arctanh(6*sqrt(x))).

The programs for A384335, the canonical program `A384335.P16997469815114454754` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384335 has offset 0).

The definition of A384335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A384335.P16997469815114454754

`9^n*(512*n^3+64*n²+144*n+15)*(2*n)!/(15*n!²)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384335

/-- `9^n*(512*n^3+64*n²+144*n+15)*(2*n)!/(15*n!²)` -/
def P16997469815114454754.Spec : Prop :=
  ∀ n, P16997469815114454754.a n = (A384335 n : ℚ)

end A384335

/-! ## A384335.P16553346694899297540

`A001019(n)*A285045(n)`
-/

namespace A384335.P16553346694899297540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001019 n * A285045 n

end

end A384335.P16553346694899297540

namespace A384335

/-- `A001019(n)*A285045(n)` -/
def P16553346694899297540.Spec : Prop :=
  ∀ n, P16553346694899297540.a n = A384335 n

end A384335

/-!
# A384338: a(n) = Sum_{k=0..n} 2^k * binomial(3*n+1,k) * binomial(3*n-k,n-k).

The programs for A384338, there is no canonical definition to state claims against.
-/

/-! ## A384338.P2828519796139534028

`A193856(A062725(n))`
-/

namespace A384338.P2828519796139534028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193856 (A062725 n).toNat

end

end A384338.P2828519796139534028

/-! ## A384338.P17447172212574825242

`A193857(A062728(n))`
-/

namespace A384338.P17447172212574825242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193857 (A062728 n).toNat

end

end A384338.P17447172212574825242

/-!
# A384347: Heinz numbers of integer partitions with exactly two possible ways to choose disjoint strict partitions of each part.

The programs for A384347, there is no canonical definition to state claims against.
-/

/-! ## A384347.P17774762670834025513

`eq[2, A383706(n+1)]+1`
-/

namespace A384347.P17774762670834025513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A384347.P17774762670834025513

/-! ## A384347.P6067445630436711500

`eq[2, A383706(A028310(n))]`
-/

namespace A384347.P6067445630436711500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383706 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A384347.P6067445630436711500

/-! ## A384347.P2417733584766483019

`eq[A070333(A323436(n)), A128998(n+1)]`
-/

namespace A384347.P2417733584766483019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070333 (A323436 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128998 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A384347.P2417733584766483019

/-!
# A384348: Number of integer partitions of n with no proper way to choose disjoint strict partitions of each part.

The programs for A384348, there is no canonical definition to state claims against.
-/

/-! ## A384348.P16819737474433993751

`A000041(n)-A384317(n)`
-/

namespace A384348.P16819737474433993751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A384317 n

end

end A384348.P16819737474433993751

/-! ## A384348.P9108457215565943836

`A213598(n)-A384317(n)`
-/

namespace A384348.P9108457215565943836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A384317 n

end

end A384348.P9108457215565943836

/-! ## A384348.P2566852840359570093

`A330643(n)-A384317(n)`
-/

namespace A384348.P2566852840359570093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330643 n - A384317 n

end

end A384348.P2566852840359570093

/-! ## A384348.P6028831600273568422

`A175804(A000096(n))-A384317(n)`
-/

namespace A384348.P6028831600273568422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175804 (A000096 n).toNat - A384317 n

end

end A384348.P6028831600273568422

/-! ## A384348.P9305205273449233412

`A183568(A179865(n+1))-A384317(n)`
-/

namespace A384348.P9305205273449233412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183568 (A179865 (n + 1)).toNat - A384317 n

end

end A384348.P9305205273449233412

/-!
# A384349: Heinz numbers of integer partitions with no proper way to choose disjoint strict partitions of each part.

The programs for A384349, there is no canonical definition to state claims against.
-/

/-! ## A384349.P16641183879533567065

`∪[A051144(n+1), A384320(n+1)]`
-/

namespace A384349.P16641183879533567065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384349.P16641183879533567065

/-! ## A384349.P11446307907473098916

`∪[A337806(n+1), A384320(n+1)]`
-/

namespace A384349.P11446307907473098916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337806 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A384349.P11446307907473098916

/-! ## A384349.P2451832700413698169

`lt[A384389(n+1), 1]+1`
-/

namespace A384349.P2451832700413698169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384389 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A384349.P2451832700413698169

/-! ## A384349.P4417124088107155042

`lt[A383706(n+1), 2]+1`
-/

namespace A384349.P4417124088107155042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383706 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A384349.P4417124088107155042

/-! ## A384349.P7120810170109595789

`lt[A001462(n+1), A359681(A074206(n))]`
-/

namespace A384349.P7120810170109595789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359681 (A074206 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A384349.P7120810170109595789

/-!
# A384350: Number of subsets of {1..n} containing at least one element that is a sum of distinct non-elements.

The programs for A384350, there is no canonical definition to state claims against.
-/

/-! ## A384350.P455120987982050736

`2^n-A326080(n)`
-/

namespace A384350.P455120987982050736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A326080 n

end

end A384350.P455120987982050736

/-! ## A384350.P2144643883523851263

`abs(A000079(n)-A326080(n))`
-/

namespace A384350.P2144643883523851263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A326080 n|

end

end A384350.P2144643883523851263

/-! ## A384350.P5822376450606721511

`A000079(n)-∑[A179822(n)]`
-/

namespace A384350.P5822376450606721511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384350.P5822376450606721511

/-! ## A384350.P10900224094560600502

`∑[A011782(n)-A179822(n)]`
-/

namespace A384350.P10900224094560600502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A179822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384350.P10900224094560600502

/-! ## A384350.P9226953558494606652

`A000051(n)-(A326080(n)+1)`
-/

namespace A384350.P9226953558494606652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A326080 n + 1)

end

end A384350.P9226953558494606652

/-!
# A384354: Numbers k such that the arithmetic mean of the divisors of k evenly divides k+1.

The programs for A384354, there is no canonical definition to state claims against.
-/

/-! ## A384354.P11605372202747132231

`lt[A000005(n+1)%A339965(n+1), 1]+1`
-/

namespace A384354.P11605372202747132231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (n + 1)) (A339965 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A384354.P11605372202747132231

/-! ## A384354.P4025456518899187930

`eq[A257679(n), A345158(A323347(n))]`
-/

namespace A384354.P4025456518899187930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257679 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345158 (A323347 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A384354.P4025456518899187930

/-! ## A384354.P16366308604269565362

`eq[A097794(n+1), A231735(n+1)]`
-/

namespace A384354.P16366308604269565362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A384354.P16366308604269565362

/-! ## A384354.P2173429725767336776

`∩[A261466(n+1), A307895(n+1)]`
-/

namespace A384354.P2173429725767336776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261466 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307895 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384354.P2173429725767336776

/-! ## A384354.P212984191713650234

`lt[A293813(n), A221916(A293813(n))]`
-/

namespace A384354.P212984191713650234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221916 (A293813 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A384354.P212984191713650234

/-!
# A384362: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) = Sum_{i=0..k*n} 2^i * Sum_{j=0..i} (-1)^j * binomial(i,j) * binomial(i-j,n)^k.

The programs for A384362, there is no canonical definition to state claims against.
-/

/-! ## A384362.P3736879698550154801

`A245898(A026780(n))`
-/

namespace A384362.P3736879698550154801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (A026780 n).toNat

end

end A384362.P3736879698550154801

/-! ## A384362.P6462503760774068878

`A055907(A103997(n)+1)`
-/

namespace A384362.P6462503760774068878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055907 (A103997 n + 1).toNat

end

end A384362.P6462503760774068878

/-! ## A384362.P10914999294237047097

`A193691(A256069(n+1))`
-/

namespace A384362.P10914999294237047097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193691 (A256069 (n + 1)).toNat

end

end A384362.P10914999294237047097

/-! ## A384362.P16443647374621013147

`A245898(A208510(n+1))`
-/

namespace A384362.P16443647374621013147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245898 (A208510 (n + 1)).toNat

end

end A384362.P16443647374621013147

/-! ## A384362.P5787923191619664584

`A055907(∑{d}[A103997(n), #])`
-/

namespace A384362.P5787923191619664584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103997 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055907 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A384362.P5787923191619664584

/-!
# A384363: Slice of elementary triangular automaton rule 58, starting from a lone 1 cell.

The programs for A384363, there is no canonical definition to state claims against.
-/

/-! ## A384363.P8137575923078009286

`A316824(A196906(n+1))+A295065(n)`
-/

namespace A384363.P8137575923078009286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316824 (A196906 (n + 1)).toNat + A295065 n

end

end A384363.P8137575923078009286

/-! ## A384363.P4992175137181908254

`A238478(2*(n+1))-A274451(A250120(n))`
-/

namespace A384363.P4992175137181908254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238478 (2 * (n + 1)) - A274451 (A250120 n).toNat

end

end A384363.P4992175137181908254

/-!
# A384364: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals downwards, where A(n,k) = Sum_{i=0..k*n} 3^i * Sum_{j=0..i} (-1)^j * binomial(i,j) * binomial(i-j,n)^k.

The programs for A384364, there is no canonical definition to state claims against.
-/

/-! ## A384364.P6139550510428132830

`A124611(A329070(n))`
-/

namespace A384364.P6139550510428132830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124611 (A329070 n).toNat

end

end A384364.P6139550510428132830

/-!
# A384366: a(n) = Sum_{k=0..n} 2^k * binomial(4*n+1,k) * binomial(4*n-k,n-k).

The programs for A384366, there is no canonical definition to state claims against.
-/

/-! ## A384366.P13905186363123484655

`A193856(A139276(n))`
-/

namespace A384366.P13905186363123484655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193856 (A139276 n).toNat

end

end A384366.P13905186363123484655

/-! ## A384366.P16012093792655469066

`A193857(A139277(n))`
-/

namespace A384366.P16012093792655469066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193857 (A139277 n).toNat

end

end A384366.P16012093792655469066

/-!
# A384367: a(n) = a(n-1)+2*a(n-2)+a(n-3) with a(0)=1, a(1)=4, a(2) = 6.

The programs for A384367, the canonical program `A384367.P11525340815926243755` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A384367 has offset 0).

The definition of A384367 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-2)+a(n-3)` (program `A384367.P11525340815926243755`, by `A384367.P11525340815926243755.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A384367.P11525340815926243755

`a(n-1)+2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=6`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A384367

/-- `a(n-1)+2*a(n-2)+a(n-3)` -/
def P11525340815926243755.Spec : Prop :=
  ∀ n, (P11525340815926243755.a n : ℤ) = A384367 n

theorem P11525340815926243755.correct : P11525340815926243755.Spec := by
  intro n
  simp only [A384367]

end A384367

/-! ## A384367.P6998126044245757675

`ogf((1+3x)/(1-x-2x^2-x^3))`
-/

namespace A384367.P6998126044245757675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -1, -2, -1] n

end

end A384367.P6998126044245757675

namespace A384367

/-- `ogf((1+3x)/(1-x-2x^2-x^3))` -/
def P6998126044245757675.Spec : Prop :=
  ∀ n, P6998126044245757675.a n = A384367 n

end A384367

/-! ## A384367.P6481866295066021230

`A001609(Δ[n²])`
-/

namespace A384367.P6481866295066021230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001609 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A384367.P6481866295066021230

namespace A384367

/-- `A001609(Δ[n²])` -/
def P6481866295066021230.Spec : Prop :=
  ∀ n, P6481866295066021230.a n = A384367 n

end A384367

/-! ## A384367.P8875230518811909761

`A001634(2*n)+1`
-/

namespace A384367.P8875230518811909761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001634 (2 * n) + 1

end

end A384367.P8875230518811909761

namespace A384367

/-- `A001634(2*n)+1` -/
def P8875230518811909761.Spec : Prop :=
  ∀ n, P8875230518811909761.a n = A384367 n

end A384367

/-! ## A384367.P5413533831943831595

`A286910(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A384367.P5413533831943831595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A286910 (n + 1) - a (n - 1)

end

end A384367.P5413533831943831595

namespace A384367

/-- `A286910(n+1)-a(n-1)` -/
def P5413533831943831595.Spec : Prop :=
  ∀ n, P5413533831943831595.a n = A384367 n

end A384367

/-! ## A384367.P1014087816580797008

`A323951(2*n+1)+2*n+1`
-/

namespace A384367.P1014087816580797008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323951 (2 * n + 1) + (2 * n + 1 : ℤ)

end

end A384367.P1014087816580797008

namespace A384367

/-- `A323951(2*n+1)+2*n+1` -/
def P1014087816580797008.Spec : Prop :=
  ∀ n, P1014087816580797008.a n = A384367 n

end A384367

/-! ## A384367.P11183996902483018594

`A218078(n+1)-A078007(n)`
-/

namespace A384367.P11183996902483018594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218078 (n + 1) - A078007 n

end

end A384367.P11183996902483018594

namespace A384367

/-- `A218078(n+1)-A078007(n)` -/
def P11183996902483018594.Spec : Prop :=
  ∀ n, P11183996902483018594.a n = A384367 n

end A384367

/-! ## A384367.P7146987531305218990

`A101399(n+1)-A108122(n+1)`
-/

namespace A384367.P7146987531305218990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101399 (n + 1) - A108122 (n + 1)

end

end A384367.P7146987531305218990

namespace A384367

/-- `A101399(n+1)-A108122(n+1)` -/
def P7146987531305218990.Spec : Prop :=
  ∀ n, P7146987531305218990.a n = A384367 n

end A384367

/-! ## A384367.P9341611535428882437

`A003410(2*n+1)-A108122(n+1)`
-/

namespace A384367.P9341611535428882437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003410 (2 * n + 1) - A108122 (n + 1)

end

end A384367.P9341611535428882437

namespace A384367

/-- `A003410(2*n+1)-A108122(n+1)` -/
def P9341611535428882437.Spec : Prop :=
  ∀ n, P9341611535428882437.a n = A384367 n

end A384367

/-! ## A384367.P4684682155978500291

`sqrt(A218439(2*n+1))`
-/

namespace A384367.P4684682155978500291
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A218439 (2 * n + 1) : ℝ)

end

end A384367.P4684682155978500291

namespace A384367

/-- `sqrt(A218439(2*n+1))` -/
def P4684682155978500291.Spec : Prop :=
  ∀ n, P4684682155978500291.a n = (A384367 n : ℝ)

end A384367

/-! ## A384367.P5022940090810952136

`A218439(2*n+1)/A001609(2*n+1)`
-/

namespace A384367.P5022940090810952136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218439 (2 * n + 1) : ℚ) / (A001609 (2 * n + 1) : ℚ)

end

end A384367.P5022940090810952136

namespace A384367

/-- `A218439(2*n+1)/A001609(2*n+1)` -/
def P5022940090810952136.Spec : Prop :=
  ∀ n, P5022940090810952136.a n = (A384367 n : ℚ)

end A384367

/-!
# A384368: Number of permutations of [2n] with n inversions.

The programs for A384368, there is no canonical definition to state claims against.
-/

/-! ## A384368.P12496087905450349140

`A177517(A081267(n))`
-/

namespace A384368.P12496087905450349140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A081267 n).toNat

end

end A384368.P12496087905450349140

/-! ## A384368.P5067154886376923183

`A177517(A000217(3*n+1)-n)`
-/

namespace A384368.P5067154886376923183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177517 (A000217 (3 * n + 1) - (n : ℤ)).toNat

end

end A384368.P5067154886376923183

/-! ## A384368.P16039933316693888016

`A128564(A130883(n))`
-/

namespace A384368.P16039933316693888016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128564 (A130883 n).toNat

end

end A384368.P16039933316693888016

/-! ## A384368.P3338637219276074158

`A128564(A000384(n)+1)`
-/

namespace A384368.P3338637219276074158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128564 (A000384 n + 1).toNat

end

end A384368.P3338637219276074158

/-! ## A384368.P16235041875902610473

`A128564(A058331(n)-n)`
-/

namespace A384368.P16235041875902610473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128564 (A058331 n - (n : ℤ)).toNat

end

end A384368.P16235041875902610473

/-!
# A384370: Squarefree integers m such that there are precisely 5 groups of order m.

The programs for A384370, there is no canonical definition to state claims against.
-/

/-! ## A384370.P4372985962431250001

`filter[A054397(n+1), A008966(#)]`
-/

namespace A384370.P4372985962431250001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054397 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A384370.P4372985962431250001

/-! ## A384370.P2036446401931704455

`∩[A054397(n+1), A243128(n+1)]`
-/

namespace A384370.P2036446401931704455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384370.P2036446401931704455

/-! ## A384370.P10585062856053988811

`∩[A054397(n+1), A300117(n+1)]`
-/

namespace A384370.P10585062856053988811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384370.P10585062856053988811

/-! ## A384370.P10582259764666113249

`∩[A054397(n+1), A392008(n+1)]`
-/

namespace A384370.P10582259764666113249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384370.P10582259764666113249

/-! ## A384370.P17841066693147078295

`∩[A054397(n+1), A350352(n+1)]`
-/

namespace A384370.P17841066693147078295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054397 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A384370.P17841066693147078295

/-!
# A384371: Number of rich ternary words of length n.

The programs for A384371, there is no canonical definition to state claims against.
-/

/-! ## A384371.P15774256560119131804

`A130446(A289658(n))`
-/

namespace A384371.P15774256560119131804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130446 (A289658 n).toNat

end

end A384371.P15774256560119131804

/-! ## A384371.P7713319477213570305

`∑[A325393(A014105(n))]`
-/

namespace A384371.P7713319477213570305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325393 (A014105 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384371.P7713319477213570305

/-!
# A384372: Numbers m such that both m-1 and m+1 are the product of at least 4 not necessarily distinct primes.

The programs for A384372, there is no canonical definition to state claims against.
-/

/-! ## A384372.P7398663952751997992

`2*A357077(n+1)+1`
-/

namespace A384372.P7398663952751997992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A357077 (n + 1) + 1

end

end A384372.P7398663952751997992

/-! ## A384372.P8293847369819320344

`A130773(A357077(n+1))`
-/

namespace A384372.P8293847369819320344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A357077 (n + 1)).toNat

end

end A384372.P8293847369819320344

/-!
# A384374: Expansion of e.g.f. exp(x)*(exp(x) - 1)*(exp(x) - x - 1)^2.

The programs for A384374, there is no canonical definition to state claims against.
-/

/-! ## A384374.P7640137721115996579

`A356873(A392405(n))`
-/

namespace A384374.P7640137721115996579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356873 (A392405 n).toNat

end

end A384374.P7640137721115996579

/-! ## A384374.P3062340825380502332

`∑[A326579(A058837(n))]`
-/

namespace A384374.P3062340825380502332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326579 (A058837 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A384374.P3062340825380502332

/-! ## A384374.P17174851431372552863

`A063724(A072878(n+1))`
-/

namespace A384374.P17174851431372552863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063724 (A072878 (n + 1)).toNat

end

end A384374.P17174851431372552863

/-!
# A384376: Irregular triangle read by rows: T(n,k) is the number of connected induced k-vertex subgraphs of the 1-skeleton of the n-th Johnson solid, up to symmetries of that solid; 1 <= n <= 92, 1 <= k <= A242733(n).

The programs for A384376, there is no canonical definition to state claims against.
-/

/-! ## A384376.P15600283886455228612

`gcd(A343194(A048253(n)), A384380(n+1))`
-/

namespace A384376.P15600283886455228612
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A343194 (A048253 n).toNat) (A384380 (n + 1))

end

end A384376.P15600283886455228612

/-! ## A384376.P16094787493286973388

`A384380(n+1)-A035187(A270929(2*n+3))`
-/

namespace A384376.P16094787493286973388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384380 (n + 1) - A035187 (A270929 (2 * n + 3)).toNat

end

end A384376.P16094787493286973388

/-! ## A384376.P5892062534045967664

`A085029(A002957(2*n+3)%A006512(n+3))`
-/

namespace A384376.P5892062534045967664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085029 (Int.tmod (A002957 (2 * n + 3)) (A006512 (n + 3))).toNat

end

end A384376.P5892062534045967664

/-!
# A384382: Number of polynomials with a shortest addition-multiplication chain of length n, starting with 1 and x.

The programs for A384382, there is no canonical definition to state claims against.
-/

/-! ## A384382.P9800041493079938693

`A088218(n+1)+A034888(A357207(n))`
-/

namespace A384382.P9800041493079938693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1) + A034888 (A357207 n).toNat

end

end A384382.P9800041493079938693

/-! ## A384382.P378756154788956697

`A008619(A350510(2*(n+1))+A082428(n+1))`
-/

namespace A384382.P378756154788956697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A350510 (2 * (n + 1)) + A082428 (n + 1)).toNat

end

end A384382.P378756154788956697

/-!
# A384383: Number of polynomials with a shortest addition-multiplication-composition chain of length n, starting with 1 and x.

The programs for A384383, there is no canonical definition to state claims against.
-/

/-! ## A384383.P17095049703997838547

`A151550(A383553(n+1))+1`
-/

namespace A384383.P17095049703997838547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151550 (A383553 (n + 1)).toNat + 1

end

end A384383.P17095049703997838547

/-!
# A384389: Number of proper ways to choose disjoint strict integer partitions of each prime index of n.

The programs for A384389, there is no canonical definition to state claims against.
-/

/-! ## A384389.P9487613047831414797

`A383706(n+1)-char[∏{p}[n, #]-1]`
-/

namespace A384389.P9487613047831414797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383706 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A384389.P9487613047831414797

/-! ## A384389.P16507134425539749932

`A383706(n+1)-A008966(n+1)`
-/

namespace A384389.P16507134425539749932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383706 (n + 1) - A008966 (n + 1)

end

end A384389.P16507134425539749932

/-! ## A384389.P7646398057559441757

`A383706(n+1)-abs(A008683(n+1))`
-/

namespace A384389.P7646398057559441757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383706 (n + 1) - |A008683 (n + 1)|

end

end A384389.P7646398057559441757

/-! ## A384389.P1705852174253392378

`A383706(n+1)+A010815(∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A384389.P1705852174253392378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383706 (n + 1) + A010815 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)

end

end A384389.P1705852174253392378

/-! ## A384389.P4034323828045750534

`A383706(n+1)-A121373(∏{p}[n+1, #^val(n+1, #²)]²)`
-/

namespace A384389.P4034323828045750534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383706 (n + 1) - A121373 ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)) ^ 2)

end

end A384389.P4034323828045750534

/-! ## A384389.P18041331105807959192

`A383706(n+1)-A010055(A007425(n+1))`
-/

namespace A384389.P18041331105807959192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383706 (n + 1) - A010055 (A007425 (n + 1)).toNat

end

end A384389.P18041331105807959192

/-! ## A384389.P2107443784741039845

`A383706(n+1)-A383706(A046523(n+1))`
-/

namespace A384389.P2107443784741039845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383706 (n + 1) - A383706 (A046523 (n + 1)).toNat

end

end A384389.P2107443784741039845

/-!
# A384390: Heinz numbers of integer partitions with a unique proper way to choose disjoint strict partitions of each part.

The programs for A384390, there is no canonical definition to state claims against.
-/

/-! ## A384390.P8989819885916737020

`record[∏{p}[A384347(n+1), #]]`
-/

namespace A384390.P8989819885916737020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384347 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A384390.P8989819885916737020

/-! ## A384390.P8027040480954156564

`filter[A384347(n+1), A008966(#)]`
-/

namespace A384390.P8027040480954156564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A384390.P8027040480954156564

/-! ## A384390.P17645074458946392185

`filter[A384347(n+1), A181183(#)]`
-/

namespace A384390.P17645074458946392185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A181183 (f1 j).toNat = 1) n)

end

end A384390.P17645074458946392185

/-! ## A384390.P3758255920955468875

`filter[A384347(n+1), A295316(#)]`
-/

namespace A384390.P3758255920955468875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A384390.P3758255920955468875

/-! ## A384390.P8242218049699106196

`filter[A384347(n+1), A307421(#)]`
-/

namespace A384390.P8242218049699106196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307421 (f1 j).toNat = 1) n)

end

end A384390.P8242218049699106196

/-!
# A384391: Number of subsets of {1..n} containing n and some element that is a sum of distinct non-elements.

The programs for A384391, there is no canonical definition to state claims against.
-/

/-! ## A384391.P3556756703059306782

`Δ[A384350(n)]`
-/

namespace A384391.P3556756703059306782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384350 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384391.P3556756703059306782

/-! ## A384391.P15404580809376728293

`2^n-A179822(n+1)`
-/

namespace A384391.P15404580809376728293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A179822 (n + 1)

end

end A384391.P15404580809376728293

/-! ## A384391.P13802149655502103865

`Δ[A000051(n)-A326080(n)]`
-/

namespace A384391.P13802149655502103865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - A326080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384391.P13802149655502103865

/-! ## A384391.P3254870035884938358

`Δ[A000079(n)-A326080(n)]`
-/

namespace A384391.P3254870035884938358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - A326080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384391.P3254870035884938358

/-! ## A384391.P1967993653686416830

`Δ[A000225(n)-A326080(n)]`
-/

namespace A384391.P1967993653686416830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A326080 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A384391.P1967993653686416830

/-!
# A384392: Number of integer partitions of n whose distinct parts are maximally refined.

The programs for A384392, there is no canonical definition to state claims against.
-/

/-! ## A384392.P16881455192688550612

`A340851(A051027(2*n+3))+A178702(n)`
-/

namespace A384392.P16881455192688550612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340851 (A051027 (2 * n + 3)).toNat + A178702 n

end

end A384392.P16881455192688550612

/-!
# A384393: Heinz numbers of integer partitions with more than one proper way to choose disjoint strict partitions of each part.

The programs for A384393, there is no canonical definition to state claims against.
-/

/-! ## A384393.P5664593951080384763

`lt[exp(A077462(n)), A143275(n+1)]`
-/

namespace A384393.P5664593951080384763
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A077462 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143275 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A384393.P5664593951080384763

/-! ## A384393.P6347693056293952298

`lt[A072895(A326842(n)), A260653(2*n+5)]`
-/

namespace A384393.P6347693056293952298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072895 (A326842 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260653 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A384393.P6347693056293952298

/-! ## A384393.P2359203570534287696

`lt[1, A384389(n+1)]+1`
-/

namespace A384393.P2359203570534287696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384389 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A384393.P2359203570534287696

/-! ## A384393.P7140001197481875539

`lt[1, A384389(A233583(n+1))]`
-/

namespace A384393.P7140001197481875539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384389 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A384393.P7140001197481875539

/-! ## A384393.P14154943346385574209

`lt[A250120(A383098(n)), n]`
-/

namespace A384393.P14154943346385574209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A383098 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A384393.P14154943346385574209

/-!
# A384394: Number of proper ways to choose disjoint strict integer partitions, one of each conjugate prime index of n.

The programs for A384394, there is no canonical definition to state claims against.
-/

/-! ## A384394.P588852506378691540

`A384005(n+1)-A341629(n+1)`
-/

namespace A384394.P588852506378691540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384005 (n + 1) - A341629 (n + 1)

end

end A384394.P588852506378691540

/-! ## A384394.P2130533797032517244

`A384005(n+1)-A384005(∏{p}[n+1, #])`
-/

namespace A384394.P2130533797032517244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384005 (n + 1) - A384005 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A384394.P2130533797032517244

/-! ## A384394.P18173458253833885432

`A384005(n+1)-A384005(A007947(n+1))`
-/

namespace A384394.P18173458253833885432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384005 (n + 1) - A384005 (A007947 (n + 1)).toNat

end

end A384394.P18173458253833885432

/-! ## A384394.P8184957025461982252

`A000120(A048768(3*n+5)%((n+1)/∏{p}[n+1, #]))`
-/

namespace A384394.P8184957025461982252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A048768 (3 * n + 5)) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)))).toNat

end

end A384394.P8184957025461982252

/-! ## A384394.P6300113107898578027

`and(A320542(n+1), A329343(n+1))`
-/

namespace A384394.P6300113107898578027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A320542 (n + 1)) (A329343 (n + 1))

end

end A384394.P6300113107898578027

/-!
# A384395: Number of integer partitions of n with more than one proper way to choose disjoint strict partitions of each part.

The programs for A384395, there is no canonical definition to state claims against.
-/

/-! ## A384395.P1703137538365554069

`A384317(n)-A384319(n)`
-/

namespace A384395.P1703137538365554069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384317 n - A384319 n

end

end A384395.P1703137538365554069

