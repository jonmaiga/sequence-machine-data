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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C047
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C011
import Seq.B001.C012
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
import SequenceMachineLib.Triangle

/-!
# A288700: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 494", based on the 5-celled von Neumann neighborhood.

The programs for A288700, the canonical program `A288700.P5518982252620536014` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288700 has offset 0).

The definition of A288700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288700.P7293859499520555140

`ogf((1+2x-4x^2+8x^4)/(1-4x^2))`
-/

namespace A288700.P7293859499520555140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -4, 0, 8] [1, 0, -4] n

end

end A288700.P7293859499520555140

namespace A288700

/-- `ogf((1+2x-4x^2+8x^4)/(1-4x^2))` -/
def P7293859499520555140.Spec : Prop :=
  ∀ n, P7293859499520555140.a n = A288700 n

end A288700

/-! ## A288700.P5518982252620536014

`4*a(n-2)` with `a(0)=1, a(1)=2, a(2)=0, a(3)=8, a(4)=8`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A288700

/-- `4*a(n-2)` -/
def P5518982252620536014.Spec : Prop :=
  ∀ n, (P5518982252620536014.a n : ℤ) = A288700 n

theorem P5518982252620536014.correct : P5518982252620536014.Spec := by
  intro n
  simp only [A288700]

end A288700

/-! ## A288700.P7551601704747212597

`and(-(2*floor(n/2)+1), A158302(n))`
-/

namespace A288700.P7551601704747212597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(2 * ⌊(n : ℚ) / 2⌋ + 1)) (A158302 n)

end

end A288700.P7551601704747212597

namespace A288700

/-- `and(-(2*floor(n/2)+1), A158302(n))` -/
def P7551601704747212597.Spec : Prop :=
  ∀ n, P7551601704747212597.a n = A288700 n

end A288700

/-! ## A288700.P7055756080246755891

`A158302(n)*A267936(n)`
-/

namespace A288700.P7055756080246755891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158302 n * A267936 n

end

end A288700.P7055756080246755891

namespace A288700

/-- `A158302(n)*A267936(n)` -/
def P7055756080246755891.Spec : Prop :=
  ∀ n, P7055756080246755891.a n = A288700 n

end A288700

/-! ## A288700.P4163593471173317676

`lcm(A158302(n), A288699(n))`
-/

namespace A288700.P4163593471173317676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158302 n) (A288699 n)

end

end A288700.P4163593471173317676

namespace A288700

/-- `lcm(A158302(n), A288699(n))` -/
def P4163593471173317676.Spec : Prop :=
  ∀ n, (P4163593471173317676.a n : ℤ) = A288700 n

end A288700

/-! ## A288700.P11848937253283393545

`and(A158302(n), A165747(n))`
-/

namespace A288700.P11848937253283393545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158302 n) (A165747 n)

end

end A288700.P11848937253283393545

namespace A288700

/-- `and(A158302(n), A165747(n))` -/
def P11848937253283393545.Spec : Prop :=
  ∀ n, P11848937253283393545.a n = A288700 n

end A288700

/-! ## A288700.P16285497417317459242

`and(A157823(n), A288197(n))`
-/

namespace A288700.P16285497417317459242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A157823 n) (A288197 n)

end

end A288700.P16285497417317459242

namespace A288700

/-- `and(A157823(n), A288197(n))` -/
def P16285497417317459242.Spec : Prop :=
  ∀ n, P16285497417317459242.a n = A288700 n

end A288700

/-! ## A288700.P2206194563928389156

`and(A158302(n), A172157(n+1))`
-/

namespace A288700.P2206194563928389156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A158302 n) (A172157 (n + 1))

end

end A288700.P2206194563928389156

namespace A288700

/-- `and(A158302(n), A172157(n+1))` -/
def P2206194563928389156.Spec : Prop :=
  ∀ n, P2206194563928389156.a n = A288700 n

end A288700

/-! ## A288700.P1963522003813311466

`and(A003945(n), A288197(n))`
-/

namespace A288700.P1963522003813311466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003945 n) (A288197 n)

end

end A288700.P1963522003813311466

namespace A288700

/-- `and(A003945(n), A288197(n))` -/
def P1963522003813311466.Spec : Prop :=
  ∀ n, P1963522003813311466.a n = A288700 n

end A288700

/-! ## A288700.P3826722474806696237

`and(A071109(n), A290859(n))`
-/

namespace A288700.P3826722474806696237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A071109 n) (A290859 n)

end

end A288700.P3826722474806696237

namespace A288700

/-- `and(A071109(n), A290859(n))` -/
def P3826722474806696237.Spec : Prop :=
  ∀ n, P3826722474806696237.a n = A288700 n

end A288700

/-! ## A288700.P369620444930604025

`and(A077925(n), A290859(n))`
-/

namespace A288700.P369620444930604025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077925 n) (A290859 n)

end

end A288700.P369620444930604025

namespace A288700

/-- `and(A077925(n), A290859(n))` -/
def P369620444930604025.Spec : Prop :=
  ∀ n, P369620444930604025.a n = A288700 n

end A288700

/-!
# A288701: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 497", based on the 5-celled von Neumann neighborhood.

The programs for A288701, there is no canonical definition to state claims against.
-/

/-! ## A288701.P634470454720522527

`A276540(n)-A000007(A023360(n))`
-/

namespace A288701.P634470454720522527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276540 n - A000007 (A023360 n).toNat

end

end A288701.P634470454720522527

/-! ## A288701.P12839371903980254570

`A276540(n)-A010051(A099476(n))`
-/

namespace A288701.P12839371903980254570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276540 n - A010051 (A099476 n).toNat

end

end A288701.P12839371903980254570

/-! ## A288701.P17425171226556576964

`A276540(n)-A000007(A006355(n))`
-/

namespace A288701.P17425171226556576964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276540 n - A000007 (A006355 n).toNat

end

end A288701.P17425171226556576964

/-! ## A288701.P10779633334068958419

`A276540(n)-A010051(A249795(n))`
-/

namespace A288701.P10779633334068958419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276540 n - A010051 (A249795 n).toNat

end

end A288701.P10779633334068958419

/-! ## A288701.P13518174582306155852

`A276540(n)-A010051(A000079(n))`
-/

namespace A288701.P13518174582306155852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276540 n - A010051 (A000079 n).toNat

end

end A288701.P13518174582306155852

/-!
# A288702: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 497", based on the 5-celled von Neumann neighborhood.

The programs for A288702, there is no canonical definition to state claims against.
-/

/-! ## A288702.P2545420606652903879

`A284040(n)^A186729(A285402(n+1))`
-/

namespace A288702.P2545420606652903879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284040 n : ℚ) ^ (A186729 (A285402 (n + 1)).toNat : ℤ)

end

end A288702.P2545420606652903879

/-! ## A288702.P9723948534232029661

`A284040(n*A019428(A118658(n)))`
-/

namespace A288702.P9723948534232029661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284040 ((n : ℤ) * A019428 (A118658 n).toNat).toNat

end

end A288702.P9723948534232029661

/-! ## A288702.P14277875229315453485

`A284040(n)^A019428(A118658(n))`
-/

namespace A288702.P14277875229315453485
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284040 n : ℚ) ^ (A019428 (A118658 n).toNat : ℤ)

end

end A288702.P14277875229315453485

/-! ## A288702.P7355772908174275627

`A284040(n)%A104722(A028387(n))`
-/

namespace A288702.P7355772908174275627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284040 n) (A104722 (A028387 n).toNat)

end

end A288702.P7355772908174275627

/-! ## A288702.P6769777732385910439

`gcd(A008683(A000079(n)), A284040(n))`
-/

namespace A288702.P6769777732385910439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A000079 n).toNat) (A284040 n)

end

end A288702.P6769777732385910439

/-!
# A288703: Number of (undirected) paths in the n-barbell graph.

The programs for A288703, the canonical program `A288703.P13620747763556395744` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288703 has offset 1).

The definition of A288703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288703.P13620747763556395744

`A000522(n)²+A000522(n+1)-(n+1)-1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A288703

/-- `A000522(n)²+A000522(n+1)-(n+1)-1` -/
def P13620747763556395744.Spec : Prop :=
  ∀ n, P13620747763556395744.a n = A288703 (n + 1)

theorem P13620747763556395744.correct : P13620747763556395744.Spec := by
  intro n
  simp only [A288703, Nat.add_sub_cancel]

end A288703

/-! ## A288703.P15672102213618030887

`A082458(2*n+1)+(n!*∑[1/n!])²`
-/

namespace A288703.P15672102213618030887
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082458 (2 * n + 1) : ℚ) + ((Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A288703.P15672102213618030887

namespace A288703

/-- `A082458(2*n+1)+(n!*∑[1/n!])²` -/
def P15672102213618030887.Spec : Prop :=
  ∀ n, P15672102213618030887.a n = (A288703 (n + 1) : ℚ)

end A288703

/-! ## A288703.P18231237625950359764

`A038154(n+1)+A000522(n)²`
-/

namespace A288703.P18231237625950359764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038154 (n + 1) + A000522 n ^ 2

end

end A288703.P18231237625950359764

namespace A288703

/-- `A038154(n+1)+A000522(n)²` -/
def P18231237625950359764.Spec : Prop :=
  ∀ n, P18231237625950359764.a n = A288703 (n + 1)

end A288703

/-! ## A288703.P13714339944427501491

`∑[A036918(n+1)]+A000522(n)²`
-/

namespace A288703.P13714339944427501491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A000522 n ^ 2

end

end A288703.P13714339944427501491

namespace A288703

/-- `∑[A036918(n+1)]+A000522(n)²` -/
def P13714339944427501491.Spec : Prop :=
  ∀ n, P13714339944427501491.a n = A288703 (n + 1)

end A288703

/-! ## A288703.P16404395280667142389

`Δ[A119913(n+1)]+A000522(n)²`
-/

namespace A288703.P16404395280667142389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000522 n ^ 2

end

end A288703.P16404395280667142389

namespace A288703

/-- `Δ[A119913(n+1)]+A000522(n)²` -/
def P16404395280667142389.Spec : Prop :=
  ∀ n, P16404395280667142389.a n = A288703 (n + 1)

end A288703

/-!
# A288704: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 497", based on the 5-celled von Neumann neighborhood.

The programs for A288704, there is no canonical definition to state claims against.
-/

/-! ## A288704.P250284229546997844

`A284041(n)+A159075(A218711(n))`
-/

namespace A288704.P250284229546997844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284041 n + A159075 (A218711 n).toNat

end

end A288704.P250284229546997844

/-! ## A288704.P14941860661063367949

`A284041(n)-A000007(A023360(n))`
-/

namespace A288704.P14941860661063367949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284041 n - A000007 (A023360 n).toNat

end

end A288704.P14941860661063367949

/-! ## A288704.P14996750176383301457

`A284041(n)-A159075(n)*A159075(A218711(n))`
-/

namespace A288704.P14996750176383301457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284041 n - A159075 n * A159075 (A218711 n).toNat

end

end A288704.P14996750176383301457

/-! ## A288704.P14560354284408435085

`A284041(n)+A159075(A216888(n+1))`
-/

namespace A288704.P14560354284408435085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284041 n + A159075 (A216888 (n + 1)).toNat

end

end A288704.P14560354284408435085

/-! ## A288704.P2907774484230198077

`A284041(n)-A185012(A329886(n))`
-/

namespace A288704.P2907774484230198077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284041 n - A185012 (A329886 n).toNat

end

end A288704.P2907774484230198077

/-!
# A288705: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 497", based on the 5-celled von Neumann neighborhood.

The programs for A288705, there is no canonical definition to state claims against.
-/

/-! ## A288705.P17758593830647468799

`A284042(n)-A000038(A023360(n))`
-/

namespace A288705.P17758593830647468799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284042 n - A000038 (A023360 n).toNat

end

end A288705.P17758593830647468799

/-! ## A288705.P15134341785100368554

`gcd(A000122(A218711(n)), A284042(n))`
-/

namespace A288705.P15134341785100368554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000122 (A218711 n).toNat) (A284042 n)

end

end A288705.P15134341785100368554

/-! ## A288705.P16818707534976632041

`A284042(n)^A186729(A285402(n+1))`
-/

namespace A288705.P16818707534976632041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284042 n : ℚ) ^ (A186729 (A285402 (n + 1)).toNat : ℤ)

end

end A288705.P16818707534976632041

/-! ## A288705.P5227682882351080618

`A284042(n)/C(A284041(n), A288704(n))`
-/

namespace A288705.P5227682882351080618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A284042 n : ℚ) / (Nat.choose (A284041 n).toNat (A288704 n).toNat : ℚ)

end

end A288705.P5227682882351080618

/-! ## A288705.P2812300202817997655

`and(A260196(A285436(n)), A284042(n))`
-/

namespace A288705.P2812300202817997655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 (A285436 n).toNat) (A284042 n)

end

end A288705.P2812300202817997655

/-!
# A288707: 0-limiting word of the mapping 00->1000, 10->00, starting with 00.

The programs for A288707, the canonical program `A288707.P4491168052433838887` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288707 has offset 1).

The definition of A288707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288707.P8500601643531601016

`char[2*comp[ceil(ϕ*n)]]`
-/

namespace A288707.P8500601643531601016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288707.P8500601643531601016

namespace A288707

/-- `char[2*comp[ceil(ϕ*n)]]` -/
def P8500601643531601016.Spec : Prop :=
  ∀ n, (P8500601643531601016.a n : ℤ) = A288707 (n + 1)

end A288707

/-! ## A288707.P4491168052433838887

`A189661(n-gcd(n, ∑[n])+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A288707

/-- `A189661(n-gcd(n, ∑[n])+1)` -/
def P4491168052433838887.Spec : Prop :=
  ∀ n, P4491168052433838887.a n = A288707 (n + 1)

theorem P4491168052433838887.correct : P4491168052433838887.Spec := by
  intro n
  simp only [A288707, Nat.add_sub_cancel]

end A288707

/-! ## A288707.P9791747253375450012

`col(A108103(a(n-1)+n))` with `a(0)=0`
-/

namespace A288707.P9791747253375450012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.triCol (A108103 (a (n - 1) + n)).toNat

end

end A288707.P9791747253375450012

namespace A288707

/-- `col(A108103(a(n-1)+n))` -/
def P9791747253375450012.Spec : Prop :=
  ∀ n, (P9791747253375450012.a n : ℤ) = A288707 (n + 1)

end A288707

/-! ## A288707.P11339773696935656851

`A189661(A158416(n))`
-/

namespace A288707.P11339773696935656851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A158416 n).toNat

end

end A288707.P11339773696935656851

namespace A288707

/-- `A189661(A158416(n))` -/
def P11339773696935656851.Spec : Prop :=
  ∀ n, P11339773696935656851.a n = A288707 (n + 1)

end A288707

/-! ## A288707.P9655270717765733256

`A189661(A038459(n+1))`
-/

namespace A288707.P9655270717765733256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A038459 (n + 1)).toNat

end

end A288707.P9655270717765733256

namespace A288707

/-- `A189661(A038459(n+1))` -/
def P9655270717765733256.Spec : Prop :=
  ∀ n, P9655270717765733256.a n = A288707 (n + 1)

end A288707

/-! ## A288707.P5459351646234637218

`3%A108103(A028310(n))`
-/

namespace A288707.P5459351646234637218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A108103 (A028310 n).toNat)

end

end A288707.P5459351646234637218

namespace A288707

/-- `3%A108103(A028310(n))` -/
def P5459351646234637218.Spec : Prop :=
  ∀ n, P5459351646234637218.a n = A288707 (n + 1)

end A288707

/-! ## A288707.P13879553147157591473

`xor(A154272(n+1), A288711(n+1))`
-/

namespace A288707.P13879553147157591473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A154272 (n + 1)) (A288711 (n + 1))

end

end A288707.P13879553147157591473

namespace A288707

/-- `xor(A154272(n+1), A288711(n+1))` -/
def P13879553147157591473.Spec : Prop :=
  ∀ n, P13879553147157591473.a n = A288707 (n + 1)

end A288707

/-! ## A288707.P6268843473618999679

`A048679(abs(4-A188010(n+1)))%2`
-/

namespace A288707.P6268843473618999679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048679 |4 - A188010 (n + 1)|.toNat) 2

end

end A288707.P6268843473618999679

namespace A288707

/-- `A048679(abs(4-A188010(n+1)))%2` -/
def P6268843473618999679.Spec : Prop :=
  ∀ n, P6268843473618999679.a n = A288707 (n + 1)

end A288707

/-! ## A288707.P18287703130625260289

`Δ[A189663(A065033(n))]`
-/

namespace A288707.P18287703130625260289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A065033 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288707.P18287703130625260289

namespace A288707

/-- `Δ[A189663(A065033(n))]` -/
def P18287703130625260289.Spec : Prop :=
  ∀ n, P18287703130625260289.a n = A288707 (n + 1)

end A288707

/-! ## A288707.P2613635300534169228

`A189661(A152271(n+1))`
-/

namespace A288707.P2613635300534169228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A152271 (n + 1)).toNat

end

end A288707.P2613635300534169228

namespace A288707

/-- `A189661(A152271(n+1))` -/
def P2613635300534169228.Spec : Prop :=
  ∀ n, P2613635300534169228.a n = A288707 (n + 1)

end A288707

/-! ## A288707.P15202480374671038535

`1-A188011(A188010(n+1))`
-/

namespace A288707.P15202480374671038535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A188011 (A188010 (n + 1)).toNat

end

end A288707.P15202480374671038535

namespace A288707

/-- `1-A188011(A188010(n+1))` -/
def P15202480374671038535.Spec : Prop :=
  ∀ n, P15202480374671038535.a n = A288707 (n + 1)

end A288707

/-! ## A288707.P6372274600088992828

`1-A188011(A188188(n+1))`
-/

namespace A288707.P6372274600088992828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A188011 (A188188 (n + 1)).toNat

end

end A288707.P6372274600088992828

namespace A288707

/-- `1-A188011(A188188(n+1))` -/
def P6372274600088992828.Spec : Prop :=
  ∀ n, P6372274600088992828.a n = A288707 (n + 1)

end A288707

/-! ## A288707.P4483758332547999653

`C(n, A288708(A054089(n+1)))`
-/

namespace A288707.P4483758332547999653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A288708 (A054089 (n + 1)).toNat).toNat

end

end A288707.P4483758332547999653

namespace A288707

/-- `C(n, A288708(A054089(n+1)))` -/
def P4483758332547999653.Spec : Prop :=
  ∀ n, (P4483758332547999653.a n : ℤ) = A288707 (n + 1)

end A288707

/-! ## A288707.P10264914975961597584

`1-A188470(A188468(n+1))`
-/

namespace A288707.P10264914975961597584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A188470 (A188468 (n + 1)).toNat

end

end A288707.P10264914975961597584

namespace A288707

/-- `1-A188470(A188468(n+1))` -/
def P10264914975961597584.Spec : Prop :=
  ∀ n, P10264914975961597584.a n = A288707 (n + 1)

end A288707

/-! ## A288707.P9900733036115657519

`1-A188467(A188468(n+1)-1)`
-/

namespace A288707.P9900733036115657519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A188467 (A188468 (n + 1) - 1).toNat

end

end A288707.P9900733036115657519

namespace A288707

/-- `1-A188467(A188468(n+1)-1)` -/
def P9900733036115657519.Spec : Prop :=
  ∀ n, P9900733036115657519.a n = A288707 (n + 1)

end A288707

/-! ## A288707.P10438319893194312229

`A096270(eq[1, A188470(n+1)+A096270(n)])`
-/

namespace A288707.P10438319893194312229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188470 (n + 1) + A096270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288707.P10438319893194312229

namespace A288707

/-- `A096270(eq[1, A188470(n+1)+A096270(n)])` -/
def P10438319893194312229.Spec : Prop :=
  ∀ n, P10438319893194312229.a n = A288707 (n + 1)

end A288707

/-! ## A288707.P1173140509910827236

`A288711(A367067(n+1))`
-/

namespace A288707.P1173140509910827236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288711 (A367067 (n + 1)).toNat

end

end A288707.P1173140509910827236

namespace A288707

/-- `A288711(A367067(n+1))` -/
def P1173140509910827236.Spec : Prop :=
  ∀ n, P1173140509910827236.a n = A288707 (n + 1)

end A288707

/-! ## A288707.P1790236218536911026

`A188014(A188019(A188018(n+1)-(n+2)))`
-/

namespace A288707.P1790236218536911026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A188019 (A188018 (n + 1) - (n + 2 : ℤ)).toNat).toNat

end

end A288707.P1790236218536911026

namespace A288707

/-- `A188014(A188019(A188018(n+1)-(n+2)))` -/
def P1790236218536911026.Spec : Prop :=
  ∀ n, P1790236218536911026.a n = A288707 (n + 1)

end A288707

/-! ## A288707.P18077389376287421222

`A188187(A188035(2*(n+1)))`
-/

namespace A288707.P18077389376287421222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188187 (A188035 (2 * (n + 1))).toNat

end

end A288707.P18077389376287421222

namespace A288707

/-- `A188187(A188035(2*(n+1)))` -/
def P18077389376287421222.Spec : Prop :=
  ∀ n, P18077389376287421222.a n = A288707 (n + 1)

end A288707

/-! ## A288707.P10418201150272012723

`1-A188011(A188035(2*n+1))`
-/

namespace A288707.P10418201150272012723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A188011 (A188035 (2 * n + 1)).toNat

end

end A288707.P10418201150272012723

namespace A288707

/-- `1-A188011(A188035(2*n+1))` -/
def P10418201150272012723.Spec : Prop :=
  ∀ n, P10418201150272012723.a n = A288707 (n + 1)

end A288707

/-!
# A288708: Positions of 0 in A288707; complement of A288709.

The programs for A288708, the canonical program `A288708.P5207956346555753035` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288708 has offset 1).

The definition of A288708 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288708.P3995327990774920325

`comp[2*A026352(n)]+1`
-/

namespace A288708.P3995327990774920325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A026352 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288708.P3995327990774920325

namespace A288708

/-- `comp[2*A026352(n)]+1` -/
def P3995327990774920325.Spec : Prop :=
  ∀ n, (P3995327990774920325.a n : ℤ) = A288708 (n + 1)

end A288708

/-! ## A288708.P9502565454809138838

`comp[2*comp[A004956(n)]]+1`
-/

namespace A288708.P9502565454809138838
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A288708.P9502565454809138838

namespace A288708

/-- `comp[2*comp[A004956(n)]]+1` -/
def P9502565454809138838.Spec : Prop :=
  ∀ n, (P9502565454809138838.a n : ℤ) = A288708 (n + 1)

end A288708

/-! ## A288708.P755186768779803649

`comp[A288709(n+1)-1]+1`
-/

namespace A288708.P755186768779803649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288709 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288708.P755186768779803649

namespace A288708

/-- `comp[A288709(n+1)-1]+1` -/
def P755186768779803649.Spec : Prop :=
  ∀ n, (P755186768779803649.a n : ℤ) = A288708 (n + 1)

end A288708

/-! ## A288708.P15441264036395664696

`comp[A188434(n+1)+n]+1`
-/

namespace A288708.P15441264036395664696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188434 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288708.P15441264036395664696

namespace A288708

/-- `comp[A188434(n+1)+n]+1` -/
def P15441264036395664696.Spec : Prop :=
  ∀ n, (P15441264036395664696.a n : ℤ) = A288708 (n + 1)

end A288708

/-! ## A288708.P16494290515251953763

`A288712(n+1)-C(n, n²)`
-/

namespace A288708.P16494290515251953763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288712 (n + 1) - (Nat.choose n (n ^ 2) : ℤ)

end

end A288708.P16494290515251953763

namespace A288708

/-- `A288712(n+1)-C(n, n²)` -/
def P16494290515251953763.Spec : Prop :=
  ∀ n, P16494290515251953763.a n = A288708 (n + 1)

end A288708

/-! ## A288708.P16682882227901487840

`comp[2*(A284624(n+1)-(n+1))]+1`
-/

