import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A153903: Number of planar n X n X n binary triangular grids with mirror symmetry about one altitude with no more than 1 one in any 4 X 4 X 4 subtriangle.

The programs for A153903, there is no canonical definition to state claims against.
-/

/-! ## A153903.P13953735795086308216

`A363708(A153955(n))`
-/

namespace A153903.P13953735795086308216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363708 (A153955 n).toNat

end

end A153903.P13953735795086308216

/-! ## A153903.P14633510901437791231

`A091696(n+1)-A001222(n!)`
-/

namespace A153903.P14633510901437791231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091696 (n + 1) - A001222 (Nat.factorial n)

end

end A153903.P14633510901437791231

/-! ## A153903.P15167903266476514369

`A351870(A091696(n+1)-∑[∑{e}[n, #]])`
-/

namespace A153903.P15167903266476514369
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 (A091696 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A153903.P15167903266476514369

/-! ## A153903.P6274155824012258592

`A333766(n)+A003263(A122446(n))`
-/

namespace A153903.P6274155824012258592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333766 n + A003263 (A122446 n).toNat

end

end A153903.P6274155824012258592

/-! ## A153903.P9647488301831936353

`A303297(A101296(n+1)+A000111(n))`
-/

namespace A153903.P9647488301831936353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303297 (A101296 (n + 1) + A000111 n).toNat

end

end A153903.P9647488301831936353

/-!
# A153906: Number of planar n X n X n binary triangular grids with mirror symmetry about one altitude with no more than 1 one in any 5 X 5 X 5 subtriangle.

The programs for A153906, there is no canonical definition to state claims against.
-/

/-! ## A153906.P3572485381819381995

`Δ[A179182(a(n-1)+2)]` with `a(0)=1, a(1)=2`
-/

namespace A153906.P3572485381819381995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  A179182 (f1 (n - 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153906.P3572485381819381995

/-! ## A153906.P113163028283253636

`A086520(A153535(n)+1)`
-/

namespace A153906.P113163028283253636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A153535 n + 1).toNat

end

end A153906.P113163028283253636

/-! ## A153906.P3945757904244321040

`A303378(A164219(n)+A130938(n))`
-/

namespace A153906.P3945757904244321040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303378 (A164219 n + A130938 n).toNat

end

end A153906.P3945757904244321040

/-! ## A153906.P8606511325894978006

`A001611(n)-A063962(A000108(n))`
-/

namespace A153906.P8606511325894978006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - A063962 (A000108 n).toNat

end

end A153906.P8606511325894978006

/-!
# A153907: Number of planar n X n X n binary triangular grids symmetric both under 120 degree rotation and reflection with no more than 1 one in any 5 X 5 X 5 subtriangle.

The programs for A153907, there is no canonical definition to state claims against.
-/

/-! ## A153907.P9139005572520557896

`∑{e}[A332647(A153905(n)), #]`
-/

namespace A153907.P9139005572520557896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332647 (A153905 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A153907.P9139005572520557896

/-! ## A153907.P10842577648604416226

`A306922(record[A197782(n+1)])`
-/

namespace A153907.P10842577648604416226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306922 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A153907.P10842577648604416226

/-! ## A153907.P17752636450140964150

`A096492(A128166(n+1)+1)`
-/

namespace A153907.P17752636450140964150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096492 (A128166 (n + 1) + 1).toNat

end

end A153907.P17752636450140964150

/-! ## A153907.P4016301358038084321

`A239114(∑[∑[A239142(3*n+5)]])`
-/

namespace A153907.P4016301358038084321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239142 (3 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239114 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A153907.P4016301358038084321

/-! ## A153907.P8747714454284417883

`A066099(A382574(n)+A084749(n+1))`
-/

namespace A153907.P8747714454284417883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A382574 n + A084749 (n + 1)).toNat

end

end A153907.P8747714454284417883

/-!
# A153909: Number of planar n X n X n binary triangular grids with mirror symmetry about one altitude with no more than 2 ones in any 2 X 2 X 2 subtriangle.

The programs for A153909, there is no canonical definition to state claims against.
-/

/-! ## A153909.P14031331526151954709

`A092689(a(n-1)+n)+a(n-1)` with `a(0)=1`
-/

namespace A153909.P14031331526151954709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A092689 (a (n - 1) + (n : ℤ)).toNat + a (n - 1)

end

end A153909.P14031331526151954709

/-! ## A153909.P3974790057241605029

`A333778(A245388(n+2))`
-/

namespace A153909.P3974790057241605029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333778 (A245388 (n + 2)).toNat

end

end A153909.P3974790057241605029

/-!
# A153913: Number of planar n X n X n binary triangular grids symmetric both under 120 degree rotation and reflection with no more than 2 ones in any 3 X 3 X 3 subtriangle.

The programs for A153913, there is no canonical definition to state claims against.
-/

/-! ## A153913.P5349792166814499632

`A098282(A000293(n)*A002110(n))`
-/

namespace A153913.P5349792166814499632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098282 (A000293 n * A002110 n).toNat

end

end A153913.P5349792166814499632

/-!
# A153915: Number of planar n X n X n binary triangular grids with mirror symmetry about one altitude with no more than 2 ones in any 4 X 4 X 4 subtriangle.

The programs for A153915, there is no canonical definition to state claims against.
-/

/-! ## A153915.P11443338231175853364

`A066888(A206949(n))+A048673(n+1)`
-/

namespace A153915.P11443338231175853364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066888 (A206949 n).toNat + A048673 (n + 1)

end

end A153915.P11443338231175853364

/-!
# A153921: Number of planar n X n X n binary triangular grids with mirror symmetry about one altitude with no more than 3 ones in any 3 X 3 X 3 subtriangle.

The programs for A153921, there is no canonical definition to state claims against.
-/

/-! ## A153921.P3396836074699018786

`A117193(A022554(2*n+1)+A005316(n))`
-/

namespace A153921.P3396836074699018786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117193 (A022554 (2 * n + 1) + A005316 n).toNat

end

end A153921.P3396836074699018786

/-! ## A153921.P9326825129919105795

`A071073(a(n-1))+1` with `a(0)=1, a(1)=2`
-/

namespace A153921.P9326825129919105795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A071073 (a (n - 1)).toNat + 1

end

end A153921.P9326825129919105795

/-!
# A153922: Number of planar n X n X n binary triangular grids symmetric both under 120 degree rotation and reflection with no more than 3 ones in any 3 X 3 X 3 subtriangle.

The programs for A153922, there is no canonical definition to state claims against.
-/

/-! ## A153922.P11567747834268583427

`A193592(A000110(n))+A064173(n+1)`
-/

namespace A153922.P11567747834268583427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A000110 n).toNat + A064173 (n + 1)

end

end A153922.P11567747834268583427

/-! ## A153922.P8540382129431337242

`A193592(A287279(n))+A064173(n+1)`
-/

namespace A153922.P8540382129431337242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A287279 n).toNat + A064173 (n + 1)

end

end A153922.P8540382129431337242

/-! ## A153922.P15998691481441683695

`A071626(A132050(n+1)+A056239(n+4))`
-/

namespace A153922.P15998691481441683695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071626 (A132050 (n + 1) + A056239 (n + 4)).toNat

end

end A153922.P15998691481441683695

/-!
# A153925: Number of planar n X n X n binary triangular grids symmetric both under 120 degree rotation and reflection with no more than 3 ones in any 4 X 4 X 4 subtriangle.

The programs for A153925, there is no canonical definition to state claims against.
-/

/-! ## A153925.P7663147505034235596

`A380298(A364605(2*n+3)+A000108(n))-A297816(n+1)`
-/

namespace A153925.P7663147505034235596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380298 (A364605 (2 * n + 3) + A000108 n).toNat - A297816 (n + 1)

end

end A153925.P7663147505034235596

/-!
# A153926: Number of planar n X n X n binary triangular grids symmetric under 120 degree rotation with no more than 3 ones in any 5 X 5 X 5 subtriangle.

The programs for A153926, there is no canonical definition to state claims against.
-/

/-! ## A153926.P10508090137941529677

`A051889(∑{d}[∑[A030277(n+1)], #])`
-/

namespace A153926.P10508090137941529677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030277 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A153926.P10508090137941529677

/-! ## A153926.P9724742006908789883

`A135646(A287170(3*n+5)+A056654(n+1))`
-/

namespace A153926.P9724742006908789883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135646 (A287170 (3 * n + 5) + A056654 (n + 1)).toNat

end

end A153926.P9724742006908789883

/-!
# A153930: Number of planar n X n X n binary triangular grids with mirror symmetry about one altitude with no more than 4 ones in any 3 X 3 X 3 subtriangle.

The programs for A153930, there is no canonical definition to state claims against.
-/

/-! ## A153930.P4838041762339616194

`A114393(A114509(n))+n`
-/

namespace A153930.P4838041762339616194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114393 (A114509 n).toNat + (n : ℤ)

end

end A153930.P4838041762339616194

/-! ## A153930.P151094184244754491

`record[∑[A333773(A340600(n))]]`
-/

namespace A153930.P151094184244754491
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333773 (A340600 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153930.P151094184244754491

/-!
# A153933: Number of planar n X n X n binary triangular grids with mirror symmetry about one altitude with no more than 4 ones in any 4 X 4 X 4 subtriangle.

The programs for A153933, there is no canonical definition to state claims against.
-/

/-! ## A153933.P4870618323947144050

`A277488(A150939(n+1))`
-/

namespace A153933.P4870618323947144050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277488 (A150939 (n + 1)).toNat

end

end A153933.P4870618323947144050

/-! ## A153933.P18152330876325767141

`A065365(A002110(n))+n`
-/

namespace A153933.P18152330876325767141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065365 (A002110 n).toNat + (n : ℤ)

end

end A153933.P18152330876325767141

/-!
# A153934: Number of planar n X n X n binary triangular grids symmetric both under 120 degree rotation and reflection with no more than 4 ones in any 4 X 4 X 4 subtriangle.

The programs for A153934, there is no canonical definition to state claims against.
-/

/-! ## A153934.P16509478567460648398

`A229028(A279060(n)+A000837(n))`
-/

namespace A153934.P16509478567460648398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229028 (A279060 n + A000837 n).toNat

end

end A153934.P16509478567460648398

/-!
# A153937: Number of planar n X n X n binary triangular grids symmetric both under 120 degree rotation and reflection with no more than 4 ones in any 5 X 5 X 5 subtriangle.

The programs for A153937, there is no canonical definition to state claims against.
-/

/-! ## A153937.P14014347184384168911

`A252649(A153946(n))`
-/

namespace A153937.P14014347184384168911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252649 (A153946 n).toNat

end

end A153937.P14014347184384168911

/-!
# A153939: Number of planar n X n X n binary triangular grids with mirror symmetry about one altitude with no more than 5 ones in any 3 X 3 X 3 subtriangle.

The programs for A153939, there is no canonical definition to state claims against.
-/

/-! ## A153939.P9851138726752422957

`record[A008618(2*a(n-1)+(2^(n-1)-1)*a(n-2))]` with `a(0)=1, a(1)=0`
-/

namespace A153939.P9851138726752422957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  A008618 (SequenceMachineLib.roundAway ((2 * f1 (n - 1) : ℚ) + ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - 1) * (f1 (n - 2) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153939.P9851138726752422957

/-! ## A153939.P3128087332709356072

`A136129(A385089(n+1))`
-/

namespace A153939.P3128087332709356072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136129 (A385089 (n + 1)).toNat

end

end A153939.P3128087332709356072

/-!
# A153942: Number of planar n X n X n binary triangular grids with mirror symmetry about one altitude with no more than 5 ones in any 4 X 4 X 4 subtriangle.

The programs for A153942, there is no canonical definition to state claims against.
-/

/-! ## A153942.P4139301127228874226

`A130264(A072790(n)+1)`
-/

namespace A153942.P4139301127228874226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130264 (A072790 n + 1).toNat

end

end A153942.P4139301127228874226

/-! ## A153942.P6951701402577127873

`∏{e}[n+1, #+1]*A087052(A000110(n))`
-/

namespace A153942.P6951701402577127873
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) * A087052 (A000110 n).toNat

end

end A153942.P6951701402577127873

/-!
# A153944: Number of planar n X n X n binary triangular grids symmetric under 120 degree rotation with no more than 5 ones in any 5 X 5 X 5 subtriangle.

The programs for A153944, there is no canonical definition to state claims against.
-/

/-! ## A153944.P17891142022616484773

`A003051(A000040(n+1)+Δ[A324234(n+1)])`
-/

namespace A153944.P17891142022616484773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324234 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003051 (A000040 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A153944.P17891142022616484773

/-!
# A153945: Number of planar n X n X n binary triangular grids with mirror symmetry about one altitude with no more than 5 ones in any 5 X 5 X 5 subtriangle.

The programs for A153945, there is no canonical definition to state claims against.
-/

/-! ## A153945.P12568680924088497887

`A111338(a(n-1)+5)` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A153945.P12568680924088497887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A111338 (a (n - 1) + 5).toNat

end

end A153945.P12568680924088497887

/-! ## A153945.P7035178081101471950

`A198193(A101338(n))`
-/

namespace A153945.P7035178081101471950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198193 (A101338 n).toNat

end

end A153945.P7035178081101471950

/-!
# A153948: Number of planar n X n X n binary triangular grids with mirror symmetry about one altitude with no more than 6 ones in any 4 X 4 X 4 subtriangle.

The programs for A153948, there is no canonical definition to state claims against.
-/

/-! ## A153948.P432491845238932348

`A098968(A165433(n+1))`
-/

namespace A153948.P432491845238932348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098968 (A165433 (n + 1)).toNat

end

end A153948.P432491845238932348

/-! ## A153948.P17172965729696367429

`∑[A114536(A000108(n+2))]`
-/

namespace A153948.P17172965729696367429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114536 (A000108 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153948.P17172965729696367429

/-!
# A153951: Number of planar n X n X n binary triangular grids with mirror symmetry about one altitude with no more than 6 ones in any 5 X 5 X 5 subtriangle.

The programs for A153951, there is no canonical definition to state claims against.
-/

/-! ## A153951.P7955229264140781927

`A024417(A356270(n))`
-/

namespace A153951.P7955229264140781927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A356270 n).toNat

end

end A153951.P7955229264140781927

/-! ## A153951.P6963204971670201117

`∑[A303845(A292932(n))]`
-/

namespace A153951.P6963204971670201117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303845 (A292932 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153951.P6963204971670201117

/-!
# A153953: Number of planar n X n X n binary triangular grids symmetric under 120 degree rotation with no more than 7 ones in any 4 X 4 X 4 subtriangle.

The programs for A153953, there is no canonical definition to state claims against.
-/

/-! ## A153953.P17694211898052215420

`A342765(A000961((char[1]+n)!))`
-/

namespace A153953.P17694211898052215420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342765 (A000961 (Nat.factorial ((if ∃ j, f1 j = n then 1 else 0) + n))).toNat

end

end A153953.P17694211898052215420

/-! ## A153953.P719814237757650208

`A347625(A011782(n)-A164116(n))`
-/

namespace A153953.P719814237757650208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347625 (A011782 n - A164116 n).toNat

end

end A153953.P719814237757650208

/-! ## A153953.P7244954894437137757

`A002635(A001576(n)-A170950(n+1))`
-/

namespace A153953.P7244954894437137757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002635 (A001576 n - A170950 (n + 1)).toNat

end

end A153953.P7244954894437137757

/-!
# A153954: Number of planar n X n X n binary triangular grids with mirror symmetry about one altitude with no more than 7 ones in any 4 X 4 X 4 subtriangle.

The programs for A153954, there is no canonical definition to state claims against.
-/

/-! ## A153954.P5239669182708400185

`abs(∑[A349382(A182966(n))])`
-/

namespace A153954.P5239669182708400185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349382 (A182966 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A153954.P5239669182708400185

/-! ## A153954.P16588179785510207897

`record[A280057(∑[A056921(n)])]`
-/

namespace A153954.P16588179785510207897
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056921 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280057 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153954.P16588179785510207897

/-!
# A153957: Number of planar n X n X n binary triangular grids with mirror symmetry about one altitude with no more than 7 ones in any 5 X 5 X 5 subtriangle.

The programs for A153957, there is no canonical definition to state claims against.
-/

/-! ## A153957.P8312509068352333209

`A181831(2^n)+2^n`
-/

namespace A153957.P8312509068352333209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181831 (2 ^ n) + (2 ^ n : ℤ)

end

end A153957.P8312509068352333209

/-! ## A153957.P4446248318277128911

`A228354(A112884(n))`
-/

namespace A153957.P4446248318277128911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 (A112884 n).toNat

end

end A153957.P4446248318277128911

/-!
# A153959: Number of planar n X n X n binary triangular grids symmetric under 120 degree rotation with no more than 8 ones in any 4 X 4 X 4 subtriangle.

The programs for A153959, there is no canonical definition to state claims against.
-/

/-! ## A153959.P14878706717971915560

`A182210(or(A079120(n), A247740(n)))`
-/

namespace A153959.P14878706717971915560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182210 (Int.lor (A079120 n) (A247740 n)).toNat

end

end A153959.P14878706717971915560

/-! ## A153959.P7045766104276324799

`A000720(A099952(n+1)+A051717(n))`
-/

namespace A153959.P7045766104276324799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A099952 (n + 1) + A051717 n).toNat

end

end A153959.P7045766104276324799

/-! ## A153959.P12155152743390086914

`A274641(A373668(n)+A195993(n+1))`
-/

namespace A153959.P12155152743390086914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274641 (A373668 n + A195993 (n + 1)).toNat

end

end A153959.P12155152743390086914

/-!
# A153960: Number of planar n X n X n binary triangular grids with mirror symmetry about one altitude with no more than 8 ones in any 4 X 4 X 4 subtriangle.

The programs for A153960, there is no canonical definition to state claims against.
-/

/-! ## A153960.P15355581352578257444

`A008619(∏[A244154(n)])`
-/

namespace A153960.P15355581352578257444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A153960.P15355581352578257444

/-! ## A153960.P17879229807250289063

`A133622(∏[A244154(n)])`
-/

namespace A153960.P17879229807250289063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244154 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133622 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A153960.P17879229807250289063

/-!
# A153963: Number of planar n X n X n binary triangular grids with mirror symmetry about one altitude with no more than 8 ones in any 5 X 5 X 5 subtriangle.

The programs for A153963, there is no canonical definition to state claims against.
-/

/-! ## A153963.P14353832739776207833

`∑[A126207(A086348(n))]`
-/

namespace A153963.P14353832739776207833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126207 (A086348 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153963.P14353832739776207833

/-! ## A153963.P4168362222014637707

`A227759(A015892(n+1))`
-/

namespace A153963.P4168362222014637707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227759 (A015892 (n + 1)).toNat

end

end A153963.P4168362222014637707

/-!
# A153965: Number of planar n X n X n binary triangular grids symmetric under 120 degree rotation with no more than 9 ones in any 4 X 4 X 4 subtriangle.

The programs for A153965, there is no canonical definition to state claims against.
-/

/-! ## A153965.P3064434386733506147

`A002487(n)+A002487(A036733(n))`
-/

namespace A153965.P3064434386733506147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 n + A002487 (A036733 n).toNat

end

end A153965.P3064434386733506147

/-! ## A153965.P5014807075068309678

`A240769(A000262(n))+A006257(n)`
-/

namespace A153965.P5014807075068309678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240769 (A000262 n).toNat + A006257 n

end

end A153965.P5014807075068309678

/-! ## A153965.P14767067209726525842

`A087061(A258498(n)+A191791(2*n))`
-/

namespace A153965.P14767067209726525842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 (A258498 n + A191791 (2 * n)).toNat

end

end A153965.P14767067209726525842

/-!
# A153967: Number of planar n X n X n binary triangular grids symmetric both under 120 degree rotation and reflection with no more than 9 ones in any 4 X 4 X 4 subtriangle.

The programs for A153967, there is no canonical definition to state claims against.
-/

/-! ## A153967.P7994147800127060808

`A080054(n)+A033109(A000142(n))`
-/

namespace A153967.P7994147800127060808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080054 n + A033109 (A000142 n).toNat

end

end A153967.P7994147800127060808

/-! ## A153967.P18056032623209097195

`A035486(A103941(n)+A004525(n))`
-/

namespace A153967.P18056032623209097195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035486 (A103941 n + A004525 n).toNat

end

end A153967.P18056032623209097195

/-! ## A153967.P1022440582408041264

`A168201(A295370(n))+A116637(n)`
-/

namespace A153967.P1022440582408041264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168201 (A295370 n).toNat + A116637 n

end

end A153967.P1022440582408041264

/-! ## A153967.P3156583191298525108

`A271775(A121157(n)+A062132(n+1))`
-/

namespace A153967.P3156583191298525108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271775 (A121157 (n + 10) + A062132 (n + 1)).toNat

end

end A153967.P3156583191298525108

/-!
# A153969: Number of planar n X n X n binary triangular grids with mirror symmetry about one altitude with no more than 9 ones in any 5 X 5 X 5 subtriangle.

The programs for A153969, there is no canonical definition to state claims against.
-/

/-! ## A153969.P5866195825142993094

`A141494(n+1)-A049830(n+1)`
-/

namespace A153969.P5866195825142993094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141494 (n + 1) - A049830 (n + 1)

end

end A153969.P5866195825142993094

/-! ## A153969.P2600471479084750314

`A347657(2^n)+A122461(n+1)`
-/

namespace A153969.P2600471479084750314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347657 (2 ^ n) + A122461 (n + 1)

end

end A153969.P2600471479084750314

/-!
# A153972: a(n) = 2^n + 6.

The programs for A153972, the canonical program `A153972.P197572763491864962` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153972 has offset 0).

The definition of A153972 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+6` (program `A153972.P197572763491864962`, by `A153972.P197572763491864962.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153972.P197572763491864962

`2^n+6`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153972

/-- `2^n+6` -/
def P197572763491864962.Spec : Prop :=
  ∀ n, (P197572763491864962.a n : ℤ) = A153972 n

theorem P197572763491864962.correct : P197572763491864962.Spec := by
  intro n
  simp only [A153972]

end A153972

/-!
# A153973: a(n) = 3*a(n-1) - 2*a(n-2), with a(1) = 9, a(2) = 12.

The programs for A153973, the canonical program `A153973.P5587284679870194719` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153973 has offset 1).

The definition of A153973 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-2*a(n-2)` (program `A153973.P5587284679870194719`, by `A153973.P5587284679870194719.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153973.P16107676969195801131

`3/2*(4+2^(n+1))`
-/

namespace A153973.P16107676969195801131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (4 + 2 ^ (n + 1) : ℚ)

end

end A153973.P16107676969195801131

namespace A153973

/-- `3/2*(4+2^(n+1))` -/
def P16107676969195801131.Spec : Prop :=
  ∀ n, P16107676969195801131.a n = (A153973 (n + 1) : ℚ)

theorem P16107676969195801131.correct : P16107676969195801131.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A153973, Nat.add_sub_cancel, A153973.P16107676969195801131.a, A153973.P5587284679870194719.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A153973, Nat.add_sub_cancel, A153973.P16107676969195801131.a, A153973.P5587284679870194719.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A153973

/-! ## A153973.P5587284679870194719

`3*a(n-1)-2*a(n-2)` with `a(0)=9, a(1)=12`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153973

/-- `3*a(n-1)-2*a(n-2)` -/
def P5587284679870194719.Spec : Prop :=
  ∀ n, P5587284679870194719.a n = A153973 (n + 1)

theorem P5587284679870194719.correct : P5587284679870194719.Spec := by
  intro n
  simp only [A153973, Nat.add_sub_cancel]

end A153973

/-! ## A153973.P1957286405758217798

`lcm(3, 2^n)+6`
-/

namespace A153973.P1957286405758217798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (2 ^ n) + 6

end

end A153973.P1957286405758217798

namespace A153973

/-- `lcm(3, 2^n)+6` -/
def P1957286405758217798.Spec : Prop :=
  ∀ n, (P1957286405758217798.a n : ℤ) = A153973 (n + 1)

end A153973

/-! ## A153973.P8336517107602105147

`ogf((9-15x)/(1-3x+2x^2))`
-/

namespace A153973.P8336517107602105147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [9, -15] [1, -3, 2] n

end

end A153973.P8336517107602105147

namespace A153973

/-- `ogf((9-15x)/(1-3x+2x^2))` -/
def P8336517107602105147.Spec : Prop :=
  ∀ n, P8336517107602105147.a n = A153973 (n + 1)

end A153973

/-! ## A153973.P12845008140419616240

`2*a(n-1)-6` with `a(0)=9`
-/

namespace A153973.P12845008140419616240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  2 * a (n - 1) - 6

end

end A153973.P12845008140419616240

namespace A153973

/-- `2*a(n-1)-6` -/
def P12845008140419616240.Spec : Prop :=
  ∀ n, P12845008140419616240.a n = A153973 (n + 1)

end A153973

/-! ## A153973.P467325654725502248

`a(n-1)+a(n-1)-6` with `a(0)=9`
-/

namespace A153973.P467325654725502248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) + (a (n - 1) - 6)

end

end A153973.P467325654725502248

namespace A153973

/-- `a(n-1)+a(n-1)-6` -/
def P467325654725502248.Spec : Prop :=
  ∀ n, P467325654725502248.a n = A153973 (n + 1)

end A153973

/-! ## A153973.P1550398875248870825

`a(n-1)-(6-a(n-1))` with `a(0)=9`
-/

namespace A153973.P1550398875248870825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9] fun n a =>
  a (n - 1) - (6 - a (n - 1))

end

end A153973.P1550398875248870825

namespace A153973

/-- `a(n-1)-(6-a(n-1))` -/
def P1550398875248870825.Spec : Prop :=
  ∀ n, P1550398875248870825.a n = A153973 (n + 1)

end A153973

/-! ## A153973.P16470943070164683142

`A164094(n)+4`
-/

namespace A153973.P16470943070164683142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164094 n + 4

end

end A153973.P16470943070164683142

namespace A153973

/-- `A164094(n)+4` -/
def P16470943070164683142.Spec : Prop :=
  ∀ n, P16470943070164683142.a n = A153973 (n + 1)

theorem P16470943070164683142.correct : P16470943070164683142.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A153973, Nat.add_sub_cancel, A153973.P16470943070164683142.a, A153973.P5587284679870194719.a, A164094, A164094.P5637307154488565271.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A153973, Nat.add_sub_cancel, A153973.P16470943070164683142.a, A153973.P5587284679870194719.a, A164094, A164094.P5637307154488565271.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A153973

/-! ## A153973.P17170709904464198402

`A181565(n)+5`
-/

namespace A153973.P17170709904464198402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181565 n + 5

end

end A153973.P17170709904464198402

namespace A153973

/-- `A181565(n)+5` -/
def P17170709904464198402.Spec : Prop :=
  ∀ n, P17170709904464198402.a n = A153973 (n + 1)

theorem P17170709904464198402.correct : P17170709904464198402.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A153973, Nat.add_sub_cancel, A153973.P17170709904464198402.a, A153973.P5587284679870194719.a, A181565, A181565.P8755880695475505405.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A153973, Nat.add_sub_cancel, A153973.P17170709904464198402.a, A153973.P5587284679870194719.a, A181565, A181565.P8755880695475505405.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A153973

/-! ## A153973.P3397316539450565981

`6+A007283(n)`
-/

namespace A153973.P3397316539450565981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 + A007283 n

end

end A153973.P3397316539450565981

namespace A153973

/-- `6+A007283(n)` -/
def P3397316539450565981.Spec : Prop :=
  ∀ n, P3397316539450565981.a n = A153973 (n + 1)

theorem P3397316539450565981.correct : P3397316539450565981.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A153973, Nat.add_sub_cancel, A153973.P3397316539450565981.a, A153973.P5587284679870194719.a, A007283, A007283.P7218590649391847614.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A153973, Nat.add_sub_cancel, A153973.P3397316539450565981.a, A153973.P5587284679870194719.a, A007283, A007283.P7218590649391847614.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A153973

/-! ## A153973.P12279348201332902372

`A153893(n)+7`
-/

namespace A153973.P12279348201332902372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n + 7

end

end A153973.P12279348201332902372

namespace A153973

/-- `A153893(n)+7` -/
def P12279348201332902372.Spec : Prop :=
  ∀ n, P12279348201332902372.a n = A153973 (n + 1)

theorem P12279348201332902372.correct : P12279348201332902372.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A153973, Nat.add_sub_cancel, A153973.P12279348201332902372.a, A153973.P5587284679870194719.a, A153893, A153893.P14487975062432883580.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A153973, Nat.add_sub_cancel, A153973.P12279348201332902372.a, A153973.P5587284679870194719.a, A153893, A153893.P14487975062432883580.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A153973

/-! ## A153973.P4027526476196217385

`A033484(n)+8`
-/

namespace A153973.P4027526476196217385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033484 n + 8

end

end A153973.P4027526476196217385

namespace A153973

/-- `A033484(n)+8` -/
def P4027526476196217385.Spec : Prop :=
  ∀ n, P4027526476196217385.a n = A153973 (n + 1)

theorem P4027526476196217385.correct : P4027526476196217385.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A153973, Nat.add_sub_cancel, A153973.P4027526476196217385.a, A153973.P5587284679870194719.a, A033484, A033484.P10856640375789116383.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A153973, Nat.add_sub_cancel, A153973.P4027526476196217385.a, A153973.P5587284679870194719.a, A033484, A033484.P10856640375789116383.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A153973

/-! ## A153973.P12790928650074784769

`∑[A042950(n)]+7`
-/

namespace A153973.P12790928650074784769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 7

end

end A153973.P12790928650074784769

namespace A153973

/-- `∑[A042950(n)]+7` -/
def P12790928650074784769.Spec : Prop :=
  ∀ n, P12790928650074784769.a n = A153973 (n + 1)

end A153973

/-! ## A153973.P7855103739975074357

`A003461(n+1)+2`
-/

namespace A153973.P7855103739975074357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003461 (n + 1) + 2

end

end A153973.P7855103739975074357

namespace A153973

/-- `A003461(n+1)+2` -/
def P7855103739975074357.Spec : Prop :=
  ∀ n, P7855103739975074357.a n = A153973 (n + 1)

end A153973

/-! ## A153973.P11690264157598513972

`A209724(2*(n+1))`
-/

namespace A153973.P11690264157598513972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209724 (2 * (n + 1))

end

end A153973.P11690264157598513972

namespace A153973

/-- `A209724(2*(n+1))` -/
def P11690264157598513972.Spec : Prop :=
  ∀ n, P11690264157598513972.a n = A153973 (n + 1)

end A153973

/-! ## A153973.P2619842055046021250

`A004119(n+1)+5`
-/

namespace A153973.P2619842055046021250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004119 (n + 1) + 5

end

end A153973.P2619842055046021250

namespace A153973

/-- `A004119(n+1)+5` -/
def P2619842055046021250.Spec : Prop :=
  ∀ n, P2619842055046021250.a n = A153973 (n + 1)

end A153973

/-! ## A153973.P5264585404897480038

`A003945(n+1)+6`
-/

namespace A153973.P5264585404897480038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (n + 1) + 6

end

end A153973.P5264585404897480038

namespace A153973

/-- `A003945(n+1)+6` -/
def P5264585404897480038.Spec : Prop :=
  ∀ n, P5264585404897480038.a n = A153973 (n + 1)

end A153973

/-! ## A153973.P7050113817184674341

`A042950(n+1)+6`
-/

namespace A153973.P7050113817184674341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 (n + 1) + 6

end

end A153973.P7050113817184674341

namespace A153973

/-- `A042950(n+1)+6` -/
def P7050113817184674341.Spec : Prop :=
  ∀ n, P7050113817184674341.a n = A153973 (n + 1)

end A153973

/-! ## A153973.P10240705300479568881

`A103204(n+2)+5`
-/

namespace A153973.P10240705300479568881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103204 (n + 2) + 5

end

end A153973.P10240705300479568881

namespace A153973

/-- `A103204(n+2)+5` -/
def P10240705300479568881.Spec : Prop :=
  ∀ n, P10240705300479568881.a n = A153973 (n + 1)

end A153973

/-! ## A153973.P14835055000662975664

`3*A000051(n)+3`
-/

namespace A153973.P14835055000662975664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000051 n + 3

end

end A153973.P14835055000662975664

namespace A153973

/-- `3*A000051(n)+3` -/
def P14835055000662975664.Spec : Prop :=
  ∀ n, P14835055000662975664.a n = A153973 (n + 1)

theorem P14835055000662975664.correct : P14835055000662975664.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A153973, Nat.add_sub_cancel, A153973.P14835055000662975664.a, A153973.P5587284679870194719.a, A000051, A000051.P14067217022188782580.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A153973, Nat.add_sub_cancel, A153973.P14835055000662975664.a, A153973.P5587284679870194719.a, A000051, A000051.P14067217022188782580.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A153973

/-!
# A153974: Numbers n such that n^3 - 3 is prime.

The programs for A153974, there is no canonical definition to state claims against.
-/

/-! ## A153974.P5869623923986816516

`2*A241808(n+1)`
-/

namespace A153974.P5869623923986816516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A241808 (n + 1)

end

end A153974.P5869623923986816516

/-! ## A153974.P532752262912315057

`A241808(A000027(n+1))+A241808(n+1)`
-/

namespace A153974.P532752262912315057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (A000027 (n + 1)).toNat + A241808 (n + 1)

end

end A153974.P532752262912315057

/-! ## A153974.P15187083773154695333

`record[2*A241808(A133310(n))]`
-/

namespace A153974.P15187083773154695333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A241808 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153974.P15187083773154695333

/-! ## A153974.P4287194062028064871

`A241808(n+1)+record[A241808(A133310(n))]`
-/

namespace A153974.P4287194062028064871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (A133310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153974.P4287194062028064871

/-! ## A153974.P14487307116454781552

`A241808(n+1)+A241808(A008619(n+n))`
-/

namespace A153974.P14487307116454781552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (n + 1) + A241808 (A008619 (n + n)).toNat

end

end A153974.P14487307116454781552

/-! ## A153974.P17283355440829851196

`A004277(A241808(n+1))`
-/

namespace A153974.P17283355440829851196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A241808 (n + 1)).toNat

end

end A153974.P17283355440829851196

/-! ## A153974.P10097141098009752500

`A005843(A241808(1-(n-A005843(n))))`
-/

namespace A153974.P10097141098009752500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A241808 (1 - ((n : ℤ) - A005843 n)).toNat).toNat

end

end A153974.P10097141098009752500

/-! ## A153974.P15702663748492474158

`A241808(n+1)+A241808((n+1)%A094231(n+1))`
-/

namespace A153974.P15702663748492474158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241808 (n + 1) + A241808 (Int.tmod (n + 1 : ℤ) (A094231 (n + 1))).toNat

end

end A153974.P15702663748492474158

/-!
# A153975: Values of n such that n^2-3 and n^2+3 are both prime.

The programs for A153975, there is no canonical definition to state claims against.
-/

/-! ## A153975.P18023485266897233730

`sqrt(A153262(n+1))`
-/

namespace A153975.P18023485266897233730
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A153262 (n + 1) : ℝ)

