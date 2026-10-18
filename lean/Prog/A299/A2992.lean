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
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
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

/-!
# A299200: Number of twice-partitions whose domain is the integer partition with Heinz number n.

The programs for A299200, there is no canonical definition to state claims against.
-/

/-! ## A299200.P59848485024866179

`A003964(A064989(n+1))`
-/

namespace A299200.P59848485024866179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003964 (A064989 (n + 1)).toNat

end

end A299200.P59848485024866179

/-! ## A299200.P14621144315556478209

`A003964(abs(A290099(n+1)))`
-/

namespace A299200.P14621144315556478209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003964 |A290099 (n + 1)|.toNat

end

end A299200.P14621144315556478209

/-! ## A299200.P1932673706006232602

`∑{d}[A064989(n+1), A003978(#)]`
-/

namespace A299200.P1932673706006232602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A003978 d

end

end A299200.P1932673706006232602

/-! ## A299200.P5497225485026849190

`A003964(A252463(A000265(n+1)))`
-/

namespace A299200.P5497225485026849190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003964 (A252463 (A000265 (n + 1)).toNat).toNat

end

end A299200.P5497225485026849190

/-! ## A299200.P3145734467125682459

`∏{d}[n+1, A318284(A014963(#))]`
-/

namespace A299200.P3145734467125682459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A318284 (A014963 d).toNat

end

end A299200.P3145734467125682459

/-! ## A299200.P13321222457902806707

`A050360(A361808(n+1))`
-/

namespace A299200.P13321222457902806707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050360 (A361808 (n + 1)).toNat

end

end A299200.P13321222457902806707

/-! ## A299200.P7429987145938747893

`A003978(A064989(n+1)²)/A003978(A064989(n+1))`
-/

namespace A299200.P7429987145938747893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003978 (A064989 (n + 1) ^ 2).toNat : ℚ) / (A003978 (A064989 (n + 1)).toNat : ℚ)

end

end A299200.P7429987145938747893

/-! ## A299200.P9012907375131578407

`A003963(A357977(n+1))`
-/

namespace A299200.P9012907375131578407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A357977 (n + 1)).toNat

end

end A299200.P9012907375131578407

/-! ## A299200.P5013638641934596435

`∏{e}[A181821(n+1), A000041(#)]`
-/

namespace A299200.P5013638641934596435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 (Nat.factorization (f1 n).natAbs p)

end

end A299200.P5013638641934596435

/-! ## A299200.P11264006994742408413

`∏{e}[A181821(n+1), A213598(#)]`
-/

namespace A299200.P11264006994742408413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A213598 (Nat.factorization (f1 n).natAbs p)

end

end A299200.P11264006994742408413

/-!
# A299201: Number of twice-partitions whose composite is the integer partition with Heinz number n.

The programs for A299201, there is no canonical definition to state claims against.
-/

/-! ## A299201.P8180144118087256562

`A101637(A141459(n+1))+Δ[A096276(n)]`
-/

namespace A299201.P8180144118087256562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A141459 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A299201.P8180144118087256562

/-! ## A299201.P6945898894930977741

`A032548(A086892(n+1))+A028422(n+1)`
-/

namespace A299201.P6945898894930977741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032548 (A086892 (n + 1)).toNat + A028422 (n + 1)

end

end A299201.P6945898894930977741

/-! ## A299201.P11405271192212974221

`A122180(A086892(n+1))+A001055(n+1)`
-/

namespace A299201.P11405271192212974221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122180 (A086892 (n + 1)).toNat + A001055 (n + 1)

end

end A299201.P11405271192212974221

/-! ## A299201.P14462191115806667714

`A101637(A141459(n+1))+A167688(n+1)+A033273(n+1)`
-/

namespace A299201.P14462191115806667714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A141459 (n + 1)).toNat + (A167688 (n + 1) + A033273 (n + 1))

end

end A299201.P14462191115806667714

/-! ## A299201.P7426774631085785853

`A003849(A231285(n+1))+A001055(n+1)`
-/

namespace A299201.P7426774631085785853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (A231285 (n + 1)).toNat + A001055 (n + 1)

end

end A299201.P7426774631085785853

/-!
# A299202: Moebius function of the multiorder of integer partitions indexed by their Heinz numbers.

The programs for A299202, there is no canonical definition to state claims against.
-/

/-! ## A299202.P12252686457550113280

`A317146(A032742(n+1)*A085082(n+1))`
-/

namespace A299202.P12252686457550113280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317146 (A032742 (n + 1) * A085082 (n + 1)).toNat

end

end A299202.P12252686457550113280

/-! ## A299202.P17520281550901116341

`A131851(A316223(n+1))`
-/

namespace A299202.P17520281550901116341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131851 (A316223 (n + 1)).toNat

end

end A299202.P17520281550901116341

/-! ## A299202.P9824164932365420806

`A016389(A225600(2*n))-A008836(n+1)`
-/

namespace A299202.P9824164932365420806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A225600 (2 * n)).toNat - A008836 (n + 1)

end

end A299202.P9824164932365420806

/-! ## A299202.P8711451887610583126

`or(A131852(A289260(n)), A157658(n+1))`
-/

namespace A299202.P8711451887610583126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A131852 (A289260 n).toNat) (A157658 (n + 1))

end

end A299202.P8711451887610583126

/-! ## A299202.P15089430857715262924

`A326925(A001055(n+1))%A277239(A062725(n))`
-/

namespace A299202.P15089430857715262924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326925 (A001055 (n + 1)).toNat) (A277239 (A062725 n).toNat)

end

end A299202.P15089430857715262924

/-!
# A299203: Number of enriched p-trees whose multiset of leaves is the integer partition with Heinz number n.

The programs for A299203, there is no canonical definition to state claims against.
-/

/-! ## A299203.P9690332620315671834

`A176816(A289079(n+1))%(n+1)`
-/

namespace A299203.P9690332620315671834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176816 (A289079 (n + 1)).toNat) (n + 1 : ℤ)

end

end A299203.P9690332620315671834

/-! ## A299203.P1921056334766457917

`A176816(A289079(n+1))-A000007(n)`
-/

namespace A299203.P1921056334766457917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176816 (A289079 (n + 1)).toNat - A000007 n

end

end A299203.P1921056334766457917

/-! ## A299203.P6631781580343180992

`A057427(n)*A176816(A289079(n+1))`
-/

namespace A299203.P6631781580343180992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A176816 (A289079 (n + 1)).toNat

end

end A299203.P6631781580343180992

/-! ## A299203.P5749753954665241362

`A176816(A289079(n+1))*A178334(n)`
-/

namespace A299203.P5749753954665241362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176816 (A289079 (n + 1)).toNat * A178334 n

end

end A299203.P5749753954665241362

/-! ## A299203.P1818305125622687346

`and(1, A000040(n+1))*A176816(A289079(n+1))`
-/

namespace A299203.P1818305125622687346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A176816 (A289079 (n + 1)).toNat

end

end A299203.P1818305125622687346

/-!
# A299204: a(n) = A000594(n) mod (n-1).

The programs for A299204, there is no canonical definition to state claims against.
-/

/-! ## A299204.P9452046942605830940

`(A000594(n+2)%(n+1)+n+1)%(n+1)`
-/

namespace A299204.P9452046942605830940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A000594 (n + 2)) (n + 1 : ℤ) + (n + 1 : ℤ)) (n + 1 : ℤ)

end

end A299204.P9452046942605830940

/-! ## A299204.P9784906638768247371

`(A145155(n+1)%(n+1)+n+1)%(n+1)`
-/

namespace A299204.P9784906638768247371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A145155 (n + 1)) (n + 1 : ℤ) + (n + 1 : ℤ)) (n + 1 : ℤ)

end

end A299204.P9784906638768247371

/-!
# A299205: Numbers k such that k-1 divides tau(k), where tau(k) = A000594(k) is Ramanujan's tau function.

The programs for A299205, there is no canonical definition to state claims against.
-/

/-! ## A299205.P7454209453622853910

`eq[n, gcd(n, A000594(n+1))]+1`
-/

namespace A299205.P7454209453622853910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000594 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A299205.P7454209453622853910

/-! ## A299205.P3013988548652466647

`lt[abs(A000594(n+2))%(n+1), 1]+2`
-/

namespace A299205.P3013988548652466647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A000594 (n + 2)| (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A299205.P3013988548652466647

/-! ## A299205.P2377138292115060887

`eq[0, A299204(n+2)]+2`
-/

namespace A299205.P2377138292115060887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299204 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A299205.P2377138292115060887

/-! ## A299205.P5280338009525283297

`eq[0, (A145155(n+1)%(n+1)+n+1)%(n+1)]+2`
-/

namespace A299205.P5280338009525283297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A145155 (n + 1)) (n + 1 : ℤ) + (n + 1 : ℤ)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A299205.P5280338009525283297

/-! ## A299205.P1290858446157947708

`lt[A299204(n+2), A003989(A073124(n+2))]+2`
-/

namespace A299205.P1290858446157947708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299204 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003989 (A073124 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A299205.P1290858446157947708

/-!
# A299206: Ramanujan's tau function (or tau numbers (A000594)) for 5^n.

The programs for A299206, there is no canonical definition to state claims against.
-/

/-! ## A299206.P16462749843383861116

`A000594(A000351(n))`
-/

namespace A299206.P16462749843383861116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000594 (A000351 n).toNat

end

end A299206.P16462749843383861116

/-! ## A299206.P4418178933986662765

`A278577(A025471(n))`
-/

namespace A299206.P4418178933986662765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278577 (A025471 n).toNat

end

end A299206.P4418178933986662765

/-!
# A299207: Length of longest run of primes in any of the four diagonals starting from the center of a square number spiral with prime(n) at the center.

The programs for A299207, there is no canonical definition to state claims against.
-/

/-! ## A299207.P1376481783025972053

`A302244(p?[comp[n²]])`
-/

namespace A299207.P1376481783025972053
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302244 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A299207.P1376481783025972053

/-! ## A299207.P15546003983860818497

`A302244(A000040(n+1))`
-/

namespace A299207.P15546003983860818497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302244 (A000040 (n + 1)).toNat

end

end A299207.P15546003983860818497

/-! ## A299207.P12808187771208751861

`A302244(A161847(n+1))`
-/

namespace A299207.P12808187771208751861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302244 (A161847 (n + 1)).toNat

end

end A299207.P12808187771208751861

/-! ## A299207.P10840652281650872968

`A302244(A008578(n+2))`
-/

namespace A299207.P10840652281650872968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302244 (A008578 (n + 2)).toNat

end

end A299207.P10840652281650872968

/-! ## A299207.P2814033955478199412

`A302244(A182986(n+2))`
-/

namespace A299207.P2814033955478199412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302244 (A182986 (n + 2)).toNat

end

end A299207.P2814033955478199412

/-! ## A299207.P15897309626970029718

`A302244(record[A006530(n+2)])`
-/

namespace A299207.P15897309626970029718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302244 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A299207.P15897309626970029718

/-! ## A299207.P4372575334304769984

`A302244(record[A014963(n+2)])`
-/

namespace A299207.P4372575334304769984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302244 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A299207.P4372575334304769984

/-! ## A299207.P7981105171274864062

`A302244(record[A020639(n+2)])`
-/

namespace A299207.P7981105171274864062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302244 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A299207.P7981105171274864062

/-! ## A299207.P4054420175365904143

`A302244(record[A000010(n+1)+1])`
-/

namespace A299207.P4054420175365904143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302244 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A299207.P4054420175365904143

/-! ## A299207.P13605384574755260606

`A302244(record[p?[A055396(n+1)]])`
-/

namespace A299207.P13605384574755260606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302244 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A299207.P13605384574755260606

/-!
# A299215: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299215, there is no canonical definition to state claims against.
-/

/-! ## A299215.P11570091411327760168

`A299221(∑[4*n]+1)`
-/

namespace A299215.P11570091411327760168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299215.P11570091411327760168

/-! ## A299215.P10683324727510407925

`record[A299221(A152271(n²))]`
-/

namespace A299215.P10683324727510407925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (A152271 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299215.P10683324727510407925

/-! ## A299215.P15719679154457333065

`record[A299221(A330613(n+1))]`
-/

namespace A299215.P15719679154457333065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299215.P15719679154457333065

/-! ## A299215.P17717003424954368069

`A299221(A001844(n))+and(2, char[42])`
-/

namespace A299215.P17717003424954368069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  42

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (A001844 n).toNat + (Nat.land 2 (if ∃ j, f1 j = n then 1 else 0) : ℤ)

end

end A299215.P17717003424954368069

/-! ## A299215.P17615658977078946851

`record[A003982(n)*A299221(n+1)]`
-/

namespace A299215.P17615658977078946851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299215.P17615658977078946851

/-!
# A299216: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299216, there is no canonical definition to state claims against.
-/

/-! ## A299216.P7555816803901127988

`A299221(∑[n+2]+4)`
-/

namespace A299216.P7555816803901127988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299216.P7555816803901127988

/-! ## A299216.P9727444306192568710

`A300035(∑[n+2]+4)`
-/

namespace A299216.P9727444306192568710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299216.P9727444306192568710

/-! ## A299216.P17785051729648589504

`gcd(A000038(n), A300035(A167614(n+1)))`
-/

namespace A299216.P17785051729648589504
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A300035 (A167614 (n + 1)).toNat)

end

end A299216.P17785051729648589504

/-! ## A299216.P15820461377987685650

`lcm(A033999(n), A299221(A167614(n+1)))`
-/

namespace A299216.P15820461377987685650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A299221 (A167614 (n + 1)).toNat)

end

end A299216.P15820461377987685650

/-! ## A299216.P13983096782464501086

`or(A000007(n), A300035(A167614(n+1)))`
-/

namespace A299216.P13983096782464501086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A300035 (A167614 (n + 1)).toNat)

end

end A299216.P13983096782464501086

/-!
# A299217: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299217, there is no canonical definition to state claims against.
-/

/-! ## A299217.P5641309298458460238

`A299221(A374004(n+1))`
-/

namespace A299217.P5641309298458460238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (A374004 (n + 1)).toNat

end

end A299217.P5641309298458460238

/-! ## A299217.P12133710013819424221

`A299221(A052905(n)+9)`
-/

namespace A299217.P12133710013819424221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (A052905 n + 9).toNat

end

end A299217.P12133710013819424221

/-! ## A299217.P12226357523260545364

`A300035(A052905(n)+9)`
-/

namespace A299217.P12226357523260545364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (A052905 n + 9).toNat

end

end A299217.P12226357523260545364

/-! ## A299217.P16948369837689105783

`A299221(A055999(n)+10)`
-/

namespace A299217.P16948369837689105783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (A055999 n + 10).toNat

end

end A299217.P16948369837689105783

/-! ## A299217.P6266389057822489316

`A300035(A055999(n)+10)`
-/

namespace A299217.P6266389057822489316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (A055999 n + 10).toNat

end

end A299217.P6266389057822489316

/-!
# A299218: Number of n X 5 0..1 arrays with every element equal to 0, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299218, there is no canonical definition to state claims against.
-/

/-! ## A299218.P1925580643648762736

`A299221(A374005(n+1))`
-/

namespace A299218.P1925580643648762736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (A374005 (n + 1)).toNat

end

end A299218.P1925580643648762736

/-! ## A299218.P8646394604718870042

`A299221(A167614(n+3)+2)`
-/

namespace A299218.P8646394604718870042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (A167614 (n + 3) + 2).toNat

end

end A299218.P8646394604718870042

/-! ## A299218.P816220272877276336

`A299221(A052905(n+1)+10)`
-/

namespace A299218.P816220272877276336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (A052905 (n + 1) + 10).toNat

end

end A299218.P816220272877276336

/-! ## A299218.P16755576420187783227

`A299221(A055999(n+1)+11)`
-/

namespace A299218.P16755576420187783227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (A055999 (n + 1) + 11).toNat

end

end A299218.P16755576420187783227

/-! ## A299218.P7797291172514526251

`A299221(A020710(A000217(n+4)))`
-/

namespace A299218.P7797291172514526251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (A020710 (A000217 (n + 4)).toNat).toNat

end

end A299218.P7797291172514526251

/-!
# A299219: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299219, there is no canonical definition to state claims against.
-/

/-! ## A299219.P11562768240781544819

`A299221(A374007(n+1))`
-/

namespace A299219.P11562768240781544819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (A374007 (n + 1)).toNat

end

end A299219.P11562768240781544819

/-! ## A299219.P3746805802230706517

`A299221(A166136(n+4))`
-/

namespace A299219.P3746805802230706517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (A166136 (n + 4)).toNat

end

end A299219.P3746805802230706517

/-! ## A299219.P15982541852696891597

`A299221(A056115(n)+21)`
-/

namespace A299219.P15982541852696891597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (A056115 n + 21).toNat

end

end A299219.P15982541852696891597

/-! ## A299219.P15479386024063384787

`A299221(eq[6, A256910(n)])`
-/

namespace A299219.P15479386024063384787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299219.P15479386024063384787

/-! ## A299219.P2808930238040400154

`A299221(eq[6, A130270(n+1)])`
-/

namespace A299219.P2808930238040400154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299219.P2808930238040400154

/-!
# A299220: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299220, there is no canonical definition to state claims against.
-/

/-! ## A299220.P2549129794972602478

`A299221(A374008(n+1))`
-/

namespace A299220.P2549129794972602478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (A374008 (n + 1)).toNat

end

end A299220.P2549129794972602478

/-! ## A299220.P2126874851559097928

`A299221(A056119(n)+28)`
-/

namespace A299220.P2126874851559097928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (A056119 n + 28).toNat

end

end A299220.P2126874851559097928

/-! ## A299220.P4186196806954637961

`A299221(A000124(n+6)+6)`
-/

namespace A299220.P4186196806954637961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (A000124 (n + 6) + 6).toNat

end

end A299220.P4186196806954637961

/-! ## A299220.P17299056173996709148

`A299221(A000096(n+5)+8)`
-/

namespace A299220.P17299056173996709148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (A000096 (n + 5) + 8).toNat

end

end A299220.P17299056173996709148

/-! ## A299220.P14286547657064539004

`A299221(eq[8, A131818(n+1)])`
-/

namespace A299220.P14286547657064539004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299221 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299220.P14286547657064539004

/-!
# A299221: T(n,k) = Number of n X k 0..1 arrays with every element equal to 0, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299221, there is no canonical definition to state claims against.
-/

/-! ## A299221.P17954394876260306944

`C(A300035(n+1), gcd(53, floor(n*ϕ²)+2))`
-/

namespace A299221.P17954394876260306944
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A300035 (n + 1)).toNat (Int.gcd 53 (⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ + 2))

end

end A299221.P17954394876260306944

/-! ## A299221.P18181382527896555578

`A300035(∑[A010894(n)!])`
-/

namespace A299221.P18181382527896555578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299221.P18181382527896555578

/-! ## A299221.P896166345834262697

`A300035(A010894(n)!+n)`
-/

namespace A299221.P896166345834262697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (Nat.factorial (A010894 (n + 21)).toNat + n)

end

end A299221.P896166345834262697

/-! ## A299221.P18159663060902823571

`A004443(xor(2, A300035(n+1)))`
-/

namespace A299221.P18159663060902823571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (Int.xor 2 (A300035 (n + 1))).toNat

end

end A299221.P18159663060902823571

/-! ## A299221.P16201741416278755837

`filter[A300035(n+1), A131695(#)]`
-/

namespace A299221.P16201741416278755837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131695 (f1 j).toNat = 1) n)

end

end A299221.P16201741416278755837

/-!
# A299222: Number of n X n 0..1 arrays with every element equal to 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299222, there is no canonical definition to state claims against.
-/

/-! ## A299222.P11275957432098416187

`A299228(∑[4*n]+1)`
-/

namespace A299222.P11275957432098416187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299222.P11275957432098416187

/-! ## A299222.P2679106504460953913

`record[A003982(n)*A299228(n+1)]`
-/

namespace A299222.P2679106504460953913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299228 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299222.P2679106504460953913

/-! ## A299222.P2233362217205881362

`lcm(A033999(n), A299228(A001844(n)))`
-/

namespace A299222.P2233362217205881362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A299228 (A001844 n).toNat)

end

end A299222.P2233362217205881362

/-! ## A299222.P9398425557878227847

`A299228(A001844(n))+A048031(n+1)`
-/

namespace A299222.P9398425557878227847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (A001844 n).toNat + A048031 (n + 1)

end

end A299222.P9398425557878227847

/-! ## A299222.P7158078144343435992

`A299228(A001844(n))+val(A020639(n+1), 4)`
-/

namespace A299222.P7158078144343435992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (A001844 n).toNat + (SequenceMachineLib.valuation (A020639 (n + 1)).toNat 4 : ℤ)

end

end A299222.P7158078144343435992

/-!
# A299223: Number of nX3 0..1 arrays with every element equal to 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299223, there is no canonical definition to state claims against.
-/

/-! ## A299223.P8692393805137333853

`A299228(∑[n+2]+4)`
-/

namespace A299223.P8692393805137333853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299223.P8692393805137333853

/-! ## A299223.P7962923967095321830

`A300040(∑[n+2]+4)`
-/

namespace A299223.P7962923967095321830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300040 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299223.P7962923967095321830

/-! ## A299223.P14420177799257014588

`record[gcd(A300040(n+1), A303913(n))]`
-/