namespace A288708.P16682882227901487840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A284624 (n + 1) - (n + 1 : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288708.P16682882227901487840

namespace A288708

/-- `comp[2*(A284624(n+1)-(n+1))]+1` -/
def P16682882227901487840.Spec : Prop :=
  ∀ n, (P16682882227901487840.a n : ℤ) = A288708 (n + 1)

end A288708

/-! ## A288708.P5207956346555753035

`A189663(A005206(n+1))+n+1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A288708

/-- `A189663(A005206(n+1))+n+1` -/
def P5207956346555753035.Spec : Prop :=
  ∀ n, P5207956346555753035.a n = A288708 (n + 1)

theorem P5207956346555753035.correct : P5207956346555753035.Spec := by
  intro n
  simp only [A288708, Nat.add_sub_cancel]

end A288708

/-! ## A288708.P12683789523244249191

`A189663(A123070(n+1))+n+1`
-/

namespace A288708.P12683789523244249191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A123070 (n + 1)).toNat + (n + 1 : ℤ)

end

end A288708.P12683789523244249191

namespace A288708

/-- `A189663(A123070(n+1))+n+1` -/
def P12683789523244249191.Spec : Prop :=
  ∀ n, P12683789523244249191.a n = A288708 (n + 1)

end A288708

/-! ## A288708.P15319038875356315842

`A288712(n+1)-A019590(n+1)`
-/

namespace A288708.P15319038875356315842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288712 (n + 1) - A019590 (n + 1)

end

end A288708.P15319038875356315842

namespace A288708

/-- `A288712(n+1)-A019590(n+1)` -/
def P15319038875356315842.Spec : Prop :=
  ∀ n, P15319038875356315842.a n = A288708 (n + 1)

end A288708

/-! ## A288708.P17333911402245091057

`comp[A004956(comp[A004956(n+1)])+n]`
-/

namespace A288708.P17333911402245091057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A288708.P17333911402245091057

namespace A288708

/-- `comp[A004956(comp[A004956(n+1)])+n]` -/
def P17333911402245091057.Spec : Prop :=
  ∀ n, (P17333911402245091057.a n : ℤ) = A288708 (n + 1)

end A288708

/-! ## A288708.P5643510651542947432

`comp[(A003623(n+1)-n)*A114986(n)]`
-/

namespace A288708.P5643510651542947432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003623 (n + 1) - (n : ℤ)) * A114986 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A288708.P5643510651542947432

namespace A288708

/-- `comp[(A003623(n+1)-n)*A114986(n)]` -/
def P5643510651542947432.Spec : Prop :=
  ∀ n, (P5643510651542947432.a n : ℤ) = A288708 (n + 1)

end A288708

/-! ## A288708.P11491499843807448125

`A007066(n+1)-comp[A007066(n+1)+n]`
-/

namespace A288708.P11491499843807448125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007066 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A288708.P11491499843807448125

namespace A288708

/-- `A007066(n+1)-comp[A007066(n+1)+n]` -/
def P11491499843807448125.Spec : Prop :=
  ∀ n, P11491499843807448125.a n = A288708 (n + 1)

end A288708

/-! ## A288708.P2511435847700068337

`comp[A004277(comp[A001950(n+1)]+1+n)]+1`
-/

namespace A288708.P2511435847700068337
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1 + n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288708.P2511435847700068337

namespace A288708

/-- `comp[A004277(comp[A001950(n+1)]+1+n)]+1` -/
def P2511435847700068337.Spec : Prop :=
  ∀ n, (P2511435847700068337.a n : ℤ) = A288708 (n + 1)

end A288708

/-! ## A288708.P10261463444192584346

`A026351(n)-A060143(A060143(n))`
-/

namespace A288708.P10261463444192584346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n - A060143 (A060143 n).toNat

end

end A288708.P10261463444192584346

namespace A288708

/-- `A026351(n)-A060143(A060143(n))` -/
def P10261463444192584346.Spec : Prop :=
  ∀ n, P10261463444192584346.a n = A288708 (n + 1)

end A288708

/-! ## A288708.P11526465530424501676

`A066096(n)+1-A060143(A060143(n))`
-/

namespace A288708.P11526465530424501676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n + (1 - A060143 (A060143 n).toNat)

end

end A288708.P11526465530424501676

namespace A288708

/-- `A066096(n)+1-A060143(A060143(n))` -/
def P11526465530424501676.Spec : Prop :=
  ∀ n, P11526465530424501676.a n = A288708 (n + 1)

end A288708

/-! ## A288708.P5241990416106756759

`A026352(n)-(A060143(A060143(n))+n)`
-/

namespace A288708.P5241990416106756759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n - (A060143 (A060143 n).toNat + (n : ℤ))

end

end A288708.P5241990416106756759

namespace A288708

/-- `A026352(n)-(A060143(A060143(n))+n)` -/
def P5241990416106756759.Spec : Prop :=
  ∀ n, P5241990416106756759.a n = A288708 (n + 1)

end A288708

/-! ## A288708.P427426654465948361

`∑[A123070(n+2)-A123070(n)]`
-/

namespace A288708.P427426654465948361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123070 (n + 2) - A123070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288708.P427426654465948361

namespace A288708

/-- `∑[A123070(n+2)-A123070(n)]` -/
def P427426654465948361.Spec : Prop :=
  ∀ n, P427426654465948361.a n = A288708 (n + 1)

end A288708

/-! ## A288708.P10195204254403939309

`A123070(A003258(n+1)-A123070(n))+A123070(n)`
-/

namespace A288708.P10195204254403939309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123070 (A003258 (n + 1) - A123070 n).toNat + A123070 n

end

end A288708.P10195204254403939309

namespace A288708

/-- `A123070(A003258(n+1)-A123070(n))+A123070(n)` -/
def P10195204254403939309.Spec : Prop :=
  ∀ n, P10195204254403939309.a n = A288708 (n + 1)

end A288708

/-! ## A288708.P16255340071418571160

`eq[0, A288707(n+1)]+1`
-/

namespace A288708.P16255340071418571160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288707 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288708.P16255340071418571160

namespace A288708

/-- `eq[0, A288707(n+1)]+1` -/
def P16255340071418571160.Spec : Prop :=
  ∀ n, (P16255340071418571160.a n : ℤ) = A288708 (n + 1)

end A288708

/-! ## A288708.P3651032674323192631

`A189663(A189663(A026355(n+1)))+n+1`
-/

namespace A288708.P3651032674323192631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A189663 (A026355 (n + 1)).toNat).toNat + (n + 1 : ℤ)

end

end A288708.P3651032674323192631

namespace A288708

/-- `A189663(A189663(A026355(n+1)))+n+1` -/
def P3651032674323192631.Spec : Prop :=
  ∀ n, P3651032674323192631.a n = A288708 (n + 1)

end A288708

/-!
# A288709: Positions of 1's in A288707; complement of A288708.

The programs for A288709, the canonical program `A288709.P8795168984469944628` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288709 has offset 1).

The definition of A288709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288709.P16817897468825857933

`2*floor(n*ϕ²)+3`
-/

namespace A288709.P16817897468825857933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ + 3

end

end A288709.P16817897468825857933

namespace A288709

/-- `2*floor(n*ϕ²)+3` -/
def P16817897468825857933.Spec : Prop :=
  ∀ n, P16817897468825857933.a n = A288709 (n + 1)

end A288709

/-! ## A288709.P10509629695859286430

`xor(1, 2*comp[ceil(ϕ*n)])`
-/

namespace A288709.P10509629695859286430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A288709.P10509629695859286430

namespace A288709

/-- `xor(1, 2*comp[ceil(ϕ*n)])` -/
def P10509629695859286430.Spec : Prop :=
  ∀ n, (P10509629695859286430.a n : ℤ) = A288709 (n + 1)

end A288709

/-! ## A288709.P8964791649598177884

`or(1, A047924(n)+n)`
-/

namespace A288709.P8964791649598177884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A047924 n + (n : ℤ))

end

end A288709.P8964791649598177884

namespace A288709

/-- `or(1, A047924(n)+n)` -/
def P8964791649598177884.Spec : Prop :=
  ∀ n, P8964791649598177884.a n = A288709 (n + 1)

end A288709

/-! ## A288709.P12839102812065677572

`or(2*ceil(n*ϕ²)+1, runs[A326041(n+1)])`
-/

namespace A288709.P12839102812065677572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326041 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉ + 1) ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ)

end

end A288709.P12839102812065677572

namespace A288709

/-- `or(2*ceil(n*ϕ²)+1, runs[A326041(n+1)])` -/
def P12839102812065677572.Spec : Prop :=
  ∀ n, P12839102812065677572.a n = A288709 (n + 1)

end A288709

/-! ## A288709.P7136709126847993849

`A000027(A047924(n)+n)`
-/

namespace A288709.P7136709126847993849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A047924 n + (n : ℤ)).toNat

end

end A288709.P7136709126847993849

namespace A288709

/-- `A000027(A047924(n)+n)` -/
def P7136709126847993849.Spec : Prop :=
  ∀ n, P7136709126847993849.a n = A288709 (n + 1)

end A288709

/-! ## A288709.P1014335412503603944

`A000265(A047924(n)+n)`
-/

namespace A288709.P1014335412503603944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A047924 n + (n : ℤ)).toNat

end

end A288709.P1014335412503603944

namespace A288709

/-- `A000265(A047924(n)+n)` -/
def P1014335412503603944.Spec : Prop :=
  ∀ n, P1014335412503603944.a n = A288709 (n + 1)

end A288709

/-! ## A288709.P8795168984469944628

`A000027(A284621(n+1)+2)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A288709

/-- `A000027(A284621(n+1)+2)` -/
def P8795168984469944628.Spec : Prop :=
  ∀ n, P8795168984469944628.a n = A288709 (n + 1)

theorem P8795168984469944628.correct : P8795168984469944628.Spec := by
  intro n
  simp only [A288709, Nat.add_sub_cancel]

end A288709

/-! ## A288709.P13208763330392293892

`or(A000038(n), A288713(n+1))`
-/

namespace A288709.P13208763330392293892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A288713 (n + 1))

end

end A288709.P13208763330392293892

namespace A288709

/-- `or(A000038(n), A288713(n+1))` -/
def P13208763330392293892.Spec : Prop :=
  ∀ n, P13208763330392293892.a n = A288709 (n + 1)

end A288709

/-! ## A288709.P1297102667889351994

`floor(sqrt(A004767(n)*A188012(n+1)+1))`
-/

namespace A288709.P1297102667889351994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A004767 n * A188012 (n + 1) + 1)

end

end A288709.P1297102667889351994

namespace A288709

/-- `floor(sqrt(A004767(n)*A188012(n+1)+1))` -/
def P1297102667889351994.Spec : Prop :=
  ∀ n, P1297102667889351994.a n = A288709 (n + 1)

end A288709

/-! ## A288709.P18393693822684803227

`A016825(A026356(n+1)-1)/2`
-/

namespace A288709.P18393693822684803227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A026356 (n + 1) - 1).toNat : ℚ) / 2

end

end A288709.P18393693822684803227

namespace A288709

/-- `A016825(A026356(n+1)-1)/2` -/
def P18393693822684803227.Spec : Prop :=
  ∀ n, P18393693822684803227.a n = (A288709 (n + 1) : ℚ)

end A288709

/-! ## A288709.P676405224026664471

`record[2*A019444(n+1)+1]`
-/

namespace A288709.P676405224026664471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A019444 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288709.P676405224026664471

namespace A288709

/-- `record[2*A019444(n+1)+1]` -/
def P676405224026664471.Spec : Prop :=
  ∀ n, P676405224026664471.a n = A288709 (n + 1)

end A288709

/-! ## A288709.P8789867788055698964

`A130568(A026351(n))`
-/

namespace A288709.P8789867788055698964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130568 (A026351 n).toNat

end

end A288709.P8789867788055698964

namespace A288709

/-- `A130568(A026351(n))` -/
def P8789867788055698964.Spec : Prop :=
  ∀ n, P8789867788055698964.a n = A288709 (n + 1)

end A288709

/-! ## A288709.P16584595630258533660

`A130568(A066096(n)+1)`
-/

namespace A288709.P16584595630258533660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130568 (A066096 n + 1).toNat

end

end A288709.P16584595630258533660

namespace A288709

/-- `A130568(A066096(n)+1)` -/
def P16584595630258533660.Spec : Prop :=
  ∀ n, P16584595630258533660.a n = A288709 (n + 1)

end A288709

/-! ## A288709.P1514822090308014149

`record[2*A054089(n+1)+1]`
-/

namespace A288709.P1514822090308014149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054089 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288709.P1514822090308014149

namespace A288709

/-- `record[2*A054089(n+1)+1]` -/
def P1514822090308014149.Spec : Prop :=
  ∀ n, P1514822090308014149.a n = A288709 (n + 1)

end A288709

/-! ## A288709.P17488309700129377098

`or(1, A026356(2*n+1))`
-/

namespace A288709.P17488309700129377098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A026356 (2 * n + 1))

end

end A288709.P17488309700129377098

namespace A288709

/-- `or(1, A026356(2*n+1))` -/
def P17488309700129377098.Spec : Prop :=
  ∀ n, P17488309700129377098.a n = A288709 (n + 1)

end A288709

/-! ## A288709.P1400651482736164752

`record[2*A054082(n+1)-1]`
-/

namespace A288709.P1400651482736164752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054082 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288709.P1400651482736164752

namespace A288709

/-- `record[2*A054082(n+1)-1]` -/
def P1400651482736164752.Spec : Prop :=
  ∀ n, P1400651482736164752.a n = A288709 (n + 1)

end A288709

/-! ## A288709.P7947976749362479393

`record[(n+2)*A003842(n)+1]`
-/

namespace A288709.P7947976749362479393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A003842 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288709.P7947976749362479393

namespace A288709

/-- `record[(n+2)*A003842(n)+1]` -/
def P7947976749362479393.Spec : Prop :=
  ∀ n, P7947976749362479393.a n = A288709 (n + 1)

end A288709

/-! ## A288709.P14873431012931956718

`A005408(comp[ceil(ϕ*n)])`
-/

namespace A288709.P14873431012931956718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A288709.P14873431012931956718

namespace A288709

/-- `A005408(comp[ceil(ϕ*n)])` -/
def P14873431012931956718.Spec : Prop :=
  ∀ n, P14873431012931956718.a n = A288709 (n + 1)

end A288709

/-! ## A288709.P1425982982235339918

`A144396(A026352(n))`
-/

namespace A288709.P1425982982235339918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (A026352 n).toNat

end

end A288709.P1425982982235339918

namespace A288709

/-- `A144396(A026352(n))` -/
def P1425982982235339918.Spec : Prop :=
  ∀ n, P1425982982235339918.a n = A288709 (n + 1)

end A288709

/-! ## A288709.P12007132919177076369

`A004273(A026352(n)+1)`
-/

namespace A288709.P12007132919177076369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A026352 n + 1).toNat

end

end A288709.P12007132919177076369

namespace A288709

/-- `A004273(A026352(n)+1)` -/
def P12007132919177076369.Spec : Prop :=
  ∀ n, P12007132919177076369.a n = A288709 (n + 1)

end A288709

/-!
# A288710: 0-limiting word of the mapping 00->1000, 10->0001, starting with 00.

The programs for A288710, there is no canonical definition to state claims against.
-/

/-! ## A288710.P10633974322096953660

`char[A288755(n+1)-1]`
-/

namespace A288710.P10633974322096953660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288755 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288710.P10633974322096953660

/-! ## A288710.P10512611773699848856

`char[comp[A287103(n+1)-1]]`
-/

namespace A288710.P10512611773699848856
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287103 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288710.P10512611773699848856

/-! ## A288710.P17490162814613535932

`1-char[A287103(round(2*n/3)+1)-1]`
-/

namespace A288710.P17490162814613535932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287103 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) + 1).toNat - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288710.P17490162814613535932

/-! ## A288710.P8594804107496507233

`(char[A287103(floor(n/2)+1)-1]+1)%2`
-/

namespace A288710.P8594804107496507233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287103 (⌊(n : ℚ) / 2⌋ + 1).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1) % 2

end

end A288710.P8594804107496507233

/-! ## A288710.P4447648319644023941

`char[abs(A288755(A028310(n))-1)]`
-/

namespace A288710.P4447648319644023941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A288755 (A028310 n).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288710.P4447648319644023941

/-! ## A288710.P18239483317874923976

`char[abs(A288755(A065033(n))-1)]`
-/

namespace A288710.P18239483317874923976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A288755 (A065033 n).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288710.P18239483317874923976

/-! ## A288710.P824722132099731152

`char[abs(A288755(A080513(n))-1)]`
-/

namespace A288710.P824722132099731152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A288755 (A080513 n).toNat - 1|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288710.P824722132099731152

/-! ## A288710.P658100633504619918

`A157686(Δ[-comp[A287103(n+1)+n]]²)`
-/

namespace A288710.P658100633504619918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287103 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A288710.P658100633504619918

/-! ## A288710.P6647798885334834108

`A194900(-Δ[-comp[A288755(n+1)+n]])-1`
-/

namespace A288710.P6647798885334834108
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288755 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194900 (-(f1 (n + 1) - f1 n)).toNat - 1

end

end A288710.P6647798885334834108

/-! ## A288710.P5181878192819570015

`A288168(-Δ[-comp[A288755(n+1)+n]])-1`
-/

namespace A288710.P5181878192819570015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288755 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288168 (-(f1 (n + 1) - f1 n)).toNat - 1

end

end A288710.P5181878192819570015

/-! ## A288710.P15319243261364726299

`1-A001489(n)-(char[A287103(n+1)-1]+n)`
-/

namespace A288710.P15319243261364726299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287103 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 n - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n : ℕ) : ℤ)

end

end A288710.P15319243261364726299

/-! ## A288710.P4686855995902581594

`char[A023443(A288755(n+1))]`
-/

namespace A288710.P4686855995902581594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288755 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288710.P4686855995902581594

/-! ## A288710.P1789744774613556638

`char[A023443(comp[A287103(n+1)])]`
-/

namespace A288710.P1789744774613556638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287103 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288710.P1789744774613556638

/-!
# A288711: 1-limiting word of the mapping 00->1000, 10->00, starting with 00.

The programs for A288711, the canonical program `A288711.P17665607544117912145` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288711 has offset 1).

The definition of A288711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288711.P13745215685064754705

`char[2*ceil(n*ϕ²)]`
-/

namespace A288711.P13745215685064754705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288711.P13745215685064754705

namespace A288711

/-- `char[2*ceil(n*ϕ²)]` -/
def P13745215685064754705.Spec : Prop :=
  ∀ n, (P13745215685064754705.a n : ℤ) = A288711 (n + 1)

end A288711

/-! ## A288711.P14572431920243326598

