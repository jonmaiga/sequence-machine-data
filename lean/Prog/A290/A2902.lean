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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A290201: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 777", based on the 5-celled von Neumann neighborhood.

The programs for A290201, there is no canonical definition to state claims against.
-/

/-! ## A290201.P15448059055275549775

`A007088(A290292(n))`
-/

namespace A290201.P15448059055275549775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290292 n).toNat

end

end A290201.P15448059055275549775

/-! ## A290201.P14045442118942302244

`A185544(2*A290292(n))`
-/

namespace A290201.P14045442118942302244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290292 n).toNat

end

end A290201.P14045442118942302244

/-! ## A290201.P7424502511157900527

`A185544(A290292(n)+A290292(n))`
-/

namespace A290201.P7424502511157900527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A290292 n + A290292 n).toNat

end

end A290201.P7424502511157900527

/-!
# A290202: Number of solid standard Young tableaux of cylindrical shape lambda X 3, where lambda ranges over all partitions of n.

The programs for A290202, there is no canonical definition to state claims against.
-/

/-! ## A290202.P9648316602640994062

`A215204(∑[n+3]+n+3)`
-/

namespace A290202.P9648316602640994062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215204 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A290202.P9648316602640994062

/-!
# A290204: Bases b for which there exists an integer y such that y^2 in base b consists of 4 identical digits.

The programs for A290204, there is no canonical definition to state claims against.
-/

/-! ## A290204.P8028927564187463797

`A001333(eq[1, Δ[round((1-n)²/11)]])`
-/

namespace A290204.P8028927564187463797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((1 - (n : ℤ)) ^ 2 : ℚ) / 11)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290204.P8028927564187463797

/-!
# A290205: Group identifier of iterated Scrabble function.

The programs for A290205, there is no canonical definition to state claims against.
-/

/-! ## A290205.P1898944573463584154

`A046109(A322100(or(3, n)+1)+A208515(n+1))`
-/

namespace A290205.P1898944573463584154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046109 (A322100 (Nat.lor 3 n + 1) + A208515 (n + 1)).toNat

end

end A290205.P1898944573463584154

/-!
# A290206: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 726", based on the 5-celled von Neumann neighborhood.

The programs for A290206, there is no canonical definition to state claims against.
-/

/-! ## A290206.P16107778023196341976

`A007088(A290208(n))`
-/

namespace A290206.P16107778023196341976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290208 n).toNat

end

end A290206.P16107778023196341976

/-! ## A290206.P9720631553024334403

`A185544(2*A290208(n))`
-/

namespace A290206.P9720631553024334403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290208 n).toNat

end

end A290206.P9720631553024334403

/-! ## A290206.P12477802718700546840

`A185544(lcm(2, A290208(n)))`
-/

namespace A290206.P12477802718700546840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A290208 n))

end

end A290206.P12477802718700546840

/-! ## A290206.P5326194105357277828

`A185544(A290208(n)+A290208(n))`
-/

namespace A290206.P5326194105357277828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A290208 n + A290208 n).toNat

end

end A290206.P5326194105357277828

/-! ## A290206.P8959935104806204006

`A305989(A290209(n)/A193562(n))`
-/

namespace A290206.P8959935104806204006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A290209 n : ℚ) / (A193562 n : ℚ))).toNat

end

end A290206.P8959935104806204006

/-!
# A290207: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 726", based on the 5-celled von Neumann neighborhood.

The programs for A290207, there is no canonical definition to state claims against.
-/

/-! ## A290207.P7703604832297567199

`A007088(A290209(n))`
-/

namespace A290207.P7703604832297567199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290209 n).toNat

end

end A290207.P7703604832297567199

/-! ## A290207.P4470855003410224363

`A185544(2*A290209(n))`
-/

namespace A290207.P4470855003410224363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290209 n).toNat

end

end A290207.P4470855003410224363

/-!
# A290208: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 726", based on the 5-celled von Neumann neighborhood.

The programs for A290208, there is no canonical definition to state claims against.
-/

/-! ## A290208.P10259818650215455180

`A030101(A290209(n)/A193562(n))`
-/

namespace A290208.P10259818650215455180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A290209 n : ℚ) / (A193562 n : ℚ))).toNat

end

end A290208.P10259818650215455180

/-! ## A290208.P16014242727186551049

`A325401(A290209(n)/A193562(n))`
-/

namespace A290208.P16014242727186551049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A290209 n : ℚ) / (A193562 n : ℚ))).toNat

end

end A290208.P16014242727186551049

/-! ## A290208.P12309966873669227513

`A030101(A290209(n)/A061142(n+1))`
-/

namespace A290208.P12309966873669227513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A290209 n : ℚ) / (A061142 (n + 1) : ℚ))).toNat

end

end A290208.P12309966873669227513

/-! ## A290208.P11882719947945543301

`A325401(A290209(n)/A061142(n+1))`
-/

namespace A290208.P11882719947945543301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (SequenceMachineLib.roundAway ((A290209 n : ℚ) / (A061142 (n + 1) : ℚ))).toNat

end

end A290208.P11882719947945543301

/-! ## A290208.P7598304020247126697

`A030101(A290209(n)/A059151(n))`
-/

namespace A290208.P7598304020247126697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A290209 n : ℚ) / (A059151 n : ℚ))).toNat

end

end A290208.P7598304020247126697

/-!
# A290209: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 726", based on the 5-celled von Neumann neighborhood.

The programs for A290209, there is no canonical definition to state claims against.
-/

/-! ## A290209.P6014319166863908591

`or(A000079(n), A003557(A056236(n)))`
-/

namespace A290209.P6014319166863908591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000079 n) (A003557 (A056236 n).toNat)

end

end A290209.P6014319166863908591

/-! ## A290209.P6761867781939855850

`∑[A160277(n+1)-A001221(A119138(n+1))]`
-/

namespace A290209.P6761867781939855850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160277 (n + 1) - A001221 (A119138 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290209.P6761867781939855850

/-!
# A290210: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 734", based on the 5-celled von Neumann neighborhood.

The programs for A290210, there is no canonical definition to state claims against.
-/

/-! ## A290210.P13585141747170250015

`A007088(A290212(n))`
-/

namespace A290210.P13585141747170250015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290212 n).toNat

end

end A290210.P13585141747170250015

/-! ## A290210.P3150816537151621093

`A305989(A290213(n)/A060546(n))`
-/

namespace A290210.P3150816537151621093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A290213 n : ℚ) / (A060546 n : ℚ))).toNat

end

end A290210.P3150816537151621093

/-! ## A290210.P10712804704968130513

`A305989(A290213(n)/A016116(n+1))`
-/

namespace A290210.P10712804704968130513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A290213 n : ℚ) / (A016116 (n + 1) : ℚ))).toNat

end

end A290210.P10712804704968130513

/-! ## A290210.P7125403779900709523

`A305989(floor(A290213(n)/A016116(n)))`
-/

namespace A290210.P7125403779900709523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 ⌊(A290213 n : ℚ) / (A016116 n : ℚ)⌋.toNat

end

end A290210.P7125403779900709523

/-! ## A290210.P2340812690482982940

`A305989(ceil(A290213(n)/A016116(n)))`
-/

namespace A290210.P2340812690482982940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 ⌈(A290213 n : ℚ) / (A016116 n : ℚ)⌉.toNat

end

end A290210.P2340812690482982940

/-!
# A290211: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 734", based on the 5-celled von Neumann neighborhood.

The programs for A290211, there is no canonical definition to state claims against.
-/

/-! ## A290211.P2593032295266037680

`A007088(A290213(n))`
-/

namespace A290211.P2593032295266037680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290213 n).toNat

end

end A290211.P2593032295266037680

/-! ## A290211.P17802887284614660108

`A185544(2*A290213(n))`
-/

namespace A290211.P17802887284614660108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290213 n).toNat

end

end A290211.P17802887284614660108

/-!
# A290212: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 734", based on the 5-celled von Neumann neighborhood.

The programs for A290212, there is no canonical definition to state claims against.
-/

/-! ## A290212.P16573540733513832568

`A030101(A290213(n)/A060546(n))`
-/

namespace A290212.P16573540733513832568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A290213 n : ℚ) / (A060546 n : ℚ))).toNat

end

end A290212.P16573540733513832568

/-! ## A290212.P14027282207347611739

`A030101(A290213(n)/A016116(n+1))`
-/

namespace A290212.P14027282207347611739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway ((A290213 n : ℚ) / (A016116 (n + 1) : ℚ))).toNat

end

end A290212.P14027282207347611739

/-! ## A290212.P10892574962341204390

`A030101(floor(A290213(n)/A016116(n)))`
-/

namespace A290212.P10892574962341204390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 ⌊(A290213 n : ℚ) / (A016116 n : ℚ)⌋.toNat

end

end A290212.P10892574962341204390

/-! ## A290212.P3963974319093303234

`A030101(ceil(A290213(n)/A016116(n)))`
-/

namespace A290212.P3963974319093303234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 ⌈(A290213 n : ℚ) / (A016116 n : ℚ)⌉.toNat

end

end A290212.P3963974319093303234

/-! ## A290212.P4785780118251480991

`A030101(2/A016116(n)*A290213(n))`
-/

namespace A290212.P4785780118251480991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (SequenceMachineLib.roundAway (2 / (A016116 n : ℚ) * (A290213 n : ℚ))).toNat

end

end A290212.P4785780118251480991

/-!
# A290213: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 734", based on the 5-celled von Neumann neighborhood.

The programs for A290213, there is no canonical definition to state claims against.
-/

/-! ## A290213.P2818554517553610551

`A250250(A290160(n))`
-/

namespace A290213.P2818554517553610551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250250 (A290160 n).toNat

end

end A290213.P2818554517553610551

/-! ## A290213.P4924209227382072940

`A250246(lcm(A286545(n+1), A290160(n)))`
-/

namespace A290213.P4924209227382072940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250246 (Int.lcm (A286545 (n + 1)) (A290160 n))

end

end A290213.P4924209227382072940

/-!
# A290214: Number of solid standard Young tableaux of cylindrical shape lambda X 4, where lambda ranges over all partitions of n.

The programs for A290214, there is no canonical definition to state claims against.
-/

/-! ## A290214.P16945334846793816707

`A215204(eq[4, A025581(n)])`
-/

namespace A290214.P16945334846793816707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290214.P16945334846793816707

/-! ## A290214.P5586136456077340224

`A215204(eq[5, A193739(n)])`
-/

namespace A290214.P5586136456077340224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290214.P5586136456077340224

/-! ## A290214.P3959661303237905746

`A215204(eq[5, A195663(n)])`
-/

namespace A290214.P3959661303237905746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290214.P3959661303237905746

/-! ## A290214.P5997125422225060351

`A215204(eq[9, A099375(n)])`
-/

namespace A290214.P5997125422225060351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290214.P5997125422225060351

/-! ## A290214.P3144309674363369633

`A215204(eq[4, A025660(n+1)])`
-/

namespace A290214.P3144309674363369633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025660 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290214.P3144309674363369633

/-!
# A290215: a(n) = n! * [x^n] -exp(-n*x)*LambertW(-x).

The programs for A290215, there is no canonical definition to state claims against.
-/

/-! ## A290215.P1279960456345114479

`n*A355827(A288163(n))`
-/

namespace A290215.P1279960456345114479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A355827 (A288163 n).toNat

end

end A290215.P1279960456345114479

/-!
# A290216: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of g.f. Product_{i>0} (1 + Sum_{j=1..k} j*x^(j*i)).

The programs for A290216, there is no canonical definition to state claims against.
-/

/-! ## A290216.P18392468912380438437

`A082313(A293202(n))%p?[A222947(n)]`
-/

namespace A290216.P18392468912380438437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222947 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082313 (A293202 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A290216.P18392468912380438437

/-! ## A290216.P11532024406619834446

`A082313(A293202(n)%A339875(n+1))`
-/

namespace A290216.P11532024406619834446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (Int.tmod (A293202 n) (A339875 (n + 1))).toNat

end

end A290216.P11532024406619834446

/-! ## A290216.P4212439053157257297

`A082313(A293202(n))+A000007(A000041(n))`
-/

namespace A290216.P4212439053157257297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082313 (A293202 n).toNat + A000007 (A000041 n).toNat

end

end A290216.P4212439053157257297

/-! ## A290216.P16772566591297240225

`A082313(A293202(n))^A014963(A273359(n+1))`
-/

namespace A290216.P16772566591297240225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082313 (A293202 n).toNat : ℚ) ^ (A014963 (A273359 (n + 1)).toNat : ℤ)

end

end A290216.P16772566591297240225

/-! ## A290216.P8522794796407822487

`A037477(A292795(n))%A182732(3*n+4)`
-/

namespace A290216.P8522794796407822487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037477 (A292795 n).toNat) (A182732 (3 * n + 4))

end

end A290216.P8522794796407822487

/-!
# A290217: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of g.f. Product_{i>0} 1/(1 + Sum_{j=1..k} j*x^(j*i)).

The programs for A290217, there is no canonical definition to state claims against.
-/

/-! ## A290217.P15874209656806710480

`A293285(n)%A217568(3*A319413(n+1)+1)`
-/

namespace A290217.P15874209656806710480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293285 n) (A217568 (3 * A319413 (n + 1) + 1).toNat)

end

end A290217.P15874209656806710480

/-! ## A290217.P11329564750586985205

`A267479(A267479(n))*A293285(n)`
-/

namespace A290217.P11329564750586985205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267479 (A267479 n).toNat * A293285 n

end

end A290217.P11329564750586985205

/-! ## A290217.P4745207931942160280

`A293285(n)%A028922(A028310(n))`
-/

namespace A290217.P4745207931942160280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293285 n) (A028922 (A028310 n).toNat)

end

end A290217.P4745207931942160280

/-! ## A290217.P199682828305040380

`A057427(A274068(n+1))*A293285(n)`
-/

namespace A290217.P199682828305040380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A274068 (n + 1)).toNat * A293285 n

end

end A290217.P199682828305040380

/-! ## A290217.P14409219598507379910

`A293285(n)+A067898(A213916(n+1))`
-/

namespace A290217.P14409219598507379910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293285 n + A067898 (A213916 (n + 1)).toNat

end

end A290217.P14409219598507379910

/-!
# A290219: a(n) = n! * [x^n] exp(exp(x) - n*x - 1).

The programs for A290219, there is no canonical definition to state claims against.
-/

/-! ## A290219.P10296528623468523487

`A361781(∑[4*n])`
-/

namespace A290219.P10296528623468523487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361781 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290219.P10296528623468523487

/-! ## A290219.P16691661319089789307

`A361781(A046092(n))+A000007(2*(n+2))`
-/

namespace A290219.P16691661319089789307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361781 (A046092 n).toNat + A000007 (2 * (n + 2))

end

end A290219.P16691661319089789307

/-!
# A290220: Narrow cross sequence (see Comments lines for definition).

The programs for A290220, the canonical program `A290220.P15357825308960802566` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290220 has offset 0).

The definition of A290220 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290220.P15357825308960802566

`a(n-1)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=2, a(2)=6, a(3)=10, a(4)=18, a(5)=26, a(6)=34, a(7)=42, a(8)=58, a(9)=70`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290220

/-- `a(n-1)+a(n-3)-a(n-4)` -/
def P15357825308960802566.Spec : Prop :=
  ∀ n, P15357825308960802566.a n = A290220 n

theorem P15357825308960802566.correct : P15357825308960802566.Spec := by
  intro n
  simp only [A290220]

end A290220

/-! ## A290220.P14489244460782847715

`∑[A290221(n)]`
-/

namespace A290220.P14489244460782847715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290220.P14489244460782847715

namespace A290220

/-- `∑[A290221(n)]` -/
def P14489244460782847715.Spec : Prop :=
  ∀ n, P14489244460782847715.a n = A290220 n

end A290220

/-! ## A290220.P14963255901306256108

`A290221(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A290220.P14963255901306256108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A290221 n + a (A023443 n).toNat

end

end A290220.P14963255901306256108

namespace A290220

/-- `A290221(n)+a(A023443(n))` -/
def P14963255901306256108.Spec : Prop :=
  ∀ n, P14963255901306256108.a n = A290220 n

end A290220

/-! ## A290220.P2795454885600800355

`A000027(A290221(n)+a(n-1))` with `a(0)=0`
-/

namespace A290220.P2795454885600800355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000027 (A290221 n + a (n - 1)).toNat

end

end A290220.P2795454885600800355

namespace A290220

/-- `A000027(A290221(n)+a(n-1))` -/
def P2795454885600800355.Spec : Prop :=
  ∀ n, P2795454885600800355.a n = A290220 n

end A290220

/-! ## A290220.P17621606738649799157

`A290221(n)+a(n-A054977(n))` with `a(0)=0`
-/

namespace A290220.P17621606738649799157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A290221 n + a ((n : ℤ) - A054977 n).toNat

end

end A290220.P17621606738649799157

namespace A290220

/-- `A290221(n)+a(n-A054977(n))` -/
def P17621606738649799157.Spec : Prop :=
  ∀ n, P17621606738649799157.a n = A290220 n

end A290220

/-! ## A290220.P1451670251105311543

`A290221(n)+a(n-A000108(C(2, n+1)))` with `a(0)=0`
-/

namespace A290220.P1451670251105311543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A290221 n + a ((n : ℤ) - A000108 (Nat.choose 2 (n + 1))).toNat

end

end A290220.P1451670251105311543

namespace A290220

/-- `A290221(n)+a(n-A000108(C(2, n+1)))` -/
def P1451670251105311543.Spec : Prop :=
  ∀ n, P1451670251105311543.a n = A290220 n

end A290220

/-! ## A290220.P16163286492805775860

`(A290221(n)+a(n-1))%A000244(n)` with `a(0)=0`
-/

namespace A290220.P16163286492805775860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (A290221 n + a (n - 1)) (A000244 n)

end

end A290220.P16163286492805775860

namespace A290220

/-- `(A290221(n)+a(n-1))%A000244(n)` -/
def P16163286492805775860.Spec : Prop :=
  ∀ n, P16163286492805775860.a n = A290220 n

end A290220

/-!
# A290221: Number of elements added at n-th stage to the structure of the narrow cross described in A290220.

The programs for A290221, the canonical program `A290221.P18290709257670831745` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290221 has offset 0).

The definition of A290221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290221.P18290709257670831745

`A290220(n)-A290220(log2(A011782(n)))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A290221

/-- `A290220(n)-A290220(log2(A011782(n)))` -/
def P18290709257670831745.Spec : Prop :=
  ∀ n, P18290709257670831745.a n = A290221 n

theorem P18290709257670831745.correct : P18290709257670831745.Spec := by
  intro n
  simp only [A290221]

end A290221

/-!
# A290222: Multiset transform of A011782, powers of 2: 1, 2, 4, 8, 16, ...

The programs for A290222, there is no canonical definition to state claims against.
-/

/-! ## A290222.P3094628408512531074

`A327549(n)-A010051(A112150(n))`
-/

namespace A290222.P3094628408512531074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327549 n - A010051 (A112150 n).toNat

end

end A290222.P3094628408512531074

/-! ## A290222.P17300877050182997700

`A327549(n)-A118135(A339030(n))`
-/

namespace A290222.P17300877050182997700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327549 n - A118135 (A339030 n).toNat

end

end A290222.P17300877050182997700

/-! ## A290222.P16266000445256589126

`A327549(n)-A284772(A316623(n))`
-/

namespace A290222.P16266000445256589126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327549 n - A284772 (A316623 n).toNat

end

end A290222.P16266000445256589126

/-! ## A290222.P15239108361349039151

`and(A079886(A018157(n)), A293808(n))`
-/

namespace A290222.P15239108361349039151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A079886 (A018157 n).toNat) (A293808 n)

end

end A290222.P15239108361349039151

/-! ## A290222.P15776911094710388240

`A327549(n)-A343222(A029963(n+3))`
-/

namespace A290222.P15776911094710388240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327549 n - A343222 (A029963 (n + 3)).toNat

end

end A290222.P15776911094710388240

/-!
# A290225: Number of solid standard Young tableaux of cylindrical shape lambda X n, where lambda ranges over all partitions of n.

The programs for A290225, there is no canonical definition to state claims against.
-/

/-! ## A290225.P9049240287476162962

`A215204(∑[4*n])`
-/

namespace A290225.P9049240287476162962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215204 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290225.P9049240287476162962

/-!
# A290226: Numbers n such that A290223(n) = 2.

The programs for A290226, there is no canonical definition to state claims against.
-/

/-! ## A290226.P12527826465925103629

`∪[A008865(3*n+2), A018252(A224108(3*n+2))]`
-/

namespace A290226.P12527826465925103629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008865 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A224108 (3 * n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A290226.P12527826465925103629

/-!
# A290227: Numbers n such that A290223(n) = 11.

The programs for A290227, there is no canonical definition to state claims against.
-/

/-! ## A290227.P7843550210435597549

`lt[9, A290223(n+1)]+1`
-/

namespace A290227.P7843550210435597549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290223 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A290227.P7843550210435597549

/-! ## A290227.P8743531842700588743

`eq[11, A290223(round(acot(n)+n))]`
-/

namespace A290227.P8743531842700588743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290223 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290227.P8743531842700588743

/-! ## A290227.P16522937082892974335

`lt[9, A290223(A028310(n))]`
-/

namespace A290227.P16522937082892974335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290223 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A290227.P16522937082892974335

/-! ## A290227.P10215951924930007162

`lt[9, A290223(A233583(n+1))]`
-/

namespace A290227.P10215951924930007162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290223 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A290227.P10215951924930007162

/-! ## A290227.P17196071414608884768

`eq[11, A290223(A028310(n))]%A290224(3*n+2)`
-/

namespace A290227.P17196071414608884768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290223 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (A290224 (3 * n + 2))

end

end A290227.P17196071414608884768

/-!
# A290228: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

The programs for A290228, there is no canonical definition to state claims against.
-/

/-! ## A290228.P9029901775467287681

`or(1, A000042(n+1)-A285771(n))`
-/

namespace A290228.P9029901775467287681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000042 (n + 1) - A285771 n)

end

end A290228.P9029901775467287681

/-! ## A290228.P16242237163478185048

`A000042(n+1)-A285771(A028310(n))`
-/

namespace A290228.P16242237163478185048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A285771 (A028310 n).toNat

end

end A290228.P16242237163478185048

/-! ## A290228.P2380768171995158246

`A000042(n+1)-A285771(A000007(n)+n)`
-/

namespace A290228.P2380768171995158246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A285771 (A000007 n + (n : ℤ)).toNat

end

end A290228.P2380768171995158246

/-! ## A290228.P8892236147423815315

