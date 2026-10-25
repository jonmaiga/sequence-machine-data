import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C025

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

/-! ## A240300.P10571112374130752559

`A240295(A167499(n+4)+1)`
-/

namespace A240300.P10571112374130752559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (A167499 (n + 4) + 1).toNat

end

end A240300.P10571112374130752559

/-! ## A240300.P3487797144645366016

`A240295(A167614(n+4)+3)`
-/

namespace A240300.P3487797144645366016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (A167614 (n + 4) + 3).toNat

end

end A240300.P3487797144645366016

/-! ## A240300.P1409120066169204128

`A240295(A000124(n+5)+5)`
-/

namespace A240300.P1409120066169204128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (A000124 (n + 5) + 5).toNat

end

end A240300.P1409120066169204128

/-! ## A240300.P6097232400935197074

`A240295(A046691(n+3)+10)`
-/

namespace A240300.P6097232400935197074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240295 (A046691 (n + 3) + 10).toNat

end

end A240300.P6097232400935197074

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

/-! ## A240312.P1199341430472588731

`A240313(n)+A008683(A068486(n+1))*A240314(n)`
-/

namespace A240312.P1199341430472588731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240313 n + A008683 (A068486 (n + 1)).toNat * A240314 n

end

end A240312.P1199341430472588731

/-! ## A240312.P4845785635695394805

`A000041(n)-(A240314(n)+A240310(n))`
-/

namespace A240312.P4845785635695394805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - (A240314 n + A240310 n)

end

end A240312.P4845785635695394805

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

/-! ## A240313.P2706058520119461360

`A240312(n)-(A025439(n)-A240314(n))`
-/

namespace A240313.P2706058520119461360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240312 n - (A025439 n - A240314 n)

end

end A240313.P2706058520119461360

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

The programs for A240316, there is no canonical definition to state claims against.
-/

/-! ## A240316.P469823255469404624

`A240321(∑[n+1]+2)`
-/

namespace A240316.P469823255469404624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240316.P469823255469404624

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

/-! ## A240316.P16310700075165570597

`record[root(A240321(n+1), A067059(n))]`
-/

namespace A240316.P16310700075165570597
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A240321 (n + 1) : ℝ) ^ (1 / (A067059 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240316.P16310700075165570597

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

/-! ## A240317.P6184461486767958629

`lcm(2, A240321(A167614(n+1)))`
-/

namespace A240317.P6184461486767958629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A240321 (A167614 (n + 1)).toNat)

end

end A240317.P6184461486767958629

/-! ## A240317.P10224388934363366836

`A240321(A167614(n+1))+A011736(n)`
-/

namespace A240317.P10224388934363366836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (A167614 (n + 1)).toNat + A011736 n

end

end A240317.P10224388934363366836

/-! ## A240317.P1882427754348602244

`A240321(A167614(n+1))+A025469(n)`
-/

namespace A240317.P1882427754348602244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (A167614 (n + 1)).toNat + A025469 n

end

end A240317.P1882427754348602244

/-! ## A240317.P12910894805876691953

`A240321(A167614(n+1))+A061858(n)`
-/

namespace A240317.P12910894805876691953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (A167614 (n + 1)).toNat + A061858 n

end

end A240317.P12910894805876691953

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

/-! ## A240318.P1676701351882374366

`A240321(A141214(n)+7)`
-/

namespace A240318.P1676701351882374366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (A141214 n + 7).toNat

end

end A240318.P1676701351882374366

/-! ## A240318.P5003737580779709136

`A240321(A052905(n)+9)`
-/

namespace A240318.P5003737580779709136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (A052905 n + 9).toNat

end

end A240318.P5003737580779709136

/-! ## A240318.P16791550493194853830

`A240321(A055999(n)+10)`
-/

namespace A240318.P16791550493194853830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (A055999 n + 10).toNat

end

end A240318.P16791550493194853830

/-! ## A240318.P8634795898547272254

`A240321(eq[5, A066657(n)])`
-/

namespace A240318.P8634795898547272254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240318.P8634795898547272254

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

/-! ## A240319.P6114709790350580797

`A240321(A155212(n)+13)`
-/

namespace A240319.P6114709790350580797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (A155212 n + 13).toNat

end

end A240319.P6114709790350580797

/-! ## A240319.P13632622212621139808

`A240321(A056000(n)+15)`
-/

namespace A240319.P13632622212621139808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (A056000 n + 15).toNat

end

end A240319.P13632622212621139808

/-! ## A240319.P11532315072729998851

`A240321(eq[7, A066657(n)])`
-/

namespace A240319.P11532315072729998851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240319.P11532315072729998851

/-! ## A240319.P1059381742913559173

`A240321(A167614(n+3)+2)`
-/

namespace A240319.P1059381742913559173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (A167614 (n + 3) + 2).toNat

end

end A240319.P1059381742913559173

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

/-! ## A240320.P10438649935900952867

`A240321(A056115(n)+21)`
-/

namespace A240320.P10438649935900952867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (A056115 n + 21).toNat

end

end A240320.P10438649935900952867

/-! ## A240320.P7607586961733966604

`A240321(eq[7, A131818(n+1)])`
-/

namespace A240320.P7607586961733966604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240320.P7607586961733966604

/-! ## A240320.P613194633244009488

`A240321(A056119(n)+16)`
-/

namespace A240320.P613194633244009488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (A056119 n + 16).toNat

end

end A240320.P613194633244009488

/-! ## A240320.P17674781290586983815

`A240321(eq[3, A219347(n)])`
-/

namespace A240320.P17674781290586983815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240321 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240320.P17674781290586983815

/-!
# A240322: Number of n X 2 0..3 arrays with no element equal to zero plus the sum of elements to its left or zero plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240322, there is no canonical definition to state claims against.
-/

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

/-! ## A240322.P17186172108094283501

`record[gcd(A240327(n+1), A284455(n+1))]`
-/

namespace A240322.P17186172108094283501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A240327 (n + 1)) (A284455 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240322.P17186172108094283501

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

/-! ## A240323.P1636595393110124077

`A240327(A167614(n+1))+A025442(n)`
-/

namespace A240323.P1636595393110124077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240327 (A167614 (n + 1)).toNat + A025442 n

end

end A240323.P1636595393110124077

/-! ## A240323.P15792157000984385660

`A240327(A167614(n+1))+A025469(n)`
-/

namespace A240323.P15792157000984385660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240327 (A167614 (n + 1)).toNat + A025469 n

end

end A240323.P15792157000984385660

/-! ## A240323.P15278758973481033378

`A240327(A167614(n+1))+A054900(n)`
-/

namespace A240323.P15278758973481033378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240327 (A167614 (n + 1)).toNat + A054900 n

end

end A240323.P15278758973481033378

/-! ## A240323.P15053464435977435122

`A240327(A167614(n+1))+A184945(n)`
-/

namespace A240323.P15053464435977435122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240327 (A167614 (n + 1)).toNat + A184945 n

end

end A240323.P15053464435977435122

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

/-! ## A240324.P16828915718268923649

`A240327(A141214(n)+7)`
-/

namespace A240324.P16828915718268923649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240327 (A141214 n + 7).toNat

end

end A240324.P16828915718268923649

/-! ## A240324.P10387202802946081663

`A240327(A052905(n)+9)`
-/

namespace A240324.P10387202802946081663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240327 (A052905 n + 9).toNat

end

end A240324.P10387202802946081663

/-! ## A240324.P4256763526386787958

`A240327(A055999(n)+10)`
-/

namespace A240324.P4256763526386787958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240327 (A055999 n + 10).toNat

end

end A240324.P4256763526386787958

/-! ## A240324.P14984751932878058227

`A240327(eq[5, A066657(n)])`
-/

namespace A240324.P14984751932878058227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240324.P14984751932878058227

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

/-! ## A240325.P1958066249727831433

`A240327(A167499(n+3))`
-/

namespace A240325.P1958066249727831433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240327 (A167499 (n + 3)).toNat

end

end A240325.P1958066249727831433

/-! ## A240325.P2976519040094519789

`A240327(A077169(n+5))`
-/

namespace A240325.P2976519040094519789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240327 (A077169 (n + 5)).toNat

end

end A240325.P2976519040094519789

/-! ## A240325.P11995845696870394831

`A240327(A155212(n)+13)`
-/

namespace A240325.P11995845696870394831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240327 (A155212 n + 13).toNat

end

end A240325.P11995845696870394831

/-! ## A240325.P1293954115635627637

`A240327(A056000(n)+15)`
-/

namespace A240325.P1293954115635627637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240327 (A056000 n + 15).toNat

end

end A240325.P1293954115635627637

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

/-! ## A240326.P3454150173329388397

`A240327(A056115(n)+21)`
-/

namespace A240326.P3454150173329388397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240327 (A056115 n + 21).toNat

end

end A240326.P3454150173329388397

/-! ## A240326.P12460185988906279511

`A240327(A167499(n+4)+1)`
-/

namespace A240326.P12460185988906279511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240327 (A167499 (n + 4) + 1).toNat

end

end A240326.P12460185988906279511

/-! ## A240326.P6847522047045213910

`A240327(A000124(n+5)+5)`
-/

namespace A240326.P6847522047045213910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240327 (A000124 (n + 5) + 5).toNat

end

end A240326.P6847522047045213910

/-! ## A240326.P4535510556436257334

`A240327(eq[7, A131818(n+1)])`
-/

namespace A240326.P4535510556436257334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240327 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240326.P4535510556436257334

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

/-! ## A240329.P16623028404269074529

`Δ[A010054(A193584(n+2)+A000217(n))]`
-/

namespace A240329.P16623028404269074529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A193584 (n + 2) + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A240329.P16623028404269074529

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
# A240332: Inverse of 49th cyclotomic polynomial.

The programs for A240332, the canonical program `A240332.P2811997264391864732` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240332 has offset 0).

