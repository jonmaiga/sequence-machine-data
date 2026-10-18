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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
# A241500: Triangle T(n,k): number of ways of partitioning the n-element multiset {1,1,2,3,...,n-1} into exactly k nonempty parts, n>=1 and 1<=k<=n.

The programs for A241500, there is no canonical definition to state claims against.
-/

/-! ## A241500.P12785967705126864981

`A091863(A220738(n+1))`
-/

namespace A241500.P12785967705126864981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091863 (A220738 (n + 1)).toNat

end

end A241500.P12785967705126864981

/-! ## A241500.P18381396575987943706

`A111660(A009998(n)+A008277(n+1))`
-/

namespace A241500.P18381396575987943706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A009998 n + A008277 (n + 1)).toNat

end

end A241500.P18381396575987943706

/-! ## A241500.P12517841962926089282

`A264428(n)+A072644(A369923(n+1))`
-/

namespace A241500.P12517841962926089282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264428 n + A072644 (A369923 (n + 1)).toNat

end

end A241500.P12517841962926089282

/-! ## A241500.P1937414749201058883

`A287355(A009998(n))+A111660(A220738(n+1))`
-/

namespace A241500.P1937414749201058883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287355 (A009998 n).toNat + A111660 (A220738 (n + 1)).toNat

end

end A241500.P1937414749201058883

/-! ## A241500.P18292999421301936644

`A163563(A080248(n))`
-/

namespace A241500.P18292999421301936644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163563 (A080248 n).toNat

end

end A241500.P18292999421301936644

/-!
# A241504: a(n) = |{0 < g < prime(n): g is not only a primitive root modulo prime(n) but also a partition number given by A000041}|.

The programs for A241504, there is no canonical definition to state claims against.
-/

/-! ## A241504.P3119252601702955687

`A297770(A183558(2*n+1)-A070039(n+1))`
-/

namespace A241504.P3119252601702955687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297770 (A183558 (2 * n + 1) - A070039 (n + 1)).toNat

end

end A241504.P3119252601702955687

/-! ## A241504.P16711466807632536398

`A064547((n+2)*A281485(n+1))`
-/

namespace A241504.P16711466807632536398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 ((n + 2 : ℤ) * A281485 (n + 1)).toNat

end

end A241504.P16711466807632536398

/-! ## A241504.P2523224088936574672

`A007302(A062319(n)+A050872(n))`
-/

namespace A241504.P2523224088936574672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (A062319 n + A050872 n).toNat

end

end A241504.P2523224088936574672

/-! ## A241504.P10284145672785274193

`A297773(A295954(n+1))`
-/

namespace A241504.P10284145672785274193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297773 (A295954 (n + 1)).toNat

end

end A241504.P10284145672785274193

/-!
# A241506: Number of partitions of n such that (number parts having multiplicity 1) is a part and (number of 1s) is a part.

The programs for A241506, there is no canonical definition to state claims against.
-/

/-! ## A241506.P10513464771461900024

`Δ[A085811(n+1)]+A182712(n)-A241507(n)`
-/

namespace A241506.P10513464771461900024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A182712 n - A241507 n)

end

end A241506.P10513464771461900024

/-! ## A241506.P13701493721655568136

`A182712(n)+Δ[A002865(1-(3-n)%(n+1))]-A241507(n)`
-/

namespace A241506.P13701493721655568136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (1 - Int.tmod (3 - (n : ℤ)) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 n + (f1 (n + 1) - f1 n) - A241507 n

end

end A241506.P13701493721655568136

/-! ## A241506.P11753068234980934137

`A182712(A289207(n))+A085811(n+2)-A241507(n)`
-/

namespace A241506.P11753068234980934137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (A289207 n).toNat + A085811 (n + 2) - A241507 n

end

end A241506.P11753068234980934137

/-! ## A241506.P5143614011567049728

`A240486(n)-A241507(n)`
-/

namespace A241506.P5143614011567049728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240486 n - A241507 n

end

end A241506.P5143614011567049728

/-! ## A241506.P7050144397449926596

`A241414(n)+A241416(n)-A241508(n)`
-/

namespace A241506.P7050144397449926596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241414 n + (A241416 n - A241508 n)

end

end A241506.P7050144397449926596

/-! ## A241506.P17741127930320366377

`A241442(n)+A241444(n)-A241508(n)`
-/

namespace A241506.P17741127930320366377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241442 n + (A241444 n - A241508 n)

end

end A241506.P17741127930320366377

/-! ## A241506.P5557219265419799323

`A241511(n)+A241513(n)-A241508(n)`
-/

namespace A241506.P5557219265419799323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241511 n + (A241513 n - A241508 n)

end

end A241506.P5557219265419799323

/-! ## A241506.P11017021335207614703

`A000041(n)-(A241509(n)+A241508(n))-A241507(n)`
-/

namespace A241506.P11017021335207614703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241509 n + A241508 n) - A241507 n

end

end A241506.P11017021335207614703

/-!
# A241507: Number of partitions of n such that (number parts having multiplicity 1) is not a part and (number of 1s) is a part.

The programs for A241507, there is no canonical definition to state claims against.
-/

/-! ## A241507.P12733528734496690821

`A241415(n)+A241417(n)-A241509(n)`
-/

namespace A241507.P12733528734496690821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241415 n + (A241417 n - A241509 n)

end

end A241507.P12733528734496690821

/-! ## A241507.P8893784746376171628

`A241443(n)+A241445(n)-A241509(n)`
-/

namespace A241507.P8893784746376171628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241443 n + (A241445 n - A241509 n)

end

end A241507.P8893784746376171628

/-! ## A241507.P16302572815313766571

`Δ[A085811(n+1)]+A182712(n)-A241506(n)`
-/

namespace A241507.P16302572815313766571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A182712 n - A241506 n)

end

end A241507.P16302572815313766571

/-! ## A241507.P1524467019533395669

`A182712(n)+Δ[A002865(1-(3-n)%(n+1))]-A241506(n)`
-/

namespace A241507.P1524467019533395669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (1 - Int.tmod (3 - (n : ℤ)) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 n + (f1 (n + 1) - f1 n) - A241506 n

end

end A241507.P1524467019533395669

/-! ## A241507.P8106924391047723928

`A182712(A289207(n))+A085811(n+2)-A241506(n)`
-/

namespace A241507.P8106924391047723928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182712 (A289207 n).toNat + A085811 (n + 2) - A241506 n

end

end A241507.P8106924391047723928

/-! ## A241507.P7539926082608191852

`A240486(n)-A241506(n)`
-/

namespace A241507.P7539926082608191852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240486 n - A241506 n

end

end A241507.P7539926082608191852

/-! ## A241507.P4643729277961204144

`A241448(n)+A241450(n)-A241509(n)`
-/

namespace A241507.P4643729277961204144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241448 n + (A241450 n - A241509 n)

end

end A241507.P4643729277961204144

/-! ## A241507.P1310896372557466730

`A241512(n)+A241514(n)-A241509(n)`
-/

namespace A241507.P1310896372557466730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241512 n + (A241514 n - A241509 n)

end

end A241507.P1310896372557466730

/-!
# A241508: Number of partitions of n such that (number parts having multiplicity 1) is a part and (number of 1s) is not a part.

The programs for A241508, there is no canonical definition to state claims against.
-/

/-! ## A241508.P1508566908330038721

`A000041(n)-(A241509(n)+A240486(n))`
-/

namespace A241508.P1508566908330038721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241509 n + A240486 n)

end

end A241508.P1508566908330038721

/-! ## A241508.P7357190335620331068

`A241414(n)+A241416(n)-A241506(n)`
-/

namespace A241508.P7357190335620331068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241414 n + (A241416 n - A241506 n)

end

end A241508.P7357190335620331068

/-! ## A241508.P9520054349539348079

`A241442(n)+A241444(n)-A241506(n)`
-/

namespace A241508.P9520054349539348079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241442 n + (A241444 n - A241506 n)

end

end A241508.P9520054349539348079

/-! ## A241508.P17134121962558077831

`A241511(n)+A241513(n)-A241506(n)`
-/

namespace A241508.P17134121962558077831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241511 n + (A241513 n - A241506 n)

end

end A241508.P17134121962558077831

/-! ## A241508.P16109824085430132038

`sqrt(A001255(n))-(A241509(n)+A240486(n))`
-/

namespace A241508.P16109824085430132038
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241509 n + A240486 n : ℝ)

end

end A241508.P16109824085430132038

/-!
# A241509: Number of partitions of n such that (number parts having multiplicity 1) is not a part and (number of 1s) is not a part.

The programs for A241509, there is no canonical definition to state claims against.
-/

/-! ## A241509.P5860366743372027743

`A241415(n)+A241417(n)-A241507(n)`
-/

namespace A241509.P5860366743372027743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241415 n + (A241417 n - A241507 n)

end

end A241509.P5860366743372027743

/-! ## A241509.P695438728479076746

`A241443(n)+A241445(n)-A241507(n)`
-/

namespace A241509.P695438728479076746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241443 n + (A241445 n - A241507 n)

end

end A241509.P695438728479076746

/-! ## A241509.P16822309169405141083

`A000041(n)-(A241508(n)+A240486(n))`
-/

namespace A241509.P16822309169405141083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241508 n + A240486 n)

end

end A241509.P16822309169405141083

/-! ## A241509.P14684910017292051477

`A241448(n)+A241450(n)-A241507(n)`
-/

namespace A241509.P14684910017292051477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241448 n + (A241450 n - A241507 n)

end

end A241509.P14684910017292051477

/-! ## A241509.P11363477852475614284

`A241512(n)+A241514(n)-A241507(n)`
-/

namespace A241509.P11363477852475614284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241512 n + (A241514 n - A241507 n)

end

end A241509.P11363477852475614284

/-! ## A241509.P14618002816256517985

`A000041(n)-(A241506(n)+A241508(n)+A241507(n))`
-/

namespace A241509.P14618002816256517985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241506 n + (A241508 n + A241507 n))

end

end A241509.P14618002816256517985

/-!
# A241510: Number of partitions of n such that (number parts having multiplicity 1) is a part or (number of 1s) is a part.

The programs for A241510, there is no canonical definition to state claims against.
-/

/-! ## A241510.P11182275453856355423

`A241508(n)+A240486(n)`
-/

namespace A241510.P11182275453856355423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241508 n + A240486 n

end

end A241510.P11182275453856355423

/-! ## A241510.P1696853982722148570

`A241507(n)+A241413(n)`
-/

namespace A241510.P1696853982722148570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241507 n + A241413 n

end

end A241510.P1696853982722148570

/-! ## A241510.P7653322884533111920

`A000041(n)-A241509(n)`
-/

namespace A241510.P7653322884533111920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241509 n

end

end A241510.P7653322884533111920

/-! ## A241510.P14557064217242454031

`A213598(n)-A241509(n)`
-/

namespace A241510.P14557064217242454031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A241509 n

end

end A241510.P14557064217242454031

/-! ## A241510.P17326008296868675076

`sqrt(A001255(n))-A241509(n)`
-/

namespace A241510.P17326008296868675076
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241509 n : ℝ)

end

end A241510.P17326008296868675076

/-!
# A241511: Number of partitions of n such that (number parts having multiplicity 1) is a part and (number of parts > 1) is a part.

The programs for A241511, there is no canonical definition to state claims against.
-/

/-! ## A241511.P7223786044135150218

`A241414(n)+A241416(n)-A241513(n)`
-/

namespace A241511.P7223786044135150218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241414 n + (A241416 n - A241513 n)

end

end A241511.P7223786044135150218

/-! ## A241511.P646727118114163006

`A241442(n)+A241444(n)-A241513(n)`
-/

namespace A241511.P646727118114163006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241442 n + (A241444 n - A241513 n)

end

end A241511.P646727118114163006

/-! ## A241511.P8578601779164021981

`A241506(n)+A241508(n)-A241513(n)`
-/

namespace A241511.P8578601779164021981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241506 n + (A241508 n - A241513 n)

end

end A241511.P8578601779164021981

/-! ## A241511.P18110613995856538598

`A241508(n)+A240486(n)-(A241513(n)+A241507(n))`
-/

namespace A241511.P18110613995856538598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241508 n + A240486 n - (A241513 n + A241507 n)

end

end A241511.P18110613995856538598

/-! ## A241511.P7032292233813347425

`A000041(n)-A241509(n)-(A241513(n)+A241507(n))`
-/

namespace A241511.P7032292233813347425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241509 n - (A241513 n + A241507 n)

end

end A241511.P7032292233813347425

/-! ## A241511.P2905591691234452309

`A000041(n)-A241514(n)-A241512(n)-A241513(n)`
-/

namespace A241511.P2905591691234452309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241514 n - A241512 n - A241513 n

end

end A241511.P2905591691234452309

/-! ## A241511.P2068469425304337636

`A299474(n)/4-A241514(n)-A241512(n)-A241513(n)`
-/

namespace A241511.P2068469425304337636
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299474 n : ℚ) / 4 - (A241514 n : ℚ) - (A241512 n : ℚ) - (A241513 n : ℚ)

end

end A241511.P2068469425304337636

/-!
# A241512: Number of partitions of n such that (number parts having multiplicity 1) is not a part and (number of parts > 1) is a part.

The programs for A241512, there is no canonical definition to state claims against.
-/

/-! ## A241512.P14023387658477921614

`A241415(n)+A241417(n)-A241514(n)`
-/

namespace A241512.P14023387658477921614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241415 n + (A241417 n - A241514 n)

end

end A241512.P14023387658477921614

/-! ## A241512.P10162728274435340070

`A241443(n)+A241445(n)-A241514(n)`
-/

namespace A241512.P10162728274435340070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241443 n + (A241445 n - A241514 n)

end

end A241512.P10162728274435340070

/-! ## A241512.P2879115882771191831

`A241448(n)+A241450(n)-A241514(n)`
-/

namespace A241512.P2879115882771191831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241448 n + (A241450 n - A241514 n)

end

end A241512.P2879115882771191831

/-! ## A241512.P11712086127154953893

`A241507(n)+A241509(n)-A241514(n)`
-/

namespace A241512.P11712086127154953893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241507 n + (A241509 n - A241514 n)

end

end A241512.P11712086127154953893

/-! ## A241512.P11965283335194454636

`A240486(n)-A241506(n)+A241509(n)-A241514(n)`
-/

namespace A241512.P11965283335194454636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240486 n - A241506 n + (A241509 n - A241514 n)

end

end A241512.P11965283335194454636

/-!
# A241513: Number of partitions of n such that (number parts having multiplicity 1) is a part and (number of parts > 1) is not a part.

The programs for A241513, there is no canonical definition to state claims against.
-/

/-! ## A241513.P5395634856044360706

`A241414(n)+A241416(n)-A241511(n)`
-/

namespace A241513.P5395634856044360706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241414 n + (A241416 n - A241511 n)

end

end A241513.P5395634856044360706

/-! ## A241513.P13530469511804954535

`A241442(n)+A241444(n)-A241511(n)`
-/

namespace A241513.P13530469511804954535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241442 n + (A241444 n - A241511 n)

end

end A241513.P13530469511804954535

/-! ## A241513.P12651168533868958231

`A241506(n)+A241508(n)-A241511(n)`
-/

namespace A241513.P12651168533868958231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241506 n + (A241508 n - A241511 n)

end

end A241513.P12651168533868958231

/-! ## A241513.P13509707639048256472

`A241508(n)+A240486(n)-(A241511(n)+A241507(n))`
-/

namespace A241513.P13509707639048256472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241508 n + A240486 n - (A241511 n + A241507 n)

end

end A241513.P13509707639048256472

/-! ## A241513.P15795319248571205394

`A000041(n)-A241509(n)-(A241511(n)+A241507(n))`
-/

namespace A241513.P15795319248571205394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241509 n - (A241511 n + A241507 n)

end

end A241513.P15795319248571205394

/-! ## A241513.P12230725746709288976

`A000041(n)-A241514(n)-A241512(n)-A241511(n)`
-/

namespace A241513.P12230725746709288976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241514 n - A241512 n - A241511 n

end

end A241513.P12230725746709288976

/-!
# A241514: Number of partitions of n such that (number parts having multiplicity 1) is not a part and (number of parts > 1) is not a part.

The programs for A241514, there is no canonical definition to state claims against.
-/

/-! ## A241514.P462417889752675800

`A241415(n)+A241417(n)-A241512(n)`
-/

namespace A241514.P462417889752675800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241415 n + (A241417 n - A241512 n)

end

end A241514.P462417889752675800

/-! ## A241514.P8785007744543437479

`A241443(n)+A241445(n)-A241512(n)`
-/

namespace A241514.P8785007744543437479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241443 n + (A241445 n - A241512 n)

end

end A241514.P8785007744543437479

/-! ## A241514.P413894226734831521

`A241448(n)+A241450(n)-A241512(n)`
-/

namespace A241514.P413894226734831521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241448 n + (A241450 n - A241512 n)

end

end A241514.P413894226734831521

/-! ## A241514.P11669143556696572206

`A241507(n)+A241509(n)-A241512(n)`
-/

namespace A241514.P11669143556696572206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241507 n + (A241509 n - A241512 n)

end

end A241514.P11669143556696572206

/-! ## A241514.P14955546535840102951

`A000041(n)-(A241511(n)+A241513(n)+A241512(n))`
-/

namespace A241514.P14955546535840102951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A241511 n + (A241513 n + A241512 n))

end

end A241514.P14955546535840102951

/-!
# A241515: Number of partitions of n such that (number parts having multiplicity 1) is a part or (number of parts > 1) is a part.

The programs for A241515, there is no canonical definition to state claims against.
-/

/-! ## A241515.P5887491031045246852

`A241512(n)+A241413(n)`
-/

namespace A241515.P5887491031045246852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241512 n + A241413 n

end

end A241515.P5887491031045246852

/-! ## A241515.P1883459891418111705

`A000041(n)-A241514(n)`
-/

namespace A241515.P1883459891418111705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241514 n

end

end A241515.P1883459891418111705

/-! ## A241515.P8980410815549309219

`A213598(n)-A241514(n)`
-/

namespace A241515.P8980410815549309219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A241514 n

end

end A241515.P8980410815549309219

/-! ## A241515.P16330892148783877846

`sqrt(A001255(n))-A241514(n)`
-/

namespace A241515.P16330892148783877846
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241514 n : ℝ)

end

end A241515.P16330892148783877846

/-! ## A241515.P10058668930614874146

`∑[A002865(n)]-A241514(n)`
-/

namespace A241515.P10058668930614874146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241514 n

end

end A241515.P10058668930614874146

/-!
# A241516: Least positive primitive root g < prime(n) modulo prime(n) which is also a partition number given by A000041, or 0 if such a number g does not exist.

The programs for A241516, there is no canonical definition to state claims against.
-/

/-! ## A241516.P11041335046841669297

`A322547(A002233(n+1))`
-/

namespace A241516.P11041335046841669297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322547 (A002233 (n + 1)).toNat

end

end A241516.P11041335046841669297

/-! ## A241516.P15336878885491444209

`A322547(A122028(n+1)%(n+2))`
-/

namespace A241516.P15336878885491444209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322547 (Int.tmod (A122028 (n + 1)) (n + 2 : ℤ)).toNat

end

end A241516.P15336878885491444209

/-! ## A241516.P1123752716501921336

`A322547(A122028(n+1)-A000038(n))`
-/

namespace A241516.P1123752716501921336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322547 (A122028 (n + 1) - A000038 n).toNat

end

end A241516.P1123752716501921336

/-! ## A241516.P1836052012034984719

`A322547(xor(A000038(n), A122028(n+1)))`
-/

namespace A241516.P1836052012034984719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322547 (Int.xor (A000038 n) (A122028 (n + 1))).toNat

end

end A241516.P1836052012034984719

/-! ## A241516.P12071699551581664015

`A322547(A122028(n+1)/(A000038(n)+1))`
-/

namespace A241516.P12071699551581664015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322547 (SequenceMachineLib.roundAway ((A122028 (n + 1) : ℚ) / (A000038 n + 1 : ℚ))).toNat

end

end A241516.P12071699551581664015

/-! ## A241516.P15536354432796418045

`A072775(A002233(n+1))%A165160(n+2)`
-/

namespace A241516.P15536354432796418045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072775 (A002233 (n + 1)).toNat) (A165160 (n + 2))

end

end A241516.P15536354432796418045

/-! ## A241516.P16220916169819739000

`A044916(A122028(n+1))%A114571(A014132(n+1))`
-/

namespace A241516.P16220916169819739000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A044916 (A122028 (n + 1)).toNat) (A114571 (A014132 (n + 1)).toNat)

end

end A241516.P16220916169819739000

/-! ## A241516.P17051341937327983954

`A262038(A002233(n+1)%A334799(n+1))`
-/

namespace A241516.P17051341937327983954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (Int.tmod (A002233 (n + 1)) (A334799 (n + 1))).toNat

end

end A241516.P17051341937327983954

/-!
# A241519: Denominators of b(n) = b(n-1)/2 + 1/(2*n), b(0)=0.

The programs for A241519, there is no canonical definition to state claims against.
-/

