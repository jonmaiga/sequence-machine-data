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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
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
# A265700: Decimal representation of the middle column of the "Rule 135" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265700, there is no canonical definition to state claims against.
-/

/-! ## A265700.P4189331347521129935

`A265698(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A265700.P4189331347521129935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A265698 n + 2 * a (n - 1)

end

end A265700.P4189331347521129935

/-! ## A265700.P6745488552484127721

`A003188(floor(sqrt(A293352(2*n+1))))`
-/

namespace A265700.P6745488552484127721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (Int.sqrt (A293352 (2 * n + 1))).toNat

end

end A265700.P6745488552484127721

/-! ## A265700.P1743491825469427121

`or(2*a(n-1), A283318(A187829(n+1)))` with `a(0)=1`
-/

namespace A265700.P1743491825469427121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (2 * a (n - 1)) (A283318 (A187829 (n + 1)).toNat)

end

end A265700.P1743491825469427121

/-! ## A265700.P18273144590080437382

`A005843(a(n-1))+char[A166590(n+1)]` with `a(0)=1`
-/

namespace A265700.P18273144590080437382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166590 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005843 (a (n - 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A265700.P18273144590080437382

/-! ## A265700.P13495930289420565313

`or(A003945(n), A249243(A003945(n)))`
-/

namespace A265700.P13495930289420565313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003945 n) (A249243 (A003945 n).toNat)

end

end A265700.P13495930289420565313

/-!
# A265701: Number of ON (black) cells in the n-th iteration of the "Rule 135" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265701, there is no canonical definition to state claims against.
-/

/-! ## A265701.P17834206064660282500

`Δ[n²]-A265703(n)`
-/

namespace A265701.P17834206064660282500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A265703 n

end

end A265701.P17834206064660282500

/-! ## A265701.P12580466265822802997

`A151929(n)+A070951(n)`
-/

namespace A265701.P12580466265822802997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151929 n + A070951 n

end

end A265701.P12580466265822802997

/-! ## A265701.P17306909468365960588

`A005843(n)+1-A265703(n)`
-/

namespace A265701.P17306909468365960588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (1 - A265703 n)

end

end A265701.P17306909468365960588

/-! ## A265701.P13087282122792968625

`A070951(n)+A070952(n)-A265703(n)`
-/

namespace A265701.P13087282122792968625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070951 n + (A070952 n - A265703 n)

end

end A265701.P13087282122792968625

/-! ## A265701.P14155404935218766632

`A070951(n)+Δ[A265703(n)]`
-/

namespace A265701.P14155404935218766632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070951 n + (f1 (n + 1) - f1 n)

end

end A265701.P14155404935218766632

/-! ## A265701.P12295299444443116906

`∑{digits}[A265715(n), #]`
-/

namespace A265701.P12295299444443116906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265715 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A265701.P12295299444443116906

/-!
# A265702: Total number of ON (black) cells after n iterations of the "Rule 135" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265702, there is no canonical definition to state claims against.
-/

/-! ## A265702.P6936556941325145871

`∑[A265701(n)]`
-/

namespace A265702.P6936556941325145871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265702.P6936556941325145871

/-! ## A265702.P495740649271726357

`(n+1)²-A265704(n)`
-/

namespace A265702.P495740649271726357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A265704 n

end

end A265702.P495740649271726357

/-! ## A265702.P15192998558637299625

`∑[Δ[n²]-A265703(n)]`
-/

namespace A265702.P15192998558637299625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A265703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265702.P15192998558637299625

/-! ## A265702.P13308480297577393844

`A265224(n)+A070952(n)`
-/

namespace A265702.P13308480297577393844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265224 n + A070952 n

end

end A265702.P13308480297577393844

/-! ## A265702.P16416545819576215739

`A070952(n)+∑[A070951(n)]`
-/

namespace A265702.P16416545819576215739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070952 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265702.P16416545819576215739

/-! ## A265702.P17577254882833459636

`∑[A151929(n)+A070951(n)]`
-/

namespace A265702.P17577254882833459636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151929 n + A070951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265702.P17577254882833459636

/-! ## A265702.P14800197891440799539

`A110267(n)+A265224(n)-A265704(n)`
-/

namespace A265702.P14800197891440799539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110267 n + (A265224 n - A265704 n)

end

end A265702.P14800197891440799539

/-! ## A265702.P10240736292258378668

`A265704(n+1)+A265224(n)-A265704(n)`
-/

namespace A265702.P10240736292258378668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265704 (n + 1) + (A265224 n - A265704 n)

end

end A265702.P10240736292258378668

/-!
# A265703: Number of OFF (white) cells in the n-th iteration of the "Rule 135" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265703, there is no canonical definition to state claims against.
-/

/-! ## A265703.P5608341866542844330

`Δ[n²]-A265701(n)`
-/

namespace A265703.P5608341866542844330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A265701 n

end

end A265703.P5608341866542844330

/-! ## A265703.P17410394862421019871

`A151929(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A265703.P17410394862421019871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A151929 (n - 1) + a (n - 1)

end

end A265703.P17410394862421019871

/-! ## A265703.P5083206297108189803

`A070952(abs(1-n))%(2*n+1)`
-/

namespace A265703.P5083206297108189803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070952 |1 - (n : ℤ)|.toNat) (2 * n + 1 : ℤ)

end

end A265703.P5083206297108189803

/-! ## A265703.P2950426319137779044

`A070952(n)-A151929(n)`
-/

namespace A265703.P2950426319137779044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070952 n - A151929 n

end

end A265703.P2950426319137779044

/-! ## A265703.P2778956732580618079

`A246024(n)+n-A151929(n)`
-/

namespace A265703.P2778956732580618079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246024 n + ((n : ℤ) - A151929 n)

end

end A265703.P2778956732580618079

/-! ## A265703.P10799764166259949451

`and(A057428(n), A070952(abs(1-n)))`
-/

namespace A265703.P10799764166259949451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A070952 |1 - (n : ℤ)|.toNat)

end

end A265703.P10799764166259949451

/-! ## A265703.P6750130305346644112

`A222251(A222251(n))+n+1-A265701(n)`
-/

namespace A265703.P6750130305346644112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A222251 n).toNat + ((n + 1 : ℤ) - A265701 n)

end

end A265703.P6750130305346644112

/-! ## A265703.P5029801185502722328

`A023443(3*n-(n-2)-A265701(n))`
-/

namespace A265703.P5029801185502722328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ((3 * n : ℤ) - ((n : ℤ) - 2) - A265701 n).toNat

end

end A265703.P5029801185502722328

/-! ## A265703.P8770499006638655265

`A023444(2*n+1)-A023444(A265701(n))`
-/

namespace A265703.P8770499006638655265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (2 * n + 1) - A023444 (A265701 n).toNat

end

end A265703.P8770499006638655265

/-! ## A265703.P8846143173403626540

`A265704(n)-A265704(log2(A011782(n)))`
-/

namespace A265703.P8846143173403626540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265704 n - A265704 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A265703.P8846143173403626540

/-! ## A265703.P8493749365222831383

`Δ[A265704(log2(A011782(n)))]`
-/

namespace A265703.P8493749365222831383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265704 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265703.P8493749365222831383

/-!
# A265704: Total number of OFF (white) cells after n iterations of the "Rule 135" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265704, there is no canonical definition to state claims against.
-/

/-! ## A265704.P15428305718134532741

`∑[A265703(n)]`
-/

namespace A265704.P15428305718134532741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265704.P15428305718134532741

/-! ## A265704.P7541575514465476653

`(n+1)²-A265702(n)`
-/

namespace A265704.P7541575514465476653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A265702 n

end

end A265704.P7541575514465476653

/-! ## A265704.P5895686651383516468

`∑[Δ[n²]-A265701(n)]`
-/

namespace A265704.P5895686651383516468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - A265701 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265704.P5895686651383516468

/-! ## A265704.P13336118282304622787

`A110267(n)-A070952(n)`
-/

namespace A265704.P13336118282304622787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110267 n - A070952 n

end

end A265704.P13336118282304622787

/-! ## A265704.P17089199396180404406

`∑[A070952(n)-A151929(n)]`
-/

namespace A265704.P17089199396180404406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070952 n - A151929 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265704.P17089199396180404406

/-! ## A265704.P3724517490500503564

`n²+A070951(n)-A265224(n)`
-/

namespace A265704.P3724517490500503564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A070951 n - A265224 n)

end

end A265704.P3724517490500503564

/-! ## A265704.P585395869507519539

`∑[A246024(n)+n]-(A246024(n)+n)`
-/

namespace A265704.P585395869507519539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246024 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A246024 n + (n : ℤ))

end

end A265704.P585395869507519539

/-! ## A265704.P9523763587435254638

`∑[A222251(A222251(n))+n+1-A265701(n)]`
-/

namespace A265704.P9523763587435254638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A222251 n).toNat + ((n + 1 : ℤ) - A265701 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265704.P9523763587435254638

/-! ## A265704.P3795389388036021512

`A110267(n)-A265703(n+1)`
-/

namespace A265704.P3795389388036021512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110267 n - A265703 (n + 1)

end

end A265704.P3795389388036021512

/-!
# A265705: Triangle read by rows: T(n,k) = k IMPL n, 0 <= k <= n, bitwise logical IMPL.

The programs for A265705, there is no canonical definition to state claims against.
-/

/-! ## A265705.P15505103305730129004

`A003817(comp[∑[n]]-(n+2))-A102037(n)`
-/

namespace A265705.P15505103305730129004
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - (n + 2)) - A102037 n

end

end A265705.P15505103305730129004

/-! ## A265705.P9575455969736037730

`xor(A003817(A003056(n)), A102037(n))`
-/

namespace A265705.P9575455969736037730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003817 (A003056 n).toNat) (A102037 n)

end

end A265705.P9575455969736037730

/-! ## A265705.P17410521096093460428

`xor(A003817(A080098(n)), A102037(n))`
-/

namespace A265705.P17410521096093460428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003817 (A080098 n).toNat) (A102037 n)

end

end A265705.P17410521096093460428

/-! ## A265705.P4958805336964331147

`A000007(n+2)+A003817(A080098(n))-A102037(n)`
-/

namespace A265705.P4958805336964331147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 2) + (A003817 (A080098 n).toNat - A102037 n)

end

end A265705.P4958805336964331147

/-! ## A265705.P4678991398124271860

`A063524(n+2)+A003817(A080098(n))-A102037(n)`
-/

namespace A265705.P4678991398124271860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 2) + (A003817 (A080098 n).toNat - A102037 n)

end

end A265705.P4678991398124271860

/-!
# A265706: Rectangular array A read by upward antidiagonals: A(n,m) is the number of total difunctional (regular) binary relations between an n-element set and an m-element set.

The programs for A265706, there is no canonical definition to state claims against.
-/

/-! ## A265706.P9558285647396368934

`A265707(A038722(n+1))`
-/

namespace A265706.P9558285647396368934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265707 (A038722 (n + 1)).toNat

end

end A265706.P9558285647396368934

/-! ## A265706.P6432195929603335771

`A265707(A061579(n)+1)`
-/

namespace A265706.P6432195929603335771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265707 (A061579 n + 1).toNat

end

end A265706.P6432195929603335771

/-! ## A265706.P5845920555546697622

`A265707(A114327(n)+1+n)`
-/

namespace A265706.P5845920555546697622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265707 (A114327 n + 1 + (n : ℤ)).toNat

end

end A265706.P5845920555546697622

/-! ## A265706.P14187709507198533566

`A265707(A093995(n+1)-n)`
-/

namespace A265706.P14187709507198533566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265707 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A265706.P14187709507198533566

/-! ## A265706.P6598066822520297207

`A265707(A002024(n+1)²-n)`
-/

namespace A265706.P6598066822520297207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265707 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A265706.P6598066822520297207

/-!
# A265707: Rectangular array A read by upward antidiagonals: A(n,m) is the number of surjective difunctional (regular) binary relations between an n-element set and an m-element set.

The programs for A265707, there is no canonical definition to state claims against.
-/

/-! ## A265707.P1021259835836657656

`A265706(A038722(n+1))`
-/

namespace A265707.P1021259835836657656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265706 (A038722 (n + 1)).toNat

end

end A265707.P1021259835836657656

/-! ## A265707.P4975837333550609536

`A265706(A061579(n)+1)`
-/

namespace A265707.P4975837333550609536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265706 (A061579 n + 1).toNat

end

end A265707.P4975837333550609536

/-! ## A265707.P14111364507795762344

`A265706(A114327(n)+1+n)`
-/

namespace A265707.P14111364507795762344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265706 (A114327 n + 1 + (n : ℤ)).toNat

end

end A265707.P14111364507795762344

/-! ## A265707.P17609305192491193546

`A265706(A093995(n+1)-n)`
-/

namespace A265707.P17609305192491193546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265706 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A265707.P17609305192491193546

/-! ## A265707.P14213908825677815955

`A265417(n+1)+A265706(n+2)-A265417(n+2)`
-/

namespace A265707.P14213908825677815955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265417 (n + 1) + (A265706 (n + 2) - A265417 (n + 2))

end

end A265707.P14213908825677815955

/-!
# A265708: a(n) = lcm_{d|n} sigma(d) * Sum_{d|n} 1/sigma(d), where sigma(d) represents the sum of divisors of d (A000203(d)).

The programs for A265708, there is no canonical definition to state claims against.
-/

/-! ## A265708.P12701391492009142788

`A265709(n+1)*A069934(n+1)/A265710(n+1)`
-/

namespace A265708.P12701391492009142788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265709 (n + 1) * A069934 (n + 1) : ℚ) / (A265710 (n + 1) : ℚ)

end

end A265708.P12701391492009142788

/-!
# A265709: a(n) = numerator of Sum_{d|n} 1/sigma(d).

The programs for A265709, there is no canonical definition to state claims against.
-/

/-! ## A265709.P3303960233965133828

`A265708(n+1)*A265710(n+1)/A069934(n+1)`
-/

namespace A265709.P3303960233965133828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265708 (n + 1) * A265710 (n + 1) : ℚ) / (A069934 (n + 1) : ℚ)

end

end A265709.P3303960233965133828

/-!
# A265710: a(n) = denominator of Sum_{d|n} 1/sigma(d).

The programs for A265710, there is no canonical definition to state claims against.
-/

/-! ## A265710.P17855955774321755945

`A265709(n+1)*A069934(n+1)/A265708(n+1)`
-/

namespace A265710.P17855955774321755945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265709 (n + 1) * A069934 (n + 1) : ℚ) / (A265708 (n + 1) : ℚ)

end

end A265710.P17855955774321755945

/-! ## A265710.P9880015158252720440

`A306650(n+1)/A316854(A245980(n))`
-/

namespace A265710.P9880015158252720440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306650 (n + 1) : ℚ) / (A316854 (A245980 n).toNat : ℚ)

end

end A265710.P9880015158252720440

/-! ## A265710.P18080034546736316589

`gcd(A069934(n+1), A251781(A284543(n)))`
-/

namespace A265710.P18080034546736316589
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069934 (n + 1)) (A251781 (A284543 n).toNat)

end

end A265710.P18080034546736316589

/-!
# A265711: Numbers n such that floor(Sum_{d|n} 1 / sigma(d)) = 1.

The programs for A265711, the canonical program `A265711.P15707034598538859304` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265711 has offset 1).

The definition of A265711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265711.P1841570984134131363

`record[(n+1)/A266227(n+1)]`
-/

namespace A265711.P1841570984134131363
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A266227 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265711.P1841570984134131363

namespace A265711

/-- `record[(n+1)/A266227(n+1)]` -/
def P1841570984134131363.Spec : Prop :=
  ∀ n, P1841570984134131363.a n = (A265711 (n + 1) : ℚ)

end A265711

/-! ## A265711.P15707034598538859304

`A266227(a(n-1)+1)+a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A265711

/-- `A266227(a(n-1)+1)+a(n-1)` -/
def P15707034598538859304.Spec : Prop :=
  ∀ n, P15707034598538859304.a n = A265711 (n + 1)

theorem P15707034598538859304.correct : P15707034598538859304.Spec := by
  intro n
  simp only [A265711, Nat.add_sub_cancel]

end A265711

/-! ## A265711.P4797115153928141440

`record[root(A000027(n+1), A266227(n+1))]`
-/

namespace A265711.P4797115153928141440
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℝ) ^ (1 / (A266227 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265711.P4797115153928141440

namespace A265711

/-- `record[root(A000027(n+1), A266227(n+1))]` -/
def P4797115153928141440.Spec : Prop :=
  ∀ n, P4797115153928141440.a n = (A265711 (n + 1) : ℝ)

end A265711

/-! ## A265711.P8213926004473489092

`A078898(record[(n+1)*(3-A266227(n+1))])`
-/

namespace A265711.P8213926004473489092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (3 - A266227 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265711.P8213926004473489092

namespace A265711

/-- `A078898(record[(n+1)*(3-A266227(n+1))])` -/
def P8213926004473489092.Spec : Prop :=
  ∀ n, P8213926004473489092.a n = A265711 (n + 1)

end A265711

/-! ## A265711.P14274037725234496873

`A135020(record[n*(3-A266227(n+1))]+1)`
-/

namespace A265711.P14274037725234496873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (3 - A266227 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A265711.P14274037725234496873

namespace A265711

/-- `A135020(record[n*(3-A266227(n+1))]+1)` -/
def P14274037725234496873.Spec : Prop :=
  ∀ n, P14274037725234496873.a n = A265711 (n + 1)

end A265711

/-! ## A265711.P4672260979181042325

`record[n+1-A088432(A122180(n+1)!!)]`
-/

namespace A265711.P4672260979181042325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A088432 (Nat.factorial (Nat.factorial (A122180 (n + 1)).toNat))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265711.P4672260979181042325

namespace A265711

/-- `record[n+1-A088432(A122180(n+1)!!)]` -/
def P4672260979181042325.Spec : Prop :=
  ∀ n, P4672260979181042325.a n = A265711 (n + 1)

end A265711

/-! ## A265711.P1060743074008256151

`record[(n+1)/A034836(A122180(n+1)!!)]`
-/

namespace A265711.P1060743074008256151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A034836 (Nat.factorial (Nat.factorial (A122180 (n + 1)).toNat)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265711.P1060743074008256151

namespace A265711

/-- `record[(n+1)/A034836(A122180(n+1)!!)]` -/
def P1060743074008256151.Spec : Prop :=
  ∀ n, P1060743074008256151.a n = (A265711 (n + 1) : ℚ)

end A265711

/-!
# A265712: Numbers n such that floor(Sum_{d|n} 1 / sigma(d)) = 2.

The programs for A265712, the canonical program `A265712.P4281004375783898549` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265712 has offset 1).

The definition of A265712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265712.P4281004375783898549

`eq[2, A266227(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A265712

/-- `eq[2, A266227(n+1)]+1` -/
def P4281004375783898549.Spec : Prop :=
  ∀ n, (P4281004375783898549.a n : ℤ) = A265712 (n + 1)

theorem P4281004375783898549.correct : P4281004375783898549.Spec := by
  intro n
  simp only [A265712, Nat.add_sub_cancel]

end A265712

/-! ## A265712.P17834806649451935482

`eq[2, A266227(A028310(n))]`
-/

namespace A265712.P17834806649451935482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266227 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265712.P17834806649451935482

namespace A265712

/-- `eq[2, A266227(A028310(n))]` -/
def P17834806649451935482.Spec : Prop :=
  ∀ n, (P17834806649451935482.a n : ℤ) = A265712 (n + 1)

end A265712

/-! ## A265712.P2251456010542392221

`A011760(eq[2, A266227(n+1)])`
-/

namespace A265712.P2251456010542392221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265712.P2251456010542392221

namespace A265712

/-- `A011760(eq[2, A266227(n+1)])` -/
def P2251456010542392221.Spec : Prop :=
  ∀ n, P2251456010542392221.a n = A265712 (n + 1)

end A265712

/-! ## A265712.P3775566136094316048

`A014681(eq[2, A266227(n+1)])`
-/

namespace A265712.P3775566136094316048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265712.P3775566136094316048

namespace A265712

/-- `A014681(eq[2, A266227(n+1)])` -/
def P3775566136094316048.Spec : Prop :=
  ∀ n, P3775566136094316048.a n = A265712 (n + 1)

end A265712

/-! ## A265712.P1157019069146198673

`A020725(eq[2, A266227(n+1)])`
-/

namespace A265712.P1157019069146198673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265712.P1157019069146198673

namespace A265712

/-- `A020725(eq[2, A266227(n+1)])` -/
def P1157019069146198673.Spec : Prop :=
  ∀ n, P1157019069146198673.a n = A265712 (n + 1)

end A265712

/-! ## A265712.P17319879725103944656

`eq[2, A266227(A065190(n+1))]`
-/

namespace A265712.P17319879725103944656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266227 (A065190 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265712.P17319879725103944656

namespace A265712

/-- `eq[2, A266227(A065190(n+1))]` -/
def P17319879725103944656.Spec : Prop :=
  ∀ n, (P17319879725103944656.a n : ℤ) = A265712 (n + 1)

end A265712

/-! ## A265712.P11937858966208138384

`A065475(eq[2, A266227(n+1)])`
-/

namespace A265712.P11937858966208138384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265712.P11937858966208138384

namespace A265712

/-- `A065475(eq[2, A266227(n+1)])` -/
def P11937858966208138384.Spec : Prop :=
  ∀ n, P11937858966208138384.a n = A265712 (n + 1)

end A265712

/-! ## A265712.P6603763940740857661

`A164020(eq[2, A266227(n+1)])`
-/

namespace A265712.P6603763940740857661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164020 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A265712.P6603763940740857661

namespace A265712

/-- `A164020(eq[2, A266227(n+1)])` -/
def P6603763940740857661.Spec : Prop :=
  ∀ n, P6603763940740857661.a n = A265712 (n + 1)

end A265712

/-! ## A265712.P9174601721103802459

`eq[2, A266227(A233583(n+1))]`
-/

namespace A265712.P9174601721103802459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266227 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265712.P9174601721103802459

namespace A265712

/-- `eq[2, A266227(A233583(n+1))]` -/
def P9174601721103802459.Spec : Prop :=
  ∀ n, (P9174601721103802459.a n : ℤ) = A265712 (n + 1)

end A265712

/-!
# A265713: Numbers k such that floor(Sum_{d|k} 1 / sigma(d)) = 3.

The programs for A265713, there is no canonical definition to state claims against.
-/

/-! ## A265713.P2098994575198189649

`A081512(A115938(n+1)^A384877(n))`
-/

namespace A265713.P2098994575198189649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081512 (SequenceMachineLib.roundAway ((A115938 (n + 1) : ℚ) ^ (A384877 n : ℤ))).toNat

end

end A265713.P2098994575198189649

/-!
# A265715: Binary representation of the n-th iteration of the "Rule 149" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265715, there is no canonical definition to state claims against.
-/

/-! ## A265715.P6028908840066491251

`A007088(A265717(n))`
-/

namespace A265715.P6028908840066491251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A265717 n).toNat

end

end A265715.P6028908840066491251

/-! ## A265715.P1093272664829474883

`A305989(A265697(n))`
-/

namespace A265715.P1093272664829474883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A265697 n).toNat

end

end A265715.P1093272664829474883

/-! ## A265715.P4429243349200516358

`A185544(2*A265717(n))`
-/

namespace A265715.P4429243349200516358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A265717 n).toNat

end

end A265715.P4429243349200516358

/-!
# A265716: a(n) = n IMPL (2*n), where IMPL is the bitwise logical implication.

The programs for A265716, the canonical program `A265716.P13096751202015572622` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265716 has offset 0).

The definition of A265716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265716.P18042877423049348577

`A334076(n)+2*n`
-/

namespace A265716.P18042877423049348577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 n + (2 * n : ℤ)

end

end A265716.P18042877423049348577

namespace A265716

/-- `A334076(n)+2*n` -/
def P18042877423049348577.Spec : Prop :=
  ∀ n, P18042877423049348577.a n = A265716 n

end A265716

/-! ## A265716.P13096751202015572622

`or(n, A261693(n))+n`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A265716

/-- `or(n, A261693(n))+n` -/
def P13096751202015572622.Spec : Prop :=
  ∀ n, P13096751202015572622.a n = A265716 n

theorem P13096751202015572622.correct : P13096751202015572622.Spec := by
  intro n
  simp only [A265716]

end A265716

/-! ## A265716.P2368562533437736315

`or(2*n, A003817(n)-n)`
-/

namespace A265716.P2368562533437736315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (A003817 n - (n : ℤ))

end

end A265716.P2368562533437736315

namespace A265716

/-- `or(2*n, A003817(n)-n)` -/
def P2368562533437736315.Spec : Prop :=
  ∀ n, P2368562533437736315.a n = A265716 n

end A265716

/-! ## A265716.P12769391659748796400

`or(n-A006257(n), 2*n)`
-/

namespace A265716.P12769391659748796400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - A006257 n) (2 * n : ℤ)

end

end A265716.P12769391659748796400

namespace A265716

/-- `or(n-A006257(n), 2*n)` -/
def P12769391659748796400.Spec : Prop :=
  ∀ n, P12769391659748796400.a n = A265716 n

end A265716

/-! ## A265716.P5203737951214544197

`or(∑[n*char[A000079(n)]]-n, 2*n)`
-/

namespace A265716.P5203737951214544197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)) (2 * n : ℤ)

end

end A265716.P5203737951214544197

namespace A265716

/-- `or(∑[n*char[A000079(n)]]-n, 2*n)` -/
def P5203737951214544197.Spec : Prop :=
  ∀ n, P5203737951214544197.a n = A265716 n

end A265716

/-! ## A265716.P13563569189962532392

`A283165(n)+A003817(n)`
-/

namespace A265716.P13563569189962532392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283165 n + A003817 n

end

end A265716.P13563569189962532392

namespace A265716

/-- `A283165(n)+A003817(n)` -/
def P13563569189962532392.Spec : Prop :=
  ∀ n, P13563569189962532392.a n = A265716 n

end A265716

/-! ## A265716.P11575837865786315681

`xor(A005843(n), A334076(n))`
-/

namespace A265716.P11575837865786315681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005843 n) (A334076 n)

end

end A265716.P11575837865786315681

namespace A265716

/-- `xor(A005843(n), A334076(n))` -/
def P11575837865786315681.Spec : Prop :=
  ∀ n, P11575837865786315681.a n = A265716 n

end A265716

/-! ## A265716.P5174763469065529401

`xor(A163617(n), A261693(n))`
-/

namespace A265716.P5174763469065529401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A163617 n) (A261693 n)

end

end A265716.P5174763469065529401

namespace A265716

/-- `xor(A163617(n), A261693(n))` -/
def P5174763469065529401.Spec : Prop :=
  ∀ n, P5174763469065529401.a n = A265716 n

end A265716

/-! ## A265716.P1411671761056820598

`2*n+A283165(n)-A006257(n)`
-/

namespace A265716.P1411671761056820598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + (A283165 n - A006257 n)

end

end A265716.P1411671761056820598

namespace A265716

/-- `2*n+A283165(n)-A006257(n)` -/
def P1411671761056820598.Spec : Prop :=
  ∀ n, P1411671761056820598.a n = A265716 n

end A265716

/-! ## A265716.P7302255365269888797

`A003817(A229763(n)+n)-A229763(n)`
-/

namespace A265716.P7302255365269888797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A229763 n + (n : ℤ)).toNat - A229763 n

end

end A265716.P7302255365269888797

namespace A265716

/-- `A003817(A229763(n)+n)-A229763(n)` -/
def P7302255365269888797.Spec : Prop :=
  ∀ n, P7302255365269888797.a n = A265716 n

end A265716

/-! ## A265716.P2367358796143977470

`or(2*n, A279645(2*n))`
-/

namespace A265716.P2367358796143977470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (A279645 (2 * n))

end

end A265716.P2367358796143977470

namespace A265716

/-- `or(2*n, A279645(2*n))` -/
def P2367358796143977470.Spec : Prop :=
  ∀ n, P2367358796143977470.a n = A265716 n

end A265716

/-! ## A265716.P13177809912476948670

`A003817(2*n)-A229763(n)`
-/

namespace A265716.P13177809912476948670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (2 * n) - A229763 n

end

end A265716.P13177809912476948670

namespace A265716

/-- `A003817(2*n)-A229763(n)` -/
def P13177809912476948670.Spec : Prop :=
  ∀ n, P13177809912476948670.a n = A265716 n

end A265716

/-! ## A265716.P2714231304104205130

`A003817(2*n)-and(n, A003188(2*n))`
-/

namespace A265716.P2714231304104205130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (2 * n) - Int.land (n : ℤ) (A003188 (2 * n))

end

end A265716.P2714231304104205130

namespace A265716

/-- `A003817(2*n)-and(n, A003188(2*n))` -/
def P2714231304104205130.Spec : Prop :=
  ∀ n, P2714231304104205130.a n = A265716 n

end A265716

/-! ## A265716.P13757733078919716379

`A003817(2*n)-and(n, A035327(2*n))`
-/

namespace A265716.P13757733078919716379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (2 * n) - Int.land (n : ℤ) (A035327 (2 * n))

end

end A265716.P13757733078919716379

namespace A265716

/-- `A003817(2*n)-and(n, A035327(2*n))` -/
def P13757733078919716379.Spec : Prop :=
  ∀ n, P13757733078919716379.a n = A265716 n

end A265716

/-! ## A265716.P9355145611716518643

`or(2*n, A180201(2*n))`
-/

namespace A265716.P9355145611716518643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (A180201 (2 * n))

end

end A265716.P9355145611716518643

namespace A265716

/-- `or(2*n, A180201(2*n))` -/
def P9355145611716518643.Spec : Prop :=
  ∀ n, P9355145611716518643.a n = A265716 n

end A265716

/-! ## A265716.P12963276929555417178

`A048735(A080079(2*n+1))+2*n`
-/

namespace A265716.P12963276929555417178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (A080079 (2 * n + 1)).toNat + (2 * n : ℤ)

end

end A265716.P12963276929555417178

namespace A265716

/-- `A048735(A080079(2*n+1))+2*n` -/
def P12963276929555417178.Spec : Prop :=
  ∀ n, P12963276929555417178.a n = A265716 n

end A265716

/-! ## A265716.P9804713783399248808

`A142151(4*n)/2-A229762(2*n)`
-/

namespace A265716.P9804713783399248808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142151 (4 * n) : ℚ) / 2 - (A229762 (2 * n) : ℚ)

end

end A265716.P9804713783399248808

namespace A265716

/-- `A142151(4*n)/2-A229762(2*n)` -/
def P9804713783399248808.Spec : Prop :=
  ∀ n, P9804713783399248808.a n = (A265716 n : ℚ)

end A265716

/-! ## A265716.P11311972976683533583

`and(A058877(n+1), A154438(n))+2*n`
-/

namespace A265716.P11311972976683533583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058877 (n + 1)) (A154438 n) + (2 * n : ℤ)

end

end A265716.P11311972976683533583

namespace A265716

/-- `and(A058877(n+1), A154438(n))+2*n` -/
def P11311972976683533583.Spec : Prop :=
  ∀ n, P11311972976683533583.a n = A265716 n

end A265716

/-! ## A265716.P14812406394715328623

`or(2*n, A343230(A005836(n+1)))`
-/

namespace A265716.P14812406394715328623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (A343230 (A005836 (n + 1)).toNat)

end

end A265716.P14812406394715328623

namespace A265716

/-- `or(2*n, A343230(A005836(n+1)))` -/
def P14812406394715328623.Spec : Prop :=
  ∀ n, P14812406394715328623.a n = A265716 n

end A265716

/-! ## A265716.P13726503305979633411

`or(A005843(n), A343230(A005823(n+1)/2))`
-/

namespace A265716.P13726503305979633411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005843 n) (A343230 (SequenceMachineLib.roundAway ((A005823 (n + 1) : ℚ) / 2)).toNat)

end

end A265716.P13726503305979633411

namespace A265716

/-- `or(A005843(n), A343230(A005823(n+1)/2))` -/
def P13726503305979633411.Spec : Prop :=
  ∀ n, P13726503305979633411.a n = A265716 n

end A265716

/-!
# A265717: Decimal representation of the n-th iteration of the "Rule 149" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265717, there is no canonical definition to state claims against.
-/

/-! ## A265717.P16272524238049072060

`A030101(A265697(n))`
-/

namespace A265717.P16272524238049072060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A265697 n).toNat

end

end A265717.P16272524238049072060

/-! ## A265717.P339622116504181269

`A281589(2*A265697(n))`
-/

namespace A265717.P339622116504181269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281589 (2 * A265697 n).toNat

end

end A265717.P339622116504181269

/-! ## A265717.P13103929962820136260

`A325401(2*A265697(n))`
-/

namespace A265717.P13103929962820136260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325401 (2 * A265697 n).toNat

end

end A265717.P13103929962820136260

/-!
# A265718: Triangle read by rows giving successive states of cellular automaton generated by "Rule 1" initiated with a single ON (black) cell.

The programs for A265718, the canonical program `A265718.P12554410647525554970` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265718 has offset 0).

The definition of A265718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265718.P2829777253992038386

`A266174(n)*A266666(n)`
-/

namespace A265718.P2829777253992038386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266174 n * A266666 n

end

end A265718.P2829777253992038386

namespace A265718

/-- `A266174(n)*A266666(n)` -/
def P2829777253992038386.Spec : Prop :=
  ∀ n, P2829777253992038386.a n = A265718 n

end A265718

/-! ## A265718.P17453215517424358200

`A266174(n)*A267349(n)`
-/

namespace A265718.P17453215517424358200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266174 n * A267349 n

end

end A265718.P17453215517424358200

namespace A265718

/-- `A266174(n)*A267349(n)` -/
def P17453215517424358200.Spec : Prop :=
  ∀ n, P17453215517424358200.a n = A265718 n

end A265718

/-! ## A265718.P2876647154066815391

`A266174(n)*A267679(n)`
-/

namespace A265718.P2876647154066815391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266174 n * A267679 n

end

end A265718.P2876647154066815391

namespace A265718

/-- `A266174(n)*A267679(n)` -/
def P2876647154066815391.Spec : Prop :=
  ∀ n, P2876647154066815391.a n = A265718 n

end A265718

/-! ## A265718.P16692330545298360384

`A266514(n)*A267679(n)`
-/

namespace A265718.P16692330545298360384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266514 n * A267679 n

end

end A265718.P16692330545298360384

namespace A265718

/-- `A266514(n)*A267679(n)` -/
def P16692330545298360384.Spec : Prop :=
  ∀ n, P16692330545298360384.a n = A265718 n

end A265718

/-! ## A265718.P8133930914750436801

`A266666(n)*A267679(n)`
-/

namespace A265718.P8133930914750436801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266666 n * A267679 n

end

end A265718.P8133930914750436801

namespace A265718

/-- `A266666(n)*A267679(n)` -/
def P8133930914750436801.Spec : Prop :=
  ∀ n, P8133930914750436801.a n = A265718 n

end A265718

/-! ## A265718.P12554410647525554970

`A266666(n)*A267704(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A265718

/-- `A266666(n)*A267704(n)` -/
def P12554410647525554970.Spec : Prop :=
  ∀ n, P12554410647525554970.a n = A265718 n

theorem P12554410647525554970.correct : P12554410647525554970.Spec := by
  intro n
  simp only [A265718]

end A265718

/-! ## A265718.P10609356411851546733

`A266848(n)*A267679(n)`
-/

namespace A265718.P10609356411851546733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266848 n * A267679 n

end

end A265718.P10609356411851546733

namespace A265718

/-- `A266848(n)*A267679(n)` -/
def P10609356411851546733.Spec : Prop :=
  ∀ n, P10609356411851546733.a n = A265718 n

end A265718

/-! ## A265718.P2822107093467517018

`A267349(n)*A267679(n)`
-/

namespace A265718.P2822107093467517018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267349 n * A267679 n

end

end A265718.P2822107093467517018

namespace A265718

/-- `A267349(n)*A267679(n)` -/
def P2822107093467517018.Spec : Prop :=
  ∀ n, P2822107093467517018.a n = A265718 n

end A265718

/-! ## A265718.P5590459155431230090

`A267349(n)*A267704(n)`
-/

namespace A265718.P5590459155431230090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267349 n * A267704 n

end

end A265718.P5590459155431230090

namespace A265718

/-- `A267349(n)*A267704(n)` -/
def P5590459155431230090.Spec : Prop :=
  ∀ n, P5590459155431230090.a n = A265718 n

end A265718

/-! ## A265718.P12015976053417741887

`and(A137735(n), A266174(n))`
-/

namespace A265718.P12015976053417741887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A137735 n) (A266174 n)

end

end A265718.P12015976053417741887

namespace A265718

/-- `and(A137735(n), A266174(n))` -/
def P12015976053417741887.Spec : Prop :=
  ∀ n, P12015976053417741887.a n = A265718 n

end A265718

/-! ## A265718.P6232866067484430068

`and(A137735(n), A267679(n))`
-/

namespace A265718.P6232866067484430068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A137735 n) (A267679 n)

end

end A265718.P6232866067484430068

namespace A265718

/-- `and(A137735(n), A267679(n))` -/
def P6232866067484430068.Spec : Prop :=
  ∀ n, P6232866067484430068.a n = A265718 n

end A265718

/-! ## A265718.P3535325570256932365

`and(A137735(n), A267704(n))`
-/

namespace A265718.P3535325570256932365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A137735 n) (A267704 n)

end

end A265718.P3535325570256932365

namespace A265718

/-- `and(A137735(n), A267704(n))` -/
def P3535325570256932365.Spec : Prop :=
  ∀ n, P3535325570256932365.a n = A265718 n

end A265718

/-! ## A265718.P18037561977481185662

`(1-char[A264754(n)])*A266666(n)`
-/

namespace A265718.P18037561977481185662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264754 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)) * A266666 n