The definition of A240332 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240332.P2811997264391864732

`∑[A014016(n)]*A014016(A003415(n))`

The canonical program, it is in `Seq.B006.C001`.
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

The programs for A240333, there is no canonical definition to state claims against.
-/

/-! ## A240333.P11097119571086753178

`A240338(∑[n+1]+2)`
-/

namespace A240333.P11097119571086753178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240333.P11097119571086753178

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

/-! ## A240333.P2721800415022360634

`record[A240338(n+3)/A107873(n)]`
-/

namespace A240333.P2721800415022360634
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240338 (n + 3) : ℚ) / (A107873 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240333.P2721800415022360634

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

/-! ## A240334.P12249196606882193168

`A240338(A167614(n+1))+A025439(n)`
-/

namespace A240334.P12249196606882193168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (A167614 (n + 1)).toNat + A025439 n

end

end A240334.P12249196606882193168

/-! ## A240334.P10626827960922616900

`A240338(A167614(n+1))+A025442(n)`
-/

namespace A240334.P10626827960922616900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (A167614 (n + 1)).toNat + A025442 n

end

end A240334.P10626827960922616900

/-! ## A240334.P12208237609531487017

`A240338(A167614(n+1))+A067157(n)`
-/

namespace A240334.P12208237609531487017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (A167614 (n + 1)).toNat + A067157 (n + 10)

end

end A240334.P12208237609531487017

/-! ## A240334.P15392116081612731761

`A240338(A167614(n+1))+A178798(n)`
-/

namespace A240334.P15392116081612731761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (A167614 (n + 1)).toNat + A178798 n

end

end A240334.P15392116081612731761

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

/-! ## A240335.P8384988830780677585

`A240338(A141214(n)+7)`
-/

namespace A240335.P8384988830780677585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (A141214 n + 7).toNat

end

end A240335.P8384988830780677585

/-! ## A240335.P6384412006866948715

`A240338(A052905(n)+9)`
-/

namespace A240335.P6384412006866948715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (A052905 n + 9).toNat

end

end A240335.P6384412006866948715

/-! ## A240335.P12654246532905016356

`A240338(A055999(n)+10)`
-/

namespace A240335.P12654246532905016356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (A055999 n + 10).toNat

end

end A240335.P12654246532905016356

/-! ## A240335.P8480586391353302280

`A240338(eq[5, A066657(n)])`
-/

namespace A240335.P8480586391353302280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240335.P8480586391353302280

/-!
# A240336: Number of nX5 0..3 arrays with no element equal to two plus the sum of elements to its left or two plus the sum of elements above it or one plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240336, there is no canonical definition to state claims against.
-/

/-! ## A240336.P14488102759304879180

`A240338(A374005(n+1))`
-/

namespace A240336.P14488102759304879180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (A374005 (n + 1)).toNat

end

end A240336.P14488102759304879180

/-! ## A240336.P15076515098528643581

`A240338(A077169(n+5))`
-/

namespace A240336.P15076515098528643581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (A077169 (n + 5)).toNat

end

end A240336.P15076515098528643581

/-! ## A240336.P9668394695813851976

`A240338(A155212(n)+13)`
-/

namespace A240336.P9668394695813851976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (A155212 n + 13).toNat

end

end A240336.P9668394695813851976

/-! ## A240336.P12203830324647661306

`A240338(A056000(n)+15)`
-/

namespace A240336.P12203830324647661306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (A056000 n + 15).toNat

end

end A240336.P12203830324647661306

/-! ## A240336.P526649282576168541

`A240338(eq[7, A066657(n)])`
-/

namespace A240336.P526649282576168541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240336.P526649282576168541

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

/-! ## A240337.P8277120576159528786

`A240338(A166136(n+4))`
-/

namespace A240337.P8277120576159528786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (A166136 (n + 4)).toNat

end

end A240337.P8277120576159528786

/-! ## A240337.P9687686364681596944

`A240338(A056115(n)+21)`
-/

namespace A240337.P9687686364681596944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (A056115 n + 21).toNat

end

end A240337.P9687686364681596944

/-! ## A240337.P14632938503825048744

`A240338(Δ[A264443(n)]+10)`
-/

namespace A240337.P14632938503825048744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (f1 (n + 1) - f1 n + 10).toNat

end

end A240337.P14632938503825048744

/-! ## A240337.P5838300675583135

`A240338(A167499(n+4)+1)`
-/

namespace A240337.P5838300675583135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240338 (A167499 (n + 4) + 1).toNat

end

end A240337.P5838300675583135

/-!
# A240342: Number of n X 2 0..3 arrays with no element equal to one plus the sum of elements to its left or one plus the sum of elements above it or three plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240342, the canonical program `A240342.P606162789370024762` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240342 has offset 1).

The definition of A240342 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240342.P606162789370024762

`6*a(n-1)-7*a(n-2)-4*a(n-3)+8*a(n-4)` with `a(0)=4, a(1)=18, a(2)=78, a(3)=334`

The canonical program, it is in `Seq.B000.C030`.
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

/-! ## A240342.P9713480714526419342

`lcm(2, A240347(A000096(n+1)))`
-/

namespace A240342.P9713480714526419342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A240347 (A000096 (n + 1)).toNat)