namespace A299223.P14420177799257014588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A300040 (n + 1)) (A303913 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299223.P14420177799257014588

/-! ## A299223.P3042313265453051988

`A299228(A167614(n+1))^ceil(sin(n)²)`
-/

namespace A299223.P3042313265453051988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299228 (A167614 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A299223.P3042313265453051988

/-! ## A299223.P1438488125491200560

`A299228(A167614(n+1))+A025469(n)`
-/

namespace A299223.P1438488125491200560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (A167614 (n + 1)).toNat + A025469 n

end

end A299223.P1438488125491200560

/-!
# A299224: Number of nX4 0..1 arrays with every element equal to 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299224, there is no canonical definition to state claims against.
-/

/-! ## A299224.P18240297206931411272

`A299228(A374004(n+1))`
-/

namespace A299224.P18240297206931411272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (A374004 (n + 1)).toNat

end

end A299224.P18240297206931411272

/-! ## A299224.P3972948670226161149

`A299228(A141214(n)+7)`
-/

namespace A299224.P3972948670226161149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (A141214 n + 7).toNat

end

end A299224.P3972948670226161149

/-! ## A299224.P3488970196472040957

`A299228(A055999(n)+10)`
-/

namespace A299224.P3488970196472040957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (A055999 n + 10).toNat

end

end A299224.P3488970196472040957

/-! ## A299224.P8270094262756826540

`A300040(A055999(n)+10)`
-/

namespace A299224.P8270094262756826540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300040 (A055999 n + 10).toNat

end

end A299224.P8270094262756826540

/-! ## A299224.P205886273644645757

`A299228(A167614(n+2)+1)`
-/

namespace A299224.P205886273644645757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (A167614 (n + 2) + 1).toNat

end

end A299224.P205886273644645757

/-!
# A299225: Number of nX5 0..1 arrays with every element equal to 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299225, there is no canonical definition to state claims against.
-/

/-! ## A299225.P6526987970107866873

`A299228(A374005(n+1))`
-/

namespace A299225.P6526987970107866873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (A374005 (n + 1)).toNat

end

end A299225.P6526987970107866873

/-! ## A299225.P7960111822193349639

`A299228(A056000(n)+15)`
-/

namespace A299225.P7960111822193349639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (A056000 n + 15).toNat

end

end A299225.P7960111822193349639

/-! ## A299225.P3433171044291181987

`A299228(eq[6, A131818(n+1)])`
-/

namespace A299225.P3433171044291181987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299225.P3433171044291181987

/-! ## A299225.P5586174171472798912

`A299228(Δ[A264443(n)])`
-/

namespace A299225.P5586174171472798912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (f1 (n + 1) - f1 n).toNat

end

end A299225.P5586174171472798912

/-! ## A299225.P16688361511888230318

`A299228(eq[4, A193592(n)])`
-/

namespace A299225.P16688361511888230318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299225.P16688361511888230318

/-!
# A299226: Number of nX6 0..1 arrays with every element equal to 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299226, there is no canonical definition to state claims against.
-/

/-! ## A299226.P6604097991125027920

`A299228(A374007(n+1))`
-/

namespace A299226.P6604097991125027920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (A374007 (n + 1)).toNat

end

end A299226.P6604097991125027920

/-! ## A299226.P1056936036235461608

`A299228(A000217(n+5)+6)`
-/

namespace A299226.P1056936036235461608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (A000217 (n + 5) + 6).toNat

end

end A299226.P1056936036235461608

/-! ## A299226.P5936754771312458341

`A299228(eq[7, A131818(n+1)])`
-/

namespace A299226.P5936754771312458341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299226.P5936754771312458341

/-! ## A299226.P12192285082253967373

`A299228(A000124(n+6)-(n+1))`
-/

namespace A299226.P12192285082253967373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A299226.P12192285082253967373

/-! ## A299226.P10855277910462717487

`A299228(eq[5, A193592(n)])`
-/

namespace A299226.P10855277910462717487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299226.P10855277910462717487

/-!
# A299227: Number of nX7 0..1 arrays with every element equal to 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299227, there is no canonical definition to state claims against.
-/

/-! ## A299227.P4415081965429315215

`A299228(A374008(n+1))`
-/

namespace A299227.P4415081965429315215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (A374008 (n + 1)).toNat

end

end A299227.P4415081965429315215

/-! ## A299227.P2947088611295623617

`A299228(A000124(n+6)+6)`
-/

namespace A299227.P2947088611295623617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (A000124 (n + 6) + 6).toNat

end

end A299227.P2947088611295623617

/-! ## A299227.P17698189433473945734

`A299228(A000096(n+5)+8)`
-/

namespace A299227.P17698189433473945734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (A000096 (n + 5) + 8).toNat

end

end A299227.P17698189433473945734

/-! ## A299227.P4178847654646068091

`A299228(eq[8, A131818(n+1)])`
-/

namespace A299227.P4178847654646068091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299227.P4178847654646068091

/-! ## A299227.P13587604532618312203

`A299228(A056121(n)+22)`
-/

namespace A299227.P13587604532618312203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299228 (A056121 n + 22).toNat

end

end A299227.P13587604532618312203

/-!
# A299228: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 3, 4, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299228, there is no canonical definition to state claims against.
-/

/-! ## A299228.P4147783663343668071

`A300040(∑[A010894(n)!])`
-/

namespace A299228.P4147783663343668071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A010894 (n + 21)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299228.P4147783663343668071

/-! ## A299228.P2525999754220161827

`A300040(A010894(n)!+n)`
-/

namespace A299228.P2525999754220161827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300040 (Nat.factorial (A010894 (n + 21)).toNat + n)

end

end A299228.P2525999754220161827

/-! ## A299228.P14061151984575557762

`A300040(n+1)%A007825(n)`
-/

namespace A299228.P14061151984575557762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300040 (n + 1)) (A007825 n)

end

end A299228.P14061151984575557762

/-! ## A299228.P16852550333068866626

`A000027(A300040(n+1)+1)-1`
-/

namespace A299228.P16852550333068866626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A300040 (n + 1) + 1).toNat - 1

end

end A299228.P16852550333068866626

/-! ## A299228.P16359173685834191210

`A300040(n+1)+C(2, A341531(n+4))`
-/

namespace A299228.P16359173685834191210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300040 (n + 1) + (Nat.choose 2 (A341531 (n + 4)).toNat : ℤ)

end

end A299228.P16359173685834191210

/-!
# A299229: {2,3}-power towers in increasing order, concatenated; see Comments.

The programs for A299229, there is no canonical definition to state claims against.
-/

/-! ## A299229.P6856761914983902677

`A239141(A006094(n+1)+A003022(n+2))`
-/

namespace A299229.P6856761914983902677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239141 (A006094 (n + 1) + A003022 (n + 2)).toNat

end

end A299229.P6856761914983902677

/-! ## A299229.P14204839670243826109

`A097509(lcm(A003309(n+1), A342768(n+1)))`
-/

namespace A299229.P14204839670243826109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 (Int.lcm (A003309 (n + 1)) (A342768 (n + 1)))

end

end A299229.P14204839670243826109

/-! ## A299229.P4979172938475451133

`A226464(A194146(n+1))+A000034(A226477(n+1))`
-/

namespace A299229.P4979172938475451133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226464 (A194146 (n + 1)).toNat + A000034 (A226477 (n + 1)).toNat

end

end A299229.P4979172938475451133

/-! ## A299229.P12568562349189909643

`A071820(A071853(2*n+3)+A071804(n+1))`
-/

namespace A299229.P12568562349189909643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071820 (A071853 (2 * n + 3) + A071804 (n + 1)).toNat

end

end A299229.P12568562349189909643

/-! ## A299229.P6523582185026278740

`p?[A351594(A255422(n+1))%5]`
-/

namespace A299229.P6523582185026278740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351594 (A255422 (n + 1)).toNat) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A299229.P6523582185026278740

/-!
# A299230: a(n) = height of n-th {2,3}-power tower; see Comments.

The programs for A299230, there is no canonical definition to state claims against.
-/

/-! ## A299230.P18020406184914070877

`A299236(n+1)+A299235(n+1)`
-/

namespace A299230.P18020406184914070877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299236 (n + 1) + A299235 (n + 1)

end

end A299230.P18020406184914070877

/-! ## A299230.P10662400214619572368

`A000523(A185969(n+1)+1)`
-/

namespace A299230.P10662400214619572368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A185969 (n + 1) + 1).toNat

end

end A299230.P10662400214619572368

/-! ## A299230.P3995873759434042900

`∑{digits}[A007931(A185969(n+1)), A000120(#)]`
-/

namespace A299230.P3995873759434042900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A185969 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000120 x).sum

end

end A299230.P3995873759434042900

/-! ## A299230.P1995004989008797311

`∑{digits}[A007931(A185969(n+1)), A007318(#)]`
-/

namespace A299230.P1995004989008797311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A185969 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A007318 x).sum

end

end A299230.P1995004989008797311

/-! ## A299230.P11465715351155618786

`∑{digits}[A007931(A185969(n+1)), A128587(#)]`
-/

namespace A299230.P11465715351155618786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A185969 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A128587 x).sum

end

end A299230.P11465715351155618786

/-! ## A299230.P2101681416080531912

`∑{digits}[A007931(A185969(n+1)), A239141(#)]`
-/

namespace A299230.P2101681416080531912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A185969 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A239141 x).sum

end

end A299230.P2101681416080531912

/-! ## A299230.P15511973248377186797

`A299235(n+1)+A048881(A185969(n+1))`
-/

namespace A299230.P15511973248377186797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299235 (n + 1) + A048881 (A185969 (n + 1)).toNat

end

end A299230.P15511973248377186797

/-! ## A299230.P8990703811240294072

`A299235(n+1)+A299235(A299238(n+1))`
-/

namespace A299230.P8990703811240294072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299235 (n + 1) + A299235 (A299238 (n + 1)).toNat

end

end A299230.P8990703811240294072

/-!
# A299231: Ranks of {2,3}-power towers that start with 2; see Comments.

The programs for A299231, the canonical program `A299231.P10252197294530959486` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299231 has offset 1).

The definition of A299231 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299231.P10252197294530959486

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=6, a(4)=9, a(5)=10, a(6)=13, a(7)=15`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299231

/-- `2*a(n-1)-a(n-2)` -/
def P10252197294530959486.Spec : Prop :=
  ∀ n, P10252197294530959486.a n = A299231 (n + 1)

theorem P10252197294530959486.correct : P10252197294530959486.Spec := by
  intro n
  simp only [A299231, Nat.add_sub_cancel]

end A299231

/-!
# A299232: Ranks of {2,3}-power towers that start with 3; see Comments.

The programs for A299232, there is no canonical definition to state claims against.
-/

/-! ## A299232.P11512157548970653085

`char[A195860(3*n+5)]+2*(n+1)`
-/

namespace A299232.P11512157548970653085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195860 (3 * n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2 * (n + 1)

end

end A299232.P11512157548970653085

/-!
# A299233: Ranks of {2,3}-power towers that end with 2; see Comments.

The programs for A299233, the canonical program `A299233.P3070177688433003518` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299233 has offset 1).

The definition of A299233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299233.P10150995803639806020

`record[A256231(or(1, A185969(n+1)))]`
-/

namespace A299233.P10150995803639806020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256231 (Int.lor 1 (A185969 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299233.P10150995803639806020

namespace A299233

/-- `record[A256231(or(1, A185969(n+1)))]` -/
def P10150995803639806020.Spec : Prop :=
  ∀ n, P10150995803639806020.a n = A299233 (n + 1)

end A299233

/-! ## A299233.P17767441355254104449

`A256231(2*A059893(n+1)-1)`
-/

namespace A299233.P17767441355254104449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256231 (2 * A059893 (n + 1) - 1).toNat

end

end A299233.P17767441355254104449

namespace A299233

/-- `A256231(2*A059893(n+1)-1)` -/
def P17767441355254104449.Spec : Prop :=
  ∀ n, P17767441355254104449.a n = A299233 (n + 1)

end A299233

/-! ## A299233.P3070177688433003518

`2*n+1-A002265(A080543(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A299233

/-- `2*n+1-A002265(A080543(n+1))` -/
def P3070177688433003518.Spec : Prop :=
  ∀ n, P3070177688433003518.a n = A299233 (n + 1)

theorem P3070177688433003518.correct : P3070177688433003518.Spec := by
  intro n
  simp only [A299233, Nat.add_sub_cancel]

end A299233

/-! ## A299233.P17742129816506108302

`record[A256231(A000265(A185969(n+1)))]`
-/

namespace A299233.P17742129816506108302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256231 (A000265 (A185969 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299233.P17742129816506108302

namespace A299233

/-- `record[A256231(A000265(A185969(n+1)))]` -/
def P17742129816506108302.Spec : Prop :=
  ∀ n, P17742129816506108302.a n = A299233 (n + 1)

end A299233

/-! ## A299233.P17456462628188027888

`A256231(A185969(A299234(n+1))-1)`
-/

namespace A299233.P17456462628188027888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256231 (A185969 (A299234 (n + 1)).toNat - 1).toNat

end

end A299233.P17456462628188027888

namespace A299233

/-- `A256231(A185969(A299234(n+1))-1)` -/
def P17456462628188027888.Spec : Prop :=
  ∀ n, P17456462628188027888.a n = A299233 (n + 1)

end A299233

/-! ## A299233.P16317160776472398934

`A256231(A059893(n+1)+A059893(n+1)-1)`
-/

namespace A299233.P16317160776472398934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256231 (A059893 (n + 1) + (A059893 (n + 1) - 1)).toNat

end

end A299233.P16317160776472398934

namespace A299233

/-- `A256231(A059893(n+1)+A059893(n+1)-1)` -/
def P16317160776472398934.Spec : Prop :=
  ∀ n, P16317160776472398934.a n = A299233 (n + 1)

end A299233

/-! ## A299233.P1093108064187012503

`eq[1, A001511(A299237(2*(n+1)))]`
-/

namespace A299233.P1093108064187012503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A299237 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A299233.P1093108064187012503

namespace A299233

/-- `eq[1, A001511(A299237(2*(n+1)))]` -/
def P1093108064187012503.Spec : Prop :=
  ∀ n, (P1093108064187012503.a n : ℤ) = A299233 (n + 1)

end A299233

/-! ## A299233.P10335605277918130023

`eq[A001511(A299237(n+1)), A019428(n)]/2`
-/

namespace A299233.P10335605277918130023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A299237 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A299233.P10335605277918130023

namespace A299233

/-- `eq[A001511(A299237(n+1)), A019428(n)]/2` -/
def P10335605277918130023.Spec : Prop :=
  ∀ n, P10335605277918130023.a n = (A299233 (n + 1) : ℚ)

end A299233

/-!
# A299234: Ranks of {2,3}-power towers that end with 3; see Comments.

The programs for A299234, there is no canonical definition to state claims against.
-/

/-! ## A299234.P17099146535228009994

`A256231(2*A059893(n+1))`
-/

namespace A299234.P17099146535228009994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256231 (2 * A059893 (n + 1)).toNat

end

end A299234.P17099146535228009994

/-! ## A299234.P15612949449111976112

`eq[2, A020639(A185969(n+1))]+1`
-/

namespace A299234.P15612949449111976112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A185969 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A299234.P15612949449111976112

/-! ## A299234.P13954416204083603808

`A256231(A005843(A059893(n+1)))`
-/

namespace A299234.P13954416204083603808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256231 (A005843 (A059893 (n + 1)).toNat).toNat

end

end A299234.P13954416204083603808

/-! ## A299234.P5554368623525738173

`A256231(A185969(A299233(n+1))+1)`
-/

namespace A299234.P5554368623525738173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256231 (A185969 (A299233 (n + 1)).toNat + 1).toNat

end

end A299234.P5554368623525738173

/-! ## A299234.P1579195547627931216

`eq[2, A020639(A185969(A299231(n+1)))]`
-/

namespace A299234.P1579195547627931216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A185969 (A299231 (n + 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A299234.P1579195547627931216

/-!
# A299235: Number of 2's in the n-th {2,3}-power tower; see Comments.

The programs for A299235, there is no canonical definition to state claims against.
-/

/-! ## A299235.P3187202926694661991

`A299230(n+1)-A299236(n+1)`
-/

namespace A299235.P3187202926694661991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299230 (n + 1) - A299236 (n + 1)

end

end A299235.P3187202926694661991

/-! ## A299235.P2511970954098022971

`A023416(A185969(n+1)+1)`
-/

namespace A299235.P2511970954098022971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A185969 (n + 1) + 1).toNat

end

end A299235.P2511970954098022971

/-! ## A299235.P16732266388222957282

`A080791(A185969(n+1)+1)`
-/

namespace A299235.P16732266388222957282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (A185969 (n + 1) + 1).toNat

end

end A299235.P16732266388222957282

/-! ## A299235.P3933040501297907958

`A299230(n+1)-A048881(A185969(n+1))`
-/

namespace A299235.P3933040501297907958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299230 (n + 1) - A048881 (A185969 (n + 1)).toNat

end

end A299235.P3933040501297907958

/-! ## A299235.P7196644285478803138

`A299236(A299238(n+1))`
-/

namespace A299235.P7196644285478803138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299236 (A299238 (n + 1)).toNat

end

end A299235.P7196644285478803138

/-!
# A299236: Number of 3's in the n-th {2,3}-power tower; see Comments.

The programs for A299236, there is no canonical definition to state claims against.
-/

/-! ## A299236.P13768510052286797046

`A299230(n+1)-A299235(n+1)`
-/

namespace A299236.P13768510052286797046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299230 (n + 1) - A299235 (n + 1)

end

end A299236.P13768510052286797046

/-! ## A299236.P2893848389665926673

`A048881(A185969(n+1))`
-/

namespace A299236.P2893848389665926673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A185969 (n + 1)).toNat

end

end A299236.P2893848389665926673

/-! ## A299236.P9805991226737788380

`A000120(A185969(n+1)+1)-1`
-/

namespace A299236.P9805991226737788380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A185969 (n + 1) + 1).toNat - 1

end

end A299236.P9805991226737788380

/-! ## A299236.P6853244380435951589

`∑{digits}[A007931(A185969(n+1)), A000523(#)]`
-/

namespace A299236.P6853244380435951589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A185969 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000523 x).sum

end

end A299236.P6853244380435951589

/-! ## A299236.P6576541204791030480

`∑{digits}[A007931(A185969(n+1)), A001222(#)]`
-/

namespace A299236.P6576541204791030480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A185969 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A001222 x).sum

end

end A299236.P6576541204791030480

/-! ## A299236.P13712299602693795851

`A299235(A299238(n+1))`
-/

namespace A299236.P13712299602693795851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299235 (A299238 (n + 1)).toNat

end

end A299236.P13712299602693795851

/-! ## A299236.P16752759142083418319

`A048881(A375374(n+1))`
-/

namespace A299236.P16752759142083418319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A375374 (n + 1)).toNat

end

end A299236.P16752759142083418319

/-!
# A299237: a(n) = the index m satisfying t(m) = reversal of t(n), where t(n) is the n-th {2,3}-power tower; see Comments.

The programs for A299237, there is no canonical definition to state claims against.
-/

/-! ## A299237.P1554759339483417515

`A256231(A375374(n+1))`
-/

namespace A299237.P1554759339483417515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256231 (A375374 (n + 1)).toNat

end

end A299237.P1554759339483417515

/-! ## A299237.P4298082222630836189

`A256231(A375375(A375375(A375375(n+1))))`
-/

namespace A299237.P4298082222630836189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256231 (A375375 (A375375 (A375375 (n + 1)).toNat).toNat).toNat

end

end A299237.P4298082222630836189

/-! ## A299237.P8083180225304074103

`A375375(A185969(n+1))`
-/

namespace A299237.P8083180225304074103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375375 (A185969 (n + 1)).toNat

end

end A299237.P8083180225304074103

/-! ## A299237.P14565256127075588860

`xor(n+1, A007814(A049973(n+1)))`
-/

namespace A299237.P14565256127075588860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A007814 (A049973 (n + 1)).toNat)

end

end A299237.P14565256127075588860

/-! ## A299237.P11327727194404601126

`xor(A038189(A064934(n)), A306369(n+1))`
-/

namespace A299237.P11327727194404601126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038189 (A064934 n).toNat) (A306369 (n + 1))

end

end A299237.P11327727194404601126

/-!
# A299239: Ranks of palindromic {2,3}-power towers; see Comments.

The programs for A299239, there is no canonical definition to state claims against.
-/

/-! ## A299239.P3771694988755091540

`eq[n+1, A299237(n+1)]+1`
-/

namespace A299239.P3771694988755091540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299237 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A299239.P3771694988755091540

/-! ## A299239.P15451605295737260840

`eq[n, A299237(A028310(n))]`
-/

namespace A299239.P15451605295737260840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299237 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A299239.P15451605295737260840

/-!
# A299240: Ranks of {2,3}-power towers in which #2's > #3's; see Comments.

The programs for A299240, there is no canonical definition to state claims against.
-/

/-! ## A299240.P4504976103806711243

`lt[A299236(n+1), A299235(n+1)]+1`
-/

namespace A299240.P4504976103806711243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299235 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A299240.P4504976103806711243

/-!
# A299241: Ranks of {2,3}-power towers in which #2's = #3's; see Comments.

The programs for A299241, there is no canonical definition to state claims against.
-/

/-! ## A299241.P11661198102608832167

`eq[A299235(n+1), A299236(n+1)]+1`
-/

namespace A299241.P11661198102608832167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299236 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A299241.P11661198102608832167

/-! ## A299241.P2019705136626559903

`A020725(eq[A299235(n+1), A299236(n+1)])`
-/

namespace A299241.P2019705136626559903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A299241.P2019705136626559903

/-! ## A299241.P7568315993165508217

`A065475(eq[A299235(n+1), A299236(n+1)])`
-/

namespace A299241.P7568315993165508217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A299241.P7568315993165508217

/-!
# A299242: Ranks of {2,3}-power towers in which #2's < #3's; see Comments.

The programs for A299242, there is no canonical definition to state claims against.
-/

/-! ## A299242.P16272966672249672142

`lt[A299235(n+1), A299236(n+1)]+1`
-/

namespace A299242.P16272966672249672142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299236 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A299242.P16272966672249672142

/-! ## A299242.P4947348591288208225

`A020725(lt[A299235(n+1), A299236(n+1)])`
-/

namespace A299242.P4947348591288208225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A299242.P4947348591288208225

/-!
# A299243: Number of n X n 0..1 arrays with every element equal to 0, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299243, there is no canonical definition to state claims against.
-/

/-! ## A299243.P6787655843872142799

`A299249(∑[4*n]+1)`
-/

namespace A299243.P6787655843872142799
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A299243.P6787655843872142799

/-! ## A299243.P17625163060013106745

`record[A299249(A272267(n+1))]`
-/

namespace A299243.P17625163060013106745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299243.P17625163060013106745

/-! ## A299243.P15543835957372806608

`record[A003982(n)*A299249(n+1)]`
-/

namespace A299243.P15543835957372806608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A299249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299243.P15543835957372806608

/-! ## A299243.P10697531208121952935

`record[A214505(n)*A299249(n+1)]`
-/

namespace A299243.P10697531208121952935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214505 n * A299249 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A299243.P10697531208121952935

/-! ## A299243.P761943484620856384

`A299249(A001844(n))+A011737(n)`
-/

namespace A299243.P761943484620856384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (A001844 n).toNat + A011737 n

end

end A299243.P761943484620856384

/-!
# A299244: Number of nX3 0..1 arrays with every element equal to 0, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299244, there is no canonical definition to state claims against.
-/

/-! ## A299244.P556207854677578841

`A299249(∑[n+2]+4)`
-/

namespace A299244.P556207854677578841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A299244.P556207854677578841

/-! ## A299244.P14804750612610566429

`A299249(A167614(n+1))+char[18]`
-/

namespace A299244.P14804750612610566429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299244.P14804750612610566429

/-! ## A299244.P16412649199712909947

`A299249(A046691(n)+7)+char[19]`
-/

namespace A299244.P16412649199712909947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (A046691 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299244.P16412649199712909947

/-! ## A299244.P11704074420391059028

`gcd(A010894(n), A299249(A167614(n+1)))`
-/

namespace A299244.P11704074420391059028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010894 (n + 21)) (A299249 (A167614 (n + 1)).toNat)

end

end A299244.P11704074420391059028

/-! ## A299244.P730667258689893720

`or(A000007(n), A299249(A167614(n+1)))`
-/

namespace A299244.P730667258689893720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A299249 (A167614 (n + 1)).toNat)

end

end A299244.P730667258689893720

/-!
# A299245: Number of nX4 0..1 arrays with every element equal to 0, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299245, there is no canonical definition to state claims against.
-/

/-! ## A299245.P14435723502613562714

`A299249(∑[n+3]+7)`
-/

namespace A299245.P14435723502613562714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A299245.P14435723502613562714

/-! ## A299245.P6094420527412088686

`A299249(A052905(n)+9)+char[17]`
-/

namespace A299245.P6094420527412088686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299245.P6094420527412088686