/-! ## A241519.P4948339295433048894

`A000165(n)/gcd(A000165(n), A126674(n))`
-/

namespace A241519.P4948339295433048894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 n : ℚ) / (Int.gcd (A000165 n) (A126674 n) : ℚ)

end

end A241519.P4948339295433048894

/-! ## A241519.P851055413552960282

`A040001(A046878(n)+1)*A046879(n)`
-/

namespace A241519.P851055413552960282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A046878 n + 1).toNat * A046879 n

end

end A241519.P851055413552960282

/-! ## A241519.P8630266013895974580

`A000034(A046878(n))*A046879(n)`
-/

namespace A241519.P8630266013895974580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A046878 n).toNat * A046879 n

end

end A241519.P8630266013895974580

/-! ## A241519.P3573012798902856540

`A000142(n)/gcd(A000142(n), A182430(n))*A000034(A046878(n))`
-/

namespace A241519.P3573012798902856540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (Int.gcd (A000142 n) (A182430 n) : ℚ) * (A000034 (A046878 n).toNat : ℚ)

end

end A241519.P3573012798902856540

/-! ## A241519.P206626943206954444

`A040001(A320903(n))*A046879(n)`
-/

namespace A241519.P206626943206954444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A320903 n).toNat * A046879 n

end

end A241519.P206626943206954444

/-!
# A241520: Numbers k such that k^2 == -1 (mod 89).

The programs for A241520, the canonical program `A241520.P13905474125936515436` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241520 has offset 1).

The definition of A241520 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241520.P13905474125936515436

`a(n-2)+89` with `a(0)=34, a(1)=55`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A241520

/-- `a(n-2)+89` -/
def P13905474125936515436.Spec : Prop :=
  ∀ n, (P13905474125936515436.a n : ℤ) = A241520 (n + 1)

theorem P13905474125936515436.correct : P13905474125936515436.Spec := by
  intro n
  simp only [A241520, Nat.add_sub_cancel]

end A241520

/-! ## A241520.P4277153843562827784

`89*n-a(n-1)` with `a(0)=34`
-/

namespace A241520.P4277153843562827784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [34] fun n a =>
  (89 * n : ℤ) - a (n - 1)

end

end A241520.P4277153843562827784

namespace A241520

/-- `89*n-a(n-1)` -/
def P4277153843562827784.Spec : Prop :=
  ∀ n, P4277153843562827784.a n = A241520 (n + 1)

end A241520

/-! ## A241520.P5682389181756004934

`A177044(n+1)-A113804(n+1)`
-/

namespace A241520.P5682389181756004934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177044 (n + 1) - A113804 (n + 1)

end

end A241520.P5682389181756004934

namespace A241520

/-- `A177044(n+1)-A113804(n+1)` -/
def P5682389181756004934.Spec : Prop :=
  ∀ n, P5682389181756004934.a n = A241520 (n + 1)

end A241520

/-! ## A241520.P241999727426781539

`6*A164131(n+1)-A176010(n+1)`
-/

namespace A241520.P241999727426781539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A164131 (n + 1) - A176010 (n + 1)

end

end A241520.P241999727426781539

namespace A241520

/-- `6*A164131(n+1)-A176010(n+1)` -/
def P241999727426781539.Spec : Prop :=
  ∀ n, P241999727426781539.a n = A241520 (n + 1)

end A241520

/-! ## A241520.P821265220155365179

`7*A113805(n+1)-A056020(n+1)`
-/

namespace A241520.P821265220155365179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A113805 (n + 1) - A056020 (n + 1)

end

end A241520.P821265220155365179

namespace A241520

/-- `7*A113805(n+1)-A056020(n+1)` -/
def P821265220155365179.Spec : Prop :=
  ∀ n, P821265220155365179.a n = A241520 (n + 1)

end A241520

/-! ## A241520.P11813301762215730388

`A155450(n+1)+A159007(n+1)-A047341(n+1)`
-/

namespace A241520.P11813301762215730388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155450 (n + 1) + (A159007 (n + 1) - A047341 (n + 1))

end

end A241520.P11813301762215730388

namespace A241520

/-- `A155450(n+1)+A159007(n+1)-A047341(n+1)` -/
def P11813301762215730388.Spec : Prop :=
  ∀ n, P11813301762215730388.a n = A241520 (n + 1)

end A241520

/-! ## A241520.P11537413029360964639

`A155096(n+1)+A241407(n+1)-A155086(n+1)`
-/

namespace A241520.P11537413029360964639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155096 (n + 1) + (A241407 (n + 1) - A155086 (n + 1))

end

end A241520.P11537413029360964639

namespace A241520

/-- `A155096(n+1)+A241407(n+1)-A155086(n+1)` -/
def P11537413029360964639.Spec : Prop :=
  ∀ n, P11537413029360964639.a n = A241520 (n + 1)

end A241520

/-! ## A241520.P4541618745437293494

`A155107(n+1)+A241521(n+1)-A241406(n+1)`
-/

namespace A241520.P4541618745437293494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155107 (n + 1) + (A241521 (n + 1) - A241406 (n + 1))

end

end A241520.P4541618745437293494

namespace A241520

/-- `A155107(n+1)+A241521(n+1)-A241406(n+1)` -/
def P4541618745437293494.Spec : Prop :=
  ∀ n, P4541618745437293494.a n = A241520 (n + 1)

end A241520

/-! ## A241520.P2801626533071012005

`A028242(n)+A008593(A047621(n+1))`
-/

namespace A241520.P2801626533071012005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n + A008593 (A047621 (n + 1)).toNat

end

end A241520.P2801626533071012005

namespace A241520

/-- `A028242(n)+A008593(A047621(n+1))` -/
def P2801626533071012005.Spec : Prop :=
  ∀ n, P2801626533071012005.a n = A241520 (n + 1)

end A241520

/-! ## A241520.P11080925437426225775

`A008594(A047621(n+1))-A008619(A017005(n))`
-/

namespace A241520.P11080925437426225775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (A047621 (n + 1)).toNat - A008619 (A017005 n).toNat

end

end A241520.P11080925437426225775

namespace A241520

/-- `A008594(A047621(n+1))-A008619(A017005(n))` -/
def P11080925437426225775.Spec : Prop :=
  ∀ n, P11080925437426225775.a n = A241520 (n + 1)

end A241520

/-!
# A241521: Numbers k such that k^2 == -1 (mod 97).

The programs for A241521, the canonical program `A241521.P17355997727056769658` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241521 has offset 1).

The definition of A241521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241521.P17355997727056769658

`a(n-2)+97` with `a(0)=22, a(1)=75`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A241521

/-- `a(n-2)+97` -/
def P17355997727056769658.Spec : Prop :=
  ∀ n, (P17355997727056769658.a n : ℤ) = A241521 (n + 1)

theorem P17355997727056769658.correct : P17355997727056769658.Spec := by
  intro n
  simp only [A241521, Nat.add_sub_cancel]

end A241521

/-! ## A241521.P4255304768376547980

`97*n-a(n-1)` with `a(0)=22`
-/

namespace A241521.P4255304768376547980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [22] fun n a =>
  (97 * n : ℤ) - a (n - 1)

end

end A241521.P4255304768376547980

namespace A241521

/-- `97*n-a(n-1)` -/
def P4255304768376547980.Spec : Prop :=
  ∀ n, P4255304768376547980.a n = A241521 (n + 1)

end A241521

/-! ## A241521.P13696547971226409043

`A182323(n)-A174971(n)`
-/

namespace A241521.P13696547971226409043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182323 n - A174971 n

end

end A241521.P13696547971226409043

namespace A241521

/-- `A182323(n)-A174971(n)` -/
def P13696547971226409043.Spec : Prop :=
  ∀ n, P13696547971226409043.a n = A241521 (n + 1)

end A241521

/-! ## A241521.P17482099968070635897

`A168419(n+1)+Δ[A195323(n)]`
-/

namespace A241521.P17482099968070635897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195323 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168419 (n + 1) + (f1 (n + 1) - f1 n)

end

end A241521.P17482099968070635897

namespace A241521

/-- `A168419(n+1)+Δ[A195323(n)]` -/
def P17482099968070635897.Spec : Prop :=
  ∀ n, P17482099968070635897.a n = A241521 (n + 1)

end A241521

/-! ## A241521.P16880503663227543383

`A156674(n+1)+A073762(n+1)`
-/

namespace A241521.P16880503663227543383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156674 (n + 1) + A073762 (n + 1)

end

end A241521.P16880503663227543383

namespace A241521

/-- `A156674(n+1)+A073762(n+1)` -/
def P16880503663227543383.Spec : Prop :=
  ∀ n, P16880503663227543383.a n = A241521 (n + 1)

end A241521

/-! ## A241521.P7265687688958360461

`A152832(n)+2*A073762(n+1)`
-/

namespace A241521.P7265687688958360461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152832 n + 2 * A073762 (n + 1)

end

end A241521.P7265687688958360461

namespace A241521

/-- `A152832(n)+2*A073762(n+1)` -/
def P7265687688958360461.Spec : Prop :=
  ∀ n, P7265687688958360461.a n = A241521 (n + 1)

end A241521

/-! ## A241521.P11890104860823302713

`A156797(n+1)+2*A168397(n+1)`
-/

namespace A241521.P11890104860823302713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156797 (n + 1) + 2 * A168397 (n + 1)

end

end A241521.P11890104860823302713

namespace A241521

/-- `A156797(n+1)+2*A168397(n+1)` -/
def P11890104860823302713.Spec : Prop :=
  ∀ n, P11890104860823302713.a n = A241521 (n + 1)

end A241521

/-! ## A241521.P6130385774110791782

`A159008(n+1)+A167534(n)-A167533(n)`
-/

namespace A241521.P6130385774110791782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159008 (n + 1) + (A167534 n - A167533 n)

end

end A241521.P6130385774110791782

namespace A241521

/-- `A159008(n+1)+A167534(n)-A167533(n)` -/
def P6130385774110791782.Spec : Prop :=
  ∀ n, P6130385774110791782.a n = A241521 (n + 1)

end A241521

/-! ## A241521.P8289154961733041467

`A241406(n+1)+A241520(n+1)-A155107(n+1)`
-/

namespace A241521.P8289154961733041467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241406 (n + 1) + (A241520 (n + 1) - A155107 (n + 1))

end

end A241521.P8289154961733041467

namespace A241521

/-- `A241406(n+1)+A241520(n+1)-A155107(n+1)` -/
def P8289154961733041467.Spec : Prop :=
  ∀ n, P8289154961733041467.a n = A241521 (n + 1)

end A241521

/-! ## A241521.P13608731602167645900

`A301293(A301293(2*n+1))+8*n+4`
-/

namespace A241521.P13608731602167645900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301293 (A301293 (2 * n + 1)).toNat + (8 * n + 4 : ℤ)

end

end A241521.P13608731602167645900

namespace A241521

/-- `A301293(A301293(2*n+1))+8*n+4` -/
def P13608731602167645900.Spec : Prop :=
  ∀ n, P13608731602167645900.a n = A241521 (n + 1)

end A241521

/-! ## A241521.P10004835414924303950

`A168413(n+1)+A168413(A017317(n))-n`
-/

namespace A241521.P10004835414924303950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168413 (n + 1) + (A168413 (A017317 n).toNat - (n : ℤ))

end

end A241521.P10004835414924303950

namespace A241521

/-- `A168413(n+1)+A168413(A017317(n))-n` -/
def P10004835414924303950.Spec : Prop :=
  ∀ n, P10004835414924303950.a n = A241521 (n + 1)

end A241521

/-! ## A241521.P1171395864037858601

`A168418(A017461(n))-(n+1)`
-/

namespace A241521.P1171395864037858601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168418 (A017461 n).toNat - (n + 1 : ℤ)

end

end A241521.P1171395864037858601

namespace A241521

/-- `A168418(A017461(n))-(n+1)` -/
def P1171395864037858601.Spec : Prop :=
  ∀ n, P1171395864037858601.a n = A241521 (n + 1)

end A241521

/-!
# A241522: The number of P-positions in the game of Nim with up to 4 piles, allowing for piles of zero, such that the number of objects in each pile does not exceed n.

The programs for A241522, there is no canonical definition to state claims against.
-/

/-! ## A241522.P13011680901112017235

`∑[∑[12*n]+1-2*(2*∑[and(n, -n)²]+n)]`
-/

namespace A241522.P13011680901112017235
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ) - 2 * (2 * (∑ j ∈ Finset.range (n + 1), f3 j) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241522.P13011680901112017235

/-! ## A241522.P8494479349486848026

`∑[A241718(n)]`
-/

namespace A241522.P8494479349486848026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241522.P8494479349486848026

/-! ## A241522.P9800445277922359446

`∑[6*A213673(Δ[n²])+1]`
-/

namespace A241522.P9800445277922359446
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A213673 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241522.P9800445277922359446

/-! ## A241522.P18442425159656890917

`∑[2*A222423(2*n)]+(n+1)²`
-/

namespace A241522.P18442425159656890917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A222423 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A241522.P18442425159656890917

/-! ## A241522.P18297114333188194574

`A241718(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A241522.P18297114333188194574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A241718 n + a (A023443 n).toNat

end

end A241522.P18297114333188194574

/-!
# A241523: The number of P-positions in the game of Nim with up to 5 piles, allowing for piles of zero, such that the number of objects in each pile does not exceed n.

The programs for A241523, there is no canonical definition to state claims against.
-/

/-! ## A241523.P3070379806094630189

`∑[A241731(n)]`
-/

namespace A241523.P3070379806094630189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241731 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241523.P3070379806094630189

/-! ## A241523.P14917709834892778470

`A241731(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A241523.P14917709834892778470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A241731 n + a (A023443 n).toNat

end

end A241523.P14917709834892778470

/-! ## A241523.P2315884681475010566

`∑{d}[2^n, A241731(log2(#))]`
-/

namespace A241523.P2315884681475010566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A241731 (SequenceMachineLib.roundAway (Real.logb 2 (d : ℝ))).toNat

end

end A241523.P2315884681475010566

/-!
# A241524: a(n) = 4^n*(n/4 + binomial(n+1/2, 1/2)).

The programs for A241524, the canonical program `A241524.P1056954697449867720` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241524 has offset 0).

The definition of A241524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241524.P1056954697449867720

`A002697(n)+A002457(n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A241524

/-- `A002697(n)+A002457(n)` -/
def P1056954697449867720.Spec : Prop :=
  ∀ n, P1056954697449867720.a n = A241524 n

theorem P1056954697449867720.correct : P1056954697449867720.Spec := by
  intro n
  simp only [A241524]

end A241524

/-! ## A241524.P16937923420645756809

`A172060(n)+A079028(n)`
-/

namespace A241524.P16937923420645756809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172060 n + A079028 n

end

end A241524.P16937923420645756809

namespace A241524

/-- `A172060(n)+A079028(n)` -/
def P16937923420645756809.Spec : Prop :=
  ∀ n, P16937923420645756809.a n = A241524 n

end A241524

/-! ## A241524.P2288969160560639241

`A002457(n)+record[A235789(n)]`
-/

namespace A241524.P2288969160560639241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241524.P2288969160560639241

namespace A241524

/-- `A002457(n)+record[A235789(n)]` -/
def P2288969160560639241.Spec : Prop :=
  ∀ n, P2288969160560639241.a n = A241524 n

end A241524

/-! ## A241524.P17396437134131084367

`A049610(2*n)+A002457(n)`
-/

namespace A241524.P17396437134131084367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (2 * n) + A002457 n

end

end A241524.P17396437134131084367

namespace A241524

/-- `A049610(2*n)+A002457(n)` -/
def P17396437134131084367.Spec : Prop :=
  ∀ n, P17396437134131084367.a n = A241524 n

end A241524

/-! ## A241524.P4259164674050752357

`A002457(n)-A168150(2*n)`
-/

namespace A241524.P4259164674050752357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n - A168150 (2 * n)

end

end A241524.P4259164674050752357

namespace A241524

/-- `A002457(n)-A168150(2*n)` -/
def P4259164674050752357.Spec : Prop :=
  ∀ n, P4259164674050752357.a n = A241524 n

end A241524

/-! ## A241524.P7917604565806879804

`A002457(n)+record[-A168150(n)]`
-/

namespace A241524.P7917604565806879804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A168150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241524.P7917604565806879804

namespace A241524

/-- `A002457(n)+record[-A168150(n)]` -/
def P7917604565806879804.Spec : Prop :=
  ∀ n, P7917604565806879804.a n = A241524 n

end A241524

/-! ## A241524.P16599298298474578665

`record[A056040(n+1)-A168150(n)]`
-/

namespace A241524.P16599298298474578665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (n + 1) - A168150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241524.P16599298298474578665

namespace A241524

/-- `record[A056040(n+1)-A168150(n)]` -/
def P16599298298474578665.Spec : Prop :=
  ∀ n, P16599298298474578665.a n = A241524 n

end A241524

/-! ## A241524.P3920867138596580841

`A002697(n)+record[A274707(n+2)]`
-/

namespace A241524.P3920867138596580841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274707 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241524.P3920867138596580841

namespace A241524

/-- `A002697(n)+record[A274707(n+2)]` -/
def P3920867138596580841.Spec : Prop :=
  ∀ n, P3920867138596580841.a n = A241524 n

end A241524

/-! ## A241524.P12288158780222329612

`A002457(n)+n*A011782(n)²`
-/

namespace A241524.P12288158780222329612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n + (n : ℤ) * A011782 n ^ 2

end

end A241524.P12288158780222329612

namespace A241524

/-- `A002457(n)+n*A011782(n)²` -/
def P12288158780222329612.Spec : Prop :=
  ∀ n, P12288158780222329612.a n = A241524 n

end A241524

/-! ## A241524.P18268551858662721342

`A056040(2*n+1)+A002697(n)`
-/

namespace A241524.P18268551858662721342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * n + 1) + A002697 n

end

end A241524.P18268551858662721342

namespace A241524

/-- `A056040(2*n+1)+A002697(n)` -/
def P18268551858662721342.Spec : Prop :=
  ∀ n, P18268551858662721342.a n = A241524 n

end A241524

/-! ## A241524.P10374155316084345357

`A274707(2*(n+1))+A002697(n)`
-/

namespace A241524.P10374155316084345357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274707 (2 * (n + 1)) + A002697 n

end

end A241524.P10374155316084345357

namespace A241524

/-- `A274707(2*(n+1))+A002697(n)` -/
def P10374155316084345357.Spec : Prop :=
  ∀ n, P10374155316084345357.a n = A241524 n

end A241524

/-! ## A241524.P2250925308170294660

`A056040(2*n+1)-A168150(2*n)`
-/

namespace A241524.P2250925308170294660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * n + 1) - A168150 (2 * n)

end

end A241524.P2250925308170294660

namespace A241524

/-- `A056040(2*n+1)-A168150(2*n)` -/
def P2250925308170294660.Spec : Prop :=
  ∀ n, P2250925308170294660.a n = A241524 n

end A241524

/-! ## A241524.P7185572157852318733

`A002697(n)+A000108(n+1)*∑[n+1]`
-/

namespace A241524.P7185572157852318733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + A000108 (n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A241524.P7185572157852318733

namespace A241524

/-- `A002697(n)+A000108(n+1)*∑[n+1]` -/
def P7185572157852318733.Spec : Prop :=
  ∀ n, P7185572157852318733.a n = A241524 n

end A241524

/-! ## A241524.P17369980175485281488

`A002697(n)+C(2*(n+1), 2)*A000108(n)`
-/

namespace A241524.P17369980175485281488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002697 n + (Nat.choose (2 * (n + 1)) 2 : ℤ) * A000108 n

end

end A241524.P17369980175485281488

namespace A241524

/-- `A002697(n)+C(2*(n+1), 2)*A000108(n)` -/
def P17369980175485281488.Spec : Prop :=
  ∀ n, P17369980175485281488.a n = A241524 n

end A241524

/-! ## A241524.P12736950384755569807

`record[A235789(n)]+A000108(n+1)*∑[n+1]`
-/

namespace A241524.P12736950384755569807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235789 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A000108 (n + 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A241524.P12736950384755569807

namespace A241524

/-- `record[A235789(n)]+A000108(n+1)*∑[n+1]` -/
def P12736950384755569807.Spec : Prop :=
  ∀ n, P12736950384755569807.a n = A241524 n

end A241524

/-! ## A241524.P14846479898600113775

`A049610(2*n)+A000108(n+1)*∑[n+1]`
-/

namespace A241524.P14846479898600113775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (2 * n) + A000108 (n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A241524.P14846479898600113775

namespace A241524

/-- `A049610(2*n)+A000108(n+1)*∑[n+1]` -/
def P14846479898600113775.Spec : Prop :=
  ∀ n, P14846479898600113775.a n = A241524 n

end A241524

/-! ## A241524.P13701941423998994213

`record[A235789(n)]+C(2*(n+1), 2)*A000108(n)`
-/

namespace A241524.P13701941423998994213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (Nat.choose (2 * (n + 1)) 2 : ℤ) * A000108 n

end

end A241524.P13701941423998994213

namespace A241524

/-- `record[A235789(n)]+C(2*(n+1), 2)*A000108(n)` -/
def P13701941423998994213.Spec : Prop :=
  ∀ n, P13701941423998994213.a n = A241524 n

end A241524

/-! ## A241524.P15690981924824926112

`record[-A168150(n)]+A000108(n+1)*∑[n+1]`
-/

namespace A241524.P15690981924824926112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A168150 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + A000108 (n + 1) * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A241524.P15690981924824926112

namespace A241524

/-- `record[-A168150(n)]+A000108(n+1)*∑[n+1]` -/
def P15690981924824926112.Spec : Prop :=
  ∀ n, P15690981924824926112.a n = A241524 n

end A241524

/-! ## A241524.P3408493892977683001

`abs(A168150(2*n))+A000108(n+1)*∑[n+1]`
-/

namespace A241524.P3408493892977683001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168150 (2 * n)| + A000108 (n + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A241524.P3408493892977683001

namespace A241524

/-- `abs(A168150(2*n))+A000108(n+1)*∑[n+1]` -/
def P3408493892977683001.Spec : Prop :=
  ∀ n, P3408493892977683001.a n = A241524 n

end A241524

/-! ## A241524.P14597244854794126788

`record[-A168150(n)]+C(2*(n+1), 2)*A000108(n)`
-/

namespace A241524.P14597244854794126788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A168150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (Nat.choose (2 * (n + 1)) 2 : ℤ) * A000108 n

end

end A241524.P14597244854794126788

namespace A241524

/-- `record[-A168150(n)]+C(2*(n+1), 2)*A000108(n)` -/
def P14597244854794126788.Spec : Prop :=
  ∀ n, P14597244854794126788.a n = A241524 n

end A241524

/-!
# A241526: Number of different positions in which a square with side length k, 1 <= k <= n - floor(n/3), can be placed within a bi-symmetric triangle of 1 X 1 squares of height n.

The programs for A241526, the canonical program `A241526.P9320345877725135817` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241526 has offset 1).

The definition of A241526 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241526.P9320345877725135817

`(4*(n+1)^3+15*(n+1)²+17*(n+1)-6*floor((n+1)/3))/18`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A241526

/-- `(4*(n+1)^3+15*(n+1)²+17*(n+1)-6*floor((n+1)/3))/18` -/
def P9320345877725135817.Spec : Prop :=
  ∀ n, P9320345877725135817.a n = (A241526 (n + 1) : ℚ)

end A241526

/-! ## A241526.P6446015582776815921

`floor(∑[∑[∑[a(n-3)^a(n-1)]]])` with `a(0)=2, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A241526.P6446015582776815921
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 1] fun n f3 =>
  f3 (n - 3) ^ f3 (n - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241526.P6446015582776815921

namespace A241526

/-- `floor(∑[∑[∑[a(n-3)^a(n-1)]]])` -/
def P6446015582776815921.Spec : Prop :=
  ∀ n, (P6446015582776815921.a n : ℤ) = A241526 (n + 1)

end A241526

/-! ## A241526.P9467040957756449634

`∑[-(∑[∑[n²%3-2]]+1)]+n+1`
-/

namespace A241526.P9467040957756449634
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 % 3 : ℕ) : ℤ) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A241526.P9467040957756449634