`C(A037804(n+1), n)+A000042(n+1)-A285771(n)`
-/

namespace A290228.P8892236147423815315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A037804 (n + 1)).toNat n : ℤ) + (A000042 (n + 1) - A285771 n)

end

end A290228.P8892236147423815315

/-! ## A290228.P12342317886361977151

`C(A070093(n+1), n)+A000042(n+1)-A285771(n)`
-/

namespace A290228.P12342317886361977151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A070093 (n + 1)).toNat n : ℤ) + (A000042 (n + 1) - A285771 n)

end

end A290228.P12342317886361977151

/-!
# A290229: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

The programs for A290229, there is no canonical definition to state claims against.
-/

/-! ## A290229.P6989341276901945984

`A000042(n+1)-A285772(A028310(n))`
-/

namespace A290229.P6989341276901945984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A285772 (A028310 n).toNat

end

end A290229.P6989341276901945984

/-! ## A290229.P2412255097319661887

`A007088(A290231(n))`
-/

namespace A290229.P2412255097319661887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290231 n).toNat

end

end A290229.P2412255097319661887

/-! ## A290229.P9421553797724158730

`A007088(or(A277928(n), A288812(n)))`
-/

namespace A290229.P9421553797724158730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A277928 n) (A288812 n)).toNat

end

end A290229.P9421553797724158730

/-! ## A290229.P8090104893289196103

`A007088(or(A277936(n), A288812(n)))`
-/

namespace A290229.P8090104893289196103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A277936 n) (A288812 n)).toNat

end

end A290229.P8090104893289196103

/-! ## A290229.P12436683803840165410

`A007088(or(A280412(n), A288812(n)))`
-/

namespace A290229.P12436683803840165410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A280412 n) (A288812 n)).toNat

end

end A290229.P12436683803840165410

/-!
# A290230: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

The programs for A290230, the canonical program `A290230.P10636525088049313073` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290230 has offset 0).

The definition of A290230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290230.P10636525088049313073

`or(A051049(n), A288811(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A290230

/-- `or(A051049(n), A288811(n))` -/
def P10636525088049313073.Spec : Prop :=
  ∀ n, P10636525088049313073.a n = A290230 n

theorem P10636525088049313073.correct : P10636525088049313073.Spec := by
  intro n
  simp only [A290230]

end A290230

/-! ## A290230.P6262140140006888476

`or(A277929(n), A288811(n))`
-/

namespace A290230.P6262140140006888476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277929 n) (A288811 n)

end

end A290230.P6262140140006888476

namespace A290230

/-- `or(A277929(n), A288811(n))` -/
def P6262140140006888476.Spec : Prop :=
  ∀ n, P6262140140006888476.a n = A290230 n

end A290230

/-! ## A290230.P3237435822962690704

`or(A277936(n), A288811(n))`
-/

namespace A290230.P3237435822962690704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277936 n) (A288811 n)

end

end A290230.P3237435822962690704

namespace A290230

/-- `or(A277936(n), A288811(n))` -/
def P3237435822962690704.Spec : Prop :=
  ∀ n, P3237435822962690704.a n = A290230 n

end A290230

/-! ## A290230.P337959453975584361

`or(A285475(n), A288811(n))`
-/

namespace A290230.P337959453975584361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285475 n) (A288811 n)

end

end A290230.P337959453975584361

namespace A290230

/-- `or(A285475(n), A288811(n))` -/
def P337959453975584361.Spec : Prop :=
  ∀ n, P337959453975584361.a n = A290230 n

end A290230

/-! ## A290230.P6269473194860599685

`or(A285646(n), A288811(n))`
-/

namespace A290230.P6269473194860599685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285646 n) (A288811 n)

end

end A290230.P6269473194860599685

namespace A290230

/-- `or(A285646(n), A288811(n))` -/
def P6269473194860599685.Spec : Prop :=
  ∀ n, P6269473194860599685.a n = A290230 n

end A290230

/-! ## A290230.P17640950971131809281

`or(A285650(n), A288811(n))`
-/

namespace A290230.P17640950971131809281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285650 n) (A288811 n)

end

end A290230.P17640950971131809281

namespace A290230

/-- `or(A285650(n), A288811(n))` -/
def P17640950971131809281.Spec : Prop :=
  ∀ n, P17640950971131809281.a n = A290230 n

end A290230

/-! ## A290230.P1827208998310710802

`or(A285654(n), A288811(n))`
-/

namespace A290230.P1827208998310710802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285654 n) (A288811 n)

end

end A290230.P1827208998310710802

namespace A290230

/-- `or(A285654(n), A288811(n))` -/
def P1827208998310710802.Spec : Prop :=
  ∀ n, P1827208998310710802.a n = A290230 n

end A290230

/-! ## A290230.P17139725531373880328

`or(A286170(n), A288811(n))`
-/

namespace A290230.P17139725531373880328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286170 n) (A288811 n)

end

end A290230.P17139725531373880328

namespace A290230

/-- `or(A286170(n), A288811(n))` -/
def P17139725531373880328.Spec : Prop :=
  ∀ n, P17139725531373880328.a n = A290230 n

end A290230

/-! ## A290230.P18349788795486314051

`or(A286199(n), A288811(n))`
-/

namespace A290230.P18349788795486314051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286199 n) (A288811 n)

end

end A290230.P18349788795486314051

namespace A290230

/-- `or(A286199(n), A288811(n))` -/
def P18349788795486314051.Spec : Prop :=
  ∀ n, P18349788795486314051.a n = A290230 n

end A290230

/-! ## A290230.P6704479134961297676

`A126646(n)-A285773(A123108(2*n))`
-/

namespace A290230.P6704479134961297676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A285773 (A123108 (2 * n)).toNat

end

end A290230.P6704479134961297676

namespace A290230

/-- `A126646(n)-A285773(A123108(2*n))` -/
def P6704479134961297676.Spec : Prop :=
  ∀ n, P6704479134961297676.a n = A290230 n

end A290230

/-!
# A290231: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 771", based on the 5-celled von Neumann neighborhood.

The programs for A290231, the canonical program `A290231.P14487216163094283759` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290231 has offset 0).

The definition of A290231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290231.P14487216163094283759

`or(A277928(n), A288812(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A290231

/-- `or(A277928(n), A288812(n))` -/
def P14487216163094283759.Spec : Prop :=
  ∀ n, P14487216163094283759.a n = A290231 n

theorem P14487216163094283759.correct : P14487216163094283759.Spec := by
  intro n
  simp only [A290231]

end A290231

/-! ## A290231.P8704183268604660938

`or(A277936(n), A288812(n))`
-/

namespace A290231.P8704183268604660938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277936 n) (A288812 n)

end

end A290231.P8704183268604660938

namespace A290231

/-- `or(A277936(n), A288812(n))` -/
def P8704183268604660938.Spec : Prop :=
  ∀ n, P8704183268604660938.a n = A290231 n

end A290231

/-! ## A290231.P16288140532287231747

`or(A280412(n), A288812(n))`
-/

namespace A290231.P16288140532287231747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A280412 n) (A288812 n)

end

end A290231.P16288140532287231747

namespace A290231

/-- `or(A280412(n), A288812(n))` -/
def P16288140532287231747.Spec : Prop :=
  ∀ n, P16288140532287231747.a n = A290231 n

end A290231

/-! ## A290231.P2711786768974161408

`or(A285475(n), A288812(n))`
-/

namespace A290231.P2711786768974161408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285475 n) (A288812 n)

end

end A290231.P2711786768974161408

namespace A290231

/-- `or(A285475(n), A288812(n))` -/
def P2711786768974161408.Spec : Prop :=
  ∀ n, P2711786768974161408.a n = A290231 n

end A290231

/-! ## A290231.P6163718689004313823

`or(A285645(n), A288812(n))`
-/

namespace A290231.P6163718689004313823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285645 n) (A288812 n)

end

end A290231.P6163718689004313823

namespace A290231

/-- `or(A285645(n), A288812(n))` -/
def P6163718689004313823.Spec : Prop :=
  ∀ n, P6163718689004313823.a n = A290231 n

end A290231

/-! ## A290231.P13394780544136844890

`or(A285649(n), A288812(n))`
-/

namespace A290231.P13394780544136844890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285649 n) (A288812 n)

end

end A290231.P13394780544136844890

namespace A290231

/-- `or(A285649(n), A288812(n))` -/
def P13394780544136844890.Spec : Prop :=
  ∀ n, P13394780544136844890.a n = A290231 n

end A290231

/-! ## A290231.P7271462181243858259

`or(A285653(n), A288812(n))`
-/

namespace A290231.P7271462181243858259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285653 n) (A288812 n)

end

end A290231.P7271462181243858259

namespace A290231

/-- `or(A285653(n), A288812(n))` -/
def P7271462181243858259.Spec : Prop :=
  ∀ n, P7271462181243858259.a n = A290231 n

end A290231

/-! ## A290231.P17983531207821054741

`or(A286169(n), A288812(n))`
-/

namespace A290231.P17983531207821054741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286169 n) (A288812 n)

end

end A290231.P17983531207821054741

namespace A290231

/-- `or(A286169(n), A288812(n))` -/
def P17983531207821054741.Spec : Prop :=
  ∀ n, P17983531207821054741.a n = A290231 n

end A290231

/-! ## A290231.P14988981320286694378

`or(A286198(n), A288812(n))`
-/

namespace A290231.P14988981320286694378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A286198 n) (A288812 n)

end

end A290231.P14988981320286694378

namespace A290231

/-- `or(A286198(n), A288812(n))` -/
def P14988981320286694378.Spec : Prop :=
  ∀ n, P14988981320286694378.a n = A290231 n

end A290231

/-!
# A290232: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 773", based on the 5-celled von Neumann neighborhood.

The programs for A290232, the canonical program `A290232.P11019390822315618094` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290232 has offset 0).

The definition of A290232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290232.P11019390822315618094

`A309761(A093005(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A290232

/-- `A309761(A093005(n+1))` -/
def P11019390822315618094.Spec : Prop :=
  ∀ n, P11019390822315618094.a n = A290232 n

theorem P11019390822315618094.correct : P11019390822315618094.Spec := by
  intro n
  simp only [A290232]

end A290232

/-! ## A290232.P14831674232687831055

`A309761(A105638(n+3)+1)`
-/

namespace A290232.P14831674232687831055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 (A105638 (n + 3) + 1).toNat

end

end A290232.P14831674232687831055

namespace A290232

/-- `A309761(A105638(n+3)+1)` -/
def P14831674232687831055.Spec : Prop :=
  ∀ n, P14831674232687831055.a n = A290232 n

end A290232

/-! ## A290232.P9163396043593838402

`A309761((n+1)*A008619(n))`
-/

namespace A290232.P9163396043593838402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 ((n + 1 : ℤ) * A008619 n).toNat

end

end A290232.P9163396043593838402

namespace A290232

/-- `A309761((n+1)*A008619(n))` -/
def P9163396043593838402.Spec : Prop :=
  ∀ n, P9163396043593838402.a n = A290232 n

end A290232

/-! ## A290232.P4733996729868068117

`A309761((n+1)*(A004526(n)+1))`
-/

namespace A290232.P4733996729868068117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309761 ((n + 1 : ℤ) * (A004526 n + 1)).toNat

end

end A290232.P4733996729868068117

namespace A290232

/-- `A309761((n+1)*(A004526(n)+1))` -/
def P4733996729868068117.Spec : Prop :=
  ∀ n, P4733996729868068117.a n = A290232 n

end A290232

/-! ## A290232.P10494328044460019901

`∑{d}[n+1, A000042(#)*A154955((n+1)/#)]`
-/

namespace A290232.P10494328044460019901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000042 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A290232.P10494328044460019901

namespace A290232

/-- `∑{d}[n+1, A000042(#)*A154955((n+1)/#)]` -/
def P10494328044460019901.Spec : Prop :=
  ∀ n, P10494328044460019901.a n = A290232 n

end A290232

/-! ## A290232.P3612802096043179416

`A000042(n+1)-A287468(A004442(n))`
-/

namespace A290232.P3612802096043179416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A287468 (A004442 n).toNat

end

end A290232.P3612802096043179416

namespace A290232

/-- `A000042(n+1)-A287468(A004442(n))` -/
def P3612802096043179416.Spec : Prop :=
  ∀ n, P3612802096043179416.a n = A290232 n

end A290232

/-! ## A290232.P12781276793646819093

`A287468(2*n)-A287468(A004442(n))`
-/

namespace A290232.P12781276793646819093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (2 * n) - A287468 (A004442 n).toNat

end

end A290232.P12781276793646819093

namespace A290232

/-- `A287468(2*n)-A287468(A004442(n))` -/
def P12781276793646819093.Spec : Prop :=
  ∀ n, P12781276793646819093.a n = A290232 n

end A290232

/-! ## A290232.P16065465327578842889

`A002275(n+1)-A002275(A142150(n+1))`
-/

namespace A290232.P16065465327578842889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (n + 1) - A002275 (A142150 (n + 1)).toNat

end

end A290232.P16065465327578842889

namespace A290232

/-- `A002275(n+1)-A002275(A142150(n+1))` -/
def P16065465327578842889.Spec : Prop :=
  ∀ n, P16065465327578842889.a n = A290232 n

end A290232

/-! ## A290232.P4779088503355799484

`A285541(n+1)%Δ[A002276(n)]`
-/

namespace A290232.P4779088503355799484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285541 (n + 1)) (f1 (n + 1) - f1 n)

end

end A290232.P4779088503355799484

namespace A290232

/-- `A285541(n+1)%Δ[A002276(n)]` -/
def P4779088503355799484.Spec : Prop :=
  ∀ n, P4779088503355799484.a n = A290232 n

end A290232

/-! ## A290232.P1304771285750067624

`A285541(n+1)-A011557(n+1)`
-/

namespace A290232.P1304771285750067624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285541 (n + 1) - A011557 (n + 1)

end

end A290232.P1304771285750067624

namespace A290232

/-- `A285541(n+1)-A011557(n+1)` -/
def P1304771285750067624.Spec : Prop :=
  ∀ n, P1304771285750067624.a n = A290232 n

end A290232

/-!
# A290233: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 773", based on the 5-celled von Neumann neighborhood.

The programs for A290233, the canonical program `A290233.P11962414555324344443` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290233 has offset 0).

The definition of A290233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290233.P11962414555324344443

`A081857(lcm(2, n+1))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A290233

/-- `A081857(lcm(2, n+1))` -/
def P11962414555324344443.Spec : Prop :=
  ∀ n, P11962414555324344443.a n = A290233 n

theorem P11962414555324344443.correct : P11962414555324344443.Spec := by
  intro n
  simp only [A290233]

end A290233

/-! ## A290233.P15719021088953528795

`A000042(gcd(n+1, ∑[n]))`
-/

namespace A290233.P15719021088953528795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A290233.P15719021088953528795

namespace A290233

/-- `A000042(gcd(n+1, ∑[n]))` -/
def P15719021088953528795.Spec : Prop :=
  ∀ n, P15719021088953528795.a n = A290233 n

end A290233

/-! ## A290233.P15860189326979781807

`A000042(floor(n/(n%2+1))+1)`
-/

namespace A290233.P15860189326979781807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (⌊(n : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)⌋ + 1).toNat

end

end A290233.P15860189326979781807

namespace A290233

/-- `A000042(floor(n/(n%2+1))+1)` -/
def P15860189326979781807.Spec : Prop :=
  ∀ n, P15860189326979781807.a n = A290233 n

end A290233

/-! ## A290233.P11018796853260748562

`A000042((∑[n]-1)%(n+1)+1)`
-/

namespace A290233.P11018796853260748562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 1 : ℤ) + 1).toNat

end

end A290233.P11018796853260748562

namespace A290233

/-- `A000042((∑[n]-1)%(n+1)+1)` -/
def P11018796853260748562.Spec : Prop :=
  ∀ n, P11018796853260748562.a n = A290233 n

end A290233

/-! ## A290233.P2263507114693039022

`A002275(lcm((n+1)/and(n+1, -(n+1)), (n+1)/∏{p}[n+1, #]))`
-/

namespace A290233.P2263507114693039022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))))

end

end A290233.P2263507114693039022

namespace A290233

/-- `A002275(lcm((n+1)/and(n+1, -(n+1)), (n+1)/∏{p}[n+1, #]))` -/
def P2263507114693039022.Spec : Prop :=
  ∀ n, P2263507114693039022.a n = A290233 n

end A290233

/-! ## A290233.P7718574005377195904

`A289404(A022998(n))`
-/

namespace A290233.P7718574005377195904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 (A022998 n).toNat

end

end A290233.P7718574005377195904

namespace A290233

/-- `A289404(A022998(n))` -/
def P7718574005377195904.Spec : Prop :=
  ∀ n, P7718574005377195904.a n = A290233 n

end A290233

/-! ## A290233.P12450480436172461596

`A289404(A257088(n))`
-/

namespace A290233.P12450480436172461596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 (A257088 n).toNat

end

end A290233.P12450480436172461596

namespace A290233

/-- `A289404(A257088(n))` -/
def P12450480436172461596.Spec : Prop :=
  ∀ n, P12450480436172461596.a n = A290233 n

end A290233

/-! ## A290233.P17599492444609725473

`A000042(Δ[A001318(n)])`
-/

namespace A290233.P17599492444609725473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (f1 (n + 1) - f1 n).toNat

end

end A290233.P17599492444609725473

namespace A290233

/-- `A000042(Δ[A001318(n)])` -/
def P17599492444609725473.Spec : Prop :=
  ∀ n, P17599492444609725473.a n = A290233 n

end A290233

/-! ## A290233.P12099117669928174545

`A002275(Δ[A001318(n)])`
-/

namespace A290233.P12099117669928174545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (f1 (n + 1) - f1 n).toNat

end

end A290233.P12099117669928174545

namespace A290233

/-- `A002275(Δ[A001318(n)])` -/
def P12099117669928174545.Spec : Prop :=
  ∀ n, P12099117669928174545.a n = A290233 n

end A290233

/-! ## A290233.P14988310876276558838

`A000042(Δ[A319390(n)])`
-/

namespace A290233.P14988310876276558838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (f1 (n + 1) - f1 n).toNat

end

end A290233.P14988310876276558838

namespace A290233

/-- `A000042(Δ[A319390(n)])` -/
def P14988310876276558838.Spec : Prop :=
  ∀ n, P14988310876276558838.a n = A290233 n

end A290233

/-! ## A290233.P4275209313803020512

`A002275(Δ[A319390(n)])`
-/

namespace A290233.P4275209313803020512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (f1 (n + 1) - f1 n).toNat

end

end A290233.P4275209313803020512

namespace A290233

/-- `A002275(Δ[A319390(n)])` -/
def P4275209313803020512.Spec : Prop :=
  ∀ n, P4275209313803020512.a n = A290233 n

end A290233

/-! ## A290233.P16451491389135798962

`A000042(A026741(n+1))`
-/

namespace A290233.P16451491389135798962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A026741 (n + 1)).toNat

end

end A290233.P16451491389135798962

namespace A290233

/-- `A000042(A026741(n+1))` -/
def P16451491389135798962.Spec : Prop :=
  ∀ n, P16451491389135798962.a n = A290233 n

end A290233

/-! ## A290233.P18336753013174533149

`A081857(A066043(n+1))`
-/

namespace A290233.P18336753013174533149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081857 (A066043 (n + 1)).toNat

end

end A290233.P18336753013174533149

namespace A290233

/-- `A081857(A066043(n+1))` -/
def P18336753013174533149.Spec : Prop :=
  ∀ n, P18336753013174533149.a n = A290233 n

end A290233

/-! ## A290233.P12889689042023546499

`A081857(A109043(n+1))`
-/

namespace A290233.P12889689042023546499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081857 (A109043 (n + 1)).toNat

end

end A290233.P12889689042023546499

namespace A290233

/-- `A081857(A109043(n+1))` -/
def P12889689042023546499.Spec : Prop :=
  ∀ n, P12889689042023546499.a n = A290233 n

end A290233

/-! ## A290233.P5552588887910891416

`A068995(A133090(n+1))`
-/

namespace A290233.P5552588887910891416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068995 (A133090 (n + 1)).toNat

end

end A290233.P5552588887910891416

namespace A290233

/-- `A068995(A133090(n+1))` -/
def P5552588887910891416.Spec : Prop :=
  ∀ n, P5552588887910891416.a n = A290233 n

end A290233

/-! ## A290233.P11524850553383148818

`A094026(or(1, A022998(n)))`
-/

namespace A290233.P11524850553383148818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (Int.lor 1 (A022998 n)).toNat

end

end A290233.P11524850553383148818

namespace A290233

/-- `A094026(or(1, A022998(n)))` -/
def P11524850553383148818.Spec : Prop :=
  ∀ n, P11524850553383148818.a n = A290233 n

end A290233

/-! ## A290233.P14687197029524877540

`A094026(A109043(n+1)-1)`
-/

namespace A290233.P14687197029524877540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094026 (A109043 (n + 1) - 1).toNat

end

end A290233.P14687197029524877540

namespace A290233

/-- `A094026(A109043(n+1)-1)` -/
def P14687197029524877540.Spec : Prop :=
  ∀ n, P14687197029524877540.a n = A290233 n

end A290233

/-! ## A290233.P8211105666565187059

`A289404(A059029(n+1)-2)`
-/

namespace A290233.P8211105666565187059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289404 (A059029 (n + 1) - 2).toNat

end

end A290233.P8211105666565187059

namespace A290233

/-- `A289404(A059029(n+1)-2)` -/
def P8211105666565187059.Spec : Prop :=
  ∀ n, P8211105666565187059.a n = A290233 n

end A290233

/-! ## A290233.P11768867066199833926

`A287468(A109043(n+1)-2)`
-/

namespace A290233.P11768867066199833926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287468 (A109043 (n + 1) - 2).toNat

end

end A290233.P11768867066199833926

namespace A290233

/-- `A287468(A109043(n+1)-2)` -/
def P11768867066199833926.Spec : Prop :=
  ∀ n, P11768867066199833926.a n = A290233 n

end A290233

/-! ## A290233.P17957716019277528344

`A068995(A114753(n+2)-2)`
-/

namespace A290233.P17957716019277528344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068995 (A114753 (n + 2) - 2).toNat

end

end A290233.P17957716019277528344

namespace A290233

/-- `A068995(A114753(n+2)-2)` -/
def P17957716019277528344.Spec : Prop :=
  ∀ n, P17957716019277528344.a n = A290233 n

end A290233

/-!
# A290234: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 773", based on the 5-celled von Neumann neighborhood.

The programs for A290234, the canonical program `A290234.P10245150171700326506` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290234 has offset 0).

The definition of A290234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290234.P1297205445225739244

