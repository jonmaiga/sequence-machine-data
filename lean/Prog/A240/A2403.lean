import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C023
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C050
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C004
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

/-!
# A240300: Number of 6Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240300, there is no canonical definition to state claims against.
-/

/-! ## A240300.P285013543877617037

`A240295(A056115(n)+21)`
-/

namespace A240300.P285013543877617037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (A056115 n + 21).toNat

end

end A240300.P285013543877617037

/-!
# A240302: Number of partitions of n such that (maximal multiplicity of parts) > (multiplicity of the maximal part).

The programs for A240302, there is no canonical definition to state claims against.
-/

/-! ## A240302.P8661252994967597347

`A000041(n)-A171979(n)`
-/

namespace A240302.P8661252994967597347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A171979 n

end

end A240302.P8661252994967597347

/-! ## A240302.P4221765613863982326

`∑[A002865(n)]-A171979(n)`
-/

namespace A240302.P4221765613863982326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A171979 n

end

end A240302.P4221765613863982326

/-! ## A240302.P5893218565293430615

`A000065(n)+1-A171979(n)`
-/

namespace A240302.P5893218565293430615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + (1 - A171979 n)

end

end A240302.P5893218565293430615

/-! ## A240302.P14563074253334907256

`A035363(2*n)-A171979(n)`
-/

namespace A240302.P14563074253334907256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A171979 n

end

end A240302.P14563074253334907256

/-! ## A240302.P8942939541008907950

`A035444(4*n)-A171979(n)`
-/

namespace A240302.P8942939541008907950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (4 * n) - A171979 n

end

end A240302.P8942939541008907950

/-! ## A240302.P6528430380585811757

`A100824(2*n)-A171979(n)`
-/

namespace A240302.P6528430380585811757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * n) - A171979 n

end

end A240302.P6528430380585811757

/-! ## A240302.P10733002291658568111

`A079025(∑[n])-A171979(n)`
-/

namespace A240302.P10733002291658568111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079025 (∑ j ∈ Finset.range (n + 1), f1 j) - A171979 n

end

end A240302.P10733002291658568111

/-! ## A240302.P9047344507970811620

`A054225(A000217(n))-A171979(n)`
-/

namespace A240302.P9047344507970811620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A000217 n).toNat - A171979 n

end

end A240302.P9047344507970811620

/-!
# A240303: Number of partitions of n such that (maximal multiplicity of parts) = (multiplicity of the least part).

The programs for A240303, there is no canonical definition to state claims against.
-/

/-! ## A240303.P8025301559441904661

`record[A035363(n+1)]-A240304(n)`
-/

namespace A240303.P8025301559441904661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240304 n

end

end A240303.P8025301559441904661

/-! ## A240303.P12773208999816738735

`record[A035444(n+1)]-A240304(n)`
-/

namespace A240303.P12773208999816738735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A240304 n

end

end A240303.P12773208999816738735

/-! ## A240303.P12317181317723634244

`A035377(A008486(n))-A240304(n)`
-/

namespace A240303.P12317181317723634244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035377 (A008486 n).toNat - A240304 n

end

end A240303.P12317181317723634244

/-! ## A240303.P9304370928250204914

`A035444(A008574(n))-A240304(n)`
-/

namespace A240303.P9304370928250204914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A008574 n).toNat - A240304 n

end

end A240303.P9304370928250204914

/-! ## A240303.P8527551872188800288

`Δ[A054225(A000124(n))]-A240304(n)`
-/

namespace A240303.P8527551872188800288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054225 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A240304 n

end

end A240303.P8527551872188800288

/-!
# A240304: Number of partitions of n such that (maximal multiplicity of parts) > (multiplicity of the least part).

The programs for A240304, there is no canonical definition to state claims against.
-/

/-! ## A240304.P7083878570644996577

`A052810(n)-(A240303(n)+1)`
-/

namespace A240304.P7083878570644996577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - (A240303 n + 1)

end

end A240304.P7083878570644996577

/-! ## A240304.P7739568724149426004

`A000041(n)-A240303(A028310(n))`
-/

namespace A240304.P7739568724149426004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240303 (A028310 n).toNat

end

end A240304.P7739568724149426004

/-! ## A240304.P15929010660055072775

`∑[A002865(n)]-A240303(A028310(n))`
-/

namespace A240304.P15929010660055072775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240303 (A028310 n).toNat

end

end A240304.P15929010660055072775

/-! ## A240304.P1169906840043222470

`A035363(2*n)-A240303(A028310(n))`
-/

namespace A240304.P1169906840043222470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * n) - A240303 (A028310 n).toNat

end

end A240304.P1169906840043222470

/-! ## A240304.P1664844184773133680

`∑[A085811(n+3)]-A240303(A028310(n))`
-/

namespace A240304.P1664844184773133680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240303 (A028310 n).toNat

end

end A240304.P1664844184773133680

/-!
# A240305: Number of partitions p of n such that (maximal multiplicity of the parts of p) < (number of distinct parts of p).

The programs for A240305, there is no canonical definition to state claims against.
-/

/-! ## A240305.P10194306485526324904

`A240306(n)-A239964(n)`
-/

namespace A240305.P10194306485526324904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240306 n - A239964 n

end

end A240305.P10194306485526324904

/-! ## A240305.P1895936287426458489

`A000041(n)-A240308(n)`
-/

namespace A240305.P1895936287426458489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240308 n

end

end A240305.P1895936287426458489

/-! ## A240305.P6205689584154890554

`A213598(n)-A240308(n)`
-/

namespace A240305.P6205689584154890554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A240308 n

end

end A240305.P6205689584154890554

/-! ## A240305.P15210562966897558597

`sqrt(A001255(n))-A240308(n)`
-/

namespace A240305.P15210562966897558597
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A240308 n : ℝ)

end

end A240305.P15210562966897558597

/-! ## A240305.P15161110540516575858

`∑[A002865(n)]-A240308(n)`
-/

namespace A240305.P15161110540516575858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240308 n

end

end A240305.P15161110540516575858

/-!
# A240306: Number of partitions p of n such that (maximal multiplicity of the parts of p) <= (number of distinct parts of p).

The programs for A240306, there is no canonical definition to state claims against.
-/

/-! ## A240306.P9353085831378422021

`A240305(n)+A239964(n)`
-/

namespace A240306.P9353085831378422021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240305 n + A239964 n

end

end A240306.P9353085831378422021

/-! ## A240306.P17598838246687651467

`A000041(n)-A240309(n)`
-/

namespace A240306.P17598838246687651467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240309 n

end

end A240306.P17598838246687651467

/-! ## A240306.P7095951075509993506

`A213598(n)-A240309(n)`
-/

namespace A240306.P7095951075509993506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A240309 n

end

end A240306.P7095951075509993506

/-! ## A240306.P9706797296141832704

`sqrt(A001255(n))-A240309(n)`
-/

namespace A240306.P9706797296141832704
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A240309 n : ℝ)

end

end A240306.P9706797296141832704

/-! ## A240306.P108597510844977124

`∑[A002865(n)]-A240309(n)`
-/

namespace A240306.P108597510844977124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240309 n

end

end A240306.P108597510844977124

/-!
# A240308: Number of partitions p of n such that (maximal multiplicity of the parts of p) >= (number of distinct parts of p).

The programs for A240308, there is no canonical definition to state claims against.
-/

/-! ## A240308.P11024501285058951510

`A239964(n)+A240309(n)`
-/

namespace A240308.P11024501285058951510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239964 n + A240309 n

end

end A240308.P11024501285058951510

/-! ## A240308.P5576121199396626355

`A000041(n)-A240305(n)`
-/

namespace A240308.P5576121199396626355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240305 n

end

end A240308.P5576121199396626355

/-! ## A240308.P924672567080264587

`A213598(n)-A240305(n)`
-/

namespace A240308.P924672567080264587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A240305 n

end

end A240308.P924672567080264587

/-! ## A240308.P4622383221681575616

`sqrt(A001255(n))-A240305(n)`
-/

namespace A240308.P4622383221681575616
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A240305 n : ℝ)

end

end A240308.P4622383221681575616

/-! ## A240308.P2253278007081470856

`∑[A002865(n)]-A240305(n)`
-/

namespace A240308.P2253278007081470856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240305 n

end

end A240308.P2253278007081470856

/-!
# A240309: Number of partitions p of n such that (maximal multiplicity of the parts of p) > (number of distinct parts of p).

The programs for A240309, there is no canonical definition to state claims against.
-/

/-! ## A240309.P13701476363715846164

`A240308(n)-A239964(n)`
-/

namespace A240309.P13701476363715846164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240308 n - A239964 n

end

end A240309.P13701476363715846164

/-! ## A240309.P9424821070617907220

`A000041(n)-A240306(n)`
-/

namespace A240309.P9424821070617907220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240306 n

end

end A240309.P9424821070617907220

/-! ## A240309.P5720346144829579110

`A213598(n)-A240306(n)`
-/

