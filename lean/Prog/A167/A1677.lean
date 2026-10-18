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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
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
# A167700: Number of partitions of n into distinct odd squares.

The programs for A167700, there is no canonical definition to state claims against.
-/

/-! ## A167700.P3043100945552221982

`and(A040007(A141851(n+1)), A282866(n))`
-/

namespace A167700.P3043100945552221982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040007 (A141851 (n + 1)).toNat) (A282866 n)

end

end A167700.P3043100945552221982

/-! ## A167700.P12865833117155716678

`and(A158478(A325824(n+1)), A282866(n))`
-/

namespace A167700.P12865833117155716678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158478 (A325824 (n + 1)).toNat) (A282866 n)

end

end A167700.P12865833117155716678

/-! ## A167700.P1118982781747323002

`and(A174971(A129588(n)), A282866(n))`
-/

namespace A167700.P1118982781747323002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A174971 (A129588 n).toNat) (A282866 n)

end

end A167700.P1118982781747323002

/-! ## A167700.P8636780722412457943

`and(A134451(A285244(n)), A282866(n))`
-/

namespace A167700.P8636780722412457943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A134451 (A285244 n).toNat) (A282866 n)

end

end A167700.P8636780722412457943

/-! ## A167700.P8128138060851415461

`∑{e}[A188538(A331918(n)), #]`
-/

namespace A167700.P8128138060851415461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188538 (A331918 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A167700.P8128138060851415461

/-! ## A167700.P15395717814264358562

`∑{d}[A182457(A331918(n)), A155971(#)]`
-/

namespace A167700.P15395717814264358562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182457 (A331918 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A155971 d

end

end A167700.P15395717814264358562

/-! ## A167700.P15478282128047674432

`and(A002260(A167614(n+1)), A282866(n))`
-/

namespace A167700.P15478282128047674432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002260 (A167614 (n + 1)).toNat) (A282866 n)

end

end A167700.P15478282128047674432

/-! ## A167700.P600120933463030679

`and(A002260(A167499(n)+n), A282866(n))`
-/

namespace A167700.P600120933463030679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002260 (A167499 n + (n : ℤ)).toNat) (A282866 n)

end

end A167700.P600120933463030679

/-! ## A167700.P13964835086338929537

`and(A004736(A034856(n+1)), A282866(n))`
-/

namespace A167700.P13964835086338929537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004736 (A034856 (n + 1)).toNat) (A282866 n)

end

end A167700.P13964835086338929537

/-! ## A167700.P9552680570503849166

`and(A025581(C(n+5, 2)-4), A282866(n))`
-/

namespace A167700.P9552680570503849166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025581 (Nat.choose (n + 5) 2 - 4)) (A282866 n)

end

end A167700.P9552680570503849166

/-! ## A167700.P11174258952437860533

`A000035(3*A285244(n))`
-/

namespace A167700.P11174258952437860533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (3 * A285244 n).toNat

end

end A167700.P11174258952437860533

/-! ## A167700.P4216851052288520146

`A097325(9*A285244(n))`
-/

namespace A167700.P4216851052288520146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097325 (9 * A285244 n).toNat

end

end A167700.P4216851052288520146

/-! ## A167700.P4068814986606367960

`A000567(3*A285244(n))%2`
-/

namespace A167700.P4068814986606367960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000567 (3 * A285244 n).toNat) 2

end

end A167700.P4068814986606367960

/-! ## A167700.P690658538570648143

`A182457(A331918(n))^A000009(n)`
-/

namespace A167700.P690658538570648143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182457 (A331918 n).toNat : ℚ) ^ (A000009 n : ℤ)

end

end A167700.P690658538570648143

/-! ## A167700.P11858067234370229293

`A182457(A331918(n))^A000124(n)`
-/

namespace A167700.P11858067234370229293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182457 (A331918 n).toNat : ℚ) ^ (A000124 n : ℤ)

end

end A167700.P11858067234370229293

/-! ## A167700.P1256343974692091729

`A182457(A331918(n))^A000217(n)`
-/

namespace A167700.P1256343974692091729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182457 (A331918 n).toNat : ℚ) ^ (A000217 n : ℤ)

end

end A167700.P1256343974692091729

/-! ## A167700.P8871427005045726618

`and(A020639(A097803(n)), A282866(n))`
-/

namespace A167700.P8871427005045726618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (A097803 n).toNat) (A282866 n)

end

end A167700.P8871427005045726618

/-! ## A167700.P2228159616611070862

`and(A020639(3*A022004(n+1)), A282866(n))`
-/

namespace A167700.P2228159616611070862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A020639 (3 * A022004 (n + 1)).toNat) (A282866 n)

end

end A167700.P2228159616611070862

/-! ## A167700.P2999264173664366343

`A316961(n)%A178815(n+1)`
-/

namespace A167700.P2999264173664366343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A316961 n) (A178815 (n + 1))

end

end A167700.P2999264173664366343

/-!
# A167701: Records for partitions into distinct odd squares, cf. A167700.

The programs for A167701, there is no canonical definition to state claims against.
-/

/-! ## A167701.P2875730097181720138

`record[A167700(n)]`
-/

namespace A167701.P2875730097181720138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167701.P2875730097181720138

/-! ## A167701.P16905243439057280698

`A167700(A167702(n+1))`
-/

namespace A167701.P16905243439057280698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167700 (A167702 (n + 1)).toNat

end

end A167701.P16905243439057280698

/-! ## A167701.P800945469511253339

`record[A281084(n)]`
-/

namespace A167701.P800945469511253339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167701.P800945469511253339

/-! ## A167701.P7000441411181865394

`lt[3, A144261(∑[A144302(n+1)])]`
-/

namespace A167701.P7000441411181865394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144261 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A167701.P7000441411181865394

/-! ## A167701.P7729568863113686508

`lt[A064052(n+1), A359424(A007429(n+1))]`
-/