end

end A153975.P18023485266897233730

/-! ## A153975.P14613001697236435781

`2*A097698(n+1)`
-/

namespace A153975.P14613001697236435781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097698 (n + 1)

end

end A153975.P14613001697236435781

/-! ## A153975.P8595108029052375006

`root(A153262(root(n+1, 2)²), 2)`
-/

namespace A153975.P8595108029052375006
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A153262 (SequenceMachineLib.roundAway (((n + 1 : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat : ℝ) ^ (1 / (2 : ℝ))

end

end A153975.P8595108029052375006

/-! ## A153975.P14360327505025380140

`A097698(A000027(n+1))+A097698(n+1)`
-/

namespace A153975.P14360327505025380140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097698 (A000027 (n + 1)).toNat + A097698 (n + 1)

end

end A153975.P14360327505025380140

/-! ## A153975.P12206260282649485024

`∩[A028873(n+1), A049422(n+1)]`
-/

namespace A153975.P12206260282649485024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049422 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153975.P12206260282649485024

/-! ## A153975.P9556446800896393376

`2*∩[A083022(n+1), A097697(n+1)]`
-/

namespace A153975.P9556446800896393376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153975.P9556446800896393376

/-! ## A153975.P8332338790998794608

`A097698(n+1)+A097698(n+1)/A001221(A006512(n+1))`
-/

namespace A153975.P8332338790998794608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097698 (n + 1) : ℚ) + (A097698 (n + 1) : ℚ) / (A001221 (A006512 (n + 1)).toNat : ℚ)

end

end A153975.P8332338790998794608

/-! ## A153975.P7947620148849781901

`A004277(A097698(n+1))`
-/

namespace A153975.P7947620148849781901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A097698 (n + 1)).toNat

end

end A153975.P7947620148849781901

/-!
# A153976: a(n) = n^3 + (n+2)^3.

The programs for A153976, the canonical program `A153976.P9754858102248380497` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153976 has offset 0).