namespace A240309.P5720346144829579110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A240306 n

end

end A240309.P5720346144829579110

/-! ## A240309.P13619524767102893647

`sqrt(A001255(n))-A240306(n)`
-/

namespace A240309.P13619524767102893647
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A240306 n : ℝ)

end

end A240309.P13619524767102893647

/-! ## A240309.P12592449517931892023

`∑[A002865(n)]-A240306(n)`
-/

namespace A240309.P12592449517931892023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240306 n

end

end A240309.P12592449517931892023

/-!
# A240310: Number of partitions p of n such that (maximal multiplicity of the parts of p) < (maximal part of p).

The programs for A240310, there is no canonical definition to state claims against.
-/

/-! ## A240310.P8551421888776644357

`A240311(n)-A240312(n)`
-/

namespace A240310.P8551421888776644357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240311 n - A240312 n

end

end A240310.P8551421888776644357

/-! ## A240310.P9486686353167046524

`A000041(n)-A240313(n)`
-/

namespace A240310.P9486686353167046524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240313 n

end

end A240310.P9486686353167046524

/-! ## A240310.P13591956872381442307

`A213598(n)-A240313(n)`
-/

namespace A240310.P13591956872381442307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A240313 n

end

end A240310.P13591956872381442307

/-! ## A240310.P13692396836939261684

`sqrt(A001255(n))-A240313(n)`
-/

namespace A240310.P13692396836939261684
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A240313 n : ℝ)

end

end A240310.P13692396836939261684

/-! ## A240310.P11975743515943425667

`∑[A002865(n)]-A240313(n)`
-/

namespace A240310.P11975743515943425667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240313 n

end

end A240310.P11975743515943425667

/-!
# A240311: Number of partitions p of n such that (maximal multiplicity of the parts of p) <= (maximal part of p).

The programs for A240311, there is no canonical definition to state claims against.
-/

/-! ## A240311.P9036866896708262574

`A240310(n)+A240312(n)`
-/

namespace A240311.P9036866896708262574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240310 n + A240312 n

end

end A240311.P9036866896708262574

/-! ## A240311.P1157629462758906588

`A000041(n)-A240314(n)`
-/

namespace A240311.P1157629462758906588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240314 n

end

end A240311.P1157629462758906588

/-! ## A240311.P2527114181724688464

`A213598(n)-A240314(n)`
-/

namespace A240311.P2527114181724688464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A240314 n

end

end A240311.P2527114181724688464

/-! ## A240311.P11218026873431003012

`sqrt(A001255(n))-A240314(n)`
-/

namespace A240311.P11218026873431003012
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A240314 n : ℝ)

end

end A240311.P11218026873431003012

/-! ## A240311.P1900925027986628668

`∑[A002865(n)]-A240314(n)`
-/

namespace A240311.P1900925027986628668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240314 n

end

end A240311.P1900925027986628668

/-!
# A240312: Number of partitions p of n such that (maximal multiplicity of the parts of p) = (maximal part of p).

The programs for A240312, there is no canonical definition to state claims against.
-/

/-! ## A240312.P1649605023254540285

`A240311(n)-A240310(n)`
-/

namespace A240312.P1649605023254540285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240311 n - A240310 n

end

end A240312.P1649605023254540285

/-! ## A240312.P13799232351945533444

`A240313(n)-A240314(n)`
-/

namespace A240312.P13799232351945533444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240313 n - A240314 n

end

end A240312.P13799232351945533444

/-! ## A240312.P6776055866755690382

`A240313(n)+A057428(n)*A240314(n)`
-/

namespace A240312.P6776055866755690382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240313 n + A057428 n * A240314 n

end

end A240312.P6776055866755690382

/-! ## A240312.P4845785635695394805

`A000041(n)-(A240314(n)+A240310(n))`
-/

namespace A240312.P4845785635695394805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A240314 n + A240310 n)

end

end A240312.P4845785635695394805

/-! ## A240312.P3812478733047613570

`A240313(n)+A240311(n)-A000041(n)`
-/

namespace A240312.P3812478733047613570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240313 n + A240311 n - A000041 n

end

end A240312.P3812478733047613570

/-!
# A240313: Number of partitions p of n such that (maximal multiplicity of the parts of p) >= (maximal part of p).

The programs for A240313, there is no canonical definition to state claims against.
-/

/-! ## A240313.P2441666106326076353

`A240312(n)+A240314(n)`
-/

namespace A240313.P2441666106326076353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240312 n + A240314 n

end

end A240313.P2441666106326076353

/-! ## A240313.P12834471857732837181

`n-1-(A023443(n)-A240314(n)-A240312(n))`
-/

namespace A240313.P12834471857732837181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - (A023443 n - A240314 n - A240312 n)

end

end A240313.P12834471857732837181

/-! ## A240313.P6665364166406107208

`val(A000079(n), 2)-(n-A240314(n)-A240312(n))`
-/

namespace A240313.P6665364166406107208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A000079 n).toNat 2 : ℤ) - ((n : ℤ) - A240314 n - A240312 n)

end

end A240313.P6665364166406107208

/-! ## A240313.P16021136927920541949

`A139582(n)/2-(A000041(n)-A240314(n)-A240312(n))`
-/

namespace A240313.P16021136927920541949
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139582 n : ℚ) / 2 - (A000041 n - A240314 n - A240312 n : ℚ)

end

end A240313.P16021136927920541949

/-! ## A240313.P10454332002678625250

`A299474(n)/4-(A000041(n)-A240314(n)-A240312(n))`
-/

namespace A240313.P10454332002678625250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299474 n : ℚ) / 4 - (A000041 n - A240314 n - A240312 n : ℚ)

end

end A240313.P10454332002678625250

/-! ## A240313.P11595040124146391558

`A133041(n)-n-(A000041(n)-A240314(n)-A240312(n))`
-/

namespace A240313.P11595040124146391558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ) - (A000041 n - A240314 n - A240312 n)

end

end A240313.P11595040124146391558

/-!
# A240314: Number of partitions p of n such that (maximal multiplicity of the parts of p) > (maximal part of p).

The programs for A240314, there is no canonical definition to state claims against.
-/

/-! ## A240314.P16850519310113663979

`A240313(n)-A240312(n)`
-/

namespace A240314.P16850519310113663979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240313 n - A240312 n

end

end A240314.P16850519310113663979

/-! ## A240314.P17477445067627268165

`A000041(n)-A240311(n)`
-/

namespace A240314.P17477445067627268165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A240311 n

end

end A240314.P17477445067627268165

/-! ## A240314.P5348882057722947284

`A213598(n)-A240311(n)`
-/

namespace A240314.P5348882057722947284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213598 n - A240311 n

end

end A240314.P5348882057722947284

/-! ## A240314.P14031713676541436330

`sqrt(A001255(n))-A240311(n)`
-/

namespace A240314.P14031713676541436330
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A240311 n : ℝ)

end

end A240314.P14031713676541436330

/-! ## A240314.P12753293585864586424

`∑[A002865(n)]-A240311(n)`
-/

namespace A240314.P12753293585864586424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A240311 n

end

end A240314.P12753293585864586424

/-!
# A240315: Triangular array read by rows: T(n,k) is the number of compositions of n into exactly k parts in which no part is unique (each part occurs at least twice).

The programs for A240315, there is no canonical definition to state claims against.
-/

/-! ## A240315.P6027811867675964634

`A225654(A211871(n)+1)`
-/

namespace A240315.P6027811867675964634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225654 (A211871 n + 1).toNat

end

end A240315.P6027811867675964634

/-! ## A240315.P7598934729822349622

`A320606(A261137(n)+2)`
-/

namespace A240315.P7598934729822349622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320606 (A261137 n + 2).toNat

end

end A240315.P7598934729822349622

/-! ## A240315.P3982711269701464081

`A309768(7*A261139(n))`
-/

namespace A240315.P3982711269701464081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309768 (7 * A261139 n).toNat

end

end A240315.P3982711269701464081

/-! ## A240315.P12197215490146466341

`A025455(2^A261139(n))`
-/

namespace A240315.P12197215490146466341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025455 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A261139 n : ℤ))).toNat

end

end A240315.P12197215490146466341

/-! ## A240315.P7240129273772339065

`A293439(2^A261137(n))`
-/

namespace A240315.P7240129273772339065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293439 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A261137 n : ℤ))).toNat

end

end A240315.P7240129273772339065

/-!
# A240316: Number of n X 2 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240316, the canonical program `A240316.P4908203216822449279` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240316 has offset 1).

The definition of A240316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240316.P4908203216822449279