`2^(n+1)-2^(∑[n]%(n+1))`
-/

namespace A290234.P1297205445225739244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - (2 ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) : ℤ)

end

end A290234.P1297205445225739244

namespace A290234

/-- `2^(n+1)-2^(∑[n]%(n+1))` -/
def P1297205445225739244.Spec : Prop :=
  ∀ n, P1297205445225739244.a n = A290234 n

end A290234

/-! ## A290234.P10245150171700326506

`2^(n+1)-A072345(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A290234

/-- `2^(n+1)-A072345(n)` -/
def P10245150171700326506.Spec : Prop :=
  ∀ n, P10245150171700326506.a n = A290234 n

theorem P10245150171700326506.correct : P10245150171700326506.Spec := by
  intro n
  simp only [A290234]

end A290234

/-! ## A290234.P16639222268497219334

`A281500(n)-A290235(n)`
-/

namespace A290234.P16639222268497219334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281500 n - A290235 n

end

end A290234.P16639222268497219334

namespace A290234

/-- `A281500(n)-A290235(n)` -/
def P16639222268497219334.Spec : Prop :=
  ∀ n, P16639222268497219334.a n = A290234 n

end A290234

/-! ## A290234.P5436933277531857920

`A072345(n)*A290235(n)`
-/

namespace A290234.P5436933277531857920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 n * A290235 n

end

end A290234.P5436933277531857920

namespace A290234

/-- `A072345(n)*A290235(n)` -/
def P5436933277531857920.Spec : Prop :=
  ∀ n, P5436933277531857920.a n = A290234 n

end A290234

/-! ## A290234.P16073494419694509134

`or(A077896(n), A122746(n))`
-/

namespace A290234.P16073494419694509134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A077896 n) (A122746 n)

end

end A290234.P16073494419694509134

namespace A290234

/-- `or(A077896(n), A122746(n))` -/
def P16073494419694509134.Spec : Prop :=
  ∀ n, P16073494419694509134.a n = A290234 n

end A290234

/-! ## A290234.P6181632391598348660

`or(A122746(n), A278755(n))`
-/

namespace A290234.P6181632391598348660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122746 n) (A278755 n)

end

end A290234.P6181632391598348660

namespace A290234

/-- `or(A122746(n), A278755(n))` -/
def P6181632391598348660.Spec : Prop :=
  ∀ n, P6181632391598348660.a n = A290234 n

end A290234

/-! ## A290234.P12963204370657792320

`or(A122746(n), A282414(n))`
-/

namespace A290234.P12963204370657792320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122746 n) (A282414 n)

end

end A290234.P12963204370657792320

namespace A290234

/-- `or(A122746(n), A282414(n))` -/
def P12963204370657792320.Spec : Prop :=
  ∀ n, P12963204370657792320.a n = A290234 n

end A290234

/-! ## A290234.P13919272857862694376

`or(A122746(n), A282417(n))`
-/

namespace A290234.P13919272857862694376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122746 n) (A282417 n)

end

end A290234.P13919272857862694376

namespace A290234

/-- `or(A122746(n), A282417(n))` -/
def P13919272857862694376.Spec : Prop :=
  ∀ n, P13919272857862694376.a n = A290234 n

end A290234

/-! ## A290234.P5416921064868712445

`or(A122746(n), A288663(n))`
-/

namespace A290234.P5416921064868712445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A122746 n) (A288663 n)

end

end A290234.P5416921064868712445

namespace A290234

/-- `or(A122746(n), A288663(n))` -/
def P5416921064868712445.Spec : Prop :=
  ∀ n, P5416921064868712445.a n = A290234 n

end A290234

/-! ## A290234.P16716685137719981613

`or(A279872(n), A279879(n))`
-/

namespace A290234.P16716685137719981613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A279872 n) (A279879 n)

end

end A290234.P16716685137719981613

namespace A290234

/-- `or(A279872(n), A279879(n))` -/
def P16716685137719981613.Spec : Prop :=
  ∀ n, P16716685137719981613.a n = A290234 n

end A290234

/-! ## A290234.P5107782178060244747

`∑[A052957(n)-A094024(n)]`
-/

namespace A290234.P5107782178060244747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052957 n - A094024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290234.P5107782178060244747

namespace A290234

/-- `∑[A052957(n)-A094024(n)]` -/
def P5107782178060244747.Spec : Prop :=
  ∀ n, P5107782178060244747.a n = A290234 n

end A290234

/-! ## A290234.P15966474478038636792

`A097038(n+1)+A000975(n)`
-/

namespace A290234.P15966474478038636792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097038 (n + 1) + A000975 n

end

end A290234.P15966474478038636792

namespace A290234

/-- `A097038(n+1)+A000975(n)` -/
def P15966474478038636792.Spec : Prop :=
  ∀ n, P15966474478038636792.a n = A290234 n

end A290234

/-! ## A290234.P6461079735646463589

`A208901(n+1)+A097110(n)`
-/

namespace A290234.P6461079735646463589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208901 (n + 1) + A097110 n

end

end A290234.P6461079735646463589

namespace A290234

/-- `A208901(n+1)+A097110(n)` -/
def P6461079735646463589.Spec : Prop :=
  ∀ n, P6461079735646463589.a n = A290234 n

end A290234

/-! ## A290234.P3399789755024161213

`and(-A072345(n), A000225(n+1))`
-/

namespace A290234.P3399789755024161213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A072345 n) (A000225 (n + 1))

end

end A290234.P3399789755024161213

namespace A290234

/-- `and(-A072345(n), A000225(n+1))` -/
def P3399789755024161213.Spec : Prop :=
  ∀ n, P3399789755024161213.a n = A290234 n

end A290234

/-! ## A290234.P16669664784323636029

`A052531(n+1)-A052552(n+1)`
-/

namespace A290234.P16669664784323636029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052531 (n + 1) - A052552 (n + 1)

end

end A290234.P16669664784323636029

namespace A290234

/-- `A052531(n+1)-A052552(n+1)` -/
def P16669664784323636029.Spec : Prop :=
  ∀ n, P16669664784323636029.a n = A290234 n

end A290234

/-! ## A290234.P16240046721143898218

`abs(A072345(2*n+1)-A072345(n))`
-/

namespace A290234.P16240046721143898218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A072345 (2 * n + 1) - A072345 n|

end

end A290234.P16240046721143898218

namespace A290234

/-- `abs(A072345(2*n+1)-A072345(n))` -/
def P16240046721143898218.Spec : Prop :=
  ∀ n, P16240046721143898218.a n = A290234 n

end A290234

/-! ## A290234.P11815047625935276905

`∑[A000079(n)]-(A131575(n+2)-n%2)`
-/

namespace A290234.P11815047625935276905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A131575 (n + 2) - ((n % 2 : ℕ) : ℤ))

end

end A290234.P11815047625935276905

namespace A290234

/-- `∑[A000079(n)]-(A131575(n+2)-n%2)` -/
def P11815047625935276905.Spec : Prop :=
  ∀ n, P11815047625935276905.a n = A290234 n

end A290234

/-! ## A290234.P14758267666637594161

`∑{d}[n+1, A092673(#)*A130887((n+1)/#)]`
-/

namespace A290234.P14758267666637594161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A092673 d * A130887 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A290234.P14758267666637594161

namespace A290234

/-- `∑{d}[n+1, A092673(#)*A130887((n+1)/#)]` -/
def P14758267666637594161.Spec : Prop :=
  ∀ n, P14758267666637594161.a n = A290234 n

end A290234

/-! ## A290234.P9723148431972112733

`∑{d}[n+1, A038199(#)*A059841((n+1)/#-1)]`
-/

namespace A290234.P9723148431972112733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038199 d * A059841 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A290234.P9723148431972112733

namespace A290234

/-- `∑{d}[n+1, A038199(#)*A059841((n+1)/#-1)]` -/
def P9723148431972112733.Spec : Prop :=
  ∀ n, P9723148431972112733.a n = A290234 n

end A290234

/-! ## A290234.P13969665131906552103

`∑{d}[n+1, A126646(#-1)*A154955((n+1)/#)]`
-/

namespace A290234.P13969665131906552103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A126646 (d - 1) * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A290234.P13969665131906552103

namespace A290234

/-- `∑{d}[n+1, A126646(#-1)*A154955((n+1)/#)]` -/
def P13969665131906552103.Spec : Prop :=
  ∀ n, P13969665131906552103.a n = A290234 n

end A290234

/-!
# A290235: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 773", based on the 5-celled von Neumann neighborhood.

The programs for A290235, the canonical program `A290235.P9278613562028619744` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290235 has offset 0).

The definition of A290235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290235.P17276733099531440101

`sqrt(2)^lcm(2, n+1)-1`
-/

namespace A290235.P17276733099531440101
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 : ℝ) ^ Nat.lcm 2 (n + 1) - 1

end

end A290235.P17276733099531440101

namespace A290235

/-- `sqrt(2)^lcm(2, n+1)-1` -/
def P17276733099531440101.Spec : Prop :=
  ∀ n, P17276733099531440101.a n = (A290235 n : ℝ)

end A290235

/-! ## A290235.P6172729011144161469

`2^gcd(n+1, ∑[n])-1`
-/

namespace A290235.P6172729011144161469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A290235.P6172729011144161469

namespace A290235

/-- `2^gcd(n+1, ∑[n])-1` -/
def P6172729011144161469.Spec : Prop :=
  ∀ n, P6172729011144161469.a n = A290235 n

end A290235

/-! ## A290235.P15004277079072326728

`sqrt(2*gcd(2, n))^(n+1)-1`
-/

namespace A290235.P15004277079072326728
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (2 * Nat.gcd 2 n : ℝ) ^ (n + 1) - 1

end

end A290235.P15004277079072326728

namespace A290235

/-- `sqrt(2*gcd(2, n))^(n+1)-1` -/
def P15004277079072326728.Spec : Prop :=
  ∀ n, P15004277079072326728.a n = (A290235 n : ℝ)

end A290235

/-! ## A290235.P7371184254101323587

`((-1)^n+3)^((n+1)/2)-1`
-/

namespace A290235.P7371184254101323587
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n + 3 : ℝ) ^ ((n + 1 : ℚ) / 2 : ℝ) - 1

end

end A290235.P7371184254101323587

namespace A290235

/-- `((-1)^n+3)^((n+1)/2)-1` -/
def P7371184254101323587.Spec : Prop :=
  ∀ n, P7371184254101323587.a n = (A290235 n : ℝ)

end A290235

/-! ## A290235.P9460980265837661652

`A387325(lcm(2, n+1))`
-/

namespace A290235.P9460980265837661652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387325 (Nat.lcm 2 (n + 1))

end

end A290235.P9460980265837661652

namespace A290235

/-- `A387325(lcm(2, n+1))` -/
def P9460980265837661652.Spec : Prop :=
  ∀ n, P9460980265837661652.a n = A290235 n

end A290235

/-! ## A290235.P9278613562028619744

`A052551(n*gcd(2, n))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A290235

/-- `A052551(n*gcd(2, n))` -/
def P9278613562028619744.Spec : Prop :=
  ∀ n, P9278613562028619744.a n = A290235 n

theorem P9278613562028619744.correct : P9278613562028619744.Spec := by
  intro n
  simp only [A290235]

end A290235

/-! ## A290235.P15323768642505730407

`A000225(gcd(n+1, ∑[n]))`
-/

namespace A290235.P15323768642505730407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A290235.P15323768642505730407

namespace A290235

/-- `A000225(gcd(n+1, ∑[n]))` -/
def P15323768642505730407.Spec : Prop :=
  ∀ n, P15323768642505730407.a n = A290235 n

end A290235

/-! ## A290235.P3245309160489241071

`(A285542(n+1)-1)/2`
-/

namespace A290235.P3245309160489241071
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285542 (n + 1) - 1 : ℚ) / 2

end

end A290235.P3245309160489241071

namespace A290235

/-- `(A285542(n+1)-1)/2` -/
def P3245309160489241071.Spec : Prop :=
  ∀ n, P3245309160489241071.a n = (A290235 n : ℚ)

end A290235

/-! ## A290235.P3247374345852512414

`A052551(A022998(n))`
-/

namespace A290235.P3247374345852512414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (A022998 n).toNat

end

end A290235.P3247374345852512414

namespace A290235

/-- `A052551(A022998(n))` -/
def P3247374345852512414.Spec : Prop :=
  ∀ n, P3247374345852512414.a n = A290235 n

end A290235

/-! ## A290235.P1716572496968186011

`A077885(A165355(n))`
-/

namespace A290235.P1716572496968186011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077885 (A165355 n).toNat

end

end A290235.P1716572496968186011

namespace A290235

/-- `A077885(A165355(n))` -/
def P1716572496968186011.Spec : Prop :=
  ∀ n, P1716572496968186011.a n = A290235 n

end A290235

/-! ## A290235.P12924269581803848206

`A052551(A257088(n))`
-/

namespace A290235.P12924269581803848206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (A257088 n).toNat

end

end A290235.P12924269581803848206

namespace A290235

/-- `A052551(A257088(n))` -/
def P12924269581803848206.Spec : Prop :=
  ∀ n, P12924269581803848206.a n = A290235 n

end A290235

/-! ## A290235.P8999335536393922877

`A000225(A026741(n+1))`
-/

namespace A290235.P8999335536393922877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A026741 (n + 1)).toNat

end

end A290235.P8999335536393922877

namespace A290235

/-- `A000225(A026741(n+1))` -/
def P8999335536393922877.Spec : Prop :=
  ∀ n, P8999335536393922877.a n = A290235 n

end A290235

/-! ## A290235.P1775927195223457987

`A052551(A133090(n+1))`
-/

namespace A290235.P1775927195223457987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 (A133090 (n + 1)).toNat

end

end A290235.P1775927195223457987

namespace A290235

/-- `A052551(A133090(n+1))` -/
def P1775927195223457987.Spec : Prop :=
  ∀ n, P1775927195223457987.a n = A290235 n

end A290235

/-! ## A290235.P14224274544231068074

`A126646(A065423(n+1))`
-/

namespace A290235.P14224274544231068074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (A065423 (n + 1)).toNat

end

end A290235.P14224274544231068074

namespace A290235

/-- `A126646(A065423(n+1))` -/
def P14224274544231068074.Spec : Prop :=
  ∀ n, P14224274544231068074.a n = A290235 n

end A290235

/-! ## A290235.P5240594166830290534

`A387325(A109043(n+1))`
-/

namespace A290235.P5240594166830290534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387325 (A109043 (n + 1)).toNat

end

end A290235.P5240594166830290534

namespace A290235

/-- `A387325(A109043(n+1))` -/
def P5240594166830290534.Spec : Prop :=
  ∀ n, P5240594166830290534.a n = A290235 n

end A290235

/-! ## A290235.P14200250557533309492

`A056508(A114753(n+2))`
-/

namespace A290235.P14200250557533309492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056508 (A114753 (n + 2)).toNat

end

end A290235.P14200250557533309492

namespace A290235

/-- `A056508(A114753(n+2))` -/
def P14200250557533309492.Spec : Prop :=
  ∀ n, P14200250557533309492.a n = A290235 n

end A290235

/-! ## A290235.P16365682534150541352

`A084181(n)*A094024(n)`
-/

namespace A290235.P16365682534150541352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084181 n * A094024 n

end

end A290235.P16365682534150541352

namespace A290235

/-- `A084181(n)*A094024(n)` -/
def P16365682534150541352.Spec : Prop :=
  ∀ n, P16365682534150541352.a n = A290235 n

end A290235

/-! ## A290235.P14109183756985346955

`A052551(n*A134451(n))`
-/

namespace A290235.P14109183756985346955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052551 ((n : ℤ) * A134451 n).toNat

end

end A290235.P14109183756985346955

namespace A290235

/-- `A052551(n*A134451(n))` -/
def P14109183756985346955.Spec : Prop :=
  ∀ n, P14109183756985346955.a n = A290235 n

end A290235

/-! ## A290235.P18391136235719116327

`A290234(n)/A072345(n)`
-/

namespace A290235.P18391136235719116327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290234 n : ℚ) / (A072345 n : ℚ)

end

end A290235.P18391136235719116327

namespace A290235

/-- `A290234(n)/A072345(n)` -/
def P18391136235719116327.Spec : Prop :=
  ∀ n, P18391136235719116327.a n = (A290235 n : ℚ)

end A290235

/-! ## A290235.P156567568088448239

`gcd(A126646(n), A290234(n))`
-/

namespace A290235.P156567568088448239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A126646 n) (A290234 n)

end

end A290235.P156567568088448239

namespace A290235

/-- `gcd(A126646(n), A290234(n))` -/
def P156567568088448239.Spec : Prop :=
  ∀ n, (P156567568088448239.a n : ℤ) = A290235 n

end A290235

/-!
# A290236: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 774", based on the 5-celled von Neumann neighborhood.

The programs for A290236, there is no canonical definition to state claims against.
-/

/-! ## A290236.P15402459856837024074

`A007088(A290238(n))`
-/

namespace A290236.P15402459856837024074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290238 n).toNat

end

end A290236.P15402459856837024074

/-! ## A290236.P11003025961035701101

`A185544(2*A290238(n))`
-/

namespace A290236.P11003025961035701101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290238 n).toNat

end

end A290236.P11003025961035701101

/-! ## A290236.P2165787651603585

`A185544(lcm(2, A290238(n)))`
-/

namespace A290236.P2165787651603585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A290238 n))

end

end A290236.P2165787651603585

/-!
# A290240: The number of unitary untouchable numbers <= 10^n.

The programs for A290240, there is no canonical definition to state claims against.
-/

/-! ## A290240.P484968669569920701

`∑[A151950(A152272(n+1))]+5`
-/

namespace A290240.P484968669569920701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 (A152272 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A290240.P484968669569920701

/-!
# A290241: Primes of the form 3^k - 8.

The programs for A290241, there is no canonical definition to state claims against.
-/

/-! ## A290241.P6056046113349198835

`3^A217135(n+1)-8`
-/

namespace A290241.P6056046113349198835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A217135 (n + 1) : ℤ) - 8

end

end A290241.P6056046113349198835

/-! ## A290241.P13193309893268874044

`A000244(A217135(n+1))-8`
-/

namespace A290241.P13193309893268874044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A217135 (n + 1)).toNat - 8

end

end A290241.P13193309893268874044

/-!
# A290243: Prime numbers of the form 3^k - 10.

The programs for A290243, there is no canonical definition to state claims against.
-/

/-! ## A290243.P948498659721884435

`3^A217347(n+1)-10`
-/

namespace A290243.P948498659721884435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A217347 (n + 1) : ℤ) - 10

end

end A290243.P948498659721884435

/-! ## A290243.P10609150244965907184

`A000244(A217347(n+1))-10`
-/

namespace A290243.P10609150244965907184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A217347 (n + 1)).toNat - 10

end

end A290243.P10609150244965907184

/-!
# A290244: Primes of the form 3^k - 14.

The programs for A290244, there is no canonical definition to state claims against.
-/

/-! ## A290244.P7138502667162748143

`3^A219038(n+1)-14`
-/

namespace A290244.P7138502667162748143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A219038 (n + 1) : ℤ) - 14

end

end A290244.P7138502667162748143

/-! ## A290244.P17692782591040475599

`A000244(A219038(n+1))-14`
-/

namespace A290244.P17692782591040475599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A219038 (n + 1)).toNat - 14

end

end A290244.P17692782591040475599

/-!
# A290246: Prime numbers that are common indices to both prime Lucas and prime Wagstaff numbers.

The programs for A290246, there is no canonical definition to state claims against.
-/

/-! ## A290246.P14147838748386578016

`∩[A000978(n+1), A001606(n+1)]`
-/

namespace A290246.P14147838748386578016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290246.P14147838748386578016

/-! ## A290246.P2424569610978077626

`∩[A000978(n+1), A059791(n+1)]`
-/

namespace A290246.P2424569610978077626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290246.P2424569610978077626

/-! ## A290246.P4242902259585628636

`∩[A001606(n+1), A066263(n+1)]`
-/

namespace A290246.P4242902259585628636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290246.P4242902259585628636

/-! ## A290246.P7702315069139869180

`∩[A001606(n+1), A073936(n+1)]`
-/

namespace A290246.P7702315069139869180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290246.P7702315069139869180

/-! ## A290246.P9492801786545772985

`∩[A001606(n+1), A092559(n+1)]`
-/

namespace A290246.P9492801786545772985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001606 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290246.P9492801786545772985

/-!
# A290247: Number of compositions (ordered partitions) of n^3 into cubes.

The programs for A290247, there is no canonical definition to state claims against.
-/

/-! ## A290247.P16377407860923092145

`A023358(A000578(n))`
-/

namespace A290247.P16377407860923092145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023358 (A000578 n).toNat

end

end A290247.P16377407860923092145

/-! ## A290247.P6390822398330797145

`A023358(n^3)`
-/

namespace A290247.P6390822398330797145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023358 (n ^ 3)

end

end A290247.P6390822398330797145

/-!
# A290248: Number of partitions of the n-th Lucas number into Lucas parts (beginning with 1) (A000204).

The programs for A290248, there is no canonical definition to state claims against.
-/

/-! ## A290248.P17867175458134184452

`A067592(A000204(n+1))`
-/

namespace A290248.P17867175458134184452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067592 (A000204 (n + 1)).toNat

end

end A290248.P17867175458134184452

/-! ## A290248.P217640652589210764

`A067592(round(ϕ^((n+1)%(n+1)²)))`
-/

namespace A290248.P217640652589210764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067592 (SequenceMachineLib.roundAway (Real.goldenRatio ^ ((n + 1) % (n + 1) ^ 2))).toNat

end

end A290248.P217640652589210764

/-! ## A290248.P2745467566682825099

`A067592(record[A000032(n)])`
-/

namespace A290248.P2745467566682825099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067592 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A290248.P2745467566682825099

/-! ## A290248.P12455633598512090009

`A067592(A000032(n+1))`
-/

namespace A290248.P12455633598512090009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067592 (A000032 (n + 1)).toNat

end

end A290248.P12455633598512090009

/-! ## A290248.P11334303777930636500

`A067592(A080023(n+1))`
-/

namespace A290248.P11334303777930636500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067592 (A080023 (n + 1)).toNat

end

end A290248.P11334303777930636500

/-!
# A290249: Numbers that are the sum of distinct primorial numbers (A002110) (not including 1).

The programs for A290249, there is no canonical definition to state claims against.
-/

/-! ## A290249.P9105129628231768407

`record[A328473(n+3)]`
-/

namespace A290249.P9105129628231768407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328473 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290249.P9105129628231768407

/-! ## A290249.P8120653793474889348

`A328462(n+2)-1`
-/

namespace A290249.P8120653793474889348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328462 (n + 2) - 1

end

end A290249.P8120653793474889348

/-! ## A290249.P18439767070468968716

`A276156(2*(n+1))`
-/

namespace A290249.P18439767070468968716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (2 * (n + 1))

end

end A290249.P18439767070468968716

/-! ## A290249.P1183014031706721704

`A328473(2*n+3)`
-/

namespace A290249.P1183014031706721704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328473 (2 * n + 3)

end

end A290249.P1183014031706721704

/-! ## A290249.P3210689274174554099

`record[A276156(abs(xor(n, -2)))]`
-/

namespace A290249.P3210689274174554099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 |Int.xor (n : ℤ) (-2)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290249.P3210689274174554099

/-! ## A290249.P10854480005336344225

`record[A328461(n+3)-1]`
-/

namespace A290249.P10854480005336344225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290249.P10854480005336344225

/-! ## A290249.P12000368551228589610

`∑[abs(Δ[A328462(n+1)])]`
-/

namespace A290249.P12000368551228589610
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328462 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290249.P12000368551228589610

/-! ## A290249.P14828300728950001188

`∑[abs(Δ[A276156(2*n)])]`
-/

namespace A290249.P14828300728950001188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276156 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290249.P14828300728950001188

/-! ## A290249.P9448730804829768759

`A328461(2*n+3)-1`
-/

namespace A290249.P9448730804829768759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328461 (2 * n + 3) - 1

end

end A290249.P9448730804829768759

/-! ## A290249.P948440181959300314

`2*eq[2, A328576(2*n)]`
-/

namespace A290249.P948440181959300314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328576 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290249.P948440181959300314

/-!
# A290251: a(n) is the number of parts in the integer partition having viabin number n.

The programs for A290251, the canonical program `A290251.P3763221582423427294` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290251 has offset 0).

The definition of A290251 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, A163511, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A290251.P9849885975404800565

`A001222(A366275(n))`
-/

namespace A290251.P9849885975404800565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A366275 n).toNat

end

end A290251.P9849885975404800565

namespace A290251

/-- `A001222(A366275(n))` -/
def P9849885975404800565.Spec : Prop :=
  ∀ n, P9849885975404800565.a n = A290251 n

end A290251

/-! ## A290251.P3763221582423427294

`A001222(A163511(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A290251

/-- `A001222(A163511(n))` -/
def P3763221582423427294.Spec : Prop :=
  ∀ n, P3763221582423427294.a n = A290251 n

theorem P3763221582423427294.correct : P3763221582423427294.Spec := by
  intro n
  simp only [A290251]

end A290251

/-! ## A290251.P11079439582889129837

`a(floor(n/2))+log2(gcd(2, n))` with `a(0)=0, a(1)=1`
-/

namespace A290251.P11079439582889129837
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A290251.P11079439582889129837

namespace A290251

/-- `a(floor(n/2))+log2(gcd(2, n))` -/
def P11079439582889129837.Spec : Prop :=
  ∀ n, P11079439582889129837.a n = (A290251 n : ℝ)

end A290251

/-! ## A290251.P6289053752764556357

`char[2*n]+a(floor(n/2))` with `a(0)=0, a(1)=1`
-/

namespace A290251.P6289053752764556357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a ⌊(n : ℚ) / 2⌋.toNat

end

end A290251.P6289053752764556357

namespace A290251

/-- `char[2*n]+a(floor(n/2))` -/
def P6289053752764556357.Spec : Prop :=
  ∀ n, (P6289053752764556357.a n : ℤ) = A290251 n

end A290251

/-! ## A290251.P10793058086243117695

`a(floor(n/2))+(n+1)%2` with `a(0)=0, a(1)=1`
-/

namespace A290251.P10793058086243117695
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + (n + 1) % 2

end

end A290251.P10793058086243117695

namespace A290251

/-- `a(floor(n/2))+(n+1)%2` -/
def P10793058086243117695.Spec : Prop :=
  ∀ n, (P10793058086243117695.a n : ℤ) = A290251 n

end A290251

/-! ## A290251.P9537203381462506525

`1-(n%2-a(floor(n/2)))` with `a(0)=0, a(1)=1`
-/

namespace A290251.P9537203381462506525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 - (((n % 2 : ℕ) : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A290251.P9537203381462506525

namespace A290251

/-- `1-(n%2-a(floor(n/2)))` -/
def P9537203381462506525.Spec : Prop :=
  ∀ n, P9537203381462506525.a n = A290251 n

end A290251

/-! ## A290251.P6726785806360233817

`a(floor(n/2))+and(1, n+1)` with `a(0)=0, a(1)=1`
-/

namespace A290251.P6726785806360233817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + Nat.land 1 (n + 1)

end

end A290251.P6726785806360233817

namespace A290251

/-- `a(floor(n/2))+and(1, n+1)` -/
def P6726785806360233817.Spec : Prop :=
  ∀ n, (P6726785806360233817.a n : ℤ) = A290251 n

end A290251

/-! ## A290251.P11644134216294548684

`a(floor(n/2))-(and(1, n)-1)` with `a(0)=0, a(1)=1`
-/

namespace A290251.P11644134216294548684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat - ((Nat.land 1 n : ℤ) - 1)

end

end A290251.P11644134216294548684

namespace A290251

/-- `a(floor(n/2))-(and(1, n)-1)` -/
def P11644134216294548684.Spec : Prop :=
  ∀ n, P11644134216294548684.a n = A290251 n

end A290251

/-! ## A290251.P6514067192163970637

`or(1, n)-(n-a(floor(n/2)))` with `a(0)=0, a(1)=1`
-/

namespace A290251.P6514067192163970637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Nat.lor 1 n : ℤ) - ((n : ℤ) - a ⌊(n : ℚ) / 2⌋.toNat)

end

end A290251.P6514067192163970637

namespace A290251

/-- `or(1, n)-(n-a(floor(n/2)))` -/
def P6514067192163970637.Spec : Prop :=
  ∀ n, P6514067192163970637.a n = A290251 n

end A290251

/-! ## A290251.P11608438032508015392

`a(floor(n/2))+val(n²+2, 2)` with `a(0)=0, a(1)=1`
-/

namespace A290251.P11608438032508015392
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat + SequenceMachineLib.valuation (n ^ 2 + 2) 2

end

end A290251.P11608438032508015392

namespace A290251

/-- `a(floor(n/2))+val(n²+2, 2)` -/
def P11608438032508015392.Spec : Prop :=
  ∀ n, (P11608438032508015392.a n : ℤ) = A290251 n

end A290251

/-! ## A290251.P6691685663670597094

`a(and((n+1)/and(n+1, -(n+1)), -2)/2)+1` with `a(0)=0`
-/

namespace A290251.P6691685663670597094
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (SequenceMachineLib.roundAway ((Int.land (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))) (-2) : ℚ) / 2)).toNat + 1

end

end A290251.P6691685663670597094

namespace A290251

/-- `a(and((n+1)/and(n+1, -(n+1)), -2)/2)+1` -/
def P6691685663670597094.Spec : Prop :=
  ∀ n, (P6691685663670597094.a n : ℤ) = A290251 n

end A290251

/-! ## A290251.P5036925041477514751

`log2(A267584(n))`
-/

namespace A290251.P5036925041477514751
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A267584 n : ℝ)