namespace A241526

/-- `∑[-(∑[∑[n²%3-2]]+1)]+n+1` -/
def P9467040957756449634.Spec : Prop :=
  ∀ n, P9467040957756449634.a n = A241526 (n + 1)

end A241526

/-! ## A241526.P17816250054061219943

`∑[A183857(n+1)]+1+n`
-/

namespace A241526.P17816250054061219943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183857 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℤ)

end

end A241526.P17816250054061219943

namespace A241526

/-- `∑[A183857(n+1)]+1+n` -/
def P17816250054061219943.Spec : Prop :=
  ∀ n, P17816250054061219943.a n = A241526 (n + 1)

end A241526

/-! ## A241526.P3146627698343023131

`∑[n+1]+∑[∑[A042968(n+1)]]`
-/

namespace A241526.P3146627698343023131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A241526.P3146627698343023131

namespace A241526

/-- `∑[n+1]+∑[∑[A042968(n+1)]]` -/
def P3146627698343023131.Spec : Prop :=
  ∀ n, P3146627698343023131.a n = A241526 (n + 1)

end A241526

/-! ## A241526.P4584356945758051384

`∑[comp[A004767(n)]+2]+a(n-1)` with `a(0)=2`
-/

namespace A241526.P4584356945758051384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A241526.P4584356945758051384

namespace A241526

/-- `∑[comp[A004767(n)]+2]+a(n-1)` -/
def P4584356945758051384.Spec : Prop :=
  ∀ n, (P4584356945758051384.a n : ℤ) = A241526 (n + 1)

end A241526

/-! ## A241526.P16281154545154207732

`A254874(n)+A002623(n)`
-/

namespace A241526.P16281154545154207732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254874 n + A002623 n

end

end A241526.P16281154545154207732

namespace A241526

/-- `A254874(n)+A002623(n)` -/
def P16281154545154207732.Spec : Prop :=
  ∀ n, P16281154545154207732.a n = A241526 (n + 1)

end A241526

/-! ## A241526.P11540518396869842081

`A014125(n)+A000292(n+1)`
-/

namespace A241526.P11540518396869842081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 n + A000292 (n + 1)

end

end A241526.P11540518396869842081

namespace A241526

/-- `A014125(n)+A000292(n+1)` -/
def P11540518396869842081.Spec : Prop :=
  ∀ n, P11540518396869842081.a n = A241526 (n + 1)

end A241526

/-! ## A241526.P4407824852883160003

`A258440(n+1)-A254874(n)`
-/

namespace A241526.P4407824852883160003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258440 (n + 1) - A254874 n

end

end A241526.P4407824852883160003

namespace A241526

/-- `A258440(n+1)-A254874(n)` -/
def P4407824852883160003.Spec : Prop :=
  ∀ n, P4407824852883160003.a n = A241526 (n + 1)

end A241526

/-! ## A241526.P2048645385149914013

`A358042(n+1)+∑[n+1]`
-/

namespace A241526.P2048645385149914013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358042 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A241526.P2048645385149914013

namespace A241526

/-- `A358042(n+1)+∑[n+1]` -/
def P2048645385149914013.Spec : Prop :=
  ∀ n, P2048645385149914013.a n = A241526 (n + 1)

end A241526

/-! ## A241526.P4787103610446014980

`A001840(n+1)+A092498(n)+A001840(n)`
-/

namespace A241526.P4787103610446014980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (n + 1) + (A092498 n + A001840 n)

end

end A241526.P4787103610446014980

namespace A241526

/-- `A001840(n+1)+A092498(n)+A001840(n)` -/
def P4787103610446014980.Spec : Prop :=
  ∀ n, P4787103610446014980.a n = A241526 (n + 1)

end A241526

/-! ## A241526.P16190096692213945871

`A092498(n+1)-(A156040(n+1)+A156040(n))`
-/

namespace A241526.P16190096692213945871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092498 (n + 1) - (A156040 (n + 1) + A156040 n)

end

end A241526.P16190096692213945871

namespace A241526

/-- `A092498(n+1)-(A156040(n+1)+A156040(n))` -/
def P16190096692213945871.Spec : Prop :=
  ∀ n, P16190096692213945871.a n = A241526 (n + 1)

end A241526

/-! ## A241526.P8046397880340582833

`A092498(n)+A000212(n+2)`
-/

namespace A241526.P8046397880340582833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092498 n + A000212 (n + 2)

end

end A241526.P8046397880340582833

namespace A241526

/-- `A092498(n)+A000212(n+2)` -/
def P8046397880340582833.Spec : Prop :=
  ∀ n, P8046397880340582833.a n = A241526 (n + 1)

end A241526

/-! ## A241526.P890891902762973729

`A000601(2*n)+A000212(n+2)`
-/

namespace A241526.P890891902762973729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 (2 * n) + A000212 (n + 2)

end

end A241526.P890891902762973729

namespace A241526

/-- `A000601(2*n)+A000212(n+2)` -/
def P890891902762973729.Spec : Prop :=
  ∀ n, P890891902762973729.a n = A241526 (n + 1)

end A241526

/-! ## A241526.P9608681339838732452

`A001399(2*n+1)+A000601(2*n)`
-/

namespace A241526.P9608681339838732452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (2 * n + 1) + A000601 (2 * n)

end

end A241526.P9608681339838732452

namespace A241526

/-- `A001399(2*n+1)+A000601(2*n)` -/
def P9608681339838732452.Spec : Prop :=
  ∀ n, P9608681339838732452.a n = A241526 (n + 1)

end A241526

/-! ## A241526.P14946809304400862840

`A000601(Δ[n²])`
-/

namespace A241526.P14946809304400862840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000601 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A241526.P14946809304400862840

namespace A241526

/-- `A000601(Δ[n²])` -/
def P14946809304400862840.Spec : Prop :=
  ∀ n, P14946809304400862840.a n = A241526 (n + 1)

end A241526

/-! ## A241526.P6067646917959493316

`A014125(n)+A008804(2*n)`
-/

namespace A241526.P6067646917959493316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014125 n + A008804 (2 * n)

end

end A241526.P6067646917959493316

namespace A241526

/-- `A014125(n)+A008804(2*n)` -/
def P6067646917959493316.Spec : Prop :=
  ∀ n, P6067646917959493316.a n = A241526 (n + 1)

end A241526

/-! ## A241526.P2143062382670079881

`A058187(2*n)+A014125(n)`
-/

namespace A241526.P2143062382670079881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058187 (2 * n) + A014125 n

end

end A241526.P2143062382670079881

namespace A241526

/-- `A058187(2*n)+A014125(n)` -/
def P2143062382670079881.Spec : Prop :=
  ∀ n, P2143062382670079881.a n = A241526 (n + 1)

end A241526

/-!
# A241527: a(n) = n^3 + (3^n+1)/2.

The programs for A241527, the canonical program `A241527.P6609325551221532550` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241527 has offset 0).

The definition of A241527 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241527.P6609325551221532550

`A000578(n)+A007051(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A241527

/-- `A000578(n)+A007051(n)` -/
def P6609325551221532550.Spec : Prop :=
  ∀ n, P6609325551221532550.a n = A241527 n

theorem P6609325551221532550.correct : P6609325551221532550.Spec := by
  intro n
  simp only [A241527]

end A241527

/-! ## A241527.P13518544590562293118

`n^3+(3^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A241527.P13518544590562293118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℚ) + (3 ^ n + 1 : ℚ) / 2

end

end A241527.P13518544590562293118

namespace A241527

/-- `n^3+(3^n+1)/2` -/
def P13518544590562293118.Spec : Prop :=
  ∀ n, P13518544590562293118.a n = (A241527 n : ℚ)

end A241527

/-! ## A241527.P17332418273904618634

`abs(n^3+xor(2, ∑[floor(3^(n-1))])-1)`
-/

namespace A241527.P17332418273904618634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 3 : ℤ) + (Int.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j) - 1)|

end

end A241527.P17332418273904618634

namespace A241527

/-- `abs(n^3+xor(2, ∑[floor(3^(n-1))])-1)` -/
def P17332418273904618634.Spec : Prop :=
  ∀ n, P17332418273904618634.a n = A241527 n

end A241527

/-! ## A241527.P17478488549699793853

`or(1, A003462(n)+n^3)`
-/

namespace A241527.P17478488549699793853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A003462 n + (n ^ 3 : ℤ))

end

end A241527.P17478488549699793853

namespace A241527

/-- `or(1, A003462(n)+n^3)` -/
def P17478488549699793853.Spec : Prop :=
  ∀ n, P17478488549699793853.a n = A241527 n

end A241527

/-! ## A241527.P197423412223214534

`xor(1, A003462(n)+A000578(n))`
-/

namespace A241527.P197423412223214534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A003462 n + A000578 n)

end

end A241527.P197423412223214534

namespace A241527

/-- `xor(1, A003462(n)+A000578(n))` -/
def P197423412223214534.Spec : Prop :=
  ∀ n, P197423412223214534.a n = A241527 n

end A241527

/-! ## A241527.P7700169153248805722

`ceil(n^3+sqrt(A051500(n)))`
-/

namespace A241527.P7700169153248805722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 3 : ℝ) + Real.sqrt (A051500 n : ℝ)⌉

end

end A241527.P7700169153248805722

namespace A241527

/-- `ceil(n^3+sqrt(A051500(n)))` -/
def P7700169153248805722.Spec : Prop :=
  ∀ n, P7700169153248805722.a n = A241527 n

end A241527

/-!
# A241528: Primes p such that p + 1234567890 is also prime where 1234567890 is the first pandigital number with digits in order.

The programs for A241528, there is no canonical definition to state claims against.
-/

/-! ## A241528.P9872318782539566234

`A156284(∑[2*A156233(n)])`
-/

namespace A241528.P9872318782539566234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A156233 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156284 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A241528.P9872318782539566234

/-! ## A241528.P9095843868957562310

`A156284(A081350(n)+A000720(3*n+5))`
-/

namespace A241528.P9095843868957562310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156284 (A081350 n + A000720 (3 * n + 5)).toNat

end

end A241528.P9095843868957562310

/-!
# A241530: a(n) = binomial(n,floor(n/2))*binomial(n+1,floor(n/2+1/2))*(1+floor(n/2))/(1+2*floor(n/2)).

The programs for A241530, the canonical program `A241530.P4817872474293431452` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241530 has offset 0).

The definition of A241530 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A241530.P4817872474293431452

`((8*n-4)*a(n-1)+16*(n-1)*(n-2)*a(n-2))/(n*(n+1))` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A241530

/-- `((8*n-4)*a(n-1)+16*(n-1)*(n-2)*a(n-2))/(n*(n+1))` -/
def P4817872474293431452.Spec : Prop :=
  ∀ n, P4817872474293431452.a n = (A241530 n : ℚ)

end A241530

/-! ## A241530.P18037963722854373153

`C(n, floor(n/2))*A063886(n)`
-/

namespace A241530.P18037963722854373153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℤ) * A063886 n

end

end A241530.P18037963722854373153

namespace A241530

/-- `C(n, floor(n/2))*A063886(n)` -/
def P18037963722854373153.Spec : Prop :=
  ∀ n, P18037963722854373153.a n = A241530 n

end A241530

/-! ## A241530.P7166460483846311211

`A001405(n)*A063886(n)`
-/

namespace A241530.P7166460483846311211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A063886 n

end

end A241530.P7166460483846311211

namespace A241530

/-- `A001405(n)*A063886(n)` -/
def P7166460483846311211.Spec : Prop :=
  ∀ n, P7166460483846311211.a n = A241530 n

end A241530

/-! ## A241530.P15161105702706694031

`abs(A063886(n)*A126930(n))`
-/

namespace A241530.P15161105702706694031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A063886 n * A126930 n|

end

end A241530.P15161105702706694031

namespace A241530

/-- `abs(A063886(n)*A126930(n))` -/
def P15161105702706694031.Spec : Prop :=
  ∀ n, P15161105702706694031.a n = A241530 n

end A241530

/-! ## A241530.P9682200615450492246

`sqrt(A018224(n))*A063886(n)`
-/

namespace A241530.P9682200615450492246
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A018224 n : ℝ) * (A063886 n : ℝ)

end

end A241530.P9682200615450492246

namespace A241530

/-- `sqrt(A018224(n))*A063886(n)` -/
def P9682200615450492246.Spec : Prop :=
  ∀ n, P9682200615450492246.a n = (A241530 n : ℝ)

end A241530

/-! ## A241530.P15020255078828057299

`sqrt(A092266(n))*A001405(n)`
-/

namespace A241530.P15020255078828057299
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A092266 n : ℝ) * (A001405 n : ℝ)

end

end A241530.P15020255078828057299

namespace A241530

/-- `sqrt(A092266(n))*A001405(n)` -/
def P15020255078828057299.Spec : Prop :=
  ∀ n, P15020255078828057299.a n = (A241530 n : ℝ)

end A241530

/-! ## A241530.P15576207748020759633

`(A014495(n)+1)*A063886(n)`
-/

namespace A241530.P15576207748020759633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014495 n + 1) * A063886 n

end

end A241530.P15576207748020759633

namespace A241530

/-- `(A014495(n)+1)*A063886(n)` -/
def P15576207748020759633.Spec : Prop :=
  ∀ n, P15576207748020759633.a n = A241530 n

end A241530

/-! ## A241530.P15418679208728948216

`A128014(n+1)*A128014(n)`
-/

namespace A241530.P15418679208728948216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (n + 1) * A128014 n

end

end A241530.P15418679208728948216

namespace A241530

/-- `A128014(n+1)*A128014(n)` -/
def P15418679208728948216.Spec : Prop :=
  ∀ n, P15418679208728948216.a n = A241530 n

end A241530

/-! ## A241530.P7377383512586032905

`A063886(n)*A210736(n+1)`
-/

namespace A241530.P7377383512586032905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 n * A210736 (n + 1)

end

end A241530.P7377383512586032905

namespace A241530

/-- `A063886(n)*A210736(n+1)` -/
def P7377383512586032905.Spec : Prop :=
  ∀ n, P7377383512586032905.a n = A241530 n

end A241530

/-! ## A241530.P7590187035189471699

`A056040(n)*A241543(n+1)`
-/

namespace A241530.P7590187035189471699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 n * A241543 (n + 1)

end

end A241530.P7590187035189471699

namespace A241530

/-- `A056040(n)*A241543(n+1)` -/
def P7590187035189471699.Spec : Prop :=
  ∀ n, P7590187035189471699.a n = A241530 n

end A241530

/-! ## A241530.P16897128611278077220

`(A051920(n)-1)*A063886(n)`
-/

namespace A241530.P16897128611278077220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A051920 n - 1) * A063886 n

end

end A241530.P16897128611278077220

namespace A241530

/-- `(A051920(n)-1)*A063886(n)` -/
def P16897128611278077220.Spec : Prop :=
  ∀ n, P16897128611278077220.a n = A241530 n

end A241530

/-! ## A241530.P5978776387588120796

`abs(A128057(n+1)*A128057(n))`
-/

namespace A241530.P5978776387588120796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A128057 (n + 1) * A128057 n|

end

end A241530.P5978776387588120796

namespace A241530

/-- `abs(A128057(n+1)*A128057(n))` -/
def P5978776387588120796.Spec : Prop :=
  ∀ n, P5978776387588120796.a n = A241530 n

end A241530

/-! ## A241530.P4309629873139752780

`A063886(n+1)/2*A063886(n)`
-/

namespace A241530.P4309629873139752780
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063886 (n + 1) : ℚ) / 2 * (A063886 n : ℚ)

end

end A241530.P4309629873139752780

namespace A241530

/-- `A063886(n+1)/2*A063886(n)` -/
def P4309629873139752780.Spec : Prop :=
  ∀ n, P4309629873139752780.a n = (A241530 n : ℚ)

end A241530

/-! ## A241530.P2170386947921407077

`A000984(floor(n/2))*A000984(ceil(n/2))`
-/

namespace A241530.P2170386947921407077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 ⌊(n : ℚ) / 2⌋.toNat * A000984 ⌈(n : ℚ) / 2⌉.toNat

end

end A241530.P2170386947921407077

namespace A241530

/-- `A000984(floor(n/2))*A000984(ceil(n/2))` -/
def P2170386947921407077.Spec : Prop :=
  ∀ n, P2170386947921407077.a n = A241530 n

end A241530

/-! ## A241530.P10303642685491424383

`A063886(n)*A107230(A000217(n))`
-/

namespace A241530.P10303642685491424383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 n * A107230 (A000217 n).toNat

end

end A241530.P10303642685491424383

namespace A241530

/-- `A063886(n)*A107230(A000217(n))` -/
def P10303642685491424383.Spec : Prop :=
  ∀ n, P10303642685491424383.a n = A241530 n

end A241530

/-! ## A241530.P1598747981052197851

`lcm(A006466(n), A126930(n))*A063886(n)`
-/

namespace A241530.P1598747981052197851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A006466 n) (A126930 n) : ℤ) * A063886 n

end

end A241530.P1598747981052197851

namespace A241530

/-- `lcm(A006466(n), A126930(n))*A063886(n)` -/
def P1598747981052197851.Spec : Prop :=
  ∀ n, P1598747981052197851.a n = A241530 n

end A241530

/-! ## A241530.P1994064151005183546

`lcm(A063886(n)*A126930(n), A057977(n))`
-/

namespace A241530.P1994064151005183546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063886 n * A126930 n) (A057977 n)

end

end A241530.P1994064151005183546

namespace A241530

/-- `lcm(A063886(n)*A126930(n), A057977(n))` -/
def P1994064151005183546.Spec : Prop :=
  ∀ n, (P1994064151005183546.a n : ℤ) = A241530 n

end A241530

/-! ## A241530.P11047382748698900183

`(A047073(n+1)-A047074(n+1))*A063886(n)`
-/

namespace A241530.P11047382748698900183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047073 (n + 1) - A047074 (n + 1)) * A063886 n

end

end A241530.P11047382748698900183

namespace A241530