`ogf((2+4x-6x^2-4x^3+16x^4+12x^5-12x^6-8x^7)/(1-12x^2+24x^4-31x^6+16x^8))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A240316

/-- `ogf((2+4x-6x^2-4x^3+16x^4+12x^5-12x^6-8x^7)/(1-12x^2+24x^4-31x^6+16x^8))` -/
def P4908203216822449279.Spec : Prop :=
  ∀ n, P4908203216822449279.a n = A240316 (n + 1)

theorem P4908203216822449279.correct : P4908203216822449279.Spec := by
  intro n
  simp only [A240316, Nat.add_sub_cancel]

end A240316

/-! ## A240316.P17269369460935680136

`A240321(2+∑[n+1])`
-/

namespace A240316.P17269369460935680136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240316.P17269369460935680136

namespace A240316

/-- `A240321(2+∑[n+1])` -/
def P17269369460935680136.Spec : Prop :=
  ∀ n, P17269369460935680136.a n = A240316 (n + 1)

end A240316

/-! ## A240316.P4914231307299256344

`record[A240321(record[A091995(n+1)])]`
-/

namespace A240316.P4914231307299256344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091995 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240316.P4914231307299256344

namespace A240316

/-- `record[A240321(record[A091995(n+1)])]` -/
def P4914231307299256344.Spec : Prop :=
  ∀ n, P4914231307299256344.a n = A240316 (n + 1)

end A240316

/-! ## A240316.P770596722117607858

`record[A240321(n+1)/A162975(n)]`
-/

namespace A240316.P770596722117607858
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240321 (n + 1) : ℚ) / (A162975 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240316.P770596722117607858

namespace A240316

/-- `record[A240321(n+1)/A162975(n)]` -/
def P770596722117607858.Spec : Prop :=
  ∀ n, P770596722117607858.a n = (A240316 (n + 1) : ℚ)

end A240316

/-! ## A240316.P5639430541521754259

`record[root(A240321(n+1), A065941(n))]`
-/

namespace A240316.P5639430541521754259
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A240321 (n + 1) : ℝ) ^ (1 / (A065941 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240316.P5639430541521754259

namespace A240316

/-- `record[root(A240321(n+1), A065941(n))]` -/
def P5639430541521754259.Spec : Prop :=
  ∀ n, P5639430541521754259.a n = (A240316 (n + 1) : ℝ)

end A240316

/-!
# A240317: Number of nX3 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240317, there is no canonical definition to state claims against.
-/

/-! ## A240317.P1985749794600488802

`A240321(∑[n+2]+4)`
-/

namespace A240317.P1985749794600488802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240317.P1985749794600488802

/-!
# A240318: Number of nX4 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240318, there is no canonical definition to state claims against.
-/

/-! ## A240318.P7667477571300988801

`A240321(A374004(n+1))`
-/

namespace A240318.P7667477571300988801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (A374004 (n + 1)).toNat

end

end A240318.P7667477571300988801

/-! ## A240318.P3233042587004513076

`A240321(A141214(n+1))`
-/

namespace A240318.P3233042587004513076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (A141214 (n + 1)).toNat

end

end A240318.P3233042587004513076

/-!
# A240319: Number of nX5 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240319, there is no canonical definition to state claims against.
-/

/-! ## A240319.P16781999876022797353

`A240321(A374005(n+1))`
-/

namespace A240319.P16781999876022797353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (A374005 (n + 1)).toNat

end

end A240319.P16781999876022797353

/-!
# A240320: Number of nX6 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240320, there is no canonical definition to state claims against.
-/

/-! ## A240320.P11858308565913603776

`A240321(A374007(n+1))`
-/

namespace A240320.P11858308565913603776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (A374007 (n + 1)).toNat

end

end A240320.P11858308565913603776

/-!
# A240322: Number of n X 2 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240322, the canonical program `A240322.P16448269640312485921` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240322 has offset 1).

The definition of A240322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240322.P16448269640312485921

`ogf((2+5x+13x^2+7x^3-2x^4-16x^5-15x^6-3x^7+2x^8+11x^9+13x^10+3x^11-3x^12-4x^13)/(1-2x^2-10x^3+x^4+5x^5+15x^6-x^7-4x^8-2x^9-10x^10-5x^11+6x^13))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A240322

/-- `ogf((2+5x+13x^2+7x^3-2x^4-16x^5-15x^6-3x^7+2x^8+11x^9+13x^10+3x^11-3x^12-4x^13)/(1-2x^2-10x^3+x^4+5x^5+15x^6-x^7-4x^8-2x^9-10x^10-5x^11+6x^13))` -/
def P16448269640312485921.Spec : Prop :=
  ∀ n, P16448269640312485921.a n = A240322 (n + 1)

theorem P16448269640312485921.correct : P16448269640312485921.Spec := by
  intro n
  simp only [A240322, Nat.add_sub_cancel]

end A240322

/-! ## A240322.P17558533997008656817

`A240327(∑[n+1]+2)`
-/

namespace A240322.P17558533997008656817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240327 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240322.P17558533997008656817

namespace A240322

/-- `A240327(∑[n+1]+2)` -/
def P17558533997008656817.Spec : Prop :=
  ∀ n, P17558533997008656817.a n = A240322 (n + 1)

end A240322

/-! ## A240322.P13878193253552828477

`record[root(A240327(n+1), A299927(n))]`
-/