namespace A167701.P7729568863113686508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359424 (A007429 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167701.P7729568863113686508

/-!
# A167702: Where records occur for partitions into distinct odd squares, cf. A167700.

The programs for A167702, there is no canonical definition to state claims against.
-/

/-! ## A167702.P452553781622343861

`A350195(A167701(n+1))-A000007(n)`
-/

namespace A167702.P452553781622343861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350195 (A167701 (n + 1)).toNat - A000007 n

end

end A167702.P452553781622343861

/-! ## A167702.P77247188818376204

`A350195(A167701(n+1))-A111332(n)`
-/

namespace A167702.P77247188818376204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350195 (A167701 (n + 1)).toNat - A111332 n

end

end A167702.P77247188818376204

/-! ## A167702.P16796312232162190081

`A350195(A167701(n+1))-A112315(n)`
-/

namespace A167702.P16796312232162190081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350195 (A167701 (n + 1)).toNat - A112315 n

end

end A167702.P16796312232162190081

/-! ## A167702.P5508789500788708614

`A057427(n)*A350195(A167701(n+1))`
-/

namespace A167702.P5508789500788708614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A350195 (A167701 (n + 1)).toNat

end

end A167702.P5508789500788708614

/-! ## A167702.P13011726396900878730

`A178489(n)*A350195(A167701(n+1))`
-/

namespace A167702.P13011726396900878730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n * A350195 (A167701 (n + 1)).toNat

end

end A167702.P13011726396900878730

/-!
# A167703: Numbers that cannot be partitioned into distinct odd squares.

The programs for A167703, there is no canonical definition to state claims against.
-/

/-! ## A167703.P3892496838854068958

`eq[0, A167700(n)]`
-/

namespace A167703.P3892496838854068958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167703.P3892496838854068958

/-! ## A167703.P14676622492659037912

`eq[0, A331918(n)]`
-/

namespace A167703.P14676622492659037912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167703.P14676622492659037912

/-! ## A167703.P16568558799214976588

`record[gcd(n+2, A167700(n+2))]`
-/

namespace A167703.P16568558799214976588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A167700 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167703.P16568558799214976588

/-! ## A167703.P4281100734461445669

`A000027(lt[A167700(n), 1])`
-/

namespace A167703.P4281100734461445669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167700 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A167703.P4281100734461445669

/-! ## A167703.P6169328228677721795

`lt[A331918(A028310(n)), 1]`
-/

namespace A167703.P6169328228677721795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331918 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A167703.P6169328228677721795

/-! ## A167703.P6907207960887086382

`lt[A331918(n), A057427(n)]`
-/

namespace A167703.P6907207960887086382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167703.P6907207960887086382

/-! ## A167703.P11815952847548219423

`lt[A331918(n), A000035(A004273(n))]`
-/

namespace A167703.P11815952847548219423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004273 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167703.P11815952847548219423

/-! ## A167703.P12084541880934538862

`lt[A331918(n), A000035(A005408(n))]`
-/

namespace A167703.P12084541880934538862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A005408 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167703.P12084541880934538862

/-! ## A167703.P16906750006600488845

`lt[A331918(n), A019425(A005843(n))]`
-/

namespace A167703.P16906750006600488845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A005843 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167703.P16906750006600488845

/-! ## A167703.P17499898991702641311

`lt[A331918(n), A019425(A019425(n))]`
-/

namespace A167703.P17499898991702641311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019425 (A019425 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167703.P17499898991702641311

/-! ## A167703.P8610298503805441950

`lt[A331918(n), A001222(A002144(n+1))]`
-/

namespace A167703.P8610298503805441950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002144 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167703.P8610298503805441950

/-! ## A167703.P785606465765414777

`lt[A331918(n), A007875(A003641(n+1))]`
-/

namespace A167703.P785606465765414777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (A003641 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167703.P785606465765414777

/-! ## A167703.P7365315133090094862

`lt[A331918(n), A007875(A007875(n+1))]`
-/

namespace A167703.P7365315133090094862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (A007875 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167703.P7365315133090094862

/-! ## A167703.P13761425127687685260

`lt[A331918(n), A001221(A085759(n+1))]`
-/

namespace A167703.P13761425127687685260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A085759 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167703.P13761425127687685260

/-! ## A167703.P10907092896658119302

`lt[A331918(n), A033630(A341620(n+1))]`
-/

namespace A167703.P10907092896658119302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (A341620 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167703.P10907092896658119302

/-! ## A167703.P17134642802795776876

`lt[A331918(n), A033630(A065205(n+1))]`
-/

namespace A167703.P17134642802795776876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033630 (A065205 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167703.P17134642802795776876

/-! ## A167703.P8409727831711544973

`lt[A331918(n), A001222(A331896(n+1))]`
-/

namespace A167703.P8409727831711544973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331918 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A331896 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167703.P8409727831711544973

/-!
# A167704: a(0)=1, a(1)=0, a(2)=2, a(3)=1, a(n)=a(n-2)+a(n-3)+a(n-4) for n>3.

The programs for A167704, the canonical program `A167704.P11447587284351928085` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167704 has offset 0).

The definition of A167704 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)+a(n-4)` (program `A167704.P11447587284351928085`, by `A167704.P11447587284351928085.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167704.P11447587284351928085

`a(n-2)+a(n-3)+a(n-4)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A167704

/-- `a(n-2)+a(n-3)+a(n-4)` -/
def P11447587284351928085.Spec : Prop :=
  ∀ n, (P11447587284351928085.a n : ℤ) = A167704 n

theorem P11447587284351928085.correct : P11447587284351928085.Spec := by
  intro n
  simp only [A167704]

end A167704

/-! ## A167704.P2899634267456774101

`ogf((1+x^2)/(1-x^2-x^3-x^4))`
-/

namespace A167704.P2899634267456774101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1] [1, 0, -1, -1, -1] n

end

end A167704.P2899634267456774101

namespace A167704

/-- `ogf((1+x^2)/(1-x^2-x^3-x^4))` -/
def P2899634267456774101.Spec : Prop :=
  ∀ n, P2899634267456774101.a n = A167704 n

end A167704

/-! ## A167704.P271620463446220304

`A277253(n+1)+A107458(n)`
-/

namespace A167704.P271620463446220304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 (n + 1) + A107458 n

end

end A167704.P271620463446220304

namespace A167704

/-- `A277253(n+1)+A107458(n)` -/
def P271620463446220304.Spec : Prop :=
  ∀ n, P271620463446220304.a n = A167704 n

end A167704

/-! ## A167704.P2158726681182094211

`A107458(n+2)+A013979(n)`
-/

namespace A167704.P2158726681182094211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (n + 2) + A013979 n

end

end A167704.P2158726681182094211

namespace A167704

/-- `A107458(n+2)+A013979(n)` -/
def P2158726681182094211.Spec : Prop :=
  ∀ n, P2158726681182094211.a n = A167704 n

end A167704

/-! ## A167704.P13022849789246428983

`A013979(n)+A013979(n)-A078012(n)`
-/

namespace A167704.P13022849789246428983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 n + (A013979 n - A078012 n)

end

end A167704.P13022849789246428983

namespace A167704

/-- `A013979(n)+A013979(n)-A078012(n)` -/
def P13022849789246428983.Spec : Prop :=
  ∀ n, P13022849789246428983.a n = A167704 n

end A167704

/-! ## A167704.P5140988644842425425

`2*A013979(n)-A078012(n)`
-/

namespace A167704.P5140988644842425425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A013979 n - A078012 n

end

end A167704.P5140988644842425425

namespace A167704

/-- `2*A013979(n)-A078012(n)` -/
def P5140988644842425425.Spec : Prop :=
  ∀ n, P5140988644842425425.a n = A167704 n

end A167704

/-! ## A167704.P5754901985324234175

`abs(∑[A199804(n+1)])`
-/

namespace A167704.P5754901985324234175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A167704.P5754901985324234175

namespace A167704

/-- `abs(∑[A199804(n+1)])` -/
def P5754901985324234175.Spec : Prop :=
  ∀ n, P5754901985324234175.a n = A167704 n

end A167704

/-! ## A167704.P2421116910344228086

`A068921(n)-a(n-1)` with `a(0)=1`
-/

namespace A167704.P2421116910344228086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A068921 n - a (n - 1)

end

end A167704.P2421116910344228086

namespace A167704

/-- `A068921(n)-a(n-1)` -/
def P2421116910344228086.Spec : Prop :=
  ∀ n, P2421116910344228086.a n = A167704 n

end A167704

/-! ## A167704.P1278273134416012280

`A000930(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A167704.P1278273134416012280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000930 (n + 1) - a (n - 1)

end

end A167704.P1278273134416012280

namespace A167704

/-- `A000930(n+1)-a(n-1)` -/
def P1278273134416012280.Spec : Prop :=
  ∀ n, P1278273134416012280.a n = A167704 n

end A167704

/-! ## A167704.P15602664766238209730

`A277253(n+3)-A277252(n+1)`
-/

namespace A167704.P15602664766238209730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277253 (n + 3) - A277252 (n + 1)

end

end A167704.P15602664766238209730

namespace A167704

/-- `A277253(n+3)-A277252(n+1)` -/
def P15602664766238209730.Spec : Prop :=
  ∀ n, P15602664766238209730.a n = A167704 n

end A167704

/-! ## A167704.P15961321239637350344

`∑[A199804(n+1)]*A033999(n+1)`
-/

namespace A167704.P15961321239637350344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 (n + 1)

end

end A167704.P15961321239637350344

namespace A167704

/-- `∑[A199804(n+1)]*A033999(n+1)` -/
def P15961321239637350344.Spec : Prop :=
  ∀ n, P15961321239637350344.a n = A167704 n

end A167704

/-! ## A167704.P5546148266524331271

`abs(∑[A000930(n+1)*A033999(n+1)])`
-/

namespace A167704.P5546148266524331271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000930 (n + 1) * A033999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A167704.P5546148266524331271

namespace A167704

/-- `abs(∑[A000930(n+1)*A033999(n+1)])` -/
def P5546148266524331271.Spec : Prop :=
  ∀ n, P5546148266524331271.a n = A167704 n

end A167704

/-! ## A167704.P7932483499686154934

`Δ[A013979(n+3)]`
-/

namespace A167704.P7932483499686154934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013979 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167704.P7932483499686154934

namespace A167704

/-- `Δ[A013979(n+3)]` -/
def P7932483499686154934.Spec : Prop :=
  ∀ n, P7932483499686154934.a n = A167704 n

end A167704

/-! ## A167704.P9521307063377178921

`Δ[A107458(n+7)]`
-/

namespace A167704.P9521307063377178921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107458 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167704.P9521307063377178921

namespace A167704

/-- `Δ[A107458(n+7)]` -/
def P9521307063377178921.Spec : Prop :=
  ∀ n, P9521307063377178921.a n = A167704 n

end A167704

/-! ## A167704.P16033861863610091193

`Δ[Δ[A023435(n+3)]]`
-/

namespace A167704.P16033861863610091193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023435 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167704.P16033861863610091193

namespace A167704

/-- `Δ[Δ[A023435(n+3)]]` -/
def P16033861863610091193.Spec : Prop :=
  ∀ n, P16033861863610091193.a n = A167704 n

end A167704

/-! ## A167704.P7320568955702707026

`A219977(n²)+A013979(n+1)`
-/

namespace A167704.P7320568955702707026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 (n ^ 2) + A013979 (n + 1)

end

end A167704.P7320568955702707026

namespace A167704

/-- `A219977(n²)+A013979(n+1)` -/
def P7320568955702707026.Spec : Prop :=
  ∀ n, P7320568955702707026.a n = A167704 n

end A167704

/-!
# A167705: Composite numbers having four composite nearest neighbors.

The programs for A167705, the canonical program `A167705.P2702715300198025274` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167705 has offset 1).

The definition of A167705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167705.P2702715300198025274

`lt[5, A175851(n+2)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A167705

/-- `lt[5, A175851(n+2)]` -/
def P2702715300198025274.Spec : Prop :=
  ∀ n, (P2702715300198025274.a n : ℤ) = A167705 (n + 1)

theorem P2702715300198025274.correct : P2702715300198025274.Spec := by
  intro n
  simp only [A167705, Nat.add_sub_cancel]

end A167705

/-! ## A167705.P7399214129197131705

`∪[A061673(n+1), A099019(n+1)]`
-/

namespace A167705.P7399214129197131705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167705.P7399214129197131705

namespace A167705

/-- `∪[A061673(n+1), A099019(n+1)]` -/
def P7399214129197131705.Spec : Prop :=
  ∀ n, (P7399214129197131705.a n : ℤ) = A167705 (n + 1)

end A167705

/-! ## A167705.P1676142440010959039

`∪[A061673(n+1), A167776(n+1)]`
-/

namespace A167705.P1676142440010959039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061673 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167705.P1676142440010959039

namespace A167705

/-- `∪[A061673(n+1), A167776(n+1)]` -/
def P1676142440010959039.Spec : Prop :=
  ∀ n, (P1676142440010959039.a n : ℤ) = A167705 (n + 1)

end A167705

/-! ## A167705.P10208045704582766894

`lt[4, A007920(n)]+2`
-/

namespace A167705.P10208045704582766894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A167705.P10208045704582766894

namespace A167705

/-- `lt[4, A007920(n)]+2` -/
def P10208045704582766894.Spec : Prop :=
  ∀ n, (P10208045704582766894.a n : ℤ) = A167705 (n + 1)

end A167705

/-! ## A167705.P16901625238290045351

`eq[5, 5%A013632(n)]+3`
-/

namespace A167705.P16901625238290045351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 5 (A013632 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 3

end

end A167705.P16901625238290045351

namespace A167705

/-- `eq[5, 5%A013632(n)]+3` -/
def P16901625238290045351.Spec : Prop :=
  ∀ n, (P16901625238290045351.a n : ℤ) = A167705 (n + 1)

end A167705

/-! ## A167705.P10427102920214021387

`lt[2, A051699(n)]`
-/

namespace A167705.P10427102920214021387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A167705.P10427102920214021387

namespace A167705

/-- `lt[2, A051699(n)]` -/
def P10427102920214021387.Spec : Prop :=
  ∀ n, (P10427102920214021387.a n : ℤ) = A167705 (n + 1)

end A167705

/-! ## A167705.P380663936736647104

`lt[A055672(n)+2, A051700(n)]`
-/

namespace A167705.P380663936736647104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167705.P380663936736647104

namespace A167705

/-- `lt[A055672(n)+2, A051700(n)]` -/
def P380663936736647104.Spec : Prop :=
  ∀ n, (P380663936736647104.a n : ℤ) = A167705 (n + 1)

end A167705

/-! ## A167705.P14116133301874482445

`eq[A000038(n), A329678(A051699(n)+1)]`
-/

namespace A167705.P14116133301874482445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (A051699 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167705.P14116133301874482445

namespace A167705

/-- `eq[A000038(n), A329678(A051699(n)+1)]` -/
def P14116133301874482445.Spec : Prop :=
  ∀ n, (P14116133301874482445.a n : ℤ) = A167705 (n + 1)

end A167705

/-! ## A167705.P13391447212777967216

`eq[A055671(n), A329678(A051699(n)+1)]`
-/

namespace A167705.P13391447212777967216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (A051699 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167705.P13391447212777967216

namespace A167705

/-- `eq[A055671(n), A329678(A051699(n)+1)]` -/
def P13391447212777967216.Spec : Prop :=
  ∀ n, (P13391447212777967216.a n : ℤ) = A167705 (n + 1)

end A167705

/-! ## A167705.P498009633548090761

`eq[A055671(n), A329678(A051700(n)+1)]`
-/

namespace A167705.P498009633548090761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (A051700 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167705.P498009633548090761

namespace A167705

/-- `eq[A055671(n), A329678(A051700(n)+1)]` -/
def P498009633548090761.Spec : Prop :=
  ∀ n, (P498009633548090761.a n : ℤ) = A167705 (n + 1)

end A167705

/-! ## A167705.P3039855909539288505

`lt[5, A049711(n+3)]`
-/

namespace A167705.P3039855909539288505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A167705.P3039855909539288505

namespace A167705

/-- `lt[5, A049711(n+3)]` -/
def P3039855909539288505.Spec : Prop :=
  ∀ n, (P3039855909539288505.a n : ℤ) = A167705 (n + 1)

end A167705

/-! ## A167705.P4498960131234434756

`lt[2, abs(n-A051697(n))]`
-/

namespace A167705.P4498960131234434756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A051697 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A167705.P4498960131234434756

namespace A167705

/-- `lt[2, abs(n-A051697(n))]` -/
def P4498960131234434756.Spec : Prop :=
  ∀ n, (P4498960131234434756.a n : ℤ) = A167705 (n + 1)

end A167705

/-! ## A167705.P5428675415186105642

`lt[2, n-A007917(n+2)]`
-/

namespace A167705.P5428675415186105642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007917 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A167705.P5428675415186105642

namespace A167705

/-- `lt[2, n-A007917(n+2)]` -/
def P5428675415186105642.Spec : Prop :=
  ∀ n, (P5428675415186105642.a n : ℤ) = A167705 (n + 1)

end A167705

/-! ## A167705.P8810713285207885399

`lt[10, A000010(A065151(n+2))]`
-/

namespace A167705.P8810713285207885399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A065151 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A167705.P8810713285207885399

namespace A167705

/-- `lt[10, A000010(A065151(n+2))]` -/
def P8810713285207885399.Spec : Prop :=
  ∀ n, (P8810713285207885399.a n : ℤ) = A167705 (n + 1)

end A167705

/-! ## A167705.P16197521437678683739

`eq[A013635(n+3)%A267872(n), A013635(n+3)]`
-/

namespace A167705.P16197521437678683739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013635 (n + 3)) (A267872 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013635 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167705.P16197521437678683739

namespace A167705

/-- `eq[A013635(n+3)%A267872(n), A013635(n+3)]` -/
def P16197521437678683739.Spec : Prop :=
  ∀ n, (P16197521437678683739.a n : ℤ) = A167705 (n + 1)

end A167705

/-! ## A167705.P3070753278310078422

`lt[4, A064722(n+2)]`
-/

namespace A167705.P3070753278310078422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A167705.P3070753278310078422

namespace A167705

/-- `lt[4, A064722(n+2)]` -/
def P3070753278310078422.Spec : Prop :=
  ∀ n, (P3070753278310078422.a n : ℤ) = A167705 (n + 1)

end A167705

/-! ## A167705.P7898721422492163692

`eq[A064778(abs(4-n)+1), A064778(n+2)]`
-/

namespace A167705.P7898721422492163692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064778 (|4 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064778 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167705.P7898721422492163692

namespace A167705

/-- `eq[A064778(abs(4-n)+1), A064778(n+2)]` -/
def P7898721422492163692.Spec : Prop :=
  ∀ n, (P7898721422492163692.a n : ℤ) = A167705 (n + 1)

end A167705

/-!
# A167706: The single or isolated numbers. The union of single (or isolated or non-twin) primes and single (or isolated or average of twin prime pairs) nonprimes.

The programs for A167706, the canonical program `A167706.P11488542031625927943` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167706 has offset 1).

The definition of A167706 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167706.P11488542031625927943

`∪[A007510(n+1), A014574(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A167706

/-- `∪[A007510(n+1), A014574(n+1)]` -/
def P11488542031625927943.Spec : Prop :=
  ∀ n, (P11488542031625927943.a n : ℤ) = A167706 (n + 1)

theorem P11488542031625927943.correct : P11488542031625927943.Spec := by
  intro n
  simp only [A167706, Nat.add_sub_cancel]

end A167706

/-! ## A167706.P1982802615808263975

`∪[A001359(n+1), A167277(n+1)]+1`
-/

namespace A167706.P1982802615808263975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A167706.P1982802615808263975

namespace A167706

/-- `∪[A001359(n+1), A167277(n+1)]+1` -/
def P1982802615808263975.Spec : Prop :=
  ∀ n, (P1982802615808263975.a n : ℤ) = A167706 (n + 1)

end A167706

/-! ## A167706.P14519606914236043559

`∪[A014574(n+1), A167277(n+1)+1]`
-/

namespace A167706.P14519606914236043559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167706.P14519606914236043559

namespace A167706

/-- `∪[A014574(n+1), A167277(n+1)+1]` -/
def P14519606914236043559.Spec : Prop :=
  ∀ n, (P14519606914236043559.a n : ℤ) = A167706 (n + 1)

end A167706

/-! ## A167706.P14425885809073494840

`∪[A167277(n+1), A181747(n+1)]+1`
-/

namespace A167706.P14425885809073494840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A167706.P14425885809073494840

namespace A167706

/-- `∪[A167277(n+1), A181747(n+1)]+1` -/
def P14425885809073494840.Spec : Prop :=
  ∀ n, (P14425885809073494840.a n : ℤ) = A167706 (n + 1)

end A167706

/-! ## A167706.P8538270966454555378

`∪[A006512(n+1)-1, A007510(n+1)]`
-/

namespace A167706.P8538270966454555378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167706.P8538270966454555378

namespace A167706

/-- `∪[A006512(n+1)-1, A007510(n+1)]` -/
def P8538270966454555378.Spec : Prop :=
  ∀ n, (P8538270966454555378.a n : ℤ) = A167706 (n + 1)

end A167706

/-! ## A167706.P18103153982953396634

`∪[A007510(n+1), A067829(n+1)-1]`
-/

namespace A167706.P18103153982953396634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167706.P18103153982953396634

namespace A167706

/-- `∪[A007510(n+1), A067829(n+1)-1]` -/
def P18103153982953396634.Spec : Prop :=
  ∀ n, (P18103153982953396634.a n : ℤ) = A167706 (n + 1)

end A167706

/-! ## A167706.P2693529844870973365

`∪[A007510(n+1), A144834(n+1)+2]`
-/

namespace A167706.P2693529844870973365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167706.P2693529844870973365

namespace A167706

/-- `∪[A007510(n+1), A144834(n+1)+2]` -/
def P2693529844870973365.Spec : Prop :=
  ∀ n, (P2693529844870973365.a n : ℤ) = A167706 (n + 1)

end A167706

/-! ## A167706.P12084872926328339933

`∪[A007510(n+1), A053319(n)+a(n-1)]` with `a(0)=4`
-/

namespace A167706.P12084872926328339933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A053319 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167706.P12084872926328339933

namespace A167706

/-- `∪[A007510(n+1), A053319(n)+a(n-1)]` -/
def P12084872926328339933.Spec : Prop :=
  ∀ n, (P12084872926328339933.a n : ℤ) = A167706 (n + 1)

end A167706

/-! ## A167706.P7008770242640944313

`∪[2*A040040(n+1)-1, A167277(n+1)]+1`
-/

namespace A167706.P7008770242640944313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A040040 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A167706.P7008770242640944313

namespace A167706

/-- `∪[2*A040040(n+1)-1, A167277(n+1)]+1` -/
def P7008770242640944313.Spec : Prop :=
  ∀ n, (P7008770242640944313.a n : ℤ) = A167706 (n + 1)

end A167706

/-! ## A167706.P13302785356842562565

`∪[A007510(n+1), A164274(n+1)-A007510(n+1)]`
-/

namespace A167706.P13302785356842562565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164274 (n + 1) - A007510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167706.P13302785356842562565

namespace A167706

/-- `∪[A007510(n+1), A164274(n+1)-A007510(n+1)]` -/
def P13302785356842562565.Spec : Prop :=
  ∀ n, (P13302785356842562565.a n : ℤ) = A167706 (n + 1)

end A167706

/-! ## A167706.P7634704587847919355

`eq[1, A292438(n)+A283265(A093178(n))]`
-/

namespace A167706.P7634704587847919355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n + A283265 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167706.P7634704587847919355

namespace A167706

/-- `eq[1, A292438(n)+A283265(A093178(n))]` -/
def P7634704587847919355.Spec : Prop :=
  ∀ n, (P7634704587847919355.a n : ℤ) = A167706 (n + 1)

end A167706

/-! ## A167706.P11886370013545244608

`eq[1, A292438(n)+A283265(A257088(n))]`
-/

namespace A167706.P11886370013545244608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n + A283265 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167706.P11886370013545244608

namespace A167706

/-- `eq[1, A292438(n)+A283265(A257088(n))]` -/
def P11886370013545244608.Spec : Prop :=
  ∀ n, (P11886370013545244608.a n : ℤ) = A167706 (n + 1)

end A167706

/-!
# A167707: The non-single or nonisolated numbers. The union of non-single (or nonisolated or twin) primes and non-single (or nonisolated) nonprimes.

The programs for A167707, the canonical program `A167707.P14412773003900474856` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167707 has offset 1).

The definition of A167707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167707.P13771094816657244445

`comp[A167706(n+1)]`
-/

namespace A167707.P13771094816657244445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167707.P13771094816657244445

namespace A167707

/-- `comp[A167706(n+1)]` -/
def P13771094816657244445.Spec : Prop :=
  ∀ n, (P13771094816657244445.a n : ℤ) = A167707 (n + 1)

end A167707

/-! ## A167707.P7795013618639590243

`comp[record[A167706(A126759(n))]]`
-/

namespace A167707.P7795013618639590243
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167707.P7795013618639590243

namespace A167707

/-- `comp[record[A167706(A126759(n))]]` -/
def P7795013618639590243.Spec : Prop :=
  ∀ n, (P7795013618639590243.a n : ℤ) = A167707 (n + 1)

end A167707

/-! ## A167707.P16808060791327409919

`comp[record[A167706(A134478(n))]]`
-/

namespace A167707.P16808060791327409919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A167707.P16808060791327409919

namespace A167707

/-- `comp[record[A167706(A134478(n))]]` -/
def P16808060791327409919.Spec : Prop :=
  ∀ n, (P16808060791327409919.a n : ℤ) = A167707 (n + 1)

end A167707

/-! ## A167707.P10821804047717070689

`∪[A001097(n+1), A164276(n+1)]`
-/

namespace A167707.P10821804047717070689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167707.P10821804047717070689

namespace A167707

/-- `∪[A001097(n+1), A164276(n+1)]` -/
def P10821804047717070689.Spec : Prop :=
  ∀ n, (P10821804047717070689.a n : ℤ) = A167707 (n + 1)

end A167707

/-! ## A167707.P2026638364416882453

`∪[A062505(n+1), A164276(n+1)]`
-/

namespace A167707.P2026638364416882453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167707.P2026638364416882453

namespace A167707

/-- `∪[A062505(n+1), A164276(n+1)]` -/
def P2026638364416882453.Spec : Prop :=
  ∀ n, (P2026638364416882453.a n : ℤ) = A167707 (n + 1)

end A167707

/-! ## A167707.P16910621362717331542

`∪[A164276(n+1), A334141(n+1)]`
-/

namespace A167707.P16910621362717331542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164276 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334141 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167707.P16910621362717331542

namespace A167707

/-- `∪[A164276(n+1), A334141(n+1)]` -/
def P16910621362717331542.Spec : Prop :=
  ∀ n, (P16910621362717331542.a n : ℤ) = A167707 (n + 1)

end A167707

/-! ## A167707.P14412773003900474856

`eq[A283265(A093178(n)), A292438(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A167707

/-- `eq[A283265(A093178(n)), A292438(n)]` -/
def P14412773003900474856.Spec : Prop :=
  ∀ n, (P14412773003900474856.a n : ℤ) = A167707 (n + 1)

theorem P14412773003900474856.correct : P14412773003900474856.Spec := by
  intro n
  simp only [A167707, Nat.add_sub_cancel]

end A167707

/-! ## A167707.P13880163907093278428

`eq[A283265(A257088(n)), A292438(n)]`
-/

namespace A167707.P13880163907093278428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283265 (A257088 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167707.P13880163907093278428

namespace A167707

/-- `eq[A283265(A257088(n)), A292438(n)]` -/
def P13880163907093278428.Spec : Prop :=
  ∀ n, (P13880163907093278428.a n : ℤ) = A167707 (n + 1)

end A167707

/-! ## A167707.P13580288243418978126

`∑[A167911(A028310(n))]-1`
-/

namespace A167707.P13580288243418978126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167911 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A167707.P13580288243418978126

namespace A167707

/-- `∑[A167911(A028310(n))]-1` -/
def P13580288243418978126.Spec : Prop :=
  ∀ n, P13580288243418978126.a n = A167707 (n + 1)

end A167707

/-! ## A167707.P3792338838951363572

`∑[A167911(A134478(∑[n]))]-1`
-/

namespace A167707.P3792338838951363572
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167911 (A134478 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A167707.P3792338838951363572

namespace A167707

/-- `∑[A167911(A134478(∑[n]))]-1` -/
def P3792338838951363572.Spec : Prop :=
  ∀ n, P3792338838951363572.a n = A167707 (n + 1)

end A167707

/-! ## A167707.P4334652330873106864

`∑[A167911(A000007(n)+n)]-1`
-/

namespace A167707.P4334652330873106864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167911 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A167707.P4334652330873106864

namespace A167707

/-- `∑[A167911(A000007(n)+n)]-1` -/
def P4334652330873106864.Spec : Prop :=
  ∀ n, P4334652330873106864.a n = A167707 (n + 1)

end A167707

/-! ## A167707.P11395561160129402535

`∑[A167911(n+1)]-A167911(n+1)`
-/

namespace A167707.P11395561160129402535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167911 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A167911 (n + 1)

end

end A167707.P11395561160129402535

namespace A167707

/-- `∑[A167911(n+1)]-A167911(n+1)` -/
def P11395561160129402535.Spec : Prop :=
  ∀ n, P11395561160129402535.a n = A167707 (n + 1)

end A167707

/-!
# A167709: Numbers y such that 19*y^2 + 81 is a square.

The programs for A167709, there is no canonical definition to state claims against.
-/

/-! ## A167709.P10372412248178237378

`A054503(∏[A298264(n)])`
-/

namespace A167709.P10372412248178237378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298264 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054503 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A167709.P10372412248178237378

/-!
# A167710: a(n) = 10*2^n - 3*A083658(n+2).

The programs for A167710, the canonical program `A167710.P5866345545259427761` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167710 has offset 0).

The definition of A167710 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167710.P6784531786302969883

`2*a(n-1)+3*a(n-2)-6*a(n-3)` with `a(0)=1, a(1)=5, a(2)=13`
-/

namespace A167710.P6784531786302969883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 13] fun n a =>
  2 * a (n - 1) + 3 * a (n - 2) - 6 * a (n - 3)

end

end A167710.P6784531786302969883

namespace A167710

/-- `2*a(n-1)+3*a(n-2)-6*a(n-3)` -/
def P6784531786302969883.Spec : Prop :=
  ∀ n, P6784531786302969883.a n = A167710 n

end A167710

/-! ## A167710.P5866345545259427761

`10*2^n-3*A083658(n+2)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A167710

/-- `10*2^n-3*A083658(n+2)` -/
def P5866345545259427761.Spec : Prop :=
  ∀ n, P5866345545259427761.a n = A167710 n

theorem P5866345545259427761.correct : P5866345545259427761.Spec := by
  intro n
  simp only [A167710]

end A167710

/-! ## A167710.P4154203883277640447

`ogf((1+3x)/(1-2x-3x^2+6x^3))`
-/

namespace A167710.P4154203883277640447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3] [1, -2, -3, 6] n

end

end A167710.P4154203883277640447

namespace A167710

/-- `ogf((1+3x)/(1-2x-3x^2+6x^3))` -/
def P4154203883277640447.Spec : Prop :=
  ∀ n, P4154203883277640447.a n = A167710 n

end A167710

/-! ## A167710.P14872208674399182584

`3^ceil(n/2)+2*a(n-1)` with `a(0)=1`
-/

namespace A167710.P14872208674399182584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (3 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) + 2 * a (n - 1)

end

end A167710.P14872208674399182584

namespace A167710

/-- `3^ceil(n/2)+2*a(n-1)` -/
def P14872208674399182584.Spec : Prop :=
  ∀ n, P14872208674399182584.a n = (A167710 n : ℚ)

end A167710

/-! ## A167710.P5734708806778204494

`A056449(n)+lcm(2, a(n-1))` with `a(0)=1`
-/

namespace A167710.P5734708806778204494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056449 n + (Int.lcm 2 (a (n - 1)) : ℤ)

end

end A167710.P5734708806778204494

namespace A167710

/-- `A056449(n)+lcm(2, a(n-1))` -/
def P5734708806778204494.Spec : Prop :=
  ∀ n, P5734708806778204494.a n = A167710 n

end A167710

/-! ## A167710.P14916750166154955107

`a(n-1)+∏[A079585(a(n-1))]+a(n-1)` with `a(0)=1`
-/

namespace A167710.P14916750166154955107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A079585 ((f1 (n - 1)).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A167710.P14916750166154955107

namespace A167710

/-- `a(n-1)+∏[A079585(a(n-1))]+a(n-1)` -/
def P14916750166154955107.Spec : Prop :=
  ∀ n, P14916750166154955107.a n = A167710 n

end A167710

/-! ## A167710.P4025870062369823354

`a(n-1)+∏[A068695(a(n-1)+1)]+a(n-1)` with `a(0)=1`
-/

namespace A167710.P4025870062369823354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A068695 (f1 (n - 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1))

end

end A167710.P4025870062369823354

namespace A167710

/-- `a(n-1)+∏[A068695(a(n-1)+1)]+a(n-1)` -/
def P4025870062369823354.Spec : Prop :=
  ∀ n, P4025870062369823354.a n = A167710 n

end A167710

/-! ## A167710.P2924591505581621709

`∑[A167936(n+1)+3*A167936(n)]`
-/

namespace A167710.P2924591505581621709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167936 (n + 1) + 3 * A167936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167710.P2924591505581621709

namespace A167710

/-- `∑[A167936(n+1)+3*A167936(n)]` -/
def P2924591505581621709.Spec : Prop :=
  ∀ n, P2924591505581621709.a n = A167710 n

end A167710

/-!
# A167711: Numbers such that sum of digits is one more than a prime.

The programs for A167711, there is no canonical definition to state claims against.
-/

/-! ## A167711.P11824181110432144688

`eq[2, A190014(A007953(n))]`
-/

namespace A167711.P11824181110432144688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190014 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167711.P11824181110432144688

/-! ## A167711.P9208138702958830352

`eq[2, A190014(sqrt(A118881(n)))]`
-/

namespace A167711.P9208138702958830352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190014 (SequenceMachineLib.roundAway (Real.sqrt (A118881 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167711.P9208138702958830352

/-! ## A167711.P586664975150607322

`eq[2, A190014(log2(A329562(n)))]`
-/

namespace A167711.P586664975150607322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190014 (SequenceMachineLib.roundAway (Real.logb 2 (A329562 n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167711.P586664975150607322

/-! ## A167711.P254436726152413792

`eq[2, A190014(A169805(n)/2)]`
-/

namespace A167711.P254436726152413792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190014 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167711.P254436726152413792

/-! ## A167711.P5649759500706039417

`eq[2, A190014(A062028(n)-n)]`
-/

namespace A167711.P5649759500706039417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190014 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167711.P5649759500706039417

/-! ## A167711.P9892982147231789855

`eq[2, A190014(A118880(n)^(1/3))]`
-/

namespace A167711.P9892982147231789855
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190014 (SequenceMachineLib.roundAway ((A118880 n : ℝ) ^ ((1 : ℚ) / 3 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167711.P9892982147231789855

/-! ## A167711.P3933611862446754739

`eq[2, A190014(ceil(A057147(n)/(n+1)))]`
-/

namespace A167711.P3933611862446754739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190014 ⌈(A057147 n : ℚ) / (n + 1 : ℚ)⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167711.P3933611862446754739

/-! ## A167711.P15584394531766811112

`eq[2, A190014(A160939(n+1)-(n+1))]`
-/

namespace A167711.P15584394531766811112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190014 (A160939 (n + 1) - (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167711.P15584394531766811112

/-!
# A167712: a(n) = the smallest positive number, not ending in 0, whose square has a substring of exactly n identical digits.

The programs for A167712, there is no canonical definition to state claims against.
-/

/-! ## A167712.P11370056557290259428

`sqrt(A137416(n+1))%A003010(n)`
-/

namespace A167712.P11370056557290259428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A137416 (n + 1) : ℝ))) (A003010 n)

end

end A167712.P11370056557290259428

/-!
# A167713: a(n) = 16^n * Sum_{k=0..n} binomial(2*k, k) / 16^k.

The programs for A167713, there is no canonical definition to state claims against.
-/

/-! ## A167713.P17999762203358157977

`C(2*n, n)+16*a(n-1)` with `a(0)=1`
-/

namespace A167713.P17999762203358157977
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.choose (2 * n) n + 16 * a (n - 1)

end

end A167713.P17999762203358157977

/-! ## A167713.P13692274586869953625

`A000984(n)+16*a(n-1)` with `a(0)=1`
-/

namespace A167713.P13692274586869953625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000984 n + 16 * a (n - 1)

end

end A167713.P13692274586869953625

/-! ## A167713.P204831827850097882

`A056040(2*n)+16*a(n-1)` with `a(0)=1`
-/

namespace A167713.P204831827850097882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056040 (2 * n) + 16 * a (n - 1)

end

end A167713.P204831827850097882

/-! ## A167713.P16327669616977934896

`A001405(2*n)+4*4*a(n-1)` with `a(0)=1`
-/

namespace A167713.P16327669616977934896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001405 (2 * n) + 4 * (4 * a (n - 1))

end

end A167713.P16327669616977934896

/-! ## A167713.P7331028506319614762

`16*a(n-1)+A014495(2*n)+1` with `a(0)=1`
-/

namespace A167713.P7331028506319614762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  16 * a (n - 1) + (A014495 (2 * n) + 1)

end

end A167713.P7331028506319614762

/-! ## A167713.P17137057017501652812

`16*a(n-1)+(n+1)*A000108(n)` with `a(0)=1`
-/

namespace A167713.P17137057017501652812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  16 * a (n - 1) + (n + 1 : ℤ) * A000108 n

end

end A167713.P17137057017501652812

/-! ## A167713.P12866477290904846394

`∑[A000984(n)/A013776(n)]*A013776(n)`
-/

namespace A167713.P12866477290904846394
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000984 n : ℚ) / (A013776 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A013776 n : ℚ)

end

end A167713.P12866477290904846394

/-!
# A167716: Squares that become a prime number when prefixed with a 1.

The programs for A167716, there is no canonical definition to state claims against.
-/

/-! ## A167716.P3798042216964457725

`∩[A032664(n+1), n²]`
-/

namespace A167716.P3798042216964457725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A167716.P3798042216964457725

/-! ## A167716.P9277983155190717178

`∩[A028375(n+1), A032664(n+1)]`
-/

namespace A167716.P9277983155190717178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167716.P9277983155190717178

/-! ## A167716.P6576148757684832167

`∩[A028982(n+1), A032664(n+1)]`
-/

namespace A167716.P6576148757684832167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167716.P6576148757684832167

/-! ## A167716.P2069142813589305473

`∩[A216780(n+1), A032664(n+1)]`
-/

namespace A167716.P2069142813589305473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167716.P2069142813589305473

/-! ## A167716.P17371251124267576382

`∩[A277925(n+1), A032664(n+1)]`
-/

namespace A167716.P17371251124267576382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032664 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167716.P17371251124267576382

/-!
# A167717: Squares that become a prime number when prefixed with a 2.

The programs for A167717, there is no canonical definition to state claims against.
-/

/-! ## A167717.P52908016241341652

`∩[A032665(n+1), n²]`
-/

namespace A167717.P52908016241341652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032665 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A167717.P52908016241341652

/-! ## A167717.P13831698513808652426

`∩[A000290(n), A032665(n+1)]`
-/

namespace A167717.P13831698513808652426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167717.P13831698513808652426

/-! ## A167717.P11357579080682798492

`∩[A016754(n), A032665(n+1)]`
-/

namespace A167717.P11357579080682798492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167717.P11357579080682798492

/-! ## A167717.P16845641351861425643

`∩[A016946(n), A032665(n+1)]`
-/

namespace A167717.P16845641351861425643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016946 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167717.P16845641351861425643

/-!
# A167718: Squares that becomes primes when prefixed with a 3.

The programs for A167718, there is no canonical definition to state claims against.
-/

/-! ## A167718.P12227767628795376123

`∩[A032666(n+1), n²]`
-/

namespace A167718.P12227767628795376123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032666 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A167718.P12227767628795376123

/-! ## A167718.P993287624712611618

`∩[A000290(n), A032666(n+1)]`
-/

namespace A167718.P993287624712611618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167718.P993287624712611618

/-! ## A167718.P8380132679046119649

`∩[A028375(n+1), A032666(n+1)]`
-/

namespace A167718.P8380132679046119649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167718.P8380132679046119649

/-! ## A167718.P5734199593311953958

`∩[A028982(n+1), A032666(n+1)]`
-/

namespace A167718.P5734199593311953958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167718.P5734199593311953958

/-! ## A167718.P10633999904872043802

`∩[A066213(n+1), A032666(n+1)]`
-/

namespace A167718.P10633999904872043802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032666 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167718.P10633999904872043802

/-!
# A167719: Squares that become a prime number when prefixed with a 4.

The programs for A167719, there is no canonical definition to state claims against.
-/

/-! ## A167719.P6498134738403636895

`∩[A032667(n+1), n²]`
-/

namespace A167719.P6498134738403636895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032667 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A167719.P6498134738403636895

/-! ## A167719.P7880519807979960331

`∩[A000290(n), A032667(n+1)]`
-/

namespace A167719.P7880519807979960331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167719.P7880519807979960331

/-! ## A167719.P3961648534732768425

`∩[A028375(n+1), A032667(n+1)]`
-/

namespace A167719.P3961648534732768425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167719.P3961648534732768425

/-! ## A167719.P4822368791645462523

`∩[A028982(n+1), A032667(n+1)]`
-/

namespace A167719.P4822368791645462523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167719.P4822368791645462523

/-! ## A167719.P1385320997000546713

`∩[A087811(n+1), A032667(n+1)]`
-/

namespace A167719.P1385320997000546713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032667 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167719.P1385320997000546713

/-!
# A167720: Squares that become a prime number when prefixed with a 5.

The programs for A167720, there is no canonical definition to state claims against.
-/

/-! ## A167720.P6387785849171012386

`∩[A032668(n+1), n²]`
-/

namespace A167720.P6387785849171012386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032668 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A167720.P6387785849171012386

/-!
# A167721: Squares that become prime numbers when prefixed with a 6.

The programs for A167721, there is no canonical definition to state claims against.
-/

/-! ## A167721.P18136805960339261468

`∩[A032669(n+1), n²]`
-/

namespace A167721.P18136805960339261468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032669 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A167721.P18136805960339261468

/-! ## A167721.P238437296549371086

`∩[A000290(n), A032669(n+1)]`
-/

namespace A167721.P238437296549371086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167721.P238437296549371086

/-! ## A167721.P14533716406657807346

`∩[A028375(n+1), A032669(n+1)]`
-/

namespace A167721.P14533716406657807346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167721.P14533716406657807346

/-! ## A167721.P5607932323049006970

`∩[A028982(n+1), A032669(n+1)]`
-/

namespace A167721.P5607932323049006970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167721.P5607932323049006970

/-! ## A167721.P489217144685220715

`∩[A066213(n+1), A032669(n+1)]`
-/

namespace A167721.P489217144685220715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167721.P489217144685220715

/-!
# A167722: Squares that become prime numbers when prefixed with a 7.

The programs for A167722, there is no canonical definition to state claims against.
-/

/-! ## A167722.P5526923261516164534

`∩[A032670(n+1), n²]`
-/

namespace A167722.P5526923261516164534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032670 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A167722.P5526923261516164534

/-! ## A167722.P12761021983124559354

`∩[A000290(n), A032670(n+1)]`
-/

namespace A167722.P12761021983124559354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167722.P12761021983124559354

/-! ## A167722.P10053517591579544121

`∩[A028375(n+1), A032670(n+1)]`
-/

namespace A167722.P10053517591579544121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167722.P10053517591579544121

/-! ## A167722.P12041843530049495504

`∩[A028982(n+1), A032670(n+1)]`
-/

namespace A167722.P12041843530049495504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167722.P12041843530049495504

/-! ## A167722.P12718737281073103206

`∩[A277925(n+1), A032670(n+1)]`
-/

namespace A167722.P12718737281073103206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032670 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167722.P12718737281073103206

/-!
# A167723: Squares that become prime numbers when prefixed with an 8.

The programs for A167723, there is no canonical definition to state claims against.
-/

/-! ## A167723.P2505255276298846205

`∩[A032671(n+1), n²]`
-/

namespace A167723.P2505255276298846205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032671 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A167723.P2505255276298846205

/-!
# A167724: Squares that becomes a prime number when prefixed with a 9.

The programs for A167724, there is no canonical definition to state claims against.
-/

/-! ## A167724.P17109277777700145148

`∩[A032672(n+1), n²]`
-/

namespace A167724.P17109277777700145148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032672 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A167724.P17109277777700145148

/-!
# A167725: Cubes that become a prime number when prefixed with a 1.

The programs for A167725, there is no canonical definition to state claims against.
-/

/-! ## A167725.P11355112900917675694

`A168375(n+1)^3`
-/

namespace A167725.P11355112900917675694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168375 (n + 1) ^ 3

end

end A167725.P11355112900917675694

/-! ## A167725.P4280643610841800708

`record[A168375(A236858(n))^3]`
-/

namespace A167725.P4280643610841800708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168375 (A236858 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167725.P4280643610841800708

/-! ## A167725.P7167452002045122481

`record[A168375(A324346(n))^3]`
-/

namespace A167725.P7167452002045122481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168375 (A324346 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167725.P7167452002045122481

/-! ## A167725.P13284091729296407448

`record[A168375(A324347(n))^3]`
-/

namespace A167725.P13284091729296407448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168375 (A324347 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167725.P13284091729296407448

/-! ## A167725.P12469185386883221124

`A000578(A168375(n+1))`
-/

namespace A167725.P12469185386883221124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A168375 (n + 1)).toNat

end

end A167725.P12469185386883221124

/-!
# A167726: Cubes that become a prime number when prefixed with a 2.

The programs for A167726, there is no canonical definition to state claims against.
-/

/-! ## A167726.P6758364652908415532

`A114102(A350093(n+3)-1)^3`
-/

namespace A167726.P6758364652908415532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114102 (A350093 (n + 3) - 1).toNat ^ 3

end

end A167726.P6758364652908415532

/-!
# A167728: Cubes that becomes a prime number when prefixed with a 4.

The programs for A167728, there is no canonical definition to state claims against.
-/

/-! ## A167728.P4179879182402930070

`A016755(eq[A000120(n), A334305(n)])`
-/

namespace A167728.P4179879182402930070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A167728.P4179879182402930070

/-!
# A167729: Cubes that become prime numbers when prefixed with a 5.

The programs for A167729, there is no canonical definition to state claims against.
-/

/-! ## A167729.P15471769399110583419

`A000578(A032665(n+4)^A250207(n+1))`
-/

namespace A167729.P15471769399110583419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.roundAway ((A032665 (n + 4) : ℚ) ^ (A250207 (n + 1) : ℤ))).toNat

end

end A167729.P15471769399110583419

/-!
# A167731: Cubes that becomes a prime number when prefixed with a 7.

The programs for A167731, there is no canonical definition to state claims against.
-/

/-! ## A167731.P14325759445234454506

`A125667(A000462(n+1))^3`
-/

namespace A167731.P14325759445234454506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125667 (A000462 (n + 1)).toNat ^ 3

end

end A167731.P14325759445234454506

/-!
# A167732: Cubes that become prime numbers when prefixed with an 8.

The programs for A167732, there is no canonical definition to state claims against.
-/

/-! ## A167732.P8211341570175179561

`A111800(A374743(3*n+2))^3`
-/

namespace A167732.P8211341570175179561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111800 (A374743 (3 * n + 2)).toNat ^ 3

end

end A167732.P8211341570175179561

/-!
# A167733: Cubes that becomes a prime number when prefixed with a 9.

The programs for A167733, there is no canonical definition to state claims against.
-/

/-! ## A167733.P4310115508731196789

`A116641(p?[A288327(n)])^3`
-/

namespace A167733.P4310115508731196789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116641 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat ^ 3

end

end A167733.P4310115508731196789

/-!
# A167734: Primes that become squares when prefixed with a 1.

The programs for A167734, there is no canonical definition to state claims against.
-/

/-! ## A167734.P2303924376035675587

`∩[A167742(n+1), A272671(n+1)]`
-/

namespace A167734.P2303924376035675587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167734.P2303924376035675587

/-! ## A167734.P3095868334156550797

`p?[A272671(n+1)]`
-/

namespace A167734.P3095868334156550797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167734.P3095868334156550797

/-! ## A167734.P9179932452526179841

`p?[record[A272673(2*n+1)]]`
-/

namespace A167734.P9179932452526179841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272673 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167734.P9179932452526179841

/-! ## A167734.P2816909151243112625

`record[p?[A272671(A106466(n))]]`
-/

namespace A167734.P2816909151243112625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272671 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167734.P2816909151243112625

/-! ## A167734.P2717817019360790252

`record[p?[A272671(A145064(n))]]`
-/

namespace A167734.P2717817019360790252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272671 (A145064 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167734.P2717817019360790252

/-!
# A167735: Primes that become squares when prefixed with a 2.

The programs for A167735, there is no canonical definition to state claims against.
-/

/-! ## A167735.P6423755269215857523

`∩[A167742(n+1), A273357(n+1)]`
-/

namespace A167735.P6423755269215857523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167735.P6423755269215857523

/-! ## A167735.P3514321474478406870

`p?[A273357(n+1)]`
-/

namespace A167735.P3514321474478406870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273357 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167735.P3514321474478406870

/-! ## A167735.P3897883989070066110

`p?[record[A273357(A203814(n))]]`
-/

namespace A167735.P3897883989070066110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273357 (A203814 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167735.P3897883989070066110

/-! ## A167735.P15510715450974159293

`p?[record[A273357(A305296(n))]]`
-/

namespace A167735.P15510715450974159293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273357 (A305296 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167735.P15510715450974159293

/-! ## A167735.P17535248340816139187

`p?[record[A273357(A324346(n))]]`
-/

namespace A167735.P17535248340816139187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273357 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167735.P17535248340816139187

/-! ## A167735.P15638989760943082669

`p?[record[A273357(A324347(n))]]`
-/

namespace A167735.P15638989760943082669
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273357 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167735.P15638989760943082669

/-! ## A167735.P1265111402421798609

`p?[record[A273357(A328399(n))]]`
-/

namespace A167735.P1265111402421798609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273357 (A328399 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167735.P1265111402421798609

/-! ## A167735.P3116208165930544677

`p?[A033999(n)*A273357(A328399(n))]`
-/

namespace A167735.P3116208165930544677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A273357 (A328399 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167735.P3116208165930544677

/-!
# A167736: Primes that become squares when prefixed with a 3.

The programs for A167736, there is no canonical definition to state claims against.
-/

/-! ## A167736.P3621368262788417837

`∩[A167742(n+1), A273358(n+1)]`
-/

namespace A167736.P3621368262788417837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167736.P3621368262788417837

/-! ## A167736.P8792092097731540210

`p?[A273358(n+1)]`
-/

namespace A167736.P8792092097731540210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167736.P8792092097731540210

/-! ## A167736.P1730326827728542551

`record[p?[A273358(A145064(n))]]`
-/

namespace A167736.P1730326827728542551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273358 (A145064 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167736.P1730326827728542551

/-! ## A167736.P781304655910200864

`p?[record[A273358(A203814(n))]]`
-/

namespace A167736.P781304655910200864
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273358 (A203814 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167736.P781304655910200864

/-! ## A167736.P12252625361976839106

`p?[record[A273358(A291766(n))]]`
-/

namespace A167736.P12252625361976839106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273358 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167736.P12252625361976839106

/-!
# A167737: Primes that become squares when prefixed with a 4.

The programs for A167737, there is no canonical definition to state claims against.
-/

/-! ## A167737.P15343998915587460930

`∩[A167742(n+1), A273359(n+1)]`
-/

namespace A167737.P15343998915587460930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167737.P15343998915587460930

/-! ## A167737.P17196141684630906445

`p?[A273359(n+1)]`
-/

namespace A167737.P17196141684630906445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167737.P17196141684630906445

/-!
# A167738: Primes that become squares when prefixed with a 5.

The programs for A167738, there is no canonical definition to state claims against.
-/

/-! ## A167738.P780246979113642975

`∩[A167742(n+1), A273360(n+1)]`
-/

namespace A167738.P780246979113642975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167738.P780246979113642975

/-! ## A167738.P3357872929956806827

`p?[A273360(n+1)]`
-/

namespace A167738.P3357872929956806827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167738.P3357872929956806827

/-! ## A167738.P5072587722023306797

`p?[record[A273360(A203814(n))]]`
-/

namespace A167738.P5072587722023306797
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273360 (A203814 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167738.P5072587722023306797

/-! ## A167738.P13221949428069251765

`p?[record[A273360(A291766(n))]]`
-/

namespace A167738.P13221949428069251765
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273360 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167738.P13221949428069251765

/-! ## A167738.P17071874655303235607

`p?[record[A273360(A305296(n))]]`
-/

namespace A167738.P17071874655303235607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273360 (A305296 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167738.P17071874655303235607

/-!
# A167739: Primes that become squares when prefixed with a 6.

The programs for A167739, there is no canonical definition to state claims against.
-/

/-! ## A167739.P6465839090780150143

`∩[A167742(n+1), A273361(n+1)]`
-/

namespace A167739.P6465839090780150143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167739.P6465839090780150143

/-! ## A167739.P6742045667266814913

`p?[A273361(n+1)]`
-/

namespace A167739.P6742045667266814913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167739.P6742045667266814913

/-! ## A167739.P2962426902540427229

`record[p?[A273361(A106466(n))]]`
-/

namespace A167739.P2962426902540427229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273361 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167739.P2962426902540427229

/-! ## A167739.P6057348319949353609

`record[p?[A273361(A203814(n))]]`
-/

namespace A167739.P6057348319949353609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273361 (A203814 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167739.P6057348319949353609

/-! ## A167739.P13052917129657433205

`record[p?[A273361(A291766(n))]]`
-/

namespace A167739.P13052917129657433205
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273361 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167739.P13052917129657433205

/-!
# A167740: Primes that become squares when prefixed with a 7.

The programs for A167740, there is no canonical definition to state claims against.
-/

/-! ## A167740.P2366041601566415952

`∩[A167742(n+1), A273362(n+1)]`
-/

namespace A167740.P2366041601566415952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273362 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167740.P2366041601566415952

/-! ## A167740.P1088743543090284747

`p?[A273362(n+1)]`
-/

namespace A167740.P1088743543090284747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167740.P1088743543090284747

/-! ## A167740.P17530577037283530302

`record[p?[A273362(A022446(n))]]`
-/

namespace A167740.P17530577037283530302
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273362 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167740.P17530577037283530302

/-! ## A167740.P1352793677417894254

`record[p?[A273362(A065648(n))]]`
-/

namespace A167740.P1352793677417894254
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273362 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167740.P1352793677417894254

/-! ## A167740.P1213040425967918153

`record[p?[A273362(A106466(n))]]`
-/

namespace A167740.P1213040425967918153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273362 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167740.P1213040425967918153

/-!
# A167741: Primes that become squares when prefixed with an 8.

The programs for A167741, there is no canonical definition to state claims against.
-/

/-! ## A167741.P5369809236011276501

`∩[A273363(2*(n+1)), A167742(n+2)]`
-/

namespace A167741.P5369809236011276501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273363 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167742 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167741.P5369809236011276501

/-! ## A167741.P13615756273951886811

`∩[A167742(n+1), A273363(n+1)]`
-/

namespace A167741.P13615756273951886811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167741.P13615756273951886811

/-! ## A167741.P16055963661195988981

`p?[A273363(n+1)]`
-/

namespace A167741.P16055963661195988981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167741.P16055963661195988981

/-! ## A167741.P7375775845352647815

`p?[record[A273363(A203814(n))]]`
-/

namespace A167741.P7375775845352647815
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273363 (A203814 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167741.P7375775845352647815

/-! ## A167741.P1261969044764331847

`p?[record[A273363(A291766(n))]]`
-/

namespace A167741.P1261969044764331847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273363 (A291766 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167741.P1261969044764331847

/-!
# A167742: Primes that becomes a square when some single digit is inserted in front of its decimal expansion.

The programs for A167742, there is no canonical definition to state claims against.
-/

/-! ## A167742.P9996100761209200410

`p?[A238712(A088481(n+1))]`
-/

namespace A167742.P9996100761209200410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (A088481 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167742.P9996100761209200410

/-! ## A167742.P5686436110173802437

`p?[A238712(A231369(n+1))]`
-/

namespace A167742.P5686436110173802437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (A231369 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167742.P5686436110173802437

/-! ## A167742.P18298575456482225662

`∩[A238712(n+1), A294200(n+1)]`
-/

namespace A167742.P18298575456482225662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167742.P18298575456482225662

/-! ## A167742.P11655743660333614000

`∩[A238712(n+1), A397171(n+1)]`
-/

namespace A167742.P11655743660333614000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238712 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397171 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167742.P11655743660333614000

/-!
# A167743: Positive differences between distinct positive triangular numbers, with repetition.

The programs for A167743, there is no canonical definition to state claims against.
-/

/-! ## A167743.P15149213159792473182

`∑[char[∑[∑{d}[n, #%2]]]]`
-/

namespace A167743.P15149213159792473182
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), d % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167743.P15149213159792473182

/-! ## A167743.P829134647742727561

`∑[char[∑[∑{d}[n, and(1, #)]]]]`
-/

namespace A167743.P829134647742727561
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f4 n), Nat.land 1 d

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167743.P829134647742727561

/-! ## A167743.P12448700748712174814

`comp[∑[∑{d}[n, and(1, #)]]+n]-n`
-/

namespace A167743.P12448700748712174814
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), Nat.land 1 d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A167743.P12448700748712174814

/-! ## A167743.P17949127027069984129

`∑[char[A060831(n)]]`
-/

namespace A167743.P17949127027069984129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167743.P17949127027069984129

/-! ## A167743.P12662334518929462764

`∑[char[A248517(n)+n]]`
-/

namespace A167743.P12662334518929462764
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248517 n + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167743.P12662334518929462764

/-! ## A167743.P3318174001178561261

`ceil(∑[acot(A182469(n+1))])`
-/

namespace A167743.P3318174001178561261
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A182469 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A167743.P3318174001178561261

/-! ## A167743.P337299740640420935

`ceil(∑[acot(A261697(n+1))])`
-/

namespace A167743.P337299740640420935
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A261697 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A167743.P337299740640420935

/-! ## A167743.P7926934404874993120

`ceil(∑[acot(A261698(n+1))])`
-/

namespace A167743.P7926934404874993120
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A261698 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A167743.P7926934404874993120

/-! ## A167743.P9575340035784696925

`∑[round(acot(A341970(n+1)))]`
-/

namespace A167743.P9575340035784696925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A341970 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167743.P9575340035784696925

/-! ## A167743.P12606433495988295552

`∑[char[∑[A069283(n)]+n]]`
-/

namespace A167743.P12606433495988295552
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167743.P12606433495988295552

/-!
# A167745: Integer values of Fibonacci(n)/n.

The programs for A167745, there is no canonical definition to state claims against.
-/

/-! ## A167745.P18081376534421785439

`A127884(A023172(n+1))`
-/

namespace A167745.P18081376534421785439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127884 (A023172 (n + 1)).toNat

end

end A167745.P18081376534421785439

/-! ## A167745.P15641048899664140840

`A270312(A127787(n+2))`
-/

namespace A167745.P15641048899664140840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270312 (A127787 (n + 2)).toNat

end

end A167745.P15641048899664140840

/-! ## A167745.P11251643614828845666

`A168041(n+1)/A023172(n+1)`
-/

namespace A167745.P11251643614828845666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168041 (n + 1) : ℚ) / (A023172 (n + 1) : ℚ)

end

end A167745.P11251643614828845666

/-! ## A167745.P16102232377978191186

`A127884(eq[n, A104714(A028310(n))])`
-/

namespace A167745.P16102232377978191186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A167745.P16102232377978191186

/-! ## A167745.P3740200319214183329

`A168041(n+1)/A127787(A065475(n+1))`
-/

namespace A167745.P3740200319214183329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168041 (n + 1) : ℚ) / (A127787 (A065475 (n + 1)).toNat : ℚ)

end

end A167745.P3740200319214183329

/-!
# A167746: Number of prime divisors of A001222 (counted with multiplicity), with a(1) = 1 by convention.

The programs for A167746, the canonical program `A167746.P15799420577997810579` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167746 has offset 1).

The definition of A167746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167746.P15799420577997810579

`∑{e}[∑{e}[a(n-1)+1, #], #]` with `a(0)=9, a(1)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A167746

/-- `∑{e}[∑{e}[a(n-1)+1, #], #]` -/
def P15799420577997810579.Spec : Prop :=
  ∀ n, (P15799420577997810579.a n : ℤ) = A167746 (n + 1)

theorem P15799420577997810579.correct : P15799420577997810579.Spec := by
  intro n
  simp only [A167746, Nat.add_sub_cancel]

end A167746

/-! ## A167746.P2812550642543107719

`∑{e}[abs(1-∑{e}[n+1, #])+1, #]`
-/

namespace A167746.P2812550642543107719
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)| + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A167746.P2812550642543107719

namespace A167746

/-- `∑{e}[abs(1-∑{e}[n+1, #])+1, #]` -/
def P2812550642543107719.Spec : Prop :=
  ∀ n, (P2812550642543107719.a n : ℤ) = A167746 (n + 1)

end A167746

/-! ## A167746.P5744005890441954746

`A111405(n)+a(n-1)` with `a(0)=1, a(1)=0`
-/

namespace A167746.P5744005890441954746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A111405 n + a (n - 1)

end

end A167746.P5744005890441954746

namespace A167746

/-- `A111405(n)+a(n-1)` -/
def P5744005890441954746.Spec : Prop :=
  ∀ n, P5744005890441954746.a n = A167746 (n + 1)

end A167746

/-! ## A167746.P468048847467367912

`∏{e}[2^∑{e}[n+1, #], A001222(#)]`
-/

namespace A167746.P468048847467367912
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001222 (Nat.factorization (f1 n) p)

end

end A167746.P468048847467367912

namespace A167746

/-- `∏{e}[2^∑{e}[n+1, #], A001222(#)]` -/
def P468048847467367912.Spec : Prop :=
  ∀ n, P468048847467367912.a n = A167746 (n + 1)

end A167746

/-! ## A167746.P6370417575320378291

`A001222(∑{e}[a(n-1)+1, #])` with `a(0)=4, a(1)=2`
-/

namespace A167746.P6370417575320378291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 2] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A167746.P6370417575320378291

namespace A167746

/-- `A001222(∑{e}[a(n-1)+1, #])` -/
def P6370417575320378291.Spec : Prop :=
  ∀ n, P6370417575320378291.a n = A167746 (n + 1)

end A167746

/-! ## A167746.P10957186137225370984

`∏{e}[A068794(n+1), A001222(#)]`
-/

namespace A167746.P10957186137225370984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (Nat.factorization (f1 n).natAbs p)

end

end A167746.P10957186137225370984

namespace A167746

/-- `∏{e}[A068794(n+1), A001222(#)]` -/
def P10957186137225370984.Spec : Prop :=
  ∀ n, P10957186137225370984.a n = A167746 (n + 1)

end A167746

/-! ## A167746.P9803919554580413566

`∏{e}[2^A001222(n+1), A001222(#)]`
-/

namespace A167746.P9803919554580413566
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A001222 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001222 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)

end

end A167746.P9803919554580413566

namespace A167746

/-- `∏{e}[2^A001222(n+1), A001222(#)]` -/
def P9803919554580413566.Spec : Prop :=
  ∀ n, P9803919554580413566.a n = A167746 (n + 1)

end A167746

/-! ## A167746.P15109579912114512159

`A001222(abs(1-A001222(n+1))+1)`
-/

namespace A167746.P15109579912114512159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (|1 - A001222 (n + 1)| + 1).toNat

end

end A167746.P15109579912114512159

namespace A167746

/-- `A001222(abs(1-A001222(n+1))+1)` -/
def P15109579912114512159.Spec : Prop :=
  ∀ n, P15109579912114512159.a n = A167746 (n + 1)

end A167746

/-! ## A167746.P9000400149160337093

`A001222(A001222(n+1)+C(2, (n+1)²))`
-/

namespace A167746.P9000400149160337093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (n + 1) + (Nat.choose 2 ((n + 1) ^ 2) : ℤ)).toNat

end

end A167746.P9000400149160337093

namespace A167746

/-- `A001222(A001222(n+1)+C(2, (n+1)²))` -/
def P9000400149160337093.Spec : Prop :=
  ∀ n, P9000400149160337093.a n = A167746 (n + 1)

end A167746

/-! ## A167746.P11394958219546519248

`A001222(A001222(n+1)+2*C(2, n+2))`
-/

namespace A167746.P11394958219546519248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (n + 1) + (2 * Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A167746.P11394958219546519248

namespace A167746

/-- `A001222(A001222(n+1)+2*C(2, n+2))` -/
def P11394958219546519248.Spec : Prop :=
  ∀ n, P11394958219546519248.a n = A167746 (n + 1)

end A167746

/-! ## A167746.P9093778294753440609

`A001222(floor(A001222(n+1)+2/(n+1)²))`
-/

namespace A167746.P9093778294753440609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌊(A001222 (n + 1) : ℚ) + 2 / ((n + 1) ^ 2 : ℚ)⌋.toNat

end

end A167746.P9093778294753440609

namespace A167746

/-- `A001222(floor(A001222(n+1)+2/(n+1)²))` -/
def P9093778294753440609.Spec : Prop :=
  ∀ n, P9093778294753440609.a n = A167746 (n + 1)

end A167746

/-! ## A167746.P14229986870651231859

`A001222(A001222(n+1)+floor(2/(2*n+1)))`
-/

namespace A167746.P14229986870651231859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (n + 1) + ⌊2 / (2 * n + 1 : ℚ)⌋).toNat

end

end A167746.P14229986870651231859

namespace A167746

/-- `A001222(A001222(n+1)+floor(2/(2*n+1)))` -/
def P14229986870651231859.Spec : Prop :=
  ∀ n, P14229986870651231859.a n = A167746 (n + 1)

end A167746

/-! ## A167746.P5199979562453018990

`A001222(A001222(C(n+3, n+2+n)+n+1))`
-/

namespace A167746.P5199979562453018990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (Nat.choose (n + 3) (n + 2 + n) + (n + 1))).toNat

end

end A167746.P5199979562453018990

namespace A167746

/-- `A001222(A001222(C(n+3, n+2+n)+n+1))` -/
def P5199979562453018990.Spec : Prop :=
  ∀ n, P5199979562453018990.a n = A167746 (n + 1)

end A167746

/-! ## A167746.P12038675293073450063

`∏{e}[A000079(A001222(n+1)), A001222(#)]`
-/

namespace A167746.P12038675293073450063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (Nat.factorization (f1 n).natAbs p)

end

end A167746.P12038675293073450063

namespace A167746

/-- `∏{e}[A000079(A001222(n+1)), A001222(#)]` -/
def P12038675293073450063.Spec : Prop :=
  ∀ n, P12038675293073450063.a n = A167746 (n + 1)

end A167746

/-! ## A167746.P7996346397107264577

`∏{e}[A006530(n+1), A001222(A001222(#+n))]`
-/

namespace A167746.P7996346397107264577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (A001222 (Nat.factorization (f1 n).natAbs p + n)).toNat

end

end A167746.P7996346397107264577

namespace A167746

/-- `∏{e}[A006530(n+1), A001222(A001222(#+n))]` -/
def P7996346397107264577.Spec : Prop :=
  ∀ n, P7996346397107264577.a n = A167746 (n + 1)

end A167746

/-! ## A167746.P5109040845448262394

`∏{e}[A020639(n+1), A001222(A001222(#+n))]`
-/

namespace A167746.P5109040845448262394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (A001222 (Nat.factorization (f1 n).natAbs p + n)).toNat

end

end A167746.P5109040845448262394

namespace A167746

/-- `∏{e}[A020639(n+1), A001222(A001222(#+n))]` -/
def P5109040845448262394.Spec : Prop :=
  ∀ n, P5109040845448262394.a n = A167746 (n + 1)

end A167746

/-! ## A167746.P2057866742994531126

`A001222(A001222(A014963(2*(2*n+1))²+n))`
-/

namespace A167746.P2057866742994531126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (A014963 (2 * (2 * n + 1)) ^ 2 + (n : ℤ)).toNat).toNat

end

end A167746.P2057866742994531126

namespace A167746

/-- `A001222(A001222(A014963(2*(2*n+1))²+n))` -/
def P2057866742994531126.Spec : Prop :=
  ∀ n, P2057866742994531126.a n = A167746 (n + 1)

end A167746

/-! ## A167746.P6693172034817795052

`A001222(gcd(2*A048782(n+1), A001222(n+1)))`
-/

namespace A167746.P6693172034817795052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (2 * A048782 (n + 1)) (A001222 (n + 1)))

end

end A167746.P6693172034817795052

namespace A167746

/-- `A001222(gcd(2*A048782(n+1), A001222(n+1)))` -/
def P6693172034817795052.Spec : Prop :=
  ∀ n, P6693172034817795052.a n = A167746 (n + 1)

end A167746

/-! ## A167746.P13610429372515106076

`∏{e}[A068795(n+1), A001222(#)]`
-/

namespace A167746.P13610429372515106076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 (Nat.factorization (f1 n).natAbs p)

end

end A167746.P13610429372515106076

namespace A167746

/-- `∏{e}[A068795(n+1), A001222(#)]` -/
def P13610429372515106076.Spec : Prop :=
  ∀ n, P13610429372515106076.a n = A167746 (n + 1)

end A167746

/-! ## A167746.P1332267704161778706

`A001222(gcd(2*A034386(n), A001222(n+1)))`
-/

namespace A167746.P1332267704161778706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.gcd (2 * A034386 n) (A001222 (n + 1)))

end

end A167746.P1332267704161778706

namespace A167746

/-- `A001222(gcd(2*A034386(n), A001222(n+1)))` -/
def P1332267704161778706.Spec : Prop :=
  ∀ n, P1332267704161778706.a n = A167746 (n + 1)

end A167746

/-!
# A167747: a(n) = phi(6^n).

The programs for A167747, the canonical program `A167747.P10342004252378632339` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167747 has offset 0).

The definition of A167747 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167747.P10342004252378632339

`((8*n-4)*a(n-1)-12*(n-2)*a(n-2))/n` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A167747

/-- `((8*n-4)*a(n-1)-12*(n-2)*a(n-2))/n` -/
def P10342004252378632339.Spec : Prop :=
  ∀ n, P10342004252378632339.a n = (A167747 n : ℚ)

end A167747

/-! ## A167747.P7951897599477435579

`A000010(A000400(n))`
-/

namespace A167747.P7951897599477435579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000400 n).toNat

end

end A167747.P7951897599477435579

namespace A167747

/-- `A000010(A000400(n))` -/
def P7951897599477435579.Spec : Prop :=
  ∀ n, P7951897599477435579.a n = A167747 n

end A167747

/-! ## A167747.P1427132114096203055

`ogf((1-4x)/(1-6x))`
-/

namespace A167747.P1427132114096203055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -6] n

end

end A167747.P1427132114096203055

namespace A167747

/-- `ogf((1-4x)/(1-6x))` -/
def P1427132114096203055.Spec : Prop :=
  ∀ n, P1427132114096203055.a n = A167747 n

end A167747

/-! ## A167747.P10513291919250543673

`6*a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A167747.P10513291919250543673
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  6 * a (n - 1)

end

end A167747.P10513291919250543673

namespace A167747

/-- `6*a(n-1)` -/
def P10513291919250543673.Spec : Prop :=
  ∀ n, (P10513291919250543673.a n : ℤ) = A167747 n

end A167747

/-! ## A167747.P3540100612609386264

`ceil(2*6^(n-1))`
-/

namespace A167747.P3540100612609386264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * (6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A167747.P3540100612609386264

namespace A167747

/-- `ceil(2*6^(n-1))` -/
def P3540100612609386264.Spec : Prop :=
  ∀ n, P3540100612609386264.a n = A167747 n

end A167747

/-! ## A167747.P15935584931305496675

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=2, a(2)=6`
-/

namespace A167747.P15935584931305496675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A167747.P15935584931305496675

namespace A167747

/-- `abs(∏[-a(n-1)])` -/
def P15935584931305496675.Spec : Prop :=
  ∀ n, P15935584931305496675.a n = A167747 n

end A167747

/-! ## A167747.P7233999191001644595

`a(n-1)/tan(acot(6))` with `a(0)=1, a(1)=2`
-/

namespace A167747.P7233999191001644595
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / Real.tan (SequenceMachineLib.acot (6 : ℝ))

end

end A167747.P7233999191001644595

namespace A167747

/-- `a(n-1)/tan(acot(6))` -/
def P7233999191001644595.Spec : Prop :=
  ∀ n, P7233999191001644595.a n = (A167747 n : ℝ)

end A167747

/-! ## A167747.P1261147800773540883

`lcm(2^n, ceil(3^(n-1)))`
-/

namespace A167747.P1261147800773540883
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ n : ℤ) ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A167747.P1261147800773540883

namespace A167747

/-- `lcm(2^n, ceil(3^(n-1)))` -/
def P1261147800773540883.Spec : Prop :=
  ∀ n, (P1261147800773540883.a n : ℤ) = A167747 n

end A167747

/-! ## A167747.P14098156039572733095

`3^floor(log(cosh(n)))*2^n`
-/

namespace A167747.P14098156039572733095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (⌊Real.log (Real.cosh (n : ℝ))⌋ : ℤ) * (2 ^ n : ℚ)

end

end A167747.P14098156039572733095

namespace A167747

/-- `3^floor(log(cosh(n)))*2^n` -/
def P14098156039572733095.Spec : Prop :=
  ∀ n, P14098156039572733095.a n = (A167747 n : ℚ)

end A167747

/-! ## A167747.P4233457543774324530

`a(n-1)/(1-5/6)` with `a(0)=1, a(1)=2`
-/

namespace A167747.P4233457543774324530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / (1 - (5 : ℚ) / 6)

end

end A167747.P4233457543774324530

namespace A167747

/-- `a(n-1)/(1-5/6)` -/
def P4233457543774324530.Spec : Prop :=
  ∀ n, P4233457543774324530.a n = (A167747 n : ℚ)

end A167747

/-! ## A167747.P4384872647235639606

`a(n-1)+lcm(5, a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A167747.P4384872647235639606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) + Nat.lcm 5 (a (n - 1))

end

end A167747.P4384872647235639606

namespace A167747

/-- `a(n-1)+lcm(5, a(n-1))` -/
def P4384872647235639606.Spec : Prop :=
  ∀ n, (P4384872647235639606.a n : ℤ) = A167747 n

end A167747

/-! ## A167747.P8886756267769370264

`2^n*A133494(n)`
-/

namespace A167747.P8886756267769370264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A133494 n

end

end A167747.P8886756267769370264

namespace A167747

/-- `2^n*A133494(n)` -/
def P8886756267769370264.Spec : Prop :=
  ∀ n, P8886756267769370264.a n = A167747 n

end A167747

/-! ## A167747.P9564952398069748969

`3^(n-1)*A171559(n)`
-/

namespace A167747.P9564952398069748969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A171559 n : ℚ)

end

end A167747.P9564952398069748969

namespace A167747

/-- `3^(n-1)*A171559(n)` -/
def P9564952398069748969.Spec : Prop :=
  ∀ n, P9564952398069748969.a n = (A167747 n : ℚ)

end A167747

/-! ## A167747.P11038944746706014409

`2*A134201(n+2)^(n-1)`
-/

namespace A167747.P11038944746706014409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (A134201 (n + 2) : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A167747.P11038944746706014409

namespace A167747

/-- `2*A134201(n+2)^(n-1)` -/
def P11038944746706014409.Spec : Prop :=
  ∀ n, P11038944746706014409.a n = (A167747 n : ℚ)

end A167747

/-! ## A167747.P15773860277440365364

`A026549(A004273(n))`
-/

namespace A167747.P15773860277440365364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (A004273 n).toNat

end

end A167747.P15773860277440365364

namespace A167747

/-- `A026549(A004273(n))` -/
def P15773860277440365364.Spec : Prop :=
  ∀ n, P15773860277440365364.a n = A167747 n

end A167747

/-! ## A167747.P13578295623938366148

`A026549(record[A006257(n)])`
-/

namespace A167747.P13578295623938366148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A167747.P13578295623938366148

namespace A167747

/-- `A026549(record[A006257(n)])` -/
def P13578295623938366148.Spec : Prop :=
  ∀ n, P13578295623938366148.a n = A167747 n

end A167747

/-! ## A167747.P3601088342079137902

`A026549(record[A026741(n)])`
-/

namespace A167747.P3601088342079137902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A167747.P3601088342079137902

namespace A167747

/-- `A026549(record[A026741(n)])` -/
def P3601088342079137902.Spec : Prop :=
  ∀ n, P3601088342079137902.a n = A167747 n

end A167747

/-! ## A167747.P18132058798438450013

`A011782(n)*A025192(n)`
-/

namespace A167747.P18132058798438450013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A025192 n

end

end A167747.P18132058798438450013

namespace A167747

/-- `A011782(n)*A025192(n)` -/
def P18132058798438450013.Spec : Prop :=
  ∀ n, P18132058798438450013.a n = A167747 n

end A167747

/-! ## A167747.P1435697677554607450

`A026549(eq[n, A026741(n)])`
-/

namespace A167747.P1435697677554607450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A167747.P1435697677554607450

namespace A167747

/-- `A026549(eq[n, A026741(n)])` -/
def P1435697677554607450.Spec : Prop :=
  ∀ n, P1435697677554607450.a n = A167747 n

end A167747

/-! ## A167747.P15564915770005586310

`A026549(lt[1, A135561(n+1)])`
-/

namespace A167747.P15564915770005586310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135561 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026549 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A167747.P15564915770005586310

namespace A167747

/-- `A026549(lt[1, A135561(n+1)])` -/
def P15564915770005586310.Spec : Prop :=
  ∀ n, P15564915770005586310.a n = A167747 n

end A167747

/-!
# A167748: phi((n!!)!).

The programs for A167748, there is no canonical definition to state claims against.
-/

/-! ## A167748.P13090763063538572133

`A048855(Δ[A129981(n)])`
-/

namespace A167748.P13090763063538572133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048855 (f1 (n + 1) - f1 n).toNat

end

end A167748.P13090763063538572133

/-!
# A167749: Riordan array (1,xf(x)) where f(x) is the g.f. of A005169 (fountains of coins).

The programs for A167749, there is no canonical definition to state claims against.
-/

/-! ## A167749.P6052540648720197066

`A291652(∑[2*n]%comp[∑[n]])`
-/

namespace A167749.P6052540648720197066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291652 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A167749.P6052540648720197066

/-! ## A167749.P10231229104011574527

`A291652(∑[char[∑[n]]]²-(n+1))`
-/

namespace A167749.P10231229104011574527
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291652 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A167749.P10231229104011574527

/-! ## A167749.P12897368820360377844

`or(char[2], A291652(A061579(n)))`
-/

namespace A167749.P12897368820360377844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A291652 (A061579 n).toNat)

end

end A167749.P12897368820360377844

/-! ## A167749.P13143756748641192244

`A060576(n)*A291652(A061579(n))`
-/

namespace A167749.P13143756748641192244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n * A291652 (A061579 n).toNat

end

end A167749.P13143756748641192244

/-! ## A167749.P3928520166498485414

`char[A257588(n)]*A291652(A061579(n))`
-/

namespace A167749.P3928520166498485414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257588 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A291652 (A061579 n).toNat

end

end A167749.P3928520166498485414

/-! ## A167749.P2892216885495701721

`A291652(A061579(n))^(A292547(n)+1)`
-/

namespace A167749.P2892216885495701721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291652 (A061579 n).toNat : ℚ) ^ (A292547 n + 1 : ℤ)

end

end A167749.P2892216885495701721

/-! ## A167749.P17137686880417141863

`A291652(A061579(n))%A052214(n+1)`
-/

namespace A167749.P17137686880417141863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A291652 (A061579 n).toNat) (A052214 (n + 1))

end

end A167749.P17137686880417141863

/-! ## A167749.P2429467460452198758

`A324198(n)%2*A291652(A061579(n))`
-/

namespace A167749.P2429467460452198758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324198 n) 2 * A291652 (A061579 n).toNat

end

end A167749.P2429467460452198758

/-! ## A167749.P14478940248075177105

`and(A093069(n+1), A291652(A061579(n)))`
-/

namespace A167749.P14478940248075177105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A093069 (n + 1)) (A291652 (A061579 n).toNat)

end

end A167749.P14478940248075177105

/-! ## A167749.P12856219447258851080

`A014963(∑[n+1])*A291652(A061579(n))`
-/

namespace A167749.P12856219447258851080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∑ j ∈ Finset.range (n + 1), f1 j) * A291652 (A061579 n).toNat

end

end A167749.P12856219447258851080

/-!
# A167750: Row sums of triangle A167749.

The programs for A167750, there is no canonical definition to state claims against.
-/

/-! ## A167750.P15136458357619543193

`A001404(∑[n])`
-/

namespace A167750.P15136458357619543193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001404 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167750.P15136458357619543193

/-! ## A167750.P13565919164940545139

`or(char[1], A001404(A000217(n)))`
-/

namespace A167750.P13565919164940545139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A001404 (A000217 n).toNat)

end

end A167750.P13565919164940545139

/-! ## A167750.P9283074819302478494

`A001404(A000217(n))+A000007(n+3)`
-/

namespace A167750.P9283074819302478494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001404 (A000217 n).toNat + A000007 (n + 3)

end

end A167750.P9283074819302478494

/-! ## A167750.P11276762039833152886

`A007318(C(2, n))*A001404(A000217(n))`
-/

namespace A167750.P11276762039833152886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A001404 (A000217 n).toNat

end

end A167750.P11276762039833152886

/-! ## A167750.P11781989374654079411

`A010892(3*n+2)+A001404(A000217(n))`
-/

namespace A167750.P11781989374654079411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n + 2) + A001404 (A000217 n).toNat

end

end A167750.P11781989374654079411

/-! ## A167750.P4258243277817760208

`and(A001404(A000217(n)), A057428(3*n+2))`
-/

namespace A167750.P4258243277817760208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001404 (A000217 n).toNat) (A057428 (3 * n + 2))

end

end A167750.P4258243277817760208

/-!
# A167751: Diagonal sums of A167749.

The programs for A167751, there is no canonical definition to state claims against.
-/

/-! ## A167751.P2781257056078305777

`A321402(n)-A035623(n+1)`
-/

namespace A167751.P2781257056078305777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321402 n - A035623 (n + 1)

end

end A167751.P2781257056078305777

/-! ## A167751.P8904890898725391424

`A321402(n)-A072627(A109879(n+1))`
-/

namespace A167751.P8904890898725391424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321402 n - A072627 (A109879 (n + 1)).toNat

end

end A167751.P8904890898725391424

/-! ## A167751.P6667912148217394920

`A321402(n)-A000045(A253004(n+1))`
-/

namespace A167751.P6667912148217394920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321402 n - A000045 (A253004 (n + 1)).toNat

end

end A167751.P6667912148217394920

/-! ## A167751.P16797617694661275394

`A321402(n)-A000045(A253011(n+1))`
-/

namespace A167751.P16797617694661275394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321402 n - A000045 (A253011 (n + 1)).toNat

end

end A167751.P16797617694661275394

/-! ## A167751.P16634303482321365150

`A180447(A119371(n))`
-/

namespace A167751.P16634303482321365150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180447 (A119371 n).toNat

end

end A167751.P16634303482321365150

/-!
# A167752: Hankel transform of A167750.

The programs for A167752, the canonical program `A167752.P2121123405464806789` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167752 has offset 0).

The definition of A167752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 294 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167752.P2121123405464806789

`char[floor((n/2)²)]-and(2, n^(char[n²]/2))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A167752

/-- `char[floor((n/2)²)]-and(2, n^(char[n²]/2))` -/
def P2121123405464806789.Spec : Prop :=
  ∀ n, P2121123405464806789.a n = A167752 n

theorem P2121123405464806789.correct : P2121123405464806789.Spec := by
  intro n
  simp only [A167752]

end A167752

/-! ## A167752.P11250150949446146637

`A143434(A091018(n))^∑[n+1]`
-/

namespace A167752.P11250150949446146637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143434 (A091018 n).toNat ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A167752.P11250150949446146637

namespace A167752

/-- `A143434(A091018(n))^∑[n+1]` -/
def P11250150949446146637.Spec : Prop :=
  ∀ n, P11250150949446146637.a n = A167752 n

end A167752

/-! ## A167752.P5053451806555147663

`A057077(n)*A143434(A091018(n))`
-/

namespace A167752.P5053451806555147663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A143434 (A091018 n).toNat

end

end A167752.P5053451806555147663

namespace A167752

/-- `A057077(n)*A143434(A091018(n))` -/
def P5053451806555147663.Spec : Prop :=
  ∀ n, P5053451806555147663.a n = A167752 n

end A167752

/-! ## A167752.P10721280837821301662

`A143434(A091018(n))^3^∑[A059841(n)]`
-/

namespace A167752.P10721280837821301662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143434 (A091018 n).toNat ^ 3 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A167752.P10721280837821301662

namespace A167752

/-- `A143434(A091018(n))^3^∑[A059841(n)]` -/
def P10721280837821301662.Spec : Prop :=
  ∀ n, P10721280837821301662.a n = (A167752 n : ℚ)

end A167752

/-! ## A167752.P40665491868740712

`A143434(A091018(n))^3^A055999(n+6)`
-/

namespace A167752.P40665491868740712
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143434 (A091018 n).toNat ^ 3 : ℚ) ^ (A055999 (n + 6) : ℤ)

end

end A167752.P40665491868740712

namespace A167752

/-- `A143434(A091018(n))^3^A055999(n+6)` -/
def P40665491868740712.Spec : Prop :=
  ∀ n, P40665491868740712.a n = (A167752 n : ℚ)

end A167752

/-! ## A167752.P10262639789045625889

`A159075(A034807(n))^A161680(A028391(n))`
-/

namespace A167752.P10262639789045625889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159075 (A034807 n).toNat : ℚ) ^ (A161680 (A028391 n).toNat : ℤ)

end

end A167752.P10262639789045625889

namespace A167752

/-- `A159075(A034807(n))^A161680(A028391(n))` -/
def P10262639789045625889.Spec : Prop :=
  ∀ n, P10262639789045625889.a n = (A167752 n : ℚ)

end A167752

/-! ## A167752.P1190782751129308479

`A305098(n)^-A045190(n+1)`
-/

namespace A167752.P1190782751129308479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305098 n : ℚ) ^ (-A045190 (n + 1) : ℤ)

end

end A167752.P1190782751129308479

namespace A167752

/-- `A305098(n)^-A045190(n+1)` -/
def P1190782751129308479.Spec : Prop :=
  ∀ n, P1190782751129308479.a n = (A167752 n : ℚ)

end A167752

/-! ## A167752.P5849220987087507165

`and(A143434(A091018(n)), A305098(n))`
-/

namespace A167752.P5849220987087507165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A143434 (A091018 n).toNat) (A305098 n)

end

end A167752.P5849220987087507165

namespace A167752

/-- `and(A143434(A091018(n)), A305098(n))` -/
def P5849220987087507165.Spec : Prop :=
  ∀ n, P5849220987087507165.a n = A167752 n

end A167752

/-!
# A167753: Hankel transform of A167751.

The programs for A167753, there is no canonical definition to state claims against.
-/

/-! ## A167753.P15645546657665406462

`A046978(A054582(A091995(n+1)))`
-/

namespace A167753.P15645546657665406462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (A054582 (A091995 (n + 1)).toNat).toNat

end

end A167753.P15645546657665406462

/-! ## A167753.P15941775382734076031

`A352145(n)%A000034(A147064(n+1))`
-/

namespace A167753.P15941775382734076031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352145 n) (A000034 (A147064 (n + 1)).toNat)

end

end A167753.P15941775382734076031

/-! ## A167753.P1733613768427227521

`A008683(A140957(A285075(n+1)))`
-/

namespace A167753.P1733613768427227521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A140957 (A285075 (n + 1)).toNat).toNat

end

end A167753.P1733613768427227521

/-! ## A167753.P2829402701446790584

`∑{d}[A140957(A285075(n+1)), A007427(#)]`
-/

namespace A167753.P2829402701446790584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140957 (A285075 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007427 d

end

end A167753.P2829402701446790584

/-! ## A167753.P544429065737639360

`A014066(2*n)+A014030(A158245(n+1))`
-/

namespace A167753.P544429065737639360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014066 (2 * n) + A014030 (A158245 (n + 1)).toNat

end

end A167753.P544429065737639360

/-!
# A167756: 

The programs for A167756, there is no canonical definition to state claims against.
-/

/-! ## A167756.P9720523772074083698

`(32-A051881(2^n))*a(n-1)` with `a(0)=1`
-/

namespace A167756.P9720523772074083698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (32 - A051881 (2 ^ n)) * a (n - 1)

end

end A167756.P9720523772074083698

/-!
# A167758: Numbers k such that d(k) = nonisolated nonprime.

The programs for A167758, there is no canonical definition to state claims against.
-/

/-! ## A167758.P9235691716037592951

`eq[1, A292438(A000005(n+1))]+1`
-/

namespace A167758.P9235691716037592951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A167758.P9235691716037592951

/-! ## A167758.P7738283765180085169

`eq[2, A058277(A072670(n)+A000005(n+1))]+1`
-/

namespace A167758.P7738283765180085169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058277 (A072670 n + A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A167758.P7738283765180085169

/-! ## A167758.P4611715671489567999

`eq[A025908(A032741(n)), A178334(n)]`
-/

namespace A167758.P4611715671489567999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025908 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167758.P4611715671489567999

/-! ## A167758.P560894188608367147

`eq[A054977(n), A346995(A226602(n))]`
-/

namespace A167758.P560894188608367147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346995 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167758.P560894188608367147

/-! ## A167758.P14991713970716538297

`eq[A178334(n), A346995(A226602(n))]`
-/

namespace A167758.P14991713970716538297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346995 (A226602 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167758.P14991713970716538297

/-!
# A167759: Numbers k such that d(k) is an isolated number (A167706).

The programs for A167759, there is no canonical definition to state claims against.
-/

/-! ## A167759.P7726124516824271897

`eq[1, A109381(A032741(n))]`
-/

namespace A167759.P7726124516824271897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109381 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167759.P7726124516824271897

/-! ## A167759.P2128175924130082567

`eq[1, A030787(A032741(n)+1)]`
-/

namespace A167759.P2128175924130082567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (A032741 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167759.P2128175924130082567

/-! ## A167759.P13952257011872830820

`filter[A166546(n+2), A370598(#)]`
-/

namespace A167759.P13952257011872830820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166546 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j).toNat = 1) n)

end

end A167759.P13952257011872830820

/-! ## A167759.P14477999077646834600

`eq[1, A030787(A000005(n+1))]+1`
-/

namespace A167759.P14477999077646834600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030787 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A167759.P14477999077646834600

/-! ## A167759.P14518241464115461576

`eq[1, A065516(A062069(n+1))]+1`
-/

namespace A167759.P14518241464115461576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (A062069 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A167759.P14518241464115461576

/-! ## A167759.P1224640775527018548

`eq[2, A002942((A000005(n+1)+1)²)%4]+1`
-/

namespace A167759.P1224640775527018548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002942 ((A000005 (n + 1) + 1) ^ 2).toNat) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A167759.P1224640775527018548

/-! ## A167759.P4766542195917155754

`eq[A000005(n+1), A110545(A000005(n+1)+1)]+1`
-/

namespace A167759.P4766542195917155754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110545 (A000005 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A167759.P4766542195917155754

/-!
# A167760: The number of permutations w of [n] with no w(i)+1 == w(i+1) (mod n).

The programs for A167760, there is no canonical definition to state claims against.
-/

/-! ## A167760.P16184182627182099271

`round(sqrt(n²+1))*A134832(C(n+1, 2))`
-/

namespace A167760.P16184182627182099271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) * A134832 (Nat.choose (n + 1) 2)

end

end A167760.P16184182627182099271

/-! ## A167760.P4826650545310111285

`A000757(n)*A028310(n)`
-/

namespace A167760.P4826650545310111285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n * A028310 n

end

end A167760.P4826650545310111285

/-! ## A167760.P11016415074467157222

`A000757(n)*A065033(2*n)`
-/

namespace A167760.P11016415074467157222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n * A065033 (2 * n)

end

end A167760.P11016415074467157222

/-! ## A167760.P6330353110325689000

`gcd(n, A006882(n))*A000757(n)`
-/

namespace A167760.P6330353110325689000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A006882 n) : ℤ) * A000757 n

end

end A167760.P6330353110325689000

/-! ## A167760.P2043716419955884782

`A028586(n²)+n*A000757(n)`
-/

namespace A167760.P2043716419955884782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028586 (n ^ 2) + (n : ℤ) * A000757 n

end

end A167760.P2043716419955884782

/-! ## A167760.P7889899978227033675

`A000757(n)*A122197(n*(n+3)+1)`
-/

namespace A167760.P7889899978227033675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n * A122197 (n * (n + 3) + 1)

end

end A167760.P7889899978227033675

/-! ## A167760.P14705820832370741872

`A007318(A000124(n))*A000757(n)`
-/

namespace A167760.P14705820832370741872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat * A000757 n

end

end A167760.P14705820832370741872

/-! ## A167760.P10065265925070747891

`A000757(n)*A008619(A004273(n))`
-/

namespace A167760.P10065265925070747891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n * A008619 (A004273 n).toNat

end

end A167760.P10065265925070747891

/-! ## A167760.P1260959020513841731

`A000757(n)*A008619(A004275(n))`
-/

namespace A167760.P1260959020513841731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n * A008619 (A004275 n).toNat

end

end A167760.P1260959020513841731

/-! ## A167760.P12418548343894637569

`A000757(n)*A051176(A008486(n))`
-/

namespace A167760.P12418548343894637569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000757 n * A051176 (A008486 n).toNat

end

end A167760.P12418548343894637569

/-!
# A167761: a(n) = sqrt(A167657(n)).

The programs for A167761, the canonical program `A167761.P392541116027137625` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167761 has offset 1).

The definition of A167761 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167657, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A167761.P392541116027137625

`sqrt(A167657(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A167761

/-- `sqrt(A167657(n+1))` -/
def P392541116027137625.Spec : Prop :=
  ∀ n, P392541116027137625.a n = (A167761 (n + 1) : ℝ)

end A167761

/-! ## A167761.P18350303677294399928

`sqrt(n)^A075526(n)`
-/

namespace A167761.P18350303677294399928
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ) ^ (A075526 n : ℤ)

end

end A167761.P18350303677294399928

namespace A167761

/-- `sqrt(n)^A075526(n)` -/
def P18350303677294399928.Spec : Prop :=
  ∀ n, P18350303677294399928.a n = (A167761 (n + 1) : ℝ)

end A167761

/-! ## A167761.P10468601307113257842

`sqrt(n)^A054541(n+1)`
-/

namespace A167761.P10468601307113257842
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ) ^ (A054541 (n + 1) : ℤ)

end

end A167761.P10468601307113257842

namespace A167761

/-- `sqrt(n)^A054541(n+1)` -/
def P10468601307113257842.Spec : Prop :=
  ∀ n, P10468601307113257842.a n = (A167761 (n + 1) : ℝ)

end A167761

/-! ## A167761.P750995244453263037

`sqrt(n)^A125266(n+1)`
-/

namespace A167761.P750995244453263037
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ) ^ (A125266 (n + 1) : ℤ)

end

end A167761.P750995244453263037

namespace A167761

/-- `sqrt(n)^A125266(n+1)` -/
def P750995244453263037.Spec : Prop :=
  ∀ n, P750995244453263037.a n = (A167761 (n + 1) : ℝ)

end A167761

/-! ## A167761.P8150043155675036666

`sqrt(n)^A181346(n+1)`
-/

namespace A167761.P8150043155675036666
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (n : ℝ) ^ (A181346 (n + 1) : ℤ)

end

end A167761.P8150043155675036666

namespace A167761

/-- `sqrt(n)^A181346(n+1)` -/
def P8150043155675036666.Spec : Prop :=
  ∀ n, P8150043155675036666.a n = (A167761 (n + 1) : ℝ)

end A167761

/-!
# A167762: a(n) = 2*a(n-1)+3*a(n-2)-6*a(n-3) starting a(0)=a(1)=0, a(2)=1.

The programs for A167762, the canonical program `A167762.P16084922370431159347` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167762 has offset 0).

The definition of A167762 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)+3*a(n-2)-6*a(n-3)` (program `A167762.P16084922370431159347`, by `A167762.P16084922370431159347.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A167762.P782502047707831005

`2^n-A038754(n)`
-/

namespace A167762.P782502047707831005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A038754 n

end

end A167762.P782502047707831005

namespace A167762

/-- `2^n-A038754(n)` -/
def P782502047707831005.Spec : Prop :=
  ∀ n, P782502047707831005.a n = A167762 n

end A167762

/-! ## A167762.P16084922370431159347

`2*a(n-1)+3*a(n-2)-6*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A167762

/-- `2*a(n-1)+3*a(n-2)-6*a(n-3)` -/
def P16084922370431159347.Spec : Prop :=
  ∀ n, P16084922370431159347.a n = A167762 n

theorem P16084922370431159347.correct : P16084922370431159347.Spec := by
  intro n
  simp only [A167762]

end A167762

/-! ## A167762.P12874869443538339480

`∑[A366131(n)/2]`
-/

namespace A167762.P12874869443538339480
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366131 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167762.P12874869443538339480

namespace A167762

/-- `∑[A366131(n)/2]` -/
def P12874869443538339480.Spec : Prop :=
  ∀ n, P12874869443538339480.a n = (A167762 n : ℚ)

end A167762

/-! ## A167762.P10759615504708012055

`2^n-A182522(n+1)`
-/

namespace A167762.P10759615504708012055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A182522 (n + 1)

end

end A167762.P10759615504708012055

namespace A167762

/-- `2^n-A182522(n+1)` -/
def P10759615504708012055.Spec : Prop :=
  ∀ n, P10759615504708012055.a n = A167762 n

end A167762

/-! ## A167762.P17345248192653998490

`A167936(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A167762.P17345248192653998490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A167936 (n - 1) + a (n - 1)

end

end A167762.P17345248192653998490

namespace A167762

/-- `A167936(n-1)+a(n-1)` -/
def P17345248192653998490.Spec : Prop :=
  ∀ n, P17345248192653998490.a n = A167762 n

end A167762

/-! ## A167762.P7125949846033188976

`A167784(n)-A254006(n)`
-/

namespace A167762.P7125949846033188976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167784 n - A254006 n

end

end A167762.P7125949846033188976

namespace A167762

/-- `A167784(n)-A254006(n)` -/
def P7125949846033188976.Spec : Prop :=
  ∀ n, P7125949846033188976.a n = A167762 n

end A167762

/-! ## A167762.P9536808434373983111

`∑[A167936(A004273(n)-n)]`
-/

namespace A167762.P9536808434373983111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167936 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A167762.P9536808434373983111

namespace A167762

/-- `∑[A167936(A004273(n)-n)]` -/
def P9536808434373983111.Spec : Prop :=
  ∀ n, P9536808434373983111.a n = A167762 n

end A167762

/-! ## A167762.P8716805452815421995

`A000051(n)-(A038754(n)+1)`
-/

namespace A167762.P8716805452815421995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A038754 n + 1)

end

end A167762.P8716805452815421995

namespace A167762

/-- `A000051(n)-(A038754(n)+1)` -/
def P8716805452815421995.Spec : Prop :=
  ∀ n, P8716805452815421995.a n = A167762 n

end A167762

/-! ## A167762.P13255513801722288289

`A000225(n)+1-A038754(n)`
-/

namespace A167762.P13255513801722288289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A038754 n)

end

end A167762.P13255513801722288289

namespace A167762

/-- `A000225(n)+1-A038754(n)` -/
def P13255513801722288289.Spec : Prop :=
  ∀ n, P13255513801722288289.a n = A167762 n

end A167762

/-! ## A167762.P13358925134769078224

`A000225(n)-A062318(n+1)`
-/

namespace A167762.P13358925134769078224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A062318 (n + 1)

end

end A167762.P13358925134769078224

namespace A167762

/-- `A000225(n)-A062318(n+1)` -/
def P13358925134769078224.Spec : Prop :=
  ∀ n, P13358925134769078224.a n = A167762 n

end A167762

/-! ## A167762.P12318496986728285731

`A000918(n)+2-A038754(n)`
-/

namespace A167762.P12318496986728285731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + (2 - A038754 n)

end

end A167762.P12318496986728285731

namespace A167762

/-- `A000918(n)+2-A038754(n)` -/
def P12318496986728285731.Spec : Prop :=
  ∀ n, P12318496986728285731.a n = A167762 n

end A167762

/-! ## A167762.P11901950659579584703

`A000773(n+1)+A000773(n+2)`
-/

namespace A167762.P11901950659579584703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000773 (n + 1) + A000773 (n + 2)

end

end A167762.P11901950659579584703

namespace A167762

/-- `A000773(n+1)+A000773(n+2)` -/
def P11901950659579584703.Spec : Prop :=
  ∀ n, P11901950659579584703.a n = A167762 n

end A167762

/-! ## A167762.P12287075574331196744

`A000051(n)-(A062318(n+1)+2)`
-/

namespace A167762.P12287075574331196744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A062318 (n + 1) + 2)

end

end A167762.P12287075574331196744

namespace A167762

/-- `A000051(n)-(A062318(n+1)+2)` -/
def P12287075574331196744.Spec : Prop :=
  ∀ n, P12287075574331196744.a n = A167762 n

end A167762

/-! ## A167762.P2978541762765449326

`A011782(n+1)-A068911(n+1)/2`
-/

namespace A167762.P2978541762765449326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) : ℚ) - (A068911 (n + 1) : ℚ) / 2

end

end A167762.P2978541762765449326

namespace A167762

/-- `A011782(n+1)-A068911(n+1)/2` -/
def P2978541762765449326.Spec : Prop :=
  ∀ n, P2978541762765449326.a n = (A167762 n : ℚ)

end A167762

/-! ## A167762.P6908840203687708657

`A016116(2*n)-A068911(n+1)/2`
-/

namespace A167762.P6908840203687708657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 (2 * n) : ℚ) - (A068911 (n + 1) : ℚ) / 2

end

end A167762.P6908840203687708657

namespace A167762

/-- `A016116(2*n)-A068911(n+1)/2` -/
def P6908840203687708657.Spec : Prop :=
  ∀ n, P6908840203687708657.a n = (A167762 n : ℚ)

end A167762

/-! ## A167762.P1401169509741927126

`A060546(2*n)-A068911(n+1)/2`
-/

namespace A167762.P1401169509741927126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060546 (2 * n) : ℚ) - (A068911 (n + 1) : ℚ) / 2

end

end A167762.P1401169509741927126

namespace A167762

/-- `A060546(2*n)-A068911(n+1)/2` -/
def P1401169509741927126.Spec : Prop :=
  ∀ n, P1401169509741927126.a n = (A167762 n : ℚ)

end A167762

/-! ## A167762.P16862744842912612838

`A038754(n)+A366131(n)-A068911(n)`
-/

namespace A167762.P16862744842912612838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038754 n + (A366131 n - A068911 n)

end

end A167762.P16862744842912612838

namespace A167762

/-- `A038754(n)+A366131(n)-A068911(n)` -/
def P16862744842912612838.Spec : Prop :=
  ∀ n, P16862744842912612838.a n = A167762 n

end A167762

/-! ## A167762.P2232548524977422348

`A001045(n+1)+A001045(n)-A038754(n)`
-/

namespace A167762.P2232548524977422348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A001045 n - A038754 n)

end

end A167762.P2232548524977422348

namespace A167762

/-- `A001045(n+1)+A001045(n)-A038754(n)` -/
def P2232548524977422348.Spec : Prop :=
  ∀ n, P2232548524977422348.a n = A167762 n

end A167762

/-! ## A167762.P14445424550214035216

`A016116(2*n)-(A304973(n+1)+A016116(n+1))`
-/

namespace A167762.P14445424550214035216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) - (A304973 (n + 1) + A016116 (n + 1))

end

end A167762.P14445424550214035216

namespace A167762

/-- `A016116(2*n)-(A304973(n+1)+A016116(n+1))` -/
def P14445424550214035216.Spec : Prop :=
  ∀ n, P14445424550214035216.a n = A167762 n

end A167762

/-! ## A167762.P5116249693424242684

`A016116(2*n)+A304974(n+1)-A305750(n+1)`
-/

namespace A167762.P5116249693424242684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * n) + (A304974 (n + 1) - A305750 (n + 1))

end

end A167762.P5116249693424242684

namespace A167762

/-- `A016116(2*n)+A304974(n+1)-A305750(n+1)` -/
def P5116249693424242684.Spec : Prop :=
  ∀ n, P5116249693424242684.a n = A167762 n

end A167762

/-!
# A167763: Pendular triangle (p=0), read by rows, where row n is formed from row n-1 by the recurrence: if n > 2k, T(n,k) = T(n,n-k) + T(n-1,k), otherwise T(n,k) = T(n,n-1-k) + p*T(n-1,k), for n >= k <= 0, with T(n,0) = 1 and T(n,n) = 0^n.

The programs for A167763, there is no canonical definition to state claims against.
-/

/-! ## A167763.P1915570283738371901

`A339160(n+1)+A043545(A089759(n))`
-/

namespace A167763.P1915570283738371901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339160 (n + 1) + A043545 (A089759 n).toNat

end

end A167763.P1915570283738371901

/-! ## A167763.P230060051421130985

`A339160(n+1)+A043545(A227655(n))`
-/

namespace A167763.P230060051421130985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339160 (n + 1) + A043545 (A227655 n).toNat

end

end A167763.P230060051421130985

/-! ## A167763.P875958916913628597

`A185238(n)+A339160(n+1)-A105812(A089759(n))`
-/

namespace A167763.P875958916913628597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 n + (A339160 (n + 1) - A105812 (A089759 n).toNat)

end

end A167763.P875958916913628597

/-! ## A167763.P3124239304582508901

`A163352(A048993(n))+A037012(n)`
-/

namespace A167763.P3124239304582508901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A048993 n).toNat + A037012 n

end

end A167763.P3124239304582508901

/-! ## A167763.P8768646673359074183

`A383511(A071922(n))+A071919(n)`
-/

namespace A167763.P8768646673359074183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383511 (A071922 n).toNat + A071919 n

end

end A167763.P8768646673359074183

/-!
# A167764: a(n) is the index k of k-th prime prime(k) in the smallest concatenation "2 3 ... prime(k)" where prime(n+1) is a factor.

The programs for A167764, there is no canonical definition to state claims against.
-/

/-! ## A167764.P11916419677873507135

`A000720(A090497(n+2))`
-/

namespace A167764.P11916419677873507135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A090497 (n + 2)).toNat

end

end A167764.P11916419677873507135

/-! ## A167764.P6225124917918320355

`A061395(p?[A090497(n+2)])`
-/

namespace A167764.P6225124917918320355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090497 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A167764.P6225124917918320355

/-! ## A167764.P10293455896910700824

`∑{d}[A090497(n+2), A061395(#)]`
-/

namespace A167764.P10293455896910700824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090497 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A167764.P10293455896910700824

/-! ## A167764.P7843336502821293839

`A061395(∑{p}[A090497(n+2), #])`
-/

namespace A167764.P7843336502821293839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090497 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A167764.P7843336502821293839

/-! ## A167764.P3642989403374095135

`A061395(A035214(n)*A090497(n+2))`
-/

namespace A167764.P3642989403374095135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A035214 n * A090497 (n + 2)).toNat

end

end A167764.P3642989403374095135

/-! ## A167764.P7601247403666275937

`A061395(2*A090497(n+2))`
-/

namespace A167764.P7601247403666275937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A090497 (n + 2)).toNat

end

end A167764.P7601247403666275937

/-! ## A167764.P16978066967333127681

`A058933(p?[A090497(n+2)])`
-/

namespace A167764.P16978066967333127681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090497 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A167764.P16978066967333127681

/-! ## A167764.P12106655496215431155

`∑{d}[A090497(n+2), A065770(#)]`
-/

namespace A167764.P12106655496215431155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090497 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A065770 d

end

end A167764.P12106655496215431155

/-! ## A167764.P17805689672206656452

`∑{d}[A090497(n+2), A263297(#)]`
-/

namespace A167764.P17805689672206656452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090497 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A263297 d

end

end A167764.P17805689672206656452

/-! ## A167764.P1815366368066173904

`A079067(A090497(n+2))+char[A317415(n)]`
-/

namespace A167764.P1815366368066173904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317415 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A090497 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A167764.P1815366368066173904

/-! ## A167764.P13185023605096385875

`A065770(A090497(n+2)%A090495(n+1))`
-/

namespace A167764.P13185023605096385875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (Int.tmod (A090497 (n + 2)) (A090495 (n + 1))).toNat

end

end A167764.P13185023605096385875

/-! ## A167764.P12319858529301535511

`A079067(A090497(n+2))+char[A079067(n+2)]`
-/

namespace A167764.P12319858529301535511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079067 (A090497 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A167764.P12319858529301535511

/-!
# A167766: Minimum numbers whose phi of phi are multiples of the n-th prime: the n-th term is the minimum integer x such that: prime(n) | phi(phi(x)), prime(n) being the n-th prime.

The programs for A167766, there is no canonical definition to state claims against.
-/

/-! ## A167766.P9963936090427960249

`p?[or(A305750(n), A310505(n))]`
-/

namespace A167766.P9963936090427960249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A305750 n) (A310505 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167766.P9963936090427960249

/-! ## A167766.P2886469357121525403

`p?[or(A305750(n), A310516(n))]`
-/

namespace A167766.P2886469357121525403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A305750 n) (A310516 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167766.P2886469357121525403

/-!
# A167767: First of 3 or more consecutive integers with equal values of phi(phi(n)).

The programs for A167767, there is no canonical definition to state claims against.
-/

/-! ## A167767.P86164579497355210

`eq[A111409(n+1)/(n+1), A111409(n)]`
-/

namespace A167767.P86164579497355210
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111409 (n + 1) : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111409 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A167767.P86164579497355210

/-!
# A167768: First of 4 or more consecutive integers with equal values of phi(phi(n)).

The programs for A167768, there is no canonical definition to state claims against.
-/

/-! ## A167768.P16465642750964935945

`∩[A167767(n+1)-1, A167767(n+1)]`
-/

namespace A167768.P16465642750964935945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167767 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167767 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167768.P16465642750964935945

/-!
# A167769: Pendular trinomial triangle (p=0), read by rows of 2n+1 terms (n>=0), defined by the recurrence : if 0

The programs for A167769, there is no canonical definition to state claims against.
-/

/-! ## A167769.P7804702754051222811

`∑{e}[A123071(A119369(n)), #]`
-/

namespace A167769.P7804702754051222811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123071 (A119369 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A167769.P7804702754051222811

/-! ## A167769.P14231537343251095817

`A003434(A343647(2^A119369(n)))`
-/

namespace A167769.P14231537343251095817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003434 (A343647 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A119369 n : ℤ))).toNat).toNat

end

end A167769.P14231537343251095817

/-! ## A167769.P8918646814004154458

`A145569(A119369(n)%p?[A119369(n)])`
-/

namespace A167769.P8918646814004154458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (Int.tmod (A119369 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))).toNat

end

end A167769.P8918646814004154458

/-! ## A167769.P15817438319247166957

`A145569(A119369(n))+A087371(3*comp[3*n])`
-/

namespace A167769.P15817438319247166957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145569 (A119369 n).toNat + A087371 (3 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A167769.P15817438319247166957

/-!
# A167770: a(n) = prime(n)^2 modulo prime(n+1).

The programs for A167770, the canonical program `A167770.P15250803839821873356` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167770 has offset 1).

The definition of A167770 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167770.P17467375009338266590

`A352851(n+1)%p?[2*n+1]`
-/

namespace A167770.P17467375009338266590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352851 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ)

end

end A167770.P17467375009338266590

namespace A167770

/-- `A352851(n+1)%p?[2*n+1]` -/
def P17467375009338266590.Spec : Prop :=
  ∀ n, P17467375009338266590.a n = A167770 (n + 1)

end A167770

/-! ## A167770.P15250803839821873356

`A065091(n+1)-A113396(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A167770

/-- `A065091(n+1)-A113396(n+1)` -/
def P15250803839821873356.Spec : Prop :=
  ∀ n, P15250803839821873356.a n = A167770 (n + 1)

theorem P15250803839821873356.correct : P15250803839821873356.Spec := by
  intro n
  simp only [A167770, Nat.add_sub_cancel]

end A167770

/-! ## A167770.P10695256403705033565

`A001248(n+1)%A065091(n+1)`
-/

namespace A167770.P10695256403705033565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001248 (n + 1)) (A065091 (n + 1))

end

end A167770.P10695256403705033565

namespace A167770

/-- `A001248(n+1)%A065091(n+1)` -/
def P10695256403705033565.Spec : Prop :=
  ∀ n, P10695256403705033565.a n = A167770 (n + 1)

end A167770

/-! ## A167770.P15462507442222433830

`A062235(n+1)%A045344(n+1)`
-/

namespace A167770.P15462507442222433830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A062235 (n + 1)) (A045344 (n + 1))

end

end A167770.P15462507442222433830

namespace A167770

/-- `A062235(n+1)%A045344(n+1)` -/
def P15462507442222433830.Spec : Prop :=
  ∀ n, P15462507442222433830.a n = A167770 (n + 1)

end A167770

/-! ## A167770.P12810083825242446846

`A069484(n+1)%A045344(n+1)`
-/

namespace A167770.P12810083825242446846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A069484 (n + 1)) (A045344 (n + 1))

end

end A167770.P12810083825242446846

namespace A167770

/-- `A069484(n+1)%A045344(n+1)` -/
def P12810083825242446846.Spec : Prop :=
  ∀ n, P12810083825242446846.a n = A167770 (n + 1)

end A167770

/-! ## A167770.P12817889113289453008

`A076821(n+1)%A045344(n+1)`
-/

namespace A167770.P12817889113289453008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076821 (n + 1)) (A045344 (n + 1))

end

end A167770.P12817889113289453008

namespace A167770

/-- `A076821(n+1)%A045344(n+1)` -/
def P12817889113289453008.Spec : Prop :=
  ∀ n, P12817889113289453008.a n = A167770 (n + 1)

end A167770

/-! ## A167770.P8252190903615428663

`A352851(n+1)%A045344(n+1)`
-/

namespace A167770.P8252190903615428663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352851 (n + 1)) (A045344 (n + 1))

end

end A167770.P8252190903615428663

namespace A167770

/-- `A352851(n+1)%A045344(n+1)` -/
def P8252190903615428663.Spec : Prop :=
  ∀ n, P8252190903615428663.a n = A167770 (n + 1)

end A167770

/-! ## A167770.P13730897744652618920

`A000040(n+2)-A113396(n+1)`
-/

namespace A167770.P13730897744652618920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A113396 (n + 1)

end

end A167770.P13730897744652618920

namespace A167770

/-- `A000040(n+2)-A113396(n+1)` -/
def P13730897744652618920.Spec : Prop :=
  ∀ n, P13730897744652618920.a n = A167770 (n + 1)

end A167770

/-! ## A167770.P3281578566088132565

`A000040(n+1)²%A000040(n+2)`
-/

namespace A167770.P3281578566088132565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1) ^ 2) (A000040 (n + 2))

end

end A167770.P3281578566088132565

namespace A167770

/-- `A000040(n+1)²%A000040(n+2)` -/
def P3281578566088132565.Spec : Prop :=
  ∀ n, P3281578566088132565.a n = A167770 (n + 1)

end A167770

/-! ## A167770.P3792327681701374361

`∏{p}[p?[A207790(n+1)], #]²%A207790(2*(n+2))`
-/

namespace A167770.P3792327681701374361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) ^ 2 : ℕ) : ℤ) (A207790 (2 * (n + 2)))