/-! ## A299245.P9229679818129630498

`or(A000007(n), A299249(A052905(n)+9))`
-/

namespace A299245.P9229679818129630498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A299249 (A052905 n + 9).toNat)

end

end A299245.P9229679818129630498

/-! ## A299245.P11273898646074416405

`A299249(A052905(n)+9)%A000108(n+4)`
-/

namespace A299245.P11273898646074416405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299249 (A052905 n + 9).toNat) (A000108 (n + 4))

end

end A299245.P11273898646074416405

/-! ## A299245.P8978361963863331252

`A007318(C(n+1, 2))*A299249(A052905(n)+9)`
-/

namespace A299245.P8978361963863331252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (n + 1) 2) * A299249 (A052905 n + 9).toNat

end

end A299245.P8978361963863331252

/-!
# A299246: Number of nX5 0..1 arrays with every element equal to 0, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299246, there is no canonical definition to state claims against.
-/

/-! ## A299246.P15266708127837414623

`A299249(∑[n+4]+11)`
-/

namespace A299246.P15266708127837414623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A299246.P15266708127837414623

/-! ## A299246.P16475922081650196168

`A299249(A167499(n+3))+char[23]`
-/

namespace A299246.P16475922081650196168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (A167499 (n + 3)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299246.P16475922081650196168

/-! ## A299246.P11073788408373215907

`A299249(A056000(n)+15)+char[18]`
-/

namespace A299246.P11073788408373215907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (A056000 n + 15).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A299246.P11073788408373215907

/-! ## A299246.P4202071946839309652

`A007318(C(2, n))*A299249(A056000(n)+15)`
-/

namespace A299246.P4202071946839309652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A299249 (A056000 n + 15).toNat

end

end A299246.P4202071946839309652

/-! ## A299246.P9371099661171844957

`A299249(A167499(n+3))%A260542(2*n+1)`
-/

namespace A299246.P9371099661171844957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299249 (A167499 (n + 3)).toNat) (A260542 (2 * n + 1))

end

end A299246.P9371099661171844957

/-!
# A299247: Number of nX6 0..1 arrays with every element equal to 0, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299247, there is no canonical definition to state claims against.
-/

/-! ## A299247.P15889191835020490987

`A299249(A056115(n)+21)`
-/

namespace A299247.P15889191835020490987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (A056115 n + 21).toNat

end

end A299247.P15889191835020490987

/-! ## A299247.P4053804582858954094

`A299249(A167499(n+4)+1)`
-/

namespace A299247.P4053804582858954094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (A167499 (n + 4) + 1).toNat

end

end A299247.P4053804582858954094

/-! ## A299247.P17232778670400277908

`A299249(A133263(n+5)+4)`
-/

namespace A299247.P17232778670400277908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (A133263 (n + 5) + 4).toNat

end

end A299247.P17232778670400277908

/-! ## A299247.P12732563188750599954

`A299249(A000124(n+5)+5)`
-/

namespace A299247.P12732563188750599954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (A000124 (n + 5) + 5).toNat

end

end A299247.P12732563188750599954

/-! ## A299247.P10219001361786662594

`A299249(A000096(n+4)+7)`
-/

namespace A299247.P10219001361786662594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (A000096 (n + 4) + 7).toNat

end

end A299247.P10219001361786662594

/-!
# A299248: Number of nX7 0..1 arrays with every element equal to 0, 2, 3, 5, 6 or 7 king-move adjacent elements, with upper left element zero.

The programs for A299248, there is no canonical definition to state claims against.
-/

/-! ## A299248.P11364511615911718773

`A299249(A056119(n)+28)`
-/

namespace A299248.P11364511615911718773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (A056119 n + 28).toNat

end

end A299248.P11364511615911718773

/-! ## A299248.P7943102783306688329

`A299249(eq[11, A066657(n)])`
-/

namespace A299248.P7943102783306688329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A299248.P7943102783306688329

/-! ## A299248.P7029313625550432501

`A299249(A167499(n+5)+2)`
-/

namespace A299248.P7029313625550432501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (A167499 (n + 5) + 2).toNat

end

end A299248.P7029313625550432501

/-! ## A299248.P3984329085458332953

`A299249(A000096(n+5)+8)`
-/

namespace A299248.P3984329085458332953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (A000096 (n + 5) + 8).toNat

end

end A299248.P3984329085458332953

/-! ## A299248.P2774266431096906595

`A299249(A056115(n+1)+22)`
-/

namespace A299248.P2774266431096906595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299249 (A056115 (n + 1) + 22).toNat

end

end A299248.P2774266431096906595

/-!
# A299250: Numbers congruent to {9, 11, 21, 29} mod 30.

The programs for A299250, the canonical program `A299250.P9747723892704469737` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299250 has offset 1).

The definition of A299250 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299250.P9747723892704469737

`a(n-4)+30` with `a(0)=9, a(1)=11, a(2)=21, a(3)=29`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299250

/-- `a(n-4)+30` -/
def P9747723892704469737.Spec : Prop :=
  ∀ n, (P9747723892704469737.a n : ℤ) = A299250 (n + 1)

theorem P9747723892704469737.correct : P9747723892704469737.Spec := by
  intro n
  simp only [A299250, Nat.add_sub_cancel]

end A299250

/-! ## A299250.P6654155211826637166

`∑[floor(a(n-4))]` with `a(0)=9, a(1)=2, a(2)=10, a(3)=8, a(4)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A299250.P6654155211826637166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [9, 2, 10, 8, 10] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299250.P6654155211826637166

namespace A299250

/-- `∑[floor(a(n-4))]` -/
def P6654155211826637166.Spec : Prop :=
  ∀ n, (P6654155211826637166.a n : ℤ) = A299250 (n + 1)

end A299250

/-! ## A299250.P2517846028472772358

`A047473(A001651(n+1))+A001651(n+5)`
-/

namespace A299250.P2517846028472772358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047473 (A001651 (n + 1)).toNat + A001651 (n + 5)

end

end A299250.P2517846028472772358

namespace A299250

/-- `A047473(A001651(n+1))+A001651(n+5)` -/
def P2517846028472772358.Spec : Prop :=
  ∀ n, P2517846028472772358.a n = A299250 (n + 1)

end A299250

/-! ## A299250.P5170570998587310281

`A090771(∑[gcd(2, n)])`
-/

namespace A299250.P5170570998587310281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299250.P5170570998587310281

namespace A299250

/-- `A090771(∑[gcd(2, n)])` -/
def P5170570998587310281.Spec : Prop :=
  ∀ n, P5170570998587310281.a n = A299250 (n + 1)

end A299250

/-! ## A299250.P18438658540867181525

`A090771(comp[3*n]+1)`
-/

namespace A299250.P18438658540867181525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A299250.P18438658540867181525

namespace A299250

/-- `A090771(comp[3*n]+1)` -/
def P18438658540867181525.Spec : Prop :=
  ∀ n, P18438658540867181525.a n = A299250 (n + 1)

end A299250

/-! ## A299250.P1568791149250108921

`A047521(A007494(n+1))+A007494(n+1)`
-/

namespace A299250.P1568791149250108921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047521 (A007494 (n + 1)).toNat + A007494 (n + 1)

end

end A299250.P1568791149250108921

namespace A299250

/-- `A047521(A007494(n+1))+A007494(n+1)` -/
def P1568791149250108921.Spec : Prop :=
  ∀ n, P1568791149250108921.a n = A299250 (n + 1)

end A299250

/-! ## A299250.P17330863025585182475

`A047393(A001651(n+1)+2)+A001651(n+1)`
-/

namespace A299250.P17330863025585182475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047393 (A001651 (n + 1) + 2).toNat + A001651 (n + 1)

end

end A299250.P17330863025585182475

namespace A299250

/-- `A047393(A001651(n+1)+2)+A001651(n+1)` -/
def P17330863025585182475.Spec : Prop :=
  ∀ n, P17330863025585182475.a n = A299250 (n + 1)

end A299250

/-! ## A299250.P13522576029252269962

`∩[A007775(n+1)-2, A090771(n+1)]`
-/

namespace A299250.P13522576029252269962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299250.P13522576029252269962

namespace A299250

/-- `∩[A007775(n+1)-2, A090771(n+1)]` -/
def P13522576029252269962.Spec : Prop :=
  ∀ n, (P13522576029252269962.a n : ℤ) = A299250 (n + 1)

end A299250

/-! ## A299250.P14407887431589073665

`∩[A007775(n+1)-2, A054967(n+1)]`
-/

namespace A299250.P14407887431589073665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299250.P14407887431589073665

namespace A299250

/-- `∩[A007775(n+1)-2, A054967(n+1)]` -/
def P14407887431589073665.Spec : Prop :=
  ∀ n, (P14407887431589073665.a n : ℤ) = A299250 (n + 1)

end A299250

/-! ## A299250.P12506730290678016477

`∩[A047270(n+1), A054967(n+1)]`
-/

namespace A299250.P12506730290678016477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299250.P12506730290678016477

namespace A299250

/-- `∩[A047270(n+1), A054967(n+1)]` -/
def P12506730290678016477.Spec : Prop :=
  ∀ n, (P12506730290678016477.a n : ℤ) = A299250 (n + 1)

end A299250

/-! ## A299250.P5953972561696820425

`∩[A047270(n+1), A090771(n+1)]`
-/

namespace A299250.P5953972561696820425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299250.P5953972561696820425

namespace A299250

/-- `∩[A047270(n+1), A090771(n+1)]` -/
def P5953972561696820425.Spec : Prop :=
  ∀ n, (P5953972561696820425.a n : ℤ) = A299250 (n + 1)

end A299250

/-! ## A299250.P10796427874079495752

`A047270(A109613(A047237(n+1))+n+2)`
-/

namespace A299250.P10796427874079495752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (A109613 (A047237 (n + 1)).toNat + (n + 2 : ℤ)).toNat

end

end A299250.P10796427874079495752

namespace A299250

/-- `A047270(A109613(A047237(n+1))+n+2)` -/
def P10796427874079495752.Spec : Prop :=
  ∀ n, P10796427874079495752.a n = A299250 (n + 1)

end A299250

/-! ## A299250.P2116785262426346578

`∩[A007310(n+1)-2, A054967(n+1)]`
-/

namespace A299250.P2116785262426346578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054967 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299250.P2116785262426346578

namespace A299250

/-- `∩[A007310(n+1)-2, A054967(n+1)]` -/
def P2116785262426346578.Spec : Prop :=
  ∀ n, (P2116785262426346578.a n : ℤ) = A299250 (n + 1)

end A299250

/-! ## A299250.P10591398597990659529

`∩[A007310(n+1)-2, A090771(n+1)]`
-/

namespace A299250.P10591398597990659529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A299250.P10591398597990659529

namespace A299250

/-- `∩[A007310(n+1)-2, A090771(n+1)]` -/
def P10591398597990659529.Spec : Prop :=
  ∀ n, (P10591398597990659529.a n : ℤ) = A299250 (n + 1)

end A299250

/-! ## A299250.P17371793259554583559

`A047270(A186421(A047241(n+1))+n+2)`
-/

namespace A299250.P17371793259554583559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047270 (A186421 (A047241 (n + 1)).toNat + (n + 2 : ℤ)).toNat

end

end A299250.P17371793259554583559

namespace A299250

/-- `A047270(A186421(A047241(n+1))+n+2)` -/
def P17371793259554583559.Spec : Prop :=
  ∀ n, P17371793259554583559.a n = A299250 (n + 1)

end A299250

/-! ## A299250.P17025593728743594386

`A266297(A047233(n+2))`
-/

namespace A299250.P17025593728743594386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266297 (A047233 (n + 2)).toNat

end

end A299250.P17025593728743594386

namespace A299250

/-- `A266297(A047233(n+2))` -/
def P17025593728743594386.Spec : Prop :=
  ∀ n, P17025593728743594386.a n = A299250 (n + 1)

end A299250

/-! ## A299250.P1424495790585142190

`A266297(∑[4-A010673(n)])`
-/

namespace A299250.P1424495790585142190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A010673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266297 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A299250.P1424495790585142190

namespace A299250

/-- `A266297(∑[4-A010673(n)])` -/
def P1424495790585142190.Spec : Prop :=
  ∀ n, P1424495790585142190.a n = A299250 (n + 1)

end A299250

/-! ## A299250.P10511192955422428683

`A266297(A047270(n+1)+1)`
-/

namespace A299250.P10511192955422428683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266297 (A047270 (n + 1) + 1).toNat

end

end A299250.P10511192955422428683

namespace A299250

/-- `A266297(A047270(n+1)+1)` -/
def P10511192955422428683.Spec : Prop :=
  ∀ n, P10511192955422428683.a n = A299250 (n + 1)

end A299250

/-! ## A299250.P8824285429637676012

`A266297(A042948(n+2)+n)`
-/

namespace A299250.P8824285429637676012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266297 (A042948 (n + 2) + (n : ℤ)).toNat

end

end A299250.P8824285429637676012

namespace A299250

/-- `A266297(A042948(n+2)+n)` -/
def P8824285429637676012.Spec : Prop :=
  ∀ n, P8824285429637676012.a n = A299250 (n + 1)

end A299250

/-! ## A299250.P18030917901073617294

`A266297(∑[A010673(n+1)+2])`
-/

namespace A299250.P18030917901073617294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266297 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A299250.P18030917901073617294

namespace A299250

/-- `A266297(∑[A010673(n+1)+2])` -/
def P18030917901073617294.Spec : Prop :=
  ∀ n, P18030917901073617294.a n = A299250 (n + 1)

end A299250

/-!
# A299251: a(n) = ((Sum_{k=1..floor((n+1)^2/4)} d(k)) - T(n)) / 2, where d(n) = number of divisors of n (A000005) and T(n) = the n-th triangular number (A000217).

The programs for A299251, the canonical program `A299251.P8330585234016012379` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299251 has offset 1).

The definition of A299251 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006218, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A299251.P8330585234016012379

`(A006218(A002620(n+2))-A000217(n+1))/2`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A299251

/-- `(A006218(A002620(n+2))-A000217(n+1))/2` -/
def P8330585234016012379.Spec : Prop :=
  ∀ n, P8330585234016012379.a n = (A299251 (n + 1) : ℚ)

end A299251

/-! ## A299251.P202647037417824564

`A183003(∑[∑[log2(gcd(2, n))]])`
-/

namespace A299251.P202647037417824564
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183003 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A299251.P202647037417824564

namespace A299251

/-- `A183003(∑[∑[log2(gcd(2, n))]])` -/
def P202647037417824564.Spec : Prop :=
  ∀ n, P202647037417824564.a n = A299251 (n + 1)

end A299251

/-! ## A299251.P6469365390292349512

`A183003(∑[∑[char[2*n]]])`
-/

namespace A299251.P6469365390292349512
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183003 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299251.P6469365390292349512

namespace A299251

/-- `A183003(∑[∑[char[2*n]]])` -/
def P6469365390292349512.Spec : Prop :=
  ∀ n, P6469365390292349512.a n = A299251 (n + 1)

end A299251

/-! ## A299251.P2866989890037158020

`A051201(A087811(n+1))-∑[n+1]`
-/

namespace A299251.P2866989890037158020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051201 (A087811 (n + 1)).toNat - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A299251.P2866989890037158020

namespace A299251

/-- `A051201(A087811(n+1))-∑[n+1]` -/
def P2866989890037158020.Spec : Prop :=
  ∀ n, P2866989890037158020.a n = A299251 (n + 1)

end A299251

/-! ## A299251.P4311849488057602180

`A094820(A002620(n+2))-A002620(n+2)`
-/

namespace A299251.P4311849488057602180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094820 (A002620 (n + 2)).toNat - A002620 (n + 2)

end

end A299251.P4311849488057602180

namespace A299251

/-- `A094820(A002620(n+2))-A002620(n+2)` -/
def P4311849488057602180.Spec : Prop :=
  ∀ n, P4311849488057602180.a n = A299251 (n + 1)

end A299251

/-! ## A299251.P4213117264937359513

`A183003(∑[A008619(n)])+A008683(4*(n+1))`
-/

namespace A299251.P4213117264937359513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183003 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A008683 (4 * (n + 1))

end

end A299251.P4213117264937359513

namespace A299251

/-- `A183003(∑[A008619(n)])+A008683(4*(n+1))` -/
def P4213117264937359513.Spec : Prop :=
  ∀ n, P4213117264937359513.a n = A299251 (n + 1)

end A299251

/-! ## A299251.P6324127894493372098

`A183003(∑[A008619(n)])%n!`
-/

namespace A299251.P6324127894493372098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183003 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (Nat.factorial n : ℤ)

end

end A299251.P6324127894493372098

namespace A299251

/-- `A183003(∑[A008619(n)])%n!` -/
def P6324127894493372098.Spec : Prop :=
  ∀ n, P6324127894493372098.a n = A299251 (n + 1)

end A299251

/-!
# A299252: Growth series for group with presentation < S, T : S^2 = T^3 = (S*T)^11 = 1 >.

The programs for A299252, there is no canonical definition to state claims against.
-/

/-! ## A299252.P1528028127531173302

`A063759(n)-A063725(A063832(n))`
-/

namespace A299252.P1528028127531173302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n - A063725 (A063832 n).toNat

end

end A299252.P1528028127531173302

/-! ## A299252.P11309451982819165416

`A063759(n)-A151795(A141214(n))`
-/

namespace A299252.P11309451982819165416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n - A151795 (A141214 n).toNat

end

end A299252.P11309451982819165416

/-! ## A299252.P915422200318919829

`A299253(n)-A063725(A063832(n))`
-/

namespace A299252.P915422200318919829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299253 n - A063725 (A063832 n).toNat

end

end A299252.P915422200318919829

/-! ## A299252.P11917490123211833116

`A063759(n)-A340998(A028421(n))`
-/

namespace A299252.P11917490123211833116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n - A340998 ((A028421 n).toNat + 140)

end

end A299252.P11917490123211833116

/-! ## A299252.P4395611944498721703

`A063759(n)-A340998(A034802(n))`
-/

namespace A299252.P4395611944498721703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n - A340998 ((A034802 n).toNat + 140)

end

end A299252.P4395611944498721703

/-!
# A299253: Growth series for group with presentation < S, T : S^2 = T^3 = (S*T)^12 = 1 >.

The programs for A299253, there is no canonical definition to state claims against.
-/

/-! ## A299253.P11064263836510058289

`A089867(a(n-2))+a(n-2)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A299253.P11064263836510058289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  A089867 (a (n - 2)).toNat + a (n - 2)

end

end A299253.P11064263836510058289

/-! ## A299253.P2047402204941956208

`A089869(a(n-2))+a(n-2)` with `a(0)=1, a(1)=3, a(2)=4`
-/

namespace A299253.P2047402204941956208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 4] fun n a =>
  A089869 (a (n - 2)).toNat + a (n - 2)

end

end A299253.P2047402204941956208

/-! ## A299253.P14507938613264996004

`A063759(n)-A185245(A139252(n))`
-/

namespace A299253.P14507938613264996004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n - A185245 (A139252 n).toNat

end

end A299253.P14507938613264996004

/-! ## A299253.P13820542723152038673

`A063759(n)-A275962(A063759(2*n+3))`
-/

namespace A299253.P13820542723152038673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063759 n - A275962 (A063759 (2 * n + 3)).toNat

end

end A299253.P13820542723152038673

/-!
# A299254: Coordination sequence for 3D uniform tiling formed by stacking parallel layers of the 3^4.6 2D tiling (cf. A250120).

The programs for A299254, the canonical program `A299254.P15941340148010806328` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299254 has offset 0).

The definition of A299254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299254.P15941340148010806328

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=1, a(1)=7, a(2)=21, a(3)=45, a(4)=79, a(5)=122, a(6)=175, a(7)=237`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299254

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P15941340148010806328.Spec : Prop :=
  ∀ n, P15941340148010806328.a n = A299254 n

theorem P15941340148010806328.correct : P15941340148010806328.Spec := by
  intro n
  simp only [A299254]

end A299254

/-! ## A299254.P9788317160836618599

`ceil(4/5*A005897(n))`
-/

namespace A299254.P9788317160836618599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 : ℚ) / 5 * (A005897 n : ℚ)⌉

end

end A299254.P9788317160836618599

namespace A299254

/-- `ceil(4/5*A005897(n))` -/
def P9788317160836618599.Spec : Prop :=
  ∀ n, P9788317160836618599.a n = A299254 n

end A299254

/-! ## A299254.P14057597506534974575

`floor(6/5*A005899(n))`
-/

namespace A299254.P14057597506534974575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 : ℚ) / 5 * (A005899 n : ℚ)⌋

end

end A299254.P14057597506534974575

namespace A299254

/-- `floor(6/5*A005899(n))` -/
def P14057597506534974575.Spec : Prop :=
  ∀ n, P14057597506534974575.a n = A299254 n

end A299254

/-! ## A299254.P1496594570706203542

`A010001(n)-A008738(n)`
-/

namespace A299254.P1496594570706203542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n - A008738 n

end

end A299254.P1496594570706203542

namespace A299254

/-- `A010001(n)-A008738(n)` -/
def P1496594570706203542.Spec : Prop :=
  ∀ n, P1496594570706203542.a n = A299254 n

end A299254

/-! ## A299254.P2544486814779932996

`2*A250121(n)-A250120(n)`
-/

namespace A299254.P2544486814779932996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A250121 n - A250120 n

end

end A299254.P2544486814779932996

namespace A299254

/-- `2*A250121(n)-A250120(n)` -/
def P2544486814779932996.Spec : Prop :=
  ∀ n, P2544486814779932996.a n = A299254 n

end A299254

/-! ## A299254.P3042339317130210278

`floor(A299258(2*n)/2)+1`
-/

namespace A299254.P3042339317130210278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A299258 (2 * n) : ℚ) / 2⌋ + 1

end

end A299254.P3042339317130210278

namespace A299254

/-- `floor(A299258(2*n)/2)+1` -/
def P3042339317130210278.Spec : Prop :=
  ∀ n, P3042339317130210278.a n = A299254 n

end A299254

/-! ## A299254.P9418629856051844736

`∑[A005843(A072154(2*n))]-A072154(2*n)`
-/

namespace A299254.P9418629856051844736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A072154 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A072154 (2 * n)

end

end A299254.P9418629856051844736

namespace A299254

/-- `∑[A005843(A072154(2*n))]-A072154(2*n)` -/
def P9418629856051844736.Spec : Prop :=
  ∀ n, P9418629856051844736.a n = A299254 n

end A299254

/-! ## A299254.P10076681793176064388

`∑[A315187(2*n)]-A023443(A072154(2*n))`
-/

namespace A299254.P10076681793176064388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023443 (A072154 (2 * n)).toNat

end

end A299254.P10076681793176064388

namespace A299254

/-- `∑[A315187(2*n)]-A023443(A072154(2*n))` -/
def P10076681793176064388.Spec : Prop :=
  ∀ n, P10076681793176064388.a n = A299254 n

end A299254

/-! ## A299254.P12511902058433503113

`A005843(∑[A072154(A005843(n))])-A072154(2*n)`
-/

namespace A299254.P12511902058433503113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A072154 (2 * n)

end

end A299254.P12511902058433503113

namespace A299254

/-- `A005843(∑[A072154(A005843(n))])-A072154(2*n)` -/
def P12511902058433503113.Spec : Prop :=
  ∀ n, P12511902058433503113.a n = A299254 n

end A299254

/-! ## A299254.P1948779540305237026

`A047489(A005918(n))`
-/

namespace A299254.P1948779540305237026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047489 (A005918 n).toNat

end

end A299254.P1948779540305237026

namespace A299254

/-- `A047489(A005918(n))` -/
def P1948779540305237026.Spec : Prop :=
  ∀ n, P1948779540305237026.a n = A299254 n

end A299254

/-!
# A299255: Coordination sequence for 3D uniform tiling formed by stacking parallel layers of the 3.3.4.3.4 2D tiling (cf. A219529).

The programs for A299255, the canonical program `A299255.P1375678197334067220` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299255 has offset 0).

The definition of A299255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299255.P1375678197334067220

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=7, a(2)=23, a(3)=50, a(4)=87, a(5)=135`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299255

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P1375678197334067220.Spec : Prop :=
  ∀ n, P1375678197334067220.a n = A299255 n