The definition of A153976 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3+(n+2)^3` (program `A153976.P9754858102248380497`, by `A153976.P9754858102248380497.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153976.P9754858102248380497

`n^3+(n+2)^3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153976

/-- `n^3+(n+2)^3` -/
def P9754858102248380497.Spec : Prop :=
  ∀ n, (P9754858102248380497.a n : ℤ) = A153976 n

theorem P9754858102248380497.correct : P9754858102248380497.Spec := by
  intro n
  simp only [A153976]

end A153976

/-! ## A153976.P14565331450422358804

`2*A079908(n+1)`
-/

namespace A153976.P14565331450422358804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079908 (n + 1)

end

end A153976.P14565331450422358804

namespace A153976

/-- `2*A079908(n+1)` -/
def P14565331450422358804.Spec : Prop :=
  ∀ n, P14565331450422358804.a n = A153976 n

end A153976

/-! ## A153976.P9555782298718027819

`4*A229183(n+1)`
-/

namespace A153976.P9555782298718027819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A229183 (n + 1)

end

end A153976.P9555782298718027819

namespace A153976

/-- `4*A229183(n+1)` -/
def P9555782298718027819.Spec : Prop :=
  ∀ n, P9555782298718027819.a n = A153976 n

end A153976

/-! ## A153976.P412815917565795425

`∑[∑[a(n-1)+12]]` with `a(0)=8, a(1)=12`
-/

namespace A153976.P412815917565795425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [8, 12] fun n f2 =>
  f2 (n - 1) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153976.P412815917565795425

namespace A153976

/-- `∑[∑[a(n-1)+12]]` -/
def P412815917565795425.Spec : Prop :=
  ∀ n, (P412815917565795425.a n : ℤ) = A153976 n

end A153976

/-! ## A153976.P13459397361369630464

`2*∑[∑[ogf((4-2x+4x^2)/(1-2x+x^2))]]`
-/

namespace A153976.P13459397361369630464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -2, 4] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153976.P13459397361369630464

namespace A153976

/-- `2*∑[∑[ogf((4-2x+4x^2)/(1-2x+x^2))]]` -/
def P13459397361369630464.Spec : Prop :=
  ∀ n, P13459397361369630464.a n = A153976 n

end A153976

/-! ## A153976.P8139625795380021462

`4*∑[2-∑[a(n-1)-3]]` with `a(0)=0`
-/

namespace A153976.P8139625795380021462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153976.P8139625795380021462

namespace A153976

/-- `4*∑[2-∑[a(n-1)-3]]` -/
def P8139625795380021462.Spec : Prop :=
  ∀ n, P8139625795380021462.a n = A153976 n

end A153976

/-! ## A153976.P416307363305443350

`∑[2*(C(2*n, 2)+(n+2)²)]`
-/

namespace A153976.P416307363305443350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.choose (2 * n) 2 + (n + 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153976.P416307363305443350

namespace A153976

/-- `∑[2*(C(2*n, 2)+(n+2)²)]` -/
def P416307363305443350.Spec : Prop :=
  ∀ n, (P416307363305443350.a n : ℤ) = A153976 n

end A153976

/-! ## A153976.P10920136664286011676

`((n+2)²-2*n)*Δ[lcm(n, n+1)]`
-/

namespace A153976.P10920136664286011676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 2) ^ 2 : ℤ) - (2 * n : ℤ)) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A153976.P10920136664286011676

namespace A153976

/-- `((n+2)²-2*n)*Δ[lcm(n, n+1)]` -/
def P10920136664286011676.Spec : Prop :=
  ∀ n, P10920136664286011676.a n = A153976 n

end A153976

/-! ## A153976.P8474556189954217692

`4*(A132127(n+1)+1)`
-/

namespace A153976.P8474556189954217692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A132127 (n + 1) + 1)

end

end A153976.P8474556189954217692

namespace A153976

/-- `4*(A132127(n+1)+1)` -/
def P8474556189954217692.Spec : Prop :=
  ∀ n, P8474556189954217692.a n = A153976 n

theorem P8474556189954217692.correct : P8474556189954217692.Spec := by
  intro n
  simp only [A153976, Nat.add_sub_cancel, A153976.P8474556189954217692.a, A153976.P9754858102248380497.a, A132127, A132127.P17513514438604319180.f1, A132127.P17513514438604319180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A153976

/-! ## A153976.P17047041069893605433

`2*(A094792(n)+2+n)`
-/

namespace A153976.P17047041069893605433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A094792 n + 2 + (n : ℤ))

end

end A153976.P17047041069893605433

namespace A153976

/-- `2*(A094792(n)+2+n)` -/
def P17047041069893605433.Spec : Prop :=
  ∀ n, P17047041069893605433.a n = A153976 n

theorem P17047041069893605433.correct : P17047041069893605433.Spec := by
  intro n
  simp only [A153976, Nat.add_sub_cancel, A153976.P17047041069893605433.a, A153976.P9754858102248380497.a, A094792, A094792.P13284551861407983223.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153976

/-! ## A153976.P13623130295744530531

`2*(A054602(n+1)+n+1)`
-/

namespace A153976.P13623130295744530531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A054602 (n + 1) + (n + 1 : ℤ))

end

end A153976.P13623130295744530531

namespace A153976

/-- `2*(A054602(n+1)+n+1)` -/
def P13623130295744530531.Spec : Prop :=
  ∀ n, P13623130295744530531.a n = A153976 n

theorem P13623130295744530531.correct : P13623130295744530531.Spec := by
  intro n
  simp only [A153976, Nat.add_sub_cancel, A153976.P13623130295744530531.a, A153976.P9754858102248380497.a, A054602, A054602.P284734914928046851.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153976

/-! ## A153976.P2708685683155379203

`2*(A155965(n+1)-(n+1))`
-/

namespace A153976.P2708685683155379203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155965 (n + 1) - (n + 1 : ℤ))

end

end A153976.P2708685683155379203

namespace A153976

/-- `2*(A155965(n+1)-(n+1))` -/
def P2708685683155379203.Spec : Prop :=
  ∀ n, P2708685683155379203.a n = A153976 n

theorem P2708685683155379203.correct : P2708685683155379203.Spec := by
  intro n
  simp only [A153976, Nat.add_sub_cancel, A153976.P2708685683155379203.a, A153976.P9754858102248380497.a, A155965, A155965.P4744673239626898850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153976

/-! ## A153976.P10757423208681219496

`(n+1)*(A155966(n+1)-2)`
-/

namespace A153976.P10757423208681219496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A155966 (n + 1) - 2)

end

end A153976.P10757423208681219496

namespace A153976

/-- `(n+1)*(A155966(n+1)-2)` -/
def P10757423208681219496.Spec : Prop :=
  ∀ n, P10757423208681219496.a n = A153976 n

theorem P10757423208681219496.correct : P10757423208681219496.Spec := by
  intro n
  simp only [A153976, Nat.add_sub_cancel, A153976.P10757423208681219496.a, A153976.P9754858102248380497.a, A155966, A155966.P536139070605951251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153976

/-! ## A153976.P10561303498808513998

`(A120571(n+1)-4)/(n+1)`
-/

namespace A153976.P10561303498808513998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120571 (n + 1) - 4 : ℚ) / (n + 1 : ℚ)

end

end A153976.P10561303498808513998

namespace A153976

/-- `(A120571(n+1)-4)/(n+1)` -/
def P10561303498808513998.Spec : Prop :=
  ∀ n, P10561303498808513998.a n = (A153976 n : ℚ)

theorem P10561303498808513998.correct : P10561303498808513998.Spec := by
  intro n
  simp only [A153976, Nat.add_sub_cancel, A153976.P10561303498808513998.a, A153976.P9754858102248380497.a, A120571, A120571.P11642398327244731010.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153976

/-! ## A153976.P10635218721207824911

`((n+1)²+3)*A005843(n+1)`
-/

namespace A153976.P10635218721207824911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 + 3 : ℤ) * A005843 (n + 1)

end

end A153976.P10635218721207824911

namespace A153976

/-- `((n+1)²+3)*A005843(n+1)` -/
def P10635218721207824911.Spec : Prop :=
  ∀ n, P10635218721207824911.a n = A153976 n

theorem P10635218721207824911.correct : P10635218721207824911.Spec := by
  intro n
  simp only [A153976, Nat.add_sub_cancel, A153976.P10635218721207824911.a, A153976.P9754858102248380497.a, A005843, A005843.P3167286115683555970.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153976

/-! ## A153976.P11151740021484512573

`A008513(n+1)/A005897(n+1)`
-/

namespace A153976.P11151740021484512573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008513 (n + 1) : ℚ) / (A005897 (n + 1) : ℚ)

end

end A153976.P11151740021484512573

namespace A153976

/-- `A008513(n+1)/A005897(n+1)` -/
def P11151740021484512573.Spec : Prop :=
  ∀ n, P11151740021484512573.a n = (A153976 n : ℚ)

end A153976

/-! ## A153976.P15619441151312691319

`Δ[4*A267707(n)]`
-/

namespace A153976.P15619441151312691319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A267707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153976.P15619441151312691319

namespace A153976

/-- `Δ[4*A267707(n)]` -/
def P15619441151312691319.Spec : Prop :=
  ∀ n, P15619441151312691319.a n = A153976 n

end A153976

/-! ## A153976.P3717666954469800981

`Δ[A027688(n)²/2]`
-/

namespace A153976.P3717666954469800981
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027688 n ^ 2 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153976.P3717666954469800981

namespace A153976

/-- `Δ[A027688(n)²/2]` -/
def P3717666954469800981.Spec : Prop :=
  ∀ n, P3717666954469800981.a n = (A153976 n : ℚ)

theorem P3717666954469800981.correct : P3717666954469800981.Spec := by
  intro n
  simp only [A153976, Nat.add_sub_cancel, A153976.P3717666954469800981.f1, A153976.P3717666954469800981.a, A153976.P9754858102248380497.a, A027688, A027688.P8661981911705810589.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153976

/-! ## A153976.P1330977157866261807

`2*(A005491(n+1)-1)`
-/

namespace A153976.P1330977157866261807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A005491 (n + 1) - 1)

end

end A153976.P1330977157866261807

namespace A153976

/-- `2*(A005491(n+1)-1)` -/
def P1330977157866261807.Spec : Prop :=
  ∀ n, P1330977157866261807.a n = A153976 n

theorem P1330977157866261807.correct : P1330977157866261807.Spec := by
  intro n
  simp only [A153976, Nat.add_sub_cancel, A153976.P1330977157866261807.a, A153976.P9754858102248380497.a, A005491, A005491.P208303026648680842.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153976

/-! ## A153976.P6369803313821713477

`(n+1)*A255844(n+1)`
-/

namespace A153976.P6369803313821713477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A255844 (n + 1)

end

end A153976.P6369803313821713477

namespace A153976

/-- `(n+1)*A255844(n+1)` -/
def P6369803313821713477.Spec : Prop :=
  ∀ n, P6369803313821713477.a n = A153976 n

theorem P6369803313821713477.correct : P6369803313821713477.Spec := by
  intro n
  simp only [A153976, Nat.add_sub_cancel, A153976.P6369803313821713477.a, A153976.P9754858102248380497.a, A255844, A255844.P1265613718038489590.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153976

/-!
# A153977: One-fourth of partial sums of A153976.

The programs for A153977, the canonical program `A153977.P3006222738305188406` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153977 has offset 1).

The definition of A153977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153977.P16855472229020824074

`((n+1)^4+2*(n+1)^3+7*(n+1)²+6*(n+1))/8`
-/

namespace A153977.P16855472229020824074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 4 + 2 * (n + 1) ^ 3 + 7 * (n + 1) ^ 2 + 6 * (n + 1) : ℚ) / 8

end

end A153977.P16855472229020824074

namespace A153977

/-- `((n+1)^4+2*(n+1)^3+7*(n+1)²+6*(n+1))/8` -/
def P16855472229020824074.Spec : Prop :=
  ∀ n, P16855472229020824074.a n = (A153977 (n + 1) : ℚ)

theorem P16855472229020824074.correct : P16855472229020824074.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A153977, Nat.add_sub_cancel, A153977.P16855472229020824074.a, A153977.P3006222738305188406.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A153977, Nat.add_sub_cancel, A153977.P16855472229020824074.a, A153977.P3006222738305188406.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A153977

/-! ## A153977.P3006222738305188406

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=2, a(1)=9, a(2)=27, a(3)=65, a(4)=135`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153977

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P3006222738305188406.Spec : Prop :=
  ∀ n, P3006222738305188406.a n = A153977 (n + 1)