end

end A265718.P18037561977481185662

namespace A265718

/-- `(1-char[A264754(n)])*A266666(n)` -/
def P18037561977481185662.Spec : Prop :=
  ∀ n, P18037561977481185662.a n = A265718 n

end A265718

/-! ## A265718.P11051778370322768356

`A266174(n)+A267679(n)-A267704(n)`
-/

namespace A265718.P11051778370322768356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266174 n + (A267679 n - A267704 n)

end

end A265718.P11051778370322768356

namespace A265718

/-- `A266174(n)+A267679(n)-A267704(n)` -/
def P11051778370322768356.Spec : Prop :=
  ∀ n, P11051778370322768356.a n = A265718 n

end A265718

/-! ## A265718.P5860024749042452954

`A266174(n-(A267679(n)-A267704(n)))`
-/

namespace A265718.P5860024749042452954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266174 ((n : ℤ) - (A267679 n - A267704 n)).toNat

end

end A265718.P5860024749042452954

namespace A265718

/-- `A266174(n-(A267679(n)-A267704(n)))` -/
def P5860024749042452954.Spec : Prop :=
  ∀ n, P5860024749042452954.a n = A265718 n

end A265718

/-!
# A265719: Numbers n such that Sum_{d|n} 1/tau(d) > Sum_{d|m} 1/tau(d) for all m < n.

The programs for A265719, there is no canonical definition to state claims against.
-/

/-! ## A265719.P505369561814011117

`A106247(∪[A072828(n+1), A117010(n+1)])`
-/

namespace A265719.P505369561814011117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117010 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106247 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A265719.P505369561814011117

/-! ## A265719.P17224645194334818802

`record[A278222(n)%A278222(A155865(n))]`
-/

namespace A265719.P17224645194334818802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A278222 n) (A278222 (A155865 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265719.P17224645194334818802

/-! ## A265719.P5809297578006101

`A097212(∑[A227655(n)!])`
-/

namespace A265719.P5809297578006101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A227655 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097212 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A265719.P5809297578006101

/-! ## A265719.P14571164239060900678

`∩[A097212(n+1), A328596(n+1)]`
-/

namespace A265719.P14571164239060900678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265719.P14571164239060900678

/-! ## A265719.P9842387679787067389

`∩[A266228(n+1), A328596(n+1)]`
-/

namespace A265719.P9842387679787067389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266228 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265719.P9842387679787067389

/-!
# A265720: Binary representation of the n-th iteration of the "Rule 1" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265720, there is no canonical definition to state claims against.
-/

/-! ## A265720.P14882245002978428538

`A007088(A265721(n))`
-/

namespace A265720.P14882245002978428538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A265721 n).toNat

end

end A265720.P14882245002978428538

/-! ## A265720.P786930146365206220

`A007088(and(A266176(n), A266668(n)))`
-/

namespace A265720.P786930146365206220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A266176 n) (A266668 n)).toNat

end

end A265720.P786930146365206220

/-! ## A265720.P13827613575473592220

`A007088(and(A266176(n), A267351(n)))`
-/

namespace A265720.P13827613575473592220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A266176 n) (A267351 n)).toNat

end

end A265720.P13827613575473592220

/-! ## A265720.P6345391892248202294

`A007088(and(A266176(n), A267681(n)))`
-/

namespace A265720.P6345391892248202294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A266176 n) (A267681 n)).toNat

end

end A265720.P6345391892248202294

/-! ## A265720.P947037951727981229

`A007088(and(A266516(n), A267681(n)))`
-/

namespace A265720.P947037951727981229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A266516 n) (A267681 n)).toNat

end

end A265720.P947037951727981229

/-!
# A265721: Decimal representation of the n-th iteration of the "Rule 1" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265721, the canonical program `A265721.P16975176845016475372` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265721 has offset 0).

The definition of A265721 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 167 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265721.P16975176845016475372

`and(A266176(n), A266668(n))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A265721

/-- `and(A266176(n), A266668(n))` -/
def P16975176845016475372.Spec : Prop :=
  ∀ n, P16975176845016475372.a n = A265721 n

theorem P16975176845016475372.correct : P16975176845016475372.Spec := by
  intro n
  simp only [A265721]

end A265721

/-! ## A265721.P11247100579072626165

`and(A266176(n), A267351(n))`
-/

namespace A265721.P11247100579072626165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266176 n) (A267351 n)

end

end A265721.P11247100579072626165

namespace A265721

/-- `and(A266176(n), A267351(n))` -/
def P11247100579072626165.Spec : Prop :=
  ∀ n, P11247100579072626165.a n = A265721 n

end A265721

/-! ## A265721.P6398912113550504157

`A266516(n)-Δ[A213173(n)]`
-/

namespace A265721.P6398912113550504157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266516 n - (f1 (n + 1) - f1 n)

end

end A265721.P6398912113550504157

namespace A265721

/-- `A266516(n)-Δ[A213173(n)]` -/
def P6398912113550504157.Spec : Prop :=
  ∀ n, P6398912113550504157.a n = A265721 n

end A265721

/-! ## A265721.P9323936546381795751

`2*A266516(n)-A266850(n)`
-/

namespace A265721.P9323936546381795751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266516 n - A266850 n

end

end A265721.P9323936546381795751

namespace A265721

/-- `2*A266516(n)-A266850(n)` -/
def P9323936546381795751.Spec : Prop :=
  ∀ n, P9323936546381795751.a n = A265721 n

end A265721

/-! ## A265721.P16268028632300989441

`and(A266176(n), A267681(n))`
-/

namespace A265721.P16268028632300989441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266176 n) (A267681 n)

end

end A265721.P16268028632300989441

namespace A265721

/-- `and(A266176(n), A267681(n))` -/
def P16268028632300989441.Spec : Prop :=
  ∀ n, P16268028632300989441.a n = A265721 n

end A265721

/-! ## A265721.P15657061274235307438

`and(A266516(n), A267681(n))`
-/

namespace A265721.P15657061274235307438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266516 n) (A267681 n)

end

end A265721.P15657061274235307438

namespace A265721

/-- `and(A266516(n), A267681(n))` -/
def P15657061274235307438.Spec : Prop :=
  ∀ n, P15657061274235307438.a n = A265721 n

end A265721

/-! ## A265721.P4331419988916554131

`and(A266668(n), A267681(n))`
-/

namespace A265721.P4331419988916554131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266668 n) (A267681 n)

end

end A265721.P4331419988916554131

namespace A265721

/-- `and(A266668(n), A267681(n))` -/
def P4331419988916554131.Spec : Prop :=
  ∀ n, P4331419988916554131.a n = A265721 n

end A265721

/-! ## A265721.P4255131599422888523

`and(A266850(n), A267681(n))`
-/

namespace A265721.P4255131599422888523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266850 n) (A267681 n)

end

end A265721.P4255131599422888523

namespace A265721

/-- `and(A266850(n), A267681(n))` -/
def P4255131599422888523.Spec : Prop :=
  ∀ n, P4255131599422888523.a n = A265721 n

end A265721

/-! ## A265721.P16348231074206311073

`and(A267351(n), A267681(n))`
-/

namespace A265721.P16348231074206311073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267351 n) (A267681 n)

end

end A265721.P16348231074206311073

namespace A265721

/-- `and(A267351(n), A267681(n))` -/
def P16348231074206311073.Spec : Prop :=
  ∀ n, P16348231074206311073.a n = A265721 n

end A265721

/-!
# A265722: Number of ON (black) cells in the n-th iteration of the "Rule 1" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265722, the canonical program `A265722.P13405771964709798397` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265722 has offset 0).

The definition of A265722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265722.P9404505992342035008

`(2*(n-1))^(n%2)`
-/

namespace A265722.P9404505992342035008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℤ) - 1)) ^ (n % 2)

end

end A265722.P9404505992342035008

namespace A265722

/-- `(2*(n-1))^(n%2)` -/
def P9404505992342035008.Spec : Prop :=
  ∀ n, P9404505992342035008.a n = A265722 n

end A265722

/-! ## A265722.P3427781567606026476

`(2*(n-1))^and(1, n)`
-/

namespace A265722.P3427781567606026476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * ((n : ℤ) - 1)) ^ Nat.land 1 n

end

end A265722.P3427781567606026476

namespace A265722

/-- `(2*(n-1))^and(1, n)` -/
def P3427781567606026476.Spec : Prop :=
  ∀ n, P3427781567606026476.a n = A265722 n

end A265722

/-! ## A265722.P13405771964709798397

`gcd((1-n)², xor(1, n²))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A265722