/-- `(A047073(n+1)-A047074(n+1))*A063886(n)` -/
def P11047382748698900183.Spec : Prop :=
  ∀ n, P11047382748698900183.a n = A241530 n

end A241530

/-! ## A241530.P14350541231048707368

`A067804(A194274(n))`
-/

namespace A241530.P14350541231048707368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067804 (A194274 n).toNat

end

end A241530.P14350541231048707368

namespace A241530

/-- `A067804(A194274(n))` -/
def P14350541231048707368.Spec : Prop :=
  ∀ n, P14350541231048707368.a n = A241530 n

end A241530

/-! ## A241530.P13756093148791847957

`A067804(A007590(n+1))`
-/

namespace A241530.P13756093148791847957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067804 (A007590 (n + 1)).toNat

end

end A241530.P13756093148791847957

namespace A241530

/-- `A067804(A007590(n+1))` -/
def P13756093148791847957.Spec : Prop :=
  ∀ n, P13756093148791847957.a n = A241530 n

end A241530

/-!
# A241531: a(n) = smallest k>=1 such that 2*prime(n) - k^2 is semiprime (or 0 if there is no such k).

The programs for A241531, there is no canonical definition to state claims against.
-/

/-! ## A241531.P17074973019461341485

`A109631(A109974(n))%A296626(n)`
-/

namespace A241531.P17074973019461341485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109631 (A109974 n).toNat) (A296626 n)

end

end A241531.P17074973019461341485

/-! ## A241531.P16900541307793623788

`A168018(A167918(n+1))%A168052(n)`
-/

namespace A241531.P16900541307793623788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168018 (A167918 (n + 1)).toNat) (A168052 n)

end

end A241531.P16900541307793623788

/-! ## A241531.P13532027275377401457

`A032742(A063987(2*n+1))%A167995(n+1)`
-/

namespace A241531.P13532027275377401457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032742 (A063987 (2 * n + 1)).toNat) (A167995 (n + 1))

end

end A241531.P13532027275377401457

/-! ## A241531.P8059360503018934514

`A001222(xor(A078152(n+1), A210344(n)))`
-/

namespace A241531.P8059360503018934514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.xor (A078152 (n + 1)) (A210344 n)).toNat

end

end A241531.P8059360503018934514

/-!
# A241533: Smallest prime p such that 2*prime(n) - p^2 is semiprime, or a(n)=0 if there is no such p.

The programs for A241533, there is no canonical definition to state claims against.
-/

/-! ## A241533.P2409932142596203298

`A106486(A241535(n+1))%A210248(n+1)`
-/

namespace A241533.P2409932142596203298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A106486 (A241535 (n + 1)).toNat) (A210248 (n + 1))

end

end A241533.P2409932142596203298

/-! ## A241533.P16759333083587689593

`A000194(A241535(n+1)+A185284(3*n+1))`
-/

namespace A241533.P16759333083587689593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A241535 (n + 1) + A185284 (3 * n + 1)).toNat

end

end A241533.P16759333083587689593

/-! ## A241533.P3846818303220117824

`∑{e}[A226452(A241535(n+1)), #]`
-/

namespace A241533.P3846818303220117824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226452 (A241535 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A241533.P3846818303220117824

/-! ## A241533.P9201695421465559430

`A340575(A340591(2*n))%A340583(3*n+4)`
-/

namespace A241533.P9201695421465559430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340575 (A340591 (2 * n)).toNat) (A340583 (3 * n + 4))

end

end A241533.P9201695421465559430

/-! ## A241533.P4604646721860611258

`A071838(and(A093902(3*n+4), A145604(n+1)))`
-/

namespace A241533.P4604646721860611258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071838 (Int.land (A093902 (3 * n + 4)) (A145604 (n + 1))).toNat

end

end A241533.P4604646721860611258

/-!
# A241534: Number of integer arithmetic means of 2 distinct divisors of n.

The programs for A241534, the canonical program `A241534.P3870875932930930674` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241534 has offset 1).

The definition of A241534 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241534.P3870875932930930674

`∑{d}[n+1, A046079(#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A241534

/-- `∑{d}[n+1, A046079(#)]` -/
def P3870875932930930674.Spec : Prop :=
  ∀ n, P3870875932930930674.a n = A241534 (n + 1)

theorem P3870875932930930674.correct : P3870875932930930674.Spec := by
  intro n
  simp only [A241534, Nat.add_sub_cancel]

end A241534

/-! ## A241534.P11370950461644434523

`∑{d}[n+1, sqrt(A221837(#))]`
-/

namespace A241534.P11370950461644434523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Real.sqrt (A221837 d : ℝ)

end

end A241534.P11370950461644434523

namespace A241534

/-- `∑{d}[n+1, sqrt(A221837(#))]` -/
def P11370950461644434523.Spec : Prop :=
  ∀ n, P11370950461644434523.a n = (A241534 (n + 1) : ℝ)

end A241534

/-! ## A241534.P266736105936795983

`A337532(n+1)-A000005(n+1)`
-/

namespace A241534.P266736105936795983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337532 (n + 1) - A000005 (n + 1)

end

end A241534.P266736105936795983

namespace A241534

/-- `A337532(n+1)-A000005(n+1)` -/
def P266736105936795983.Spec : Prop :=
  ∀ n, P266736105936795983.a n = A241534 (n + 1)

end A241534

/-! ## A241534.P14708229224006624508

`∑{d}[n+1, A000005(#)*A024361((n+1)/#)]`
-/

namespace A241534.P14708229224006624508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A024361 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A241534.P14708229224006624508

namespace A241534

/-- `∑{d}[n+1, A000005(#)*A024361((n+1)/#)]` -/
def P14708229224006624508.Spec : Prop :=
  ∀ n, P14708229224006624508.a n = A241534 (n + 1)

end A241534

/-! ## A241534.P4012184673062183960

`∑{d}[n+1, A157230(#)*A174273((n+1)/#)]`
-/

namespace A241534.P4012184673062183960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A157230 d * A174273 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A241534.P4012184673062183960

namespace A241534

/-- `∑{d}[n+1, A157230(#)*A174273((n+1)/#)]` -/
def P4012184673062183960.Spec : Prop :=
  ∀ n, P4012184673062183960.a n = A241534 (n + 1)

end A241534

/-! ## A241534.P270104371478662409

`A337363(n+1)+A337532(n+1)-A337362(n+1)`
-/

namespace A241534.P270104371478662409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337363 (n + 1) + (A337532 (n + 1) - A337362 (n + 1))

end

end A241534.P270104371478662409

namespace A241534

/-- `A337363(n+1)+A337532(n+1)-A337362(n+1)` -/
def P270104371478662409.Spec : Prop :=
  ∀ n, P270104371478662409.a n = A241534 (n + 1)

end A241534

/-! ## A241534.P11384294330357292659

`A337532(n+1)-A335841(n+1)/A001227(n+1)`
-/

namespace A241534.P11384294330357292659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337532 (n + 1) : ℚ) - (A335841 (n + 1) : ℚ) / (A001227 (n + 1) : ℚ)

end

end A241534.P11384294330357292659

namespace A241534

/-- `A337532(n+1)-A335841(n+1)/A001227(n+1)` -/
def P11384294330357292659.Spec : Prop :=
  ∀ n, P11384294330357292659.a n = (A241534 (n + 1) : ℚ)

end A241534

/-! ## A241534.P9948812600767519793

`∑{d}[n+1, A100073(#²)]`
-/

namespace A241534.P9948812600767519793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A100073 (d ^ 2)

end

end A241534.P9948812600767519793

namespace A241534

/-- `∑{d}[n+1, A100073(#²)]` -/
def P9948812600767519793.Spec : Prop :=
  ∀ n, P9948812600767519793.a n = A241534 (n + 1)

end A241534

/-! ## A241534.P5680933671189924438

`A365049(n+1)-A038548(n+1)`
-/

namespace A241534.P5680933671189924438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365049 (n + 1) - A038548 (n + 1)

end

end A241534.P5680933671189924438

namespace A241534

/-- `A365049(n+1)-A038548(n+1)` -/
def P5680933671189924438.Spec : Prop :=
  ∀ n, P5680933671189924438.a n = A241534 (n + 1)

end A241534

/-!
# A241535: Smallest semiprime q such that 2*prime(n) - q is semiprime, or a(n)=0 if there is no such q.

The programs for A241535, there is no canonical definition to state claims against.
-/

/-! ## A241535.P5660307719229994871

`A241656(p?[xor(1, n)])`
-/

namespace A241535.P5660307719229994871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241656 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A241535.P5660307719229994871

/-! ## A241535.P5472673216892127988

`A241656(p?[comp[n²]])`
-/

namespace A241535.P5472673216892127988
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241656 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A241535.P5472673216892127988

/-! ## A241535.P170934589261511916

`A241656(Δ[A007504(n)])`
-/

namespace A241535.P170934589261511916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241656 (f1 (n + 1) - f1 n).toNat

end

end A241535.P170934589261511916

/-! ## A241535.P7124721761452944821

`A241656(A000040(n+1))`
-/

namespace A241535.P7124721761452944821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241656 (A000040 (n + 1)).toNat

end

end A241535.P7124721761452944821

/-! ## A241535.P18071317208889231366

`A241656(A006005(n+1))`
-/

namespace A241535.P18071317208889231366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241656 (A006005 (n + 1)).toNat

end

end A241535.P18071317208889231366

/-!
# A241538: Squares s such that s + 1234567890 is prime.

The programs for A241538, there is no canonical definition to state claims against.
-/

/-! ## A241538.P1333338485607266363

`A235640(n+1)%A050289(A007318(C(n, 2)))`
-/

namespace A241538.P1333338485607266363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235640 (n + 1)) (A050289 (A007318 (Nat.choose n 2)).toNat)

end

end A241538.P1333338485607266363

/-!
# A241539: Smallest k>=1 such that the n-th semiprime + or - k are both primes, or a(n)=0 if there is no such k.

The programs for A241539, there is no canonical definition to state claims against.
-/

/-! ## A241539.P2742555507813244082

`A047160(A001358(n+1))`
-/

namespace A241539.P2742555507813244082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (A001358 (n + 1)).toNat

end

end A241539.P2742555507813244082

/-! ## A241539.P15727291331613197007

`A047160(A176540(n+2))`
-/

namespace A241539.P15727291331613197007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (A176540 (n + 2)).toNat

end

end A241539.P15727291331613197007

/-! ## A241539.P7607094284622377983

`A047160(eq[2, A105700(n)])`
-/

namespace A241539.P7607094284622377983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241539.P7607094284622377983

/-! ## A241539.P16281561341787697289

`A082467(lt[1, A105700(n)])`
-/

namespace A241539.P16281561341787697289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A241539.P16281561341787697289

/-! ## A241539.P4503606296141256188

`A082467(eq[2, A105700(n)])`
-/

namespace A241539.P4503606296141256188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241539.P4503606296141256188

/-! ## A241539.P17634948436039198311

`A047160(eq[2, A226378(n)])`
-/

namespace A241539.P17634948436039198311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241539.P17634948436039198311

/-! ## A241539.P14036149809920370941

`A082467(eq[2, A226378(n)])`
-/

namespace A241539.P14036149809920370941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A241539.P14036149809920370941

/-! ## A241539.P8535744635124728784

`A047160(eq[2, A001222(n+1)]+1)`
-/

namespace A241539.P8535744635124728784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A241539.P8535744635124728784

/-! ## A241539.P5625936289515629818

`A082467(eq[2, A001222(n+1)]+1)`
-/

namespace A241539.P5625936289515629818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A241539.P5625936289515629818

/-! ## A241539.P12118898096807989739

`A325142(eq[2, A001222(n+1)]+1)`
-/

namespace A241539.P12118898096807989739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A241539.P12118898096807989739

/-! ## A241539.P10400354666993320832

`A082467(A001358(2*n+1-n))`
-/

namespace A241539.P10400354666993320832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082467 (A001358 (2 * n + 1 - n)).toNat

end

end A241539.P10400354666993320832

/-!
# A241540: Indices of primes p in A182514, i.e., a(n) = primepi(p) = A000720(A182514(n)).

The programs for A241540, there is no canonical definition to state claims against.
-/

/-! ## A241540.P4701100839066095049

`A000720(A182514(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A241540.P4701100839066095049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A182514 (n + 1)).toNat

end

end A241540.P4701100839066095049

/-!
# A241541: Exponent of 11 in prime factorization of (2^n + 3^n + 5^n + 7^n).

The programs for A241541, there is no canonical definition to state claims against.
-/

/-! ## A241541.P1913097790156397253

`A297155(A343976(2*(n+1))+A122840(3*n+5))`
-/

namespace A241541.P1913097790156397253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297155 (A343976 (2 * (n + 1)) + A122840 (3 * n + 5)).toNat

end

end A241541.P1913097790156397253

/-! ## A241541.P6308306422296491951

`A046145(A111089(3*n+5)^A083910(3*n+5))`
-/

namespace A241541.P6308306422296491951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046145 (SequenceMachineLib.roundAway ((A111089 (3 * n + 5) : ℚ) ^ (A083910 (3 * n + 5) : ℤ))).toNat

end

end A241541.P6308306422296491951

/-! ## A241541.P7576923441759191171

`A055642(A379317(n+1))*A122840(3*n+5)`
-/

namespace A241541.P7576923441759191171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A379317 (n + 1)).toNat * A122840 (3 * n + 5)

end

end A241541.P7576923441759191171

/-! ## A241541.P3263627937006719440

`A055642(A318978(n+1))*A122840(n+5)`
-/

namespace A241541.P3263627937006719440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A318978 (n + 1)).toNat * A122840 (n + 5)

end

end A241541.P3263627937006719440

/-! ## A241541.P12006191445470318718

`A001221(A302697(n+1))*A122840(3*n+5)`
-/

namespace A241541.P12006191445470318718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A302697 (n + 1)).toNat * A122840 (3 * n + 5)

end

end A241541.P12006191445470318718

/-! ## A241541.P3064029173210850890

`A116504(A116504(2*(n+1)))*A122840(n+5)`
-/

namespace A241541.P3064029173210850890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116504 (A116504 (2 * (n + 1))).toNat * A122840 (n + 5)

end

end A241541.P3064029173210850890

/-!
# A241542: Indices (i.e., value of A000720 = primepi) of primes in A111870.

The programs for A241542, there is no canonical definition to state claims against.
-/

/-! ## A241542.P2996201546348891081

`A000720(A111870(n+1))`
-/

namespace A241542.P2996201546348891081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A111870 (n + 1)).toNat

end

end A241542.P2996201546348891081

/-! ## A241542.P12179370716781184689

`A214935(comp[∑[2*n]²])`
-/

namespace A241542.P12179370716781184689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214935 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A241542.P12179370716781184689

/-! ## A241542.P2612394578979572772

`record[A005669(n+1)*A316917(n+1)]`
-/

namespace A241542.P2612394578979572772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005669 (n + 1) * A316917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241542.P2612394578979572772

/-! ## A241542.P13525832390473872862

`record[or(A214935(n+1), A214960(3*n+2))]`
-/

namespace A241542.P13525832390473872862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A214935 (n + 1)) (A214960 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241542.P13525832390473872862

/-! ## A241542.P7080308221202596188

`A066493(A111871(n+1))`
-/

namespace A241542.P7080308221202596188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066493 (A111871 (n + 1)).toNat

end

end A241542.P7080308221202596188

/-!
# A241543: a(n) = A241477(n, n).

The programs for A241543, the canonical program `A241543.P17870996406380725953` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241543 has offset 0).

The definition of A241543 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241543.P17870996406380725953

`gcd(xor(1, -n), ∑[n])*A089408(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A241543

/-- `gcd(xor(1, -n), ∑[n])*A089408(n)` -/
def P17870996406380725953.Spec : Prop :=
  ∀ n, P17870996406380725953.a n = A241543 n

theorem P17870996406380725953.correct : P17870996406380725953.Spec := by
  intro n
  simp only [A241543]

end A241543

/-! ## A241543.P6103705092093710350

`A089408(n)*A152271(n)`
-/

namespace A241543.P6103705092093710350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 n * A152271 n

end

end A241543.P6103705092093710350

namespace A241543

/-- `A089408(n)*A152271(n)` -/
def P6103705092093710350.Spec : Prop :=
  ∀ n, P6103705092093710350.a n = A241543 n

end A241543

/-! ## A241543.P5929602437795975005

`gcd(A104624(n), A128014(n))`
-/

namespace A241543.P5929602437795975005
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A104624 n) (A128014 n)

end

end A241543.P5929602437795975005

namespace A241543

/-- `gcd(A104624(n), A128014(n))` -/
def P5929602437795975005.Spec : Prop :=
  ∀ n, (P5929602437795975005.a n : ℤ) = A241543 n

end A241543

/-! ## A241543.P5697855967187795245

`gcd(A128057(n), A182027(n))`
-/

namespace A241543.P5697855967187795245
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128057 n) (A182027 n)

end

end A241543.P5697855967187795245

namespace A241543

/-- `gcd(A128057(n), A182027(n))` -/
def P5697855967187795245.Spec : Prop :=
  ∀ n, (P5697855967187795245.a n : ℤ) = A241543 n

end A241543

/-! ## A241543.P6520384098211046611

`abs(A056040(n)/or(1, -n))`
-/

namespace A241543.P6520384098211046611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A056040 n : ℚ) / (Int.lor 1 (-(n : ℤ)) : ℚ)|

end

end A241543.P6520384098211046611

namespace A241543

/-- `abs(A056040(n)/or(1, -n))` -/
def P6520384098211046611.Spec : Prop :=
  ∀ n, P6520384098211046611.a n = (A241543 n : ℚ)

end A241543

/-! ## A241543.P14627459836787643910

`gcd(A047073(n), A056040(n))`
-/

namespace A241543.P14627459836787643910
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047073 n) (A056040 n)

end

end A241543.P14627459836787643910

namespace A241543

/-- `gcd(A047073(n), A056040(n))` -/
def P14627459836787643910.Spec : Prop :=
  ∀ n, (P14627459836787643910.a n : ℤ) = A241543 n

end A241543

/-! ## A241543.P7640151890665466111

`gcd(A182027(n)+A107231(n), A107231(n))`
-/

namespace A241543.P7640151890665466111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A182027 n + A107231 n) (A107231 n)

end

end A241543.P7640151890665466111

namespace A241543

/-- `gcd(A182027(n)+A107231(n), A107231(n))` -/
def P7640151890665466111.Spec : Prop :=
  ∀ n, (P7640151890665466111.a n : ℤ) = A241543 n

end A241543

/-! ## A241543.P5747308524337450505

`A182073(∑[xor(1, n)]+1)`
-/

namespace A241543.P5747308524337450505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182073 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A241543.P5747308524337450505

namespace A241543

/-- `A182073(∑[xor(1, n)]+1)` -/
def P5747308524337450505.Spec : Prop :=
  ∀ n, P5747308524337450505.a n = A241543 n

end A241543

/-! ## A241543.P15343948121977593328

`A182073(abs(3-∑[n+1]))`
-/

namespace A241543.P15343948121977593328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182073 |3 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat

end

end A241543.P15343948121977593328

namespace A241543

/-- `A182073(abs(3-∑[n+1]))` -/
def P15343948121977593328.Spec : Prop :=
  ∀ n, P15343948121977593328.a n = A241543 n

end A241543

/-!
# A241544: Number of partitions p of n such that (number of even numbers in p) is a part of p.

The programs for A241544, there is no canonical definition to state claims against.
-/

/-! ## A241544.P13658313101326827675

`A298540(A080054(n))-A080054(n)`
-/

namespace A241544.P13658313101326827675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298540 (A080054 n).toNat - A080054 n

end

end A241544.P13658313101326827675

/-! ## A241544.P14740026025490391121

`A240077(n)-A040001(A369200(n))`
-/

namespace A241544.P14740026025490391121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240077 n - A040001 (A369200 n).toNat

end

end A241544.P14740026025490391121

/-!
# A241545: Number of partitions p of n such that (number of odd numbers in p) is a part of p.

The programs for A241545, there is no canonical definition to state claims against.
-/

/-! ## A241545.P9786377611815870310

`Δ[A003056(A001357(n))]`
-/

namespace A241545.P9786377611815870310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A001357 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241545.P9786377611815870310

/-! ## A241545.P14004573612132878287

`Δ[A003056(A309908(n))]`
-/

namespace A241545.P14004573612132878287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A309908 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241545.P14004573612132878287

/-! ## A241545.P5138430959700247005

`Δ[A003056(A007095(2^n))]`
-/

namespace A241545.P5138430959700247005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A007095 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241545.P5138430959700247005

/-! ## A241545.P15526737883834555986

`Δ[A003056(A052382(2^n))]`
-/

namespace A241545.P15526737883834555986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A052382 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A241545.P15526737883834555986

/-! ## A241545.P726464083826500209

`A175424(A123526(n+1))+A027193(n)`
-/

namespace A241545.P726464083826500209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175424 (A123526 (n + 1)).toNat + A027193 n

end

end A241545.P726464083826500209

/-!
# A241546: Number of partitions p of n such that (number of numbers of the form 3k in p) is a part of p.