end

end A167770.P3792327681701374361

namespace A167770

/-- `∏{p}[p?[A207790(n+1)], #]²%A207790(2*(n+2))` -/
def P3792327681701374361.Spec : Prop :=
  ∀ n, P3792327681701374361.a n = A167770 (n + 1)

end A167770

/-! ## A167770.P17573210718837465845

`A006530(lt[n, A006530(n+2)]+2)²%A207790(2*(n+2))`
-/

namespace A167770.P17573210718837465845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2) ^ 2) (A207790 (2 * (n + 2)))

end

end A167770.P17573210718837465845

namespace A167770

/-- `A006530(lt[n, A006530(n+2)]+2)²%A207790(2*(n+2))` -/
def P17573210718837465845.Spec : Prop :=
  ∀ n, P17573210718837465845.a n = A167770 (n + 1)

end A167770

/-! ## A167770.P361515435568078241

`(lt[A000010(n+1), A020639(n+1)]+1)²%A207790(2*(n+2))`
-/

namespace A167770.P361515435568078241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1) ^ 2 : ℤ) (A207790 (2 * (n + 2)))

end

end A167770.P361515435568078241

namespace A167770

/-- `(lt[A000010(n+1), A020639(n+1)]+1)²%A207790(2*(n+2))` -/
def P361515435568078241.Spec : Prop :=
  ∀ n, P361515435568078241.a n = A167770 (n + 1)