/-- `gcd((1-n)², xor(1, n²))` -/
def P13405771964709798397.Spec : Prop :=
  ∀ n, (P13405771964709798397.a n : ℤ) = A265722 n

theorem P13405771964709798397.correct : P13405771964709798397.Spec := by
  intro n
  simp only [A265722]

end A265722

/-! ## A265722.P16450372152630770804

`and(-3, (2*n)^and(1, n))`
-/

namespace A265722.P16450372152630770804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) ((2 * n) ^ Nat.land 1 n : ℤ)

end

end A265722.P16450372152630770804

namespace A265722

/-- `and(-3, (2*n)^and(1, n))` -/
def P16450372152630770804.Spec : Prop :=
  ∀ n, P16450372152630770804.a n = A265722 n

end A265722

/-! ## A265722.P4019602024386186209

`xor(2, 2*n)^and(1, n)²`
-/

namespace A265722.P4019602024386186209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (2 * n) ^ Nat.land 1 n ^ 2

end

end A265722.P4019602024386186209

namespace A265722

/-- `xor(2, 2*n)^and(1, n)²` -/
def P4019602024386186209.Spec : Prop :=
  ∀ n, (P4019602024386186209.a n : ℤ) = A265722 n

end A265722

/-! ## A265722.P13040156395952895277

`Δ[(n-2)*xor(1, n)/2]`
-/

namespace A265722.P13040156395952895277
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2 : ℚ) * ((Nat.xor 1 n : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265722.P13040156395952895277

namespace A265722

/-- `Δ[(n-2)*xor(1, n)/2]` -/
def P13040156395952895277.Spec : Prop :=
  ∀ n, P13040156395952895277.a n = (A265722 n : ℚ)

end A265722

/-! ## A265722.P12269139097120452406

`n-Δ[(n-2)*and(1, n)]`
-/

namespace A265722.P12269139097120452406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A265722.P12269139097120452406

namespace A265722

/-- `n-Δ[(n-2)*and(1, n)]` -/
def P12269139097120452406.Spec : Prop :=
  ∀ n, P12269139097120452406.a n = A265722 n

end A265722

/-! ## A265722.P4267126911692953906

`Δ[(n-2)*or(1, n)]-n`
-/

namespace A265722.P4267126911692953906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * (Nat.lor 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A265722.P4267126911692953906

namespace A265722

/-- `Δ[(n-2)*or(1, n)]-n` -/
def P4267126911692953906.Spec : Prop :=
  ∀ n, P4267126911692953906.a n = A265722 n

end A265722

/-! ## A265722.P14023241970330853684

`n-Δ[(n-1)^and(1, n)]`
-/

namespace A265722.P14023241970330853684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A265722.P14023241970330853684

namespace A265722

/-- `n-Δ[(n-1)^and(1, n)]` -/
def P14023241970330853684.Spec : Prop :=
  ∀ n, P14023241970330853684.a n = A265722 n

end A265722

/-! ## A265722.P17981897959111799103

`(2*n-3)*and(1, n)+1`
-/

namespace A265722.P17981897959111799103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 3) * (Nat.land 1 n : ℤ) + 1

end

end A265722.P17981897959111799103

namespace A265722

/-- `(2*n-3)*and(1, n)+1` -/
def P17981897959111799103.Spec : Prop :=
  ∀ n, P17981897959111799103.a n = A265722 n

end A265722

/-! ## A265722.P13467663053210663252

`gcd(2*(1-n), (n+1)%2)`
-/

namespace A265722.P13467663053210663252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (1 - (n : ℤ))) (((n + 1) % 2 : ℕ) : ℤ)

end

end A265722.P13467663053210663252

namespace A265722

/-- `gcd(2*(1-n), (n+1)%2)` -/
def P13467663053210663252.Spec : Prop :=
  ∀ n, (P13467663053210663252.a n : ℤ) = A265722 n

end A265722

/-! ## A265722.P10209026751800458388

`gcd(1-gcd(2, n), 2*(n-1))`
-/

namespace A265722.P10209026751800458388
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - (Nat.gcd 2 n : ℤ)) (2 * ((n : ℤ) - 1))

end

end A265722.P10209026751800458388

namespace A265722

/-- `gcd(1-gcd(2, n), 2*(n-1))` -/
def P10209026751800458388.Spec : Prop :=
  ∀ n, (P10209026751800458388.a n : ℤ) = A265722 n

end A265722

/-! ## A265722.P6831630389791756679

`gcd(2-lcm(2, n), and(1, n+1))`
-/

namespace A265722.P6831630389791756679
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - (Nat.lcm 2 n : ℤ)) (Nat.land 1 (n + 1) : ℤ)

end

end A265722.P6831630389791756679

namespace A265722

/-- `gcd(2-lcm(2, n), and(1, n+1))` -/
def P6831630389791756679.Spec : Prop :=
  ∀ n, (P6831630389791756679.a n : ℤ) = A265722 n

end A265722

/-! ## A265722.P40741838962330071

`2*n-xor(3, a(n-1))` with `a(0)=1`
-/

namespace A265722.P40741838962330071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - Int.xor 3 (a (n - 1))

end

end A265722.P40741838962330071

namespace A265722

/-- `2*n-xor(3, a(n-1))` -/
def P40741838962330071.Spec : Prop :=
  ∀ n, P40741838962330071.a n = A265722 n

end A265722

/-! ## A265722.P3981466147915797517

`C(xor(2, 2*n), (n+2)%2)`
-/

namespace A265722.P3981466147915797517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.xor 2 (2 * n)) ((n + 2) % 2)

end

end A265722.P3981466147915797517

namespace A265722

/-- `C(xor(2, 2*n), (n+2)%2)` -/
def P3981466147915797517.Spec : Prop :=
  ∀ n, (P3981466147915797517.a n : ℤ) = A265722 n

end A265722

/-! ## A265722.P7763633261080514385

`gcd(n-2+n, and(1, n-1))`
-/

namespace A265722.P7763633261080514385
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - 2 + (n : ℤ)) (Int.land 1 ((n : ℤ) - 1))

end

end A265722.P7763633261080514385

namespace A265722

/-- `gcd(n-2+n, and(1, n-1))` -/
def P7763633261080514385.Spec : Prop :=
  ∀ n, (P7763633261080514385.a n : ℤ) = A265722 n

end A265722

/-! ## A265722.P8921145681020281918

`n-xor(3, a(n-1))+n` with `a(0)=1`
-/

namespace A265722.P8921145681020281918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - Int.xor 3 (a (n - 1)) + (n : ℤ)

end

end A265722.P8921145681020281918

namespace A265722

/-- `n-xor(3, a(n-1))+n` -/
def P8921145681020281918.Spec : Prop :=
  ∀ n, P8921145681020281918.a n = A265722 n

end A265722

/-! ## A265722.P6896025364982676040

`n-(xor(3, a(n-1))-n)` with `a(0)=1`
-/

namespace A265722.P6896025364982676040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) - (Int.xor 3 (a (n - 1)) - (n : ℤ))

end

end A265722.P6896025364982676040

namespace A265722

/-- `n-(xor(3, a(n-1))-n)` -/
def P6896025364982676040.Spec : Prop :=
  ∀ n, P6896025364982676040.a n = A265722 n

end A265722

/-! ## A265722.P8535314164886082688

`C(2*and(n, n-1), and(1, n))`
-/

namespace A265722.P8535314164886082688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * Int.land (n : ℤ) ((n : ℤ) - 1)).toNat (Nat.land 1 n)

end

end A265722.P8535314164886082688

namespace A265722

/-- `C(2*and(n, n-1), and(1, n))` -/
def P8535314164886082688.Spec : Prop :=
  ∀ n, (P8535314164886082688.a n : ℤ) = A265722 n

end A265722

/-! ## A265722.P1129561858079444298

`ogf((1-x^2+4x^3)/(1-2x^2+x^4))`
-/

namespace A265722.P1129561858079444298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 4] [1, 0, -2, 0, 1] n

end

end A265722.P1129561858079444298

namespace A265722

/-- `ogf((1-x^2+4x^3)/(1-2x^2+x^4))` -/
def P1129561858079444298.Spec : Prop :=
  ∀ n, P1129561858079444298.a n = A265722 n

end A265722

/-!
# A265723: Number of OFF (white) cells in the n-th iteration of the "Rule 1" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265723, the canonical program `A265723.P17642993955887844932` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265723 has offset 0).

The definition of A265723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265723.P17642993955887844932

`abs(Δ[lcm(2, n+1)]-n)`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A265723

/-- `abs(Δ[lcm(2, n+1)]-n)` -/
def P17642993955887844932.Spec : Prop :=
  ∀ n, P17642993955887844932.a n = A265723 n

theorem P17642993955887844932.correct : P17642993955887844932.Spec := by
  intro n
  simp only [A265723]

end A265723

/-! ## A265723.P2736286973880061342

`xor(2, a(n-2))+2` with `a(0)=0, a(1)=3`
-/

namespace A265723.P2736286973880061342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  Nat.xor 2 (a (n - 2)) + 2

end

end A265723.P2736286973880061342

namespace A265723

/-- `xor(2, a(n-2))+2` -/
def P2736286973880061342.Spec : Prop :=
  ∀ n, (P2736286973880061342.a n : ℤ) = A265723 n

end A265723

/-! ## A265723.P7633019746613634387

`1-xor(-3, a(n-2))` with `a(0)=0, a(1)=3`
-/

namespace A265723.P7633019746613634387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n a =>
  1 - Int.xor (-3) (a (n - 2))

end

end A265723.P7633019746613634387

namespace A265723

/-- `1-xor(-3, a(n-2))` -/
def P7633019746613634387.Spec : Prop :=
  ∀ n, P7633019746613634387.a n = A265723 n

end A265723

/-! ## A265723.P2211855255481171799

`∑[1-xor(3, a(n-1))]` with `a(0)=0, a(1)=3`
-/

namespace A265723.P2211855255481171799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  1 - Int.xor 3 (f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265723.P2211855255481171799

namespace A265723

/-- `∑[1-xor(3, a(n-1))]` -/
def P2211855255481171799.Spec : Prop :=
  ∀ n, P2211855255481171799.a n = A265723 n

end A265723

/-! ## A265723.P120011970472736332

`or(3, 2*n)-a(n-1)` with `a(0)=0`
-/

namespace A265723.P120011970472736332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (Nat.lor 3 (2 * n) : ℤ) - a (n - 1)

end

end A265723.P120011970472736332

namespace A265723

/-- `or(3, 2*n)-a(n-1)` -/
def P120011970472736332.Spec : Prop :=
  ∀ n, P120011970472736332.a n = A265723 n

end A265723

/-! ## A265723.P13699704927887682272

`n%2+2*gcd(n, n%2)`
-/

namespace A265723.P13699704927887682272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 2 * Nat.gcd n (n % 2)

end

end A265723.P13699704927887682272

namespace A265723

/-- `n%2+2*gcd(n, n%2)` -/
def P13699704927887682272.Spec : Prop :=
  ∀ n, (P13699704927887682272.a n : ℤ) = A265723 n

end A265723

/-! ## A265723.P7171796494214253364

`ogf((3x+4x^2-3x^3)/(1-2x^2+x^4))`
-/

namespace A265723.P7171796494214253364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 4, -3] [1, 0, -2, 0, 1] n

end

end A265723.P7171796494214253364

namespace A265723

/-- `ogf((3x+4x^2-3x^3)/(1-2x^2+x^4))` -/
def P7171796494214253364.Spec : Prop :=
  ∀ n, P7171796494214253364.a n = A265723 n

end A265723

/-! ## A265723.P11929632946213235673

`(2*n-3)*char[2*n]+3`
-/

namespace A265723.P11929632946213235673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 3) * ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + 3

end

end A265723.P11929632946213235673

namespace A265723

/-- `(2*n-3)*char[2*n]+3` -/
def P11929632946213235673.Spec : Prop :=
  ∀ n, P11929632946213235673.a n = A265723 n

end A265723

/-! ## A265723.P15882478453520144895

`and(2*n+1, -(a(n-1)+1))` with `a(0)=0`
-/

namespace A265723.P15882478453520144895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (2 * n + 1 : ℤ) (-(a (n - 1) + 1))

end

end A265723.P15882478453520144895

namespace A265723

/-- `and(2*n+1, -(a(n-1)+1))` -/
def P15882478453520144895.Spec : Prop :=
  ∀ n, P15882478453520144895.a n = A265723 n

end A265723

/-! ## A265723.P8312650805931727456

`and(2*n+1, and(3, 2*n+1)!-3)`
-/

namespace A265723.P8312650805931727456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) ((Nat.factorial (Nat.land 3 (2 * n + 1)) : ℤ) - 3)

end

end A265723.P8312650805931727456

namespace A265723

/-- `and(2*n+1, and(3, 2*n+1)!-3)` -/
def P8312650805931727456.Spec : Prop :=
  ∀ n, P8312650805931727456.a n = A265723 n

end A265723

/-! ## A265723.P14546175139508658300

`and(2*n+1, floor(1-ϕ-a(n-1)))` with `a(0)=0`
-/

namespace A265723.P14546175139508658300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (2 * n + 1 : ℤ) ⌊1 - Real.goldenRatio - (a (n - 1) : ℝ)⌋

end

end A265723.P14546175139508658300

namespace A265723

/-- `and(2*n+1, floor(1-ϕ-a(n-1)))` -/
def P14546175139508658300.Spec : Prop :=
  ∀ n, P14546175139508658300.a n = A265723 n

end A265723

/-! ## A265723.P2705892456168518903

`and(2*n+1, Δ[n-(a(n-1)+1)])` with `a(0)=1`
-/

namespace A265723.P2705892456168518903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - (f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (f1 (n + 1) - f1 n)

end

end A265723.P2705892456168518903

namespace A265723

/-- `and(2*n+1, Δ[n-(a(n-1)+1)])` -/
def P2705892456168518903.Spec : Prop :=
  ∀ n, P2705892456168518903.a n = A265723 n

end A265723

/-! ## A265723.P7973240450067979365

`and(2*n+1, ϕ-(a(n-1)+ϕ²))` with `a(0)=0`
-/

namespace A265723.P7973240450067979365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.land (2 * n + 1 : ℤ) (SequenceMachineLib.roundAway (Real.goldenRatio - ((a (n - 1) : ℝ) + Real.goldenRatio ^ 2)))

end

end A265723.P7973240450067979365

namespace A265723

/-- `and(2*n+1, ϕ-(a(n-1)+ϕ²))` -/
def P7973240450067979365.Spec : Prop :=
  ∀ n, P7973240450067979365.a n = A265723 n

end A265723

/-! ## A265723.P11490362509998894821

`and(n+1+n, Δ[n-1-a(n-1)])` with `a(0)=1`
-/

namespace A265723.P11490362509998894821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (n : ℤ) - 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 + n : ℤ) (f1 (n + 1) - f1 n)

end

end A265723.P11490362509998894821

namespace A265723

/-- `and(n+1+n, Δ[n-1-a(n-1)])` -/
def P11490362509998894821.Spec : Prop :=
  ∀ n, P11490362509998894821.a n = A265723 n

end A265723

/-! ## A265723.P17436827924342179189

`floor((a(n-2)+4)/gcd(2, a(n-1)))` with `a(0)=0, a(1)=3, a(2)=4`
-/

namespace A265723.P17436827924342179189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4] fun n a =>
  ⌊(a (n - 2) + 4 : ℚ) / (Int.gcd 2 (a (n - 1)) : ℚ)⌋

end

end A265723.P17436827924342179189

namespace A265723

/-- `floor((a(n-2)+4)/gcd(2, a(n-1)))` -/
def P17436827924342179189.Spec : Prop :=
  ∀ n, P17436827924342179189.a n = A265723 n

end A265723

/-! ## A265723.P11410312974199300350

`xor(2, A266303(xor(1, n)))`
-/

namespace A265723.P11410312974199300350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A266303 (Nat.xor 1 n))

end

end A265723.P11410312974199300350

namespace A265723

/-- `xor(2, A266303(xor(1, n)))` -/
def P11410312974199300350.Spec : Prop :=
  ∀ n, P11410312974199300350.a n = A265723 n

end A265723

/-! ## A265723.P9196561878350969067

`xor(1, A088440(2*n)+1)`
-/

namespace A265723.P9196561878350969067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A088440 (2 * n) + 1)

end

end A265723.P9196561878350969067

namespace A265723

/-- `xor(1, A088440(2*n)+1)` -/
def P9196561878350969067.Spec : Prop :=
  ∀ n, P9196561878350969067.a n = A265723 n

end A265723

/-! ## A265723.P8426340675469575399

`and(2*n+1, A049071(n))`
-/

namespace A265723.P8426340675469575399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n + 1 : ℤ) (A049071 n)

end

end A265723.P8426340675469575399

namespace A265723

/-- `and(2*n+1, A049071(n))` -/
def P8426340675469575399.Spec : Prop :=
  ∀ n, P8426340675469575399.a n = A265723 n

end A265723

/-! ## A265723.P8531179276504710833

`A047414(A141310(n))`
-/

namespace A265723.P8531179276504710833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047414 (A141310 n).toNat

end

end A265723.P8531179276504710833

namespace A265723

/-- `A047414(A141310(n))` -/
def P8531179276504710833.Spec : Prop :=
  ∀ n, P8531179276504710833.a n = A265723 n

end A265723

/-! ## A265723.P12526009984453421057

`A008588(n)/A267352(n)`
-/

namespace A265723.P12526009984453421057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008588 n : ℚ) / (A267352 n : ℚ)

end

end A265723.P12526009984453421057

namespace A265723

/-- `A008588(n)/A267352(n)` -/
def P12526009984453421057.Spec : Prop :=
  ∀ n, P12526009984453421057.a n = (A265723 n : ℚ)

end A265723

/-!
# A265724: Total number of OFF (white) cells after n iterations of the "Rule 1" elementary cellular automaton starting with a single ON (black) cell.

The programs for A265724, the canonical program `A265724.P9684817788164361875` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265724 has offset 0).

The definition of A265724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265724.P9684817788164361875