The programs for A241546, there is no canonical definition to state claims against.
-/

/-! ## A241546.P13626593018352502507

`A248333(A240840(n+1))`
-/

namespace A241546.P13626593018352502507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (A240840 (n + 1)).toNat

end

end A241546.P13626593018352502507

/-! ## A241546.P4840311976798065147

`A248333(round(A087192(n+1)/ϕ))`
-/

namespace A241546.P4840311976798065147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (SequenceMachineLib.roundAway ((A087192 (n + 1) : ℝ) / Real.goldenRatio)).toNat

end

end A241546.P4840311976798065147

/-! ## A241546.P12858066843893333044

`∑[A008612(A000196(A099846(n)))]`
-/

namespace A241546.P12858066843893333044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A000196 (A099846 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241546.P12858066843893333044

/-! ## A241546.P16990638570778616926

`A248333(ratio[A240840(n)]*A240840(n))`
-/

namespace A241546.P16990638570778616926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248333 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A240840 n : ℚ))).toNat

end

end A241546.P16990638570778616926

/-! ## A241546.P11949433524938656728

`floor(A163312(n+1)/A182617(2*(n+1)))`
-/

namespace A241546.P11949433524938656728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A163312 (n + 1) : ℚ) / (A182617 (2 * (n + 1)) : ℚ)⌋

end

end A241546.P11949433524938656728

/-!
# A241547: Number of partitions p of n such that (number of numbers of the form 3k+1 in p) is a part of p.

The programs for A241547, there is no canonical definition to state claims against.
-/

/-! ## A241547.P3574112649862272888

`or(A237823(n+1), A318880(A249221(n+1)))`
-/

namespace A241547.P3574112649862272888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A237823 (n + 1)) (A318880 (A249221 (n + 1)).toNat)

end

end A241547.P3574112649862272888

/-! ## A241547.P10886853067123129165

`A184171(A000586(2*n+3))+A024936(A062510(n))`
-/

namespace A241547.P10886853067123129165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184171 (A000586 (2 * n + 3)).toNat + A024936 (A062510 n).toNat

end

end A241547.P10886853067123129165

/-! ## A241547.P7202327780983001621

`A320658(A167499(n))+A237823(n+1)`
-/

namespace A241547.P7202327780983001621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320658 (A167499 n).toNat + A237823 (n + 1)

end

end A241547.P7202327780983001621

/-! ## A241547.P5379063653783178146

`or(A212619(A159285(n)), A237823(n+1))`
-/

namespace A241547.P5379063653783178146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A212619 (A159285 n).toNat) (A237823 (n + 1))

end

end A241547.P5379063653783178146

/-! ## A241547.P3352965150328637745

`A064173(n+1)-A160380(A183176(n+1))`
-/

namespace A241547.P3352965150328637745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064173 (n + 1) - A160380 (A183176 (n + 1)).toNat

end

end A241547.P3352965150328637745

/-!
# A241549: Number of partitions p of n such that (number of numbers of the form 5k in p) is a part of p.

The programs for A241549, there is no canonical definition to state claims against.
-/

/-! ## A241549.P3275415568943061203

`floor((A332579(2*(n+2))+1)/8)%A247640(3*n+4)`
-/

namespace A241549.P3275415568943061203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(A332579 (2 * (n + 2)) + 1 : ℚ) / 8⌋ (A247640 (3 * n + 4))

end

end A241549.P3275415568943061203

/-! ## A241549.P6243784038042883809

`A291811(A308930(n+1)+1)`
-/

namespace A241549.P6243784038042883809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291811 (A308930 (n + 1) + 1).toNat

end

end A241549.P6243784038042883809

/-! ## A241549.P8546771970292122540

`∑[A035562(n)%A035533(n+1)]`
-/

namespace A241549.P8546771970292122540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035562 n) (A035533 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241549.P8546771970292122540

/-! ## A241549.P13406495174858154740

`A121902(floor(floor(A167762(n)/2)/2))`
-/

namespace A241549.P13406495174858154740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 ⌊(⌊(A167762 n : ℚ) / 2⌋ : ℚ) / 2⌋.toNat

end

end A241549.P13406495174858154740

/-! ## A241549.P1578230666267234753

`∑[A035562(n)]%A347577(3*(n+1))`
-/

namespace A241549.P1578230666267234753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035562 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A347577 (3 * (n + 1) + 55))

end

end A241549.P1578230666267234753

/-!
# A241550: Number of partitions p of n such that (number of numbers of the form 5k + 1 in p) is a part of p.

The programs for A241550, there is no canonical definition to state claims against.
-/

/-! ## A241550.P18313851527600916921

`A000194(A027193(n)*A039900(n))`
-/

namespace A241550.P18313851527600916921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A027193 n * A039900 n).toNat

end

end A241550.P18313851527600916921

/-! ## A241550.P16563689881604617822

`A224782(A118330(n))+A000701(n+1)`
-/

namespace A241550.P16563689881604617822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224782 (A118330 n).toNat + A000701 (n + 1)

end

end A241550.P16563689881604617822

/-! ## A241550.P3843092185172184462

`A351870(A325856(n)-A183564(n+7))`
-/

namespace A241550.P3843092185172184462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A325856 n - A183564 (n + 7)).toNat

end

end A241550.P3843092185172184462

/-! ## A241550.P4456046045376724708

`or(A001222(A220572(n+1)), A321728(n+1))`
-/

namespace A241550.P4456046045376724708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A220572 (n + 1)).toNat) (A321728 (n + 1))

end

end A241550.P4456046045376724708

/-!
# A241551: Number of partitions p of n such that (number of numbers of the form 5k + 2 in p) is a part of p.

The programs for A241551, there is no canonical definition to state claims against.
-/

/-! ## A241551.P7522831142569031307

`A022865(n+1)-A083040(A022861(n+1))`
-/

namespace A241551.P7522831142569031307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022865 (n + 1) - A083040 (A022861 (n + 1)).toNat

end

end A241551.P7522831142569031307

/-! ## A241551.P10582721440740808521

`A308869(n+3)-A010052(A361994(2*(n+2)))`
-/

namespace A241551.P10582721440740808521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308869 (n + 3) - A010052 (A361994 (2 * (n + 2))).toNat

end

end A241551.P10582721440740808521

/-!
# A241552: Number of partitions p of n such that (number of numbers of the form 5k + 3 in p) is a part of p.

The programs for A241552, there is no canonical definition to state claims against.
-/

/-! ## A241552.P2263232121901559014

`A024789(n+1)-A102683(A132831(n))`
-/

namespace A241552.P2263232121901559014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024789 (n + 1) - A102683 (A132831 n).toNat

end

end A241552.P2263232121901559014

/-! ## A241552.P6759140552363334815

`A024789(n+1)-A172444(A120041(n))`
-/

namespace A241552.P6759140552363334815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024789 (n + 1) - A172444 (A120041 n).toNat

end

end A241552.P6759140552363334815

/-! ## A241552.P12683047214929445322

`A241549(n+2)-A102683(A132831(n))`
-/

namespace A241552.P12683047214929445322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241549 (n + 2) - A102683 (A132831 n).toNat

end

end A241552.P12683047214929445322

/-!
# A241554: Semiprimes generated by the polynomial 2 * n^2 + 29.

The programs for A241554, there is no canonical definition to state claims against.
-/

/-! ## A241554.P1891449229687187482

`A056220(A353004(n+1))+30`
-/

namespace A241554.P1891449229687187482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (A353004 (n + 1)).toNat + 30

end

end A241554.P1891449229687187482

/-! ## A241554.P13199519003908881059

`A056220(lt[0, A008683(2*n²+29)])+30`
-/

namespace A241554.P13199519003908881059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * n ^ 2 + 29)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) + 30

end

end A241554.P13199519003908881059

/-! ## A241554.P1076944383645090944

`A056220(eq[1, A008683(2*n²+29)])+30`
-/

namespace A241554.P1076944383645090944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * n ^ 2 + 29)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 30

end

end A241554.P1076944383645090944

/-! ## A241554.P11047405565650750099

`A056220(eq[2, A001222(2*n²+29)])+30`
-/

namespace A241554.P11047405565650750099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n ^ 2 + 29)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 30

end

end A241554.P11047405565650750099

/-! ## A241554.P1707203193704730332

`A056220(eq[4, A000005(2*n²+29)])+30`
-/

namespace A241554.P1707203193704730332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n ^ 2 + 29)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 30

end

end A241554.P1707203193704730332

/-! ## A241554.P2561334925530818858

`record[A008683(A352949(n+1))*A352949(n+1)]`
-/

namespace A241554.P2561334925530818858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A352949 (n + 1)).toNat * A352949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241554.P2561334925530818858

/-! ## A241554.P11817837634257216533

`A352949(n+1)+A000007(A019565(n))`
-/

namespace A241554.P11817837634257216533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352949 (n + 1) + A000007 (A019565 n).toNat

end

end A241554.P11817837634257216533

/-! ## A241554.P14289286483243897626

`A352949(n+1)+A000007(A322408(n))`
-/

namespace A241554.P14289286483243897626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352949 (n + 1) + A000007 (A322408 n).toNat

end

end A241554.P14289286483243897626

/-! ## A241554.P13443101530143616330

`filter[A352949(n+1), A005171(#)]`
-/

namespace A241554.P13443101530143616330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A241554.P13443101530143616330

/-! ## A241554.P6072265921626018597

`filter[A352949(n+1), A011558(#)]`
-/

namespace A241554.P6072265921626018597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352949 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A241554.P6072265921626018597

/-!
# A241555: Triangle read by rows: Number T(n,k) of 2-colored binary rooted trees with n nodes and exactly k <= n nodes of a specific color.

The programs for A241555, there is no canonical definition to state claims against.
-/

/-! ## A241555.P2740219903335659038

`A127321(A240629(n+1)+2-n)`
-/

namespace A241555.P2740219903335659038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A240629 (n + 1) + (2 - (n : ℤ))).toNat

end

end A241555.P2740219903335659038

/-! ## A241555.P7806831164747747852

`A003056(A316355(A222842(n+1)))`
-/

namespace A241555.P7806831164747747852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A316355 (A222842 (n + 1)).toNat).toNat

end

end A241555.P7806831164747747852

/-! ## A241555.P10094939424780511457

`A000196(A342982(A262545(n+1)))`
-/

namespace A241555.P10094939424780511457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A342982 (A262545 (n + 1)).toNat).toNat

end

end A241555.P10094939424780511457

/-! ## A241555.P10897498792757536346

`A087845(A240893(n+1))+A059995(A240893(n+1))`
-/

namespace A241555.P10897498792757536346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (A240893 (n + 1)).toNat + A059995 (A240893 (n + 1)).toNat

end

end A241555.P10897498792757536346

/-!
# A241556: Number of prime anti-divisors m of n.

The programs for A241556, there is no canonical definition to state claims against.
-/

/-! ## A241556.P1650378920415913527

`A001221(gcd(A038610(n+1), A158443(n+1)))`
-/

namespace A241556.P1650378920415913527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.gcd (A038610 (n + 1)) (A158443 (n + 1)))

end

end A241556.P1650378920415913527

/-! ## A241556.P17104745263352578248

`A242029(n+1)-A089975(A146804(n+1))`
-/

namespace A241556.P17104745263352578248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242029 (n + 1) - A089975 (A146804 (n + 1)).toNat

end

end A241556.P17104745263352578248

/-! ## A241556.P12275942040033270919

`A242029(n+1)-A358331(A147096(n+1))`
-/

namespace A241556.P12275942040033270919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242029 (n + 1) - A358331 (A147096 (n + 1)).toNat

end

end A241556.P12275942040033270919

/-! ## A241556.P15812980829075032957

`A242029(n+1)-A102683(A214631(n))`
-/

namespace A241556.P15812980829075032957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242029 (n + 1) - A102683 (A214631 n).toNat

end

end A241556.P15812980829075032957

/-! ## A241556.P18316157629000040571

`A257511(A017991(n)-A334997(n+1))`
-/

namespace A241556.P18316157629000040571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257511 (A017991 n - A334997 (n + 1)).toNat

end

end A241556.P18316157629000040571

/-!
# A241557: Numbers k that do not have prime anti-divisors.

The programs for A241557, there is no canonical definition to state claims against.
-/

/-! ## A241557.P1237199845761291160

`record[A079080(n+1)%A000040(n+1)]`
-/

namespace A241557.P1237199845761291160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079080 (n + 1)) (A000040 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241557.P1237199845761291160

/-! ## A241557.P4861969976024124057

`eq[1, C(n, A001222(2*n+1)+a(n-1))]` with `a(0)=0`
-/

namespace A241557.P4861969976024124057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  Nat.choose n (A001222 (2 * n + 1) + (f2 (n - 1) : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241557.P4861969976024124057

/-! ## A241557.P10019206149084952955

`(A122564(A004277(n))-1)/2`
-/

namespace A241557.P10019206149084952955
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122564 (A004277 n).toNat - 1 : ℚ) / 2

end

end A241557.P10019206149084952955

/-! ## A241557.P10487738618612499635

`record[A297381(A045326(n+1)+2)]`
-/

namespace A241557.P10487738618612499635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297381 (A045326 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241557.P10487738618612499635

/-! ## A241557.P16621473346739177316

`record[A297381(A141310(n)+A098058(n+1))]`
-/

namespace A241557.P16621473346739177316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297381 (A141310 n + A098058 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241557.P16621473346739177316

/-! ## A241557.P403828716230268495

`∩[A168497(n+1), A298474(n+1)]`
-/

namespace A241557.P403828716230268495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298474 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241557.P403828716230268495

/-! ## A241557.P9370462375902080269

`∩[A168497(n+1), A351910(n+1)]`
-/

namespace A241557.P9370462375902080269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241557.P9370462375902080269

/-! ## A241557.P7868358264801937235

`eq[A134451(n), A166597(2*n)]`
-/

namespace A241557.P7868358264801937235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134451 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241557.P7868358264801937235

/-! ## A241557.P4019704584728359067

`∩[A168497(n+1), A004275(n)]`
-/

namespace A241557.P4019704584728359067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241557.P4019704584728359067

/-! ## A241557.P14292362136435378756

`∩[A168497(n+1), A004277(n)]`
-/

namespace A241557.P14292362136435378756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241557.P14292362136435378756

/-! ## A241557.P12711996722238664045

`∩[A047240(n+1), A168497(n+1)]`
-/

namespace A241557.P12711996722238664045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241557.P12711996722238664045

/-! ## A241557.P18042315092504174216

`∩[A066507(n+1), A168497(n+1)]`
-/

namespace A241557.P18042315092504174216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241557.P18042315092504174216

/-! ## A241557.P2877316591340836734

`∩[A047237(n+1), A168497(n+1)]`
-/

namespace A241557.P2877316591340836734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241557.P2877316591340836734

/-! ## A241557.P8726960799864988180

`∩[A047269(n+1), A168497(n+1)]`
-/

namespace A241557.P8726960799864988180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241557.P8726960799864988180

/-! ## A241557.P14708036540883884599

`∩[A047263(n+1), A168497(n+1)]`
-/

namespace A241557.P14708036540883884599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A241557.P14708036540883884599

/-! ## A241557.P5946997075780885884

`filter[A168497(n+1), A088911(#)]`
-/

namespace A241557.P5946997075780885884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A088911 (f1 j).toNat = 1) n)

end

end A241557.P5946997075780885884

/-! ## A241557.P5824293666151209133

`filter[A168497(n+1), A135528(#)]`
-/

namespace A241557.P5824293666151209133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A241557.P5824293666151209133

/-! ## A241557.P1426525359115434644

`filter[A168497(n+1), A266591(#)]`
-/

namespace A241557.P1426525359115434644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168497 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A241557.P1426525359115434644

/-! ## A241557.P2375793617947402193

`eq[A014601(n), A285703(n+1)]`
-/

namespace A241557.P2375793617947402193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285703 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A241557.P2375793617947402193

/-!
# A241558: Smallest part of the symmetric representation of sigma(n).

The programs for A241558, there is no canonical definition to state claims against.
-/

/-! ## A241558.P17308590139791561267

`A295422(A318809(2*n+1)+n)`
-/

namespace A241558.P17308590139791561267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295422 (A318809 (2 * n + 1) + (n : ℤ)).toNat

end

end A241558.P17308590139791561267

/-! ## A241558.P3618690939582137289

`A295422(n+1)%A334268(n+4)`
-/

namespace A241558.P3618690939582137289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A295422 (n + 1)) (A334268 (n + 4))

end

end A241558.P3618690939582137289

/-! ## A241558.P5760876689439082214

`and(A295422(n+1), A387415(n+1))`
-/

namespace A241558.P5760876689439082214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A295422 (n + 1)) (A387415 (n + 1))

end

end A241558.P5760876689439082214

/-! ## A241558.P17728780028279796569

`and(A295422(n+1), A387418(n+1))`
-/

namespace A241558.P17728780028279796569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A295422 (n + 1)) (A387418 (n + 1))

end

end A241558.P17728780028279796569

/-! ## A241558.P14104646210833629453

`A295422(n+1)+A000007(A286542(n))`
-/

namespace A241558.P14104646210833629453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295422 (n + 1) + A000007 (A286542 n).toNat

end

end A241558.P14104646210833629453

/-!
# A241559: Largest part of the symmetric representation of sigma(n).

The programs for A241559, there is no canonical definition to state claims against.
-/

/-! ## A241559.P8685239425263853910

`A326523(A350012(n+1))+A241838(n+1)`
-/

namespace A241559.P8685239425263853910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326523 (A350012 (n + 1)).toNat + A241838 (n + 1)

end

end A241559.P8685239425263853910

/-! ## A241559.P8720164409134196557

`A326523(A350012(n+1))+A237270(A237590(n+1))`
-/

namespace A241559.P8720164409134196557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326523 (A350012 (n + 1)).toNat + A237270 (A237590 (n + 1)).toNat

end

end A241559.P8720164409134196557

/-!
# A241563: Number of 3-element subsets of {1,...,n} whose sum has more than 2 divisors.

The programs for A241563, there is no canonical definition to state claims against.
-/

/-! ## A241563.P5832693670132413387

`∑[A046645(A215718(n))]`
-/

