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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
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
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.B012.C000
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
# A273700: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 865", based on the 5-celled von Neumann neighborhood.

The programs for A273700, there is no canonical definition to state claims against.
-/

/-! ## A273700.P2093756907731715340

`A273699(2^n-1)`
-/

namespace A273700.P2093756907731715340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273699 (2 ^ n - 1)

end

end A273700.P2093756907731715340

/-! ## A273700.P8615328576673572443

`record[A273699(A243354(n+1))]`
-/

namespace A273700.P8615328576673572443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273699 (A243354 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273700.P8615328576673572443

/-! ## A273700.P10364042850974142874

`record[A273699(A324865(n+1))]`
-/

namespace A273700.P10364042850974142874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273699 (A324865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273700.P10364042850974142874

/-! ## A273700.P13535435025490894167

`record[A273699(A055248(n)-1)]`
-/

namespace A273700.P13535435025490894167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273699 (A055248 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273700.P13535435025490894167

/-! ## A273700.P7630538766632319990

`A273699(A000225(n))+char[13]`
-/

namespace A273700.P7630538766632319990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273699 (A000225 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A273700.P7630538766632319990

/-!
# A273701: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 865", based on the 5-celled von Neumann neighborhood.

The programs for A273701, there is no canonical definition to state claims against.
-/

/-! ## A273701.P14139144017540555158

`∑[A273699(n)]`
-/

namespace A273701.P14139144017540555158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273701.P14139144017540555158

/-! ## A273701.P4774987490589455241

`A273699(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273701.P4774987490589455241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273699 n + a (A023443 n).toNat

end

end A273701.P4774987490589455241

/-! ## A273701.P18307167206554814019

`∑[∑[A273702(n)]+1-A273702(n)]`
-/

namespace A273701.P18307167206554814019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273702 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273702 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273701.P18307167206554814019

/-! ## A273701.P11549792220756513035

`a(n-1)+A273699(n)+A000007(n)` with `a(0)=1`
-/

namespace A273701.P11549792220756513035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273699 n + A000007 n)

end

end A273701.P11549792220756513035

/-! ## A273701.P6008972015763588985

`a(n-1)+A273699(n)%A016826(n)` with `a(0)=1`
-/

namespace A273701.P6008972015763588985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A273699 n) (A016826 n)

end

end A273701.P6008972015763588985

/-! ## A273701.P8239433482274650591

`a(n-1)+A273699(n)+A000038(n+1)` with `a(0)=1`
-/

namespace A273701.P8239433482274650591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273699 n + A000038 (n + 1))

end

end A273701.P8239433482274650591

/-!
# A273702: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 865", based on the 5-celled von Neumann neighborhood.

The programs for A273702, there is no canonical definition to state claims against.
-/

/-! ## A273702.P16625389933093685106

`Δ[A273699(n)]`
-/

namespace A273702.P16625389933093685106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273702.P16625389933093685106

/-! ## A273702.P3541415479728493506

`A273699(n+1)-A273699(n)`
-/

namespace A273702.P3541415479728493506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273699 (n + 1) - A273699 n

end

end A273702.P3541415479728493506

/-!
# A273703: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 870", based on the 5-celled von Neumann neighborhood.

The programs for A273703, there is no canonical definition to state claims against.
-/

/-! ## A273703.P8378766628274909125

`∑[A273706(abs(1-n))]+1`
-/

namespace A273703.P8378766628274909125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273706 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A273703.P8378766628274909125

/-! ## A273703.P16775395807703196857

`A273706(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273703.P16775395807703196857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273706 (n - 1) + a (n - 1)

end

end A273703.P16775395807703196857

/-! ## A273703.P4265076736433850581

`∑[A273706(abs(1-n))^A019431(2*n)]`
-/

namespace A273703.P4265076736433850581
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273706 |1 - (n : ℤ)|.toNat : ℚ) ^ (A019431 (2 * n) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273703.P4265076736433850581

/-! ## A273703.P15726860023157683193

`Δ[A273705(n)]-A273706(n)`
-/

namespace A273703.P15726860023157683193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273705 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273706 n

end

end A273703.P15726860023157683193

/-! ## A273703.P18144579445279603302

`A273705(n+1)-(A273706(n)+A273705(n))`
-/

namespace A273703.P18144579445279603302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273705 (n + 1) - (A273706 n + A273705 n)

end

end A273703.P18144579445279603302

/-! ## A273703.P14626735181598296270

`A005408(∑[A273706(abs(1-n))]/2)`
-/

namespace A273703.P14626735181598296270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273706 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2)).toNat

end

end A273703.P14626735181598296270

/-! ## A273703.P11828779437848113294

`A141310(∑[A273706(abs(1-n))])`
-/

namespace A273703.P11828779437848113294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273706 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A273703.P11828779437848113294

/-! ## A273703.P9680939179955768740

`A141310(∑[A273706(n)]-A273706(n))`
-/

namespace A273703.P9680939179955768740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f1 j - A273706 n).toNat

end

end A273703.P9680939179955768740

/-! ## A273703.P8730853401923231771

`A004442(∑[A273706(abs(1-n))])`
-/

namespace A273703.P8730853401923231771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273706 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A273703.P8730853401923231771

/-! ## A273703.P6385165456241079750

`A109613(∑[A273706(abs(1-n))])`
-/

namespace A273703.P6385165456241079750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273706 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A273703.P6385165456241079750

/-!
# A273704: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 870", based on the 5-celled von Neumann neighborhood.

The programs for A273704, there is no canonical definition to state claims against.
-/

/-! ## A273704.P14385981810937855058

`A273703(2^n-1)`
-/

namespace A273704.P14385981810937855058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273703 (2 ^ n - 1)

end

end A273704.P14385981810937855058

/-! ## A273704.P15939512622121068053

`record[A273703(A153141(n))]`
-/

namespace A273704.P15939512622121068053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273703 (A153141 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273704.P15939512622121068053

/-! ## A273704.P3831129023451619941

`record[A273703(A227351(n))]`
-/

namespace A273704.P3831129023451619941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273703 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273704.P3831129023451619941

/-! ## A273704.P6401548032532090107

`or(1, A273703(A000225(n)))`
-/

namespace A273704.P6401548032532090107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273703 (A000225 n).toNat)

end

end A273704.P6401548032532090107

/-! ## A273704.P10970487314457635892

`record[A273703(A322994(n+1))]`
-/

namespace A273704.P10970487314457635892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273703 (A322994 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273704.P10970487314457635892

/-!
# A273705: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 870", based on the 5-celled von Neumann neighborhood.

The programs for A273705, there is no canonical definition to state claims against.
-/

/-! ## A273705.P11064042436309556918

`∑[A273703(n)]`
-/

namespace A273705.P11064042436309556918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273705.P11064042436309556918

/-! ## A273705.P2915083086620565670

`∑[∑[A273706(abs(1-n))]+1]`
-/

namespace A273705.P2915083086620565670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273706 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273705.P2915083086620565670

/-! ## A273705.P6696580679453419549

`A273703(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A273705.P6696580679453419549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273703 n + a ((n : ℤ) - A057427 n).toNat

end

end A273705.P6696580679453419549

/-! ## A273705.P6541201857344274974

`A273703(A006370(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A273705.P6541201857344274974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273703 (A006370 (2 * n)).toNat + a (n - 1)

end

end A273705.P6541201857344274974

/-! ## A273705.P10014015302185995873

`A273703(A004525(n+n))+a(n-1)` with `a(0)=1`
-/

namespace A273705.P10014015302185995873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273703 (A004525 (n + n)).toNat + a (n - 1)

end

end A273705.P10014015302185995873

/-! ## A273705.P16995627315005070640

`A273703(A004526(n+n))+a(n-1)` with `a(0)=1`
-/

namespace A273705.P16995627315005070640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273703 (A004526 (n + n)).toNat + a (n - 1)

end

end A273705.P16995627315005070640

/-! ## A273705.P7879883583049031992

`A273703(gcd(n, A000290(n)))+a(n-1)` with `a(0)=1`
-/

namespace A273705.P7879883583049031992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273703 (Int.gcd (n : ℤ) (A000290 n)) + a (n - 1)

end

end A273705.P7879883583049031992

/-! ## A273705.P1617762820945459049

`A273703(n)+a(A079067(A008578(n+1)))` with `a(0)=1`
-/

namespace A273705.P1617762820945459049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273703 n + a (A079067 (A008578 (n + 1)).toNat).toNat

end

end A273705.P1617762820945459049

/-!
# A273706: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 870", based on the 5-celled von Neumann neighborhood.

The programs for A273706, there is no canonical definition to state claims against.
-/

/-! ## A273706.P6560131116060197919

`Δ[A273703(n)]`
-/

namespace A273706.P6560131116060197919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273706.P6560131116060197919

/-! ## A273706.P372549092488017975

`A273703(n+1)-A273703(n)`
-/

namespace A273706.P372549092488017975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273703 (n + 1) - A273703 n

end

end A273706.P372549092488017975

/-! ## A273706.P14822894654887405380

`A273682(n)+A218882(A022166(n))`
-/

namespace A273706.P14822894654887405380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273682 n + A218882 (A022166 n).toNat

end

end A273706.P14822894654887405380

/-! ## A273706.P7847967380555662042

`A218882(A022166(n))+Δ[A273544(n)]`
-/

namespace A273706.P7847967380555662042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218882 (A022166 n).toNat + (f1 (n + 1) - f1 n)

end

end A273706.P7847967380555662042

/-! ## A273706.P6313109539073246152

`A218882(A022166(n))+A273544(n+1)-A273544(n)`
-/

namespace A273706.P6313109539073246152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218882 (A022166 n).toNat + (A273544 (n + 1) - A273544 n)

end

end A273706.P6313109539073246152

/-!
# A273707: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 873", based on the 5-celled von Neumann neighborhood.

The programs for A273707, there is no canonical definition to state claims against.
-/

/-! ## A273707.P10605665962587221503

`A273710(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273707.P10605665962587221503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273710 (n - 1) + a (n - 1)

end

end A273707.P10605665962587221503

/-! ## A273707.P5776915537615989166

`∑[A273710(n-A057427(n))]-2`
-/

namespace A273707.P5776915537615989166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273710 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A273707.P5776915537615989166

/-! ## A273707.P13459029490329070769

`Δ[A273709(n)]-A273710(n)`
-/

namespace A273707.P13459029490329070769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273710 n

end

end A273707.P13459029490329070769

/-! ## A273707.P13611887065326294548

`A273709(n+1)-(A273710(n)+A273709(n))`
-/

namespace A273707.P13611887065326294548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273709 (n + 1) - (A273710 n + A273709 n)

end

end A273707.P13611887065326294548

/-!
# A273708: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 873", based on the 5-celled von Neumann neighborhood.

The programs for A273708, there is no canonical definition to state claims against.
-/

/-! ## A273708.P17115254367333325591

`A273707(2^n-1)`
-/

namespace A273708.P17115254367333325591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273707 (2 ^ n - 1)

end

end A273708.P17115254367333325591

/-! ## A273708.P6454374001336133707

`record[A273707(A218616(n))]`
-/

namespace A273708.P6454374001336133707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273707 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273708.P6454374001336133707

/-! ## A273708.P17414129565178532758

`record[A273707(A243354(n+1))]`
-/

namespace A273708.P17414129565178532758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273707 (A243354 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273708.P17414129565178532758

/-! ## A273708.P17143814755523699185

`record[A273707(A302029(n+1))]`
-/

namespace A273708.P17143814755523699185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273707 (A302029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273708.P17143814755523699185

/-! ## A273708.P17640610124369635953

`record[A273707(A324865(n+1))]`
-/

namespace A273708.P17640610124369635953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273707 (A324865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273708.P17640610124369635953

/-!
# A273709: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 873", based on the 5-celled von Neumann neighborhood.

The programs for A273709, there is no canonical definition to state claims against.
-/

/-! ## A273709.P364987932740468995

`∑[A273707(n)]`
-/

namespace A273709.P364987932740468995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273709.P364987932740468995

/-! ## A273709.P14309366890197830950

`∑[∑[A273710(n)]+1-A273710(n)]`
-/

namespace A273709.P14309366890197830950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273710 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273710 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273709.P14309366890197830950

/-! ## A273709.P13891096840779475045

`a(n-1)+A273707(n)+A000038(n)` with `a(0)=1`
-/

namespace A273709.P13891096840779475045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273707 n + A000038 n)

end

end A273709.P13891096840779475045

/-! ## A273709.P9659094610613533394

`A273707(A001281(n+n))+a(n-1)` with `a(0)=1`
-/

namespace A273709.P9659094610613533394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273707 (A001281 (n + n)).toNat + a (n - 1)

end

end A273709.P9659094610613533394

/-! ## A273709.P10993414279562149380

`A273707(A006370(n+n))+a(n-1)` with `a(0)=1`
-/

namespace A273709.P10993414279562149380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273707 (A006370 (n + n)).toNat + a (n - 1)

end

end A273709.P10993414279562149380

/-! ## A273709.P1948836147569426953

`A273707(n%A085986(n))+a(n-1)` with `a(0)=1`
-/

namespace A273709.P1948836147569426953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273707 (Int.tmod (n : ℤ) (A085986 n)).toNat + a (n - 1)

end

end A273709.P1948836147569426953

/-! ## A273709.P14361826849364099688

`a(n-1)+gcd(2, A000040(n+1))*A273707(n)` with `a(0)=1`
-/

namespace A273709.P14361826849364099688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (Int.gcd 2 (A000040 (n + 1)) : ℤ) * A273707 n

end

end A273709.P14361826849364099688

/-!
# A273710: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 873", based on the 5-celled von Neumann neighborhood.

The programs for A273710, there is no canonical definition to state claims against.
-/

/-! ## A273710.P15229478305761864165

`Δ[A273707(n)]`
-/

namespace A273710.P15229478305761864165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273710.P15229478305761864165

/-! ## A273710.P9185284131016147926

`A273707(n+1)-A273707(n)`
-/

namespace A273710.P9185284131016147926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273707 (n + 1) - A273707 n

end

end A273710.P9185284131016147926

/-! ## A273710.P17132647978567527889

`A273707(n+1)+A273707(n)/A057428(A166633(n+1))`
-/

namespace A273710.P17132647978567527889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273707 (n + 1) : ℚ) + (A273707 n : ℚ) / (A057428 (A166633 (n + 1)).toNat : ℚ)

end

end A273710.P17132647978567527889

/-! ## A273710.P7348324319795259989

`record[A273707(A193592(n))]-A273707(n)`
-/

namespace A273710.P7348324319795259989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273707 (A193592 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A273707 n

end

end A273710.P7348324319795259989

/-!
# A273711: The Hadamard product of omega(n) and A007875(n).

The programs for A273711, the canonical program `A273711.P5353043427219471615` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273711 has offset 1).

The definition of A273711 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, A007875, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A273711.P5353043427219471615

`A001221(n+1)*A007875(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A273711

/-- `A001221(n+1)*A007875(n+1)` -/
def P5353043427219471615.Spec : Prop :=
  ∀ n, P5353043427219471615.a n = A273711 (n + 1)

theorem P5353043427219471615.correct : P5353043427219471615.Spec := by
  intro n
  simp only [A273711, Nat.add_sub_cancel]

end A273711

/-! ## A273711.P17711359982919063381

`∑{d}[n+1, A344478(#)]`
-/

namespace A273711.P17711359982919063381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A344478 d

end

end A273711.P17711359982919063381

namespace A273711

/-- `∑{d}[n+1, A344478(#)]` -/
def P17711359982919063381.Spec : Prop :=
  ∀ n, P17711359982919063381.a n = A273711 (n + 1)

end A273711

/-! ## A273711.P13605906755074729982

`A062799(∏{p}[n+1, #])`
-/

namespace A273711.P13605906755074729982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062799 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A273711.P13605906755074729982

namespace A273711

/-- `A062799(∏{p}[n+1, #])` -/
def P13605906755074729982.Spec : Prop :=
  ∀ n, P13605906755074729982.a n = A273711 (n + 1)

end A273711

/-! ## A273711.P10533899778789501740

`A069264(∏{p}[n+1, #])`
-/

namespace A273711.P10533899778789501740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069264 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A273711.P10533899778789501740

namespace A273711

/-- `A069264(∏{p}[n+1, #])` -/
def P10533899778789501740.Spec : Prop :=
  ∀ n, P10533899778789501740.a n = A273711 (n + 1)

end A273711

/-! ## A273711.P17918855114279532409

`A099301(∏{p}[n+1, #])`
-/

namespace A273711.P17918855114279532409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099301 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A273711.P17918855114279532409

namespace A273711

/-- `A099301(∏{p}[n+1, #])` -/
def P17918855114279532409.Spec : Prop :=
  ∀ n, P17918855114279532409.a n = A273711 (n + 1)

end A273711

/-! ## A273711.P6136388804945025275

`A351942(∏{p}[n+1, #])`
-/

namespace A273711.P6136388804945025275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351942 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A273711.P6136388804945025275

namespace A273711

/-- `A351942(∏{p}[n+1, #])` -/
def P6136388804945025275.Spec : Prop :=
  ∀ n, P6136388804945025275.a n = A273711 (n + 1)

end A273711

/-! ## A273711.P4600690756129207795

`A353379(∏{p}[n+1, #])`
-/

namespace A273711.P4600690756129207795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353379 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A273711.P4600690756129207795

namespace A273711

/-- `A353379(∏{p}[n+1, #])` -/
def P4600690756129207795.Spec : Prop :=
  ∀ n, P4600690756129207795.a n = A273711 (n + 1)

end A273711

/-! ## A273711.P13797989803567520331

`A003415(A034444(n+1))`
-/

namespace A273711.P13797989803567520331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A034444 (n + 1)).toNat

end

end A273711.P13797989803567520331

namespace A273711

/-- `A003415(A034444(n+1))` -/
def P13797989803567520331.Spec : Prop :=
  ∀ n, P13797989803567520331.a n = A273711 (n + 1)

end A273711

/-! ## A273711.P14168089669286838068

`A062799(A007947(n+1))`
-/

namespace A273711.P14168089669286838068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062799 (A007947 (n + 1)).toNat

end

end A273711.P14168089669286838068

namespace A273711

/-- `A062799(A007947(n+1))` -/
def P14168089669286838068.Spec : Prop :=
  ∀ n, P14168089669286838068.a n = A273711 (n + 1)

end A273711

/-! ## A273711.P11990840008525832714

`A000788(A309307(n+1))`
-/

namespace A273711.P11990840008525832714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 (A309307 (n + 1)).toNat

end

end A273711.P11990840008525832714

namespace A273711

/-- `A000788(A309307(n+1))` -/
def P11990840008525832714.Spec : Prop :=
  ∀ n, P11990840008525832714.a n = A273711 (n + 1)

end A273711

/-! ## A273711.P16144279549993713721

`A062799(A292586(n+1))`
-/

namespace A273711.P16144279549993713721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062799 (A292586 (n + 1)).toNat

end

end A273711.P16144279549993713721

namespace A273711

/-- `A062799(A292586(n+1))` -/
def P16144279549993713721.Spec : Prop :=
  ∀ n, P16144279549993713721.a n = A273711 (n + 1)

end A273711

/-! ## A273711.P17406847612895861356

`A329033(A105561(n+1))`
-/

namespace A273711.P17406847612895861356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329033 (A105561 (n + 1)).toNat

end

end A273711.P17406847612895861356

namespace A273711

/-- `A329033(A105561(n+1))` -/
def P17406847612895861356.Spec : Prop :=
  ∀ n, P17406847612895861356.a n = A273711 (n + 1)

end A273711

/-! ## A273711.P17552827293701202399

`∑{d}[A007947(n+1), A001221(#)]`
-/

namespace A273711.P17552827293701202399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d

end

end A273711.P17552827293701202399

namespace A273711

/-- `∑{d}[A007947(n+1), A001221(#)]` -/
def P17552827293701202399.Spec : Prop :=
  ∀ n, P17552827293701202399.a n = A273711 (n + 1)

end A273711

/-! ## A273711.P14087927374816039102

`∑{d}[A007947(n+1), A001222(#)]`
-/

namespace A273711.P14087927374816039102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A001222 d

end

end A273711.P14087927374816039102

namespace A273711

/-- `∑{d}[A007947(n+1), A001222(#)]` -/
def P14087927374816039102.Spec : Prop :=
  ∀ n, P14087927374816039102.a n = A273711 (n + 1)

end A273711

/-! ## A273711.P7904320739100985171

`∑{d}[A034444(n+1), A347134(#)]`
-/

namespace A273711.P7904320739100985171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A347134 d

end

end A273711.P7904320739100985171

namespace A273711

/-- `∑{d}[A034444(n+1), A347134(#)]` -/
def P7904320739100985171.Spec : Prop :=
  ∀ n, P7904320739100985171.a n = A273711 (n + 1)

end A273711

/-! ## A273711.P11420441411365624803

`A003415(A000005(∏{p}[n+1, #]))`
-/

namespace A273711.P11420441411365624803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A000005 (∏ p ∈ Nat.primeFactors (f1 n), p)).toNat

end

end A273711.P11420441411365624803

namespace A273711

/-- `A003415(A000005(∏{p}[n+1, #]))` -/
def P11420441411365624803.Spec : Prop :=
  ∀ n, P11420441411365624803.a n = A273711 (n + 1)

end A273711

/-! ## A273711.P16866677923692077852

`A069264(A064549(n+1)/(n+1))`
-/

namespace A273711.P16866677923692077852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069264 (SequenceMachineLib.roundAway ((A064549 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A273711.P16866677923692077852

namespace A273711

/-- `A069264(A064549(n+1)/(n+1))` -/
def P16866677923692077852.Spec : Prop :=
  ∀ n, P16866677923692077852.a n = A273711 (n + 1)

end A273711

/-! ## A273711.P1891152603744139557

`A351942((n+1)/A003557(n+1))`
-/

namespace A273711.P1891152603744139557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351942 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A273711.P1891152603744139557

namespace A273711

/-- `A351942((n+1)/A003557(n+1))` -/
def P1891152603744139557.Spec : Prop :=
  ∀ n, P1891152603744139557.a n = A273711 (n + 1)

end A273711

/-! ## A273711.P9854383806818518428

`A390608(n+1)/A070306(n+1)`
-/

namespace A273711.P9854383806818518428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390608 (n + 1) : ℚ) / (A070306 (n + 1) : ℚ)

end

end A273711.P9854383806818518428

namespace A273711

/-- `A390608(n+1)/A070306(n+1)` -/
def P9854383806818518428.Spec : Prop :=
  ∀ n, P9854383806818518428.a n = (A273711 (n + 1) : ℚ)

end A273711

/-! ## A273711.P15144060398738573001

`A001221(n+1)/2*A034444(n+1)`
-/

namespace A273711.P15144060398738573001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001221 (n + 1) : ℚ) / 2 * (A034444 (n + 1) : ℚ)

end

end A273711.P15144060398738573001

namespace A273711

/-- `A001221(n+1)/2*A034444(n+1)` -/
def P15144060398738573001.Spec : Prop :=
  ∀ n, P15144060398738573001.a n = (A273711 (n + 1) : ℚ)

end A273711

/-!
# A273712: Number A(n,k) of k-ary heaps on n levels; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A273712, there is no canonical definition to state claims against.
-/

/-! ## A273712.P9512109889344565248

`A154326(A340556(n)+1)`
-/

namespace A273712.P9512109889344565248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154326 (A340556 n + 1).toNat

end

end A273712.P9512109889344565248

/-! ## A273712.P4949046974754249821

`A178487(A347618(n)^3)`
-/

namespace A273712.P4949046974754249821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178487 (A347618 n ^ 3).toNat

end

end A273712.P4949046974754249821

/-! ## A273712.P11569618415855736259

`A193582(A347618(n)^3)`
-/

namespace A273712.P11569618415855736259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193582 (A347618 n ^ 3).toNat

end

end A273712.P11569618415855736259

/-! ## A273712.P14356805780932464858

`A355245(11^A355262(n))`
-/

namespace A273712.P14356805780932464858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355245 (SequenceMachineLib.roundAway ((11 : ℚ) ^ (A355262 n : ℤ))).toNat

end

end A273712.P14356805780932464858

/-! ## A273712.P14545472202541078477

`A106486(A355262(n)²²)`
-/

namespace A273712.P14545472202541078477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 ((A355262 n ^ 2) ^ 2).toNat

end

end A273712.P14545472202541078477

/-!
# A273713: Triangle read by rows: T(n,k) is the number of bargraphs of semiperimeter n having k doublerises (n>=2, k>=0). A doublerise in a bargraph is any pair of adjacent up steps.

The programs for A273713, there is no canonical definition to state claims against.
-/

/-! ## A273713.P10881624087521068318

`A229300(A105306(n+1)%A162471(3*n+4))`
-/

namespace A273713.P10881624087521068318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229300 (Int.tmod (A105306 (n + 1)) (A162471 (3 * n + 4))).toNat

end

end A273713.P10881624087521068318

/-! ## A273713.P16505646654560901254

`A020753(A105306(n+1))`
-/

namespace A273713.P16505646654560901254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (A105306 (n + 1)).toNat

end

end A273713.P16505646654560901254

/-! ## A273713.P15735109113983455250

`A020753(round(sqrt(A104684(n))))`
-/

namespace A273713.P15735109113983455250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (SequenceMachineLib.roundAway (Real.sqrt (A104684 n : ℝ))).toNat

end

end A273713.P15735109113983455250

/-! ## A273713.P6458548731095291519

`A020753(A062110(comp[∑[n]]))`
-/

namespace A273713.P6458548731095291519
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (A062110 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A273713.P6458548731095291519

/-! ## A273713.P6909368634464603124

`A007318(∑[n])*A055570(A105306(n+1))`
-/

namespace A273713.P6909368634464603124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A055570 (A105306 (n + 1)).toNat

end

end A273713.P6909368634464603124

/-!
# A273714: Number of doublerises in all bargraphs having semiperimeter n (n>=2). A doublerise in a bargraph is any pair of adjacent up steps.

The programs for A273714, there is no canonical definition to state claims against.
-/

/-! ## A273714.P3968883789034086686

`∑[∑[A273345(n+2)]]`
-/

namespace A273714.P3968883789034086686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273345 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273714.P3968883789034086686

/-! ## A273714.P14730056584876075022

`A271943(n+1)+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A273714.P14730056584876075022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A271943 (n + 1) + a (n - 1)

end

end A273714.P14730056584876075022

/-! ## A273714.P8294975066671691952

`∑[A047086(n)-A086581(n)]`
-/

namespace A273714.P8294975066671691952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047086 n - A086581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273714.P8294975066671691952

/-! ## A273714.P3537481013842959429

`∑[A047086(n)]-A105633(n)`
-/

namespace A273714.P3537481013842959429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A105633 n

end

end A273714.P3537481013842959429

/-! ## A273714.P9524113558559912765

`∑[A047086(n)-A082582(n+1)]`
-/

namespace A273714.P9524113558559912765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047086 n - A082582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273714.P9524113558559912765

/-! ## A273714.P18391595662766105955

`Δ[A271941(n+2)]-A105633(n)`
-/

namespace A273714.P18391595662766105955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271941 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A105633 n

end

end A273714.P18391595662766105955

/-!
# A273716: The number of peaks of width 1 (i.e., UHD configurations, where U = (0,1), H=(1,0), D=(0,-1)) in all bargraphs of semiperimeter n (n>=2).

The programs for A273716, there is no canonical definition to state claims against.
-/

/-! ## A273716.P11720112166766369174

`A047086(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A273716.P11720112166766369174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A047086 (n - 1) + a (n - 1)

end

end A273716.P11720112166766369174

/-! ## A273716.P9967111141096332131

`A191794(A004273(n))`
-/

namespace A273716.P9967111141096332131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191794 (A004273 n).toNat

end

end A273716.P9967111141096332131

/-! ## A273716.P6956036113821852948

`A098978(floor((n/2)²)+n+2)`
-/

namespace A273716.P6956036113821852948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (⌊((n : ℚ) / 2) ^ 2⌋ + (n + 2 : ℤ)).toNat

end

end A273716.P6956036113821852948

/-! ## A273716.P4846856834367992949

`or(char[1], A098978(A087811(n+1)+1))`
-/

namespace A273716.P4846856834367992949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A098978 (A087811 (n + 1) + 1).toNat)

end

end A273716.P4846856834367992949

/-! ## A273716.P5610011021924885574

`abs((-1)^n*A098978(∑[A008619(n)]+1))`
-/

namespace A273716.P5610011021924885574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-1) ^ n * A098978 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat|

end

end A273716.P5610011021924885574

/-! ## A273716.P13143681007577098049

`A098978(Δ[A266464(n+1)])^A020985(n)²`
-/

namespace A273716.P13143681007577098049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266464 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098978 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (A020985 n ^ 2 : ℤ)

end

end A273716.P13143681007577098049

/-! ## A273716.P12811642674806574793

`A098978(Δ[A266464(n+1)])^A033999(n)²`
-/

namespace A273716.P12811642674806574793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266464 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098978 (f1 (n + 1) - f1 n).toNat : ℚ) ^ (A033999 n ^ 2 : ℤ)

end

end A273716.P12811642674806574793

/-! ## A273716.P10324568611990499380

`A098978(A087811(n+1)+1)+A000007(n+1)`
-/

namespace A273716.P10324568611990499380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A087811 (n + 1) + 1).toNat + A000007 (n + 1)

end

end A273716.P10324568611990499380

/-! ## A273716.P12767340134240823080

`A000035(2*n+1)*A098978(Δ[A266464(n+1)])`
-/

namespace A273716.P12767340134240823080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A098978 (f1 (n + 1) - f1 n).toNat

end

end A273716.P12767340134240823080

/-! ## A273716.P12620130390371840506

`n²²+A098978(Δ[A266464(n+1)])-A000583(n)`
-/

namespace A273716.P12620130390371840506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) + (A098978 (f1 (n + 1) - f1 n).toNat - A000583 n)

end

end A273716.P12620130390371840506

/-!
# A273717: Triangle read by rows: T(n,k) is the number of bargraphs of semiperimeter n having k L-shaped corners (n>=2, k>=0).

The programs for A273717, there is no canonical definition to state claims against.
-/

/-! ## A273717.P9917592960596800888

`A126182(A091018(n))`
-/

namespace A273717.P9917592960596800888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126182 (A091018 n).toNat

end

end A273717.P9917592960596800888

/-! ## A273717.P733547630125980232

`A126182(A056536(n+1)-1)`
-/

namespace A273717.P733547630125980232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126182 (A056536 (n + 1) - 1).toNat

end

end A273717.P733547630125980232

/-! ## A273717.P4917434040256512730

`A085516(A121466(n+1))`
-/

namespace A273717.P4917434040256512730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085516 (A121466 (n + 1)).toNat

end

end A273717.P4917434040256512730

/-! ## A273717.P16158305676908389366

`A327051(A121412(n))+A121466(n+1)`
-/

namespace A273717.P16158305676908389366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327051 (A121412 n).toNat + A121466 (n + 1)

end

end A273717.P16158305676908389366

/-! ## A273717.P2826234260986122130

`A340998(A077969(n+1))+A121466(n+1)`
-/

namespace A273717.P2826234260986122130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A077969 (n + 1)).toNat + 140) + A121466 (n + 1)