namespace A240322.P13878193253552828477
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A240327 (n + 1) : ℝ) ^ (1 / (A299927 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240322.P13878193253552828477

namespace A240322

/-- `record[root(A240327(n+1), A299927(n))]` -/
def P13878193253552828477.Spec : Prop :=
  ∀ n, P13878193253552828477.a n = (A240322 (n + 1) : ℝ)

end A240322

/-! ## A240322.P2671353719154984128

`record[A240327(n+2)/A144696(n+2)]`
-/

namespace A240322.P2671353719154984128
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240327 (n + 2) : ℚ) / (A144696 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240322.P2671353719154984128

namespace A240322

/-- `record[A240327(n+2)/A144696(n+2)]` -/
def P2671353719154984128.Spec : Prop :=
  ∀ n, P2671353719154984128.a n = (A240322 (n + 1) : ℚ)

end A240322

/-! ## A240322.P17899290350203184572

`record[root(A240327(n+1), A130270(n+1))]`
-/

namespace A240322.P17899290350203184572
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A240327 (n + 1) : ℝ) ^ (1 / (A130270 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240322.P17899290350203184572

namespace A240322

/-- `record[root(A240327(n+1), A130270(n+1))]` -/
def P17899290350203184572.Spec : Prop :=
  ∀ n, P17899290350203184572.a n = (A240322 (n + 1) : ℝ)

end A240322

/-!
# A240323: Number of nX3 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240323, there is no canonical definition to state claims against.
-/

/-! ## A240323.P8071669897070253400

`A240327(∑[n+2]+4)`
-/

namespace A240323.P8071669897070253400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240327 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240323.P8071669897070253400

/-!
# A240324: Number of nX4 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240324, there is no canonical definition to state claims against.
-/

/-! ## A240324.P10856605538987424959

`A240327(A374004(n+1))`
-/

namespace A240324.P10856605538987424959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240327 (A374004 (n + 1)).toNat

end

end A240324.P10856605538987424959

/-! ## A240324.P1744967344256446283

`A240327(A141214(n+1))`
-/

namespace A240324.P1744967344256446283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240327 (A141214 (n + 1)).toNat

end

end A240324.P1744967344256446283

/-!
# A240325: Number of n X 5 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240325, there is no canonical definition to state claims against.
-/

/-! ## A240325.P765052964738096543

`A240327(A374005(n+1))`
-/

namespace A240325.P765052964738096543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240327 (A374005 (n + 1)).toNat

end

end A240325.P765052964738096543

/-!
# A240326: Number of nX6 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240326, there is no canonical definition to state claims against.
-/

/-! ## A240326.P4532001492258059825

`A240327(A374007(n+1))`
-/

namespace A240326.P4532001492258059825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240327 (A374007 (n + 1)).toNat

end

end A240326.P4532001492258059825

/-!
# A240328: Inverse of 37th cyclotomic polynomial.

The programs for A240328, there is no canonical definition to state claims against.
-/

/-! ## A240328.P15495143358016551497

`A033999(n)*A240357(n)`
-/

namespace A240328.P15495143358016551497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A240357 n

end

end A240328.P15495143358016551497

/-!
# A240329: Inverse of 41st cyclotomic polynomial.

The programs for A240329, there is no canonical definition to state claims against.
-/

/-! ## A240329.P7610665275739001054

`A015342(A313803(3*(n+1))+A008590(2*n))`
-/

namespace A240329.P7610665275739001054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015342 (A313803 (3 * (n + 1)) + A008590 (2 * n)).toNat

end

end A240329.P7610665275739001054

/-!
# A240330: Inverse of 43rd cyclotomic polynomial.

The programs for A240330, there is no canonical definition to state claims against.
-/

/-! ## A240330.P7119971275211085746

`A014482(A017341(3*n)+3*n+4)`
-/

namespace A240330.P7119971275211085746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014482 (A017341 (3 * n) + (3 * n + 4 : ℤ)).toNat

end

end A240330.P7119971275211085746

/-!
# A240331: Inverse of 47th cyclotomic polynomial.

The programs for A240331, there is no canonical definition to state claims against.
-/

/-! ## A240331.P15582864539030703447

`Δ[runs[A079688(A272403(1+n))]]`
-/

namespace A240331.P15582864539030703447
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079688 (A272403 (1 + n)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A240331.P15582864539030703447

/-!
# A240332: Inverse of 49th cyclotomic polynomial.

The programs for A240332, the canonical program `A240332.P2811997264391864732` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240332 has offset 0).

The definition of A240332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240332.P2811997264391864732

`∑[A014016(n)]*A014016(A003415(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A240332

/-- `∑[A014016(n)]*A014016(A003415(n))` -/
def P2811997264391864732.Spec : Prop :=
  ∀ n, P2811997264391864732.a n = A240332 n

theorem P2811997264391864732.correct : P2811997264391864732.Spec := by
  intro n
  simp only [A240332]

end A240332

/-!
# A240333: Number of n X 2 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240333, the canonical program `A240333.P8029004449650856551` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240333 has offset 1).

The definition of A240333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240333.P8029004449650856551

`ogf((4-9x+18x^2-18x^3+14x^4-6x^5-x^6+2x^7)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A240333

/-- `ogf((4-9x+18x^2-18x^3+14x^4-6x^5-x^6+2x^7)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P8029004449650856551.Spec : Prop :=
  ∀ n, P8029004449650856551.a n = A240333 (n + 1)

theorem P8029004449650856551.correct : P8029004449650856551.Spec := by
  intro n
  simp only [A240333, Nat.add_sub_cancel]

end A240333

/-! ## A240333.P11195601430279811836

`A240338(2+∑[n+1])`
-/

namespace A240333.P11195601430279811836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240333.P11195601430279811836

namespace A240333

/-- `A240338(2+∑[n+1])` -/
def P11195601430279811836.Spec : Prop :=
  ∀ n, P11195601430279811836.a n = A240333 (n + 1)

end A240333

/-! ## A240333.P5392085866872064730

`record[A240338(A286237(n+1)+1)]`
-/

namespace A240333.P5392085866872064730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (A286237 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240333.P5392085866872064730

namespace A240333

/-- `record[A240338(A286237(n+1)+1)]` -/
def P5392085866872064730.Spec : Prop :=
  ∀ n, P5392085866872064730.a n = A240333 (n + 1)

end A240333

/-! ## A240333.P13233400250807898986

`record[A240338(n+3)/A107867(n)]`
-/

namespace A240333.P13233400250807898986
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240338 (n + 3) : ℚ) / (A107867 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240333.P13233400250807898986

namespace A240333

/-- `record[A240338(n+3)/A107867(n)]` -/
def P13233400250807898986.Spec : Prop :=
  ∀ n, P13233400250807898986.a n = (A240333 (n + 1) : ℚ)

end A240333

/-! ## A240333.P2317661021065389033

`record[A240338(n+3)/A107870(n)]`
-/

namespace A240333.P2317661021065389033
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240338 (n + 3) : ℚ) / (A107870 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240333.P2317661021065389033

namespace A240333

/-- `record[A240338(n+3)/A107870(n)]` -/
def P2317661021065389033.Spec : Prop :=
  ∀ n, P2317661021065389033.a n = (A240333 (n + 1) : ℚ)

end A240333

/-!
# A240334: Number of nX3 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240334, there is no canonical definition to state claims against.
-/

/-! ## A240334.P5538333077417085252

`A240338(∑[n+2]+4)`
-/

namespace A240334.P5538333077417085252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240334.P5538333077417085252

/-!
# A240335: Number of nX4 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240335, there is no canonical definition to state claims against.
-/

/-! ## A240335.P14319408937388694752

`A240338(A374004(n+1))`
-/

namespace A240335.P14319408937388694752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (A374004 (n + 1)).toNat

end

end A240335.P14319408937388694752

/-! ## A240335.P308684304037458952

`A240338(A141214(n+1))`
-/

namespace A240335.P308684304037458952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (A141214 (n + 1)).toNat

end

end A240335.P308684304037458952

/-!
# A240336: Number of nX5 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240336, there is no canonical definition to state claims against.
-/

/-! ## A240336.P12566666505657460681

`A240338(eq[0, 4-col(n)]+1)`
-/

namespace A240336.P12566666505657460681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (SequenceMachineLib.triCol n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A240336.P12566666505657460681

/-!
# A240337: Number of nX6 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240337, there is no canonical definition to state claims against.
-/

/-! ## A240337.P3115650805229976405

`A240338(A374007(n+1))`
-/

namespace A240337.P3115650805229976405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (A374007 (n + 1)).toNat

end

end A240337.P3115650805229976405

/-!
# A240342: Number of n X 2 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or three plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240342, the canonical program `A240342.P606162789370024762` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240342 has offset 1).

The definition of A240342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240342.P10170371193108269299

`ogf((4-6x-2x^2+8x^3)/(1-6x+7x^2+4x^3-8x^4))`
-/

namespace A240342.P10170371193108269299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6, -2, 8] [1, -6, 7, 4, -8] n

end

end A240342.P10170371193108269299

namespace A240342

/-- `ogf((4-6x-2x^2+8x^3)/(1-6x+7x^2+4x^3-8x^4))` -/
def P10170371193108269299.Spec : Prop :=
  ∀ n, P10170371193108269299.a n = A240342 (n + 1)

end A240342

/-! ## A240342.P606162789370024762

`6*a(n-1)-7*a(n-2)-4*a(n-3)+8*a(n-4)` with `a(0)=4, a(1)=18, a(2)=78, a(3)=334`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A240342

/-- `6*a(n-1)-7*a(n-2)-4*a(n-3)+8*a(n-4)` -/
def P606162789370024762.Spec : Prop :=
  ∀ n, P606162789370024762.a n = A240342 (n + 1)

theorem P606162789370024762.correct : P606162789370024762.Spec := by
  intro n
  simp only [A240342, Nat.add_sub_cancel]

end A240342

/-! ## A240342.P7399070403968460700

`A240347(∑[n+1]+2)`
-/

namespace A240342.P7399070403968460700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240342.P7399070403968460700

namespace A240342

/-- `A240347(∑[n+1]+2)` -/
def P7399070403968460700.Spec : Prop :=
  ∀ n, P7399070403968460700.a n = A240342 (n + 1)

end A240342

/-! ## A240342.P885903408363121626

`record[A240347(n+2)/A174690(n+2)]`
-/

namespace A240342.P885903408363121626
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240347 (n + 2) : ℚ) / (A174690 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240342.P885903408363121626

namespace A240342

/-- `record[A240347(n+2)/A174690(n+2)]` -/
def P885903408363121626.Spec : Prop :=
  ∀ n, P885903408363121626.a n = (A240342 (n + 1) : ℚ)

end A240342

/-!
# A240343: Number of nX3 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or three plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240343, there is no canonical definition to state claims against.
-/

/-! ## A240343.P105901071411559128

`A240347(∑[n+2]+4)`
-/

namespace A240343.P105901071411559128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240343.P105901071411559128

/-!
# A240344: Number of nX4 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or three plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240344, there is no canonical definition to state claims against.
-/

/-! ## A240344.P15041402629416874377

`A240347(A141214(n)+7)`
-/

namespace A240344.P15041402629416874377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (A141214 n + 7).toNat

end

end A240344.P15041402629416874377

/-! ## A240344.P4355104626274358218

`A240347(A141214(n+1))`
-/

namespace A240344.P4355104626274358218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (A141214 (n + 1)).toNat

end

end A240344.P4355104626274358218

/-!
# A240345: Number of nX5 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or three plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240345, there is no canonical definition to state claims against.
-/

/-! ## A240345.P9062740249705505021

`A240347(A077169(n+5))`
-/

namespace A240345.P9062740249705505021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (A077169 (n + 5)).toNat

end

end A240345.P9062740249705505021

/-! ## A240345.P5615331431104043647

`A240347(A374005(n+1))`
-/

namespace A240345.P5615331431104043647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (A374005 (n + 1)).toNat

end

end A240345.P5615331431104043647

/-!
# A240346: Number of nX6 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or three plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240346, there is no canonical definition to state claims against.
-/

/-! ## A240346.P16728551769222773260

`A240347(A166136(n+4))`
-/

namespace A240346.P16728551769222773260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (A166136 (n + 4)).toNat

end

end A240346.P16728551769222773260

/-! ## A240346.P7978522957989526049

`A240347(A374007(n+1))`
-/

namespace A240346.P7978522957989526049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (A374007 (n + 1)).toNat

end

end A240346.P7978522957989526049

/-!
# A240347: T(n,k)=Number of nXk 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of the elements above it or three plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240347, there is no canonical definition to state claims against.
-/

/-! ## A240347.P9452972114434685478

`A344543(A218319(n+1)+1)`
-/

namespace A240347.P9452972114434685478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344543 (A218319 (n + 1) + 1).toNat

end

end A240347.P9452972114434685478

/-! ## A240347.P9930071135109237159

`A360553(A189161(n+1))-1`
-/

namespace A240347.P9930071135109237159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360553 (A189161 (n + 1)).toNat - 1

end

end A240347.P9930071135109237159

/-! ## A240347.P5784886185735030412

`A360553(A189905(n+1))-1`
-/

namespace A240347.P5784886185735030412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360553 (A189905 (n + 1)).toNat - 1

end

end A240347.P5784886185735030412

/-! ## A240347.P8700270999744161950

`2*A194974(A264128(n+1))`
-/

namespace A240347.P8700270999744161950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194974 (A264128 (n + 1)).toNat

end

end A240347.P8700270999744161950

/-! ## A240347.P1946128729007930352

`A256890(n)+A229998(A256890(n))`
-/

namespace A240347.P1946128729007930352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256890 n + A229998 (A256890 n).toNat

end

end A240347.P1946128729007930352

/-!
# A240348: Inverse of 53rd cyclotomic polynomial.

The programs for A240348, the canonical program `A240348.P10324360403096197541` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240348 has offset 0).

The definition of A240348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240348.P10324360403096197541

`round((-2)^-(n%53))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A240348

/-- `round((-2)^-(n%53))` -/
def P10324360403096197541.Spec : Prop :=
  ∀ n, P10324360403096197541.a n = A240348 n

theorem P10324360403096197541.correct : P10324360403096197541.Spec := by
  intro n
  simp only [A240348]

end A240348

/-!
# A240349: Inverse of 59th cyclotomic polynomial.

The programs for A240349, there is no canonical definition to state claims against.
-/

/-! ## A240349.P14391008082110746865

`A240350(comp[A060672(n+1)]²)`
-/

namespace A240349.P14391008082110746865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060672 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240350 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A240349.P14391008082110746865

/-!
# A240350: Inverse of 61st cyclotomic polynomial.

The programs for A240350, there is no canonical definition to state claims against.
-/

/-! ## A240350.P9537517433220615373

`A240349(n+1-A388065(n+1))`
-/

namespace A240350.P9537517433220615373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240349 ((n + 1 : ℤ) - A388065 (n + 1)).toNat

end

end A240350.P9537517433220615373

/-!
# A240351: Inverse of 64th cyclotomic polynomial.

The programs for A240351, the canonical program `A240351.P973440033418318766` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240351 has offset 0).

The definition of A240351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240351.P973440033418318766

`A056594(lcm(16, n)/16)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A240351

/-- `A056594(lcm(16, n)/16)` -/
def P973440033418318766.Spec : Prop :=
  ∀ n, P973440033418318766.a n = A240351 n

theorem P973440033418318766.correct : P973440033418318766.Spec := by
  intro n
  simp only [A240351]

end A240351

/-!
# A240352: Inverse of 67th cyclotomic polynomial.

The programs for A240352, there is no canonical definition to state claims against.
-/

/-! ## A240352.P6785649205080979988

`A010815(A288021(n+1)+A247755(n+2)-A225462(n))`
-/

namespace A240352.P6785649205080979988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A288021 (n + 1) + (A247755 (n + 2) - A225462 n)).toNat

end

end A240352.P6785649205080979988

/-!
# A240353: Inverse of 68th cyclotomic polynomial.

The programs for A240353, the canonical program `A240353.P13481639224832922380` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240353 has offset 0).

The definition of A240353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240353.P13481639224832922380

`A014043(A026741(n)+A014043(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A240353

/-- `A014043(A026741(n)+A014043(n))` -/
def P13481639224832922380.Spec : Prop :=
  ∀ n, P13481639224832922380.a n = A240353 n

theorem P13481639224832922380.correct : P13481639224832922380.Spec := by
  intro n
  simp only [A240353]

end A240353

/-!
# A240354: Inverse of 71st cyclotomic polynomial.

The programs for A240354, there is no canonical definition to state claims against.
-/

/-! ## A240354.P10927224439710313831

`A014808(5*A017185(n))`
-/

namespace A240354.P10927224439710313831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014808 (5 * A017185 n).toNat

end

end A240354.P10927224439710313831

/-!
# A240355: Inverse of 72nd cyclotomic polynomial.

The programs for A240355, the canonical program `A240355.P361117154872761875` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240355 has offset 0).

The definition of A240355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240355.P361117154872761875

`A014045(lcm(2, n)/2)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A240355

/-- `A014045(lcm(2, n)/2)` -/
def P361117154872761875.Spec : Prop :=
  ∀ n, P361117154872761875.a n = A240355 n

theorem P361117154872761875.correct : P361117154872761875.Spec := by
  intro n
  simp only [A240355]

end A240355

/-!
# A240356: Inverse of 73rd cyclotomic polynomial.

The programs for A240356, there is no canonical definition to state claims against.
-/

/-! ## A240356.P10618102910628511367

`A121373(lcm(A005811(n+3), A251419(n+1)))`
-/

namespace A240356.P10618102910628511367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (Int.lcm (A005811 (n + 3)) (A251419 (n + 1)))

end

end A240356.P10618102910628511367

/-!
# A240357: Inverse of 74th cyclotomic polynomial.

The programs for A240357, there is no canonical definition to state claims against.
-/

/-! ## A240357.P2305636972656997587

`(-1)^n*A240328(n)`
-/

namespace A240357.P2305636972656997587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A240328 n

end

end A240357.P2305636972656997587

/-!
# A240359: Number of n X 2 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240359, the canonical program `A240359.P139860568188102345` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240359 has offset 1).

The definition of A240359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240359.P139860568188102345

`ogf((4-21x+52x^2-72x^3+54x^4-8x^5-32x^6+55x^7-67x^8+66x^9-46x^10+20x^11-4x^12)/(1-9x+36x^2-84x^3+126x^4-126x^5+84x^6-36x^7+9x^8-x^9))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A240359

/-- `ogf((4-21x+52x^2-72x^3+54x^4-8x^5-32x^6+55x^7-67x^8+66x^9-46x^10+20x^11-4x^12)/(1-9x+36x^2-84x^3+126x^4-126x^5+84x^6-36x^7+9x^8-x^9))` -/
def P139860568188102345.Spec : Prop :=
  ∀ n, P139860568188102345.a n = A240359 (n + 1)

theorem P139860568188102345.correct : P139860568188102345.Spec := by
  intro n
  simp only [A240359, Nat.add_sub_cancel]

end A240359

/-! ## A240359.P5183613545884032063

`A240364(∑[2+n])`
-/

namespace A240359.P5183613545884032063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240359.P5183613545884032063

namespace A240359

/-- `A240364(∑[2+n])` -/
def P5183613545884032063.Spec : Prop :=
  ∀ n, P5183613545884032063.a n = A240359 (n + 1)

end A240359

/-! ## A240359.P9386035689867613264

`record[A240364(abs(A201163(n)))]`
-/

namespace A240359.P9386035689867613264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240359.P9386035689867613264

namespace A240359

/-- `record[A240364(abs(A201163(n)))]` -/
def P9386035689867613264.Spec : Prop :=
  ∀ n, P9386035689867613264.a n = A240359 (n + 1)

end A240359

/-! ## A240359.P10215917890465932538

`record[root(A240364(n+2), A258709(n+1))]`
-/

namespace A240359.P10215917890465932538
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A240364 (n + 2) : ℝ) ^ (1 / (A258709 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240359.P10215917890465932538

namespace A240359

/-- `record[root(A240364(n+2), A258709(n+1))]` -/
def P10215917890465932538.Spec : Prop :=
  ∀ n, P10215917890465932538.a n = (A240359 (n + 1) : ℝ)

end A240359

/-!
# A240360: Number of nX3 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240360, there is no canonical definition to state claims against.
-/

/-! ## A240360.P4673792549695994115

`A240364(∑[3+n]+1)`
-/

namespace A240360.P4673792549695994115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240360.P4673792549695994115

/-!
# A240361: Number of nX4 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240361, there is no canonical definition to state claims against.
-/

/-! ## A240361.P3492055501197657235

`A240364(∑[n+4]+3)`
-/

namespace A240361.P3492055501197657235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A240361.P3492055501197657235

/-!
# A240362: Number of nX5 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240362, there is no canonical definition to state claims against.
-/

/-! ## A240362.P8410979033636902397

`A240364(∑[n+5]+6)`
-/

namespace A240362.P8410979033636902397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A240362.P8410979033636902397

/-!
# A240363: Number of nX6 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240363, there is no canonical definition to state claims against.
-/

/-! ## A240363.P3423457921682236736

`A240364(eq[row(n), col(n)+5]+1)`
-/

namespace A240363.P3423457921682236736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A240363.P3423457921682236736

/-!
# A240364: T(n,k)=Number of nXk 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240364, there is no canonical definition to state claims against.
-/

/-! ## A240364.P8393374426017246707

`A005940(n+1)+A219002(n+1)-A080224(A056273(n))`
-/

namespace A240364.P8393374426017246707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1) + (A219002 (n + 1) - A080224 (A056273 n).toNat)

end

end A240364.P8393374426017246707

/-!
# A240365: Number of 2Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240365, there is no canonical definition to state claims against.
-/

/-! ## A240365.P15206707555320608520

`A240364(∑[1+n]+2)`
-/

namespace A240365.P15206707555320608520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240365.P15206707555320608520

/-! ## A240365.P16885320757294920655

`record[A240364(n+3)/A049444(n)]`
-/

namespace A240365.P16885320757294920655
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240364 (n + 3) : ℚ) / (A049444 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240365.P16885320757294920655

/-! ## A240365.P16742375026529641011

`record[gcd(A053616(n), A240364(n+2))]`
-/

namespace A240365.P16742375026529641011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053616 n) (A240364 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240365.P16742375026529641011

/-! ## A240365.P10588323679976107432

`record[A240364(n+2)/A286899(n+1)]`
-/

namespace A240365.P10588323679976107432
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240364 (n + 2) : ℚ) / (A286899 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240365.P10588323679976107432

/-! ## A240365.P15070122433560815789

`A240364(eq[3, A131818(n+1)])%A240368(n+1)`
-/

namespace A240365.P15070122433560815789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A240368 (n + 1))

end

end A240365.P15070122433560815789

/-!
# A240366: Number of 3Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240366, there is no canonical definition to state claims against.
-/

/-! ## A240366.P5079435379655817411

`A240364(∑[n+2]+4)`
-/

namespace A240366.P5079435379655817411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240366.P5079435379655817411

/-!
# A240367: Number of 4Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240367, there is no canonical definition to state claims against.
-/

/-! ## A240367.P16695408272802328661

`A240364(A141214(n)+7)`
-/

namespace A240367.P16695408272802328661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (A141214 n + 7).toNat

end

end A240367.P16695408272802328661

/-!
# A240368: Number of 5Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240368, there is no canonical definition to state claims against.
-/

/-! ## A240368.P16977438584651628738

`A240364(A167499(n+3))`
-/

namespace A240368.P16977438584651628738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (A167499 (n + 3)).toNat

end

end A240368.P16977438584651628738

/-!
# A240369: Number of 6Xn 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of the elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240369, there is no canonical definition to state claims against.
-/

/-! ## A240369.P5311167717074697814

`A240364(A056115(n)+21)`
-/

namespace A240369.P5311167717074697814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (A056115 n + 21).toNat

end

end A240369.P5311167717074697814

/-!
# A240370: Positive integers n such that every element in the ring of integers modulo n can be written as the sum of two squares modulo n.

The programs for A240370, the canonical program `A240370.P6962223049637950773` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240370 has offset 1).

The definition of A240370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6554 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240370.P6962223049637950773

`eq[1, A072438(A008833(n+1))]+1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A240370

/-- `eq[1, A072438(A008833(n+1))]+1` -/
def P6962223049637950773.Spec : Prop :=
  ∀ n, (P6962223049637950773.a n : ℤ) = A240370 (n + 1)

theorem P6962223049637950773.correct : P6962223049637950773.Spec := by
  intro n
  simp only [A240370, Nat.add_sub_cancel]

end A240370

/-! ## A240370.P4528917337919341761

`lt[A072438(A008833(1+n)), 2]+1`
-/

namespace A240370.P4528917337919341761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A008833 (1 + n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A240370.P4528917337919341761

namespace A240370

/-- `lt[A072438(A008833(1+n)), 2]+1` -/
def P4528917337919341761.Spec : Prop :=
  ∀ n, (P4528917337919341761.a n : ℤ) = A240370 (n + 1)

end A240370

/-! ## A240370.P5586194726609694309

`eq[1, A065338(A057521(1+n))]+1`
-/

namespace A240370.P5586194726609694309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065338 (A057521 (1 + n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A240370.P5586194726609694309

namespace A240370

/-- `eq[1, A065338(A057521(1+n))]+1` -/
def P5586194726609694309.Spec : Prop :=
  ∀ n, (P5586194726609694309.a n : ℤ) = A240370 (n + 1)

end A240370

/-! ## A240370.P9698592615432425595

`record[A155918(1+n)]`
-/

namespace A240370.P9698592615432425595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155918 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240370.P9698592615432425595

namespace A240370

/-- `record[A155918(1+n)]` -/
def P9698592615432425595.Spec : Prop :=
  ∀ n, P9698592615432425595.a n = A240370 (n + 1)

end A240370

/-! ## A240370.P10007200493895049257

`lt[n, A155918(n+1)]+1`
-/

namespace A240370.P10007200493895049257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155918 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A240370.P10007200493895049257

namespace A240370

/-- `lt[n, A155918(n+1)]+1` -/
def P10007200493895049257.Spec : Prop :=
  ∀ n, (P10007200493895049257.a n : ℤ) = A240370 (n + 1)

end A240370

/-! ## A240370.P10079414727291324299

`lt[A072438(A000188(n+1)), 2]+1`
-/

namespace A240370.P10079414727291324299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A000188 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A240370.P10079414727291324299

namespace A240370

/-- `lt[A072438(A000188(n+1)), 2]+1` -/
def P10079414727291324299.Spec : Prop :=
  ∀ n, (P10079414727291324299.a n : ℤ) = A240370 (n + 1)

end A240370

/-! ## A240370.P483910561641603605

`eq[A035444(n)+A260728(n)², A260728(n)]`
-/

namespace A240370.P483910561641603605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 n + A260728 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A240370.P483910561641603605

namespace A240370

/-- `eq[A035444(n)+A260728(n)², A260728(n)]` -/
def P483910561641603605.Spec : Prop :=
  ∀ n, (P483910561641603605.a n : ℤ) = A240370 (n + 1)

end A240370

/-!
# A240371: Number of nX2 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240371, there is no canonical definition to state claims against.
-/

/-! ## A240371.P15932572750157058421

`A240376(∑[n+1]+2)`
-/

namespace A240371.P15932572750157058421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240371.P15932572750157058421

/-! ## A240371.P7150571825421019701

`record[A240376(A130270(n+1)+2)]`
-/

namespace A240371.P7150571825421019701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (A130270 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240371.P7150571825421019701

/-! ## A240371.P8745613744407204206

`record[A240376(Δ[A003453(n+5)])]`
-/

namespace A240371.P8745613744407204206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240371.P8745613744407204206

/-! ## A240371.P8928188844269085819

`record[C(A240376(n+3), A049385(n+1))]`
-/

namespace A240371.P8928188844269085819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A240376 (n + 3)).toNat (A049385 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240371.P8928188844269085819

/-!
# A240372: Number of nX3 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240372, there is no canonical definition to state claims against.
-/

/-! ## A240372.P8047704271432256939

`A240376(∑[n+2]+4)`
-/

namespace A240372.P8047704271432256939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240372.P8047704271432256939

/-! ## A240372.P1451573120353027738

`record[A240376(A130270(n+1)+3)]`
-/

namespace A240372.P1451573120353027738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (A130270 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240372.P1451573120353027738

/-!
# A240373: Number of nX4 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240373, there is no canonical definition to state claims against.
-/

/-! ## A240373.P13682819127232084537

`A240376(A374004(n+1))`
-/

namespace A240373.P13682819127232084537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (A374004 (n + 1)).toNat

end

end A240373.P13682819127232084537

/-! ## A240373.P3373521119852611658

`A240376(A141214(n+1))`
-/

namespace A240373.P3373521119852611658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (A141214 (n + 1)).toNat

end

end A240373.P3373521119852611658

/-!
# A240374: Number of nX5 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240374, there is no canonical definition to state claims against.
-/

/-! ## A240374.P7857324851599455820

`A240376(A374005(n+1))`
-/

namespace A240374.P7857324851599455820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (A374005 (n + 1)).toNat

end

end A240374.P7857324851599455820

/-!
# A240375: Number of n X 6 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240375, there is no canonical definition to state claims against.
-/

/-! ## A240375.P5256822444593460041

`A240376(A374007(n+1))`
-/

namespace A240375.P5256822444593460041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (A374007 (n + 1)).toNat

end

end A240375.P5256822444593460041

/-!
# A240377: Number of nX2 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240377, there is no canonical definition to state claims against.
-/

/-! ## A240377.P16583392666480383147

`A240381(∑[2+n])`
-/

namespace A240377.P16583392666480383147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240377.P16583392666480383147

/-! ## A240377.P11451633936744679563

`record[A240381(record[A338434(3*n+5)])]`
-/

namespace A240377.P11451633936744679563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338434 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240377.P11451633936744679563

/-! ## A240377.P10044000920888817173

`record[A133081(n+1)*A240381(n+1)]`
-/

namespace A240377.P10044000920888817173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133081 (n + 1) * A240381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240377.P10044000920888817173

/-!
# A240378: Number of nX3 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240378, there is no canonical definition to state claims against.
-/

/-! ## A240378.P15571823782520907596

`A240381(1+∑[n+3])`
-/

namespace A240378.P15571823782520907596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (1 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240378.P15571823782520907596

/-!
# A240379: Number of n X 4 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240379, there is no canonical definition to state claims against.
-/

/-! ## A240379.P4657610093833541633

`A240381(∑[n+4]+3)`
-/

namespace A240379.P4657610093833541633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A240379.P4657610093833541633

/-!
# A240380: Number of nX5 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240380, there is no canonical definition to state claims against.
-/

/-! ## A240380.P13007829428953850167

`A240381(6+∑[n+5])`
-/

namespace A240380.P13007829428953850167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (6 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240380.P13007829428953850167

/-!
# A240382: Number of 2 X n 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240382, the canonical program `A240382.P8893589732514793596` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240382 has offset 1).

The definition of A240382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240382.P8893589732514793596

`ogf((4+10x-10x^2-30x^3+6x^4+38x^5+2x^6-20x^7)/(1-12x^2+24x^4-31x^6+16x^8))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A240382

/-- `ogf((4+10x-10x^2-30x^3+6x^4+38x^5+2x^6-20x^7)/(1-12x^2+24x^4-31x^6+16x^8))` -/
def P8893589732514793596.Spec : Prop :=
  ∀ n, P8893589732514793596.a n = A240382 (n + 1)

theorem P8893589732514793596.correct : P8893589732514793596.Spec := by
  intro n
  simp only [A240382, Nat.add_sub_cancel]

end A240382

/-! ## A240382.P13461277353127417160

`A240381(2+∑[n+1])`
-/

namespace A240382.P13461277353127417160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (2 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240382.P13461277353127417160

namespace A240382

/-- `A240381(2+∑[n+1])` -/
def P13461277353127417160.Spec : Prop :=
  ∀ n, P13461277353127417160.a n = A240382 (n + 1)

end A240382

/-! ## A240382.P18262231981217612284

`record[A240381(A133263(ceil(xor(1, n)/2)))]`
-/

namespace A240382.P18262231981217612284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (A133263 ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240382.P18262231981217612284

namespace A240382

/-- `record[A240381(A133263(ceil(xor(1, n)/2)))]` -/
def P18262231981217612284.Spec : Prop :=
  ∀ n, P18262231981217612284.a n = A240382 (n + 1)

end A240382

/-! ## A240382.P8719022105506021732

`record[A240381(A133263(C(comp[∑[n]]-n, 2)-n))]`
-/

namespace A240382.P8719022105506021732
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (A133263 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240382.P8719022105506021732

namespace A240382

/-- `record[A240381(A133263(C(comp[∑[n]]-n, 2)-n))]` -/
def P8719022105506021732.Spec : Prop :=
  ∀ n, P8719022105506021732.a n = A240382 (n + 1)

end A240382

/-!
# A240383: Number of 3Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240383, there is no canonical definition to state claims against.
-/

/-! ## A240383.P10312488889954987749

`A240381(∑[n+2]+4)`
-/

namespace A240383.P10312488889954987749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240383.P10312488889954987749

/-!
# A240384: Number of 4Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240384, there is no canonical definition to state claims against.
-/

/-! ## A240384.P957303802277722466

`A240381(A141214(n)+7)`
-/

namespace A240384.P957303802277722466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (A141214 n + 7).toNat

end

end A240384.P957303802277722466

/-!
# A240385: Number of 5Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240385, there is no canonical definition to state claims against.
-/

/-! ## A240385.P10869548546009949382

`A240381(A167499(n+3))`
-/

namespace A240385.P10869548546009949382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (A167499 (n + 3)).toNat

end

end A240385.P10869548546009949382

/-!
# A240386: Number of 6Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240386, there is no canonical definition to state claims against.
-/

/-! ## A240386.P17028789023238217706

`A240381(∑[n+5]+16)`
-/

namespace A240386.P17028789023238217706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (∑ j ∈ Finset.range (n + 1), f1 j + 16)

end

end A240386.P17028789023238217706

/-!
# A240388: A sequence related to the Stern sequence s(n) (A002487), defined by w(n) = s(3n)/2.

The programs for A240388, the canonical program `A240388.P11621996562073166528` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240388 has offset 0).

The definition of A240388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240388.P11621996562073166528

`A002487(3*n)/2`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A240388

/-- `A002487(3*n)/2` -/
def P11621996562073166528.Spec : Prop :=
  ∀ n, P11621996562073166528.a n = (A240388 n : ℚ)

end A240388

/-! ## A240388.P5965587201188253772

`A324337(A003188(3*n))/2`
-/

namespace A240388.P5965587201188253772
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324337 (A003188 (3 * n)).toNat : ℚ) / 2

end

end A240388.P5965587201188253772

namespace A240388

/-- `A324337(A003188(3*n))/2` -/
def P5965587201188253772.Spec : Prop :=
  ∀ n, P5965587201188253772.a n = (A240388 n : ℚ)

end A240388

/-! ## A240388.P13429715151147220823

`A284556(A165351(n))`
-/

namespace A240388.P13429715151147220823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (A165351 n).toNat

end

end A240388.P13429715151147220823

namespace A240388

/-- `A284556(A165351(n))` -/
def P13429715151147220823.Spec : Prop :=
  ∀ n, P13429715151147220823.a n = A240388 n

end A240388

/-! ## A240388.P8320106906522351810

`A284556(3*n)`
-/

namespace A240388.P8320106906522351810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (3 * n)

end

end A240388.P8320106906522351810

namespace A240388

/-- `A284556(3*n)` -/
def P8320106906522351810.Spec : Prop :=
  ∀ n, P8320106906522351810.a n = A240388 n

end A240388

/-! ## A240388.P13222034819964404414

`A000360(record[abs(xor(1, n-2))]+n)`
-/

namespace A240388.P13222034819964404414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor 1 ((n : ℤ) - 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)).toNat

end

end A240388.P13222034819964404414

namespace A240388

/-- `A000360(record[abs(xor(1, n-2))]+n)` -/
def P13222034819964404414.Spec : Prop :=
  ∀ n, P13222034819964404414.a n = A240388 n

end A240388

/-! ## A240388.P11395883424954364768

`A401018(A047238(n+1))`
-/

namespace A240388.P11395883424954364768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401018 (A047238 (n + 1)).toNat

end

end A240388.P11395883424954364768

namespace A240388

/-- `A401018(A047238(n+1))` -/
def P11395883424954364768.Spec : Prop :=
  ∀ n, P11395883424954364768.a n = A240388 n

end A240388

/-! ## A240388.P6736482665705286237

`A001281(A002487(3*n))`
-/

namespace A240388.P6736482665705286237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A002487 (3 * n)).toNat

end

end A240388.P6736482665705286237

namespace A240388

/-- `A001281(A002487(3*n))` -/
def P6736482665705286237.Spec : Prop :=
  ∀ n, P6736482665705286237.a n = A240388 n

end A240388

/-! ## A240388.P10822774867920577521

`A004526(A002487(3*n)+1)`
-/

namespace A240388.P10822774867920577521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A002487 (3 * n) + 1).toNat