theorem P1375678197334067220.correct : P1375678197334067220.Spec := by
  intro n
  simp only [A299255]

end A299255

/-! ## A299255.P9997271752497494770

`A115285(n)+(2*n)²`
-/

namespace A299255.P9997271752497494770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115285 n + ((2 * n) ^ 2 : ℤ)

end

end A299255.P9997271752497494770

namespace A299255

/-- `A115285(n)+(2*n)²` -/
def P9997271752497494770.Spec : Prop :=
  ∀ n, P9997271752497494770.a n = A299255 n

end A299255

/-! ## A299255.P5582282633887318497

`A010001(n)+A000212(n)`
-/

namespace A299255.P5582282633887318497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n + A000212 n

end

end A299255.P5582282633887318497

namespace A299255

/-- `A010001(n)+A000212(n)` -/
def P5582282633887318497.Spec : Prop :=
  ∀ n, P5582282633887318497.a n = A299255 n

end A299255

/-! ## A299255.P2964844321169305315

`A256320(n)+A005899(n)`
-/

namespace A299255.P2964844321169305315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n + A005899 n

end

end A299255.P2964844321169305315

namespace A299255

/-- `A256320(n)+A005899(n)` -/
def P2964844321169305315.Spec : Prop :=
  ∀ n, P2964844321169305315.a n = A299255 n

end A299255

/-! ## A299255.P16441763656460585540

`A330451(n)+A005893(n)`
-/

namespace A299255.P16441763656460585540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330451 n + A005893 n

end

end A299255.P16441763656460585540

namespace A299255

/-- `A330451(n)+A005893(n)` -/
def P16441763656460585540.Spec : Prop :=
  ∀ n, P16441763656460585540.a n = A299255 n

end A299255

/-! ## A299255.P7779196929997464694

`A005897(n)-A071619(n)`
-/

namespace A299255.P7779196929997464694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - A071619 n

end

end A299255.P7779196929997464694

namespace A299255

/-- `A005897(n)-A071619(n)` -/
def P7779196929997464694.Spec : Prop :=
  ∀ n, P7779196929997464694.a n = A299255 n

end A299255

/-! ## A299255.P16167998468988239029

`A005919(n)-A113422(n)`
-/

namespace A299255.P16167998468988239029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005919 n - A113422 n

end

end A299255.P16167998468988239029

namespace A299255

/-- `A005919(n)-A113422(n)` -/
def P16167998468988239029.Spec : Prop :=
  ∀ n, P16167998468988239029.a n = A299255 n

end A299255

/-! ## A299255.P13002643706065783184

`2*A005899(n)-A299259(n)`
-/

namespace A299255.P13002643706065783184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005899 n - A299259 n

end

end A299255.P13002643706065783184

namespace A299255

/-- `2*A005899(n)-A299259(n)` -/
def P13002643706065783184.Spec : Prop :=
  ∀ n, P13002643706065783184.a n = A299255 n

end A299255

/-! ## A299255.P14633219246422560367

`2*A301696(n)-A219529(n)`
-/

namespace A299255.P14633219246422560367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A301696 n - A219529 n

end

end A299255.P14633219246422560367

namespace A299255

/-- `2*A301696(n)-A219529(n)` -/
def P14633219246422560367.Spec : Prop :=
  ∀ n, P14633219246422560367.a n = A299255 n

end A299255

/-! ## A299255.P17571412373836505442

`A005897(n)-A147623(n)/2`
-/

namespace A299255.P17571412373836505442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005897 n : ℚ) - (A147623 n : ℚ) / 2

end

end A299255.P17571412373836505442

namespace A299255

/-- `A005897(n)-A147623(n)/2` -/
def P17571412373836505442.Spec : Prop :=
  ∀ n, P17571412373836505442.a n = (A299255 n : ℚ)

end A299255

/-! ## A299255.P15237796473931176940

`A005893(n)+A005897(n)-A299259(n)`
-/

namespace A299255.P15237796473931176940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n + (A005897 n - A299259 n)

end

end A299255.P15237796473931176940

namespace A299255

/-- `A005893(n)+A005897(n)-A299259(n)` -/
def P15237796473931176940.Spec : Prop :=
  ∀ n, P15237796473931176940.a n = A299255 n

end A299255

/-! ## A299255.P5080436131981004328

`A008577(n+1)+A005897(n)-A005893(n+1)`
-/

namespace A299255.P5080436131981004328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008577 (n + 1) + (A005897 n - A005893 (n + 1))

end

end A299255.P5080436131981004328

namespace A299255

/-- `A008577(n+1)+A005897(n)-A005893(n+1)` -/
def P5080436131981004328.Spec : Prop :=
  ∀ n, P5080436131981004328.a n = A299255 n

end A299255

/-! ## A299255.P7511540793221208248

`(A053799(2*n)+A005893(2*n))/2`
-/

namespace A299255.P7511540793221208248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053799 (2 * n) + A005893 (2 * n) : ℚ) / 2

end

end A299255.P7511540793221208248

namespace A299255

/-- `(A053799(2*n)+A005893(2*n))/2` -/
def P7511540793221208248.Spec : Prop :=
  ∀ n, P7511540793221208248.a n = (A299255 n : ℚ)

end A299255

/-! ## A299255.P5071019813431011044

`A115285(2*n)`
-/

namespace A299255.P5071019813431011044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115285 (2 * n)

end

end A299255.P5071019813431011044

namespace A299255

/-- `A115285(2*n)` -/
def P5071019813431011044.Spec : Prop :=
  ∀ n, P5071019813431011044.a n = A299255 n

end A299255

/-! ## A299255.P1770261843982767577

`A147623(2*n)+A100063(n)`
-/

namespace A299255.P1770261843982767577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147623 (2 * n) + A100063 n

end

end A299255.P1770261843982767577

namespace A299255

/-- `A147623(2*n)+A100063(n)` -/
def P1770261843982767577.Spec : Prop :=
  ∀ n, P1770261843982767577.a n = A299255 n

end A299255

/-! ## A299255.P12042006578789265131

`A256320(2*n)+A036453(n+1)`
-/

namespace A299255.P12042006578789265131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 (2 * n) + A036453 (n + 1)

end

end A299255.P12042006578789265131

namespace A299255

/-- `A256320(2*n)+A036453(n+1)` -/
def P12042006578789265131.Spec : Prop :=
  ∀ n, P12042006578789265131.a n = A299255 n

end A299255

/-! ## A299255.P13919820388587343834

`A147623(2*n+1)-A219529(n)`
-/

namespace A299255.P13919820388587343834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147623 (2 * n + 1) - A219529 n

end

end A299255.P13919820388587343834

namespace A299255

/-- `A147623(2*n+1)-A219529(n)` -/
def P13919820388587343834.Spec : Prop :=
  ∀ n, P13919820388587343834.a n = A299255 n

end A299255

/-! ## A299255.P145763694436665921

`A010000(2*n)+A000212(2*n)`
-/

namespace A299255.P145763694436665921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 (2 * n) + A000212 (2 * n)

end

end A299255.P145763694436665921

namespace A299255

/-- `A010000(2*n)+A000212(2*n)` -/
def P145763694436665921.Spec : Prop :=
  ∀ n, P145763694436665921.a n = A299255 n

end A299255

/-! ## A299255.P7186825248159368862

`A071619(2*n)+A053799(2*n)`
-/

namespace A299255.P7186825248159368862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 (2 * n) + A053799 (2 * n)

end

end A299255.P7186825248159368862

namespace A299255

/-- `A071619(2*n)+A053799(2*n)` -/
def P7186825248159368862.Spec : Prop :=
  ∀ n, P7186825248159368862.a n = A299255 n

end A299255

/-!
# A299256: Coordination sequence for 3D uniform tiling formed by stacking parallel layers of the 3.6.3.6 2D tiling (cf. A008579).

The programs for A299256, the canonical program `A299256.P15341471362747104944` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299256 has offset 0).