`(a(n-2)+a(n-1)+1)*char[2*(floor(ϕ*n)+1+n)]` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A288711.P14572431920243326598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (⌊Real.goldenRatio * (n : ℝ)⌋ + 1 + (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  (a (n - 2) + a (n - 1) + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A288711.P14572431920243326598

namespace A288711

/-- `(a(n-2)+a(n-1)+1)*char[2*(floor(ϕ*n)+1+n)]` -/
def P14572431920243326598.Spec : Prop :=
  ∀ n, (P14572431920243326598.a n : ℤ) = A288711 (n + 1)

end A288711

/-! ## A288711.P2417470904460805203

`a(A284620(n-1))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A288711.P2417470904460805203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  a (A284620 (n - 1)).toNat

end

end A288711.P2417470904460805203

namespace A288711

/-- `a(A284620(n-1))` -/
def P2417470904460805203.Spec : Prop :=
  ∀ n, (P2417470904460805203.a n : ℤ) = A288711 (n + 1)

end A288711

/-! ## A288711.P15138731190302563209

`1-char[A288712(n+1)-1]`
-/

namespace A288711.P15138731190302563209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288712 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288711.P15138731190302563209

namespace A288711

/-- `1-char[A288712(n+1)-1]` -/
def P15138731190302563209.Spec : Prop :=
  ∀ n, P15138731190302563209.a n = A288711 (n + 1)

end A288711

/-! ## A288711.P14350079876620970804

`∑[Δ[char[A288713(n+1)]]^n]`
-/

namespace A288711.P14350079876620970804
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288713 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288711.P14350079876620970804

namespace A288711

/-- `∑[Δ[char[A288713(n+1)]]^n]` -/
def P14350079876620970804.Spec : Prop :=
  ∀ n, P14350079876620970804.a n = A288711 (n + 1)

end A288711

/-! ## A288711.P17665607544117912145

`A288707(a(a(n-2))+n)` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A288711

/-- `A288707(a(a(n-2))+n)` -/
def P17665607544117912145.Spec : Prop :=
  ∀ n, P17665607544117912145.a n = A288711 (n + 1)

theorem P17665607544117912145.correct : P17665607544117912145.Spec := by
  intro n
  simp only [A288711, Nat.add_sub_cancel]

end A288711

/-! ## A288711.P11440268075405676363

`A003849((n+1)%∑[1-a(n-1)])` with `a(0)=3`
-/

namespace A288711.P11440268075405676363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (Int.tmod (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A288711.P11440268075405676363

namespace A288711

/-- `A003849((n+1)%∑[1-a(n-1)])` -/
def P11440268075405676363.Spec : Prop :=
  ∀ n, P11440268075405676363.a n = A288711 (n + 1)

end A288711

/-! ## A288711.P18009084612411006407

`A289034(A038459(n+1))`
-/

namespace A288711.P18009084612411006407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (A038459 (n + 1)).toNat

end

end A288711.P18009084612411006407

namespace A288711

/-- `A289034(A038459(n+1))` -/
def P18009084612411006407.Spec : Prop :=
  ∀ n, P18009084612411006407.a n = A288711 (n + 1)

end A288711

/-! ## A288711.P13596812498995943524

`and(n+1, A289034(A003602(n+1)))`
-/

namespace A288711.P13596812498995943524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A289034 (A003602 (n + 1)).toNat)

end

end A288711.P13596812498995943524

namespace A288711

/-- `and(n+1, A289034(A003602(n+1)))` -/
def P13596812498995943524.Spec : Prop :=
  ∀ n, P13596812498995943524.a n = A288711 (n + 1)

end A288711

/-! ## A288711.P6557076678708520206

`xor(A154272(n+1), A288707(n+1))`
-/

namespace A288711.P6557076678708520206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A154272 (n + 1)) (A288707 (n + 1))

end

end A288711.P6557076678708520206

namespace A288711

/-- `xor(A154272(n+1), A288707(n+1))` -/
def P6557076678708520206.Spec : Prop :=
  ∀ n, P6557076678708520206.a n = A288711 (n + 1)

end A288711

/-! ## A288711.P3945674144287543020

`A005811(n+1)%A214211(abs(3-n))`
-/

namespace A288711.P3945674144287543020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005811 (n + 1)) (A214211 |3 - (n : ℤ)|.toNat)

end

end A288711.P3945674144287543020

namespace A288711

/-- `A005811(n+1)%A214211(abs(3-n))` -/
def P3945674144287543020.Spec : Prop :=
  ∀ n, P3945674144287543020.a n = A288711 (n + 1)

end A288711

/-! ## A288711.P9510456510413121772

`(A007814(n+1)+1)*char[A288713(n+1)-1]`
-/

namespace A288711.P9510456510413121772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288713 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007814 (n + 1) + 1) * ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288711.P9510456510413121772

namespace A288711

/-- `(A007814(n+1)+1)*char[A288713(n+1)-1]` -/
def P9510456510413121772.Spec : Prop :=
  ∀ n, P9510456510413121772.a n = A288711 (n + 1)

end A288711

/-! ## A288711.P15174260446121978832

`A289034(A057979(n+1)+1)`
-/

namespace A288711.P15174260446121978832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289034 (A057979 (n + 1) + 1).toNat

end

end A288711.P15174260446121978832

namespace A288711

/-- `A289034(A057979(n+1)+1)` -/
def P15174260446121978832.Spec : Prop :=
  ∀ n, P15174260446121978832.a n = A288711 (n + 1)

end A288711

/-! ## A288711.P15137326866940025021

`Δ[A008619(n+1)]*A289034(A008619(n+1))`
-/

namespace A288711.P15137326866940025021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A289034 (A008619 (n + 1)).toNat

end

end A288711.P15137326866940025021

namespace A288711

/-- `Δ[A008619(n+1)]*A289034(A008619(n+1))` -/
def P15137326866940025021.Spec : Prop :=
  ∀ n, P15137326866940025021.a n = A288711 (n + 1)

end A288711

/-! ## A288711.P1376359027421077701

`char[A288713(n+1)-1]*A056594(2*n)`
-/

namespace A288711.P1376359027421077701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288713 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A056594 (2 * n)

end

end A288711.P1376359027421077701

namespace A288711

/-- `char[A288713(n+1)-1]*A056594(2*n)` -/
def P1376359027421077701.Spec : Prop :=
  ∀ n, P1376359027421077701.a n = A288711 (n + 1)

end A288711

/-! ## A288711.P17782053697551168257

`A288707(A367067(n+1))`
-/

namespace A288711.P17782053697551168257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288707 (A367067 (n + 1)).toNat

end

end A288711.P17782053697551168257

namespace A288711

/-- `A288707(A367067(n+1))` -/
def P17782053697551168257.Spec : Prop :=
  ∀ n, P17782053697551168257.a n = A288711 (n + 1)

end A288711

/-!
# A288712: Positions of 0 in A288711; complement of A288713.

The programs for A288712, the canonical program `A288712.P16637021441363573631` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288712 has offset 1).

The definition of A288712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288712.P16637021441363573631

`comp[2*ceil(n*ϕ²)]+1`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A288712

/-- `comp[2*ceil(n*ϕ²)]+1` -/
def P16637021441363573631.Spec : Prop :=
  ∀ n, (P16637021441363573631.a n : ℤ) = A288712 (n + 1)

theorem P16637021441363573631.correct : P16637021441363573631.Spec := by
  intro n
  simp only [A288712, Nat.add_sub_cancel]

end A288712

/-! ## A288712.P5269361191000288882

`A348776(A288708(n+1))`
-/

namespace A288712.P5269361191000288882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348776 (A288708 (n + 1)).toNat

end

end A288712.P5269361191000288882

namespace A288712

/-- `A348776(A288708(n+1))` -/
def P5269361191000288882.Spec : Prop :=
  ∀ n, P5269361191000288882.a n = A288712 (n + 1)

end A288712

/-! ## A288712.P8342833355183246599

`eq[0, A288711(A028310(n))]`
-/

namespace A288712.P8342833355183246599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288711 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288712.P8342833355183246599

namespace A288712

/-- `eq[0, A288711(A028310(n))]` -/
def P8342833355183246599.Spec : Prop :=
  ∀ n, (P8342833355183246599.a n : ℤ) = A288712 (n + 1)

end A288712

/-! ## A288712.P10493239615562199453

`∑[runs[A288711(n+1)+n]]`
-/

namespace A288712.P10493239615562199453
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288711 (n + 1) + (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288712.P10493239615562199453

namespace A288712

/-- `∑[runs[A288711(n+1)+n]]` -/
def P10493239615562199453.Spec : Prop :=
  ∀ n, (P10493239615562199453.a n : ℤ) = A288712 (n + 1)

end A288712

/-! ## A288712.P17927053068605145132

`lt[n*char[A288713(n+1)], n]`
-/

namespace A288712.P17927053068605145132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288713 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A288712.P17927053068605145132

namespace A288712

/-- `lt[n*char[A288713(n+1)], n]` -/
def P17927053068605145132.Spec : Prop :=
  ∀ n, (P17927053068605145132.a n : ℤ) = A288712 (n + 1)

end A288712

/-! ## A288712.P17515429713563046940

`lt[char[A288713(n+1)], A057427(n)]`
-/

namespace A288712.P17515429713563046940
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288713 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A288712.P17515429713563046940

namespace A288712

/-- `lt[char[A288713(n+1)], A057427(n)]` -/
def P17515429713563046940.Spec : Prop :=
  ∀ n, (P17515429713563046940.a n : ℤ) = A288712 (n + 1)

end A288712

/-! ## A288712.P5706825739698900231

`∑[A188009(n*a(n-1))+1]` with `a(0)=2`
-/

namespace A288712.P5706825739698900231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A188009 ((n : ℤ) * f1 (n - 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288712.P5706825739698900231

namespace A288712

/-- `∑[A188009(n*a(n-1))+1]` -/
def P5706825739698900231.Spec : Prop :=
  ∀ n, P5706825739698900231.a n = A288712 (n + 1)

end A288712

/-! ## A288712.P7908896935329721375

`A189663(A189661(n+1)+2*A099267(n+1))`
-/

namespace A288712.P7908896935329721375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A189661 (n + 1) + 2 * A099267 (n + 1)).toNat

end

end A288712.P7908896935329721375

namespace A288712

/-- `A189663(A189661(n+1)+2*A099267(n+1))` -/
def P7908896935329721375.Spec : Prop :=
  ∀ n, P7908896935329721375.a n = A288712 (n + 1)

end A288712

/-! ## A288712.P1793420711465345314

`A189663(A099267(n+1)+A189661(n+1)+A099267(n+1))`
-/

namespace A288712.P1793420711465345314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A099267 (n + 1) + (A189661 (n + 1) + A099267 (n + 1))).toNat

end

end A288712.P1793420711465345314

namespace A288712

/-- `A189663(A099267(n+1)+A189661(n+1)+A099267(n+1))` -/
def P1793420711465345314.Spec : Prop :=
  ∀ n, P1793420711465345314.a n = A288712 (n + 1)

end A288712

/-!
# A288713: Positions of 1 in A288711; complement of A288712.

The programs for A288713, the canonical program `A288713.P9236112335966730183` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288713 has offset 1).

The definition of A288713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288713.P4257624358854510594

`2*ceil(n*ϕ²)+1`
-/

namespace A288713.P4257624358854510594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉ + 1

end

end A288713.P4257624358854510594

namespace A288713

/-- `2*ceil(n*ϕ²)+1` -/
def P4257624358854510594.Spec : Prop :=
  ∀ n, P4257624358854510594.a n = A288713 (n + 1)

end A288713

/-! ## A288713.P12646634963015229409

`or(1, 2*comp[floor(ϕ*n)+1]+1)`
-/

namespace A288713.P12646634963015229409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A288713.P12646634963015229409

namespace A288713

/-- `or(1, 2*comp[floor(ϕ*n)+1]+1)` -/
def P12646634963015229409.Spec : Prop :=
  ∀ n, (P12646634963015229409.a n : ℤ) = A288713 (n + 1)

end A288713

/-! ## A288713.P2331323268645917823

`(2*floor(n*ϕ²)+3)%(2+3*floor(n*ϕ²))`
-/

namespace A288713.P2331323268645917823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋ + 3) (2 + 3 * ⌊(n : ℝ) * Real.goldenRatio ^ 2⌋)

end

end A288713.P2331323268645917823

namespace A288713

/-- `(2*floor(n*ϕ²)+3)%(2+3*floor(n*ϕ²))` -/
def P2331323268645917823.Spec : Prop :=
  ∀ n, P2331323268645917823.a n = A288713 (n + 1)

end A288713

/-! ## A288713.P9236112335966730183

`gcd(A000038(n), A288709(n+1))`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A288713

/-- `gcd(A000038(n), A288709(n+1))` -/
def P9236112335966730183.Spec : Prop :=
  ∀ n, (P9236112335966730183.a n : ℤ) = A288713 (n + 1)

theorem P9236112335966730183.correct : P9236112335966730183.Spec := by
  intro n
  simp only [A288713, Nat.add_sub_cancel]

end A288713

/-! ## A288713.P6054472627389898443

`and(A153881(n+1), A288709(n+1))`
-/

namespace A288713.P6054472627389898443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153881 (n + 1)) (A288709 (n + 1))

end

end A288713.P6054472627389898443

namespace A288713

/-- `and(A153881(n+1), A288709(n+1))` -/
def P6054472627389898443.Spec : Prop :=
  ∀ n, P6054472627389898443.a n = A288713 (n + 1)

end A288713

/-! ## A288713.P14650376864986420527

`A323161(2*A284621(n+1)-1)`
-/

namespace A288713.P14650376864986420527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (2 * A284621 (n + 1) - 1).toNat

end

end A288713.P14650376864986420527

namespace A288713

/-- `A323161(2*A284621(n+1)-1)` -/
def P14650376864986420527.Spec : Prop :=
  ∀ n, P14650376864986420527.a n = A288713 (n + 1)

end A288713

/-! ## A288713.P5110584313014487825

`A016825(A004956(n)+n)/2`
-/

namespace A288713.P5110584313014487825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A004956 n + (n : ℤ)).toNat : ℚ) / 2

end

end A288713.P5110584313014487825

namespace A288713

/-- `A016825(A004956(n)+n)/2` -/
def P5110584313014487825.Spec : Prop :=
  ∀ n, P5110584313014487825.a n = (A288713 (n + 1) : ℚ)

end A288713

/-! ## A288713.P17739533974690466983

`A016825(A007066(n+1)-1)/2`
-/

namespace A288713.P17739533974690466983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016825 (A007066 (n + 1) - 1).toNat : ℚ) / 2

end

end A288713.P17739533974690466983

namespace A288713

/-- `A016825(A007066(n+1)-1)/2` -/
def P17739533974690466983.Spec : Prop :=
  ∀ n, P17739533974690466983.a n = (A288713 (n + 1) : ℚ)

end A288713

/-! ## A288713.P13743349764754486143

`A130568(A004956(n))`
-/

namespace A288713.P13743349764754486143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130568 (A004956 n).toNat

end

end A288713.P13743349764754486143

namespace A288713

/-- `A130568(A004956(n))` -/
def P13743349764754486143.Spec : Prop :=
  ∀ n, P13743349764754486143.a n = A288713 (n + 1)

end A288713

/-! ## A288713.P4241166427041684231

`record[2*(n+2)*A003849(n)+1]`
-/

namespace A288713.P4241166427041684231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 2) : ℤ) * A003849 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288713.P4241166427041684231

namespace A288713

/-- `record[2*(n+2)*A003849(n)+1]` -/
def P4241166427041684231.Spec : Prop :=
  ∀ n, P4241166427041684231.a n = A288713 (n + 1)

end A288713

/-! ## A288713.P7929617886370616626

`record[(2*n+5)^(A003842(n)-1)]`
-/

namespace A288713.P7929617886370616626
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 5 : ℚ) ^ (A003842 n - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288713.P7929617886370616626

namespace A288713

/-- `record[(2*n+5)^(A003842(n)-1)]` -/
def P7929617886370616626.Spec : Prop :=
  ∀ n, P7929617886370616626.a n = (A288713 (n + 1) : ℚ)

end A288713

/-! ## A288713.P11407052184145471942

`A005408(ceil(ϕ*n)+n)`
-/

namespace A288713.P11407052184145471942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (⌈Real.goldenRatio * (n : ℝ)⌉ + (n : ℤ)).toNat

end

end A288713.P11407052184145471942

namespace A288713

/-- `A005408(ceil(ϕ*n)+n)` -/
def P11407052184145471942.Spec : Prop :=
  ∀ n, P11407052184145471942.a n = A288713 (n + 1)

end A288713

/-! ## A288713.P5227809253733386860

`A223134(A004957(n))`
-/

namespace A288713.P5227809253733386860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 (A004957 n).toNat

end

end A288713.P5227809253733386860

namespace A288713

/-- `A223134(A004957(n))` -/
def P5227809253733386860.Spec : Prop :=
  ∀ n, P5227809253733386860.a n = A288713 (n + 1)

end A288713

/-! ## A288713.P2093498245896557062

`A267872(A026352(n))`
-/

namespace A288713.P2093498245896557062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (A026352 n).toNat

end

end A288713.P2093498245896557062

namespace A288713

/-- `A267872(A026352(n))` -/
def P2093498245896557062.Spec : Prop :=
  ∀ n, P2093498245896557062.a n = A288713 (n + 1)

end A288713

/-! ## A288713.P16998076825566769129

`A004273(A004957(n)+1)`
-/

namespace A288713.P16998076825566769129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A004957 n + 1).toNat

end

end A288713.P16998076825566769129

namespace A288713

/-- `A004273(A004957(n)+1)` -/
def P16998076825566769129.Spec : Prop :=
  ∀ n, P16998076825566769129.a n = A288713 (n + 1)

end A288713

/-! ## A288713.P18145866359795862729

`A004273(A007066(n+1))`
-/

namespace A288713.P18145866359795862729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A007066 (n + 1)).toNat

end

end A288713.P18145866359795862729

namespace A288713

/-- `A004273(A007066(n+1))` -/
def P18145866359795862729.Spec : Prop :=
  ∀ n, P18145866359795862729.a n = A288713 (n + 1)

end A288713

/-! ## A288713.P6220259511109269770

`A267873(A026356(n+1)-1)`
-/

namespace A288713.P6220259511109269770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 (A026356 (n + 1) - 1).toNat

end

end A288713.P6220259511109269770

namespace A288713

/-- `A267873(A026356(n+1)-1)` -/
def P6220259511109269770.Spec : Prop :=
  ∀ n, P6220259511109269770.a n = A288713 (n + 1)

end A288713

/-! ## A288713.P15292299391903519578

`A004274(A022413(n))`
-/

namespace A288713.P15292299391903519578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A022413 n).toNat

end

end A288713.P15292299391903519578

namespace A288713

/-- `A004274(A022413(n))` -/
def P15292299391903519578.Spec : Prop :=
  ∀ n, P15292299391903519578.a n = A288713 (n + 1)

end A288713

/-! ## A288713.P11131638440266653103

`filter[2*n+1, A288711(#)]`
-/

namespace A288713.P11131638440266653103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288711 (f1 j) = 1) n)

end

end A288713.P11131638440266653103

namespace A288713

/-- `filter[2*n+1, A288711(#)]` -/
def P11131638440266653103.Spec : Prop :=
  ∀ n, (P11131638440266653103.a n : ℤ) = A288713 (n + 1)

end A288713

/-! ## A288713.P11884321248121071218

`A028253(A288709(n+1))`
-/

namespace A288713.P11884321248121071218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028253 (A288709 (n + 1)).toNat

end

end A288713.P11884321248121071218

namespace A288713

/-- `A028253(A288709(n+1))` -/
def P11884321248121071218.Spec : Prop :=
  ∀ n, P11884321248121071218.a n = A288713 (n + 1)

end A288713

/-!
# A288714: Number of (undirected) paths on the 2n-crossed prism graph.

The programs for A288714, the canonical program `A288714.P15037177740485666125` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288714 has offset 1).

The definition of A288714 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288714.P15037177740485666125

`(n+1)*(163*4^(n+1)-9*2^(n+4)*(n+1)-87*2^(n+2)-4)/6`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A288714

/-- `(n+1)*(163*4^(n+1)-9*2^(n+4)*(n+1)-87*2^(n+2)-4)/6` -/
def P15037177740485666125.Spec : Prop :=
  ∀ n, P15037177740485666125.a n = (A288714 (n + 1) : ℚ)

end A288714

/-!
# A288715: Primes of the form k!8+1, where k!8 is the octuple factorial number (A114800).

The programs for A288715, there is no canonical definition to state claims against.
-/

/-! ## A288715.P12623954030763004774

`A114800(A204661(n+2))+1`
-/

namespace A288715.P12623954030763004774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114800 (A204661 (n + 2)).toNat + 1

end

end A288715.P12623954030763004774

/-! ## A288715.P6204764194898308529

`p?[A114800(n+1)+1]`
-/

namespace A288715.P6204764194898308529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114800 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288715.P6204764194898308529

/-!
# A288716: Primes of the form k!8+2, where k!8 is the octuple factorial number (A114800).

The programs for A288716, there is no canonical definition to state claims against.
-/

/-! ## A288716.P4132803932138852638

`A114800(A204663(n+2))+2`
-/

namespace A288716.P4132803932138852638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114800 (A204663 (n + 2)).toNat + 2

end

end A288716.P4132803932138852638

/-! ## A288716.P3359511076532583736

`p?[A114800(n+1)+2]`
-/

namespace A288716.P3359511076532583736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114800 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288716.P3359511076532583736

/-! ## A288716.P15810491147726513496

`record[A020639(A114800(n)+2)]`
-/

namespace A288716.P15810491147726513496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A114800 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288716.P15810491147726513496

/-! ## A288716.P10581035751225389009

`record[A014963(A114800(n)+2)]`
-/

namespace A288716.P10581035751225389009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A114800 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288716.P10581035751225389009

/-!
# A288717: Primes of the form k!7+1, where k!7 is the septuple factorial number (A114799).

The programs for A288717, there is no canonical definition to state claims against.
-/

/-! ## A288717.P2545709609606232386

`A114799(A156165(n+2))+1`
-/

namespace A288717.P2545709609606232386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114799 (A156165 (n + 2)).toNat + 1

end

end A288717.P2545709609606232386

/-! ## A288717.P6168294234254816399

`p?[A114799(n+1)+1]`
-/

namespace A288717.P6168294234254816399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114799 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288717.P6168294234254816399

/-! ## A288717.P4659841378975456230

`p?[A158388(n)+A114799(n)]`
-/

namespace A288717.P4659841378975456230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A114799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288717.P4659841378975456230

/-! ## A288717.P148713210882075334

`p?[A178334(n)+A114799(n)]`
-/

namespace A288717.P148713210882075334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A114799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288717.P148713210882075334

/-! ## A288717.P17315866137742205929

`p?[A178489(n)+A114799(n)]`
-/

namespace A288717.P17315866137742205929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 n + A114799 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288717.P17315866137742205929

/-!
# A288718: Primes of the form k!5+1, where k!5 is the quintuple factorial number (A085157).

The programs for A288718, there is no canonical definition to state claims against.
-/

/-! ## A288718.P13460592439017575486

`A085157(A085148(n+2))+1`
-/

namespace A288718.P13460592439017575486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085157 (A085148 (n + 2)).toNat + 1

end

end A288718.P13460592439017575486

/-! ## A288718.P9017981895018065088

`p?[Δ[A114805(n)]+1]`
-/

namespace A288718.P9017981895018065088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114805 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288718.P9017981895018065088

/-! ## A288718.P18122974383833053133

`p?[A085157(n+1)+1]`
-/

namespace A288718.P18122974383833053133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085157 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288718.P18122974383833053133

/-! ## A288718.P6543867998483424337

`p?[A158388(n)+A085157(n)]`
-/

namespace A288718.P6543867998483424337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A085157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288718.P6543867998483424337

/-! ## A288718.P4528496564152175408

`p?[A168184(n)+A085157(n)]`
-/

namespace A288718.P4528496564152175408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168184 n + A085157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A288718.P4528496564152175408

/-!
# A288720: Detour index of the n-hypercube graph.

The programs for A288720, the canonical program `A288720.P501904119597461227` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288720 has offset 0).

The definition of A288720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288720.P16525230607894111948

`ogf((x+2x^2+16x^3)/(1-14x+56x^2-64x^3))`
-/

namespace A288720.P16525230607894111948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 16] [1, -14, 56, -64] n

end

end A288720.P16525230607894111948

namespace A288720

/-- `ogf((x+2x^2+16x^3)/(1-14x+56x^2-64x^3))` -/
def P16525230607894111948.Spec : Prop :=
  ∀ n, P16525230607894111948.a n = A288720 n

end A288720

/-! ## A288720.P501904119597461227

`14*a(n-1)-56*a(n-2)+64*a(n-3)` with `a(0)=0, a(1)=1, a(2)=16, a(3)=184`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A288720

/-- `14*a(n-1)-56*a(n-2)+64*a(n-3)` -/
def P501904119597461227.Spec : Prop :=
  ∀ n, P501904119597461227.a n = A288720 n

theorem P501904119597461227.correct : P501904119597461227.Spec := by
  intro n
  simp only [A288720]

end A288720

/-! ## A288720.P4223715766016518035

`A296819(2^n)`
-/

namespace A288720.P4223715766016518035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296819 (2 ^ n)

end

end A288720.P4223715766016518035

namespace A288720

/-- `A296819(2^n)` -/
def P4223715766016518035.Spec : Prop :=
  ∀ n, P4223715766016518035.a n = A288720 n

end A288720

/-! ## A288720.P9462485033783634965

`(A020515(n)-A083329(n))*2^(n-1)`
-/

namespace A288720.P9462485033783634965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020515 n - A083329 n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A288720.P9462485033783634965

namespace A288720

/-- `(A020515(n)-A083329(n))*2^(n-1)` -/
def P9462485033783634965.Spec : Prop :=
  ∀ n, P9462485033783634965.a n = (A288720 n : ℚ)

end A288720

/-! ## A288720.P8136969685423439442

`A000079(n)*A134169(n)-A002001(n)`
-/

namespace A288720.P8136969685423439442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A134169 n - A002001 n

end

end A288720.P8136969685423439442

namespace A288720

/-- `A000079(n)*A134169(n)-A002001(n)` -/
def P8136969685423439442.Spec : Prop :=
  ∀ n, P8136969685423439442.a n = A288720 n

end A288720

/-! ## A288720.P9022695734627594343

`ceil(A274626(3*n+1)/4)`
-/

namespace A288720.P9022695734627594343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A274626 (3 * n + 1) : ℚ) / 4⌉

end

end A288720.P9022695734627594343

namespace A288720

/-- `ceil(A274626(3*n+1)/4)` -/
def P9022695734627594343.Spec : Prop :=
  ∀ n, P9022695734627594343.a n = A288720 n

end A288720

/-! ## A288720.P8254976364457888158

`round(A274626(2*n+1+n)/4)`
-/

namespace A288720.P8254976364457888158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A274626 (2 * n + 1 + n) : ℚ) / 4)

end

end A288720.P8254976364457888158

namespace A288720

/-- `round(A274626(2*n+1+n)/4)` -/
def P8254976364457888158.Spec : Prop :=
  ∀ n, P8254976364457888158.a n = A288720 n

end A288720

/-! ## A288720.P4805570143063867883

`(A274626(3*n+1)+A057427(n))/4`
-/

namespace A288720.P4805570143063867883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274626 (3 * n + 1) + A057427 n : ℚ) / 4

end

end A288720.P4805570143063867883

namespace A288720

/-- `(A274626(3*n+1)+A057427(n))/4` -/
def P4805570143063867883.Spec : Prop :=
  ∀ n, P4805570143063867883.a n = (A288720 n : ℚ)

end A288720

/-!
# A288721: Number of connected dominating sets in the n-triangular grid graph.

The programs for A288721, there is no canonical definition to state claims against.
-/

/-! ## A288721.P12514588026184869625

`A080542(∑{d}[A231220(n+1), #])`
-/

namespace A288721.P12514588026184869625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A288721.P12514588026184869625

/-!
# A288722: Number of connected (non-null) induced subgraphs in the n-triangular grid graph.

The programs for A288722, there is no canonical definition to state claims against.
-/

/-! ## A288722.P17895086302061024015

`A000203(A036442(n+1))-A362520(n)`
-/

namespace A288722.P17895086302061024015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A036442 (n + 1)).toNat - A362520 n

end

end A288722.P17895086302061024015

/-!
# A288723: First sequence of a Kolakoski 3-Ouroboros, i.e., sequence of 1s, 2s and 3s that begins a chain of three distinct sequences where successive run-length encodings produce seq(1) -> seq(2) -> seq(3) -> seq(1).

The programs for A288723, there is no canonical definition to state claims against.
-/

/-! ## A288723.P15521121372200236201

`runs[A288725(n+1)]`
-/

namespace A288723.P15521121372200236201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288725 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A288723.P15521121372200236201

/-! ## A288723.P2865576855845895436

`A000041(runs[A288725(Δ[n²]-n)])`
-/

namespace A288723.P2865576855845895436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288725 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n)

end

end A288723.P2865576855845895436

/-! ## A288723.P7755513885412818985

`A020639(runs[A288725(Δ[n²]-n)])`
-/

namespace A288723.P7755513885412818985
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288725 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n)

end

end A288723.P7755513885412818985

/-! ## A288723.P17460959725036447005

`A048788(runs[A288725(Δ[n²]-n)])`
-/

namespace A288723.P17460959725036447005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288725 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048788 (SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n)

end

end A288723.P17460959725036447005

/-! ## A288723.P15734809525004255402

`runs[A288725(Δ[n²]-n)]%A027773(n)`
-/

namespace A288723.P15734809525004255402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288725 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n : ℕ) : ℤ) (A027773 (n + 12))

end

end A288723.P15734809525004255402

/-! ## A288723.P14807062053797826556

`runs[runs[A288724(n+1)]]`
-/

namespace A288723.P14807062053797826556
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288724 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A288723.P14807062053797826556

/-!
# A288724: Second sequence of a Kolakoski 3-Ouroboros, i.e., sequence of 1s, 2s and 3s that is second in a chain of three distinct sequences where successive run-length encodings produce seq(1) -> seq(2) -> seq(3) -> seq(1).

The programs for A288724, there is no canonical definition to state claims against.
-/

/-! ## A288724.P3583779001999691570

`runs[A288723(n+1)]`
-/

namespace A288724.P3583779001999691570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288723 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A288724.P3583779001999691570

/-! ## A288724.P11797166763964453372

`runs[runs[A288725(n+1)]]`
-/

namespace A288724.P11797166763964453372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288725 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A288724.P11797166763964453372

/-!
# A288725: Third sequence of a Kolakoski 3-Ouroboros, i.e., sequence of 1s, 2s and 3s that is third in a chain of three distinct sequences where successive run-length encodings produce seq(1) -> seq(2) -> seq(3) -> seq(1).

The programs for A288725, there is no canonical definition to state claims against.
-/

/-! ## A288725.P4039545060843178507

`runs[A288724(n+1)]`
-/

namespace A288725.P4039545060843178507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288724 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A288725.P4039545060843178507

/-! ## A288725.P16929637966632661522

`runs[runs[A288723(n+1)]]`
-/

namespace A288725.P16929637966632661522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288723 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A288725.P16929637966632661522

/-!
# A288726: a(n) = Sum_{i=floor((n-1)/2)..n-1} i * c(i), where c is the prime characteristic (A010051).

The programs for A288726, there is no canonical definition to state claims against.
-/

/-! ## A288726.P14987057570899408787

`Δ[A288656(abs(1-n))]`
-/

namespace A288726.P14987057570899408787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288656 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288726.P14987057570899408787

/-!
# A288728: Number of sum-free sets that can be created by adding n to all sum-free sets [1..n-1].

The programs for A288728, there is no canonical definition to state claims against.
-/

/-! ## A288728.P9595882871687212138

`A007865(n+1)-A007865(n)`
-/

namespace A288728.P9595882871687212138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007865 (n + 1) - A007865 n

end

end A288728.P9595882871687212138

/-! ## A288728.P4185063574307315991

`Δ[A007865(n)]`
-/

namespace A288728.P4185063574307315991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288728.P4185063574307315991

/-! ## A288728.P2650394850254136215

`2^n-A365070(n+1)`
-/

namespace A288728.P2650394850254136215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A365070 (n + 1)

end

end A288728.P2650394850254136215

/-! ## A288728.P16889160593344433019

`Δ[A050291(n)-A088810(n)]`
-/

namespace A288728.P16889160593344433019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050291 n - A088810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288728.P16889160593344433019

/-! ## A288728.P8708131381479987217

`record[A007865(A007599(n))]-A007865(n)`
-/

namespace A288728.P8708131381479987217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007865 (A007599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A007865 n

end

end A288728.P8708131381479987217

/-! ## A288728.P6011723036023090944

`record[A007865(A008611(n))]-A007865(n)`
-/

namespace A288728.P6011723036023090944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007865 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A007865 n

end

end A288728.P6011723036023090944

/-! ## A288728.P15394057918401690594

`A085489(n)+A088809(n)-A365070(n+1)`
-/

namespace A288728.P15394057918401690594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085489 n + (A088809 n - A365070 (n + 1))

end

end A288728.P15394057918401690594

/-! ## A288728.P5859510236143065677

`A088812(n)+A088813(n)-A365070(n+1)`
-/

namespace A288728.P5859510236143065677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088812 n + (A088813 n - A365070 (n + 1))

end

end A288728.P5859510236143065677

/-! ## A288728.P7434755193586413454

`Δ[A085489(n)-A088811(n)]`
-/

namespace A288728.P7434755193586413454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085489 n - A088811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A288728.P7434755193586413454

/-! ## A288728.P1986176354440935645

`A288887(∑[n+1])`
-/

namespace A288728.P1986176354440935645
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288887 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A288728.P1986176354440935645

/-!
# A288729: 0-limiting word of the mapping 00->1000, 10->01, starting with 00.

The programs for A288729, there is no canonical definition to state claims against.
-/

/-! ## A288729.P14564166274205237003

`char[A288731(n+1)-1]`
-/

namespace A288729.P14564166274205237003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288731 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288729.P14564166274205237003

/-! ## A288729.P4760401407022271566

`1-char[A288730(n+1)-1]`
-/

namespace A288729.P4760401407022271566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288730 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288729.P4760401407022271566

/-! ## A288729.P16635722966681502158

`abs(Δ[char[A288731(2*n+1)]])`
-/

namespace A288729.P16635722966681502158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288731 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A288729.P16635722966681502158

/-! ## A288729.P3634184940591034977

`A000045(Δ[char[A288731(2*n+1)]]²)`
-/

namespace A288729.P3634184940591034977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288731 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A288729.P3634184940591034977

/-! ## A288729.P11876557352926494510

`Δ[char[A288731(2*n+1)]]^A004277(n)`
-/

namespace A288729.P11876557352926494510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288731 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) ^ (A004277 n : ℤ)

end

end A288729.P11876557352926494510

/-! ## A288729.P15228098642739341406

`Δ[char[A288731(2*n+1)]]^A008458(n)`
-/

namespace A288729.P15228098642739341406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288731 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) ^ (A008458 n : ℤ)

end

end A288729.P15228098642739341406

/-! ## A288729.P1747444178588798274

`char[A023443(A288731(n+1))]`
-/

namespace A288729.P1747444178588798274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288731 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288729.P1747444178588798274

/-!
# A288730: Positions of 0 in A288729; complement of A288731.

The programs for A288730, there is no canonical definition to state claims against.
-/

/-! ## A288730.P3518919603040164637

`comp[A288731(n+1)-1]+1`
-/

namespace A288730.P3518919603040164637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288731 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288730.P3518919603040164637

/-! ## A288730.P1261253043549209364

`lt[A288729(n+1), 1]+1`
-/

namespace A288730.P1261253043549209364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288729 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A288730.P1261253043549209364

/-! ## A288730.P13905429017900408571

`record[n+1-A287186(n+1)*A288729(n+1)]`
-/

namespace A288730.P13905429017900408571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A287186 (n + 1) * A288729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288730.P13905429017900408571

/-! ## A288730.P2067476121875841432

`record[n+1-A287402(n+1)*A288729(n+1)]`
-/

namespace A288730.P2067476121875841432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A287402 (n + 1) * A288729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288730.P2067476121875841432

/-! ## A288730.P7852775045678286392

`record[n+1-A287519(n+1)*A288729(n+1)]`
-/

namespace A288730.P7852775045678286392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A287519 (n + 1) * A288729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288730.P7852775045678286392

/-! ## A288730.P12560194770006161951

`record[n+1-A287527(n+1)*A288729(n+1)]`
-/

namespace A288730.P12560194770006161951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A287527 (n + 1) * A288729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288730.P12560194770006161951

/-!
# A288731: Positions of 1 in A288729; complement of A288730.

The programs for A288731, there is no canonical definition to state claims against.
-/

/-! ## A288731.P5798562663836799667

`lt[0, A288729(n+1)]+1`
-/

namespace A288731.P5798562663836799667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288729 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A288731.P5798562663836799667

/-! ## A288731.P5289701202282158022

`record[(n+3)*A288729(n+3)]`
-/

namespace A288731.P5289701202282158022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A288729 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288731.P5289701202282158022

/-! ## A288731.P17329980842477203690

`lt[0, A288729(A028310(n))]`
-/

namespace A288731.P17329980842477203690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288729 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A288731.P17329980842477203690

/-! ## A288731.P11439431659125161518

`filter[A344180(n), A288729(#)]`
-/

namespace A288731.P11439431659125161518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288729 (f1 j).toNat = 1) n)

end

end A288731.P11439431659125161518

/-! ## A288731.P5966432127775159511

`eq[char[A288730(n+1)], A000007(n)]`
-/

namespace A288731.P5966432127775159511
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288730 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288731.P5966432127775159511

/-! ## A288731.P5897758790380383676

`filter[A092942(n+1), A288729(#)]`
-/

namespace A288731.P5897758790380383676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288729 (f1 j).toNat = 1) n)

end

end A288731.P5897758790380383676

/-! ## A288731.P17517252932281119056

`filter[A133622(n+1), A288729(#)]`
-/

namespace A288731.P17517252932281119056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288729 (f1 j).toNat = 1) n)

end

end A288731.P17517252932281119056

/-! ## A288731.P18025159999784796689

`filter[A179820(n+1), A288729(#)]`
-/

namespace A288731.P18025159999784796689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179820 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288729 (f1 j).toNat = 1) n)

end

end A288731.P18025159999784796689

/-! ## A288731.P10699067004369832069

`filter[A152271(n), A288729(#)]`
-/

namespace A288731.P10699067004369832069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288729 (f1 j).toNat = 1) n)

end

end A288731.P10699067004369832069

/-! ## A288731.P9904810271072408947

`filter[A158416(n), A288729(#)]`
-/

namespace A288731.P9904810271072408947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288729 (f1 j).toNat = 1) n)

end

end A288731.P9904810271072408947

/-! ## A288731.P9840216886759384849

`filter[A100727(n), A288729(#)]`
-/

namespace A288731.P9840216886759384849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288729 (f1 j).toNat = 1) n)

end

end A288731.P9840216886759384849

/-! ## A288731.P14827628390356659521

`A036234(p?[A008578(n+1)*A288729(n+1)])`
-/