theorem P3006222738305188406.correct : P3006222738305188406.Spec := by
  intro n
  simp only [A153977, Nat.add_sub_cancel]

end A153977

/-! ## A153977.P8982473625742691208

`A000217(A000217(n+1))+A000217(n+1)`
-/

namespace A153977.P8982473625742691208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A000217 (n + 1)).toNat + A000217 (n + 1)

end

end A153977.P8982473625742691208

namespace A153977

/-- `A000217(A000217(n+1))+A000217(n+1)` -/
def P8982473625742691208.Spec : Prop :=
  ∀ n, P8982473625742691208.a n = A153977 (n + 1)

end A153977

/-! ## A153977.P10985875361973329108

`C(∑[n+1]+2, 2)-1`
-/

namespace A153977.P10985875361973329108
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 2) 2 : ℤ) - 1

end

end A153977.P10985875361973329108

namespace A153977

/-- `C(∑[n+1]+2, 2)-1` -/
def P10985875361973329108.Spec : Prop :=
  ∀ n, P10985875361973329108.a n = A153977 (n + 1)

end A153977

/-! ## A153977.P9812045499721518761

`floor(∑[∑[∑[a(n-1)+3]]])` with `a(0)=2, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A153977.P9812045499721518761
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153977.P9812045499721518761

namespace A153977

/-- `floor(∑[∑[∑[a(n-1)+3]]])` -/
def P9812045499721518761.Spec : Prop :=
  ∀ n, (P9812045499721518761.a n : ℤ) = A153977 (n + 1)

end A153977

/-! ## A153977.P4113541921337349083

`abs(1-C(abs(n-C(n+3, 2)), 2))`
-/

namespace A153977.P4113541921337349083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - (Nat.choose |(n : ℤ) - (Nat.choose (n + 3) 2 : ℤ)|.toNat 2 : ℤ))|

end

end A153977.P4113541921337349083

namespace A153977

/-- `abs(1-C(abs(n-C(n+3, 2)), 2))` -/
def P4113541921337349083.Spec : Prop :=
  ∀ n, P4113541921337349083.a n = A153977 (n + 1)

end A153977

/-! ## A153977.P18395152211114335195

`∑[n+1]+C(∑[n+1]+1, 2)`
-/

namespace A153977.P18395152211114335195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (∑ j ∈ Finset.range (n + 1), f2 j + 1) 2

end

end A153977.P18395152211114335195

namespace A153977

/-- `∑[n+1]+C(∑[n+1]+1, 2)` -/
def P18395152211114335195.Spec : Prop :=
  ∀ n, (P18395152211114335195.a n : ℤ) = A153977 (n + 1)

end A153977

/-! ## A153977.P15938114268188330179

`floor(∑[∑[2-∑[a(n-1)-3]]])` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A153977.P15938114268188330179
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f3 =>
  f3 (n - 1) - 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153977.P15938114268188330179

namespace A153977

/-- `floor(∑[∑[2-∑[a(n-1)-3]]])` -/
def P15938114268188330179.Spec : Prop :=
  ∀ n, P15938114268188330179.a n = A153977 (n + 1)

end A153977

/-! ## A153977.P4925340878442024646

`3*C(n+3, 4)+(n+1)*(n+2)`
-/

namespace A153977.P4925340878442024646
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.choose (n + 3) 4 + (n + 1) * (n + 2)

end

end A153977.P4925340878442024646

namespace A153977

/-- `3*C(n+3, 4)+(n+1)*(n+2)` -/
def P4925340878442024646.Spec : Prop :=
  ∀ n, (P4925340878442024646.a n : ℤ) = A153977 (n + 1)

end A153977

/-! ## A153977.P4786156677407943426

`∑[∑[n]+(n+1)²-n+1]+a(n-1)` with `a(0)=2`
-/

namespace A153977.P4786156677407943426
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + (n + 1) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A153977.P4786156677407943426

namespace A153977

/-- `∑[∑[n]+(n+1)²-n+1]+a(n-1)` -/
def P4786156677407943426.Spec : Prop :=
  ∀ n, P4786156677407943426.a n = A153977 (n + 1)

end A153977

/-! ## A153977.P3464189121326843187

`∑[A153976(n)/4]`
-/

namespace A153977.P3464189121326843187
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153976 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153977.P3464189121326843187

namespace A153977

/-- `∑[A153976(n)/4]` -/
def P3464189121326843187.Spec : Prop :=
  ∀ n, P3464189121326843187.a n = (A153977 (n + 1) : ℚ)

end A153977

/-! ## A153977.P805024002082950731

`∑[A132127(n+1)+1]`
-/

namespace A153977.P805024002082950731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132127 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153977.P805024002082950731

namespace A153977

/-- `∑[A132127(n+1)+1]` -/
def P805024002082950731.Spec : Prop :=
  ∀ n, P805024002082950731.a n = A153977 (n + 1)

end A153977

/-! ## A153977.P4206105911002017318

`∑[A079908(n+1)/2]`
-/

namespace A153977.P4206105911002017318
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079908 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153977.P4206105911002017318

namespace A153977

/-- `∑[A079908(n+1)/2]` -/
def P4206105911002017318.Spec : Prop :=
  ∀ n, P4206105911002017318.a n = (A153977 (n + 1) : ℚ)

end A153977

/-! ## A153977.P4149108617317722379

`A002817(n+1)+∑[n+1]`
-/

namespace A153977.P4149108617317722379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A153977.P4149108617317722379

namespace A153977

/-- `A002817(n+1)+∑[n+1]` -/
def P4149108617317722379.Spec : Prop :=
  ∀ n, P4149108617317722379.a n = A153977 (n + 1)

end A153977

/-! ## A153977.P16261442294400009097

`A051744(n+1)+∑[∑[n²]]`
-/

namespace A153977.P16261442294400009097
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051744 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A153977.P16261442294400009097

namespace A153977

/-- `A051744(n+1)+∑[∑[n²]]` -/
def P16261442294400009097.Spec : Prop :=
  ∀ n, P16261442294400009097.a n = A153977 (n + 1)

end A153977

/-! ## A153977.P3153614721990292018

`∑[A006002(n)]+∑[∑[n+2]]`
-/

namespace A153977.P3153614721990292018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006002 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A153977.P3153614721990292018

namespace A153977

/-- `∑[A006002(n)]+∑[∑[n+2]]` -/
def P3153614721990292018.Spec : Prop :=
  ∀ n, P3153614721990292018.a n = A153977 (n + 1)

end A153977

/-! ## A153977.P5454995856801748645

`∑[A158842(n+1)]+(n+1)²`
-/

namespace A153977.P5454995856801748645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A153977.P5454995856801748645

namespace A153977

/-- `∑[A158842(n+1)]+(n+1)²` -/
def P5454995856801748645.Spec : Prop :=
  ∀ n, P5454995856801748645.a n = A153977 (n + 1)

end A153977

/-! ## A153977.P3055766402485898243

`A267707(n)+A132127(n+1)`
-/

namespace A153977.P3055766402485898243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267707 n + A132127 (n + 1)

end

end A153977.P3055766402485898243

namespace A153977

/-- `A267707(n)+A132127(n+1)` -/
def P3055766402485898243.Spec : Prop :=
  ∀ n, P3055766402485898243.a n = A153977 (n + 1)

end A153977

/-! ## A153977.P15649427047367049357

`A001296(n)+A180118(n)+2`
-/

namespace A153977.P15649427047367049357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 n + (A180118 n + 2)

end

end A153977.P15649427047367049357

namespace A153977

/-- `A001296(n)+A180118(n)+2` -/
def P15649427047367049357.Spec : Prop :=
  ∀ n, P15649427047367049357.a n = A153977 (n + 1)

end A153977

/-! ## A153977.P14323419079620806210

`A215862(n)+A167541(n+6)`
-/

namespace A153977.P14323419079620806210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215862 n + A167541 (n + 6)

end

end A153977.P14323419079620806210

namespace A153977

/-- `A215862(n)+A167541(n+6)` -/
def P14323419079620806210.Spec : Prop :=
  ∀ n, P14323419079620806210.a n = A153977 (n + 1)

end A153977

/-!
# A153978: a(n) = n*(n-1)*(n+1)*(3*n-2)/12.

The programs for A153978, the canonical program `A153978.P2323084902358907282` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153978 has offset 1).

The definition of A153978 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*n*(n+2)*(3*(n+1)-2)/12` (program `A153978.P14534871149915353586`, by `A153978.P14534871149915353586.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153978.P14534871149915353586

`(n+1)*n*(n+2)*(3*(n+1)-2)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153978.P14534871149915353586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * n * (n + 2) : ℤ) * ((3 * (n + 1) : ℤ) - 2) : ℚ) / 12