The definition of A299256 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299256.P15341471362747104944

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=6, a(2)=18, a(3)=40, a(4)=72, a(5)=112`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299256

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P15341471362747104944.Spec : Prop :=
  ∀ n, P15341471362747104944.a n = A299256 n

theorem P15341471362747104944.correct : P15341471362747104944.Spec := by
  intro n
  simp only [A299256]

end A299256

/-! ## A299256.P8570265972931328172

`A009946(n)-2%A092534(n)`
-/

namespace A299256.P8570265972931328172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n - Int.tmod 2 (A092534 n)

end

end A299256.P8570265972931328172

namespace A299256

/-- `A009946(n)-2%A092534(n)` -/
def P8570265972931328172.Spec : Prop :=
  ∀ n, P8570265972931328172.a n = A299256 n

end A299256

/-! ## A299256.P4894182973431392917

`∑[2*A008579(n)]-A008579(n)`
-/

namespace A299256.P4894182973431392917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008579 n

end

end A299256.P4894182973431392917

namespace A299256

/-- `∑[2*A008579(n)]-A008579(n)` -/
def P4894182973431392917.Spec : Prop :=
  ∀ n, P4894182973431392917.a n = A299256 n

end A299256

/-! ## A299256.P14291380000163428550

`A009946(n)-A001221(a(A001221(n)))` with `a(0)=1`
-/

namespace A299256.P14291380000163428550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A009946 n - A001221 (a (A001221 n).toNat).toNat

end

end A299256.P14291380000163428550

namespace A299256

/-- `A009946(n)-A001221(a(A001221(n)))` -/
def P14291380000163428550.Spec : Prop :=
  ∀ n, P14291380000163428550.a n = A299256 n

end A299256

/-! ## A299256.P17566461957654419575

`A009946(n)-A009946(A004396(n+1))%(n+1)`
-/

namespace A299256.P17566461957654419575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n - Int.tmod (A009946 (A004396 (n + 1)).toNat) (n + 1 : ℤ)

end

end A299256.P17566461957654419575

namespace A299256

/-- `A009946(n)-A009946(A004396(n+1))%(n+1)` -/
def P17566461957654419575.Spec : Prop :=
  ∀ n, P17566461957654419575.a n = A299256 n

end A299256

/-! ## A299256.P6922983544315549707

`A009946(n)-A107279(A002322(n+1))`
-/

namespace A299256.P6922983544315549707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n - A107279 (A002322 (n + 1)).toNat

end

end A299256.P6922983544315549707

namespace A299256

/-- `A009946(n)-A107279(A002322(n+1))` -/
def P6922983544315549707.Spec : Prop :=
  ∀ n, P6922983544315549707.a n = A299256 n

end A299256

/-! ## A299256.P4501152321505352700

`A009946(n)-A329321(p?[A061071(n+1)])`
-/

namespace A299256.P4501152321505352700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n - A329321 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A299256.P4501152321505352700

namespace A299256

/-- `A009946(n)-A329321(p?[A061071(n+1)])` -/
def P4501152321505352700.Spec : Prop :=
  ∀ n, P4501152321505352700.a n = A299256 n

end A299256

/-! ## A299256.P15702319740385228248

`Δ[A008751(A267528(2*n))]*A267528(n+1)`
-/

namespace A299256.P15702319740385228248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008751 (A267528 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A267528 (n + 1)

end

end A299256.P15702319740385228248

namespace A299256

/-- `Δ[A008751(A267528(2*n))]*A267528(n+1)` -/
def P15702319740385228248.Spec : Prop :=
  ∀ n, P15702319740385228248.a n = A299256 n

end A299256

/-! ## A299256.P8610180819284194674

`∑[A005843(A008579(n))]-A008579(n)`
-/

namespace A299256.P8610180819284194674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008579 n

end

end A299256.P8610180819284194674

namespace A299256

/-- `∑[A005843(A008579(n))]-A008579(n)` -/
def P8610180819284194674.Spec : Prop :=
  ∀ n, P8610180819284194674.a n = A299256 n

end A299256

/-! ## A299256.P8613132205945404034

`∑[A005843(A250122(2*n))]-A250122(2*n)`
-/

namespace A299256.P8613132205945404034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A250122 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A250122 (2 * n)

end

end A299256.P8613132205945404034

namespace A299256

/-- `∑[A005843(A250122(2*n))]-A250122(2*n)` -/
def P8613132205945404034.Spec : Prop :=
  ∀ n, P8613132205945404034.a n = A299256 n

end A299256

/-! ## A299256.P6686623897261244899

`A078529(A189320(n+2))`
-/

namespace A299256.P6686623897261244899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078529 (A189320 (n + 2)).toNat

end

end A299256.P6686623897261244899

namespace A299256

/-- `A078529(A189320(n+2))` -/
def P6686623897261244899.Spec : Prop :=
  ∀ n, P6686623897261244899.a n = A299256 n

end A299256

/-!
# A299257: Coordination sequence for 3D uniform tiling formed by stacking parallel layers of the 3.12.12 2D tiling (cf. A250122).

The programs for A299257, there is no canonical definition to state claims against.
-/

/-! ## A299257.P15132799926849636331

`∑[2*A250122(n)]-A250122(n)`
-/

namespace A299257.P15132799926849636331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A250122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A250122 n

end

end A299257.P15132799926849636331

/-! ## A299257.P16227100680260309153

`∑[A004277(A250122(n))]-A250122(n)`
-/

namespace A299257.P16227100680260309153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A250122 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A250122 n

end

end A299257.P16227100680260309153

/-! ## A299257.P8653293800239504800

`A005843(∑[A250122(n)])-A250122(n)`
-/

namespace A299257.P8653293800239504800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A250122 n

end

end A299257.P8653293800239504800

/-! ## A299257.P15033359702455336113

`A299232(∑[A250122(n)])-A250122(n)`
-/

namespace A299257.P15033359702455336113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299232 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A250122 n

end

end A299257.P15033359702455336113

/-! ## A299257.P8045398107978339298

`A008574(∑[A250122(n)])/2-A250122(n)`
-/

namespace A299257.P8045398107978339298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2 - (A250122 n : ℚ)

end

end A299257.P8045398107978339298

/-! ## A299257.P12018262045248005921

`A008458(∑[A250122(n)])/3-A250122(n)`
-/

namespace A299257.P12018262045248005921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008458 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 3 - (A250122 n : ℚ)

end

end A299257.P12018262045248005921

/-!
# A299258: Coordination sequence for 3D uniform tiling formed by stacking parallel layers of the 4.6.12 2D tiling (cf. A072154).

The programs for A299258, the canonical program `A299258.P9091859241290578925` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299258 has offset 0).

The definition of A299258 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299258.P9091859241290578925

`2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` with `a(0)=1, a(1)=5, a(2)=13, a(3)=25, a(4)=41, a(5)=62, a(6)=89, a(7)=121`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299258

/-- `2*a(n-1)-a(n-2)+a(n-5)-2*a(n-6)+a(n-7)` -/
def P9091859241290578925.Spec : Prop :=
  ∀ n, P9091859241290578925.a n = A299258 n

theorem P9091859241290578925.correct : P9091859241290578925.Spec := by
  intro n
  simp only [A299258]

end A299258

/-! ## A299258.P5013944933574599828

`floor((3*A008137(n)-1)/2)`
-/

namespace A299258.P5013944933574599828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A008137 n - 1 : ℚ) / 2⌋

end

end A299258.P5013944933574599828

namespace A299258

/-- `floor((3*A008137(n)-1)/2)` -/
def P5013944933574599828.Spec : Prop :=
  ∀ n, P5013944933574599828.a n = A299258 n

end A299258

/-! ## A299258.P18030597654653524685

`2*A265078(n)-A072154(n)`
-/

namespace A299258.P18030597654653524685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265078 n - A072154 n

end

end A299258.P18030597654653524685

namespace A299258

/-- `2*A265078(n)-A072154(n)` -/
def P18030597654653524685.Spec : Prop :=
  ∀ n, P18030597654653524685.a n = A299258 n

end A299258

/-! ## A299258.P17499565314295582913

`A047486(n+1)+∑[A004278(A072154(n))]`
-/

namespace A299258.P17499565314295582913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004278 (A072154 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047486 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299258.P17499565314295582913

namespace A299258

/-- `A047486(n+1)+∑[A004278(A072154(n))]` -/
def P17499565314295582913.Spec : Prop :=
  ∀ n, P17499565314295582913.a n = A299258 n

end A299258

/-! ## A299258.P13584263979009890252

`∑[A315187(n)]+1-A072154(n)`
-/

namespace A299258.P13584263979009890252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A072154 n)

end

end A299258.P13584263979009890252

namespace A299258

/-- `∑[A315187(n)]+1-A072154(n)` -/
def P13584263979009890252.Spec : Prop :=
  ∀ n, P13584263979009890252.a n = A299258 n

end A299258

/-! ## A299258.P14957382517107493788

`∑[A315187(n)]-A023443(A072154(n))`
-/

namespace A299258.P14957382517107493788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023443 (A072154 n).toNat

end

end A299258.P14957382517107493788

namespace A299258

/-- `∑[A315187(n)]-A023443(A072154(n))` -/
def P14957382517107493788.Spec : Prop :=
  ∀ n, P14957382517107493788.a n = A299258 n

end A299258

/-! ## A299258.P6298272218067296208

`A090223(A002522(n))+A008137(n)`
-/

namespace A299258.P6298272218067296208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (A002522 n).toNat + A008137 n

end

end A299258.P6298272218067296208

namespace A299258

/-- `A090223(A002522(n))+A008137(n)` -/
def P6298272218067296208.Spec : Prop :=
  ∀ n, P6298272218067296208.a n = A299258 n

end A299258

/-! ## A299258.P5637334692547485215

`A004277(floor((n+3)²/5)+n²)-A072154(n)`
-/

namespace A299258.P5637334692547485215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (⌊((n + 3) ^ 2 : ℚ) / 5⌋ + (n ^ 2 : ℤ)).toNat - A072154 n

end

end A299258.P5637334692547485215

namespace A299258

/-- `A004277(floor((n+3)²/5)+n²)-A072154(n)` -/
def P5637334692547485215.Spec : Prop :=
  ∀ n, P5637334692547485215.a n = A299258 n

end A299258

/-! ## A299258.P5440421855787296258

`A005843(A265078(n))-A072154(n)`
-/

namespace A299258.P5440421855787296258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A265078 n).toNat - A072154 n

end

end A299258.P5440421855787296258

namespace A299258

/-- `A005843(A265078(n))-A072154(n)` -/
def P5440421855787296258.Spec : Prop :=
  ∀ n, P5440421855787296258.a n = A299258 n

end A299258

/-! ## A299258.P13831516871504353471

`A005843(∑[A072154(n)])-A072154(n)`
-/

namespace A299258.P13831516871504353471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A072154 n

end

end A299258.P13831516871504353471

namespace A299258

/-- `A005843(∑[A072154(n)])-A072154(n)` -/
def P13831516871504353471.Spec : Prop :=
  ∀ n, P13831516871504353471.a n = A299258 n

end A299258

/-!
# A299259: Coordination sequence for 3D uniform tiling formed by stacking parallel layers of the 4.8.8 2D tiling (cf. A008576).

The programs for A299259, the canonical program `A299259.P9809777740400016205` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299259 has offset 0).

The definition of A299259 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299259.P9809777740400016205

`2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` with `a(0)=1, a(1)=5, a(2)=13, a(3)=26, a(4)=45, a(5)=69`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299259

/-- `2*a(n-1)-a(n-2)+a(n-3)-2*a(n-4)+a(n-5)` -/
def P9809777740400016205.Spec : Prop :=
  ∀ n, P9809777740400016205.a n = A299259 n

theorem P9809777740400016205.correct : P9809777740400016205.Spec := by
  intro n
  simp only [A299259]

end A299259

/-! ## A299259.P16225757591766496110

`A071619(n)+A005893(n)`
-/

namespace A299259.P16225757591766496110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 n + A005893 n

end

end A299259.P16225757591766496110

namespace A299259

/-- `A071619(n)+A005893(n)` -/
def P16225757591766496110.Spec : Prop :=
  ∀ n, P16225757591766496110.a n = A299259 n

end A299259

/-! ## A299259.P11638480264698772117

`A113422(n)+A010000(n)`
-/

namespace A299259.P11638480264698772117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113422 n + A010000 n

end

end A299259.P11638480264698772117

namespace A299259

/-- `A113422(n)+A010000(n)` -/
def P11638480264698772117.Spec : Prop :=
  ∀ n, P11638480264698772117.a n = A299259 n

end A299259

/-! ## A299259.P5639370767651354258

`A147623(n)+A115285(n)`
-/

namespace A299259.P5639370767651354258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147623 n + A115285 n

end

end A299259.P5639370767651354258

namespace A299259

/-- `A147623(n)+A115285(n)` -/
def P5639370767651354258.Spec : Prop :=
  ∀ n, P5639370767651354258.a n = A299259 n

end A299259

/-! ## A299259.P7097075793113974897

`A320281(n)+A103517(n)`
-/

namespace A299259.P7097075793113974897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320281 n + A103517 n

end

end A299259.P7097075793113974897

namespace A299259

/-- `A320281(n)+A103517(n)` -/
def P7097075793113974897.Spec : Prop :=
  ∀ n, P7097075793113974897.a n = A299259 n

end A299259

/-! ## A299259.P11542115519146248335

`A005918(n)-A000212(n)`
-/

namespace A299259.P11542115519146248335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n - A000212 n

end

end A299259.P11542115519146248335

namespace A299259

/-- `A005918(n)-A000212(n)` -/
def P11542115519146248335.Spec : Prop :=
  ∀ n, P11542115519146248335.a n = A299259 n

end A299259

/-! ## A299259.P7682385368593529792

`A005899(n)-A256320(n)`
-/

namespace A299259.P7682385368593529792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n - A256320 n

end

end A299259.P7682385368593529792

namespace A299259

/-- `A005899(n)-A256320(n)` -/
def P7682385368593529792.Spec : Prop :=
  ∀ n, P7682385368593529792.a n = A299259 n

end A299259

/-! ## A299259.P1294467631001363758

`A005897(n)-A330451(n)`
-/

namespace A299259.P1294467631001363758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - A330451 n

end

end A299259.P1294467631001363758

namespace A299259

/-- `A005897(n)-A330451(n)` -/
def P1294467631001363758.Spec : Prop :=
  ∀ n, P1294467631001363758.a n = A299259 n

end A299259

/-! ## A299259.P13705189968714626253

`A115285(n)+2*A071619(n)`
-/

namespace A299259.P13705189968714626253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115285 n + 2 * A071619 n

end

end A299259.P13705189968714626253

namespace A299259

/-- `A115285(n)+2*A071619(n)` -/
def P13705189968714626253.Spec : Prop :=
  ∀ n, P13705189968714626253.a n = A299259 n

end A299259

/-! ## A299259.P7715272888386226937

`A100063(n)+2*A147623(n)`
-/

namespace A299259.P7715272888386226937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 n + 2 * A147623 n

end

end A299259.P7715272888386226937

namespace A299259

/-- `A100063(n)+2*A147623(n)` -/
def P7715272888386226937.Spec : Prop :=
  ∀ n, P7715272888386226937.a n = A299259 n

end A299259

/-! ## A299259.P2830080690669737244

`2*A008577(n)-A008576(n)`
-/

namespace A299259.P2830080690669737244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008577 n - A008576 n

end

end A299259.P2830080690669737244

namespace A299259

/-- `2*A008577(n)-A008576(n)` -/
def P2830080690669737244.Spec : Prop :=
  ∀ n, P2830080690669737244.a n = A299259 n

end A299259

/-! ## A299259.P17361774577644849273

`A005893(n)+A147623(n)/2`
-/

namespace A299259.P17361774577644849273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005893 n : ℚ) + (A147623 n : ℚ) / 2

end

end A299259.P17361774577644849273

namespace A299259

/-- `A005893(n)+A147623(n)/2` -/
def P17361774577644849273.Spec : Prop :=
  ∀ n, P17361774577644849273.a n = (A299259 n : ℚ)

end A299259

/-! ## A299259.P3185714018775942081

`2*A005899(n)-A299255(n)`
-/

namespace A299259.P3185714018775942081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005899 n - A299255 n

end

end A299259.P3185714018775942081

namespace A299259

/-- `2*A005899(n)-A299255(n)` -/
def P3185714018775942081.Spec : Prop :=
  ∀ n, P3185714018775942081.a n = A299259 n

end A299259

/-! ## A299259.P1171695758750328065

`A005893(n)+A005897(n)-A299255(n)`
-/

namespace A299259.P1171695758750328065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n + (A005897 n - A299255 n)

end

end A299259.P1171695758750328065

namespace A299259

/-- `A005893(n)+A005897(n)-A299255(n)` -/
def P1171695758750328065.Spec : Prop :=
  ∀ n, P1171695758750328065.a n = A299259 n

end A299259

/-! ## A299259.P2593848456693188849

`A005893(n)-(A071619(n)-A147623(n))`
-/

namespace A299259.P2593848456693188849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n - (A071619 n - A147623 n)

end

end A299259.P2593848456693188849

namespace A299259

/-- `A005893(n)-(A071619(n)-A147623(n))` -/
def P2593848456693188849.Spec : Prop :=
  ∀ n, P2593848456693188849.a n = A299259 n

end A299259

/-! ## A299259.P9063649940729953080

`A105343(2*n)+A071619(n)`
-/

namespace A299259.P9063649940729953080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105343 (2 * n) + A071619 n

end

end A299259.P9063649940729953080

namespace A299259

/-- `A105343(2*n)+A071619(n)` -/
def P9063649940729953080.Spec : Prop :=
  ∀ n, P9063649940729953080.a n = A299259 n

end A299259

/-! ## A299259.P17133357780963825051

`A005918(n)-A008724(2*n)`
-/

namespace A299259.P17133357780963825051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n - A008724 (2 * n)

end

end A299259.P17133357780963825051

namespace A299259

/-- `A005918(n)-A008724(2*n)` -/
def P17133357780963825051.Spec : Prop :=
  ∀ n, P17133357780963825051.a n = A299259 n

end A299259

/-! ## A299259.P10146013436570999227

`A010000(2*n)-A000212(2*n)`
-/

namespace A299259.P10146013436570999227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 (2 * n) - A000212 (2 * n)

end

end A299259.P10146013436570999227

namespace A299259

/-- `A010000(2*n)-A000212(2*n)` -/
def P10146013436570999227.Spec : Prop :=
  ∀ n, P10146013436570999227.a n = A299259 n

end A299259

/-!
# A299260: Partial sums of A299254.

The programs for A299260, the canonical program `A299260.P6148484751298139448` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299260 has offset 0).

The definition of A299260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299260.P6148484751298139448

`∑[A299254(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A299260

/-- `∑[A299254(n)]` -/
def P6148484751298139448.Spec : Prop :=
  ∀ n, P6148484751298139448.a n = A299260 n

theorem P6148484751298139448.correct : P6148484751298139448.Spec := by
  intro n
  simp only [A299260]

end A299260

/-! ## A299260.P12780805597825065497

`∑[ceil(4/5*A005897(n))]`
-/

namespace A299260.P12780805597825065497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 : ℚ) / 5 * (A005897 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299260.P12780805597825065497

namespace A299260

/-- `∑[ceil(4/5*A005897(n))]` -/
def P12780805597825065497.Spec : Prop :=
  ∀ n, P12780805597825065497.a n = A299260 n

end A299260

/-! ## A299260.P735160731542114079

`A063489(n+1)-∑[round(n²/5)]`
-/

namespace A299260.P735160731542114079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063489 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299260.P735160731542114079

namespace A299260

/-- `A063489(n+1)-∑[round(n²/5)]` -/
def P735160731542114079.Spec : Prop :=
  ∀ n, P735160731542114079.a n = A299260 n

end A299260

/-! ## A299260.P9507612800704155311

`∑[A010001(n)-A008738(n)]`
-/

namespace A299260.P9507612800704155311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n - A008738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299260.P9507612800704155311

namespace A299260

/-- `∑[A010001(n)-A008738(n)]` -/
def P9507612800704155311.Spec : Prop :=
  ∀ n, P9507612800704155311.a n = A299260 n

end A299260

/-! ## A299260.P5715141250058720236

`A299254(A000007(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A299260.P5715141250058720236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299254 (A000007 n + (n : ℤ)).toNat + a (n - 1)

end

end A299260.P5715141250058720236

namespace A299260

/-- `A299254(A000007(n)+n)+a(n-1)` -/
def P5715141250058720236.Spec : Prop :=
  ∀ n, P5715141250058720236.a n = A299260 n

end A299260

/-! ## A299260.P3508054645071298723

`A299254(n)-(A000007(n)-a(n-1))` with `a(0)=1`
-/

namespace A299260.P3508054645071298723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299254 n - (A000007 n - a (n - 1))

end

end A299260.P3508054645071298723

namespace A299260

/-- `A299254(n)-(A000007(n)-a(n-1))` -/
def P3508054645071298723.Spec : Prop :=
  ∀ n, P3508054645071298723.a n = A299260 n

end A299260

/-! ## A299260.P9906984190694734545

`∑[A047253(A005899(n))]`
-/

namespace A299260.P9906984190694734545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047253 (A005899 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299260.P9906984190694734545

namespace A299260

/-- `∑[A047253(A005899(n))]` -/
def P9906984190694734545.Spec : Prop :=
  ∀ n, P9906984190694734545.a n = A299260 n

end A299260

/-!
# A299261: Partial sums of A299255.

The programs for A299261, the canonical program `A299261.P3230887130282073134` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299261 has offset 0).

The definition of A299261 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299261.P3230887130282073134

`∑[floor(n²/3)]+∑[5*n²+2]-1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299261

/-- `∑[floor(n²/3)]+∑[5*n²+2]-1` -/
def P3230887130282073134.Spec : Prop :=
  ∀ n, P3230887130282073134.a n = A299261 n

theorem P3230887130282073134.correct : P3230887130282073134.Spec := by
  intro n
  simp only [A299261]

end A299261

/-! ## A299261.P1199834702198049505

`∑[A299255(n)]`
-/

namespace A299261.P1199834702198049505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299261.P1199834702198049505

namespace A299261

/-- `∑[A299255(n)]` -/
def P1199834702198049505.Spec : Prop :=
  ∀ n, P1199834702198049505.a n = A299261 n

end A299261

/-! ## A299261.P8483170340913958042

`∑[A010001(n)+A000212(n)]`
-/

namespace A299261.P8483170340913958042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n + A000212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299261.P8483170340913958042

namespace A299261

/-- `∑[A010001(n)+A000212(n)]` -/
def P8483170340913958042.Spec : Prop :=
  ∀ n, P8483170340913958042.a n = A299261 n

end A299261

/-! ## A299261.P3227818746230219052

`∑[A005897(n)-A071619(n)]`
-/

namespace A299261.P3227818746230219052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005897 n - A071619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299261.P3227818746230219052

namespace A299261

/-- `∑[A005897(n)-A071619(n)]` -/
def P3227818746230219052.Spec : Prop :=
  ∀ n, P3227818746230219052.a n = A299261 n

end A299261

/-! ## A299261.P3770135828097167464

`∑[A115285(2*n)]`
-/

namespace A299261.P3770135828097167464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115285 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299261.P3770135828097167464

namespace A299261

/-- `∑[A115285(2*n)]` -/
def P3770135828097167464.Spec : Prop :=
  ∀ n, P3770135828097167464.a n = A299261 n

end A299261

/-! ## A299261.P5557114755874876564

`∑[A005893(2*n)-A071619(2*n)]`
-/

namespace A299261.P5557114755874876564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (2 * n) - A071619 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299261.P5557114755874876564

namespace A299261

/-- `∑[A005893(2*n)-A071619(2*n)]` -/
def P5557114755874876564.Spec : Prop :=
  ∀ n, P5557114755874876564.a n = A299261 n

end A299261

/-! ## A299261.P12022091512232159392

`A275580(4*n)`
-/

namespace A299261.P12022091512232159392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275580 (4 * n)

end

end A299261.P12022091512232159392

namespace A299261

/-- `A275580(4*n)` -/
def P12022091512232159392.Spec : Prop :=
  ∀ n, P12022091512232159392.a n = A299261 n

end A299261

/-! ## A299261.P15175047624173852541

`A068491(3*n+n+1)`
-/

namespace A299261.P15175047624173852541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068491 (3 * n + (n + 1))

end

end A299261.P15175047624173852541

namespace A299261

/-- `A068491(3*n+n+1)` -/
def P15175047624173852541.Spec : Prop :=
  ∀ n, P15175047624173852541.a n = A299261 n

end A299261

/-! ## A299261.P17815708957601473852

`Δ[A008577(n²)/3]`
-/

namespace A299261.P17815708957601473852
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008577 (n ^ 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299261.P17815708957601473852

namespace A299261

/-- `Δ[A008577(n²)/3]` -/
def P17815708957601473852.Spec : Prop :=
  ∀ n, P17815708957601473852.a n = (A299261 n : ℚ)

end A299261

/-! ## A299261.P8190672266938027969

`Δ[A211480(n²)/3]`
-/

namespace A299261.P8190672266938027969
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211480 (n ^ 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A299261.P8190672266938027969

namespace A299261

/-- `Δ[A211480(n²)/3]` -/
def P8190672266938027969.Spec : Prop :=
  ∀ n, P8190672266938027969.a n = (A299261 n : ℚ)

end A299261

/-!
# A299262: Partial sums of A299256.

The programs for A299262, the canonical program `A299262.P1484301327579649145` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299262 has offset 0).

The definition of A299262 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299262.P1484301327579649145

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=7, a(2)=25, a(3)=65, a(4)=137, a(5)=249`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299262

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P1484301327579649145.Spec : Prop :=
  ∀ n, P1484301327579649145.a n = A299262 n

theorem P1484301327579649145.correct : P1484301327579649145.Spec := by
  intro n
  simp only [A299262]

end A299262

/-! ## A299262.P13994337346026157607

`∑[A299256(n)]`
-/

namespace A299262.P13994337346026157607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299262.P13994337346026157607

namespace A299262

/-- `∑[A299256(n)]` -/
def P13994337346026157607.Spec : Prop :=
  ∀ n, P13994337346026157607.a n = A299262 n

end A299262

/-! ## A299262.P18073839559484685448

`∑[A009946(n)-2%(n+1)]`
-/

namespace A299262.P18073839559484685448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n - ((2 % (n + 1) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299262.P18073839559484685448

namespace A299262

/-- `∑[A009946(n)-2%(n+1)]` -/
def P18073839559484685448.Spec : Prop :=
  ∀ n, P18073839559484685448.a n = A299262 n

end A299262

/-! ## A299262.P8333204348764111774

`∑[2*A008580(n)]-A008580(n)`
-/

namespace A299262.P8333204348764111774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008580 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008580 n

end

end A299262.P8333204348764111774

namespace A299262

/-- `∑[2*A008580(n)]-A008580(n)` -/
def P8333204348764111774.Spec : Prop :=
  ∀ n, P8333204348764111774.a n = A299262 n

end A299262

/-! ## A299262.P10288347493165401041

`(A007202(n)+2)%A005898(n)+1`
-/

namespace A299262.P10288347493165401041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007202 n + 2) (A005898 n) + 1

end

end A299262.P10288347493165401041

namespace A299262

/-- `(A007202(n)+2)%A005898(n)+1` -/
def P10288347493165401041.Spec : Prop :=
  ∀ n, P10288347493165401041.a n = A299262 n

end A299262

/-! ## A299262.P17055524107159928736

`∑[∑[2*A008579(n)]-A008579(n)]`
-/

namespace A299262.P17055524107159928736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008579 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299262.P17055524107159928736

namespace A299262

/-- `∑[∑[2*A008579(n)]-A008579(n)]` -/
def P17055524107159928736.Spec : Prop :=
  ∀ n, P17055524107159928736.a n = A299262 n

end A299262

/-! ## A299262.P10504889088636569202

`A299256(n%A299256(n))+a(n-1)` with `a(0)=1`
-/

namespace A299262.P10504889088636569202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299256 (Int.tmod (n : ℤ) (A299256 n)).toNat + a (n - 1)

end

end A299262.P10504889088636569202

namespace A299262

/-- `A299256(n%A299256(n))+a(n-1)` -/
def P10504889088636569202.Spec : Prop :=
  ∀ n, P10504889088636569202.a n = A299262 n

end A299262

/-! ## A299262.P5720989328937693135

`∑[A009946(n)-A107279(A002322(n+1))]`
-/

namespace A299262.P5720989328937693135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n - A107279 (A002322 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299262.P5720989328937693135

namespace A299262

/-- `∑[A009946(n)-A107279(A002322(n+1))]` -/
def P5720989328937693135.Spec : Prop :=
  ∀ n, P5720989328937693135.a n = A299262 n

end A299262

/-! ## A299262.P18124623612573596090

`∑[A078529(A189320(n+2))]`
-/

namespace A299262.P18124623612573596090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078529 (A189320 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299262.P18124623612573596090

namespace A299262

/-- `∑[A078529(A189320(n+2))]` -/
def P18124623612573596090.Spec : Prop :=
  ∀ n, P18124623612573596090.a n = A299262 n

end A299262

/-! ## A299262.P6575984410796862879

`∑[A009946(n)-A107279(n²-n)]`
-/

namespace A299262.P6575984410796862879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009946 n - A107279 (n ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299262.P6575984410796862879

namespace A299262

/-- `∑[A009946(n)-A107279(n²-n)]` -/
def P6575984410796862879.Spec : Prop :=
  ∀ n, P6575984410796862879.a n = A299262 n

end A299262

/-!
# A299263: Partial sums of A299257.

The programs for A299263, there is no canonical definition to state claims against.
-/

/-! ## A299263.P16010774506852969698

`∑[A299257(n)]`
-/

namespace A299263.P16010774506852969698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299257 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299263.P16010774506852969698

/-! ## A299263.P2954445576304166810

`A299257(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A299263.P2954445576304166810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299257 n + a (A023443 n).toNat

end

end A299263.P2954445576304166810

/-! ## A299263.P11121836417312738009

`∑[∑[2*A250122(n)]-A250122(n)]`
-/

namespace A299263.P11121836417312738009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A250122 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A250122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299263.P11121836417312738009

/-! ## A299263.P14441557992054728930

`∑[∑[A005843(A250122(n))]-A250122(n)]`
-/

namespace A299263.P14441557992054728930
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A250122 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A250122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299263.P14441557992054728930

/-! ## A299263.P12830265155626173805

`a(n-1)+A299257(n)+A000122(A000040(n+1))` with `a(0)=1`
-/

namespace A299263.P12830265155626173805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A299257 n + A000122 (A000040 (n + 1)).toNat)

end

end A299263.P12830265155626173805

/-! ## A299263.P14731899192590116453

`∑[A299232(∑[A250122(n)])-A250122(n)]`
-/

namespace A299263.P14731899192590116453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299232 (∑ j ∈ Finset.range (n + 1), f2 j).toNat - A250122 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299263.P14731899192590116453

/-! ## A299263.P1872370539286731555

`∑[A008574(∑[A250122(n)])/2-A250122(n)]`
-/

namespace A299263.P1872370539286731555
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250122 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008574 (∑ j ∈ Finset.range (n + 1), f2 j).toNat : ℚ) / 2 - (A250122 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299263.P1872370539286731555

/-!
# A299264: Partial sums of A299258.

The programs for A299264, the canonical program `A299264.P17963270887005284218` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299264 has offset 0).

The definition of A299264 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299264.P17963270887005284218

`∑[A299258(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A299264

/-- `∑[A299258(n)]` -/
def P17963270887005284218.Spec : Prop :=
  ∀ n, P17963270887005284218.a n = A299264 n

theorem P17963270887005284218.correct : P17963270887005284218.Spec := by
  intro n
  simp only [A299264]

end A299264

/-! ## A299264.P7028865917695350908

`∑[2*A265078(n)]-A265078(n)`
-/

namespace A299264.P7028865917695350908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A265078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A265078 n

end

end A299264.P7028865917695350908

namespace A299264

/-- `∑[2*A265078(n)]-A265078(n)` -/
def P7028865917695350908.Spec : Prop :=
  ∀ n, P7028865917695350908.a n = A299264 n

end A299264

/-! ## A299264.P11937519921180952393

`a(n-1)+A299258(n)%A090076(n+1)` with `a(0)=1`
-/

namespace A299264.P11937519921180952393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A299258 n) (A090076 (n + 1))

end

end A299264.P11937519921180952393

namespace A299264

/-- `a(n-1)+A299258(n)%A090076(n+1)` -/
def P11937519921180952393.Spec : Prop :=
  ∀ n, P11937519921180952393.a n = A299264 n

end A299264

/-! ## A299264.P18163844541028393830

`∑[A265078(n)+A265078(n)-A072154(n)]`
-/

namespace A299264.P18163844541028393830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265078 n + (A265078 n - A072154 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299264.P18163844541028393830

namespace A299264

/-- `∑[A265078(n)+A265078(n)-A072154(n)]` -/
def P18163844541028393830.Spec : Prop :=
  ∀ n, P18163844541028393830.a n = A299264 n

end A299264

/-! ## A299264.P1087775590859490735

`∑[∑[A005843(A072154(n))]-A072154(n)]`
-/

namespace A299264.P1087775590859490735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A072154 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A072154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299264.P1087775590859490735

namespace A299264

/-- `∑[∑[A005843(A072154(n))]-A072154(n)]` -/
def P1087775590859490735.Spec : Prop :=
  ∀ n, P1087775590859490735.a n = A299264 n

end A299264

/-! ## A299264.P15514550066350397056

`∑[A005843(A265078(n))-A072154(n)]`
-/

namespace A299264.P15514550066350397056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A265078 n).toNat - A072154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299264.P15514550066350397056

namespace A299264

/-- `∑[A005843(A265078(n))-A072154(n)]` -/
def P15514550066350397056.Spec : Prop :=
  ∀ n, P15514550066350397056.a n = A299264 n

end A299264

/-! ## A299264.P17785989157820806904

`∑[A001651(A008137(n))]`
-/

namespace A299264.P17785989157820806904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A008137 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299264.P17785989157820806904

namespace A299264

/-- `∑[A001651(A008137(n))]` -/
def P17785989157820806904.Spec : Prop :=
  ∀ n, P17785989157820806904.a n = A299264 n

end A299264

/-!
# A299265: Partial sums of A299259.

The programs for A299265, the canonical program `A299265.P7541632450510773680` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299265 has offset 0).

The definition of A299265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299265.P7541632450510773680

`(8*n^3+12*n²+24*n+9+n%3)/9`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299265

/-- `(8*n^3+12*n²+24*n+9+n%3)/9` -/
def P7541632450510773680.Spec : Prop :=
  ∀ n, P7541632450510773680.a n = (A299265 n : ℚ)

end A299265

/-! ## A299265.P17781776149682967636

`∑[A299259(n)]`
-/

namespace A299265.P17781776149682967636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299259 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299265.P17781776149682967636

namespace A299265

/-- `∑[A299259(n)]` -/
def P17781776149682967636.Spec : Prop :=
  ∀ n, P17781776149682967636.a n = A299265 n

end A299265

/-! ## A299265.P6924784918241356662

`A175812(n)+A007904(n)`
-/

namespace A299265.P6924784918241356662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175812 n + A007904 n

end

end A299265.P6924784918241356662

namespace A299265

/-- `A175812(n)+A007904(n)` -/
def P6924784918241356662.Spec : Prop :=
  ∀ n, P6924784918241356662.a n = A299265 n

end A299265

/-! ## A299265.P4760644904789275603

`A358042(n)+A005894(n)`
-/

namespace A299265.P4760644904789275603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358042 n + A005894 n

end

end A299265.P4760644904789275603

namespace A299265

/-- `A358042(n)+A005894(n)` -/
def P4760644904789275603.Spec : Prop :=
  ∀ n, P4760644904789275603.a n = A299265 n

end A299265

/-! ## A299265.P4715499376173439806

`∑[A071619(n)+A005893(n)]`
-/

namespace A299265.P4715499376173439806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 n + A005893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299265.P4715499376173439806

namespace A299265

/-- `∑[A071619(n)+A005893(n)]` -/
def P4715499376173439806.Spec : Prop :=
  ∀ n, P4715499376173439806.a n = A299265 n

end A299265

/-! ## A299265.P10255279521298816530

`∑[A113422(n)+A010000(n)]`
-/

namespace A299265.P10255279521298816530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113422 n + A010000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299265.P10255279521298816530

namespace A299265

/-- `∑[A113422(n)+A010000(n)]` -/
def P10255279521298816530.Spec : Prop :=
  ∀ n, P10255279521298816530.a n = A299265 n

end A299265

/-! ## A299265.P10128442519261328068

`∑[A005918(n)-A000212(n)]`
-/

namespace A299265.P10128442519261328068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005918 n - A000212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299265.P10128442519261328068

namespace A299265

/-- `∑[A005918(n)-A000212(n)]` -/
def P10128442519261328068.Spec : Prop :=
  ∀ n, P10128442519261328068.a n = A299265 n

end A299265

/-! ## A299265.P2370782277371999035

`A063488(n+1)-A181286(n)`
-/

namespace A299265.P2370782277371999035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063488 (n + 1) - A181286 n

end

end A299265.P2370782277371999035

namespace A299265

/-- `A063488(n+1)-A181286(n)` -/
def P2370782277371999035.Spec : Prop :=
  ∀ n, P2370782277371999035.a n = A299265 n

end A299265

/-! ## A299265.P15246678748582962525

`2*A005894(n)-A051462(n)`
-/

namespace A299265.P15246678748582962525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005894 n - A051462 n

end

end A299265.P15246678748582962525

namespace A299265

/-- `2*A005894(n)-A051462(n)` -/
def P15246678748582962525.Spec : Prop :=
  ∀ n, P15246678748582962525.a n = A299265 n

end A299265

/-! ## A299265.P18096984544592921269

`2*A001845(n)-A299261(n)`
-/

namespace A299265.P18096984544592921269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001845 n - A299261 n

end

end A299265.P18096984544592921269

namespace A299265

/-- `2*A001845(n)-A299261(n)` -/
def P18096984544592921269.Spec : Prop :=
  ∀ n, P18096984544592921269.a n = A299265 n

end A299265

/-! ## A299265.P8549974172141015290

`∑[2*A008577(n)-A008576(n)]`
-/

namespace A299265.P8549974172141015290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008577 n - A008576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299265.P8549974172141015290

namespace A299265

/-- `∑[2*A008577(n)-A008576(n)]` -/
def P8549974172141015290.Spec : Prop :=
  ∀ n, P8549974172141015290.a n = A299265 n

end A299265

/-! ## A299265.P7483241099559135074

`A005894(n)+A005898(n)-A299261(n)`
-/

namespace A299265.P7483241099559135074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 n + (A005898 n - A299261 n)

end

end A299265.P7483241099559135074

namespace A299265

/-- `A005894(n)+A005898(n)-A299261(n)` -/
def P7483241099559135074.Spec : Prop :=
  ∀ n, P7483241099559135074.a n = A299265 n

end A299265

/-! ## A299265.P8383137939925721667

`∑[A084672(2*n)]+n`
-/

namespace A299265.P8383137939925721667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084672 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A299265.P8383137939925721667

namespace A299265

/-- `∑[A084672(2*n)]+n` -/
def P8383137939925721667.Spec : Prop :=
  ∀ n, P8383137939925721667.a n = A299265 n

end A299265

/-! ## A299265.P13235344173431113507

`A060999(2*n)+Δ[n²]`
-/

namespace A299265.P13235344173431113507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060999 (2 * n) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A299265.P13235344173431113507

namespace A299265

/-- `A060999(2*n)+Δ[n²]` -/
def P13235344173431113507.Spec : Prop :=
  ∀ n, P13235344173431113507.a n = A299265 n

end A299265

/-! ## A299265.P13858216508582823332

`∑[A071619(2*n)+1]+n`
-/

namespace A299265.P13858216508582823332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071619 (2 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A299265.P13858216508582823332

namespace A299265

/-- `∑[A071619(2*n)+1]+n` -/
def P13858216508582823332.Spec : Prop :=
  ∀ n, P13858216508582823332.a n = A299265 n

end A299265

/-! ## A299265.P5715721419753450010

`A004006(2*n+1)-∑[A256320(n)]`
-/

namespace A299265.P5715721419753450010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299265.P5715721419753450010

namespace A299265

/-- `A004006(2*n+1)-∑[A256320(n)]` -/
def P5715721419753450010.Spec : Prop :=
  ∀ n, P5715721419753450010.a n = A299265 n

end A299265

/-! ## A299265.P11955754102860426171

`A175812(2*n+1)+A175812(2*n)`
-/

namespace A299265.P11955754102860426171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175812 (2 * n + 1) + A175812 (2 * n)

end

end A299265.P11955754102860426171

namespace A299265

/-- `A175812(2*n+1)+A175812(2*n)` -/
def P11955754102860426171.Spec : Prop :=
  ∀ n, P11955754102860426171.a n = A299265 n

end A299265

/-! ## A299265.P11890875529492444203

`A008619(2*n)+A060999(2*n)+n`
-/

namespace A299265.P11890875529492444203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) + (A060999 (2 * n) + (n : ℤ))

end

end A299265.P11890875529492444203

namespace A299265

/-- `A008619(2*n)+A060999(2*n)+n` -/
def P11890875529492444203.Spec : Prop :=
  ∀ n, P11890875529492444203.a n = A299265 n

end A299265

/-! ## A299265.P14093188963294657256

`A008769(4*n+1)`
-/

namespace A299265.P14093188963294657256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008769 (4 * n + 1)

end

end A299265.P14093188963294657256

namespace A299265

/-- `A008769(4*n+1)` -/
def P14093188963294657256.Spec : Prop :=
  ∀ n, P14093188963294657256.a n = A299265 n

end A299265

/-! ## A299265.P16547696366356430706

`∑[A008751(2*n+2*n+1)]`
-/

namespace A299265.P16547696366356430706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008751 (2 * n + (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299265.P16547696366356430706

namespace A299265

/-- `∑[A008751(2*n+2*n+1)]` -/
def P16547696366356430706.Spec : Prop :=
  ∀ n, P16547696366356430706.a n = A299265 n

end A299265

/-!
# A299267: Partial sums of A299266.

The programs for A299267, there is no canonical definition to state claims against.
-/

/-! ## A299267.P7950730039190486235

`∑[A299266(n)]`
-/

namespace A299267.P7950730039190486235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299266 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299267.P7950730039190486235

/-! ## A299267.P15481909009307679333

`A299266(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A299267.P15481909009307679333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299266 n + a (A023443 n).toNat

end

end A299267.P15481909009307679333

/-! ## A299267.P2804414909241359856

`A299266(n)+a(A000027(n+1)-2)` with `a(0)=1`
-/

namespace A299267.P2804414909241359856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299266 n + a (A000027 (n + 1) - 2).toNat

end

end A299267.P2804414909241359856

/-! ## A299267.P4712059030471395684

`a(n-1)+A054977(n)*A299266(n)` with `a(0)=1`
-/

namespace A299267.P4712059030471395684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A054977 n * A299266 n

end

end A299267.P4712059030471395684

/-! ## A299267.P16705981210716428560

`a(n-1)+A057427(n)*A299266(n)` with `a(0)=1`
-/

namespace A299267.P16705981210716428560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A299266 n

end

end A299267.P16705981210716428560

/-! ## A299267.P1152211913111478523

`A299266(n)+A000027(a(n-1))` with `a(0)=1`
-/

namespace A299267.P1152211913111478523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299266 n + A000027 (a (n - 1)).toNat

end

end A299267.P1152211913111478523

/-!
# A299268: Coordination sequence for "crs" 3D uniform tiling formed from tetrahedra and truncated tetrahedra.

The programs for A299268, the canonical program `A299268.P15353397656130371409` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299268 has offset 0).

The definition of A299268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299268.P15353397656130371409

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=6, a(2)=18, a(3)=48, a(4)=78, a(5)=126, a(6)=182`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299268

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P15353397656130371409.Spec : Prop :=
  ∀ n, P15353397656130371409.a n = A299268 n

theorem P15353397656130371409.correct : P15353397656130371409.Spec := by
  intro n
  simp only [A299268]

end A299268

/-! ## A299268.P8076932764064922782

`A001348(a(n-2))` with `a(0)=1, a(1)=6, a(2)=18, a(3)=48, a(4)=78, a(5)=126`
-/

namespace A299268.P8076932764064922782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6, 18, 48, 78, 126] fun n a =>
  A001348 (a (n - 2)).toNat

end

end A299268.P8076932764064922782

namespace A299268

/-- `A001348(a(n-2))` -/
def P8076932764064922782.Spec : Prop :=
  ∀ n, P8076932764064922782.a n = A299268 n

end A299268

/-!
# A299269: Partial sums of A299268.

The programs for A299269, the canonical program `A299269.P16181950100886024288` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299269 has offset 0).

The definition of A299269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299269.P16181950100886024288

`∑[A299268(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A299269

/-- `∑[A299268(n)]` -/
def P16181950100886024288.Spec : Prop :=
  ∀ n, P16181950100886024288.a n = A299269 n

theorem P16181950100886024288.correct : P16181950100886024288.Spec := by
  intro n
  simp only [A299269]

end A299269

/-! ## A299269.P17667942105408288874

`A299268(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A299269.P17667942105408288874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299268 n + a (A023443 n).toNat

end

end A299269.P17667942105408288874

namespace A299269

/-- `A299268(n)+a(A023443(n))` -/
def P17667942105408288874.Spec : Prop :=
  ∀ n, P17667942105408288874.a n = A299269 n

end A299269

/-! ## A299269.P13358621919832050914

`A299268(n)+a(n-A007318(C(2, n)))` with `a(0)=1`
-/

namespace A299269.P13358621919832050914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299268 n + a ((n : ℤ) - A007318 (Nat.choose 2 n)).toNat

end

end A299269.P13358621919832050914

namespace A299269

/-- `A299268(n)+a(n-A007318(C(2, n)))` -/
def P13358621919832050914.Spec : Prop :=
  ∀ n, P13358621919832050914.a n = A299269 n

end A299269

/-! ## A299269.P3927799783400790902

`A299268(n)+a(n-A000038(n+1)-1)` with `a(0)=1`
-/

namespace A299269.P3927799783400790902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299268 n + a ((n : ℤ) - A000038 (n + 1) - 1).toNat

end

end A299269.P3927799783400790902

namespace A299269

/-- `A299268(n)+a(n-A000038(n+1)-1)` -/
def P3927799783400790902.Spec : Prop :=
  ∀ n, P3927799783400790902.a n = A299269 n

end A299269

/-! ## A299269.P10322933318128201770

`a(n-1)+A299268(n)%A054138(n+4)` with `a(0)=1`
-/

namespace A299269.P10322933318128201770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A299268 n) (A054138 (n + 4))

end

end A299269.P10322933318128201770

namespace A299269

/-- `a(n-1)+A299268(n)%A054138(n+4)` -/
def P10322933318128201770.Spec : Prop :=
  ∀ n, P10322933318128201770.a n = A299269 n

end A299269

/-!
# A299270: Number of Motzkin paths of length n with all ascents ending at even heights.

The programs for A299270, there is no canonical definition to state claims against.
-/

/-! ## A299270.P11023088763903764338

`A190171(n)-A010051(A078214(n+1))`
-/

namespace A299270.P11023088763903764338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190171 n - A010051 (A078214 (n + 1)).toNat

end

end A299270.P11023088763903764338

/-! ## A299270.P17246252817031860633

`A190171(n)-A185238(A050027(n+1))`
-/

namespace A299270.P17246252817031860633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190171 n - A185238 (A050027 (n + 1)).toNat

end

end A299270.P17246252817031860633

/-!
# A299271: Number of Motzkin paths of length n with all ascents ending at odd heights.

The programs for A299271, there is no canonical definition to state claims against.
-/

/-! ## A299271.P3797344362875680775

`A110334(n+1)-A025466(A110334(n+1))`
-/

namespace A299271.P3797344362875680775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110334 (n + 1) - A025466 (A110334 (n + 1)).toNat

end

end A299271.P3797344362875680775

/-! ## A299271.P6625994539599732952

`A110334(n+1)-A193095(A015066(n+1))`
-/

namespace A299271.P6625994539599732952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110334 (n + 1) - A193095 (A015066 (n + 1)).toNat

end

end A299271.P6625994539599732952

/-! ## A299271.P12973555283808007338

`A110334(n+1)-A063524(A203363(n+1))`
-/

namespace A299271.P12973555283808007338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110334 (n + 1) - A063524 (A203363 (n + 1)).toNat

end

end A299271.P12973555283808007338

/-! ## A299271.P9393053653002058532

`A110334(n+1)-A193095(A110334(n+1)-1)`
-/

namespace A299271.P9393053653002058532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110334 (n + 1) - A193095 (A110334 (n + 1) - 1).toNat

end

end A299271.P9393053653002058532

/-! ## A299271.P523623456976706845

`A110334(n+1)-A014083(A226608(2*(n+1)))`
-/

namespace A299271.P523623456976706845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110334 (n + 1) - A014083 (A226608 (2 * (n + 1))).toNat

end

end A299271.P523623456976706845

/-!
# A299272: Coordination sequence for "flu" 3D uniform tiling formed from tetrahedra, rhombicuboctahedra, and cubes.

The programs for A299272, the canonical program `A299272.P18245078637471870899` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299272 has offset 0).

The definition of A299272 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299272.P18245078637471870899

`3*a(n-3)-3*a(n-6)+a(n-9)` with `a(0)=1, a(1)=6, a(2)=18, a(3)=37, a(4)=63, a(5)=99, a(6)=142, a(7)=189, a(8)=249, a(9)=317`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299272

/-- `3*a(n-3)-3*a(n-6)+a(n-9)` -/
def P18245078637471870899.Spec : Prop :=
  ∀ n, P18245078637471870899.a n = A299272 n

theorem P18245078637471870899.correct : P18245078637471870899.Spec := by
  intro n
  simp only [A299272]

end A299272

/-! ## A299272.P3685558553783256172

`A005899(n)-A185395(n)`
-/

namespace A299272.P3685558553783256172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n - A185395 n

end

end A299272.P3685558553783256172

namespace A299272

/-- `A005899(n)-A185395(n)` -/
def P3685558553783256172.Spec : Prop :=
  ∀ n, P3685558553783256172.a n = A299272 n

end A299272

/-! ## A299272.P17661668280409915983

`n²+A005918(n)-A185395(n)`
-/

namespace A299272.P17661668280409915983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A005918 n - A185395 n)

end

end A299272.P17661668280409915983

namespace A299272

/-- `n²+A005918(n)-A185395(n)` -/
def P17661668280409915983.Spec : Prop :=
  ∀ n, P17661668280409915983.a n = A299272 n

end A299272

/-! ## A299272.P3278170013384243933

`A001105(n)+A005893(n)-A185395(n)`
-/

namespace A299272.P3278170013384243933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001105 n + (A005893 n - A185395 n)

end

end A299272.P3278170013384243933

namespace A299272

/-- `A001105(n)+A005893(n)-A185395(n)` -/
def P3278170013384243933.Spec : Prop :=
  ∀ n, P3278170013384243933.a n = A299272 n

end A299272

/-! ## A299272.P13847283369945078420

`A010006(n)-(A185395(n)+A135453(n))`
-/

namespace A299272.P13847283369945078420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010006 n - (A185395 n + A135453 n)

end

end A299272.P13847283369945078420

namespace A299272

/-- `A010006(n)-(A185395(n)+A135453(n))` -/
def P13847283369945078420.Spec : Prop :=
  ∀ n, P13847283369945078420.a n = A299272 n

end A299272

/-! ## A299272.P15231958006178619901

`A001844(n)-(A005843(n)+1)+A005893(n)-A185395(n)`
-/

namespace A299272.P15231958006178619901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - (A005843 n + 1) + (A005893 n - A185395 n)

end

end A299272.P15231958006178619901

namespace A299272

/-- `A001844(n)-(A005843(n)+1)+A005893(n)-A185395(n)` -/
def P15231958006178619901.Spec : Prop :=
  ∀ n, P15231958006178619901.a n = A299272 n

end A299272

/-! ## A299272.P3600517661593223192

`A010000(2*n)-A185395(n)`
-/

namespace A299272.P3600517661593223192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 (2 * n) - A185395 n

end

end A299272.P3600517661593223192

namespace A299272

/-- `A010000(2*n)-A185395(n)` -/
def P3600517661593223192.Spec : Prop :=
  ∀ n, P3600517661593223192.a n = A299272 n

end A299272

/-! ## A299272.P3872410039811100028

`A318500(A005897(n))-A185395(n)`
-/

namespace A299272.P3872410039811100028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318500 (A005897 n).toNat - A185395 n

end

end A299272.P3872410039811100028

namespace A299272

/-- `A318500(A005897(n))-A185395(n)` -/
def P3872410039811100028.Spec : Prop :=
  ∀ n, P3872410039811100028.a n = A299272 n

end A299272

/-! ## A299272.P8726209987865128057

`A185395(n)+A004275(A005893(n)-A185395(n))`
-/

namespace A299272.P8726209987865128057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185395 n + A004275 (A005893 n - A185395 n).toNat

end

end A299272.P8726209987865128057

namespace A299272

/-- `A185395(n)+A004275(A005893(n)-A185395(n))` -/
def P8726209987865128057.Spec : Prop :=
  ∀ n, P8726209987865128057.a n = A299272 n

end A299272

/-! ## A299272.P13524655024144535243

`A004275(A005893(n))-A185395(n)`
-/

namespace A299272.P13524655024144535243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A005893 n).toNat - A185395 n

end

end A299272.P13524655024144535243

namespace A299272

/-- `A004275(A005893(n))-A185395(n)` -/
def P13524655024144535243.Spec : Prop :=
  ∀ n, P13524655024144535243.a n = A299272 n

end A299272

/-!
# A299273: Partial sums of A299272.

The programs for A299273, the canonical program `A299273.P16369362884452258853` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299273 has offset 0).

The definition of A299273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299273.P16369362884452258853

`∑[A299272(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A299273

/-- `∑[A299272(n)]` -/
def P16369362884452258853.Spec : Prop :=
  ∀ n, P16369362884452258853.a n = A299273 n

theorem P16369362884452258853.correct : P16369362884452258853.Spec := by
  intro n
  simp only [A299273]

end A299273

/-! ## A299273.P17542595769823113465

`A001845(n)-∑[A185395(n)]`
-/

namespace A299273.P17542595769823113465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001845 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299273.P17542595769823113465

namespace A299273

/-- `A001845(n)-∑[A185395(n)]` -/
def P17542595769823113465.Spec : Prop :=
  ∀ n, P17542595769823113465.a n = A299273 n

end A299273

/-! ## A299273.P4580068435728285455

`∑[A005899(n)-A185395(n)]`
-/

namespace A299273.P4580068435728285455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n - A185395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299273.P4580068435728285455

namespace A299273

/-- `∑[A005899(n)-A185395(n)]` -/
def P4580068435728285455.Spec : Prop :=
  ∀ n, P4580068435728285455.a n = A299273 n

end A299273

/-! ## A299273.P8571009762623203414

`A299272(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A299273.P8571009762623203414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299272 n + a (A023443 n).toNat

end

end A299273.P8571009762623203414

namespace A299273

/-- `A299272(n)+a(A023443(n))` -/
def P8571009762623203414.Spec : Prop :=
  ∀ n, P8571009762623203414.a n = A299273 n

end A299273

/-! ## A299273.P16153335160845337966

`A004006(2*n+1)-∑[A185395(n)]`
-/

namespace A299273.P16153335160845337966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004006 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299273.P16153335160845337966

namespace A299273

/-- `A004006(2*n+1)-∑[A185395(n)]` -/
def P16153335160845337966.Spec : Prop :=
  ∀ n, P16153335160845337966.a n = A299273 n

end A299273

/-! ## A299273.P15610115294323821043

`∑[A004275(A005893(n))-A185395(n)]`
-/

namespace A299273.P15610115294323821043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A005893 n).toNat - A185395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299273.P15610115294323821043

namespace A299273

/-- `∑[A004275(A005893(n))-A185395(n)]` -/
def P15610115294323821043.Spec : Prop :=
  ∀ n, P15610115294323821043.a n = A299273 n

end A299273

/-!
# A299275: Partial sums of A299274.

The programs for A299275, there is no canonical definition to state claims against.
-/

/-! ## A299275.P10389746861289403994

`∑[A299274(n)]`
-/

namespace A299275.P10389746861289403994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299275.P10389746861289403994

/-! ## A299275.P10006552697108048772

`A299274(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A299275.P10006552697108048772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299274 n + a (A023443 n).toNat

end

end A299275.P10006552697108048772

/-! ## A299275.P11393748274665624652

`a(n-1)+A299274(n)+A000007(n)` with `a(0)=1`
-/

namespace A299275.P11393748274665624652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A299274 n + A000007 n)

end

end A299275.P11393748274665624652

/-! ## A299275.P7960059036309368853

`a(n-1)+A299274(n)%A135705(n+1)` with `a(0)=1`
-/

namespace A299275.P7960059036309368853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A299274 n) (A135705 (n + 1))

end

end A299275.P7960059036309368853

/-! ## A299275.P11939106490387394197

`a(n-1)+A000034(2*A057359(n²))*A299274(n)` with `a(0)=1`
-/

namespace A299275.P11939106490387394197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A000034 (2 * A057359 (n ^ 2)).toNat * A299274 n

end

end A299275.P11939106490387394197

/-!
# A299276: Partial sums of A008137.

The programs for A299276, the canonical program `A299276.P15175403599523084453` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299276 has offset 0).

The definition of A299276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299276.P15175403599523084453

`∑[A008137(n)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A299276

/-- `∑[A008137(n)]` -/
def P15175403599523084453.Spec : Prop :=
  ∀ n, P15175403599523084453.a n = A299276 n

theorem P15175403599523084453.correct : P15175403599523084453.Spec := by
  intro n
  simp only [A299276]

end A299276

/-! ## A299276.P3802614660282802662

`∑[A005893(n)-floor(2/5*n²)]`
-/

namespace A299276.P3802614660282802662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 n - ⌊(2 : ℚ) / 5 * (n ^ 2 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299276.P3802614660282802662

namespace A299276

/-- `∑[A005893(n)-floor(2/5*n²)]` -/
def P3802614660282802662.Spec : Prop :=
  ∀ n, P3802614660282802662.a n = A299276 n

end A299276

/-! ## A299276.P9506599806139400168

`∑[∑[A113127(n)-A090223(n)]]`
-/

namespace A299276.P9506599806139400168
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n - A090223 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299276.P9506599806139400168

namespace A299276

/-- `∑[∑[A113127(n)-A090223(n)]]` -/
def P9506599806139400168.Spec : Prop :=
  ∀ n, P9506599806139400168.a n = A299276 n

end A299276

/-! ## A299276.P3971553685919106516

`a(n-1)+A008137(n)%A005899(n)` with `a(0)=1`
-/

namespace A299276.P3971553685919106516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A008137 n) (A005899 n)

end

end A299276.P3971553685919106516

namespace A299276

/-- `a(n-1)+A008137(n)%A005899(n)` -/
def P3971553685919106516.Spec : Prop :=
  ∀ n, P3971553685919106516.a n = A299276 n

end A299276

/-! ## A299276.P9431555148851407092

`A008137(n%A005893(n))+a(n-1)` with `a(0)=1`
-/

namespace A299276.P9431555148851407092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008137 (Int.tmod (n : ℤ) (A005893 n)).toNat + a (n - 1)

end

end A299276.P9431555148851407092

namespace A299276

/-- `A008137(n%A005893(n))+a(n-1)` -/
def P9431555148851407092.Spec : Prop :=
  ∀ n, P9431555148851407092.a n = A299276 n

end A299276

/-! ## A299276.P5245152119675844051

`A008137(lcm(n, A020639(n)))+a(n-1)` with `a(0)=1`
-/

namespace A299276.P5245152119675844051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008137 (Int.lcm (n : ℤ) (A020639 n)) + a (n - 1)

end

end A299276.P5245152119675844051

namespace A299276

/-- `A008137(lcm(n, A020639(n)))+a(n-1)` -/
def P5245152119675844051.Spec : Prop :=
  ∀ n, P5245152119675844051.a n = A299276 n

end A299276

/-! ## A299276.P5901091208170351929

`round(A049480(n+1)+A063488(n+1)/5)`
-/

namespace A299276.P5901091208170351929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A049480 (n + 1) : ℚ) + (A063488 (n + 1) : ℚ) / 5)

end

end A299276.P5901091208170351929

namespace A299276

/-- `round(A049480(n+1)+A063488(n+1)/5)` -/
def P5901091208170351929.Spec : Prop :=
  ∀ n, P5901091208170351929.a n = A299276 n

end A299276

/-! ## A299276.P16101422488326273953

`∑[A047435(A010000(n))]`
-/

namespace A299276.P16101422488326273953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047435 (A010000 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299276.P16101422488326273953

namespace A299276

/-- `∑[A047435(A010000(n))]` -/
def P16101422488326273953.Spec : Prop :=
  ∀ n, P16101422488326273953.a n = A299276 n

end A299276

/-! ## A299276.P17740510366585459168

`∑[A090223(A005893(n))+1]`
-/

namespace A299276.P17740510366585459168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (A005893 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299276.P17740510366585459168

namespace A299276

/-- `∑[A090223(A005893(n))+1]` -/
def P17740510366585459168.Spec : Prop :=
  ∀ n, P17740510366585459168.a n = A299276 n

end A299276

/-! ## A299276.P6911953912634931300

`∑[A090223(∑[A113127(n)])+1]`
-/

namespace A299276.P6911953912634931300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113127 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 (∑ j ∈ Finset.range (n + 1), f2 j).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299276.P6911953912634931300

namespace A299276

/-- `∑[A090223(∑[A113127(n)])+1]` -/
def P6911953912634931300.Spec : Prop :=
  ∀ n, P6911953912634931300.a n = A299276 n

end A299276

/-!
# A299277: Coordination sequence for "pcu-i" 3D uniform tiling.

The programs for A299277, there is no canonical definition to state claims against.
-/

/-! ## A299277.P7496398945421621797

`∑[n]+A342859(A038384(n))+A038410(n)`
-/

namespace A299277.P7496398945421621797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A342859 (A038384 n).toNat + A038410 n)

end

end A299277.P7496398945421621797

/-! ## A299277.P677972515667181298

`A184421(A038406(n))`
-/

namespace A299277.P677972515667181298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 (A038406 n).toNat

end

end A299277.P677972515667181298

/-! ## A299277.P16673139198173205199

`A093641(A260003((n+1)²))`
-/

namespace A299277.P16673139198173205199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (A260003 ((n + 1) ^ 2)).toNat

end

end A299277.P16673139198173205199

/-!
# A299278: Partial sums of A299277.

The programs for A299278, there is no canonical definition to state claims against.
-/

/-! ## A299278.P7820892901506558540

`∑[A299277(n)]`
-/

namespace A299278.P7820892901506558540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299277 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299278.P7820892901506558540

/-! ## A299278.P14101416899426484259

`A299277(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A299278.P14101416899426484259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299277 n + a (A023443 n).toNat

end

end A299278.P14101416899426484259

/-! ## A299278.P5347539593702458375

`∑[A184421(A038406(n))]`
-/

namespace A299278.P5347539593702458375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 (A038406 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299278.P5347539593702458375

/-!
# A299279: Coordination sequence for "reo" 3D uniform tiling.

The programs for A299279, the canonical program `A299279.P3827596495675913127` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299279 has offset 0).

The definition of A299279 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299279.P3827596495675913127

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=8, a(2)=30, a(3)=68, a(4)=126, a(5)=180, a(6)=286, a(7)=348`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299279

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P3827596495675913127.Spec : Prop :=
  ∀ n, P3827596495675913127.a n = A299279 n

theorem P3827596495675913127.correct : P3827596495675913127.Spec := by
  intro n
  simp only [A299279]

end A299279

/-!
# A299280: Partial sums of A299279.

The programs for A299280, the canonical program `A299280.P2212089132227130009` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299280 has offset 0).

The definition of A299280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299280.P2212089132227130009

`∑[A299279(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A299280

/-- `∑[A299279(n)]` -/
def P2212089132227130009.Spec : Prop :=
  ∀ n, P2212089132227130009.a n = A299280 n

theorem P2212089132227130009.correct : P2212089132227130009.Spec := by
  intro n
  simp only [A299280]

end A299280

/-! ## A299280.P549389670473277645

`A299279(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A299280.P549389670473277645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299279 n + a (A023443 n).toNat

end

end A299280.P549389670473277645

namespace A299280

/-- `A299279(n)+a(A023443(n))` -/
def P549389670473277645.Spec : Prop :=
  ∀ n, P549389670473277645.a n = A299280 n

end A299280

/-! ## A299280.P4751536481725648315

`A299279(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A299280.P4751536481725648315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299279 (A028310 n).toNat + a (n - 1)

end

end A299280.P4751536481725648315

namespace A299280

/-- `A299279(A028310(n))+a(n-1)` -/
def P4751536481725648315.Spec : Prop :=
  ∀ n, P4751536481725648315.a n = A299280 n

end A299280

/-! ## A299280.P5643986216861021635

`A299279(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A299280.P5643986216861021635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299279 n + a (A004273 n - (n : ℤ)).toNat

end

end A299280.P5643986216861021635

namespace A299280

/-- `A299279(n)+a(A004273(n)-n)` -/
def P5643986216861021635.Spec : Prop :=
  ∀ n, P5643986216861021635.a n = A299280 n

end A299280

/-! ## A299280.P10080724244989114013

`A299279(n)+A000027(a(n-1))` with `a(0)=1`
-/

namespace A299280.P10080724244989114013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299279 n + A000027 (a (n - 1)).toNat

end

end A299280.P10080724244989114013

namespace A299280

/-- `A299279(n)+A000027(a(n-1))` -/
def P10080724244989114013.Spec : Prop :=
  ∀ n, P10080724244989114013.a n = A299280 n

end A299280

/-!
# A299281: Coordination sequence for "reo-e" 3D uniform tiling.

The programs for A299281, there is no canonical definition to state claims against.
-/

/-! ## A299281.P11890253115477911979

`A157685(A066983(n+5))+(2*n)²`
-/

namespace A299281.P11890253115477911979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (A066983 (n + 5)).toNat + ((2 * n) ^ 2 : ℤ)

end

end A299281.P11890253115477911979

/-! ## A299281.P3996547225047721084

`A121317(n+1)+A039637(A130914(n+1))`
-/

namespace A299281.P3996547225047721084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121317 (n + 1) + A039637 (A130914 (n + 1)).toNat

end

end A299281.P3996547225047721084

/-! ## A299281.P17332395308768704313

`A240438(2*n+1)+A105592(A105635(n))`
-/

namespace A299281.P17332395308768704313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240438 (2 * n + 1) + A105592 (A105635 n).toNat

end

end A299281.P17332395308768704313

/-!
# A299282: Partial sums of A299281.

The programs for A299282, there is no canonical definition to state claims against.
-/

/-! ## A299282.P13386800837132008422

`∑[A299281(n)]`
-/

namespace A299282.P13386800837132008422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299282.P13386800837132008422

/-! ## A299282.P6316884206797815102

`A299281(xor(1, xor(1, n)))+a(n-1)` with `a(0)=1`
-/

namespace A299282.P6316884206797815102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299281 (Nat.xor 1 (Nat.xor 1 n)) + a (n - 1)

end

end A299282.P6316884206797815102

/-! ## A299282.P1976155016073971381

`A299281(n)+a(A028310(n)-1)` with `a(0)=1`
-/

namespace A299282.P1976155016073971381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299281 n + a (A028310 n - 1).toNat

end

end A299282.P1976155016073971381

/-! ## A299282.P5662164843359274552

`A299281(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A299282.P5662164843359274552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299281 n + a (A004273 n - (n : ℤ)).toNat

end

end A299282.P5662164843359274552

/-! ## A299282.P18284205742357270102

`A299281(n)+a(n-A178334(A178334(n)))` with `a(0)=1`
-/

namespace A299282.P18284205742357270102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299281 n + a ((n : ℤ) - A178334 (A178334 n).toNat).toNat

end

end A299282.P18284205742357270102

/-!
# A299283: Coordination sequence for "svh" 3D uniform tiling.

The programs for A299283, the canonical program `A299283.P4658508647479530122` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299283 has offset 0).

The definition of A299283 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299283.P4658508647479530122

`2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` with `a(0)=1, a(1)=7, a(2)=22, a(3)=48, a(4)=84, a(5)=130, a(6)=186`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299283

/-- `2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` -/
def P4658508647479530122.Spec : Prop :=
  ∀ n, P4658508647479530122.a n = A299283 n

theorem P4658508647479530122.correct : P4658508647479530122.Spec := by
  intro n
  simp only [A299283]

end A299283

/-! ## A299283.P16316215332331798620

`A000982(n)+A008264(n)+A001105(n)`
-/

namespace A299283.P16316215332331798620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000982 n + (A008264 n + A001105 n)

end

end A299283.P16316215332331798620

namespace A299283

/-- `A000982(n)+A008264(n)+A001105(n)` -/
def P16316215332331798620.Spec : Prop :=
  ∀ n, P16316215332331798620.a n = A299283 n

end A299283

/-! ## A299283.P9602262244031013247

`A008264(n)+A033428(n)-A007590(n)`
-/

namespace A299283.P9602262244031013247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008264 n + (A033428 n - A007590 n)

end

end A299283.P9602262244031013247

namespace A299283

/-- `A008264(n)+A033428(n)-A007590(n)` -/
def P9602262244031013247.Spec : Prop :=
  ∀ n, P9602262244031013247.a n = A299283 n

end A299283

/-! ## A299283.P8419842971541124591

`A001972(n+1)+A124080(n)-A008458(n)`
-/

namespace A299283.P8419842971541124591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 (n + 1) + (A124080 n - A008458 n)

end

end A299283.P8419842971541124591

namespace A299283

/-- `A001972(n+1)+A124080(n)-A008458(n)` -/
def P8419842971541124591.Spec : Prop :=
  ∀ n, P8419842971541124591.a n = A299283 n

end A299283

/-! ## A299283.P10318475836177214515

`A010001(n)+∑[A002265(n+1)]`
-/

namespace A299283.P10318475836177214515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299283.P10318475836177214515

namespace A299283

/-- `A010001(n)+∑[A002265(n+1)]` -/
def P10318475836177214515.Spec : Prop :=
  ∀ n, P10318475836177214515.a n = A299283 n

end A299283

/-! ## A299283.P13427057333738918179

`A130519(A016777(n))+A005899(n)`
-/

namespace A299283.P13427057333738918179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A016777 n).toNat + A005899 n

end

end A299283.P13427057333738918179

namespace A299283

/-- `A130519(A016777(n))+A005899(n)` -/
def P13427057333738918179.Spec : Prop :=
  ∀ n, P13427057333738918179.a n = A299283 n

end A299283

/-! ## A299283.P3623032591818394246

`A130519(A016861(n))+A005893(n)`
-/

namespace A299283.P3623032591818394246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 (A016861 n).toNat + A005893 n

end

end A299283.P3623032591818394246

namespace A299283

/-- `A130519(A016861(n))+A005893(n)` -/
def P3623032591818394246.Spec : Prop :=
  ∀ n, P3623032591818394246.a n = A299283 n

end A299283

/-! ## A299283.P17576163141990634693

`A300068(A004652(n))+A010001(n)`
-/

namespace A299283.P17576163141990634693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 (A004652 n).toNat + A010001 n

end

end A299283.P17576163141990634693

namespace A299283

/-- `A300068(A004652(n))+A010001(n)` -/
def P17576163141990634693.Spec : Prop :=
  ∀ n, P17576163141990634693.a n = A299283 n

end A299283

/-! ## A299283.P2398615848398463459

`A010001(n)+A004526(A002620(n))`
-/

namespace A299283.P2398615848398463459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n + A004526 (A002620 n).toNat

end

end A299283.P2398615848398463459

namespace A299283

/-- `A010001(n)+A004526(A002620(n))` -/
def P2398615848398463459.Spec : Prop :=
  ∀ n, P2398615848398463459.a n = A299283 n

end A299283

/-! ## A299283.P6466680692707020036

`A010001(n)+A004526(∑[A004526(n)])`
-/

namespace A299283.P6466680692707020036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n + A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A299283.P6466680692707020036

namespace A299283

/-- `A010001(n)+A004526(∑[A004526(n)])` -/
def P6466680692707020036.Spec : Prop :=
  ∀ n, P6466680692707020036.a n = A299283 n

end A299283

/-! ## A299283.P11387057878698393261

`A032766(A077043(n))+A005899(n)`
-/

namespace A299283.P11387057878698393261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A077043 n).toNat + A005899 n

end

end A299283.P11387057878698393261

namespace A299283

/-- `A032766(A077043(n))+A005899(n)` -/
def P11387057878698393261.Spec : Prop :=
  ∀ n, P11387057878698393261.a n = A299283 n

end A299283

/-!
# A299284: Partial sums of A299283.

The programs for A299284, the canonical program `A299284.P12485643414015177927` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299284 has offset 0).

The definition of A299284 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299284.P12485643414015177927

`∑[A299283(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A299284

/-- `∑[A299283(n)]` -/
def P12485643414015177927.Spec : Prop :=
  ∀ n, P12485643414015177927.a n = A299284 n

theorem P12485643414015177927.correct : P12485643414015177927.Spec := by
  intro n
  simp only [A299284]

end A299284

/-! ## A299284.P15058915412584113431

`A122046(n)+A063489(n+1)`
-/

namespace A299284.P15058915412584113431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122046 n + A063489 (n + 1)

end

end A299284.P15058915412584113431

namespace A299284

/-- `A122046(n)+A063489(n+1)` -/
def P15058915412584113431.Spec : Prop :=
  ∀ n, P15058915412584113431.a n = A299284 n

end A299284

/-! ## A299284.P1595319527815527062

`A299283(A002378(n)/(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A299284.P1595319527815527062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299283 (SequenceMachineLib.roundAway ((A002378 n : ℚ) / (n + 1 : ℚ))).toNat + a (n - 1)

end

end A299284.P1595319527815527062

namespace A299284

/-- `A299283(A002378(n)/(n+1))+a(n-1)` -/
def P1595319527815527062.Spec : Prop :=
  ∀ n, P1595319527815527062.a n = A299284 n

end A299284

/-! ## A299284.P9875068245350986107

`A122046(n)+Δ[A139594(n)]`
-/

namespace A299284.P9875068245350986107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122046 n + (f1 (n + 1) - f1 n)

end

end A299284.P9875068245350986107

namespace A299284

/-- `A122046(n)+Δ[A139594(n)]` -/
def P9875068245350986107.Spec : Prop :=
  ∀ n, P9875068245350986107.a n = A299284 n

end A299284

/-! ## A299284.P1885834174225858740

`∑[A010001(n)+∑[A002265(n+1)]]`
-/

namespace A299284.P1885834174225858740
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010001 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299284.P1885834174225858740

namespace A299284

/-- `∑[A010001(n)+∑[A002265(n+1)]]` -/
def P1885834174225858740.Spec : Prop :=
  ∀ n, P1885834174225858740.a n = A299284 n

end A299284

/-!
# A299285: Coordination sequence for "tea" 3D uniform tiling.

The programs for A299285, the canonical program `A299285.P7512550816320988324` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299285 has offset 0).

The definition of A299285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299285.P7512550816320988324

`2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` with `a(0)=1, a(1)=10, a(2)=33, a(3)=73, a(4)=128, a(5)=199, a(6)=285`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299285

/-- `2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` -/
def P7512550816320988324.Spec : Prop :=
  ∀ n, P7512550816320988324.a n = A299285 n

theorem P7512550816320988324.correct : P7512550816320988324.Spec := by
  intro n
  simp only [A299285]

end A299285

/-! ## A299285.P17377016145987500010

`A008527(n)-A001971(n)`
-/

namespace A299285.P17377016145987500010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n - A001971 n

end

end A299285.P17377016145987500010

namespace A299285

/-- `A008527(n)-A001971(n)` -/
def P17377016145987500010.Spec : Prop :=
  ∀ n, P17377016145987500010.a n = A299285 n

end A299285

/-! ## A299285.P11497623471160042191

`A008527(n)-∑[A059169(n+1)]`
-/

namespace A299285.P11497623471160042191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299285.P11497623471160042191

namespace A299285

/-- `A008527(n)-∑[A059169(n+1)]` -/
def P11497623471160042191.Spec : Prop :=
  ∀ n, P11497623471160042191.a n = A299285 n

end A299285

/-! ## A299285.P16634713412870041164

`A008527(n)-∑[A004526(A028242(n))]`
-/

namespace A299285.P16634713412870041164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299285.P16634713412870041164

namespace A299285

/-- `A008527(n)-∑[A004526(A028242(n))]` -/
def P16634713412870041164.Spec : Prop :=
  ∀ n, P16634713412870041164.a n = A299285 n

end A299285

/-! ## A299285.P4328600969667091211

`A008527(n)+A001971(n)*A057428(n)`
-/

namespace A299285.P4328600969667091211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n + A001971 n * A057428 n

end

end A299285.P4328600969667091211

namespace A299285

/-- `A008527(n)+A001971(n)*A057428(n)` -/
def P4328600969667091211.Spec : Prop :=
  ∀ n, P4328600969667091211.a n = A299285 n

end A299285

/-! ## A299285.P2894042204411534072

`A005893(2*n)-round(n²/8)`
-/

namespace A299285.P2894042204411534072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (2 * n) - SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8)

end

end A299285.P2894042204411534072

namespace A299285

/-- `A005893(2*n)-round(n²/8)` -/
def P2894042204411534072.Spec : Prop :=
  ∀ n, P2894042204411534072.a n = A299285 n

end A299285

/-! ## A299285.P14377462103936944767

`A049486(2*n+1)-A001971(n)`
-/

namespace A299285.P14377462103936944767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049486 (2 * n + 1) - A001971 n

end

end A299285.P14377462103936944767

namespace A299285

/-- `A049486(2*n+1)-A001971(n)` -/
def P14377462103936944767.Spec : Prop :=
  ∀ n, P14377462103936944767.a n = A299285 n

end A299285

/-! ## A299285.P6810959937484180025

`A105343(4*n)-A001971(n)`
-/

namespace A299285.P6810959937484180025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105343 (4 * n) - A001971 n

end

end A299285.P6810959937484180025

namespace A299285

/-- `A105343(4*n)-A001971(n)` -/
def P6810959937484180025.Spec : Prop :=
  ∀ n, P6810959937484180025.a n = A299285 n

end A299285

/-! ## A299285.P1262801787014616489

`A008527(n)-A004525(A002620(n))`
-/

namespace A299285.P1262801787014616489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n - A004525 (A002620 n).toNat

end

end A299285.P1262801787014616489

namespace A299285

/-- `A008527(n)-A004525(A002620(n))` -/
def P1262801787014616489.Spec : Prop :=
  ∀ n, P1262801787014616489.a n = A299285 n

end A299285

/-! ## A299285.P7108968734448878081

`A008527(n)-A123108(∑[A123108(n)])`
-/

namespace A299285.P7108968734448878081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n - A123108 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A299285.P7108968734448878081

namespace A299285

/-- `A008527(n)-A123108(∑[A123108(n)])` -/
def P7108968734448878081.Spec : Prop :=
  ∀ n, P7108968734448878081.a n = A299285 n

end A299285

/-!
# A299286: Partial sums of A299285.

The programs for A299286, the canonical program `A299286.P1101752150573193452` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299286 has offset 0).

The definition of A299286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A299286.P1101752150573193452

`∑[A299285(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A299286

/-- `∑[A299285(n)]` -/
def P1101752150573193452.Spec : Prop :=
  ∀ n, P1101752150573193452.a n = A299286 n

theorem P1101752150573193452.correct : P1101752150573193452.Spec := by
  intro n
  simp only [A299286]

end A299286

/-! ## A299286.P18287760382454010596

`A299288(n)+A122046(n)`
-/

namespace A299286.P18287760382454010596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299288 n + A122046 n

end

end A299286.P18287760382454010596

namespace A299286

/-- `A299288(n)+A122046(n)` -/
def P18287760382454010596.Spec : Prop :=
  ∀ n, P18287760382454010596.a n = A299286 n

end A299286

/-! ## A299286.P9076758285301106623

`A057813(n)-A173722(n)`
-/

namespace A299286.P9076758285301106623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057813 n - A173722 n

end

end A299286.P9076758285301106623

namespace A299286

/-- `A057813(n)-A173722(n)` -/
def P9076758285301106623.Spec : Prop :=
  ∀ n, P9076758285301106623.a n = A299286 n

end A299286

/-! ## A299286.P18109115899620433508

`∑[A008527(n)-A001971(n)]`
-/

namespace A299286.P18109115899620433508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n - A001971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299286.P18109115899620433508

namespace A299286

/-- `∑[A008527(n)-A001971(n)]` -/
def P18109115899620433508.Spec : Prop :=
  ∀ n, P18109115899620433508.a n = A299286 n

end A299286

/-! ## A299286.P12992330491050771247

`A057813(n)-∑[A001971(n)]`
-/

namespace A299286.P12992330491050771247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057813 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299286.P12992330491050771247

namespace A299286

/-- `A057813(n)-∑[A001971(n)]` -/
def P12992330491050771247.Spec : Prop :=
  ∀ n, P12992330491050771247.a n = A299286 n

end A299286

/-! ## A299286.P5998765024797422597

`∑[A008527(n)-∑[A059169(n+1)]]`
-/

namespace A299286.P5998765024797422597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299286.P5998765024797422597

namespace A299286

/-- `∑[A008527(n)-∑[A059169(n+1)]]` -/
def P5998765024797422597.Spec : Prop :=
  ∀ n, P5998765024797422597.a n = A299286 n

end A299286

/-! ## A299286.P13206862608645730742

`∑[A005893(2*n)-A001971(n)]`
-/

namespace A299286.P13206862608645730742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (2 * n) - A001971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299286.P13206862608645730742

namespace A299286

/-- `∑[A005893(2*n)-A001971(n)]` -/
def P13206862608645730742.Spec : Prop :=
  ∀ n, P13206862608645730742.a n = A299286 n

end A299286

/-! ## A299286.P912765119631713553

`A167875(2*n)-∑[A001971(n)]`
-/

namespace A299286.P912765119631713553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167875 (2 * n) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299286.P912765119631713553

namespace A299286

/-- `A167875(2*n)-∑[A001971(n)]` -/
def P912765119631713553.Spec : Prop :=
  ∀ n, P912765119631713553.a n = A299286 n

end A299286

/-!
# A299287: Coordination sequence for "tcd" 3D uniform tiling.

The programs for A299287, the canonical program `A299287.P17321010801797877609` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299287 has offset 0).

The definition of A299287 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299287.P17321010801797877609

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=10, a(2)=33, a(3)=72, a(4)=126`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299287

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P17321010801797877609.Spec : Prop :=
  ∀ n, P17321010801797877609.a n = A299287 n

theorem P17321010801797877609.correct : P17321010801797877609.Spec := by
  intro n
  simp only [A299287]

end A299287

/-! ## A299287.P7630517320482361906

`A008527(n)-floor((n/2)²)`
-/

namespace A299287.P7630517320482361906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n - ⌊((n : ℚ) / 2) ^ 2⌋

end

end A299287.P7630517320482361906

namespace A299287

/-- `A008527(n)-floor((n/2)²)` -/
def P7630517320482361906.Spec : Prop :=
  ∀ n, P7630517320482361906.a n = A299287 n

end A299287

/-! ## A299287.P15087175112362123857

`A077043(n)+A005919(n)`
-/

namespace A299287.P15087175112362123857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n + A005919 n

end

end A299287.P15087175112362123857

namespace A299287

/-- `A077043(n)+A005919(n)` -/
def P15087175112362123857.Spec : Prop :=
  ∀ n, P15087175112362123857.a n = A299287 n

end A299287

/-! ## A299287.P5387316374323394735

`A010002(n)-A032527(n)`
-/

namespace A299287.P5387316374323394735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010002 n - A032527 n

end

end A299287.P5387316374323394735

namespace A299287

/-- `A010002(n)-A032527(n)` -/
def P5387316374323394735.Spec : Prop :=
  ∀ n, P5387316374323394735.a n = A299287 n

end A299287

/-! ## A299287.P16500314270075391490

`A010003(n)-A227541(n)`
-/

namespace A299287.P16500314270075391490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010003 n - A227541 n

end

end A299287.P16500314270075391490

namespace A299287

/-- `A010003(n)-A227541(n)` -/
def P16500314270075391490.Spec : Prop :=
  ∀ n, P16500314270075391490.a n = A299287 n

end A299287

/-! ## A299287.P6992786788979947318

`A005893(2*n)-floor((n/2)²)`
-/

namespace A299287.P6992786788979947318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (2 * n) - ⌊((n : ℚ) / 2) ^ 2⌋

end

end A299287.P6992786788979947318

namespace A299287

/-- `A005893(2*n)-floor((n/2)²)` -/
def P6992786788979947318.Spec : Prop :=
  ∀ n, P6992786788979947318.a n = A299287 n

end A299287

/-! ## A299287.P18114557038326704062

`A049486(2*n+1)-A008217(2*n+1)`
-/

namespace A299287.P18114557038326704062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049486 (2 * n + 1) - A008217 (2 * n + 1)

end

end A299287.P18114557038326704062

namespace A299287

/-- `A049486(2*n+1)-A008217(2*n+1)` -/
def P18114557038326704062.Spec : Prop :=
  ∀ n, P18114557038326704062.a n = A299287 n

end A299287

/-! ## A299287.P291624065820308537

`A118002(4*n)+1-A008217(2*n+1)`
-/

namespace A299287.P291624065820308537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118002 (4 * n) + (1 - A008217 (2 * n + 1))

end

end A299287.P291624065820308537

namespace A299287

/-- `A118002(4*n)+1-A008217(2*n+1)` -/
def P291624065820308537.Spec : Prop :=
  ∀ n, P291624065820308537.a n = A299287 n

end A299287

/-!
# A299288: Partial sums of A299287.

The programs for A299288, the canonical program `A299288.P11877093592900615478` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299288 has offset 0).

The definition of A299288 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299288.P11877093592900615478

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=11, a(2)=44, a(3)=116, a(4)=242`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299288

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P11877093592900615478.Spec : Prop :=
  ∀ n, P11877093592900615478.a n = A299288 n

theorem P11877093592900615478.correct : P11877093592900615478.Spec := by
  intro n
  simp only [A299288]

end A299288

/-! ## A299288.P1914828485692837083

`∑[8*n²+1]+n-∑[floor((n/2)²)]`
-/

namespace A299288.P1914828485692837083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n ^ 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + n : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A299288.P1914828485692837083

namespace A299288

/-- `∑[8*n²+1]+n-∑[floor((n/2)²)]` -/
def P1914828485692837083.Spec : Prop :=
  ∀ n, P1914828485692837083.a n = A299288 n

end A299288

/-! ## A299288.P1132615065345923715

`∑[A299287(n)]`
-/

namespace A299288.P1132615065345923715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299288.P1132615065345923715

namespace A299288

/-- `∑[A299287(n)]` -/
def P1132615065345923715.Spec : Prop :=
  ∀ n, P1132615065345923715.a n = A299288 n

end A299288

/-! ## A299288.P11253149097295518384

`∑[A077043(n)+A005919(n)]`
-/

namespace A299288.P11253149097295518384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077043 n + A005919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299288.P11253149097295518384

namespace A299288

/-- `∑[A077043(n)+A005919(n)]` -/
def P11253149097295518384.Spec : Prop :=
  ∀ n, P11253149097295518384.a n = A299288 n

end A299288

/-! ## A299288.P15419254295788708589

`∑[A008527(n)-A002620(n)]`
-/

namespace A299288.P15419254295788708589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n - A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299288.P15419254295788708589

namespace A299288

/-- `∑[A008527(n)-A002620(n)]` -/
def P15419254295788708589.Spec : Prop :=
  ∀ n, P15419254295788708589.a n = A299288 n

end A299288

/-! ## A299288.P10838827580338941914

`∑[A010002(n)-A032527(n)]`
-/

namespace A299288.P10838827580338941914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010002 n - A032527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299288.P10838827580338941914

namespace A299288

/-- `∑[A010002(n)-A032527(n)]` -/
def P10838827580338941914.Spec : Prop :=
  ∀ n, P10838827580338941914.a n = A299288 n

end A299288

/-! ## A299288.P146898972310598979

`∑[A010003(n)-A227541(n)]`
-/

namespace A299288.P146898972310598979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010003 n - A227541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299288.P146898972310598979

namespace A299288

/-- `∑[A010003(n)-A227541(n)]` -/
def P146898972310598979.Spec : Prop :=
  ∀ n, P146898972310598979.a n = A299288 n

end A299288

/-! ## A299288.P16384571080364825233

`∑[A008527(n)-∑[A004526(n)]]`
-/

namespace A299288.P16384571080364825233
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008527 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299288.P16384571080364825233

namespace A299288

/-- `∑[A008527(n)-∑[A004526(n)]]` -/
def P16384571080364825233.Spec : Prop :=
  ∀ n, P16384571080364825233.a n = A299288 n

end A299288

/-! ## A299288.P14329998586012277175

`∑[A005893(2*n)-A002620(n)]`
-/

namespace A299288.P14329998586012277175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (2 * n) - A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299288.P14329998586012277175

namespace A299288

/-- `∑[A005893(2*n)-A002620(n)]` -/
def P14329998586012277175.Spec : Prop :=
  ∀ n, P14329998586012277175.a n = A299288 n

end A299288

/-!
# A299289: Coordination sequence for "tsi" 3D uniform tiling.

The programs for A299289, the canonical program `A299289.P16034125100813415885` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299289 has offset 0).

The definition of A299289 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299289.P16034125100813415885

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=8, a(2)=28, a(3)=60, a(4)=106`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299289

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P16034125100813415885.Spec : Prop :=
  ∀ n, P16034125100813415885.a n = A299289 n

theorem P16034125100813415885.correct : P16034125100813415885.Spec := by
  intro n
  simp only [A299289]

end A299289

/-! ## A299289.P7823790060761030980

`7*n²-∑[n]+round((n-1)/2)+2`
-/

namespace A299289.P7823790060761030980
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2)

end

end A299289.P7823790060761030980

namespace A299289

/-- `7*n²-∑[n]+round((n-1)/2)+2` -/
def P7823790060761030980.Spec : Prop :=
  ∀ n, P7823790060761030980.a n = A299289 n

end A299289

/-! ## A299289.P8655977141610331438

`ceil(cosh(log(A010004(n))))`
-/

namespace A299289.P8655977141610331438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.log (A010004 n : ℝ))⌉

end

end A299289.P8655977141610331438

namespace A299289

/-- `ceil(cosh(log(A010004(n))))` -/
def P8655977141610331438.Spec : Prop :=
  ∀ n, P8655977141610331438.a n = A299289 n

end A299289

/-! ## A299289.P9057157362064353743

`abs((2*n)²-A007899(n))`
-/

namespace A299289.P9057157362064353743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * n) ^ 2 : ℤ) - A007899 n|