namespace A288731.P14827628390356659521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A288729 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A288731.P14827628390356659521

/-! ## A288731.P16425054575275133803

`eq[1, A288729(A233583(n+1))]`
-/

namespace A288731.P16425054575275133803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288729 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288731.P16425054575275133803

/-! ## A288731.P9698161392768539124

`filter[A105427(n+1), A288729(#)]`
-/

namespace A288731.P9698161392768539124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288729 (f1 j).toNat = 1) n)

end

end A288731.P9698161392768539124

/-!
# A288732: a(n) = a(n-1) + 2*a(n-4) - 2*a(n-5) for n >= 5, where a(0) = 2, a(1) = 4, a(2) = 6, a(3) = 8, a(4) = 10.

The programs for A288732, the canonical program `A288732.P2978209834823806513` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288732 has offset 0).

The definition of A288732 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+2*a(n-4)-2*a(n-5)` (program `A288732.P2978209834823806513`, by `A288732.P2978209834823806513.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288732.P18189518291758371768

`ogf((2+2x+2x^2+2x^3-2x^4)/(1-x-2x^4+2x^5))`
-/

namespace A288732.P18189518291758371768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2, 2, 2, -2] [1, -1, 0, 0, -2, 2] n

end

end A288732.P18189518291758371768

namespace A288732

/-- `ogf((2+2x+2x^2+2x^3-2x^4)/(1-x-2x^4+2x^5))` -/
def P18189518291758371768.Spec : Prop :=
  ∀ n, P18189518291758371768.a n = A288732 n

end A288732

/-! ## A288732.P2978209834823806513

`a(n-1)+2*a(n-4)-2*a(n-5)` with `a(0)=2, a(1)=4, a(2)=6, a(3)=8, a(4)=10`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A288732

/-- `a(n-1)+2*a(n-4)-2*a(n-5)` -/
def P2978209834823806513.Spec : Prop :=
  ∀ n, P2978209834823806513.a n = A288732 n

theorem P2978209834823806513.correct : P2978209834823806513.Spec := by
  intro n
  simp only [A288732]

end A288732

/-! ## A288732.P9963622473114085271

`2*(a(n-4)+3)` with `a(0)=2, a(1)=4, a(2)=6, a(3)=8`
-/

namespace A288732.P9963622473114085271
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 6, 8] fun n a =>
  2 * (a (n - 4) + 3)

end

end A288732.P9963622473114085271

namespace A288732

/-- `2*(a(n-4)+3)` -/
def P9963622473114085271.Spec : Prop :=
  ∀ n, (P9963622473114085271.a n : ℤ) = A288732 n

end A288732

/-! ## A288732.P17443391649798058384

`∑[2*a(n-4)]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2, a(4)=2`
-/

namespace A288732.P17443391649798058384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2, 2, 2] fun n f1 =>
  2 * f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288732.P17443391649798058384

namespace A288732

/-- `∑[2*a(n-4)]` -/
def P17443391649798058384.Spec : Prop :=
  ∀ n, (P17443391649798058384.a n : ℤ) = A288732 n

end A288732

/-! ## A288732.P14853391048277125875

`∑[2*ceil(2^(ceil(n/4)-1))]`
-/

namespace A288732.P14853391048277125875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈(2 : ℚ) ^ (⌈(n : ℚ) / 4⌉ - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288732.P14853391048277125875

namespace A288732

/-- `∑[2*ceil(2^(ceil(n/4)-1))]` -/
def P14853391048277125875.Spec : Prop :=
  ∀ n, P14853391048277125875.a n = A288732 n

end A288732

/-! ## A288732.P16656039149501359246

`a(n-4)+a(n-4)+6` with `a(0)=2, a(1)=4, a(2)=6, a(3)=8`
-/

namespace A288732.P16656039149501359246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 4, 6, 8] fun n a =>
  a (n - 4) + (a (n - 4) + 6)

end

end A288732.P16656039149501359246

namespace A288732

/-- `a(n-4)+a(n-4)+6` -/
def P16656039149501359246.Spec : Prop :=
  ∀ n, (P16656039149501359246.a n : ℤ) = A288732 n

end A288732

/-! ## A288732.P12368838160825927312

`A200678(n+4)-2`
-/

namespace A288732.P12368838160825927312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200678 (n + 4) - 2

end

end A288732.P12368838160825927312

namespace A288732

/-- `A200678(n+4)-2` -/
def P12368838160825927312.Spec : Prop :=
  ∀ n, P12368838160825927312.a n = A288732 n

end A288732

/-! ## A288732.P2133204090299387468

`∑[A200675(n+3)]+1`
-/

namespace A288732.P2133204090299387468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200675 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A288732.P2133204090299387468

namespace A288732

/-- `∑[A200675(n+3)]+1` -/
def P2133204090299387468.Spec : Prop :=
  ∀ n, P2133204090299387468.a n = A288732 n

end A288732

/-! ## A288732.P10899049087839669208

`∑[∏[A177704(n+2)]]+1`
-/

namespace A288732.P10899049087839669208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A288732.P10899049087839669208

namespace A288732

/-- `∑[∏[A177704(n+2)]]+1` -/
def P10899049087839669208.Spec : Prop :=
  ∀ n, P10899049087839669208.a n = A288732 n

end A288732

/-! ## A288732.P9089310484044638032

`∑[2^A002265(n+3)]+1`
-/

namespace A288732.P9089310484044638032
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002265 (n + 3) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A288732.P9089310484044638032

namespace A288732

/-- `∑[2^A002265(n+3)]+1` -/
def P9089310484044638032.Spec : Prop :=
  ∀ n, P9089310484044638032.a n = (A288732 n : ℚ)

end A288732

/-! ## A288732.P3846944694688818411

`∑[A000079(∑[char[4*n+1]])]+1`
-/

namespace A288732.P3846944694688818411
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A288732.P3846944694688818411

namespace A288732

/-- `∑[A000079(∑[char[4*n+1]])]+1` -/
def P3846944694688818411.Spec : Prop :=
  ∀ n, P3846944694688818411.a n = A288732 n

end A288732

/-! ## A288732.P2260912965125140158

`∑[A016116(A008619(n+1))]+1`
-/

namespace A288732.P2260912965125140158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A008619 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A288732.P2260912965125140158

namespace A288732

/-- `∑[A016116(A008619(n+1))]+1` -/
def P2260912965125140158.Spec : Prop :=
  ∀ n, P2260912965125140158.a n = A288732 n

end A288732

/-! ## A288732.P12394129932020963236

`A011782(A002265(n+7))+a(n-1)` with `a(0)=2`
-/

namespace A288732.P12394129932020963236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A011782 (A002265 (n + 7)).toNat + a (n - 1)

end

end A288732.P12394129932020963236

namespace A288732

/-- `A011782(A002265(n+7))+a(n-1)` -/
def P12394129932020963236.Spec : Prop :=
  ∀ n, P12394129932020963236.a n = A288732 n

end A288732

/-! ## A288732.P6405816819060564403

`∑[A016116(n-(A002265(2*n)-1))]+1`
-/

namespace A288732.P6405816819060564403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 ((n : ℤ) - (A002265 (2 * n) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A288732.P6405816819060564403

namespace A288732

/-- `∑[A016116(n-(A002265(2*n)-1))]+1` -/
def P6405816819060564403.Spec : Prop :=
  ∀ n, P6405816819060564403.a n = A288732 n

end A288732

/-! ## A288732.P7880292289048297193

`∑[A060546(log2(A060546(n)))]+1`
-/

namespace A288732.P7880292289048297193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (SequenceMachineLib.roundAway (Real.logb 2 (A060546 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A288732.P7880292289048297193

namespace A288732

/-- `∑[A060546(log2(A060546(n)))]+1` -/
def P7880292289048297193.Spec : Prop :=
  ∀ n, P7880292289048297193.a n = A288732 n

end A288732

/-!
# A288733: 1-limiting word of the mapping 00->1000, 10->01, starting with 00.

The programs for A288733, there is no canonical definition to state claims against.
-/

/-! ## A288733.P11799311911833132679

`char[A288735(n+1)-1]`
-/

namespace A288733.P11799311911833132679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288735 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288733.P11799311911833132679

/-! ## A288733.P1422567340644468494

`char[comp[A288734(n+1)-1]]`
-/

namespace A288733.P1422567340644468494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288733.P1422567340644468494

/-! ## A288733.P16016601863977100911

`char[A023443(A288735(n+1))]`
-/

namespace A288733.P16016601863977100911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288735 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288733.P16016601863977100911

/-! ## A288733.P3350809311408026418

`char[A023443(comp[A288734(n+1)])]`
-/

namespace A288733.P3350809311408026418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288734 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288733.P3350809311408026418

/-! ## A288733.P17523537956678023800

`char[Δ[A288735(A152271(n))]]`
-/

namespace A288733.P17523537956678023800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288735 (A152271 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288733.P17523537956678023800

/-!
# A288734: Positions of 0 in A288733; complement of A288735.

The programs for A288734, there is no canonical definition to state claims against.
-/

/-! ## A288734.P7039560239487112645

`comp[A288735(n+1)-1]+1`
-/

namespace A288734.P7039560239487112645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288735 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288734.P7039560239487112645

/-! ## A288734.P5250952523858945665

`eq[0, A288733(n+1)]+1`
-/

namespace A288734.P5250952523858945665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288733 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288734.P5250952523858945665

/-! ## A288734.P392788964571533896

`A020725(eq[0, A288733(n+1)])`
-/

namespace A288734.P392788964571533896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288734.P392788964571533896

/-! ## A288734.P9119783802765810634

`eq[char[A288735(n+1)], A000007(n)]`
-/

namespace A288734.P9119783802765810634
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288735 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288734.P9119783802765810634

/-! ## A288734.P6713210043353926377

`eq[0, A288733(A065033(2*n))]`
-/

namespace A288734.P6713210043353926377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288733 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288734.P6713210043353926377

/-! ## A288734.P2204039614286123501

`eq[0, A288733(A123108(A005843(n)))]`
-/

namespace A288734.P2204039614286123501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288733 (A123108 (A005843 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288734.P2204039614286123501

/-!
# A288735: Positions of 1 in A288733; complement of A288734.

The programs for A288735, there is no canonical definition to state claims against.
-/

/-! ## A288735.P15045445569570660680

`eq[1, A288733(n+1)]+1`
-/

namespace A288735.P15045445569570660680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288733 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288735.P15045445569570660680

/-! ## A288735.P4948971400241779875

`record[A000027(n+1)*A288733(n+1)]`
-/

namespace A288735.P4948971400241779875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A288733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288735.P4948971400241779875

/-! ## A288735.P170548371809908118

`record[gcd(n+1, A288733(n+1)+A153151(n+1))]`
-/

namespace A288735.P170548371809908118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A288733 (n + 1) + A153151 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288735.P170548371809908118

/-! ## A288735.P17829693119653799710

`record[A288733(A323368(n+1))*A323368(n+1)]`
-/

namespace A288735.P17829693119653799710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288733 (A323368 (n + 1)).toNat * A323368 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288735.P17829693119653799710

/-! ## A288735.P13664917340284095607

`record[A288733(A325383(n+1))*A325383(n+1)]`
-/

namespace A288735.P13664917340284095607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288733 (A325383 (n + 1)).toNat * A325383 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288735.P13664917340284095607

/-! ## A288735.P16182384555198825319

`record[A008619(n)*A288733(A008619(n))]`
-/

namespace A288735.P16182384555198825319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A288733 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288735.P16182384555198825319

/-! ## A288735.P13525793953979194891

`record[A080513(n)*A288733(A080513(n))]`
-/

namespace A288735.P13525793953979194891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 n * A288733 (A080513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288735.P13525793953979194891

/-! ## A288735.P13543331358743872409

`filter[A038459(n+1), A288733(#)]`
-/

namespace A288735.P13543331358743872409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288733 (f1 j).toNat = 1) n)

end

end A288735.P13543331358743872409

/-! ## A288735.P11837661967281182927

`record[A080513(2*n)*A288733(n+1)]`
-/

namespace A288735.P11837661967281182927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * n) * A288733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288735.P11837661967281182927

/-! ## A288735.P716179094124316142

`record[A001057(2*n+1)*A288733(n+1)]`
-/

namespace A288735.P716179094124316142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (2 * n + 1) * A288733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288735.P716179094124316142

/-! ## A288735.P7911996617583794235

`record[A008620(n)*A288733(A008620(n))]`
-/

namespace A288735.P7911996617583794235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 n * A288733 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288735.P7911996617583794235

/-! ## A288735.P3543058762047908563

`filter[A072442(n), A288733(#)]`
-/

namespace A288735.P3543058762047908563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288733 (f1 j).toNat = 1) n)

end

end A288735.P3543058762047908563

/-!
# A288736: 2-limiting word of the mapping 00->1000, 10->01, starting with 00.

The programs for A288736, there is no canonical definition to state claims against.
-/

/-! ## A288736.P13052852958499406326

`char[A288740(1+n)-1]`
-/

namespace A288736.P13052852958499406326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288740 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288736.P13052852958499406326

/-! ## A288736.P16697320599132501606

`char[comp[A288737(n+1)-1]]`
-/

namespace A288736.P16697320599132501606
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288737 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288736.P16697320599132501606

/-! ## A288736.P12476374613271161047

`abs(Δ[char[A288740(2*n+1)]])`
-/

namespace A288736.P12476374613271161047
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288740 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) : ℤ) - (f1 n : ℤ)|

end

end A288736.P12476374613271161047

/-! ## A288736.P6451549702642596169

`char[A023443(A288740(n+1))]`
-/

namespace A288736.P6451549702642596169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A288740 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288736.P6451549702642596169

/-! ## A288736.P2291465636509079463

`char[A023443(comp[A288737(n+1)])]`
-/

namespace A288736.P2291465636509079463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288737 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288736.P2291465636509079463

/-!
# A288737: Positions of 0 in A288736; complement of A288740.

The programs for A288737, there is no canonical definition to state claims against.
-/

/-! ## A288737.P5704429381558073734

`comp[A288740(1+n)-1]+1`
-/

namespace A288737.P5704429381558073734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288740 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A288737.P5704429381558073734

/-! ## A288737.P10897913834958650805

`eq[0, A288736(1+n)]+1`
-/

namespace A288737.P10897913834958650805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288736 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288737.P10897913834958650805

/-! ## A288737.P9801518036280408222

`record[n+1-A118113(n)*A288736(n+1)]`
-/

namespace A288737.P9801518036280408222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A118113 n * A288736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288737.P9801518036280408222

/-! ## A288737.P3521777616635990157

`record[n+1-A158686(n)*A288736(n+1)]`
-/

namespace A288737.P3521777616635990157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A158686 n * A288736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288737.P3521777616635990157

/-! ## A288737.P6663979381840914989

`record[n+1-A000009(n+1)*A288736(n+1)]`
-/

namespace A288737.P6663979381840914989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000009 (n + 1) * A288736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288737.P6663979381840914989

/-! ## A288737.P4525053301531565205

`record[n+1-A023823(n+1)*A288736(n+1)]`
-/

namespace A288737.P4525053301531565205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A023823 (n + 1) * A288736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288737.P4525053301531565205

/-! ## A288737.P3434288382084887450

`eq[A028310(n)-n, A288736(A028310(n))]`
-/

namespace A288737.P3434288382084887450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288736 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A288737.P3434288382084887450

/-! ## A288737.P8801972252590362555

`A082058(p?[A288736(n+1)+A000040(n+1)])`
-/

namespace A288737.P8801972252590362555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288736 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A288737.P8801972252590362555

/-!
# A288738: Number of ways writing the n-th 7-smooth number as a product of decimal digits of some other number which has no digits equal to 1.

The programs for A288738, there is no canonical definition to state claims against.
-/

/-! ## A288738.P10975112651831244947

`A033676(∑[A250265(A144299(n))])`
-/

namespace A288738.P10975112651831244947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250265 (A144299 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A288738.P10975112651831244947

/-! ## A288738.P13026981545598876599

`A280747(A178992(n+1)*A280747(n))`
-/

namespace A288738.P13026981545598876599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280747 (A178992 (n + 1) * A280747 n).toNat

end

end A288738.P13026981545598876599

/-! ## A288738.P9681164789519540726

`gcd(A001222(A000926(n+1)), A326898(n))`
-/

namespace A288738.P9681164789519540726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001222 (A000926 (n + 1)).toNat) (A326898 n)

end

end A288738.P9681164789519540726

/-! ## A288738.P4668156304338620538

`gcd(A008805(A050343(n)), A050343(n))`
-/

namespace A288738.P4668156304338620538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008805 (A050343 n).toNat) (A050343 n)

end

end A288738.P4668156304338620538

/-! ## A288738.P13954509024565967164

`A135010(A335455(n)+A002083(n+1))`
-/

namespace A288738.P13954509024565967164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135010 (A335455 n + A002083 (n + 1)).toNat

end

end A288738.P13954509024565967164

/-!
# A288739: Number of permutations without leading zeros of digits of n that have the same 2-adic valuation as n.

The programs for A288739, there is no canonical definition to state claims against.
-/

/-! ## A288739.P4542547527843528646

`gcd(A038118(n), A387535(n+1))`
-/

namespace A288739.P4542547527843528646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038118 n) (A387535 (n + 1))

end

end A288739.P4542547527843528646

/-! ## A288739.P5694553687286014628

`gcd(A054171(n), A103765(n+2))`
-/

namespace A288739.P5694553687286014628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A054171 n) (A103765 (n + 2))

end

end A288739.P5694553687286014628

/-! ## A288739.P906335985301266146

`A257993((lcm(n+1, ∑{digits}[n+1, #])/(n+1))^A037904(3*(n+1)))`
-/

namespace A288739.P906335985301266146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257993 (SequenceMachineLib.roundAway (((Nat.lcm (n + 1) ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℚ) / (n + 1 : ℚ)) ^ (A037904 (3 * (n + 1)) : ℤ))).toNat

end

end A288739.P906335985301266146

/-! ## A288739.P16992479674849920117

`A006928(gcd(A328958(3*n+2), A336866(n)))`
-/

namespace A288739.P16992479674849920117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (Int.gcd (A328958 (3 * n + 2)) (A336866 n))

end

end A288739.P16992479674849920117

/-! ## A288739.P3571572652222782235

`A115570(A395160(2*(n+1))+A115583(3*(n+1)))`
-/

namespace A288739.P3571572652222782235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115570 (A395160 (2 * (n + 1)) + A115583 (3 * (n + 1))).toNat

end

end A288739.P3571572652222782235

/-!
# A288740: Positions of 1 in A288736; complement of A288737.

The programs for A288740, there is no canonical definition to state claims against.
-/

/-! ## A288740.P13910075332103602964

`eq[1, A288736(1+n)]+1`
-/

namespace A288740.P13910075332103602964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288736 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288740.P13910075332103602964

/-! ## A288740.P3633059243491898584

`record[(n+2)*A288736(n+2)]`
-/

namespace A288740.P3633059243491898584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A288736 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288740.P3633059243491898584

/-! ## A288740.P16866129694489218639

`eq[1, A288736(A028310(n))]`
-/

namespace A288740.P16866129694489218639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288736 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288740.P16866129694489218639

/-! ## A288740.P8995237028851022883

`filter[A267528(n), A288736(#)]`
-/

namespace A288740.P8995237028851022883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288736 (f1 j).toNat = 1) n)

end

end A288740.P8995237028851022883

/-! ## A288740.P15434448426382490389

`filter[A344180(n), A288736(#)]`
-/

namespace A288740.P15434448426382490389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288736 (f1 j).toNat = 1) n)

end

end A288740.P15434448426382490389

/-! ## A288740.P16740745470861032555

`A020725(eq[1, A288736(n+1)])`
-/

namespace A288740.P16740745470861032555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288740.P16740745470861032555

/-! ## A288740.P5887789149070506077

`filter[A007494(n+1), A288736(#)]`
-/

namespace A288740.P5887789149070506077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288736 (f1 j).toNat = 1) n)

end

end A288740.P5887789149070506077

/-! ## A288740.P8217626631559473440

`filter[A064429(n+1), A288736(#)]`
-/

namespace A288740.P8217626631559473440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288736 (f1 j).toNat = 1) n)

end

end A288740.P8217626631559473440

/-! ## A288740.P6531362882323390117

`filter[A099424(n+1), A288736(#)]`
-/

namespace A288740.P6531362882323390117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288736 (f1 j).toNat = 1) n)

end

end A288740.P6531362882323390117

/-! ## A288740.P15916959077623277382

`filter[A037915(n), A288736(#)]`
-/

namespace A288740.P15916959077623277382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288736 (f1 j).toNat = 1) n)

end

end A288740.P15916959077623277382

/-! ## A288740.P10725444138351367933

`filter[A092942(n+1), A288736(#)]`
-/

namespace A288740.P10725444138351367933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288736 (f1 j).toNat = 1) n)

end

end A288740.P10725444138351367933

/-! ## A288740.P12394694392182313027

`filter[A152271(n), A288736(#)]`
-/

namespace A288740.P12394694392182313027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288736 (f1 j).toNat = 1) n)

end

end A288740.P12394694392182313027

/-! ## A288740.P967804492291303874

`filter[A158416(n), A288736(#)]`
-/

namespace A288740.P967804492291303874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288736 (f1 j).toNat = 1) n)

end

end A288740.P967804492291303874

/-! ## A288740.P433235604394785606

`filter[A038459(n+1), A288736(#)]`
-/

namespace A288740.P433235604394785606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288736 (f1 j).toNat = 1) n)

end

end A288740.P433235604394785606

/-! ## A288740.P3080479678666520562

`filter[A266285(n), A288736(#)]`
-/

namespace A288740.P3080479678666520562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288736 (f1 j).toNat = 1) n)

end

end A288740.P3080479678666520562

/-! ## A288740.P3503734828471186944

`filter[A006370(n+1), A288736(#)]`
-/

namespace A288740.P3503734828471186944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288736 (f1 j).toNat = 1) n)

end

end A288740.P3503734828471186944

/-! ## A288740.P17474244044419743332

`A082058(p?[A000040(n+1)*A288736(n+1)])`
-/

namespace A288740.P17474244044419743332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A288736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A288740.P17474244044419743332

/-! ## A288740.P1349907060329654260

`filter[A085062(n+1), A288736(#)]`
-/

namespace A288740.P1349907060329654260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085062 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288736 (f1 j).toNat = 1) n)

end

end A288740.P1349907060329654260

/-! ## A288740.P8321563956276426407

`filter[A098046(n+1), A288736(#)]`
-/

namespace A288740.P8321563956276426407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288736 (f1 j).toNat = 1) n)

end

end A288740.P8321563956276426407

/-!
# A288741: 3-limiting word of the mapping 00->1000, 10->01, starting with 00.

The programs for A288741, there is no canonical definition to state claims against.
-/

/-! ## A288741.P12399709694920244765

`char[A285697(n+1)-1]`
-/

namespace A288741.P12399709694920244765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285697 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288741.P12399709694920244765

/-! ## A288741.P11508445946310738754

`char[comp[A288742(n+1)-1]]`
-/

namespace A288741.P11508445946310738754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288742 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288741.P11508445946310738754

/-! ## A288741.P2837636835817624651

`A157686(Δ[-comp[A288742(n+1)+n]]²)`
-/

namespace A288741.P2837636835817624651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288742 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157686 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A288741.P2837636835817624651

/-! ## A288741.P16862416780477367420

`char[A023443(A285697(1+n))]`
-/

namespace A288741.P16862416780477367420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A285697 (1 + n)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288741.P16862416780477367420

/-! ## A288741.P12625133868012062266

`char[A023443(comp[A288742(n+1)])]`
-/

namespace A288741.P12625133868012062266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288742 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288741.P12625133868012062266

/-! ## A288741.P6925676544791964303

`A014029(Δ[∑[char[A288742(n+1)]]²])`
-/

namespace A288741.P6925676544791964303
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288742 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014029 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A288741.P6925676544791964303

/-!
# A288742: Positions of 0 in A288741; complement of A285697.

The programs for A288742, there is no canonical definition to state claims against.
-/

/-! ## A288742.P5422894357067505863

`eq[0, A288741(n+1)]+1`
-/

namespace A288742.P5422894357067505863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288741 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288742.P5422894357067505863

/-! ## A288742.P9247436360719585561

`record[n+1-A288730(n+1)*A288741(n+1)]`
-/

namespace A288742.P9247436360719585561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288730 (n + 1) * A288741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288742.P9247436360719585561

/-! ## A288742.P17025106214836887726

`record[n+1-A288731(n+1)*A288741(n+1)]`
-/

namespace A288742.P17025106214836887726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288731 (n + 1) * A288741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288742.P17025106214836887726

/-! ## A288742.P8759353100329130813

`record[A028242(2*n-A288741(n+1))]`
-/

namespace A288742.P8759353100329130813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 ((2 * n : ℤ) - A288741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288742.P8759353100329130813

/-! ## A288742.P11050462738261381789

`record[n+1-A288732(n)*A288741(n+1)]`
-/

namespace A288742.P11050462738261381789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A288732 n * A288741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288742.P11050462738261381789

/-! ## A288742.P12715342797554028604

`record[n+1-A000079(n)*A288741(n+1)]`
-/

namespace A288742.P12715342797554028604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000079 n * A288741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288742.P12715342797554028604

/-! ## A288742.P2687848905177299089

`record[n+1-A000225(n*A288741(n+1))]`
-/

namespace A288742.P2687848905177299089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000225 ((n : ℤ) * A288741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288742.P2687848905177299089

/-! ## A288742.P12164903120534478341

`record[n+1-A050488(n*A288741(n+1))]`
-/

namespace A288742.P12164903120534478341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A050488 ((n : ℤ) * A288741 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288742.P12164903120534478341

/-! ## A288742.P17804808540214257097

`record[(n+1)/A000079(n*A288741(n+1))]`
-/

namespace A288742.P17804808540214257097
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000079 ((n : ℤ) * A288741 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288742.P17804808540214257097

/-!
# A288743: Number of Dyck paths of semilength n such that the maximal number of peaks per level equals two.

The programs for A288743, there is no canonical definition to state claims against.
-/

/-! ## A288743.P11544469787502917361

`A287966(n+2)-A281874(n+2)`
-/

namespace A288743.P11544469787502917361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287966 (n + 2) - A281874 (n + 2)

end

end A288743.P11544469787502917361

/-! ## A288743.P5927648743917200999

`A287822(∑[n+2]+3)`
-/

namespace A288743.P5927648743917200999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A288743.P5927648743917200999

/-! ## A288743.P4093556866344463023

`or(A000007(n), A287822(A340266(n+1)))`
-/

namespace A288743.P4093556866344463023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A287822 (A340266 (n + 1)).toNat)

end

end A288743.P4093556866344463023

/-! ## A288743.P9146440153017936370

`A192066(A001316(n))*A287822(A340266(n+1))`
-/

namespace A288743.P9146440153017936370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192066 (A001316 n).toNat * A287822 (A340266 (n + 1)).toNat

end

end A288743.P9146440153017936370

/-! ## A288743.P11617050091365104353

`A138474(A001222(n+1))*A287822(A340266(n+1))`
-/

namespace A288743.P11617050091365104353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138474 (A001222 (n + 1)).toNat * A287822 (A340266 (n + 1)).toNat

end

end A288743.P11617050091365104353

/-!
# A288744: Number of Dyck paths of semilength n such that the maximal number of peaks per level equals three.

The programs for A288744, there is no canonical definition to state claims against.
-/

/-! ## A288744.P18110073428970203411

`A287967(n+3)-A287966(n+3)`
-/

namespace A288744.P18110073428970203411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287967 (n + 3) - A287966 (n + 3)

end

end A288744.P18110073428970203411

/-! ## A288744.P3707105901596801695

`A287822(A167614(n+2))`
-/

namespace A288744.P3707105901596801695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A167614 (n + 2)).toNat

end

end A288744.P3707105901596801695

/-! ## A288744.P14869401853142362880

`A287822(A152950(n+4))`
-/

namespace A288744.P14869401853142362880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A152950 (n + 4)).toNat

end

end A288744.P14869401853142362880

/-! ## A288744.P8435282325952220022

`A287822(A052905(n)+8)`
-/

namespace A288744.P8435282325952220022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A052905 n + 8).toNat