end A167770

/-! ## A167770.P5412462588898113142

`A257231(A000040(n+1))`
-/

namespace A167770.P5412462588898113142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257231 (A000040 (n + 1)).toNat

end

end A167770.P5412462588898113142

namespace A167770

/-- `A257231(A000040(n+1))` -/
def P5412462588898113142.Spec : Prop :=
  ∀ n, P5412462588898113142.a n = A167770 (n + 1)

end A167770

/-! ## A167770.P6186778013964262497

`A257231(A006005(n+1))`
-/

namespace A167770.P6186778013964262497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257231 (A006005 (n + 1)).toNat

end

end A167770.P6186778013964262497

namespace A167770

/-- `A257231(A006005(n+1))` -/
def P6186778013964262497.Spec : Prop :=
  ∀ n, P6186778013964262497.a n = A167770 (n + 1)

end A167770

/-! ## A167770.P8102730547616084006

`A257231(A008578(n+2))`
-/

namespace A167770.P8102730547616084006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257231 (A008578 (n + 2)).toNat

end

end A167770.P8102730547616084006

namespace A167770

/-- `A257231(A008578(n+2))` -/
def P8102730547616084006.Spec : Prop :=
  ∀ n, P8102730547616084006.a n = A167770 (n + 1)

end A167770