end

end A240388.P10822774867920577521

namespace A240388

/-- `A004526(A002487(3*n)+1)` -/
def P10822774867920577521.Spec : Prop :=
  ∀ n, P10822774867920577521.a n = A240388 n

end A240388

/-! ## A240388.P16696894263771194

`A213633(A002487(3*n)+1)`
-/

namespace A240388.P16696894263771194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213633 (A002487 (3 * n) + 1).toNat

end

end A240388.P16696894263771194

namespace A240388

/-- `A213633(A002487(3*n)+1)` -/
def P16696894263771194.Spec : Prop :=
  ∀ n, P16696894263771194.a n = A240388 n

end A240388

/-! ## A240388.P1404272162241418863

`A401018(6*n)`
-/

namespace A240388.P1404272162241418863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401018 (6 * n)

end

end A240388.P1404272162241418863

namespace A240388

/-- `A401018(6*n)` -/
def P1404272162241418863.Spec : Prop :=
  ∀ n, P1404272162241418863.a n = A240388 n

end A240388

/-! ## A240388.P7770530202843212849

`A283976(6*n)/2`
-/

namespace A240388.P7770530202843212849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283976 (6 * n) : ℚ) / 2

end

end A240388.P7770530202843212849

namespace A240388

/-- `A283976(6*n)/2` -/
def P7770530202843212849.Spec : Prop :=
  ∀ n, P7770530202843212849.a n = (A240388 n : ℚ)