`∑[abs(Δ[lcm(2, n+1)]-n)]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A265724

/-- `∑[abs(Δ[lcm(2, n+1)]-n)]` -/
def P9684817788164361875.Spec : Prop :=
  ∀ n, P9684817788164361875.a n = A265724 n

theorem P9684817788164361875.correct : P9684817788164361875.Spec := by
  intro n
  simp only [A265724]

end A265724

/-! ## A265724.P9654957197231024254

`∑[n]+gcd(n, n%2)+n`
-/

namespace A265724.P9654957197231024254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd n (n % 2) + n

end

end A265724.P9654957197231024254

namespace A265724

/-- `∑[n]+gcd(n, n%2)+n` -/
def P9654957197231024254.Spec : Prop :=
  ∀ n, (P9654957197231024254.a n : ℤ) = A265724 n

end A265724

/-! ## A265724.P11475907043268055806

`∑[xor(2, a(n-2))+2]` with `a(0)=0, a(1)=3`
-/

namespace A265724.P11475907043268055806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  Nat.xor 2 (f1 (n - 2)) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265724.P11475907043268055806

namespace A265724

/-- `∑[xor(2, a(n-2))+2]` -/
def P11475907043268055806.Spec : Prop :=
  ∀ n, (P11475907043268055806.a n : ℤ) = A265724 n

end A265724

/-! ## A265724.P8246095158036345074

`2*n+C(and(n, -2), 2)+n`
-/

namespace A265724.P8246095158036345074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + (Nat.choose (Int.land (n : ℤ) (-2)).toNat 2 + n)

end

end A265724.P8246095158036345074

namespace A265724

/-- `2*n+C(and(n, -2), 2)+n` -/
def P8246095158036345074.Spec : Prop :=
  ∀ n, (P8246095158036345074.a n : ℤ) = A265724 n

end A265724

/-! ## A265724.P8678170284765361801

`C(and(n, -2), 2)+n+n+n`
-/

namespace A265724.P8678170284765361801
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (n : ℤ) (-2)).toNat 2 + n + n + n

end

end A265724.P8678170284765361801

namespace A265724

/-- `C(and(n, -2), 2)+n+n+n` -/
def P8678170284765361801.Spec : Prop :=
  ∀ n, (P8678170284765361801.a n : ℤ) = A265724 n

end A265724

/-! ## A265724.P11222936395624964626

`∑[n]+n^∑[(-1)^n]+n`
-/

namespace A265724.P11222936395624964626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + ((n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ) + (n : ℚ))

end

end A265724.P11222936395624964626

namespace A265724

/-- `∑[n]+n^∑[(-1)^n]+n` -/
def P11222936395624964626.Spec : Prop :=
  ∀ n, P11222936395624964626.a n = (A265724 n : ℚ)

end A265724

/-! ## A265724.P12065225540001708866

`∑[2*a(n-2)-a(n-4)]` with `a(0)=0, a(1)=3, a(2)=4, a(3)=3`
-/

namespace A265724.P12065225540001708866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4, 3] fun n f1 =>
  2 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265724.P12065225540001708866

namespace A265724

/-- `∑[2*a(n-2)-a(n-4)]` -/
def P12065225540001708866.Spec : Prop :=
  ∀ n, P12065225540001708866.a n = A265724 n

end A265724

/-! ## A265724.P6197038874296750515

`∑[∑[4-a(n-1)]-a(n-1)]` with `a(0)=0, a(1)=3, a(2)=4`
-/

namespace A265724.P6197038874296750515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4] fun n f2 =>
  4 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 3, 4] fun n f1 =>
  ∑ j ∈ Finset.range (n + 1), f2 j - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265724.P6197038874296750515

namespace A265724

/-- `∑[∑[4-a(n-1)]-a(n-1)]` -/
def P6197038874296750515.Spec : Prop :=
  ∀ n, P6197038874296750515.a n = A265724 n

end A265724

/-! ## A265724.P6147323925587731237

`∑[A265723(n)]`
-/

namespace A265724.P6147323925587731237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265724.P6147323925587731237

namespace A265724

/-- `∑[A265723(n)]` -/
def P6147323925587731237.Spec : Prop :=
  ∀ n, P6147323925587731237.a n = A265724 n

end A265724

/-! ## A265724.P17839943181968570970

`∪[A014105(n), A033537(n)]`
-/

namespace A265724.P17839943181968570970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014105 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033537 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265724.P17839943181968570970

namespace A265724

/-- `∪[A014105(n), A033537(n)]` -/
def P17839943181968570970.Spec : Prop :=
  ∀ n, (P17839943181968570970.a n : ℤ) = A265724 n

end A265724

/-! ## A265724.P14802942673664138475

`∑[A042948(A141310(n))-1]`
-/

namespace A265724.P14802942673664138475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A141310 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A265724.P14802942673664138475

namespace A265724

/-- `∑[A042948(A141310(n))-1]` -/
def P14802942673664138475.Spec : Prop :=
  ∀ n, P14802942673664138475.a n = A265724 n

end A265724

/-! ## A265724.P14576983434084564908

`A069981(A042963(n+2))`
-/

namespace A265724.P14576983434084564908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069981 (A042963 (n + 2)).toNat

end

end A265724.P14576983434084564908

namespace A265724

/-- `A069981(A042963(n+2))` -/
def P14576983434084564908.Spec : Prop :=
  ∀ n, P14576983434084564908.a n = A265724 n

end A265724

/-! ## A265724.P15816179868760131205

`eq[2, A092543(n+2)]`
-/

namespace A265724.P15816179868760131205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092543 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265724.P15816179868760131205

namespace A265724

/-- `eq[2, A092543(n+2)]` -/
def P15816179868760131205.Spec : Prop :=
  ∀ n, (P15816179868760131205.a n : ℤ) = A265724 n

end A265724

/-! ## A265724.P575905989224520026

`eq[3, A122506(n+3)]`
-/

namespace A265724.P575905989224520026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122506 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265724.P575905989224520026

namespace A265724

/-- `eq[3, A122506(n+3)]` -/
def P575905989224520026.Spec : Prop :=
  ∀ n, (P575905989224520026.a n : ℤ) = A265724 n

end A265724

/-! ## A265724.P6742156617683899892

`A023444(A373662(n+1))`
-/

namespace A265724.P6742156617683899892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A373662 (n + 1)).toNat

end

end A265724.P6742156617683899892

namespace A265724

/-- `A023444(A373662(n+1))` -/
def P6742156617683899892.Spec : Prop :=
  ∀ n, P6742156617683899892.a n = A265724 n

end A265724

/-! ## A265724.P2240489813104679362

`eq[A055892(n+1), A097807(n)]`
-/

namespace A265724.P2240489813104679362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A265724.P2240489813104679362

namespace A265724

/-- `eq[A055892(n+1), A097807(n)]` -/
def P2240489813104679362.Spec : Prop :=
  ∀ n, (P2240489813104679362.a n : ℤ) = A265724 n

end A265724

/-! ## A265724.P4419595763633500708

`eq[A055892(n+1), A122750(n)]`
-/

namespace A265724.P4419595763633500708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122750 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A265724.P4419595763633500708

namespace A265724

/-- `eq[A055892(n+1), A122750(n)]` -/
def P4419595763633500708.Spec : Prop :=
  ∀ n, (P4419595763633500708.a n : ℤ) = A265724 n

end A265724

/-! ## A265724.P13365423604915762433

`eq[A055892(n+1), A128174(n+1)]`
-/

namespace A265724.P13365423604915762433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A265724.P13365423604915762433

namespace A265724

/-- `eq[A055892(n+1), A128174(n+1)]` -/
def P13365423604915762433.Spec : Prop :=
  ∀ n, (P13365423604915762433.a n : ℤ) = A265724 n

end A265724

/-! ## A265724.P1754747414630384905

`eq[A172467(n+1), A211197(n+1)]`
-/

namespace A265724.P1754747414630384905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172467 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211197 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A265724.P1754747414630384905

namespace A265724

/-- `eq[A172467(n+1), A211197(n+1)]` -/
def P1754747414630384905.Spec : Prop :=
  ∀ n, (P1754747414630384905.a n : ℤ) = A265724 n

end A265724

/-! ## A265724.P3656725754085308271

`eq[A055892(n+1), A078298(n)]`
-/

namespace A265724.P3656725754085308271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055892 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078298 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A265724.P3656725754085308271

namespace A265724

/-- `eq[A055892(n+1), A078298(n)]` -/
def P3656725754085308271.Spec : Prop :=
  ∀ n, (P3656725754085308271.a n : ℤ) = A265724 n

end A265724

/-!
# A265725: Number of binary strings of length n having at least one run of length at least 4.

The programs for A265725, the canonical program `A265725.P12424624890549814316` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265725 has offset 0).

The definition of A265725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265725.P3304893078642140739

`2^(n-3)+a(n-1)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`
-/

namespace A265725.P3304893078642140739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 0, 0] fun n a =>
  (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ) + a (n - 1) + a (n - 2) + a (n - 3)

end

end A265725.P3304893078642140739

namespace A265725

/-- `2^(n-3)+a(n-1)+a(n-2)+a(n-3)` -/
def P3304893078642140739.Spec : Prop :=
  ∀ n, P3304893078642140739.a n = (A265725 n : ℚ)

end A265725

/-! ## A265725.P12424624890549814316

`2^n-A135491(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A265725

/-- `2^n-A135491(n)` -/
def P12424624890549814316.Spec : Prop :=
  ∀ n, P12424624890549814316.a n = A265725 n

theorem P12424624890549814316.correct : P12424624890549814316.Spec := by
  intro n
  simp only [A265725]

end A265725

/-! ## A265725.P13400025466649255015

`2^n-A230216(n+2)/4`
-/

namespace A265725.P13400025466649255015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) - (A230216 (n + 2) : ℚ) / 4

end

end A265725.P13400025466649255015

namespace A265725

/-- `2^n-A230216(n+2)/4` -/
def P13400025466649255015.Spec : Prop :=
  ∀ n, P13400025466649255015.a n = (A265725 n : ℚ)

end A265725

/-! ## A265725.P16111142217454852432

`A133140(n)-A288599(n)`
-/

namespace A265725.P16111142217454852432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133140 n - A288599 n

end

end A265725.P16111142217454852432

namespace A265725

/-- `A133140(n)-A288599(n)` -/
def P16111142217454852432.Spec : Prop :=
  ∀ n, P16111142217454852432.a n = A265725 n

end A265725

/-! ## A265725.P12934176053321419924

`abs(A000079(n)-A135491(n))`
-/

namespace A265725.P12934176053321419924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A135491 n|

end

end A265725.P12934176053321419924

namespace A265725

/-- `abs(A000079(n)-A135491(n))` -/
def P12934176053321419924.Spec : Prop :=
  ∀ n, P12934176053321419924.a n = A265725 n

end A265725

/-! ## A265725.P12553700915626065590

`A000051(n)-(A135491(n)+1)`
-/

namespace A265725.P12553700915626065590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A135491 n + 1)

end

end A265725.P12553700915626065590

namespace A265725

/-- `A000051(n)-(A135491(n)+1)` -/
def P12553700915626065590.Spec : Prop :=
  ∀ n, P12553700915626065590.a n = A265725 n

end A265725

/-! ## A265725.P10199702562319312104

`A000225(n)+1-A135491(n)`
-/

namespace A265725.P10199702562319312104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (1 - A135491 n)

end

end A265725.P10199702562319312104

namespace A265725

/-- `A000225(n)+1-A135491(n)` -/
def P10199702562319312104.Spec : Prop :=
  ∀ n, P10199702562319312104.a n = A265725 n

end A265725

/-! ## A265725.P7624032290429398589

`A000918(n)+2-A135491(n)`
-/

namespace A265725.P7624032290429398589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n + (2 - A135491 n)

end

end A265725.P7624032290429398589

namespace A265725

/-- `A000918(n)+2-A135491(n)` -/
def P7624032290429398589.Spec : Prop :=
  ∀ n, P7624032290429398589.a n = A265725 n

end A265725

/-! ## A265725.P6938433637559985705

`A000079(n)-Δ[A054668(n+1)]`
-/

namespace A265725.P6938433637559985705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054668 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (f1 (n + 1) - f1 n)

end

end A265725.P6938433637559985705

namespace A265725

/-- `A000079(n)-Δ[A054668(n+1)]` -/
def P6938433637559985705.Spec : Prop :=
  ∀ n, P6938433637559985705.a n = A265725 n

end A265725

/-!
# A265726: Primitive weird numbers whose abundance is a record.

The programs for A265726, there is no canonical definition to state claims against.
-/

/-! ## A265726.P8441581911316990951

`A002975(eq[A219199(n+2), A294881(2*n+3)])`
-/

namespace A265726.P8441581911316990951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219199 (n + 2 + 28)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294881 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002975 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A265726.P8441581911316990951

/-!
# A265727: Least primitive weird number, pwn, (A002975) which is divisible by the n-th prime (A000040).

The programs for A265727, there is no canonical definition to state claims against.
-/

/-! ## A265727.P11678433427946946981

`A329190(A042815(n))`
-/

namespace A265727.P11678433427946946981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329190 (A042815 n).toNat

end

end A265727.P11678433427946946981

/-!
# A265731: Powers C^z = A^x + B^y with all positive integers and x,y,z > 1, without multiplicity.

The programs for A265731, there is no canonical definition to state claims against.
-/

/-! ## A265731.P13581566714975491437

`record[A265732(A103391(n+1))]`
-/

namespace A265731.P13581566714975491437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265732 (A103391 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265731.P13581566714975491437

/-! ## A265731.P10581785295671165235

`record[A265732(A323234(n+1))]`
-/

namespace A265731.P10581785295671165235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265732 (A323234 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265731.P10581785295671165235

/-! ## A265731.P7695103880996645581

`record[A265732(A323405(n+1))]`
-/

namespace A265731.P7695103880996645581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265732 (A323405 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265731.P7695103880996645581

/-! ## A265731.P117571235646237923

`record[A265732(n+1)%A265732(n+5)]`
-/

namespace A265731.P117571235646237923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265732 (n + 1)) (A265732 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265731.P117571235646237923

/-! ## A265731.P3819670433964270319

`record[A265732(A026233(n+1))]`
-/

namespace A265731.P3819670433964270319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265732 (A026233 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265731.P3819670433964270319

/-! ## A265731.P14666275864072718798

`record[A265732(A026238(n+2))]`
-/

namespace A265731.P14666275864072718798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265732 (A026238 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265731.P14666275864072718798

/-! ## A265731.P17957576393536412907

`record[A265732(A032742(n+1))]`
-/

namespace A265731.P17957576393536412907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265732 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265731.P17957576393536412907

/-! ## A265731.P12431479087677174469

`∩[A001597(n+1), A070049(n+1)]`
-/

namespace A265731.P12431479087677174469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265731.P12431479087677174469

/-!
# A265732: Powers C^z = A^x + B^y with all positive integers and x,y,z > 1, with multiplicity.

The programs for A265732, there is no canonical definition to state claims against.
-/

/-! ## A265732.P4955141110024449272

`A377468(or(A104980(n), A257046(n+2)))`
-/

namespace A265732.P4955141110024449272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377468 (Int.lor (A104980 n) (A257046 (n + 2))).toNat

end

end A265732.P4955141110024449272

/-! ## A265732.P10307334971729110301

`A377468(A248902(n+1)+A162247(n+1))`
-/

namespace A265732.P10307334971729110301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377468 (A248902 (n + 1) + A162247 (n + 1)).toNat

end

end A265732.P10307334971729110301

/-! ## A265732.P18407264170224936496

`A143720(A100549(3^n))`
-/

namespace A265732.P18407264170224936496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143720 (A100549 (3 ^ n)).toNat

end

end A265732.P18407264170224936496

/-! ## A265732.P13139639003183264384

`A377468(A372439(2*n+3)+A143913(n))`
-/

namespace A265732.P13139639003183264384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377468 (A372439 (2 * n + 3) + A143913 n).toNat

end

end A265732.P13139639003183264384

/-! ## A265732.P4263783074135163655

`A377468(A029903(3*n+4)-A058249(n+1))`
-/

namespace A265732.P4263783074135163655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377468 (A029903 (3 * n + 4) - A058249 (n + 1)).toNat

end

end A265732.P4263783074135163655

/-!
# A265734: Permutation of nonnegative integers: a(n) = n + floor(n/5)*(-1)^(n mod 5).

The programs for A265734, the canonical program `A265734.P6824317884871903760` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265734 has offset 0).

The definition of A265734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265734.P13964177840735767209

`n+floor(n/5)*(-1)^(n%5)`
-/

namespace A265734.P13964177840735767209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + ⌊(n : ℚ) / 5⌋ * (-1) ^ (n % 5)

end

end A265734.P13964177840735767209

namespace A265734

/-- `n+floor(n/5)*(-1)^(n%5)` -/
def P13964177840735767209.Spec : Prop :=
  ∀ n, P13964177840735767209.a n = A265734 n

end A265734

/-! ## A265734.P6824317884871903760

`2*a(n-5)-a(n-10)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=6, a(6)=5, a(7)=8, a(8)=7, a(9)=10`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A265734

/-- `2*a(n-5)-a(n-10)` -/
def P6824317884871903760.Spec : Prop :=
  ∀ n, P6824317884871903760.a n = A265734 n

theorem P6824317884871903760.correct : P6824317884871903760.Spec := by
  intro n
  simp only [A265734]

end A265734

/-! ## A265734.P12623649391781679370

`xor(1, a(n-5))+5` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A265734.P12623649391781679370
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 4] fun n a =>
  Nat.xor 1 (a (n - 5)) + 5

end

end A265734.P12623649391781679370

namespace A265734

/-- `xor(1, a(n-5))+5` -/
def P12623649391781679370.Spec : Prop :=
  ∀ n, (P12623649391781679370.a n : ℤ) = A265734 n

end A265734

/-! ## A265734.P15833324345135986046

`abs(A038608(A002266(n))+A038608(n))`
-/

namespace A265734.P15833324345135986046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038608 (A002266 n).toNat + A038608 n|

end

end A265734.P15833324345135986046

namespace A265734

/-- `abs(A038608(A002266(n))+A038608(n))` -/
def P15833324345135986046.Spec : Prop :=
  ∀ n, P15833324345135986046.a n = A265734 n

end A265734

/-! ## A265734.P17050383727651052266

`abs(A181983(A002266(n))+A181983(n))`
-/

namespace A265734.P17050383727651052266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A181983 (A002266 n).toNat + A181983 n|

end

end A265734.P17050383727651052266

namespace A265734

/-- `abs(A181983(A002266(n))+A181983(n))` -/
def P17050383727651052266.Spec : Prop :=
  ∀ n, P17050383727651052266.a n = A265734 n

end A265734

/-! ## A265734.P9746422374577426956

`A033999(n)*A038608(A002266(n))+n`
-/

namespace A265734.P9746422374577426956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A038608 (A002266 n).toNat + (n : ℤ)

end

end A265734.P9746422374577426956

namespace A265734

/-- `A033999(n)*A038608(A002266(n))+n` -/
def P9746422374577426956.Spec : Prop :=
  ∀ n, P9746422374577426956.a n = A265734 n

end A265734

/-! ## A265734.P6728965891029416983

`(A038608(A002266(n))+A038608(n))/A033999(n)`
-/

namespace A265734.P6728965891029416983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038608 (A002266 n).toNat + A038608 n : ℚ) / (A033999 n : ℚ)

end

end A265734.P6728965891029416983

namespace A265734

/-- `(A038608(A002266(n))+A038608(n))/A033999(n)` -/
def P6728965891029416983.Spec : Prop :=
  ∀ n, P6728965891029416983.a n = (A265734 n : ℚ)

end A265734

/-! ## A265734.P14801159656658086845

`A103627(A057355(2*n+1))+A090223(n)`
-/

namespace A265734.P14801159656658086845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A057355 (2 * n + 1)).toNat + A090223 n

end

end A265734.P14801159656658086845

namespace A265734

/-- `A103627(A057355(2*n+1))+A090223(n)` -/
def P14801159656658086845.Spec : Prop :=
  ∀ n, P14801159656658086845.a n = A265734 n

end A265734

/-! ## A265734.P1666584838318419570

`A103627(A057355(2*n+1))+A057354(2*n)`
-/

namespace A265734.P1666584838318419570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A057355 (2 * n + 1)).toNat + A057354 (2 * n)

end

end A265734.P1666584838318419570

namespace A265734

/-- `A103627(A057355(2*n+1))+A057354(2*n)` -/
def P1666584838318419570.Spec : Prop :=
  ∀ n, P1666584838318419570.a n = A265734 n

end A265734

/-!
# A265739: Numbers k such that there exists at least one integer in the interval [Pi*k - 1/k, Pi*k + 1/k].

The programs for A265739, there is no canonical definition to state claims against.
-/

/-! ## A265739.P5342609481658277998

`lt[n, A135296(n+1)]+1`
-/

namespace A265739.P5342609481658277998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135296 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A265739.P5342609481658277998

/-! ## A265739.P13921812991403923754

`lt[A135039(n+1)%(n+1), 2]+1`
-/

namespace A265739.P13921812991403923754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135039 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A265739.P13921812991403923754

/-! ## A265739.P14728907703456662995

`A062299(A265735(n+2))`
-/

namespace A265739.P14728907703456662995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062299 (A265735 (n + 2)).toNat

end

end A265739.P14728907703456662995

/-!
# A265742: Numbers k such that there exists at least an integer in the interval [e*k - 1/k, e*k + 1/k] where e = 2.71828... is Euler's number.

The programs for A265742, there is no canonical definition to state claims against.
-/

/-! ## A265742.P14306827875027114078

`A062276(A265741(n+2))`
-/

namespace A265742.P14306827875027114078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062276 (A265741 (n + 2)).toNat

end

end A265742.P14306827875027114078

/-! ## A265742.P5752178973192086124

`A032634(A265741(n+2)+1)`
-/

namespace A265742.P5752178973192086124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032634 (A265741 (n + 2) + 1).toNat

end

end A265742.P5752178973192086124

/-! ## A265742.P1975488184015745612

`lt[n, A233208(n+1)]+1`
-/

namespace A265742.P1975488184015745612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233208 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A265742.P1975488184015745612

/-! ## A265742.P16705876353920551700

`A320448(A072706(n))+A019555(n+1)`
-/

namespace A265742.P16705876353920551700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320448 (A072706 n).toNat + A019555 (n + 1)

end

end A265742.P16705876353920551700

/-!
# A265743: a(n) = number of terms of A005187 needed to sum to n using the greedy algorithm.

The programs for A265743, the canonical program `A265743.P10780089586930708631` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265743 has offset 0).

The definition of A265743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265743.P10780089586930708631

`a(A215020(n+1))+1` with `a(0)=0`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A265743

/-- `a(A215020(n+1))+1` -/
def P10780089586930708631.Spec : Prop :=
  ∀ n, (P10780089586930708631.a n : ℤ) = A265743 n

theorem P10780089586930708631.correct : P10780089586930708631.Spec := by
  intro n
  simp only [A265743]

end A265743

/-! ## A265743.P2596171891936656655

`A000029(a(A215020(n+1)))` with `a(0)=0`
-/

namespace A265743.P2596171891936656655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000029 (a (A215020 (n + 1)).toNat).toNat

end

end A265743.P2596171891936656655

namespace A265743

/-- `A000029(a(A215020(n+1)))` -/
def P2596171891936656655.Spec : Prop :=
  ∀ n, P2596171891936656655.a n = A265743 n

end A265743

/-! ## A265743.P8486403697241584865

`A000031(a(A215020(n+1)))` with `a(0)=0`
-/

namespace A265743.P8486403697241584865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000031 (a (A215020 (n + 1)).toNat).toNat

end

end A265743.P8486403697241584865

namespace A265743

/-- `A000031(a(A215020(n+1)))` -/
def P8486403697241584865.Spec : Prop :=
  ∀ n, P8486403697241584865.a n = A265743 n

end A265743

/-! ## A265743.P8838297688299135771

`A001972(a(A215020(n+1)))` with `a(0)=0`
-/

namespace A265743.P8838297688299135771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001972 (a (A215020 (n + 1)).toNat).toNat

end

end A265743.P8838297688299135771

namespace A265743

/-- `A001972(a(A215020(n+1)))` -/
def P8838297688299135771.Spec : Prop :=
  ∀ n, P8838297688299135771.a n = A265743 n

end A265743

/-! ## A265743.P5290915011645424786

`A005496(a(A215020(n+1)))` with `a(0)=0`
-/

namespace A265743.P5290915011645424786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005496 (a (A215020 (n + 1)).toNat).toNat

end

end A265743.P5290915011645424786

namespace A265743

/-- `A005496(a(A215020(n+1)))` -/
def P5290915011645424786.Spec : Prop :=
  ∀ n, P5290915011645424786.a n = A265743 n

end A265743

/-! ## A265743.P6420101854203500369

`A005555(a(A215020(n+1)))` with `a(0)=0`
-/

namespace A265743.P6420101854203500369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005555 (a (A215020 (n + 1)).toNat).toNat

end

end A265743.P6420101854203500369

namespace A265743

/-- `A005555(a(A215020(n+1)))` -/
def P6420101854203500369.Spec : Prop :=
  ∀ n, P6420101854203500369.a n = A265743 n

end A265743

/-! ## A265743.P4529457154002148851

`A008732(a(A215020(n+1)))` with `a(0)=0`
-/

namespace A265743.P4529457154002148851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A008732 (a (A215020 (n + 1)).toNat).toNat

end

end A265743.P4529457154002148851

namespace A265743

/-- `A008732(a(A215020(n+1)))` -/
def P4529457154002148851.Spec : Prop :=
  ∀ n, P4529457154002148851.a n = A265743 n

end A265743

/-! ## A265743.P14722922887283271730

`a(A029837(A182105(n+1)))+1` with `a(0)=0`
-/

namespace A265743.P14722922887283271730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A029837 (A182105 (n + 1)).toNat).toNat + 1

end

end A265743.P14722922887283271730

namespace A265743

/-- `a(A029837(A182105(n+1)))+1` -/
def P14722922887283271730.Spec : Prop :=
  ∀ n, (P14722922887283271730.a n : ℤ) = A265743 n

end A265743

/-!
# A265744: a(n) is the number of Pell numbers (A000129) needed to sum to n using the greedy algorithm (A317204).

The programs for A265744, there is no canonical definition to state claims against.
-/

/-! ## A265744.P15441377423167152646

`A007953(A317204(n))`
-/

namespace A265744.P15441377423167152646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A317204 n).toNat

end

end A265744.P15441377423167152646

/-! ## A265744.P16321323245782934212

`a(n-1)+1-A352427(n)` with `a(0)=0`
-/

namespace A265744.P16321323245782934212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (1 - A352427 n)

end

end A265744.P16321323245782934212

/-! ## A265744.P3727912381115450254

`A053735(A352417(n))`
-/

namespace A265744.P3727912381115450254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A352417 n).toNat

end

end A265744.P3727912381115450254

/-! ## A265744.P12608474247807475274

`A001222(A001316(record[A338251(n)]))`
-/

namespace A265744.P12608474247807475274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A265744.P12608474247807475274

/-! ## A265744.P10725433688722625908