end

end A153978.P14534871149915353586

namespace A153978

/-- `(n+1)*n*(n+2)*(3*(n+1)-2)/12` -/
def P14534871149915353586.Spec : Prop :=
  ∀ n, P14534871149915353586.a n = (A153978 (n + 1) : ℚ)

theorem P14534871149915353586.correct : P14534871149915353586.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A153978, Nat.add_sub_cancel, A153978.P14534871149915353586.a, A153978.P2323084902358907282.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A153978, Nat.add_sub_cancel, A153978.P14534871149915353586.a, A153978.P2323084902358907282.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A153978

/-! ## A153978.P2323084902358907282

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=2, a(2)=14, a(3)=50, a(4)=130`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153978

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P2323084902358907282.Spec : Prop :=
  ∀ n, P2323084902358907282.a n = A153978 (n + 1)

theorem P2323084902358907282.correct : P2323084902358907282.Spec := by
  intro n
  simp only [A153978, Nat.add_sub_cancel]

end A153978

/-! ## A153978.P4008785831296609799

`2*A001296(n)`
-/

namespace A153978.P4008785831296609799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001296 n

end

end A153978.P4008785831296609799

namespace A153978

/-- `2*A001296(n)` -/
def P4008785831296609799.Spec : Prop :=
  ∀ n, P4008785831296609799.a n = A153978 (n + 1)

end A153978

/-! ## A153978.P15712179084228113

`lcm(2, ∑[lcm(n+1, n²)])`
-/

namespace A153978.P15712179084228113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153978.P15712179084228113

namespace A153978

/-- `lcm(2, ∑[lcm(n+1, n²)])` -/
def P15712179084228113.Spec : Prop :=
  ∀ n, (P15712179084228113.a n : ℤ) = A153978 (n + 1)

end A153978

/-! ## A153978.P1425484662620408266

`2*∑[lcm(n, n*∑[n])]`
-/

namespace A153978.P1425484662620408266
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n * (∑ j ∈ Finset.range (n + 1), f2 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153978.P1425484662620408266

namespace A153978

/-- `2*∑[lcm(n, n*∑[n])]` -/
def P1425484662620408266.Spec : Prop :=
  ∀ n, (P1425484662620408266.a n : ℤ) = A153978 (n + 1)

end A153978

/-! ## A153978.P13314057217872962868

`2*∑[n*C(n+1, 2)]`
-/

namespace A153978.P13314057217872962868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153978.P13314057217872962868

namespace A153978

/-- `2*∑[n*C(n+1, 2)]` -/
def P13314057217872962868.Spec : Prop :=
  ∀ n, (P13314057217872962868.a n : ℤ) = A153978 (n + 1)

end A153978

/-! ## A153978.P9957571880714822619

`∑[n²]+C(n+1, 2)²`
-/

namespace A153978.P9957571880714822619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (n + 1) 2 ^ 2

end

end A153978.P9957571880714822619

namespace A153978

/-- `∑[n²]+C(n+1, 2)²` -/
def P9957571880714822619.Spec : Prop :=
  ∀ n, (P9957571880714822619.a n : ℤ) = A153978 (n + 1)

end A153978

/-! ## A153978.P3695697667500921697

`gcd(2, 2*n)*∑[n*∑[n]]`
-/

namespace A153978.P3695697667500921697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (2 * n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153978.P3695697667500921697

namespace A153978

/-- `gcd(2, 2*n)*∑[n*∑[n]]` -/
def P3695697667500921697.Spec : Prop :=
  ∀ n, (P3695697667500921697.a n : ℤ) = A153978 (n + 1)

end A153978

/-! ## A153978.P17118262410260207618

`a(n-1)+(n+1)*n²` with `a(0)=0`
-/

namespace A153978.P17118262410260207618
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n + 1) * n ^ 2

end

end A153978.P17118262410260207618

namespace A153978

/-- `a(n-1)+(n+1)*n²` -/
def P17118262410260207618.Spec : Prop :=
  ∀ n, (P17118262410260207618.a n : ℤ) = A153978 (n + 1)

end A153978

/-! ## A153978.P6841579613478136144

`a(n-1)+n^3+n²` with `a(0)=0`
-/

namespace A153978.P6841579613478136144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + n ^ 3 + n ^ 2

end

end A153978.P6841579613478136144

namespace A153978

/-- `a(n-1)+n^3+n²` -/
def P6841579613478136144.Spec : Prop :=
  ∀ n, (P6841579613478136144.a n : ℤ) = A153978 (n + 1)

end A153978

/-! ## A153978.P4927992082588632677

`floor(∑[∑[∑[a(n-1)+6]]])` with `a(0)=0, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A153978.P4927992082588632677
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f3 =>
  f3 (n - 1) + 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153978.P4927992082588632677