end A240388

/-! ## A240388.P5933115567895736049

`A283977(6*n)/2`
-/

namespace A240388.P5933115567895736049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283977 (6 * n) : ℚ) / 2

end

end A240388.P5933115567895736049

namespace A240388

/-- `A283977(6*n)/2` -/
def P5933115567895736049.Spec : Prop :=
  ∀ n, P5933115567895736049.a n = (A240388 n : ℚ)

end A240388

/-! ## A240388.P10399225749684316896

`A000360(abs(1-6*n))`
-/

namespace A240388.P10399225749684316896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000360 |1 - (6 * n : ℤ)|.toNat

end

end A240388.P10399225749684316896

namespace A240388

/-- `A000360(abs(1-6*n))` -/
def P10399225749684316896.Spec : Prop :=
  ∀ n, P10399225749684316896.a n = A240388 n

end A240388

/-! ## A240388.P13932625180648995048

`A026741(A002487(A051724(A195312(2*n))))`
-/

namespace A240388.P13932625180648995048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A002487 (A051724 (A195312 (2 * n)).toNat).toNat).toNat

end

end A240388.P13932625180648995048

namespace A240388

/-- `A026741(A002487(A051724(A195312(2*n))))` -/
def P13932625180648995048.Spec : Prop :=
  ∀ n, P13932625180648995048.a n = A240388 n