end

end A290251.P5036925041477514751

namespace A290251

/-- `log2(A267584(n))` -/
def P5036925041477514751.Spec : Prop :=
  ∀ n, P5036925041477514751.a n = (A290251 n : ℝ)

end A290251

/-! ## A290251.P3512287880541607874

`val(A329887(n), 2)`
-/

namespace A290251.P3512287880541607874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A329887 n).toNat 2

end

end A290251.P3512287880541607874

namespace A290251

/-- `val(A329887(n), 2)` -/
def P3512287880541607874.Spec : Prop :=
  ∀ n, (P3512287880541607874.a n : ℤ) = A290251 n

end A290251

/-! ## A290251.P15777095786148163842

`A008687(n+1)%(n+1)`
-/

namespace A290251.P15777095786148163842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008687 (n + 1)) (n + 1 : ℤ)

end

end A290251.P15777095786148163842

namespace A290251

/-- `A008687(n+1)%(n+1)` -/
def P15777095786148163842.Spec : Prop :=
  ∀ n, P15777095786148163842.a n = A290251 n

end A290251

/-! ## A290251.P16796249481175690947

`A233273(n)%(2*n+1)`
-/

namespace A290251.P16796249481175690947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233273 n) (2 * n + 1 : ℤ)

end

end A290251.P16796249481175690947

namespace A290251

/-- `A233273(n)%(2*n+1)` -/
def P16796249481175690947.Spec : Prop :=
  ∀ n, P16796249481175690947.a n = A290251 n

end A290251

/-! ## A290251.P7398414672687866780

`A065120(A073137(n))`
-/

namespace A290251.P7398414672687866780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A073137 n).toNat

end

end A290251.P7398414672687866780

namespace A290251

/-- `A065120(A073137(n))` -/
def P7398414672687866780.Spec : Prop :=
  ∀ n, P7398414672687866780.a n = A290251 n

end A290251

/-! ## A290251.P9437477317446997272

`A008687(A153152(n))`
-/

namespace A290251.P9437477317446997272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (A153152 n).toNat

end

end A290251.P9437477317446997272

namespace A290251

/-- `A008687(A153152(n))` -/
def P9437477317446997272.Spec : Prop :=
  ∀ n, P9437477317446997272.a n = A290251 n

end A290251

/-! ## A290251.P9700934258364484097

`A089263(n)+A008687(n)`
-/

namespace A290251.P9700934258364484097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 n + A008687 n

end

end A290251.P9700934258364484097

namespace A290251

/-- `A089263(n)+A008687(n)` -/
def P9700934258364484097.Spec : Prop :=
  ∀ n, P9700934258364484097.a n = A290251 n

end A290251

/-! ## A290251.P25360631508244907

`A080791(n)+A057427(n)`
-/

namespace A290251.P25360631508244907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n + A057427 n

end

end A290251.P25360631508244907

namespace A290251

/-- `A080791(n)+A057427(n)` -/
def P25360631508244907.Spec : Prop :=
  ∀ n, P25360631508244907.a n = A290251 n

end A290251

/-! ## A290251.P18277983961168667503

`A158388(n)+A023416(n)`
-/

namespace A290251.P18277983961168667503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A023416 n

end

end A290251.P18277983961168667503

namespace A290251

/-- `A158388(n)+A023416(n)` -/
def P18277983961168667503.Spec : Prop :=
  ∀ n, P18277983961168667503.a n = A290251 n

end A290251

/-!
# A290252: Number of standard tableaux of the integer partition having viabin number n.

The programs for A290252, there is no canonical definition to state claims against.
-/

/-! ## A290252.P18233160946857156228

`A153452(A005940(n+1))`
-/

namespace A290252.P18233160946857156228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (A005940 (n + 1)).toNat

end

end A290252.P18233160946857156228

/-! ## A290252.P6986781973526210509

`A153452(A337375(n)*A337376(n))`
-/

namespace A290252.P6986781973526210509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (A337375 n * A337376 n).toNat

end

end A290252.P6986781973526210509

/-! ## A290252.P14595486054914727409

`A153452(A340362(n+1)+A324106(n+1))`
-/

namespace A290252.P14595486054914727409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (A340362 (n + 1) + A324106 (n + 1)).toNat

end

end A290252.P14595486054914727409

/-! ## A290252.P737324385788322081

`A153452(A337375(2*n)*A337377(2*n))`
-/

namespace A290252.P737324385788322081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (A337375 (2 * n) * A337377 (2 * n)).toNat

end

end A290252.P737324385788322081

/-! ## A290252.P17986618098394868624

`A153452(A253563(n))`
-/

namespace A290252.P17986618098394868624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153452 (A253563 n).toNat

end

end A290252.P17986618098394868624

/-!
# A290253: Triangle read by rows. Row n consists of the parts, ordered nonincreasingly, of the integer partition having viabin number n.

The programs for A290253, there is no canonical definition to state claims against.
-/

/-! ## A290253.P9682931556077142517

`A097637(A048766(A008587(n)²))`
-/

namespace A290253.P9682931556077142517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097637 (A048766 (A008587 n ^ 2).toNat).toNat

end

end A290253.P9682931556077142517

/-! ## A290253.P7672350882550734950

`A334297(lt[A211100(n), A000120(n+3)])`
-/

namespace A290253.P7672350882550734950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334297 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A290253.P7672350882550734950

/-! ## A290253.P3025433925330557767

`A136568(or(A300719(n+1), A319142(n+1)))`
-/

namespace A290253.P3025433925330557767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136568 (Int.lor (A300719 (n + 1)) (A319142 (n + 1))).toNat

end

end A290253.P3025433925330557767

/-! ## A290253.P17967206921506255696

`A245563(lt[A245563(n), A276974(3*n+4)])`
-/

namespace A290253.P17967206921506255696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245563 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276974 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245563 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A290253.P17967206921506255696

/-! ## A290253.P14664519078112858841

`gcd(A305079(A057135(n+2)), A329295(n+1))`
-/

namespace A290253.P14664519078112858841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A305079 (A057135 (n + 2)).toNat) (A329295 (n + 1))

end

end A290253.P14664519078112858841

/-!
# A290254: The viabin numbers of the self-conjugate integer partitions.

The programs for A290254, the canonical program `A290254.P4242582675085589106` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290254 has offset 1).

The definition of A290254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290254.P4242582675085589106

`A035928(n%a(n-1))/2` with `a(0)=0, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A290254

/-- `A035928(n%a(n-1))/2` -/
def P4242582675085589106.Spec : Prop :=
  ∀ n, P4242582675085589106.a n = (A290254 (n + 1) : ℚ)

end A290254

/-! ## A290254.P7328017388705529200

`A014682(xor(3*A048702(n), A003817(n)))`
-/

namespace A290254.P7328017388705529200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.xor (3 * A048702 n) (A003817 n)).toNat

end

end A290254.P7328017388705529200

namespace A290254

/-- `A014682(xor(3*A048702(n), A003817(n)))` -/
def P7328017388705529200.Spec : Prop :=
  ∀ n, P7328017388705529200.a n = A290254 (n + 1)

end A290254

/-! ## A290254.P11916984531752237833

`eq[0, A175920(2*n)]`
-/

namespace A290254.P11916984531752237833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175920 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290254.P11916984531752237833

namespace A290254

/-- `eq[0, A175920(2*n)]` -/
def P11916984531752237833.Spec : Prop :=
  ∀ n, (P11916984531752237833.a n : ℤ) = A290254 (n + 1)

end A290254

/-! ## A290254.P12112968169614590594

`lt[A175920(n), 1]/2`
-/

namespace A290254.P12112968169614590594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175920 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℚ) / 2

end

end A290254.P12112968169614590594

namespace A290254

/-- `lt[A175920(n), 1]/2` -/
def P12112968169614590594.Spec : Prop :=
  ∀ n, P12112968169614590594.a n = (A290254 (n + 1) : ℚ)

end A290254

/-! ## A290254.P1030518184849979992

`eq[2*n+1, A345401(n)]`
-/

namespace A290254.P1030518184849979992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290254.P1030518184849979992

namespace A290254

/-- `eq[2*n+1, A345401(n)]` -/
def P1030518184849979992.Spec : Prop :=
  ∀ n, (P1030518184849979992.a n : ℤ) = A290254 (n + 1)

end A290254

/-! ## A290254.P6864761483754611855

`eq[A030101(n), A261693(n)]`
-/

namespace A290254.P6864761483754611855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261693 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290254.P6864761483754611855

namespace A290254

/-- `eq[A030101(n), A261693(n)]` -/
def P6864761483754611855.Spec : Prop :=
  ∀ n, (P6864761483754611855.a n : ℤ) = A290254 (n + 1)

end A290254

/-! ## A290254.P16769838803309406959

`eq[A006068(n), A335858(n)]`
-/

namespace A290254.P16769838803309406959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335858 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290254.P16769838803309406959

namespace A290254

/-- `eq[A006068(n), A335858(n)]` -/
def P16769838803309406959.Spec : Prop :=
  ∀ n, (P16769838803309406959.a n : ℤ) = A290254 (n + 1)

end A290254

/-! ## A290254.P3400716756728830845

`eq[A163511(n), A253565(n)]`
-/

namespace A290254.P3400716756728830845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163511 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290254.P3400716756728830845

namespace A290254

/-- `eq[A163511(n), A253565(n)]` -/
def P3400716756728830845.Spec : Prop :=
  ∀ n, (P3400716756728830845.a n : ℤ) = A290254 (n + 1)

end A290254

/-! ## A290254.P7653973044967981110

`eq[A180200(n), A341916(n)]`
-/

namespace A290254.P7653973044967981110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341916 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290254.P7653973044967981110

namespace A290254

/-- `eq[A180200(n), A341916(n)]` -/
def P7653973044967981110.Spec : Prop :=
  ∀ n, (P7653973044967981110.a n : ℤ) = A290254 (n + 1)

end A290254

/-! ## A290254.P9316971727202823263

`eq[A231550(n), A341915(n)]`
-/

namespace A290254.P9316971727202823263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231550 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341915 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290254.P9316971727202823263

namespace A290254

/-- `eq[A231550(n), A341915(n)]` -/
def P9316971727202823263.Spec : Prop :=
  ∀ n, (P9316971727202823263.a n : ℤ) = A290254 (n + 1)

end A290254

/-! ## A290254.P13335477191523451182

`eq[1, A036987(A175919(2*n))]`
-/

namespace A290254.P13335477191523451182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A175919 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290254.P13335477191523451182

namespace A290254

/-- `eq[1, A036987(A175919(2*n))]` -/
def P13335477191523451182.Spec : Prop :=
  ∀ n, (P13335477191523451182.a n : ℤ) = A290254 (n + 1)

end A290254

/-! ## A290254.P5434163987776752542

`eq[1, A036987(A055944(n)+n)]`
-/

namespace A290254.P5434163987776752542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A055944 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290254.P5434163987776752542

namespace A290254

/-- `eq[1, A036987(A055944(n)+n)]` -/
def P5434163987776752542.Spec : Prop :=
  ∀ n, (P5434163987776752542.a n : ℤ) = A290254 (n + 1)

end A290254

/-! ## A290254.P15459795714004593158

`eq[A005940(n+1), A253563(n)]`
-/

namespace A290254.P15459795714004593158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253563 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290254.P15459795714004593158

namespace A290254

/-- `eq[A005940(n+1), A253563(n)]` -/
def P15459795714004593158.Spec : Prop :=
  ∀ n, (P15459795714004593158.a n : ℤ) = A290254 (n + 1)

end A290254

/-! ## A290254.P12449809599141835628

`eq[A175917(n)², A175920(n)]/2`
-/

namespace A290254.P12449809599141835628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175917 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175920 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A290254.P12449809599141835628

namespace A290254

/-- `eq[A175917(n)², A175920(n)]/2` -/
def P12449809599141835628.Spec : Prop :=
  ∀ n, P12449809599141835628.a n = (A290254 (n + 1) : ℚ)

end A290254

/-! ## A290254.P7347758522758614269

`record[n/(A006257(n)-A036044(n))]`
-/

namespace A290254.P7347758522758614269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A006257 n - A036044 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290254.P7347758522758614269

namespace A290254

/-- `record[n/(A006257(n)-A036044(n))]` -/
def P7347758522758614269.Spec : Prop :=
  ∀ n, P7347758522758614269.a n = (A290254 (n + 1) : ℚ)

end A290254

/-! ## A290254.P4850703759586074027

`eq[A002487(n+1), A007305(n+1)]`
-/

namespace A290254.P4850703759586074027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290254.P4850703759586074027

namespace A290254

/-- `eq[A002487(n+1), A007305(n+1)]` -/
def P4850703759586074027.Spec : Prop :=
  ∀ n, (P4850703759586074027.a n : ℤ) = A290254 (n + 1)

end A290254

/-! ## A290254.P7204467329043063581

`eq[A145342(n+1), A337909(n+1)]`
-/

namespace A290254.P7204467329043063581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337909 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290254.P7204467329043063581

namespace A290254

/-- `eq[A145342(n+1), A337909(n+1)]` -/
def P7204467329043063581.Spec : Prop :=
  ∀ n, (P7204467329043063581.a n : ℤ) = A290254 (n + 1)

end A290254

/-! ## A290254.P4075769308520571307

`eq[n, A234024(A234027(A234024(n)))]`
-/

namespace A290254.P4075769308520571307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234024 (A234027 (A234024 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290254.P4075769308520571307

namespace A290254

/-- `eq[n, A234024(A234027(A234024(n)))]` -/
def P4075769308520571307.Spec : Prop :=
  ∀ n, (P4075769308520571307.a n : ℤ) = A290254 (n + 1)

end A290254

/-!
# A290255: Number of 0's following directly the first 1 in the binary representation of n.

The programs for A290255, the canonical program `A290255.P12137032171756849024` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290255 has offset 1).

The definition of A290255 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290255.P16577242446369619209

`val(A059893(n+1), 2)`
-/

namespace A290255.P16577242446369619209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A059893 (n + 1)).toNat 2

end

end A290255.P16577242446369619209

namespace A290255

/-- `val(A059893(n+1), 2)` -/
def P16577242446369619209.Spec : Prop :=
  ∀ n, (P16577242446369619209.a n : ℤ) = A290255 (n + 1)

end A290255

/-! ## A290255.P17055948643657657200

`val(A139708(n+1), 2)`
-/

namespace A290255.P17055948643657657200
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A139708 (n + 1)).toNat 2

end

end A290255.P17055948643657657200

namespace A290255

/-- `val(A139708(n+1), 2)` -/
def P17055948643657657200.Spec : Prop :=
  ∀ n, (P17055948643657657200.a n : ℤ) = A290255 (n + 1)

end A290255

/-! ## A290255.P4256889844226880724

`val(A139709(n+1), 2)`
-/

namespace A290255.P4256889844226880724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A139709 (n + 1)).toNat 2

end

end A290255.P4256889844226880724

namespace A290255

/-- `val(A139709(n+1), 2)` -/
def P4256889844226880724.Spec : Prop :=
  ∀ n, (P4256889844226880724.a n : ℤ) = A290255 (n + 1)

end A290255

/-! ## A290255.P11839933271735156376

`val(A304624(n+1), 2)`
-/

namespace A290255.P11839933271735156376
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A304624 (n + 1)).toNat 2

end

end A290255.P11839933271735156376

namespace A290255

/-- `val(A304624(n+1), 2)` -/
def P11839933271735156376.Spec : Prop :=
  ∀ n, (P11839933271735156376.a n : ℤ) = A290255 (n + 1)

end A290255

/-! ## A290255.P3742075317743858819

`val(A366275(n+2), 3)`
-/

namespace A290255.P3742075317743858819
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A366275 (n + 2)).toNat 3

end

end A290255.P3742075317743858819

namespace A290255

/-- `val(A366275(n+2), 3)` -/
def P3742075317743858819.Spec : Prop :=
  ∀ n, (P3742075317743858819.a n : ℤ) = A290255 (n + 1)

end A290255

/-! ## A290255.P12137032171756849024

`val(A057335(n+1), 2)-1`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A290255

/-- `val(A057335(n+1), 2)-1` -/
def P12137032171756849024.Spec : Prop :=
  ∀ n, P12137032171756849024.a n = A290255 (n + 1)

theorem P12137032171756849024.correct : P12137032171756849024.Spec := by
  intro n
  simp only [A290255, Nat.add_sub_cancel]

end A290255

/-! ## A290255.P3504477544677430510

`A007814(A304624(n+1))`
-/

namespace A290255.P3504477544677430510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A304624 (n + 1)).toNat

end

end A290255.P3504477544677430510

namespace A290255

/-- `A007814(A304624(n+1))` -/
def P3504477544677430510.Spec : Prop :=
  ∀ n, P3504477544677430510.a n = A290255 (n + 1)

end A290255

/-! ## A290255.P3406616138052792383

`A090996(A122155(n+2))-1`
-/

namespace A290255.P3406616138052792383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A122155 (n + 2)).toNat - 1

end

end A290255.P3406616138052792383

namespace A290255

/-- `A090996(A122155(n+2))-1` -/
def P3406616138052792383.Spec : Prop :=
  ∀ n, P3406616138052792383.a n = A290255 (n + 1)

end A290255

/-! ## A290255.P5757466247949698886

`A007814(A036044(n+1)/2+1)`
-/

namespace A290255.P5757466247949698886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A036044 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A290255.P5757466247949698886

namespace A290255

/-- `A007814(A036044(n+1)/2+1)` -/
def P5757466247949698886.Spec : Prop :=
  ∀ n, P5757466247949698886.a n = A290255 (n + 1)

end A290255

/-! ## A290255.P10135503168991081809

`A000120(n+1-A053642(n+1))`
-/

namespace A290255.P10135503168991081809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n + 1 : ℤ) - A053642 (n + 1)).toNat

end

end A290255.P10135503168991081809

namespace A290255

/-- `A000120(n+1-A053642(n+1))` -/
def P10135503168991081809.Spec : Prop :=
  ∀ n, P10135503168991081809.a n = A290255 (n + 1)

end A290255

/-! ## A290255.P16665937903515118105

`A007814(n+1)-A358135(n+1)`
-/

namespace A290255.P16665937903515118105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) - A358135 (n + 1)

end

end A290255.P16665937903515118105

namespace A290255

/-- `A007814(n+1)-A358135(n+1)` -/
def P16665937903515118105.Spec : Prop :=
  ∀ n, P16665937903515118105.a n = A290255 (n + 1)

end A290255

/-! ## A290255.P11815897090291728444

`A000523(n+1)-A000523(A006257(n+1))`
-/

namespace A290255.P11815897090291728444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) - A000523 (A006257 (n + 1)).toNat

end

end A290255.P11815897090291728444

namespace A290255

/-- `A000523(n+1)-A000523(A006257(n+1))` -/
def P11815897090291728444.Spec : Prop :=
  ∀ n, P11815897090291728444.a n = A290255 (n + 1)

end A290255

/-! ## A290255.P7674839020656544287

`A000120(n+1-A038572(A006257(n+1)))`
-/

namespace A290255.P7674839020656544287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 ((n + 1 : ℤ) - A038572 (A006257 (n + 1)).toNat).toNat

end

end A290255.P7674839020656544287

namespace A290255

/-- `A000120(n+1-A038572(A006257(n+1)))` -/
def P7674839020656544287.Spec : Prop :=
  ∀ n, P7674839020656544287.a n = A290255 (n + 1)

end A290255

/-! ## A290255.P1829861385141968545

`A023416(n+1)-A023416(A006257(n+1))`
-/

namespace A290255.P1829861385141968545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (n + 1) - A023416 (A006257 (n + 1)).toNat

end

end A290255.P1829861385141968545

namespace A290255

/-- `A023416(n+1)-A023416(A006257(n+1))` -/
def P1829861385141968545.Spec : Prop :=
  ∀ n, P1829861385141968545.a n = A290255 (n + 1)

end A290255

/-! ## A290255.P5992920795754716395

`A029837(n+1)-A029837(A006257(n+1))`
-/

namespace A290255.P5992920795754716395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (n + 1) - A029837 (A006257 (n + 1)).toNat

end

end A290255.P5992920795754716395

namespace A290255

/-- `A029837(n+1)-A029837(A006257(n+1))` -/
def P5992920795754716395.Spec : Prop :=
  ∀ n, P5992920795754716395.a n = A290255 (n + 1)

end A290255

/-! ## A290255.P4505692919687576827

`A080791(n+1)-A080791(A006257(n+1))`
-/

namespace A290255.P4505692919687576827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 (n + 1) - A080791 (A006257 (n + 1)).toNat

end

end A290255.P4505692919687576827

namespace A290255

/-- `A080791(n+1)-A080791(A006257(n+1))` -/
def P4505692919687576827.Spec : Prop :=
  ∀ n, P4505692919687576827.a n = A290255 (n + 1)

end A290255

/-! ## A290255.P6323463666450833098

`A145037(A006257(n+1))-A145037(n+1)`
-/

namespace A290255.P6323463666450833098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145037 (A006257 (n + 1)).toNat - A145037 (n + 1)

end

end A290255.P6323463666450833098

namespace A290255

/-- `A145037(A006257(n+1))-A145037(n+1)` -/
def P6323463666450833098.Spec : Prop :=
  ∀ n, P6323463666450833098.a n = A290255 (n + 1)

end A290255

/-! ## A290255.P5368710756831147620

`A065120(n+1)-1`
-/

namespace A290255.P5368710756831147620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (n + 1) - 1

end

end A290255.P5368710756831147620

namespace A290255

/-- `A065120(n+1)-1` -/
def P5368710756831147620.Spec : Prop :=
  ∀ n, P5368710756831147620.a n = A290255 (n + 1)

end A290255

/-! ## A290255.P3759324738042216328

`A090996(A006068(n+1))-1`
-/

namespace A290255.P3759324738042216328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A006068 (n + 1)).toNat - 1

end

end A290255.P3759324738042216328

namespace A290255

/-- `A090996(A006068(n+1))-1` -/
def P3759324738042216328.Spec : Prop :=
  ∀ n, P3759324738042216328.a n = A290255 (n + 1)

end A290255

/-! ## A290255.P4490963053919730723

`A090996(A268716(n+1))-1`
-/

namespace A290255.P4490963053919730723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A268716 (n + 1)).toNat - 1

end

end A290255.P4490963053919730723

namespace A290255

/-- `A090996(A268716(n+1))-1` -/
def P4490963053919730723.Spec : Prop :=
  ∀ n, P4490963053919730723.a n = A290255 (n + 1)

end A290255

/-!
# A290256: a(n) is the number of parts equal to 1 in the integer partition having viabin number n.

The programs for A290256, the canonical program `A290256.P5412785612567679480` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290256 has offset 1).

The definition of A290256 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A290255, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A290256.P5412785612567679480

`A290255(2*(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A290256

/-- `A290255(2*(n+1))` -/
def P5412785612567679480.Spec : Prop :=
  ∀ n, P5412785612567679480.a n = A290256 (n + 1)

theorem P5412785612567679480.correct : P5412785612567679480.Spec := by
  intro n
  simp only [A290256, Nat.add_sub_cancel]

end A290256

/-! ## A290256.P15458302264415656203

`val(A209636(n+1), 2)`
-/

namespace A290256.P15458302264415656203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A209636 (n + 1)).toNat 2

end

end A290256.P15458302264415656203

namespace A290256

/-- `val(A209636(n+1), 2)` -/
def P15458302264415656203.Spec : Prop :=
  ∀ n, (P15458302264415656203.a n : ℤ) = A290256 (n + 1)

end A290256

/-! ## A290256.P1596887424914743631

`val(A253563(n+1), 2)`
-/

namespace A290256.P1596887424914743631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A253563 (n + 1)).toNat 2