end

end A273717.P2826234260986122130

/-!
# A273718: The number of L-shaped corners in all bargraphs of semiperimeter n.

The programs for A273718, there is no canonical definition to state claims against.
-/

/-! ## A273718.P3227774785152177460

`A294159(n+1)-Δ[A105633(n)]`
-/

namespace A273718.P3227774785152177460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294159 (n + 1) - (f1 (n + 1) - f1 n)

end

end A273718.P3227774785152177460

/-! ## A273718.P4138862101616102280

`A294159(n+1)-A086581(n+1)`
-/

namespace A273718.P4138862101616102280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294159 (n + 1) - A086581 (n + 1)

end

end A273718.P4138862101616102280

/-! ## A273718.P15677044184176938735

`A294159(n+1)-A082582(n+2)`
-/

namespace A273718.P15677044184176938735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294159 (n + 1) - A082582 (n + 2)

end

end A273718.P15677044184176938735

/-! ## A273718.P7050939495603913146

`A294159(n+1)-A025242(n+3)`
-/

namespace A273718.P7050939495603913146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294159 (n + 1) - A025242 (n + 3)

end

end A273718.P7050939495603913146

/-! ## A273718.P15464343179511080381

`Δ[∑[A294159(n)]-A105633(n)]`
-/

namespace A273718.P15464343179511080381
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294159 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A105633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273718.P15464343179511080381

/-! ## A273718.P10504894191697014039

`A273905(2*(n+3))%A273905(2*(n+2))/2`
-/

namespace A273718.P10504894191697014039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A273905 (2 * (n + 3))) (A273905 (2 * (n + 2))) : ℚ) / 2

end

end A273718.P10504894191697014039

/-!
# A273719: Triangle read by rows: T(n,k) is the number of bargraphs of semiperimeter n having k horizontal steps in the peaks (n>=2, k>=1).

The programs for A273719, there is no canonical definition to state claims against.
-/

/-! ## A273719.P8278185307443907608

`A186746(A308292(n))+A121461(n+1)`
-/

namespace A273719.P8278185307443907608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186746 (A308292 n).toNat + A121461 (n + 1)

end

end A273719.P8278185307443907608

/-! ## A273719.P14165101407303536440

`or(A005088(A001405(n)), A121461(n+1))`
-/

namespace A273719.P14165101407303536440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A005088 (A001405 n).toNat) (A121461 (n + 1))

end

end A273719.P14165101407303536440

/-! ## A273719.P8572342808769598245

`or(A000035(A007088(n)), A121461(n+1))`
-/

namespace A273719.P8572342808769598245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A007088 n).toNat) (A121461 (n + 1))

end

end A273719.P8572342808769598245

/-! ## A273719.P13413486986331178947

`or(A000035(A026034(n)), A121461(n+1))`
-/

namespace A273719.P13413486986331178947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A026034 n).toNat) (A121461 (n + 1))

end

end A273719.P13413486986331178947

/-! ## A273719.P16308756315972030775

`or(A000035(A045925(n)), A121461(n+1))`
-/

namespace A273719.P16308756315972030775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A045925 n).toNat) (A121461 (n + 1))

end

end A273719.P16308756315972030775

/-!
# A273720: Number of horizontal steps in the peaks of all bargraphs having semiperimeter n (n>=2).

The programs for A273720, there is no canonical definition to state claims against.
-/

/-! ## A273720.P5213658135447985237

`∑[A271941(n+2)]`
-/

namespace A273720.P5213658135447985237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271941 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273720.P5213658135447985237

/-! ## A273720.P10755322746074288980

`∑[∑[A273716(n+2)]]`
-/

namespace A273720.P10755322746074288980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273716 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273720.P10755322746074288980

/-! ## A273720.P7476796087954240881

`a(n-1)+A271941(n+2)+A000007(n+1)` with `a(0)=1`
-/

namespace A273720.P7476796087954240881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A271941 (n + 2) + A000007 (n + 1))

end

end A273720.P7476796087954240881

/-! ## A273720.P18200511352368667931

`a(n-1)+A271941(n+2)%A007484(n)` with `a(0)=1`
-/

namespace A273720.P18200511352368667931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A271941 (n + 2)) (A007484 n)

end

end A273720.P18200511352368667931

/-! ## A273720.P5179563737018086391

`∑[∑[A098978(A087811(n+1)+1)]]`
-/

namespace A273720.P5179563737018086391
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A087811 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273720.P5179563737018086391

/-! ## A273720.P10277252459423212405

`∑[∑[A098978(A002620(n+2)+1)]]`
-/

namespace A273720.P10277252459423212405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A002620 (n + 2) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273720.P10277252459423212405

/-!
# A273722: The number of valleys of width 1 (i.e., DHU configurations, where U=(0,1), H(1,0), D=(0,-1)) in all bargraphs of semiperimeter n (n>=2).

The programs for A273722, there is no canonical definition to state claims against.
-/

/-! ## A273722.P9462086216253325082

`Δ[Δ[A278135(A233583(n+1))]]`
-/

namespace A273722.P9462086216253325082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278135 (A233583 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273722.P9462086216253325082

/-! ## A273722.P1613556368388841575

`Δ[A271941(A254667(n+1))-A086581(n)]`
-/

namespace A273722.P1613556368388841575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271941 (A254667 (n + 1)).toNat - A086581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273722.P1613556368388841575

/-! ## A273722.P16261056393641919820

`Δ[A271941(A254667(n+1))-A025242(n+2)]`
-/

namespace A273722.P16261056393641919820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271941 (A254667 (n + 1)).toNat - A025242 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273722.P16261056393641919820

/-! ## A273722.P14174432187486426555

`A109497(A200074(n))-A203019(n+3)`
-/

namespace A273722.P14174432187486426555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (A200074 n).toNat - A203019 (n + 3)

end

end A273722.P14174432187486426555

/-!
# A273723: 

The programs for A273723, there is no canonical definition to state claims against.
-/

/-! ## A273723.P11878075225954571881

`A273712(∑[n+4]+2)`
-/

namespace A273723.P11878075225954571881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273712 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A273723.P11878075225954571881

/-!
# A273724: Place n equally-spaced points around a circle, labeled 0,1,2,...,n-1. For each i = 0..n-1 such that 3i != i mod n, draw an (undirected) chord from i to (3i mod n). Then a(n) is the total number of distinct chords.

The programs for A273724, the canonical program `A273724.P10378108779640438672` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273724 has offset 0).

The definition of A273724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273724.P10378108779640438672

`a(n-1)+a(n-8)-a(n-9)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=2, a(4)=1, a(5)=4, a(6)=4, a(7)=6, a(8)=3, a(9)=8`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A273724

/-- `a(n-1)+a(n-8)-a(n-9)` -/
def P10378108779640438672.Spec : Prop :=
  ∀ n, P10378108779640438672.a n = A273724 n

theorem P10378108779640438672.correct : P10378108779640438672.Spec := by
  intro n
  simp only [A273724]

end A273724

/-! ## A273724.P6834607004536340059

`A002264(A274516(3*n))`
-/

namespace A273724.P6834607004536340059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A274516 (3 * n)).toNat

end

end A273724.P6834607004536340059

namespace A273724

/-- `A002264(A274516(3*n))` -/
def P6834607004536340059.Spec : Prop :=
  ∀ n, P6834607004536340059.a n = A273724 n

end A273724

/-! ## A273724.P9984229064881183646

`A121373(A260191(3*n+1))+n-∑{e}[xor(n, -n), #]`
-/

namespace A273724.P9984229064881183646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A260191 (3 * n + 1)).toNat + ((n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ))

end

end A273724.P9984229064881183646

namespace A273724

/-- `A121373(A260191(3*n+1))+n-∑{e}[xor(n, -n), #]` -/
def P9984229064881183646.Spec : Prop :=
  ∀ n, P9984229064881183646.a n = A273724 n

end A273724

/-! ## A273724.P6814678868505014606

`A093049(n)-A151755(A198201(n))`
-/

namespace A273724.P6814678868505014606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093049 n - A151755 (A198201 n).toNat

end

end A273724.P6814678868505014606

namespace A273724

/-- `A093049(n)-A151755(A198201(n))` -/
def P6814678868505014606.Spec : Prop :=
  ∀ n, P6814678868505014606.a n = A273724 n

end A273724

/-! ## A273724.P3545134898238054901

`n+2-A366664(A366671(2*n))`
-/

namespace A273724.P3545134898238054901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A366664 (A366671 (2 * n)).toNat

end

end A273724.P3545134898238054901

namespace A273724

/-- `n+2-A366664(A366671(2*n))` -/
def P3545134898238054901.Spec : Prop :=
  ∀ n, P3545134898238054901.a n = A273724 n

end A273724

/-!
# A273730: Square array read by antidiagonals: A(n,k) = number of permutations of n elements divided by the number of k-ary heaps on n+1 elements, n>=0, k>=1.

The programs for A273730, there is no canonical definition to state claims against.
-/

/-! ## A273730.P12299876924092609813

`A345933(A129116(n+1)%A097208(n))`
-/

namespace A273730.P12299876924092609813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345933 (Int.tmod (A129116 (n + 1)) (A097208 n)).toNat

end

end A273730.P12299876924092609813

/-! ## A273730.P12858323972158454869

`A345933(A129116(n+1))%A003901(n+2)`
-/

namespace A273730.P12858323972158454869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345933 (A129116 (n + 1)).toNat) (A003901 (n + 2))

end

end A273730.P12858323972158454869

/-! ## A273730.P7432847973647851331

`A345933(A129116(n+1))^A014963(A108253(n+1))`
-/