end

end A288744.P8435282325952220022

/-! ## A288744.P13377770464997285191

`A287822(A055999(n)+9)`
-/

namespace A288744.P13377770464997285191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A055999 n + 9).toNat

end

end A288744.P13377770464997285191

/-! ## A288744.P4201421859465164866

`A287822(eq[3, A002262(n)])`
-/

namespace A288744.P4201421859465164866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288744.P4201421859465164866

/-! ## A288744.P1636645489807524565

`A287822(A340266(n+2)+1)`
-/

namespace A288744.P1636645489807524565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A340266 (n + 2) + 1).toNat

end

end A288744.P1636645489807524565

/-! ## A288744.P9012026501367454904

`A287822(A055998(n+1)+6)`
-/

namespace A288744.P9012026501367454904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A055998 (n + 1) + 6).toNat

end

end A288744.P9012026501367454904

/-! ## A288744.P16203388867367386937

`A287822(eq[1, A327844(n+1)-2])`
-/

namespace A288744.P16203388867367386937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288744.P16203388867367386937

/-! ## A288744.P4319260132169035617

`A287822(eq[2, A002260(n+1)-2])`
-/

namespace A288744.P4319260132169035617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288744.P4319260132169035617

/-!
# A288745: Number of Dyck paths of semilength n such that the maximal number of peaks per level equals four.

The programs for A288745, there is no canonical definition to state claims against.
-/

/-! ## A288745.P6556539439899140636

`A287822(A155212(n)+12)`
-/

namespace A288745.P6556539439899140636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A155212 n + 12).toNat

end

end A288745.P6556539439899140636

/-! ## A288745.P2563907982845567572

`A287822(eq[4, A002262(n)])`
-/

namespace A288745.P2563907982845567572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288745.P2563907982845567572

/-! ## A288745.P2017796673296027867

`A287822(A167614(n+3)+1)`
-/

namespace A288745.P2017796673296027867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A167614 (n + 3) + 1).toNat

end

end A288745.P2017796673296027867

/-! ## A288745.P9017981346899017050

`A287822(A000124(n+4)+3)`
-/

namespace A288745.P9017981346899017050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A000124 (n + 4) + 3).toNat

end

end A288745.P9017981346899017050

/-! ## A288745.P7978253721266996872

`A287822(A000217(n+4)+4)`
-/

namespace A288745.P7978253721266996872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A000217 (n + 4) + 4).toNat

end

end A288745.P7978253721266996872

/-! ## A288745.P10243869427036271106

`A287822(A046691(n+2)+8)`
-/

namespace A288745.P10243869427036271106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A046691 (n + 2) + 8).toNat

end

end A288745.P10243869427036271106

/-! ## A288745.P1266951739145790900

`A287822(A253145(n+4)-(n+1))`
-/

namespace A288745.P1266951739145790900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A253145 (n + 4) - (n + 1 : ℤ)).toNat

end

end A288745.P1266951739145790900

/-!
# A288746: Number of Dyck paths of semilength n such that the maximal number of peaks per level equals five.

The programs for A288746, there is no canonical definition to state claims against.
-/

/-! ## A288746.P5501672797028676730

`A287822(A167499(n+4))`
-/

namespace A288746.P5501672797028676730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A167499 (n + 4)).toNat

end

end A288746.P5501672797028676730

/-! ## A288746.P2096807036586923992

`A287822(eq[5, A002262(n)])`
-/

namespace A288746.P2096807036586923992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288746.P2096807036586923992

/-! ## A288746.P11192487874837859713

`A287822(A000124(n+5)+4)`
-/

namespace A288746.P11192487874837859713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A000124 (n + 5) + 4).toNat

end

end A288746.P11192487874837859713

/-! ## A288746.P13370794811774367287

`A287822(A000217(n+5)+5)`
-/

namespace A288746.P13370794811774367287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A000217 (n + 5) + 5).toNat

end

end A288746.P13370794811774367287

/-! ## A288746.P3484482641379881565

`A287822(Δ[A023545(n+1)]+9)`
-/

namespace A288746.P3484482641379881565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (f1 (n + 1) - f1 n + 9).toNat

end

end A288746.P3484482641379881565

/-! ## A288746.P13221884377199172028

`A287822(A055999(n+4)-2*(n+1))`
-/

namespace A288746.P13221884377199172028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A055999 (n + 4) - (2 * (n + 1) : ℤ)).toNat

end

end A288746.P13221884377199172028

/-!
# A288747: Number of Dyck paths of semilength n such that the maximal number of peaks per level equals six.

The programs for A288747, there is no canonical definition to state claims against.
-/

/-! ## A288747.P6246111588440668011

`A287822(eq[6, A002262(n)])`
-/

namespace A288747.P6246111588440668011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288747.P6246111588440668011

/-! ## A288747.P10481977746394029471

`A287822(A000217(n+6)+6)`
-/

namespace A288747.P10481977746394029471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A000217 (n + 6) + 6).toNat

end

end A288747.P10481977746394029471

/-! ## A288747.P12546912167029042829

`A287822(A046691(n+4)+10)`
-/

namespace A288747.P12546912167029042829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A046691 (n + 4) + 10).toNat

end

end A288747.P12546912167029042829

/-! ## A288747.P16971325954286815098

`A287822(A000124(n+7)-(n+2))`
-/

namespace A288747.P16971325954286815098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A000124 (n + 7) - (n + 2 : ℤ)).toNat

end

end A288747.P16971325954286815098

/-! ## A288747.P1698891539228561853

`A287822(A008587(n+5)+A000124(n+1))`
-/

namespace A288747.P1698891539228561853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A008587 (n + 5) + A000124 (n + 1)).toNat

end

end A288747.P1698891539228561853

/-!
# A288748: Number of Dyck paths of semilength n such that the maximal number of peaks per level equals seven.

The programs for A288748, there is no canonical definition to state claims against.
-/

/-! ## A288748.P9994462716258440051

`A287822(A167487(n+6))`
-/

namespace A288748.P9994462716258440051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A167487 (n + 6)).toNat

end

end A288748.P9994462716258440051

/-! ## A288748.P6621978898992536455

`A287822(A000096(n+6)+8)`
-/

namespace A288748.P6621978898992536455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A000096 (n + 6) + 8).toNat

end

end A288748.P6621978898992536455

/-! ## A288748.P5471056871153465297

`A287822(A000217(n+7)+7)`
-/

namespace A288748.P5471056871153465297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A000217 (n + 7) + 7).toNat

end

end A288748.P5471056871153465297

/-! ## A288748.P12122127837888440963

`A287822(A000124(n+8)-(n+2))`
-/

namespace A288748.P12122127837888440963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A000124 (n + 8) - (n + 2 : ℤ)).toNat

end

end A288748.P12122127837888440963

/-! ## A288748.P10367407605606024734

`A287822(A001489(n+2)+A000124(n+8))`
-/

namespace A288748.P10367407605606024734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A001489 (n + 2) + A000124 (n + 8)).toNat

end

end A288748.P10367407605606024734

/-! ## A288748.P13485708970084134617

`A287822(A008574(n+7)+A000124(n+3))`
-/

namespace A288748.P13485708970084134617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A008574 (n + 7) + A000124 (n + 3)).toNat

end

end A288748.P13485708970084134617

/-!
# A288749: Number of Dyck paths of semilength n such that the maximal number of peaks per level equals eight.

The programs for A288749, there is no canonical definition to state claims against.
-/

/-! ## A288749.P4209171992623945408

`A287822(A000096(n+7)+9)`
-/

namespace A288749.P4209171992623945408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A000096 (n + 7) + 9).toNat

end

end A288749.P4209171992623945408

/-! ## A288749.P3702862575540315688

`A287822(A000217(n+8)+8)`
-/

namespace A288749.P3702862575540315688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A000217 (n + 8) + 8).toNat

end

end A288749.P3702862575540315688

/-! ## A288749.P13005221533231118081

`A287822(A000124(n+9)-(n+2))`
-/

namespace A288749.P13005221533231118081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A000124 (n + 9) - (n + 2 : ℤ)).toNat

end

end A288749.P13005221533231118081

/-! ## A288749.P4051987868387294533

`A287822(A001489(n+2)+A000124(n+9))`
-/

namespace A288749.P4051987868387294533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A001489 (n + 2) + A000124 (n + 9)).toNat

end

end A288749.P4051987868387294533

/-! ## A288749.P17230366233592031098

`A287822(A016777(n+9)+A000124(n+5))`
-/

namespace A288749.P17230366233592031098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A016777 (n + 9) + A000124 (n + 5)).toNat

end

end A288749.P17230366233592031098

/-! ## A288749.P3094587831493740699

`A287822(A317108(n+11)+A000124(n+6))`
-/

namespace A288749.P3094587831493740699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A317108 (n + 11) + A000124 (n + 6)).toNat

end

end A288749.P3094587831493740699

/-!
# A288750: Number of Dyck paths of semilength n such that the maximal number of peaks per level equals nine.

The programs for A288750, there is no canonical definition to state claims against.
-/

/-! ## A288750.P912801403911236449

`A287822(eq[9, A002262(n)])`
-/

namespace A288750.P912801403911236449
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288750.P912801403911236449

/-! ## A288750.P5731957882286511482

`A287822(A000096(n+8)+10)`
-/

namespace A288750.P5731957882286511482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A000096 (n + 8) + 10).toNat

end

end A288750.P5731957882286511482

/-! ## A288750.P9202255047302894366

`A287822(A000217(n+9)+9)`
-/

namespace A288750.P9202255047302894366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A000217 (n + 9) + 9).toNat

end

end A288750.P9202255047302894366

/-! ## A288750.P12064264479685318802

`A287822(eq[9, A130270(n+1)])`
-/

namespace A288750.P12064264479685318802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288750.P12064264479685318802

/-! ## A288750.P2058089853331509742

`A287822(eq[10, A002260(n+1)])`
-/

namespace A288750.P2058089853331509742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288750.P2058089853331509742

/-!
# A288751: Number of Dyck paths of semilength n such that the maximal number of peaks per level equals ten.

The programs for A288751, there is no canonical definition to state claims against.
-/

/-! ## A288751.P701583785941444061

`A287822(eq[10, A002262(n)])`
-/

namespace A288751.P701583785941444061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288751.P701583785941444061

/-! ## A288751.P3126920399624715724

`A287822(A000217(n+10)+10)`
-/

namespace A288751.P3126920399624715724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A000217 (n + 10) + 10).toNat

end

end A288751.P3126920399624715724

/-! ## A288751.P10464045640914526468

`A287822(eq[10, A327844(n+1)])`
-/

namespace A288751.P10464045640914526468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288751.P10464045640914526468

/-! ## A288751.P7884765294153191697

`A287822(eq[11, A002260(n+1)])`
-/

namespace A288751.P7884765294153191697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288751.P7884765294153191697

/-! ## A288751.P1264054534018724930

`A287822(A000124(n+12)-A317108(n+7))`
-/

namespace A288751.P1264054534018724930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287822 (A000124 (n + 12) - A317108 (n + 7)).toNat

end

end A288751.P1264054534018724930

/-!
# A288752: 0-limiting word of the mapping 00->0110, 1->01, starting with 00.

The programs for A288752, there is no canonical definition to state claims against.
-/

/-! ## A288752.P12066029332665969428

`char[A288754(1+n)-1]`
-/

namespace A288752.P12066029332665969428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288754 (1 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A288752.P12066029332665969428

/-! ## A288752.P129494415106057400

`char[comp[A288753(n+1)-1]]`
-/

namespace A288752.P129494415106057400
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288753 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A288752.P129494415106057400

/-! ## A288752.P10831513707609077989

`3%Δ[A288623(n+1)]`
-/

namespace A288752.P10831513707609077989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f1 (n + 1) - f1 n)

end

end A288752.P10831513707609077989

/-! ## A288752.P13609474436679799893

`A007814(Δ[A288623(n+1)])`
-/

namespace A288752.P13609474436679799893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (f1 (n + 1) - f1 n).toNat

end

end A288752.P13609474436679799893

/-! ## A288752.P11055309643705278038

`A226520(Δ[A288623(n+1)])`
-/

namespace A288752.P11055309643705278038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (f1 (n + 1) - f1 n).toNat

end

end A288752.P11055309643705278038

/-! ## A288752.P2654112031533376619

`A288462(Δ[A288623(n+1)])`
-/

namespace A288752.P2654112031533376619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288462 (f1 (n + 1) - f1 n).toNat

end

end A288752.P2654112031533376619

/-! ## A288752.P11943681666123519908

`A179827(Δ[A288623(n+1)]²)`
-/

namespace A288752.P11943681666123519908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179827 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A288752.P11943681666123519908

/-! ## A288752.P9828943439797077878

`A120769(Δ[A288623(n+1)])-1`
-/

namespace A288752.P9828943439797077878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120769 (f1 (n + 1) - f1 n).toNat - 1

end

end A288752.P9828943439797077878

/-! ## A288752.P382489462584128400

`1-A243920(Δ[A288623(n+1)])`
-/

namespace A288752.P382489462584128400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A243920 (f1 (n + 1) - f1 n).toNat

end

end A288752.P382489462584128400

/-! ## A288752.P2984640824557641617

`A179827(Δ[2*A288623(n+1)])`
-/

namespace A288752.P2984640824557641617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179827 (f1 (n + 1) - f1 n).toNat

end

end A288752.P2984640824557641617

/-! ## A288752.P12402228351033166859

`val(A000108(Δ[A288623(n+1)]), 2)`
-/

namespace A288752.P12402228351033166859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288623 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000108 (f1 (n + 1) - f1 n).toNat).toNat 2

end

end A288752.P12402228351033166859

/-! ## A288752.P12031534903133533771

`and(1, A156552(Δ[A288623(n+1)]))`
-/

namespace A288752.P12031534903133533771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A156552 (f1 (n + 1) - f1 n).toNat)

end

end A288752.P12031534903133533771

/-! ## A288752.P9427972478312387998

`A243920(xor(1, Δ[A288623(n+1)]))`
-/

namespace A288752.P9427972478312387998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243920 (Int.xor 1 (f1 (n + 1) - f1 n)).toNat

end

end A288752.P9427972478312387998

/-! ## A288752.P12133820190821407837

`A002331(Δ[A288623(n+1)]+1)-1`
-/

namespace A288752.P12133820190821407837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002331 (f1 (n + 1) - f1 n + 1).toNat - 1

end

end A288752.P12133820190821407837

/-! ## A288752.P4271788211491767239

`A190248(Δ[4*A288623(n+1)]+1)`
-/

namespace A288752.P4271788211491767239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A288623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190248 (f1 (n + 1) - f1 n + 1).toNat

end

end A288752.P4271788211491767239

/-! ## A288752.P11260532673383040282

`A001222(A004070(Δ[A288623(n+1)]²))`
-/

namespace A288752.P11260532673383040282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004070 ((f1 (n + 1) - f1 n) ^ 2).toNat).toNat

end

end A288752.P11260532673383040282

/-! ## A288752.P7572748517469020100

`A001222(A001222(Δ[A288623(n+1)]+2))`
-/

namespace A288752.P7572748517469020100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288623 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001222 (f1 (n + 1) - f1 n + 2).toNat).toNat

end

end A288752.P7572748517469020100

/-! ## A288752.P608879089270427461

`A288462(A288623(n+2)-A288623(n+1))`
-/

namespace A288752.P608879089270427461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288462 (A288623 (n + 2) - A288623 (n + 1)).toNat

end

end A288752.P608879089270427461

/-! ## A288752.P16227947165221048948

`A288633(A288623(n+2)-A288623(n+1))`
-/

namespace A288752.P16227947165221048948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288633 (A288623 (n + 2) - A288623 (n + 1)).toNat

end

end A288752.P16227947165221048948

/-!
# A288753: Positions of 0 in A288752; complement of A288754.

The programs for A288753, there is no canonical definition to state claims against.
-/

/-! ## A288753.P7331342190020038936

`eq[1, A288752(n+1)+1]+1`
-/

namespace A288753.P7331342190020038936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288752 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288753.P7331342190020038936

/-! ## A288753.P13658327383472706838

`record[n+1-A008458(n)*A288752(n+1)]`
-/

namespace A288753.P13658327383472706838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008458 n * A288752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288753.P13658327383472706838

/-! ## A288753.P8242705675119298001

`record[n+1-A305418(n*A288752(n+1)+1)]`
-/

namespace A288753.P8242705675119298001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A305418 ((n : ℤ) * A288752 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288753.P8242705675119298001

/-! ## A288753.P10837558301216164882

`record[(n+1)/A228358(n*A288752(n+1)+1)]`
-/

namespace A288753.P10837558301216164882
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A228358 ((n : ℤ) * A288752 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288753.P10837558301216164882

/-! ## A288753.P6519269630340873330

`record[n+1-A228358(n+1)*A288752(n+1)]`
-/

namespace A288753.P6519269630340873330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A228358 (n + 1) * A288752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288753.P6519269630340873330

/-!
# A288754: Positions of 1 in A288752; complement of A288753.

The programs for A288754, there is no canonical definition to state claims against.
-/

/-! ## A288754.P5625302405852454361

`eq[1, A288752(n+1)]+1`
-/

namespace A288754.P5625302405852454361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288752 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288754.P5625302405852454361

/-! ## A288754.P3142043471574574043

`record[2*A288752(n+2)+n]`
-/

namespace A288754.P3142043471574574043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A288752 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288754.P3142043471574574043

/-! ## A288754.P1022385731447979691

`filter[A344180(n), A288752(#)]`
-/

namespace A288754.P1022385731447979691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288752 (f1 j).toNat = 1) n)

end

end A288754.P1022385731447979691

/-! ## A288754.P5012743392902363832

`eq[2, Δ[A288623(n+1)]]+1`
-/

namespace A288754.P5012743392902363832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288754.P5012743392902363832

/-! ## A288754.P30666032055220887

`eq[char[A288753(n+1)], A000007(n)]`
-/

namespace A288754.P30666032055220887
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288753 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288754.P30666032055220887

/-! ## A288754.P8743666071067766638

`eq[char[A288753(n+1)], A000038(n)]`
-/

namespace A288754.P8743666071067766638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288753 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288754.P8743666071067766638

/-! ## A288754.P5614073116577062526

`eq[char[A288753(n+1)], A130706(n)]`
-/

namespace A288754.P5614073116577062526
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288753 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A288754.P5614073116577062526

/-! ## A288754.P86429273427831928

`filter[A092942(n+1), A288752(#)]`
-/

namespace A288754.P86429273427831928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288752 (f1 j).toNat = 1) n)

end

end A288754.P86429273427831928

/-! ## A288754.P2190095058402294266

`filter[A152271(n), A288752(#)]`
-/

namespace A288754.P2190095058402294266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288752 (f1 j).toNat = 1) n)

end

end A288754.P2190095058402294266

/-! ## A288754.P12989203918856058245

`filter[A158416(n), A288752(#)]`
-/

namespace A288754.P12989203918856058245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288752 (f1 j).toNat = 1) n)

end

end A288754.P12989203918856058245

/-! ## A288754.P11897444869224378074

`filter[A038459(n+1), A288752(#)]`
-/

namespace A288754.P11897444869224378074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288752 (f1 j).toNat = 1) n)

end

end A288754.P11897444869224378074

/-! ## A288754.P4097587595105416380

`filter[A133622(n+1), A288752(#)]`
-/

namespace A288754.P4097587595105416380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288752 (f1 j).toNat = 1) n)

end

end A288754.P4097587595105416380

/-! ## A288754.P5177008609492657375

`filter[A174571(n+1), A288752(#)]`
-/

namespace A288754.P5177008609492657375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288752 (f1 j).toNat = 1) n)

end

end A288754.P5177008609492657375

/-! ## A288754.P14008573440471174850

`filter[A332864(n+1), A288752(#)]`
-/

namespace A288754.P14008573440471174850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288752 (f1 j).toNat = 1) n)

end

end A288754.P14008573440471174850

/-! ## A288754.P9787730580314653232

`filter[A105427(n+1), A288752(#)]`
-/

namespace A288754.P9787730580314653232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288752 (f1 j).toNat = 1) n)

end

end A288754.P9787730580314653232

/-!
# A288755: Positions of 1 in A288710; complement of A287103.

The programs for A288755, there is no canonical definition to state claims against.
-/

/-! ## A288755.P13167984194750086635

`eq[1, A288710(n+1)]+1`
-/

namespace A288755.P13167984194750086635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288710 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288755.P13167984194750086635

/-! ## A288755.P13360393096257809041

`record[(n+4)*A288710(n+4)]`
-/

namespace A288755.P13360393096257809041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 4 : ℤ) * A288710 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A288755.P13360393096257809041

/-! ## A288755.P4752788523116364431

`lt[0, A288710(A028310(n))]`
-/

namespace A288755.P4752788523116364431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288710 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A288755.P4752788523116364431

/-! ## A288755.P7252322917148955418

`filter[A344180(n), A288710(#)]`
-/

namespace A288755.P7252322917148955418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288710 (f1 j).toNat = 1) n)

end

end A288755.P7252322917148955418

/-! ## A288755.P5716617284895780743

`filter[A003619(n+1), A288710(#)]`
-/

namespace A288755.P5716617284895780743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003619 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288710 (f1 j).toNat = 1) n)

end

end A288755.P5716617284895780743

/-! ## A288755.P17234856824977039598

`filter[A132999(n+1), A288710(#)]`
-/

namespace A288755.P17234856824977039598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132999 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288710 (f1 j).toNat = 1) n)

end

end A288755.P17234856824977039598

/-! ## A288755.P1884632542689746988

`filter[A275974(n+1), A288710(#)]`
-/

namespace A288755.P1884632542689746988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288710 (f1 j).toNat = 1) n)

end

end A288755.P1884632542689746988

/-! ## A288755.P6365708696064049447

`eq[1, A288710(A000007(n)+n)]`
-/

namespace A288755.P6365708696064049447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288710 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288755.P6365708696064049447

/-! ## A288755.P12612612557939376927

`eq[1, A288710(A000038(n)+n)]`
-/

namespace A288755.P12612612557939376927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288710 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288755.P12612612557939376927

/-! ## A288755.P2479796313756500429

`filter[A092942(n+1), A288710(#)]`
-/

namespace A288755.P2479796313756500429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288710 (f1 j).toNat = 1) n)

end

end A288755.P2479796313756500429

/-! ## A288755.P17018308771343666378

`filter[A019303(n), A288710(#)]`
-/

namespace A288755.P17018308771343666378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288710 (f1 j).toNat = 1) n)

end

end A288755.P17018308771343666378

/-! ## A288755.P17909099547937651799

`filter[A282738(n), A288710(#)]`
-/

namespace A288755.P17909099547937651799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288710 (f1 j).toNat = 1) n)

end

end A288755.P17909099547937651799

/-! ## A288755.P10901074934424512324

`filter[A152271(n), A288710(#)]`
-/

namespace A288755.P10901074934424512324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288710 (f1 j).toNat = 1) n)

end

end A288755.P10901074934424512324

/-! ## A288755.P4336173770694800825

`filter[A158416(n), A288710(#)]`
-/

namespace A288755.P4336173770694800825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288710 (f1 j).toNat = 1) n)

end

end A288755.P4336173770694800825

/-! ## A288755.P4447416001637243805

`eq[1, A288710(A065033(2*n))]`
-/

namespace A288755.P4447416001637243805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288710 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288755.P4447416001637243805

/-! ## A288755.P12643381565441730151

`filter[A038459(n+1), A288710(#)]`
-/

namespace A288755.P12643381565441730151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038459 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288710 (f1 j).toNat = 1) n)

end

end A288755.P12643381565441730151

/-! ## A288755.P3965197921084835478

`filter[A100727(n), A288710(#)]`
-/

namespace A288755.P3965197921084835478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100727 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288710 (f1 j).toNat = 1) n)

end

end A288755.P3965197921084835478

/-! ## A288755.P13417965823835489214

`filter[A006085(2*n+1), A288710(#)]`
-/

namespace A288755.P13417965823835489214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006085 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288710 (f1 j).toNat = 1) n)

end

end A288755.P13417965823835489214

/-! ## A288755.P15280716021105011163

`filter[A332864(n+1), A288710(#)]`
-/

namespace A288755.P15280716021105011163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288710 (f1 j).toNat = 1) n)

end

end A288755.P15280716021105011163

/-! ## A288755.P7908259777174749147

`filter[A115510(n+1), A288710(#)]`
-/

namespace A288755.P7908259777174749147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115510 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A288710 (f1 j).toNat = 1) n)

end

end A288755.P7908259777174749147

/-!
# A288756: Numerator of the volume of the "monic slice" of the d-th Chern-Vaaler star body.

The programs for A288756, there is no canonical definition to state claims against.
-/

/-! ## A288756.P11878546772400548905

`∏[∏[gcd(n, ∏[gcd(2, n)])]]`
-/

namespace A288756.P11878546772400548905
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∏ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A288756.P11878546772400548905

/-! ## A288756.P9977773086539361612

`∏[-xor(-n!, n!)]`
-/