namespace A153978

/-- `floor(∑[∑[∑[a(n-1)+6]]])` -/
def P4927992082588632677.Spec : Prop :=
  ∀ n, (P4927992082588632677.a n : ℤ) = A153978 (n + 1)

end A153978

/-! ## A153978.P10021414196220361877

`2*∑[∑[∑[a(n-1)+3]]]` with `a(0)=0, a(1)=1`
-/

namespace A153978.P10021414196220361877
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153978.P10021414196220361877

namespace A153978

/-- `2*∑[∑[∑[a(n-1)+3]]]` -/
def P10021414196220361877.Spec : Prop :=
  ∀ n, (P10021414196220361877.a n : ℤ) = A153978 (n + 1)

end A153978

/-! ## A153978.P17779307889490560026

`∑[2*n*∑[n]]+and(1, 2*n)`
-/

namespace A153978.P17779307889490560026
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 1 (2 * n)

end

end A153978.P17779307889490560026

namespace A153978

/-- `∑[2*n*∑[n]]+and(1, 2*n)` -/
def P17779307889490560026.Spec : Prop :=
  ∀ n, (P17779307889490560026.a n : ℤ) = A153978 (n + 1)

end A153978

/-! ## A153978.P8107055701739991124

`∑[n²]+∑[a(n-1)+1]²` with `a(0)=0`
-/

namespace A153978.P8107055701739991124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A153978.P8107055701739991124

namespace A153978

/-- `∑[n²]+∑[a(n-1)+1]²` -/
def P8107055701739991124.Spec : Prop :=
  ∀ n, (P8107055701739991124.a n : ℤ) = A153978 (n + 1)

end A153978

/-! ## A153978.P2796724347825717863

`floor(a(n-1)+(n+1)*n*n)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A153978.P2796724347825717863
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n + 1) * (n * n)

end

end A153978.P2796724347825717863

namespace A153978

/-- `floor(a(n-1)+(n+1)*n*n)` -/
def P2796724347825717863.Spec : Prop :=
  ∀ n, (P2796724347825717863.a n : ℤ) = A153978 (n + 1)

end A153978

/-! ## A153978.P15907162169507530942

`floor(a(n-1))+(n+1)/n^(-2)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A153978.P15907162169507530942
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (⌊a (n - 1)⌋ : ℚ) + (n + 1 : ℚ) / (n : ℚ) ^ (-2 : ℤ)

end

end A153978.P15907162169507530942

namespace A153978

/-- `floor(a(n-1))+(n+1)/n^(-2)` -/
def P15907162169507530942.Spec : Prop :=
  ∀ n, P15907162169507530942.a n = (A153978 (n + 1) : ℚ)

end A153978

/-! ## A153978.P6254180485966483604

`2*C(n+3, 4)+4*C(n+2, 4)`
-/

namespace A153978.P6254180485966483604
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (n + 3) 4 + 4 * Nat.choose (n + 2) 4

end

end A153978.P6254180485966483604

namespace A153978

/-- `2*C(n+3, 4)+4*C(n+2, 4)` -/
def P6254180485966483604.Spec : Prop :=
  ∀ n, (P6254180485966483604.a n : ℤ) = A153978 (n + 1)

end A153978

/-! ## A153978.P17976907236319830129

`∑[∑[a(n-1)+6]]+a(n-1)` with `a(0)=0, a(1)=2`
-/

namespace A153978.P17976907236319830129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A153978.P17976907236319830129

namespace A153978

/-- `∑[∑[a(n-1)+6]]+a(n-1)` -/
def P17976907236319830129.Spec : Prop :=
  ∀ n, (P17976907236319830129.a n : ℤ) = A153978 (n + 1)

end A153978

/-! ## A153978.P6705914789104339164

`n*(a(n-1)/n+n*(n+1))` with `a(0)=0`
-/

namespace A153978.P6705914789104339164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℚ) * (a (n - 1) / (n : ℚ) + (n * (n + 1) : ℚ))

end

end A153978.P6705914789104339164

namespace A153978

/-- `n*(a(n-1)/n+n*(n+1))` -/
def P6705914789104339164.Spec : Prop :=
  ∀ n, P6705914789104339164.a n = (A153978 (n + 1) : ℚ)

end A153978

/-! ## A153978.P9991680772836492101

`∑[A011379(n)]`
-/

namespace A153978.P9991680772836492101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153978.P9991680772836492101

namespace A153978

/-- `∑[A011379(n)]` -/
def P9991680772836492101.Spec : Prop :=
  ∀ n, P9991680772836492101.a n = A153978 (n + 1)

end A153978

/-!
# A153979: Prime sums of prime factors of composite(k)=A002808(k).

The programs for A153979, the canonical program `A153979.P6961115840848148548` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153979 has offset 1).

The definition of A153979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153979.P6961115840848148548