namespace A273730.P7432847973647851331
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345933 (A129116 (n + 1)).toNat : ℚ) ^ (A014963 (A108253 (n + 1)).toNat : ℤ)

end

end A273730.P7432847973647851331

/-! ## A273730.P5085932687216723617

`A345933(A129116(n+1))^∑[A076710(n)]`
-/

namespace A273730.P5085932687216723617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076710 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A345933 (A129116 (n + 1)).toNat : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A273730.P5085932687216723617

/-! ## A273730.P3268198544373409074

`gcd(A004526(A265170(n+1)), A233543(n))`
-/

namespace A273730.P3268198544373409074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004526 (A265170 (n + 1)).toNat) (A233543 n)

end

end A273730.P3268198544373409074

/-!
# A273731: Number of permutations of n elements divided by the number of ternary heaps on n+1 elements.

The programs for A273731, there is no canonical definition to state claims against.
-/

/-! ## A273731.P12556326928225463158

`A000142(n)/A178008(n+1)`
-/

namespace A273731.P12556326928225463158
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A178008 (n + 1) : ℚ)

end

end A273731.P12556326928225463158

/-! ## A273731.P1738386550819063951

`A056971(n)/A178008(n+1)*A132862(n)`
-/

namespace A273731.P1738386550819063951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056971 n : ℚ) / (A178008 (n + 1) : ℚ) * (A132862 n : ℚ)

end

end A273731.P1738386550819063951

/-! ## A273731.P10366885108074270724

`A000142(n)/A273693(∑[n+5]+6)`
-/

namespace A273731.P10366885108074270724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A273693 (∑ j ∈ Finset.range (n + 1), f1 j + 6) : ℚ)

end

end A273731.P10366885108074270724

/-! ## A273731.P581616239001324035

`A273730(∑[n+3])`
-/

namespace A273731.P581616239001324035
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273730 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273731.P581616239001324035

/-! ## A273731.P5472276068976464485

`A000005(∏[A179269(n)])`
-/

namespace A273731.P5472276068976464485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179269 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A273731.P5472276068976464485

/-!
# A273732: Number of permutations of n elements divided by the number of quaternary heaps on n+1 elements.

The programs for A273732, there is no canonical definition to state claims against.
-/

/-! ## A273732.P5440654318646693480

`A000142(n)/A178009(n+1)`
-/

namespace A273732.P5440654318646693480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A178009 (n + 1) : ℚ)

end

end A273732.P5440654318646693480

/-! ## A273732.P10535279888690698275

`A056971(n)/A178009(n+1)*A132862(n)`
-/

namespace A273732.P10535279888690698275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056971 n : ℚ) / (A178009 (n + 1) : ℚ) * (A132862 n : ℚ)

end

end A273732.P10535279888690698275

/-! ## A273732.P1466421657928750580

`A000142(n)/A273693(A000124(n+6)-6)`
-/

namespace A273732.P1466421657928750580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A273693 (A000124 (n + 6) - 6).toNat : ℚ)

end

end A273732.P1466421657928750580

/-! ## A273732.P8776060964795010875

`A273730(∑[n+4]+2)`
-/

namespace A273732.P8776060964795010875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273730 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A273732.P8776060964795010875

/-! ## A273732.P13606955931036259059

`A273730(A167614(n+1)+A004277(n))%A000051(n)`
-/

namespace A273732.P13606955931036259059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273730 (A167614 (n + 1) + A004277 n).toNat) (A000051 n)

end

end A273732.P13606955931036259059

/-!
# A273733: Number of permutations of n elements divided by the number of 5-ary heaps on n+1 elements.

The programs for A273733, there is no canonical definition to state claims against.
-/

/-! ## A273733.P7332944388071379563

`A000142(n)/A178010(n+1)`
-/

namespace A273733.P7332944388071379563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A178010 (n + 1) : ℚ)

end

end A273733.P7332944388071379563

/-! ## A273733.P9041622916680034827

`A056971(n)/A178010(n+1)*A132862(n)`
-/

namespace A273733.P9041622916680034827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056971 n : ℚ) / (A178010 (n + 1) : ℚ) * (A132862 n : ℚ)

end

end A273733.P9041622916680034827

/-! ## A273733.P15523426462097310247

`A273730(A052905(n+2))`
-/

namespace A273733.P15523426462097310247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273730 (A052905 (n + 2)).toNat

end

end A273733.P15523426462097310247

/-! ## A273733.P10879277034462514202

`A273730(Δ[Δ[A022815(n+1)]])`
-/

namespace A273733.P10879277034462514202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273730 (f1 (n + 1) - f1 n).toNat

end

end A273733.P10879277034462514202

/-! ## A273733.P897757736602948237

`A273730(A083920(Δ[A026054(n+3)]))`
-/

namespace A273733.P897757736602948237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273730 (A083920 (f1 (n + 1) - f1 n).toNat).toNat

end

end A273733.P897757736602948237

/-!
# A273734: Number of permutations of n elements divided by the number of 6-ary heaps on n+1 elements.

The programs for A273734, there is no canonical definition to state claims against.
-/

/-! ## A273734.P501380720661333046

`A000142(n)/A178011(n+1)`
-/

namespace A273734.P501380720661333046
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A178011 (n + 1) : ℚ)

end

end A273734.P501380720661333046

/-! ## A273734.P18342289798317344587

`A056971(n)/A178011(n+1)*A132862(n)`
-/

namespace A273734.P18342289798317344587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056971 n : ℚ) / (A178011 (n + 1) : ℚ) * (A132862 n : ℚ)

end

end A273734.P18342289798317344587

/-! ## A273734.P4420145393464035503

`A273730(A055999(n+3))`
-/

namespace A273734.P4420145393464035503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273730 (A055999 (n + 3)).toNat

end

end A273734.P4420145393464035503

/-! ## A273734.P1543035185959506179

`A273730(Δ[Δ[A095667(n)]])`
-/

namespace A273734.P1543035185959506179
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273730 (f1 (n + 1) - f1 n).toNat

end

end A273734.P1543035185959506179

/-! ## A273734.P10368462583260513871

`A273730(Δ[A026054(n+3)])`
-/

namespace A273734.P10368462583260513871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273730 (f1 (n + 1) - f1 n).toNat

end

end A273734.P10368462583260513871

/-!
# A273735: Number of permutations of n elements divided by the number of 7-ary heaps on n+1 elements.

The programs for A273735, there is no canonical definition to state claims against.
-/

/-! ## A273735.P5564980780481355969

`A000142(n)/A273694(n+1)`
-/

namespace A273735.P5564980780481355969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A273694 (n + 1) : ℚ)

end

end A273735.P5564980780481355969

/-! ## A273735.P7154790367997812344

`A273730(A000217(n+7)-7)`
-/

namespace A273735.P7154790367997812344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273730 (A000217 (n + 7) - 7).toNat

end

end A273735.P7154790367997812344

/-! ## A273735.P14194764079638241825

`A117358(A165804(n+1)+1)`
-/

namespace A273735.P14194764079638241825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A165804 (n + 1) + 1).toNat

end

end A273735.P14194764079638241825

/-! ## A273735.P14125723261532385602

`∏{e}[A028310(ceil(n/7))*a(n-1), #+1]` with `a(0)=1`
-/

namespace A273735.P14125723261532385602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A028310 ⌈(n : ℚ) / 7⌉.toNat * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A273735.P14125723261532385602

/-!
# A273736: Number of permutations of n elements divided by the number of 8-ary heaps on n+1 elements.

The programs for A273736, there is no canonical definition to state claims against.
-/

/-! ## A273736.P1844300856441508745

`A000142(n)/A273695(n+1)`
-/

namespace A273736.P1844300856441508745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A273695 (n + 1) : ℚ)

end

end A273736.P1844300856441508745

/-! ## A273736.P12589736690858095646

`A187187(A140576(n+1)+1)`
-/

namespace A273736.P12589736690858095646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187187 (A140576 (n + 1) + 1).toNat

end

end A273736.P12589736690858095646

/-! ## A273736.P3860216724415138118

`A343609(A140576(n+1)+9)`
-/

namespace A273736.P3860216724415138118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343609 (A140576 (n + 1) + 9).toNat

end

end A273736.P3860216724415138118

/-! ## A273736.P5869337564979086835

`∏{e}[A275063(n), #+1]`
-/

namespace A273736.P5869337564979086835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275063 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A273736.P5869337564979086835

/-!
# A273737: Number of permutations of n elements divided by the number of 9-ary heaps on n+1 elements.

The programs for A273737, there is no canonical definition to state claims against.
-/

/-! ## A273737.P12591881916724356996

`A000142(n)/A273696(n+1)`
-/

namespace A273737.P12591881916724356996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A273696 (n + 1) : ℚ)

end

end A273737.P12591881916724356996

/-! ## A273737.P4875666548112154381

`A089898(floor(A051885(n)/10))`
-/

namespace A273737.P4875666548112154381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089898 ⌊(A051885 n : ℚ) / 10⌋.toNat

end

end A273737.P4875666548112154381

/-! ## A273737.P11498259769608734832

`A059995(A051885(n))+1`
-/

namespace A273737.P11498259769608734832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A051885 n).toNat + 1

end

end A273737.P11498259769608734832

/-! ## A273737.P10919053310077577100

`A226233(A037124(n+1))`
-/

namespace A273737.P10919053310077577100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226233 (A037124 (n + 1)).toNat

end

end A273737.P10919053310077577100

/-! ## A273737.P12279938172539316919

`A008616(or(5, A051885(n)))`
-/

namespace A273737.P12279938172539316919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (Int.lor 5 (A051885 n)).toNat

end

end A273737.P12279938172539316919

/-!
# A273738: Number of permutations of n elements divided by the number of 10-ary heaps on n+1 elements.

The programs for A273738, there is no canonical definition to state claims against.
-/

/-! ## A273738.P4085319191606133779

`A000142(n)/A273697(n+1)`
-/

namespace A273738.P4085319191606133779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A273697 (n + 1) : ℚ)

end

end A273738.P4085319191606133779

/-! ## A273738.P12011362121689446391

`A273730(A052905(n+7)-5)`
-/

namespace A273738.P12011362121689446391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273730 (A052905 (n + 7) - 5).toNat

end

end A273738.P12011362121689446391

/-! ## A273738.P2323321488982266357

`∏{e}[A275065(n), #+1]`
-/

namespace A273738.P2323321488982266357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275065 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A273738.P2323321488982266357

/-! ## A273738.P9670626060540567881

`A000005(A275065(n))`
-/

namespace A273738.P9670626060540567881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A275065 n).toNat

end

end A273738.P9670626060540567881

/-! ## A273738.P6659521255749101902

`A000005(∏[A112348(n)])`
-/

namespace A273738.P6659521255749101902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A273738.P6659521255749101902

/-!
# A273739: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 878", based on the 5-celled von Neumann neighborhood.

The programs for A273739, there is no canonical definition to state claims against.
-/

/-! ## A273739.P1887554732163865165

`A273742(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273739.P1887554732163865165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273742 (n - 1) + a (n - 1)

end

end A273739.P1887554732163865165

/-! ## A273739.P4309092131234546292

`Δ[A273741(n)]-A273742(n)`
-/

namespace A273739.P4309092131234546292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273742 n

end

end A273739.P4309092131234546292

/-! ## A273739.P16290239035334935974

`A273741(n+1)-(A273742(n)+A273741(n))`
-/

namespace A273739.P16290239035334935974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273741 (n + 1) - (A273742 n + A273741 n)

end

end A273739.P16290239035334935974

/-! ## A273739.P12878086070435573956

`1-(∑[A273742(n)]-A273742(n))*A057428(n)`
-/

namespace A273739.P12878086070435573956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (∑ j ∈ Finset.range (n + 1), f1 j - A273742 n) * A057428 n

end

end A273739.P12878086070435573956

/-! ## A273739.P4641632855865914488

`A004442(∑[A273742(n)]-A273742(n))`
-/

namespace A273739.P4641632855865914488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f1 j - A273742 n).toNat

end

end A273739.P4641632855865914488

/-! ## A273739.P11800410352098206743

`A131738(∑[A273742(n)])-A273742(n)`
-/

namespace A273739.P11800410352098206743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A273742 n

end

end A273739.P11800410352098206743

/-!
# A273740: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 878", based on the 5-celled von Neumann neighborhood.

The programs for A273740, there is no canonical definition to state claims against.
-/

/-! ## A273740.P18137003283455034008

`A273739(2^n-1)`
-/

namespace A273740.P18137003283455034008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273739 (2 ^ n - 1)

end

end A273740.P18137003283455034008

/-! ## A273740.P8893399636102723030

`record[A273739(A173787(n))]`
-/

namespace A273740.P8893399636102723030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273739 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273740.P8893399636102723030

/-! ## A273740.P7914152148326135997

`record[A273739(A255067(n))]`
-/

namespace A273740.P7914152148326135997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273739 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273740.P7914152148326135997

/-! ## A273740.P7427457041701344801

`record[A273739(A303763(n))]`
-/

namespace A273740.P7427457041701344801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273739 (A303763 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273740.P7427457041701344801

/-! ## A273740.P8688598787956864778

`record[A273739(A303765(n))]`
-/

namespace A273740.P8688598787956864778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273739 (A303765 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273740.P8688598787956864778

/-!
# A273741: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 878", based on the 5-celled von Neumann neighborhood.

The programs for A273741, there is no canonical definition to state claims against.
-/

/-! ## A273741.P10041187666949065615

`∑[A273739(n)]`
-/

namespace A273741.P10041187666949065615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273741.P10041187666949065615

/-! ## A273741.P18020906408348161915

`A273739(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273741.P18020906408348161915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273739 n + a (A023443 n).toNat

end

end A273741.P18020906408348161915

/-! ## A273741.P8790173754061129219

`∑[A273742(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273741.P8790173754061129219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273742 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273741.P8790173754061129219

/-! ## A273741.P8871773504397267124

`∑[∑[A273742(n)]+1-A273742(n)]`
-/

namespace A273741.P8871773504397267124
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273742 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273742 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273741.P8871773504397267124

/-! ## A273741.P5909657302350967836

`∑[1-(∑[A273742(n)]-A273742(n))*A057428(n)]`
-/

namespace A273741.P5909657302350967836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273742 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (∑ j ∈ Finset.range (n + 1), f2 j - A273742 n) * A057428 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273741.P5909657302350967836

/-!
# A273742: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 878", based on the 5-celled von Neumann neighborhood.

The programs for A273742, there is no canonical definition to state claims against.
-/

/-! ## A273742.P2766405101398051669

`Δ[A273739(n)]`
-/

namespace A273742.P2766405101398051669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273742.P2766405101398051669

/-! ## A273742.P12426939781439669093

`A273739(n+1)-A273739(n)`
-/

namespace A273742.P12426939781439669093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273739 (n + 1) - A273739 n

end

end A273742.P12426939781439669093

/-! ## A273742.P15914840650863771561

`A273739(n+1)+A273739(n)*A321804(C(2, n))`
-/

namespace A273742.P15914840650863771561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273739 (n + 1) + A273739 n * A321804 (Nat.choose 2 n)

end

end A273742.P15914840650863771561

/-!
# A273743: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 901", based on the 5-celled von Neumann neighborhood.

The programs for A273743, the canonical program `A273743.P4770463733884575699` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273743 has offset 0).

The definition of A273743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2718 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273743.P3503598948160177791

`Δ[n²]²-char[1]`
-/

namespace A273743.P3503598948160177791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A273743.P3503598948160177791

namespace A273743

/-- `Δ[n²]²-char[1]` -/
def P3503598948160177791.Spec : Prop :=
  ∀ n, P3503598948160177791.a n = A273743 n

end A273743

/-! ## A273743.P10699782390886694426

`xor(Δ[n²]², char[1])`
-/

namespace A273743.P10699782390886694426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2) ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A273743.P10699782390886694426

namespace A273743

/-- `xor(Δ[n²]², char[1])` -/
def P10699782390886694426.Spec : Prop :=
  ∀ n, P10699782390886694426.a n = A273743 n

end A273743

/-! ## A273743.P4773867909377540760

`ceil(Δ[1/acot(n²)]²)`
-/

namespace A273743.P4773867909377540760
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / SequenceMachineLib.acot (n ^ 2 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (n + 1) - f1 n) ^ 2⌉

end

end A273743.P4773867909377540760

namespace A273743

/-- `ceil(Δ[1/acot(n²)]²)` -/
def P4773867909377540760.Spec : Prop :=
  ∀ n, P4773867909377540760.a n = A273743 n

end A273743

/-! ## A273743.P14091234103553206778

`abs(or(1, 2*n)²-char[1])`
-/

namespace A273743.P14091234103553206778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.lor 1 (2 * n) ^ 2 : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)|

end

end A273743.P14091234103553206778

namespace A273743

/-- `abs(or(1, 2*n)²-char[1])` -/
def P14091234103553206778.Spec : Prop :=
  ∀ n, P14091234103553206778.a n = A273743 n

end A273743

/-! ## A273743.P4770463733884575699

`ogf((1+5x+4x^2-3x^3+x^4)/(1-3x+3x^2-x^3))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A273743

/-- `ogf((1+5x+4x^2-3x^3+x^4)/(1-3x+3x^2-x^3))` -/
def P4770463733884575699.Spec : Prop :=
  ∀ n, P4770463733884575699.a n = A273743 n

theorem P4770463733884575699.correct : P4770463733884575699.Spec := by
  intro n
  simp only [A273743]

end A273743

/-! ## A273743.P6173209418952556464

`or(1, a(n-1)+8*n)` with `a(0)=1, a(1)=8`
-/

namespace A273743.P6173209418952556464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  Nat.lor 1 (a (n - 1) + 8 * n)

end

end A273743.P6173209418952556464

namespace A273743

/-- `or(1, a(n-1)+8*n)` -/
def P6173209418952556464.Spec : Prop :=
  ∀ n, (P6173209418952556464.a n : ℤ) = A273743 n

end A273743

/-! ## A273743.P2873262978391680258

`and(-C(2, n)!, (2*n+1)²)`
-/

namespace A273743.P2873262978391680258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(Nat.factorial (Nat.choose 2 n) : ℤ)) ((2 * n + 1) ^ 2 : ℤ)

end

end A273743.P2873262978391680258

namespace A273743

/-- `and(-C(2, n)!, (2*n+1)²)` -/
def P2873262978391680258.Spec : Prop :=
  ∀ n, P2873262978391680258.a n = A273743 n

end A273743

/-! ## A273743.P10372513939588345735

`((2*n+1)%a(n-1))²` with `a(0)=1, a(1)=8`
-/

namespace A273743.P10372513939588345735
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  ((2 * n + 1) % a (n - 1)) ^ 2

end

end A273743.P10372513939588345735

namespace A273743

/-- `((2*n+1)%a(n-1))²` -/
def P10372513939588345735.Spec : Prop :=
  ∀ n, (P10372513939588345735.a n : ℤ) = A273743 n

end A273743

/-! ## A273743.P9313275005116438922

`abs(C(2, n+1)-(2*n+1)²)`
-/

namespace A273743.P9313275005116438922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose 2 (n + 1) : ℤ) - ((2 * n + 1) ^ 2 : ℤ)|

end

end A273743.P9313275005116438922

namespace A273743

/-- `abs(C(2, n+1)-(2*n+1)²)` -/
def P9313275005116438922.Spec : Prop :=
  ∀ n, P9313275005116438922.a n = A273743 n

end A273743

/-! ## A273743.P17845108338362671160

`ceil((2*n+1)²-cos(n-1)²)`
-/

namespace A273743.P17845108338362671160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n + 1) ^ 2 : ℝ) - Real.cos ((n : ℤ) - 1 : ℝ) ^ 2⌉

end

end A273743.P17845108338362671160

namespace A273743

/-- `ceil((2*n+1)²-cos(n-1)²)` -/
def P17845108338362671160.Spec : Prop :=
  ∀ n, P17845108338362671160.a n = A273743 n

end A273743

/-! ## A273743.P9655131701484202955

`ceil((2*n+1)²-acot((1-n)²))`
-/

namespace A273743.P9655131701484202955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n + 1) ^ 2 : ℝ) - SequenceMachineLib.acot ((1 - (n : ℤ)) ^ 2 : ℝ)⌉

end

end A273743.P9655131701484202955

namespace A273743

/-- `ceil((2*n+1)²-acot((1-n)²))` -/
def P9655131701484202955.Spec : Prop :=
  ∀ n, P9655131701484202955.a n = A273743 n

end A273743

/-! ## A273743.P6866680232840952723