namespace A288756.P9977773086539361612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-(Nat.factorial n : ℤ)) (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A288756.P9977773086539361612

/-! ## A288756.P11399914413693647233

`∏[and(n, -n)*a(n-1)]` with `a(0)=2`
-/

namespace A288756.P11399914413693647233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.land (n : ℤ) (-(n : ℤ)) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A288756.P11399914413693647233

/-! ## A288756.P3699732774354787856

`∏[2*2^∑[∑{e}[and(n, -n), #]]]`
-/

namespace A288756.P3699732774354787856
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 2 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A288756.P3699732774354787856

/-! ## A288756.P3880933313455792378

`∏[2*∏[and(n+1, -(n+1))]/and(n+1, -(n+1))]`
-/

namespace A288756.P3880933313455792378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A288756.P3880933313455792378

/-!
# A288757: Denominator of the volume of the "monic slice" of the d-th Chern-Vaaler star body.

The programs for A288757, there is no canonical definition to state claims against.
-/

/-! ## A288757.P17246463946554177475

`∏[A086116(n+1)]`
-/

namespace A288757.P17246463946554177475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086116 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A288757.P17246463946554177475

/-! ## A288757.P17206154299873663620

`∏[A001803(A004526(n))]`
-/

namespace A288757.P17206154299873663620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A288757.P17206154299873663620

/-! ## A288757.P6194200259846100532

`∏[A001803(log2(A016116(n)))]`
-/

namespace A288757.P6194200259846100532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 (SequenceMachineLib.roundAway (Real.logb 2 (A016116 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A288757.P6194200259846100532

/-! ## A288757.P7723608351409101646

`∏[A001803(∑[A144608(n)])]`
-/

namespace A288757.P7723608351409101646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144608 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001803 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A288757.P7723608351409101646

/-! ## A288757.P10438285058879941332

`∏[A004731(A109613(n)+1)]`
-/

namespace A288757.P10438285058879941332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (A109613 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A288757.P10438285058879941332

/-!
# A288758: Floor of the volume of the "monic slice" of the d-th Chern-Vaaler star body.

The programs for A288758, there is no canonical definition to state claims against.
-/

/-! ## A288758.P10130240196166807790

`floor((4/sqrt(n+3))^(n+1))`
-/

namespace A288758.P10130240196166807790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 / Real.sqrt (n + 3 : ℝ)) ^ (n + 1)⌋

end

end A288758.P10130240196166807790

/-!
# A288759: Number of distinct rational numbers that can be obtained in n steps by applying addition, subtraction, multiplication and division to any two potentially identical numbers from the complete set of numbers created in n-1 steps, starting with the set {1}.

The programs for A288759, there is no canonical definition to state claims against.
-/

/-! ## A288759.P8586029247967289930

`A316496(A003477(n))`
-/

namespace A288759.P8586029247967289930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316496 (A003477 n).toNat

end

end A288759.P8586029247967289930

/-!
# A288760: Number of distinct nonnegative rational numbers that can be obtained in n steps by applying addition, subtraction, multiplication and division to any two potentially identical numbers from the complete set of numbers created in n-1 steps, starting with the set {1}.

The programs for A288760, there is no canonical definition to state claims against.
-/

/-! ## A288760.P2293698115279850524

`3*A274625(a(n-1))` with `a(0)=1`
-/

namespace A288760.P2293698115279850524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * A274625 (a (n - 1)).toNat

end

end A288760.P2293698115279850524

/-!
# A288761: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 501", based on the 5-celled von Neumann neighborhood.

The programs for A288761, there is no canonical definition to state claims against.
-/

/-! ## A288761.P16281161819162511575

`A007088(A288763(n))`
-/

namespace A288761.P16281161819162511575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288763 n).toNat

end

end A288761.P16281161819162511575

/-! ## A288761.P6706185642497510660

`A007088(or(A277773(n), A287132(n)))`
-/

namespace A288761.P6706185642497510660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A277773 n) (A287132 n)).toNat

end

end A288761.P6706185642497510660

/-! ## A288761.P11290930999618710516

`A007088(or(A277800(n), A287132(n)))`
-/

namespace A288761.P11290930999618710516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A277800 n) (A287132 n)).toNat

end

end A288761.P11290930999618710516

/-! ## A288761.P7828292320230204205

`A007088(or(A285646(n), A287132(n)))`
-/

namespace A288761.P7828292320230204205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A285646 n) (A287132 n)).toNat

end

end A288761.P7828292320230204205

/-! ## A288761.P6101045669825063748

`A007088(or(A285654(n), A287132(n)))`
-/

namespace A288761.P6101045669825063748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A285654 n) (A287132 n)).toNat

end

end A288761.P6101045669825063748

/-!
# A288762: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 501", based on the 5-celled von Neumann neighborhood.

The programs for A288762, the canonical program `A288762.P12707450986837764201` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288762 has offset 0).

The definition of A288762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288762.P12707450986837764201

`ogf((1+2x-4x^2+4x^3+2x^4-8x^6-2x^7+8x^9)/(1-5x^2+4x^4))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A288762

/-- `ogf((1+2x-4x^2+4x^3+2x^4-8x^6-2x^7+8x^9)/(1-5x^2+4x^4))` -/
def P12707450986837764201.Spec : Prop :=
  ∀ n, P12707450986837764201.a n = A288762 n

theorem P12707450986837764201.correct : P12707450986837764201.Spec := by
  intro n
  simp only [A288762]

end A288762

/-! ## A288762.P1042391700452052485

`A287131(n)+char[2]`
-/

namespace A288762.P1042391700452052485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287131 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A288762.P1042391700452052485

namespace A288762

/-- `A287131(n)+char[2]` -/
def P1042391700452052485.Spec : Prop :=
  ∀ n, P1042391700452052485.a n = A288762 n

end A288762

/-! ## A288762.P6620173188877615571

`A287131(n*(1-char[2]))`
-/

namespace A288762.P6620173188877615571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287131 ((n : ℤ) * (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))).toNat

end

end A288762.P6620173188877615571

namespace A288762

/-- `A287131(n*(1-char[2]))` -/
def P6620173188877615571.Spec : Prop :=
  ∀ n, P6620173188877615571.a n = A288762 n

end A288762

/-! ## A288762.P16099876230054103257

`gcd(A130713(n), A287131(n))`
-/

namespace A288762.P16099876230054103257
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130713 n) (A287131 n)

end

end A288762.P16099876230054103257

namespace A288762

/-- `gcd(A130713(n), A287131(n))` -/
def P16099876230054103257.Spec : Prop :=
  ∀ n, (P16099876230054103257.a n : ℤ) = A288762 n

end A288762

/-! ## A288762.P12115277283351534783

`xor(A185012(n), A287131(n))`
-/

namespace A288762.P12115277283351534783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A185012 n) (A287131 n)

end

end A288762.P12115277283351534783

namespace A288762

/-- `xor(A185012(n), A287131(n))` -/
def P12115277283351534783.Spec : Prop :=
  ∀ n, P12115277283351534783.a n = A288762 n

end A288762

/-! ## A288762.P7871462546208064825

`or(char[A005843(n)], A287131(n))`
-/

namespace A288762.P7871462546208064825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A287131 n)

end

end A288762.P7871462546208064825

namespace A288762

/-- `or(char[A005843(n)], A287131(n))` -/
def P7871462546208064825.Spec : Prop :=
  ∀ n, P7871462546208064825.a n = A288762 n

end A288762

/-! ## A288762.P8067109915421010919

`or(char[A267461(n)], A287131(n))`
-/

namespace A288762.P8067109915421010919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267461 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A287131 n)

end

end A288762.P8067109915421010919

namespace A288762

/-- `or(char[A267461(n)], A287131(n))` -/
def P8067109915421010919.Spec : Prop :=
  ∀ n, P8067109915421010919.a n = A288762 n

end A288762

/-! ## A288762.P7209253373432950670

`or(A000035(n+1), A287131(n))`
-/

namespace A288762.P7209253373432950670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (n + 1)) (A287131 n)

end

end A288762.P7209253373432950670

namespace A288762

/-- `or(A000035(n+1), A287131(n))` -/
def P7209253373432950670.Spec : Prop :=
  ∀ n, P7209253373432950670.a n = A288762 n

end A288762

/-! ## A288762.P915277683930130857

`or(1, A287131(n))-A000035(n)`
-/

namespace A288762.P915277683930130857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A287131 n) - A000035 n

end

end A288762.P915277683930130857

namespace A288762

/-- `or(1, A287131(n))-A000035(n)` -/
def P915277683930130857.Spec : Prop :=
  ∀ n, P915277683930130857.a n = A288762 n

end A288762

/-! ## A288762.P18106701806816935929

`or(A318608(n+1)², A287131(n))`
-/

namespace A288762.P18106701806816935929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A318608 (n + 1) ^ 2) (A287131 n)

end

end A288762.P18106701806816935929

namespace A288762

/-- `or(A318608(n+1)², A287131(n))` -/
def P18106701806816935929.Spec : Prop :=
  ∀ n, P18106701806816935929.a n = A288762 n

end A288762

/-! ## A288762.P798518605604233557

`or(A318608(n+1)^A000292(n), A287131(n))`
-/

namespace A288762.P798518605604233557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A318608 (n + 1) : ℚ) ^ (A000292 n : ℤ))) (A287131 n)

end

end A288762.P798518605604233557

namespace A288762

/-- `or(A318608(n+1)^A000292(n), A287131(n))` -/
def P798518605604233557.Spec : Prop :=
  ∀ n, P798518605604233557.a n = A288762 n

end A288762

/-! ## A288762.P7939064978569419901

`or(A318608(n+1)^A008619(n), A287131(n))`
-/

namespace A288762.P7939064978569419901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A318608 (n + 1) : ℚ) ^ (A008619 n : ℤ))) (A287131 n)

end

end A288762.P7939064978569419901

namespace A288762

/-- `or(A318608(n+1)^A008619(n), A287131(n))` -/
def P7939064978569419901.Spec : Prop :=
  ∀ n, P7939064978569419901.a n = A288762 n

end A288762

/-! ## A288762.P16070247806064915002

`or(A318608(n+1)^A267461(n), A287131(n))`
-/

namespace A288762.P16070247806064915002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A318608 (n + 1) : ℚ) ^ (A267461 n : ℤ))) (A287131 n)

end

end A288762.P16070247806064915002

namespace A288762

/-- `or(A318608(n+1)^A267461(n), A287131(n))` -/
def P16070247806064915002.Spec : Prop :=
  ∀ n, P16070247806064915002.a n = A288762 n

end A288762

/-! ## A288762.P13765904051130516686

`or(A318608(n+1)^A000005(n+1), A287131(n))`
-/

namespace A288762.P13765904051130516686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A318608 (n + 1) : ℚ) ^ (A000005 (n + 1) : ℤ))) (A287131 n)

end

end A288762.P13765904051130516686

namespace A288762

/-- `or(A318608(n+1)^A000005(n+1), A287131(n))` -/
def P13765904051130516686.Spec : Prop :=
  ∀ n, P13765904051130516686.a n = A288762 n

end A288762

/-! ## A288762.P1837417867067029532

`gcd(A123023(n), A287131(n))`
-/

namespace A288762.P1837417867067029532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A123023 n) (A287131 n)

end

end A288762.P1837417867067029532

namespace A288762

/-- `gcd(A123023(n), A287131(n))` -/
def P1837417867067029532.Spec : Prop :=
  ∀ n, (P1837417867067029532.a n : ℤ) = A288762 n

end A288762

/-!
# A288763: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 501", based on the 5-celled von Neumann neighborhood.

The programs for A288763, the canonical program `A288763.P4765408707532306966` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288763 has offset 0).

The definition of A288763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A288763.P15725157587960028983

`ogf((1+x-x^2+2x^3+8x^4-8x^6-64x^7+64x^9)/(1-5x^2+4x^4))`
-/

namespace A288763.P15725157587960028983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -1, 2, 8, 0, -8, -64, 0, 64] [1, 0, -5, 0, 4] n

end

end A288763.P15725157587960028983

namespace A288763

/-- `ogf((1+x-x^2+2x^3+8x^4-8x^6-64x^7+64x^9)/(1-5x^2+4x^4))` -/
def P15725157587960028983.Spec : Prop :=
  ∀ n, P15725157587960028983.a n = A288763 n

end A288763

/-! ## A288763.P4765408707532306966

`5*a(n-2)-4*a(n-4)` with `a(0)=1, a(1)=1, a(2)=4, a(3)=7, a(4)=24, a(5)=31, a(6)=96, a(7)=63, a(8)=384, a(9)=255`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A288763

/-- `5*a(n-2)-4*a(n-4)` -/
def P4765408707532306966.Spec : Prop :=
  ∀ n, P4765408707532306966.a n = A288763 n

theorem P4765408707532306966.correct : P4765408707532306966.Spec := by
  intro n
  simp only [A288763]

end A288763

/-! ## A288763.P4420067433802118043

`gcd(A166926(n), A287132(n))`
-/

namespace A288763.P4420067433802118043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166926 n) (A287132 n)

end

end A288763.P4420067433802118043

namespace A288763

/-- `gcd(A166926(n), A287132(n))` -/
def P4420067433802118043.Spec : Prop :=
  ∀ n, (P4420067433802118043.a n : ℤ) = A288763 n

end A288763

/-! ## A288763.P11356309403787469316

`or(A277773(n), A287132(n))`
-/

namespace A288763.P11356309403787469316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277773 n) (A287132 n)

end

end A288763.P11356309403787469316

namespace A288763

/-- `or(A277773(n), A287132(n))` -/
def P11356309403787469316.Spec : Prop :=
  ∀ n, P11356309403787469316.a n = A288763 n

end A288763

/-! ## A288763.P8271151223881945524

`or(A277800(n), A287132(n))`
-/

namespace A288763.P8271151223881945524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A277800 n) (A287132 n)

end

end A288763.P8271151223881945524

namespace A288763

/-- `or(A277800(n), A287132(n))` -/
def P8271151223881945524.Spec : Prop :=
  ∀ n, P8271151223881945524.a n = A288763 n

end A288763

/-! ## A288763.P4349302735373636893

`or(A285646(n), A287132(n))`
-/

namespace A288763.P4349302735373636893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A285646 n) (A287132 n)

end

end A288763.P4349302735373636893

namespace A288763

/-- `or(A285646(n), A287132(n))` -/
def P4349302735373636893.Spec : Prop :=
  ∀ n, P4349302735373636893.a n = A288763 n

end A288763

/-! ## A288763.P1878944475058656266

`or(dr(A285778(n)), A287132(n))`
-/

namespace A288763.P1878944475058656266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.digitalRoot (A285778 n) : ℤ) (A287132 n)

end

end A288763.P1878944475058656266

namespace A288763

/-- `or(dr(A285778(n)), A287132(n))` -/
def P1878944475058656266.Spec : Prop :=
  ∀ n, P1878944475058656266.a n = A288763 n

end A288763

/-! ## A288763.P1805986670416555993

`or(A019428(A055672(n)), A287132(n))`
-/

namespace A288763.P1805986670416555993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A019428 (A055672 n).toNat) (A287132 n)

end

end A288763.P1805986670416555993

namespace A288763

/-- `or(A019428(A055672(n)), A287132(n))` -/
def P1805986670416555993.Spec : Prop :=
  ∀ n, P1805986670416555993.a n = A288763 n

end A288763

/-! ## A288763.P16419905983260482331

`A287132(n)+A055672(A000217(n))`
-/

namespace A288763.P16419905983260482331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287132 n + A055672 (A000217 n).toNat

end

end A288763.P16419905983260482331

namespace A288763

/-- `A287132(n)+A055672(A000217(n))` -/
def P16419905983260482331.Spec : Prop :=
  ∀ n, P16419905983260482331.a n = A288763 n

end A288763

/-!
# A288764: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 502", based on the 5-celled von Neumann neighborhood.

The programs for A288764, there is no canonical definition to state claims against.
-/

/-! ## A288764.P16712252346125027255

`A000042(n+1)%A289461(A028310(n))`
-/

namespace A288764.P16712252346125027255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000042 (n + 1)) (A289461 (A028310 n).toNat)

end

end A288764.P16712252346125027255

/-! ## A288764.P5876905739628021329

`A000042(n+1)+A057428(n)*A289461(n)`
-/

namespace A288764.P5876905739628021329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + A057428 n * A289461 n

end

end A288764.P5876905739628021329

/-! ## A288764.P6766157451414158093

`A000042(A028310(n)+1)-A289461(A028310(n))`
-/

namespace A288764.P6766157451414158093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (A028310 n + 1).toNat - A289461 (A028310 n).toNat

end

end A288764.P6766157451414158093

/-! ## A288764.P7868367733541507456

`A007088(A288766(n))`
-/

namespace A288764.P7868367733541507456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288766 n).toNat

end

end A288764.P7868367733541507456

/-! ## A288764.P3434471234401446495

`A185544(2*A288766(n))`
-/

namespace A288764.P3434471234401446495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A288766 n).toNat

end

end A288764.P3434471234401446495

/-!
# A288765: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 502", based on the 5-celled von Neumann neighborhood.

The programs for A288765, there is no canonical definition to state claims against.
-/

/-! ## A288765.P13096310961173818726

`A289406(n)+A288012(n)-A289462(n)`
-/

namespace A288765.P13096310961173818726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289406 n + A288012 n - A289462 n

end

end A288765.P13096310961173818726

/-! ## A288765.P13517428521495763795

`A289407(n)+A288013(n)-A289462(n)`
-/

namespace A288765.P13517428521495763795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289407 n + A288013 n - A289462 n

end

end A288765.P13517428521495763795

/-! ## A288765.P12516317687211050992

`A289376(n)+A288436(n)-A289462(n)`
-/

namespace A288765.P12516317687211050992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289376 n + A288436 n - A289462 n

end

end A288765.P12516317687211050992

/-! ## A288765.P10156521211366116527

`A289527(n)+A288300(n)-A289462(n)`
-/

namespace A288765.P10156521211366116527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289527 n + A288300 n - A289462 n

end

end A288765.P10156521211366116527

/-! ## A288765.P15907882203867843641

`A000042(n+1)+A000007(n)-A289462(n)`
-/

namespace A288765.P15907882203867843641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) + A000007 n - A289462 n

end

end A288765.P15907882203867843641

/-! ## A288765.P13624419877455064908

`A000042(n+1)-A289462(n)%A289150(n)`
-/

namespace A288765.P13624419877455064908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - Int.tmod (A289462 n) (A289150 n)

end

end A288765.P13624419877455064908

/-! ## A288765.P14938366649691706374

`A154272(n+3)+A000042(n+1)-A289462(n)`
-/

namespace A288765.P14938366649691706374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (n + 3) + A000042 (n + 1) - A289462 n

end

end A288765.P14938366649691706374

/-!
# A288766: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 502", based on the 5-celled von Neumann neighborhood.

The programs for A288766, there is no canonical definition to state claims against.
-/

/-! ## A288766.P8732456277669170942

`A289408(n)+A288014(n)-A289463(n)`
-/

namespace A288766.P8732456277669170942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289408 n + A288014 n - A289463 n

end

end A288766.P8732456277669170942

/-! ## A288766.P3228190689918988645

`A288811(n)+A288807(n)-A289463(n)`
-/

namespace A288766.P3228190689918988645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288811 n + A288807 n - A289463 n

end

end A288766.P3228190689918988645

/-! ## A288766.P2049573675149632563

`A289377(n)+A288437(n)-A289463(n)`
-/

namespace A288766.P2049573675149632563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289377 n + A288437 n - A289463 n

end

end A288766.P2049573675149632563

/-!
# A288767: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 502", based on the 5-celled von Neumann neighborhood.

The programs for A288767, there is no canonical definition to state claims against.
-/

/-! ## A288767.P7611142942959648371

`A052955(A004277(n))-A289464(n)`
-/

namespace A288767.P7611142942959648371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (A004277 n).toNat - A289464 n

end

end A288767.P7611142942959648371

/-! ## A288767.P14722094387681820065

`A288807(n)+A288811(n)-A289464(n)`
-/

namespace A288767.P14722094387681820065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288807 n + (A288811 n - A289464 n)

end

end A288767.P14722094387681820065

/-! ## A288767.P7384560654084677164

`A288766(n)+A289463(n)-A289464(n)`
-/

namespace A288767.P7384560654084677164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288766 n + (A289463 n - A289464 n)

end

end A288767.P7384560654084677164

/-! ## A288767.P17317821149753006258

`A057428(n)+A000079(n+1)-A289464(n)`
-/

namespace A288767.P17317821149753006258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + (A000079 (n + 1) - A289464 n)

end

end A288767.P17317821149753006258

/-! ## A288767.P13548444916617578789

`A000079(n+1)-A289464(n)-A057427(n)`
-/

namespace A288767.P13548444916617578789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) - A289464 n - A057427 n

end

end A288767.P13548444916617578789

/-!
# A288768: Binary representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 505", based on the 5-celled von Neumann neighborhood.

The programs for A288768, there is no canonical definition to state claims against.
-/

/-! ## A288768.P12230655830353992440

`A288801(n)-char[1]`
-/

namespace A288768.P12230655830353992440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288801 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A288768.P12230655830353992440

/-! ## A288768.P6017658683104015053

`A286811(n)-n%2`
-/

namespace A288768.P6017658683104015053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286811 n - ((n % 2 : ℕ) : ℤ)

end

end A288768.P6017658683104015053

/-! ## A288768.P11405729042336360756

`A286811(n)-A000035(n)`
-/

namespace A288768.P11405729042336360756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286811 n - A000035 n

end

end A288768.P11405729042336360756

/-! ## A288768.P8093708822293599849

`A286811(n)-char[A005408(n)]`
-/

namespace A288768.P8093708822293599849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286811 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288768.P8093708822293599849

/-! ## A288768.P4514310081715628196

`A286811(n)-char[A099375(n)]`
-/

namespace A288768.P4514310081715628196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286811 n - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A288768.P4514310081715628196

/-! ## A288768.P3787933811036563817

`xor(char[A288769(n)], A288801(n))`
-/

namespace A288768.P3787933811036563817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288769 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A288801 n)

end

end A288768.P3787933811036563817

/-! ## A288768.P12416579557538758915

`A286811(n)+1-A000034(n)`
-/

namespace A288768.P12416579557538758915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286811 n + (1 - A000034 n)

end

end A288768.P12416579557538758915

/-! ## A288768.P12062687318977365619

`and(-gcd(2, A033570(n)), A288801(n))`
-/

namespace A288768.P12062687318977365619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(Int.gcd 2 (A033570 n) : ℤ)) (A288801 n)

end

end A288768.P12062687318977365619

/-! ## A288768.P1209385305414204308

`A286811(n)+A159075(A055396(n+1))`
-/

namespace A288768.P1209385305414204308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286811 n + A159075 (A055396 (n + 1)).toNat

end

end A288768.P1209385305414204308

/-! ## A288768.P2356705075025568349

`A288770(n)+A288801(n)-A288803(n)`
-/

namespace A288768.P2356705075025568349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288770 n + (A288801 n - A288803 n)

end

end A288768.P2356705075025568349

/-!
# A288769: Binary representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 505", based on the 5-celled von Neumann neighborhood.

The programs for A288769, there is no canonical definition to state claims against.
-/

/-! ## A288769.P11218489424337585605

`A288802(n-char[1])`
-/

namespace A288769.P11218489424337585605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288802 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A288769.P11218489424337585605

/-! ## A288769.P1093208012189121160

`gcd(A130706(n), A288802(n))`
-/

namespace A288769.P1093208012189121160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A288802 n)

end

end A288769.P1093208012189121160

/-! ## A288769.P13069623566432437383

`A288802(n)%A007226(A151999(n+1))`
-/

namespace A288769.P13069623566432437383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288802 n) (A007226 (A151999 (n + 1)).toNat)

end

end A288769.P13069623566432437383

/-! ## A288769.P6188621973761173302

`A288802(n)^A051903(A026742(n))`
-/

namespace A288769.P6188621973761173302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288802 n : ℚ) ^ (A051903 (A026742 n).toNat : ℤ)

end

end A288769.P6188621973761173302

/-! ## A288769.P9744136730895687858

`A007088(A288771(n))`
-/

namespace A288769.P9744136730895687858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A288771 n).toNat

end

end A288769.P9744136730895687858

/-!
# A288770: Decimal representation of the diagonal from the corner to the origin of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 505", based on the 5-celled von Neumann neighborhood.

The programs for A288770, there is no canonical definition to state claims against.
-/

/-! ## A288770.P12061908880939440070

`A288803(n)-char[1]`
-/

namespace A288770.P12061908880939440070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288803 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A288770.P12061908880939440070

/-! ## A288770.P12833199068568967077

`A287188(n)-n%2`
-/

namespace A288770.P12833199068568967077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287188 n - ((n % 2 : ℕ) : ℤ)

end

end A288770.P12833199068568967077

/-! ## A288770.P9461473522763783443

`A287188(n)-A000035(n)`
-/

namespace A288770.P9461473522763783443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287188 n - A000035 n

end

end A288770.P9461473522763783443

/-! ## A288770.P1567321795137821796

`xor(A063524(n), A288803(n))`
-/

namespace A288770.P1567321795137821796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063524 n) (A288803 n)

end

end A288770.P1567321795137821796

/-! ## A288770.P5401470072093454510

`A287188(n)+1-A000034(n)`
-/

namespace A288770.P5401470072093454510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287188 n + (1 - A000034 n)

end

end A288770.P5401470072093454510

/-! ## A288770.P7953651299212605373

`A004526(n)+A287188(n)-A004526(n+1)`
-/

namespace A288770.P7953651299212605373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A287188 n - A004526 (n + 1))

end

end A288770.P7953651299212605373

/-! ## A288770.P3304171707215141988

`and(A288803(n), A290682(n))`
-/

namespace A288770.P3304171707215141988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A288803 n) (A290682 n)

end

end A288770.P3304171707215141988

/-! ## A288770.P12983990337831055821

`and(A288803(n+2), A288803(n))`
-/

namespace A288770.P12983990337831055821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A288803 (n + 2)) (A288803 n)

end

end A288770.P12983990337831055821

/-! ## A288770.P7782241480083958683

`and(A267596(n), A288803(n))`
-/

namespace A288770.P7782241480083958683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267596 n) (A288803 n)

end

end A288770.P7782241480083958683

/-! ## A288770.P6219556369810317332

`and(A267888(n), A288803(n))`
-/

namespace A288770.P6219556369810317332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267888 n) (A288803 n)

end

end A288770.P6219556369810317332

/-! ## A288770.P1974708128740567014

`and(A267890(n), A288803(n))`
-/

namespace A288770.P1974708128740567014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267890 n) (A288803 n)

end

end A288770.P1974708128740567014

/-! ## A288770.P11965378810508646175

`A288768(n)+A288803(n)-A288801(n)`
-/

namespace A288770.P11965378810508646175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288768 n + (A288803 n - A288801 n)

end

end A288770.P11965378810508646175

/-!
# A288771: Decimal representation of the diagonal from the origin to the corner of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 505", based on the 5-celled von Neumann neighborhood.

The programs for A288771, there is no canonical definition to state claims against.
-/

/-! ## A288771.P6762364317252398697

`A288804(n-char[1])`
-/

namespace A288771.P6762364317252398697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288804 (n - (if ∃ j, f1 j = n then 1 else 0))

end

end A288771.P6762364317252398697

/-! ## A288771.P2826779255925017419

`A287189(n)%A098646(n)`
-/

namespace A288771.P2826779255925017419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287189 n) (A098646 n)

end

end A288771.P2826779255925017419

/-! ## A288771.P4930980981987538851

`gcd(A130706(n), A288804(n))`
-/

namespace A288771.P4930980981987538851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A130706 n) (A288804 n)

end

end A288771.P4930980981987538851

/-! ## A288771.P12094882951122551983

`and(A260196(n), A288804(n))`
-/

namespace A288771.P12094882951122551983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A260196 n) (A288804 n)

end

end A288771.P12094882951122551983

/-! ## A288771.P667046608077149410

`and(A288804(n), A290683(n))`
-/

namespace A288771.P667046608077149410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A288804 n) (A290683 n)

end

end A288771.P667046608077149410

/-! ## A288771.P17752137594460516298

`A288804(n)/A288804(n-A199969(n+1))`
-/

namespace A288771.P17752137594460516298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288804 n : ℚ) / (A288804 ((n : ℤ) - A199969 (n + 1)).toNat : ℚ)

end

end A288771.P17752137594460516298

/-! ## A288771.P9104022480757715003

`A288804(n)%A066195(n)`
-/

namespace A288771.P9104022480757715003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288804 n) (A066195 n)

end

end A288771.P9104022480757715003

/-! ## A288771.P13623014900321637492

`and(A099035(n+1), A287189(n))`
-/

namespace A288771.P13623014900321637492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099035 (n + 1)) (A287189 n)

end

end A288771.P13623014900321637492

/-! ## A288771.P14194479659251438929

`and(A099035(n+1), A288804(n))`
-/

namespace A288771.P14194479659251438929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A099035 (n + 1)) (A288804 n)

end

end A288771.P14194479659251438929

/-! ## A288771.P1943034558192689029

`A288804(n)%A006172(n)`
-/

namespace A288771.P1943034558192689029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288804 n) (A006172 n)

end

end A288771.P1943034558192689029

/-! ## A288771.P1898946032532207587

`and(A267938(n), A288804(n))`
-/

namespace A288771.P1898946032532207587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267938 n) (A288804 n)

end

end A288771.P1898946032532207587

/-!
# A288772: a(n) is the minimum number of rows from the table described in A286000 that are required to represent the partitions of all positive integers <= n into consecutive parts.

The programs for A288772, there is no canonical definition to state claims against.
-/

/-! ## A288772.P9051128518999182163

`comp[∑[n]]-A190321(A145357(n+1))`
-/

namespace A288772.P9051128518999182163
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - A190321 (A145357 (n + 1)).toNat

end

end A288772.P9051128518999182163

/-! ## A288772.P349738799521777653

`A288529(n+1)+A025469(A288497(n))`
-/

namespace A288772.P349738799521777653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288529 (n + 1) + A025469 (A288497 n).toNat

end

end A288772.P349738799521777653

/-! ## A288772.P15743824733864309285

`A343632(A119502(n))+A288529(n+1)`
-/

namespace A288772.P15743824733864309285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343632 (A119502 n).toNat + A288529 (n + 1)

end

end A288772.P15743824733864309285

/-! ## A288772.P10400583960820798587

`A288529(n+1)-A016389(A135899(n))`
-/

namespace A288772.P10400583960820798587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288529 (n + 1) - A016389 (A135899 n).toNat

end

end A288772.P10400583960820798587

/-! ## A288772.P359464665974751680

`or(A288508(A177874(n)), A288529(n+1))`
-/

namespace A288772.P359464665974751680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A288508 (A177874 n).toNat) (A288529 (n + 1))

end

end A288772.P359464665974751680

/-!
# A288775: Difference between the total number of toothpicks in the toothpick structure of A139250 that are parallel to the initial toothpick after n odd stages, and the total number of "ON" cells at n-th stage in the "Ulam-Warburton" two-dimensional cellular automaton of A147562.

The programs for A288775, there is no canonical definition to state claims against.
-/

/-! ## A288775.P1228969093618832908

`A162795(n+1)-A147562(n+1)`
-/

namespace A288775.P1228969093618832908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162795 (n + 1) - A147562 (n + 1)

end

end A288775.P1228969093618832908

/-! ## A288775.P1048709795526600603

`A162795(1+n)-Δ[A272928(n)]`
-/

namespace A288775.P1048709795526600603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162795 (1 + n) - (f1 (n + 1) - f1 n)

end

end A288775.P1048709795526600603

/-! ## A288775.P15488261870516947927

`A162795(n+1)-A079317(2*n)`
-/

namespace A288775.P15488261870516947927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162795 (n + 1) - A079317 (2 * n)

end

end A288775.P15488261870516947927

/-! ## A288775.P14611170641427904746

`A162795(n+1)-A151920(2*n)`
-/

namespace A288775.P14611170641427904746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162795 (n + 1) - A151920 (2 * n)

end

end A288775.P14611170641427904746

/-! ## A288775.P17690385294809545433

`A255747(Δ[n²])-A151920(2*n)`
-/

namespace A288775.P17690385294809545433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A151920 (2 * n)

end

end A288775.P17690385294809545433

/-! ## A288775.P10997387757968743327

`A162795(n+1)-∑[A147582(n+1)]`
-/

namespace A288775.P10997387757968743327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162795 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288775.P10997387757968743327

/-! ## A288775.P11339361240388223109

`A255747(2*n+1)-A147562(n+1)`
-/

namespace A288775.P11339361240388223109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 (2 * n + 1) - A147562 (n + 1)

end

end A288775.P11339361240388223109

/-! ## A288775.P5061410754320119350

`∑[A139251(2*n+1)]-A147562(n+1)`
-/

namespace A288775.P5061410754320119350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A147562 (n + 1)

end

end A288775.P5061410754320119350

/-! ## A288775.P891752280052221679

`∑[A139251(2*n+1)]-∑[A147582(n+1)]`
-/

namespace A288775.P891752280052221679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A288775.P891752280052221679

/-! ## A288775.P5927860692933913229

`A162795(n+1)+A255166(n+1)-A160164(n+1)`
-/

namespace A288775.P5927860692933913229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162795 (n + 1) + (A255166 (n + 1) - A160164 (n + 1))

end

end A288775.P5927860692933913229

/-! ## A288775.P4100603987514681241

`A169707(n+1)-(A255263(n+1)+A147562(n+1))`
-/

namespace A288775.P4100603987514681241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169707 (n + 1) - (A255263 (n + 1) + A147562 (n + 1))

end

end A288775.P4100603987514681241

/-! ## A288775.P12805929214944321864

`A162795(n+1)-A004773(A130665(n))`
-/

namespace A288775.P12805929214944321864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162795 (n + 1) - A004773 (A130665 n).toNat

end

end A288775.P12805929214944321864

/-!
# A288776: Theta series of the 24-dimensional lattice of hyper-roots E_5(SU(3)).

The programs for A288776, there is no canonical definition to state claims against.
-/

/-! ## A288776.P12639533243663996973

`A000010(A038461(3*a(n-1)+1)+1)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A288776.P12639533243663996973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A000010 (A038461 (3 * a (n - 1) + 1).toNat + 1).toNat