`A000120(record[A338251(n)])`
-/

namespace A265744.P10725433688722625908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338251 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265744.P10725433688722625908

/-! ## A265744.P6994354575552372405

`A055091(eq[A055091(n), A275729(n)])`
-/

namespace A265744.P6994354575552372405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275729 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A265744.P6994354575552372405

/-! ## A265744.P7917627138457502500

`A000120(record[A317050(n)])`
-/

namespace A265744.P7917627138457502500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A265744.P7917627138457502500

/-! ## A265744.P16009796618949413709

`A001222(A001316(record[A317050(n)]))`
-/

namespace A265744.P16009796618949413709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001316 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A265744.P16009796618949413709

/-! ## A265744.P1973749829409641586

`A160385(eq[A160381(n), A160385(2*n)])`
-/

namespace A265744.P1973749829409641586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A265744.P1973749829409641586

/-! ## A265744.P9502169073354954130

`A000120(lt[A160385(n), A160381(2*n+1)])`
-/

namespace A265744.P9502169073354954130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160381 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A265744.P9502169073354954130

/-!
# A265745: a(n) is the number of Jacobsthal numbers (A001045) needed to sum to n using the greedy algorithm.

The programs for A265745, the canonical program `A265745.P10758348576253649364` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265745 has offset 0).

The definition of A265745 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265745.P10758348576253649364

`1+a(n-A001045(A130249(n)))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A265745

/-- `1+a(n-A001045(A130249(n)))` -/
def P10758348576253649364.Spec : Prop :=
  ∀ n, (P10758348576253649364.a n : ℤ) = A265745 n

theorem P10758348576253649364.correct : P10758348576253649364.Spec := by
  intro n
  simp only [A265745]

end A265745

/-! ## A265745.P11329007659548344366

`∑{digits}[A265747(n), #]`
-/

namespace A265745.P11329007659548344366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265747 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A265745.P11329007659548344366

namespace A265745

/-- `∑{digits}[A265747(n), #]` -/
def P11329007659548344366.Spec : Prop :=
  ∀ n, (P11329007659548344366.a n : ℤ) = A265745 n

end A265745

/-! ## A265745.P7591869333850253264

`val(A001316(xor(1, A003159(n+1))), 2)`
-/

namespace A265745.P7591869333850253264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A001316 (Int.xor 1 (A003159 (n + 1))).toNat).toNat 2

end

end A265745.P7591869333850253264

namespace A265745

/-- `val(A001316(xor(1, A003159(n+1))), 2)` -/
def P7591869333850253264.Spec : Prop :=
  ∀ n, (P7591869333850253264.a n : ℤ) = A265745 n

end A265745

/-! ## A265745.P13938318647642714282

`A000120(xor(1, lt[0, xor(n, n-1)%3]))`
-/

namespace A265745.P13938318647642714282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.xor 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n))

end

end A265745.P13938318647642714282

namespace A265745

/-- `A000120(xor(1, lt[0, xor(n, n-1)%3]))` -/
def P13938318647642714282.Spec : Prop :=
  ∀ n, P13938318647642714282.a n = A265745 n

end A265745

/-! ## A265745.P1151350379253411099

`A274009(A003159(n+1))`
-/

namespace A265745.P1151350379253411099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (A003159 (n + 1)).toNat

end

end A265745.P1151350379253411099

namespace A265745

/-- `A274009(A003159(n+1))` -/
def P1151350379253411099.Spec : Prop :=
  ∀ n, P1151350379253411099.a n = A265745 n

end A265745

/-! ## A265745.P37870516612340732

`A000120(xor(1, A003159(n+1)))`
-/

namespace A265745.P37870516612340732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor 1 (A003159 (n + 1))).toNat

end

end A265745.P37870516612340732

namespace A265745

/-- `A000120(xor(1, A003159(n+1)))` -/
def P37870516612340732.Spec : Prop :=
  ∀ n, P37870516612340732.a n = A265745 n

end A265745

/-! ## A265745.P6898668648275936103

`A000120(xor(1, A036554(n+1)/2))`
-/

namespace A265745.P6898668648275936103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor 1 (SequenceMachineLib.roundAway ((A036554 (n + 1) : ℚ) / 2))).toNat

end

end A265745.P6898668648275936103

namespace A265745

/-- `A000120(xor(1, A036554(n+1)/2))` -/
def P6898668648275936103.Spec : Prop :=
  ∀ n, P6898668648275936103.a n = A265745 n

end A265745

/-! ## A265745.P13716005355800623867

`A000120(xor(2, A036554(n+1)))`
-/

namespace A265745.P13716005355800623867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.xor 2 (A036554 (n + 1))).toNat

end

end A265745.P13716005355800623867

namespace A265745

/-- `A000120(xor(2, A036554(n+1)))` -/
def P13716005355800623867.Spec : Prop :=
  ∀ n, P13716005355800623867.a n = A265745 n

end A265745

/-! ## A265745.P13777270128478333583

`A005812(A265746(n))`
-/

namespace A265745.P13777270128478333583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (A265746 n).toNat

end

end A265745.P13777270128478333583

namespace A265745

/-- `A005812(A265746(n))` -/
def P13777270128478333583.Spec : Prop :=
  ∀ n, P13777270128478333583.a n = A265745 n

end A265745

/-! ## A265745.P18296182998734941694

`and(A002223(n+1), A372555(n))`
-/

namespace A265745.P18296182998734941694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002223 (n + 1)) (A372555 n)

end

end A265745.P18296182998734941694

namespace A265745

/-- `and(A002223(n+1), A372555(n))` -/
def P18296182998734941694.Spec : Prop :=
  ∀ n, P18296182998734941694.a n = A265745 n

end A265745

/-!
# A265746: Jacobsthal greedy base (A265747) interpreted as base-3 numbers, then shown in decimal.

The programs for A265746, the canonical program `A265746.P6041453824196199215` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265746 has offset 0).

The definition of A265746 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265746.P6041453824196199215

`3^(A130249(n)-2)+a(n-A001045(A130249(n)))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A265746

/-- `3^(A130249(n)-2)+a(n-A001045(A130249(n)))` -/
def P6041453824196199215.Spec : Prop :=
  ∀ n, P6041453824196199215.a n = (A265746 n : ℚ)

end A265746

/-! ## A265746.P8742502818145507320

`∩[A037468(n), A354047(n)]`
-/

namespace A265746.P8742502818145507320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265746.P8742502818145507320

namespace A265746

/-- `∩[A037468(n), A354047(n)]` -/
def P8742502818145507320.Spec : Prop :=
  ∀ n, (P8742502818145507320.a n : ℤ) = A265746 n

end A265746

/-! ## A265746.P6933027652938794572

`∩[A039106(n+1), A354047(n)]`
-/

namespace A265746.P6933027652938794572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265746.P6933027652938794572

namespace A265746

/-- `∩[A039106(n+1), A354047(n)]` -/
def P6933027652938794572.Spec : Prop :=
  ∀ n, (P6933027652938794572.a n : ℤ) = A265746 n

end A265746

/-! ## A265746.P7576329394387498780

`eq[A000007(A246928(n)), A000989(n)]`
-/

namespace A265746.P7576329394387498780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A246928 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000989 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A265746.P7576329394387498780

namespace A265746

/-- `eq[A000007(A246928(n)), A000989(n)]` -/
def P7576329394387498780.Spec : Prop :=
  ∀ n, (P7576329394387498780.a n : ℤ) = A265746 n

end A265746

/-! ## A265746.P781089275870601106

`eq[n, A316823(A353828(n))]`
-/

namespace A265746.P781089275870601106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 (A353828 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265746.P781089275870601106

namespace A265746

/-- `eq[n, A316823(A353828(n))]` -/
def P781089275870601106.Spec : Prop :=
  ∀ n, (P781089275870601106.a n : ℤ) = A265746 n

end A265746

/-! ## A265746.P4100919026614597899

`eq[n, A316823(A353829(n))]`
-/

namespace A265746.P4100919026614597899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 (A353829 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A265746.P4100919026614597899

namespace A265746

/-- `eq[n, A316823(A353829(n))]` -/
def P4100919026614597899.Spec : Prop :=
  ∀ n, (P4100919026614597899.a n : ℤ) = A265746 n

end A265746

/-! ## A265746.P16615719162690150548

`eq[A316823(n), A353825(n)]`
-/

namespace A265746.P16615719162690150548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316823 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353825 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A265746.P16615719162690150548

namespace A265746

/-- `eq[A316823(n), A353825(n)]` -/
def P16615719162690150548.Spec : Prop :=
  ∀ n, (P16615719162690150548.a n : ℤ) = A265746 n

end A265746

/-!
# A265747: Numbers written in Jacobsthal greedy base.

The programs for A265747, the canonical program `A265747.P7842850892364262606` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265747 has offset 0).

The definition of A265747 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265747.P7842850892364262606

`10^(A130249(n)-2)+a(n-A001045(A130249(n)))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A265747

/-- `10^(A130249(n)-2)+a(n-A001045(A130249(n)))` -/
def P7842850892364262606.Spec : Prop :=
  ∀ n, P7842850892364262606.a n = (A265747 n : ℚ)

end A265747

/-! ## A265747.P15354437960349224250

`A007089(A265746(n))`
-/

namespace A265747.P15354437960349224250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A265746 n).toNat

end

end A265747.P15354437960349224250

namespace A265747

/-- `A007089(A265746(n))` -/
def P15354437960349224250.Spec : Prop :=
  ∀ n, P15354437960349224250.a n = A265747 n

end A265747

/-! ## A265747.P13232660979051530735

`∩[A007089(A037468(n)), A169683(n)]`
-/

namespace A265747.P13232660979051530735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A037468 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169683 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265747.P13232660979051530735

namespace A265747

/-- `∩[A007089(A037468(n)), A169683(n)]` -/
def P13232660979051530735.Spec : Prop :=
  ∀ n, (P13232660979051530735.a n : ℤ) = A265747 n

end A265747

/-! ## A265747.P7516341440955777106

`A007089(∩[A037468(n), A354047(n)])`
-/

namespace A265747.P7516341440955777106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037468 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354047 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A265747.P7516341440955777106

namespace A265747

/-- `A007089(∩[A037468(n), A354047(n)])` -/
def P7516341440955777106.Spec : Prop :=
  ∀ n, P7516341440955777106.a n = A265747 n

end A265747

/-! ## A265747.P15236868565389390861

`∩[A049872(n), A169683(n)]`
-/

namespace A265747.P15236868565389390861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049872 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169683 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265747.P15236868565389390861

namespace A265747

/-- `∩[A049872(n), A169683(n)]` -/
def P15236868565389390861.Spec : Prop :=
  ∀ n, (P15236868565389390861.a n : ℤ) = A265747 n

end A265747

/-!
# A265748: First members of "good matches" produced by match-making permutation: a(n) = A266195(A266197(n)).

The programs for A265748, there is no canonical definition to state claims against.
-/

/-! ## A265748.P15886671293844019325

`A266195(A266197(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265748.P15886671293844019325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266195 (A266197 (n + 1)).toNat

end

end A265748.P15886671293844019325

/-! ## A265748.P5760220831246842136

`A266195(eq[0, Δ[A264982(n+1)]]+1)`
-/

namespace A265748.P5760220831246842136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266195 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A265748.P5760220831246842136

/-! ## A265748.P5516912822144436851

`A266194(A266197(n+1))/A265749(n+1)`
-/

namespace A265748.P5516912822144436851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266194 (A266197 (n + 1)).toNat : ℚ) / (A265749 (n + 1) : ℚ)

end

end A265748.P5516912822144436851

/-! ## A265748.P17940413225124093539

`A266195(eq[A264982(n+2), A264982(n+1)]+1)`
-/

namespace A265748.P17940413225124093539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264982 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264982 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266195 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A265748.P17940413225124093539

/-! ## A265748.P13727644850393662518

`A091018(A032555(n+1))+A026804(n+1)`
-/

namespace A265748.P13727644850393662518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091018 (A032555 (n + 1)).toNat + A026804 (n + 1)

end

end A265748.P13727644850393662518

/-!
# A265749: Second members of "good matches" produced by match-making permutation: a(n) = A266195(1+A266197(n)).

The programs for A265749, there is no canonical definition to state claims against.
-/

/-! ## A265749.P10318381432410318385

`A266195(1+A266197(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265749.P10318381432410318385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266195 (1 + A266197 (n + 1)).toNat

end

end A265749.P10318381432410318385

/-! ## A265749.P2569181430904164671

`A266194(A266197(n+1))/A265748(n+1)`
-/

namespace A265749.P2569181430904164671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266194 (A266197 (n + 1)).toNat : ℚ) / (A265748 (n + 1) : ℚ)

end

end A265749.P2569181430904164671

/-!
# A265752: a(n) = A007814(A265399(n)).

The programs for A265752, there is no canonical definition to state claims against.
-/

/-! ## A265752.P73138863963660100

`val(A265399(n+1), 2)`
-/

namespace A265752.P73138863963660100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A265399 (n + 1)).toNat 2

end

end A265752.P73138863963660100

/-! ## A265752.P16049814702550039923

`A007814(A265399(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265752.P16049814702550039923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A265399 (n + 1)).toNat

end

end A265752.P16049814702550039923

/-! ## A265752.P9466016186780149588

`A265753(A064989(n+1))+val(n+1, 2)`
-/

namespace A265752.P9466016186780149588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265753 (A064989 (n + 1)).toNat + (SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A265752.P9466016186780149588

/-! ## A265752.P9734272687966665426

`A265753(A064989(n+1))+A007814(n+1)`
-/

namespace A265752.P9734272687966665426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265753 (A064989 (n + 1)).toNat + A007814 (n + 1)

end

end A265752.P9734272687966665426

/-! ## A265752.P4846626823944640761

`A001511(n+1)+A265753(A064989(n+1))-1`
-/

namespace A265752.P4846626823944640761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + (A265753 (A064989 (n + 1)).toNat - 1)

end

end A265752.P4846626823944640761

/-! ## A265752.P12795037657579687710

`A265753(A200746(n+1)/(n+1))+A007814(n+1)`
-/

namespace A265752.P12795037657579687710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265753 (SequenceMachineLib.roundAway ((A200746 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat + A007814 (n + 1)

end

end A265752.P12795037657579687710

/-! ## A265752.P11153382598554003637

`A265753(A064989(n+1))+A247756(A001511(n+1))`
-/

namespace A265752.P11153382598554003637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265753 (A064989 (n + 1)).toNat + A247756 (A001511 (n + 1)).toNat

end

end A265752.P11153382598554003637

/-! ## A265752.P12353166580485484029

`A265753(A064989(n+1))+A007949(A319986(n+1))`
-/

namespace A265752.P12353166580485484029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265753 (A064989 (n + 1)).toNat + A007949 (A319986 (n + 1)).toNat

end

end A265752.P12353166580485484029

/-! ## A265752.P3292685003756950421

`A265753(A349126(n+1)-A349125(n+1))+A007814(n+1)`
-/

namespace A265752.P3292685003756950421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265753 (A349126 (n + 1) - A349125 (n + 1)).toNat + A007814 (n + 1)

end

end A265752.P3292685003756950421

/-! ## A265752.P4697600473692579744

`A265753(A290099(n+1)*A309873(n+1))+A007814(n+1)`
-/

namespace A265752.P4697600473692579744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265753 (A290099 (n + 1) * A309873 (n + 1)).toNat + A007814 (n + 1)

end

end A265752.P4697600473692579744

/-! ## A265752.P4816066374448195515

`A265753(A349122(n+1)/A001511(n+1))+A007814(n+1)`
-/

namespace A265752.P4816066374448195515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265753 (SequenceMachineLib.roundAway ((A349122 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ))).toNat + A007814 (n + 1)

end

end A265752.P4816066374448195515

/-! ## A265752.P15478041904281624935

`A265753(A290099(n+1)/A309873(n+1))+A007814(n+1)`
-/

namespace A265752.P15478041904281624935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265753 (SequenceMachineLib.roundAway ((A290099 (n + 1) : ℚ) / (A309873 (n + 1) : ℚ))).toNat + A007814 (n + 1)

end

end A265752.P15478041904281624935

/-!
# A265753: a(n) = A007949(A265399(n)).

The programs for A265753, there is no canonical definition to state claims against.
-/

/-! ## A265753.P12801099940232802204

`val(A265399(n+1), 3)`
-/

namespace A265753.P12801099940232802204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A265399 (n + 1)).toNat 3

end

end A265753.P12801099940232802204

/-! ## A265753.P15997828796553350663

`A007949(A265399(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A265753.P15997828796553350663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A265399 (n + 1)).toNat

end

end A265753.P15997828796553350663

/-! ## A265753.P5657725973987091915

`∑{d}[n+1, A000045(A047983(A014963(#)))]`
-/

namespace A265753.P5657725973987091915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000045 (A047983 (A014963 d).toNat).toNat

end

end A265753.P5657725973987091915

/-! ## A265753.P10938381079386983800

`A265752(A064989(n+1))+A265752(A065330(n+1))`
-/

namespace A265753.P10938381079386983800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265752 (A064989 (n + 1)).toNat + A265752 (A065330 (n + 1)).toNat

end

end A265753.P10938381079386983800

/-! ## A265753.P9244470803834491677

`∑{e}[A181821(A064989(n+1)), A000045(#)]`
-/

namespace A265753.P9244470803834491677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A064989 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p)

end

end A265753.P9244470803834491677

/-! ## A265753.P4694293697528738578

`∑{e}[A181821(n+1), A212804(#)]`
-/

namespace A265753.P4694293697528738578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A212804 (Nat.factorization (f1 n).natAbs p)

end

end A265753.P4694293697528738578

/-! ## A265753.P14593158349572867121

`∑{e}[A181821(n+1), A000045(#-1)]`
-/

namespace A265753.P14593158349572867121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000045 (Nat.factorization (f1 n).natAbs p - 1)

end

end A265753.P14593158349572867121

/-!
# A265754: Reduced frequency counts for A004001: a(n) = A265332(n+1) - A036987(n).

The programs for A265754, the canonical program `A265754.P15446739987536861634` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265754 has offset 1).

The definition of A265754 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A265332, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A265754.P4130730414674830697

`A266640(A054429(n+1))`
-/

namespace A265754.P4130730414674830697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266640 (A054429 (n + 1)).toNat

end

end A265754.P4130730414674830697

namespace A265754

/-- `A266640(A054429(n+1))` -/
def P4130730414674830697.Spec : Prop :=
  ∀ n, P4130730414674830697.a n = A265754 (n + 1)

end A265754

/-! ## A265754.P15446739987536861634

`A265332(n+2)-A036987(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A265754

/-- `A265332(n+2)-A036987(n+1)` -/
def P15446739987536861634.Spec : Prop :=
  ∀ n, P15446739987536861634.a n = A265754 (n + 1)

theorem P15446739987536861634.correct : P15446739987536861634.Spec := by
  intro n
  simp only [A265754, Nat.add_sub_cancel]

end A265754

/-! ## A265754.P3654662269998787460

`val(A209641(n+1), 2)`
-/

namespace A265754.P3654662269998787460
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A209641 (n + 1)).toNat 2

end

end A265754.P3654662269998787460

namespace A265754

/-- `val(A209641(n+1), 2)` -/
def P3654662269998787460.Spec : Prop :=
  ∀ n, (P3654662269998787460.a n : ℤ) = A265754 (n + 1)

end A265754

/-! ## A265754.P7075745457911021894

`A090996(A209862(n+1))`
-/

namespace A265754.P7075745457911021894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A209862 (n + 1)).toNat

end

end A265754.P7075745457911021894

namespace A265754

/-- `A090996(A209862(n+1))` -/
def P7075745457911021894.Spec : Prop :=
  ∀ n, P7075745457911021894.a n = A265754 (n + 1)

end A265754

/-! ## A265754.P8262943684958341833

`A265332(A153152(n+1))`
-/

namespace A265754.P8262943684958341833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (A153152 (n + 1)).toNat

end

end A265754.P8262943684958341833

namespace A265754

/-- `A265332(A153152(n+1))` -/
def P8262943684958341833.Spec : Prop :=
  ∀ n, P8262943684958341833.a n = A265754 (n + 1)

end A265754

/-! ## A265754.P3913417726632530287

`A051135(n+2)-A036987(n+1)`
-/

namespace A265754.P3913417726632530287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (n + 2) - A036987 (n + 1)

end

end A265754.P3913417726632530287

namespace A265754

/-- `A051135(n+2)-A036987(n+1)` -/
def P3913417726632530287.Spec : Prop :=
  ∀ n, P3913417726632530287.a n = A265754 (n + 1)

end A265754

/-! ## A265754.P7996816443671102646

`A265332(n+2)+1-A297382(n+2)`
-/

namespace A265754.P7996816443671102646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (n + 2) + (1 - A297382 (n + 2))

end

end A265754.P7996816443671102646

namespace A265754

/-- `A265332(n+2)+1-A297382(n+2)` -/
def P7996816443671102646.Spec : Prop :=
  ∀ n, P7996816443671102646.a n = A265754 (n + 1)

end A265754

/-! ## A265754.P4875847328303455427

`A087686(n+3)-A188163(A266188(n+3))`
-/

namespace A265754.P4875847328303455427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087686 (n + 3) - A188163 (A266188 (n + 3)).toNat

end

end A265754.P4875847328303455427

namespace A265754

/-- `A087686(n+3)-A188163(A266188(n+3))` -/
def P4875847328303455427.Spec : Prop :=
  ∀ n, P4875847328303455427.a n = A265754 (n + 1)

end A265754

/-! ## A265754.P3927943871350436989

`A000523(n+1)+A265332(n+2)-A000523(n+2)`
-/

namespace A265754.P3927943871350436989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) + (A265332 (n + 2) - A000523 (n + 2))

end

end A265754.P3927943871350436989

namespace A265754

/-- `A000523(n+1)+A265332(n+2)-A000523(n+2)` -/
def P3927943871350436989.Spec : Prop :=
  ∀ n, P3927943871350436989.a n = A265754 (n + 1)

end A265754

/-! ## A265754.P1131311343744674937

`A359508(A276441(n+2))`
-/

namespace A265754.P1131311343744674937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359508 (A276441 (n + 2)).toNat

end

end A265754.P1131311343744674937

namespace A265754

/-- `A359508(A276441(n+2))` -/
def P1131311343744674937.Spec : Prop :=
  ∀ n, P1131311343744674937.a n = A265754 (n + 1)

end A265754

/-! ## A265754.P7227187534188771277

`A051135(A087686(n+3)-1)`
-/

namespace A265754.P7227187534188771277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (A087686 (n + 3) - 1).toNat

end

end A265754.P7227187534188771277

namespace A265754

/-- `A051135(A087686(n+3)-1)` -/
def P7227187534188771277.Spec : Prop :=
  ∀ n, P7227187534188771277.a n = A265754 (n + 1)

end A265754

/-! ## A265754.P16376173762431167064

`A265332(A087686(n+3)-1)`
-/

namespace A265754.P16376173762431167064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (A087686 (n + 3) - 1).toNat

end

end A265754.P16376173762431167064

namespace A265754

/-- `A265332(A087686(n+3)-1)` -/
def P16376173762431167064.Spec : Prop :=
  ∀ n, P16376173762431167064.a n = A265754 (n + 1)

end A265754

/-! ## A265754.P3469608794941497577

`A051135(A266188(n+3)+n+1)`
-/

namespace A265754.P3469608794941497577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (A266188 (n + 3) + (n + 1 : ℤ)).toNat

end

end A265754.P3469608794941497577

namespace A265754

/-- `A051135(A266188(n+3)+n+1)` -/
def P3469608794941497577.Spec : Prop :=
  ∀ n, P3469608794941497577.a n = A265754 (n + 1)

end A265754

/-! ## A265754.P11279360222627485077

`A051135(A004001(A087686(n+3))+n+1)`
-/

namespace A265754.P11279360222627485077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (A004001 (A087686 (n + 3)).toNat + (n + 1 : ℤ)).toNat

end

end A265754.P11279360222627485077

namespace A265754

/-- `A051135(A004001(A087686(n+3))+n+1)` -/
def P11279360222627485077.Spec : Prop :=
  ∀ n, P11279360222627485077.a n = A265754 (n + 1)

end A265754

/-! ## A265754.P6768384408700563503

`A265332(A004001(A087686(n+3))+n+1)`
-/

namespace A265754.P6768384408700563503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (A004001 (A087686 (n + 3)).toNat + (n + 1 : ℤ)).toNat

end

end A265754.P6768384408700563503

namespace A265754

/-- `A265332(A004001(A087686(n+3))+n+1)` -/
def P6768384408700563503.Spec : Prop :=
  ∀ n, P6768384408700563503.a n = A265754 (n + 1)

end A265754

/-! ## A265754.P5458401699339896442

`A051135(A266109(n+2)-2)`
-/

namespace A265754.P5458401699339896442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051135 (A266109 (n + 2) - 2).toNat

end

end A265754.P5458401699339896442

namespace A265754

/-- `A051135(A266109(n+2)-2)` -/
def P5458401699339896442.Spec : Prop :=
  ∀ n, P5458401699339896442.a n = A265754 (n + 1)

end A265754

/-! ## A265754.P178235468279532082

`A265332(A266109(n+2)-2)`
-/

namespace A265754.P178235468279532082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (A266109 (n + 2) - 2).toNat

end

end A265754.P178235468279532082

namespace A265754

/-- `A265332(A266109(n+2)-2)` -/
def P178235468279532082.Spec : Prop :=
  ∀ n, P178235468279532082.a n = A265754 (n + 1)

end A265754

/-! ## A265754.P4117822699376812347

`A080237(A209643(n+1))`
-/

namespace A265754.P4117822699376812347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080237 (A209643 (n + 1)).toNat

end

end A265754.P4117822699376812347

namespace A265754

/-- `A080237(A209643(n+1))` -/
def P4117822699376812347.Spec : Prop :=
  ∀ n, P4117822699376812347.a n = A265754 (n + 1)

end A265754

/-! ## A265754.P14287991854645653972

`n+2-A087815(A004001(n+2))`
-/

namespace A265754.P14287991854645653972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A087815 (A004001 (n + 2)).toNat

end

end A265754.P14287991854645653972

namespace A265754

/-- `n+2-A087815(A004001(n+2))` -/
def P14287991854645653972.Spec : Prop :=
  ∀ n, P14287991854645653972.a n = A265754 (n + 1)

end A265754

/-! ## A265754.P1157398998842960626

`A293959(n)+1`
-/

namespace A265754.P1157398998842960626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293959 n + 1

end

end A265754.P1157398998842960626

namespace A265754

/-- `A293959(n)+1` -/
def P1157398998842960626.Spec : Prop :=
  ∀ n, P1157398998842960626.a n = A265754 (n + 1)

end A265754

/-!
# A265755: a(n) = a(n-1) + a(n-2) if n is even and a(n) = a(n-3) + a(n-4) if n is odd, with a(0) = a(1) = a(2) = 0 and a(3) = 1.

The programs for A265755, the canonical program `A265755.P11292113027727556579` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265755 has offset 0).

The definition of A265755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265755.P11292113027727556579

`a(n-2)+2*a(n-4)-a(n-6)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A265755