`(2*n+1)^(2%a(n-1))` with `a(0)=1, a(1)=8`
-/

namespace A273743.P6866680232840952723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  (2 * n + 1) ^ (2 % a (n - 1))

end

end A273743.P6866680232840952723

namespace A273743

/-- `(2*n+1)^(2%a(n-1))` -/
def P6866680232840952723.Spec : Prop :=
  ∀ n, (P6866680232840952723.a n : ℤ) = A273743 n

end A273743

/-! ## A273743.P8664466113470250247

`and(C(2, n+1)-3, (2*n+1)²)`
-/

namespace A273743.P8664466113470250247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((Nat.choose 2 (n + 1) : ℤ) - 3) ((2 * n + 1) ^ 2 : ℤ)

end

end A273743.P8664466113470250247

namespace A273743

/-- `and(C(2, n+1)-3, (2*n+1)²)` -/
def P8664466113470250247.Spec : Prop :=
  ∀ n, P8664466113470250247.a n = A273743 n

end A273743

/-! ## A273743.P11777712401399657305

`and((2*n+1)², floor(-(3/(n+1))))`
-/

namespace A273743.P11777712401399657305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 * n + 1) ^ 2 : ℤ) ⌊-(3 / (n + 1 : ℚ))⌋

end

end A273743.P11777712401399657305

namespace A273743

/-- `and((2*n+1)², floor(-(3/(n+1))))` -/
def P11777712401399657305.Spec : Prop :=
  ∀ n, P11777712401399657305.a n = A273743 n

end A273743

/-! ## A273743.P16498111790612135564

`ceil((2*n+1)²-1/a(n-1))` with `a(0)=1`
-/

namespace A273743.P16498111790612135564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈((2 * n + 1) ^ 2 : ℚ) - 1 / (a (n - 1) : ℚ)⌉

end

end A273743.P16498111790612135564

namespace A273743

/-- `ceil((2*n+1)²-1/a(n-1))` -/
def P16498111790612135564.Spec : Prop :=
  ∀ n, P16498111790612135564.a n = A273743 n

end A273743

/-! ## A273743.P3861336759091733230

`round((2*n+1)²-1/a(n-1))` with `a(0)=1`
-/

namespace A273743.P3861336759091733230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (((2 * n + 1) ^ 2 : ℚ) - 1 / (a (n - 1) : ℚ))

end

end A273743.P3861336759091733230

namespace A273743

/-- `round((2*n+1)²-1/a(n-1))` -/
def P3861336759091733230.Spec : Prop :=
  ∀ n, P3861336759091733230.a n = A273743 n

end A273743

/-! ## A273743.P4417294159528682976

`abs((2*n+1)²-val((n+1)², n+3))`
-/

namespace A273743.P4417294159528682976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((2 * n + 1) ^ 2 : ℤ) - (SequenceMachineLib.valuation ((n + 1) ^ 2) (n + 3) : ℤ)|

end

end A273743.P4417294159528682976

namespace A273743

/-- `abs((2*n+1)²-val((n+1)², n+3))` -/
def P4417294159528682976.Spec : Prop :=
  ∀ n, P4417294159528682976.a n = A273743 n

end A273743

/-! ## A273743.P17270191592638923415

`floor((2*n+1)²+∑[n-1]/a(n-1))` with `a(0)=1`
-/

namespace A273743.P17270191592638923415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((2 * n + 1) ^ 2 : ℚ) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (a (n - 1) : ℚ)⌋

end

end A273743.P17270191592638923415

namespace A273743

/-- `floor((2*n+1)²+∑[n-1]/a(n-1))` -/
def P17270191592638923415.Spec : Prop :=
  ∀ n, P17270191592638923415.a n = A273743 n

end A273743

/-! ## A273743.P16516746267304732988

`Δ[record[A067046(n+1)]]`
-/

namespace A273743.P16516746267304732988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067046 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273743.P16516746267304732988

namespace A273743

/-- `Δ[record[A067046(n+1)]]` -/
def P16516746267304732988.Spec : Prop :=
  ∀ n, P16516746267304732988.a n = A273743 n

end A273743

/-! ## A273743.P11756178628088088407

`A129194(A223134(n))`
-/

namespace A273743.P11756178628088088407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129194 (A223134 n).toNat

end

end A273743.P11756178628088088407

namespace A273743

/-- `A129194(A223134(n))` -/
def P11756178628088088407.Spec : Prop :=
  ∀ n, P11756178628088088407.a n = A273743 n

end A273743

/-!
# A273744: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 901", based on the 5-celled von Neumann neighborhood.

The programs for A273744, the canonical program `A273744.P3040902853494018866` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273744 has offset 0).

The definition of A273744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2890 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273744.P12469400499424732393

`∑[Δ[n²]²-char[1]]`
-/

namespace A273744.P12469400499424732393
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) ^ 2 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273744.P12469400499424732393

namespace A273744

/-- `∑[Δ[n²]²-char[1]]` -/
def P12469400499424732393.Spec : Prop :=
  ∀ n, P12469400499424732393.a n = A273744 n

end A273744

/-! ## A273744.P3040902853494018866

`record[xor(-C(n, 3), (-1)^n)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A273744

/-- `record[xor(-C(n, 3), (-1)^n)]` -/
def P3040902853494018866.Spec : Prop :=
  ∀ n, P3040902853494018866.a n = A273744 n

theorem P3040902853494018866.correct : P3040902853494018866.Spec := by
  intro n
  simp only [A273744]

end A273744

/-! ## A273744.P2000645232641937344

`record[abs(C(2*n+1, 3)-1)]`
-/

namespace A273744.P2000645232641937344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (2 * n + 1) 3 : ℤ) - 1|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273744.P2000645232641937344

namespace A273744

/-- `record[abs(C(2*n+1, 3)-1)]` -/
def P2000645232641937344.Spec : Prop :=
  ∀ n, P2000645232641937344.a n = A273744 n

end A273744

/-! ## A273744.P15852904692577732636

`record[(1-C(n, 3))*(-1)^n]`
-/

namespace A273744.P15852904692577732636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose n 3 : ℤ)) * (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273744.P15852904692577732636

namespace A273744

/-- `record[(1-C(n, 3))*(-1)^n]` -/
def P15852904692577732636.Spec : Prop :=
  ∀ n, P15852904692577732636.a n = A273744 n

end A273744

/-! ## A273744.P16903836354457149951

`record[(1-C(n, 3))/(-1)^n]`
-/

namespace A273744.P16903836354457149951
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (Nat.choose n 3 : ℤ) : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273744.P16903836354457149951

namespace A273744

/-- `record[(1-C(n, 3))/(-1)^n]` -/
def P16903836354457149951.Spec : Prop :=
  ∀ n, P16903836354457149951.a n = (A273744 n : ℚ)

end A273744

/-! ## A273744.P4889442525950382643

`floor(∑[(n*tanh(15)+n+1)²])`
-/

namespace A273744.P4889442525950382643
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) * Real.tanh (15 : ℝ) + (n + 1 : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A273744.P4889442525950382643

namespace A273744

/-- `floor(∑[(n*tanh(15)+n+1)²])` -/
def P4889442525950382643.Spec : Prop :=
  ∀ n, P4889442525950382643.a n = A273744 n

end A273744

/-! ## A273744.P3649116422043299760

`floor(∑[((n+1)^tanh(15)+n)²])`
-/

namespace A273744.P3649116422043299760
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℝ) ^ (Real.tanh (15 : ℝ)) + (n : ℝ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A273744.P3649116422043299760

namespace A273744

/-- `floor(∑[((n+1)^tanh(15)+n)²])` -/
def P3649116422043299760.Spec : Prop :=
  ∀ n, P3649116422043299760.a n = A273744 n

end A273744

/-! ## A273744.P7126665975100283929

`a(n-1)+(2*n+1)²` with `a(0)=1, a(1)=9`
-/

namespace A273744.P7126665975100283929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 9] fun n a =>
  a (n - 1) + (2 * n + 1) ^ 2

end

end A273744.P7126665975100283929

namespace A273744

/-- `a(n-1)+(2*n+1)²` -/
def P7126665975100283929.Spec : Prop :=
  ∀ n, (P7126665975100283929.a n : ℤ) = A273744 n

end A273744

/-! ## A273744.P5689208250521404243

`∑[(2*n+1)²]-floor(atan(n+1))`
-/

namespace A273744.P5689208250521404243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A273744.P5689208250521404243

namespace A273744

/-- `∑[(2*n+1)²]-floor(atan(n+1))` -/
def P5689208250521404243.Spec : Prop :=
  ∀ n, P5689208250521404243.a n = A273744 n

end A273744

/-! ## A273744.P10619212799074331910

`∑[(2*n+1)²]-n²%(n+1)`
-/

namespace A273744.P10619212799074331910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A273744.P10619212799074331910

namespace A273744

/-- `∑[(2*n+1)²]-n²%(n+1)` -/
def P10619212799074331910.Spec : Prop :=
  ∀ n, P10619212799074331910.a n = A273744 n

end A273744

/-! ## A273744.P7830859023278716039

`C(2, n+2)+∑[(2*n+1)²]-1`
-/

namespace A273744.P7830859023278716039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) + (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A273744.P7830859023278716039

namespace A273744

/-- `C(2, n+2)+∑[(2*n+1)²]-1` -/
def P7830859023278716039.Spec : Prop :=
  ∀ n, P7830859023278716039.a n = A273744 n

end A273744

/-! ## A273744.P18026141639029792364

`record[C(2*n+1, 3)-2*n]+2*n+1`
-/

namespace A273744.P18026141639029792364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n + 1) 3 : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (2 * n + 1 : ℤ)

end

end A273744.P18026141639029792364

namespace A273744

/-- `record[C(2*n+1, 3)-2*n]+2*n+1` -/
def P18026141639029792364.Spec : Prop :=
  ∀ n, P18026141639029792364.a n = A273744 n

end A273744

/-! ## A273744.P14346791270961244357

`-∑[val(2*n+1, n+2)-(2*n+1)²]`
-/

namespace A273744.P14346791270961244357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (2 * n + 1) (n + 2) : ℤ) - ((2 * n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273744.P14346791270961244357

namespace A273744

/-- `-∑[val(2*n+1, n+2)-(2*n+1)²]` -/
def P14346791270961244357.Spec : Prop :=
  ∀ n, P14346791270961244357.a n = A273744 n

end A273744

/-! ## A273744.P4252104224686189288

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=9, a(2)=34, a(3)=83, a(4)=164`
-/

namespace A273744.P4252104224686189288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 9, 34, 83, 164] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A273744.P4252104224686189288

namespace A273744

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P4252104224686189288.Spec : Prop :=
  ∀ n, P4252104224686189288.a n = A273744 n

end A273744

/-! ## A273744.P8398783035235624116

`record[∑[A291681(n+1)]]`
-/

namespace A273744.P8398783035235624116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291681 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273744.P8398783035235624116

namespace A273744

/-- `record[∑[A291681(n+1)]]` -/
def P8398783035235624116.Spec : Prop :=
  ∀ n, P8398783035235624116.a n = A273744 n

end A273744

/-! ## A273744.P16724732053637243822

`record[A067046(n+2)-1]`
-/

namespace A273744.P16724732053637243822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067046 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273744.P16724732053637243822

namespace A273744

/-- `record[A067046(n+2)-1]` -/
def P16724732053637243822.Spec : Prop :=
  ∀ n, P16724732053637243822.a n = A273744 n

end A273744

/-! ## A273744.P12811888322967615763

`∑[(2*n+1)²]-and(1, A000040(n+1))`
-/

namespace A273744.P12811888322967615763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.land 1 (A000040 (n + 1))

end

end A273744.P12811888322967615763

namespace A273744

/-- `∑[(2*n+1)²]-and(1, A000040(n+1))` -/
def P12811888322967615763.Spec : Prop :=
  ∀ n, P12811888322967615763.a n = A273744 n

end A273744

/-! ## A273744.P5146944099908968136

`floor(∑[(2*n+1)²]-n/A000203(n+1))`
-/

namespace A273744.P5146944099908968136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (n : ℚ) / (A000203 (n + 1) : ℚ)⌋

end

end A273744.P5146944099908968136

namespace A273744

/-- `floor(∑[(2*n+1)²]-n/A000203(n+1))` -/
def P5146944099908968136.Spec : Prop :=
  ∀ n, P5146944099908968136.a n = A273744 n

end A273744

/-! ## A273744.P5156877994264142095

`floor(∑[(2*n+1)²]-n/A000040(n+2))`
-/

namespace A273744.P5156877994264142095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (n : ℚ) / (A000040 (n + 2) : ℚ)⌋

end

end A273744.P5156877994264142095

namespace A273744

/-- `floor(∑[(2*n+1)²]-n/A000040(n+2))` -/
def P5156877994264142095.Spec : Prop :=
  ∀ n, P5156877994264142095.a n = A273744 n

end A273744

/-! ## A273744.P7030161062398296914

`A136264(n)+A084367(n)`
-/

namespace A273744.P7030161062398296914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136264 n + A084367 n

end

end A273744.P7030161062398296914

namespace A273744

/-- `A136264(n)+A084367(n)` -/
def P7030161062398296914.Spec : Prop :=
  ∀ n, P7030161062398296914.a n = A273744 n

end A273744

/-!
# A273745: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 901", based on the 5-celled von Neumann neighborhood.

The programs for A273745, the canonical program `A273745.P17651849909726555080` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273745 has offset 0).

The definition of A273745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2763 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273745.P17651849909726555080

`Δ[Δ[n²]²-char[1]]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A273745

/-- `Δ[Δ[n²]²-char[1]]` -/
def P17651849909726555080.Spec : Prop :=
  ∀ n, P17651849909726555080.a n = A273745 n

theorem P17651849909726555080.correct : P17651849909726555080.Spec := by
  intro n
  simp only [A273745]

end A273745

/-!
# A273746: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 918", based on the 5-celled von Neumann neighborhood.

The programs for A273746, there is no canonical definition to state claims against.
-/

/-! ## A273746.P9873660227389603007

`A273749(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273746.P9873660227389603007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273749 (n - 1) + a (n - 1)

end

end A273746.P9873660227389603007

/-! ## A273746.P2982920551103118910

`Δ[A273748(n)]-A273749(n)`
-/

namespace A273746.P2982920551103118910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273749 n

end

end A273746.P2982920551103118910

/-! ## A273746.P17699555348996299576

`A273748(n+1)-(A273749(n)+A273748(n))`
-/

namespace A273746.P17699555348996299576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273748 (n + 1) - (A273749 n + A273748 n)

end

end A273746.P17699555348996299576

/-! ## A273746.P4375033539016276285

`A000034(2*n)+∑[A273749(n)]-A273749(n)`
-/

namespace A273746.P4375033539016276285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) + (∑ j ∈ Finset.range (n + 1), f1 j - A273749 n)

end

end A273746.P4375033539016276285

/-! ## A273746.P4195460207485214828

`(∑[A273749(n)]-A273749(n))%A000328(n)+1`
-/

namespace A273746.P4195460207485214828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A273749 n) (A000328 n) + 1

end

end A273746.P4195460207485214828

/-! ## A273746.P5165217155920032785

`(∑[A273749(n)]-A273749(n)+1)%A017474(n)`
-/

namespace A273746.P5165217155920032785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A273749 n + 1) (A017474 n)

end

end A273746.P5165217155920032785

/-! ## A273746.P7686990891884850440

`A125169(n)%2+∑[A273749(n)]-A273749(n)`
-/

namespace A273746.P7686990891884850440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A125169 n) 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273749 n)

end

end A273746.P7686990891884850440

/-! ## A273746.P10984054658709555353

`A343785(n+1)²+∑[A273749(n)]-A273749(n)`
-/

namespace A273746.P10984054658709555353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343785 (n + 1) ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273749 n)

end

end A273746.P10984054658709555353

/-! ## A273746.P10602080978680351996

`A019427(2*n)!+∑[A273749(n)]-A273749(n)`
-/

namespace A273746.P10602080978680351996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A019427 (2 * n)).toNat : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - A273749 n)

end

end A273746.P10602080978680351996

/-! ## A273746.P15768785719603275590

`(A053742(n)+6)%2+∑[A273749(n)]-A273749(n)`
-/

namespace A273746.P15768785719603275590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053742 n + 6) 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273749 n)

end

end A273746.P15768785719603275590

/-! ## A273746.P10139667785805789693

`n+1+A001489(n)+∑[A273749(n)]-A273749(n)`
-/

namespace A273746.P10139667785805789693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A001489 n + (∑ j ∈ Finset.range (n + 1), f1 j - A273749 n))

end

end A273746.P10139667785805789693

/-! ## A273746.P12761535111376403164

`A014963(12*n+10)+∑[A273749(n)]-A273749(n)`
-/

namespace A273746.P12761535111376403164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * n + 10) + (∑ j ∈ Finset.range (n + 1), f1 j - A273749 n)

end

end A273746.P12761535111376403164

/-! ## A273746.P18025006859747339341

`A000027(∑[A273749(n)]-A273749(n)+1)`
-/

namespace A273746.P18025006859747339341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j - A273749 n + 1).toNat

end

end A273746.P18025006859747339341

/-! ## A273746.P9445741305432700381

`A000265(∑[A273749(n)]-A273749(n)+1)`
-/

namespace A273746.P9445741305432700381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j - A273749 n + 1).toNat

end

end A273746.P9445741305432700381

/-! ## A273746.P364472169603878996

`A002828(n²)!+∑[A273749(n)]-A273749(n)`
-/

namespace A273746.P364472169603878996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002828 (n ^ 2)).toNat : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - A273749 n)

end

end A273746.P364472169603878996

/-! ## A273746.P2118628358881741447

`A141310(∑[A273749(n)]-A273749(n))`
-/

namespace A273746.P2118628358881741447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f1 j - A273749 n).toNat

end

end A273746.P2118628358881741447

/-!
# A273747: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 918", based on the 5-celled von Neumann neighborhood.

The programs for A273747, there is no canonical definition to state claims against.
-/

/-! ## A273747.P15201210778308622314

`A273746(2^n-1)`
-/

namespace A273747.P15201210778308622314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273746 (2 ^ n - 1)

end

end A273747.P15201210778308622314

/-! ## A273747.P2836728472285500188

`or(1, A273746(A000225(n)))`
-/

namespace A273747.P2836728472285500188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273746 (A000225 n).toNat)

end

end A273747.P2836728472285500188

/-! ## A273747.P13129972580426942147

`record[A273746(A293447(n+1))]`
-/