/-! ## A167770.P17921664974867523208

`A257231(A075643(n+2))`
-/

namespace A167770.P17921664974867523208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257231 (A075643 (n + 2)).toNat

end

end A167770.P17921664974867523208

namespace A167770

/-- `A257231(A075643(n+2))` -/
def P17921664974867523208.Spec : Prop :=
  ∀ n, P17921664974867523208.a n = A167770 (n + 1)

end A167770

/-! ## A167770.P4114223904636001096

`A257231(A182986(n+2))`
-/

namespace A167770.P4114223904636001096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257231 (A182986 (n + 2)).toNat

end

end A167770.P4114223904636001096

namespace A167770

/-- `A257231(A182986(n+2))` -/
def P4114223904636001096.Spec : Prop :=
  ∀ n, P4114223904636001096.a n = A167770 (n + 1)

end A167770

/-! ## A167770.P1091774317226022091

`A257231(record[A006530(n+2)])`
-/

namespace A167770.P1091774317226022091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257231 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A167770.P1091774317226022091

namespace A167770

/-- `A257231(record[A006530(n+2)])` -/
def P1091774317226022091.Spec : Prop :=
  ∀ n, P1091774317226022091.a n = A167770 (n + 1)

end A167770

/-! ## A167770.P10469983094835497407