end

end A240342.P9713480714526419342

namespace A240342

/-- `lcm(2, A240347(A000096(n+1)))` -/
def P9713480714526419342.Spec : Prop :=
  ∀ n, (P9713480714526419342.a n : ℤ) = A240342 (n + 1)

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

/-! ## A240342.P7050901561761429765

`A240347(A000096(n+1))%A017645(n)`
-/

namespace A240342.P7050901561761429765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240347 (A000096 (n + 1)).toNat) (A017645 n)

end

end A240342.P7050901561761429765

namespace A240342

/-- `A240347(A000096(n+1))%A017645(n)` -/
def P7050901561761429765.Spec : Prop :=
  ∀ n, P7050901561761429765.a n = A240342 (n + 1)

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

/-! ## A240343.P7108973000358969165

`lcm(2, A240347(A167614(n+1)))`
-/

namespace A240343.P7108973000358969165
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A240347 (A167614 (n + 1)).toNat)

end

end A240343.P7108973000358969165

/-! ## A240343.P17963079709725649128

`A240347(A167614(n+1))+A025466(n)`
-/

namespace A240343.P17963079709725649128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (A167614 (n + 1)).toNat + A025466 n

end

end A240343.P17963079709725649128

/-! ## A240343.P9988855988992588829

`A240347(A167614(n+1))+A025469(n)`
-/

namespace A240343.P9988855988992588829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (A167614 (n + 1)).toNat + A025469 n

end

end A240343.P9988855988992588829

/-! ## A240343.P11009745772770184668

`A240347(A167614(n+1))+A066035(n)`
-/

namespace A240343.P11009745772770184668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (A167614 (n + 1)).toNat + A066035 n

end

end A240343.P11009745772770184668

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

/-! ## A240344.P17696082106866262680

`A240347(A052905(n)+9)`
-/

namespace A240344.P17696082106866262680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (A052905 n + 9).toNat

end

end A240344.P17696082106866262680

/-! ## A240344.P5653276196235342455

`A240347(A055999(n)+10)`
-/

namespace A240344.P5653276196235342455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (A055999 n + 10).toNat

end

end A240344.P5653276196235342455

/-! ## A240344.P7029350475114221224

`A240347(eq[5, A066657(n)])`
-/

namespace A240344.P7029350475114221224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240344.P7029350475114221224

/-! ## A240344.P16803988667447903413

`A240347(A167614(n+2)+1)`
-/

namespace A240344.P16803988667447903413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (A167614 (n + 2) + 1).toNat

end

end A240344.P16803988667447903413

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

/-! ## A240345.P836325005738848722

`A240347(A155212(n)+13)`
-/

namespace A240345.P836325005738848722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (A155212 n + 13).toNat

end

end A240345.P836325005738848722

/-! ## A240345.P6955184532729908294

`A240347(A056000(n)+15)`
-/

namespace A240345.P6955184532729908294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (A056000 n + 15).toNat

end

end A240345.P6955184532729908294

/-! ## A240345.P10749497801297273539

`A240347(eq[7, A066657(n)])`
-/

namespace A240345.P10749497801297273539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240345.P10749497801297273539

/-! ## A240345.P13677545856102107236

`A240347(A167614(n+3)+2)`
-/

namespace A240345.P13677545856102107236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (A167614 (n + 3) + 2).toNat

end

end A240345.P13677545856102107236

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

/-! ## A240346.P4004718239398605610

`A240347(A056115(n)+21)`
-/