namespace A273747.P13129972580426942147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273746 (A293447 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273747.P13129972580426942147

/-! ## A273747.P7432471556887746218

`record[gcd(A035327(n), A273746(n))]`
-/

namespace A273747.P7432471556887746218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035327 n) (A273746 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273747.P7432471556887746218

/-! ## A273747.P15343727449955408530

`A242784(n)*A273746(A000225(n))`
-/

namespace A273747.P15343727449955408530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242784 n * A273746 (A000225 n).toNat

end

end A273747.P15343727449955408530

/-!
# A273748: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 918", based on the 5-celled von Neumann neighborhood.

The programs for A273748, there is no canonical definition to state claims against.
-/

/-! ## A273748.P7532580789611350531

`∑[A273746(n)]`
-/

namespace A273748.P7532580789611350531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273748.P7532580789611350531

/-! ## A273748.P12694962177435886306

`A273746(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273748.P12694962177435886306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273746 n + a (A023443 n).toNat

end

end A273748.P12694962177435886306

/-! ## A273748.P11922670895337146629

`A273746(A000027(n))+a(n-1)` with `a(0)=1`
-/

namespace A273748.P11922670895337146629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273746 (A000027 n).toNat + a (n - 1)

end

end A273748.P11922670895337146629

/-! ## A273748.P3568628476021083391

`A273746(n%A273746(n))+a(n-1)` with `a(0)=1`
-/

namespace A273748.P3568628476021083391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273746 (Int.tmod (n : ℤ) (A273746 n)).toNat + a (n - 1)

end

end A273748.P3568628476021083391

/-! ## A273748.P193021597600010405

`∑[∑[A273749(n)]+1-A273749(n)]`
-/

namespace A273748.P193021597600010405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273749 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273749 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273748.P193021597600010405

/-! ## A273748.P488373677600932145

`a(n-1)+A273746(n)+A000035(A008574(n))` with `a(0)=1`
-/

namespace A273748.P488373677600932145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273746 n + A000035 (A008574 n).toNat)

end

end A273748.P488373677600932145

/-! ## A273748.P14876776118158313206

`∑[A141310(∑[A273749(n)]-A273749(n))]`
-/

namespace A273748.P14876776118158313206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273749 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (∑ j ∈ Finset.range (n + 1), f2 j - A273749 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273748.P14876776118158313206

/-!
# A273749: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 918", based on the 5-celled von Neumann neighborhood.

The programs for A273749, there is no canonical definition to state claims against.
-/

/-! ## A273749.P9775669382366249853

`Δ[A273746(n)]`
-/

namespace A273749.P9775669382366249853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273746 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273749.P9775669382366249853

/-! ## A273749.P13132922759968211127

`A273746(n+1)-A273746(n)`
-/

namespace A273749.P13132922759968211127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273746 (n + 1) - A273746 n

end

end A273749.P13132922759968211127

/-! ## A273749.P10397866627104431189

`A273746(A000027(n+1))+A001489(A273746(n))`
-/

namespace A273749.P10397866627104431189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273746 (A000027 (n + 1)).toNat + A001489 (A273746 n).toNat

end

end A273749.P10397866627104431189

/-! ## A273749.P7213635482056942588

`A273746(A023443(n)+2)+A001489(A273746(n))`
-/

namespace A273749.P7213635482056942588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273746 (A023443 n + 2).toNat + A001489 (A273746 n).toNat

end

end A273749.P7213635482056942588

/-!
# A273750: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 926", based on the 5-celled von Neumann neighborhood.

The programs for A273750, there is no canonical definition to state claims against.
-/

/-! ## A273750.P12762531296704906704

`A273779(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273750.P12762531296704906704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273779 (n - 1) + a (n - 1)

end

end A273750.P12762531296704906704

/-! ## A273750.P12387169563607257767

`1+∑[A273779(n)]-A273779(n)`
-/

namespace A273750.P12387169563607257767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273779 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + (∑ j ∈ Finset.range (n + 1), f1 j - A273779 n)

end

end A273750.P12387169563607257767

/-! ## A273750.P8201757728555232397

`or(∑[A273779(n)]-A273779(n), A033999(2*n))`
-/

namespace A273750.P8201757728555232397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273779 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j - A273779 n) (A033999 (2 * n))

end

end A273750.P8201757728555232397

/-! ## A273750.P11388942378463206336

`Δ[A273778(n)]-A273779(n)`
-/

namespace A273750.P11388942378463206336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273779 n

end

end A273750.P11388942378463206336

/-! ## A273750.P2716522151246004303

`A273778(n+1)-(A273779(n)+A273778(n))`
-/

namespace A273750.P2716522151246004303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273778 (n + 1) - (A273779 n + A273778 n)

end

end A273750.P2716522151246004303

/-! ## A273750.P8009682039624253385

`A005408((∑[A273779(n)]-A273779(n))/2)`
-/

namespace A273750.P8009682039624253385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273779 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j - A273779 n : ℤ) : ℚ) / 2)).toNat

end

end A273750.P8009682039624253385

/-! ## A273750.P18207821627635034222

`2-A024000(∑[A273779(n)]-A273779(n))`
-/

namespace A273750.P18207821627635034222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273779 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (∑ j ∈ Finset.range (n + 1), f1 j - A273779 n).toNat

end

end A273750.P18207821627635034222

/-!
# A273751: Triangle of the natural numbers written by decreasing antidiagonals.

The programs for A273751, there is no canonical definition to state claims against.
-/

/-! ## A273751.P996647079752177731

`A163255(∑[char[∑[n]]]²-n)`
-/

namespace A273751.P996647079752177731
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163255 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A273751.P996647079752177731

/-! ## A273751.P16919361846690341499

`A033638(n-C(∑[char[∑[n+1]]], 2))+∑[char[∑[n+1]]]`
-/

namespace A273751.P16919361846690341499
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (n - Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2) + ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℤ)

end

end A273751.P16919361846690341499

/-! ## A273751.P5289889528452403029

`A002620(n-C(∑[char[∑[n+1]]], 2)+2)-(n-C(∑[char[∑[n]]], 2))`
-/

namespace A273751.P5289889528452403029
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
  A002620 ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) + 2).toNat - ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ))

end

end A273751.P5289889528452403029

/-! ## A273751.P7748000563409083289

`A108644(A057028(n+1))`
-/

namespace A273751.P7748000563409083289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108644 (A057028 (n + 1)).toNat

end

end A273751.P7748000563409083289

/-! ## A273751.P14381123319703062442

`A002620(A051162(n))+comp[C(n, 2)]-(n+1)`
-/

namespace A273751.P14381123319703062442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A051162 n).toNat + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ))

end

end A273751.P14381123319703062442

/-! ## A273751.P10772910070146127632

`A056537(A091995(A056537(n+1)))`
-/

namespace A273751.P10772910070146127632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056537 (A091995 (A056537 (n + 1)).toNat).toNat

end

end A273751.P10772910070146127632

/-! ## A273751.P9517667985019078049

`A033638(A051162(n))+A003056(n)`
-/

namespace A273751.P9517667985019078049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A051162 n).toNat + A003056 n

end

end A273751.P9517667985019078049

/-! ## A273751.P17808091917043224602

`A033638(A134478(n))+A003056(n)`
-/

namespace A273751.P17808091917043224602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033638 (A134478 n).toNat + A003056 n

end

end A273751.P17808091917043224602

/-! ## A273751.P1757332111976952714

`A008621(A051162(n)²)+A003056(n)`
-/

namespace A273751.P1757332111976952714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A051162 n ^ 2).toNat + A003056 n

end

end A273751.P1757332111976952714

/-!
# A273754: Number of binary heaps on [n] that give a heap when the first element is removed.

The programs for A273754, there is no canonical definition to state claims against.
-/

/-! ## A273754.P1196953332148802191

`A354768(A336134(n))/A125895(n+1)`
-/

namespace A273754.P1196953332148802191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A354768 (A336134 n).toNat : ℚ) / (A125895 (n + 1) : ℚ)

end

end A273754.P1196953332148802191

/-!
# A273755: Number of binary min heaps on [n] that give a max heap when reversed.

The programs for A273755, there is no canonical definition to state claims against.
-/

/-! ## A273755.P10500149105031497866

`A130574(A000628(n))`
-/

namespace A273755.P10500149105031497866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130574 (A000628 n).toNat

end

end A273755.P10500149105031497866

/-! ## A273755.P10998344493235739432

`A107686(A064236(n))`
-/

namespace A273755.P10998344493235739432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107686 (A064236 n).toNat

end

end A273755.P10998344493235739432

/-! ## A273755.P6884219290857463446

`A194982(A072187(n))`
-/

namespace A273755.P6884219290857463446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194982 (A072187 n).toNat

end

end A273755.P6884219290857463446

/-! ## A273755.P7573633047433110508

`A394994(A002991(n))`
-/

namespace A273755.P7573633047433110508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394994 (A002991 n).toNat

end

end A273755.P7573633047433110508

/-! ## A273755.P10659682559391661660

`ceil(A331965(A006498(n))/12)`
-/

namespace A273755.P10659682559391661660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A331965 (A006498 n).toNat : ℚ) / 12⌉

end

end A273755.P10659682559391661660

/-!
# A273758: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 902", based on the 5-celled von Neumann neighborhood.

The programs for A273758, there is no canonical definition to state claims against.
-/

/-! ## A273758.P10246870070197634777

`∑[A273761(abs(1-n))]+1`
-/

namespace A273758.P10246870070197634777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273761 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A273758.P10246870070197634777

/-! ## A273758.P10839046334170918706

`xor(1, ∑[A273761(abs(n-1))])`
-/

namespace A273758.P10839046334170918706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273761 |(n : ℤ) - 1|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273758.P10839046334170918706

/-! ## A273758.P3129437957708661277

`A273761(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273758.P3129437957708661277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273761 (n - 1) + a (n - 1)

end

end A273758.P3129437957708661277

/-! ## A273758.P11297040548543670442

`Δ[A273760(n)]-A273761(n)`
-/

namespace A273758.P11297040548543670442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273761 n

end

end A273758.P11297040548543670442

/-! ## A273758.P7884063229394041305

`A273760(n+1)-(A273761(n)+A273760(n))`
-/

namespace A273758.P7884063229394041305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273760 (n + 1) - (A273761 n + A273760 n)

end

end A273758.P7884063229394041305

/-! ## A273758.P17132999163930790410

`A109613(∑[A273761(abs(1-n))])`
-/

namespace A273758.P17132999163930790410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273761 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A273758.P17132999163930790410

/-! ## A273758.P12014612821366485442

`A116966(∑[A273761(abs(1-n))])`
-/

namespace A273758.P12014612821366485442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273761 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A273758.P12014612821366485442

/-! ## A273758.P16054792324405520059

`A109613(∑[A273761(n)]-A273761(n))`
-/

namespace A273758.P16054792324405520059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (∑ j ∈ Finset.range (n + 1), f1 j - A273761 n).toNat

end

end A273758.P16054792324405520059

/-! ## A273758.P14680036638148106983

`A116966(∑[A273761(n)]-A273761(n))`
-/

namespace A273758.P14680036638148106983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116966 (∑ j ∈ Finset.range (n + 1), f1 j - A273761 n).toNat

end

end A273758.P14680036638148106983

/-! ## A273758.P10305855281882794933

`A153152(∑[A273761(n)])-A273761(n)`
-/

namespace A273758.P10305855281882794933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A273761 n

end

end A273758.P10305855281882794933

/-!
# A273759: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 902", based on the 5-celled von Neumann neighborhood.

The programs for A273759, there is no canonical definition to state claims against.
-/

/-! ## A273759.P4401698084522761300

`A273758(2^n-1)`
-/

namespace A273759.P4401698084522761300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273758 (2 ^ n - 1)

end

end A273759.P4401698084522761300

/-! ## A273759.P18062159736329764777

`record[A273758(A135481(n))]`
-/

namespace A273759.P18062159736329764777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273758 (A135481 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273759.P18062159736329764777

/-! ## A273759.P13124260059568940824

`record[A273758(A173787(n))]`
-/

namespace A273759.P13124260059568940824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273758 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273759.P13124260059568940824

/-! ## A273759.P14501126683270618033

`record[A273758(A218616(n))]`
-/

namespace A273759.P14501126683270618033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273758 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273759.P14501126683270618033

/-! ## A273759.P3168013148371987887

`record[A273758(A255565(n))]`
-/

namespace A273759.P3168013148371987887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273758 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273759.P3168013148371987887

/-!
# A273760: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 902", based on the 5-celled von Neumann neighborhood.

The programs for A273760, there is no canonical definition to state claims against.
-/

/-! ## A273760.P1115495645710720498

`∑[∑[A273761(abs(1-n))]+1]`
-/

namespace A273760.P1115495645710720498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273761 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273760.P1115495645710720498

/-! ## A273760.P3176466939937990780

`∑[A273761(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273760.P3176466939937990780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273761 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273760.P3176466939937990780

/-! ## A273760.P14924639388060136843

`∑[A273758(n)]`
-/

namespace A273760.P14924639388060136843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273758 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273760.P14924639388060136843

/-! ## A273760.P14713942762459386714

`A273758(root(n, 2)²)+a(n-1)` with `a(0)=1`
-/

namespace A273760.P14713942762459386714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273758 (SequenceMachineLib.roundAway (((n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat + a (n - 1)

end

end A273760.P14713942762459386714

/-! ## A273760.P16836352065723251293

`A273758(n)+a(n-1)-A078869(A137185(n+1))` with `a(0)=1`
-/

namespace A273760.P16836352065723251293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273758 n + a (n - 1) - A078869 (A137185 (n + 1)).toNat

end

end A273760.P16836352065723251293

/-!
# A273761: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 902", based on the 5-celled von Neumann neighborhood.

The programs for A273761, there is no canonical definition to state claims against.
-/

/-! ## A273761.P4367474907620757683

`Δ[A273758(n)]`
-/

namespace A273761.P4367474907620757683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273758 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273761.P4367474907620757683

/-! ## A273761.P14753804137339092494

`A273758(n+1)-A273758(n)`
-/

namespace A273761.P14753804137339092494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273758 (n + 1) - A273758 n

end

end A273761.P14753804137339092494

/-! ## A273761.P8499351578361324494

`Δ[A273835(A087051(n))]`
-/

namespace A273761.P8499351578361324494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273835 (A087051 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273761.P8499351578361324494

/-! ## A273761.P6562638848011434081

`A273838(A348810(n)+n)`
-/

namespace A273761.P6562638848011434081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273838 (A348810 n + (n : ℤ)).toNat

end

end A273761.P6562638848011434081

/-! ## A273761.P10581059531613929260

`A273838(n)%A095615(n)`
-/

namespace A273761.P10581059531613929260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273838 n) (A095615 n)

end

end A273761.P10581059531613929260

/-!
# A273762: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 910", based on the 5-celled von Neumann neighborhood.

The programs for A273762, there is no canonical definition to state claims against.
-/

/-! ## A273762.P1456209830161490198

`A273765(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273762.P1456209830161490198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273765 (n - 1) + a (n - 1)

end

end A273762.P1456209830161490198

/-! ## A273762.P1852652307402350829

`∑[A273765(n-A057427(n))]-3`
-/

namespace A273762.P1852652307402350829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273765 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A273762.P1852652307402350829

/-! ## A273762.P17311006589699987693

`Δ[A273764(n)]-A273765(n)`
-/

namespace A273762.P17311006589699987693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273764 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273765 n

end

end A273762.P17311006589699987693

/-! ## A273762.P3890203263783308819

`A273764(n+1)-(A273765(n)+A273764(n))`
-/

namespace A273762.P3890203263783308819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273764 (n + 1) - (A273765 n + A273764 n)

end

end A273762.P3890203263783308819

/-! ## A273762.P5070775142000179969

`A020985(n)²+∑[A273765(n)]-A273765(n)`
-/

namespace A273762.P5070775142000179969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273765 n)

end

end A273762.P5070775142000179969

/-! ## A273762.P17562429707737297069

`A106400(n)²+∑[A273765(n)]-A273765(n)`
-/

namespace A273762.P17562429707737297069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n ^ 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273765 n)

end

end A273762.P17562429707737297069

/-! ## A273762.P13050464759962007276

`(∑[A273765(n)]-A273765(n)+1)%A268581(n)`
-/

namespace A273762.P13050464759962007276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A273765 n + 1) (A268581 n)

end

end A273762.P13050464759962007276

/-! ## A273762.P8526372764247907150

`A004767(n)%2+∑[A273765(n)]-A273765(n)`
-/

namespace A273762.P8526372764247907150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004767 n) 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273765 n)

end

end A273762.P8526372764247907150

/-! ## A273762.P11785652453771125465

`(-1)^A153733(n)+∑[A273765(n)]-A273765(n)`
-/

namespace A273762.P11785652453771125465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273765 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A153733 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f1 j - A273765 n : ℤ) : ℚ)

end

end A273762.P11785652453771125465

/-! ## A273762.P7561051253477639972

`∑[A273765(n)]-A273765(n)-(-1)^A000328(n)`
-/

namespace A273762.P7561051253477639972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273765 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A273765 n : ℤ) : ℚ) - (-1 : ℚ) ^ (A000328 n : ℤ)

end

end A273762.P7561051253477639972

/-! ## A273762.P7823775837155439645

`A064194(n+1)%2+∑[A273765(n)]-A273765(n)`
-/

namespace A273762.P7823775837155439645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064194 (n + 1)) 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273765 n)

end

end A273762.P7823775837155439645

/-! ## A273762.P583490963361958829

`A146511(n+1)%2+∑[A273765(n)]-A273765(n)`
-/

namespace A273762.P583490963361958829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146511 (n + 1)) 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273765 n)

end

end A273762.P583490963361958829

/-! ## A273762.P2165974462951099384

`A286690(n+1)%2+∑[A273765(n)]-A273765(n)`
-/

namespace A273762.P2165974462951099384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286690 (n + 1)) 2 + (∑ j ∈ Finset.range (n + 1), f1 j - A273765 n)

end

end A273762.P2165974462951099384

/-! ## A273762.P17497931009344339548

`A000027(∑[A273765(n)]-A273765(n)+1)`
-/

namespace A273762.P17497931009344339548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j - A273765 n + 1).toNat

end

end A273762.P17497931009344339548

/-! ## A273762.P17079010193074323979

`A000265(∑[A273765(n)]-A273765(n)+1)`
-/

namespace A273762.P17079010193074323979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ j ∈ Finset.range (n + 1), f1 j - A273765 n + 1).toNat

end

end A273762.P17079010193074323979

/-! ## A273762.P7870179076540603473

`A109613(∑[A273765(n)]-A273765(n))`
-/

namespace A273762.P7870179076540603473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273765 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (∑ j ∈ Finset.range (n + 1), f1 j - A273765 n).toNat

end

end A273762.P7870179076540603473

/-!
# A273763: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 910", based on the 5-celled von Neumann neighborhood.

The programs for A273763, there is no canonical definition to state claims against.
-/

/-! ## A273763.P4278566182181344784

`A273762(2^n-1)`
-/

namespace A273763.P4278566182181344784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273762 (2 ^ n - 1)

end

end A273763.P4278566182181344784

/-! ## A273763.P14127461327413265713

`record[A273762(A173787(n))]`
-/

namespace A273763.P14127461327413265713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273762 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273763.P14127461327413265713

/-! ## A273763.P10373231147483102457

`record[A273762(A227351(n))]`
-/

namespace A273763.P10373231147483102457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273762 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273763.P10373231147483102457

/-! ## A273763.P13341226981856294212

`or(1, A273762(A000225(n)))`
-/

namespace A273763.P13341226981856294212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273762 (A000225 n).toNat)

end

end A273763.P13341226981856294212

/-! ## A273763.P10495753256678270944

`record[A036987(n)*A273762(n)]`
-/

namespace A273763.P10495753256678270944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n * A273762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273763.P10495753256678270944

/-!
# A273764: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 910", based on the 5-celled von Neumann neighborhood.

The programs for A273764, there is no canonical definition to state claims against.
-/

/-! ## A273764.P10467705760115963067

`∑[A273762(n)]`
-/

namespace A273764.P10467705760115963067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273764.P10467705760115963067

/-! ## A273764.P11551090716217051176

`∑[A273765(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A273764.P11551090716217051176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A273765 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273764.P11551090716217051176

/-! ## A273764.P11609633685694982072

`∑[∑[A273765(n-A057427(n))]-3]`
-/

namespace A273764.P11609633685694982072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273765 ((n : ℤ) - A057427 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273764.P11609633685694982072

/-! ## A273764.P10257437687828063755

`∑[∑[A273765(n)]-A273765(n)+1]`
-/

namespace A273764.P10257437687828063755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273765 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A273765 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273764.P10257437687828063755

/-! ## A273764.P3555994614237408017

`A273762(n+1)+a(n-1)-A273765(n)` with `a(0)=1`
-/

namespace A273764.P3555994614237408017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273762 (n + 1) + (a (n - 1) - A273765 n)

end

end A273764.P3555994614237408017

/-!
# A273765: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 910", based on the 5-celled von Neumann neighborhood.

The programs for A273765, there is no canonical definition to state claims against.
-/

/-! ## A273765.P2098502918267382920

`Δ[A273762(n)]`
-/

namespace A273765.P2098502918267382920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273765.P2098502918267382920

/-! ## A273765.P13111631599833056226

`A273762(n+1)-A273762(n)`
-/

namespace A273765.P13111631599833056226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273762 (n + 1) - A273762 n

end

end A273765.P13111631599833056226

/-!
# A273766: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 913", based on the 5-celled von Neumann neighborhood.

The programs for A273766, the canonical program `A273766.P8401041428016886495` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273766 has offset 0).

The definition of A273766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2809 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273766.P8401041428016886495

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=17, a(3)=48, a(4)=81, a(5)=121, a(6)=169`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A273766

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P8401041428016886495.Spec : Prop :=
  ∀ n, P8401041428016886495.a n = A273766 n

theorem P8401041428016886495.correct : P8401041428016886495.Spec := by
  intro n
  simp only [A273766]

end A273766

/-! ## A273766.P3918926131802267674

`A273769(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273766.P3918926131802267674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273769 (n - 1) + a (n - 1)

end

end A273766.P3918926131802267674

namespace A273766

/-- `A273769(n-1)+a(n-1)` -/
def P3918926131802267674.Spec : Prop :=
  ∀ n, P3918926131802267674.a n = A273766 n

end A273766

/-! ## A273766.P8306443107044242281

`A273334(n)+A130543(n)`
-/

namespace A273766.P8306443107044242281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273334 n + A130543 n

end

end A273766.P8306443107044242281

namespace A273766

/-- `A273334(n)+A130543(n)` -/
def P8306443107044242281.Spec : Prop :=
  ∀ n, P8306443107044242281.a n = A273766 n

end A273766

/-! ## A273766.P17890229107997920568

`and(A273780(n), A273789(n))`
-/

namespace A273766.P17890229107997920568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A273780 n) (A273789 n)

end

end A273766.P17890229107997920568

namespace A273766

/-- `and(A273780(n), A273789(n))` -/
def P17890229107997920568.Spec : Prop :=
  ∀ n, P17890229107997920568.a n = A273766 n

end A273766

/-! ## A273766.P3157101300025216094

`and(A273780(n), A280321(n))`
-/

namespace A273766.P3157101300025216094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A273780 n) (A280321 n)

end

end A273766.P3157101300025216094

namespace A273766

/-- `and(A273780(n), A280321(n))` -/
def P3157101300025216094.Spec : Prop :=
  ∀ n, P3157101300025216094.a n = A273766 n

end A273766

/-! ## A273766.P13948218128680582722

`or(A267870(n), A273334(n))`
-/

namespace A273766.P13948218128680582722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267870 n) (A273334 n)

end

end A273766.P13948218128680582722

namespace A273766

/-- `or(A267870(n), A273334(n))` -/
def P13948218128680582722.Spec : Prop :=
  ∀ n, P13948218128680582722.a n = A273766 n

end A273766

/-! ## A273766.P7115843939360717471

`∑[A273769(n)]+1-A273769(n)`
-/

namespace A273766.P7115843939360717471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273769 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A273769 n)

end

end A273766.P7115843939360717471

namespace A273766

/-- `∑[A273769(n)]+1-A273769(n)` -/
def P7115843939360717471.Spec : Prop :=
  ∀ n, P7115843939360717471.a n = A273766 n

end A273766

/-! ## A273766.P17697429965635320068

`and(-A010134(2*n+1), A273780(n))`
-/

namespace A273766.P17697429965635320068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A010134 (2 * n + 1)) (A273780 n)

end

end A273766.P17697429965635320068

namespace A273766

/-- `and(-A010134(2*n+1), A273780(n))` -/
def P17697429965635320068.Spec : Prop :=
  ∀ n, P17697429965635320068.a n = A273766 n

end A273766

/-! ## A273766.P12297736492627987109

`A273334(n)+A008683(A273334(C(3, n)))`
-/

namespace A273766.P12297736492627987109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273334 n + A008683 (A273334 (Nat.choose 3 n)).toNat

end

end A273766.P12297736492627987109

namespace A273766

/-- `A273334(n)+A008683(A273334(C(3, n)))` -/
def P12297736492627987109.Spec : Prop :=
  ∀ n, P12297736492627987109.a n = A273766 n

end A273766

/-! ## A273766.P1596030353920497315

`A273334(n)+A267870(A267870(n)+n)`
-/

namespace A273766.P1596030353920497315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273334 n + A267870 (A267870 n + (n : ℤ)).toNat

end

end A273766.P1596030353920497315

namespace A273766

/-- `A273334(n)+A267870(A267870(n)+n)` -/
def P1596030353920497315.Spec : Prop :=
  ∀ n, P1596030353920497315.a n = A273766 n

end A273766

/-! ## A273766.P13938230480395331905

`and(A273384(n), A273780(n))`
-/

namespace A273766.P13938230480395331905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A273384 n) (A273780 n)

end

end A273766.P13938230480395331905

namespace A273766

/-- `and(A273384(n), A273780(n))` -/
def P13938230480395331905.Spec : Prop :=
  ∀ n, P13938230480395331905.a n = A273766 n

end A273766

/-! ## A273766.P7769923208636924613

`A267870(n)+A273384(n)-1`
-/

namespace A273766.P7769923208636924613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 n + (A273384 n - 1)

end

end A273766.P7769923208636924613

namespace A273766

/-- `A267870(n)+A273384(n)-1` -/
def P7769923208636924613.Spec : Prop :=
  ∀ n, P7769923208636924613.a n = A273766 n

end A273766

/-! ## A273766.P4277721829373349982

`Δ[A273768(n)]-A273769(n)`
-/

namespace A273766.P4277721829373349982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273769 n

end

end A273766.P4277721829373349982

namespace A273766

/-- `Δ[A273768(n)]-A273769(n)` -/
def P4277721829373349982.Spec : Prop :=
  ∀ n, P4277721829373349982.a n = A273766 n

end A273766

/-! ## A273766.P3052913389077520837

`A273768(n+1)-(A273769(n)+A273768(n))`
-/

namespace A273766.P3052913389077520837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273768 (n + 1) - (A273769 n + A273768 n)

end

end A273766.P3052913389077520837

namespace A273766

/-- `A273768(n+1)-(A273769(n)+A273768(n))` -/
def P3052913389077520837.Spec : Prop :=
  ∀ n, P3052913389077520837.a n = A273766 n

end A273766

/-! ## A273766.P7080052497805881062

`(2*n+1)²-C(3*n+2, A000032(n+2))`
-/

namespace A273766.P7080052497805881062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - (Nat.choose (3 * n + 2) (A000032 (n + 2)).toNat : ℤ)

end

end A273766.P7080052497805881062

namespace A273766

/-- `(2*n+1)²-C(3*n+2, A000032(n+2))` -/
def P7080052497805881062.Spec : Prop :=
  ∀ n, P7080052497805881062.a n = A273766 n

end A273766

/-! ## A273766.P14309551990282791484

`and(A267780(n), A273780(n))`
-/

namespace A273766.P14309551990282791484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267780 n) (A273780 n)

end

end A273766.P14309551990282791484

namespace A273766

/-- `and(A267780(n), A273780(n))` -/
def P14309551990282791484.Spec : Prop :=
  ∀ n, P14309551990282791484.a n = A273766 n

end A273766

/-! ## A273766.P1092681707659863333

`and(A267886(n), A273780(n))`
-/

namespace A273766.P1092681707659863333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267886 n) (A273780 n)

end

end A273766.P1092681707659863333

namespace A273766

/-- `and(A267886(n), A273780(n))` -/
def P1092681707659863333.Spec : Prop :=
  ∀ n, P1092681707659863333.a n = A273766 n

end A273766

/-!
# A273767: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 913", based on the 5-celled von Neumann neighborhood.

The programs for A273767, the canonical program `A273767.P5714310039516204323` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273767 has offset 0).