end

end A288776.P12639533243663996973

/-!
# A288777: Triangle read by rows in which column k lists the positive multiples of the factorial of k, with 1 <= k <= n.

The programs for A288777, the canonical program `A288777.P6924503654309227296` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288777 has offset 1).

The definition of A288777 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288777.P6924503654309227296

`A288778(C(row(n)+1, 2)+col(n)+1)+A000142(col(n))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A288777

/-- `A288778(C(row(n)+1, 2)+col(n)+1)+A000142(col(n))` -/
def P6924503654309227296.Spec : Prop :=
  ∀ n, P6924503654309227296.a n = A288777 (n + 1)

theorem P6924503654309227296.correct : P6924503654309227296.Spec := by
  intro n
  simp only [A288777, Nat.add_sub_cancel]

end A288777

/-! ## A288777.P1371723018725016067

`A004736(C(row(n)+1, 2)+col(n)+1)*A166350(C(row(n)+1, 2)+col(n)+1)`
-/

namespace A288777.P1371723018725016067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1) * A166350 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1)

end

end A288777.P1371723018725016067

namespace A288777

/-- `A004736(C(row(n)+1, 2)+col(n)+1)*A166350(C(row(n)+1, 2)+col(n)+1)` -/
def P1371723018725016067.Spec : Prop :=
  ∀ n, P1371723018725016067.a n = A288777 (n + 1)

end A288777

/-! ## A288777.P11520865757510796733

`T(n-1,k)+(col(n)+1)!` with `a(0)=1`
-/

namespace A288777.P11520865757510796733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + Nat.factorial (SequenceMachineLib.triCol n + 1)

end

end A288777.P11520865757510796733

namespace A288777

/-- `T(n-1,k)+(col(n)+1)!` -/
def P11520865757510796733.Spec : Prop :=
  ∀ n, (P11520865757510796733.a n : ℤ) = A288777 (n + 1)

end A288777

/-! ## A288777.P14933741816007462314

`(col(n)+1)!*(1+row(n)-col(n))`
-/

namespace A288777.P14933741816007462314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.triCol n + 1) : ℤ) * (1 + ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)))

end

end A288777.P14933741816007462314

namespace A288777

/-- `(col(n)+1)!*(1+row(n)-col(n))` -/
def P14933741816007462314.Spec : Prop :=
  ∀ n, P14933741816007462314.a n = A288777 (n + 1)

end A288777

/-! ## A288777.P2093910142483565584

`(C(comp[∑[n]]-n, 2)-n)*(1-C(∑[char[∑[n]]], 2)+n)!`
-/

namespace A288777.P2093910142483565584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * (Nat.factorial (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) + (n : ℤ)).toNat : ℤ)

end

end A288777.P2093910142483565584

namespace A288777

/-- `(C(comp[∑[n]]-n, 2)-n)*(1-C(∑[char[∑[n]]], 2)+n)!` -/
def P2093910142483565584.Spec : Prop :=
  ∀ n, P2093910142483565584.a n = A288777 (n + 1)

end A288777

/-! ## A288777.P10070129319646455930

`(C(comp[∑[n]]-n, 2)-n)*(1-(C(∑[char[∑[n]]], 2)-n))!`
-/

namespace A288777.P10070129319646455930
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * (Nat.factorial (1 - ((Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ) - (n : ℤ))).toNat : ℤ)

end

end A288777.P10070129319646455930

namespace A288777

/-- `(C(comp[∑[n]]-n, 2)-n)*(1-(C(∑[char[∑[n]]], 2)-n))!` -/
def P10070129319646455930.Spec : Prop :=
  ∀ n, P10070129319646455930.a n = A288777 (n + 1)

end A288777

/-! ## A288777.P4037310598090181562

`A137948(comp[∑[n]])`
-/

namespace A288777.P4037310598090181562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137948 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A288777.P4037310598090181562

namespace A288777

/-- `A137948(comp[∑[n]])` -/
def P4037310598090181562.Spec : Prop :=
  ∀ n, P4037310598090181562.a n = A288777 (n + 1)

end A288777

/-! ## A288777.P6863943212765903542

`A137267(comp[∑[n]]+1)`
-/

namespace A288777.P6863943212765903542
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137267 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A288777.P6863943212765903542

namespace A288777

/-- `A137267(comp[∑[n]]+1)` -/
def P6863943212765903542.Spec : Prop :=
  ∀ n, P6863943212765903542.a n = A288777 (n + 1)

end A288777

/-! ## A288777.P3934034894993549512

`(1-C(∑[char[∑[n]]], 2)+n)*A137948(n)`
-/

namespace A288777.P3934034894993549512
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + (n : ℤ)) * A137948 n

end

end A288777.P3934034894993549512

namespace A288777

/-- `(1-C(∑[char[∑[n]]], 2)+n)*A137948(n)` -/
def P3934034894993549512.Spec : Prop :=
  ∀ n, P3934034894993549512.a n = A288777 (n + 1)

end A288777

/-! ## A288777.P10566144696526315595

`(C(comp[∑[n]]-n, 2)-n)*A166350(n+1)`
-/

namespace A288777.P10566144696526315595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * A166350 (n + 1)

end

end A288777.P10566144696526315595

namespace A288777

/-- `(C(comp[∑[n]]-n, 2)-n)*A166350(n+1)` -/
def P10566144696526315595.Spec : Prop :=
  ∀ n, P10566144696526315595.a n = A288777 (n + 1)

end A288777

/-! ## A288777.P17335155591959226577

`(C(comp[∑[n]]-n, 2)-n)*A002260(n+1)!`
-/

namespace A288777.P17335155591959226577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * (Nat.factorial (A002260 (n + 1)).toNat : ℤ)

end

end A288777.P17335155591959226577

namespace A288777

/-- `(C(comp[∑[n]]-n, 2)-n)*A002260(n+1)!` -/
def P17335155591959226577.Spec : Prop :=
  ∀ n, P17335155591959226577.a n = A288777 (n + 1)

end A288777

/-! ## A288777.P17366267380500945959

`(C(comp[∑[n]]-n, 2)-n)*(A002262(n)+1)!`
-/

namespace A288777.P17366267380500945959
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * (Nat.factorial (A002262 n + 1).toNat : ℤ)

end

end A288777.P17366267380500945959

namespace A288777

/-- `(C(comp[∑[n]]-n, 2)-n)*(A002262(n)+1)!` -/
def P17366267380500945959.Spec : Prop :=
  ∀ n, P17366267380500945959.a n = A288777 (n + 1)

end A288777

/-! ## A288777.P2197582622779841864

`(C(comp[∑[n]]-n, 2)-n)*(A132118(n+1)-n)!`
-/

namespace A288777.P2197582622779841864
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * (Nat.factorial (A132118 (n + 1) - (n : ℤ)).toNat : ℤ)

end

end A288777.P2197582622779841864

namespace A288777

/-- `(C(comp[∑[n]]-n, 2)-n)*(A132118(n+1)-n)!` -/
def P2197582622779841864.Spec : Prop :=
  ∀ n, P2197582622779841864.a n = A288777 (n + 1)

end A288777

/-! ## A288777.P16138087909588111390

`A288778(n+1)+A233543(n)`
-/

namespace A288777.P16138087909588111390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288778 (n + 1) + A233543 n

end

end A288777.P16138087909588111390

namespace A288777

/-- `A288778(n+1)+A233543(n)` -/
def P16138087909588111390.Spec : Prop :=
  ∀ n, P16138087909588111390.a n = A288777 (n + 1)

end A288777

/-! ## A288777.P1163062613546913329

`A002260(n+1)*A137948(n)`
-/

namespace A288777.P1163062613546913329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A137948 n

end

end A288777.P1163062613546913329

namespace A288777

/-- `A002260(n+1)*A137948(n)` -/
def P1163062613546913329.Spec : Prop :=
  ∀ n, P1163062613546913329.a n = A288777 (n + 1)

end A288777

/-! ## A288777.P3038664167524251715

`A003991(n+1)*A233543(n)`
-/

namespace A288777.P3038664167524251715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A233543 n

end

end A288777.P3038664167524251715

namespace A288777

/-- `A003991(n+1)*A233543(n)` -/
def P3038664167524251715.Spec : Prop :=
  ∀ n, P3038664167524251715.a n = A288777 (n + 1)

end A288777

/-! ## A288777.P7783548259629751176

`(A059036(n)+1)*A233543(n)`
-/

namespace A288777.P7783548259629751176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059036 n + 1) * A233543 n

end

end A288777.P7783548259629751176

namespace A288777

/-- `(A059036(n)+1)*A233543(n)` -/
def P7783548259629751176.Spec : Prop :=
  ∀ n, P7783548259629751176.a n = A288777 (n + 1)

end A288777

/-! ## A288777.P11996932901566862340

`A004736(n+1)*A166350(n+1)`
-/

namespace A288777.P11996932901566862340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A166350 (n + 1)

end

end A288777.P11996932901566862340

namespace A288777

/-- `A004736(n+1)*A166350(n+1)` -/
def P11996932901566862340.Spec : Prop :=
  ∀ n, P11996932901566862340.a n = A288777 (n + 1)

end A288777

/-! ## A288777.P17958598669174643841

`A000142(A002260(n+1))*A004736(n+1)`
-/

namespace A288777.P17958598669174643841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (A002260 (n + 1)).toNat * A004736 (n + 1)

end

end A288777.P17958598669174643841

namespace A288777

/-- `A000142(A002260(n+1))*A004736(n+1)` -/
def P17958598669174643841.Spec : Prop :=
  ∀ n, P17958598669174643841.a n = A288777 (n + 1)

end A288777

/-! ## A288777.P1743141159923920044

`A002260(A038722(n+1))*A166350(n+1)`
-/

namespace A288777.P1743141159923920044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A038722 (n + 1)).toNat * A166350 (n + 1)

end

end A288777.P1743141159923920044

namespace A288777

/-- `A002260(A038722(n+1))*A166350(n+1)` -/
def P1743141159923920044.Spec : Prop :=
  ∀ n, P1743141159923920044.a n = A288777 (n + 1)

end A288777

/-!
# A288778: Triangle read by rows (1<=k<=n): T(n,k) = (n-k+1)*k! - (k-1)!

The programs for A288778, the canonical program `A288778.P2167834111150144572` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288778 has offset 1).

The definition of A288778 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(row(n)+1-(col(n)+1)+1)*(col(n)+1)!-col(n)!` (program `A288778.P2167834111150144572`, by `A288778.P2167834111150144572.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288778.P2167834111150144572

`(row(n)+1-(col(n)+1)+1)*(col(n)+1)!-col(n)!`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A288778

/-- `(row(n)+1-(col(n)+1)+1)*(col(n)+1)!-col(n)!` -/
def P2167834111150144572.Spec : Prop :=
  ∀ n, P2167834111150144572.a n = A288778 (n + 1)

theorem P2167834111150144572.correct : P2167834111150144572.Spec := by
  intro n
  simp only [A288778, Nat.add_sub_cancel]

end A288778

/-! ## A288778.P6855892718256328297

`A288777(C(row(n)+1, 2)+col(n)+1)-A000142(col(n))`
-/

namespace A288778.P6855892718256328297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288777 (Nat.choose (SequenceMachineLib.triRow n + 1) 2 + SequenceMachineLib.triCol n + 1) - A000142 (SequenceMachineLib.triCol n)

end

end A288778.P6855892718256328297

namespace A288778

/-- `A288777(C(row(n)+1, 2)+col(n)+1)-A000142(col(n))` -/
def P6855892718256328297.Spec : Prop :=
  ∀ n, P6855892718256328297.a n = A288778 (n + 1)

end A288778

/-! ## A288778.P9309062704933048407

`(n-C(∑[char[∑[n]]], 2))!*A059036(n)`
-/

namespace A288778.P9309062704933048407
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)).toNat : ℤ) * A059036 n

end

end A288778.P9309062704933048407

namespace A288778

/-- `(n-C(∑[char[∑[n]]], 2))!*A059036(n)` -/
def P9309062704933048407.Spec : Prop :=
  ∀ n, P9309062704933048407.a n = A288778 (n + 1)

end A288778

/-! ## A288778.P10589450671550986941

`A059036(n)*A233543(n)`
-/

namespace A288778.P10589450671550986941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059036 n * A233543 n

end

end A288778.P10589450671550986941

namespace A288778

/-- `A059036(n)*A233543(n)` -/
def P10589450671550986941.Spec : Prop :=
  ∀ n, P10589450671550986941.a n = A288778 (n + 1)

end A288778

/-! ## A288778.P4208910636142484010

`A002262(n)!*A059036(n)`
-/

namespace A288778.P4208910636142484010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A059036 n

end

end A288778.P4208910636142484010

namespace A288778

/-- `A002262(n)!*A059036(n)` -/
def P4208910636142484010.Spec : Prop :=
  ∀ n, P4208910636142484010.a n = A288778 (n + 1)

end A288778

/-! ## A288778.P9042917043559721432

`A288777(n+1)-A233543(n)`
-/

namespace A288778.P9042917043559721432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288777 (n + 1) - A233543 n

end

end A288778.P9042917043559721432

namespace A288778

/-- `A288777(n+1)-A233543(n)` -/
def P9042917043559721432.Spec : Prop :=
  ∀ n, P9042917043559721432.a n = A288778 (n + 1)

end A288778

/-! ## A288778.P15324703308837375848

`log2(A059268(n))!*A059036(n)`
-/

namespace A288778.P15324703308837375848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A059268 n : ℝ))).toNat : ℤ) * A059036 n

end

end A288778.P15324703308837375848

namespace A288778

/-- `log2(A059268(n))!*A059036(n)` -/
def P15324703308837375848.Spec : Prop :=
  ∀ n, P15324703308837375848.a n = A288778 (n + 1)

end A288778

/-! ## A288778.P2189701822181097099

`A137948(comp[∑[n]])-A233543(n)`
-/

namespace A288778.P2189701822181097099
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137948 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - A233543 n

end

end A288778.P2189701822181097099

namespace A288778

/-- `A137948(comp[∑[n]])-A233543(n)` -/
def P2189701822181097099.Spec : Prop :=
  ∀ n, P2189701822181097099.a n = A288778 (n + 1)

end A288778

/-! ## A288778.P11990716023049349911

`(A003991(n+1)-1)*A233543(n)`
-/

namespace A288778.P11990716023049349911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) - 1) * A233543 n

end

end A288778.P11990716023049349911

namespace A288778

/-- `(A003991(n+1)-1)*A233543(n)` -/
def P11990716023049349911.Spec : Prop :=
  ∀ n, P11990716023049349911.a n = A288778 (n + 1)

end A288778

/-!
# A288780: Zero together with the row sums of A288778.

The programs for A288780, the canonical program `A288780.P7228640530743928461` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288780 has offset 0).

The definition of A288780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288780.P7228640530743928461

`n*(a(n-1)*n/(n-1)-a(n-2)*(n-1)/(n-2))` with `a(0)=0, a(1)=0, a(2)=2`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A288780

/-- `n*(a(n-1)*n/(n-1)-a(n-2)*(n-1)/(n-2))` -/
def P7228640530743928461.Spec : Prop :=
  ∀ n, P7228640530743928461.a n = (A288780 n : ℚ)

end A288780

/-! ## A288780.P18121361977767441043

`n*(∑[abs(1-n)!]-2)`
-/

namespace A288780.P18121361977767441043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2)

end

end A288780.P18121361977767441043

namespace A288780

/-- `n*(∑[abs(1-n)!]-2)` -/
def P18121361977767441043.Spec : Prop :=
  ∀ n, P18121361977767441043.a n = A288780 n

end A288780

/-! ## A288780.P1206016192141793936

`n*(∑[n!]-n!-1)`
-/

namespace A288780.P1206016192141793936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.factorial n : ℤ) - 1)

end

end A288780.P1206016192141793936

namespace A288780

/-- `n*(∑[n!]-n!-1)` -/
def P1206016192141793936.Spec : Prop :=
  ∀ n, P1206016192141793936.a n = A288780 n

end A288780

/-! ## A288780.P8191245123670478230

`∑{#}[n-1, n*#!-1]`
-/

namespace A288780.P8191245123670478230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, ((n * Nat.factorial k : ℤ) - 1)

end

end A288780.P8191245123670478230

namespace A288780

/-- `∑{#}[n-1, n*#!-1]` -/
def P8191245123670478230.Spec : Prop :=
  ∀ n, P8191245123670478230.a n = A288780 n

end A288780

/-! ## A288780.P4906285297489705421

`n*∑[(n-1)*a(n-1)]` with `a(0)=-1, a(1)=1`
-/

namespace A288780.P4906285297489705421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 1] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A288780.P4906285297489705421

namespace A288780

/-- `n*∑[(n-1)*a(n-1)]` -/
def P4906285297489705421.Spec : Prop :=
  ∀ n, P4906285297489705421.a n = A288780 n

end A288780

/-! ## A288780.P12290288155476866797

`∑[∑[n!]-1]-(∑[abs(1-n)!]-1)`
-/

namespace A288780.P12290288155476866797
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1)

end

end A288780.P12290288155476866797

namespace A288780

/-- `∑[∑[n!]-1]-(∑[abs(1-n)!]-1)` -/
def P12290288155476866797.Spec : Prop :=
  ∀ n, P12290288155476866797.a n = A288780 n

end A288780

/-! ## A288780.P6207425564830886023

`n*(A003422(n)-1)`
-/

namespace A288780.P6207425564830886023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A003422 n - 1)

end

end A288780.P6207425564830886023

namespace A288780

/-- `n*(A003422(n)-1)` -/
def P6207425564830886023.Spec : Prop :=
  ∀ n, P6207425564830886023.a n = A288780 n

end A288780

/-! ## A288780.P12788015746096926222

`n*∑[A358185(n+1)]`
-/

namespace A288780.P12788015746096926222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A288780.P12788015746096926222

namespace A288780

/-- `n*∑[A358185(n+1)]` -/
def P12788015746096926222.Spec : Prop :=
  ∀ n, P12788015746096926222.a n = A288780 n

end A288780

/-! ## A288780.P17574229661215966660

`n*(∑[A104150(n)]-1)`
-/

namespace A288780.P17574229661215966660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A288780.P17574229661215966660

namespace A288780

/-- `n*(∑[A104150(n)]-1)` -/
def P17574229661215966660.Spec : Prop :=
  ∀ n, P17574229661215966660.a n = A288780 n

end A288780

/-! ## A288780.P4579442960702364749

`n*(A067078(n+1)-2)`
-/

namespace A288780.P4579442960702364749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A067078 (n + 1) - 2)

end

end A288780.P4579442960702364749

namespace A288780

/-- `n*(A067078(n+1)-2)` -/
def P4579442960702364749.Spec : Prop :=
  ∀ n, P4579442960702364749.a n = A288780 n

end A288780

/-!
# A288783: Brazilian numbers which have only one Brazilian representation.

The programs for A288783, there is no canonical definition to state claims against.
-/

/-! ## A288783.P1616441796402216972

`eq[1, A220136(1+n)]+1`
-/

namespace A288783.P1616441796402216972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A288783.P1616441796402216972

/-! ## A288783.P10797051055502867384

`eq[1, A220136(A028310(n))]`
-/

namespace A288783.P10797051055502867384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A288783.P10797051055502867384

/-! ## A288783.P631028978453423679

`A020725(eq[1, A220136(n+1)])`
-/

namespace A288783.P631028978453423679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288783.P631028978453423679

/-! ## A288783.P13147515126351104501

`A065475(eq[1, A220136(n+1)])`
-/

namespace A288783.P13147515126351104501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288783.P13147515126351104501

/-! ## A288783.P11171184661040021477

`A114637(eq[1, A220136(n+1)])`
-/

namespace A288783.P11171184661040021477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288783.P11171184661040021477

/-!
# A288784: Irregular triangle read by rows: T(n,m) is the list of numbers k*A002110(n) <= k*t < (k + 1)*A002110(n) such that A001222(k*t) = n, with 1 <= k < prime(n + 1).

The programs for A288784, there is no canonical definition to state claims against.
-/

/-! ## A288784.P8137156208829325852

`∩[A112587(n+1), A330006(n+1)]`
-/

namespace A288784.P8137156208829325852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288784.P8137156208829325852

/-! ## A288784.P13219648826303897352

`∩[A112587(n+1), A373320(n+1)]`
-/

namespace A288784.P13219648826303897352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112587 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A288784.P13219648826303897352

/-! ## A288784.P425802203891766833

`A330006(lt[A046277(n), A160164(3*n)])`
-/

namespace A288784.P425802203891766833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160164 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330006 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A288784.P425802203891766833

/-! ## A288784.P17761588286362115025

`A181312(n+1)+A007814(A274391(3*n+2))`
-/

namespace A288784.P17761588286362115025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181312 (n + 1) + A007814 (A274391 (3 * n + 2)).toNat

end

end A288784.P17761588286362115025

/-! ## A288784.P18136816223327589040

`A392613(A043318(n+2))`
-/

namespace A288784.P18136816223327589040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392613 (A043318 (n + 2)).toNat

end

end A288784.P18136816223327589040

/-!
# A288785: Number of blocks of size >= three in all set partitions of n.

The programs for A288785, the canonical program `A288785.P15066215169072072667` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288785 has offset 3).

The definition of A288785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288785.P15066215169072072667