`A257231(record[A014963(n+2)])`
-/

namespace A167770.P10469983094835497407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257231 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A167770.P10469983094835497407

namespace A167770

/-- `A257231(record[A014963(n+2)])` -/
def P10469983094835497407.Spec : Prop :=
  ∀ n, P10469983094835497407.a n = A167770 (n + 1)

end A167770

/-! ## A167770.P8515278257353128891

`A257231(record[A020639(n+2)])`
-/

namespace A167770.P8515278257353128891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257231 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A167770.P8515278257353128891

namespace A167770

/-- `A257231(record[A020639(n+2)])` -/
def P8515278257353128891.Spec : Prop :=
  ∀ n, P8515278257353128891.a n = A167770 (n + 1)

end A167770

/-!
# A167771: Twice-isolated primes: primes p such that neither p+-2 nor p+-4 is prime.

The programs for A167771, the canonical program `A167771.P8141901052907375128` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167771 has offset 1).

The definition of A167771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167771.P8141901052907375128

`A137869(n%a(n-1))` with `a(0)=2`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A167771

/-- `A137869(n%a(n-1))` -/
def P8141901052907375128.Spec : Prop :=
  ∀ n, P8141901052907375128.a n = A167771 (n + 1)

theorem P8141901052907375128.correct : P8141901052907375128.Spec := by
  intro n
  simp only [A167771, Nat.add_sub_cancel]

end A167771

/-! ## A167771.P14020079420215100550

`∪[A007352(n+1), A137869(n+1)]`
-/

namespace A167771.P14020079420215100550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167771.P14020079420215100550

namespace A167771

/-- `∪[A007352(n+1), A137869(n+1)]` -/
def P14020079420215100550.Spec : Prop :=
  ∀ n, (P14020079420215100550.a n : ℤ) = A167771 (n + 1)

end A167771

/-! ## A167771.P9791007696446075163

`∪[A062066(n+1), A137869(n+1)]`
-/

namespace A167771.P9791007696446075163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137869 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167771.P9791007696446075163

namespace A167771

/-- `∪[A062066(n+1), A137869(n+1)]` -/
def P9791007696446075163.Spec : Prop :=
  ∀ n, (P9791007696446075163.a n : ℤ) = A167771 (n + 1)

end A167771

/-! ## A167771.P14172468810673510102

`∪[A137869(n+1), A167833(n+1)]`
-/

namespace A167771.P14172468810673510102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167833 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167771.P14172468810673510102

namespace A167771

/-- `∪[A137869(n+1), A167833(n+1)]` -/
def P14172468810673510102.Spec : Prop :=
  ∀ n, (P14172468810673510102.a n : ℤ) = A167771 (n + 1)

end A167771

/-! ## A167771.P5304779556120247369

`A137869(A028310(n))%A076458(n+1)`
-/

namespace A167771.P5304779556120247369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137869 (A028310 n).toNat) (A076458 (n + 1))

end

end A167771.P5304779556120247369

namespace A167771

/-- `A137869(A028310(n))%A076458(n+1)` -/
def P5304779556120247369.Spec : Prop :=
  ∀ n, P5304779556120247369.a n = A167771 (n + 1)

end A167771

/-! ## A167771.P15907695476373600747

`A001222(a(n-1))*A137869(A028310(n))` with `a(0)=2`
-/

namespace A167771.P15907695476373600747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001222 (a (n - 1)).toNat * A137869 (A028310 n).toNat

end

end A167771.P15907695476373600747

namespace A167771

/-- `A001222(a(n-1))*A137869(A028310(n))` -/
def P15907695476373600747.Spec : Prop :=
  ∀ n, P15907695476373600747.a n = A167771 (n + 1)

end A167771

/-! ## A167771.P2865051695691975472