namespace A241563.P5832693670132413387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (A215718 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241563.P5832693670132413387

/-! ## A241563.P5032010568160899940

`∑[∑[A087175(A101879(n))]]`
-/

namespace A241563.P5032010568160899940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087175 (A101879 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241563.P5032010568160899940

/-! ## A241563.P4447310428550447661

`∑[∑[A319447(A062272(n))]]`
-/

namespace A241563.P4447310428550447661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319447 (A062272 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241563.P4447310428550447661

/-! ## A241563.P4123907037137874642

`A072088(∑[A015613(n+1)])`
-/

namespace A241563.P4123907037137874642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A241563.P4123907037137874642

/-! ## A241563.P7050987349274337387

`A072088(∑[∑[A109606(n+1)]])`
-/

namespace A241563.P7050987349274337387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A241563.P7050987349274337387

/-!
# A241564: Number of 3-element subsets of {1,...,n} whose sum has more than 3 divisors.

The programs for A241564, there is no canonical definition to state claims against.
-/

/-! ## A241564.P11791909886028622824

`A001970(n)-A316470(A108351(n))`
-/

namespace A241564.P11791909886028622824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001970 n - A316470 (A108351 n).toNat

end

end A241564.P11791909886028622824

/-! ## A241564.P14043088827592400552

`A182220(A000070(n))-A325393(n)`
-/

namespace A241564.P14043088827592400552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182220 (A000070 n).toNat - A325393 n

end

end A241564.P14043088827592400552

/-! ## A241564.P11065437180449630691

`A182220(A000070(n))-A346693(n+1)`
-/

namespace A241564.P11065437180449630691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182220 (A000070 n).toNat - A346693 (n + 1)

end

end A241564.P11065437180449630691

/-!
# A241565: Number of 3-element subsets of {1,...,n} whose sum has more than 4 divisors.

The programs for A241565, there is no canonical definition to state claims against.
-/

/-! ## A241565.P3221427522144208046

`A073642(3*A165653(n))`
-/

namespace A241565.P3221427522144208046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (3 * A165653 n).toNat

end

end A241565.P3221427522144208046

/-! ## A241565.P16506364720666523466

`A050168(n)-∑[round(root(A351730(n), 6))]`
-/

namespace A241565.P16506364720666523466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A351730 n : ℝ) ^ (1 / (6 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241565.P16506364720666523466

/-! ## A241565.P14545788495698836205

`A036419(n)-A036443(A036423(n))`
-/

namespace A241565.P14545788495698836205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036419 n - A036443 (A036423 n).toNat

end

end A241565.P14545788495698836205

/-! ## A241565.P8458259476597578844

`A036419(n)-A036443(A036632(n))`
-/

namespace A241565.P8458259476597578844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036419 n - A036443 (A036632 n).toNat

end

end A241565.P8458259476597578844

/-! ## A241565.P10961288384207727155

`A036419(n)-A036443(A036646(n))`
-/

namespace A241565.P10961288384207727155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036419 n - A036443 (A036646 n).toNat

end

end A241565.P10961288384207727155

/-!
# A241566: Number of 2-element subsets of {1,...,n} whose sum has more than 2 divisors.

The programs for A241566, the canonical program `A241566.P8126277569896418132` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241566 has offset 1).

The definition of A241566 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241566.P8126277569896418132

`∑[A307912(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A241566

/-- `∑[A307912(n+1)]` -/
def P8126277569896418132.Spec : Prop :=
  ∀ n, P8126277569896418132.a n = A241566 (n + 1)

theorem P8126277569896418132.correct : P8126277569896418132.Spec := by
  intro n
  simp only [A241566, Nat.add_sub_cancel]

end A241566

/-! ## A241566.P9147331584313338152

`∑[n-A060715(n+1)]`
-/

namespace A241566.P9147331584313338152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A060715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241566.P9147331584313338152

namespace A241566

/-- `∑[n-A060715(n+1)]` -/
def P9147331584313338152.Spec : Prop :=
  ∀ n, P9147331584313338152.a n = A241566 (n + 1)

end A241566

/-! ## A241566.P11466560704405283809

`∑[n]-A071917(n+1)`
-/

namespace A241566.P11466560704405283809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A071917 (n + 1)

end

end A241566.P11466560704405283809

namespace A241566

/-- `∑[n]-A071917(n+1)` -/
def P11466560704405283809.Spec : Prop :=
  ∀ n, P11466560704405283809.a n = A241566 (n + 1)

end A241566

/-! ## A241566.P12221480338790235988

`∑[A376759(n+1)]-n`
-/

namespace A241566.P12221480338790235988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A241566.P12221480338790235988

namespace A241566

/-- `∑[A376759(n+1)]-n` -/
def P12221480338790235988.Spec : Prop :=
  ∀ n, P12221480338790235988.a n = A241566 (n + 1)

end A241566

/-! ## A241566.P2925062633210785995

`∑[n-A108954(n+1)]+1`
-/

namespace A241566.P2925062633210785995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A108954 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A241566.P2925062633210785995

namespace A241566

/-- `∑[n-A108954(n+1)]+1` -/
def P2925062633210785995.Spec : Prop :=
  ∀ n, P2925062633210785995.a n = A241566 (n + 1)

end A241566

/-! ## A241566.P9861941556495636932

`∑[n]+1-∑[A056171(2*(n+1))]`
-/

namespace A241566.P9861941556495636932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056171 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (1 - ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A241566.P9861941556495636932

namespace A241566

/-- `∑[n]+1-∑[A056171(2*(n+1))]` -/
def P9861941556495636932.Spec : Prop :=
  ∀ n, P9861941556495636932.a n = A241566 (n + 1)

end A241566

/-! ## A241566.P10740478794093477549

`∑[n-A056171(A103517(n))]`
-/

namespace A241566.P10740478794093477549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056171 (A103517 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241566.P10740478794093477549

namespace A241566

/-- `∑[n-A056171(A103517(n))]` -/
def P10740478794093477549.Spec : Prop :=
  ∀ n, P10740478794093477549.a n = A241566 (n + 1)

end A241566

/-! ## A241566.P9046017750448500811

`∑[n-A294602(2*(n+1))]`
-/

namespace A241566.P9046017750448500811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A294602 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241566.P9046017750448500811

namespace A241566

/-- `∑[n-A294602(2*(n+1))]` -/
def P9046017750448500811.Spec : Prop :=
  ∀ n, P9046017750448500811.a n = A241566 (n + 1)

end A241566

/-! ## A241566.P5360262737550198977

`∑[A086936(2*(n+1))-A086936(n+2)]`
-/

namespace A241566.P5360262737550198977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086936 (2 * (n + 1)) - A086936 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241566.P5360262737550198977

namespace A241566

/-- `∑[A086936(2*(n+1))-A086936(n+2)]` -/
def P5360262737550198977.Spec : Prop :=
  ∀ n, P5360262737550198977.a n = A241566 (n + 1)

end A241566

/-! ## A241566.P16186483423270652567

`∑[n]-A282516(∑[n+1]+2)`
-/

namespace A241566.P16186483423270652567
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A282516 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

end

end A241566.P16186483423270652567

namespace A241566

/-- `∑[n]-A282516(∑[n+1]+2)` -/
def P16186483423270652567.Spec : Prop :=
  ∀ n, P16186483423270652567.a n = A241566 (n + 1)

end A241566

/-!
# A241567: Number of 2-element subsets of {1,...,n} whose sum has more than 3 divisors.

The programs for A241567, there is no canonical definition to state claims against.
-/

/-! ## A241567.P1145129938374993189

`∑[∑[A225654(A181304(n))]]`
-/

namespace A241567.P1145129938374993189
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225654 (A181304 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241567.P1145129938374993189

/-! ## A241567.P17596499484903746159

`∑[∑[A242830(A048854(n))]]`
-/

namespace A241567.P17596499484903746159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242830 (A048854 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241567.P17596499484903746159

/-! ## A241567.P17260501235196796149

`∑[∑[A225654(A135080(n))]]`
-/

namespace A241567.P17260501235196796149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225654 (A135080 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241567.P17260501235196796149

/-! ## A241567.P16337463854265879747

`A319413(∑[A213856(n+1)])`
-/

namespace A241567.P16337463854265879747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319413 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A241567.P16337463854265879747

/-!
# A241568: a(n) = |{0 < k < prime(n)/2: k is not only a quadratic nonresidue modulo prime(n) but also a Fibonacci number}|.

The programs for A241568, there is no canonical definition to state claims against.
-/

/-! ## A241568.P14361542741721709457

`A241675(A000040(n+1))`
-/

namespace A241568.P14361542741721709457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241675 (A000040 (n + 1)).toNat

end

end A241568.P14361542741721709457

/-! ## A241568.P17664511683531336104

`A241675(A006005(n+1))`
-/

namespace A241568.P17664511683531336104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241675 (A006005 (n + 1)).toNat

end

end A241568.P17664511683531336104

/-! ## A241568.P1495702358336308455

`A241675(A008578(n+2))`
-/

namespace A241568.P1495702358336308455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241675 (A008578 (n + 2)).toNat

end

end A241568.P1495702358336308455

/-! ## A241568.P11584654205702593116

`A241675(A075643(n+2))`
-/

namespace A241568.P11584654205702593116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241675 (A075643 (n + 2)).toNat

end

end A241568.P11584654205702593116

/-! ## A241568.P5451624075356859889

`A241675(A171525(n+2))`
-/

namespace A241568.P5451624075356859889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241675 (A171525 (n + 2)).toNat

end

end A241568.P5451624075356859889

/-! ## A241568.P4162510869129641051

`A241675(A175787(n+2))`
-/

namespace A241568.P4162510869129641051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241675 (A175787 (n + 2)).toNat

end

end A241568.P4162510869129641051

/-! ## A241568.P8689591733676578985

`A241675(A182986(n+2))`
-/

namespace A241568.P8689591733676578985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241675 (A182986 (n + 2)).toNat

end

end A241568.P8689591733676578985

/-! ## A241568.P2594704380992759362

`A241675(record[A006530(n+2)])`
-/

namespace A241568.P2594704380992759362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241675 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A241568.P2594704380992759362

/-! ## A241568.P17061079907983326476

`A241675(record[A014963(n+2)])`
-/

namespace A241568.P17061079907983326476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241675 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A241568.P17061079907983326476

/-! ## A241568.P4560638922817825679

`A241675(record[A020639(n+2)])`
-/

namespace A241568.P4560638922817825679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241675 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A241568.P4560638922817825679

/-! ## A241568.P9008227302788816878

`A241675(record[A241686(n+2)])`
-/

namespace A241568.P9008227302788816878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241686 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241675 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A241568.P9008227302788816878

/-!
# A241571: Numbers n such that 2*n+15 is not a prime.

The programs for A241571, the canonical program `A241571.P15390613395399299711` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241571 has offset 1).

The definition of A241571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241571.P2743272328808311253

`comp[A089559(n+1)]`
-/

namespace A241571.P2743272328808311253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241571.P2743272328808311253

namespace A241571

/-- `comp[A089559(n+1)]` -/
def P2743272328808311253.Spec : Prop :=
  ∀ n, (P2743272328808311253.a n : ℤ) = A241571 (n + 1)

end A241571

/-! ## A241571.P3099406645814957960

`A153082(n+1)-1`
-/

namespace A241571.P3099406645814957960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153082 (n + 1) - 1

end

end A241571.P3099406645814957960

namespace A241571

/-- `A153082(n+1)-1` -/
def P3099406645814957960.Spec : Prop :=
  ∀ n, P3099406645814957960.a n = A241571 (n + 1)

end A241571

/-! ## A241571.P15390613395399299711

`A153083(n+1)-2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A241571

/-- `A153083(n+1)-2` -/
def P15390613395399299711.Spec : Prop :=
  ∀ n, P15390613395399299711.a n = A241571 (n + 1)

theorem P15390613395399299711.correct : P15390613395399299711.Spec := by
  intro n
  simp only [A241571, Nat.add_sub_cancel]

end A241571

/-! ## A241571.P7054986683844204563

`comp[A173059(n+1)+1]`
-/

namespace A241571.P7054986683844204563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173059 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241571.P7054986683844204563

namespace A241571

/-- `comp[A173059(n+1)+1]` -/
def P7054986683844204563.Spec : Prop :=
  ∀ n, (P7054986683844204563.a n : ℤ) = A241571 (n + 1)

end A241571

/-! ## A241571.P13818721466822285127

`comp[A153081(n+1)-1]`
-/

namespace A241571.P13818721466822285127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153081 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241571.P13818721466822285127

namespace A241571

/-- `comp[A153081(n+1)-1]` -/
def P13818721466822285127.Spec : Prop :=
  ∀ n, (P13818721466822285127.a n : ℤ) = A241571 (n + 1)

end A241571

/-! ## A241571.P2037838238530260674

`comp[A101448(n+1)-2]`
-/

namespace A241571.P2037838238530260674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101448 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241571.P2037838238530260674

namespace A241571

/-- `comp[A101448(n+1)-2]` -/
def P2037838238530260674.Spec : Prop :=
  ∀ n, (P2037838238530260674.a n : ℤ) = A241571 (n + 1)

end A241571

/-! ## A241571.P8869396184981006533

`comp[comp[A241572(n+1)]+1]`
-/

namespace A241571.P8869396184981006533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241572 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A241571.P8869396184981006533

namespace A241571

/-- `comp[comp[A241572(n+1)]+1]` -/
def P8869396184981006533.Spec : Prop :=
  ∀ n, (P8869396184981006533.a n : ℤ) = A241571 (n + 1)

end A241571

/-! ## A241571.P13292508969516570981

`lt[1, A001222(2*(n+7)+1)]`
-/

namespace A241571.P13292508969516570981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 7) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A241571.P13292508969516570981

namespace A241571

/-- `lt[1, A001222(2*(n+7)+1)]` -/
def P13292508969516570981.Spec : Prop :=
  ∀ n, (P13292508969516570981.a n : ℤ) = A241571 (n + 1)

end A241571

/-! ## A241571.P3515216163693158769

`lt[A020639(2*n+5), n]-5`
-/

namespace A241571.P3515216163693158769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 5)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 5

end

end A241571.P3515216163693158769

namespace A241571

/-- `lt[A020639(2*n+5), n]-5` -/
def P3515216163693158769.Spec : Prop :=
  ∀ n, P3515216163693158769.a n = A241571 (n + 1)

end A241571

/-! ## A241571.P2942268018969062811

`comp[eq[2, A000005(2*n+3)]-6]`
-/

namespace A241571.P2942268018969062811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241571.P2942268018969062811

namespace A241571

/-- `comp[eq[2, A000005(2*n+3)]-6]` -/
def P2942268018969062811.Spec : Prop :=
  ∀ n, (P2942268018969062811.a n : ℤ) = A241571 (n + 1)

end A241571

/-! ## A241571.P8008760765972738473

`lt[2, A000005(2*(n+3)+5)]-2`
-/

namespace A241571.P8008760765972738473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 3) + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 2

end

end A241571.P8008760765972738473

namespace A241571

/-- `lt[2, A000005(2*(n+3)+5)]-2` -/
def P8008760765972738473.Spec : Prop :=
  ∀ n, P8008760765972738473.a n = A241571 (n + 1)

end A241571

/-! ## A241571.P10183954507431602919

`lt[A006530(2*n+1), n-1]-7`
-/

namespace A241571.P10183954507431602919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 7

end

end A241571.P10183954507431602919

namespace A241571

/-- `lt[A006530(2*n+1), n-1]-7` -/
def P10183954507431602919.Spec : Prop :=
  ∀ n, P10183954507431602919.a n = A241571 (n + 1)

end A241571

/-! ## A241571.P10029722454795642491

`A396571(n+1)-A153047(n+1)`
-/

namespace A241571.P10029722454795642491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396571 (n + 1) - A153047 (n + 1)

end

end A241571.P10029722454795642491

namespace A241571

/-- `A396571(n+1)-A153047(n+1)` -/
def P10029722454795642491.Spec : Prop :=
  ∀ n, P10029722454795642491.a n = A241571 (n + 1)

end A241571

/-! ## A241571.P204761947101785499

`A155723(n+2)-3`
-/

namespace A241571.P204761947101785499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155723 (n + 2) - 3

end

end A241571.P204761947101785499

namespace A241571

/-- `A155723(n+2)-3` -/
def P204761947101785499.Spec : Prop :=
  ∀ n, P204761947101785499.a n = A241571 (n + 1)

end A241571

/-! ## A241571.P17682026570220512848

`A153053(n+2)-4`
-/

namespace A241571.P17682026570220512848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153053 (n + 2) - 4

end

end A241571.P17682026570220512848

namespace A241571

/-- `A153053(n+2)-4` -/
def P17682026570220512848.Spec : Prop :=
  ∀ n, P17682026570220512848.a n = A241571 (n + 1)

end A241571

/-! ## A241571.P10973902618492126170

`A153052(n+2)-5`
-/

namespace A241571.P10973902618492126170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 2) - 5

end

end A241571.P10973902618492126170

namespace A241571

/-- `A153052(n+2)-5` -/
def P10973902618492126170.Spec : Prop :=
  ∀ n, P10973902618492126170.a n = A241571 (n + 1)

end A241571

/-! ## A241571.P12263729070473235735

`A153238(n+2)-6`
-/

namespace A241571.P12263729070473235735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 2) - 6

end

end A241571.P12263729070473235735

namespace A241571

/-- `A153238(n+2)-6` -/
def P12263729070473235735.Spec : Prop :=
  ∀ n, P12263729070473235735.a n = A241571 (n + 1)

end A241571

/-! ## A241571.P7673311895344375705

`A053726(n+2)-8`
-/

namespace A241571.P7673311895344375705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 2) - 8

end

end A241571.P7673311895344375705

namespace A241571

/-- `A053726(n+2)-8` -/
def P7673311895344375705.Spec : Prop :=
  ∀ n, P7673311895344375705.a n = A241571 (n + 1)

end A241571

/-! ## A241571.P4384979819735015302

`A104275(n+3)-8`
-/

namespace A241571.P4384979819735015302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 3) - 8

end

end A241571.P4384979819735015302

namespace A241571

/-- `A104275(n+3)-8` -/
def P4384979819735015302.Spec : Prop :=
  ∀ n, P4384979819735015302.a n = A241571 (n + 1)

end A241571

/-!
# A241572: Numbers n such that 2*n+17 is not a prime.

The programs for A241572, the canonical program `A241572.P128755735048460708` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241572 has offset 1).

The definition of A241572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241572.P15265185080616338123

`comp[A173059(n+1)]`
-/

namespace A241572.P15265185080616338123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241572.P15265185080616338123

namespace A241572

/-- `comp[A173059(n+1)]` -/
def P15265185080616338123.Spec : Prop :=
  ∀ n, (P15265185080616338123.a n : ℤ) = A241572 (n + 1)

end A241572

/-! ## A241572.P128755735048460708

`A153144(n+1)+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A241572

/-- `A153144(n+1)+1` -/
def P128755735048460708.Spec : Prop :=
  ∀ n, P128755735048460708.a n = A241572 (n + 1)

theorem P128755735048460708.correct : P128755735048460708.Spec := by
  intro n
  simp only [A241572, Nat.add_sub_cancel]

end A241572

/-! ## A241572.P17391936254666923460

`comp[A153143(n+1)]+1`
-/

namespace A241572.P17391936254666923460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A241572.P17391936254666923460

namespace A241572

/-- `comp[A153143(n+1)]+1` -/
def P17391936254666923460.Spec : Prop :=
  ∀ n, (P17391936254666923460.a n : ℤ) = A241572 (n + 1)

end A241572

/-! ## A241572.P16624800026482496100

`comp[A089559(n+1)-1]`
-/

namespace A241572.P16624800026482496100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089559 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241572.P16624800026482496100

namespace A241572

/-- `comp[A089559(n+1)-1]` -/
def P16624800026482496100.Spec : Prop :=
  ∀ n, (P16624800026482496100.a n : ℤ) = A241572 (n + 1)

end A241572

/-! ## A241572.P5826476686583001280

`comp[A153081(n+1)-2]`
-/

namespace A241572.P5826476686583001280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153081 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241572.P5826476686583001280

namespace A241572

/-- `comp[A153081(n+1)-2]` -/
def P5826476686583001280.Spec : Prop :=
  ∀ n, (P5826476686583001280.a n : ℤ) = A241572 (n + 1)

end A241572

/-! ## A241572.P17875061388206019989

`comp[A155722(n+1)-4]`
-/

namespace A241572.P17875061388206019989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1) - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241572.P17875061388206019989

namespace A241572

/-- `comp[A155722(n+1)-4]` -/
def P17875061388206019989.Spec : Prop :=
  ∀ n, (P17875061388206019989.a n : ℤ) = A241572 (n + 1)

end A241572

/-! ## A241572.P14119997557966912855

`comp[A067076(n+1)-7]`
-/

namespace A241572.P14119997557966912855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) - 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241572.P14119997557966912855

namespace A241572

/-- `comp[A067076(n+1)-7]` -/
def P14119997557966912855.Spec : Prop :=
  ∀ n, (P14119997557966912855.a n : ℤ) = A241572 (n + 1)

end A241572

/-! ## A241572.P8760363875422577165

`comp[A005097(n+1)-8]`
-/

namespace A241572.P8760363875422577165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - 8

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241572.P8760363875422577165

namespace A241572

/-- `comp[A005097(n+1)-8]` -/
def P8760363875422577165.Spec : Prop :=
  ∀ n, (P8760363875422577165.a n : ℤ) = A241572 (n + 1)

end A241572

/-! ## A241572.P12663429588937698657

`comp[A098090(n+1)-11]+1`
-/

namespace A241572.P12663429588937698657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - 11

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A241572.P12663429588937698657

namespace A241572

/-- `comp[A098090(n+1)-11]+1` -/
def P12663429588937698657.Spec : Prop :=
  ∀ n, (P12663429588937698657.a n : ℤ) = A241572 (n + 1)

end A241572

/-! ## A241572.P4620240621335265733

`lt[2, A000005(2*n+19)]+1`
-/

namespace A241572.P4620240621335265733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 19)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A241572.P4620240621335265733

namespace A241572

/-- `lt[2, A000005(2*n+19)]+1` -/
def P4620240621335265733.Spec : Prop :=
  ∀ n, (P4620240621335265733.a n : ℤ) = A241572 (n + 1)

end A241572

/-! ## A241572.P5792210004132124341

`comp[eq[2, A000005(2*n+3)]-7]`
-/

namespace A241572.P5792210004132124341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 7

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A241572.P5792210004132124341

namespace A241572

/-- `comp[eq[2, A000005(2*n+3)]-7]` -/
def P5792210004132124341.Spec : Prop :=
  ∀ n, (P5792210004132124341.a n : ℤ) = A241572 (n + 1)

end A241572

/-! ## A241572.P2348856168168579156

`A241571(n+2)-1`
-/

namespace A241572.P2348856168168579156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241571 (n + 2) - 1

end

end A241572.P2348856168168579156

namespace A241572

/-- `A241571(n+2)-1` -/
def P2348856168168579156.Spec : Prop :=
  ∀ n, P2348856168168579156.a n = A241572 (n + 1)

end A241572

/-! ## A241572.P15617901651079954221

`A153082(n+2)-2`
-/

namespace A241572.P15617901651079954221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153082 (n + 2) - 2

end

end A241572.P15617901651079954221

namespace A241572

/-- `A153082(n+2)-2` -/
def P15617901651079954221.Spec : Prop :=
  ∀ n, P15617901651079954221.a n = A241572 (n + 1)

end A241572

/-! ## A241572.P10485454861159773297

`A153083(n+2)-3`
-/

namespace A241572.P10485454861159773297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153083 (n + 2) - 3

end

end A241572.P10485454861159773297

namespace A241572

/-- `A153083(n+2)-3` -/
def P10485454861159773297.Spec : Prop :=
  ∀ n, P10485454861159773297.a n = A241572 (n + 1)

end A241572

/-! ## A241572.P17393911249564254712

`A155723(n+3)-4`
-/

namespace A241572.P17393911249564254712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155723 (n + 3) - 4

end

end A241572.P17393911249564254712

namespace A241572

/-- `A155723(n+3)-4` -/
def P17393911249564254712.Spec : Prop :=
  ∀ n, P17393911249564254712.a n = A241572 (n + 1)

end A241572

/-! ## A241572.P12104178963475370451

`A153053(n+3)-5`
-/

namespace A241572.P12104178963475370451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153053 (n + 3) - 5

end

end A241572.P12104178963475370451

namespace A241572

/-- `A153053(n+3)-5` -/
def P12104178963475370451.Spec : Prop :=
  ∀ n, P12104178963475370451.a n = A241572 (n + 1)

end A241572

/-! ## A241572.P18026726877928893664

`A153052(n+3)-6`
-/

namespace A241572.P18026726877928893664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 3) - 6

end

end A241572.P18026726877928893664

namespace A241572

/-- `A153052(n+3)-6` -/
def P18026726877928893664.Spec : Prop :=
  ∀ n, P18026726877928893664.a n = A241572 (n + 1)

end A241572

/-! ## A241572.P5507326154052489952

`A153238(n+3)-7`
-/

namespace A241572.P5507326154052489952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 3) - 7

end

end A241572.P5507326154052489952

namespace A241572

/-- `A153238(n+3)-7` -/
def P5507326154052489952.Spec : Prop :=
  ∀ n, P5507326154052489952.a n = A241572 (n + 1)

end A241572

/-! ## A241572.P1730361153791650458

`A053726(n+3)-9`
-/

namespace A241572.P1730361153791650458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 3) - 9

end

end A241572.P1730361153791650458

namespace A241572

/-- `A053726(n+3)-9` -/
def P1730361153791650458.Spec : Prop :=
  ∀ n, P1730361153791650458.a n = A241572 (n + 1)

end A241572

/-!
# A241573: 2^p + 3 where p is prime.

The programs for A241573, there is no canonical definition to state claims against.
-/

/-! ## A241573.P2171151852375229668

`2^p?[comp[n²]]+3`
-/

namespace A241573.P2171151852375229668
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 3

end

end A241573.P2171151852375229668

/-! ## A241573.P5372582500694903718

`record[2^∑{p}[n+2, #]+3]`
-/

namespace A241573.P5372582500694903718
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f2 n), p) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241573.P5372582500694903718