`∑{#}[n, C(n+3, #)*A000110(#)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A288785

/-- `∑{#}[n, C(n+3, #)*A000110(#)]` -/
def P15066215169072072667.Spec : Prop :=
  ∀ n, P15066215169072072667.a n = A288785 (n + 3)

theorem P15066215169072072667.correct : P15066215169072072667.Spec := by
  intro n
  simp only [A288785, Nat.add_sub_cancel]

end A288785

/-! ## A288785.P16325217714392050073

`A283424(A167614(2+n))`
-/

namespace A288785.P16325217714392050073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (A167614 (2 + n)).toNat

end

end A288785.P16325217714392050073

namespace A288785

/-- `A283424(A167614(2+n))` -/
def P16325217714392050073.Spec : Prop :=
  ∀ n, P16325217714392050073.a n = A288785 (n + 3)

end A288785

/-! ## A288785.P11589345909359597831

`A283424(A052905(n)+8)`
-/

namespace A288785.P11589345909359597831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (A052905 n + 8).toNat

end

end A288785.P11589345909359597831

namespace A288785

/-- `A283424(A052905(n)+8)` -/
def P11589345909359597831.Spec : Prop :=
  ∀ n, P11589345909359597831.a n = A288785 (n + 3)

end A288785

/-! ## A288785.P16131137105249112048

`A283424(A055999(n)+9)`
-/

namespace A288785.P16131137105249112048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (A055999 n + 9).toNat

end

end A288785.P16131137105249112048

namespace A288785

/-- `A283424(A055999(n)+9)` -/
def P16131137105249112048.Spec : Prop :=
  ∀ n, P16131137105249112048.a n = A288785 (n + 3)

end A288785

/-! ## A288785.P3071349479363735942

`A283424(eq[3, A002262(n)])`
-/

namespace A288785.P3071349479363735942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288785.P3071349479363735942

namespace A288785

/-- `A283424(eq[3, A002262(n)])` -/
def P3071349479363735942.Spec : Prop :=
  ∀ n, P3071349479363735942.a n = A288785 (n + 3)

end A288785

/-! ## A288785.P9727431143205245323

`A283424(eq[3, A191532(n)])`
-/

namespace A288785.P9727431143205245323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288785.P9727431143205245323

namespace A288785

/-- `A283424(eq[3, A191532(n)])` -/
def P9727431143205245323.Spec : Prop :=
  ∀ n, P9727431143205245323.a n = A288785 (n + 3)

end A288785

/-! ## A288785.P16842257557213242330

`A283424(A000096(n+2)+4)`
-/

namespace A288785.P16842257557213242330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (A000096 (n + 2) + 4).toNat

end

end A288785.P16842257557213242330

namespace A288785

/-- `A283424(A000096(n+2)+4)` -/
def P16842257557213242330.Spec : Prop :=
  ∀ n, P16842257557213242330.a n = A288785 (n + 3)

end A288785

/-! ## A288785.P6327501339133890032

`A283424(A000217(n+3)+3)`
-/

namespace A288785.P6327501339133890032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (A000217 (n + 3) + 3).toNat

end

end A288785.P6327501339133890032

namespace A288785

/-- `A283424(A000217(n+3)+3)` -/
def P6327501339133890032.Spec : Prop :=
  ∀ n, P6327501339133890032.a n = A288785 (n + 3)

end A288785

/-! ## A288785.P16398948184668423576

`A283424(A166136(n+2)-3)`
-/

namespace A288785.P16398948184668423576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (A166136 (n + 2) - 3).toNat

end

end A288785.P16398948184668423576

namespace A288785

/-- `A283424(A166136(n+2)-3)` -/
def P16398948184668423576.Spec : Prop :=
  ∀ n, P16398948184668423576.a n = A288785 (n + 3)

end A288785

/-! ## A288785.P13691927726807139838

`A283424(eq[4, A002260(n+1)])`
-/

namespace A288785.P13691927726807139838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288785.P13691927726807139838

namespace A288785

/-- `A283424(eq[4, A002260(n+1)])` -/
def P13691927726807139838.Spec : Prop :=
  ∀ n, P13691927726807139838.a n = A288785 (n + 3)

end A288785

/-!
# A288786: Number of blocks of size >= four in all set partitions of n.

The programs for A288786, the canonical program `A288786.P16427876029999672860` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288786 has offset 4).

The definition of A288786 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288786.P16427876029999672860

`∑{#}[n, C(n+4, #)*A000110(#)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A288786

/-- `∑{#}[n, C(n+4, #)*A000110(#)]` -/
def P16427876029999672860.Spec : Prop :=
  ∀ n, P16427876029999672860.a n = A288786 (n + 4)

theorem P16427876029999672860.correct : P16427876029999672860.Spec := by
  intro n
  simp only [A288786, Nat.add_sub_cancel]

end A288786

/-! ## A288786.P153805943823301337

`A283424(A155212(n)+12)`
-/

namespace A288786.P153805943823301337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (A155212 n + 12).toNat

end

end A288786.P153805943823301337

namespace A288786

/-- `A283424(A155212(n)+12)` -/
def P153805943823301337.Spec : Prop :=
  ∀ n, P153805943823301337.a n = A288786 (n + 4)

end A288786

/-! ## A288786.P8521925255216521137

`A283424(eq[4, A002262(n)])`
-/

namespace A288786.P8521925255216521137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288786.P8521925255216521137

namespace A288786

/-- `A283424(eq[4, A002262(n)])` -/
def P8521925255216521137.Spec : Prop :=
  ∀ n, P8521925255216521137.a n = A288786 (n + 4)

end A288786

/-! ## A288786.P8605239904647380033

`A283424(eq[16, A059268(n)])`
-/

namespace A288786.P8605239904647380033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288786.P8605239904647380033

namespace A288786

/-- `A283424(eq[16, A059268(n)])` -/
def P8605239904647380033.Spec : Prop :=
  ∀ n, P8605239904647380033.a n = A288786 (n + 4)

end A288786

/-! ## A288786.P9926250882242167596

`A285595(A167614(n+1))/3`
-/

namespace A288786.P9926250882242167596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285595 (A167614 (n + 1)).toNat : ℚ) / 3

end

end A288786.P9926250882242167596

namespace A288786

/-- `A285595(A167614(n+1))/3` -/
def P9926250882242167596.Spec : Prop :=
  ∀ n, P9926250882242167596.a n = (A288786 (n + 4) : ℚ)

end A288786

/-! ## A288786.P428647494917896856

`A283424(A000096(n+3)+5)`
-/

namespace A288786.P428647494917896856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (A000096 (n + 3) + 5).toNat

end

end A288786.P428647494917896856

namespace A288786

/-- `A283424(A000096(n+3)+5)` -/
def P428647494917896856.Spec : Prop :=
  ∀ n, P428647494917896856.a n = A288786 (n + 4)

end A288786

/-! ## A288786.P11441492990848073443

`A283424(A000217(n+4)+4)`
-/

namespace A288786.P11441492990848073443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (A000217 (n + 4) + 4).toNat

end

end A288786.P11441492990848073443

namespace A288786

/-- `A283424(A000217(n+4)+4)` -/
def P11441492990848073443.Spec : Prop :=
  ∀ n, P11441492990848073443.a n = A288786 (n + 4)

end A288786

/-! ## A288786.P16369574372403421024

`A283424(eq[4, A144328(n+1)])`
-/

namespace A288786.P16369574372403421024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288786.P16369574372403421024

namespace A288786

/-- `A283424(eq[4, A144328(n+1)])` -/
def P16369574372403421024.Spec : Prop :=
  ∀ n, P16369574372403421024.a n = A288786 (n + 4)

end A288786

/-! ## A288786.P7741652301434486499

`A283424(Δ[A026054(n+3)-n²])`
-/

namespace A288786.P7741652301434486499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (f1 (n + 1) - f1 n).toNat

end

end A288786.P7741652301434486499

namespace A288786

/-- `A283424(Δ[A026054(n+3)-n²])` -/
def P7741652301434486499.Spec : Prop :=
  ∀ n, P7741652301434486499.a n = A288786 (n + 4)

end A288786

/-!
# A288787: Number of blocks of size >= five in all set partitions of n.

The programs for A288787, the canonical program `A288787.P8721721585984495433` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288787 has offset 5).

The definition of A288787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288787.P8721721585984495433

`∑{#}[n, C(n+5, #)*A000110(#)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A288787

/-- `∑{#}[n, C(n+5, #)*A000110(#)]` -/
def P8721721585984495433.Spec : Prop :=
  ∀ n, P8721721585984495433.a n = A288787 (n + 5)

theorem P8721721585984495433.correct : P8721721585984495433.Spec := by
  intro n
  simp only [A288787, Nat.add_sub_cancel]

end A288787

/-! ## A288787.P2031210325397793264

`A283424(A167499(n+4))`
-/

namespace A288787.P2031210325397793264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (A167499 (n + 4)).toNat

end

end A288787.P2031210325397793264

namespace A288787

/-- `A283424(A167499(n+4))` -/
def P2031210325397793264.Spec : Prop :=
  ∀ n, P2031210325397793264.a n = A288787 (n + 5)

end A288787

/-! ## A288787.P7975533882692104312

`A283424(eq[5, A002262(n)])`
-/

namespace A288787.P7975533882692104312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288787.P7975533882692104312

namespace A288787

/-- `A283424(eq[5, A002262(n)])` -/
def P7975533882692104312.Spec : Prop :=
  ∀ n, P7975533882692104312.a n = A288787 (n + 5)

end A288787

/-! ## A288787.P2527501253660882685

`A283424(A167614(n+4)+2)`
-/

namespace A288787.P2527501253660882685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (A167614 (n + 4) + 2).toNat

end

end A288787.P2527501253660882685

namespace A288787

/-- `A283424(A167614(n+4)+2)` -/
def P2527501253660882685.Spec : Prop :=
  ∀ n, P2527501253660882685.a n = A288787 (n + 5)

end A288787

/-! ## A288787.P3913405896570389412

`A283424(A000096(n+4)+6)`
-/

namespace A288787.P3913405896570389412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (A000096 (n + 4) + 6).toNat

end

end A288787.P3913405896570389412

namespace A288787

/-- `A283424(A000096(n+4)+6)` -/
def P3913405896570389412.Spec : Prop :=
  ∀ n, P3913405896570389412.a n = A288787 (n + 5)

end A288787

/-! ## A288787.P14190928523363603181

`A283424(A000217(n+5)+5)`
-/

namespace A288787.P14190928523363603181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (A000217 (n + 5) + 5).toNat

end

end A288787.P14190928523363603181

namespace A288787

/-- `A283424(A000217(n+5)+5)` -/
def P14190928523363603181.Spec : Prop :=
  ∀ n, P14190928523363603181.a n = A288787 (n + 5)

end A288787

/-! ## A288787.P15605560129412232252

`A283424(A061579(Δ[A026054(n+3)]))`
-/

namespace A288787.P15605560129412232252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (A061579 (f1 (n + 1) - f1 n).toNat).toNat

end

end A288787.P15605560129412232252

namespace A288787

/-- `A283424(A061579(Δ[A026054(n+3)]))` -/
def P15605560129412232252.Spec : Prop :=
  ∀ n, P15605560129412232252.a n = A288787 (n + 5)

end A288787

/-!
# A288788: Number of blocks of size >= six in all set partitions of n.

The programs for A288788, the canonical program `A288788.P2700038048302485371` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288788 has offset 6).

The definition of A288788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288788.P2700038048302485371

`∑{#}[n, C(n+6, #)*A000110(#)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A288788

/-- `∑{#}[n, C(n+6, #)*A000110(#)]` -/
def P2700038048302485371.Spec : Prop :=
  ∀ n, P2700038048302485371.a n = A288788 (n + 6)

theorem P2700038048302485371.correct : P2700038048302485371.Spec := by
  intro n
  simp only [A288788, Nat.add_sub_cancel]

end A288788

/-! ## A288788.P3744862841828309293

`A283424(eq[6, A002262(n)])`
-/

namespace A288788.P3744862841828309293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288788.P3744862841828309293

namespace A288788

/-- `A283424(eq[6, A002262(n)])` -/
def P3744862841828309293.Spec : Prop :=
  ∀ n, P3744862841828309293.a n = A288788 (n + 6)

end A288788

/-! ## A288788.P14723599133934237769

`A283424(A000096(n+5)+7)`
-/

namespace A288788.P14723599133934237769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (A000096 (n + 5) + 7).toNat

end

end A288788.P14723599133934237769

namespace A288788

/-- `A283424(A000096(n+5)+7)` -/
def P14723599133934237769.Spec : Prop :=
  ∀ n, P14723599133934237769.a n = A288788 (n + 6)

end A288788

/-! ## A288788.P12505179130732793535

`A283424(A000217(n+6)+6)`
-/

namespace A288788.P12505179130732793535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (A000217 (n + 6) + 6).toNat

end

end A288788.P12505179130732793535

namespace A288788

/-- `A283424(A000217(n+6)+6)` -/
def P12505179130732793535.Spec : Prop :=
  ∀ n, P12505179130732793535.a n = A288788 (n + 6)

end A288788

/-! ## A288788.P6960672077911493465

`A283424(eq[6, A144328(n+1)])`
-/

namespace A288788.P6960672077911493465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288788.P6960672077911493465

namespace A288788

/-- `A283424(eq[6, A144328(n+1)])` -/
def P6960672077911493465.Spec : Prop :=
  ∀ n, P6960672077911493465.a n = A288788 (n + 6)

end A288788

/-! ## A288788.P4397005841340506450

`A283424(eq[7, A002260(n+1)])`
-/

namespace A288788.P4397005841340506450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288788.P4397005841340506450

namespace A288788

/-- `A283424(eq[7, A002260(n+1)])` -/
def P4397005841340506450.Spec : Prop :=
  ∀ n, P4397005841340506450.a n = A288788 (n + 6)

end A288788

/-!
# A288789: Number of blocks of size >= seven in all set partitions of n.

The programs for A288789, the canonical program `A288789.P13911605209125242184` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288789 has offset 7).

The definition of A288789 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288789.P13911605209125242184

`∑{#}[n, C(n+7, #)*A000110(#)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A288789

/-- `∑{#}[n, C(n+7, #)*A000110(#)]` -/
def P13911605209125242184.Spec : Prop :=
  ∀ n, P13911605209125242184.a n = A288789 (n + 7)

theorem P13911605209125242184.correct : P13911605209125242184.Spec := by
  intro n
  simp only [A288789, Nat.add_sub_cancel]

end A288789

/-! ## A288789.P17352466030902851848

`A283424(eq[7, A002262(n)])`
-/

namespace A288789.P17352466030902851848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288789.P17352466030902851848

namespace A288789

/-- `A283424(eq[7, A002262(n)])` -/
def P17352466030902851848.Spec : Prop :=
  ∀ n, P17352466030902851848.a n = A288789 (n + 7)

end A288789

/-! ## A288789.P13284357167835016702

`A283424(A000096(n+6)+8)`
-/

namespace A288789.P13284357167835016702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (A000096 (n + 6) + 8).toNat

end

end A288789.P13284357167835016702

namespace A288789

/-- `A283424(A000096(n+6)+8)` -/
def P13284357167835016702.Spec : Prop :=
  ∀ n, P13284357167835016702.a n = A288789 (n + 7)

end A288789

/-! ## A288789.P2731508398948701334

`A283424(A000217(n+7)+7)`
-/

namespace A288789.P2731508398948701334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (A000217 (n + 7) + 7).toNat

end

end A288789.P2731508398948701334

namespace A288789

/-- `A283424(A000217(n+7)+7)` -/
def P2731508398948701334.Spec : Prop :=
  ∀ n, P2731508398948701334.a n = A288789 (n + 7)

end A288789

/-! ## A288789.P4321114187590642104

`A283424(eq[7, A144328(n+1)])`
-/

namespace A288789.P4321114187590642104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288789.P4321114187590642104

namespace A288789

/-- `A283424(eq[7, A144328(n+1)])` -/
def P4321114187590642104.Spec : Prop :=
  ∀ n, P4321114187590642104.a n = A288789 (n + 7)

end A288789

/-! ## A288789.P8684794327250840521

`A283424(eq[8, A002260(n+1)])`
-/

namespace A288789.P8684794327250840521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288789.P8684794327250840521

namespace A288789

/-- `A283424(eq[8, A002260(n+1)])` -/
def P8684794327250840521.Spec : Prop :=
  ∀ n, P8684794327250840521.a n = A288789 (n + 7)

end A288789

/-!
# A288790: Number of blocks of size >= eight in all set partitions of n.

The programs for A288790, the canonical program `A288790.P2034258890309195980` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288790 has offset 8).

The definition of A288790 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288790.P2034258890309195980

`∑{#}[n, C(n+8, #)*A000110(#)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A288790

/-- `∑{#}[n, C(n+8, #)*A000110(#)]` -/
def P2034258890309195980.Spec : Prop :=
  ∀ n, P2034258890309195980.a n = A288790 (n + 8)

theorem P2034258890309195980.correct : P2034258890309195980.Spec := by
  intro n
  simp only [A288790, Nat.add_sub_cancel]

end A288790

/-! ## A288790.P15764132646230247470

`A283424(eq[8, A002262(n)])`
-/

namespace A288790.P15764132646230247470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288790.P15764132646230247470

namespace A288790

/-- `A283424(eq[8, A002262(n)])` -/
def P15764132646230247470.Spec : Prop :=
  ∀ n, P15764132646230247470.a n = A288790 (n + 8)

end A288790

/-! ## A288790.P2505723905747333565

`A283424(eq[8, A144328(n+1)])`
-/

namespace A288790.P2505723905747333565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288790.P2505723905747333565

namespace A288790

/-- `A283424(eq[8, A144328(n+1)])` -/
def P2505723905747333565.Spec : Prop :=
  ∀ n, P2505723905747333565.a n = A288790 (n + 8)

end A288790

/-! ## A288790.P7569946632116463663

`A283424(eq[9, A002260(n+1)])`
-/

namespace A288790.P7569946632116463663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288790.P7569946632116463663

namespace A288790

/-- `A283424(eq[9, A002260(n+1)])` -/
def P7569946632116463663.Spec : Prop :=
  ∀ n, P7569946632116463663.a n = A288790 (n + 8)

end A288790

/-! ## A288790.P7389966875268109382

`A283424(eq[23, A037126(n+1)])`
-/

namespace A288790.P7389966875268109382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037126 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288790.P7389966875268109382

namespace A288790

/-- `A283424(eq[23, A037126(n+1)])` -/
def P7389966875268109382.Spec : Prop :=
  ∀ n, P7389966875268109382.a n = A288790 (n + 8)

end A288790

/-! ## A288790.P5720165719376922090

`A283424(eq[81, A133819(n+1)])`
-/

namespace A288790.P5720165719376922090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  81

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288790.P5720165719376922090

namespace A288790

/-- `A283424(eq[81, A133819(n+1)])` -/
def P5720165719376922090.Spec : Prop :=
  ∀ n, P5720165719376922090.a n = A288790 (n + 8)

end A288790

/-! ## A288790.P2806480193735371102

`A285595(A000096(n+5)+8)/7`
-/

namespace A288790.P2806480193735371102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A285595 (A000096 (n + 5) + 8).toNat : ℚ) / 7

end

end A288790.P2806480193735371102

namespace A288790

/-- `A285595(A000096(n+5)+8)/7` -/
def P2806480193735371102.Spec : Prop :=
  ∀ n, P2806480193735371102.a n = (A288790 (n + 8) : ℚ)

end A288790

/-!
# A288791: Number of blocks of size >= nine in all set partitions of n.

The programs for A288791, the canonical program `A288791.P11821518087653563656` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288791 has offset 9).

The definition of A288791 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288791.P11821518087653563656

`∑{#}[n, C(n+9, #)*A000110(#)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A288791

/-- `∑{#}[n, C(n+9, #)*A000110(#)]` -/
def P11821518087653563656.Spec : Prop :=
  ∀ n, P11821518087653563656.a n = A288791 (n + 9)

theorem P11821518087653563656.correct : P11821518087653563656.Spec := by
  intro n
  simp only [A288791, Nat.add_sub_cancel]

end A288791

/-! ## A288791.P2652374602734341622

`A283424(eq[9, A002262(n)])`
-/

namespace A288791.P2652374602734341622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288791.P2652374602734341622

namespace A288791

/-- `A283424(eq[9, A002262(n)])` -/
def P2652374602734341622.Spec : Prop :=
  ∀ n, P2652374602734341622.a n = A288791 (n + 9)

end A288791

/-! ## A288791.P8938516545654545634

`A283424(eq[9, A191532(n)])`
-/

namespace A288791.P8938516545654545634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288791.P8938516545654545634

namespace A288791

/-- `A283424(eq[9, A191532(n)])` -/
def P8938516545654545634.Spec : Prop :=
  ∀ n, P8938516545654545634.a n = A288791 (n + 9)

end A288791

/-! ## A288791.P16512846247609880214

`A283424(eq[9, A144328(n+1)])`
-/

namespace A288791.P16512846247609880214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288791.P16512846247609880214

namespace A288791

/-- `A283424(eq[9, A144328(n+1)])` -/
def P16512846247609880214.Spec : Prop :=
  ∀ n, P16512846247609880214.a n = A288791 (n + 9)

end A288791

/-! ## A288791.P9609328625962180529

`A283424(eq[10, A002260(n+1)])`
-/

namespace A288791.P9609328625962180529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288791.P9609328625962180529

namespace A288791

/-- `A283424(eq[10, A002260(n+1)])` -/
def P9609328625962180529.Spec : Prop :=
  ∀ n, P9609328625962180529.a n = A288791 (n + 9)

end A288791

/-!
# A288792: Number of blocks of size >= ten in all set partitions of n.

The programs for A288792, the canonical program `A288792.P571360824915094122` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288792 has offset 10).

The definition of A288792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A288792.P571360824915094122

`∑{#}[n, C(n+10, #)*A000110(#)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A288792

/-- `∑{#}[n, C(n+10, #)*A000110(#)]` -/
def P571360824915094122.Spec : Prop :=
  ∀ n, P571360824915094122.a n = A288792 (n + 10)

theorem P571360824915094122.correct : P571360824915094122.Spec := by
  intro n
  simp only [A288792, Nat.add_sub_cancel]

end A288792

/-! ## A288792.P14487320325374450327

`A283424(eq[10, A002262(n)])`
-/

namespace A288792.P14487320325374450327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288792.P14487320325374450327

namespace A288792

/-- `A283424(eq[10, A002262(n)])` -/
def P14487320325374450327.Spec : Prop :=
  ∀ n, P14487320325374450327.a n = A288792 (n + 10)

end A288792

/-! ## A288792.P17824166437177529226

`A283424(A000217(n+10)+10)`
-/

namespace A288792.P17824166437177529226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (A000217 (n + 10) + 10).toNat

end

end A288792.P17824166437177529226

namespace A288792

/-- `A283424(A000217(n+10)+10)` -/
def P17824166437177529226.Spec : Prop :=
  ∀ n, P17824166437177529226.a n = A288792 (n + 10)

end A288792

/-! ## A288792.P11336295970712144797

`A283424(eq[10, A144328(n+1)])`
-/

namespace A288792.P11336295970712144797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288792.P11336295970712144797

namespace A288792

/-- `A283424(eq[10, A144328(n+1)])` -/
def P11336295970712144797.Spec : Prop :=
  ∀ n, P11336295970712144797.a n = A288792 (n + 10)

end A288792

/-! ## A288792.P5815796201763647800

`A283424(eq[11, A002260(n+1)])`
-/

namespace A288792.P5815796201763647800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288792.P5815796201763647800

namespace A288792

/-- `A283424(eq[11, A002260(n+1)])` -/
def P5815796201763647800.Spec : Prop :=
  ∀ n, P5815796201763647800.a n = A288792 (n + 10)

end A288792

/-! ## A288792.P12420940106398577986

`A283424(eq[11, A135223(n+1)])`
-/

namespace A288792.P12420940106398577986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A288792.P12420940106398577986

namespace A288792

/-- `A283424(eq[11, A135223(n+1)])` -/
def P12420940106398577986.Spec : Prop :=
  ∀ n, P12420940106398577986.a n = A288792 (n + 10)

end A288792

/-!
# A288793: a(n) = number of n-digit binary numbers in which the first k and last k digits have a Hamming distance of 1 or less, for all k from 1 to n.

The programs for A288793, there is no canonical definition to state claims against.
-/

/-! ## A288793.P15065167591437299246

`A204164(A094363(3*n+4)*A383092(2*n+3))`
-/

namespace A288793.P15065167591437299246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204164 (A094363 (3 * n + 4) * A383092 (2 * n + 3)).toNat

end

end A288793.P15065167591437299246

/-! ## A288793.P7066177814633290832

`∑[A328114(A001003(n)+1)]`
-/

namespace A288793.P7066177814633290832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (A001003 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A288793.P7066177814633290832

/-! ## A288793.P18434956310499297304

`A056556(A135522(n))+A002487(n)`
-/

namespace A288793.P18434956310499297304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A135522 n).toNat + A002487 n

end

end A288793.P18434956310499297304

/-! ## A288793.P3485046720417846662

`A124765(A074089(n))+A001013(n+1)`
-/

namespace A288793.P3485046720417846662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124765 (A074089 n).toNat + A001013 (n + 1)

end

end A288793.P3485046720417846662

/-! ## A288793.P1138027956962443559

`A328221(A032559(n+1))+A122135(n)`
-/

namespace A288793.P1138027956962443559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328221 (A032559 (n + 1)).toNat + A122135 n

end

end A288793.P1138027956962443559

/-!
# A288795: a(n) = 4^n + 3^(n + 1) - 2.

The programs for A288795, the canonical program `A288795.P9227499836402768387` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A288795 has offset 1).

The definition of A288795 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4^(n+1)+3^(n+2)-2` (program `A288795.P9227499836402768387`, by `A288795.P9227499836402768387.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A288795.P2125686412944679357

`ogf((11-47x+24x^2)/(1-8x+19x^2-12x^3))`
-/

namespace A288795.P2125686412944679357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [11, -47, 24] [1, -8, 19, -12] n

end

end A288795.P2125686412944679357

namespace A288795

/-- `ogf((11-47x+24x^2)/(1-8x+19x^2-12x^3))` -/
def P2125686412944679357.Spec : Prop :=
  ∀ n, P2125686412944679357.a n = A288795 (n + 1)

end A288795

/-! ## A288795.P9227499836402768387

`4^(n+1)+3^(n+2)-2`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A288795

/-- `4^(n+1)+3^(n+2)-2` -/
def P9227499836402768387.Spec : Prop :=
  ∀ n, P9227499836402768387.a n = A288795 (n + 1)

theorem P9227499836402768387.correct : P9227499836402768387.Spec := by
  intro n
  simp only [A288795, Nat.add_sub_cancel]

end A288795

/-! ## A288795.P11293397532858146650

`abs(A036563(2*(n+1))+A034472(n+2))`
-/

namespace A288795.P11293397532858146650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A036563 (2 * (n + 1)) + A034472 (n + 2)|

end

end A288795.P11293397532858146650

namespace A288795

/-- `abs(A036563(2*(n+1))+A034472(n+2))` -/
def P11293397532858146650.Spec : Prop :=
  ∀ n, P11293397532858146650.a n = A288795 (n + 1)

end A288795

/-! ## A288795.P16012976122624013496

`abs(A038754(2*(n+2))+A000918(2*(n+1)))`
-/

namespace A288795.P16012976122624013496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038754 (2 * (n + 2)) + A000918 (2 * (n + 1))|

end

end A288795.P16012976122624013496

namespace A288795

/-- `abs(A038754(2*(n+2))+A000918(2*(n+1)))` -/
def P16012976122624013496.Spec : Prop :=
  ∀ n, P16012976122624013496.a n = A288795 (n + 1)

end A288795