end A240388

/-! ## A240388.P3404360567502355802

`A026741(A002487(A051176(A044102(n))))`
-/

namespace A240388.P3404360567502355802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A002487 (A051176 (A044102 n).toNat).toNat).toNat

end

end A240388.P3404360567502355802

namespace A240388

/-- `A026741(A002487(A051176(A044102(n))))` -/
def P3404360567502355802.Spec : Prop :=
  ∀ n, P3404360567502355802.a n = A240388 n

end A240388

/-!
# A240389: Number of n X 2 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240389, the canonical program `A240389.P11173661646693944606` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240389 has offset 1).

The definition of A240389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 201 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240389.P11173661646693944606

`ogf((1+5x-10x^3+13x^5+x^6-8x^7)/(1-12x^2+24x^4-31x^6+16x^8))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A240389

/-- `ogf((1+5x-10x^3+13x^5+x^6-8x^7)/(1-12x^2+24x^4-31x^6+16x^8))` -/
def P11173661646693944606.Spec : Prop :=
  ∀ n, P11173661646693944606.a n = A240389 (n + 1)

theorem P11173661646693944606.correct : P11173661646693944606.Spec := by
  intro n
  simp only [A240389, Nat.add_sub_cancel]

end A240389

/-! ## A240389.P16104812303118888660

`A240394(∑[n+2])`
-/

namespace A240389.P16104812303118888660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240389.P16104812303118888660

namespace A240389

/-- `A240394(∑[n+2])` -/
def P16104812303118888660.Spec : Prop :=
  ∀ n, P16104812303118888660.a n = A240389 (n + 1)

end A240389

/-! ## A240389.P10671748581754739295

`record[gcd(A008290(n), A240394(n+1))]`
-/

namespace A240389.P10671748581754739295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008290 n) (A240394 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240389.P10671748581754739295

namespace A240389

/-- `record[gcd(A008290(n), A240394(n+1))]` -/
def P10671748581754739295.Spec : Prop :=
  ∀ n, (P10671748581754739295.a n : ℤ) = A240389 (n + 1)

end A240389

/-! ## A240389.P10836751602077894391

`record[and(A167374(n), A240394(n+1))]`
-/

namespace A240389.P10836751602077894391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167374 n) (A240394 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240389.P10836751602077894391

namespace A240389

/-- `record[and(A167374(n), A240394(n+1))]` -/
def P10836751602077894391.Spec : Prop :=
  ∀ n, P10836751602077894391.a n = A240389 (n + 1)

end A240389

/-! ## A240389.P3281643861080364568

`record[A240394(n+2)/A286331(n+3)]`
-/

namespace A240389.P3281643861080364568
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240394 (n + 2) : ℚ) / (A286331 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240389.P3281643861080364568

namespace A240389

/-- `record[A240394(n+2)/A286331(n+3)]` -/
def P3281643861080364568.Spec : Prop :=
  ∀ n, P3281643861080364568.a n = (A240389 (n + 1) : ℚ)

end A240389

/-!
# A240390: Number of nX3 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240390, there is no canonical definition to state claims against.
-/

/-! ## A240390.P12314915137516942985

`A240394(∑[n+3]+1)`
-/

namespace A240390.P12314915137516942985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240390.P12314915137516942985

/-! ## A240390.P8172429113510048653

`record[A240394(A237519(n+1))]`
-/

namespace A240390.P8172429113510048653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (A237519 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240390.P8172429113510048653

/-! ## A240390.P8205514933982305032

`record[A167374(n+2)*A240394(n+1)]`
-/

namespace A240390.P8205514933982305032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 (n + 2) * A240394 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240390.P8205514933982305032

/-! ## A240390.P13933946309099008236

`record[A240394(n+1)/A138464(n+4)]`
-/

namespace A240390.P13933946309099008236
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240394 (n + 1) : ℚ) / (A138464 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240390.P13933946309099008236

/-!
# A240391: Number of nX4 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240391, there is no canonical definition to state claims against.
-/

/-! ## A240391.P2743531336213101730

`A240394(∑[n+4]+3)`
-/

namespace A240391.P2743531336213101730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A240391.P2743531336213101730

/-!
# A240392: Number of nX5 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240392, there is no canonical definition to state claims against.
-/

/-! ## A240392.P11973490703487545152

`A240394(∑[n+5]+6)`
-/

namespace A240392.P11973490703487545152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A240392.P11973490703487545152

/-!
# A240393: Number of nX6 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240393, there is no canonical definition to state claims against.
-/

/-! ## A240393.P10194505635760146677

`A240394(A052905(n+3))`
-/

namespace A240393.P10194505635760146677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (A052905 (n + 3)).toNat

end

end A240393.P10194505635760146677

/-!
# A240394: T(n,k)=Number of nXk 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240394, there is no canonical definition to state claims against.
-/

/-! ## A240394.P5486154386290576514

`A194914(A008949(n)*A013609(n))`
-/

namespace A240394.P5486154386290576514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194914 (A008949 n * A013609 n).toNat

end

end A240394.P5486154386290576514

/-!
# A240395: Number of 3 X n 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240395, the canonical program `A240395.P12655524787874108939` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240395 has offset 1).

The definition of A240395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240395.P12655524787874108939

`ogf((2+2x-8x^2+2x^3+18x^4-26x^5+29x^6-29x^7+20x^8-6x^9)/(1-5x+10x^2-10x^3+5x^4-x^5))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A240395