/-! ## A241573.P2510933560069088705

`record[∏{p}[n+2, 2^#]+3]`
-/

namespace A241573.P2510933560069088705
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), 2 ^ p + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241573.P2510933560069088705

/-! ## A241573.P8479358703663192725

`Δ[A076793(n)]+3`
-/

namespace A241573.P8479358703663192725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 3

end

end A241573.P8479358703663192725

/-! ## A241573.P10569800541591972864

`A098640(n+1)+2`
-/

namespace A241573.P10569800541591972864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098640 (n + 1) + 2

end

end A241573.P10569800541591972864

/-! ## A241573.P11993590598677141815

`A034785(n+1)+3`
-/

namespace A241573.P11993590598677141815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034785 (n + 1) + 3

end

end A241573.P11993590598677141815

/-! ## A241573.P3688117887742423550

`A241677(n+1)-2`
-/

namespace A241573.P3688117887742423550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241677 (n + 1) - 2

end

end A241573.P3688117887742423550

/-! ## A241573.P5274989193541720877

`A001348(n+1)+4`
-/

namespace A241573.P5274989193541720877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001348 (n + 1) + 4

end

end A241573.P5274989193541720877

/-! ## A241573.P15558736452336714935

`A241679(n+1)-4`
-/

namespace A241573.P15558736452336714935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241679 (n + 1) - 4

end

end A241573.P15558736452336714935

/-! ## A241573.P819340912553598636

`A241676(n+1)+6`
-/

namespace A241573.P819340912553598636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241676 (n + 1) + 6

end

end A241573.P819340912553598636

/-!
# A241574: Number of ternary words of length n avoiding the pattern 11-11.

The programs for A241574, there is no canonical definition to state claims against.
-/

/-! ## A241574.P5800355723841330015

`A343380(A106410(2*(n+1)))+A042938(n+1)`
-/

namespace A241574.P5800355723841330015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (A106410 (2 * (n + 1))).toNat + A042938 (n + 1)

end

end A241574.P5800355723841330015

/-! ## A241574.P16865459049232950539

`ceil(A320353(2*(n+1))/4)`
-/

namespace A241574.P16865459049232950539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A320353 (2 * (n + 1)) : ℚ) / 4⌉

end

end A241574.P16865459049232950539

/-!
# A241575: Sturmian expansion of 1/2 in base sqrt(2)-1.

The programs for A241575, the canonical program `A241575.P5643789270522155057` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241575 has offset 0).

The definition of A241575 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 239 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241575.P483919764298154576

`log2(Δ[round(n*sqrt(2))])`
-/

namespace A241575.P483919764298154576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (2 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (f1 (n + 1) - f1 n : ℝ)

end

end A241575.P483919764298154576

namespace A241575

/-- `log2(Δ[round(n*sqrt(2))])` -/
def P483919764298154576.Spec : Prop :=
  ∀ n, P483919764298154576.a n = (A241575 n : ℝ)

end A241575

/-! ## A241575.P8267093062631340401

`3%Δ[round(n*sqrt(2))]`
-/

namespace A241575.P8267093062631340401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f1 (n + 1) - f1 n)

end

end A241575.P8267093062631340401

namespace A241575

/-- `3%Δ[round(n*sqrt(2))]` -/
def P8267093062631340401.Spec : Prop :=
  ∀ n, P8267093062631340401.a n = A241575 n

end A241575

/-! ## A241575.P6583144194818392147

`val(Δ[round(n*sqrt(2))], 2)`
-/

namespace A241575.P6583144194818392147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (2 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A241575.P6583144194818392147

namespace A241575

/-- `val(Δ[round(n*sqrt(2))], 2)` -/
def P6583144194818392147.Spec : Prop :=
  ∀ n, (P6583144194818392147.a n : ℤ) = A241575 n

end A241575

/-! ## A241575.P9800969291097497260

`C(Δ[round(n*sqrt(2))], 2)`
-/

namespace A241575.P9800969291097497260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (2 : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 2

end

end A241575.P9800969291097497260

namespace A241575

/-- `C(Δ[round(n*sqrt(2))], 2)` -/
def P9800969291097497260.Spec : Prop :=
  ∀ n, (P9800969291097497260.a n : ℤ) = A241575 n

end A241575

/-! ## A241575.P9330359661762597095

`∑{e}[Δ[round(n*sqrt(2))], #]`
-/

namespace A241575.P9330359661762597095
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (2 : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A241575.P9330359661762597095

namespace A241575

/-- `∑{e}[Δ[round(n*sqrt(2))], #]` -/
def P9330359661762597095.Spec : Prop :=
  ∀ n, (P9330359661762597095.a n : ℤ) = A241575 n

end A241575

/-! ## A241575.P16338306725586364131

`3-or(2, Δ[round(n*sqrt(2))])`
-/

namespace A241575.P16338306725586364131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - Int.lor 2 (f1 (n + 1) - f1 n)

end

end A241575.P16338306725586364131

namespace A241575

/-- `3-or(2, Δ[round(n*sqrt(2))])` -/
def P16338306725586364131.Spec : Prop :=
  ∀ n, P16338306725586364131.a n = A241575 n

end A241575

/-! ## A241575.P3074077971060650373

`and(1, -(Δ[round(n*sqrt(2))]+1))²`
-/

namespace A241575.P3074077971060650373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (-(f1 (n + 1) - f1 n + 1)) ^ 2

end

end A241575.P3074077971060650373

namespace A241575

/-- `and(1, -(Δ[round(n*sqrt(2))]+1))²` -/
def P3074077971060650373.Spec : Prop :=
  ∀ n, P3074077971060650373.a n = A241575 n

end A241575

/-! ## A241575.P11661974694158893489

`1-and(1, -Δ[round(n*sqrt(2))])²`
-/

namespace A241575.P11661974694158893489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.land 1 (-(f1 (n + 1) - f1 n)) ^ 2

end

end A241575.P11661974694158893489

namespace A241575

/-- `1-and(1, -Δ[round(n*sqrt(2))])²` -/
def P11661974694158893489.Spec : Prop :=
  ∀ n, P11661974694158893489.a n = A241575 n

end A241575

/-! ## A241575.P4704987619518789742

`and(1, ∪[(2*n+1)², (n+1)*2*n])`
-/

namespace A241575.P4704987619518789742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n)

end

end A241575.P4704987619518789742

namespace A241575

/-- `and(1, ∪[(2*n+1)², (n+1)*2*n])` -/
def P4704987619518789742.Spec : Prop :=
  ∀ n, (P4704987619518789742.a n : ℤ) = A241575 n

end A241575

/-! ## A241575.P5643789270522155057

`A214848(n)-1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A241575

/-- `A214848(n)-1` -/
def P5643789270522155057.Spec : Prop :=
  ∀ n, P5643789270522155057.a n = A241575 n

theorem P5643789270522155057.correct : P5643789270522155057.Spec := by
  intro n
  simp only [A241575]

end A241575

/-! ## A241575.P5059289435149070133

`Δ[A022846(n)]-1`
-/

namespace A241575.P5059289435149070133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A241575.P5059289435149070133

namespace A241575

/-- `Δ[A022846(n)]-1` -/
def P5059289435149070133.Spec : Prop :=
  ∀ n, P5059289435149070133.a n = A241575 n

end A241575

/-! ## A241575.P13297852119329047019

`Δ[A049473(2*n)]-1`
-/

namespace A241575.P13297852119329047019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A241575.P13297852119329047019

namespace A241575

/-- `Δ[A049473(2*n)]-1` -/
def P13297852119329047019.Spec : Prop :=
  ∀ n, P13297852119329047019.a n = A241575 n

end A241575

/-! ## A241575.P17176269399507113611

`A001221(Δ[round(n*sqrt(2))])`
-/

namespace A241575.P17176269399507113611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (n + 1) - f1 n).toNat

end

end A241575.P17176269399507113611

namespace A241575

/-- `A001221(Δ[round(n*sqrt(2))])` -/
def P17176269399507113611.Spec : Prop :=
  ∀ n, P17176269399507113611.a n = A241575 n

end A241575

/-! ## A241575.P17154413576650670338

`A001222(Δ[round(n*sqrt(2))])`
-/

namespace A241575.P17154413576650670338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) * Real.sqrt (2 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (n + 1) - f1 n).toNat

end

end A241575.P17154413576650670338

namespace A241575

/-- `A001222(Δ[round(n*sqrt(2))])` -/
def P17154413576650670338.Spec : Prop :=
  ∀ n, P17154413576650670338.a n = A241575 n

end A241575

/-! ## A241575.P7519254004735356096

`A171588(floor(n*sqrt(2))+50)`
-/

namespace A241575.P7519254004735356096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171588 (⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ + 50).toNat

end

end A241575.P7519254004735356096

namespace A241575

/-- `A171588(floor(n*sqrt(2))+50)` -/
def P7519254004735356096.Spec : Prop :=
  ∀ n, P7519254004735356096.a n = A241575 n

end A241575

/-! ## A241575.P11921594249212041940

`Δ[A189573(2*n+1)]-3`
-/

namespace A241575.P11921594249212041940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189573 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 3

end

end A241575.P11921594249212041940

namespace A241575

/-- `Δ[A189573(2*n+1)]-3` -/
def P11921594249212041940.Spec : Prop :=
  ∀ n, P11921594249212041940.a n = A241575 n

end A241575

/-! ## A241575.P167353706995221003

`char[A049473(2*n+1)+n]`
-/

namespace A241575.P167353706995221003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (2 * n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A241575.P167353706995221003

namespace A241575

/-- `char[A049473(2*n+1)+n]` -/
def P167353706995221003.Spec : Prop :=
  ∀ n, (P167353706995221003.a n : ℤ) = A241575 n

end A241575

/-!
# A241576: Third differences of A001521.

The programs for A241576, the canonical program `A241576.P10248005194493416958` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241576 has offset 1).

The definition of A241576 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 664 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241576.P10248005194493416958

`Δ[round(Δ[2^((n-1)/2)])]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A241576

/-- `Δ[round(Δ[2^((n-1)/2)])]` -/
def P10248005194493416958.Spec : Prop :=
  ∀ n, P10248005194493416958.a n = A241576 (n + 1)

theorem P10248005194493416958.correct : P10248005194493416958.Spec := by
  intro n
  simp only [A241576, Nat.add_sub_cancel]

end A241576

/-! ## A241576.P16783303107993264402

`2*Δ[Δ[ceil(A017910(n+1)/2)/2]]`
-/

namespace A241576.P16783303107993264402
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A017910 (n + 1) : ℚ) / 2⌉ : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A241576.P16783303107993264402

namespace A241576

/-- `2*Δ[Δ[ceil(A017910(n+1)/2)/2]]` -/
def P16783303107993264402.Spec : Prop :=
  ∀ n, P16783303107993264402.a n = (A241576 (n + 1) : ℚ)

end A241576

/-!
# A241577: a(n) = n^3 + 4*n^2 - 5*n + 1.

The programs for A241577, the canonical program `A241577.P207365115705048416` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241577 has offset 0).

The definition of A241577 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+4*n²-5*n+1` (program `A241577.P207365115705048416`, by `A241577.P207365115705048416.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A241577.P207365115705048416