/-- `a(n-2)+2*a(n-4)-a(n-6)` -/
def P11292113027727556579.Spec : Prop :=
  ∀ n, P11292113027727556579.a n = A265755 n

theorem P11292113027727556579.correct : P11292113027727556579.Spec := by
  intro n
  simp only [A265755]

end A265755

/-! ## A265755.P1003984188838697536

`A187065(xor(1, n))`
-/

namespace A265755.P1003984188838697536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187065 (Nat.xor 1 n)

end

end A265755.P1003984188838697536

namespace A265755

/-- `A187065(xor(1, n))` -/
def P1003984188838697536.Spec : Prop :=
  ∀ n, P1003984188838697536.a n = A265755 n

end A265755

/-! ## A265755.P2069695984577832381

`A187065(or(1, n)-and(1, n))`
-/

namespace A265755.P2069695984577832381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187065 (Nat.lor 1 n - Nat.land 1 n)

end

end A265755.P2069695984577832381

namespace A265755

/-- `A187065(or(1, n)-and(1, n))` -/
def P2069695984577832381.Spec : Prop :=
  ∀ n, P2069695984577832381.a n = A265755 n

end A265755

/-! ## A265755.P15362240733260430905

`A187065(A004442(n))`
-/

namespace A265755.P15362240733260430905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187065 (A004442 n).toNat

end

end A265755.P15362240733260430905

namespace A265755

/-- `A187065(A004442(n))` -/
def P15362240733260430905.Spec : Prop :=
  ∀ n, P15362240733260430905.a n = A265755 n

end A265755

/-! ## A265755.P17016579506079669787

`A187066(n)-a(n-1)` with `a(0)=0`
-/

namespace A265755.P17016579506079669787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A187066 n - a (n - 1)

end

end A265755.P17016579506079669787

namespace A265755

/-- `A187066(n)-a(n-1)` -/
def P17016579506079669787.Spec : Prop :=
  ∀ n, P17016579506079669787.a n = A265755 n

end A265755

/-! ## A265755.P6428888216637348433

`A187065(n+2)-a(n-1)` with `a(0)=0`
-/

namespace A265755.P6428888216637348433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A187065 (n + 2) - a (n - 1)

end

end A265755.P6428888216637348433

namespace A265755

/-- `A187065(n+2)-a(n-1)` -/
def P6428888216637348433.Spec : Prop :=
  ∀ n, P6428888216637348433.a n = A265755 n

end A265755

/-! ## A265755.P7326604968117967846

`A187066(n)+A187067(n)-A187067(n+1)`
-/

namespace A265755.P7326604968117967846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187066 n + (A187067 n - A187067 (n + 1))

end

end A265755.P7326604968117967846

namespace A265755

/-- `A187066(n)+A187067(n)-A187067(n+1)` -/
def P7326604968117967846.Spec : Prop :=
  ∀ n, P7326604968117967846.a n = A265755 n

end A265755

/-! ## A265755.P6011572691182403594

`Δ[A187067(n+1)]`
-/

namespace A265755.P6011572691182403594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A265755.P6011572691182403594

namespace A265755

/-- `Δ[A187067(n+1)]` -/
def P6011572691182403594.Spec : Prop :=
  ∀ n, P6011572691182403594.a n = A265755 n

end A265755

/-! ## A265755.P16605985124906013111

`A187067(n+2)-A187067(n+1)`
-/

namespace A265755.P16605985124906013111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187067 (n + 2) - A187067 (n + 1)

end

end A265755.P16605985124906013111

namespace A265755

/-- `A187067(n+2)-A187067(n+1)` -/
def P16605985124906013111.Spec : Prop :=
  ∀ n, P16605985124906013111.a n = A265755 n

end A265755

/-!
# A265757: Relative parity of A002025(n) and A002046(n), the two members of the n-th amicable pair: 0 if both members are even, 1 if both members are odd or -1 if they have opposite parity.

The programs for A265757, there is no canonical definition to state claims against.
-/

/-! ## A265757.P13117050139461362664

`A171092(n+1)-2`
-/

namespace A265757.P13117050139461362664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171092 (n + 1) - 2

end

end A265757.P13117050139461362664

/-! ## A265757.P14515928802323420707

`A002025(n+1)%2`
-/

namespace A265757.P14515928802323420707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002025 (n + 1)) 2

end

end A265757.P14515928802323420707

/-! ## A265757.P8730182944247900745

`A002046(n+1)%2`
-/

namespace A265757.P8730182944247900745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002046 (n + 1)) 2

end

end A265757.P8730182944247900745

/-! ## A265757.P4868514604484674417

`A061469(n+1)%2`
-/

namespace A265757.P4868514604484674417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061469 (n + 1)) 2

end

end A265757.P4868514604484674417

/-! ## A265757.P3350690027805253947

`A180202(n+1)%2`
-/

namespace A265757.P3350690027805253947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180202 (n + 1)) 2

end

end A265757.P3350690027805253947

/-! ## A265757.P12696947315627921448

`A010715(n)%A171092(n+1)`
-/

namespace A265757.P12696947315627921448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010715 n) (A171092 (n + 1))

end

end A265757.P12696947315627921448

/-! ## A265757.P5868896126363169404

`A016934(n)%A171092(n+1)`
-/

namespace A265757.P5868896126363169404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016934 n) (A171092 (n + 1))

end

end A265757.P5868896126363169404

/-! ## A265757.P4398439595818334675

`A016936(n)%A171092(n+1)`
-/

namespace A265757.P4398439595818334675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016936 n) (A171092 (n + 1))

end

end A265757.P4398439595818334675

/-! ## A265757.P15929687958571562404

`A016938(n)%A171092(n+1)`
-/

namespace A265757.P15929687958571562404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016938 n) (A171092 (n + 1))

end

end A265757.P15929687958571562404

/-! ## A265757.P10471055797987306007

`A016957(n)%A171092(n+1)`
-/

namespace A265757.P10471055797987306007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016957 n) (A171092 (n + 1))

end

end A265757.P10471055797987306007

/-! ## A265757.P2461336367945909356

`A016958(n)%A171092(n+1)`
-/

namespace A265757.P2461336367945909356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016958 n) (A171092 (n + 1))

end

end A265757.P2461336367945909356

/-! ## A265757.P18011345505541787414

`A016959(n)%A171092(n+1)`
-/

namespace A265757.P18011345505541787414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016959 n) (A171092 (n + 1))

end

end A265757.P18011345505541787414

/-! ## A265757.P828282400104835662

`A016960(n)%A171092(n+1)`
-/

namespace A265757.P828282400104835662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016960 n) (A171092 (n + 1))

end

end A265757.P828282400104835662

/-! ## A265757.P8639353039491878123

`A016961(n)%A171092(n+1)`
-/

namespace A265757.P8639353039491878123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016961 n) (A171092 (n + 1))

end

end A265757.P8639353039491878123

/-! ## A265757.P402757749721430173

`A016962(n)%A171092(n+1)`
-/

namespace A265757.P402757749721430173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016962 n) (A171092 (n + 1))

end

end A265757.P402757749721430173

/-! ## A265757.P8825860484117710831

`A016963(n)%A171092(n+1)`
-/

namespace A265757.P8825860484117710831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016963 n) (A171092 (n + 1))

end

end A265757.P8825860484117710831

/-! ## A265757.P12704743826138256630

`A017546(n)%A171092(n+1)`
-/

namespace A265757.P12704743826138256630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017546 n) (A171092 (n + 1))

end

end A265757.P12704743826138256630

/-! ## A265757.P13458679371370933684

`A017548(n)%A171092(n+1)`
-/

namespace A265757.P13458679371370933684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017548 n) (A171092 (n + 1))

end

end A265757.P13458679371370933684

/-! ## A265757.P10138135594388416092

`A017550(n)%A171092(n+1)`
-/

namespace A265757.P10138135594388416092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017550 n) (A171092 (n + 1))

end

end A265757.P10138135594388416092

/-! ## A265757.P8698802399294854156

`A017569(n)%A171092(n+1)`
-/

namespace A265757.P8698802399294854156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017569 n) (A171092 (n + 1))

end

end A265757.P8698802399294854156

/-!
# A265758: Expansion of Product_{k>=1} ((1 + k*x^k)/(1 - k*x^k)).

The programs for A265758, there is no canonical definition to state claims against.
-/

/-! ## A265758.P6747988480521242174

`A332743(n+4)+A112310(A262128(n))`
-/

namespace A265758.P6747988480521242174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332743 (n + 4) + A112310 (A262128 n).toNat

end

end A265758.P6747988480521242174

/-! ## A265758.P7146040120834319129

`A241825(A246983(n))+A156616(n)`
-/

namespace A265758.P7146040120834319129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241825 (A246983 n).toNat + A156616 n

end

end A265758.P7146040120834319129

/-! ## A265758.P2031727027319187221

`A248170(A296045(n+1))`
-/

namespace A265758.P2031727027319187221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248170 (A296045 (n + 1)).toNat

end

end A265758.P2031727027319187221

/-!
# A265759: Numerators of primes-only best approximates (POBAs) to 1; see Comments.

The programs for A265759, there is no canonical definition to state claims against.
-/

/-! ## A265759.P1090650579166905828

`A280968(n)-a(n-1)` with `a(0)=3, a(1)=2, a(2)=5`
-/

namespace A265759.P1090650579166905828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 5] fun n a =>
  A280968 n - a (n - 1)

end

end A265759.P1090650579166905828

/-! ## A265759.P17558291120971854119

`A051698(A265760(n+1))`
-/

namespace A265759.P17558291120971854119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A265760 (n + 1)).toNat

end

end A265759.P17558291120971854119

/-! ## A265759.P8173925391805202298

`A064207(A001097(n+1))+1`
-/

namespace A265759.P8173925391805202298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064207 (A001097 (n + 1)).toNat + 1

end

end A265759.P8173925391805202298

/-! ## A265759.P3659163589673571102

`A064207(A171821(n+2))+1`
-/

namespace A265759.P3659163589673571102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064207 (A171821 (n + 2)).toNat + 1

end

end A265759.P3659163589673571102

/-! ## A265759.P1289474005421501499

`p?[A064207(A000040(n+1))+1]`
-/