end

end A290256.P1596887424914743631

namespace A290256

/-- `val(A253563(n+1), 2)` -/
def P1596887424914743631.Spec : Prop :=
  ∀ n, (P1596887424914743631.a n : ℤ) = A290256 (n + 1)

end A290256

/-! ## A290256.P13073178756345546068

`A065120(2*(n+1))-1`
-/

namespace A290256.P13073178756345546068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (2 * (n + 1)) - 1

end

end A290256.P13073178756345546068

namespace A290256

/-- `A065120(2*(n+1))-1` -/
def P13073178756345546068.Spec : Prop :=
  ∀ n, P13073178756345546068.a n = A290256 (n + 1)

end A290256

/-! ## A290256.P10566134772595681623

`val(A059894(n+1)+1, 2)`
-/

namespace A290256.P10566134772595681623
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A059894 (n + 1) + 1).toNat 2

end

end A290256.P10566134772595681623

namespace A290256

/-- `val(A059894(n+1)+1, 2)` -/
def P10566134772595681623.Spec : Prop :=
  ∀ n, (P10566134772595681623.a n : ℤ) = A290256 (n + 1)

end A290256

/-! ## A290256.P8347368540885246387

`val(A059893(2*(n+1)), 2)`
-/

namespace A290256.P8347368540885246387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A059893 (2 * (n + 1))).toNat 2

end

end A290256.P8347368540885246387

namespace A290256

/-- `val(A059893(2*(n+1)), 2)` -/
def P8347368540885246387.Spec : Prop :=
  ∀ n, (P8347368540885246387.a n : ℤ) = A290256 (n + 1)

end A290256

/-! ## A290256.P2620050260526777769

`val(A139708(2*(n+1)), 2)`
-/

namespace A290256.P2620050260526777769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A139708 (2 * (n + 1))).toNat 2

end

end A290256.P2620050260526777769

namespace A290256

/-- `val(A139708(2*(n+1)), 2)` -/
def P2620050260526777769.Spec : Prop :=
  ∀ n, (P2620050260526777769.a n : ℤ) = A290256 (n + 1)

end A290256

/-! ## A290256.P7633537519081036865

`val(A139709(2*(n+1)), 2)`
-/

namespace A290256.P7633537519081036865
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A139709 (2 * (n + 1))).toNat 2

end

end A290256.P7633537519081036865

namespace A290256

/-- `val(A139709(2*(n+1)), 2)` -/
def P7633537519081036865.Spec : Prop :=
  ∀ n, (P7633537519081036865.a n : ℤ) = A290256 (n + 1)

end A290256

/-! ## A290256.P5255551968539256624

`val(A304624(2*(n+1)), 2)`
-/

namespace A290256.P5255551968539256624
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A304624 (2 * (n + 1))).toNat 2

end

end A290256.P5255551968539256624

namespace A290256

/-- `val(A304624(2*(n+1)), 2)` -/
def P5255551968539256624.Spec : Prop :=
  ∀ n, (P5255551968539256624.a n : ℤ) = A290256 (n + 1)

end A290256

/-! ## A290256.P17015317845710685998

`val(A057335(2*(n+1)), 2)-1`
-/

namespace A290256.P17015317845710685998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A057335 (2 * (n + 1))).toNat 2 : ℤ) - 1

end

end A290256.P17015317845710685998

namespace A290256

/-- `val(A057335(2*(n+1)), 2)-1` -/
def P17015317845710685998.Spec : Prop :=
  ∀ n, P17015317845710685998.a n = A290256 (n + 1)

end A290256

/-!
# A290257: a(n) is the size of the Durfee square of the integer partition having viabin number n.

The programs for A290257, the canonical program `A290257.P10947685291748395` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290257 has offset 1).

The definition of A290257 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290257.P10947685291748395

`A037870(2*(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A290257

/-- `A037870(2*(n+1))` -/
def P10947685291748395.Spec : Prop :=
  ∀ n, P10947685291748395.a n = A290257 (n + 1)

theorem P10947685291748395.correct : P10947685291748395.Spec := by
  intro n
  simp only [A290257, Nat.add_sub_cancel]

end A290257

/-! ## A290257.P8530589567426104399

`dr(A037870(n+2+n))`
-/

namespace A290257.P8530589567426104399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A037870 (n + 2 + n))

end

end A290257.P8530589567426104399

namespace A290257

/-- `dr(A037870(n+2+n))` -/
def P8530589567426104399.Spec : Prop :=
  ∀ n, (P8530589567426104399.a n : ℤ) = A290257 (n + 1)

end A290257

/-! ## A290257.P6057015947073750312

`A037879(xor(n+1, 2^floor(log2(n+1))-1))+1`
-/

namespace A290257.P6057015947073750312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037879 (Int.xor (n + 1 : ℤ) ((2 ^ Nat.log 2 (n + 1) : ℤ) - 1)).toNat + 1

end

end A290257.P6057015947073750312

namespace A290257

/-- `A037879(xor(n+1, 2^floor(log2(n+1))-1))+1` -/
def P6057015947073750312.Spec : Prop :=
  ∀ n, P6057015947073750312.a n = A290257 (n + 1)

end A290257

/-! ## A290257.P2261930658828416396

`A060128(A276083(n+1))`
-/

namespace A290257.P2261930658828416396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060128 (A276083 (n + 1)).toNat

end

end A290257.P2261930658828416396

namespace A290257

/-- `A060128(A276083(n+1))` -/
def P2261930658828416396.Spec : Prop :=
  ∀ n, P2261930658828416396.a n = A290257 (n + 1)

end A290257

/-! ## A290257.P13804058432701756725

`A069010(A153141(n+2))`
-/

namespace A290257.P13804058432701756725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A153141 (n + 2)).toNat

end

end A290257.P13804058432701756725

namespace A290257

/-- `A069010(A153141(n+2))` -/
def P13804058432701756725.Spec : Prop :=
  ∀ n, P13804058432701756725.a n = A290257 (n + 1)

end A290257

/-! ## A290257.P4395860123872840585

`A257990(A005940(n+2))`
-/

namespace A290257.P4395860123872840585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257990 (A005940 (n + 2)).toNat

end

end A290257.P4395860123872840585

namespace A290257

/-- `A257990(A005940(n+2))` -/
def P4395860123872840585.Spec : Prop :=
  ∀ n, P4395860123872840585.a n = A290257 (n + 1)

end A290257

/-! ## A290257.P18036941284382433599

`A001221(A286596(n+2))`
-/

namespace A290257.P18036941284382433599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A286596 (n + 2)).toNat

end

end A290257.P18036941284382433599

namespace A290257

/-- `A001221(A286596(n+2))` -/
def P18036941284382433599.Spec : Prop :=
  ∀ n, P18036941284382433599.a n = A290257 (n + 1)

end A290257

/-! ## A290257.P16596868634724068462

`and(3, A037870(Δ[A027691(n)]))`
-/

namespace A290257.P16596868634724068462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A037870 (f1 (n + 1) - f1 n).toNat)

end

end A290257.P16596868634724068462

namespace A290257

/-- `and(3, A037870(Δ[A027691(n)]))` -/
def P16596868634724068462.Spec : Prop :=
  ∀ n, P16596868634724068462.a n = A290257 (n + 1)

end A290257

/-! ## A290257.P4834425436404747042

`A037871(A089118(n+1)+1)`
-/

namespace A290257.P4834425436404747042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037871 (A089118 (n + 1) + 1).toNat

end

end A290257.P4834425436404747042

namespace A290257

/-- `A037871(A089118(n+1)+1)` -/
def P4834425436404747042.Spec : Prop :=
  ∀ n, P4834425436404747042.a n = A290257 (n + 1)

end A290257

/-! ## A290257.P2906566446639422930

`A037879(A165789(2*(n+1)))`
-/

namespace A290257.P2906566446639422930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037879 (A165789 (2 * (n + 1))).toNat

end

end A290257.P2906566446639422930

namespace A290257

/-- `A037879(A165789(2*(n+1)))` -/
def P2906566446639422930.Spec : Prop :=
  ∀ n, P2906566446639422930.a n = A290257 (n + 1)

end A290257

/-! ## A290257.P9101504460308970449

`∑{p}[A286596(n+2), A001222(#)]`
-/

namespace A290257.P9101504460308970449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286596 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A290257.P9101504460308970449

namespace A290257

/-- `∑{p}[A286596(n+2), A001222(#)]` -/
def P9101504460308970449.Spec : Prop :=
  ∀ n, P9101504460308970449.a n = A290257 (n + 1)

end A290257

/-! ## A290257.P15686139501347430447

`∑{p}[A286596(n+2), A007318(#)]`
-/

namespace A290257.P15686139501347430447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286596 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A007318 p

end

end A290257.P15686139501347430447

namespace A290257

/-- `∑{p}[A286596(n+2), A007318(#)]` -/
def P15686139501347430447.Spec : Prop :=
  ∀ n, P15686139501347430447.a n = A290257 (n + 1)

end A290257

/-! ## A290257.P584262297619967130

`A001222(∏{p}[A286596(n+2), #])`
-/

namespace A290257.P584262297619967130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286596 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A290257.P584262297619967130

namespace A290257

/-- `A001222(∏{p}[A286596(n+2), #])` -/
def P584262297619967130.Spec : Prop :=
  ∀ n, P584262297619967130.a n = A290257 (n + 1)

end A290257

/-! ## A290257.P3742217415176579241

`gcd(A000038(n), A037870(n+2+n))`
-/

namespace A290257.P3742217415176579241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A037870 (n + 2 + n))

end

end A290257.P3742217415176579241

namespace A290257

/-- `gcd(A000038(n), A037870(n+2+n))` -/
def P3742217415176579241.Spec : Prop :=
  ∀ n, (P3742217415176579241.a n : ℤ) = A290257 (n + 1)

end A290257

/-! ## A290257.P13233963518876641449

`and(Δ[A004442(n)], A037870(n+2+n))`
-/

namespace A290257.P13233963518876641449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A037870 (n + 2 + n))

end

end A290257.P13233963518876641449

namespace A290257

/-- `and(Δ[A004442(n)], A037870(n+2+n))` -/
def P13233963518876641449.Spec : Prop :=
  ∀ n, P13233963518876641449.a n = A290257 (n + 1)

end A290257

/-! ## A290257.P10135680866892501581

`A037870(n+2+n)+A000038(n+1)`
-/

namespace A290257.P10135680866892501581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037870 (n + 2 + n) + A000038 (n + 1)

end

end A290257.P10135680866892501581

namespace A290257

/-- `A037870(n+2+n)+A000038(n+1)` -/
def P10135680866892501581.Spec : Prop :=
  ∀ n, P10135680866892501581.a n = A290257 (n + 1)

theorem P10135680866892501581.correct : P10135680866892501581.Spec := by
  intro n
  simp only [A290257, Nat.add_sub_cancel, A290257.P10135680866892501581.a, A290257.P10947685291748395.a, A000038, A000038.P13734959004655594922.a, A037870, A037870.P14091972107261335065.f1, A037870.P14091972107261335065.a, A000007, A000007.P6599383543502402472.a, A001316, A001316.P6850078358198232129.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A290257

/-! ## A290257.P10623156191000436594

`A037870(n+2+n)/A007318(C(2, n))`
-/

namespace A290257.P10623156191000436594
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037870 (n + 2 + n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A290257.P10623156191000436594

namespace A290257

/-- `A037870(n+2+n)/A007318(C(2, n))` -/
def P10623156191000436594.Spec : Prop :=
  ∀ n, P10623156191000436594.a n = (A290257 (n + 1) : ℚ)

end A290257

/-! ## A290257.P1205247431477815553

`A037870(n+2+n)^A000041(C(2, n))`
-/

namespace A290257.P1205247431477815553
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037870 (n + 2 + n) : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A290257.P1205247431477815553

namespace A290257

/-- `A037870(n+2+n)^A000041(C(2, n))` -/
def P1205247431477815553.Spec : Prop :=
  ∀ n, P1205247431477815553.a n = (A290257 (n + 1) : ℚ)

end A290257

/-! ## A290257.P7100715328491157128

`A000041(A037870(n+2+n)-C(2, n+2))`
-/

namespace A290257.P7100715328491157128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A037870 (n + 2 + n) - (Nat.choose 2 (n + 2) : ℤ)).toNat

end

end A290257.P7100715328491157128

namespace A290257

/-- `A000041(A037870(n+2+n)-C(2, n+2))` -/
def P7100715328491157128.Spec : Prop :=
  ∀ n, P7100715328491157128.a n = A290257 (n + 1)

end A290257

/-! ## A290257.P5098757236880809267

`A037870(n+2+n)/A000041(C(2, n+2))`
-/

namespace A290257.P5098757236880809267
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037870 (n + 2 + n) : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A290257.P5098757236880809267

namespace A290257

/-- `A037870(n+2+n)/A000041(C(2, n+2))` -/
def P5098757236880809267.Spec : Prop :=
  ∀ n, P5098757236880809267.a n = (A290257 (n + 1) : ℚ)

end A290257

/-!
# A290258: Triangle read by rows: row n (>=2) contains in increasing order the integers for which the binary representation has length n and all runs of 1's have even length.

The programs for A290258, the canonical program `A290258.P9500743634387484747` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290258 has offset 2).

The definition of A290258 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290258.P9500743634387484747