`n^3+4*n²-5*n+1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A241577

/-- `n^3+4*n²-5*n+1` -/
def P207365115705048416.Spec : Prop :=
  ∀ n, P207365115705048416.a n = A241577 n

theorem P207365115705048416.correct : P207365115705048416.Spec := by
  intro n
  simp only [A241577]

end A241577

/-! ## A241577.P14498422325257588741

`or(1, (n+5)*(n²-n))`
-/

namespace A241577.P14498422325257588741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((n + 5 : ℤ) * ((n ^ 2 : ℤ) - (n : ℤ)))

end

end A241577.P14498422325257588741

namespace A241577

/-- `or(1, (n+5)*(n²-n))` -/
def P14498422325257588741.Spec : Prop :=
  ∀ n, P14498422325257588741.a n = A241577 n

end A241577

/-! ## A241577.P4833928387338375145

`xor(1, 2*(n+5)*C(n, 2))`
-/

namespace A241577.P4833928387338375145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * ((n + 5) * Nat.choose n 2))

end

end A241577.P4833928387338375145

namespace A241577

/-- `xor(1, 2*(n+5)*C(n, 2))` -/
def P4833928387338375145.Spec : Prop :=
  ∀ n, (P4833928387338375145.a n : ℤ) = A241577 n

end A241577

/-! ## A241577.P10208335241642070308

`∑[a(n-1)+6*n+2]` with `a(0)=1, a(1)=0`
-/

namespace A241577.P10208335241642070308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + (6 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A241577.P10208335241642070308

namespace A241577

/-- `∑[a(n-1)+6*n+2]` -/
def P10208335241642070308.Spec : Prop :=
  ∀ n, (P10208335241642070308.a n : ℤ) = A241577 n

end A241577

/-! ## A241577.P5225239517862252359

`xor(1, (n-1)*A028557(n))`
-/

namespace A241577.P5225239517862252359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (((n : ℤ) - 1) * A028557 n)

end

end A241577.P5225239517862252359

namespace A241577

/-- `xor(1, (n-1)*A028557(n))` -/
def P5225239517862252359.Spec : Prop :=
  ∀ n, P5225239517862252359.a n = A241577 n

end A241577

/-! ## A241577.P16318584029822024185

`abs(A003777(n+1)-A008592(n))`
-/

namespace A241577.P16318584029822024185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003777 (n + 1) - A008592 n|

end

end A241577.P16318584029822024185

namespace A241577

/-- `abs(A003777(n+1)-A008592(n))` -/
def P16318584029822024185.Spec : Prop :=
  ∀ n, P16318584029822024185.a n = A241577 n

end A241577

/-! ## A241577.P14248312646136752630

`abs(A001107(n)+A061600(n)-n)`
-/

namespace A241577.P14248312646136752630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001107 n + (A061600 n - (n : ℤ))|

end

end A241577.P14248312646136752630

namespace A241577

/-- `abs(A001107(n)+A061600(n)-n)` -/
def P14248312646136752630.Spec : Prop :=
  ∀ n, P14248312646136752630.a n = A241577 n

end A241577

/-! ## A241577.P15590413076502163743

`abs(2*A008706(n)-A003777(n+1))`
-/

namespace A241577.P15590413076502163743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 * A008706 n - A003777 (n + 1)|

end

end A241577.P15590413076502163743

namespace A241577

/-- `abs(2*A008706(n)-A003777(n+1))` -/
def P15590413076502163743.Spec : Prop :=
  ∀ n, P15590413076502163743.a n = A241577 n

end A241577

/-! ## A241577.P2460283543406062253

`(A001107(n)+A061600(n)-n)%A043012(n+1)²`
-/

namespace A241577.P2460283543406062253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001107 n + (A061600 n - (n : ℤ))) (A043012 (n + 1) ^ 2)

end

end A241577.P2460283543406062253

namespace A241577

/-- `(A001107(n)+A061600(n)-n)%A043012(n+1)²` -/
def P2460283543406062253.Spec : Prop :=
  ∀ n, P2460283543406062253.a n = A241577 n

end A241577

/-! ## A241577.P2772506051123357260

`abs(A135042(2*n+1)-A003777(n+1))`
-/

namespace A241577.P2772506051123357260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A135042 (2 * n + 1) - A003777 (n + 1)|

end

end A241577.P2772506051123357260

namespace A241577

/-- `abs(A135042(2*n+1)-A003777(n+1))` -/
def P2772506051123357260.Spec : Prop :=
  ∀ n, P2772506051123357260.a n = A241577 n

end A241577

/-! ## A241577.P2850568714896508646

`(A001107(n)+A061600(n)-n)/A276949(2*n+3)`
-/

namespace A241577.P2850568714896508646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001107 n + (A061600 n - (n : ℤ)) : ℚ) / (A276949 (2 * n + 3) : ℚ)

end

end A241577.P2850568714896508646

namespace A241577

/-- `(A001107(n)+A061600(n)-n)/A276949(2*n+3)` -/
def P2850568714896508646.Spec : Prop :=
  ∀ n, P2850568714896508646.a n = (A241577 n : ℚ)

end A241577

/-! ## A241577.P15298028523728983775

`abs(A003777(n+1)-A005843(A008706(n)))`
-/

namespace A241577.P15298028523728983775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A003777 (n + 1) - A005843 (A008706 n).toNat|

end

end A241577.P15298028523728983775

namespace A241577

/-- `abs(A003777(n+1)-A005843(A008706(n)))` -/
def P15298028523728983775.Spec : Prop :=
  ∀ n, P15298028523728983775.a n = A241577 n

end A241577

/-! ## A241577.P14442494087072336152

`(A001107(n)+A061600(n)-n)*A031027(A031029(n+1))`
-/

namespace A241577.P14442494087072336152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001107 n + (A061600 n - (n : ℤ))) * A031027 (A031029 (n + 1)).toNat

end

end A241577.P14442494087072336152

namespace A241577

/-- `(A001107(n)+A061600(n)-n)*A031027(A031029(n+1))` -/
def P14442494087072336152.Spec : Prop :=
  ∀ n, P14442494087072336152.a n = A241577 n

end A241577

/-!
# A241578: Square array read by antidiagonals upwards: T(n,k) = Sum_{j=1..k} n^(k-j)*Stirling_2(k,j) (n >= 0, k >= 1).

The programs for A241578, there is no canonical definition to state claims against.
-/

/-! ## A241578.P7330812550042317707

`A241579(∑[2*n]%comp[∑[n]])`
-/

namespace A241578.P7330812550042317707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241579 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A241578.P7330812550042317707

/-! ## A241578.P7982276756068999963

`A241579(∑[char[∑[n]]]²-n-1)`
-/

namespace A241578.P7982276756068999963
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241579 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A241578.P7982276756068999963

/-! ## A241578.P15565564470690710666

`A111673(∑[char[∑[n+1]]]+∑[char[∑[n]]]²-n)`
-/

namespace A241578.P15565564470690710666
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111673 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((((∑ j ∈ Finset.range (n + 1), f4 j) ^ 2 : ℕ) : ℤ) - (n : ℤ))).toNat

end

end A241578.P15565564470690710666

/-! ## A241578.P17171624133445866460

`or(char[1], A241579(A061579(n)))`
-/

namespace A241578.P17171624133445866460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A241579 (A061579 n).toNat)

end

end A241578.P17171624133445866460

/-! ## A241578.P5653415035599588743

`gcd(n, n+1)*A241579(A114327(n)+n)`
-/

namespace A241578.P5653415035599588743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A241579 (A114327 n + (n : ℤ)).toNat

end

end A241578.P5653415035599588743

/-! ## A241578.P8415012644287503672

`A241579(A061579(n))%A188480(n+1)`
-/

namespace A241578.P8415012644287503672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241579 (A061579 n).toNat) (A188480 (n + 1))

end

end A241578.P8415012644287503672

/-!
# A241579: Square array read by antidiagonals downwards: T(n,k) = Sum_{j=1..k} n^(k-j)*Stirling_2(k,j) (n >= 0, k >= 1).

The programs for A241579, there is no canonical definition to state claims against.
-/

/-! ## A241579.P11437947894257291809

`A111673(comp[∑[n+1]])`
-/

namespace A241579.P11437947894257291809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111673 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A241579.P11437947894257291809

/-! ## A241579.P15968152546940753049

`A241578(∑[2*n]%comp[∑[n]])`
-/

namespace A241579.P15968152546940753049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241578 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A241579.P15968152546940753049

/-! ## A241579.P10046041912250906489

`A241578(∑[char[∑[n]]]²-(n+1))`
-/

namespace A241579.P10046041912250906489
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241578 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A241579.P10046041912250906489

/-! ## A241579.P10628044467901772115

`lcm((-1)^n, A111673(comp[∑[n-1]]))`
-/

namespace A241579.P10628044467901772115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A111673 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A241579.P10628044467901772115

/-! ## A241579.P2800903711136616302

`or(char[1], A241578(A061579(n)))`
-/

namespace A241579.P2800903711136616302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A241578 (A061579 n).toNat)

end

end A241579.P2800903711136616302

/-! ## A241579.P5805330485764494228

`A111673(comp[∑[n-1]])%A000211(n)`
-/

namespace A241579.P5805330485764494228
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111673 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) (A000211 n)

end

end A241579.P5805330485764494228

/-! ## A241579.P15077648177141369984

`A241578(A061579(n))%A016935(n)`
-/

namespace A241579.P15077648177141369984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241578 (A061579 n).toNat) (A016935 n)

end

end A241579.P15077648177141369984

/-!
# A241581: Row sums in triangle A241580.

The programs for A241581, there is no canonical definition to state claims against.
-/

/-! ## A241581.P5088876644446662885

`record[A245687(n)]/(n+1)`
-/

namespace A241581.P5088876644446662885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245687 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A241581.P5088876644446662885

/-! ## A241581.P7096036599464413213

`A245687(A000124(n+1))/(n+1)`
-/

namespace A241581.P7096036599464413213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245687 (A000124 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

end

end A241581.P7096036599464413213

/-!
# A241582: Records in A131644.

The programs for A241582, the canonical program `A241582.P4738133126774208548` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241582 has offset 1).

The definition of A241582 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 586 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241582.P4738133126774208548

`record[A131644(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A241582

/-- `record[A131644(n+1)]` -/
def P4738133126774208548.Spec : Prop :=
  ∀ n, P4738133126774208548.a n = A241582 (n + 1)

theorem P4738133126774208548.correct : P4738133126774208548.Spec := by
  intro n
  simp only [A241582, Nat.add_sub_cancel]

end A241582

/-! ## A241582.P11460958683708416784

`A131644(A241583(n+1))`
-/

namespace A241582.P11460958683708416784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131644 (A241583 (n + 1)).toNat

end

end A241582.P11460958683708416784

namespace A241582

/-- `A131644(A241583(n+1))` -/
def P11460958683708416784.Spec : Prop :=
  ∀ n, P11460958683708416784.a n = A241582 (n + 1)

end A241582

/-! ## A241582.P14317191688088135441

`record[(2^a(n-1))%n]` with `a(0)=0`
-/

namespace A241582.P14317191688088135441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  2 ^ f1 (n - 1) % n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241582.P14317191688088135441

namespace A241582

/-- `record[(2^a(n-1))%n]` -/
def P14317191688088135441.Spec : Prop :=
  ∀ n, (P14317191688088135441.a n : ℤ) = A241582 (n + 1)

end A241582

/-! ## A241582.P2253236368779878490

`record[A000079(a(n-1))%n]` with `a(0)=0`
-/

namespace A241582.P2253236368779878490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.tmod (A000079 (f1 (n - 1)).toNat) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241582.P2253236368779878490

namespace A241582

/-- `record[A000079(a(n-1))%n]` -/
def P2253236368779878490.Spec : Prop :=
  ∀ n, P2253236368779878490.a n = A241582 (n + 1)

end A241582

/-! ## A241582.P5977655153925769103

`record[(A000225(a(n-1))+1)%(n+1)]` with `a(0)=0`
-/

namespace A241582.P5977655153925769103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.tmod (A000225 (f1 (n - 1)).toNat + 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A241582.P5977655153925769103

namespace A241582

/-- `record[(A000225(a(n-1))+1)%(n+1)]` -/
def P5977655153925769103.Spec : Prop :=
  ∀ n, P5977655153925769103.a n = A241582 (n + 1)

end A241582

/-!
# A241583: Where records occur in A131644.

The programs for A241583, there is no canonical definition to state claims against.
-/

/-! ## A241583.P16754527463791667626

`A192362(record[(2^a(n-1))%n])` with `a(0)=0`
-/

namespace A241583.P16754527463791667626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  2 ^ f1 (n - 1) % n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192362 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A241583.P16754527463791667626

/-! ## A241583.P16483471686563521981

`A192362(A241582(n+1))`
-/

namespace A241583.P16483471686563521981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192362 (A241582 (n + 1)).toNat

end

end A241583.P16483471686563521981

/-! ## A241583.P9560836684098701046

`A192362(record[A131644(n+1)])`
-/

namespace A241583.P9560836684098701046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131644 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192362 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A241583.P9560836684098701046

/-! ## A241583.P4622917511940025046

`A192362(record[A000079(a(n-1))%n])` with `a(0)=0`
-/

namespace A241583.P4622917511940025046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.tmod (A000079 (f1 (n - 1)).toNat) (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192362 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A241583.P4622917511940025046

/-! ## A241583.P16029567334724172924

`A192362(record[(A000225(a(n-1))+1)%(n+1)])` with `a(0)=0`
-/

namespace A241583.P16029567334724172924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  Int.tmod (A000225 (f1 (n - 1)).toNat + 1) (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192362 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A241583.P16029567334724172924

/-!
# A241584: Number of orbits of Sym(n)^2 under action of Iso_1(n).

The programs for A241584, there is no canonical definition to state claims against.
-/

/-! ## A241584.P10530090789222462924

`2*A241585(n+1)-A082733(n+1)`
-/

namespace A241584.P10530090789222462924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A241585 (n + 1) - A082733 (n + 1)

end

end A241584.P10530090789222462924

/-! ## A241584.P687663434427305511

`2*A241585(n+1)-A239841(n+1)/(n+1)!`
-/

namespace A241584.P687663434427305511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A241585 (n + 1) : ℚ) - (A239841 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A241584.P687663434427305511

/-! ## A241584.P4484806536020366004

`2*A241585(n+1)-A239841(n+1)/A000142(n+1)`
-/

namespace A241584.P4484806536020366004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A241585 (n + 1) : ℚ) - (A239841 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)

end

end A241584.P4484806536020366004

/-! ## A241584.P8050602799508975564

`2*A241585(n+1)-A232218(n+1)*A239841(n+1)/A255440(n+1)`
-/

namespace A241584.P8050602799508975564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A241585 (n + 1) : ℚ) - (A232218 (n + 1) * A239841 (n + 1) : ℚ) / (A255440 (n + 1) : ℚ)

end

end A241584.P8050602799508975564

/-!
# A241585: Number of orbits of Sym(n)^2 under action of Iso_1*(n).

The programs for A241585, there is no canonical definition to state claims against.
-/

/-! ## A241585.P17086483356651343783

`(A241584(n+1)+A082733(n+1))/2`
-/

namespace A241585.P17086483356651343783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241584 (n + 1) + A082733 (n + 1) : ℚ) / 2

end

end A241585.P17086483356651343783

/-! ## A241585.P11739559814412978448

`(A241584(n+1)+A239841(n+1)/(n+1)!)/2`
-/

namespace A241585.P11739559814412978448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A241584 (n + 1) : ℚ) + (A239841 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)) / 2

end

end A241585.P11739559814412978448

/-! ## A241585.P17865911774677520935

`(A241584(n+1)+A239841(n+1)/A000142(n+1))/2`
-/

namespace A241585.P17865911774677520935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A241584 (n + 1) : ℚ) + (A239841 (n + 1) : ℚ) / (A000142 (n + 1) : ℚ)) / 2

end

end A241585.P17865911774677520935

/-! ## A241585.P6603315249670860715

`(A241584(n+1)+A232218(n+1)*A239841(n+1)/A255440(n+1))/2`
-/

namespace A241585.P6603315249670860715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A241584 (n + 1) : ℚ) + (A232218 (n + 1) * A239841 (n + 1) : ℚ) / (A255440 (n + 1) : ℚ)) / 2

end

end A241585.P6603315249670860715

/-!
# A241587: Coefficients in an expansion of the trace of the log of the adjacency operator on the infinite grid Z x Z.

The programs for A241587, the canonical program `A241587.P18432490739127419303` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241587 has offset 1).

The definition of A241587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241587.P18432490739127419303

`Δ[A168597(n)/2]-A168597(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A241587

/-- `Δ[A168597(n)/2]-A168597(n)` -/
def P18432490739127419303.Spec : Prop :=
  ∀ n, P18432490739127419303.a n = (A241587 (n + 1) : ℚ)

end A241587

/-!
# A241588: Coefficients in expansion of determinant of the Ihara Laplacian on the infinite grid Z x Z.

The programs for A241588, there is no canonical definition to state claims against.
-/

/-! ## A241588.P615079281060625127

`A035053(n)-A004526(A274804(n))`
-/

namespace A241588.P615079281060625127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035053 n - A004526 (A274804 n).toNat

end

end A241588.P615079281060625127

/-! ## A241588.P6674122230098264192

`A096625(n+1)-A004523(A331617(n))`
-/

namespace A241588.P6674122230098264192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096625 (n + 1) - A004523 (A331617 n).toNat

end

end A241588.P6674122230098264192

/-!
# A241589: Coefficients in expansion of Ihara zeta function for infinite grid Z x Z.

The programs for A241589, there is no canonical definition to state claims against.
-/

/-! ## A241589.P1330771648877090354

`A167865(∑[A349255(n)]-1)`
-/

namespace A241589.P1330771648877090354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A241589.P1330771648877090354

/-!
# A241590: Numerators of Postnikov's hook-length formula 2^n*(n+1)^(n-1)/n!.

The programs for A241590, there is no canonical definition to state claims against.
-/

/-! ## A241590.P15455747150907125160

`A097629(n+1)/A023161(A362646(n))`
-/

namespace A241590.P15455747150907125160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097629 (n + 1) : ℚ) / (A023161 (A362646 n).toNat : ℚ)

end

end A241590.P15455747150907125160

/-!
# A241591: Denominators of Postnikov's hook-length formula 2^n*(n+1)^(n-1)/n!.

The programs for A241591, there is no canonical definition to state claims against.
-/

/-! ## A241591.P10849568611806667080

`gcd(A036503(n+1), A049606(n))`
-/

namespace A241591.P10849568611806667080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036503 (n + 1)) (A049606 n)

end

end A241591.P10849568611806667080

/-! ## A241591.P6891989087186589400

`gcd(A000246(n), A095996(n+1))`
-/

namespace A241591.P6891989087186589400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000246 n) (A095996 (n + 1))

end

end A241591.P6891989087186589400

/-! ## A241591.P3022224427446814875

`gcd(2*A095996(n+1), A001147(n))`
-/

namespace A241591.P3022224427446814875
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * A095996 (n + 1)) (A001147 n)

end

end A241591.P3022224427446814875

/-! ## A241591.P5165518555295668895

`gcd(n!/∏{p}[n+1, #^val((n-1)!, #)], A001818(n))`
-/

namespace A241591.P5165518555295668895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (Nat.factorial ((n : ℤ) - 1).toNat) p : ℕ) : ℚ))) (A001818 n)

end

end A241591.P5165518555295668895

/-! ## A241591.P461932985218623668

`gcd(A000142(n), A036503(2*(n+1)))`
-/

namespace A241591.P461932985218623668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 n) (A036503 (2 * (n + 1)))

end

end A241591.P461932985218623668

/-!
# A241592: Degree of Somos4-oid polynomial s_n(x).

The programs for A241592, the canonical program `A241592.P9669127012109654097` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A241592 has offset 1).

The definition of A241592 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A241592.P9669127012109654097

`A220838(n+2)-char[A004771(n)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A241592

/-- `A220838(n+2)-char[A004771(n)]` -/
def P9669127012109654097.Spec : Prop :=
  ∀ n, P9669127012109654097.a n = A241592 (n + 1)

theorem P9669127012109654097.correct : P9669127012109654097.Spec := by
  intro n
  simp only [A241592, Nat.add_sub_cancel]

end A241592

/-! ## A241592.P8099275376768686328

`A220838(n+2)-Δ[A110656(n+1)]`
-/

namespace A241592.P8099275376768686328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220838 (n + 2) - (f1 (n + 1) - f1 n)

end

end A241592.P8099275376768686328

namespace A241592

/-- `A220838(n+2)-Δ[A110656(n+1)]` -/
def P8099275376768686328.Spec : Prop :=
  ∀ n, P8099275376768686328.a n = A241592 (n + 1)

end A241592

/-! ## A241592.P11414037770585210292

`A002265(xor(A010121(n+1), A198442(n+1)))`
-/

namespace A241592.P11414037770585210292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.xor (A010121 (n + 1)) (A198442 (n + 1))).toNat

end

end A241592.P11414037770585210292

namespace A241592

/-- `A002265(xor(A010121(n+1), A198442(n+1)))` -/
def P11414037770585210292.Spec : Prop :=
  ∀ n, P11414037770585210292.a n = A241592 (n + 1)

end A241592

/-! ## A241592.P12655146914073560592

`xor(A002265(A198442(n+1)), A011765(n+1))`
-/

namespace A241592.P12655146914073560592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002265 (A198442 (n + 1)).toNat) (A011765 (n + 1))

end

end A241592.P12655146914073560592

namespace A241592

/-- `xor(A002265(A198442(n+1)), A011765(n+1))` -/
def P12655146914073560592.Spec : Prop :=
  ∀ n, P12655146914073560592.a n = A241592 (n + 1)

end A241592

/-! ## A241592.P1485150191787018592

`xor(A002265(A220838(2*n+3)), A011765(n+1))`
-/

namespace A241592.P1485150191787018592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002265 (A220838 (2 * n + 3)).toNat) (A011765 (n + 1))

end

end A241592.P1485150191787018592

namespace A241592

/-- `xor(A002265(A220838(2*n+3)), A011765(n+1))` -/
def P1485150191787018592.Spec : Prop :=
  ∀ n, P1485150191787018592.a n = A241592 (n + 1)

end A241592

/-! ## A241592.P12185929810198128961

`A002265(A008621((n+1)²)-Δ[A115419(n+1)])`
-/

namespace A241592.P12185929810198128961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115419 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A008621 ((n + 1) ^ 2) - (f1 (n + 1) - f1 n)).toNat

end

end A241592.P12185929810198128961

namespace A241592

/-- `A002265(A008621((n+1)²)-Δ[A115419(n+1)])` -/
def P12185929810198128961.Spec : Prop :=
  ∀ n, P12185929810198128961.a n = A241592 (n + 1)

end A241592

/-!
# A241593: a(0)-a(5) are -1, 0, 1, 12, -432, 93312; thereafter a(n) = (144*a(n-3)*a(n-1)+432*a(n-2)^2)/a(n-4).

The programs for A241593, there is no canonical definition to state claims against.
-/

/-! ## A241593.P1525607126726333717

`A052591(n)-A193474(A000142(n))`
-/

namespace A241593.P1525607126726333717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052591 n - A193474 (A000142 n).toNat

end

end A241593.P1525607126726333717

/-!
# A241594: a(n) = -(8*a(n-4)*a(n-1)+57*a(n-3)*a(n-2))/a(n-5) with initial values 1, 0, -1, 1, 8, 57, -455.

The programs for A241594, there is no canonical definition to state claims against.
-/

/-! ## A241594.P13198476372458055181

`A068344(∏[A006721(n)])*A241595(n)`
-/

namespace A241594.P13198476372458055181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006721 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068344 (∏ j ∈ Finset.range (n + 1), f1 j).toNat * A241595 n

end

end A241594.P13198476372458055181

/-! ## A241594.P4090464144521532059

`A241595(n)/A068344(A006721(n)!)`
-/

namespace A241594.P4090464144521532059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A241595 n : ℚ) / (A068344 (Nat.factorial (A006721 n).toNat) : ℚ)

end

end A241594.P4090464144521532059

/-!
# A241595: a(n) = -(8*a(n-4)*a(n-1) - 57*a(n-3)*a(n-2))/a(n-5) with initial values -1, 0, 1, -1, -8, 57, 455.

The programs for A241595, there is no canonical definition to state claims against.
-/

/-! ## A241595.P2710943613873542857

`A033999(A125314(n+1))*A241594(n)`
-/

namespace A241595.P2710943613873542857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A125314 (n + 1)).toNat * A241594 n

end

end A241595.P2710943613873542857

/-! ## A241595.P2445799819091353768

`(A241594(n)/A033999(A125314(n+1)))^A094999(n)`
-/

namespace A241595.P2445799819091353768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A241594 n : ℚ) / (A033999 (A125314 (n + 1)).toNat : ℚ)) ^ (A094999 n : ℤ)

end

end A241595.P2445799819091353768

/-!
# A241596: Partitions listed by alternately incrementing each part and appending a 1.

The programs for A241596, there is no canonical definition to state claims against.
-/

/-! ## A241596.P7958320153985205579

`A127668(A253565(n+1))`
-/

namespace A241596.P7958320153985205579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127668 (A253565 (n + 1)).toNat

end

end A241596.P7958320153985205579

/-! ## A241596.P823519174373906630

`A275536(A394533(n+1))`
-/

namespace A241596.P823519174373906630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275536 (A394533 (n + 1)).toNat

end

end A241596.P823519174373906630

/-! ## A241596.P10737685477780031342

`A037916(A329887(n+1))`
-/

namespace A241596.P10737685477780031342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037916 (A329887 (n + 1)).toNat

end

end A241596.P10737685477780031342

/-!
# A241597: Number of compositions corresponding to the n-th partition in A241596 (or A242628).

The programs for A241597, there is no canonical definition to state claims against.
-/

/-! ## A241597.P7866523630858850824

`A112531(A062050(n+1))`
-/

namespace A241597.P7866523630858850824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112531 (A062050 (n + 1)).toNat

end

end A241597.P7866523630858850824

/-! ## A241597.P8134118604565738259

`A008480(A253565(n+1))`
-/

namespace A241597.P8134118604565738259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A253565 (n + 1)).toNat

end

end A241597.P8134118604565738259

/-! ## A241597.P3118325726597232354

`A008480(A278535(n+1))`
-/

namespace A241597.P3118325726597232354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A278535 (n + 1)).toNat

end

end A241597.P3118325726597232354

/-! ## A241597.P939816510140878903

`A321648(A163511(n+1))`
-/

namespace A241597.P939816510140878903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321648 (A163511 (n + 1)).toNat

end

end A241597.P939816510140878903

/-! ## A241597.P8271426599085113087

`A112531(A053645(n+1)+1)`
-/

namespace A241597.P8271426599085113087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112531 (A053645 (n + 1) + 1).toNat

end

end A241597.P8271426599085113087

/-! ## A241597.P17457233022991807967

`A112531(n+2-A053644(n+1))`
-/

namespace A241597.P17457233022991807967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112531 ((n + 2 : ℤ) - A053644 (n + 1)).toNat

end

end A241597.P17457233022991807967

/-! ## A241597.P17037605178386027817

`A047726(A241596(n+1))`
-/

namespace A241597.P17037605178386027817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A241596 (n + 1)).toNat

end

end A241597.P17037605178386027817

/-!
# A241598: Number of connected bipartite non-crossing graphs on n nodes.

The programs for A241598, there is no canonical definition to state claims against.
-/

/-! ## A241598.P8271505068293126647

`or(1, A110266((n+1)!))`
-/

namespace A241598.P8271505068293126647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A110266 (Nat.factorial (n + 1)))

end

end A241598.P8271505068293126647

/-! ## A241598.P5591641416512888223

`or(1, (n+1)*A194967(a(n-1)))` with `a(0)=1, a(1)=1`
-/

namespace A241598.P5591641416512888223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lor 1 ((n + 1 : ℤ) * A194967 (a (n - 1)).toNat)

end

end A241598.P5591641416512888223

/-!
# A241599: Number of bipartite non-crossing graphs on n nodes.

The programs for A241599, there is no canonical definition to state claims against.
-/

/-! ## A241599.P8916675015167830607

`A215366(n)+A054861(A114175(n))`
-/

namespace A241599.P8916675015167830607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215366 n + A054861 (A114175 n).toNat

end

end A241599.P8916675015167830607

/-! ## A241599.P16353127920241023109

`A271777(n)+A112689(A082761(n))`
-/

namespace A241599.P16353127920241023109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271777 n + A112689 (A082761 n).toNat

end

end A241599.P16353127920241023109