The definition of A273767 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273767.P13652752320485770231

`A279879(2*n)²-char[2]`
-/

namespace A273767.P13652752320485770231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279879 (2 * n) ^ 2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A273767.P13652752320485770231

namespace A273767

/-- `A279879(2*n)²-char[2]` -/
def P13652752320485770231.Spec : Prop :=
  ∀ n, P13652752320485770231.a n = A273767 n

end A273767

/-! ## A273767.P5714310039516204323

`A273385(n)-A171386(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A273767

/-- `A273385(n)-A171386(n+1)` -/
def P5714310039516204323.Spec : Prop :=
  ∀ n, P5714310039516204323.a n = A273767 n

theorem P5714310039516204323.correct : P5714310039516204323.Spec := by
  intro n
  simp only [A273767]

end A273767

/-! ## A273767.P3454530416000026233

`A270130(n)+4*A185012(n)`
-/

namespace A273767.P3454530416000026233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270130 n + 4 * A185012 n

end

end A273767.P3454530416000026233

namespace A273767

/-- `A270130(n)+4*A185012(n)` -/
def P3454530416000026233.Spec : Prop :=
  ∀ n, P3454530416000026233.a n = A273767 n

end A273767

/-! ## A273767.P18229474788599042261

`xor(A279879(2*n)², A185012(n))`
-/

namespace A273767.P18229474788599042261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A279879 (2 * n) ^ 2) (A185012 n)

end

end A273767.P18229474788599042261

namespace A273767

/-- `xor(A279879(2*n)², A185012(n))` -/
def P18229474788599042261.Spec : Prop :=
  ∀ n, P18229474788599042261.a n = A273767 n

end A273767

/-! ## A273767.P8815523789356094885

`or(A267870(∑[n]), A273335(n))`
-/

namespace A273767.P8815523789356094885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267870 (∑ j ∈ Finset.range (n + 1), f1 j)) (A273335 n)

end

end A273767.P8815523789356094885

namespace A273767

/-- `or(A267870(∑[n]), A273335(n))` -/
def P8815523789356094885.Spec : Prop :=
  ∀ n, P8815523789356094885.a n = A273767 n

end A273767

/-! ## A273767.P1912661709326920905

`A273335(n)+A095792(n²)`
-/

namespace A273767.P1912661709326920905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273335 n + A095792 (n ^ 2)

end

end A273767.P1912661709326920905

namespace A273767

/-- `A273335(n)+A095792(n²)` -/
def P1912661709326920905.Spec : Prop :=
  ∀ n, P1912661709326920905.a n = A273767 n

end A273767

/-! ## A273767.P12687627080574284091

`A273385(n)-A157658(A273384(n))`
-/

namespace A273767.P12687627080574284091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273385 n - A157658 (A273384 n).toNat

end

end A273767.P12687627080574284091

namespace A273767

/-- `A273385(n)-A157658(A273384(n))` -/
def P12687627080574284091.Spec : Prop :=
  ∀ n, P12687627080574284091.a n = A273767 n

end A273767

/-!
# A273768: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 913", based on the 5-celled von Neumann neighborhood.

The programs for A273768, the canonical program `A273768.P13988949307027164235` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273768 has offset 0).

The definition of A273768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2700 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273768.P13988949307027164235

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=22, a(3)=70, a(4)=151, a(5)=272, a(6)=441`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A273768

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P13988949307027164235.Spec : Prop :=
  ∀ n, P13988949307027164235.a n = A273768 n

theorem P13988949307027164235.correct : P13988949307027164235.Spec := by
  intro n
  simp only [A273768]

end A273768

/-! ## A273768.P12596217356988492760

`∑[A273766(n)]`
-/

namespace A273768.P12596217356988492760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273768.P12596217356988492760

namespace A273768

/-- `∑[A273766(n)]` -/
def P12596217356988492760.Spec : Prop :=
  ∀ n, P12596217356988492760.a n = A273768 n

end A273768

/-! ## A273768.P993765074181150558

`A273386(n)-A046698(n)`
-/

namespace A273768.P993765074181150558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273386 n - A046698 n

end

end A273768.P993765074181150558

namespace A273768

/-- `A273386(n)-A046698(n)` -/
def P993765074181150558.Spec : Prop :=
  ∀ n, P993765074181150558.a n = A273768 n

end A273768

/-! ## A273768.P12891741931296334400

`∑[A273334(n)+A130543(n)]`
-/

namespace A273768.P12891741931296334400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273334 n + A130543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273768.P12891741931296334400

namespace A273768

/-- `∑[A273334(n)+A130543(n)]` -/
def P12891741931296334400.Spec : Prop :=
  ∀ n, P12891741931296334400.a n = A273768 n

end A273768

/-! ## A273768.P17185162030682575089

`∑[and(A273384(n), A273780(n))]`
-/

namespace A273768.P17185162030682575089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A273384 n) (A273780 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273768.P17185162030682575089

namespace A273768

/-- `∑[and(A273384(n), A273780(n))]` -/
def P17185162030682575089.Spec : Prop :=
  ∀ n, P17185162030682575089.a n = A273768 n

end A273768

/-! ## A273768.P2576410170406112991

`∑[and(A273780(n), A280321(n))]`
-/

namespace A273768.P2576410170406112991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A273780 n) (A280321 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273768.P2576410170406112991

namespace A273768

/-- `∑[and(A273780(n), A280321(n))]` -/
def P2576410170406112991.Spec : Prop :=
  ∀ n, P2576410170406112991.a n = A273768 n

end A273768

/-! ## A273768.P8474781980788385366

`∑[or(A267870(n), A273334(n))]`
-/

namespace A273768.P8474781980788385366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A267870 n) (A273334 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273768.P8474781980788385366

namespace A273768

/-- `∑[or(A267870(n), A273334(n))]` -/
def P8474781980788385366.Spec : Prop :=
  ∀ n, P8474781980788385366.a n = A273768 n

end A273768

/-! ## A273768.P4167753417937385077

`A273781(n)-4%A008071(n)`
-/

namespace A273768.P4167753417937385077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273781 n - Int.tmod 4 (A008071 n)

end

end A273768.P4167753417937385077

namespace A273768

/-- `A273781(n)-4%A008071(n)` -/
def P4167753417937385077.Spec : Prop :=
  ∀ n, P4167753417937385077.a n = A273768 n

end A273768

/-! ## A273768.P10446939404559910373

`∑[A267870(n)+A273384(n)-1]`
-/

namespace A273768.P10446939404559910373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267870 n + (A273384 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273768.P10446939404559910373

namespace A273768

/-- `∑[A267870(n)+A273384(n)-1]` -/
def P10446939404559910373.Spec : Prop :=
  ∀ n, P10446939404559910373.a n = A273768 n

end A273768

/-! ## A273768.P334349853479842020

`∑[A293904(C(3, n))+A273334(n)]`
-/

namespace A273768.P334349853479842020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293904 (Nat.choose 3 n + 1) + A273334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273768.P334349853479842020

namespace A273768

/-- `∑[A293904(C(3, n))+A273334(n)]` -/
def P334349853479842020.Spec : Prop :=
  ∀ n, P334349853479842020.a n = A273768 n

end A273768

/-! ## A273768.P5267590919998745666

`∑[A273334(n)+A008683(A273334(C(3, n)))]`
-/

namespace A273768.P5267590919998745666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273334 n + A008683 (A273334 (Nat.choose 3 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273768.P5267590919998745666

namespace A273768

/-- `∑[A273334(n)+A008683(A273334(C(3, n)))]` -/
def P5267590919998745666.Spec : Prop :=
  ∀ n, P5267590919998745666.a n = A273768 n

end A273768

/-! ## A273768.P1238859130000784829

`∑[(2*n+1)²-C(3*n+2, A000032(n+2))]`
-/

namespace A273768.P1238859130000784829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - (Nat.choose (3 * n + 2) (A000032 (n + 2)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273768.P1238859130000784829

namespace A273768

/-- `∑[(2*n+1)²-C(3*n+2, A000032(n+2))]` -/
def P1238859130000784829.Spec : Prop :=
  ∀ n, P1238859130000784829.a n = A273768 n

end A273768

/-! ## A273768.P3932139560191135056

`∑[and(A267780(n), A273780(n))]`
-/

namespace A273768.P3932139560191135056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267780 n) (A273780 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273768.P3932139560191135056

namespace A273768

/-- `∑[and(A267780(n), A273780(n))]` -/
def P3932139560191135056.Spec : Prop :=
  ∀ n, P3932139560191135056.a n = A273768 n

end A273768

/-!
# A273769: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 913", based on the 5-celled von Neumann neighborhood.

The programs for A273769, the canonical program `A273769.P1562804252117018537` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273769 has offset 0).

The definition of A273769 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273769.P1562804252117018537

`2*a(n-1)-a(n-2)` with `a(0)=3, a(1)=13, a(2)=31, a(3)=33, a(4)=40, a(5)=48`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A273769

/-- `2*a(n-1)-a(n-2)` -/
def P1562804252117018537.Spec : Prop :=
  ∀ n, P1562804252117018537.a n = A273769 n

theorem P1562804252117018537.correct : P1562804252117018537.Spec := by
  intro n
  simp only [A273769]

end A273769

/-!
# A273770: Max { min { x >= 0 | p + (2*n+1)*x + x^2 is composite }, p < 10^(5+n/10) }.

The programs for A273770, there is no canonical definition to state claims against.
-/

/-! ## A273770.P16961983158859723222

`∑[A067349(A028310(∑[n²]))%2-1]+41`
-/

namespace A273770.P16961983158859723222
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067349 (A028310 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat) 2 - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 41

end

end A273770.P16961983158859723222

/-! ## A273770.P11242954207481362499

`41-∑[A322107(n+3)%2]`
-/

namespace A273770.P11242954207481362499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322107 (n + 3)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  41 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273770.P11242954207481362499

/-!
# A273773: Primes p such that no practical number (A005153) exists between p and its successor.

The programs for A273773, there is no canonical definition to state claims against.
-/

/-! ## A273773.P14976922964560119671

`A322902(A166136(n+4)+∑{d}[n+1, #+1])`
-/

namespace A273773.P14976922964560119671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322902 (A166136 (n + 4) + ((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ)).toNat

end

end A273773.P14976922964560119671

/-!
# A273777: Consider all ways of writing the n-th composite number as the product of two divisors d1*d2 = d3*d4 = ... where each divisor is larger than 1; a(n) is the maximum of the sums {d1 + d2, d3 + d4, ...}.

The programs for A273777, there is no canonical definition to state claims against.
-/

/-! ## A273777.P9264623869188184208

`A089389(comp[p?[2*n+1]-3]+3)`
-/

namespace A273777.P9264623869188184208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089389 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3)

end

end A273777.P9264623869188184208

/-! ## A273777.P13247139363539157174

`A089389(Δ[A053767(n)])`
-/

namespace A273777.P13247139363539157174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089389 (f1 (n + 1) - f1 n).toNat

end

end A273777.P13247139363539157174

/-! ## A273777.P12470924455296145490

`A089389(comp[A351078(n)])`
-/

namespace A273777.P12470924455296145490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089389 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A273777.P12470924455296145490

/-! ## A273777.P15885045871264898613

`A089389(A002808(n+1))`
-/

namespace A273777.P15885045871264898613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089389 (A002808 (n + 1)).toNat

end

end A273777.P15885045871264898613

/-! ## A273777.P14859681604094985296

`A089389(A018252(n+2))`
-/

namespace A273777.P14859681604094985296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089389 (A018252 (n + 2)).toNat

end

end A273777.P14859681604094985296

/-! ## A273777.P11645170584738099755

`A089389(comp[C(A006530(n+1), n)])`
-/

namespace A273777.P11645170584738099755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089389 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A273777.P11645170584738099755

/-! ## A273777.P13880881093383483562

`A089389(comp[C(A020639(n+1), n)])`
-/

namespace A273777.P13880881093383483562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A020639 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089389 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A273777.P13880881093383483562

/-! ## A273777.P13108395424534032028

`A160180(n+1)+A056608(n+1)`
-/

namespace A273777.P13108395424534032028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160180 (n + 1) + A056608 (n + 1)

end

end A273777.P13108395424534032028

/-! ## A273777.P5218885469813605369

`A160180(n+1)+A002808(n+1)/A160180(n+1)`
-/

namespace A273777.P5218885469813605369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160180 (n + 1) : ℚ) + (A002808 (n + 1) : ℚ) / (A160180 (n + 1) : ℚ)

end

end A273777.P5218885469813605369

/-! ## A273777.P17877105653045811930

`A056608(n+1)+A018252(n+2)/A056608(n+1)`
-/

namespace A273777.P17877105653045811930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056608 (n + 1) : ℚ) + (A018252 (n + 2) : ℚ) / (A056608 (n + 1) : ℚ)

end

end A273777.P17877105653045811930

/-! ## A273777.P6845492891308446095

`A111234(comp[p?[2*n+1]-3]+3)`
-/

namespace A273777.P6845492891308446095
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111234 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 3)

end

end A273777.P6845492891308446095

/-! ## A273777.P8014503729663770298

`A111234(Δ[A053767(n)])`
-/

namespace A273777.P8014503729663770298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111234 (f1 (n + 1) - f1 n).toNat

end

end A273777.P8014503729663770298

/-! ## A273777.P5536613949743307688

`A056608(n+1)+A032742(A002808(n+1))`
-/

namespace A273777.P5536613949743307688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (n + 1) + A032742 (A002808 (n + 1)).toNat

end

end A273777.P5536613949743307688

/-! ## A273777.P17074982998334845454

`A385246(A228372(n+1))`
-/

namespace A273777.P17074982998334845454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385246 (A228372 (n + 1)).toNat

end

end A273777.P17074982998334845454

/-!
# A273778: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 926", based on the 5-celled von Neumann neighborhood.

The programs for A273778, there is no canonical definition to state claims against.
-/

/-! ## A273778.P8738652084063503119

`∑[A273750(n)]`
-/

namespace A273778.P8738652084063503119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273778.P8738652084063503119

/-! ## A273778.P7382184337926704755

`A273750(A028310(n))+a(n-1)` with `a(0)=1`
-/

namespace A273778.P7382184337926704755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273750 (A028310 n).toNat + a (n - 1)

end

end A273778.P7382184337926704755

/-! ## A273778.P8962150300273952794

`∑[∑[A273779(n)]+1-A273779(n)]`
-/

namespace A273778.P8962150300273952794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273779 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A273779 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273778.P8962150300273952794

/-! ## A273778.P8987847037874469038

`A273750(A004526(n+n))+a(n-1)` with `a(0)=1`
-/

namespace A273778.P8987847037874469038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273750 (A004526 (n + n)).toNat + a (n - 1)

end

end A273778.P8987847037874469038

/-! ## A273778.P16476412868897752031

`a(n-1)+lcm(A106400(n), A273750(n))` with `a(0)=1`
-/

namespace A273778.P16476412868897752031
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lcm (A106400 n) (A273750 n)

end

end A273778.P16476412868897752031

/-! ## A273778.P1390687382113911057

`∑[A005408((∑[A273779(n)]-A273779(n))/2)]`
-/

namespace A273778.P1390687382113911057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273779 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f2 j - A273779 n : ℤ) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273778.P1390687382113911057

/-! ## A273778.P12278112373727200372

`∑[2-A024000(∑[A273779(n)]-A273779(n))]`
-/

namespace A273778.P12278112373727200372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273779 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A024000 (∑ j ∈ Finset.range (n + 1), f2 j - A273779 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273778.P12278112373727200372

/-!
# A273779: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 926", based on the 5-celled von Neumann neighborhood.

The programs for A273779, there is no canonical definition to state claims against.
-/

/-! ## A273779.P11094137343515947164

`Δ[A273750(n)]`
-/

namespace A273779.P11094137343515947164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273750 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273779.P11094137343515947164

/-! ## A273779.P4532416347293524904

`A273750(n+1)-A273750(n)`
-/

namespace A273779.P4532416347293524904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273750 (n + 1) - A273750 n

end

end A273779.P4532416347293524904

/-! ## A273779.P973965138162799821

`A061142(A047223(n+1)*A085721(n+4))`
-/

namespace A273779.P973965138162799821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A047223 (n + 1) * A085721 (n + 4)).toNat

end

end A273779.P973965138162799821

/-! ## A273779.P652691558337032344

`4*A037445(A099485(n))`
-/

namespace A273779.P652691558337032344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A037445 (A099485 n).toNat

end

end A273779.P652691558337032344

/-! ## A273779.P9564746610332589134

`A061142(6*A290519(n))`
-/

namespace A273779.P9564746610332589134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (6 * A290519 n).toNat

end

end A273779.P9564746610332589134

/-!
# A273780: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 929", based on the 5-celled von Neumann neighborhood.

The programs for A273780, the canonical program `A273780.P17442121220925918495` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273780 has offset 0).