`A277335(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A290258

/-- `A277335(n+1)` -/
def P9500743634387484747.Spec : Prop :=
  ∀ n, P9500743634387484747.a n = A290258 (n + 2)

theorem P9500743634387484747.correct : P9500743634387484747.Spec := by
  intro n
  simp only [A290258, Nat.add_sub_cancel]

end A290258

/-! ## A290258.P18249137023264210608

`∑[3*A129761(n)]`
-/

namespace A290258.P18249137023264210608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A129761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290258.P18249137023264210608

namespace A290258

/-- `∑[3*A129761(n)]` -/
def P18249137023264210608.Spec : Prop :=
  ∀ n, P18249137023264210608.a n = A290258 (n + 2)

end A290258

/-! ## A290258.P14267227204742384236

`record[A277335(abs(1-n))]`
-/

namespace A290258.P14267227204742384236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277335 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290258.P14267227204742384236

namespace A290258

/-- `record[A277335(abs(1-n))]` -/
def P14267227204742384236.Spec : Prop :=
  ∀ n, P14267227204742384236.a n = A290258 (n + 2)

end A290258

/-! ## A290258.P8779298949972724190

`3/2*A022340(n+1)`
-/

namespace A290258.P8779298949972724190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A022340 (n + 1) : ℚ)

end

end A290258.P8779298949972724190

namespace A290258

/-- `3/2*A022340(n+1)` -/
def P8779298949972724190.Spec : Prop :=
  ∀ n, P8779298949972724190.a n = (A290258 (n + 2) : ℚ)

end A290258

/-! ## A290258.P5006025306626529712

`∑[abs(Δ[A048297(n)])]`
-/

namespace A290258.P5006025306626529712
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048297 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290258.P5006025306626529712

namespace A290258

/-- `∑[abs(Δ[A048297(n)])]` -/
def P5006025306626529712.Spec : Prop :=
  ∀ n, P5006025306626529712.a n = A290258 (n + 2)

end A290258

/-! ## A290258.P5671066728169980799

`A048297(n+1)-1`
-/

namespace A290258.P5671066728169980799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048297 (n + 1) - 1

end

end A290258.P5671066728169980799

namespace A290258

/-- `A048297(n+1)-1` -/
def P5671066728169980799.Spec : Prop :=
  ∀ n, P5671066728169980799.a n = A290258 (n + 2)

theorem P5671066728169980799.correct : P5671066728169980799.Spec := by
  intro n
  simp only [A290258, Nat.add_sub_cancel, A290258.P5671066728169980799.a, A290258.P9500743634387484747.a, A048297, A048297.P13500270705688942977.a, A277335, A277335.P13601565206693033398.a, A003714, A003714.P565032106299634425.a, A003849, A003849.P15070805603138295355.a, A193564, A193564.P10859496068576138660.a, A026242, A026242.P14627616473925988182.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A290258

/-! ## A290258.P2632746469302259468

`3*A003714(n+1)`
-/

namespace A290258.P2632746469302259468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A003714 (n + 1)

end

end A290258.P2632746469302259468

namespace A290258

/-- `3*A003714(n+1)` -/
def P2632746469302259468.Spec : Prop :=
  ∀ n, P2632746469302259468.a n = A290258 (n + 2)

end A290258

/-! ## A290258.P13766416461588227433

`A022340(n+1)+A003714(n+1)`
-/

namespace A290258.P13766416461588227433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 (n + 1) + A003714 (n + 1)

end

end A290258.P13766416461588227433

namespace A290258

/-- `A022340(n+1)+A003714(n+1)` -/
def P13766416461588227433.Spec : Prop :=
  ∀ n, P13766416461588227433.a n = A290258 (n + 2)

end A290258

/-! ## A290258.P12677949442065853386

`A022341(n+1)-(A003714(n+1)+1)`
-/

namespace A290258.P12677949442065853386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022341 (n + 1) - (A003714 (n + 1) + 1)

end

end A290258.P12677949442065853386

namespace A290258

/-- `A022341(n+1)-(A003714(n+1)+1)` -/
def P12677949442065853386.Spec : Prop :=
  ∀ n, P12677949442065853386.a n = A290258 (n + 2)

theorem P12677949442065853386.correct : P12677949442065853386.Spec := by
  intro n
  simp only [A290258, Nat.add_sub_cancel, A290258.P12677949442065853386.a, A290258.P9500743634387484747.a, A003714, A003714.P565032106299634425.a, A022341, A022341.P2847779761458071812.a, A277335, A277335.P13601565206693033398.a, A003849, A003849.P15070805603138295355.a, A193564, A193564.P10859496068576138660.a, A026242, A026242.P14627616473925988182.a, A002251, A002251.P8899938186717577679.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A290258

/-! ## A290258.P16461924705813785102

`A295897(A000201(n+2))`
-/

namespace A290258.P16461924705813785102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295897 (A000201 (n + 2)).toNat

end

end A290258.P16461924705813785102

namespace A290258

/-- `A295897(A000201(n+2))` -/
def P16461924705813785102.Spec : Prop :=
  ∀ n, P16461924705813785102.a n = A290258 (n + 2)

end A290258

/-! ## A290258.P6949030251168297534

`A295897(A066096(n+2))`
-/

namespace A290258.P6949030251168297534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295897 (A066096 (n + 2)).toNat

end

end A290258.P6949030251168297534

namespace A290258

/-- `A295897(A066096(n+2))` -/
def P6949030251168297534.Spec : Prop :=
  ∀ n, P6949030251168297534.a n = A290258 (n + 2)

end A290258

/-! ## A290258.P2801511688151807150

`A295897(A022342(n+2)+1)`
-/

namespace A290258.P2801511688151807150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295897 (A022342 (n + 2) + 1).toNat

end

end A290258.P2801511688151807150

namespace A290258

/-- `A295897(A022342(n+2)+1)` -/
def P2801511688151807150.Spec : Prop :=
  ∀ n, P2801511688151807150.a n = A290258 (n + 2)

end A290258

/-! ## A290258.P2936752793652895996

`A003714(n+1)+A003714(A022342(n+2))`
-/

namespace A290258.P2936752793652895996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (n + 1) + A003714 (A022342 (n + 2)).toNat

end

end A290258.P2936752793652895996

namespace A290258

/-- `A003714(n+1)+A003714(A022342(n+2))` -/
def P2936752793652895996.Spec : Prop :=
  ∀ n, P2936752793652895996.a n = A290258 (n + 2)

end A290258

/-! ## A290258.P13344863189792715064

`record[xor(2*(n+1), n+1)]`
-/

namespace A290258.P13344863189792715064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (2 * (n + 1)) (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290258.P13344863189792715064

namespace A290258

/-- `record[xor(2*(n+1), n+1)]` -/
def P13344863189792715064.Spec : Prop :=
  ∀ n, (P13344863189792715064.a n : ℤ) = A290258 (n + 2)

end A290258

/-! ## A290258.P8969935146498467870

`record[xor(n, n+2+n)+1]`
-/

namespace A290258.P8969935146498467870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 2 + n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290258.P8969935146498467870

namespace A290258

/-- `record[xor(n, n+2+n)+1]` -/
def P8969935146498467870.Spec : Prop :=
  ∀ n, (P8969935146498467870.a n : ℤ) = A290258 (n + 2)

end A290258

/-! ## A290258.P12526133310480445930

`record[3*and(1-2*n, n-1)]`
-/

namespace A290258.P12526133310480445930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.land (1 - (2 * n : ℤ)) ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290258.P12526133310480445930

namespace A290258

/-- `record[3*and(1-2*n, n-1)]` -/
def P12526133310480445930.Spec : Prop :=
  ∀ n, P12526133310480445930.a n = A290258 (n + 2)

end A290258

/-! ## A290258.P4062657229515913821

`record[gcd(3*(n+1), and(n, 2*(n+1)))]`
-/

namespace A290258.P4062657229515913821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (3 * (n + 1)) (Nat.land n (2 * (n + 1)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290258.P4062657229515913821

namespace A290258

/-- `record[gcd(3*(n+1), and(n, 2*(n+1)))]` -/
def P4062657229515913821.Spec : Prop :=
  ∀ n, (P4062657229515913821.a n : ℤ) = A290258 (n + 2)

end A290258

/-! ## A290258.P2117447778694617503

`record[and(2*(n+1), 3*(n+1))+n+1]`
-/

namespace A290258.P2117447778694617503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * (n + 1)) (3 * (n + 1)) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290258.P2117447778694617503

namespace A290258

/-- `record[and(2*(n+1), 3*(n+1))+n+1]` -/
def P2117447778694617503.Spec : Prop :=
  ∀ n, (P2117447778694617503.a n : ℤ) = A290258 (n + 2)

end A290258

/-! ## A290258.P6211718432017127153

`record[lcm(3, n+1)-and(n, n+1)]`
-/

namespace A290258.P6211718432017127153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 (n + 1) : ℤ) - (Nat.land n (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290258.P6211718432017127153

namespace A290258

/-- `record[lcm(3, n+1)-and(n, n+1)]` -/
def P6211718432017127153.Spec : Prop :=
  ∀ n, P6211718432017127153.a n = A290258 (n + 2)

end A290258

/-! ## A290258.P10309973599845361873

`A318514(A022340(2*n+1-n))`
-/

namespace A290258.P10309973599845361873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318514 (A022340 (2 * n + 1 - n)).toNat

end

end A290258.P10309973599845361873

namespace A290258

/-- `A318514(A022340(2*n+1-n))` -/
def P10309973599845361873.Spec : Prop :=
  ∀ n, P10309973599845361873.a n = A290258 (n + 2)

end A290258

/-!
# A290259: Triangle read by rows: row n (>=1) contains in increasing order the integers for which the binary representation has length n, the first run of 1's has odd length, and all the other runs of 1's have even length.

The programs for A290259, there is no canonical definition to state claims against.
-/

/-! ## A290259.P12580092782318038096

`eq[2, (3-a(floor(n/2)))*gcd(2, n)]` with `a(0)=1`
-/

namespace A290259.P12580092782318038096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  (3 - f2 ⌊(n : ℚ) / 2⌋.toNat) * (Nat.gcd 2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290259.P12580092782318038096

/-! ## A290259.P16038658458342839436

`record[xor(2^ceil(log2(n+1))+n, 2*n)]`
-/

namespace A290259.P16038658458342839436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) + (n : ℚ))) (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290259.P16038658458342839436

/-! ## A290259.P7388510455378304608

`eq[n, or(n, 2*(n-a(floor(n/2))))]` with `a(0)=1`
-/

namespace A290259.P7388510455378304608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.lor (n : ℤ) (2 * ((n : ℤ) - f2 ⌊(n : ℚ) / 2⌋.toNat))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290259.P7388510455378304608

/-! ## A290259.P12684790739538388594

`eq[0, and(n%2-a(floor(n/2)), -n)]` with `a(0)=1`
-/

namespace A290259.P12684790739538388594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.land (((n % 2 : ℕ) : ℤ) - f2 ⌊(n : ℚ) / 2⌋.toNat) (-(n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290259.P12684790739538388594

/-! ## A290259.P3541167007784059102

`eq[0, xor(1, a(floor(n/2))+(n+1)%2)]` with `a(0)=1`
-/

namespace A290259.P3541167007784059102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Nat.xor 1 (f2 ⌊(n : ℚ) / 2⌋.toNat + (n + 1) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290259.P3541167007784059102

/-! ## A290259.P7685213555772995089

`eq[2*n, xor(1, a(floor(n/2))+1+n)]` with `a(0)=1`
-/

namespace A290259.P7685213555772995089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  Nat.xor 1 (f2 ⌊(n : ℚ) / 2⌋.toNat + 1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290259.P7685213555772995089

/-! ## A290259.P16603987390599975004

`xor(1, record[A038556(n)])`
-/

namespace A290259.P16603987390599975004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038556 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A290259.P16603987390599975004

/-! ## A290259.P12133884901843158481

`A060138(n+1)-1`
-/

namespace A290259.P12133884901843158481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060138 (n + 1) - 1

end

end A290259.P12133884901843158481

/-! ## A290259.P15815780032541637851

`eq[2, A057227(n+1)]`
-/

namespace A290259.P15815780032541637851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057227 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A290259.P15815780032541637851

/-! ## A290259.P13047171713102482374

`record[A038554(2*(n+1))]`
-/

namespace A290259.P13047171713102482374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290259.P13047171713102482374

/-!
# A290260: a(n) = number of isolated 0's in the binary representation of n.

The programs for A290260, the canonical program `A290260.P7398993785717858421` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290260 has offset 1).

The definition of A290260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290260.P12673385734229932915

`val(A333219(n+2), 3)`
-/

namespace A290260.P12673385734229932915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A333219 (n + 2)).toNat 3

end

end A290260.P12673385734229932915

namespace A290260

/-- `val(A333219(n+2), 3)` -/
def P12673385734229932915.Spec : Prop :=
  ∀ n, (P12673385734229932915.a n : ℤ) = A290260 (n + 1)

end A290260

/-! ## A290260.P11577185718271227172

`val(A358506(n+2), 3)`
-/

namespace A290260.P11577185718271227172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A358506 (n + 2)).toNat 3

end

end A290260.P11577185718271227172

namespace A290260

/-- `val(A358506(n+2), 3)` -/
def P11577185718271227172.Spec : Prop :=
  ∀ n, (P11577185718271227172.a n : ℤ) = A290260 (n + 1)

end A290260

/-! ## A290260.P5526025999728427984

`A056979(n+1)+∑[∑[n]]%2`
-/

namespace A290260.P5526025999728427984
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056979 (n + 1) + (((∑ j ∈ Finset.range (n + 1), f1 j) % 2 : ℕ) : ℤ)

end

end A290260.P5526025999728427984

namespace A290260

/-- `A056979(n+1)+∑[∑[n]]%2` -/
def P5526025999728427984.Spec : Prop :=
  ∀ n, P5526025999728427984.a n = A290260 (n + 1)

end A290260

/-! ## A290260.P7398993785717858421

`A277937(A035327(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A290260

/-- `A277937(A035327(n+1))` -/
def P7398993785717858421.Spec : Prop :=
  ∀ n, P7398993785717858421.a n = A290260 (n + 1)

theorem P7398993785717858421.correct : P7398993785717858421.Spec := by
  intro n
  simp only [A290260, Nat.add_sub_cancel]

end A290260

/-! ## A290260.P3462636403872655530

`A277937(A036044(n+1)/2)`
-/

namespace A290260.P3462636403872655530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (SequenceMachineLib.roundAway ((A036044 (n + 1) : ℚ) / 2)).toNat

end

end A290260.P3462636403872655530

namespace A290260

/-- `A277937(A036044(n+1)/2)` -/
def P3462636403872655530.Spec : Prop :=
  ∀ n, P3462636403872655530.a n = A290260 (n + 1)

end A290260

/-! ## A290260.P18345745180249548847

`A033264(n+1)-A056978(n+1)`
-/

namespace A290260.P18345745180249548847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (n + 1) - A056978 (n + 1)

end

end A290260.P18345745180249548847

namespace A290260

/-- `A033264(n+1)-A056978(n+1)` -/
def P18345745180249548847.Spec : Prop :=
  ∀ n, P18345745180249548847.a n = A290260 (n + 1)

end A290260

/-! ## A290260.P11057102236851889895

`A033264(n+1)-A033264(A106151(n+1))`
-/

namespace A290260.P11057102236851889895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (n + 1) - A033264 (A106151 (n + 1)).toNat

end

end A290260.P11057102236851889895

namespace A290260

/-- `A033264(n+1)-A033264(A106151(n+1))` -/
def P11057102236851889895.Spec : Prop :=
  ∀ n, P11057102236851889895.a n = A290260 (n + 1)

end A290260

/-! ## A290260.P7745897551219493162

`A087116(n+1)-A087116(A106151(n+1))`
-/

namespace A290260.P7745897551219493162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 (n + 1) - A087116 (A106151 (n + 1)).toNat

end

end A290260.P7745897551219493162

namespace A290260

/-- `A087116(n+1)-A087116(A106151(n+1))` -/
def P7745897551219493162.Spec : Prop :=
  ∀ n, P7745897551219493162.a n = A290260 (n + 1)

end A290260

/-! ## A290260.P652481749872880158

`A277937(A036044(n+1))`
-/

namespace A290260.P652481749872880158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (A036044 (n + 1)).toNat

end

end A290260.P652481749872880158

namespace A290260

/-- `A277937(A036044(n+1))` -/
def P652481749872880158.Spec : Prop :=
  ∀ n, P652481749872880158.a n = A290260 (n + 1)

end A290260

/-! ## A290260.P15011058867702580007

`A277937(A261693(n+1)-1)`
-/

namespace A290260.P15011058867702580007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277937 (A261693 (n + 1) - 1).toNat

end

end A290260.P15011058867702580007

namespace A290260

/-- `A277937(A261693(n+1)-1)` -/
def P15011058867702580007.Spec : Prop :=
  ∀ n, P15011058867702580007.a n = A290260 (n + 1)

end A290260

/-! ## A290260.P123896969575994040

`A056979(A047441(n+2))`
-/

namespace A290260.P123896969575994040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056979 (A047441 (n + 2)).toNat

end

end A290260.P123896969575994040

namespace A290260

/-- `A056979(A047441(n+2))` -/
def P123896969575994040.Spec : Prop :=
  ∀ n, P123896969575994040.a n = A290260 (n + 1)

end A290260

/-! ## A290260.P7558491553617407429

`A056979(A047444(n+2))`
-/

namespace A290260.P7558491553617407429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056979 (A047444 (n + 2)).toNat

end

end A290260.P7558491553617407429

namespace A290260

/-- `A056979(A047444(n+2))` -/
def P7558491553617407429.Spec : Prop :=
  ∀ n, P7558491553617407429.a n = A290260 (n + 1)

end A290260

/-! ## A290260.P17468355406876481138

`A056979(A047481(n+2))`
-/

namespace A290260.P17468355406876481138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056979 (A047481 (n + 2)).toNat

end

end A290260.P17468355406876481138

namespace A290260

/-- `A056979(A047481(n+2))` -/
def P17468355406876481138.Spec : Prop :=
  ∀ n, P17468355406876481138.a n = A290260 (n + 1)

end A290260

/-! ## A290260.P1183221640801104654

`A056979(2*n+3)`
-/

namespace A290260.P1183221640801104654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056979 (2 * n + 3)

end

end A290260.P1183221640801104654

namespace A290260

/-- `A056979(2*n+3)` -/
def P1183221640801104654.Spec : Prop :=
  ∀ n, P1183221640801104654.a n = A290260 (n + 1)

end A290260

/-! ## A290260.P5799734429142170805

`A292342(2*n+3)-1`
-/

namespace A290260.P5799734429142170805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292342 (2 * n + 3) - 1

end

end A290260.P5799734429142170805

namespace A290260

/-- `A292342(2*n+3)-1` -/
def P5799734429142170805.Spec : Prop :=
  ∀ n, P5799734429142170805.a n = A290260 (n + 1)

end A290260

/-! ## A290260.P540287097732326576

`A037800(2*n+3)-A056978(n+1)`
-/

namespace A290260.P540287097732326576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (2 * n + 3) - A056978 (n + 1)

end

end A290260.P540287097732326576

namespace A290260

/-- `A037800(2*n+3)-A056978(n+1)` -/
def P540287097732326576.Spec : Prop :=
  ∀ n, P540287097732326576.a n = A290260 (n + 1)

end A290260

/-! ## A290260.P5798841374003980081

`A037800(2*n+3)-A056975(2*n+3)`
-/

namespace A290260.P5798841374003980081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (2 * n + 3) - A056975 (2 * n + 3)

end

end A290260.P5798841374003980081

namespace A290260

/-- `A037800(2*n+3)-A056975(2*n+3)` -/
def P5798841374003980081.Spec : Prop :=
  ∀ n, P5798841374003980081.a n = A290260 (n + 1)

end A290260

/-! ## A290260.P2173685480354222393

`A056976(A010078(2*(n+2)))`
-/

namespace A290260.P2173685480354222393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056976 (A010078 (2 * (n + 2))).toNat

end

end A290260.P2173685480354222393

namespace A290260

/-- `A056976(A010078(2*(n+2)))` -/
def P2173685480354222393.Spec : Prop :=
  ∀ n, P2173685480354222393.a n = A290260 (n + 1)

end A290260

/-! ## A290260.P13440818468568087095

`A292342(Δ[(2*(n+1))²])`
-/

namespace A290260.P13440818468568087095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292342 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A290260.P13440818468568087095

namespace A290260

/-- `A292342(Δ[(2*(n+1))²])` -/
def P13440818468568087095.Spec : Prop :=
  ∀ n, P13440818468568087095.a n = A290260 (n + 1)

end A290260

/-! ## A290260.P8843308019835470029

`A001221(A337375(A004769(n)+1))`
-/

namespace A290260.P8843308019835470029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A337375 (A004769 n + 1).toNat).toNat

end

end A290260.P8843308019835470029

namespace A290260

/-- `A001221(A337375(A004769(n)+1))` -/
def P8843308019835470029.Spec : Prop :=
  ∀ n, P8843308019835470029.a n = A290260 (n + 1)

end A290260

/-!
# A290261: Write 1 - x/(1-x) as an inverse power product 1/(1 + a(1)*x) * 1/(1 + a(2)*x^2) * 1/(1 + a(3)*x^3) * 1/(1 + a(4)*x^4) * ...

The programs for A290261, there is no canonical definition to state claims against.
-/

/-! ## A290261.P9101566124795352028

`A259361(lcm(3, A333106(n)))`
-/

namespace A290261.P9101566124795352028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (Int.lcm 3 (A333106 n))

end

end A290261.P9101566124795352028

/-! ## A290261.P9256801322044109369

`A194060(or(1, A116657(n+1)))`
-/

namespace A290261.P9256801322044109369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194060 (Int.lor 1 (A116657 (n + 1))).toNat

end

end A290261.P9256801322044109369

/-! ## A290261.P14495855846647074894

`gcd(A008592(A000244(n)), A294430(n))`
-/

namespace A290261.P14495855846647074894
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008592 (A000244 n).toNat) (A294430 n)

end

end A290261.P14495855846647074894

/-! ## A290261.P10366639665423397293

`A137734(A025579(n+1)*A095345(n+1))`
-/

namespace A290261.P10366639665423397293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A025579 (n + 1) * A095345 (n + 1)).toNat

end

end A290261.P10366639665423397293

/-! ## A290261.P11848718199078194002

`A000188(A167105(n))-A033718(A293366(n+2))`
-/

namespace A290261.P11848718199078194002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A167105 n).toNat - A033718 (A293366 (n + 2)).toNat

end

end A290261.P11848718199078194002

/-!
# A290262: Irregular triangle read by rows: rows give the (negated) nonzero coefficients of t in each term of the inverse power product expansion of 1 - t * x/(1-x).

The programs for A290262, there is no canonical definition to state claims against.
-/

/-! ## A290262.P16165488184985029207

`filter[A290320(n+1), A145568(#)]`
-/

namespace A290262.P16165488184985029207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290320 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A290262.P16165488184985029207

/-! ## A290262.P9548237682304435558

`A025459(xor(A239611(n+1), A239640(3*n+4)))+1`
-/

namespace A290262.P9548237682304435558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025459 (Int.xor (A239611 (n + 1)) (A239640 (3 * n + 4))).toNat + 1

end

end A290262.P9548237682304435558

/-!
# A290265: The number of non-palindromic Motzkin paths of length n.

The programs for A290265, the canonical program `A290265.P16009983709249235141` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290265 has offset 0).

The definition of A290265 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290265.P16009983709249235141

`A001006(n)-A005773(1+floor(n/2))`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A290265

/-- `A001006(n)-A005773(1+floor(n/2))` -/
def P16009983709249235141.Spec : Prop :=
  ∀ n, P16009983709249235141.a n = A290265 n