`A137869(A028310(n))%A003337(A008706(n))`
-/

namespace A167771.P2865051695691975472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137869 (A028310 n).toNat) (A003337 (A008706 n).toNat)

end

end A167771.P2865051695691975472

namespace A167771

/-- `A137869(A028310(n))%A003337(A008706(n))` -/
def P2865051695691975472.Spec : Prop :=
  ∀ n, P2865051695691975472.a n = A167771 (n + 1)

end A167771

/-! ## A167771.P16241151856966739824

`p?[A073830(A264722(n+1)-6)%A001747(n+2)]`
-/

namespace A167771.P16241151856966739824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073830 (A264722 (n + 1) - 6).toNat) (A001747 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A167771.P16241151856966739824

namespace A167771

/-- `p?[A073830(A264722(n+1)-6)%A001747(n+2)]` -/
def P16241151856966739824.Spec : Prop :=
  ∀ n, P16241151856966739824.a n = A167771 (n + 1)

end A167771

/-!
# A167772: Riordan array (c(x)/(1+x*c(x)), x*c(x)), c(x) the g.f. of A000108.

The programs for A167772, there is no canonical definition to state claims against.
-/

/-! ## A167772.P6085958589320002806

`(A237619(n)+A033184(n+1))/2`
-/

namespace A167772.P6085958589320002806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A237619 n + A033184 (n + 1) : ℚ) / 2

end

end A167772.P6085958589320002806

/-! ## A167772.P18389897028699725129

`A237619(comp[∑[n]])`
-/

namespace A167772.P18389897028699725129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237619 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A167772.P18389897028699725129

/-! ## A167772.P1760149330342151467

`abs(A237619(comp[A000124(n)]))`
-/

namespace A167772.P1760149330342151467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A237619 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A167772.P1760149330342151467

/-! ## A167772.P2197587198799392261

`abs(A237619(comp[A000217(n)]))`
-/

namespace A167772.P2197587198799392261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A237619 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)|

end

end A167772.P2197587198799392261

/-! ## A167772.P17787043849089714807

`abs(A237619(A014132(n+1)))`
-/

namespace A167772.P17787043849089714807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A237619 (A014132 (n + 1)).toNat|

end

end A167772.P17787043849089714807

/-! ## A167772.P11814253633961423917

`or(A000007(n), A237619(A014132(n+1)))`
-/

namespace A167772.P11814253633961423917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A237619 (A014132 (n + 1)).toNat)

end

end A167772.P11814253633961423917

/-! ## A167772.P563235347918707563

`A237619(A014132(n+1)+A000007(n))+A000007(n)`
-/

namespace A167772.P563235347918707563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237619 (A014132 (n + 1) + A000007 n).toNat + A000007 n

end

end A167772.P563235347918707563

/-! ## A167772.P1993455067346171442

`A014682(A237619(n)+A033184(n+1))`
-/

namespace A167772.P1993455067346171442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A237619 n + A033184 (n + 1)).toNat

end

end A167772.P1993455067346171442

/-! ## A167772.P17009800447499173505

`A004525(A237619(n)+A033184(n+1))`
-/

namespace A167772.P17009800447499173505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A237619 n + A033184 (n + 1)).toNat

end

end A167772.P17009800447499173505

/-! ## A167772.P10897625884523174413

`A004526(A237619(n)+A033184(n+1))`
-/

namespace A167772.P10897625884523174413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A237619 n + A033184 (n + 1)).toNat

end

end A167772.P10897625884523174413

/-!
# A167773: Primes p with property that (p-previous prime) < 6 or (next prime-p) < 6.

The programs for A167773, there is no canonical definition to state claims against.
-/

/-! ## A167773.P5118668809178385891

`∪[A111980(n+1), A171821(n+1)]`
-/

namespace A167773.P5118668809178385891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167773.P5118668809178385891

/-! ## A167773.P121684446492828516

`eq[A003415(n), A079300(A051700(n))]`
-/

namespace A167773.P121684446492828516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079300 (A051700 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167773.P121684446492828516

/-! ## A167773.P1886181775397171962

`eq[A007302(A051700(n)), A175126(n)]`
-/

namespace A167773.P1886181775397171962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A051700 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167773.P1886181775397171962

/-! ## A167773.P9325812775969874311

`eq[A105700(n), A325385(A051700(n))]`
-/

namespace A167773.P9325812775969874311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325385 (A051700 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167773.P9325812775969874311

/-! ## A167773.P8061766612860694487

`lt[A052186(A051700(n)), A055672(n)]`
-/

namespace A167773.P8061766612860694487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052186 (A051700 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055672 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167773.P8061766612860694487

/-! ## A167773.P6013601281534087354

`∪[A124589(n+1), A003961(A124589(n+1))]`
-/

namespace A167773.P6013601281534087354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124589 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A124589 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167773.P6013601281534087354

/-!
# A167774: Subsequence of A167708 whose indices are congruent to 1 mod 5, i.e., a(n) = A167708(5*n+1).

The programs for A167774, the canonical program `A167774.P15558136657283396020` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167774 has offset 0).

The definition of A167774 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167774.P16097346574463293200

`A167708(5*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167774.P16097346574463293200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167708 (5 * n + 1)

end

end A167774.P16097346574463293200

namespace A167774

/-- `A167708(5*n+1)` -/
def P16097346574463293200.Spec : Prop :=
  ∀ n, P16097346574463293200.a n = A167774 n

end A167774

/-! ## A167774.P15558136657283396020

`9*A114048(n+1)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A167774

/-- `9*A114048(n+1)` -/
def P15558136657283396020.Spec : Prop :=
  ∀ n, P15558136657283396020.a n = A167774 n

theorem P15558136657283396020.correct : P15558136657283396020.Spec := by
  intro n
  simp only [A167774]

end A167774

/-! ## A167774.P17551906985917875249

`lcm(dr(A016950(n)), A114048(n+1))`
-/

namespace A167774.P17551906985917875249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.digitalRoot (A016950 n) : ℤ) (A114048 (n + 1))

end

end A167774.P17551906985917875249

namespace A167774

/-- `lcm(dr(A016950(n)), A114048(n+1))` -/
def P17551906985917875249.Spec : Prop :=
  ∀ n, (P17551906985917875249.a n : ℤ) = A167774 n

end A167774

/-! ## A167774.P10480464699491352248

`lcm(9, A114048(n+1)%A167775(n))`
-/

namespace A167774.P10480464699491352248
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 9 (Int.tmod (A114048 (n + 1)) (A167775 n))

end

end A167774.P10480464699491352248

namespace A167774

/-- `lcm(9, A114048(n+1)%A167775(n))` -/
def P10480464699491352248.Spec : Prop :=
  ∀ n, (P10480464699491352248.a n : ℤ) = A167774 n

end A167774

/-! ## A167774.P16337611828298692808

`A167775(n)-(A167822(n)+A167820(n))`
-/

namespace A167774.P16337611828298692808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167775 n - (A167822 n + A167820 n)

end

end A167774.P16337611828298692808

namespace A167774

/-- `A167775(n)-(A167822(n)+A167820(n))` -/
def P16337611828298692808.Spec : Prop :=
  ∀ n, P16337611828298692808.a n = A167774 n

end A167774

/-!
# A167775: Subsequence of A167708 whose indices are congruent to 1 mod 5, i.e., a(n) = A167708(5n+1).

The programs for A167775, the canonical program `A167775.P12068219532098655821` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167775 has offset 0).

The definition of A167775 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167775.P12068219532098655821

`(10+sqrt(19))/2*(170+39*sqrt(19))^n+(10-sqrt(19))/2*(170-39*sqrt(19))^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A167775

/-- `(10+sqrt(19))/2*(170+39*sqrt(19))^n+(10-sqrt(19))/2*(170-39*sqrt(19))^n` -/
def P12068219532098655821.Spec : Prop :=
  ∀ n, P12068219532098655821.a n = (A167775 n : ℝ)

end A167775

/-! ## A167775.P809119260669351898

`A167708(5*n+1+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167775.P809119260669351898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167708 (5 * n + 1 + 1)

end

end A167775.P809119260669351898

namespace A167775

/-- `A167708(5*n+1+1)` -/
def P809119260669351898.Spec : Prop :=
  ∀ n, P809119260669351898.a n = A167775 n

end A167775

/-!
# A167776: Composite numbers having six composite nearest-neighbors.

The programs for A167776, the canonical program `A167776.P18219303921041330074` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167776 has offset 1).

The definition of A167776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A167776.P18219303921041330074

`lt[7, A175851(n+3)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A167776

/-- `lt[7, A175851(n+3)]` -/
def P18219303921041330074.Spec : Prop :=
  ∀ n, (P18219303921041330074.a n : ℤ) = A167776 (n + 1)

theorem P18219303921041330074.correct : P18219303921041330074.Spec := by
  intro n
  simp only [A167776, Nat.add_sub_cancel]

end A167776

/-! ## A167776.P16939214399702363991

`A020705(lt[7, A013632(n)])`
-/

namespace A167776.P16939214399702363991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A167776.P16939214399702363991

namespace A167776

/-- `A020705(lt[7, A013632(n)])` -/
def P16939214399702363991.Spec : Prop :=
  ∀ n, P16939214399702363991.a n = A167776 (n + 1)

end A167776

/-! ## A167776.P4567929860730531778

`lt[3, A051699(n)]`
-/

namespace A167776.P4567929860730531778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051699 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A167776.P4567929860730531778

namespace A167776

/-- `lt[3, A051699(n)]` -/
def P4567929860730531778.Spec : Prop :=
  ∀ n, (P4567929860730531778.a n : ℤ) = A167776 (n + 1)

end A167776

/-! ## A167776.P9509581651938610196

`lt[3, lcm(1-A105700(n), A051700(n))]`
-/

namespace A167776.P9509581651938610196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - A105700 n) (A051700 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167776.P9509581651938610196

namespace A167776

/-- `lt[3, lcm(1-A105700(n), A051700(n))]` -/
def P9509581651938610196.Spec : Prop :=
  ∀ n, (P9509581651938610196.a n : ℤ) = A167776 (n + 1)

end A167776

/-! ## A167776.P13623201833987918741

`eq[A000038(n), A329678(A051699(n))]`
-/

namespace A167776.P13623201833987918741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (A051699 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167776.P13623201833987918741

namespace A167776

/-- `eq[A000038(n), A329678(A051699(n))]` -/
def P13623201833987918741.Spec : Prop :=
  ∀ n, (P13623201833987918741.a n : ℤ) = A167776 (n + 1)

end A167776

/-! ## A167776.P17181032112139722679

`eq[A055671(n), A329678(A051699(n))]`
-/

namespace A167776.P17181032112139722679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (A051699 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167776.P17181032112139722679

namespace A167776

/-- `eq[A055671(n), A329678(A051699(n))]` -/
def P17181032112139722679.Spec : Prop :=
  ∀ n, (P17181032112139722679.a n : ℤ) = A167776 (n + 1)

end A167776

/-! ## A167776.P7338085075264765867

`eq[A055671(n), A329678(A051700(n))]`
-/

namespace A167776.P7338085075264765867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 (A051700 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167776.P7338085075264765867

namespace A167776

/-- `eq[A055671(n), A329678(A051700(n))]` -/
def P7338085075264765867.Spec : Prop :=
  ∀ n, (P7338085075264765867.a n : ℤ) = A167776 (n + 1)

end A167776

/-! ## A167776.P11662200339553566153

`lt[3, abs(n-A051697(n))]`
-/

namespace A167776.P11662200339553566153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A051697 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A167776.P11662200339553566153

namespace A167776

/-- `lt[3, abs(n-A051697(n))]` -/
def P11662200339553566153.Spec : Prop :=
  ∀ n, (P11662200339553566153.a n : ℤ) = A167776 (n + 1)

end A167776

/-! ## A167776.P7121048106935809110

`eq[2*A329678(A051699(n)), A329678(n)]`
-/

namespace A167776.P7121048106935809110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A329678 (A051699 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329678 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167776.P7121048106935809110

namespace A167776

/-- `eq[2*A329678(A051699(n)), A329678(n)]` -/
def P7121048106935809110.Spec : Prop :=
  ∀ n, (P7121048106935809110.a n : ℤ) = A167776 (n + 1)

end A167776

/-! ## A167776.P4332845768408303868

`A023443(lt[7, A049711(n+3)])`
-/

namespace A167776.P4332845768408303868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049711 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A167776.P4332845768408303868

namespace A167776

/-- `A023443(lt[7, A049711(n+3)])` -/
def P4332845768408303868.Spec : Prop :=
  ∀ n, P4332845768408303868.a n = A167776 (n + 1)

end A167776

/-! ## A167776.P1967900453774602882

`lt[6, A064722(n+3)]`
-/

namespace A167776.P1967900453774602882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064722 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A167776.P1967900453774602882

namespace A167776

/-- `lt[6, A064722(n+3)]` -/
def P1967900453774602882.Spec : Prop :=
  ∀ n, (P1967900453774602882.a n : ℤ) = A167776 (n + 1)

end A167776

/-!
# A167777: Even single (or even isolated) numbers.

The programs for A167777, there is no canonical definition to state claims against.
-/

/-! ## A167777.P10482918745241392109

`A181747(n+1)+1`
-/

namespace A167777.P10482918745241392109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1) + 1

end

end A167777.P10482918745241392109

/-! ## A167777.P15256115219616174255

`A067829(n+1)-1`
-/

namespace A167777.P15256115219616174255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1) - 1

end

end A167777.P15256115219616174255

/-! ## A167777.P915585691072724936

`2*A168497(n+1)`
-/

namespace A167777.P915585691072724936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168497 (n + 1)

end

end A167777.P915585691072724936

/-! ## A167777.P2135991847073631132

`and(-2, A175075(n+1))`
-/

namespace A167777.P2135991847073631132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A175075 (n + 1))

end

end A167777.P2135991847073631132

/-! ## A167777.P2542832389329211152

`and(-2, A129297(n+4))`
-/

namespace A167777.P2542832389329211152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A129297 (n + 4))

end

end A167777.P2542832389329211152

/-! ## A167777.P14567987656921307887

`and(-2, A094743(n+1))`
-/

namespace A167777.P14567987656921307887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (A094743 (n + 1))

end

end A167777.P14567987656921307887

/-! ## A167777.P12118312350239461889

`p?[A028815(n)+1]-1`
-/

namespace A167777.P12118312350239461889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A167777.P12118312350239461889

/-! ## A167777.P7293133917007482801

`p?[A157048(n+1)]-1`
-/

namespace A167777.P7293133917007482801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A167777.P7293133917007482801

/-! ## A167777.P8168536461010243753

`A099609(2*(n+1))-1`
-/

namespace A167777.P8168536461010243753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099609 (2 * (n + 1)) - 1

end

end A167777.P8168536461010243753

/-! ## A167777.P14261169895704657034

`eq[1, A378755(n+1)]+2`
-/

namespace A167777.P14261169895704657034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378755 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A167777.P14261169895704657034

/-!
# A167778: Subsequence of A167708 whose indices are 2 mod 5.

The programs for A167778, there is no canonical definition to state claims against.
-/

/-! ## A167778.P17358106603498444483

`A167708(A016885(n))`
-/

namespace A167778.P17358106603498444483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167708 (A016885 n).toNat

end

end A167778.P17358106603498444483

/-! ## A167778.P10145757044826659086

`A167708(A016897(n)-1)`
-/

namespace A167778.P10145757044826659086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167708 (A016897 n - 1).toNat

end

end A167778.P10145757044826659086

/-!
# A167779: Subsequence of A167708 whose indices are congruent to 4 mod 5, i.e., a(n) = A167708(5n+4).

The programs for A167779, there is no canonical definition to state claims against.
-/

/-! ## A167779.P3638086547164533308

`A167708(5*n+4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167779.P3638086547164533308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167708 (5 * n + 4)

end

end A167779.P3638086547164533308

/-!
# A167780: Subsequence of A167708 whose indices are 0 mod 5, that is, a(n) = A167708(5n+5).

The programs for A167780, there is no canonical definition to state claims against.
-/

/-! ## A167780.P2271175077318011816

`A167708(5*n+5)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A167780.P2271175077318011816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167708 (5 * n + 5)

end

end A167780.P2271175077318011816

/-!
# A167782: Numbers that are repdigits with length > 2 in some base.

The programs for A167782, there is no canonical definition to state claims against.
-/

/-! ## A167782.P7642081509566948527

`lt[n, (A023443(n)/A059711(n))²]`
-/

namespace A167782.P7642081509566948527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A023443 n : ℚ) / (A059711 n : ℚ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A167782.P7642081509566948527

/-! ## A167782.P12128000021005228133

`lt[n, (A028310(n)/A059711(n))²]`
-/

namespace A167782.P12128000021005228133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A028310 n : ℚ) / (A059711 n : ℚ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A167782.P12128000021005228133

/-! ## A167782.P10924062528267384139

`lt[n, A028310(floor(n^(3/2)))/A059711(n)]`
-/

namespace A167782.P10924062528267384139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028310 ⌊(n : ℝ) ^ ((3 : ℚ) / 2 : ℝ)⌋.toNat : ℚ) / (A059711 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A167782.P10924062528267384139

/-!
# A167783: Numbers that are repdigits with length > 2 in more than one base.

The programs for A167783, there is no canonical definition to state claims against.
-/

/-! ## A167783.P5601111795018568660

`A326381(A000005(2^n))`
-/

namespace A167783.P5601111795018568660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326381 (A000005 (2 ^ n)).toNat

end

end A167783.P5601111795018568660

/-! ## A167783.P598251396997249865

`A326381(A007967((n+1)²))`
-/

namespace A167783.P598251396997249865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326381 (A007967 ((n + 1) ^ 2)).toNat

end

end A167783.P598251396997249865

/-! ## A167783.P9103202088776935473

`record[A326381(A187200(n+1))]`
-/

namespace A167783.P9103202088776935473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326381 (A187200 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167783.P9103202088776935473

/-! ## A167783.P7779107757032274423

`A326381(A076084(n+2)-1)`
-/

namespace A167783.P7779107757032274423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326381 (A076084 (n + 2) - 1).toNat

end

end A167783.P7779107757032274423

/-! ## A167783.P14239031150058649899

`A326381(A151764(n+2)-1)`
-/

namespace A167783.P14239031150058649899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326381 (A151764 (n + 2) - 1).toNat

end

end A167783.P14239031150058649899

/-!
# A167784: a(n) = 2^n - (1 - (-1)^n)*3^((n-1)/2).

The programs for A167784, the canonical program `A167784.P15151516086566154597` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A167784 has offset 0).

The definition of A167784 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A167784.P15151516086566154597

`2^n-(1-(-1)^n)*3^((n-1)/2)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A167784

/-- `2^n-(1-(-1)^n)*3^((n-1)/2)` -/
def P15151516086566154597.Spec : Prop :=
  ∀ n, P15151516086566154597.a n = (A167784 n : ℝ)

end A167784

/-! ## A167784.P8963937152113495271

`and(-A038754(n), A099430(n))`
-/

namespace A167784.P8963937152113495271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A038754 n) (A099430 n)

end

end A167784.P8963937152113495271

namespace A167784

/-- `and(-A038754(n), A099430(n))` -/
def P8963937152113495271.Spec : Prop :=
  ∀ n, P8963937152113495271.a n = A167784 n

end A167784

/-! ## A167784.P9159022342776341698

`ogf((1-2x+x^2)/(1-2x-3x^2+6x^3))`
-/

namespace A167784.P9159022342776341698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -2, -3, 6] n

end

end A167784.P9159022342776341698

namespace A167784

/-- `ogf((1-2x+x^2)/(1-2x-3x^2+6x^3))` -/
def P9159022342776341698.Spec : Prop :=
  ∀ n, P9159022342776341698.a n = A167784 n

end A167784

/-! ## A167784.P7897811671138164876

`Δ[A167936(n)]`
-/

namespace A167784.P7897811671138164876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167936 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167784.P7897811671138164876

namespace A167784

/-- `Δ[A167936(n)]` -/
def P7897811671138164876.Spec : Prop :=
  ∀ n, P7897811671138164876.a n = A167784 n

end A167784

/-! ## A167784.P8887387947706713332

`Δ[2^n-A108411(n)]`
-/

namespace A167784.P8887387947706713332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A108411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167784.P8887387947706713332

namespace A167784

/-- `Δ[2^n-A108411(n)]` -/
def P8887387947706713332.Spec : Prop :=
  ∀ n, P8887387947706713332.a n = A167784 n

end A167784

/-! ## A167784.P18064076870073732815

`Δ[A000079(n)-3^floor(n/2)]`
-/