The definition of A273780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2865 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273780.P6689985315211804361

`ceil((2*n+1-n^(1-n))²)`
-/

namespace A273780.P6689985315211804361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℚ) + (1 - (n : ℚ) ^ (1 - (n : ℤ) : ℤ))) ^ 2⌉

end

end A273780.P6689985315211804361

namespace A273780

/-- `ceil((2*n+1-n^(1-n))²)` -/
def P6689985315211804361.Spec : Prop :=
  ∀ n, P6689985315211804361.a n = A273780 n

end A273780

/-! ## A273780.P1356725715710433970

`(2*n+1)²-C(4, a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A273780.P1356725715710433970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  ((2 * n + 1) ^ 2 : ℤ) - (Nat.choose 4 (a (n - 2)).toNat : ℤ)

end

end A273780.P1356725715710433970

namespace A273780

/-- `(2*n+1)²-C(4, a(n-2))` -/
def P1356725715710433970.Spec : Prop :=
  ∀ n, P1356725715710433970.a n = A273780 n

end A273780

/-! ## A273780.P17442121220925918495

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=4, a(2)=21, a(3)=48, a(4)=81, a(5)=121, a(6)=169`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A273780

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P17442121220925918495.Spec : Prop :=
  ∀ n, P17442121220925918495.a n = A273780 n

theorem P17442121220925918495.correct : P17442121220925918495.Spec := by
  intro n
  simp only [A273780]

end A273780

/-! ## A273780.P1255526046347709892

`A042948(A267881(n))+(2*n)²`
-/

namespace A273780.P1255526046347709892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A267881 n).toNat + ((2 * n) ^ 2 : ℤ)

end

end A273780.P1255526046347709892

namespace A273780

/-- `A042948(A267881(n))+(2*n)²` -/
def P1255526046347709892.Spec : Prop :=
  ∀ n, P1255526046347709892.a n = A273780 n

end A273780

/-! ## A273780.P10712937083844680725

`A273782(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273780.P10712937083844680725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273782 (n - 1) + a (n - 1)

end

end A273780.P10712937083844680725

namespace A273780

/-- `A273782(n-1)+a(n-1)` -/
def P10712937083844680725.Spec : Prop :=
  ∀ n, P10712937083844680725.a n = A273780 n

end A273780

/-! ## A273780.P15492348843079557125

`∑[A273782(n)]+1-A273782(n)`
-/

namespace A273780.P15492348843079557125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A273782 n)

end

end A273780.P15492348843079557125

namespace A273780

/-- `∑[A273782(n)]+1-A273782(n)` -/
def P15492348843079557125.Spec : Prop :=
  ∀ n, P15492348843079557125.a n = A273780 n

end A273780

/-! ## A273780.P16580881005596038745

`A273766(n)+4*char[2]`
-/

namespace A273780.P16580881005596038745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273766 n + ((4 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A273780.P16580881005596038745

namespace A273780

/-- `A273766(n)+4*char[2]` -/
def P16580881005596038745.Spec : Prop :=
  ∀ n, P16580881005596038745.a n = A273780 n

end A273780

/-! ## A273780.P6110180599847787473

`or(and(4, A273769(n)), A273766(n))`
-/

namespace A273780.P6110180599847787473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land 4 (A273769 n)) (A273766 n)

end

end A273780.P6110180599847787473

namespace A273780

/-- `or(and(4, A273769(n)), A273766(n))` -/
def P6110180599847787473.Spec : Prop :=
  ∀ n, P6110180599847787473.a n = A273780 n

end A273780

/-! ## A273780.P5314508212557657483

`round(sqrt(A273766(n)*A273789(n)))`
-/

namespace A273780.P5314508212557657483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A273766 n * A273789 n : ℝ))

end

end A273780.P5314508212557657483

namespace A273780

/-- `round(sqrt(A273766(n)*A273789(n)))` -/
def P5314508212557657483.Spec : Prop :=
  ∀ n, P5314508212557657483.a n = A273780 n

end A273780

/-! ## A273780.P10110784271572718765

`or(A198954(A151800(n)), A273766(n))`
-/

namespace A273780.P10110784271572718765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A198954 (A151800 n).toNat) (A273766 n)

end

end A273780.P10110784271572718765

namespace A273780

/-- `or(A198954(A151800(n)), A273766(n))` -/
def P10110784271572718765.Spec : Prop :=
  ∀ n, P10110784271572718765.a n = A273780 n

end A273780

/-! ## A273780.P4953379600258429423

`Δ[A273781(n)]-A273782(n)`
-/

namespace A273780.P4953379600258429423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273782 n

end

end A273780.P4953379600258429423

namespace A273780

/-- `Δ[A273781(n)]-A273782(n)` -/
def P4953379600258429423.Spec : Prop :=
  ∀ n, P4953379600258429423.a n = A273780 n

end A273780

/-! ## A273780.P14888806177481613101

`A273781(n+1)-(A273782(n)+A273781(n))`
-/

namespace A273780.P14888806177481613101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273781 (n + 1) - (A273782 n + A273781 n)

end

end A273780.P14888806177481613101

namespace A273780

/-- `A273781(n+1)-(A273782(n)+A273781(n))` -/
def P14888806177481613101.Spec : Prop :=
  ∀ n, P14888806177481613101.a n = A273780 n

end A273780

/-! ## A273780.P11999907878441641820

`or(A273766(n)%A054719(n), A273766(n))`
-/

namespace A273780.P11999907878441641820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.tmod (A273766 n) (A054719 n)) (A273766 n)

end

end A273780.P11999907878441641820

namespace A273780

/-- `or(A273766(n)%A054719(n), A273766(n))` -/
def P11999907878441641820.Spec : Prop :=
  ∀ n, P11999907878441641820.a n = A273780 n

end A273780

/-!
# A273781: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 929", based on the 5-celled von Neumann neighborhood.

The programs for A273781, the canonical program `A273781.P4673127969196941916` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273781 has offset 0).

The definition of A273781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2806 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273781.P8871029299454510474

`∑[ceil((2*n+1-n^(1-n))²)]`
-/

namespace A273781.P8871029299454510474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n : ℚ) + (1 - (n : ℚ) ^ (1 - (n : ℤ) : ℤ))) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273781.P8871029299454510474

namespace A273781

/-- `∑[ceil((2*n+1-n^(1-n))²)]` -/
def P8871029299454510474.Spec : Prop :=
  ∀ n, P8871029299454510474.a n = A273781 n

end A273781

/-! ## A273781.P4673127969196941916

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=26, a(3)=74, a(4)=155, a(5)=276, a(6)=445`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A273781

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P4673127969196941916.Spec : Prop :=
  ∀ n, P4673127969196941916.a n = A273781 n

theorem P4673127969196941916.correct : P4673127969196941916.Spec := by
  intro n
  simp only [A273781]

end A273781

/-! ## A273781.P3453625217759835370

`A273780(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A273781.P3453625217759835370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273780 n + a (A023443 n).toNat

end

end A273781.P3453625217759835370

namespace A273781

/-- `A273780(n)+a(A023443(n))` -/
def P3453625217759835370.Spec : Prop :=
  ∀ n, P3453625217759835370.a n = A273781 n

end A273781

/-! ## A273781.P3148374148715630159

`∑[A273780(n)]%A020472(n+1)`
-/

namespace A273781.P3148374148715630159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A020472 (n + 1))

end

end A273781.P3148374148715630159

namespace A273781

/-- `∑[A273780(n)]%A020472(n+1)` -/
def P3148374148715630159.Spec : Prop :=
  ∀ n, P3148374148715630159.a n = A273781 n

end A273781

/-! ## A273781.P14371190109134088046

`a(n-1)+A273780(n)+A000007(n)` with `a(0)=1`
-/

namespace A273781.P14371190109134088046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273780 n + A000007 n)

end

end A273781.P14371190109134088046

namespace A273781

/-- `a(n-1)+A273780(n)+A000007(n)` -/
def P14371190109134088046.Spec : Prop :=
  ∀ n, P14371190109134088046.a n = A273781 n

end A273781

/-! ## A273781.P1316319891300109413

`a(n-1)+A273780(n)+A000038(n)` with `a(0)=1`
-/

namespace A273781.P1316319891300109413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273780 n + A000038 n)

end

end A273781.P1316319891300109413

namespace A273781

/-- `a(n-1)+A273780(n)+A000038(n)` -/
def P1316319891300109413.Spec : Prop :=
  ∀ n, P1316319891300109413.a n = A273781 n

end A273781

/-! ## A273781.P931205610826909414

`A273768(n)+4%A008071(n)`
-/

namespace A273781.P931205610826909414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273768 n + Int.tmod 4 (A008071 n)

end

end A273781.P931205610826909414

namespace A273781

/-- `A273768(n)+4%A008071(n)` -/
def P931205610826909414.Spec : Prop :=
  ∀ n, P931205610826909414.a n = A273781 n

end A273781

/-!
# A273782: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 929", based on the 5-celled von Neumann neighborhood.

The programs for A273782, the canonical program `A273782.P5897221375756528620` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273782 has offset 0).

The definition of A273782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2829 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273782.P5897221375756528620

`2*a(n-1)-a(n-2)` with `a(0)=3, a(1)=17, a(2)=27, a(3)=33, a(4)=40, a(5)=48`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A273782

/-- `2*a(n-1)-a(n-2)` -/
def P5897221375756528620.Spec : Prop :=
  ∀ n, P5897221375756528620.a n = A273782 n

theorem P5897221375756528620.correct : P5897221375756528620.Spec := by
  intro n
  simp only [A273782]

end A273782

/-!
# A273786: Numbers n where a prime p < n exists such that n^(p-1) == 1 (mod p^2), i.e., such that p is a base-n Wieferich prime.

The programs for A273786, there is no canonical definition to state claims against.
-/

/-! ## A273786.P6686901695296724077

`lt[1, A255920(n+2)+1]+2`
-/

namespace A273786.P6686901695296724077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255920 (n + 2) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A273786.P6686901695296724077

/-! ## A273786.P18127274571875968476

`eq[2, A032302(a(A255920(n)))]` with `a(0)=0, a(1)=1`
-/

namespace A273786.P18127274571875968476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  A032302 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273786.P18127274571875968476

/-! ## A273786.P15145553906205352853

`eq[2, A130855(a(A255920(n)))]` with `a(0)=4, a(1)=1`
-/

namespace A273786.P15145553906205352853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f2 =>
  A130855 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273786.P15145553906205352853

/-! ## A273786.P7431119301813561332

`eq[2, A000005(a(A255920(n)))]` with `a(0)=4, a(1)=3`
-/

namespace A273786.P7431119301813561332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, 3] fun n f2 =>
  A000005 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273786.P7431119301813561332

/-! ## A273786.P1253331118026407529

`eq[2, A027386(a(A255920(n)))]` with `a(0)=60, a(1)=1`
-/

namespace A273786.P1253331118026407529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [60, 1] fun n f2 =>
  A027386 (f2 (A255920 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273786.P1253331118026407529

/-! ## A273786.P17674601638545641955

`eq[2, A164874(a(A255920(n)))%3]` with `a(0)=5, a(1)=1`
-/

namespace A273786.P17674601638545641955
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5, 1] fun n f2 =>
  Int.tmod (A164874 (f2 (A255920 n).toNat).toNat) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A273786.P17674601638545641955

/-!
# A273787: Least number k such that A001844(k) (sums of two consecutive squares) is the sum of two nonzero squares in exactly n ways.

The programs for A273787, there is no canonical definition to state claims against.
-/

/-! ## A273787.P3917394856312540040

`eq[A222211(n), A281113(n+2)]`
-/

namespace A273787.P3917394856312540040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281113 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273787.P3917394856312540040

/-!
# A273788: Least number k such that k^2 + k^3 is of the form x^2 + y^3 in exactly n ways where x, y > 0.

The programs for A273788, there is no canonical definition to state claims against.
-/

/-! ## A273788.P16605832926293811468

`A006553(n+1)*A330861(A147875(n))`
-/

namespace A273788.P16605832926293811468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006553 (n + 1) * A330861 (A147875 n).toNat

end

end A273788.P16605832926293811468

/-!
# A273789: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 931", based on the 5-celled von Neumann neighborhood.

The programs for A273789, the canonical program `A273789.P509698355534767395` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273789 has offset 0).

The definition of A273789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2906 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273789.P5660244751847754676

`or(1, (char[1]-Δ[n²])²)`
-/

namespace A273789.P5660244751847754676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))) ^ 2)

end

end A273789.P5660244751847754676

namespace A273789

/-- `or(1, (char[1]-Δ[n²])²)` -/
def P5660244751847754676.Spec : Prop :=
  ∀ n, P5660244751847754676.a n = A273789 n

end A273789

/-! ## A273789.P1994327631178391217

`(2*n+1)²-4*char[1]`
-/

namespace A273789.P1994327631178391217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - ((4 * (if ∃ j, f1 j = n then 1 else 0) : ℕ) : ℤ)

end

end A273789.P1994327631178391217

namespace A273789

/-- `(2*n+1)²-4*char[1]` -/
def P1994327631178391217.Spec : Prop :=
  ∀ n, P1994327631178391217.a n = A273789 n

end A273789

/-! ## A273789.P6678520330802196660

`(ceil(sqrt(a(n-2)))+4)²` with `a(0)=1, a(1)=5`
-/

namespace A273789.P6678520330802196660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n a =>
  (⌈Real.sqrt (a (n - 2) : ℝ)⌉ + 4) ^ 2

end

end A273789.P6678520330802196660

namespace A273789

/-- `(ceil(sqrt(a(n-2)))+4)²` -/
def P6678520330802196660.Spec : Prop :=
  ∀ n, P6678520330802196660.a n = A273789 n

end A273789

/-! ## A273789.P509698355534767395

`ceil((2*n+1)²/C(2, n)!)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A273789

/-- `ceil((2*n+1)²/C(2, n)!)` -/
def P509698355534767395.Spec : Prop :=
  ∀ n, P509698355534767395.a n = A273789 n

theorem P509698355534767395.correct : P509698355534767395.Spec := by
  intro n
  simp only [A273789]

end A273789

/-! ## A273789.P13365906768087640149

`round((2*n+1)²/C(2, n)!)`
-/

namespace A273789.P13365906768087640149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n + 1) ^ 2 : ℚ) / (Nat.factorial (Nat.choose 2 n) : ℚ))

end

end A273789.P13365906768087640149

namespace A273789

/-- `round((2*n+1)²/C(2, n)!)` -/
def P13365906768087640149.Spec : Prop :=
  ∀ n, P13365906768087640149.a n = A273789 n

end A273789

/-! ## A273789.P6314181789241207193

`(n*2%a(n-1)+1)²` with `a(0)=1, a(1)=5`
-/

namespace A273789.P6314181789241207193
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  (n * (2 % a (n - 1)) + 1) ^ 2

end

end A273789.P6314181789241207193

namespace A273789

/-- `(n*2%a(n-1)+1)²` -/
def P6314181789241207193.Spec : Prop :=
  ∀ n, (P6314181789241207193.a n : ℤ) = A273789 n

end A273789

/-! ## A273789.P2500695860435944241

`(gcd(2, a(n-1))+2*n)²` with `a(0)=1, a(1)=5`
-/

namespace A273789.P2500695860435944241
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  (Nat.gcd 2 (a (n - 1)) + 2 * n) ^ 2

end

end A273789.P2500695860435944241

namespace A273789

/-- `(gcd(2, a(n-1))+2*n)²` -/
def P2500695860435944241.Spec : Prop :=
  ∀ n, (P2500695860435944241.a n : ℤ) = A273789 n

end A273789

/-! ## A273789.P13672999947261187611

`(and(1, a(n-1))+2*n)²` with `a(0)=1, a(1)=5`
-/

namespace A273789.P13672999947261187611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  (Nat.land 1 (a (n - 1)) + 2 * n) ^ 2

end

end A273789.P13672999947261187611

namespace A273789

/-- `(and(1, a(n-1))+2*n)²` -/
def P13672999947261187611.Spec : Prop :=
  ∀ n, (P13672999947261187611.a n : ℤ) = A273789 n

end A273789

/-! ## A273789.P8026040394724522794

`(val(a(n-1), 2)+2*n+1)²` with `a(0)=1, a(1)=5`
-/

namespace A273789.P8026040394724522794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  (SequenceMachineLib.valuation (a (n - 1)) 2 + (2 * n + 1)) ^ 2

end

end A273789.P8026040394724522794

namespace A273789

/-- `(val(a(n-1), 2)+2*n+1)²` -/
def P8026040394724522794.Spec : Prop :=
  ∀ n, (P8026040394724522794.a n : ℤ) = A273789 n

end A273789

/-! ## A273789.P10829002973790916209

`(2*n+1)^and(2, -a(n-1))` with `a(0)=1, a(1)=5`
-/

namespace A273789.P10829002973790916209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 5] fun n a =>
  (2 * n + 1 : ℚ) ^ (Int.land 2 (SequenceMachineLib.roundAway (-a (n - 1))) : ℤ)

end

end A273789.P10829002973790916209

namespace A273789

/-- `(2*n+1)^and(2, -a(n-1))` -/
def P10829002973790916209.Spec : Prop :=
  ∀ n, P10829002973790916209.a n = (A273789 n : ℚ)

end A273789

/-! ## A273789.P1930855405259086616

`((n+1+n)%(a(n-1)+2))²` with `a(0)=1, a(1)=5`
-/

namespace A273789.P1930855405259086616
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  ((n + 1 + n) % (a (n - 1) + 2)) ^ 2

end

end A273789.P1930855405259086616

namespace A273789