theorem P16009983709249235141.correct : P16009983709249235141.Spec := by
  intro n
  simp only [A290265]

end A290265

/-! ## A290265.P17812340676684345707

`A001006(n)-A307789(round((n-1)/2)+2)`
-/

namespace A290265.P17812340676684345707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - A307789 (SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2) + 2).toNat

end

end A290265.P17812340676684345707

namespace A290265

/-- `A001006(n)-A307789(round((n-1)/2)+2)` -/
def P17812340676684345707.Spec : Prop :=
  ∀ n, P17812340676684345707.a n = A290265 n

end A290265

/-! ## A290265.P47757843668917341

`abs(A001006(n)-A005773(A008619(n)))`
-/

namespace A290265.P47757843668917341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001006 n - A005773 (A008619 n).toNat|

end

end A290265.P47757843668917341

namespace A290265

/-- `abs(A001006(n)-A005773(A008619(n)))` -/
def P47757843668917341.Spec : Prop :=
  ∀ n, P47757843668917341.a n = A290265 n

end A290265

/-! ## A290265.P885327777295745545

`Δ[A097332(n)]-A005773(A008619(n))`
-/

namespace A290265.P885327777295745545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A005773 (A008619 n).toNat

end

end A290265.P885327777295745545

namespace A290265

/-- `Δ[A097332(n)]-A005773(A008619(n))` -/
def P885327777295745545.Spec : Prop :=
  ∀ n, P885327777295745545.a n = A290265 n

end A290265

/-! ## A290265.P15535174452159248087

`A086246(n+2)-A005773(A008619(n))`
-/

namespace A290265.P15535174452159248087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 2) - A005773 (A008619 n).toNat

end

end A290265.P15535174452159248087

namespace A290265

/-- `A086246(n+2)-A005773(A008619(n))` -/
def P15535174452159248087.Spec : Prop :=
  ∀ n, P15535174452159248087.a n = A290265 n

end A290265

/-!
# A290266: Distinct terms in A007944.

The programs for A290266, there is no canonical definition to state claims against.
-/

/-! ## A290266.P16476282999935267754

`record[A007944(round((n-2*and(1, n))/4)+1)]`
-/

namespace A290266.P16476282999935267754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007944 (SequenceMachineLib.roundAway (((n : ℤ) - (2 * Nat.land 1 n : ℤ) : ℚ) / 4) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290266.P16476282999935267754

/-! ## A290266.P11412335604640704793

`record[A007944(A286378(n))]`
-/

namespace A290266.P11412335604640704793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007944 (A286378 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290266.P11412335604640704793

/-! ## A290266.P4532173481535484869

`record[A007944(A291766(n))]`
-/

namespace A290266.P4532173481535484869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007944 (A291766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290266.P4532173481535484869

/-! ## A290266.P13027562153459261258

`record[A007944(A324343(n))]`
-/

namespace A290266.P13027562153459261258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007944 (A324343 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290266.P13027562153459261258

/-! ## A290266.P2625147893092105806

`record[A007944(A152271(n))]`
-/

namespace A290266.P2625147893092105806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007944 (A152271 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290266.P2625147893092105806

/-! ## A290266.P14482430806624561240

`record[A007944(A203814(n))]`
-/

namespace A290266.P14482430806624561240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007944 (A203814 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290266.P14482430806624561240

/-! ## A290266.P3844032658759854714

`record[A007944(A286554(n))]`
-/

namespace A290266.P3844032658759854714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007944 (A286554 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290266.P3844032658759854714

/-! ## A290266.P5911966526066157653

`record[A007944(A065648(n))]`
-/

namespace A290266.P5911966526066157653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007944 (A065648 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290266.P5911966526066157653

/-!
# A290267: Length of runs of equal terms in A007944.

The programs for A290267, there is no canonical definition to state claims against.
-/

/-! ## A290267.P15778244116312916767

`Δ[A252735(record[A234345(n+3)])]`
-/

namespace A290267.P15778244116312916767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234345 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290267.P15778244116312916767

/-! ## A290267.P12001300992211252992

`Δ[A000720(record[A164023(n+7)])]`
-/

namespace A290267.P12001300992211252992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164023 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290267.P12001300992211252992

/-! ## A290267.P12801520820034127549

`A091050(ceil(A032189(n+1)/A058399(n+2)))`
-/

namespace A290267.P12801520820034127549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091050 ⌈(A032189 (n + 1) : ℚ) / (A058399 (n + 2) : ℚ)⌉.toNat

end

end A290267.P12801520820034127549

/-!
# A290268: Number of terms in the fully expanded n-th derivative of x^(x^2).

The programs for A290268, the canonical program `A290268.P5726267493198497199` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290268 has offset 0).

The definition of A290268 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290268.P5726267493198497199

`n²/2+n+1-n%2*(1/2+floor((n+1)/8))`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290268

/-- `n²/2+n+1-n%2*(1/2+floor((n+1)/8))` -/
def P5726267493198497199.Spec : Prop :=
  ∀ n, P5726267493198497199.a n = (A290268 n : ℚ)

end A290268

/-! ## A290268.P9066980186009559821

`ceil((A106466(n)+∑[A014601(n)])/2)`
-/

namespace A290268.P9066980186009559821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A106466 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A290268.P9066980186009559821

namespace A290268

/-- `ceil((A106466(n)+∑[A014601(n)])/2)` -/
def P9066980186009559821.Spec : Prop :=
  ∀ n, P9066980186009559821.a n = A290268 n

end A290268

/-! ## A290268.P8568628574143960798

`∑[A098180(n)]-A008624(A057979(n))`
-/

namespace A290268.P8568628574143960798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008624 (A057979 n).toNat

end

end A290268.P8568628574143960798

namespace A290268

/-- `∑[A098180(n)]-A008624(A057979(n))` -/
def P8568628574143960798.Spec : Prop :=
  ∀ n, P8568628574143960798.a n = A290268 n

end A290268

/-! ## A290268.P8233941693763649671

`∑[A109613(n)]-A002265(A152271(n))`
-/

namespace A290268.P8233941693763649671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002265 (A152271 n).toNat

end

end A290268.P8233941693763649671

namespace A290268

/-- `∑[A109613(n)]-A002265(A152271(n))` -/
def P8233941693763649671.Spec : Prop :=
  ∀ n, P8233941693763649671.a n = A290268 n

end A290268

/-! ## A290268.P3951094024517476644

`Δ[A131941(n)-A130519(A123108(n))]`
-/

namespace A290268.P3951094024517476644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131941 n - A130519 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290268.P3951094024517476644

namespace A290268

/-- `Δ[A131941(n)-A130519(A123108(n))]` -/
def P3951094024517476644.Spec : Prop :=
  ∀ n, P3951094024517476644.a n = A290268 n

end A290268

/-! ## A290268.P2530057986039522488

`∑[A008621(A071045(n)+A047238(n+1))]`
-/

namespace A290268.P2530057986039522488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A071045 n + A047238 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290268.P2530057986039522488

namespace A290268

/-- `∑[A008621(A071045(n)+A047238(n+1))]` -/
def P2530057986039522488.Spec : Prop :=
  ∀ n, P2530057986039522488.a n = A290268 n

end A290268

/-! ## A290268.P10957232451960256641

`A008619(A106466(n)+∑[A059009(n)])`
-/

namespace A290268.P10957232451960256641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A106466 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A290268.P10957232451960256641

namespace A290268

/-- `A008619(A106466(n)+∑[A059009(n)])` -/
def P10957232451960256641.Spec : Prop :=
  ∀ n, P10957232451960256641.a n = A290268 n

end A290268

/-! ## A290268.P5941816132658706643

`A110654(A106466(n)+∑[A014601(n)])`
-/

namespace A290268.P5941816132658706643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A106466 n + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A290268.P5941816132658706643

namespace A290268

/-- `A110654(A106466(n)+∑[A014601(n)])` -/
def P5941816132658706643.Spec : Prop :=
  ∀ n, P5941816132658706643.a n = A290268 n

end A290268

/-! ## A290268.P17692642938085137659

`A008619(Δ[A000330(n)-A008642(n)])`
-/

namespace A290268.P17692642938085137659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n - A008642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (n + 1) - f1 n).toNat

end

end A290268.P17692642938085137659

namespace A290268

/-- `A008619(Δ[A000330(n)-A008642(n)])` -/
def P17692642938085137659.Spec : Prop :=
  ∀ n, P17692642938085137659.a n = A290268 n

end A290268

/-! ## A290268.P10159672350427621141

`A008619(Δ[A056520(n)-A008642(n)])`
-/

namespace A290268.P10159672350427621141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056520 n - A008642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (n + 1) - f1 n).toNat

end

end A290268.P10159672350427621141

namespace A290268

/-- `A008619(Δ[A056520(n)-A008642(n)])` -/
def P10159672350427621141.Spec : Prop :=
  ∀ n, P10159672350427621141.a n = A290268 n

end A290268

/-! ## A290268.P1694940753563516543

`A008619(Δ[A153058(n)-A008642(n)])`
-/

namespace A290268.P1694940753563516543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153058 n - A008642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (n + 1) - f1 n).toNat

end

end A290268.P1694940753563516543

namespace A290268

/-- `A008619(Δ[A153058(n)-A008642(n)])` -/
def P1694940753563516543.Spec : Prop :=
  ∀ n, P1694940753563516543.a n = A290268 n

end A290268

/-!
# A290269: G.f.: Product_{m>0} (1 + x^m + 2*x^(2*m) + 3*x^(3*m)).

The programs for A290269, there is no canonical definition to state claims against.
-/

/-! ## A290269.P989393917038556104

`A290216(∑[n+4]+2)`
-/

namespace A290269.P989393917038556104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290216 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A290269.P989393917038556104

/-! ## A290269.P16937780730325160551

`or(char[1], A290216(A046691(n+2)))`
-/

namespace A290269.P16937780730325160551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A290216 (A046691 (n + 2)).toNat)

end

end A290269.P16937780730325160551

/-! ## A290269.P932148246321732285

`or(char[1], A290216(A056000(n)+6))`
-/

namespace A290269.P932148246321732285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A290216 (A056000 n + 6).toNat)

end

end A290269.P932148246321732285

/-! ## A290269.P17894717103042286631

`or(char[1], A290216(A000217(n+4)-4))`
-/

namespace A290269.P17894717103042286631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A290216 (A000217 (n + 4) - 4).toNat)

end

end A290269.P17894717103042286631

/-! ## A290269.P14767704395212553730

`A290216(A056000(n)+6)%A000051(n)`
-/

namespace A290269.P14767704395212553730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290216 (A056000 n + 6).toNat) (A000051 n)

end

end A290269.P14767704395212553730

/-! ## A290269.P17368389991547889106

`gcd(A000038(n), A290216(A000217(n+4)-4))`
-/

namespace A290269.P17368389991547889106
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A290216 (A000217 (n + 4) - 4).toNat)

end

end A290269.P17368389991547889106

/-! ## A290269.P11811470654490865134

`A007318(C(2, n))*A290216(A046691(n+2))`
-/

namespace A290269.P11811470654490865134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A290216 (A046691 (n + 2)).toNat

end

end A290269.P11811470654490865134

/-! ## A290269.P7824290160372990319

`A290216(A000217(n+4)-4)%A001535(n)²`
-/

namespace A290269.P7824290160372990319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290216 (A000217 (n + 4) - 4).toNat) (A001535 n ^ 2)

end

end A290269.P7824290160372990319

/-! ## A290269.P5722525096879727993

`A290216(A046691(n+2))/A000041(and(1, -n))`
-/

namespace A290269.P5722525096879727993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290216 (A046691 (n + 2)).toNat : ℚ) / (A000041 (Int.land 1 (-(n : ℤ))).toNat : ℚ)

end

end A290269.P5722525096879727993

/-! ## A290269.P2009748357627920395

`A290216(A000217(n+4)-4)+A000007(n+1)`
-/

namespace A290269.P2009748357627920395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290216 (A000217 (n + 4) - 4).toNat + A000007 (n + 1)

end

end A290269.P2009748357627920395

/-! ## A290269.P8288776999091815755

`A290216(A000217(n+4)-4)+A000038(n+1)`
-/

namespace A290269.P8288776999091815755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290216 (A000217 (n + 4) - 4).toNat + A000038 (n + 1)

end

end A290269.P8288776999091815755

/-! ## A290269.P10457774607812113722

`A008683(n+1)²!*A290216(A046691(n+2))`
-/

namespace A290269.P10457774607812113722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℤ) * A290216 (A046691 (n + 2)).toNat

end

end A290269.P10457774607812113722

/-! ## A290269.P11395776315416289192

`A014963(8*n+10)*A290216(A000217(n+4)-4)`
-/

namespace A290269.P11395776315416289192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 10) * A290216 (A000217 (n + 4) - 4).toNat

end

end A290269.P11395776315416289192

/-! ## A290269.P8098931987619561689

`A000010(gcd(n, n+2))*A290216(A000217(n+4)-4)`
-/

namespace A290269.P8098931987619561689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.gcd n (n + 2)) * A290216 (A000217 (n + 4) - 4).toNat

end

end A290269.P8098931987619561689

/-! ## A290269.P15775958228778266439

`A007318(gcd(n+1, 2*n))*A290216(A000217(n+4)-4)`
-/

namespace A290269.P15775958228778266439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.gcd (n + 1) (2 * n)) * A290216 (A000217 (n + 4) - 4).toNat

end

end A290269.P15775958228778266439

/-! ## A290269.P14857866058909772623

`A290216(A046691(n+2))%A000041(A018252(n+2))`
-/

namespace A290269.P14857866058909772623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A290216 (A046691 (n + 2)).toNat) (A000041 (A018252 (n + 2)).toNat)

end

end A290269.P14857866058909772623

/-!
# A290270: Number of minimal dominating sets in the n-wheel graph.

The programs for A290270, the canonical program `A290270.P13601967349858252972` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290270 has offset 3).

The definition of A290270 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290270.P13601967349858252972

`a(n-2)+a(n-3)+a(n-4)-a(n-6)-1` with `a(0)=3, a(1)=4, a(2)=7, a(3)=6, a(4)=6, a(5)=15`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290270

/-- `a(n-2)+a(n-3)+a(n-4)-a(n-6)-1` -/
def P13601967349858252972.Spec : Prop :=
  ∀ n, P13601967349858252972.a n = A290270 (n + 3)

theorem P13601967349858252972.correct : P13601967349858252972.Spec := by
  intro n
  simp only [A290270, Nat.add_sub_cancel]

end A290270

/-! ## A290270.P16086909069961045952

`A253413(n+2)+1`
-/

namespace A290270.P16086909069961045952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253413 (n + 2) + 1

end

end A290270.P16086909069961045952

namespace A290270

/-- `A253413(n+2)+1` -/
def P16086909069961045952.Spec : Prop :=
  ∀ n, P16086909069961045952.a n = A290270 (n + 3)

end A290270

/-! ## A290270.P15180365330843568182

`A347638(n+2)-2*(n+2)`
-/

namespace A290270.P15180365330843568182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347638 (n + 2) - (2 * (n + 2) : ℤ)

end

end A290270.P15180365330843568182

namespace A290270

/-- `A347638(n+2)-2*(n+2)` -/
def P15180365330843568182.Spec : Prop :=
  ∀ n, P15180365330843568182.a n = A290270 (n + 3)

end A290270

/-! ## A290270.P1228470548229399021

`A347638(n+2)-n-A020705(n)`
-/

namespace A290270.P1228470548229399021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347638 (n + 2) - (n : ℤ) - A020705 n

end

end A290270.P1228470548229399021

namespace A290270

/-- `A347638(n+2)-n-A020705(n)` -/
def P1228470548229399021.Spec : Prop :=
  ∀ n, P1228470548229399021.a n = A290270 (n + 3)

end A290270

/-! ## A290270.P13914541443286490851

`Δ[∑[A347638(n+1)]-A028552(n)]`
-/

namespace A290270.P13914541443286490851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347638 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A028552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290270.P13914541443286490851

namespace A290270

/-- `Δ[∑[A347638(n+1)]-A028552(n)]` -/
def P13914541443286490851.Spec : Prop :=
  ∀ n, P13914541443286490851.a n = A290270 (n + 3)

end A290270

/-!
# A290273: Number of minimal dominating sets in the n-pan graph.

The programs for A290273, the canonical program `A290273.P16565057124678505801` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290273 has offset 1).

The definition of A290273 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A290273.P16565057124678505801

`a(n-2)+a(n-3)+a(n-4)-a(n-6)` with `a(0)=2, a(1)=2, a(2)=3, a(3)=5, a(4)=7, a(5)=8`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290273

/-- `a(n-2)+a(n-3)+a(n-4)-a(n-6)` -/
def P16565057124678505801.Spec : Prop :=
  ∀ n, P16565057124678505801.a n = A290273 (n + 1)

theorem P16565057124678505801.correct : P16565057124678505801.Spec := by
  intro n
  simp only [A290273, Nat.add_sub_cancel]

end A290273

/-! ## A290273.P15913299645813889026

`A253412(n)+A080013(A020705(n))`
-/

namespace A290273.P15913299645813889026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253412 n + A080013 (A020705 n).toNat

end

end A290273.P15913299645813889026

namespace A290273

/-- `A253412(n)+A080013(A020705(n))` -/
def P15913299645813889026.Spec : Prop :=
  ∀ n, P15913299645813889026.a n = A290273 (n + 1)

end A290273

/-! ## A290273.P18220586280512022810

`A080013(n+1)+A080013(n+3)+A080013(n+4)`
-/

namespace A290273.P18220586280512022810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080013 (n + 1) + (A080013 (n + 3) + A080013 (n + 4))

end

end A290273.P18220586280512022810

namespace A290273

/-- `A080013(n+1)+A080013(n+3)+A080013(n+4)` -/
def P18220586280512022810.Spec : Prop :=
  ∀ n, P18220586280512022810.a n = A290273 (n + 1)

end A290273

/-! ## A290273.P1463299210566218290

`Δ[Δ[A200661(n+6)]-A200661(n+1)]`
-/

namespace A290273.P1463299210566218290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200661 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A200661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290273.P1463299210566218290

namespace A290273

/-- `Δ[Δ[A200661(n+6)]-A200661(n+1)]` -/
def P1463299210566218290.Spec : Prop :=
  ∀ n, P1463299210566218290.a n = A290273 (n + 1)

end A290273

/-!
# A290274: Number of solid standard Young tableaux of cylindrical shape lambda X 5, where lambda ranges over all partitions of n.

The programs for A290274, there is no canonical definition to state claims against.
-/

/-! ## A290274.P7454519661657424695

`A215204(eq[5, A025581(n)])`
-/

namespace A290274.P7454519661657424695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290274.P7454519661657424695

/-! ## A290274.P6078913720130787798

`A215204(eq[6, A193739(n)])`
-/

namespace A290274.P6078913720130787798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290274.P6078913720130787798

/-! ## A290274.P14366143351551860909

`A215204(eq[6, A195663(n)])`
-/

namespace A290274.P14366143351551860909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290274.P14366143351551860909

/-! ## A290274.P8312858173852440645

`A215204(eq[11, A099375(n)])`
-/

namespace A290274.P8312858173852440645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215204 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A290274.P8312858173852440645

/-! ## A290274.P14216111720923221411

`A215204(Δ[A023551(n+1)])`
-/

namespace A290274.P14216111720923221411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215204 (f1 (n + 1) - f1 n).toNat

end

end A290274.P14216111720923221411

/-!
# A290275: Numbers that are the sum of distinct odd positive squares.

The programs for A290275, there is no canonical definition to state claims against.
-/

/-! ## A290275.P13991819319368078798

`comp[A167703(n+1)-1]+1`
-/

namespace A290275.P13991819319368078798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167703 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A290275.P13991819319368078798

/-! ## A290275.P11115711784333990453

`lt[A008435(n), A167700(n)]`
-/

namespace A290275.P11115711784333990453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008435 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A290275.P11115711784333990453

/-! ## A290275.P1653240485557222254

`lt[A008435(n), A331918(n)]`
-/

namespace A290275.P1653240485557222254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008435 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A290275.P1653240485557222254

/-! ## A290275.P18267475999060904711

`lt[A112315(n), A331918(n)]`
-/

namespace A290275.P18267475999060904711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112315 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A290275.P18267475999060904711

/-! ## A290275.P17164654372629193352

`lt[A065205(n+1), n*A331918(n)]`
-/

namespace A290275.P17164654372629193352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065205 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A331918 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A290275.P17164654372629193352

/-! ## A290275.P3740390820664162447

`lt[1, A001222(n*A167700(n)+1)+1]`
-/

namespace A290275.P3740390820664162447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n : ℤ) * A167700 n + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A290275.P3740390820664162447

/-! ## A290275.P17051116016132726057

`lt[1, A000040(n*A167700(n)+1)-1]`
-/

namespace A290275.P17051116016132726057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n : ℤ) * A167700 n + 1).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A290275.P17051116016132726057

/-! ## A290275.P16004937010644779245

`lt[3, A000040(2*n*A167700(n)+1)]`
-/

namespace A290275.P16004937010644779245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * ((n : ℤ) * A167700 n) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A290275.P16004937010644779245

/-!
# A290276: Numbers that are the sum of distinct odd positive cubes.

The programs for A290276, there is no canonical definition to state claims against.
-/

/-! ## A290276.P12810385191716031090

`record[A065033(2*n*A292547(n))]`
-/

namespace A290276.P12810385191716031090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * ((n : ℤ) * A292547 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290276.P12810385191716031090

/-! ## A290276.P6275327175059479014

`record[A028242(A004275(n*A292547(n)))]`
-/

namespace A290276.P6275327175059479014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A004275 ((n : ℤ) * A292547 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290276.P6275327175059479014

/-! ## A290276.P650190715526549928

`record[A010815(A001281(n))+n*A292547(n)]`
-/

namespace A290276.P650190715526549928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A001281 n).toNat + (n : ℤ) * A292547 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290276.P650190715526549928

/-! ## A290276.P10872228141414565454

`eq[A267870(A311435(n)), A292547(n)]`
-/

namespace A290276.P10872228141414565454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 (A311435 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292547 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A290276.P10872228141414565454

/-!
# A290277: Inverse Euler Transform of the Motzkin Numbers.

The programs for A290277, there is no canonical definition to state claims against.
-/

/-! ## A290277.P11056597028354566118

`∑{d}[n+1, A008683(#)*A208602((n+1)/#)]`
-/

namespace A290277.P11056597028354566118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A208602 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A290277.P11056597028354566118

/-! ## A290277.P12054391179850927969

`A006370(A215338(n+1)-A215337(n+1))`
-/

namespace A290277.P12054391179850927969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A215338 (n + 1) - A215337 (n + 1)).toNat

end

end A290277.P12054391179850927969

/-! ## A290277.P5668595342946295310

`A347625(A007323(n))`
-/

namespace A290277.P5668595342946295310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347625 (A007323 n).toNat

end

end A290277.P5668595342946295310

/-! ## A290277.P14514593475071649103

`A347625(A026713(n))`
-/

namespace A290277.P14514593475071649103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347625 (A026713 n).toNat

end

end A290277.P14514593475071649103

/-!
# A290278: a(n) = Sum_{k=0..n} (A007953(5*k) - A007953(k)).

The programs for A290278, the canonical program `A290278.P3137243004091456747` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290278 has offset 0).