namespace A167784.P18064076870073732815
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) - (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167784.P18064076870073732815

namespace A167784

/-- `Δ[A000079(n)-3^floor(n/2)]` -/
def P18064076870073732815.Spec : Prop :=
  ∀ n, P18064076870073732815.a n = (A167784 n : ℚ)

end A167784

/-! ## A167784.P1498913453656894682

`Δ[A168616(n)-3^floor(n/2)]`
-/

namespace A167784.P1498913453656894682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168616 n : ℚ) - (3 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167784.P1498913453656894682

namespace A167784

/-- `Δ[A168616(n)-3^floor(n/2)]` -/
def P1498913453656894682.Spec : Prop :=
  ∀ n, P1498913453656894682.a n = (A167784 n : ℚ)

end A167784

/-! ## A167784.P12617886883040103211

`Δ[A000225(n)-A111575(2*n)]`
-/

namespace A167784.P12617886883040103211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A111575 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167784.P12617886883040103211

namespace A167784

/-- `Δ[A000225(n)-A111575(2*n)]` -/
def P12617886883040103211.Spec : Prop :=
  ∀ n, P12617886883040103211.a n = A167784 n

end A167784

/-! ## A167784.P15123257235265581050

`Δ[2^n-A034472(A002265(2*n))]`
-/

namespace A167784.P15123257235265581050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A034472 (A002265 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167784.P15123257235265581050

namespace A167784

/-- `Δ[2^n-A034472(A002265(2*n))]` -/
def P15123257235265581050.Spec : Prop :=
  ∀ n, P15123257235265581050.a n = A167784 n

end A167784

/-! ## A167784.P11491426014843148820

`Δ[A000225(n)-A000244(A004526(n))]`
-/

namespace A167784.P11491426014843148820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A000244 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167784.P11491426014843148820

namespace A167784

/-- `Δ[A000225(n)-A000244(A004526(n))]` -/
def P11491426014843148820.Spec : Prop :=
  ∀ n, P11491426014843148820.a n = A167784 n

end A167784

/-! ## A167784.P13292072888172877853

`Δ[Δ[A167762(n)]]`
-/

namespace A167784.P13292072888172877853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167762 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167784.P13292072888172877853

namespace A167784

/-- `Δ[Δ[A167762(n)]]` -/
def P13292072888172877853.Spec : Prop :=
  ∀ n, P13292072888172877853.a n = A167784 n

end A167784

/-! ## A167784.P6706567843459681785

`Δ[A366131(n+1)/2]`
-/

namespace A167784.P6706567843459681785
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366131 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A167784.P6706567843459681785

namespace A167784

/-- `Δ[A366131(n+1)/2]` -/
def P6706567843459681785.Spec : Prop :=
  ∀ n, P6706567843459681785.a n = (A167784 n : ℚ)

end A167784

/-! ## A167784.P13700688967560986413

`A081631(n)%A085613(n+1)`
-/

namespace A167784.P13700688967560986413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081631 n) (A085613 (n + 1))

end

end A167784.P13700688967560986413

namespace A167784

/-- `A081631(n)%A085613(n+1)` -/
def P13700688967560986413.Spec : Prop :=
  ∀ n, P13700688967560986413.a n = A167784 n

end A167784

/-!
# A167788: Triangular numbers which are sums of three consecutive primes.

The programs for A167788, there is no canonical definition to state claims against.
-/

/-! ## A167788.P663454194079057359

`A000217(A226145(n+1))`
-/

namespace A167788.P663454194079057359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A226145 (n + 1)).toNat

end

end A167788.P663454194079057359

/-! ## A167788.P1265300766986244947

`A161680(A226145(n+1)+1)`
-/

namespace A167788.P1265300766986244947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A226145 (n + 1) + 1).toNat

end

end A167788.P1265300766986244947

/-! ## A167788.P14792817274549067894

`A179865(A226145(n+1)+1)`
-/

namespace A167788.P14792817274549067894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179865 (A226145 (n + 1) + 1).toNat

end

end A167788.P14792817274549067894

/-! ## A167788.P7529302840429172038

`A323294(A226145(n+1)+1)`
-/

namespace A167788.P7529302840429172038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323294 (A226145 (n + 1) + 1).toNat

end

end A167788.P7529302840429172038

/-! ## A167788.P4744745743282785676

`A350295(A226145(n+1)+1)`
-/

namespace A167788.P4744745743282785676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350295 (A226145 (n + 1) + 1).toNat

end

end A167788.P4744745743282785676

/-! ## A167788.P10766331152497700513

`A253145(A226145(n+1)-1)`
-/

namespace A167788.P10766331152497700513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 (A226145 (n + 1) - 1).toNat

end

end A167788.P10766331152497700513

/-! ## A167788.P4818865567012992391

`∑{d}[A226145(n+1), A007438(#)]`
-/

namespace A167788.P4818865567012992391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226145 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007438 d

end

end A167788.P4818865567012992391

/-! ## A167788.P8998224195867715848

`A000124(A226145(n+1))-or(1, A000007(n))`
-/

namespace A167788.P8998224195867715848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A226145 (n + 1)).toNat - Int.lor 1 (A000007 n)

end

end A167788.P8998224195867715848

/-! ## A167788.P16197084796138414691

`A000124(A226145(n+1))-A000038(n+2)!`
-/

namespace A167788.P16197084796138414691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A226145 (n + 1)).toNat - (Nat.factorial (A000038 (n + 2)).toNat : ℤ)

end

end A167788.P16197084796138414691

/-! ## A167788.P16482302760615393467

`A002378(A226145(n+1))/2%A277959(n+1)`
-/

namespace A167788.P16482302760615393467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002378 (A226145 (n + 1)).toNat : ℚ) / (Int.tmod 2 (A277959 (n + 1)) : ℚ)

end

end A167788.P16482302760615393467

/-! ## A167788.P11527816627189025323

`A000124(A226145(n+1))+A008683(A002146(n))`
-/

namespace A167788.P11527816627189025323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A226145 (n + 1)).toNat + A008683 (A002146 n).toNat

end

end A167788.P11527816627189025323

/-! ## A167788.P17012876505445333596

`A000124(A226145(n+1))-A001826(A001826(n+1))`
-/

namespace A167788.P17012876505445333596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A226145 (n + 1)).toNat - A001826 (A001826 (n + 1)).toNat

end

end A167788.P17012876505445333596

/-! ## A167788.P17017023785905155729

`A000124(A226145(n+1))-and(1, A263806(n))`
-/

namespace A167788.P17017023785905155729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A226145 (n + 1)).toNat - Int.land 1 (A263806 n)

end

end A167788.P17017023785905155729

/-!
# A167789: 

The programs for A167789, there is no canonical definition to state claims against.
-/

/-! ## A167789.P5931631506437670552

`record[34*a(A001414(n+2)-3)]` with `a(0)=1, a(1)=35`
-/

namespace A167789.P5931631506437670552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 35] fun n f1 =>
  34 * f1 (A001414 (n + 2) - 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167789.P5931631506437670552

/-! ## A167789.P4753121393907187757

`34*a(A203526(n)%8+n-1)` with `a(0)=1, a(1)=35`
-/

namespace A167789.P4753121393907187757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 35] fun n a =>
  34 * a (Int.tmod (A203526 n) 8 + (n : ℤ) - 1).toNat

end

end A167789.P4753121393907187757

/-!
# A167791: Numbers with primitive root 2.

The programs for A167791, there is no canonical definition to state claims against.
-/

/-! ## A167791.P10930929007708967414

`∪[A001122(n+1), A108989(n+1)]`
-/

namespace A167791.P10930929007708967414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001122 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A167791.P10930929007708967414

/-! ## A167791.P18286478717427412881

`filter[A141231(n+1), A069513(#)]`
-/

namespace A167791.P18286478717427412881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A167791.P18286478717427412881

/-! ## A167791.P3284261230378175082

`filter[A141231(n+1), A354923(#)]`
-/

namespace A167791.P3284261230378175082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354923 (f1 j).toNat = 1) n)

end

end A167791.P3284261230378175082

/-! ## A167791.P4533994040841253606

`filter[A141231(n+1), A354924(#)]`
-/

namespace A167791.P4533994040841253606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354924 (f1 j).toNat = 1) n)

end

end A167791.P4533994040841253606

/-! ## A167791.P13092439135966346130

`∩[A141231(n+1), A061345(n)]`
-/

namespace A167791.P13092439135966346130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061345 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167791.P13092439135966346130

/-! ## A167791.P17671630341917889544

`∩[A000961(n+1), A141231(n+1)]`
-/

namespace A167791.P17671630341917889544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167791.P17671630341917889544

/-! ## A167791.P17532516748877036729

`∩[A081061(n+1), A141231(n+1)]`
-/

namespace A167791.P17532516748877036729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167791.P17532516748877036729

/-! ## A167791.P12855116769757923748

`∩[A141231(n+1), A141807(n+1)]`
-/

namespace A167791.P12855116769757923748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141807 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167791.P12855116769757923748

/-! ## A167791.P2820544748396442704

`∩[A141231(n+1), A185189(n+1)]`
-/

namespace A167791.P2820544748396442704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167791.P2820544748396442704

/-! ## A167791.P6596744713600309223

`∩[A141231(n+1), A225657(n+1)]`
-/

namespace A167791.P6596744713600309223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167791.P6596744713600309223

/-! ## A167791.P11983135094088462483

`∩[A141231(n+1), A235868(n+1)]`
-/

namespace A167791.P11983135094088462483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235868 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167791.P11983135094088462483

/-! ## A167791.P16254197552583073633

`∩[A141231(n+1), A246655(n+1)]`
-/

namespace A167791.P16254197552583073633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167791.P16254197552583073633

/-! ## A167791.P5079704831117867180

`filter[A141231(n+1), A211487(#)]`
-/

namespace A167791.P5079704831117867180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A167791.P5079704831117867180

/-! ## A167791.P14343971604983441401

`filter[A141231(n+1), A340363(#)]`
-/

namespace A167791.P14343971604983441401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340363 (f1 j).toNat = 1) n)

end

end A167791.P14343971604983441401

/-! ## A167791.P9442957539301899280

`filter[A141231(n+1), A340373(#)]`
-/

namespace A167791.P9442957539301899280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A167791.P9442957539301899280

/-! ## A167791.P2439012102785738698

`∩[A033948(n+1), A141231(n+1)]`
-/

namespace A167791.P2439012102785738698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167791.P2439012102785738698

/-! ## A167791.P6110939514389124610

`∩[A141231(n+1), A336101(n+1)]`
-/

namespace A167791.P6110939514389124610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167791.P6110939514389124610

/-! ## A167791.P14216432218616615545

`∩[A070776(n+1), A141231(n+1)]`
-/

namespace A167791.P14216432218616615545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070776 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167791.P14216432218616615545

/-! ## A167791.P2262643229166844808

`filter[A319009(n+1), A069513(#)]`
-/

namespace A167791.P2262643229166844808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A167791.P2262643229166844808

/-! ## A167791.P7854405635736642688

`filter[A319009(n+1), A211487(#)]`
-/

namespace A167791.P7854405635736642688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319009 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A167791.P7854405635736642688

/-!
# A167792: Numbers with primitive root 3.

The programs for A167792, there is no canonical definition to state claims against.
-/

/-! ## A167792.P9375869331221676386

`eq[A000010(n+1), A070676(n+1)]+1`
-/

namespace A167792.P9375869331221676386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070676 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A167792.P9375869331221676386

/-! ## A167792.P9687261418799462645

`eq[A109606(n+1)+1, A070676(n+1)]+1`
-/

namespace A167792.P9687261418799462645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070676 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A167792.P9687261418799462645

/-! ## A167792.P9763393447774787821

`record[A054704(A038502(n+1))+A016035(n+1)+1]`
-/

namespace A167792.P9763393447774787821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054704 (A038502 (n + 1)).toNat + (A016035 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167792.P9763393447774787821

/-! ## A167792.P1179303294372355998

`eq[3, or(A046145(2*n), A046145(n))]`
-/

namespace A167792.P1179303294372355998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046145 (2 * n)) (A046145 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167792.P1179303294372355998

/-! ## A167792.P6995085158150496914

`eq[A070676(A028310(n)), A225530(n)]`
-/

namespace A167792.P6995085158150496914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070676 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167792.P6995085158150496914

/-!
# A167793: Numbers with primitive root 5.

The programs for A167793, there is no canonical definition to state claims against.
-/

/-! ## A167793.P14299557222855562880

`eq[1, A327814(n+2)]+2`
-/

namespace A167793.P14299557222855562880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327814 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A167793.P14299557222855562880

/-! ## A167793.P4818638571776281264

`record[A181440(n+1)/A327814(n+1)]`
-/

namespace A167793.P4818638571776281264
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181440 (n + 1) : ℚ) / (A327814 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A167793.P4818638571776281264

/-! ## A167793.P14530035759388895770

`eq[A000010(n+1), A070677(n+1)]+1`
-/

namespace A167793.P14530035759388895770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A167793.P14530035759388895770

/-! ## A167793.P522775035209333536

`eq[n-A219428(n+1), A070677(n+1)]+1`
-/

namespace A167793.P522775035209333536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A219428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A167793.P522775035209333536

/-! ## A167793.P13937931493490035352

`eq[A070677(A028310(n)), A225530(n)]`
-/

namespace A167793.P13937931493490035352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070677 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167793.P13937931493490035352

/-!
# A167794: Numbers with primitive root 6.

The programs for A167794, there is no canonical definition to state claims against.
-/

/-! ## A167794.P17734479253520333894

`A005408(eq[A037225(n), A070681(n)])`
-/

namespace A167794.P17734479253520333894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A167794.P17734479253520333894

/-! ## A167794.P7951957541631111616

`A144396(eq[A037225(n), A070681(n)])`
-/

namespace A167794.P7951957541631111616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A167794.P7951957541631111616

/-! ## A167794.P4906005060516925687

`A160144(eq[A037225(n), A070681(n)])`
-/

namespace A167794.P4906005060516925687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160144 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A167794.P4906005060516925687

/-! ## A167794.P5469249963292487570

`A237292(eq[A037225(n), A070681(n)])`
-/

namespace A167794.P5469249963292487570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237292 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A167794.P5469249963292487570

/-! ## A167794.P1954986176147193447

`A004275(eq[A037225(n), A070681(n)])+3`
-/

namespace A167794.P1954986176147193447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 3

end

end A167794.P1954986176147193447

/-!
# A167795: Numbers with primitive root 7.

The programs for A167795, there is no canonical definition to state claims against.
-/

/-! ## A167795.P1474497171786002459

`eq[A000010(n+1), A070678(n+1)]+1`
-/

namespace A167795.P1474497171786002459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070678 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A167795.P1474497171786002459

/-! ## A167795.P11550716204786675731

`eq[A071118(n+1)/(2*(n+1)), A070678(n+1)]+1`
-/

namespace A167795.P11550716204786675731
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071118 (n + 1) : ℚ) / (2 * (n + 1) : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070678 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n + 1

end

end A167795.P11550716204786675731

/-! ## A167795.P15965255484762679299

`A020725(eq[A000010(n+1), A070678(n+1)])`
-/

namespace A167795.P15965255484762679299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A167795.P15965255484762679299

/-! ## A167795.P671522476540428906

`eq[A070678(A008486(n)), A225530(n)]`
-/

namespace A167795.P671522476540428906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070678 (A008486 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167795.P671522476540428906

/-! ## A167795.P4942274442017595246

`eq[A070678(A028310(n)), A225530(n)]`
-/

namespace A167795.P4942274442017595246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070678 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167795.P4942274442017595246

/-!
# A167796: Numbers with primitive root 8.

The programs for A167796, there is no canonical definition to state claims against.
-/

/-! ## A167796.P2864358892493884081

`∩[A066501(n+1), A167791(n+1)]`
-/

namespace A167796.P2864358892493884081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167796.P2864358892493884081

/-! ## A167796.P1709317968557733341

`∩[A066501(n+1), A141231(n+1)]`
-/

namespace A167796.P1709317968557733341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167796.P1709317968557733341

/-! ## A167796.P7969749218708776453

`∩[A057760(n+1), A167791(n+1)]`
-/

namespace A167796.P7969749218708776453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167796.P7969749218708776453

/-! ## A167796.P6842800066680082159

`∩[A088232(n+1), A167791(n+1)]`
-/

namespace A167796.P6842800066680082159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A167796.P6842800066680082159

/-! ## A167796.P1282361948680249125

`eq[A103309(n), A319100(A029579(n))]`
-/

namespace A167796.P1282361948680249125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319100 (A029579 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167796.P1282361948680249125

/-! ## A167796.P8206831895992493275

`eq[A103309(n), A319100(A109613(n))]`
-/

namespace A167796.P8206831895992493275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319100 (A109613 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167796.P8206831895992493275

/-! ## A167796.P8271067479128471988

`eq[A103309(n), A343783(A093178(n))]`
-/

namespace A167796.P8271067479128471988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343783 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167796.P8271067479128471988

/-! ## A167796.P18316054968894442395

`eq[A103309(n+1), A319100(2*(n+1))]+1`
-/

namespace A167796.P18316054968894442395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319100 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A167796.P18316054968894442395

/-! ## A167796.P16703621688605277743

`eq[A103309(n+1), A343783(2*(n+1))]+1`
-/

namespace A167796.P16703621688605277743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343783 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A167796.P16703621688605277743

/-! ## A167796.P6618608883510468237

`eq[A103309(n), A343783(A008574(n))]`
-/

namespace A167796.P6618608883510468237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103309 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343783 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167796.P6618608883510468237

/-!
# A167797: Numbers with primitive root 10.

The programs for A167797, there is no canonical definition to state claims against.
-/

/-! ## A167797.P2045455540838951631

`lt[A080513(n), A051626(n+1)]+1`
-/

namespace A167797.P2045455540838951631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A167797.P2045455540838951631

/-! ## A167797.P13721964931468436690

`A020725(lt[n, 2*A051626(n+1)])`
-/

namespace A167797.P13721964931468436690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A167797.P13721964931468436690

/-! ## A167797.P15371026111474028170

`A326178(lt[n, 2*A051626(n+1)])`
-/

namespace A167797.P15371026111474028170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A167797.P15371026111474028170

/-! ## A167797.P5861623822863068807

`A020725(lt[n/2, A051626(n+1)])`
-/

namespace A167797.P5861623822863068807
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A167797.P5861623822863068807

/-! ## A167797.P14162078598980861384

`A326178(lt[n/2, A051626(n+1)])`
-/

namespace A167797.P14162078598980861384
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A167797.P14162078598980861384

/-! ## A167797.P10367398910602137896

`eq[A051626(n+1), A062570(n+1)]+1`
-/

namespace A167797.P10367398910602137896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A167797.P10367398910602137896

/-! ## A167797.P546050809574281326

`eq[A084681(n+1), A126080(n+1)]+1`
-/

namespace A167797.P546050809574281326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126080 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A167797.P546050809574281326

/-! ## A167797.P5366159369662455738

`A109613(eq[A051626(n+1), A062570(n+1)])`
-/

namespace A167797.P5366159369662455738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A167797.P5366159369662455738

/-! ## A167797.P16592239089441200465

`A109613(eq[A084681(n+1), A126080(n+1)])`
-/

namespace A167797.P16592239089441200465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A167797.P16592239089441200465

/-! ## A167797.P2869416511930315249

`A141310(eq[A084681(n+1), A126080(n+1)])`
-/

namespace A167797.P2869416511930315249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A167797.P2869416511930315249

/-! ## A167797.P7317031577317315481

`eq[A084681(A014963(n+1))+1, A053166(n+1)]+1`
-/

namespace A167797.P7317031577317315481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (A014963 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A167797.P7317031577317315481

/-! ## A167797.P2964091816762168612

`lt[n, 2*A051626(A004277(n))]`
-/

namespace A167797.P2964091816762168612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051626 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A167797.P2964091816762168612

/-! ## A167797.P17555733470738239205

`lt[A080513(n), A051626(A008706(n)-n)]`
-/

namespace A167797.P17555733470738239205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A008706 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167797.P17555733470738239205

/-! ## A167797.P11865647067188938061

`lt[n, 2*A051626(A008706(n))]`
-/

namespace A167797.P11865647067188938061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051626 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A167797.P11865647067188938061

/-! ## A167797.P16455553322995648534

`lt[A080513(n), A051626(A008706(n))]`
-/

namespace A167797.P16455553322995648534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051626 (A008706 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A167797.P16455553322995648534

/-! ## A167797.P17737059567664354399

`eq[A121341(n+1), A319997(n+1)]+1`
-/

namespace A167797.P17737059567664354399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A167797.P17737059567664354399

/-! ## A167797.P3076452478693069085

`A004442(eq[A121341(n+1), A319997(n+1)])`
-/

namespace A167797.P3076452478693069085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A167797.P3076452478693069085

/-!
# A167798: Numbers with primitive root -2.

The programs for A167798, there is no canonical definition to state claims against.
-/

/-! ## A167798.P282726653151466488

`eq[n, A046146(n)+2]`
-/

namespace A167798.P282726653151466488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167798.P282726653151466488

/-! ## A167798.P8025889485395335406

`eq[A023444(n), A046146(n)]`
-/

namespace A167798.P8025889485395335406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167798.P8025889485395335406

/-! ## A167798.P13480210150587820773

`eq[A046146(n), A097062(n)]`
-/

namespace A167798.P13480210150587820773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167798.P13480210150587820773

/-! ## A167798.P18414766595816859055

`eq[A046146(n), A105811(n)]`
-/

namespace A167798.P18414766595816859055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167798.P18414766595816859055

/-! ## A167798.P736123362798014920

`eq[1, A046146(n-A046146(n))]`
-/

namespace A167798.P736123362798014920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 ((n : ℤ) - A046146 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A167798.P736123362798014920

/-! ## A167798.P1163236685929896213

`eq[A004442(n), A092486(A046146(n))]`
-/

namespace A167798.P1163236685929896213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (A046146 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167798.P1163236685929896213

/-! ## A167798.P5022572522661118652

`eq[A005843(n), A145979(A046146(n))]`
-/

namespace A167798.P5022572522661118652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 (A046146 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167798.P5022572522661118652

/-! ## A167798.P2459453445496291309

`eq[A046146(n), A345990(A008458(n))]`
-/

namespace A167798.P2459453445496291309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046146 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345990 (A008458 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167798.P2459453445496291309

/-!
# A167799: Numbers with primitive root -3.

The programs for A167799, there is no canonical definition to state claims against.
-/

/-! ## A167799.P1381169576659862758

`eq[A135560(A090244(n)), A277692(n+1)]`
-/

namespace A167799.P1381169576659862758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135560 (A090244 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277692 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A167799.P1381169576659862758

/-! ## A167799.P4824331717048156572

`A080080(A296548(2*n+3))+A080064(n+1)`
-/

namespace A167799.P4824331717048156572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080080 (A296548 (2 * n + 3)).toNat + A080064 (n + 1)

end

end A167799.P4824331717048156572