namespace A265759.P1289474005421501499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064207 (A000040 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265759.P1289474005421501499

/-! ## A265759.P6441564146123172088

`p?[A064207(A006005(n+1))+1]`
-/

namespace A265759.P6441564146123172088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064207 (A006005 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265759.P6441564146123172088

/-! ## A265759.P1925239370344381659

`A074066(A001097(n+1)-char[1])`
-/

namespace A265759.P1925239370344381659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074066 (A001097 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A265759.P1925239370344381659

/-! ## A265759.P4390209062086796297

`A051698(A001097(n+1)-C(2, n))`
-/

namespace A265759.P4390209062086796297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A001097 (n + 1) - (Nat.choose 2 n : ℤ)).toNat

end

end A265759.P4390209062086796297

/-! ## A265759.P15462259899177839729

`A051698(A171821(n+2-C(n, n²)))`
-/

namespace A265759.P15462259899177839729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A171821 (n + 2 - Nat.choose n (n ^ 2))).toNat

end

end A265759.P15462259899177839729

/-! ## A265759.P18164912636542783961

`p?[A106608(A171821(A103889(n+1)))]`
-/

namespace A265759.P18164912636542783961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A171821 (A103889 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265759.P18164912636542783961

/-!
# A265760: Denominators of primes-only best approximates (POBAs) to 1; see Comments.

The programs for A265760, the canonical program `A265760.P11653394699473330662` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265760 has offset 1).

The definition of A265760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A265760.P11653394699473330662

`A001097(n+1)-C(2, n²)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A265760

/-- `A001097(n+1)-C(2, n²)` -/
def P11653394699473330662.Spec : Prop :=
  ∀ n, P11653394699473330662.a n = A265760 (n + 1)

theorem P11653394699473330662.correct : P11653394699473330662.Spec := by
  intro n
  simp only [A265760, Nat.add_sub_cancel]

end A265760

/-! ## A265760.P7369215630775787562

`A001097(n+1)-A130706(n)`
-/

namespace A265760.P7369215630775787562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) - A130706 n

end

end A265760.P7369215630775787562

namespace A265760

/-- `A001097(n+1)-A130706(n)` -/
def P7369215630775787562.Spec : Prop :=
  ∀ n, P7369215630775787562.a n = A265760 (n + 1)

end A265760

/-! ## A265760.P11772328707536869906

`ceil(A001097(n+1)/A141044(n))`
-/

namespace A265760.P11772328707536869906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001097 (n + 1) : ℚ) / (A141044 n : ℚ)⌉

end

end A265760.P11772328707536869906

namespace A265760

/-- `ceil(A001097(n+1)/A141044(n))` -/
def P11772328707536869906.Spec : Prop :=
  ∀ n, P11772328707536869906.a n = A265760 (n + 1)

end A265760

/-! ## A265760.P13882677104550475140

`A001097(n+1)-(A134824(n)+1)`
-/

namespace A265760.P13882677104550475140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) - (A134824 n + 1)

end

end A265760.P13882677104550475140

namespace A265760

/-- `A001097(n+1)-(A134824(n)+1)` -/
def P13882677104550475140.Spec : Prop :=
  ∀ n, P13882677104550475140.a n = A265760 (n + 1)

end A265760

/-! ## A265760.P3969619803028018647

`∪[A132247(n+1), A166945(n+1)]`
-/

namespace A265760.P3969619803028018647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A265760.P3969619803028018647

namespace A265760

/-- `∪[A132247(n+1), A166945(n+1)]` -/
def P3969619803028018647.Spec : Prop :=
  ∀ n, (P3969619803028018647.a n : ℤ) = A265760 (n + 1)

end A265760

/-! ## A265760.P4176274079814731179

`A161220(n+1)+2*(n+1)-A130706(n)`
-/

namespace A265760.P4176274079814731179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161220 (n + 1) + (2 * (n + 1) : ℤ) - A130706 n

end

end A265760.P4176274079814731179

namespace A265760

/-- `A161220(n+1)+2*(n+1)-A130706(n)` -/
def P4176274079814731179.Spec : Prop :=
  ∀ n, P4176274079814731179.a n = A265760 (n + 1)

end A265760

/-! ## A265760.P5997824866706216615

`A001097(n+1)+A171821(n+1)-A077800(n+1)`
-/

namespace A265760.P5997824866706216615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (n + 1) + (A171821 (n + 1) - A077800 (n + 1))

end

end A265760.P5997824866706216615

namespace A265760

/-- `A001097(n+1)+A171821(n+1)-A077800(n+1)` -/
def P5997824866706216615.Spec : Prop :=
  ∀ n, P5997824866706216615.a n = A265760 (n + 1)

end A265760

/-! ## A265760.P14544805149551647242

`A171821(n+2-C(n, n²))`
-/

namespace A265760.P14544805149551647242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 2 - Nat.choose n (n ^ 2))

end

end A265760.P14544805149551647242

namespace A265760

/-- `A171821(n+2-C(n, n²))` -/
def P14544805149551647242.Spec : Prop :=
  ∀ n, P14544805149551647242.a n = A265760 (n + 1)

end A265760

/-! ## A265760.P12252016535334064114

`A171821(A326178(n+1))`
-/

namespace A265760.P12252016535334064114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (A326178 (n + 1)).toNat

end

end A265760.P12252016535334064114

namespace A265760

/-- `A171821(A326178(n+1))` -/
def P12252016535334064114.Spec : Prop :=
  ∀ n, P12252016535334064114.a n = A265760 (n + 1)

end A265760

/-! ## A265760.P796624185633407305

`A171821(floor(sqrt(A028884(n))))`
-/

namespace A265760.P796624185633407305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (Int.sqrt (A028884 n)).toNat

end

end A265760.P796624185633407305

namespace A265760

/-- `A171821(floor(sqrt(A028884(n))))` -/
def P796624185633407305.Spec : Prop :=
  ∀ n, P796624185633407305.a n = A265760 (n + 1)

end A265760

/-! ## A265760.P12545548437880326026

`A171821(A130773(n)+1-n)`
-/

namespace A265760.P12545548437880326026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (A130773 n + (1 - (n : ℤ))).toNat

end

end A265760.P12545548437880326026

namespace A265760

/-- `A171821(A130773(n)+1-n)` -/
def P12545548437880326026.Spec : Prop :=
  ∀ n, P12545548437880326026.a n = A265760 (n + 1)

end A265760

/-! ## A265760.P1263552044611047987

`A171821(n+2)-A130706(n)`
-/

namespace A265760.P1263552044611047987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 2) - A130706 n

end

end A265760.P1263552044611047987

namespace A265760

/-- `A171821(n+2)-A130706(n)` -/
def P1263552044611047987.Spec : Prop :=
  ∀ n, P1263552044611047987.a n = A265760 (n + 1)

end A265760

/-! ## A265760.P14880567399483713528

`A171821(1-(n-A130773(n)))`
-/

namespace A265760.P14880567399483713528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (1 - ((n : ℤ) - A130773 n)).toNat

end

end A265760.P14880567399483713528

namespace A265760

/-- `A171821(1-(n-A130773(n)))` -/
def P14880567399483713528.Spec : Prop :=
  ∀ n, P14880567399483713528.a n = A265760 (n + 1)

end A265760

/-! ## A265760.P9464266138789547630

`A171821(2-A019590(n+1)+n)`
-/

namespace A265760.P9464266138789547630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (2 - A019590 (n + 1) + (n : ℤ)).toNat

end

end A265760.P9464266138789547630

namespace A265760

/-- `A171821(2-A019590(n+1)+n)` -/
def P9464266138789547630.Spec : Prop :=
  ∀ n, P9464266138789547630.a n = A265760 (n + 1)

end A265760

/-! ## A265760.P9255994985530924815

`A171821(n+1)+A171821(n+2)-A077800(n+1)`
-/

namespace A265760.P9255994985530924815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1) + (A171821 (n + 2) - A077800 (n + 1))

end

end A265760.P9255994985530924815

namespace A265760

/-- `A171821(n+1)+A171821(n+2)-A077800(n+1)` -/
def P9255994985530924815.Spec : Prop :=
  ∀ n, P9255994985530924815.a n = A265760 (n + 1)

end A265760

/-! ## A265760.P13578259465146696109

`∩[A171821(n+1), A178943(n+1)]`
-/

namespace A265760.P13578259465146696109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178943 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265760.P13578259465146696109

namespace A265760

/-- `∩[A171821(n+1), A178943(n+1)]` -/
def P13578259465146696109.Spec : Prop :=
  ∀ n, (P13578259465146696109.a n : ℤ) = A265760 (n + 1)

end A265760

/-! ## A265760.P5656428853305346289

`∩[A045319(n+1), A171821(n+1)]`
-/

namespace A265760.P5656428853305346289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265760.P5656428853305346289

namespace A265760

/-- `∩[A045319(n+1), A171821(n+1)]` -/
def P5656428853305346289.Spec : Prop :=
  ∀ n, (P5656428853305346289.a n : ℤ) = A265760 (n + 1)

end A265760

/-! ## A265760.P7146023313286527416

`A000040(A334142(n+1)-A019590(n+1))`
-/

namespace A265760.P7146023313286527416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A334142 (n + 1) - A019590 (n + 1)).toNat

end

end A265760.P7146023313286527416

namespace A265760

/-- `A000040(A334142(n+1)-A019590(n+1))` -/
def P7146023313286527416.Spec : Prop :=
  ∀ n, P7146023313286527416.a n = A265760 (n + 1)

end A265760

/-! ## A265760.P4834923273970174496

`A001221(a(n-1))*A001097(n+1)` with `a(0)=2, a(1)=3`
-/

namespace A265760.P4834923273970174496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A001221 (a (n - 1)).toNat * A001097 (n + 1)

end

end A265760.P4834923273970174496

namespace A265760

/-- `A001221(a(n-1))*A001097(n+1)` -/
def P4834923273970174496.Spec : Prop :=
  ∀ n, P4834923273970174496.a n = A265760 (n + 1)

end A265760

/-! ## A265760.P13389461315367600843

`A001222(a(n-1))*A001097(n+1)` with `a(0)=2, a(1)=3`
-/

namespace A265760.P13389461315367600843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A001222 (a (n - 1)).toNat * A001097 (n + 1)

end

end A265760.P13389461315367600843

namespace A265760

/-- `A001222(a(n-1))*A001097(n+1)` -/
def P13389461315367600843.Spec : Prop :=
  ∀ n, P13389461315367600843.a n = A265760 (n + 1)

end A265760

/-!
# A265761: Numerators of primes-only best approximates (POBAs) to 3/2; see Comments.

The programs for A265761, there is no canonical definition to state claims against.
-/

/-! ## A265761.P12632814869202227110

`p?[4*n+3-(A101264(n)+or(1, n))]`
-/

namespace A265761.P12632814869202227110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 3 : ℤ) - (A101264 n + (Nat.lor 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265761.P12632814869202227110

/-! ## A265761.P12744771002026952840

`record[A093074(∑{p}[8*n+4, #]-1+n)]`
-/

namespace A265761.P12744771002026952840
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (((∑ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℤ) - 1 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265761.P12744771002026952840

/-! ## A265761.P17286654758271337436

`p?[A047260(A000040(n+1))+1]`
-/

namespace A265761.P17286654758271337436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047260 (A000040 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265761.P17286654758271337436

/-! ## A265761.P14106878386175213202

`p?[A047269(A000040(n+1)+1)]`
-/

namespace A265761.P14106878386175213202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047269 (A000040 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265761.P14106878386175213202

/-! ## A265761.P11273344632874929444

`p?[A047246(A000040(n+1)+2)-1]`
-/

namespace A265761.P11273344632874929444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047246 (A000040 (n + 1) + 2).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265761.P11273344632874929444

/-! ## A265761.P6048555642969395858

`p?[A047227(A000040(n+1)+2)-2]`
-/

namespace A265761.P6048555642969395858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047227 (A000040 (n + 1) + 2).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265761.P6048555642969395858

/-! ## A265761.P2939446877722195249

`record[A074399(A020639(2*n+1)+n)]`
-/

namespace A265761.P2939446877722195249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (A020639 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265761.P2939446877722195249

/-! ## A265761.P18017582333424678813

`record[A093074(A006530(2*n+1)+n)]`
-/

namespace A265761.P18017582333424678813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (A006530 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265761.P18017582333424678813

/-! ## A265761.P4095258627186087017

`record[A093074(A020639(2*n+1)+n)]`
-/

namespace A265761.P4095258627186087017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (A020639 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265761.P4095258627186087017

/-! ## A265761.P8099492875453991584

`p?[(A045572(n+1)-n)*A001222(n+1)]`
-/

namespace A265761.P8099492875453991584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A045572 (n + 1) - (n : ℤ)) * A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265761.P8099492875453991584

/-!
# A265762: Coefficient of x in minimal polynomial of the continued fraction [1^n,2,1,1,1,...], where 1^n means n ones.

The programs for A265762, the canonical program `A265762.P6051728569663461738` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A265762 has offset 0).

The definition of A265762 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A265762.P6051728569663461738

`2*a(n-1)+2*a(n-2)-a(n-3)` with `a(0)=-3, a(1)=-5, a(2)=-15`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A265762

/-- `2*a(n-1)+2*a(n-2)-a(n-3)` -/
def P6051728569663461738.Spec : Prop :=
  ∀ n, P6051728569663461738.a n = A265762 n

theorem P6051728569663461738.correct : P6051728569663461738.Spec := by
  intro n
  simp only [A265762]

end A265762

/-! ## A265762.P8461290966318229204

`ogf((-3+x+x^2)/(1-2x-2x^2+x^3))`
-/

namespace A265762.P8461290966318229204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-3, 1, 1] [1, -2, -2, 1] n

end

end A265762.P8461290966318229204

namespace A265762

/-- `ogf((-3+x+x^2)/(1-2x-2x^2+x^3))` -/
def P8461290966318229204.Spec : Prop :=
  ∀ n, P8461290966318229204.a n = A265762 n

end A265762

/-! ## A265762.P8281246768906686346

`-or(1, A038990(n+1))`
-/

namespace A265762.P8281246768906686346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (A038990 (n + 1))

end

end A265762.P8281246768906686346

namespace A265762

/-- `-or(1, A038990(n+1))` -/
def P8281246768906686346.Spec : Prop :=
  ∀ n, P8281246768906686346.a n = A265762 n

end A265762

/-! ## A265762.P12813248683612757421

`-(A127546(n)+(-1)^n)`
-/

namespace A265762.P12813248683612757421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A127546 n + (-1) ^ n)

end

end A265762.P12813248683612757421

namespace A265762

/-- `-(A127546(n)+(-1)^n)` -/
def P12813248683612757421.Spec : Prop :=
  ∀ n, P12813248683612757421.a n = A265762 n

end A265762

/-! ## A265762.P13258770585802783077

`1-2*(A192873(n+1)+1)`
-/

namespace A265762.P13258770585802783077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - 2 * (A192873 (n + 1) + 1)

end

end A265762.P13258770585802783077

namespace A265762

/-- `1-2*(A192873(n+1)+1)` -/
def P13258770585802783077.Spec : Prop :=
  ∀ n, P13258770585802783077.a n = A265762 n

end A265762

/-! ## A265762.P10321548507700254941

`A236428(n)-A374259(n)`
-/

namespace A265762.P10321548507700254941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236428 n - A374259 n

end

end A265762.P10321548507700254941

namespace A265762

/-- `A236428(n)-A374259(n)` -/
def P10321548507700254941.Spec : Prop :=
  ∀ n, P10321548507700254941.a n = A265762 n

end A265762

/-! ## A265762.P6556059283955854144

`A059929(n)-A005248(n+1)`
-/

namespace A265762.P6556059283955854144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 n - A005248 (n + 1)

end

end A265762.P6556059283955854144

namespace A265762

/-- `A059929(n)-A005248(n+1)` -/
def P6556059283955854144.Spec : Prop :=
  ∀ n, P6556059283955854144.a n = A265762 n

end A265762

/-! ## A265762.P2885881836664190308

`A001906(n)-A120718(n+1)`
-/

namespace A265762.P2885881836664190308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 n - A120718 (n + 1)

end

end A265762.P2885881836664190308

namespace A265762

/-- `A001906(n)-A120718(n+1)` -/
def P2885881836664190308.Spec : Prop :=
  ∀ n, P2885881836664190308.a n = A265762 n

end A265762

/-! ## A265762.P18295803265272436436

`A001654(n)-A129905(n+1)`
-/

namespace A265762.P18295803265272436436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 n - A129905 (n + 1)

end

end A265762.P18295803265272436436

namespace A265762

/-- `A001654(n)-A129905(n+1)` -/
def P18295803265272436436.Spec : Prop :=
  ∀ n, P18295803265272436436.a n = A265762 n

end A265762

/-! ## A265762.P15797176623378526398

`A010673(n)-(A127546(n)+1)`
-/

namespace A265762.P15797176623378526398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010673 n - (A127546 n + 1)

end

end A265762.P15797176623378526398

namespace A265762

/-- `A010673(n)-(A127546(n)+1)` -/
def P15797176623378526398.Spec : Prop :=
  ∀ n, P15797176623378526398.a n = A265762 n

end A265762

/-! ## A265762.P17044664492348387090

`A033999(n+1)-A127546(n)`
-/

namespace A265762.P17044664492348387090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) - A127546 n

end

end A265762.P17044664492348387090

namespace A265762

/-- `A033999(n+1)-A127546(n)` -/
def P17044664492348387090.Spec : Prop :=
  ∀ n, P17044664492348387090.a n = A265762 n

end A265762

/-! ## A265762.P4356880618175826068

`A192883(n)-A099921(n+1)`
-/

namespace A265762.P4356880618175826068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192883 n - A099921 (n + 1)

end

end A265762.P4356880618175826068

namespace A265762

/-- `A192883(n)-A099921(n+1)` -/
def P4356880618175826068.Spec : Prop :=
  ∀ n, P4356880618175826068.a n = A265762 n

end A265762

/-! ## A265762.P12596212857457288615

`A260259(n)-A192921(n+2)`
-/

namespace A265762.P12596212857457288615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260259 n - A192921 (n + 2)

end

end A265762.P12596212857457288615

namespace A265762

/-- `A260259(n)-A192921(n+2)` -/
def P12596212857457288615.Spec : Prop :=
  ∀ n, P12596212857457288615.a n = A265762 n

end A265762

/-! ## A265762.P12314823264834438199

`A033999(n)-(A001595(n)+1)²`
-/

namespace A265762.P12314823264834438199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n - (A001595 n + 1) ^ 2

end

end A265762.P12314823264834438199

namespace A265762

/-- `A033999(n)-(A001595(n)+1)²` -/
def P12314823264834438199.Spec : Prop :=
  ∀ n, P12314823264834438199.a n = A265762 n

end A265762

/-! ## A265762.P14901109008750660894

`A000045(2*n)-A120718(n+1)`
-/

namespace A265762.P14901109008750660894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n) - A120718 (n + 1)

end

end A265762.P14901109008750660894

namespace A265762

/-- `A000045(2*n)-A120718(n+1)` -/
def P14901109008750660894.Spec : Prop :=
  ∀ n, P14901109008750660894.a n = A265762 n

end A265762

/-! ## A265762.P7788671564873136398

`A000045(n+1)²-A110391(n+1)`
-/

namespace A265762.P7788671564873136398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) ^ 2 - A110391 (n + 1)

end

end A265762.P7788671564873136398

namespace A265762

/-- `A000045(n+1)²-A110391(n+1)` -/
def P7788671564873136398.Spec : Prop :=
  ∀ n, P7788671564873136398.a n = A265762 n

end A265762

/-! ## A265762.P3045940766164262078

`A111569(2*n+1)-A110391(n+1)`
-/

namespace A265762.P3045940766164262078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111569 (2 * n + 1) - A110391 (n + 1)

end

end A265762.P3045940766164262078

namespace A265762

/-- `A111569(2*n+1)-A110391(n+1)` -/
def P3045940766164262078.Spec : Prop :=
  ∀ n, P3045940766164262078.a n = A265762 n

end A265762

/-! ## A265762.P2261745907444577990

`A079472(n+1)-A293411(2*(n+1))`
-/

namespace A265762.P2261745907444577990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079472 (n + 1) - A293411 (2 * (n + 1))

end

end A265762.P2261745907444577990

namespace A265762

/-- `A079472(n+1)-A293411(2*(n+1))` -/
def P2261745907444577990.Spec : Prop :=
  ∀ n, P2261745907444577990.a n = A265762 n

end A265762

/-!
# A265764: Denominators of primes-only best approximates (POBAs) to 3; see Comments.

The programs for A265764, there is no canonical definition to state claims against.
-/

/-! ## A265764.P780766371673098281

`p?[A008611(A006093(n+1))]-C(n, n²)`
-/

namespace A265764.P780766371673098281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (Nat.choose n (n ^ 2) : ℤ)

end

end A265764.P780766371673098281

/-! ## A265764.P16337888642125712312

`p?[A008611(A156037(n+1))]-C(n, n²)`
-/

namespace A265764.P16337888642125712312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A156037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (Nat.choose n (n ^ 2) : ℤ)

end

end A265764.P16337888642125712312

/-! ## A265764.P6520011207703594545

`p?[A008611(A000040(n+1)-1)]-C(n, n²)`
-/

namespace A265764.P6520011207703594545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A000040 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - (Nat.choose n (n ^ 2) : ℤ)

end

end A265764.P6520011207703594545

/-! ## A265764.P5666263941759041866

`p?[A163985(A008611(A285982(n)))]`
-/

namespace A265764.P5666263941759041866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 (A008611 (A285982 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265764.P5666263941759041866

/-! ## A265764.P4311779911366199980

`p?[A047268(A008620(A005097(n+1)))]`
-/

namespace A265764.P4311779911366199980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (A008620 (A005097 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265764.P4311779911366199980

/-! ## A265764.P8321639341903017034

`A064614(p?[A008611(A006093(n+1))])`
-/

namespace A265764.P8321639341903017034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A265764.P8321639341903017034

/-! ## A265764.P11828171492039087024

`p?[A163985(A008615(A008864(n+1)))]`
-/

namespace A265764.P11828171492039087024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 (A008615 (A008864 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265764.P11828171492039087024

/-! ## A265764.P13677513481583898252

`A186101(p?[A008611(A006093(n+1))])`
-/

namespace A265764.P13677513481583898252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A006093 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A265764.P13677513481583898252

/-! ## A265764.P15520683582999414879

`A186101(p?[A001222(n+1)*A008611(n)])`
-/

namespace A265764.P15520683582999414879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A265764.P15520683582999414879

/-! ## A265764.P14191301361207794749

`A186101(p?[A001222(n+1)*A122918(n)])`
-/

namespace A265764.P14191301361207794749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) * A122918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A265764.P14191301361207794749

/-!
# A265766: Numerators of lower primes-only best approximates (POBAs) to 5; see Comments.

The programs for A265766, there is no canonical definition to state claims against.
-/

/-! ## A265766.P11231969711711301105

`p?[or(1, 5*n+2)*∑{e}[n+1, #]]`
-/

namespace A265766.P11231969711711301105
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (5 * n + 2) * (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A265766.P11231969711711301105

/-! ## A265766.P14907461284455376874

`p?[or(1, 5*A000040(n+1)-3)]`
-/

namespace A265766.P14907461284455376874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (5 * A000040 (n + 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265766.P14907461284455376874

/-! ## A265766.P9699311377664552975

`p?[A001750(n+1)-(C(2, n+2)+2)]`
-/

namespace A265766.P9699311377664552975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (n + 1) - (Nat.choose 2 (n + 2) + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265766.P9699311377664552975

/-! ## A265766.P5759018415593750722

`p?[A063206(A000040(n+1))]`
-/

namespace A265766.P5759018415593750722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063206 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265766.P5759018415593750722

/-! ## A265766.P11103475262522750090

`p?[A063226(p?[A000040(n+1)])]`
-/

namespace A265766.P11103475262522750090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265766.P11103475262522750090

/-!
# A265767: Numerators of upper primes-only best approximates (POBAs) to 5; see Comments.

The programs for A265767, there is no canonical definition to state claims against.
-/

/-! ## A265767.P10665733905060266893

`p?[A001750(n+1)+(2-C(2, n))!]`
-/

namespace A265767.P10665733905060266893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (n + 1) + (Nat.factorial (2 - (Nat.choose 2 n : ℤ)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265767.P10665733905060266893

/-! ## A265767.P15814463028767068545

`p?[A297469(A045344(n+1))]`
-/

namespace A265767.P15814463028767068545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297469 (A045344 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265767.P15814463028767068545

/-! ## A265767.P9363231661636109348

`p?[A315232(n)+A105700(n)]`
-/

namespace A265767.P9363231661636109348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315232 n + A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265767.P9363231661636109348

/-! ## A265767.P16023877549730538290

`p?[A315257(A000040(n+1))+1]`
-/

namespace A265767.P16023877549730538290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315257 (A000040 (n + 1)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265767.P16023877549730538290

/-! ## A265767.P8947421808915439365

`p?[A001750(n+1)+gcd(2, A000010(n+1))]`
-/

namespace A265767.P8947421808915439365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (n + 1) + (Int.gcd 2 (A000010 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265767.P8947421808915439365

/-!
# A265768: Numerators of primes-only best approximates (POBAs) to 5; see Comments.

The programs for A265768, there is no canonical definition to state claims against.
-/

/-! ## A265768.P10149369892091463125

`∩[A111495(n+1), A378018(n+1)]`
-/

namespace A265768.P10149369892091463125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111495 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265768.P10149369892091463125

/-!
# A265769: Denominators of primes-only best approximates (POBAs) to 5; see Comments.

The programs for A265769, there is no canonical definition to state claims against.
-/

/-! ## A265769.P15196980512993980717

`p?[A047263(A008620(A006254(n+1)))]`
-/

namespace A265769.P15196980512993980717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A008620 (A006254 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265769.P15196980512993980717

/-! ## A265769.P2754846324763230898

`p?[A106249(A068962(A008578(n+1)))]`
-/

namespace A265769.P2754846324763230898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (A068962 (A008578 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265769.P2754846324763230898

/-! ## A265769.P5607698168159638613

`p?[A134119(A064429(A008864(n+1)))]`
-/

namespace A265769.P5607698168159638613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A064429 (A008864 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265769.P5607698168159638613

/-! ## A265769.P13443153561481194056

`p?[A047263(A008619(A181709(n+1)))]`
-/

namespace A265769.P13443153561481194056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A008619 (A181709 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265769.P13443153561481194056

/-! ## A265769.P14708384199511800657

`p?[A146307(A068962(A298865(n+1)))]`
-/

namespace A265769.P14708384199511800657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146307 (A068962 (A298865 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265769.P14708384199511800657

/-!
# A265770: Numerators of primes-only best approximates (POBAs) to 6; see Comments.

The programs for A265770, there is no canonical definition to state claims against.
-/

/-! ## A265770.P10088917809382018627

`p?[A138636(A008619(n))+(-1)^n]`
-/

namespace A265770.P10088917809382018627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138636 (A008619 n).toNat + (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265770.P10088917809382018627

/-! ## A265770.P3043938614685273215

`p?[A033999(n)+A008588(A109763(n+1))]`
-/

namespace A265770.P3043938614685273215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + A008588 (A109763 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265770.P3043938614685273215

/-! ## A265770.P3677459775409471141

`A101455(3^n)+A008588(A109763(n+1))`
-/

namespace A265770.P3677459775409471141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (3 ^ n) + A008588 (A109763 (n + 1)).toNat

end

end A265770.P3677459775409471141

/-! ## A265770.P15274965849280266036

`A008588(A109763(n+1))-A337004(A001638(2*n))`
-/

namespace A265770.P15274965849280266036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 (A109763 (n + 1)).toNat - A337004 (A001638 (2 * n)).toNat

end

end A265770.P15274965849280266036

/-!
# A265771: Denominators of primes-only best approximates (POBAs) to 6; see Comments.

The programs for A265771, there is no canonical definition to state claims against.
-/

/-! ## A265771.P278721943763615375

`p?[round(p?[2*n+1]/6)]`
-/

namespace A265771.P278721943763615375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265771.P278721943763615375

/-! ## A265771.P8573296158330399778

`p?[A024699(n+1)]`
-/

namespace A265771.P8573296158330399778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024699 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265771.P8573296158330399778

/-! ## A265771.P5592108632895435655

`p?[floor(A028815(n)/6)]`
-/

namespace A265771.P5592108632895435655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A028815 n : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265771.P5592108632895435655

/-! ## A265771.P14712199303481997230

`p?[floor(A098090(n+1)/3)]`
-/

namespace A265771.P14712199303481997230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A098090 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265771.P14712199303481997230

/-! ## A265771.P5103151011580327909

`p?[ceil(A102781(n+1)/3)]`
-/

namespace A265771.P5103151011580327909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A102781 (n + 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265771.P5103151011580327909

/-! ## A265771.P12223823897505798751

`p?[round(A000040(n+1)/6)]`
-/

namespace A265771.P12223823897505798751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000040 (n + 1) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265771.P12223823897505798751

/-! ## A265771.P5975253482514895723

`p?[A008615(p?[2*n+1])]`
-/

namespace A265771.P5975253482514895723
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265771.P5975253482514895723

/-! ## A265771.P3202673512278807710

`p?[A010764(p?[2*n+1])]`
-/

namespace A265771.P3202673512278807710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010764 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265771.P3202673512278807710

/-! ## A265771.P1523677553551306081

`p?[A011960(p?[2*n+1])]`
-/

namespace A265771.P1523677553551306081
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011960 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265771.P1523677553551306081

/-! ## A265771.P5957746857379537439

`p?[A091972(p?[2*n+1])]`
-/

namespace A265771.P5957746857379537439
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091972 (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265771.P5957746857379537439

/-!
# A265772: Numerators of lower primes-only best approximates (POBAs) to sqrt(2); see Comments.

The programs for A265772, there is no canonical definition to state claims against.
-/

/-! ## A265772.P4287991444333948500

`floor(sqrt(2)*A265773(n+1))`
-/

namespace A265772.P4287991444333948500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (2 : ℝ) * (A265773 (n + 1) : ℝ)⌋

end

end A265772.P4287991444333948500

/-! ## A265772.P12604151394465728000

`A001951(A265773(n+1))`
-/

namespace A265772.P12604151394465728000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A265773 (n + 1)).toNat

end

end A265772.P12604151394465728000

/-! ## A265772.P8024867227172535796

`A022846(A265773(n+1)-1)+1`
-/

namespace A265772.P8024867227172535796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022846 (A265773 (n + 1) - 1).toNat + 1

end

end A265772.P8024867227172535796

/-! ## A265772.P5113315152975635065

`A049472(2*A265773(n+1))`
-/

namespace A265772.P5113315152975635065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (2 * A265773 (n + 1)).toNat

end

end A265772.P5113315152975635065

/-!
# A265773: Denominators of lower primes-only best approximates (POBAs) to sqrt(2); see Comments.

The programs for A265773, there is no canonical definition to state claims against.
-/

/-! ## A265773.P9467850093550836925

`A049474(A265772(n+1))`
-/

namespace A265773.P9467850093550836925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A265772 (n + 1)).toNat

end

end A265773.P9467850093550836925

/-! ## A265773.P13344636006686684034

`A049472(A265772(n+1)+1)`
-/

namespace A265773.P13344636006686684034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A265772 (n + 1) + 1).toNat

end

end A265773.P13344636006686684034

/-! ## A265773.P7490208669125370384

`A049473(or(1, A265772(n+1)))`
-/

namespace A265773.P7490208669125370384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (Int.lor 1 (A265772 (n + 1))).toNat

end

end A265773.P7490208669125370384

/-! ## A265773.P8176624571529468102

`A049473(A265772(n+1)-1)+1`
-/

namespace A265773.P8176624571529468102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (A265772 (n + 1) - 1).toNat + 1

end

end A265773.P8176624571529468102

/-! ## A265773.P4070380791455793212

`A130706(2*n)+A049473(A265772(n+1))`
-/

namespace A265773.P4070380791455793212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (2 * n) + A049473 (A265772 (n + 1)).toNat

end

end A265773.P4070380791455793212

/-!
# A265774: Numerators of upper primes-only best approximates (POBAs) to sqrt(2); see Comments.

The programs for A265774, there is no canonical definition to state claims against.
-/

/-! ## A265774.P807078731837316899

`ceil(sqrt(2)*A265775(n+1))`
-/

namespace A265774.P807078731837316899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 : ℝ) * (A265775 (n + 1) : ℝ)⌉

end

end A265774.P807078731837316899

/-! ## A265774.P15898190927680992286

`A001951(A265775(n+1))+1`
-/

namespace A265774.P15898190927680992286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 (A265775 (n + 1)).toNat + 1

end

end A265774.P15898190927680992286

/-! ## A265774.P11982632885653502589

`A049474(2*A265775(n+1))`
-/

namespace A265774.P11982632885653502589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (2 * A265775 (n + 1)).toNat

end

end A265774.P11982632885653502589

/-! ## A265774.P12395069821923882446

`A354806(n+1)+A184117(A265775(n+1))`
-/

namespace A265774.P12395069821923882446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354806 (n + 1) + A184117 (A265775 (n + 1)).toNat

end

end A265774.P12395069821923882446

/-!
# A265775: Denominators of upper primes-only best approximates (POBAs) to sqrt(2); see Comments.

The programs for A265775, there is no canonical definition to state claims against.
-/

/-! ## A265775.P7847057335340272195

`floor(A265774(n+1)/sqrt(2))`
-/

namespace A265775.P7847057335340272195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265774 (n + 1) : ℝ) / Real.sqrt (2 : ℝ)⌋

end

end A265775.P7847057335340272195

/-! ## A265775.P3358761901494089269

`A049472(A265774(n+1))`
-/

namespace A265775.P3358761901494089269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A265774 (n + 1)).toNat

end

end A265775.P3358761901494089269

/-! ## A265775.P6638734213327135668

`A049473(p?[A265774(n+1)])`
-/

namespace A265775.P6638734213327135668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A265775.P6638734213327135668

/-! ## A265775.P14941549962375516058

`A049474(A265774(n+1)-1)`
-/

namespace A265775.P14941549962375516058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A265774 (n + 1) - 1).toNat

end

end A265775.P14941549962375516058

/-! ## A265775.P9382865356294113851

`A049473(or(1, A265774(n+1)))`
-/

namespace A265775.P9382865356294113851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (Int.lor 1 (A265774 (n + 1))).toNat

end

end A265775.P9382865356294113851

/-!
# A265776: Numerators of primes-only best approximates (POBAs) to sqrt(2); see Comments.

The programs for A265776, there is no canonical definition to state claims against.
-/

/-! ## A265776.P8520983662788670148

`A192587(or(A002378(n), A105543(n)))`
-/

namespace A265776.P8520983662788670148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192587 (Int.lor (A002378 n) (A105543 n)).toNat

end

end A265776.P8520983662788670148

/-!
# A265777: Denominators of primes-only best approximates (POBAs) to sqrt(2); see Comments.

The programs for A265777, there is no canonical definition to state claims against.
-/

/-! ## A265777.P9828273303475804689

`A049472(A265776(n+1)+1)`
-/

namespace A265777.P9828273303475804689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A265776 (n + 1) + 1).toNat

end

end A265777.P9828273303475804689

/-! ## A265777.P16068104391699959535

`A049473(or(1, A265776(n+1)))`
-/

namespace A265777.P16068104391699959535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (Int.lor 1 (A265776 (n + 1))).toNat

end

end A265777.P16068104391699959535

/-! ## A265777.P2508305180795351882

`A049473(A265776(n+1)-1)+1`
-/

namespace A265777.P2508305180795351882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049473 (A265776 (n + 1) - 1).toNat + 1

end

end A265777.P2508305180795351882

/-! ## A265777.P15356747695605601859

`A130706(2*n)+A049473(A265776(n+1))`
-/

namespace A265777.P15356747695605601859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (2 * n) + A049473 (A265776 (n + 1)).toNat

end

end A265777.P15356747695605601859

/-!
# A265778: Numerators of lower primes-only best approximates (POBAs) to sqrt(3); see Comments.

The programs for A265778, there is no canonical definition to state claims against.
-/

/-! ## A265778.P10871347923973219443

`floor(sqrt(3)*A265779(n+1))`
-/

namespace A265778.P10871347923973219443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (3 : ℝ) * (A265779 (n + 1) : ℝ)⌋

end

end A265778.P10871347923973219443

/-! ## A265778.P17769112795029295674

`A022838(A265779(n+1))`
-/

namespace A265778.P17769112795029295674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022838 (A265779 (n + 1)).toNat

end

end A265778.P17769112795029295674

/-!
# A265779: Denominators of lower primes-only best approximates (POBAs) to sqrt(3); see Comments.

The programs for A265779, there is no canonical definition to state claims against.
-/

/-! ## A265779.P11332282440635081158

`ceil(A265778(n+1)/sqrt(3))`
-/

namespace A265779.P11332282440635081158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A265778 (n + 1) : ℝ) / Real.sqrt (3 : ℝ)⌉

end

end A265779.P11332282440635081158

/-! ## A265779.P734700016254895441

`A194979(A265778(n+1))`
-/

namespace A265779.P734700016254895441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194979 (A265778 (n + 1)).toNat

end

end A265779.P734700016254895441

/-! ## A265779.P7692438883487028063

`A097337(A265778(n+1)+1)`
-/

namespace A265779.P7692438883487028063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097337 (A265778 (n + 1) + 1).toNat

end

end A265779.P7692438883487028063

/-!
# A265780: Numerators of upper primes-only best approximates (POBAs) to sqrt(3); see Comments.

The programs for A265780, there is no canonical definition to state claims against.
-/

/-! ## A265780.P17846256015004982140

`A087821(A038204(n+2))`
-/

namespace A265780.P17846256015004982140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087821 (A038204 (n + 2)).toNat

end

end A265780.P17846256015004982140

/-! ## A265780.P16672989468015845468

`p?[∑[A310413(A280542(n))]]`
-/

namespace A265780.P16672989468015845468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310413 (A280542 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265780.P16672989468015845468

/-! ## A265780.P2185839863422703526

`A023201(lt[A001608(n), A125958(n+1)])`
-/

namespace A265780.P2185839863422703526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001608 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125958 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A265780.P2185839863422703526

/-!
# A265781: Denominators of upper primes-only best approximates (POBAs) to sqrt(3); see Comments.

The programs for A265781, there is no canonical definition to state claims against.
-/

/-! ## A265781.P1636784768548230487

`p?[∑[A103923(A298635(n+1))]]`
-/

namespace A265781.P1636784768548230487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103923 (A298635 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265781.P1636784768548230487

/-! ## A265781.P3249497158683388832

`p?[C(A038965(n+1), A340088(2*n+5))]`
-/

namespace A265781.P3249497158683388832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A038965 (n + 1)).toNat (A340088 (2 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A265781.P3249497158683388832

/-!
# A265782: Numerators of primes-only best approximates (POBAs) to sqrt(3); see Comments.

The programs for A265782, there is no canonical definition to state claims against.
-/

/-! ## A265782.P159233006836746070

`A265778(a(n-3))` with `a(0)=5, a(1)=3, a(2)=5, a(3)=19, a(4)=71`
-/

namespace A265782.P159233006836746070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 3, 5, 19, 71] fun n a =>
  A265778 (a (n - 3)).toNat

end

end A265782.P159233006836746070

/-! ## A265782.P9580511222067589360

`A265778(or(n, A006792(n)))`
-/

namespace A265782.P9580511222067589360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265778 (Int.lor (n : ℤ) (A006792 (n + 10))).toNat

end

end A265782.P9580511222067589360

/-!
# A265783: Denominators of primes-only best approximates (POBAs) to sqrt(3); see Comments.

The programs for A265783, there is no canonical definition to state claims against.
-/

/-! ## A265783.P4491517458277284089

`p?[A343029(A320807(n))+A320806(n)]`
-/

namespace A265783.P4491517458277284089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 (A320807 n).toNat + A320806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265783.P4491517458277284089

/-! ## A265783.P8332788756821813392

`p?[ceil((2^n-n%3)/(sqrt(3)-1))]`
-/

namespace A265783.P8332788756821813392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 ^ n : ℤ) - ((n % 3 : ℕ) : ℤ) : ℝ) / (Real.sqrt (3 : ℝ) - 1)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265783.P8332788756821813392

/-!
# A265784: Numerators of lower primes-only best approximates (POBAs) to sqrt(5); see Comments.

The programs for A265784, there is no canonical definition to state claims against.
-/

/-! ## A265784.P8299480161801525245

`record[A106608(A265788(n+1))]`
-/

namespace A265784.P8299480161801525245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A265788 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A265784.P8299480161801525245

/-! ## A265784.P15435489849996116422

`A265788(A202448(n+1)+n)`
-/

namespace A265784.P15435489849996116422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265788 (A202448 (n + 1) + (n : ℤ)).toNat

end

end A265784.P15435489849996116422

/-! ## A265784.P8792944279340859179

`p?[A106608(p?[A265788(n+1)])]`
-/

namespace A265784.P8792944279340859179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265788 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265784.P8792944279340859179

/-! ## A265784.P16391558756049367559

`A265788(n+2)-A000122(A000142(n))`
-/

namespace A265784.P16391558756049367559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265788 (n + 2) - A000122 (A000142 n).toNat

end

end A265784.P16391558756049367559

/-!
# A265785: Denominators of lower primes-only best approximates (POBAs) to sqrt(5); see Comments.

The programs for A265785, there is no canonical definition to state claims against.
-/

/-! ## A265785.P2331033416237539185

`ceil(A265784(n+1)/A265786(n+1)*A265787(n+1))`
-/

namespace A265785.P2331033416237539185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A265784 (n + 1) : ℚ) / (A265786 (n + 1) : ℚ) * (A265787 (n + 1) : ℚ)⌉

end

end A265785.P2331033416237539185

/-! ## A265785.P15553617392869148869

`A265789(lt[n-∏{digits}[n, #], floor(n/2)])`
-/

namespace A265785.P15553617392869148869
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).prod : ℕ) : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265789 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A265785.P15553617392869148869

/-! ## A265785.P8495979742319354428

`p?[A084797(A020695(n))]`
-/

namespace A265785.P8495979742319354428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084797 (A020695 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265785.P8495979742319354428

/-!
# A265786: Numerators of upper primes-only best approximates (POBAs) to sqrt(5); see Comments.

The programs for A265786, there is no canonical definition to state claims against.
-/

/-! ## A265786.P13259381847024349112

`A198082(A265787(n+1))`
-/

namespace A265786.P13259381847024349112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198082 (A265787 (n + 1)).toNat

end

end A265786.P13259381847024349112

/-!
# A265787: Denominators of upper primes-only best approximates (POBAs) to sqrt(5); see Comments.

The programs for A265787, there is no canonical definition to state claims against.
-/

/-! ## A265787.P13929309372518614867

`floor(A265786(n+1)/sqrt(5))`
-/

namespace A265787.P13929309372518614867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A265786 (n + 1) : ℝ) / Real.sqrt (5 : ℝ)⌋

end

end A265787.P13929309372518614867

/-! ## A265787.P15406271144292466215

`A205687(A006595(n))`
-/

namespace A265787.P15406271144292466215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205687 (A006595 n).toNat

end

end A265787.P15406271144292466215

/-!
# A265788: Numerators of primes-only best approximates (POBAs) to sqrt(5); see Comments.

The programs for A265788, there is no canonical definition to state claims against.
-/

/-! ## A265788.P8576948100190622042

`∩[A019391(n+1), A191917(n+1)]`
-/

namespace A265788.P8576948100190622042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A265788.P8576948100190622042

/-! ## A265788.P2947139134782631674

`p?[record[xor(n, A318191(n))]]`
-/

namespace A265788.P2947139134782631674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A318191 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265788.P2947139134782631674

/-!
# A265789: Denominators of primes-only best approximates (POBAs) to sqrt(5); see Comments.

The programs for A265789, there is no canonical definition to state claims against.
-/

/-! ## A265789.P7463871809731599260

`A265785(A114799(n))`
-/

namespace A265789.P7463871809731599260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265785 (A114799 n).toNat

end

end A265789.P7463871809731599260

/-! ## A265789.P2932949608547423320

`A265785(n^A115722(n))`
-/

namespace A265789.P2932949608547423320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265785 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A115722 n : ℤ))).toNat

end

end A265789.P2932949608547423320

/-! ## A265789.P15574911131643610867

`A265785(C(n, A115722(n)))`
-/

namespace A265789.P15574911131643610867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265785 (Nat.choose n (A115722 n).toNat)

end

end A265789.P15574911131643610867

/-! ## A265789.P10923806288528968211

`p?[A094442(n)-A036355(n)]`
-/

namespace A265789.P10923806288528968211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094442 n - A036355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265789.P10923806288528968211

/-! ## A265789.P15098252411921928707

`A265785(A051223(n+1)+n)`
-/

namespace A265789.P15098252411921928707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265785 (A051223 (n + 1) + (n : ℤ)).toNat

end

end A265789.P15098252411921928707

/-!
# A265790: Numerators of lower primes-only best approximates (POBAs) to sqrt(8); see Comments.

The programs for A265790, there is no canonical definition to state claims against.
-/

/-! ## A265790.P10689352604855072585

`A048266(or(n, p?[4*n+1]))`
-/

namespace A265790.P10689352604855072585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (Nat.lor n (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)))

end

end A265790.P10689352604855072585

/-!
# A265791: Denominators of lower primes-only best approximates (POBAs) to sqrt(8); see Comments.

The programs for A265791, there is no canonical definition to state claims against.
-/

/-! ## A265791.P8193261991433604861

`ceil(A265790(n+1)/sqrt(8))`
-/

namespace A265791.P8193261991433604861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A265790 (n + 1) : ℝ) / Real.sqrt (8 : ℝ)⌉

end

end A265791.P8193261991433604861

/-! ## A265791.P8667729146532259132

`p?[A161420(n)-A023969(4*n)]`
-/

namespace A265791.P8667729146532259132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161420 n - A023969 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265791.P8667729146532259132

/-!
# A265792: Numerators of upper primes-only best approximates (POBAs) to sqrt(8); see Comments.

The programs for A265792, there is no canonical definition to state claims against.
-/

/-! ## A265792.P10786018405487229543

`A108539(A054871(n))`
-/

namespace A265792.P10786018405487229543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108539 (A054871 n).toNat

end

end A265792.P10786018405487229543

/-!
# A265793: Denominators of upper primes-only best approximates (POBAs) to sqrt(8); see Comments.

The programs for A265793, there is no canonical definition to state claims against.
-/

/-! ## A265793.P696293838410155593

`A002034(A325127(n+1)+A238118(n+1))`
-/

namespace A265793.P696293838410155593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002034 (A325127 (n + 1) + A238118 (n + 1)).toNat

end

end A265793.P696293838410155593

/-! ## A265793.P1144643720919434392

`p?[round(sqrt(A057195(3*(n+1))))]`
-/

namespace A265793.P1144643720919434392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A057195 (3 * (n + 1)) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265793.P1144643720919434392

/-!
# A265794: Numerators of primes-only best approximates (POBAs) to sqrt(8); see Comments.

The programs for A265794, there is no canonical definition to state claims against.
-/

/-! ## A265794.P6636953140551372571

`A060940(A087375(n+1)+1)`
-/

namespace A265794.P6636953140551372571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060940 (A087375 (n + 1) + 1).toNat

end

end A265794.P6636953140551372571

/-! ## A265794.P10157973962899352060

`A141791(A100279(n)+A000201(n+1))`
-/

namespace A265794.P10157973962899352060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141791 (A100279 n + A000201 (n + 1)).toNat

end

end A265794.P10157973962899352060

/-!
# A265795: Denominators of primes-only best approximates (POBAs) to sqrt(8); see Comments.

The programs for A265795, there is no canonical definition to state claims against.
-/

/-! ## A265795.P1824480878841639021

`round(A265794(n+1)/sqrt(8))`
-/

namespace A265795.P1824480878841639021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A265794 (n + 1) : ℝ) / Real.sqrt (8 : ℝ))

end

end A265795.P1824480878841639021

/-! ## A265795.P9249021470046145318

`p?[A060464(A305389(n)+a(n-1))-1]` with `a(0)=2`
-/

namespace A265795.P9249021470046145318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A060464 (A305389 n + f1 (n - 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265795.P9249021470046145318

/-! ## A265795.P7659321032051777418

`p?[A134478(A113192(n+1))]`
-/

namespace A265795.P7659321032051777418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134478 (A113192 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A265795.P7659321032051777418

/-!
# A265796: Numerators of lower primes-only best approximates (POBAs) to the golden ratio, phi (A001622); see Comments.

The programs for A265796, there is no canonical definition to state claims against.
-/

/-! ## A265796.P1140836381894413194

`floor(ϕ*A265797(n+1))`
-/

namespace A265796.P1140836381894413194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (A265797 (n + 1) : ℝ)⌋

end

end A265796.P1140836381894413194

/-! ## A265796.P13359873076161557378

`A006530(round(ϕ*A265797(n+1)))`
-/

namespace A265796.P13359873076161557378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (Real.goldenRatio * (A265797 (n + 1) : ℝ))).toNat

end

end A265796.P13359873076161557378

/-! ## A265796.P14658421824261354632

`A020639(round(ϕ*A265797(n+1)))`
-/

namespace A265796.P14658421824261354632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (Real.goldenRatio * (A265797 (n + 1) : ℝ))).toNat

end

end A265796.P14658421824261354632

/-! ## A265796.P10287515481857340686

`ceil(ϕ*A265797(n+1)-A007318(∑[n]))`
-/

namespace A265796.P10287515481857340686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (A265797 (n + 1) : ℝ) - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)⌉

end

end A265796.P10287515481857340686

/-! ## A265796.P10461196112218897040

`A000201(A265797(n+1))`
-/

namespace A265796.P10461196112218897040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A265797 (n + 1)).toNat

end

end A265796.P10461196112218897040

/-!
# A265797: Denominator of lower primes-only best approximates (POBAs) to the golden ratio, phi (A001622); see Comments.

The programs for A265797, there is no canonical definition to state claims against.
-/

/-! ## A265797.P10093505568537211322

`ceil(A265796(n+1)/ϕ)`
-/

namespace A265797.P10093505568537211322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A265796 (n + 1) : ℝ) / Real.goldenRatio⌉

end

end A265797.P10093505568537211322

/-! ## A265797.P5194548595603410929

`A006530(round(A265796(n+1)/ϕ))`
-/

namespace A265797.P5194548595603410929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A265796 (n + 1) : ℝ) / Real.goldenRatio)).toNat

end

end A265797.P5194548595603410929

/-! ## A265797.P2493072507671028614

`A020639(round(A265796(n+1)/ϕ))`
-/

namespace A265797.P2493072507671028614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A265796 (n + 1) : ℝ) / Real.goldenRatio)).toNat

end

end A265797.P2493072507671028614

/-! ## A265797.P5364850452318233682

`A005206(A265796(n+1))`
-/

namespace A265797.P5364850452318233682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A265796 (n + 1)).toNat

end

end A265797.P5364850452318233682

/-! ## A265797.P615606821325241642

`∑{d}[A265796(n+1), A189579(#)]`
-/

namespace A265797.P615606821325241642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A189579 d

end

end A265797.P615606821325241642

/-!
# A265798: Numerators of upper primes-only best approximates (POBAs) to the golden ratio, phi (A001622); see Comments.

The programs for A265798, there is no canonical definition to state claims against.
-/

/-! ## A265798.P598255027502215484

`A002251(or(1, A265799(n+1)))`
-/

namespace A265798.P598255027502215484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (Int.lor 1 (A265799 (n + 1))).toNat

end

end A265798.P598255027502215484

/-! ## A265798.P11243762171956075683

`A004956(or(1, A265799(n+1)))`
-/

namespace A265798.P11243762171956075683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004956 (Int.lor 1 (A265799 (n + 1))).toNat

end

end A265798.P11243762171956075683

/-! ## A265798.P10281023864374059421

`A007067(or(1, A265799(n+1)))`
-/

namespace A265798.P10281023864374059421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007067 (Int.lor 1 (A265799 (n + 1))).toNat

end

end A265798.P10281023864374059421

/-! ## A265798.P4719893859238631633

`A026351(or(1, A265799(n+1)))`
-/

namespace A265798.P4719893859238631633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (Int.lor 1 (A265799 (n + 1))).toNat

end

end A265798.P4719893859238631633

/-! ## A265798.P14376637616120719572

`A002251(A265799(n+1)+A000007(n))`
-/

namespace A265798.P14376637616120719572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (A265799 (n + 1) + A000007 n).toNat

end

end A265798.P14376637616120719572

/-!
# A265799: Denominators of upper primes-only best approximates (POBAs) to the golden ratio, phi (A001622); see Comments.

The programs for A265799, there is no canonical definition to state claims against.
-/

/-! ## A265799.P14861027494462412630

`A005206(A265798(n+1))-A000007(n)`
-/

namespace A265799.P14861027494462412630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A265798 (n + 1)).toNat - A000007 n

end

end A265799.P14861027494462412630

/-! ## A265799.P12977748186298342960

`A005206(A265798(n+1)-A000038(n))`
-/

namespace A265799.P12977748186298342960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A265798 (n + 1) - A000038 n).toNat

end

end A265799.P12977748186298342960

/-! ## A265799.P8037069332284079923

`A005206(A265798(n+1))-A111332(n)`
-/

namespace A265799.P8037069332284079923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A265798 (n + 1)).toNat - A111332 n

end

end A265799.P8037069332284079923

/-! ## A265799.P16519039639686292183

`A005206(A265798(n+1)-A316825(n))`
-/

namespace A265799.P16519039639686292183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A265798 (n + 1) - A316825 n).toNat

end

end A265799.P16519039639686292183

/-! ## A265799.P2005888479030558996

`A005206(A265798(n+1)-A345999(n+1))`
-/

namespace A265799.P2005888479030558996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A265798 (n + 1) - A345999 (n + 1)).toNat

end

end A265799.P2005888479030558996