end

end A299289.P9057157362064353743

namespace A299289

/-- `abs((2*n)²-A007899(n))` -/
def P9057157362064353743.Spec : Prop :=
  ∀ n, P9057157362064353743.a n = A299289 n

end A299289

/-! ## A299289.P15051648082856365047

`abs(A007590(n)+record[2-xor(1, -n)]+n*(6*n-2))`
-/

namespace A299289.P15051648082856365047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - Int.xor 1 (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007590 n + (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ) * ((6 * n : ℤ) - 2))|

end

end A299289.P15051648082856365047

namespace A299289

/-- `abs(A007590(n)+record[2-xor(1, -n)]+n*(6*n-2))` -/
def P15051648082856365047.Spec : Prop :=
  ∀ n, P15051648082856365047.a n = A299289 n

end A299289

/-! ## A299289.P10416943821372784154

`abs(A007590(n)+A005919(n)-n²)`
-/

namespace A299289.P10416943821372784154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007590 n + (A005919 n - (n ^ 2 : ℤ))|

end

end A299289.P10416943821372784154

namespace A299289

/-- `abs(A007590(n)+A005919(n)-n²)` -/
def P10416943821372784154.Spec : Prop :=
  ∀ n, P10416943821372784154.a n = A299289 n

end A299289

/-! ## A299289.P617602809742059403