namespace A240346.P4004718239398605610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (A056115 n + 21).toNat

end

end A240346.P4004718239398605610

/-! ## A240346.P4409098862583356741

`A240347(A167614(n+4)+3)`
-/

namespace A240346.P4409098862583356741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (A167614 (n + 4) + 3).toNat

end

end A240346.P4409098862583356741

/-! ## A240346.P11010048755450103994

`A240347(eq[7, A131818(n+1)])`
-/

namespace A240346.P11010048755450103994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240347 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240346.P11010048755450103994

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

/-! ## A240347.P8700270999744161950

`2*A194974(A264128(n+1))`
-/

namespace A240347.P8700270999744161950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A194974 (A264128 (n + 1)).toNat

end

end A240347.P8700270999744161950

/-! ## A240347.P10820339723487505292

`A282316(n+1)+A145395(A174690(n))`
-/

namespace A240347.P10820339723487505292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282316 (n + 1) + A145395 (A174690 n).toNat

end

end A240347.P10820339723487505292

/-! ## A240347.P10772563522673527475

`A305104(A131060(n))+A102564(4*A301323(n+1))`
-/

namespace A240347.P10772563522673527475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305104 (A131060 n).toNat + A102564 (4 * A301323 (n + 1)).toNat

end

end A240347.P10772563522673527475

/-!
# A240348: Inverse of 53rd cyclotomic polynomial.

The programs for A240348, the canonical program `A240348.P10324360403096197541` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240348 has offset 0).

The definition of A240348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240348.P10324360403096197541

`round((-2)^-(n%53))`

The canonical program, it is in `Seq.B000.C030`.
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

/-! ## A240349.P10829105227982827059

`A240328(lt[A275504(n+1), A273564(3*(n+1))])`
-/

namespace A240349.P10829105227982827059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275504 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273564 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A240349.P10829105227982827059

/-!
# A240350: Inverse of 61st cyclotomic polynomial.

The programs for A240350, there is no canonical definition to state claims against.
-/

/-! ## A240350.P10244383942477228827

`A240328(lt[A344618(n), A136702(2*n+3)])`
-/

namespace A240350.P10244383942477228827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344618 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136702 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240328 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A240350.P10244383942477228827

/-!
# A240351: Inverse of 64th cyclotomic polynomial.

The programs for A240351, the canonical program `A240351.P973440033418318766` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240351 has offset 0).

The definition of A240351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240351.P973440033418318766

`A056594(lcm(16, n)/16)`

The canonical program, it is in `Seq.B001.C007`.
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

/-! ## A240352.P11518241823804665518

`A016030(A040002(n)*A235700(3*n+5))`
-/

namespace A240352.P11518241823804665518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016030 (A040002 n * A235700 (3 * n + 5)).toNat

end

end A240352.P11518241823804665518

/-!
# A240353: Inverse of 68th cyclotomic polynomial.

The programs for A240353, there is no canonical definition to state claims against.
-/

/-! ## A240353.P18059484953993133542

`A014043(A025480(n))%A010127(n)`
-/

namespace A240353.P18059484953993133542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014043 (A025480 n).toNat) (A010127 n)

end

end A240353.P18059484953993133542

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

The programs for A240355, the canonical program `A240355.P8056118770245274033` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240355 has offset 0).

The definition of A240355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240355.P8056118770245274033

`A014045(Δ[ceil(C(n, 2)/2)])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A240355

/-- `A014045(Δ[ceil(C(n, 2)/2)])` -/
def P8056118770245274033.Spec : Prop :=
  ∀ n, P8056118770245274033.a n = A240355 n

theorem P8056118770245274033.correct : P8056118770245274033.Spec := by
  intro n
  simp only [A240355]

end A240355

/-!
# A240356: Inverse of 73rd cyclotomic polynomial.

The programs for A240356, the canonical program `A240356.P203130154037057721` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240356 has offset 0).

The definition of A240356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240356.P203130154037057721

`A121373(A001462(n+1)*A062028(3*n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A240356

/-- `A121373(A001462(n+1)*A062028(3*n))` -/
def P203130154037057721.Spec : Prop :=
  ∀ n, P203130154037057721.a n = A240356 n

theorem P203130154037057721.correct : P203130154037057721.Spec := by
  intro n
  simp only [A240356]

end A240356

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

The programs for A240359, there is no canonical definition to state claims against.
-/

/-! ## A240359.P17680562176638696942

`A240364(∑[n+2])`
-/

namespace A240359.P17680562176638696942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240359.P17680562176638696942

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

/-! ## A240359.P17969860771534769365

`A240364(A000096(n+1))%A080132(n)`
-/

namespace A240359.P17969860771534769365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240364 (A000096 (n + 1)).toNat) (A080132 n)

end

end A240359.P17969860771534769365

/-! ## A240359.P3824753438007586963

`A240364(A132315(n+2))%A002446(n+1)`
-/

namespace A240359.P3824753438007586963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240364 (A132315 (n + 2)).toNat) (A002446 (n + 1))

end

end A240359.P3824753438007586963

/-!
# A240360: Number of nX3 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240360, there is no canonical definition to state claims against.
-/

/-! ## A240360.P708191935544087414

`A240364(∑[n+3]+1)`
-/

namespace A240360.P708191935544087414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240360.P708191935544087414

/-! ## A240360.P9105378630587784623

`A240364(A034856(n+2))+A167265(n+1)`
-/

namespace A240360.P9105378630587784623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (A034856 (n + 2)).toNat + A167265 (n + 1)

end

end A240360.P9105378630587784623

/-! ## A240360.P2935330209867816335

`lcm(A177121(n+1), A240364(A034856(n+2)))`
-/

namespace A240360.P2935330209867816335
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A177121 (n + 1)) (A240364 (A034856 (n + 2)).toNat)

end

end A240360.P2935330209867816335

/-! ## A240360.P15475075982180537178

`or(A178921(n+1), A240364(A034856(n+2)))`
-/

namespace A240360.P15475075982180537178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A178921 (n + 1)) (A240364 (A034856 (n + 2)).toNat)

end

end A240360.P15475075982180537178

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

/-! ## A240361.P9193394603821983402

`A240364(A141214(n+1))+A225413(n)`
-/