`p?[A001414(n+1)%(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153979

/-- `p?[A001414(n+1)%(n+1)]` -/
def P6961115840848148548.Spec : Prop :=
  ∀ n, P6961115840848148548.a n = A153979 (n + 1)

theorem P6961115840848148548.correct : P6961115840848148548.Spec := by
  intro n
  simp only [A153979, Nat.add_sub_cancel]

end A153979

/-! ## A153979.P11550066406314475825

`A001414(A046363(n+1))`
-/

namespace A153979.P11550066406314475825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A046363 (n + 1)).toNat

end

end A153979.P11550066406314475825

namespace A153979

/-- `A001414(A046363(n+1))` -/
def P11550066406314475825.Spec : Prop :=
  ∀ n, P11550066406314475825.a n = A153979 (n + 1)

end A153979

/-! ## A153979.P1925098537768873817

`p?[(A082344(n+1)-n)*A082343(n+1)]`
-/

namespace A153979.P1925098537768873817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A082344 (n + 1) - (n : ℤ)) * A082343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153979.P1925098537768873817

namespace A153979

/-- `p?[(A082344(n+1)-n)*A082343(n+1)]` -/
def P1925098537768873817.Spec : Prop :=
  ∀ n, P1925098537768873817.a n = A153979 (n + 1)

end A153979

/-! ## A153979.P3074661010664298975

`p?[A107463(n)]`
-/

namespace A153979.P3074661010664298975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153979.P3074661010664298975

namespace A153979

/-- `p?[A107463(n)]` -/
def P3074661010664298975.Spec : Prop :=
  ∀ n, P3074661010664298975.a n = A153979 (n + 1)

end A153979

/-! ## A153979.P6001568930791333739

`p?[A001414(A002808(n+1))]`
-/

namespace A153979.P6001568930791333739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153979.P6001568930791333739

namespace A153979

/-- `p?[A001414(A002808(n+1))]` -/
def P6001568930791333739.Spec : Prop :=
  ∀ n, P6001568930791333739.a n = A153979 (n + 1)

end A153979

/-! ## A153979.P2926667106757412136

`p?[A001414(A018252(n+1))]`
-/

namespace A153979.P2926667106757412136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153979.P2926667106757412136

namespace A153979

/-- `p?[A001414(A018252(n+1))]` -/
def P2926667106757412136.Spec : Prop :=
  ∀ n, P2926667106757412136.a n = A153979 (n + 1)

end A153979

/-! ## A153979.P2252046207532315529

`p?[A082343(record[A082344(n+1)])]`
-/

namespace A153979.P2252046207532315529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082344 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082343 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153979.P2252046207532315529

namespace A153979

/-- `p?[A082343(record[A082344(n+1)])]` -/
def P2252046207532315529.Spec : Prop :=
  ∀ n, P2252046207532315529.a n = A153979 (n + 1)

end A153979

/-! ## A153979.P734747453481860

`p?[A046343(n+1)]`
-/

namespace A153979.P734747453481860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153979.P734747453481860

namespace A153979

/-- `p?[A046343(n+1)]` -/
def P734747453481860.Spec : Prop :=
  ∀ n, P734747453481860.a n = A153979 (n + 1)

end A153979

/-! ## A153979.P2769399139424124487

`filter[A046343(n+1), A010051(#)]`
-/

namespace A153979.P2769399139424124487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A153979.P2769399139424124487

namespace A153979

/-- `filter[A046343(n+1), A010051(#)]` -/
def P2769399139424124487.Spec : Prop :=
  ∀ n, P2769399139424124487.a n = A153979 (n + 1)

end A153979

/-! ## A153979.P3877645298293944824

`filter[A046343(n+1), A080339(#)]`
-/

namespace A153979.P3877645298293944824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A153979.P3877645298293944824

namespace A153979

/-- `filter[A046343(n+1), A080339(#)]` -/
def P3877645298293944824.Spec : Prop :=
  ∀ n, P3877645298293944824.a n = A153979 (n + 1)

end A153979

/-! ## A153979.P12298941287392338188

`filter[A046343(n+1), A080545(#)]`
-/

namespace A153979.P12298941287392338188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A153979.P12298941287392338188

namespace A153979

/-- `filter[A046343(n+1), A080545(#)]` -/
def P12298941287392338188.Spec : Prop :=
  ∀ n, P12298941287392338188.a n = A153979 (n + 1)

end A153979

/-! ## A153979.P7091236463340257082

`filter[A046343(n+1), A171387(#)]`
-/

namespace A153979.P7091236463340257082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046343 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A153979.P7091236463340257082

namespace A153979

/-- `filter[A046343(n+1), A171387(#)]` -/
def P7091236463340257082.Spec : Prop :=
  ∀ n, P7091236463340257082.a n = A153979 (n + 1)

end A153979

/-! ## A153979.P9743596506239336697

`p?[A352167(n+1)]`
-/

namespace A153979.P9743596506239336697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153979.P9743596506239336697

namespace A153979

/-- `p?[A352167(n+1)]` -/
def P9743596506239336697.Spec : Prop :=
  ∀ n, P9743596506239336697.a n = A153979 (n + 1)

end A153979

/-! ## A153979.P862764235131964128

`p?[A061397(n+1)+A001414(n+1)]`
-/

namespace A153979.P862764235131964128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (n + 1) + A001414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153979.P862764235131964128

namespace A153979

/-- `p?[A061397(n+1)+A001414(n+1)]` -/
def P862764235131964128.Spec : Prop :=
  ∀ n, P862764235131964128.a n = A153979 (n + 1)

end A153979

/-! ## A153979.P5764337352784870729

`p?[A120007(n+1)+A001414(n+1)]`
-/

namespace A153979.P5764337352784870729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120007 (n + 1) + A001414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153979.P5764337352784870729

namespace A153979

/-- `p?[A120007(n+1)+A001414(n+1)]` -/
def P5764337352784870729.Spec : Prop :=
  ∀ n, P5764337352784870729.a n = A153979 (n + 1)

end A153979

/-! ## A153979.P5088867460918786695

`p?[(A002217(n+1)-1)*A001414(n+1)]`
-/

namespace A153979.P5088867460918786695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002217 (n + 1) - 1) * A001414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153979.P5088867460918786695

namespace A153979

/-- `p?[(A002217(n+1)-1)*A001414(n+1)]` -/
def P5088867460918786695.Spec : Prop :=
  ∀ n, P5088867460918786695.a n = A153979 (n + 1)

end A153979

/-! ## A153979.P14172233943938559478

`p?[A000607(A002217(n+1))*A001414(n+1)]`
-/

namespace A153979.P14172233943938559478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A002217 (n + 1)).toNat * A001414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153979.P14172233943938559478

namespace A153979

/-- `p?[A000607(A002217(n+1))*A001414(n+1)]` -/
def P14172233943938559478.Spec : Prop :=
  ∀ n, P14172233943938559478.a n = A153979 (n + 1)

end A153979

/-! ## A153979.P13968200347024084600

`p?[A001414(n+1)*A002217(A002217(n+1)²)]`
-/

namespace A153979.P13968200347024084600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) * A002217 (A002217 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153979.P13968200347024084600

namespace A153979

/-- `p?[A001414(n+1)*A002217(A002217(n+1)²)]` -/
def P13968200347024084600.Spec : Prop :=
  ∀ n, P13968200347024084600.a n = A153979 (n + 1)

end A153979

/-! ## A153979.P54118084016113630

`p?[A008472(n+1)+A280292(n+1)+A061397(n+1)]`
-/

namespace A153979.P54118084016113630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + (A280292 (n + 1) + A061397 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153979.P54118084016113630

namespace A153979

/-- `p?[A008472(n+1)+A280292(n+1)+A061397(n+1)]` -/
def P54118084016113630.Spec : Prop :=
  ∀ n, P54118084016113630.a n = A153979 (n + 1)

end A153979

/-! ## A153979.P8922850519981363512

`p?[A001414(n+1)*A082299(n+1)]`
-/

namespace A153979.P8922850519981363512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1) * A082299 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153979.P8922850519981363512

namespace A153979

/-- `p?[A001414(n+1)*A082299(n+1)]` -/
def P8922850519981363512.Spec : Prop :=
  ∀ n, P8922850519981363512.a n = A153979 (n + 1)

end A153979

/-!
# A153981: a(n) = 36*Fibonacci(2*n+1) - 4.

The programs for A153981, the canonical program `A153981.P8945687476767154746` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153981 has offset 0).