`abs(A007590(n)+A005901(n)-(2*n)²)`
-/

namespace A299289.P617602809742059403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007590 n + (A005901 n - ((2 * n) ^ 2 : ℤ))|

end

end A299289.P617602809742059403

namespace A299289

/-- `abs(A007590(n)+A005901(n)-(2*n)²)` -/
def P617602809742059403.Spec : Prop :=
  ∀ n, P617602809742059403.a n = A299289 n

end A299289

/-! ## A299289.P14454101002029683530

`abs(A007590(n)+A010011(n)-15*n²)`
-/

namespace A299289.P14454101002029683530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007590 n + (A010011 n - (15 * n ^ 2 : ℤ))|

end

end A299289.P14454101002029683530

namespace A299289

/-- `abs(A007590(n)+A010011(n)-15*n²)` -/
def P14454101002029683530.Spec : Prop :=
  ∀ n, P14454101002029683530.a n = A299289 n

end A299289

/-! ## A299289.P12250544779535842985

`abs(A007590(n)+A056220(n+1)+comp[2*(n+1)]²)`
-/

namespace A299289.P12250544779535842985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007590 n + (A056220 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n ^ 2 : ℤ))|

end

end A299289.P12250544779535842985

namespace A299289

/-- `abs(A007590(n)+A056220(n+1)+comp[2*(n+1)]²)` -/
def P12250544779535842985.Spec : Prop :=
  ∀ n, P12250544779535842985.a n = A299289 n