namespace A240361.P9193394603821983402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (A141214 (n + 1)).toNat + A225413 n

end

end A240361.P9193394603821983402

/-! ## A240361.P18248905236152341390

`A240364(A141214(n+1))+A080224(n+1)`
-/

namespace A240361.P18248905236152341390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (A141214 (n + 1)).toNat + A080224 (n + 1)

end

end A240361.P18248905236152341390

/-! ## A240361.P16224262501133329785

`A337165(3*n+4)+A240364(A141214(n+1))`
-/

namespace A240361.P16224262501133329785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (3 * n + 4) + A240364 (A141214 (n + 1)).toNat

end

end A240361.P16224262501133329785

/-! ## A240361.P8186821551426509650

`A240364(A141214(n+1))/(1-A326458(n))^n`
-/

namespace A240361.P8186821551426509650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240364 (A141214 (n + 1)).toNat : ℚ) / ((1 - A326458 n) ^ n : ℚ)

end

end A240361.P8186821551426509650

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

/-! ## A240362.P2375435082222050945

`A240364(Δ[A023545(n+1)])+A033111(2*(n+1))`
-/

namespace A240362.P2375435082222050945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (f1 (n + 1) - f1 n).toNat + A033111 (2 * (n + 1))

end

end A240362.P2375435082222050945

/-! ## A240362.P16713264426459742989

`A240364(Δ[A023545(n+1)])%A124852(3*(n+1))`
-/

namespace A240362.P16713264426459742989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240364 (f1 (n + 1) - f1 n).toNat) (A124852 (3 * (n + 1)))

end

end A240362.P16713264426459742989

/-!
# A240363: Number of nX6 0..3 arrays with no element equal to one plus the sum of elements to its left or two plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240363, there is no canonical definition to state claims against.
-/

/-! ## A240363.P14555361127961569156

`A240364(A052905(n+3))`
-/

namespace A240363.P14555361127961569156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (A052905 (n + 3)).toNat

end

end A240363.P14555361127961569156

/-! ## A240363.P2847610778319040354

`A240364(A056119(n)+16)`
-/

namespace A240363.P2847610778319040354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (A056119 n + 16).toNat

end

end A240363.P2847610778319040354

/-! ## A240363.P17756387050940537970

`A240364(eq[3, A219347(n)])`
-/

namespace A240363.P17756387050940537970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240363.P17756387050940537970

/-! ## A240363.P16717104605034462571

`A240364(eq[3, A274661(n)])`
-/

namespace A240363.P16717104605034462571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240363.P16717104605034462571

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

/-! ## A240365.P11772368027750090371

`A240364(∑[n+1]+2)`
-/

namespace A240365.P11772368027750090371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240365.P11772368027750090371

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

/-! ## A240366.P8213720398617912319

`or(char[1], A240364(A167614(n+1)))`
-/

namespace A240366.P8213720398617912319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A240364 (A167614 (n + 1)).toNat)

end

end A240366.P8213720398617912319

/-! ## A240366.P5145728623616060357

`A240364(A167614(n+1))+A014083(n)`
-/

namespace A240366.P5145728623616060357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (A167614 (n + 1)).toNat + A014083 n

end

end A240366.P5145728623616060357

/-! ## A240366.P15506069704148048044

`A240364(A167614(n+1))+A185044(n)`
-/

namespace A240366.P15506069704148048044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (A167614 (n + 1)).toNat + A185044 n

end

end A240366.P15506069704148048044

/-! ## A240366.P7052288573559583903

`A240364(A167614(n+1))+A225413(n)`
-/

namespace A240366.P7052288573559583903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (A167614 (n + 1)).toNat + A225413 n

end

end A240366.P7052288573559583903

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

/-! ## A240367.P17219654785762348534

`A240364(A052905(n)+9)`
-/

namespace A240367.P17219654785762348534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (A052905 n + 9).toNat

end

end A240367.P17219654785762348534

/-! ## A240367.P2817619750032710466

`A240364(A055999(n)+10)`
-/

namespace A240367.P2817619750032710466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (A055999 n + 10).toNat

end

end A240367.P2817619750032710466

/-! ## A240367.P16731926064307141279

`A240364(eq[5, A066657(n)])`
-/

namespace A240367.P16731926064307141279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240367.P16731926064307141279

/-! ## A240367.P11045501925981482300

`A240364(A167614(n+2)+1)`
-/

namespace A240367.P11045501925981482300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (A167614 (n + 2) + 1).toNat

end

end A240367.P11045501925981482300

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

/-! ## A240368.P4008066671103176541

`A240364(A155212(n)+13)`
-/

namespace A240368.P4008066671103176541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (A155212 n + 13).toNat

end

end A240368.P4008066671103176541

/-! ## A240368.P14172832036313443886

`A240364(A056000(n)+15)`
-/

namespace A240368.P14172832036313443886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (A056000 n + 15).toNat

end

end A240368.P14172832036313443886

/-! ## A240368.P8113063856855204328

`A240364(eq[7, A066657(n)])`
-/

namespace A240368.P8113063856855204328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240368.P8113063856855204328

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

/-! ## A240369.P10148604560723027132

`A240364(A167499(n+4)+1)`
-/

namespace A240369.P10148604560723027132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (A167499 (n + 4) + 1).toNat

end

end A240369.P10148604560723027132

/-! ## A240369.P12575607390561128325

`A240364(A167614(n+4)+3)`
-/

namespace A240369.P12575607390561128325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (A167614 (n + 4) + 3).toNat

end

end A240369.P12575607390561128325

/-! ## A240369.P14654104238360313838

`A240364(A000096(n+4)+7)`
-/

namespace A240369.P14654104238360313838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (A000096 (n + 4) + 7).toNat

end

end A240369.P14654104238360313838

/-! ## A240369.P10133084052836610630

`A240364(A000217(n+5)+6)`
-/

namespace A240369.P10133084052836610630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240364 (A000217 (n + 5) + 6).toNat

end

end A240369.P10133084052836610630

/-!
# A240370: Positive integers n such that every element in the ring of integers modulo n can be written as the sum of two squares modulo n.

The programs for A240370, the canonical program `A240370.P5719875248519778256` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240370 has offset 1).