/-- `((n+1+n)%(a(n-1)+2))²` -/
def P1930855405259086616.Spec : Prop :=
  ∀ n, (P1930855405259086616.a n : ℤ) = A273789 n

end A273789

/-! ## A273789.P17022574736821204949

`Δ[abs(C(2*n+1, 3)-(n+2))+1+n]`
-/

namespace A273789.P17022574736821204949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (2 * n + 1) 3 : ℤ) - (n + 2 : ℤ)| + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273789.P17022574736821204949

namespace A273789

/-- `Δ[abs(C(2*n+1, 3)-(n+2))+1+n]` -/
def P17022574736821204949.Spec : Prop :=
  ∀ n, P17022574736821204949.a n = A273789 n

end A273789

/-! ## A273789.P4931402178916089630

`A271391(A130773(n))`
-/

namespace A273789.P4931402178916089630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271391 (A130773 n).toNat

end

end A273789.P4931402178916089630

namespace A273789

/-- `A271391(A130773(n))` -/
def P4931402178916089630.Spec : Prop :=
  ∀ n, P4931402178916089630.a n = A273789 n

end A273789

/-! ## A273789.P5996824973656693662

`A392334(A223134(n))`
-/

namespace A273789.P5996824973656693662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392334 (A223134 n).toNat

end

end A273789.P5996824973656693662

namespace A273789

/-- `A392334(A223134(n))` -/
def P5996824973656693662.Spec : Prop :=
  ∀ n, P5996824973656693662.a n = A273789 n

end A273789

/-! ## A273789.P13529111160238149409

`A110349(A140139(n+1))`
-/

namespace A273789.P13529111160238149409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110349 (A140139 (n + 1)).toNat

end

end A273789.P13529111160238149409

namespace A273789

/-- `A110349(A140139(n+1))` -/
def P13529111160238149409.Spec : Prop :=
  ∀ n, P13529111160238149409.a n = A273789 n

end A273789

/-! ## A273789.P931046651459496487

`A110349(A163985(n+1))`
-/

namespace A273789.P931046651459496487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110349 (A163985 (n + 1)).toNat

end

end A273789.P931046651459496487

namespace A273789

/-- `A110349(A163985(n+1))` -/
def P931046651459496487.Spec : Prop :=
  ∀ n, P931046651459496487.a n = A273789 n

end A273789

/-! ## A273789.P9731313226040684481

`A280321(n)%A116294(n+1)`
-/

namespace A273789.P9731313226040684481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A280321 n) (A116294 (n + 1))

end

end A273789.P9731313226040684481

namespace A273789

/-- `A280321(n)%A116294(n+1)` -/
def P9731313226040684481.Spec : Prop :=
  ∀ n, P9731313226040684481.a n = A273789 n

end A273789

/-! ## A273789.P2752039122135170550

`(A016754(n)+A267872(n)²)/2`
-/

namespace A273789.P2752039122135170550
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016754 n + A267872 n ^ 2 : ℚ) / 2

end

end A273789.P2752039122135170550

namespace A273789

/-- `(A016754(n)+A267872(n)²)/2` -/
def P2752039122135170550.Spec : Prop :=
  ∀ n, P2752039122135170550.a n = (A273789 n : ℚ)

end A273789

/-! ## A273789.P4324445626180116954

`A137224(A217585(n+1))`
-/

namespace A273789.P4324445626180116954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137224 (A217585 (n + 1)).toNat

end

end A273789.P4324445626180116954

namespace A273789

/-- `A137224(A217585(n+1))` -/
def P4324445626180116954.Spec : Prop :=
  ∀ n, P4324445626180116954.a n = A273789 n

end A273789

/-! ## A273789.P10456468261656777813

`A087278(A308196(n))`
-/

namespace A273789.P10456468261656777813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087278 (A308196 n).toNat

end

end A273789.P10456468261656777813

namespace A273789

/-- `A087278(A308196(n))` -/
def P10456468261656777813.Spec : Prop :=
  ∀ n, P10456468261656777813.a n = A273789 n

end A273789

/-!
# A273790: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 931", based on the 5-celled von Neumann neighborhood.

The programs for A273790, the canonical program `A273790.P6165136700191902824` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273790 has offset 0).

The definition of A273790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2828 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273790.P15665748456741108016

`record[(C(n, 3)-4)^and(1, n)]`
-/

namespace A273790.P15665748456741108016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose n 3 : ℤ) - 4) ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273790.P15665748456741108016

namespace A273790

/-- `record[(C(n, 3)-4)^and(1, n)]` -/
def P15665748456741108016.Spec : Prop :=
  ∀ n, P15665748456741108016.a n = A273790 n

end A273790

/-! ## A273790.P6165136700191902824

`abs(3-∑[Δ[n²]²])-1`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A273790

/-- `abs(3-∑[Δ[n²]²])-1` -/
def P6165136700191902824.Spec : Prop :=
  ∀ n, P6165136700191902824.a n = A273790 n

theorem P6165136700191902824.correct : P6165136700191902824.Spec := by
  intro n
  simp only [A273790]

end A273790

/-! ## A273790.P4389675672681031448

`∑[or(1, (char[1]-(2*n+1))²)]`
-/

namespace A273790.P4389675672681031448
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ((((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - (2 * n + 1 : ℤ)) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273790.P4389675672681031448

namespace A273790

/-- `∑[or(1, (char[1]-(2*n+1))²)]` -/
def P4389675672681031448.Spec : Prop :=
  ∀ n, P4389675672681031448.a n = A273790 n

end A273790

/-! ## A273790.P13243084012230184880

`∑[(ceil(sqrt(a(n-2)))+4)²]` with `a(0)=1, a(1)=5`
-/

namespace A273790.P13243084012230184880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  (⌈Real.sqrt (f1 (n - 2) : ℝ)⌉ + 4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273790.P13243084012230184880

namespace A273790

/-- `∑[(ceil(sqrt(a(n-2)))+4)²]` -/
def P13243084012230184880.Spec : Prop :=
  ∀ n, P13243084012230184880.a n = A273790 n

end A273790

/-! ## A273790.P13539783242900782556

`abs(1-abs(C(2*n+3, 3)-3))`
-/

namespace A273790.P13539783242900782556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - |(Nat.choose (2 * n + 3) 3 : ℤ) - 3|)|

end

end A273790.P13539783242900782556

namespace A273790

/-- `abs(1-abs(C(2*n+3, 3)-3))` -/
def P13539783242900782556.Spec : Prop :=
  ∀ n, P13539783242900782556.a n = A273790 n

end A273790

/-! ## A273790.P11334624885385740855

`∑[ceil((2*n+1)²/C(2, n)!)]`
-/

namespace A273790.P11334624885385740855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n + 1) ^ 2 : ℚ) / (Nat.factorial (Nat.choose 2 n) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273790.P11334624885385740855

namespace A273790

/-- `∑[ceil((2*n+1)²/C(2, n)!)]` -/
def P11334624885385740855.Spec : Prop :=
  ∀ n, P11334624885385740855.a n = A273790 n

end A273790

/-! ## A273790.P5524993594967659149

`∑[(2*n+1)²-C(2, a(n-1))²]` with `a(0)=1`
-/

namespace A273790.P5524993594967659149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((2 * n + 1) ^ 2 : ℤ) - (Nat.choose 2 (f1 (n - 1)).toNat ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273790.P5524993594967659149

namespace A273790

/-- `∑[(2*n+1)²-C(2, a(n-1))²]` -/
def P5524993594967659149.Spec : Prop :=
  ∀ n, P5524993594967659149.a n = A273790 n

end A273790

/-! ## A273790.P12372330657796253730

`∑[(2*n+1)²-C(gcd(n+3, n-1), n+2)]`
-/

namespace A273790.P12372330657796253730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - (Nat.choose (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1)) (n + 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273790.P12372330657796253730

namespace A273790

/-- `∑[(2*n+1)²-C(gcd(n+3, n-1), n+2)]` -/
def P12372330657796253730.Spec : Prop :=
  ∀ n, P12372330657796253730.a n = A273790 n

end A273790

/-! ## A273790.P11772257411990054563

`∑[A273789(n)]`
-/

namespace A273790.P11772257411990054563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273790.P11772257411990054563

namespace A273790

/-- `∑[A273789(n)]` -/
def P11772257411990054563.Spec : Prop :=
  ∀ n, P11772257411990054563.a n = A273790 n

end A273790

/-! ## A273790.P12626834505011811463

`abs(abs(3-A000292(Δ[n²]))-1)`
-/

namespace A273790.P12626834505011811463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|3 - A000292 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat| - 1)|

end

end A273790.P12626834505011811463

namespace A273790

/-- `abs(abs(3-A000292(Δ[n²]))-1)` -/
def P12626834505011811463.Spec : Prop :=
  ∀ n, P12626834505011811463.a n = A273790 n

end A273790

/-! ## A273790.P17217457420370502658

`∑[(2*n+1)²-C(n+3, A000032(n)²)]`
-/

namespace A273790.P17217457420370502658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) ^ 2 : ℤ) - (Nat.choose (n + 3) (A000032 n ^ 2).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273790.P17217457420370502658

namespace A273790

/-- `∑[(2*n+1)²-C(n+3, A000032(n)²)]` -/
def P17217457420370502658.Spec : Prop :=
  ∀ n, P17217457420370502658.a n = A273790 n

end A273790

/-!
# A273791: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 931", based on the 5-celled von Neumann neighborhood.

The programs for A273791, the canonical program `A273791.P14165526035324939559` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273791 has offset 0).

The definition of A273791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273791.P14165526035324939559

`a(n-1)+8` with `a(0)=4, a(1)=20, a(2)=24`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A273791

/-- `a(n-1)+8` -/
def P14165526035324939559.Spec : Prop :=
  ∀ n, (P14165526035324939559.a n : ℤ) = A273791 n

theorem P14165526035324939559.correct : P14165526035324939559.Spec := by
  intro n
  simp only [A273791]

end A273791

/-!
# A273792: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 934", based on the 5-celled von Neumann neighborhood.

The programs for A273792, there is no canonical definition to state claims against.
-/

/-! ## A273792.P11204925747538175906

`∑[A273795(abs(1-n))]+1`
-/

namespace A273792.P11204925747538175906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273795 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A273792.P11204925747538175906

/-! ## A273792.P13831230855752665180

`A273795(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A273792.P13831230855752665180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273795 (n - 1) + a (n - 1)

end

end A273792.P13831230855752665180

/-! ## A273792.P10715537526294514202

`n-(A023443(n)-∑[A273795(abs(1-n))])`
-/

namespace A273792.P10715537526294514202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273795 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273792.P10715537526294514202

/-! ## A273792.P2750943567498147270

`Δ[A273794(n)]-A273795(n)`
-/

namespace A273792.P2750943567498147270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273795 n

end

end A273792.P2750943567498147270

/-! ## A273792.P1967111206971262656

`A273794(n+1)-(A273795(n)+A273794(n))`
-/

namespace A273792.P1967111206971262656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273794 (n + 1) - (A273795 n + A273794 n)

end

end A273792.P1967111206971262656

/-! ## A273792.P17546612061543421147

`A005408(∑[A273795(abs(1-n))]/2)`
-/

namespace A273792.P17546612061543421147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273795 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2)).toNat

end

end A273792.P17546612061543421147

/-! ## A273792.P6626355359674181236

`A004442(∑[A273795(abs(1-n))])`
-/

namespace A273792.P6626355359674181236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273795 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A273792.P6626355359674181236

/-! ## A273792.P12207317130423964029

`1-A001489(∑[A273795(abs(1-n))])`
-/

namespace A273792.P12207317130423964029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273795 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A273792.P12207317130423964029

/-! ## A273792.P68543615633593166

`A004442(∑[A273795(n)]-A273795(n))`
-/

namespace A273792.P68543615633593166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273795 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (∑ j ∈ Finset.range (n + 1), f1 j - A273795 n).toNat

end

end A273792.P68543615633593166

/-!
# A273793: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 934", based on the 5-celled von Neumann neighborhood.

The programs for A273793, there is no canonical definition to state claims against.
-/

/-! ## A273793.P5330763843386677274

`A273792(2^n-1)`
-/

namespace A273793.P5330763843386677274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273792 (2 ^ n - 1)

end

end A273793.P5330763843386677274

/-! ## A273793.P12920315137241050143

`record[A273792(A342639(n))]`
-/

namespace A273793.P12920315137241050143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273792 (A342639 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273793.P12920315137241050143

/-! ## A273793.P1154568365527271092

`or(1, A273792(A000225(n)))`
-/

namespace A273793.P1154568365527271092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A273792 (A000225 n).toNat)

end

end A273793.P1154568365527271092

/-! ## A273793.P18131825869326591733

`record[A273792(Δ[A228693(n)])]`
-/

namespace A273793.P18131825869326591733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228693 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273792 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273793.P18131825869326591733

/-! ## A273793.P3552889322338882800

`record[A273792(A243071(n+1))]`
-/

namespace A273793.P3552889322338882800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273792 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273793.P3552889322338882800

/-!
# A273794: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 934", based on the 5-celled von Neumann neighborhood.

The programs for A273794, there is no canonical definition to state claims against.
-/

/-! ## A273794.P7189601005401685341

`∑[A273792(n)]`
-/

namespace A273794.P7189601005401685341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273794.P7189601005401685341

/-! ## A273794.P1963120757995270038

`∑[∑[A273795(abs(1-n))]+1]`
-/

namespace A273794.P1963120757995270038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273795 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273794.P1963120757995270038

/-! ## A273794.P7295571238160057291

`A273792(root(n, 2)²)+a(n-1)` with `a(0)=1`
-/

namespace A273794.P7295571238160057291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A273792 (SequenceMachineLib.roundAway (((n : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat + a (n - 1)

end

end A273794.P7295571238160057291

/-! ## A273794.P12634975469010718894

`a(n-1)+A057427(n)*A273792(n)` with `a(0)=1`
-/

namespace A273794.P12634975469010718894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A273792 n

end

end A273794.P12634975469010718894

/-! ## A273794.P7438998051730615748

`a(n-1)+or(A000035(n), A273792(n))` with `a(0)=1`
-/

namespace A273794.P7438998051730615748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.lor (A000035 n) (A273792 n)

end

end A273794.P7438998051730615748

/-! ## A273794.P16818250942385857325

`a(n-1)+A273792(n)+A065333(A145485(n+1))` with `a(0)=1`
-/

namespace A273794.P16818250942385857325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A273792 n + A065333 (A145485 (n + 1)).toNat)

end

end A273794.P16818250942385857325

/-!
# A273795: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 934", based on the 5-celled von Neumann neighborhood.

The programs for A273795, there is no canonical definition to state claims against.
-/

/-! ## A273795.P989426923677493685

`Δ[A273792(n)]`
-/

namespace A273795.P989426923677493685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273795.P989426923677493685

/-! ## A273795.P11066537785430670802

`A273792(n+1)-A273792(n)`
-/

namespace A273795.P11066537785430670802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273792 (n + 1) - A273792 n

end

end A273795.P11066537785430670802

/-! ## A273795.P3635825157676783591

`A273792(n+1)+A024000(A273792(n)+1)`
-/

namespace A273795.P3635825157676783591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273792 (n + 1) + A024000 (A273792 n + 1).toNat

end

end A273795.P3635825157676783591

/-!
# A273797: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 942", based on the 5-celled von Neumann neighborhood.

The programs for A273797, there is no canonical definition to state claims against.
-/

/-! ## A273797.P15687307932231615929

`∑[∑[A264769(n)+Δ[A147562(n)]]]`
-/

namespace A273797.P15687307932231615929
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264769 n + (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273797.P15687307932231615929

/-! ## A273797.P1295873433207101352

`∑[A147562(n+1)+∑[A264769(n)]]`
-/

namespace A273797.P1295873433207101352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264769 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147562 (n + 1) + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273797.P1295873433207101352

/-! ## A273797.P11660999777915365808

`∑[∑[A264769(n)+A147582(n+1)]]`
-/

namespace A273797.P11660999777915365808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264769 n + A147582 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273797.P11660999777915365808

/-! ## A273797.P15853055146688465555

`∑[A264768(n)+A147562(n+1)]`
-/

namespace A273797.P15853055146688465555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264768 n + A147562 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273797.P15853055146688465555

/-! ## A273797.P4077434832980670181

`∑[A264768(n)+A151920(2*n)]`
-/

namespace A273797.P4077434832980670181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264768 n + A151920 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273797.P4077434832980670181

/-! ## A273797.P4786608971471787700

`∑[A264768(n)+∑[A147582(n+1)]]`
-/

namespace A273797.P4786608971471787700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147582 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264768 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273797.P4786608971471787700

/-!
# A273798: Numbers of the form 2^m*p where p is prime and p < 2^m.

The programs for A273798, the canonical program `A273798.P614925005457213150` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273798 has offset 1).

The definition of A273798 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 156 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273798.P7183937801816606570

`filter[A122145(n+2), A340371(#)]`
-/

namespace A273798.P7183937801816606570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122145 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A273798.P7183937801816606570

namespace A273798

/-- `filter[A122145(n+2), A340371(#)]` -/
def P7183937801816606570.Spec : Prop :=
  ∀ n, P7183937801816606570.a n = A273798 (n + 1)

end A273798

/-! ## A273798.P2641120843447503282

`filter[A328014(n+2), A340371(#)]`
-/

namespace A273798.P2641120843447503282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328014 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A273798.P2641120843447503282

namespace A273798

/-- `filter[A328014(n+2), A340371(#)]` -/
def P2641120843447503282.Spec : Prop :=
  ∀ n, P2641120843447503282.a n = A273798 (n + 1)

end A273798

/-! ## A273798.P773160099082421877

`filter[A363122(n+3), A340371(#)]`
-/

namespace A273798.P773160099082421877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363122 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A273798.P773160099082421877

namespace A273798

/-- `filter[A363122(n+3), A340371(#)]` -/
def P773160099082421877.Spec : Prop :=
  ∀ n, P773160099082421877.a n = A273798 (n + 1)

end A273798

/-! ## A273798.P8286525352842152443

`filter[A047836(n+3), A340371(#)]`
-/

namespace A273798.P8286525352842152443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047836 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A273798.P8286525352842152443

namespace A273798

/-- `filter[A047836(n+3), A340371(#)]` -/
def P8286525352842152443.Spec : Prop :=
  ∀ n, P8286525352842152443.a n = A273798 (n + 1)

end A273798

/-! ## A273798.P614925005457213150

`filter[A063539(n+2), A340371(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A273798

/-- `filter[A063539(n+2), A340371(#)]` -/
def P614925005457213150.Spec : Prop :=
  ∀ n, P614925005457213150.a n = A273798 (n + 1)

theorem P614925005457213150.correct : P614925005457213150.Spec := by
  intro n
  simp only [A273798, Nat.add_sub_cancel]

end A273798

/-! ## A273798.P10403481674571307506

`filter[A048098(n+3), A340371(#)]`
-/

namespace A273798.P10403481674571307506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A273798.P10403481674571307506

namespace A273798

/-- `filter[A048098(n+3), A340371(#)]` -/
def P10403481674571307506.Spec : Prop :=
  ∀ n, P10403481674571307506.a n = A273798 (n + 1)

end A273798

/-! ## A273798.P2642200041362012243

`eq[A001227(n+1), A333806(n+1)]+1`
-/

namespace A273798.P2642200041362012243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333806 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A273798.P2642200041362012243

namespace A273798

/-- `eq[A001227(n+1), A333806(n+1)]+1` -/
def P2642200041362012243.Spec : Prop :=
  ∀ n, (P2642200041362012243.a n : ℤ) = A273798 (n + 1)

end A273798

/-! ## A273798.P16662140614798787313

`A061767(eq[A001227(n+1), A333806(n+1)])`
-/

namespace A273798.P16662140614798787313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061767 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A273798.P16662140614798787313

namespace A273798

/-- `A061767(eq[A001227(n+1), A333806(n+1)])` -/
def P16662140614798787313.Spec : Prop :=
  ∀ n, P16662140614798787313.a n = A273798 (n + 1)

end A273798

/-! ## A273798.P7245819666634961289

`eq[A283465((n+1)/2^val(n+1, 2)), A333806(n+1)]+1`
-/

namespace A273798.P7245819666634961289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283465 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333806 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A273798.P7245819666634961289

namespace A273798

/-- `eq[A283465((n+1)/2^val(n+1, 2)), A333806(n+1)]+1` -/
def P7245819666634961289.Spec : Prop :=
  ∀ n, (P7245819666634961289.a n : ℤ) = A273798 (n + 1)

end A273798