/-- `ogf((2+2x-8x^2+2x^3+18x^4-26x^5+29x^6-29x^7+20x^8-6x^9)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P12655524787874108939.Spec : Prop :=
  ∀ n, P12655524787874108939.a n = A240395 (n + 1)

theorem P12655524787874108939.correct : P12655524787874108939.Spec := by
  intro n
  simp only [A240395, Nat.add_sub_cancel]

end A240395

/-! ## A240395.P14013148239092971987

`A240394(∑[n+2]+4)`
-/

namespace A240395.P14013148239092971987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A240395.P14013148239092971987

namespace A240395

/-- `A240394(∑[n+2]+4)` -/
def P14013148239092971987.Spec : Prop :=
  ∀ n, P14013148239092971987.a n = A240395 (n + 1)

end A240395

/-! ## A240395.P14823168444869606980

`record[A240394(A000124(n)+2)]`
-/

namespace A240395.P14823168444869606980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (A000124 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240395.P14823168444869606980

namespace A240395

/-- `record[A240394(A000124(n)+2)]` -/
def P14823168444869606980.Spec : Prop :=
  ∀ n, P14823168444869606980.a n = A240395 (n + 1)

end A240395

/-! ## A240395.P13099302751155540051

`record[A240394(A000217(n)+3)]`
-/

namespace A240395.P13099302751155540051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (A000217 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240395.P13099302751155540051

namespace A240395

/-- `record[A240394(A000217(n)+3)]` -/
def P13099302751155540051.Spec : Prop :=
  ∀ n, P13099302751155540051.a n = A240395 (n + 1)

end A240395

/-!
# A240396: Number of 4Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240396, there is no canonical definition to state claims against.
-/

/-! ## A240396.P12913200019673079153

`A240394(A141214(n)+7)`
-/

namespace A240396.P12913200019673079153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (A141214 n + 7).toNat

end

end A240396.P12913200019673079153

/-!
# A240397: Number of 5 X n 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240397, there is no canonical definition to state claims against.
-/

/-! ## A240397.P10233779916734359804

`A240394(∑[n+4]+11)`
-/

namespace A240397.P10233779916734359804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A240397.P10233779916734359804

/-!
# A240398: Number of 6Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240398, there is no canonical definition to state claims against.
-/

/-! ## A240398.P2300635466245279017

`A240394(A056115(n)+21)`
-/

namespace A240398.P2300635466245279017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (A056115 n + 21).toNat

end

end A240398.P2300635466245279017

/-!
# A240399: Number of 7Xn 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of the elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240399, there is no canonical definition to state claims against.
-/

/-! ## A240399.P12698365168697504775

`A240394(A167487(n+5))`
-/

namespace A240399.P12698365168697504775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (A167487 (n + 5)).toNat

end

end A240399.P12698365168697504775