The definition of A240370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6504 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A240370.P15107044215213811402

`lt[A072438(A008833(n+1)), 2]+1`
-/

namespace A240370.P15107044215213811402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072438 (A008833 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A240370.P15107044215213811402

namespace A240370

/-- `lt[A072438(A008833(n+1)), 2]+1` -/
def P15107044215213811402.Spec : Prop :=
  ∀ n, (P15107044215213811402.a n : ℤ) = A240370 (n + 1)

end A240370

/-! ## A240370.P5719875248519778256

`eq[1, A065338(A057521(n+1))]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A240370

/-- `eq[1, A065338(A057521(n+1))]+1` -/
def P5719875248519778256.Spec : Prop :=
  ∀ n, (P5719875248519778256.a n : ℤ) = A240370 (n + 1)

theorem P5719875248519778256.correct : P5719875248519778256.Spec := by
  intro n
  simp only [A240370, Nat.add_sub_cancel]

end A240370

/-! ## A240370.P1660332871886019457

`record[A155918(n+1)]`
-/

namespace A240370.P1660332871886019457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A240370.P1660332871886019457

namespace A240370

/-- `record[A155918(n+1)]` -/
def P1660332871886019457.Spec : Prop :=
  ∀ n, P1660332871886019457.a n = A240370 (n + 1)

end A240370

/-! ## A240370.P9491868119372510829

`A155918(eq[n+1, A155918(n+1)]+1)`
-/

namespace A240370.P9491868119372510829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155918 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A240370.P9491868119372510829

namespace A240370

/-- `A155918(eq[n+1, A155918(n+1)]+1)` -/
def P9491868119372510829.Spec : Prop :=
  ∀ n, P9491868119372510829.a n = A240370 (n + 1)

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

/-! ## A240370.P1852917997935087071

`and(A086827(n+1), A193304(n+1))`
-/

namespace A240370.P1852917997935087071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A086827 (n + 1)) (A193304 (n + 1))

end

end A240370.P1852917997935087071

namespace A240370

/-- `and(A086827(n+1), A193304(n+1))` -/
def P1852917997935087071.Spec : Prop :=
  ∀ n, P1852917997935087071.a n = A240370 (n + 1)

end A240370

/-! ## A240370.P9450226317718691572

`and(A058000(n+1), A193304(n+1))`
-/

namespace A240370.P9450226317718691572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058000 (n + 1)) (A193304 (n + 1))

end

end A240370.P9450226317718691572

namespace A240370

/-- `and(A058000(n+1), A193304(n+1))` -/
def P9450226317718691572.Spec : Prop :=
  ∀ n, P9450226317718691572.a n = A240370 (n + 1)

end A240370

/-! ## A240370.P17118172480471321863

`A057521(A193304(n+1)²)/A193304(n+1)`
-/

namespace A240370.P17118172480471321863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057521 (A193304 (n + 1) ^ 2).toNat : ℚ) / (A193304 (n + 1) : ℚ)

end

end A240370.P17118172480471321863

namespace A240370

/-- `A057521(A193304(n+1)²)/A193304(n+1)` -/
def P17118172480471321863.Spec : Prop :=
  ∀ n, P17118172480471321863.a n = (A240370 (n + 1) : ℚ)

end A240370

/-! ## A240370.P5275459448786889764

`A193304(n+1)%A002189(n)`
-/

namespace A240370.P5275459448786889764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193304 (n + 1)) (A002189 n)

end

end A240370.P5275459448786889764

namespace A240370

/-- `A193304(n+1)%A002189(n)` -/
def P5275459448786889764.Spec : Prop :=
  ∀ n, P5275459448786889764.a n = A240370 (n + 1)

end A240370

/-! ## A240370.P6848432413726333958

`∩[A336918(n+1), A387177(n+1)]`
-/

namespace A240370.P6848432413726333958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A240370.P6848432413726333958

namespace A240370

/-- `∩[A336918(n+1), A387177(n+1)]` -/
def P6848432413726333958.Spec : Prop :=
  ∀ n, (P6848432413726333958.a n : ℤ) = A240370 (n + 1)

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

/-! ## A240371.P14847359376161937563

`A240376(A000096(n+1))%A182345(n+1)`
-/

namespace A240371.P14847359376161937563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240376 (A000096 (n + 1)).toNat) (A182345 (n + 1))

end

end A240371.P14847359376161937563

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

/-! ## A240372.P4565974831796926200

`and(-1, A240376(A167614(n+1)))`
-/

namespace A240372.P4565974831796926200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A240376 (A167614 (n + 1)).toNat)

end

end A240372.P4565974831796926200

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

/-! ## A240372.P5795887184652036185

`A240376(A167614(n+1))+A025439(n)`
-/

namespace A240372.P5795887184652036185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (A167614 (n + 1)).toNat + A025439 n

end

end A240372.P5795887184652036185

/-! ## A240372.P8832571792733746345

`A240376(A167614(n+1))+A025442(n)`
-/

namespace A240372.P8832571792733746345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (A167614 (n + 1)).toNat + A025442 n

end

end A240372.P8832571792733746345

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

/-! ## A240373.P11062278498080178372

`A240376(A141214(n)+7)`
-/

namespace A240373.P11062278498080178372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (A141214 n + 7).toNat

end

end A240373.P11062278498080178372

/-! ## A240373.P2002148841738041202

`A240376(A052905(n)+9)`
-/

namespace A240373.P2002148841738041202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (A052905 n + 9).toNat

end

end A240373.P2002148841738041202

/-! ## A240373.P954371839667800823

`A240376(A055999(n)+10)`
-/

namespace A240373.P954371839667800823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (A055999 n + 10).toNat

end

end A240373.P954371839667800823

/-! ## A240373.P512321633798891757

`A240376(eq[5, A066657(n)])`
-/

namespace A240373.P512321633798891757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240373.P512321633798891757

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

/-! ## A240374.P7962231825312012134

`A240376(A167499(n+3))`
-/

namespace A240374.P7962231825312012134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (A167499 (n + 3)).toNat

end

end A240374.P7962231825312012134

/-! ## A240374.P15895410335464879143

`A240376(A155212(n)+13)`
-/

namespace A240374.P15895410335464879143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (A155212 n + 13).toNat

end

end A240374.P15895410335464879143

/-! ## A240374.P11901434306508477644

`A240376(A056000(n)+15)`
-/

namespace A240374.P11901434306508477644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (A056000 n + 15).toNat

end

end A240374.P11901434306508477644

/-! ## A240374.P14903137691740783415

`A240376(eq[7, A066657(n)])`
-/

namespace A240374.P14903137691740783415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240374.P14903137691740783415

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

/-! ## A240375.P17617378097481698691

`A240376(A166136(n+4))`
-/

namespace A240375.P17617378097481698691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (A166136 (n + 4)).toNat

end

end A240375.P17617378097481698691

/-! ## A240375.P16050621679502294264

`A240376(Δ[A264443(n)]+10)`
-/

namespace A240375.P16050621679502294264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (f1 (n + 1) - f1 n + 10).toNat

end

end A240375.P16050621679502294264

/-! ## A240375.P13825798880144335257

`A240376(A167499(n+4)+1)`
-/

namespace A240375.P13825798880144335257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (A167499 (n + 4) + 1).toNat

end

end A240375.P13825798880144335257

/-! ## A240375.P13668249412560345436

`A240376(A000217(n+5)+6)`
-/

namespace A240375.P13668249412560345436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240376 (A000217 (n + 5) + 6).toNat

end

end A240375.P13668249412560345436

/-!
# A240377: Number of nX2 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240377, there is no canonical definition to state claims against.
-/

/-! ## A240377.P12638023688224295363

`A240381(∑[n+2])`
-/

namespace A240377.P12638023688224295363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A240377.P12638023688224295363

/-! ## A240377.P3193762130644898282

`lcm(2, A240381(A000096(n+1)))`
-/

namespace A240377.P3193762130644898282
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A240381 (A000096 (n + 1)).toNat)

end

end A240377.P3193762130644898282

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

/-! ## A240377.P2318034793281198668

`A240381(A000096(n+1))%A042730(n)`
-/

namespace A240377.P2318034793281198668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240381 (A000096 (n + 1)).toNat) (A042730 n)

end

end A240377.P2318034793281198668

/-!
# A240378: Number of nX3 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240378, there is no canonical definition to state claims against.
-/

/-! ## A240378.P13812084538037057184

`A240381(∑[n+3]+1)`
-/

namespace A240378.P13812084538037057184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A240378.P13812084538037057184

/-!
# A240379: Number of nX4 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

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

/-! ## A240380.P15838730912911468900

`A240381(∑[n+5]+6)`
-/

namespace A240380.P15838730912911468900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A240380.P15838730912911468900

/-!
# A240382: Number of 2 X n 0..3 arrays with no element equal to zero plus the sum of elements to its left or two plus the sum of the elements above it or zero plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240382, there is no canonical definition to state claims against.
-/

/-! ## A240382.P9170128075397743924

`A240381(∑[n+1]+2)`
-/

namespace A240382.P9170128075397743924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A240382.P9170128075397743924

/-! ## A240382.P17270647229678896031

`lcm(2, A240381(A133263(n+1)))`
-/

namespace A240382.P17270647229678896031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A240381 (A133263 (n + 1)).toNat)

end

end A240382.P17270647229678896031

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

/-! ## A240382.P3069244544024801409

`A335520(n+1)+A240381(A133263(n+1))`
-/

namespace A240382.P3069244544024801409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335520 (n + 1) + A240381 (A133263 (n + 1)).toNat

end

end A240382.P3069244544024801409

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

/-! ## A240383.P13667516863833880089

`lcm(2, A240381(A167614(n+1)))`
-/

namespace A240383.P13667516863833880089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A240381 (A167614 (n + 1)).toNat)

end

end A240383.P13667516863833880089

/-! ## A240383.P18397773475526865170

`A240381(A167614(n+1))+A025466(n)`
-/

namespace A240383.P18397773475526865170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (A167614 (n + 1)).toNat + A025466 n

end

end A240383.P18397773475526865170

/-! ## A240383.P6515618248834008000

`A240381(A167614(n+1))+A105514(n)`
-/

namespace A240383.P6515618248834008000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (A167614 (n + 1)).toNat + A105514 n

end

end A240383.P6515618248834008000

/-! ## A240383.P9998815903753882331

`A240381(A167614(n+1))+A185284(n)`
-/

namespace A240383.P9998815903753882331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (A167614 (n + 1)).toNat + A185284 n

end

end A240383.P9998815903753882331

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

/-! ## A240384.P15315636476793394539

`A240381(A052905(n)+9)`
-/

namespace A240384.P15315636476793394539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (A052905 n + 9).toNat

end

end A240384.P15315636476793394539

/-! ## A240384.P2246021827929320178

`A240381(A055999(n)+10)`
-/

namespace A240384.P2246021827929320178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (A055999 n + 10).toNat

end

end A240384.P2246021827929320178

/-! ## A240384.P2516239790462821541

`A240381(eq[5, A066657(n)])`
-/

namespace A240384.P2516239790462821541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240384.P2516239790462821541

/-! ## A240384.P8618341083733850231

`A240381(A167614(n+2)+1)`
-/

namespace A240384.P8618341083733850231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (A167614 (n + 2) + 1).toNat

end

end A240384.P8618341083733850231

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

/-! ## A240385.P7865488118485071081

`A240381(A155212(n)+13)`
-/

namespace A240385.P7865488118485071081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (A155212 n + 13).toNat

end

end A240385.P7865488118485071081

/-! ## A240385.P14516970739451412548

`A240381(A056000(n)+15)`
-/

namespace A240385.P14516970739451412548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (A056000 n + 15).toNat

end

end A240385.P14516970739451412548

/-! ## A240385.P16049194791321727883

`A240381(eq[7, A066657(n)])`
-/

namespace A240385.P16049194791321727883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240381 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240385.P16049194791321727883

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

/-! ## A240386.P3785820892850794971

`lcm(2, A240381(A166136(n+4)))`
-/

namespace A240386.P3785820892850794971
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A240381 (A166136 (n + 4)).toNat)

end

end A240386.P3785820892850794971

/-!
# A240388: A sequence related to the Stern sequence s(n) (A002487), defined by w(n) = s(3n)/2.

The programs for A240388, the canonical program `A240388.P11621996562073166528` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A240388 has offset 0).

The definition of A240388 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A240388.P11621996562073166528

`A002487(3*n)/2`

The canonical program, it is in `Seq.B003.C003`.
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

/-! ## A240388.P3926954557963324519

`A284556(A064680(n)+n)`
-/

namespace A240388.P3926954557963324519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284556 (A064680 n + (n : ℤ)).toNat

end

end A240388.P3926954557963324519

namespace A240388

/-- `A284556(A064680(n)+n)` -/
def P3926954557963324519.Spec : Prop :=
  ∀ n, P3926954557963324519.a n = A240388 n

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

/-! ## A240388.P10885046931743235905

`A026741(A002487(A214394(A044102(2*n))))`
-/

namespace A240388.P10885046931743235905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A002487 (A214394 (A044102 (2 * n)).toNat).toNat).toNat

end

end A240388.P10885046931743235905

namespace A240388

/-- `A026741(A002487(A214394(A044102(2*n))))` -/
def P10885046931743235905.Spec : Prop :=
  ∀ n, P10885046931743235905.a n = A240388 n

end A240388

/-!
# A240389: Number of n X 2 0..3 arrays with no element equal to zero plus the sum of elements to its left or one plus the sum of elements above it or two plus the sum of the elements diagonally to its northwest, modulo 4.

The programs for A240389, there is no canonical definition to state claims against.
-/

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

/-! ## A240389.P16332801305656657650

`A240394(A000096(n+1))%A291176(n+1)`
-/

namespace A240389.P16332801305656657650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A240394 (A000096 (n + 1)).toNat) (A291176 (n + 1))

end

end A240389.P16332801305656657650

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

/-! ## A240390.P11100199516011600331

`A240394(A034856(n+2))*A332770(n+1)`
-/

namespace A240390.P11100199516011600331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (A034856 (n + 2)).toNat * A332770 (n + 1)

end

end A240390.P11100199516011600331

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

/-! ## A240392.P10122718132993810053

`A240394(A046691(n+3))^A033999(n)²`
-/

namespace A240392.P10122718132993810053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240394 (A046691 (n + 3)).toNat : ℚ) ^ (A033999 n ^ 2 : ℤ)

end

end A240392.P10122718132993810053

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

/-! ## A240393.P7896467144354412658

`A240394(eq[3, A219347(n)])`
-/

namespace A240393.P7896467144354412658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240393.P7896467144354412658

/-! ## A240393.P13513970486282359394

`A240394(eq[5, A152157(n)])`
-/

namespace A240393.P13513970486282359394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240393.P13513970486282359394

/-! ## A240393.P1579005189651594772

`A240394(eq[5, A193592(n)])`
-/

namespace A240393.P1579005189651594772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240393.P1579005189651594772

/-! ## A240393.P15746400085733390892

`A240394(eq[8, A258709(n)])`
-/

namespace A240393.P15746400085733390892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240393.P15746400085733390892

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

The programs for A240395, there is no canonical definition to state claims against.
-/

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

/-! ## A240395.P14752528632502091916

`lcm(gcd(2, n)²-3, A240394(A167614(n+1)))`
-/

namespace A240395.P14752528632502091916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((Nat.gcd 2 n ^ 2 : ℤ) - 3) (A240394 (A167614 (n + 1)).toNat)

end

end A240395.P14752528632502091916

/-! ## A240395.P7829288389450924720

`A240394(A167614(n+1))+A011731(n)`
-/

namespace A240395.P7829288389450924720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (A167614 (n + 1)).toNat + A011731 n

end

end A240395.P7829288389450924720

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

/-! ## A240396.P6627344795869034702

`A240394(A052905(n)+9)`
-/

namespace A240396.P6627344795869034702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (A052905 n + 9).toNat

end

end A240396.P6627344795869034702

/-! ## A240396.P7484923097171615632

`A240394(A055999(n)+10)`
-/

namespace A240396.P7484923097171615632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (A055999 n + 10).toNat

end

end A240396.P7484923097171615632

/-! ## A240396.P16383642457090750630

`A240394(eq[5, A066657(n)])`
-/

namespace A240396.P16383642457090750630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240396.P16383642457090750630

/-! ## A240396.P15413012766447060519

`A240394(A167614(n+2)+1)`
-/

namespace A240396.P15413012766447060519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (A167614 (n + 2) + 1).toNat

end

end A240396.P15413012766447060519

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

/-! ## A240398.P15847182788681017073

`A240394(A167487(n+4)-1)`
-/

namespace A240398.P15847182788681017073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (A167487 (n + 4) - 1).toNat

end

end A240398.P15847182788681017073

/-! ## A240398.P4468728659345812798

`A240394(A167614(n+4)+3)`
-/

namespace A240398.P4468728659345812798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (A167614 (n + 4) + 3).toNat

end

end A240398.P4468728659345812798

/-! ## A240398.P9539348131319744761

`A240394(A000124(n+5)+5)`
-/

namespace A240398.P9539348131319744761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (A000124 (n + 5) + 5).toNat

end

end A240398.P9539348131319744761

/-! ## A240398.P6139148807824705626

`A240394(A000217(n+5)+6)`
-/

namespace A240398.P6139148807824705626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (A000217 (n + 5) + 6).toNat

end

end A240398.P6139148807824705626

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

/-! ## A240399.P1627020981280500427

`A240394(eq[11, A066657(n)])`
-/

namespace A240399.P1627020981280500427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A240399.P1627020981280500427

/-! ## A240399.P16564228255879593783

`A240394(A166136(n+5)+1)`
-/

namespace A240399.P16564228255879593783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (A166136 (n + 5) + 1).toNat

end

end A240399.P16564228255879593783

/-! ## A240399.P6417538954916148267

`A240394(A167499(n+5)+2)`
-/

namespace A240399.P6417538954916148267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (A167499 (n + 5) + 2).toNat

end

end A240399.P6417538954916148267

/-! ## A240399.P12095459547632351853

`A240394(A077169(n+7)+2)`
-/

namespace A240399.P12095459547632351853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (A077169 (n + 7) + 2).toNat

end

end A240399.P12095459547632351853