end A299289

/-! ## A299289.P16244153968757467422

`A000027(A005897(n)+∑[and(n, -2)])`
-/

namespace A299289.P16244153968757467422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A005897 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A299289.P16244153968757467422

namespace A299289

/-- `A000027(A005897(n)+∑[and(n, -2)])` -/
def P16244153968757467422.Spec : Prop :=
  ∀ n, P16244153968757467422.a n = A299289 n

end A299289

/-!
# A299290: Partial sums of A299289.

The programs for A299290, the canonical program `A299290.P8828056867077462246` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A299290 has offset 0).

The definition of A299290 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A299290.P8828056867077462246

`3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` with `a(0)=1, a(1)=9, a(2)=37, a(3)=97, a(4)=203`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A299290

/-- `3*a(n-1)-2*a(n-2)-2*a(n-3)+3*a(n-4)-a(n-5)` -/
def P8828056867077462246.Spec : Prop :=
  ∀ n, P8828056867077462246.a n = A299290 n

theorem P8828056867077462246.correct : P8828056867077462246.Spec := by
  intro n
  simp only [A299290]

end A299290

/-! ## A299290.P14788094136288668954

`∑[7*n²-∑[n]+round((n-1)/2)+2]`
-/

namespace A299290.P14788094136288668954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299290.P14788094136288668954

namespace A299290

/-- `∑[7*n²-∑[n]+round((n-1)/2)+2]` -/
def P14788094136288668954.Spec : Prop :=
  ∀ n, P14788094136288668954.a n = A299290 n

end A299290

/-! ## A299290.P7053276104665302011

`or(1, ∑[A299289(n)])`
-/

namespace A299290.P7053276104665302011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A299290.P7053276104665302011

namespace A299290

/-- `or(1, ∑[A299289(n)])` -/
def P7053276104665302011.Spec : Prop :=
  ∀ n, P7053276104665302011.a n = A299290 n

end A299290

/-! ## A299290.P9119978477806311949

`A007904(n)+∑[(2*n)²]`
-/

namespace A299290.P9119978477806311949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007904 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A299290.P9119978477806311949

namespace A299290

/-- `A007904(n)+∑[(2*n)²]` -/
def P9119978477806311949.Spec : Prop :=
  ∀ n, P9119978477806311949.a n = A299290 n

end A299290

/-! ## A299290.P5053201518963734866

`A007202(n)-∑[(2*n)²]`
-/

namespace A299290.P5053201518963734866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007202 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A299290.P5053201518963734866

namespace A299290

/-- `A007202(n)-∑[(2*n)²]` -/
def P5053201518963734866.Spec : Prop :=
  ∀ n, P5053201518963734866.a n = A299290 n

end A299290

/-! ## A299290.P13944382666730896191

`A173154(n)+A135713(n)`
-/

namespace A299290.P13944382666730896191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173154 n + A135713 n

end

end A299290.P13944382666730896191

namespace A299290

/-- `A173154(n)+A135713(n)` -/
def P13944382666730896191.Spec : Prop :=
  ∀ n, P13944382666730896191.a n = A299290 n

end A299290

/-! ## A299290.P4977054221590205687

`A063489(n+1)+A011934(n)`
-/

namespace A299290.P4977054221590205687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063489 (n + 1) + A011934 n

end

end A299290.P4977054221590205687

namespace A299290

/-- `A063489(n+1)+A011934(n)` -/
def P4977054221590205687.Spec : Prop :=
  ∀ n, P4977054221590205687.a n = A299290 n

end A299290

/-! ## A299290.P10060045456529346291

`A213759(n+1)+A048395(n)`
-/

namespace A299290.P10060045456529346291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213759 (n + 1) + A048395 n

end

end A299290.P10060045456529346291

namespace A299290

/-- `A213759(n+1)+A048395(n)` -/
def P10060045456529346291.Spec : Prop :=
  ∀ n, P10060045456529346291.a n = A299290 n

end A299290

/-! ## A299290.P164448486530965005

`A212692(n)+A177342(n+1)`
-/

namespace A299290.P164448486530965005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212692 n + A177342 (n + 1)

end

end A299290.P164448486530965005

namespace A299290

/-- `A212692(n)+A177342(n+1)` -/
def P164448486530965005.Spec : Prop :=
  ∀ n, P164448486530965005.a n = A299290 n

end A299290

/-! ## A299290.P8124439684562741425

`A257093(n)+A184005(n+1)`
-/

namespace A299290.P8124439684562741425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257093 n + A184005 (n + 1)

end

end A299290.P8124439684562741425

namespace A299290

/-- `A257093(n)+A184005(n+1)` -/
def P8124439684562741425.Spec : Prop :=
  ∀ n, P8124439684562741425.a n = A299290 n

end A299290

/-! ## A299290.P17260321695397002871

`A063490(n+1)-A131941(n)`
-/

namespace A299290.P17260321695397002871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063490 (n + 1) - A131941 n

end

end A299290.P17260321695397002871

namespace A299290

/-- `A063490(n+1)-A131941(n)` -/
def P17260321695397002871.Spec : Prop :=
  ∀ n, P17260321695397002871.a n = A299290 n

end A299290

/-! ## A299290.P2399265890470343840

`A336288(n+1)-A212684(n)`
-/

namespace A299290.P2399265890470343840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336288 (n + 1) - A212684 n

end

end A299290.P2399265890470343840

namespace A299290

/-- `A336288(n+1)-A212684(n)` -/
def P2399265890470343840.Spec : Prop :=
  ∀ n, P2399265890470343840.a n = A299290 n

end A299290

/-! ## A299290.P13285136139854352529

`A005898(n)+2*A173196(n)`
-/

namespace A299290.P13285136139854352529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 n + 2 * A173196 n

end

end A299290.P13285136139854352529

namespace A299290

/-- `A005898(n)+2*A173196(n)` -/
def P13285136139854352529.Spec : Prop :=
  ∀ n, P13285136139854352529.a n = A299290 n

end A299290

/-! ## A299290.P15337965043347196788

`A209229(2*n+3)+∑[A299289(n)]`
-/

namespace A299290.P15337965043347196788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (2 * n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299290.P15337965043347196788

namespace A299290

/-- `A209229(2*n+3)+∑[A299289(n)]` -/
def P15337965043347196788.Spec : Prop :=
  ∀ n, P15337965043347196788.a n = A299290 n

end A299290

/-! ## A299290.P15605000533136394044

`∑[A299289(n)%(A172332(n)+1)²]+1`
-/

namespace A299290.P15605000533136394044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A299289 n) ((A172332 n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A299290.P15605000533136394044

namespace A299290

/-- `∑[A299289(n)%(A172332(n)+1)²]+1` -/
def P15605000533136394044.Spec : Prop :=
  ∀ n, P15605000533136394044.a n = A299290 n

end A299290

/-! ## A299290.P3971189225876198298

`A005894(n)+A007202(n)-A005898(n)`
-/

namespace A299290.P3971189225876198298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005894 n + (A007202 n - A005898 n)

end

end A299290.P3971189225876198298

namespace A299290

/-- `A005894(n)+A007202(n)-A005898(n)` -/
def P3971189225876198298.Spec : Prop :=
  ∀ n, P3971189225876198298.a n = A299290 n

end A299290

/-! ## A299290.P6632444324326780670

`A000007(n+4)+∑[A299289(n)]`
-/

namespace A299290.P6632444324326780670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 4) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299290.P6632444324326780670

namespace A299290

/-- `A000007(n+4)+∑[A299289(n)]` -/
def P6632444324326780670.Spec : Prop :=
  ∀ n, P6632444324326780670.a n = A299290 n

end A299290

/-! ## A299290.P14649034545369550651

`A007814(2*n+1)+∑[A299289(n)]`
-/

namespace A299290.P14649034545369550651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299290.P14649034545369550651

namespace A299290

/-- `A007814(2*n+1)+∑[A299289(n)]` -/
def P14649034545369550651.Spec : Prop :=
  ∀ n, P14649034545369550651.a n = A299290 n

end A299290

/-! ## A299290.P14899815482291872966

`A213389(2*n+1)+A212964(n+1)`
-/

namespace A299290.P14899815482291872966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213389 (2 * n + 1) + A212964 (n + 1)

end

end A299290.P14899815482291872966

namespace A299290

/-- `A213389(2*n+1)+A212964(n+1)` -/
def P14899815482291872966.Spec : Prop :=
  ∀ n, P14899815482291872966.a n = A299290 n

end A299290

/-! ## A299290.P5070982351949467748

`A002717(2*n)+A131941(n+1)+n`
-/

namespace A299290.P5070982351949467748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002717 (2 * n) + (A131941 (n + 1) + (n : ℤ))

end

end A299290.P5070982351949467748

namespace A299290

/-- `A002717(2*n)+A131941(n+1)+n` -/
def P5070982351949467748.Spec : Prop :=
  ∀ n, P5070982351949467748.a n = A299290 n

end A299290

/-!
# A299292: Partial sums of A299291.

The programs for A299292, there is no canonical definition to state claims against.
-/

/-! ## A299292.P9074535240537419099

`∑[A299291(n)]`
-/

namespace A299292.P9074535240537419099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A299292.P9074535240537419099

/-! ## A299292.P12934483385646428947

`A299291(abs(1-n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A299292.P12934483385646428947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299291 (|1 - (n : ℤ)| + 1).toNat + a (n - 1)

end

end A299292.P12934483385646428947

/-! ## A299292.P9981362392826873299

`A299291(n)+a(n-1)*A054977(n)` with `a(0)=1`
-/

namespace A299292.P9981362392826873299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299291 n + a (n - 1) * A054977 n

end

end A299292.P9981362392826873299

/-! ## A299292.P9455178796754387373

`a(n-1)-A057428(n)*A299291(n)` with `a(0)=1`
-/

namespace A299292.P9455178796754387373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A057428 n * A299291 n

end

end A299292.P9455178796754387373

/-! ## A299292.P15855963449882431813

`A299291(n)+a(n-1)%A248449(n)` with `a(0)=1`
-/

namespace A299292.P15855963449882431813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299291 n + Int.tmod (a (n - 1)) (A248449 n)

end

end A299292.P15855963449882431813

/-!
# A299294: Number of order ideals of type e^(0)_n.

The programs for A299294, there is no canonical definition to state claims against.
-/

/-! ## A299294.P16368745739840810535

`A002262(A332742(2^n))+A000124(A035986(n+1))`
-/

namespace A299294.P16368745739840810535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A332742 (2 ^ n)).toNat + A000124 (A035986 (n + 1)).toNat

end

end A299294.P16368745739840810535

/-!
# A299295: Number of order ideals of type e^(1)_n.

The programs for A299295, there is no canonical definition to state claims against.
-/

/-! ## A299295.P14028781618160829650

`or(A001906(n), A137756(A114322(n+1)))`
-/

namespace A299295.P14028781618160829650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001906 n) (A137756 (A114322 (n + 1)).toNat)

end

end A299295.P14028781618160829650

/-! ## A299295.P3796181469679946117

`or(A000045(2*n), A165118(A001003(n+1)))`
-/

namespace A299295.P3796181469679946117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000045 (2 * n)) (A165118 (A001003 (n + 1)).toNat)

end

end A299295.P3796181469679946117

/-!
# A299296: G.f. 1/(1-z*R(z*m(z))) where R(z) = (1-z-(z+1)*sqrt(1-4*z))/(2*z^2), m(z) = (3-z-sqrt(1-6*z+z^2))/2.

The programs for A299296, there is no canonical definition to state claims against.
-/

/-! ## A299296.P16603103998150316996

`round(A014132(round(3*5^n/2))/7)`
-/

namespace A299296.P16603103998150316996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014132 (SequenceMachineLib.roundAway ((3 * 5 ^ n : ℚ) / 2)).toNat : ℚ) / 7)

end

end A299296.P16603103998150316996

/-! ## A299296.P5588358171967775734

`ceil(A014132((3*5^n-1)/2)/7)`
-/

namespace A299296.P5588358171967775734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A014132 (SequenceMachineLib.roundAway (((3 * 5 ^ n : ℤ) - 1 : ℚ) / 2)).toNat : ℚ) / 7⌉

end

end A299296.P5588358171967775734

/-!
# A299299: Numbers g>1 such that the maximal order of extendable group action on minimal graphs of genus g in the sphere S^3 is 24(g-1).

The programs for A299299, there is no canonical definition to state claims against.
-/

/-! ## A299299.P10143029655656173306

`A299297(lt[A157729(n), A122177(3*n+1)])`
-/

namespace A299299.P10143029655656173306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157729 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122177 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299297 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A299299.P10143029655656173306