The definition of A153981 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `36*A000045(2*n+1)-4` (program `A153981.P8945687476767154746`, by `A153981.P8945687476767154746.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153981.P9767688916397588946

`3*a(n-1)-a(n-2)+4` with `a(0)=32, a(1)=68`
-/

namespace A153981.P9767688916397588946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [32, 68] fun n a =>
  3 * a (n - 1) - a (n - 2) + 4

end

end A153981.P9767688916397588946

namespace A153981

/-- `3*a(n-1)-a(n-2)+4` -/
def P9767688916397588946.Spec : Prop :=
  ∀ n, P9767688916397588946.a n = A153981 n

end A153981

/-! ## A153981.P6293661932439493707

`2*A153819(n)`
-/

namespace A153981.P6293661932439493707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153819 n

end

end A153981.P6293661932439493707

namespace A153981

/-- `2*A153819(n)` -/
def P6293661932439493707.Spec : Prop :=
  ∀ n, P6293661932439493707.a n = A153981 n

end A153981

/-! ## A153981.P427827425830871548

`4*A153873(n)`
-/

namespace A153981.P427827425830871548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A153873 n

end

end A153981.P427827425830871548

namespace A153981

/-- `4*A153873(n)` -/
def P427827425830871548.Spec : Prop :=
  ∀ n, P427827425830871548.a n = A153981 n

theorem P427827425830871548.correct : P427827425830871548.Spec := by
  intro n
  simp only [A153981, Nat.add_sub_cancel, A153981.P427827425830871548.a, A153981.P8945687476767154746.a, A000045, A000045.P11838749114346432762.a, A153873, A153873.P2413952631112389765.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153981

/-! ## A153981.P8945687476767154746

`36*A000045(2*n+1)-4`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A153981

/-- `36*A000045(2*n+1)-4` -/
def P8945687476767154746.Spec : Prop :=
  ∀ n, P8945687476767154746.a n = A153981 n

theorem P8945687476767154746.correct : P8945687476767154746.Spec := by
  intro n
  simp only [A153981]

end A153981

/-! ## A153981.P2567558155655525082

`2*(A022352(2*n+1)-2)`
-/

namespace A153981.P2567558155655525082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A022352 (2 * n + 1) - 2)

end

end A153981.P2567558155655525082

namespace A153981

/-- `2*(A022352(2*n+1)-2)` -/
def P2567558155655525082.Spec : Prop :=
  ∀ n, P2567558155655525082.a n = A153981 n

theorem P2567558155655525082.correct : P2567558155655525082.Spec := by
  intro n
  simp only [A153981, Nat.add_sub_cancel, A153981.P2567558155655525082.a, A153981.P8945687476767154746.a, A000045, A000045.P11838749114346432762.a, A022352, A022352.P10895253600584194026.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A153981

/-! ## A153981.P884978687982308234

`12*A022086(2*n+1)-4`
-/

namespace A153981.P884978687982308234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A022086 (2 * n + 1) - 4

end

end A153981.P884978687982308234

namespace A153981

/-- `12*A022086(2*n+1)-4` -/
def P884978687982308234.Spec : Prop :=
  ∀ n, P884978687982308234.a n = A153981 n

end A153981

/-! ## A153981.P4741326631671683102

`4*(Δ[9*A000045(2*n)]-1)`
-/

namespace A153981.P4741326631671683102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n - 1)

end

end A153981.P4741326631671683102

namespace A153981

/-- `4*(Δ[9*A000045(2*n)]-1)` -/
def P4741326631671683102.Spec : Prop :=
  ∀ n, P4741326631671683102.a n = A153981 n

end A153981

/-! ## A153981.P11006316174506034977

`2*(A155110(n)+A153388(n))`
-/

namespace A153981.P11006316174506034977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155110 n + A153388 n)

end

end A153981.P11006316174506034977

namespace A153981

/-- `2*(A155110(n)+A153388(n))` -/
def P11006316174506034977.Spec : Prop :=
  ∀ n, P11006316174506034977.a n = A153981 n

end A153981

/-! ## A153981.P9157568517150732290

`A153819(A005843(n)/2)+A153819(n)`
-/

namespace A153981.P9157568517150732290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153819 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A153819 n

end

end A153981.P9157568517150732290

namespace A153981

/-- `A153819(A005843(n)/2)+A153819(n)` -/
def P9157568517150732290.Spec : Prop :=
  ∀ n, P9157568517150732290.a n = A153981 n

end A153981

/-! ## A153981.P320277200922241515

`A153819(n)+A153873(n)+A153873(n)`
-/

namespace A153981.P320277200922241515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153819 n + (A153873 n + A153873 n)

end

end A153981.P320277200922241515

namespace A153981

/-- `A153819(n)+A153873(n)+A153873(n)` -/
def P320277200922241515.Spec : Prop :=
  ∀ n, P320277200922241515.a n = A153981 n

end A153981

/-! ## A153981.P8922509962631593441

`A153819(A005843(n)-n)+A153819(n)`
-/

namespace A153981.P8922509962631593441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153819 (A005843 n - (n : ℤ)).toNat + A153819 n

end

end A153981.P8922509962631593441

namespace A153981

/-- `A153819(A005843(n)-n)+A153819(n)` -/
def P8922509962631593441.Spec : Prop :=
  ∀ n, P8922509962631593441.a n = A153981 n

end A153981

/-! ## A153981.P2841948903250320296

`A153819(n)²/A153873(n)`
-/

namespace A153981.P2841948903250320296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153819 n ^ 2 : ℚ) / (A153873 n : ℚ)

end

end A153981.P2841948903250320296

namespace A153981

/-- `A153819(n)²/A153873(n)` -/
def P2841948903250320296.Spec : Prop :=
  ∀ n, P2841948903250320296.a n = (A153981 n : ℚ)

end A153981

/-!
# A153982: Number of planar n X n X n binary triangular grids symmetric under 120 degree rotation with every one adjacent to exactly 1 other one.

The programs for A153982, there is no canonical definition to state claims against.
-/

/-! ## A153982.P7500527337155137433

`A332073(A072168(n))`
-/

namespace A153982.P7500527337155137433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332073 (A072168 n).toNat

end

end A153982.P7500527337155137433

/-! ## A153982.P17688522620791660872

`A143999(or(7, A135582(n)))`
-/

namespace A153982.P17688522620791660872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143999 (Int.lor 7 (A135582 n)).toNat

end

end A153982.P17688522620791660872

/-! ## A153982.P4848033910910886335

`A025452(or(12, A077291(n)))`
-/

namespace A153982.P4848033910910886335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025452 (Int.lor 12 (A077291 n)).toNat

end

end A153982.P4848033910910886335

/-! ## A153982.P1798033776604684253

`A324078(∑[A324065(n)]+2)`
-/

namespace A153982.P1798033776604684253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324065 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324078 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A153982.P1798033776604684253

/-! ## A153982.P2129350343447461447

`A335548(n)+A241900(A337464(n))`
-/

namespace A153982.P2129350343447461447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335548 n + A241900 (A337464 n).toNat

end

end A153982.P2129350343447461447

/-!
# A153985: Number of planar n X n X n binary triangular grids with every one adjacent to exactly 1 other one.

The programs for A153985, there is no canonical definition to state claims against.
-/

/-! ## A153985.P47466479731527982

`A327146(n)+floor(10^(n/5))²`
-/

namespace A153985.P47466479731527982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327146 n + ⌊(10 : ℝ) ^ ((n : ℚ) / 5 : ℝ)⌋ ^ 2

end

end A153985.P47466479731527982

/-! ## A153985.P4735196845917188946

`A071068(A100404(n))+n`
-/

namespace A153985.P4735196845917188946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071068 (A100404 n).toNat + (n : ℤ)

end

end A153985.P4735196845917188946

/-!
# A153986: Number of planar n X n X n binary triangular grids symmetric under 120 degree rotation with every one adjacent to exactly 2 other ones.

The programs for A153986, there is no canonical definition to state claims against.
-/

/-! ## A153986.P10454310390273160455

`A211990(∑[a(n-2)+10])` with `a(0)=2, a(1)=0, a(2)=1, a(3)=4, a(4)=0, a(5)=2`
-/

namespace A153986.P10454310390273160455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1, 4, 0, 2] fun n f1 =>
  f1 (n - 2) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211990 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A153986.P10454310390273160455

/-! ## A153986.P3629074902198694810

`A360106(A374678(n))`
-/

namespace A153986.P3629074902198694810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360106 (A374678 n).toNat

end

end A153986.P3629074902198694810

/-! ## A153986.P10801929735582473992

`A105224(∑[∑[A105236(n+3)]])`
-/

namespace A153986.P10801929735582473992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105236 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A153986.P10801929735582473992

/-! ## A153986.P5384042547292303385

`A254573(or(A057405(n), A287280(n)))`
-/

namespace A153986.P5384042547292303385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254573 (Int.lor (A057405 n) (A287280 n)).toNat

end

end A153986.P5384042547292303385

/-!
# A153989: Number of planar n X n X n binary triangular grids with every one adjacent to exactly 2 other ones.

The programs for A153989, there is no canonical definition to state claims against.
-/

/-! ## A153989.P15930857715207246225

`A262626(n+1)+A054404(n!)`
-/

namespace A153989.P15930857715207246225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262626 (n + 1) + A054404 (Nat.factorial n)

end

end A153989.P15930857715207246225

/-! ## A153989.P15593813141477656918

`A038722(A111363(a(n-1))+1)-1` with `a(0)=1, a(1)=1`
-/

namespace A153989.P15593813141477656918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A038722 (A111363 (a (n - 1)).toNat + 1).toNat - 1

end

end A153989.P15593813141477656918

/-! ## A153989.P631142776106154905

`A001222(A162435(n))+A000166(n)`
-/

namespace A153989.P631142776106154905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A162435 n).toNat + A000166 n

end

end A153989.P631142776106154905

/-!
# A153990: Period 6: repeat [1, 2, 5, 4, 7, 8].

The programs for A153990, the canonical program `A153990.P8826007654690186034` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153990 has offset 0).

The definition of A153990 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A153990.anchor (n : ℕ) : A153990 n = (([1, 2, 5, 4, 7, 8].getD (n % 6) 0 : ℕ) : ℤ)` in `Proof.A153.A153990`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153990.P8826007654690186034

`a(n-6)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=4, a(4)=7, a(5)=8`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153990

/-- `a(n-6)` -/
def P8826007654690186034.Spec : Prop :=
  ∀ n, (P8826007654690186034.a n : ℤ) = A153990 n

theorem P8826007654690186034.correct : P8826007654690186034.Spec := by
  intro n
  simp only [A153990]

end A153990

/-!
# A153991: Number of planar n X n X n binary triangular grids symmetric under 120 degree rotation with no more than 10 ones in any 5 X 5 X 5 subtriangle.

The programs for A153991, there is no canonical definition to state claims against.
-/

/-! ## A153991.P12713837716814179282

`A379047(A227616(n))`
-/

namespace A153991.P12713837716814179282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379047 (A227616 n).toNat

end

end A153991.P12713837716814179282

/-! ## A153991.P7726718997413615181

`A054240(A339781(n)+A078937(n))`
-/

namespace A153991.P7726718997413615181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054240 (A339781 n + A078937 n).toNat

end

end A153991.P7726718997413615181

/-! ## A153991.P7080870301654025662

`A327186(∏[A007918(n)])+A327186(n)`
-/

namespace A153991.P7080870301654025662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327186 (∏ j ∈ Finset.range (n + 1), f1 j).toNat + A327186 n

end

end A153991.P7080870301654025662

/-!
# A153992: Number of planar n X n X n binary triangular grids with mirror symmetry about one altitude with no more than 10 ones in any 5 X 5 X 5 subtriangle.

The programs for A153992, there is no canonical definition to state claims against.
-/

/-! ## A153992.P7708887337034328103

`A364346(or(xor(n, n+1)+1, ∑[n]+n²))`
-/

namespace A153992.P7708887337034328103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364346 (Nat.lor (Nat.xor n (n + 1) + 1) (∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2))

end

end A153992.P7708887337034328103

/-! ## A153992.P223311987623568206

`A354220(A004645(n))`
-/

namespace A153992.P223311987623568206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354220 (A004645 n).toNat

end

end A153992.P223311987623568206

/-!
# A153994: Number of planar n X n X n binary triangular grids symmetric under 120 degree rotation with no more than 11 ones in any 5 X 5 X 5 subtriangle.

The programs for A153994, there is no canonical definition to state claims against.
-/

/-! ## A153994.P16177824896994106320

`A086415(A343350(n)+n+2)`
-/

namespace A153994.P16177824896994106320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086415 (A343350 n + (n + 2 : ℤ)).toNat

end

end A153994.P16177824896994106320

/-! ## A153994.P3469829304789554520

`Δ[record[A241092(A117995(n+1))]]`
-/

namespace A153994.P3469829304789554520
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241092 (A117995 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153994.P3469829304789554520

/-! ## A153994.P12049700932350596223

`A081857(n)+A040324(A273398(n))`
-/

namespace A153994.P12049700932350596223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081857 n + A040324 (A273398 n).toNat

end

end A153994.P12049700932350596223

/-!
# A153995: Number of planar n X n X n binary triangular grids with mirror symmetry about one altitude with no more than 11 ones in any 5 X 5 X 5 subtriangle.

The programs for A153995, there is no canonical definition to state claims against.
-/

/-! ## A153995.P14371853793636169860

`A323902(A000045(3*n+1))+A124562(n)`
-/

namespace A153995.P14371853793636169860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323902 (A000045 (3 * n + 1)).toNat + A124562 n

end

end A153995.P14371853793636169860

/-! ## A153995.P2833121425942441265

`record[A000005(n!)*∏{e}[n+1, 2^#]]`
-/

namespace A153995.P2833121425942441265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.factorial n) * ((∏ p ∈ Nat.primeFactors (f2 n), 2 ^ Nat.factorization (f2 n) p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153995.P2833121425942441265

/-!
# A153996: Number of planar n X n X n binary triangular grids symmetric both under 120 degree rotation and reflection with no more than 11 ones in any 5 X 5 X 5 subtriangle.

The programs for A153996, there is no canonical definition to state claims against.
-/

/-! ## A153996.P12486080390392809321

`A317840(A218552(xor(1, p?[2*n+1])/2))+1`
-/

namespace A153996.P12486080390392809321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317840 (A218552 (SequenceMachineLib.roundAway ((Nat.xor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2)).toNat).toNat + 1

end

end A153996.P12486080390392809321

/-!
# A153997: Number of planar n X n X n binary triangular grids symmetric under 120 degree rotation with no more than 12 ones in any 5 X 5 X 5 subtriangle.

The programs for A153997, there is no canonical definition to state claims against.
-/

/-! ## A153997.P11187194653584628231

`A238890(A150699(n))`
-/

namespace A153997.P11187194653584628231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238890 (A150699 n).toNat

end

end A153997.P11187194653584628231

/-! ## A153997.P17516296274920604920

`A172471(A109529(∑[n]))`
-/

namespace A153997.P17516296274920604920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A109529 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A153997.P17516296274920604920

/-! ## A153997.P16396452221150994910

`A002850(A002872(n)+A002783(n))`
-/

namespace A153997.P16396452221150994910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002850 (A002872 n + A002783 n).toNat

end

end A153997.P16396452221150994910

/-!
# A153998: Number of planar n X n X n binary triangular grids with mirror symmetry about one altitude with no more than 12 ones in any 5 X 5 X 5 subtriangle.

The programs for A153998, there is no canonical definition to state claims against.
-/

/-! ## A153998.P84425983772997613

`A333778(∑[A214899(n)])`
-/

namespace A153998.P84425983772997613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333778 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A153998.P84425983772997613

/-! ## A153998.P11253441382923532862

`A333778(record[Δ[A358521(2*n+3)]])`
-/

namespace A153998.P11253441382923532862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358521 (2 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333778 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A153998.P11253441382923532862

/-!
# A153999: Number of planar n X n X n binary triangular grids symmetric both under 120 degree rotation and reflection with no more than 12 ones in any 5 X 5 X 5 subtriangle.

The programs for A153999, there is no canonical definition to state claims against.
-/

/-! ## A153999.P16370614903910325341

`A172471(C(A333147(n+2), n))`
-/

namespace A153999.P16370614903910325341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (Nat.choose (A333147 (n + 2)).toNat n)

end

end A153999.P16370614903910325341

/-! ## A153999.P10475450568807961429

`A316706(n)+A074206(A002002(n))`
-/

namespace A153999.P10475450568807961429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316706 n + A074206 (A002002 n).toNat

end

end A153999.P10475450568807961429

/-! ## A153999.P4740234821383078401

`A120126(A093919(n+1)+A088812(n))`
-/

namespace A153999.P4740234821383078401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120126 (A093919 (n + 1) + A088812 n).toNat

end

end A153999.P4740234821383078401