The definition of A290278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290278.P3137243004091456747

`∑[∑{digits}[5*n, #]-∑{digits}[n, #]]`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A290278

/-- `∑[∑{digits}[5*n, #]-∑{digits}[n, #]]` -/
def P3137243004091456747.Spec : Prop :=
  ∀ n, P3137243004091456747.a n = A290278 n

theorem P3137243004091456747.correct : P3137243004091456747.Spec := by
  intro n
  simp only [A290278]

end A290278

/-! ## A290278.P535864733057039135

`∑[A326746(5*n)]-A037123(n)`
-/

namespace A290278.P535864733057039135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (5 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A037123 n

end

end A290278.P535864733057039135

namespace A290278

/-- `∑[A326746(5*n)]-A037123(n)` -/
def P535864733057039135.Spec : Prop :=
  ∀ n, P535864733057039135.a n = A290278 n

end A290278

/-! ## A290278.P4936374510131684367

`∑[A326746(A008587(n))-A007953(n)]`
-/

namespace A290278.P4936374510131684367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A008587 n).toNat - A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290278.P4936374510131684367

namespace A290278

/-- `∑[A326746(A008587(n))-A007953(n)]` -/
def P4936374510131684367.Spec : Prop :=
  ∀ n, P4936374510131684367.a n = A290278 n

end A290278

/-! ## A290278.P7773511526316589890

`∑[A007953(5*n)-A007953(n)]`
-/

namespace A290278.P7773511526316589890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (5 * n) - A007953 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A290278.P7773511526316589890

namespace A290278

/-- `∑[A007953(5*n)-A007953(n)]` -/
def P7773511526316589890.Spec : Prop :=
  ∀ n, P7773511526316589890.a n = A290278 n

end A290278

/-! ## A290278.P16987324282941759388

`A046092(n)%A040073(A011195(n))`
-/

namespace A290278.P16987324282941759388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046092 n) (A040073 (A011195 n).toNat)

end

end A290278.P16987324282941759388

namespace A290278

/-- `A046092(n)%A040073(A011195(n))` -/
def P16987324282941759388.Spec : Prop :=
  ∀ n, P16987324282941759388.a n = A290278 n

end A290278

/-!
# A290279: Number of permutations of [n] with a unique pair of orthogonal (diagonal, antidiagonal) X-rays.

The programs for A290279, there is no canonical definition to state claims against.
-/

/-! ## A290279.P373009199928347914

`A005843(A290280(n))-A000142(n)`
-/

namespace A290279.P373009199928347914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A290280 n).toNat - A000142 n

end

end A290279.P373009199928347914

/-! ## A290279.P2421841984151848995

`A005843(A290280(n))-A227550(∑[n])`
-/

namespace A290279.P2421841984151848995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A290280 n).toNat - A227550 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A290279.P2421841984151848995

/-! ## A290279.P1275638933698753112

`A127381(A205802(n))-floor(n/4)`
-/

namespace A290279.P1275638933698753112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127381 (A205802 n).toNat - ⌊(n : ℚ) / 4⌋

end

end A290279.P1275638933698753112

/-!
# A290280: Number of pairs of orthogonal (diagonal, antidiagonal) X-rays for all permutations of [n].

The programs for A290280, there is no canonical definition to state claims against.
-/

/-! ## A290280.P53296899675214309

`A252463(A290279(n)+A000142(n))`
-/

namespace A290280.P53296899675214309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (A290279 n + A000142 n).toNat

end

end A290280.P53296899675214309

/-! ## A290280.P6619150248553587211

`A370569(n)+A224931(A008998(n))`
-/

namespace A290280.P6619150248553587211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370569 n + A224931 (A008998 n).toNat

end

end A290280.P6619150248553587211

/-! ## A290280.P3140755439074291291

`A302492(A053617(n))-A006184(n)`
-/

namespace A290280.P3140755439074291291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302492 (A053617 n).toNat - A006184 n

end

end A290280.P3140755439074291291

/-!
# A290282: Numbers k such that (32*10^k + 337)/9 is prime.

The programs for A290282, there is no canonical definition to state claims against.
-/

/-! ## A290282.P8107656130232737463

`A350111(A284921(n+1)-A124228(n))`
-/

namespace A290282.P8107656130232737463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350111 (A284921 (n + 1) - A124228 n).toNat

end

end A290282.P8107656130232737463

/-!
# A290283: Primes p such that A215458(p) is prime.

The programs for A290283, there is no canonical definition to state claims against.
-/

/-! ## A290283.P16330212472795563168

`A226653(A282138(n+1))`
-/

namespace A290283.P16330212472795563168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226653 (A282138 (n + 1)).toNat

end

end A290283.P16330212472795563168

/-! ## A290283.P18151928631865354782

`∩[A167135(n+1), A252474(n+1)+n]`
-/

namespace A290283.P18151928631865354782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252474 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A290283.P18151928631865354782

/-! ## A290283.P17874808527129182462

`A116959(A316869(n)+A282138(n+1))`
-/

namespace A290283.P17874808527129182462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116959 (A316869 n + A282138 (n + 1)).toNat

end

end A290283.P17874808527129182462

/-! ## A290283.P8526584408392908063

`A116959(or(A017901(n), A282138(n+1)))`
-/

namespace A290283.P8526584408392908063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116959 (Int.lor (A017901 n) (A282138 (n + 1))).toNat

end

end A290283.P8526584408392908063

/-! ## A290283.P3952339811127323273

`A116959(or(A017902(n), A282138(n+1)))`
-/

namespace A290283.P3952339811127323273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116959 (Int.lor (A017902 n) (A282138 (n + 1))).toNat

end

end A290283.P3952339811127323273

/-!
# A290285: Determinant of circulant matrix of order 3 with entries in the first row (-1)^j * Sum_{k>=0} binomial(n,3*k+j), j=0,1,2.

The programs for A290285, there is no canonical definition to state claims against.
-/

/-! ## A290285.P1894906384001002280

`A068459(A153541(n))`
-/

namespace A290285.P1894906384001002280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068459 (A153541 n).toNat

end

end A290285.P1894906384001002280

/-!
# A290286: Determinant of circulant matrix of order 4 with entries in the first row (-1)^j*Sum_{k>=0}(-1)^k*binomial(n, 4*k+j), j=0,1,2,3.

The programs for A290286, there is no canonical definition to state claims against.
-/

/-! ## A290286.P5896550793385781786

`(1-A046800(or(n+1, n^n))²)*2^n`
-/

namespace A290286.P5896550793385781786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A046800 (Nat.lor (n + 1) (n ^ n)) ^ 2) * (2 ^ n : ℤ)

end

end A290286.P5896550793385781786

/-!
# A290287: Nonzero entries in A263014 in order of appearance.

The programs for A290287, there is no canonical definition to state claims against.
-/

/-! ## A290287.P9667314982132255002

`Δ[record[A263014(n+1)-a(n-1)]]` with `a(0)=2, a(1)=2`
-/

namespace A290287.P9667314982132255002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  A263014 (n + 1) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A290287.P9667314982132255002

/-! ## A290287.P17759637429662254004

`A263014(A263016(n+1))`
-/

namespace A290287.P17759637429662254004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263014 (A263016 (n + 1)).toNat

end

end A290287.P17759637429662254004

/-! ## A290287.P4558774459408767347

`A263014(lt[0, A263014(n+1)]+1)`
-/

namespace A290287.P4558774459408767347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263014 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A290287.P4558774459408767347

/-! ## A290287.P9006027191774303018

`A263014(record[A263016(gcd(xor(1, n²), ∑[n]))])`
-/

namespace A290287.P9006027191774303018
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263016 (Nat.gcd (Nat.xor 1 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263014 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A290287.P9006027191774303018

/-! ## A290287.P10959210329422985229

`A263014(eq[2, 2%(A263014(n+1)+1)]+1)`
-/

namespace A290287.P10959210329422985229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A263014 (n + 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263014 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A290287.P10959210329422985229

/-!
# A290288: Sum of the differences of the larger and smaller parts in the partitions of 2n into two parts with the larger part prime.

The programs for A290288, the canonical program `A290288.P7015897065372757057` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A290288 has offset 1).

The definition of A290288 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A290288.P5055548585134947695

`A294022(2*(n+1))`
-/

namespace A290288.P5055548585134947695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294022 (2 * (n + 1))

end

end A290288.P5055548585134947695

namespace A290288

/-- `A294022(2*(n+1))` -/
def P5055548585134947695.Spec : Prop :=
  ∀ n, P5055548585134947695.a n = A290288 (n + 1)

end A290288

/-! ## A290288.P5402967651797484314

`lcm(2, A294022(n+2+n))`
-/

namespace A290288.P5402967651797484314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A294022 (n + 2 + n))

end

end A290288.P5402967651797484314

namespace A290288

/-- `lcm(2, A294022(n+2+n))` -/
def P5402967651797484314.Spec : Prop :=
  ∀ n, (P5402967651797484314.a n : ℤ) = A290288 (n + 1)

end A290288

/-! ## A290288.P16568895290288889244

`and(-1, A294022(Δ[n²]+1))`
-/

namespace A290288.P16568895290288889244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A294022 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat)

end

end A290288.P16568895290288889244

namespace A290288

/-- `and(-1, A294022(Δ[n²]+1))` -/
def P16568895290288889244.Spec : Prop :=
  ∀ n, P16568895290288889244.a n = A290288 (n + 1)

end A290288

/-! ## A290288.P15024649417384630893

`C(A294022(n+2+n), A054977(n))`
-/

namespace A290288.P15024649417384630893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A294022 (n + 2 + n)).toNat (A054977 n).toNat

end

end A290288.P15024649417384630893

namespace A290288

/-- `C(A294022(n+2+n), A054977(n))` -/
def P15024649417384630893.Spec : Prop :=
  ∀ n, (P15024649417384630893.a n : ℤ) = A290288 (n + 1)

end A290288

/-! ## A290288.P11364330092208756894

`A063955(2*n+1)-A294113(n+1)`
-/

namespace A290288.P11364330092208756894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063955 (2 * n + 1) - A294113 (n + 1)

end

end A290288.P11364330092208756894

namespace A290288

/-- `A063955(2*n+1)-A294113(n+1)` -/
def P11364330092208756894.Spec : Prop :=
  ∀ n, P11364330092208756894.a n = A290288 (n + 1)

end A290288

/-! ## A290288.P7015897065372757057

`A294487(2*(n+1))-A368058(2*(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A290288

/-- `A294487(2*(n+1))-A368058(2*(n+1))` -/
def P7015897065372757057.Spec : Prop :=
  ∀ n, P7015897065372757057.a n = A290288 (n + 1)

theorem P7015897065372757057.correct : P7015897065372757057.Spec := by
  intro n
  simp only [A290288, Nat.add_sub_cancel]

end A290288

/-! ## A290288.P14588883452415714396

`A294022(n+2+n)/floor(atan(A000040(n+1)))`
-/

namespace A290288.P14588883452415714396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A294022 (n + 2 + n) : ℚ) / (⌊Real.arctan (A000040 (n + 1) : ℝ)⌋ : ℚ)

end

end A290288.P14588883452415714396

namespace A290288

/-- `A294022(n+2+n)/floor(atan(A000040(n+1)))` -/
def P14588883452415714396.Spec : Prop :=
  ∀ n, P14588883452415714396.a n = (A290288 (n + 1) : ℚ)

end A290288

/-! ## A290288.P7884435639535447965

`A294022(n+2+n)%A001872(n)`
-/

namespace A290288.P7884435639535447965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A294022 (n + 2 + n)) (A001872 n)

end

end A290288.P7884435639535447965

namespace A290288

/-- `A294022(n+2+n)%A001872(n)` -/
def P7884435639535447965.Spec : Prop :=
  ∀ n, P7884435639535447965.a n = A290288 (n + 1)

end A290288

/-! ## A290288.P12288870910793468766

`A245092(A294022(Δ[n²]+1))`
-/

namespace A290288.P12288870910793468766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A294022 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat).toNat

end

end A290288.P12288870910793468766

namespace A290288

/-- `A245092(A294022(Δ[n²]+1))` -/
def P12288870910793468766.Spec : Prop :=
  ∀ n, P12288870910793468766.a n = A290288 (n + 1)

end A290288

/-!
# A290289: The number of maximal subsemigroups of the monoid of partial orientation-preserving and reversing injective mappings on the set [1..n].

The programs for A290289, there is no canonical definition to state claims against.
-/

/-! ## A290289.P3081789774252723356

`A316828(A000392(n))+A286621(2*(n+1))`
-/

namespace A290289.P3081789774252723356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316828 (A000392 n).toNat + A286621 (2 * (n + 1))

end

end A290289.P3081789774252723356

/-!
# A290291: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 777", based on the 5-celled von Neumann neighborhood.

The programs for A290291, there is no canonical definition to state claims against.
-/

/-! ## A290291.P9112169209063145740

`A007088(A290293(n))`
-/

namespace A290291.P9112169209063145740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290293 n).toNat

end

end A290291.P9112169209063145740

/-! ## A290291.P5086723203446546648

`A305989(A290292(n))`
-/

namespace A290291.P5086723203446546648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A290292 n).toNat

end

end A290291.P5086723203446546648

/-! ## A290291.P4496538150191389785

`A185544(2*A290293(n))`
-/

namespace A290291.P4496538150191389785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290293 n).toNat

end

end A290291.P4496538150191389785

/-! ## A290291.P17176333003788906858

`A185544(lcm(2, A290293(n)))`
-/

namespace A290291.P17176333003788906858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A290293 n))

end

end A290291.P17176333003788906858

/-! ## A290291.P17743800811233764380

`A185544(A290293(n)+A290293(n))`
-/

namespace A290291.P17743800811233764380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A290293 n + A290293 n).toNat

end

end A290291.P17743800811233764380

/-!
# A290293: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 777", based on the 5-celled von Neumann neighborhood.

The programs for A290293, there is no canonical definition to state claims against.
-/

/-! ## A290293.P16119095133631662332

`A325401(A290292(n))`
-/

namespace A290293.P16119095133631662332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (A290292 n).toNat

end

end A290293.P16119095133631662332

/-! ## A290293.P11181089270627434678

`or(A113080(A113058(n+1)), A288898(n))`
-/

namespace A290293.P11181089270627434678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A113080 (A113058 (n + 1)).toNat) (A288898 n)

end

end A290293.P11181089270627434678

/-!
# A290294: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 779", based on the 5-celled von Neumann neighborhood.

The programs for A290294, there is no canonical definition to state claims against.
-/

/-! ## A290294.P14833009082989605605

`A007088(A290296(n))`
-/

namespace A290294.P14833009082989605605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290296 n).toNat

end

end A290294.P14833009082989605605

/-! ## A290294.P8963703384915258500

`A007088(or(1, A126646(n)-A285479(n)))`
-/

namespace A290294.P8963703384915258500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor 1 (A126646 n - A285479 n)).toNat

end

end A290294.P8963703384915258500

/-! ## A290294.P17720580655041957824

`A007088(A126646(n)-A285479(n)%A132736(n))`
-/

namespace A290294.P17720580655041957824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A126646 n - Int.tmod (A285479 n) (A132736 n)).toNat

end

end A290294.P17720580655041957824

/-! ## A290294.P4743523221997084511

`A305989(A290297(n))`
-/

namespace A290294.P4743523221997084511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A290297 n).toNat

end

end A290294.P4743523221997084511

/-! ## A290294.P9964180670408959485

`A305989(or(1, A126646(n)-A285480(n)))`
-/

namespace A290294.P9964180670408959485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (Int.lor 1 (A126646 n - A285480 n)).toNat

end

end A290294.P9964180670408959485

/-!
# A290295: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 779", based on the 5-celled von Neumann neighborhood.

The programs for A290295, there is no canonical definition to state claims against.
-/

/-! ## A290295.P1116484521277385112

`A007088(A290297(n))`
-/

namespace A290295.P1116484521277385112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290297 n).toNat

end

end A290295.P1116484521277385112

/-! ## A290295.P13842026484530545092

`A007088(or(1, A126646(n)-A285480(n)))`
-/

namespace A290295.P13842026484530545092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor 1 (A126646 n - A285480 n)).toNat

end

end A290295.P13842026484530545092

/-! ## A290295.P8094794606958741524

`A305989(A290296(n))`
-/

namespace A290295.P8094794606958741524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A290296 n).toNat

end

end A290295.P8094794606958741524

/-! ## A290295.P10059299831664074361

`A185544(2*A290297(n))`
-/

namespace A290295.P10059299831664074361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290297 n).toNat

end

end A290295.P10059299831664074361

/-! ## A290295.P2175149965428892690

`A185544(lcm(2, A290297(n)))`
-/

namespace A290295.P2175149965428892690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A290297 n))

end

end A290295.P2175149965428892690

/-!
# A290296: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 779", based on the 5-celled von Neumann neighborhood.

The programs for A290296, there is no canonical definition to state claims against.
-/

/-! ## A290296.P6599233904659144809

`or(1, A126646(n)-A285479(n))`
-/

namespace A290296.P6599233904659144809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A285479 n)

end

end A290296.P6599233904659144809

/-! ## A290296.P8339700140791413085

`A075427(A004277(n))-A285479(n)`
-/

namespace A290296.P8339700140791413085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075427 (A004277 n).toNat - A285479 n

end

end A290296.P8339700140791413085

/-! ## A290296.P14758521091361414517

`A126646(n)-A285479(A028310(n))`
-/

namespace A290296.P14758521091361414517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A285479 (A028310 n).toNat

end

end A290296.P14758521091361414517

/-! ## A290296.P6166728552424641576

`record[A290422(n)-A285479(A065033(n))]`
-/

namespace A290296.P6166728552424641576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290422 n - A285479 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A290296.P6166728552424641576

/-! ## A290296.P18130960642229970202

`A126646(n)-A285479(n)%A132736(n)`
-/

namespace A290296.P18130960642229970202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A285479 n) (A132736 n)

end

end A290296.P18130960642229970202

/-! ## A290296.P4961313040725827478

`A290422(2*n)-A285479(A065033(2*n))`
-/

namespace A290296.P4961313040725827478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290422 (2 * n) - A285479 (A065033 (2 * n)).toNat

end

end A290296.P4961313040725827478

/-!
# A290297: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 779", based on the 5-celled von Neumann neighborhood.

The programs for A290297, there is no canonical definition to state claims against.
-/

/-! ## A290297.P7871825749892827082

`or(1, A126646(n)-A285480(n))`
-/

namespace A290297.P7871825749892827082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A285480 n)

end

end A290297.P7871825749892827082

/-! ## A290297.P10647642214922308423

`A126646(n)-A285480(A028310(n))`
-/

namespace A290297.P10647642214922308423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - A285480 (A028310 n).toNat

end

end A290297.P10647642214922308423

/-! ## A290297.P8146418293106353587

`xor(A077896(A004277(n)), A285480(n))`
-/

namespace A290297.P8146418293106353587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A077896 (A004277 n).toNat) (A285480 n)

end

end A290297.P8146418293106353587

/-! ## A290297.P4649364549581548152

`record[A077896(n)]-A285480(A028310(n))`
-/

namespace A290297.P4649364549581548152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A285480 (A028310 n).toNat

end

end A290297.P4649364549581548152

/-! ## A290297.P9132276260580792101

`record[A290422(n)]-A285480(A028310(n))`
-/

namespace A290297.P9132276260580792101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A285480 (A028310 n).toNat

end

end A290297.P9132276260580792101

/-! ## A290297.P13619953265338723845

`A077896(2*n)-A285480(A028310(n))`
-/

namespace A290297.P13619953265338723845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077896 (2 * n) - A285480 (A028310 n).toNat

end

end A290297.P13619953265338723845

/-! ## A290297.P15305162163950068060

`A290422(2*n)-A285480(A028310(n))`
-/

namespace A290297.P15305162163950068060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290422 (2 * n) - A285480 (A028310 n).toNat

end

end A290297.P15305162163950068060

/-!
# A290298: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 782", based on the 5-celled von Neumann neighborhood.

The programs for A290298, there is no canonical definition to state claims against.
-/

/-! ## A290298.P12803550876930664741

`A007088(A290300(n))`
-/

namespace A290298.P12803550876930664741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290300 n).toNat

end

end A290298.P12803550876930664741

/-! ## A290298.P2742395236981519351

`A185544(2*A290300(n))`
-/

namespace A290298.P2742395236981519351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290300 n).toNat

end

end A290298.P2742395236981519351

/-! ## A290298.P5677659284155469923

`A185544(lcm(2, A290300(n)))`
-/

namespace A290298.P5677659284155469923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A290300 n))

end

end A290298.P5677659284155469923

/-! ## A290298.P17208971800636311228

`A305989(A290301(n)/A060546(n))`
-/

namespace A290298.P17208971800636311228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A290301 n : ℚ) / (A060546 n : ℚ))).toNat

end

end A290298.P17208971800636311228

/-! ## A290298.P12046052699359729006

`A305989(ceil(A290301(n)/32))`
-/

namespace A290298.P12046052699359729006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 ⌈(A290301 n : ℚ) / 32⌉.toNat

end

end A290298.P12046052699359729006

/-!
# A290299: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 782", based on the 5-celled von Neumann neighborhood.

The programs for A290299, there is no canonical definition to state claims against.
-/

/-! ## A290299.P2280894428390787821

`A007088(A290301(n))`
-/

namespace A290299.P2280894428390787821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A290301 n).toNat

end

end A290299.P2280894428390787821

/-! ## A290299.P12384987458786172496

`A185544(2*A290301(n))`
-/

namespace A290299.P12384987458786172496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A290301 n).toNat

end

end A290299.P12384987458786172496

/-! ## A290299.P4153560051374469883

`A104459(A073956(n+1)+n)`
-/

namespace A290299.P4153560051374469883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104459 (A073956 (n + 1) + (n : ℤ)).toNat

end

end A290299.P4153560051374469883

