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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A153000: Toothpick sequence in the first quadrant.

The programs for A153000, there is no canonical definition to state claims against.
-/

/-! ## A153000.P8036306025900621229

`(A152998(n+1)-1)/2`
-/

namespace A153000.P8036306025900621229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152998 (n + 1) - 1 : ℚ) / 2

end

end A153000.P8036306025900621229

/-! ## A153000.P13488211621234150587

`(A139250(n+2)-3)/4`
-/

namespace A153000.P13488211621234150587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139250 (n + 2) - 3 : ℚ) / 4

end

end A153000.P13488211621234150587

/-! ## A153000.P15514335314299775401

`(A187220(n+3)-7)/8`
-/

namespace A153000.P15514335314299775401
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187220 (n + 3) - 7 : ℚ) / 8

end

end A153000.P15514335314299775401

/-! ## A153000.P16643404785282787944

`A153003(n+1)-A152998(n+1)`
-/

namespace A153000.P16643404785282787944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153003 (n + 1) - A152998 (n + 1)

end

end A153000.P16643404785282787944

/-! ## A153000.P9567454266285779158

`A139250(n+2)-A153003(n+1)-2`
-/

namespace A153000.P9567454266285779158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (n + 2) - A153003 (n + 1) - 2

end

end A153000.P9567454266285779158

/-! ## A153000.P16431687238937392119

`floor(A152998(n+1)/2)`
-/

namespace A153000.P16431687238937392119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A152998 (n + 1) : ℚ) / 2⌋

end

end A153000.P16431687238937392119

/-! ## A153000.P4352950240070683761

`floor(A139250(n+2)/4)`
-/

namespace A153000.P4352950240070683761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139250 (n + 2) : ℚ) / 4⌋

end

end A153000.P4352950240070683761

/-! ## A153000.P1810761469169990584

`∑[floor(Δ[A152998(n)/2])]`
-/

namespace A153000.P1810761469169990584
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152998 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153000.P1810761469169990584

/-! ## A153000.P2553229266462636293

`∑[ceil(A162777(n+1)/2)]`
-/

namespace A153000.P2553229266462636293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A162777 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153000.P2553229266462636293

/-! ## A153000.P7912723220742160616

`floor(A266530(2*n+5)/4)`
-/

namespace A153000.P7912723220742160616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266530 (2 * n + 5) : ℚ) / 4⌋

end

end A153000.P7912723220742160616

/-! ## A153000.P1157463758594812176

`A153006(n+1)+A152998(n)-A139250(n+1)`
-/

namespace A153000.P1157463758594812176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 (n + 1) + (A152998 n - A139250 (n + 1))

end

end A153000.P1157463758594812176

/-! ## A153000.P10450034998435572557

`A152998(n+1)+A152998(n)-A153006(n+1)`
-/

namespace A153000.P10450034998435572557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 (n + 1) + (A152998 n - A153006 (n + 1))

end

end A153000.P10450034998435572557

/-! ## A153000.P12893733336493619364

`A139250(n+1)+A162777(n+1)-A153006(n+1)`
-/

namespace A153000.P12893733336493619364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 (n + 1) + (A162777 (n + 1) - A153006 (n + 1))

end

end A153000.P12893733336493619364

/-! ## A153000.P6582170902528665593

`∑[A152978(n+1)]-A152978(n+1)`
-/

namespace A153000.P6582170902528665593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152978 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A152978 (n + 1)

end

end A153000.P6582170902528665593

/-! ## A153000.P9198745728628098714

`∑[A004526(Δ[A152998(n)])]`
-/

namespace A153000.P9198745728628098714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153000.P9198745728628098714

/-! ## A153000.P1132780166729456341

`∑[A025480(Δ[A152998(n)])]`
-/

namespace A153000.P1132780166729456341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153000.P1132780166729456341

/-! ## A153000.P11366728245361497231

`∑[A029578(Δ[A152998(n)])]`
-/

namespace A153000.P11366728245361497231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153000.P11366728245361497231

/-! ## A153000.P10483036828612718206

`∑[A220096(Δ[A152998(n)])]`
-/

namespace A153000.P10483036828612718206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220096 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153000.P10483036828612718206

/-! ## A153000.P3563783395258733477

`∑[A002265(A139251(n+2))]`
-/

namespace A153000.P3563783395258733477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A139251 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153000.P3563783395258733477

/-! ## A153000.P15404976872338403956

`A014682(A152998(n+1)-1)`
-/

namespace A153000.P15404976872338403956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A152998 (n + 1) - 1).toNat

end

end A153000.P15404976872338403956

/-!
# A153001: Rows of A152980 when written as a triangle converge to this sequence.

The programs for A153001, there is no canonical definition to state claims against.
-/

/-! ## A153001.P8471872270246270657

`A152980(128+n)`
-/

namespace A153001.P8471872270246270657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 (128 + n)

end

end A153001.P8471872270246270657

/-! ## A153001.P5619551503112287240

`Δ[A153006((32/2)²+n)]`
-/

namespace A153001.P5619551503112287240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 (SequenceMachineLib.roundAway (((32 : ℚ) / 2) ^ 2 + (n : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153001.P5619551503112287240

/-! ## A153001.P11961382821989360479

`abs(Δ[(-1)^n*A151555(n)])`
-/

namespace A153001.P11961382821989360479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A151555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A153001.P11961382821989360479

/-! ## A153001.P396193983995248244

`A147646(2*lt[xor(n, 2*n), 2*n]-(n+1))/4`
-/

namespace A153001.P396193983995248244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147646 (2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n - (n + 1)) : ℚ) / 4

end

end A153001.P396193983995248244

/-! ## A153001.P2385460871052627764

`A159785(A004757(n+1))/3`
-/

namespace A153001.P2385460871052627764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159785 (A004757 (n + 1)).toNat : ℚ) / 3

end

end A153001.P2385460871052627764

/-! ## A153001.P10255772429408907845

`A151555(n+1)+A151555(n)`
-/

namespace A153001.P10255772429408907845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151555 (n + 1) + A151555 n

end

end A153001.P10255772429408907845

/-! ## A153001.P42423393993861107

`A159785(n+1)+Δ[Δ[A153006(n)]]`
-/

namespace A153001.P42423393993861107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159785 (n + 1) + (f1 (n + 1) - f1 n)

end

end A153001.P42423393993861107

/-! ## A153001.P7736145004213736089

`A151550(n+1)+A151688(n)+A151550(n)`
-/

namespace A153001.P7736145004213736089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151550 (n + 1) + (A151688 n + A151550 n)

end

end A153001.P7736145004213736089

/-! ## A153001.P1076488614188604779

`A152968(n+1)+A152978(n+1)+A151688(n)`
-/

namespace A153001.P1076488614188604779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152968 (n + 1) + (A152978 (n + 1) + A151688 n)

end

end A153001.P1076488614188604779

/-! ## A153001.P16884344822965868521

`A147646(n+1)+A152978(n+1)-A139251(n+1)`
-/

namespace A153001.P16884344822965868521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147646 (n + 1) + (A152978 (n + 1) - A139251 (n + 1))

end

end A153001.P16884344822965868521

/-!
# A153002: Primes in toothpick sequence A153000.

The programs for A153002, there is no canonical definition to state claims against.
-/

/-! ## A153002.P10637112117514313617

`p?[floor(A152998(n)/2)]`
-/

namespace A153002.P10637112117514313617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A152998 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153002.P10637112117514313617

/-! ## A153002.P5253069607829739958

`p?[floor(A139250(n)/4)]`
-/

namespace A153002.P5253069607829739958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139250 n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153002.P5253069607829739958

/-! ## A153002.P13859138356256381411

`p?[floor(A160164(n)/8)]`
-/

namespace A153002.P13859138356256381411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160164 n : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153002.P13859138356256381411

/-! ## A153002.P13919150952217204872

`p?[floor(A187220(n)/8)]`
-/

namespace A153002.P13919150952217204872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A187220 n : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153002.P13919150952217204872

/-! ## A153002.P11734988635819612690

`p?[ceil((∑[A139251(n)]+1)/4)-1]`
-/

namespace A153002.P11734988635819612690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℤ) : ℚ) / 4⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153002.P11734988635819612690

/-! ## A153002.P4040047703639939204

`p?[A153000(n)]`
-/

namespace A153002.P4040047703639939204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153002.P4040047703639939204

/-! ## A153002.P6616062346542343052

`p?[∑[A152978(n+1)]]`
-/

namespace A153002.P6616062346542343052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152978 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153002.P6616062346542343052

/-! ## A153002.P16735790669731709812

`p?[∑[A002265(A139251(n))]]`
-/

namespace A153002.P16735790669731709812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A139251 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153002.P16735790669731709812

/-! ## A153002.P15777501773577828645

`record[A006530(A153000(n+2))]`
-/

namespace A153002.P15777501773577828645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A153000 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153002.P15777501773577828645

/-! ## A153002.P8729641326125239644

`filter[A153000(n+1), A010051(#)]`
-/

namespace A153002.P8729641326125239644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153000 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A153002.P8729641326125239644

/-!
# A153003: Toothpick sequence in the first three quadrants.

The programs for A153003, there is no canonical definition to state claims against.
-/

/-! ## A153003.P12924524606806254174

`floor(3/2*A152998(n))`
-/

namespace A153003.P12924524606806254174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A152998 n : ℚ)⌋

end

end A153003.P12924524606806254174

/-! ## A153003.P88941491762766720

`floor(3*(Δ[A160424(n)]-1)/4)`
-/

namespace A153003.P88941491762766720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * (f1 (n + 1) - f1 n - 1) : ℚ) / 4⌋

end

end A153003.P88941491762766720

/-! ## A153003.P9697126429320801193

`A032766(A152998(n))`
-/

namespace A153003.P9697126429320801193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A152998 n).toNat

end

end A153003.P9697126429320801193

/-! ## A153003.P16888532495545919676

`A187321(Δ[A160424(n)])`
-/

namespace A153003.P16888532495545919676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187321 (f1 (n + 1) - f1 n).toNat

end

end A153003.P16888532495545919676

/-! ## A153003.P17912977242292274105

`A047237(A152998(n)+1)`
-/

namespace A153003.P17912977242292274105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047237 (A152998 n + 1).toNat

end

end A153003.P17912977242292274105

/-! ## A153003.P2463925443296570229

`A187321(A139250(n+1))`
-/

namespace A153003.P2463925443296570229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187321 (A139250 (n + 1)).toNat

end

end A153003.P2463925443296570229

/-! ## A153003.P2224565528415591115

`A057353(2*A152998(n))`
-/

namespace A153003.P2224565528415591115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * A152998 n).toNat

end

end A153003.P2224565528415591115

/-! ## A153003.P15688354096526774201

`A187321(2*A152998(n))`
-/

namespace A153003.P15688354096526774201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187321 (2 * A152998 n).toNat

end

end A153003.P15688354096526774201

/-! ## A153003.P6283618840622876696

`A004524(3*A152998(n))`
-/

namespace A153003.P6283618840622876696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (3 * A152998 n).toNat

end

end A153003.P6283618840622876696

/-! ## A153003.P6760888072616442170

`A004526(3*A152998(n))`
-/

namespace A153003.P6760888072616442170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A152998 n).toNat

end

end A153003.P6760888072616442170

/-!
# A153004: First differences of toothpick numbers A153003.

The programs for A153004, there is no canonical definition to state claims against.
-/

/-! ## A153004.P1631801615191034767

`Δ[floor(3/2*A152998(n))]`
-/

namespace A153004.P1631801615191034767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A152998 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153004.P1631801615191034767

/-! ## A153004.P7337411235063414656

`floor(3/2*A152968(n+1))`
-/

namespace A153004.P7337411235063414656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A152968 (n + 1) : ℚ)⌋

end

end A153004.P7337411235063414656

/-! ## A153004.P6685094511988261519

`floor(3*A139251(n+2)/4)`
-/

namespace A153004.P6685094511988261519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A139251 (n + 2) : ℚ) / 4⌋

end

end A153004.P6685094511988261519

/-! ## A153004.P13472106697437325200

`Δ[ceil(3*((A139250(n+1)/2-3)/2-2))]`
-/

namespace A153004.P13472106697437325200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * (((A139250 (n + 1) : ℚ) / 2 - 3) / 2 - 2)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153004.P13472106697437325200

/-! ## A153004.P6151970121539594006

`A006368(Δ[A152998(n)])`
-/

namespace A153004.P6151970121539594006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (f1 (n + 1) - f1 n).toNat

end

end A153004.P6151970121539594006

/-! ## A153004.P9131121808235958493

`A032766(Δ[A152998(n)])`
-/

namespace A153004.P9131121808235958493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (f1 (n + 1) - f1 n).toNat

end

end A153004.P9131121808235958493

/-! ## A153004.P4654023820720669887

`A006368(A152968(n+1))`
-/

namespace A153004.P4654023820720669887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A152968 (n + 1)).toNat

end

end A153004.P4654023820720669887

/-! ## A153004.P10710084010122323437

`A114119(A162777(n+1))`
-/

namespace A153004.P10710084010122323437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114119 (A162777 (n + 1)).toNat

end

end A153004.P10710084010122323437

/-! ## A153004.P6510023945422904035

`abs(A280167(Δ[A152998(n)]))`
-/

namespace A153004.P6510023945422904035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A280167 (f1 (n + 1) - f1 n).toNat|

end

end A153004.P6510023945422904035

/-! ## A153004.P17841811118541894587

`A187321(Δ[Δ[A160424(n)]])`
-/

namespace A153004.P17841811118541894587
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160424 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187321 (f1 (n + 1) - f1 n).toNat

end

end A153004.P17841811118541894587

/-!
# A153005: Primes in toothpick sequence A153003.

The programs for A153005, there is no canonical definition to state claims against.
-/

/-! ## A153005.P1995251995884122398

`p?[floor(3/2*A152998(n))]`
-/

namespace A153005.P1995251995884122398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A152998 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153005.P1995251995884122398

/-! ## A153005.P5192709022674797373

`p?[3*∑[A152978(n+1)]+1]`
-/

namespace A153005.P5192709022674797373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152978 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153005.P5192709022674797373

/-! ## A153005.P9741824009213580318

`p?[A014682(A152998(n))-1]`
-/

namespace A153005.P9741824009213580318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A152998 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153005.P9741824009213580318

/-! ## A153005.P14390302681031398116

`p?[A162777(n)+A153006(n)]`
-/

namespace A153005.P14390302681031398116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162777 n + A153006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153005.P14390302681031398116

/-! ## A153005.P4973864485561552807

`p?[A153000(n)+A152998(n+1)]`
-/

namespace A153005.P4973864485561552807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153000 n + A152998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153005.P4973864485561552807

/-!
# A153006: Toothpick sequence starting at the outside corner of an infinite square from which protrudes a half toothpick.

The programs for A153006, there is no canonical definition to state claims against.
-/

/-! ## A153006.P3931140532263080330

`∑[A152980(n)]-A152980(n)`
-/

namespace A153006.P3931140532263080330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A152980 n

end

end A153006.P3931140532263080330

/-! ## A153006.P18034496510938060729

`(A152998(n)+A139250(n))/2`
-/

namespace A153006.P18034496510938060729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152998 n + A139250 n : ℚ) / 2

end

end A153006.P18034496510938060729

/-! ## A153006.P7903722876102287461

`(A152998(n)+∑[A139251(n)])/2`
-/

namespace A153006.P7903722876102287461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A152998 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A153006.P7903722876102287461

/-! ## A153006.P6890897586827009391

`(A160164(n)+A139250(n+1)-1)/4`
-/

namespace A153006.P6890897586827009391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160164 n + A139250 (n + 1) - 1 : ℚ) / 4

end

end A153006.P6890897586827009391

/-! ## A153006.P14665023308276214038

`A159795(n)/4`
-/

namespace A153006.P14665023308276214038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159795 n : ℚ) / 4

end

end A153006.P14665023308276214038

/-! ## A153006.P9065511727289954803

`A159793(n)/2`
-/

namespace A153006.P9065511727289954803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159793 n : ℚ) / 2

end

end A153006.P9065511727289954803

/-! ## A153006.P4896141704162326810

`A159794(n)/3`
-/

namespace A153006.P4896141704162326810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A159794 n : ℚ) / 3

end

end A153006.P4896141704162326810

/-! ## A153006.P14681962919731592112

`∑[n]-A153007(n)`
-/

namespace A153006.P14681962919731592112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A153007 n

end

end A153006.P14681962919731592112

/-! ## A153006.P1313025262838279625

`(A194811(n)-1)/4`
-/

namespace A153006.P1313025262838279625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A194811 n - 1 : ℚ) / 4

end

end A153006.P1313025262838279625

/-! ## A153006.P349668626936504887

`A160166(n)+A001318(n)`
-/

namespace A153006.P349668626936504887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160166 n + A001318 n

end

end A153006.P349668626936504887

/-! ## A153006.P1710897312698312307

`A159794(n)-A159793(n)`
-/

namespace A153006.P1710897312698312307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159794 n - A159793 n

end

end A153006.P1710897312698312307

/-! ## A153006.P6946113010672714919

`A159795(n)-A159794(n)`
-/

namespace A153006.P6946113010672714919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159795 n - A159794 n

end

end A153006.P6946113010672714919

/-! ## A153006.P2746785547340853586

`A160166(n)+∑[n-A142150(n)]`
-/

namespace A153006.P2746785547340853586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160166 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153006.P2746785547340853586

/-! ## A153006.P16257713099610923690

`A000326(n+1)-(A153007(n)+(n+1)²)`
-/

namespace A153006.P16257713099610923690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (n + 1) - (A153007 n + ((n + 1) ^ 2 : ℤ))

end

end A153006.P16257713099610923690

/-! ## A153006.P15343148770939365229

`A002265(n)+A082643(n)-A153007(n)`
-/

namespace A153006.P15343148770939365229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 n + (A082643 n - A153007 n)

end

end A153006.P15343148770939365229

/-! ## A153006.P8118614383898881157

`A155753(n+1)-(A153057(n)+A153007(n))`
-/

namespace A153006.P8118614383898881157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155753 (n + 1) - (A153057 n + A153007 n)

end

end A153006.P8118614383898881157

/-! ## A153006.P17645391715303408084

`A183139(n+1)+A183140(n)-A153007(n)`
-/

namespace A153006.P17645391715303408084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183139 (n + 1) + (A183140 n - A153007 n)

end

end A153006.P17645391715303408084

/-! ## A153006.P9753575490404774403

`A000567(n+1)-(A153007(n)+A000566(n+1))`
-/

namespace A153006.P9753575490404774403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (n + 1) - (A153007 n + A000566 (n + 1))

end

end A153006.P9753575490404774403

/-! ## A153006.P9579312038683072886

`A034953(n+1)-(A161624(n+1)+A153007(n))`
-/

namespace A153006.P9579312038683072886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034953 (n + 1) - (A161624 (n + 1) + A153007 n)

end

end A153006.P9579312038683072886

/-! ## A153006.P8456940528989869546

`A000217(n)+A160166(n)-A000217(A004526(n))`
-/

namespace A153006.P8456940528989869546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A160166 n - A000217 (A004526 n).toNat)

end

end A153006.P8456940528989869546

/-!
# A153007: Triangular number A000217(n) minus toothpick number A153006(n).

The programs for A153007, there is no canonical definition to state claims against.
-/

/-! ## A153007.P15501943171169207050

`A000217(n)-A153006(n)`
-/

namespace A153007.P15501943171169207050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A153006 n

end

end A153007.P15501943171169207050

/-! ## A153007.P3073847784148470861

`∑[n]-A159793(n)/2`
-/

namespace A153007.P3073847784148470861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) - (A159793 n : ℚ) / 2

end

end A153007.P3073847784148470861

/-! ## A153007.P12639565740843206774

`∑[A142150(n)]-A160166(n)`
-/

namespace A153007.P12639565740843206774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A160166 n

end

end A153007.P12639565740843206774

/-! ## A153007.P12344771874109429354

`∑[n]%A153006(A028310(n))`
-/

namespace A153007.P12344771874109429354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A153006 (A028310 n).toNat)

end

end A153007.P12344771874109429354

/-! ## A153007.P3815082107405296680

`A000124(n)-(A153006(n)+1)`
-/

namespace A153007.P3815082107405296680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (A153006 n + 1)

end

end A153007.P3815082107405296680

/-! ## A153007.P9969247108618293681

`A152980(n)+∑[n-A152980(n)]`
-/

namespace A153007.P9969247108618293681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A152980 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153007.P9969247108618293681

/-! ## A153007.P13908199268885292067

`A000217(A004526(n))-A160166(n)`
-/

namespace A153007.P13908199268885292067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004526 n).toNat - A160166 n

end

end A153007.P13908199268885292067

/-! ## A153007.P17140573711501693835

`A000217(n)-(A160166(n)+A001318(n))`
-/

namespace A153007.P17140573711501693835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - (A160166 n + A001318 n)

end

end A153007.P17140573711501693835

/-! ## A153007.P15251462794884190223

`A139250(n)-(A159790(n)+A153006(n))`
-/

namespace A153007.P15251462794884190223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n - (A159790 n + A153006 n)

end

end A153007.P15251462794884190223

/-!
# A153008: Catalan number A000108(n) minus Motzkin number A001006(n).

The programs for A153008, the canonical program `A153008.P2284221830349422742` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153008 has offset 0).

The definition of A153008 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A153008.P2284221830349422742

`A000108(n)-A001006(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A153008

/-- `A000108(n)-A001006(n)` -/
def P2284221830349422742.Spec : Prop :=
  ∀ n, P2284221830349422742.a n = A153008 n

theorem P2284221830349422742.correct : P2284221830349422742.Spec := by
  intro n
  simp only [A153008]

end A153008

/-! ## A153008.P7220932294100221399

`A125107(n)-A377659(n)`
-/

namespace A153008.P7220932294100221399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125107 n - A377659 n

end

end A153008.P7220932294100221399

namespace A153008

/-- `A125107(n)-A377659(n)` -/
def P7220932294100221399.Spec : Prop :=
  ∀ n, P7220932294100221399.a n = A153008 n

end A153008

/-! ## A153008.P8377904488238880444

`abs(A168491(n))-A001006(n)`
-/

namespace A153008.P8377904488238880444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168491 n| - A001006 n

end

end A153008.P8377904488238880444

namespace A153008

/-- `abs(A168491(n))-A001006(n)` -/
def P8377904488238880444.Spec : Prop :=
  ∀ n, P8377904488238880444.a n = A153008 n

end A153008

/-! ## A153008.P15093169941988212231

`A000108(n)-Δ[A097332(n)]`
-/

namespace A153008.P15093169941988212231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - (f1 (n + 1) - f1 n)

end

end A153008.P15093169941988212231

namespace A153008

/-- `A000108(n)-Δ[A097332(n)]` -/
def P15093169941988212231.Spec : Prop :=
  ∀ n, P15093169941988212231.a n = A153008 n

end A153008

/-! ## A153008.P15800326740383828099

`A120588(n+1)-A001006(n)`
-/

namespace A153008.P15800326740383828099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) - A001006 n

end

end A153008.P15800326740383828099

namespace A153008

/-- `A120588(n+1)-A001006(n)` -/
def P15800326740383828099.Spec : Prop :=
  ∀ n, P15800326740383828099.a n = A153008 n

end A153008

/-! ## A153008.P5092069506683743877

`A168051(n+2)+A000108(n)`
-/

namespace A153008.P5092069506683743877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 (n + 2) + A000108 n

end

end A153008.P5092069506683743877

namespace A153008

/-- `A168051(n+2)+A000108(n)` -/
def P5092069506683743877.Spec : Prop :=
  ∀ n, P5092069506683743877.a n = A153008 n

end A153008

/-! ## A153008.P8422329412713756332

`A292440(n+2)+A000108(n)`
-/

namespace A153008.P8422329412713756332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292440 (n + 2) + A000108 n

end

end A153008.P8422329412713756332

namespace A153008

/-- `A292440(n+2)+A000108(n)` -/
def P8422329412713756332.Spec : Prop :=
  ∀ n, P8422329412713756332.a n = A153008 n

end A153008

/-! ## A153008.P1017329729790110823

`A000108(n)-A086246(n+2)`
-/

namespace A153008.P1017329729790110823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A086246 (n + 2)

end

end A153008.P1017329729790110823

namespace A153008

/-- `A000108(n)-A086246(n+2)` -/
def P1017329729790110823.Spec : Prop :=
  ∀ n, P1017329729790110823.a n = A153008 n

end A153008

/-! ## A153008.P18395218596363520535

`A000108(n)-A168049(n+2)`
-/

namespace A153008.P18395218596363520535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A168049 (n + 2)

end

end A153008.P18395218596363520535

namespace A153008

/-- `A000108(n)-A168049(n+2)` -/
def P18395218596363520535.Spec : Prop :=
  ∀ n, P18395218596363520535.a n = A153008 n

end A153008

/-! ## A153008.P12152121497628073491

`A028304(2*n)-A001006(n)`
-/

namespace A153008.P12152121497628073491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028304 (2 * n) - A001006 n

end

end A153008.P12152121497628073491

namespace A153008

/-- `A028304(2*n)-A001006(n)` -/
def P12152121497628073491.Spec : Prop :=
  ∀ n, P12152121497628073491.a n = A153008 n

end A153008

/-! ## A153008.P17055820871465085128

`A126120(2*n)-A001006(n)`
-/

namespace A153008.P17055820871465085128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) - A001006 n

end

end A153008.P17055820871465085128

namespace A153008

/-- `A126120(2*n)-A001006(n)` -/
def P17055820871465085128.Spec : Prop :=
  ∀ n, P17055820871465085128.a n = A153008 n

end A153008

/-! ## A153008.P15498500363059319328

`A126324(2*n)-A001006(n)`
-/

namespace A153008.P15498500363059319328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (2 * n) - A001006 n

end

end A153008.P15498500363059319328

namespace A153008

/-- `A126324(2*n)-A001006(n)` -/
def P15498500363059319328.Spec : Prop :=
  ∀ n, P15498500363059319328.a n = A153008 n

end A153008

/-! ## A153008.P8931150475606128963

`A246604(n)+n-A001006(n)`
-/

namespace A153008.P8931150475606128963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246604 n + ((n : ℤ) - A001006 n)

end

end A153008.P8931150475606128963

namespace A153008

/-- `A246604(n)+n-A001006(n)` -/
def P8931150475606128963.Spec : Prop :=
  ∀ n, P8931150475606128963.a n = A153008 n

end A153008

/-! ## A153008.P7942922842303096452

`A000108(n)-abs(A166587(n+1))`
-/

namespace A153008.P7942922842303096452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - |A166587 (n + 1)|

end

end A153008.P7942922842303096452

namespace A153008

/-- `A000108(n)-abs(A166587(n+1))` -/
def P7942922842303096452.Spec : Prop :=
  ∀ n, P7942922842303096452.a n = A153008 n

end A153008

/-! ## A153008.P9789885807589366257

`abs(A166587(n+1)-A168491(n))`
-/

namespace A153008.P9789885807589366257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166587 (n + 1) - A168491 n|

end

end A153008.P9789885807589366257

namespace A153008

/-- `abs(A166587(n+1)-A168491(n))` -/
def P9789885807589366257.Spec : Prop :=
  ∀ n, P9789885807589366257.a n = A153008 n

end A153008

/-! ## A153008.P3926962565789221645

`A089408(2*n+1)-A001006(n)`
-/

namespace A153008.P3926962565789221645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n + 1) - A001006 n

end

end A153008.P3926962565789221645

namespace A153008

/-- `A089408(2*n+1)-A001006(n)` -/
def P3926962565789221645.Spec : Prop :=
  ∀ n, P3926962565789221645.a n = A153008 n

end A153008

/-! ## A153008.P4728149968741451748

`A097331(2*n+1)-A001006(n)`
-/

namespace A153008.P4728149968741451748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n + 1) - A001006 n

end

end A153008.P4728149968741451748

namespace A153008

/-- `A097331(2*n+1)-A001006(n)` -/
def P4728149968741451748.Spec : Prop :=
  ∀ n, P4728149968741451748.a n = A153008 n

end A153008

/-! ## A153008.P14625854730887890280

`A168051(n+2)+A126120(2*n)`
-/

namespace A153008.P14625854730887890280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168051 (n + 2) + A126120 (2 * n)

end

end A153008.P14625854730887890280

namespace A153008

/-- `A168051(n+2)+A126120(2*n)` -/
def P14625854730887890280.Spec : Prop :=
  ∀ n, P14625854730887890280.a n = A153008 n

end A153008

/-! ## A153008.P16070276626901607545

`A126120(2*n)-A168049(n+2)`
-/

namespace A153008.P16070276626901607545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) - A168049 (n + 2)

end

end A153008.P16070276626901607545

namespace A153008

/-- `A126120(2*n)-A168049(n+2)` -/
def P16070276626901607545.Spec : Prop :=
  ∀ n, P16070276626901607545.a n = A153008 n

end A153008

/-! ## A153008.P9161980652467883035

`A000108(n)-∑[A002026(abs(1-n))]`
-/

namespace A153008.P9161980652467883035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002026 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153008.P9161980652467883035

namespace A153008

/-- `A000108(n)-∑[A002026(abs(1-n))]` -/
def P9161980652467883035.Spec : Prop :=
  ∀ n, P9161980652467883035.a n = A153008 n

end A153008

/-!
# A153009: Primes in toothpick sequence A153006.

The programs for A153009, there is no canonical definition to state claims against.
-/

/-! ## A153009.P327195200070153633

`p?[A153006(n)]`
-/

namespace A153009.P327195200070153633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153009.P327195200070153633

/-! ## A153009.P7597889338832371944

`p?[∑[A152980(n)]]`
-/

namespace A153009.P7597889338832371944
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152980 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153009.P7597889338832371944

/-! ## A153009.P3273621153024036222

`∩[A000040(n+1), A153006(n)]`
-/

namespace A153009.P3273621153024036222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153009.P3273621153024036222

/-! ## A153009.P17028378670117882142

`∩[A004139(n+1), A153006(n)]`
-/

namespace A153009.P17028378670117882142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153009.P17028378670117882142

/-! ## A153009.P14872077348376575071

`∩[A045319(n+1), A153006(n)]`
-/

namespace A153009.P14872077348376575071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153009.P14872077348376575071

/-! ## A153009.P9698304562746330976

`∩[A049549(n+1), A153006(n)]`
-/

namespace A153009.P9698304562746330976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153009.P9698304562746330976

/-! ## A153009.P13268691373645713634

`∩[A049585(n+1), A153006(n)]`
-/

namespace A153009.P13268691373645713634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049585 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153006 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153009.P13268691373645713634

/-!
# A153010: Indices of A153007 where the entry equals zero.

The programs for A153010, there is no canonical definition to state claims against.
-/

/-! ## A153010.P15330330050818310224

`∑[round(2^(n-2))-char[3]]`
-/

namespace A153010.P15330330050818310224
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153010.P15330330050818310224

/-! ## A153010.P17618228438263711647

`lcm(2, a(n-1))+1` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A153010.P17618228438263711647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  Nat.lcm 2 (a (n - 1)) + 1

end

end A153010.P17618228438263711647

/-! ## A153010.P2765323349698651379

`(2^n-a(2%n))/2` with `a(0)=0`
-/

namespace A153010.P2765323349698651379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((2 ^ n : ℚ) - a (2 % n)) / 2

end

end A153010.P2765323349698651379

/-! ## A153010.P11990284217935102747

`1+2*a(n-1)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A153010.P11990284217935102747
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n a =>
  1 + 2 * a (n - 1)

end

end A153010.P11990284217935102747

/-!
# A153011: Sum of proper divisors, minus the number of proper divisors, minus cototient of n, plus 1.

The programs for A153011, the canonical program `A153011.P18266022580685187752` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153011 has offset 1).

The definition of A153011 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, A152770, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A153011.P18266022580685187752

`A152770(n+1)-A051953(n+1)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A153011

/-- `A152770(n+1)-A051953(n+1)+1` -/
def P18266022580685187752.Spec : Prop :=
  ∀ n, P18266022580685187752.a n = A153011 (n + 1)

theorem P18266022580685187752.correct : P18266022580685187752.Spec := by
  intro n
  simp only [A153011, Nat.add_sub_cancel]

end A153011

/-! ## A153011.P14975272858583864703

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+∑{d}[n+1, #-1]-n-n`
-/

namespace A153011.P14975272858583864703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + ((∑ d ∈ Nat.divisors (f3 n), ((d : ℤ) - 1) - (n : ℤ) : ℤ) : ℚ) - (n : ℚ)

end

end A153011.P14975272858583864703

namespace A153011

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+∑{d}[n+1, #-1]-n-n` -/
def P14975272858583864703.Spec : Prop :=
  ∀ n, P14975272858583864703.a n = (A153011 (n + 1) : ℚ)

end A153011

/-! ## A153011.P3172109032306102007

`A255385(n+1)-2*n`
-/

namespace A153011.P3172109032306102007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255385 (n + 1) - (2 * n : ℤ)

end

end A153011.P3172109032306102007

namespace A153011

/-- `A255385(n+1)-2*n` -/
def P3172109032306102007.Spec : Prop :=
  ∀ n, P3172109032306102007.a n = A153011 (n + 1)

end A153011

/-! ## A153011.P18230110147720242008

`A378216(n+1)+A051709(n+1)`
-/

namespace A153011.P18230110147720242008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378216 (n + 1) + A051709 (n + 1)

end

end A153011.P18230110147720242008

namespace A153011

/-- `A378216(n+1)+A051709(n+1)` -/
def P18230110147720242008.Spec : Prop :=
  ∀ n, P18230110147720242008.a n = A153011 (n + 1)

end A153011

/-! ## A153011.P1560157853847532311

`A039649(n+1)-A152864(n+1)`
-/

namespace A153011.P1560157853847532311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - A152864 (n + 1)

end

end A153011.P1560157853847532311

namespace A153011

/-- `A039649(n+1)-A152864(n+1)` -/
def P1560157853847532311.Spec : Prop :=
  ∀ n, P1560157853847532311.a n = A153011 (n + 1)

end A153011

/-! ## A153011.P11311832619936425685

`A046640(n+1)-A297159(n+1)`
-/

namespace A153011.P11311832619936425685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046640 (n + 1) - A297159 (n + 1)

end

end A153011.P11311832619936425685

namespace A153011

/-- `A046640(n+1)-A297159(n+1)` -/
def P11311832619936425685.Spec : Prop :=
  ∀ n, P11311832619936425685.a n = A153011 (n + 1)

end A153011

/-! ## A153011.P15878326737704120368

`A152770(n+1)-A219428(n+1)`
-/

namespace A153011.P15878326737704120368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (n + 1) - A219428 (n + 1)

end

end A153011.P15878326737704120368

namespace A153011

/-- `A152770(n+1)-A219428(n+1)` -/
def P15878326737704120368.Spec : Prop :=
  ∀ n, P15878326737704120368.a n = A153011 (n + 1)

end A153011

/-! ## A153011.P7675426578229009734

`A051709(n+1)+2-A000005(n+1)`
-/

namespace A153011.P7675426578229009734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1) + (2 - A000005 (n + 1))

end

end A153011.P7675426578229009734

namespace A153011

/-- `A051709(n+1)+2-A000005(n+1)` -/
def P7675426578229009734.Spec : Prop :=
  ∀ n, P7675426578229009734.a n = A153011 (n + 1)

end A153011

/-! ## A153011.P6877072921391275534

`A209187(n+1)+2-A062249(n+1)`
-/

namespace A153011.P6877072921391275534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209187 (n + 1) + (2 - A062249 (n + 1))

end

end A153011.P6877072921391275534

namespace A153011

/-- `A209187(n+1)+2-A062249(n+1)` -/
def P6877072921391275534.Spec : Prop :=
  ∀ n, P6877072921391275534.a n = A153011 (n + 1)

end A153011

/-! ## A153011.P16450183123309563069

`A001065(n+1)+2-A351561(n+1)`
-/

namespace A153011.P16450183123309563069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (2 - A351561 (n + 1))

end

end A153011.P16450183123309563069

namespace A153011

/-- `A001065(n+1)+2-A351561(n+1)` -/
def P16450183123309563069.Spec : Prop :=
  ∀ n, P16450183123309563069.a n = A153011 (n + 1)

end A153011

/-! ## A153011.P9692184811366290153

`A000010(n+1)+A152770(n+1)-n`
-/

namespace A153011.P9692184811366290153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A152770 (n + 1) - (n : ℤ))

end

end A153011.P9692184811366290153

namespace A153011

/-- `A000010(n+1)+A152770(n+1)-n` -/
def P9692184811366290153.Spec : Prop :=
  ∀ n, P9692184811366290153.a n = A153011 (n + 1)

end A153011

/-! ## A153011.P7683153624087895831

`A209187(n+1)-(A032741(n+1)+n)`
-/

namespace A153011.P7683153624087895831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209187 (n + 1) - (A032741 (n + 1) + (n : ℤ))

end

end A153011.P7683153624087895831

namespace A153011

/-- `A209187(n+1)-(A032741(n+1)+n)` -/
def P7683153624087895831.Spec : Prop :=
  ∀ n, P7683153624087895831.a n = A153011 (n + 1)

end A153011

/-!
# A153012: Differences between adjacent digits of square root of 2.

The programs for A153012, there is no canonical definition to state claims against.
-/

/-! ## A153012.P11271962940070058813

`Δ[A002193(n)]`
-/

namespace A153012.P11271962940070058813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153012.P11271962940070058813

/-! ## A153012.P3365017294971784165

`Δ[A120731(n+1)]`
-/

namespace A153012.P3365017294971784165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120731 (n + 1 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153012.P3365017294971784165

/-! ## A153012.P1075088104657177366

`Δ[A011547(n)%10]`
-/

namespace A153012.P1075088104657177366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011547 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153012.P1075088104657177366

/-! ## A153012.P13207801225842462475

`Δ[A188582(abs(1-n))]`
-/

namespace A153012.P13207801225842462475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188582 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153012.P13207801225842462475

/-! ## A153012.P16564765163760269567

`Δ[A098364(∑[n+1])]`
-/

namespace A153012.P16564765163760269567
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098364 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153012.P16564765163760269567

/-! ## A153012.P17652309325148564956

`Δ[A110812(2*n+1)]`
-/

namespace A153012.P17652309325148564956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110812 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153012.P17652309325148564956

/-! ## A153012.P14682102609770038699

`floor(acot(n)+Δ[A014176(n)])`
-/

namespace A153012.P14682102609770038699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (f1 (n + 1) - f1 n : ℝ)⌋

end

end A153012.P14682102609770038699

/-! ## A153012.P3826236404376745385

`A188582(n)-A002193(n)`
-/

namespace A153012.P3826236404376745385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188582 n - A002193 (n + 1)

end

end A153012.P3826236404376745385

/-! ## A153012.P6358021543413549687

`A002193(n+1)-A002193(n)`
-/

namespace A153012.P6358021543413549687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002193 (n + 1 + 1) - A002193 (n + 1)

end

end A153012.P6358021543413549687

/-!
# A153013: Starting with input 0, find the binary value of the input. Then interpret resulting string of 1's and 0's as prime-based numbers, as follows: 0's are separators, uninterrupted strings of 1's are interpreted from right to left as exponents of the prime numbers. Output is returned as input for the next number in sequence.

The programs for A153013, the canonical program `A153013.P308518646020889939` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153013 has offset 0).

The definition of A153013 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A153013.P308518646020889939

`A005940(1+a(n-1))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A153013

/-- `A005940(1+a(n-1))` -/
def P308518646020889939.Spec : Prop :=
  ∀ n, P308518646020889939.a n = A153013 n

theorem P308518646020889939.correct : P308518646020889939.Spec := by
  intro n
  simp only [A153013]

end A153013

/-! ## A153013.P5111083108174424010

`A005940(a(n-1)+1)` with `a(0)=0`
-/

namespace A153013.P5111083108174424010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005940 (a (n - 1) + 1).toNat

end

end A153013.P5111083108174424010

namespace A153013

/-- `A005940(a(n-1)+1)` -/
def P5111083108174424010.Spec : Prop :=
  ∀ n, P5111083108174424010.a n = A153013 n

end A153013

/-! ## A153013.P10817700633741896922

`A005940(-xor(a(n-1), -1))` with `a(0)=0`
-/

namespace A153013.P10817700633741896922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005940 (-Int.xor (a (n - 1)) (-1)).toNat

end

end A153013.P10817700633741896922

namespace A153013

/-- `A005940(-xor(a(n-1), -1))` -/
def P10817700633741896922.Spec : Prop :=
  ∀ n, P10817700633741896922.a n = A153013 n

end A153013

/-! ## A153013.P16669236291377610976

`A005940(1-floor(-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A153013.P16669236291377610976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005940 (1 - (-a (n - 1))).toNat

end

end A153013.P16669236291377610976

namespace A153013

/-- `A005940(1-floor(-a(n-1)))` -/
def P16669236291377610976.Spec : Prop :=
  ∀ n, P16669236291377610976.a n = A153013 n

end A153013

/-! ## A153013.P12723906611905663209

`A005940(1-ceil(-a(n-1)))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A153013.P12723906611905663209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005940 (1 - (-a (n - 1))).toNat

end

end A153013.P12723906611905663209

namespace A153013

/-- `A005940(1-ceil(-a(n-1)))` -/
def P12723906611905663209.Spec : Prop :=
  ∀ n, P12723906611905663209.a n = A153013 n

end A153013

/-!
# A153014: Primes p such that p^2-2 and p^2-2p+2 are also prime.

The programs for A153014, there is no canonical definition to state claims against.
-/

/-! ## A153014.P5130105668295511583

`p?[A225078(n+1)+1]`
-/

namespace A153014.P5130105668295511583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225078 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153014.P5130105668295511583

/-! ## A153014.P6389221084965956

`∩[A062326(n+1), A127435(n+1)]`
-/

namespace A153014.P6389221084965956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153014.P6389221084965956

/-! ## A153014.P7228392930334558909

`∩[A062326(n+1), A090693(n+1)]`
-/

namespace A153014.P7228392930334558909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153014.P7228392930334558909

/-! ## A153014.P15946835574096061187

`∩[A028870(n+1), A127435(n+1)]`
-/

namespace A153014.P15946835574096061187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153014.P15946835574096061187

/-! ## A153014.P10455747520401020736

`∩[A000040(n+1), A225078(n+1)+1]`
-/

namespace A153014.P10455747520401020736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225078 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153014.P10455747520401020736

/-! ## A153014.P762637669823257870

`record[A006530(A225078(n+1)+1)]`
-/

namespace A153014.P762637669823257870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A225078 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153014.P762637669823257870

/-! ## A153014.P2060201134298018096

`record[A020639(A225078(n+1)+1)]`
-/

namespace A153014.P2060201134298018096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A225078 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153014.P2060201134298018096

/-! ## A153014.P4833015195059606484

`∩[A062326(n+1), A180643(n+1)]`
-/

namespace A153014.P4833015195059606484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153014.P4833015195059606484

/-! ## A153014.P1628873163189992488

`record[A323171(A225078(n+1)+1)]`
-/

namespace A153014.P1628873163189992488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323171 (A225078 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153014.P1628873163189992488

/-! ## A153014.P4043063978435684121

`p?[A141310(A225078(n+1))]`
-/

namespace A153014.P4043063978435684121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A225078 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153014.P4043063978435684121

/-!
# A153015: Decimal expansion of log_12 (3).

The programs for A153015, there is no canonical definition to state claims against.
-/

/-! ## A153015.P2987526416184657959

`9-A153105(n)`
-/

namespace A153015.P2987526416184657959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153105 n

end

end A153015.P2987526416184657959

/-!
# A153018: Decimal expansion of log_15 (3).

The programs for A153018, there is no canonical definition to state claims against.
-/

/-! ## A153018.P1194598726307592087

`9-A153356(n)`
-/

namespace A153018.P1194598726307592087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153356 n

end

end A153018.P1194598726307592087

/-!
# A153019: Decimal expansion of log_16 (3).

The programs for A153019, there is no canonical definition to state claims against.
-/

/-! ## A153019.P11073107696995462897

`A154208(n)+a(n-1)-A087019(a(n-1))` with `a(0)=3`
-/

namespace A153019.P11073107696995462897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A154208 n + a (n - 1) - A087019 (a (n - 1)).toNat

end

end A153019.P11073107696995462897

/-! ## A153019.P15673349590315674531

`A154208(n-(a(n-1)-A087019(a(n-1))))` with `a(0)=3`
-/

namespace A153019.P15673349590315674531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A154208 ((n : ℤ) - (a (n - 1) - A087019 (a (n - 1)).toNat)).toNat

end

end A153019.P15673349590315674531

/-! ## A153019.P10053875263884969389

`A052283(A007294(a(n-1)))*A154208(n)` with `a(0)=3`
-/

namespace A153019.P10053875263884969389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A052283 (A007294 (a (n - 1)).toNat).toNat * A154208 n

end

end A153019.P10053875263884969389

/-! ## A153019.P12900103657470027085

`A154208(n)*A208245(A003056(a(n-1))+1)` with `a(0)=3`
-/

namespace A153019.P12900103657470027085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A154208 n * A208245 (A003056 (a (n - 1)).toNat + 1).toNat

end

end A153019.P12900103657470027085

/-! ## A153019.P6507114007242730921

`A154208(n)*A208245(A208245(a(n-1)+1)+1)` with `a(0)=3`
-/

namespace A153019.P6507114007242730921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A154208 n * A208245 (A208245 (a (n - 1) + 1).toNat + 1).toNat

end

end A153019.P6507114007242730921

/-!
# A153021: Decimal expansion of log_18 (3).

The programs for A153021, there is no canonical definition to state claims against.
-/

/-! ## A153021.P15534347331371199395

`9-A153608(n)`
-/

namespace A153021.P15534347331371199395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153608 n

end

end A153021.P15534347331371199395

/-!
# A153023: If n is 1 or prime then a(n) = n. Otherwise, start with n and iterate the map k -> A048050(k) until we reach a prime p; then a(n) = p. If we never reach a prime, a(n) = -1. A048050 gives the sum of proper divisors of k, excluding both 1 and n from the sum.

The programs for A153023, there is no canonical definition to state claims against.
-/

/-! ## A153023.P1011627852401976272

`A068319(n+1)-A345450(A254101(n+1))`
-/

namespace A153023.P1011627852401976272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068319 (n + 1) - A345450 (A254101 (n + 1)).toNat

end

end A153023.P1011627852401976272

/-! ## A153023.P5749170432732226660

`A068319(n+1)-A054054(A184955(n))`
-/

namespace A153023.P5749170432732226660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068319 (n + 1) - A054054 (A184955 n).toNat

end

end A153023.P5749170432732226660

/-! ## A153023.P7916200726511510975

`A068319(n+1)-A184955(A059717(n))`
-/

namespace A153023.P7916200726511510975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068319 (n + 1) - A184955 (A059717 n).toNat

end

end A153023.P7916200726511510975

/-! ## A153023.P2657959674436548235

`A068319(n+1)-A369054(A192232(n+1))`
-/

namespace A153023.P2657959674436548235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068319 (n + 1) - A369054 (A192232 (n + 1)).toNat

end

end A153023.P2657959674436548235

/-! ## A153023.P12421459282264361750

`A068319(n+1)-A184955(A029043(n))`
-/

namespace A153023.P12421459282264361750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068319 (n + 1) - A184955 (A029043 n).toNat

end

end A153023.P12421459282264361750

/-!
# A153024: a(n) is the number of iterations of the map k -> A048050(k) to reach zero. If we never reach 0, then a(n) = -1. A048050 gives the sum of proper divisors of k, excluding both 1 and n from the sum.

The programs for A153024, there is no canonical definition to state claims against.
-/

/-! ## A153024.P17914774236824272030

`A328871(∑{p}[n+1, ceil(n/#)])%A304713(3*n+4)`
-/

namespace A153024.P17914774236824272030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328871 (∑ p ∈ Nat.primeFactors (f1 n), ⌈(n : ℚ) / (p : ℚ)⌉).toNat) (A304713 (3 * n + 4))

end

end A153024.P17914774236824272030

/-! ## A153024.P649276383007689862

`A238966(A133310(n)^A238951(n+1))`
-/

namespace A153024.P649276383007689862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238966 (SequenceMachineLib.roundAway ((A133310 n : ℚ) ^ (A238951 (n + 1) : ℤ))).toNat

end

end A153024.P649276383007689862

/-! ## A153024.P16731612161203142195

`A285573(A069359(n+1)^A069359(A108115(n)))`
-/

namespace A153024.P16731612161203142195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285573 (SequenceMachineLib.roundAway ((A069359 (n + 1) : ℚ) ^ (A069359 (A108115 n).toNat : ℤ))).toNat

end

end A153024.P16731612161203142195

/-! ## A153024.P14295328639204080749

`A057945(A066806(n)^A072670(n))`
-/

namespace A153024.P14295328639204080749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057945 (SequenceMachineLib.roundAway ((A066806 n : ℚ) ^ (A072670 n : ℤ))).toNat

end

end A153024.P14295328639204080749

/-! ## A153024.P8401843602284545884

`A340998(A007279(n+3))+A299201(n+1)`
-/

namespace A153024.P8401843602284545884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A007279 (n + 3)).toNat + 140) + A299201 (n + 1)

end

end A153024.P8401843602284545884

/-!
# A153026: a(1)=0, a(n) = n^3 - a(n-1).

The programs for A153026, the canonical program `A153026.P11209792072528438836` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153026 has offset 1).

The definition of A153026 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3-a(n-1)` (program `A153026.P11209792072528438836`, by `A153026.P11209792072528438836.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153026.P11209792072528438836

`(n+1)^3-a(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153026

/-- `(n+1)^3-a(n-1)` -/
def P11209792072528438836.Spec : Prop :=
  ∀ n, P11209792072528438836.a n = A153026 (n + 1)

theorem P11209792072528438836.correct : P11209792072528438836.Spec := by
  intro n
  simp only [A153026, Nat.add_sub_cancel]

end A153026

/-! ## A153026.P11265684664118482795

`Δ[a(n-2)+n*n²]` with `a(0)=0, a(1)=0`
-/

namespace A153026.P11265684664118482795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0] fun n f1 =>
  f1 (n - 2) + n * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A153026.P11265684664118482795

namespace A153026

/-- `Δ[a(n-2)+n*n²]` -/
def P11265684664118482795.Spec : Prop :=
  ∀ n, P11265684664118482795.a n = A153026 (n + 1)

end A153026

/-! ## A153026.P16887344348664390653

`abs((n+1)*(n+1)²-a(n-1))` with `a(0)=0`
-/

namespace A153026.P16887344348664390653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |((n + 1) * (n + 1) ^ 2 : ℤ) - a (n - 1)|

end

end A153026.P16887344348664390653

namespace A153026

/-- `abs((n+1)*(n+1)²-a(n-1))` -/
def P16887344348664390653.Spec : Prop :=
  ∀ n, P16887344348664390653.a n = A153026 (n + 1)

end A153026

/-! ## A153026.P10149550759502373913

`floor((n+1)*(n+1)²-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A153026.P10149550759502373913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n + 1) * (n + 1) ^ 2 : ℤ) - a (n - 1)

end

end A153026.P10149550759502373913

namespace A153026

/-- `floor((n+1)*(n+1)²-a(n-1))` -/
def P10149550759502373913.Spec : Prop :=
  ∀ n, P10149550759502373913.a n = A153026 (n + 1)

theorem P10149550759502373913.correct : P10149550759502373913.Spec := by
  intro n
  simp only [A153026, Nat.add_sub_cancel, A153026.P10149550759502373913.a, A153026.P11209792072528438836.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A153026

/-! ## A153026.P14288091237560491553

`ceil((n+1)*(n+1)²-a(n-1))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A153026.P14288091237560491553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n + 1) * (n + 1) ^ 2 : ℤ) - a (n - 1)

end

end A153026.P14288091237560491553

namespace A153026

/-- `ceil((n+1)*(n+1)²-a(n-1))` -/
def P14288091237560491553.Spec : Prop :=
  ∀ n, P14288091237560491553.a n = A153026 (n + 1)

theorem P14288091237560491553.correct : P14288091237560491553.Spec := by
  intro n
  simp only [A153026, Nat.add_sub_cancel, A153026.P14288091237560491553.a, A153026.P11209792072528438836.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A153026

/-! ## A153026.P9770390461627362245

`round((n+1)*(n+1)²-a(n-1))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A153026.P9770390461627362245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n + 1) * (n + 1) ^ 2 : ℤ) - a (n - 1)

end

end A153026.P9770390461627362245

namespace A153026

/-- `round((n+1)*(n+1)²-a(n-1))` -/
def P9770390461627362245.Spec : Prop :=
  ∀ n, P9770390461627362245.a n = A153026 (n + 1)

theorem P9770390461627362245.correct : P9770390461627362245.Spec := by
  intro n
  simp only [A153026, Nat.add_sub_cancel, A153026.P9770390461627362245.a, A153026.P11209792072528438836.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A153026

/-! ## A153026.P7367856681414992479

`∑[n+1]²-(a(n-1)+∑[n]²)` with `a(0)=0`
-/

namespace A153026.P7367856681414992479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (a (n - 1) + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ))

end

end A153026.P7367856681414992479

namespace A153026

/-- `∑[n+1]²-(a(n-1)+∑[n]²)` -/
def P7367856681414992479.Spec : Prop :=
  ∀ n, P7367856681414992479.a n = A153026 (n + 1)

end A153026

/-! ## A153026.P11644142848113845288

`(n+1)*∑[2*n+1]-floor(a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A153026.P11644142848113845288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (((n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) - a (n - 1)

end

end A153026.P11644142848113845288

namespace A153026

/-- `(n+1)*∑[2*n+1]-floor(a(n-1))` -/
def P11644142848113845288.Spec : Prop :=
  ∀ n, P11644142848113845288.a n = A153026 (n + 1)

end A153026

/-! ## A153026.P11397933250016359063

`(n+1)²+n*(n+1)²-a(n-1)` with `a(0)=0`
-/

namespace A153026.P11397933250016359063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((n + 1) ^ 2 : ℤ) + ((n * (n + 1) ^ 2 : ℤ) - a (n - 1))

end

end A153026.P11397933250016359063

namespace A153026

/-- `(n+1)²+n*(n+1)²-a(n-1)` -/
def P11397933250016359063.Spec : Prop :=
  ∀ n, P11397933250016359063.a n = A153026 (n + 1)

theorem P11397933250016359063.correct : P11397933250016359063.Spec := by
  intro n
  simp only [A153026, Nat.add_sub_cancel, A153026.P11397933250016359063.a, A153026.P11209792072528438836.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A153026

/-! ## A153026.P13223266922041516977

`abs(∑[A131738(n)²*A131738(n)])`
-/

namespace A153026.P13223266922041516977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131738 n ^ 2 * A131738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A153026.P13223266922041516977

namespace A153026

/-- `abs(∑[A131738(n)²*A131738(n)])` -/
def P13223266922041516977.Spec : Prop :=
  ∀ n, P13223266922041516977.a n = A153026 (n + 1)

end A153026

/-! ## A153026.P6114061099382366088

`A030451(n)+2*A007518(n+1)`
-/

namespace A153026.P6114061099382366088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030451 n + 2 * A007518 (n + 1)

end

end A153026.P6114061099382366088

namespace A153026

/-- `A030451(n)+2*A007518(n+1)` -/
def P6114061099382366088.Spec : Prop :=
  ∀ n, P6114061099382366088.a n = A153026 (n + 1)

end A153026

/-! ## A153026.P16847335769807547573

`abs(A232599(n+1)+1)`
-/

namespace A153026.P16847335769807547573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A232599 (n + 1) + 1|

end

end A153026.P16847335769807547573

namespace A153026

/-- `abs(A232599(n+1)+1)` -/
def P16847335769807547573.Spec : Prop :=
  ∀ n, P16847335769807547573.a n = A153026 (n + 1)

end A153026

/-! ## A153026.P14902110998807047955

`A011934(n+1)-A033999(n)`
-/

namespace A153026.P14902110998807047955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 (n + 1) - A033999 n

end

end A153026.P14902110998807047955

namespace A153026

/-- `A011934(n+1)-A033999(n)` -/
def P14902110998807047955.Spec : Prop :=
  ∀ n, P14902110998807047955.a n = A153026 (n + 1)

end A153026

/-! ## A153026.P14025773864041092169

`A033999(n+1)+A011934(n+1)`
-/

namespace A153026.P14025773864041092169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A011934 (n + 1)

end

end A153026.P14025773864041092169

namespace A153026

/-- `A033999(n+1)+A011934(n+1)` -/
def P14025773864041092169.Spec : Prop :=
  ∀ n, P14025773864041092169.a n = A153026 (n + 1)

end A153026

/-! ## A153026.P12669331786895963889

`A011934(n+1)+1-2*A059841(n)`
-/

namespace A153026.P12669331786895963889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 (n + 1) + (1 - 2 * A059841 n)

end

end A153026.P12669331786895963889

namespace A153026

/-- `A011934(n+1)+1-2*A059841(n)` -/
def P12669331786895963889.Spec : Prop :=
  ∀ n, P12669331786895963889.a n = A153026 (n + 1)

end A153026

/-! ## A153026.P5536152585375671848

`A011934(n+1)+A000217(n)-A125577(n)`
-/

namespace A153026.P5536152585375671848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 (n + 1) + (A000217 n - A125577 n)

end

end A153026.P5536152585375671848

namespace A153026

/-- `A011934(n+1)+A000217(n)-A125577(n)` -/
def P5536152585375671848.Spec : Prop :=
  ∀ n, P5536152585375671848.a n = A153026 (n + 1)

end A153026

/-! ## A153026.P13443199349235689684

`A011934(n+1)+A152725(n)-A187620(n)`
-/

namespace A153026.P13443199349235689684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 (n + 1) + (A152725 n - A187620 n)

end

end A153026.P13443199349235689684

namespace A153026

/-- `A011934(n+1)+A152725(n)-A187620(n)` -/
def P13443199349235689684.Spec : Prop :=
  ∀ n, P13443199349235689684.a n = A153026 (n + 1)

end A153026

/-! ## A153026.P4715949399963771135

`A011934(n+1)+A059841(n+1)-A059841(n)`
-/

namespace A153026.P4715949399963771135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 (n + 1) + (A059841 (n + 1) - A059841 n)

end

end A153026.P4715949399963771135

namespace A153026

/-- `A011934(n+1)+A059841(n+1)-A059841(n)` -/
def P4715949399963771135.Spec : Prop :=
  ∀ n, P4715949399963771135.a n = A153026 (n + 1)

end A153026

/-! ## A153026.P6128205149465697897

`A011934(n+1)+A011934(n+1)/A232599(n+1)`
-/

namespace A153026.P6128205149465697897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011934 (n + 1) : ℚ) + (A011934 (n + 1) : ℚ) / (A232599 (n + 1) : ℚ)

end

end A153026.P6128205149465697897

namespace A153026

/-- `A011934(n+1)+A011934(n+1)/A232599(n+1)` -/
def P6128205149465697897.Spec : Prop :=
  ∀ n, P6128205149465697897.a n = (A153026 (n + 1) : ℚ)

end A153026

/-! ## A153026.P18026382416098322824

`∑[∑[A047273(2*(n+1))]]-A056594(2*n)`
-/

namespace A153026.P18026382416098322824
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A056594 (2 * n)

end

end A153026.P18026382416098322824

namespace A153026

/-- `∑[∑[A047273(2*(n+1))]]-A056594(2*n)` -/
def P18026382416098322824.Spec : Prop :=
  ∀ n, P18026382416098322824.a n = A153026 (n + 1)

end A153026

/-!
# A153028: Special values of the hypergeometric function of the type 4F0.

The programs for A153028, there is no canonical definition to state claims against.
-/

/-! ## A153028.P16492365979345041961

`A047241((a(n-2)+1)*A000332(n)+1)` with `a(0)=1, a(1)=1`
-/

namespace A153028.P16492365979345041961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A047241 ((a (n - 2) + 1) * A000332 n + 1).toNat

end

end A153028.P16492365979345041961

/-! ## A153028.P888650802254178527

`A110659(n!*floor(n/3))`
-/

namespace A153028.P888650802254178527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 ((Nat.factorial n : ℤ) * ⌊(n : ℚ) / 3⌋).toNat

end

end A153028.P888650802254178527

/-! ## A153028.P13828991956928561253

`A376427(A008279(n)+A001710(n))`
-/

namespace A153028.P13828991956928561253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376427 (A008279 n + A001710 n).toNat

end

end A153028.P13828991956928561253

/-!
# A153030: Positions of even digits of Pi.

The programs for A153030, there is no canonical definition to state claims against.
-/

/-! ## A153030.P11225091421269923425

`eq[0, A000796(n)%2]+1`
-/

namespace A153030.P11225091421269923425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000796 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153030.P11225091421269923425

/-! ## A153030.P11769217503032284484

`eq[1, gcd(4, A123152(n+1))]+1`
-/

namespace A153030.P11769217503032284484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 4 (A123152 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A153030.P11769217503032284484

/-! ## A153030.P4784008272883029291

`lt[3, A020639(A000796(abs(1-n))+2*n+1)+1]`
-/

namespace A153030.P4784008272883029291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000796 (|1 - (n : ℤ)|.toNat + 1) + (2 * n + 1 : ℤ)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153030.P4784008272883029291

/-! ## A153030.P14461186294009285080

`lt[A007814(A006257(n+1)+A000796(n)), 1]+1`
-/

namespace A153030.P14461186294009285080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006257 (n + 1) + A000796 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A153030.P14461186294009285080

/-! ## A153030.P14354275819418586044

`eq[0, A030657(n+1)]+1`
-/

namespace A153030.P14354275819418586044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153030.P14354275819418586044

/-! ## A153030.P11276551940421996454

`eq[1, A030644(n)%2]+1`
-/

namespace A153030.P11276551940421996454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030644 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153030.P11276551940421996454

/-! ## A153030.P7706991747591222155

`lt[A030657(A028310(n)), 1]`
-/

namespace A153030.P7706991747591222155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030657 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153030.P7706991747591222155

/-! ## A153030.P8091752920629232938

`eq[1, A000034(A086994(n))]+1`
-/

namespace A153030.P8091752920629232938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A086994 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153030.P8091752920629232938

/-! ## A153030.P17918950407769807062

`eq[0, A030657(A123108(2*n))]`
-/

namespace A153030.P17918950407769807062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030657 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153030.P17918950407769807062

/-! ## A153030.P11103489162934989604

`eq[0, A030657(A233583(n+1))]`
-/

namespace A153030.P11103489162934989604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030657 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153030.P11103489162934989604

/-! ## A153030.P8999516356637099657

`eq[2, A089281(n)]+1`
-/

namespace A153030.P8999516356637099657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153030.P8999516356637099657

/-! ## A153030.P16725753316888781658

`lt[3, (A000796(abs(1-n))+1)%2*A000032(n)]`
-/

namespace A153030.P16725753316888781658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000796 (|1 - (n : ℤ)|.toNat + 1) + 1) 2 * A000032 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153030.P16725753316888781658

/-!
# A153031: Positions of prime digits of Pi.

The programs for A153031, there is no canonical definition to state claims against.
-/

/-! ## A153031.P871981842930245845

`A073303(n)+1`
-/

namespace A153031.P871981842930245845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073303 n + 1

end

end A153031.P871981842930245845

/-! ## A153031.P1877229144600461770

`eq[3, A179104(n+1)%4]+1`
-/

namespace A153031.P1877229144600461770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179104 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153031.P1877229144600461770

/-! ## A153031.P306380072630715366

`A008619(2*A073303(n))`
-/

namespace A153031.P306380072630715366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A073303 n).toNat

end

end A153031.P306380072630715366

/-! ## A153031.P18186527931134178124

`A028242(2*A073303(n))`
-/

namespace A153031.P18186527931134178124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A073303 n).toNat

end

end A153031.P18186527931134178124

/-! ## A153031.P13011775037841858495

`A008611(3*A073303(n))`
-/

namespace A153031.P13011775037841858495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A073303 n).toNat

end

end A153031.P13011775037841858495

/-! ## A153031.P2121493119346048836

`eq[1, ∑{e}[A046974(n)-A059582(n)+1, #]]+1`
-/

namespace A153031.P2121493119346048836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n - A059582 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A153031.P2121493119346048836

/-!
# A153032: Positions of digits of Pi that are divisible by 3.

The programs for A153032, there is no canonical definition to state claims against.
-/

/-! ## A153032.P6944953339859393656

`eq[3, gcd(3, A000796(n))]+1`
-/

namespace A153032.P6944953339859393656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (A000796 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A153032.P6944953339859393656

/-! ## A153032.P16206791567390529732

`lt[A000796(abs(1-n))%3, 1]`
-/

namespace A153032.P16206791567390529732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000796 (|1 - (n : ℤ)|.toNat + 1)) 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153032.P16206791567390529732

/-! ## A153032.P9655447069469180849

`eq[1, (A016777(n)+A000796(n))%3]+1`
-/

namespace A153032.P9655447069469180849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016777 n + A000796 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153032.P9655447069469180849

/-! ## A153032.P10302619640425538370

`eq[1, (A158558(n)+A000796(n))%3]+1`
-/

namespace A153032.P10302619640425538370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158558 n + A000796 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153032.P10302619640425538370

/-! ## A153032.P10389711166266455514

`eq[0, Δ[A059582(n)]%3]+1`
-/

namespace A153032.P10389711166266455514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f3 (n + 1) - f3 n) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153032.P10389711166266455514

/-!
# A153033: Numbers with adjacent 1's and no adjacent 0's in binary expansion.

The programs for A153033, the canonical program `A153033.P13807796216271674243` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153033 has offset 1).

The definition of A153033 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153033.P14102926789312594927

`A003754(comp[A000045(n)])`
-/

namespace A153033.P14102926789312594927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A153033.P14102926789312594927

namespace A153033

/-- `A003754(comp[A000045(n)])` -/
def P14102926789312594927.Spec : Prop :=
  ∀ n, P14102926789312594927.a n = A153033 (n + 1)

end A153033

/-! ## A153033.P13807796216271674243

`A003754(A001690(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A153033

/-- `A003754(A001690(n+1))` -/
def P13807796216271674243.Spec : Prop :=
  ∀ n, P13807796216271674243.a n = A153033 (n + 1)

theorem P13807796216271674243.correct : P13807796216271674243.Spec := by
  intro n
  simp only [A153033, Nat.add_sub_cancel]

end A153033

/-! ## A153033.P968942243121169609

`A003754(lt[A048679(n), A003754(n+1)])`
-/

namespace A153033.P968942243121169609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048679 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A153033.P968942243121169609

namespace A153033

/-- `A003754(lt[A048679(n), A003754(n+1)])` -/
def P968942243121169609.Spec : Prop :=
  ∀ n, P968942243121169609.a n = A153033 (n + 1)

end A153033

/-! ## A153033.P14267214635780422722

`A003754(comp[A035516(n)])`
-/

namespace A153033.P14267214635780422722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035516 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A153033.P14267214635780422722

namespace A153033

/-- `A003754(comp[A035516(n)])` -/
def P14267214635780422722.Spec : Prop :=
  ∀ n, P14267214635780422722.a n = A153033 (n + 1)

end A153033

/-! ## A153033.P17824872255980390105

`∩[A004780(n+1), A107909(n)]`
-/

namespace A153033.P17824872255980390105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107909 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153033.P17824872255980390105

namespace A153033

/-- `∩[A004780(n+1), A107909(n)]` -/
def P17824872255980390105.Spec : Prop :=
  ∀ n, (P17824872255980390105.a n : ℤ) = A153033 (n + 1)

end A153033

/-! ## A153033.P10260385220798733824

`∩[A003754(n+1), A004780(n+1)]`
-/

namespace A153033.P10260385220798733824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153033.P10260385220798733824

namespace A153033

/-- `∩[A003754(n+1), A004780(n+1)]` -/
def P10260385220798733824.Spec : Prop :=
  ∀ n, (P10260385220798733824.a n : ℤ) = A153033 (n + 1)

end A153033

/-! ## A153033.P6959556285862571559

`A360434(A153034(n+1))`
-/

namespace A153033.P6959556285862571559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360434 (A153034 (n + 1)).toNat

end

end A153033.P6959556285862571559

namespace A153033

/-- `A360434(A153034(n+1))` -/
def P6959556285862571559.Spec : Prop :=
  ∀ n, P6959556285862571559.a n = A153033 (n + 1)

end A153033

/-! ## A153033.P16659829749635399803

`eq[2*A107782(n), A085357(n)]`
-/

namespace A153033.P16659829749635399803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153033.P16659829749635399803

namespace A153033

/-- `eq[2*A107782(n), A085357(n)]` -/
def P16659829749635399803.Spec : Prop :=
  ∀ n, (P16659829749635399803.a n : ℤ) = A153033 (n + 1)

end A153033

/-! ## A153033.P4599121421563355481

`eq[2*A107782(n), A132971(n)]`
-/

namespace A153033.P4599121421563355481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153033.P4599121421563355481

namespace A153033

/-- `eq[2*A107782(n), A132971(n)]` -/
def P4599121421563355481.Spec : Prop :=
  ∀ n, (P4599121421563355481.a n : ℤ) = A153033 (n + 1)

end A153033

/-! ## A153033.P12426381726530606251

`eq[1, A227350(n)%A167489(n)]`
-/

namespace A153033.P12426381726530606251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227350 n) (A167489 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153033.P12426381726530606251

namespace A153033

/-- `eq[1, A227350(n)%A167489(n)]` -/
def P12426381726530606251.Spec : Prop :=
  ∀ n, (P12426381726530606251.a n : ℤ) = A153033 (n + 1)

end A153033

/-! ## A153033.P8133253915235588950

`eq[A091460(n)², 2^A091460(n)]`
-/

namespace A153033.P8133253915235588950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091460 n ^ 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A091460 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A153033.P8133253915235588950

namespace A153033

/-- `eq[A091460(n)², 2^A091460(n)]` -/
def P8133253915235588950.Spec : Prop :=
  ∀ n, (P8133253915235588950.a n : ℤ) = A153033 (n + 1)

end A153033

/-! ## A153033.P4928580677104813934

`∩[A003754(n+1), A107907(n+1)]`
-/

namespace A153033.P4928580677104813934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107907 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153033.P4928580677104813934

namespace A153033

/-- `∩[A003754(n+1), A107907(n+1)]` -/
def P4928580677104813934.Spec : Prop :=
  ∀ n, (P4928580677104813934.a n : ℤ) = A153033 (n + 1)

end A153033

/-! ## A153033.P3617178865255470181

`eq[2, A000038(A107782(n)+A085357(n))]`
-/

namespace A153033.P3617178865255470181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A107782 n + A085357 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153033.P3617178865255470181

namespace A153033

/-- `eq[2, A000038(A107782(n)+A085357(n))]` -/
def P3617178865255470181.Spec : Prop :=
  ∀ n, (P3617178865255470181.a n : ℤ) = A153033 (n + 1)

end A153033

/-! ## A153033.P6039906336789128430

`eq[A060632(A091460(n)+2), A091460(n)]`
-/

namespace A153033.P6039906336789128430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (A091460 n + 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153033.P6039906336789128430

namespace A153033

/-- `eq[A060632(A091460(n)+2), A091460(n)]` -/
def P6039906336789128430.Spec : Prop :=
  ∀ n, (P6039906336789128430.a n : ℤ) = A153033 (n + 1)

end A153033

/-! ## A153033.P13488137165060939434

`eq[A077750(A091460(n)-1), A091460(n)]`
-/

namespace A153033.P13488137165060939434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077750 (A091460 n - 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153033.P13488137165060939434

namespace A153033

/-- `eq[A077750(A091460(n)-1), A091460(n)]` -/
def P13488137165060939434.Spec : Prop :=
  ∀ n, (P13488137165060939434.a n : ℤ) = A153033 (n + 1)

end A153033

/-! ## A153033.P6310485332217976459

`eq[4*A030308(A091460(n)), A261922(n)]`
-/

namespace A153033.P6310485332217976459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A030308 (A091460 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261922 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153033.P6310485332217976459

namespace A153033

/-- `eq[4*A030308(A091460(n)), A261922(n)]` -/
def P6310485332217976459.Spec : Prop :=
  ∀ n, (P6310485332217976459.a n : ℤ) = A153033 (n + 1)

end A153033

/-! ## A153033.P11806633056714134197

`eq[A000038(n)-A085357(n), A107782(n)]`
-/

namespace A153033.P11806633056714134197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A085357 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153033.P11806633056714134197

namespace A153033

/-- `eq[A000038(n)-A085357(n), A107782(n)]` -/
def P11806633056714134197.Spec : Prop :=
  ∀ n, (P11806633056714134197.a n : ℤ) = A153033 (n + 1)

end A153033

/-! ## A153033.P14825796520704556261

`eq[A107782(n)+A132971(n)², A000038(n)]`
-/

namespace A153033.P14825796520704556261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 n + A132971 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153033.P14825796520704556261

namespace A153033

/-- `eq[A107782(n)+A132971(n)², A000038(n)]` -/
def P14825796520704556261.Spec : Prop :=
  ∀ n, (P14825796520704556261.a n : ℤ) = A153033 (n + 1)

end A153033

/-!
# A153034: Numbers with adjacent 0's and no adjacent 1's in binary expansion.

The programs for A153034, the canonical program `A153034.P227806529242985448` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153034 has offset 1).

The definition of A153034 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9981 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153034.P8523882053403098242

`A003714(comp[ceil(ϕ*a(n-1))])` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A153034.P8523882053403098242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0, 1] fun n f1 =>
  ⌈Real.goldenRatio * (f1 (n - 1) : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A153034.P8523882053403098242

namespace A153034

/-- `A003714(comp[ceil(ϕ*a(n-1))])` -/
def P8523882053403098242.Spec : Prop :=
  ∀ n, P8523882053403098242.a n = A153034 (n + 1)

end A153034

/-! ## A153034.P13670943726798760025

`A003714(comp[a(n-1)+a(n-2)+1])` with `a(0)=-4, a(1)=1`
-/

namespace A153034.P13670943726798760025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-4, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2) + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A153034.P13670943726798760025

namespace A153034

/-- `A003714(comp[a(n-1)+a(n-2)+1])` -/
def P13670943726798760025.Spec : Prop :=
  ∀ n, P13670943726798760025.a n = A153034 (n + 1)

end A153034

/-! ## A153034.P11610566230325791182

`A003714(eq[0, A192687(n)])`
-/

namespace A153034.P11610566230325791182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A153034.P11610566230325791182

namespace A153034

/-- `A003714(eq[0, A192687(n)])` -/
def P11610566230325791182.Spec : Prop :=
  ∀ n, P11610566230325791182.a n = A153034 (n + 1)

end A153034

/-! ## A153034.P10707862386160438195

`A003714(lt[1, A000119(n)])`
-/

namespace A153034.P10707862386160438195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A153034.P10707862386160438195

namespace A153034

/-- `A003714(lt[1, A000119(n)])` -/
def P10707862386160438195.Spec : Prop :=
  ∀ n, P10707862386160438195.a n = A153034 (n + 1)

end A153034

/-! ## A153034.P10529223691149165666

`A003714(lt[1, A227355(n)])`
-/

namespace A153034.P10529223691149165666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A153034.P10529223691149165666

namespace A153034

/-- `A003714(lt[1, A227355(n)])` -/
def P10529223691149165666.Spec : Prop :=
  ∀ n, P10529223691149165666.a n = A153034 (n + 1)

end A153034

/-! ## A153034.P6036478387398243857

`A003714(lt[1, A295540(n)])`
-/

namespace A153034.P6036478387398243857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295540 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A153034.P6036478387398243857

namespace A153034

/-- `A003714(lt[1, A295540(n)])` -/
def P6036478387398243857.Spec : Prop :=
  ∀ n, P6036478387398243857.a n = A153034 (n + 1)

end A153034

/-! ## A153034.P2537822123874895435

`A003714(comp[∑[A000045(n)]])`
-/

namespace A153034.P2537822123874895435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A153034.P2537822123874895435

namespace A153034

/-- `A003714(comp[∑[A000045(n)]])` -/
def P2537822123874895435.Spec : Prop :=
  ∀ n, P2537822123874895435.a n = A153034 (n + 1)

end A153034

/-! ## A153034.P227806529242985448

`A003714(A001690(n+1)-1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A153034

/-- `A003714(A001690(n+1)-1)` -/
def P227806529242985448.Spec : Prop :=
  ∀ n, P227806529242985448.a n = A153034 (n + 1)

theorem P227806529242985448.correct : P227806529242985448.Spec := by
  intro n
  simp only [A153034, Nat.add_sub_cancel]

end A153034

/-! ## A153034.P8992105989416624741

`eq[0, A319419(n)]`
-/

namespace A153034.P8992105989416624741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319419 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153034.P8992105989416624741

namespace A153034

/-- `eq[0, A319419(n)]` -/
def P8992105989416624741.Spec : Prop :=
  ∀ n, (P8992105989416624741.a n : ℤ) = A153034 (n + 1)

end A153034

/-! ## A153034.P8903008866952099454

`A360434(A153033(n+1))`
-/

namespace A153034.P8903008866952099454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360434 (A153033 (n + 1)).toNat

end

end A153034.P8903008866952099454

namespace A153034

/-- `A360434(A153033(n+1))` -/
def P8903008866952099454.Spec : Prop :=
  ∀ n, P8903008866952099454.a n = A153034 (n + 1)

end A153034

/-! ## A153034.P14295750522202823072

`∩[A004753(n+1), A003714(n)]`
-/

namespace A153034.P14295750522202823072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153034.P14295750522202823072

namespace A153034

/-- `∩[A004753(n+1), A003714(n)]` -/
def P14295750522202823072.Spec : Prop :=
  ∀ n, (P14295750522202823072.a n : ℤ) = A153034 (n + 1)

end A153034

/-! ## A153034.P3182126615621767435

`∩[A004753(n+1), A107909(n)]`
-/

namespace A153034.P3182126615621767435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107909 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153034.P3182126615621767435

namespace A153034

/-- `∩[A004753(n+1), A107909(n)]` -/
def P3182126615621767435.Spec : Prop :=
  ∀ n, (P3182126615621767435.a n : ℤ) = A153034 (n + 1)

end A153034

/-! ## A153034.P17476063147345599551

`filter[A004753(n+1), A085357(#)]`
-/

namespace A153034.P17476063147345599551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085357 (f1 j).toNat = 1) n)

end

end A153034.P17476063147345599551

namespace A153034

/-- `filter[A004753(n+1), A085357(#)]` -/
def P17476063147345599551.Spec : Prop :=
  ∀ n, P17476063147345599551.a n = A153034 (n + 1)

end A153034

/-! ## A153034.P1056953167725478526

`filter[A107907(n+1), A085357(#)]`
-/

namespace A153034.P1056953167725478526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107907 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085357 (f1 j).toNat = 1) n)

end

end A153034.P1056953167725478526

namespace A153034

/-- `filter[A107907(n+1), A085357(#)]` -/
def P1056953167725478526.Spec : Prop :=
  ∀ n, P1056953167725478526.a n = A153034 (n + 1)

end A153034

/-! ## A153034.P9518968388791670309

`∩[A107907(n+1), A003714(n)]`
-/

namespace A153034.P9518968388791670309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107907 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A153034.P9518968388791670309

namespace A153034

/-- `∩[A107907(n+1), A003714(n)]` -/
def P9518968388791670309.Spec : Prop :=
  ∀ n, (P9518968388791670309.a n : ℤ) = A153034 (n + 1)

end A153034

/-! ## A153034.P12431714701606980875

`lt[A344180(n), A167489(n)]`
-/

namespace A153034.P12431714701606980875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153034.P12431714701606980875

namespace A153034

/-- `lt[A344180(n), A167489(n)]` -/
def P12431714701606980875.Spec : Prop :=
  ∀ n, (P12431714701606980875.a n : ℤ) = A153034 (n + 1)

end A153034

/-! ## A153034.P8087359156772557756

`filter[A237882(n+2), A085357(#)]`
-/

namespace A153034.P8087359156772557756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237882 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085357 (f1 j).toNat = 1) n)

end

end A153034.P8087359156772557756

namespace A153034

/-- `filter[A237882(n+2), A085357(#)]` -/
def P8087359156772557756.Spec : Prop :=
  ∀ n, P8087359156772557756.a n = A153034 (n + 1)

end A153034

/-!
# A153036: Integer parts of the full Stern-Brocot tree.

The programs for A153036, the canonical program `A153036.P15641331792470478746` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153036 has offset 0).

The definition of A153036 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A090996, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A153036.P15641331792470478746

`A090996(n)-A043545(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A153036

/-- `A090996(n)-A043545(n)` -/
def P15641331792470478746.Spec : Prop :=
  ∀ n, P15641331792470478746.a n = A153036 n

theorem P15641331792470478746.correct : P15641331792470478746.Spec := by
  intro n
  simp only [A153036]

end A153036

/-! ## A153036.P17721187677182069237

`A007814(A145342(n+1))`
-/

namespace A153036.P17721187677182069237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A145342 (n + 1)).toNat

end

end A153036.P17721187677182069237

namespace A153036

/-- `A007814(A145342(n+1))` -/
def P17721187677182069237.Spec : Prop :=
  ∀ n, P17721187677182069237.a n = A153036 n

end A153036

/-! ## A153036.P715503012964170889

`val(A253565(n), 2)`
-/

namespace A153036.P715503012964170889
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A253565 n).toNat 2

end

end A153036.P715503012964170889

namespace A153036

/-- `val(A253565(n), 2)` -/
def P715503012964170889.Spec : Prop :=
  ∀ n, (P715503012964170889.a n : ℤ) = A153036 n

end A153036

/-! ## A153036.P18184610504150862854

`A090996(Δ[n²])-1`
-/

namespace A153036.P18184610504150862854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A153036.P18184610504150862854

namespace A153036

/-- `A090996(Δ[n²])-1` -/
def P18184610504150862854.Spec : Prop :=
  ∀ n, P18184610504150862854.a n = A153036 n

end A153036

/-! ## A153036.P5711904005811272059

`a(floor(n/2))-Δ[A036987(n)]` with `a(0)=0`
-/

namespace A153036.P5711904005811272059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat - (f1 (n + 1) - f1 n)

end

end A153036.P5711904005811272059

namespace A153036

/-- `a(floor(n/2))-Δ[A036987(n)]` -/
def P5711904005811272059.Spec : Prop :=
  ∀ n, P5711904005811272059.a n = A153036 n

end A153036

/-! ## A153036.P10790622784702877668

`A000523(n+1)-A063250(n)`
-/

namespace A153036.P10790622784702877668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (n + 1) - A063250 n

end

end A153036.P10790622784702877668

namespace A153036

/-- `A000523(n+1)-A063250(n)` -/
def P10790622784702877668.Spec : Prop :=
  ∀ n, P10790622784702877668.a n = A153036 n

end A153036

/-! ## A153036.P10353671373261297650

`A056963(A090996(2*n+1)-1)`
-/

namespace A153036.P10353671373261297650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056963 (A090996 (2 * n + 1) - 1).toNat

end

end A153036.P10353671373261297650

namespace A153036

/-- `A056963(A090996(2*n+1)-1)` -/
def P10353671373261297650.Spec : Prop :=
  ∀ n, P10353671373261297650.a n = A153036 n

end A153036

/-! ## A153036.P4757596588195075044

`val(A389904(2*n+1), 2)`
-/

namespace A153036.P4757596588195075044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A389904 (2 * n + 1)).toNat 2

end

end A153036.P4757596588195075044

namespace A153036

/-- `val(A389904(2*n+1), 2)` -/
def P4757596588195075044.Spec : Prop :=
  ∀ n, (P4757596588195075044.a n : ℤ) = A153036 n

end A153036

/-! ## A153036.P17735802978501065027

`A290255(A122155(n+1))`
-/

namespace A153036.P17735802978501065027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (A122155 (n + 1)).toNat

end

end A153036.P17735802978501065027

namespace A153036

/-- `A290255(A122155(n+1))` -/
def P17735802978501065027.Spec : Prop :=
  ∀ n, P17735802978501065027.a n = A153036 n

end A153036

/-! ## A153036.P8214714661675946616

`A290255(A122199(n+1))`
-/

namespace A153036.P8214714661675946616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (A122199 (n + 1)).toNat

end

end A153036.P8214714661675946616

namespace A153036

/-- `A290255(A122199(n+1))` -/
def P8214714661675946616.Spec : Prop :=
  ∀ n, P8214714661675946616.a n = A153036 n

end A153036

/-! ## A153036.P21647901364116264

`A089309(A057889(2*n+1))-1`
-/

namespace A153036.P21647901364116264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (A057889 (2 * n + 1)).toNat - 1

end

end A153036.P21647901364116264

namespace A153036

/-- `A089309(A057889(2*n+1))-1` -/
def P21647901364116264.Spec : Prop :=
  ∀ n, P21647901364116264.a n = A153036 n

end A153036

/-! ## A153036.P15605718196244838643

`A000120(n)-A000120(A087734(2*n+1))`
-/

namespace A153036.P15605718196244838643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - A000120 (A087734 (2 * n + 1)).toNat

end

end A153036.P15605718196244838643

namespace A153036

/-- `A000120(n)-A000120(A087734(2*n+1))` -/
def P15605718196244838643.Spec : Prop :=
  ∀ n, P15605718196244838643.a n = A153036 n

end A153036

/-! ## A153036.P768554004295588479

`A048881(2*n-A087734(2*n+1))`
-/

namespace A153036.P768554004295588479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 ((2 * n : ℤ) - A087734 (2 * n + 1)).toNat

end

end A153036.P768554004295588479

namespace A153036

/-- `A048881(2*n-A087734(2*n+1))` -/
def P768554004295588479.Spec : Prop :=
  ∀ n, P768554004295588479.a n = A153036 n

end A153036

/-! ## A153036.P16920549612683460472

`A119387(2*n)-A063250(2*n+1)`
-/

namespace A153036.P16920549612683460472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119387 (2 * n) - A063250 (2 * n + 1)

end

end A153036.P16920549612683460472

namespace A153036

/-- `A119387(2*n)-A063250(2*n+1)` -/
def P16920549612683460472.Spec : Prop :=
  ∀ n, P16920549612683460472.a n = A153036 n

end A153036

/-! ## A153036.P8331158269897466882

`A070939(n+1)-A070939(A035327(2*n))`
-/

namespace A153036.P8331158269897466882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (n + 1) - A070939 (A035327 (2 * n)).toNat

end

end A153036.P8331158269897466882

namespace A153036

/-- `A070939(n+1)-A070939(A035327(2*n))` -/
def P8331158269897466882.Spec : Prop :=
  ∀ n, P8331158269897466882.a n = A153036 n

end A153036

/-! ## A153036.P853831893489788749

`val(A049773(Δ[n²]), 2)`
-/

namespace A153036.P853831893489788749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A049773 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat 2

end

end A153036.P853831893489788749

namespace A153036

/-- `val(A049773(Δ[n²]), 2)` -/
def P853831893489788749.Spec : Prop :=
  ∀ n, (P853831893489788749.a n : ℤ) = A153036 n

end A153036

/-! ## A153036.P1599216267988272055

`val(A059894(Δ[n²]), 2)`
-/

namespace A153036.P1599216267988272055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A059894 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat 2

end

end A153036.P1599216267988272055

namespace A153036

/-- `val(A059894(Δ[n²]), 2)` -/
def P1599216267988272055.Spec : Prop :=
  ∀ n, (P1599216267988272055.a n : ℤ) = A153036 n

end A153036

/-! ## A153036.P5821385769727792174

`val(A341915(2*n+1), 2)`
-/

namespace A153036.P5821385769727792174
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A341915 (2 * n + 1)).toNat 2

end

end A153036.P5821385769727792174

namespace A153036

/-- `val(A341915(2*n+1), 2)` -/
def P5821385769727792174.Spec : Prop :=
  ∀ n, (P5821385769727792174.a n : ℤ) = A153036 n

end A153036

/-! ## A153036.P17135386123384799909

`val(A030109(2*n+1)+1, 2)`
-/

namespace A153036.P17135386123384799909
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A030109 (2 * n + 1) + 1).toNat 2

end

end A153036.P17135386123384799909

namespace A153036

/-- `val(A030109(2*n+1)+1, 2)` -/
def P17135386123384799909.Spec : Prop :=
  ∀ n, (P17135386123384799909.a n : ℤ) = A153036 n

end A153036

/-! ## A153036.P10250937660248991417

`val(A035928(2*n+1), 2)-1`
-/

namespace A153036.P10250937660248991417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A035928 (2 * n + 1)).toNat 2 : ℤ) - 1

end

end A153036.P10250937660248991417

namespace A153036

/-- `val(A035928(2*n+1), 2)-1` -/
def P10250937660248991417.Spec : Prop :=
  ∀ n, P10250937660248991417.a n = A153036 n

end A153036

/-!
# A153037: a(n) = 2*n^2 + 16*n + 23.

The programs for A153037, the canonical program `A153037.P14905897567203439016` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153037 has offset 0).

The definition of A153037 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n²+16*n+23` (program `A153037.P14905897567203439016`, by `A153037.P14905897567203439016.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153037.P14905897567203439016

`2*n²+16*n+23`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153037

/-- `2*n²+16*n+23` -/
def P14905897567203439016.Spec : Prop :=
  ∀ n, (P14905897567203439016.a n : ℤ) = A153037 n

theorem P14905897567203439016.correct : P14905897567203439016.Spec := by
  intro n
  simp only [A153037]

end A153037

/-! ## A153037.P5167854751285892877

`∑[a(n-1)+4]` with `a(0)=23, a(1)=18`
-/

namespace A153037.P5167854751285892877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [23, 18] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153037.P5167854751285892877

namespace A153037

/-- `∑[a(n-1)+4]` -/
def P5167854751285892877.Spec : Prop :=
  ∀ n, (P5167854751285892877.a n : ℤ) = A153037 n

end A153037

/-! ## A153037.P4310300200740010253

`(A154575(n+1)+5)%A351431(n+1)`
-/

namespace A153037.P4310300200740010253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A154575 (n + 1) + 5) (A351431 (n + 1))

end

end A153037.P4310300200740010253

namespace A153037

/-- `(A154575(n+1)+5)%A351431(n+1)` -/
def P4310300200740010253.Spec : Prop :=
  ∀ n, P4310300200740010253.a n = A153037 n

end A153037

/-! ## A153037.P16400125541720246911

`abs(A056220(n+1)-A033996(n+2))`
-/

namespace A153037.P16400125541720246911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A056220 (n + 1) - A033996 (n + 2)|

end

end A153037.P16400125541720246911

namespace A153037

/-- `abs(A056220(n+1)-A033996(n+2))` -/
def P16400125541720246911.Spec : Prop :=
  ∀ n, P16400125541720246911.a n = A153037 n

end A153037

/-! ## A153037.P9791971002422199312

`abs(8-A056220(n+4))`
-/

namespace A153037.P9791971002422199312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |8 - A056220 (n + 4)|

end

end A153037.P9791971002422199312

namespace A153037

/-- `abs(8-A056220(n+4))` -/
def P9791971002422199312.Spec : Prop :=
  ∀ n, P9791971002422199312.a n = A153037 n

end A153037

/-! ## A153037.P474477383436179570

`abs(11-A005893(n+4))`
-/

namespace A153037.P474477383436179570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |11 - A005893 (n + 4)|

end

end A153037.P474477383436179570

namespace A153037

/-- `abs(11-A005893(n+4))` -/
def P474477383436179570.Spec : Prop :=
  ∀ n, P474477383436179570.a n = A153037 n

end A153037

/-! ## A153037.P16248997801886768209

`Δ[A101853(2*(n+1))/2]`
-/

namespace A153037.P16248997801886768209
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101853 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153037.P16248997801886768209

namespace A153037

/-- `Δ[A101853(2*(n+1))/2]` -/
def P16248997801886768209.Spec : Prop :=
  ∀ n, P16248997801886768209.a n = (A153037 n : ℚ)

end A153037

/-! ## A153037.P16696580235816802705

`Δ[A140673(2*n)+A006331(n)]`
-/

namespace A153037.P16696580235816802705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140673 (2 * n) + A006331 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153037.P16696580235816802705

namespace A153037

/-- `Δ[A140673(2*n)+A006331(n)]` -/
def P16696580235816802705.Spec : Prop :=
  ∀ n, P16696580235816802705.a n = A153037 n

end A153037

/-! ## A153037.P6582145443025136061

`Δ[A291681(2*(n+1))-Δ[A291681(2*n+1)]]`
-/

namespace A153037.P6582145443025136061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291681 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291681 (2 * (n + 1)) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A153037.P6582145443025136061

namespace A153037

/-- `Δ[A291681(2*(n+1))-Δ[A291681(2*n+1)]]` -/
def P6582145443025136061.Spec : Prop :=
  ∀ n, P6582145443025136061.a n = A153037 n

end A153037

/-! ## A153037.P2446553226921366307

`A000027(A161532(n+2)-2)`
-/

namespace A153037.P2446553226921366307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A161532 (n + 2) - 2).toNat

end

end A153037.P2446553226921366307

namespace A153037

/-- `A000027(A161532(n+2)-2)` -/
def P2446553226921366307.Spec : Prop :=
  ∀ n, P2446553226921366307.a n = A153037 n

end A153037

/-! ## A153037.P5131282478993010928

`A000027(A268581(n+2)-6)`
-/

namespace A153037.P5131282478993010928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A268581 (n + 2) - 6).toNat

end

end A153037.P5131282478993010928

namespace A153037

/-- `A000027(A268581(n+2)-6)` -/
def P5131282478993010928.Spec : Prop :=
  ∀ n, P5131282478993010928.a n = A153037 n

end A153037

/-! ## A153037.P159813072686072602

`A000027(A090288(n+2)+2*n+1)`
-/

namespace A153037.P159813072686072602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A090288 (n + 2) + (2 * n + 1 : ℤ)).toNat

end

end A153037.P159813072686072602

namespace A153037

/-- `A000027(A090288(n+2)+2*n+1)` -/
def P159813072686072602.Spec : Prop :=
  ∀ n, P159813072686072602.a n = A153037 n

end A153037

/-! ## A153037.P4513881990320278929

`A125746(A052905(2*(n+2))+n)`
-/

namespace A153037.P4513881990320278929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A052905 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A153037.P4513881990320278929

namespace A153037

/-- `A125746(A052905(2*(n+2))+n)` -/
def P4513881990320278929.Spec : Prop :=
  ∀ n, P4513881990320278929.a n = A153037 n

end A153037

/-! ## A153037.P8718434935378082097

`A125746(A055999(2*(n+2))+n+1)`
-/

namespace A153037.P8718434935378082097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125746 (A055999 (2 * (n + 2)) + (n + 1 : ℤ)).toNat

end

end A153037.P8718434935378082097

namespace A153037

/-- `A125746(A055999(2*(n+2))+n+1)` -/
def P8718434935378082097.Spec : Prop :=
  ∀ n, P8718434935378082097.a n = A153037 n

end A153037

/-! ## A153037.P10906003322130269503

`A056203(∑[n+3]+1)`
-/

namespace A153037.P10906003322130269503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056203 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A153037.P10906003322130269503

namespace A153037

/-- `A056203(∑[n+3]+1)` -/
def P10906003322130269503.Spec : Prop :=
  ∀ n, P10906003322130269503.a n = A153037 n

end A153037

/-! ## A153037.P12145044084028842448

`A155724(A052905(n+2)+2)`
-/

namespace A153037.P12145044084028842448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155724 (A052905 (n + 2) + 2).toNat

end

end A153037.P12145044084028842448

namespace A153037

/-- `A155724(A052905(n+2)+2)` -/
def P12145044084028842448.Spec : Prop :=
  ∀ n, P12145044084028842448.a n = A153037 n

end A153037

/-! ## A153037.P1694005456601832050

`A154685(A000217(n+6)-5)`
-/

namespace A153037.P1694005456601832050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154685 (A000217 (n + 6) - 5).toNat

end

end A153037.P1694005456601832050

namespace A153037

/-- `A154685(A000217(n+6)-5)` -/
def P1694005456601832050.Spec : Prop :=
  ∀ n, P1694005456601832050.a n = A153037 n

end A153037

/-! ## A153037.P1356312096651996141

`A154685(A302537(n+2)-2*n)`
-/

namespace A153037.P1356312096651996141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154685 (A302537 (n + 2) - (2 * n : ℤ)).toNat

end

end A153037.P1356312096651996141

namespace A153037

/-- `A154685(A302537(n+2)-2*n)` -/
def P1356312096651996141.Spec : Prop :=
  ∀ n, P1356312096651996141.a n = A153037 n

end A153037

/-!
# A153039: Numbers k such that 2*k-7 is composite.

The programs for A153039, the canonical program `A153039.P14190860570720615012` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153039 has offset 1).

The definition of A153039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153039.P7523219198181417504

`A153040(n+1)+1`
-/

namespace A153039.P7523219198181417504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1) + 1

end

end A153039.P7523219198181417504

namespace A153039

/-- `A153040(n+1)+1` -/
def P7523219198181417504.Spec : Prop :=
  ∀ n, P7523219198181417504.a n = A153039 (n + 1)

end A153039

/-! ## A153039.P14190860570720615012

`A053726(n+1)+3`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A153039

/-- `A053726(n+1)+3` -/
def P14190860570720615012.Spec : Prop :=
  ∀ n, P14190860570720615012.a n = A153039 (n + 1)

theorem P14190860570720615012.correct : P14190860570720615012.Spec := by
  intro n
  simp only [A153039, Nat.add_sub_cancel]

end A153039

/-! ## A153039.P10776854269047931868

`A153045(n+1)-2`
-/

namespace A153039.P10776854269047931868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153045 (n + 1) - 2

end

end A153039.P10776854269047931868

namespace A153039

/-- `A153045(n+1)-2` -/
def P10776854269047931868.Spec : Prop :=
  ∀ n, P10776854269047931868.a n = A153039 (n + 1)

end A153039

/-! ## A153039.P16077770589442127980

`A104275(n+2)+3`
-/

namespace A153039.P16077770589442127980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 2) + 3

end

end A153039.P16077770589442127980

namespace A153039

/-- `A104275(n+2)+3` -/
def P16077770589442127980.Spec : Prop :=
  ∀ n, P16077770589442127980.a n = A153039 (n + 1)

end A153039

/-! ## A153039.P8685688118789185239

`A153047(n+1)-4`
-/

namespace A153039.P8685688118789185239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153047 (n + 1) - 4

end

end A153039.P8685688118789185239

namespace A153039

/-- `A153047(n+1)-4` -/
def P8685688118789185239.Spec : Prop :=
  ∀ n, P8685688118789185239.a n = A153039 (n + 1)

end A153039

/-! ## A153039.P10580982617988744856

`A153238(n+1)+5`
-/

namespace A153039.P10580982617988744856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1) + 5

end

end A153039.P10580982617988744856

namespace A153039

/-- `A153238(n+1)+5` -/
def P10580982617988744856.Spec : Prop :=
  ∀ n, P10580982617988744856.a n = A153039 (n + 1)

end A153039

/-! ## A153039.P1260248313596137837

`A153052(n+1)+6`
-/

namespace A153039.P1260248313596137837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 1) + 6

end

end A153039.P1260248313596137837

namespace A153039

/-- `A153052(n+1)+6` -/
def P1260248313596137837.Spec : Prop :=
  ∀ n, P1260248313596137837.a n = A153039 (n + 1)

end A153039

/-! ## A153039.P13980817504840840450

`A153053(n+1)+7`
-/

namespace A153039.P13980817504840840450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153053 (n + 1) + 7

end

end A153039.P13980817504840840450

namespace A153039

/-- `A153053(n+1)+7` -/
def P13980817504840840450.Spec : Prop :=
  ∀ n, P13980817504840840450.a n = A153039 (n + 1)

end A153039

/-! ## A153039.P6841556550005433534

`A155723(n+1)+8`
-/

namespace A153039.P6841556550005433534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155723 (n + 1) + 8

end

end A153039.P6841556550005433534

namespace A153039

/-- `A155723(n+1)+8` -/
def P6841556550005433534.Spec : Prop :=
  ∀ n, P6841556550005433534.a n = A153039 (n + 1)

end A153039

/-! ## A153039.P18343041775964973094

`∑[A196274(n+1)]+4`
-/

namespace A153039.P18343041775964973094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A153039.P18343041775964973094

namespace A153039

/-- `∑[A196274(n+1)]+4` -/
def P18343041775964973094.Spec : Prop :=
  ∀ n, P18343041775964973094.a n = A153039 (n + 1)

end A153039

/-! ## A153039.P11016526052168628326

`A309355(n+1)/2+4`
-/

namespace A153039.P11016526052168628326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309355 (n + 1) : ℚ) / 2 + 4

end

end A153039.P11016526052168628326

namespace A153039

/-- `A309355(n+1)/2+4` -/
def P11016526052168628326.Spec : Prop :=
  ∀ n, P11016526052168628326.a n = (A153039 (n + 1) : ℚ)

end A153039

/-! ## A153039.P7601046318956438497

`A146538(n+1)/2+5`
-/

namespace A153039.P7601046318956438497
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146538 (n + 1) : ℚ) / 2 + 5

end

end A153039.P7601046318956438497

namespace A153039

/-- `A146538(n+1)/2+5` -/
def P7601046318956438497.Spec : Prop :=
  ∀ n, P7601046318956438497.a n = (A153039 (n + 1) : ℚ)

end A153039

/-! ## A153039.P9136173279784424473

`A008508(n+1)+5+n`
-/

namespace A153039.P9136173279784424473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008508 (n + 1) + 5 + (n : ℤ)

end

end A153039.P9136173279784424473

namespace A153039

/-- `A008508(n+1)+5+n` -/
def P9136173279784424473.Spec : Prop :=
  ∀ n, P9136173279784424473.a n = A153039 (n + 1)

end A153039

/-! ## A153039.P17893019079625010782

`A336407(n+1)+5-n`
-/

namespace A153039.P17893019079625010782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336407 (n + 1) + (5 - (n : ℤ))

end

end A153039.P17893019079625010782

namespace A153039

/-- `A336407(n+1)+5-n` -/
def P17893019079625010782.Spec : Prop :=
  ∀ n, P17893019079625010782.a n = A153039 (n + 1)

end A153039

/-! ## A153039.P10716968945425964200

`lt[1, A001222(2*n+1)]+4`
-/

namespace A153039.P10716968945425964200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 4

end

end A153039.P10716968945425964200

namespace A153039

/-- `lt[1, A001222(2*n+1)]+4` -/
def P10716968945425964200.Spec : Prop :=
  ∀ n, (P10716968945425964200.a n : ℤ) = A153039 (n + 1)

end A153039

/-! ## A153039.P257521298716332209

`lt[2, A000005(2*n+1)]+4`
-/

namespace A153039.P257521298716332209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 4

end

end A153039.P257521298716332209

namespace A153039

/-- `lt[2, A000005(2*n+1)]+4` -/
def P257521298716332209.Spec : Prop :=
  ∀ n, (P257521298716332209.a n : ℤ) = A153039 (n + 1)

end A153039

/-! ## A153039.P16986564941699627817

`lt[A006530(2*n+1), n]+4`
-/

namespace A153039.P16986564941699627817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 4

end

end A153039.P16986564941699627817

namespace A153039

/-- `lt[A006530(2*n+1), n]+4` -/
def P16986564941699627817.Spec : Prop :=
  ∀ n, (P16986564941699627817.a n : ℤ) = A153039 (n + 1)

end A153039

/-! ## A153039.P10981408746605404997

`lt[A020639(2*n+1), n]+4`
-/

namespace A153039.P10981408746605404997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 4

end

end A153039.P10981408746605404997

namespace A153039

/-- `lt[A020639(2*n+1), n]+4` -/
def P10981408746605404997.Spec : Prop :=
  ∀ n, (P10981408746605404997.a n : ℤ) = A153039 (n + 1)

end A153039

/-! ## A153039.P8110500664964814223

`A020710(n)+A008508(n+1)`
-/

namespace A153039.P8110500664964814223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n + A008508 (n + 1)

end

end A153039.P8110500664964814223

namespace A153039

/-- `A020710(n)+A008508(n+1)` -/
def P8110500664964814223.Spec : Prop :=
  ∀ n, P8110500664964814223.a n = A153039 (n + 1)

end A153039

/-! ## A153039.P14013438691931769222

`A153043(n+2)+2`
-/

namespace A153039.P14013438691931769222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 2) + 2

end

end A153039.P14013438691931769222

namespace A153039

/-- `A153043(n+2)+2` -/
def P14013438691931769222.Spec : Prop :=
  ∀ n, P14013438691931769222.a n = A153039 (n + 1)

end A153039

/-!
# A153040: Numbers n>3 such that 2*n-5 is not a prime.

The programs for A153040, the canonical program `A153040.P8115147575926402282` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153040 has offset 1).

The definition of A153040 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153040.P8115147575926402282

`A053726(n+1)+2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A153040

/-- `A053726(n+1)+2` -/
def P8115147575926402282.Spec : Prop :=
  ∀ n, P8115147575926402282.a n = A153040 (n + 1)

theorem P8115147575926402282.correct : P8115147575926402282.Spec := by
  intro n
  simp only [A153040, Nat.add_sub_cancel]

end A153040

/-! ## A153040.P9997132949993671303

`A153039(n+1)-1`
-/

namespace A153040.P9997132949993671303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153039 (n + 1) - 1

end

end A153040.P9997132949993671303

namespace A153040

/-- `A153039(n+1)-1` -/
def P9997132949993671303.Spec : Prop :=
  ∀ n, P9997132949993671303.a n = A153040 (n + 1)

end A153040

/-! ## A153040.P1716939037419696711

`A104275(n+2)+2`
-/

namespace A153040.P1716939037419696711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 2) + 2

end

end A153040.P1716939037419696711

namespace A153040

/-- `A104275(n+2)+2` -/
def P1716939037419696711.Spec : Prop :=
  ∀ n, P1716939037419696711.a n = A153040 (n + 1)

end A153040

/-! ## A153040.P12136300089660274900

`A153045(n+1)-3`
-/

namespace A153040.P12136300089660274900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153045 (n + 1) - 3

end

end A153040.P12136300089660274900

namespace A153040

/-- `A153045(n+1)-3` -/
def P12136300089660274900.Spec : Prop :=
  ∀ n, P12136300089660274900.a n = A153040 (n + 1)

end A153040

/-! ## A153040.P11859550686830101991

`A153238(n+1)+4`
-/

namespace A153040.P11859550686830101991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1) + 4

end

end A153040.P11859550686830101991

namespace A153040

/-- `A153238(n+1)+4` -/
def P11859550686830101991.Spec : Prop :=
  ∀ n, P11859550686830101991.a n = A153040 (n + 1)

end A153040

/-! ## A153040.P5464196607172967385

`A153052(n+1)+5`
-/

namespace A153040.P5464196607172967385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 1) + 5

end

end A153040.P5464196607172967385

namespace A153040

/-- `A153052(n+1)+5` -/
def P5464196607172967385.Spec : Prop :=
  ∀ n, P5464196607172967385.a n = A153040 (n + 1)

end A153040

/-! ## A153040.P10054106637100483910

`A153047(n+1)-5`
-/

namespace A153040.P10054106637100483910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153047 (n + 1) - 5

end

end A153040.P10054106637100483910

namespace A153040

/-- `A153047(n+1)-5` -/
def P10054106637100483910.Spec : Prop :=
  ∀ n, P10054106637100483910.a n = A153040 (n + 1)

end A153040

/-! ## A153040.P9969608628512570078

`A153053(n+1)+6`
-/

namespace A153040.P9969608628512570078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153053 (n + 1) + 6

end

end A153040.P9969608628512570078

namespace A153040

/-- `A153053(n+1)+6` -/
def P9969608628512570078.Spec : Prop :=
  ∀ n, P9969608628512570078.a n = A153040 (n + 1)

end A153040

/-! ## A153040.P14792728468433868807

`A155723(n+1)+7`
-/

namespace A153040.P14792728468433868807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155723 (n + 1) + 7

end

end A153040.P14792728468433868807

namespace A153040

/-- `A155723(n+1)+7` -/
def P14792728468433868807.Spec : Prop :=
  ∀ n, P14792728468433868807.a n = A153040 (n + 1)

end A153040

/-! ## A153040.P15355717417056046590

`∑[A196274(n+1)]+3`
-/

namespace A153040.P15355717417056046590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A153040.P15355717417056046590

namespace A153040

/-- `∑[A196274(n+1)]+3` -/
def P15355717417056046590.Spec : Prop :=
  ∀ n, P15355717417056046590.a n = A153040 (n + 1)

end A153040

/-! ## A153040.P10463579808337366927

`A309355(n+1)/2+3`
-/

namespace A153040.P10463579808337366927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309355 (n + 1) : ℚ) / 2 + 3

end

end A153040.P10463579808337366927

namespace A153040

/-- `A309355(n+1)/2+3` -/
def P10463579808337366927.Spec : Prop :=
  ∀ n, P10463579808337366927.a n = (A153040 (n + 1) : ℚ)

end A153040

/-! ## A153040.P920070538862787486

`A146538(n+1)/2+4`
-/

namespace A153040.P920070538862787486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146538 (n + 1) : ℚ) / 2 + 4

end

end A153040.P920070538862787486

namespace A153040

/-- `A146538(n+1)/2+4` -/
def P920070538862787486.Spec : Prop :=
  ∀ n, P920070538862787486.a n = (A153040 (n + 1) : ℚ)

end A153040

/-! ## A153040.P3016283558301020000

`(A071904(n+1)+5)/2`
-/

namespace A153040.P3016283558301020000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071904 (n + 1) + 5 : ℚ) / 2

end

end A153040.P3016283558301020000

namespace A153040

/-- `(A071904(n+1)+5)/2` -/
def P3016283558301020000.Spec : Prop :=
  ∀ n, P3016283558301020000.a n = (A153040 (n + 1) : ℚ)

end A153040

/-! ## A153040.P568431503006005912

`A008508(n+1)+4+n`
-/

namespace A153040.P568431503006005912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008508 (n + 1) + 4 + (n : ℤ)

end

end A153040.P568431503006005912

namespace A153040

/-- `A008508(n+1)+4+n` -/
def P568431503006005912.Spec : Prop :=
  ∀ n, P568431503006005912.a n = A153040 (n + 1)

end A153040

/-! ## A153040.P2382678712712509973

`A336407(n+1)+4-n`
-/

namespace A153040.P2382678712712509973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336407 (n + 1) + (4 - (n : ℤ))

end

end A153040.P2382678712712509973

namespace A153040

/-- `A336407(n+1)+4-n` -/
def P2382678712712509973.Spec : Prop :=
  ∀ n, P2382678712712509973.a n = A153040 (n + 1)

end A153040

/-! ## A153040.P12911545007656056308

`lt[1, A001222(2*n+1)]+3`
-/

namespace A153040.P12911545007656056308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3

end

end A153040.P12911545007656056308

namespace A153040

/-- `lt[1, A001222(2*n+1)]+3` -/
def P12911545007656056308.Spec : Prop :=
  ∀ n, (P12911545007656056308.a n : ℤ) = A153040 (n + 1)

end A153040

/-! ## A153040.P2530977943676700416

`lt[2, A000005(2*n+1)]+3`
-/

namespace A153040.P2530977943676700416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 3

end

end A153040.P2530977943676700416

namespace A153040

/-- `lt[2, A000005(2*n+1)]+3` -/
def P2530977943676700416.Spec : Prop :=
  ∀ n, (P2530977943676700416.a n : ℤ) = A153040 (n + 1)

end A153040

/-! ## A153040.P10751430750985123316

`A020705(n)+A008508(n+1)`
-/

namespace A153040.P10751430750985123316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 n + A008508 (n + 1)

end

end A153040.P10751430750985123316

namespace A153040

/-- `A020705(n)+A008508(n+1)` -/
def P10751430750985123316.Spec : Prop :=
  ∀ n, P10751430750985123316.a n = A153040 (n + 1)

end A153040

/-! ## A153040.P17493753782288245430

`A153044(n+1)+A144411(n+1)`
-/

namespace A153040.P17493753782288245430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153044 (n + 1) + A144411 (n + 1)

end

end A153040.P17493753782288245430

namespace A153040

/-- `A153044(n+1)+A144411(n+1)` -/
def P17493753782288245430.Spec : Prop :=
  ∀ n, P17493753782288245430.a n = A153040 (n + 1)

end A153040

/-! ## A153040.P15066699216329505350

`A153043(n+2)+1`
-/

namespace A153040.P15066699216329505350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 2) + 1

end

end A153040.P15066699216329505350

namespace A153040

/-- `A153043(n+2)+1` -/
def P15066699216329505350.Spec : Prop :=
  ∀ n, P15066699216329505350.a n = A153040 (n + 1)

end A153040

/-!
# A153041: Numbers n >=10 such that 2*n-19 is not a prime.

The programs for A153041, the canonical program `A153041.P5870166533893309816` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153041 has offset 1).

The definition of A153041 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153041.P5870166533893309816

`A153051(n+1)+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A153041

/-- `A153051(n+1)+1` -/
def P5870166533893309816.Spec : Prop :=
  ∀ n, P5870166533893309816.a n = A153041 (n + 1)

theorem P5870166533893309816.correct : P5870166533893309816.Spec := by
  intro n
  simp only [A153041, Nat.add_sub_cancel]

end A153041

/-! ## A153041.P4267225176573882548

`A153049(n+1)+3`
-/

namespace A153041.P4267225176573882548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153049 (n + 1) + 3

end

end A153041.P4267225176573882548

namespace A153041

/-- `A153049(n+1)+3` -/
def P4267225176573882548.Spec : Prop :=
  ∀ n, P4267225176573882548.a n = A153041 (n + 1)

end A153041

/-! ## A153041.P13535221507631669041

`A153044(n+1)+5`
-/

namespace A153041.P13535221507631669041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153044 (n + 1) + 5

end

end A153041.P13535221507631669041

namespace A153041

/-- `A153044(n+1)+5` -/
def P13535221507631669041.Spec : Prop :=
  ∀ n, P13535221507631669041.a n = A153041 (n + 1)

end A153041

/-! ## A153041.P7896670860209149897

`A153043(n+1)+8`
-/

namespace A153041.P7896670860209149897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 1) + 8

end

end A153041.P7896670860209149897

namespace A153041

/-- `A153043(n+1)+8` -/
def P7896670860209149897.Spec : Prop :=
  ∀ n, P7896670860209149897.a n = A153041 (n + 1)

end A153041

/-! ## A153041.P14801798528782663861

`A104275(n+1)+9`
-/

namespace A153041.P14801798528782663861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1) + 9

end

end A153041.P14801798528782663861

namespace A153041

/-- `A104275(n+1)+9` -/
def P14801798528782663861.Spec : Prop :=
  ∀ n, P14801798528782663861.a n = A153041 (n + 1)

end A153041

/-! ## A153041.P12923252780813951474

`comp[A005097(n+1)]+10`
-/

namespace A153041.P12923252780813951474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 10

end

end A153041.P12923252780813951474

namespace A153041

/-- `comp[A005097(n+1)]+10` -/
def P12923252780813951474.Spec : Prop :=
  ∀ n, (P12923252780813951474.a n : ℤ) = A153041 (n + 1)

end A153041

/-! ## A153041.P12822299215050981229

`comp[A130290(n+1)]+10`
-/

namespace A153041.P12822299215050981229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 10

end

end A153041.P12822299215050981229

namespace A153041

/-- `comp[A130290(n+1)]+10` -/
def P12822299215050981229.Spec : Prop :=
  ∀ n, (P12822299215050981229.a n : ℤ) = A153041 (n + 1)

end A153041

/-! ## A153041.P6735138250113773326

`round(cosh(log(A014076(n+1))))+9`
-/

namespace A153041.P6735138250113773326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (A014076 (n + 1) : ℝ))) + 9

end

end A153041.P6735138250113773326

namespace A153041

/-- `round(cosh(log(A014076(n+1))))+9` -/
def P6735138250113773326.Spec : Prop :=
  ∀ n, P6735138250113773326.a n = A153041 (n + 1)

end A153041

/-! ## A153041.P18105566233329673882

`10+eq[1, A292438(2*n+1)]`
-/

namespace A153041.P18105566233329673882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153041.P18105566233329673882

namespace A153041

/-- `10+eq[1, A292438(2*n+1)]` -/
def P18105566233329673882.Spec : Prop :=
  ∀ n, (P18105566233329673882.a n : ℤ) = A153041 (n + 1)

end A153041

/-! ## A153041.P14292157541777724263

`lt[A006530(2*n+1), n+2]+10`
-/

namespace A153041.P14292157541777724263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 10

end

end A153041.P14292157541777724263

namespace A153041

/-- `lt[A006530(2*n+1), n+2]+10` -/
def P14292157541777724263.Spec : Prop :=
  ∀ n, (P14292157541777724263.a n : ℤ) = A153041 (n + 1)

end A153041

/-! ## A153041.P9131798674801993933

`lt[A020639(2*n+1), n+2]+10`
-/

namespace A153041.P9131798674801993933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 10

end

end A153041.P9131798674801993933

namespace A153041

/-- `lt[A020639(2*n+1), n+2]+10` -/
def P9131798674801993933.Spec : Prop :=
  ∀ n, (P9131798674801993933.a n : ℤ) = A153041 (n + 1)

end A153041

/-! ## A153041.P7232212683693383921

`A153047(n+1)-A144411(n+1)`
-/

namespace A153041.P7232212683693383921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153047 (n + 1) - A144411 (n + 1)

end

end A153041.P7232212683693383921

namespace A153041

/-- `A153047(n+1)-A144411(n+1)` -/
def P7232212683693383921.Spec : Prop :=
  ∀ n, P7232212683693383921.a n = A153041 (n + 1)

end A153041

/-! ## A153041.P17741783155566649288

`A020722(A153043(n+1))`
-/

namespace A153041.P17741783155566649288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020722 (A153043 (n + 1)).toNat

end

end A153041.P17741783155566649288

namespace A153041

/-- `A020722(A153043(n+1))` -/
def P17741783155566649288.Spec : Prop :=
  ∀ n, P17741783155566649288.a n = A153041 (n + 1)

end A153041

/-! ## A153041.P2955538034816986232

`A020723(A047845(n+1)+1)`
-/

namespace A153041.P2955538034816986232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (A047845 (n + 1) + 1).toNat

end

end A153041.P2955538034816986232

namespace A153041

/-- `A020723(A047845(n+1)+1)` -/
def P2955538034816986232.Spec : Prop :=
  ∀ n, P2955538034816986232.a n = A153041 (n + 1)

end A153041

/-! ## A153041.P10392061983487079391

`A020719(A047845(n+1)+1)+2`
-/

namespace A153041.P10392061983487079391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 (A047845 (n + 1) + 1).toNat + 2

end

end A153041.P10392061983487079391

namespace A153041

/-- `A020719(A047845(n+1)+1)+2` -/
def P10392061983487079391.Spec : Prop :=
  ∀ n, P10392061983487079391.a n = A153041 (n + 1)

end A153041

/-! ## A153041.P2138535202623854557

`A020710(A153044(n+1))`
-/

namespace A153041.P2138535202623854557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A153044 (n + 1)).toNat

end

end A153041.P2138535202623854557

namespace A153041

/-- `A020710(A153044(n+1))` -/
def P2138535202623854557.Spec : Prop :=
  ∀ n, P2138535202623854557.a n = A153041 (n + 1)

end A153041

/-! ## A153041.P92815076644126361

`A009005(A153049(n+1))`
-/

namespace A153041.P92815076644126361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009005 (A153049 (n + 1)).toNat

end

end A153041.P92815076644126361

namespace A153041

/-- `A009005(A153049(n+1))` -/
def P92815076644126361.Spec : Prop :=
  ∀ n, P92815076644126361.a n = A153041 (n + 1)

end A153041

/-! ## A153041.P12193844271234132810

`A020725(A153051(n+1))`
-/

namespace A153041.P12193844271234132810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A153051 (n + 1)).toNat

end

end A153041.P12193844271234132810

namespace A153041

/-- `A020725(A153051(n+1))` -/
def P12193844271234132810.Spec : Prop :=
  ∀ n, P12193844271234132810.a n = A153041 (n + 1)

end A153041

/-! ## A153041.P8232105220537593422

`lt[A014963(2*n+1), n+2]+10`
-/

namespace A153041.P8232105220537593422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 10

end

end A153041.P8232105220537593422

namespace A153041

/-- `lt[A014963(2*n+1), n+2]+10` -/
def P8232105220537593422.Spec : Prop :=
  ∀ n, (P8232105220537593422.a n : ℤ) = A153041 (n + 1)

end A153041

/-!
# A153042: a(n)...a(1) = digital representation of n-digit number m, the cube of which, m^3, ends with n 1's.

The programs for A153042, there is no canonical definition to state claims against.
-/

/-! ## A153042.P12821732539160072178

`A225401(n)+A225410(n)-A225412(n)`
-/

namespace A153042.P12821732539160072178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A225412 n)

end

end A153042.P12821732539160072178

/-! ## A153042.P366260239745184488

`A225402(n)+A225411(n)-A225412(n)`
-/

namespace A153042.P366260239745184488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A225412 n)

end

end A153042.P366260239745184488

/-! ## A153042.P2467636395358250310

`A225405(n)+A225408(n)-A225412(n)`
-/

namespace A153042.P2467636395358250310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A225412 n)

end

end A153042.P2467636395358250310

/-! ## A153042.P13057364391881858436

`A225406(n)+A225409(n)-A225412(n)`
-/

namespace A153042.P13057364391881858436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A225412 n)

end

end A153042.P13057364391881858436

/-! ## A153042.P6192831407943013691

`A225442(n)+A225451(n)-A225412(n)`
-/

namespace A153042.P6192831407943013691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225442 n + (A225451 n - A225412 n)

end

end A153042.P6192831407943013691

/-! ## A153042.P16129893747953670909

`A309604(n)+A309644(n)-A225412(n)`
-/

namespace A153042.P16129893747953670909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309604 n + (A309644 n - A225412 n)

end

end A153042.P16129893747953670909

/-! ## A153042.P4682572181402714822

`A225404(n+1)+A225407(n)-A225412(n)`
-/

namespace A153042.P4682572181402714822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A225412 n)

end

end A153042.P4682572181402714822

/-! ## A153042.P16927371790444151324

`A306552(n+1)+A319739(n)-A225412(n)`
-/

namespace A153042.P16927371790444151324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306552 (n + 1) + (A319739 n - A225412 n)

end

end A153042.P16927371790444151324

/-! ## A153042.P4684035064777780442

`A306554(n+1)+A306555(n+1)-A225412(n)`
-/

namespace A153042.P4684035064777780442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306554 (n + 1) + (A306555 (n + 1) - A225412 n)

end

end A153042.P4684035064777780442

/-! ## A153042.P4509057615883631312

`A306553(n+1)+A319740(n+1)-A225412(n)`
-/

namespace A153042.P4509057615883631312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306553 (n + 1) + (A319740 (n + 1) - A225412 n)

end

end A153042.P4509057615883631312

/-!
# A153043: Numbers n > 1 such that 2*n-3 is not a prime.

The programs for A153043, the canonical program `A153043.P5345895486069451585` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153043 has offset 1).

The definition of A153043 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153043.P9741607302725662411

`A104275(n+1)+1`
-/

namespace A153043.P9741607302725662411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1) + 1

end

end A153043.P9741607302725662411

namespace A153043

/-- `A104275(n+1)+1` -/
def P9741607302725662411.Spec : Prop :=
  ∀ n, P9741607302725662411.a n = A153043 (n + 1)

end A153043

/-! ## A153043.P3638804925277780493

`A047845(n+1)+2`
-/

namespace A153043.P3638804925277780493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1) + 2

end

end A153043.P3638804925277780493

namespace A153043

/-- `A047845(n+1)+2` -/
def P3638804925277780493.Spec : Prop :=
  ∀ n, P3638804925277780493.a n = A153043 (n + 1)

end A153043

/-! ## A153043.P6694208531595361911

`A153044(n+1)-3`
-/

namespace A153043.P6694208531595361911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153044 (n + 1) - 3

end

end A153043.P6694208531595361911

namespace A153043

/-- `A153044(n+1)-3` -/
def P6694208531595361911.Spec : Prop :=
  ∀ n, P6694208531595361911.a n = A153043 (n + 1)

end A153043

/-! ## A153043.P1405025337978246036

`A153049(n+1)-5`
-/

namespace A153043.P1405025337978246036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153049 (n + 1) - 5

end

end A153043.P1405025337978246036

namespace A153043

/-- `A153049(n+1)-5` -/
def P1405025337978246036.Spec : Prop :=
  ∀ n, P1405025337978246036.a n = A153043 (n + 1)

end A153043

/-! ## A153043.P16944727081295496837

`A153051(n+1)-7`
-/

namespace A153043.P16944727081295496837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153051 (n + 1) - 7

end

end A153043.P16944727081295496837

namespace A153043

/-- `A153051(n+1)-7` -/
def P16944727081295496837.Spec : Prop :=
  ∀ n, P16944727081295496837.a n = A153043 (n + 1)

end A153043

/-! ## A153043.P69723709963551036

`A153041(n+1)-8`
-/

namespace A153043.P69723709963551036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153041 (n + 1) - 8

end

end A153043.P69723709963551036

namespace A153043

/-- `A153041(n+1)-8` -/
def P69723709963551036.Spec : Prop :=
  ∀ n, P69723709963551036.a n = A153043 (n + 1)

end A153043

/-! ## A153043.P5345895486069451585

`eq[0, A101264(n)]+2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A153043

/-- `eq[0, A101264(n)]+2` -/
def P5345895486069451585.Spec : Prop :=
  ∀ n, (P5345895486069451585.a n : ℤ) = A153043 (n + 1)

theorem P5345895486069451585.correct : P5345895486069451585.Spec := by
  intro n
  simp only [A153043, Nat.add_sub_cancel]

end A153043

/-! ## A153043.P5395776207919979365

`comp[A005097(n+1)]+2`
-/

namespace A153043.P5395776207919979365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A153043.P5395776207919979365

namespace A153043

/-- `comp[A005097(n+1)]+2` -/
def P5395776207919979365.Spec : Prop :=
  ∀ n, (P5395776207919979365.a n : ℤ) = A153043 (n + 1)

end A153043

/-! ## A153043.P3595842162292730182

`comp[A130290(n+1)]+2`
-/

namespace A153043.P3595842162292730182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A153043.P3595842162292730182

namespace A153043

/-- `comp[A130290(n+1)]+2` -/
def P3595842162292730182.Spec : Prop :=
  ∀ n, (P3595842162292730182.a n : ℤ) = A153043 (n + 1)

end A153043

/-! ## A153043.P3843761174191425997

`comp[A102781(n+2)]+2`
-/

namespace A153043.P3843761174191425997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A153043.P3843761174191425997

namespace A153043

/-- `comp[A102781(n+2)]+2` -/
def P3843761174191425997.Spec : Prop :=
  ∀ n, (P3843761174191425997.a n : ℤ) = A153043 (n + 1)

end A153043

/-! ## A153043.P2573983649668552120

`(A014076(n+1)+3)/2`
-/

namespace A153043.P2573983649668552120
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014076 (n + 1) + 3 : ℚ) / 2

end

end A153043.P2573983649668552120

namespace A153043

/-- `(A014076(n+1)+3)/2` -/
def P2573983649668552120.Spec : Prop :=
  ∀ n, P2573983649668552120.a n = (A153043 (n + 1) : ℚ)

end A153043

/-! ## A153043.P12860229571921429449

`A179899(n+1)/3+2`
-/

namespace A153043.P12860229571921429449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179899 (n + 1) : ℚ) / 3 + 2

end

end A153043.P12860229571921429449

namespace A153043

/-- `A179899(n+1)/3+2` -/
def P12860229571921429449.Spec : Prop :=
  ∀ n, P12860229571921429449.a n = (A153043 (n + 1) : ℚ)

end A153043

/-! ## A153043.P9730482764991001094

`(A172048(n+1)+4)/3`
-/

namespace A153043.P9730482764991001094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172048 (n + 1) + 4 : ℚ) / 3

end

end A153043.P9730482764991001094

namespace A153043

/-- `(A172048(n+1)+4)/3` -/
def P9730482764991001094.Spec : Prop :=
  ∀ n, P9730482764991001094.a n = (A153043 (n + 1) : ℚ)

end A153043

/-! ## A153043.P7515168954705794814

`A196274(n)+a(n-1)` with `a(0)=2`
-/

namespace A153043.P7515168954705794814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A196274 n + a (n - 1)

end

end A153043.P7515168954705794814

namespace A153043

/-- `A196274(n)+a(n-1)` -/
def P7515168954705794814.Spec : Prop :=
  ∀ n, P7515168954705794814.a n = A153043 (n + 1)

end A153043

/-! ## A153043.P15441745319912992784

`(A014092(n+3)+1)/2`
-/

namespace A153043.P15441745319912992784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014092 (n + 3) + 1 : ℚ) / 2

end

end A153043.P15441745319912992784

namespace A153043

/-- `(A014092(n+3)+1)/2` -/
def P15441745319912992784.Spec : Prop :=
  ∀ n, P15441745319912992784.a n = (A153043 (n + 1) : ℚ)

end A153043

/-! ## A153043.P16428282360889268317

`lt[A211173(n), 1]+2`
-/

namespace A153043.P16428282360889268317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211173 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A153043.P16428282360889268317

namespace A153043

/-- `lt[A211173(n), 1]+2` -/
def P16428282360889268317.Spec : Prop :=
  ∀ n, (P16428282360889268317.a n : ℤ) = A153043 (n + 1)

end A153043

/-! ## A153043.P15288483936552139833

`lt[∑{p}[2*n+1, #], n+2]+2`
-/

namespace A153043.P15288483936552139833
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 2

end

end A153043.P15288483936552139833

namespace A153043

/-- `lt[∑{p}[2*n+1, #], n+2]+2` -/
def P15288483936552139833.Spec : Prop :=
  ∀ n, (P15288483936552139833.a n : ℤ) = A153043 (n + 1)

end A153043

/-! ## A153043.P11993959923722334081

`lt[1, A103961(n+1)]+2`
-/

namespace A153043.P11993959923722334081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103961 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A153043.P11993959923722334081

namespace A153043

/-- `lt[1, A103961(n+1)]+2` -/
def P11993959923722334081.Spec : Prop :=
  ∀ n, (P11993959923722334081.a n : ℤ) = A153043 (n + 1)

end A153043

/-! ## A153043.P13046277342425500358

`A020725(A104275(n+1))`
-/

namespace A153043.P13046277342425500358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A104275 (n + 1)).toNat

end

end A153043.P13046277342425500358

namespace A153043

/-- `A020725(A104275(n+1))` -/
def P13046277342425500358.Spec : Prop :=
  ∀ n, P13046277342425500358.a n = A153043 (n + 1)

end A153043

/-! ## A153043.P6549596850247202927

`A023445(A153044(n+1))`
-/

namespace A153043.P6549596850247202927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A153044 (n + 1)).toNat

end

end A153043.P6549596850247202927

namespace A153043

/-- `A023445(A153044(n+1))` -/
def P6549596850247202927.Spec : Prop :=
  ∀ n, P6549596850247202927.a n = A153043 (n + 1)

end A153043

/-!
# A153044: Numbers n such that 2*n-9 is not a prime.

The programs for A153044, the canonical program `A153044.P8228127336685737390` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153044 has offset 1).

The definition of A153044 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153044.P8228127336685737390

`A153043(n+1)+3`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A153044

/-- `A153043(n+1)+3` -/
def P8228127336685737390.Spec : Prop :=
  ∀ n, P8228127336685737390.a n = A153044 (n + 1)

theorem P8228127336685737390.correct : P8228127336685737390.Spec := by
  intro n
  simp only [A153044, Nat.add_sub_cancel]

end A153044

/-! ## A153044.P17556863488152029719

`A153049(n+1)-2`
-/

namespace A153044.P17556863488152029719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153049 (n + 1) - 2

end

end A153044.P17556863488152029719

namespace A153044

/-- `A153049(n+1)-2` -/
def P17556863488152029719.Spec : Prop :=
  ∀ n, P17556863488152029719.a n = A153044 (n + 1)

end A153044

/-! ## A153044.P8464552526012091103

`A104275(n+1)+4`
-/

namespace A153044.P8464552526012091103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1) + 4

end

end A153044.P8464552526012091103

namespace A153044

/-- `A104275(n+1)+4` -/
def P8464552526012091103.Spec : Prop :=
  ∀ n, P8464552526012091103.a n = A153044 (n + 1)

end A153044

/-! ## A153044.P14793920425650222714

`A047845(n+1)+5`
-/

namespace A153044.P14793920425650222714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1) + 5

end

end A153044.P14793920425650222714

namespace A153044

/-- `A047845(n+1)+5` -/
def P14793920425650222714.Spec : Prop :=
  ∀ n, P14793920425650222714.a n = A153044 (n + 1)

end A153044

/-! ## A153044.P8435860363454838201

`A153051(n+1)-4`
-/

namespace A153044.P8435860363454838201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153051 (n + 1) - 4

end

end A153044.P8435860363454838201

namespace A153044

/-- `A153051(n+1)-4` -/
def P8435860363454838201.Spec : Prop :=
  ∀ n, P8435860363454838201.a n = A153044 (n + 1)

end A153044

/-! ## A153044.P7839330071903454458

`A153041(n+1)-5`
-/

namespace A153044.P7839330071903454458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153041 (n + 1) - 5

end

end A153044.P7839330071903454458

namespace A153044

/-- `A153041(n+1)-5` -/
def P7839330071903454458.Spec : Prop :=
  ∀ n, P7839330071903454458.a n = A153044 (n + 1)

end A153044

/-! ## A153044.P4688375573618466491

`eq[0, A101264(n)]+5`
-/

namespace A153044.P4688375573618466491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 5

end

end A153044.P4688375573618466491

namespace A153044

/-- `eq[0, A101264(n)]+5` -/
def P4688375573618466491.Spec : Prop :=
  ∀ n, (P4688375573618466491.a n : ℤ) = A153044 (n + 1)

end A153044

/-! ## A153044.P17891796375562981290

`comp[A005097(n+1)]+5`
-/

namespace A153044.P17891796375562981290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 5

end

end A153044.P17891796375562981290

namespace A153044

/-- `comp[A005097(n+1)]+5` -/
def P17891796375562981290.Spec : Prop :=
  ∀ n, (P17891796375562981290.a n : ℤ) = A153044 (n + 1)

end A153044

/-! ## A153044.P8357438202884474034

`comp[A130290(n+1)]+5`
-/

namespace A153044.P8357438202884474034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 5

end

end A153044.P8357438202884474034

namespace A153044

/-- `comp[A130290(n+1)]+5` -/
def P8357438202884474034.Spec : Prop :=
  ∀ n, (P8357438202884474034.a n : ℤ) = A153044 (n + 1)

end A153044

/-! ## A153044.P11927591335403023493

`A179899(n+1)/3+5`
-/

namespace A153044.P11927591335403023493
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179899 (n + 1) : ℚ) / 3 + 5

end

end A153044.P11927591335403023493

namespace A153044

/-- `A179899(n+1)/3+5` -/
def P11927591335403023493.Spec : Prop :=
  ∀ n, P11927591335403023493.a n = (A153044 (n + 1) : ℚ)

end A153044

/-! ## A153044.P7167950680725796595

`A196274(n)+a(n-1)` with `a(0)=5`
-/

namespace A153044.P7167950680725796595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A196274 n + a (n - 1)

end

end A153044.P7167950680725796595

namespace A153044

/-- `A196274(n)+a(n-1)` -/
def P7167950680725796595.Spec : Prop :=
  ∀ n, P7167950680725796595.a n = A153044 (n + 1)

end A153044

/-! ## A153044.P14794153749299745378

`round(cosh(log(A014076(n+1)+9)))`
-/

namespace A153044.P14794153749299745378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (A014076 (n + 1) + 9 : ℝ)))

end

end A153044.P14794153749299745378

namespace A153044

/-- `round(cosh(log(A014076(n+1)+9)))` -/
def P14794153749299745378.Spec : Prop :=
  ∀ n, P14794153749299745378.a n = A153044 (n + 1)

end A153044

/-! ## A153044.P10943891111681303576

`comp[floor(A000040(n+1)/2)]+5`
-/

namespace A153044.P10943891111681303576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 5

end

end A153044.P10943891111681303576

namespace A153044

/-- `comp[floor(A000040(n+1)/2)]+5` -/
def P10943891111681303576.Spec : Prop :=
  ∀ n, (P10943891111681303576.a n : ℤ) = A153044 (n + 1)

end A153044

/-! ## A153044.P10402733046449654044

`lt[A006530(2*n+1), n+2]+5`
-/

namespace A153044.P10402733046449654044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 5

end

end A153044.P10402733046449654044

namespace A153044

/-- `lt[A006530(2*n+1), n+2]+5` -/
def P10402733046449654044.Spec : Prop :=
  ∀ n, (P10402733046449654044.a n : ℤ) = A153044 (n + 1)

end A153044

/-! ## A153044.P16320484577756178951

`lt[A020639(2*n+1), n+2]+5`
-/

namespace A153044.P16320484577756178951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 5

end

end A153044.P16320484577756178951

namespace A153044

/-- `lt[A020639(2*n+1), n+2]+5` -/
def P16320484577756178951.Spec : Prop :=
  ∀ n, (P16320484577756178951.a n : ℤ) = A153044 (n + 1)

end A153044

/-! ## A153044.P8281654556497872973

`lt[n, n^A001222(2*n+1)]+5`
-/

namespace A153044.P8281654556497872973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (A001222 (2 * n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n + 5

end

end A153044.P8281654556497872973

namespace A153044

/-- `lt[n, n^A001222(2*n+1)]+5` -/
def P8281654556497872973.Spec : Prop :=
  ∀ n, (P8281654556497872973.a n : ℤ) = A153044 (n + 1)

end A153044

/-! ## A153044.P2641322126642617268

`A153040(n+1)-A144411(n+1)`
-/

namespace A153044.P2641322126642617268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1) - A144411 (n + 1)

end

end A153044.P2641322126642617268

namespace A153044

/-- `A153040(n+1)-A144411(n+1)` -/
def P2641322126642617268.Spec : Prop :=
  ∀ n, P2641322126642617268.a n = A153044 (n + 1)

end A153044

/-! ## A153044.P12563401205851995773

`lt[∑{p}[2*n+1, #], n+2]+5`
-/

namespace A153044.P12563401205851995773
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 5

end

end A153044.P12563401205851995773

namespace A153044

/-- `lt[∑{p}[2*n+1, #], n+2]+5` -/
def P12563401205851995773.Spec : Prop :=
  ∀ n, (P12563401205851995773.a n : ℤ) = A153044 (n + 1)

end A153044

/-! ## A153044.P15781587513915152270

`A020710(A047845(n+1))`
-/

namespace A153044.P15781587513915152270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A047845 (n + 1)).toNat

end

end A153044.P15781587513915152270

namespace A153044

/-- `A020710(A047845(n+1))` -/
def P15781587513915152270.Spec : Prop :=
  ∀ n, P15781587513915152270.a n = A153044 (n + 1)

end A153044

/-! ## A153044.P17275665252209800617

`A020705(A104275(n+1))`
-/

namespace A153044.P17275665252209800617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A104275 (n + 1)).toNat

end

end A153044.P17275665252209800617

namespace A153044

/-- `A020705(A104275(n+1))` -/
def P17275665252209800617.Spec : Prop :=
  ∀ n, P17275665252209800617.a n = A153044 (n + 1)

end A153044

/-!
# A153045: Numbers k such that 2*k-11 is not a prime.

The programs for A153045, the canonical program `A153045.P15986527208321006434` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153045 has offset 1).

The definition of A153045 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A104275, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A153045.P15986527208321006434

`5+A104275(n+2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A153045

/-- `5+A104275(n+2)` -/
def P15986527208321006434.Spec : Prop :=
  ∀ n, P15986527208321006434.a n = A153045 (n + 1)

theorem P15986527208321006434.correct : P15986527208321006434.Spec := by
  intro n
  simp only [A153045, Nat.add_sub_cancel]

end A153045

/-! ## A153045.P5339800664676127468

`A153039(n+1)+2`
-/

namespace A153045.P5339800664676127468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153039 (n + 1) + 2

end

end A153045.P5339800664676127468

namespace A153045

/-- `A153039(n+1)+2` -/
def P5339800664676127468.Spec : Prop :=
  ∀ n, P5339800664676127468.a n = A153045 (n + 1)

end A153045

/-! ## A153045.P6335385131281798947

`A153040(n+1)+3`
-/

namespace A153045.P6335385131281798947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1) + 3

end

end A153045.P6335385131281798947

namespace A153045

/-- `A153040(n+1)+3` -/
def P6335385131281798947.Spec : Prop :=
  ∀ n, P6335385131281798947.a n = A153045 (n + 1)

end A153045

/-! ## A153045.P815971127318238423

`A153047(n+1)-2`
-/

namespace A153045.P815971127318238423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153047 (n + 1) - 2

end

end A153045.P815971127318238423

namespace A153045

/-- `A153047(n+1)-2` -/
def P815971127318238423.Spec : Prop :=
  ∀ n, P815971127318238423.a n = A153045 (n + 1)

end A153045

/-! ## A153045.P8883991344253335442

`A053726(n+1)+5`
-/

namespace A153045.P8883991344253335442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) + 5

end

end A153045.P8883991344253335442

namespace A153045

/-- `A053726(n+1)+5` -/
def P8883991344253335442.Spec : Prop :=
  ∀ n, P8883991344253335442.a n = A153045 (n + 1)

end A153045

/-! ## A153045.P4254710720603194288

`A153238(n+1)+7`
-/

namespace A153045.P4254710720603194288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1) + 7

end

end A153045.P4254710720603194288

namespace A153045

/-- `A153238(n+1)+7` -/
def P4254710720603194288.Spec : Prop :=
  ∀ n, P4254710720603194288.a n = A153045 (n + 1)

end A153045

/-! ## A153045.P17175850143802644766

`A153052(n+1)+8`
-/

namespace A153045.P17175850143802644766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 1) + 8

end

end A153045.P17175850143802644766

namespace A153045

/-- `A153052(n+1)+8` -/
def P17175850143802644766.Spec : Prop :=
  ∀ n, P17175850143802644766.a n = A153045 (n + 1)

end A153045

/-! ## A153045.P17151001922863740051

`A153053(n+1)+9`
-/

namespace A153045.P17151001922863740051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153053 (n + 1) + 9

end

end A153045.P17151001922863740051

namespace A153045

/-- `A153053(n+1)+9` -/
def P17151001922863740051.Spec : Prop :=
  ∀ n, P17151001922863740051.a n = A153045 (n + 1)

end A153045

/-! ## A153045.P8721182719799880800

`∑[A196274(n+1)]+6`
-/

namespace A153045.P8721182719799880800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 6

end

end A153045.P8721182719799880800

namespace A153045

/-- `∑[A196274(n+1)]+6` -/
def P8721182719799880800.Spec : Prop :=
  ∀ n, P8721182719799880800.a n = A153045 (n + 1)

end A153045

/-! ## A153045.P2619389653989848145

`comp[A102781(n+1)]+6`
-/

namespace A153045.P2619389653989848145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 6

end

end A153045.P2619389653989848145

namespace A153045

/-- `comp[A102781(n+1)]+6` -/
def P2619389653989848145.Spec : Prop :=
  ∀ n, (P2619389653989848145.a n : ℤ) = A153045 (n + 1)

end A153045

/-! ## A153045.P1890012441784000740

`comp[A005097(n+1)-1]+7`
-/

namespace A153045.P1890012441784000740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 7

end

end A153045.P1890012441784000740

namespace A153045

/-- `comp[A005097(n+1)-1]+7` -/
def P1890012441784000740.Spec : Prop :=
  ∀ n, (P1890012441784000740.a n : ℤ) = A153045 (n + 1)

end A153045

/-! ## A153045.P10455605958845369675

`lt[1, A001222(2*n+1)]+6`
-/

namespace A153045.P10455605958845369675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 6

end

end A153045.P10455605958845369675

namespace A153045

/-- `lt[1, A001222(2*n+1)]+6` -/
def P10455605958845369675.Spec : Prop :=
  ∀ n, (P10455605958845369675.a n : ℤ) = A153045 (n + 1)

end A153045

/-! ## A153045.P2799359829770856029

`lt[2, A000005(2*n+1)]+6`
-/

namespace A153045.P2799359829770856029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 6

end

end A153045.P2799359829770856029

namespace A153045

/-- `lt[2, A000005(2*n+1)]+6` -/
def P2799359829770856029.Spec : Prop :=
  ∀ n, (P2799359829770856029.a n : ℤ) = A153045 (n + 1)

end A153045

/-! ## A153045.P12424754581684425661

`lt[A006530(2*n+1), n]+6`
-/

namespace A153045.P12424754581684425661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 6

end

end A153045.P12424754581684425661

namespace A153045

/-- `lt[A006530(2*n+1), n]+6` -/
def P12424754581684425661.Spec : Prop :=
  ∀ n, (P12424754581684425661.a n : ℤ) = A153045 (n + 1)

end A153045

/-! ## A153045.P7443153952817161288

`lt[A020639(2*n+1), n]+6`
-/

namespace A153045.P7443153952817161288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 6

end

end A153045.P7443153952817161288

namespace A153045

/-- `lt[A020639(2*n+1), n]+6` -/
def P7443153952817161288.Spec : Prop :=
  ∀ n, (P7443153952817161288.a n : ℤ) = A153045 (n + 1)

end A153045

/-! ## A153045.P15487132250738460904

`comp[ceil(sinh(log(A006530(n+1))))]+5`
-/

namespace A153045.P15487132250738460904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.log (A006530 (n + 1) : ℝ))⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 5

end

end A153045.P15487132250738460904

namespace A153045

/-- `comp[ceil(sinh(log(A006530(n+1))))]+5` -/
def P15487132250738460904.Spec : Prop :=
  ∀ n, (P15487132250738460904.a n : ℤ) = A153045 (n + 1)

end A153045

/-! ## A153045.P14532657250868253204

`comp[eq[2, A000005(2*n+3)]]+7`
-/

namespace A153045.P14532657250868253204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 7

end

end A153045.P14532657250868253204

namespace A153045

/-- `comp[eq[2, A000005(2*n+3)]]+7` -/
def P14532657250868253204.Spec : Prop :=
  ∀ n, (P14532657250868253204.a n : ℤ) = A153045 (n + 1)

end A153045

/-! ## A153045.P6895144488989235269

`lt[A000010(2*n+1), 2*n]+6`
-/

namespace A153045.P6895144488989235269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 6

end

end A153045.P6895144488989235269

namespace A153045

/-- `lt[A000010(2*n+1), 2*n]+6` -/
def P6895144488989235269.Spec : Prop :=
  ∀ n, (P6895144488989235269.a n : ℤ) = A153045 (n + 1)

end A153045

/-! ## A153045.P12344907020900926599

`A242963(A053726(n+1))`
-/

namespace A153045.P12344907020900926599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242963 (A053726 (n + 1)).toNat

end

end A153045.P12344907020900926599

namespace A153045

/-- `A242963(A053726(n+1))` -/
def P12344907020900926599.Spec : Prop :=
  ∀ n, P12344907020900926599.a n = A153045 (n + 1)

end A153045

/-!
# A153047: Numbers n such that 2*n-15 is not a prime.

The programs for A153047, the canonical program `A153047.P13374081325406904535` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153047 has offset 1).

The definition of A153047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153047.P13374081325406904535

`A153045(n+1)+2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A153047

/-- `A153045(n+1)+2` -/
def P13374081325406904535.Spec : Prop :=
  ∀ n, P13374081325406904535.a n = A153047 (n + 1)

theorem P13374081325406904535.correct : P13374081325406904535.Spec := by
  intro n
  simp only [A153047, Nat.add_sub_cancel]

end A153047

/-! ## A153047.P4057162172589514987

`A153039(n+1)+4`
-/

namespace A153047.P4057162172589514987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153039 (n + 1) + 4

end

end A153047.P4057162172589514987

namespace A153047

/-- `A153039(n+1)+4` -/
def P4057162172589514987.Spec : Prop :=
  ∀ n, P4057162172589514987.a n = A153047 (n + 1)

end A153047

/-! ## A153047.P5590988287502860189

`A153040(n+1)+5`
-/

namespace A153047.P5590988287502860189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1) + 5

end

end A153047.P5590988287502860189

namespace A153047

/-- `A153040(n+1)+5` -/
def P5590988287502860189.Spec : Prop :=
  ∀ n, P5590988287502860189.a n = A153047 (n + 1)

end A153047

/-! ## A153047.P12804359472964392535

`A053726(n+1)+7`
-/

namespace A153047.P12804359472964392535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) + 7

end

end A153047.P12804359472964392535

namespace A153047

/-- `A053726(n+1)+7` -/
def P12804359472964392535.Spec : Prop :=
  ∀ n, P12804359472964392535.a n = A153047 (n + 1)

end A153047

/-! ## A153047.P8684648198889548944

`A104275(n+2)+7`
-/

namespace A153047.P8684648198889548944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 2) + 7

end

end A153047.P8684648198889548944

namespace A153047

/-- `A104275(n+2)+7` -/
def P8684648198889548944.Spec : Prop :=
  ∀ n, P8684648198889548944.a n = A153047 (n + 1)

end A153047

/-! ## A153047.P1502015920904414440

`A153238(n+1)+9`
-/

namespace A153047.P1502015920904414440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1) + 9

end

end A153047.P1502015920904414440

namespace A153047

/-- `A153238(n+1)+9` -/
def P1502015920904414440.Spec : Prop :=
  ∀ n, P1502015920904414440.a n = A153047 (n + 1)

end A153047

/-! ## A153047.P14091461247015451333

`comp[A155722(n+1)]+12`
-/

namespace A153047.P14091461247015451333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 12

end

end A153047.P14091461247015451333

namespace A153047

/-- `comp[A155722(n+1)]+12` -/
def P14091461247015451333.Spec : Prop :=
  ∀ n, (P14091461247015451333.a n : ℤ) = A153047 (n + 1)

end A153047

/-! ## A153047.P1285627953787870589

`lt[1, A001222(2*n+1)]+8`
-/

namespace A153047.P1285627953787870589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 8

end

end A153047.P1285627953787870589

namespace A153047

/-- `lt[1, A001222(2*n+1)]+8` -/
def P1285627953787870589.Spec : Prop :=
  ∀ n, (P1285627953787870589.a n : ℤ) = A153047 (n + 1)

end A153047

/-! ## A153047.P4862420903468634264

`lt[2, A000005(2*n+1)]+8`
-/

namespace A153047.P4862420903468634264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 8

end

end A153047.P4862420903468634264

namespace A153047

/-- `lt[2, A000005(2*n+1)]+8` -/
def P4862420903468634264.Spec : Prop :=
  ∀ n, (P4862420903468634264.a n : ℤ) = A153047 (n + 1)

end A153047

/-! ## A153047.P3510179077661509601

`lt[A006530(2*n+1), n]+8`
-/

namespace A153047.P3510179077661509601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 8

end

end A153047.P3510179077661509601

namespace A153047

/-- `lt[A006530(2*n+1), n]+8` -/
def P3510179077661509601.Spec : Prop :=
  ∀ n, (P3510179077661509601.a n : ℤ) = A153047 (n + 1)

end A153047

/-! ## A153047.P5450642242446046403

`lt[A020639(2*n+1), n]+8`
-/

namespace A153047.P5450642242446046403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 8

end

end A153047.P5450642242446046403

namespace A153047

/-- `lt[A020639(2*n+1), n]+8` -/
def P5450642242446046403.Spec : Prop :=
  ∀ n, (P5450642242446046403.a n : ℤ) = A153047 (n + 1)

end A153047

/-! ## A153047.P12218833044567984852

`comp[ceil(sinh(log(A006530(n+1))))]+7`
-/

namespace A153047.P12218833044567984852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sinh (Real.log (A006530 (n + 1) : ℝ))⌉

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 7

end

end A153047.P12218833044567984852

namespace A153047

/-- `comp[ceil(sinh(log(A006530(n+1))))]+7` -/
def P12218833044567984852.Spec : Prop :=
  ∀ n, (P12218833044567984852.a n : ℤ) = A153047 (n + 1)

end A153047

/-! ## A153047.P5333261657053237367

`lt[A000010(2*n+1), 2*n]+8`
-/

namespace A153047.P5333261657053237367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 8

end

end A153047.P5333261657053237367

namespace A153047

/-- `lt[A000010(2*n+1), 2*n]+8` -/
def P5333261657053237367.Spec : Prop :=
  ∀ n, (P5333261657053237367.a n : ℤ) = A153047 (n + 1)

end A153047

/-! ## A153047.P4636629766806757422

`A020723(n)+A008508(n+1)`
-/

namespace A153047.P4636629766806757422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 n + A008508 (n + 1)

end

end A153047.P4636629766806757422

namespace A153047

/-- `A020723(n)+A008508(n+1)` -/
def P4636629766806757422.Spec : Prop :=
  ∀ n, P4636629766806757422.a n = A153047 (n + 1)

end A153047

/-! ## A153047.P13170261238436759975

`A336407(n+1)+A022965(n)`
-/

namespace A153047.P13170261238436759975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336407 (n + 1) + A022965 n

end

end A153047.P13170261238436759975

namespace A153047

/-- `A336407(n+1)+A022965(n)` -/
def P13170261238436759975.Spec : Prop :=
  ∀ n, P13170261238436759975.a n = A153047 (n + 1)

end A153047

/-! ## A153047.P15639744561020797773

`A336407(n+1)-A023451(n)`
-/

namespace A153047.P15639744561020797773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336407 (n + 1) - A023451 n

end

end A153047.P15639744561020797773

namespace A153047

/-- `A336407(n+1)-A023451(n)` -/
def P15639744561020797773.Spec : Prop :=
  ∀ n, P15639744561020797773.a n = A153047 (n + 1)

end A153047

/-! ## A153047.P10112790249443002118

`A153041(n+1)+A144411(n+1)`
-/

namespace A153047.P10112790249443002118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153041 (n + 1) + A144411 (n + 1)

end

end A153047.P10112790249443002118

namespace A153047

/-- `A153041(n+1)+A144411(n+1)` -/
def P10112790249443002118.Spec : Prop :=
  ∀ n, P10112790249443002118.a n = A153047 (n + 1)

end A153047

/-! ## A153047.P8328451724245538275

`A396571(n+1)-A241571(n+1)`
-/

namespace A153047.P8328451724245538275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396571 (n + 1) - A241571 (n + 1)

end

end A153047.P8328451724245538275

namespace A153047

/-- `A396571(n+1)-A241571(n+1)` -/
def P8328451724245538275.Spec : Prop :=
  ∀ n, P8328451724245538275.a n = A153047 (n + 1)

end A153047

/-! ## A153047.P15649423740137297399

`A154685(n+1)+A155723(n+1)-A324937(n+1)`
-/

namespace A153047.P15649423740137297399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154685 (n + 1) + (A155723 (n + 1) - A324937 (n + 1))

end

end A153047.P15649423740137297399

namespace A153047

/-- `A154685(n+1)+A155723(n+1)-A324937(n+1)` -/
def P15649423740137297399.Spec : Prop :=
  ∀ n, P15649423740137297399.a n = A153047 (n + 1)

end A153047

/-! ## A153047.P13078737138680162098

`A153049(n+2)+1`
-/

namespace A153047.P13078737138680162098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153049 (n + 2) + 1

end

end A153047.P13078737138680162098

namespace A153047

/-- `A153049(n+2)+1` -/
def P13078737138680162098.Spec : Prop :=
  ∀ n, P13078737138680162098.a n = A153047 (n + 1)

end A153047

/-!
# A153048: Numbers n with property that n^2 is a concatenation of two 3-digit primes.

The programs for A153048, there is no canonical definition to state claims against.
-/

/-! ## A153048.P14928192922787844753

`sqrt(A153050(n+1))`
-/

namespace A153048.P14928192922787844753
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A153050 (n + 1) : ℝ)

end

end A153048.P14928192922787844753

/-! ## A153048.P12159471425643195308

`root(A153050(n+1), 2)*A007318(∑[n])`
-/

namespace A153048.P12159471425643195308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A153050 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A153048.P12159471425643195308

/-! ## A153048.P3339916380447490211

`∑{d}[root(A153050(n+1), 4)², A000010(#)]`
-/

namespace A153048.P3339916380447490211
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A153050 (n + 1) : ℝ) ^ (1 / (4 : ℝ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A000010 d

end

end A153048.P3339916380447490211

/-! ## A153048.P10448618900591006256

`root(A153050(n+1), A020639(2*(n+1)))`
-/

namespace A153048.P10448618900591006256
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A153050 (n + 1) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A153048.P10448618900591006256

/-! ## A153048.P8990344605468013300

`root(A153050(n+1), 2)*A014963(12*(n+1))`
-/

namespace A153048.P8990344605468013300
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A153050 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A014963 (12 * (n + 1)) : ℝ)

end

end A153048.P8990344605468013300

/-!
# A153049: Numbers n such that 2*n - 13 is not a prime.

The programs for A153049, the canonical program `A153049.P7296181475207406392` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153049 has offset 1).

The definition of A153049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153049.P7296181475207406392

`A153044(n+1)+2`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A153049

/-- `A153044(n+1)+2` -/
def P7296181475207406392.Spec : Prop :=
  ∀ n, P7296181475207406392.a n = A153049 (n + 1)

theorem P7296181475207406392.correct : P7296181475207406392.Spec := by
  intro n
  simp only [A153049, Nat.add_sub_cancel]

end A153049

/-! ## A153049.P2919201274434888897

`A153051(n+1)-2`
-/

namespace A153049.P2919201274434888897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153051 (n + 1) - 2

end

end A153049.P2919201274434888897

namespace A153049

/-- `A153051(n+1)-2` -/
def P2919201274434888897.Spec : Prop :=
  ∀ n, P2919201274434888897.a n = A153049 (n + 1)

end A153049

/-! ## A153049.P8921578367293536357

`A153041(n+1)-3`
-/

namespace A153049.P8921578367293536357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153041 (n + 1) - 3

end

end A153049.P8921578367293536357

namespace A153049

/-- `A153041(n+1)-3` -/
def P8921578367293536357.Spec : Prop :=
  ∀ n, P8921578367293536357.a n = A153049 (n + 1)

end A153049

/-! ## A153049.P7691658454645653256

`A153043(n+1)+5`
-/

namespace A153049.P7691658454645653256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 1) + 5

end

end A153049.P7691658454645653256

namespace A153049

/-- `A153043(n+1)+5` -/
def P7691658454645653256.Spec : Prop :=
  ∀ n, P7691658454645653256.a n = A153049 (n + 1)

end A153049

/-! ## A153049.P13734411362572363384

`A104275(n+1)+6`
-/

namespace A153049.P13734411362572363384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1) + 6

end

end A153049.P13734411362572363384

namespace A153049

/-- `A104275(n+1)+6` -/
def P13734411362572363384.Spec : Prop :=
  ∀ n, P13734411362572363384.a n = A153049 (n + 1)

end A153049

/-! ## A153049.P7606953007639305998

`7+A047845(n+1)`
-/

namespace A153049.P7606953007639305998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 + A047845 (n + 1)

end

end A153049.P7606953007639305998

namespace A153049

/-- `7+A047845(n+1)` -/
def P7606953007639305998.Spec : Prop :=
  ∀ n, P7606953007639305998.a n = A153049 (n + 1)

end A153049

/-! ## A153049.P11486962186144353381

`eq[0, A101264(n)]+7`
-/

namespace A153049.P11486962186144353381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 7

end

end A153049.P11486962186144353381

namespace A153049

/-- `eq[0, A101264(n)]+7` -/
def P11486962186144353381.Spec : Prop :=
  ∀ n, (P11486962186144353381.a n : ℤ) = A153049 (n + 1)

end A153049

/-! ## A153049.P8726807719371275993

`comp[A005097(n+1)]+7`
-/

namespace A153049.P8726807719371275993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 7

end

end A153049.P8726807719371275993

namespace A153049

/-- `comp[A005097(n+1)]+7` -/
def P8726807719371275993.Spec : Prop :=
  ∀ n, (P8726807719371275993.a n : ℤ) = A153049 (n + 1)

end A153049

/-! ## A153049.P9809917929921176311

`comp[A130290(n+1)]+7`
-/

namespace A153049.P9809917929921176311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 7

end

end A153049.P9809917929921176311

namespace A153049

/-- `comp[A130290(n+1)]+7` -/
def P9809917929921176311.Spec : Prop :=
  ∀ n, (P9809917929921176311.a n : ℤ) = A153049 (n + 1)

end A153049

/-! ## A153049.P17548750995550841405

`comp[floor(A000040(n+1)/2)]+7`
-/

namespace A153049.P17548750995550841405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 7

end

end A153049.P17548750995550841405

namespace A153049

/-- `comp[floor(A000040(n+1)/2)]+7` -/
def P17548750995550841405.Spec : Prop :=
  ∀ n, (P17548750995550841405.a n : ℤ) = A153049 (n + 1)

end A153049

/-! ## A153049.P10634027179005060506

`round(cosh(log(A014076(n+1)+9)))+2`
-/

namespace A153049.P10634027179005060506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (Real.log (A014076 (n + 1) + 9 : ℝ))) + 2

end

end A153049.P10634027179005060506

namespace A153049

/-- `round(cosh(log(A014076(n+1)+9)))+2` -/
def P10634027179005060506.Spec : Prop :=
  ∀ n, P10634027179005060506.a n = A153049 (n + 1)

end A153049

/-! ## A153049.P4651523440384760763

`lt[A006530(2*n+1), n+2]+7`
-/

namespace A153049.P4651523440384760763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 7

end

end A153049.P4651523440384760763

namespace A153049

/-- `lt[A006530(2*n+1), n+2]+7` -/
def P4651523440384760763.Spec : Prop :=
  ∀ n, (P4651523440384760763.a n : ℤ) = A153049 (n + 1)

end A153049

/-! ## A153049.P8403093494786415098

`lt[A020639(2*n+1), n+2]+7`
-/

namespace A153049.P8403093494786415098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 7

end

end A153049.P8403093494786415098

namespace A153049

/-- `lt[A020639(2*n+1), n+2]+7` -/
def P8403093494786415098.Spec : Prop :=
  ∀ n, (P8403093494786415098.a n : ℤ) = A153049 (n + 1)

end A153049

/-! ## A153049.P4666611017164561802

`A020719(A047845(n+1))`
-/

namespace A153049.P4666611017164561802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 (A047845 (n + 1)).toNat

end

end A153049.P4666611017164561802

namespace A153049

/-- `A020719(A047845(n+1))` -/
def P4666611017164561802.Spec : Prop :=
  ∀ n, P4666611017164561802.a n = A153049 (n + 1)

end A153049

/-! ## A153049.P9988503772097941335

`A020715(A104275(n+1))`
-/

namespace A153049.P9988503772097941335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020715 (A104275 (n + 1)).toNat

end

end A153049.P9988503772097941335

namespace A153049

/-- `A020715(A104275(n+1))` -/
def P9988503772097941335.Spec : Prop :=
  ∀ n, P9988503772097941335.a n = A153049 (n + 1)

end A153049

/-! ## A153049.P601754532482277888

`A020710(A153043(n+1))`
-/

namespace A153049.P601754532482277888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 (A153043 (n + 1)).toNat

end

end A153049.P601754532482277888

namespace A153049

/-- `A020710(A153043(n+1))` -/
def P601754532482277888.Spec : Prop :=
  ∀ n, P601754532482277888.a n = A153049 (n + 1)

end A153049

/-! ## A153049.P17797805642223387589

`A009056(A153044(n+1))`
-/

namespace A153049.P17797805642223387589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A153044 (n + 1)).toNat

end

end A153049.P17797805642223387589

namespace A153049

/-- `A009056(A153044(n+1))` -/
def P17797805642223387589.Spec : Prop :=
  ∀ n, P17797805642223387589.a n = A153049 (n + 1)

end A153049

/-! ## A153049.P9615457209542437175

`A023444(A153051(n+1))`
-/

namespace A153049.P9615457209542437175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A153051 (n + 1)).toNat

end

end A153049.P9615457209542437175

namespace A153049

/-- `A023444(A153051(n+1))` -/
def P9615457209542437175.Spec : Prop :=
  ∀ n, P9615457209542437175.a n = A153049 (n + 1)

end A153049

/-! ## A153049.P11409688992414639695

`A023445(A153041(n+1))`
-/

namespace A153049.P11409688992414639695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A153041 (n + 1)).toNat

end

end A153049.P11409688992414639695

namespace A153049

/-- `A023445(A153041(n+1))` -/
def P11409688992414639695.Spec : Prop :=
  ∀ n, P11409688992414639695.a n = A153049 (n + 1)

end A153049

/-! ## A153049.P1447274116587549855

`lt[A014963(2*n+1), n+2]+7`
-/

namespace A153049.P1447274116587549855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 7

end

end A153049.P1447274116587549855

namespace A153049

/-- `lt[A014963(2*n+1), n+2]+7` -/
def P1447274116587549855.Spec : Prop :=
  ∀ n, (P1447274116587549855.a n : ℤ) = A153049 (n + 1)

end A153049

/-!
# A153050: Six-digit squares that are concatenation of two 3-digit primes.

The programs for A153050, there is no canonical definition to state claims against.
-/

/-! ## A153050.P15406236415019329401

`A153048(n+1)²`
-/

namespace A153050.P15406236415019329401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153048 (n + 1) ^ 2

end

end A153050.P15406236415019329401

/-! ## A153050.P15295000289165449432

`record[A153048(∑[2-n%4]-1)²]`
-/

namespace A153050.P15295000289165449432
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((n % 4 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153048 (∑ j ∈ Finset.range (n + 1), f2 j - 1).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153050.P15295000289165449432

/-! ## A153050.P2089196685346247671

`record[A153048(A193592(n))²]`
-/

namespace A153050.P2089196685346247671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153048 (A193592 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153050.P2089196685346247671

/-! ## A153050.P12026508816803704790

`record[A153048(A286581(n))²]`
-/

namespace A153050.P12026508816803704790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153048 (A286581 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153050.P12026508816803704790

/-! ## A153050.P12505083736884399581

`A000290(A153048(abs(xor(n, -1))))`
-/

namespace A153050.P12505083736884399581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A153048 |Int.xor (n : ℤ) (-1)|.toNat).toNat

end

end A153050.P12505083736884399581

/-!
# A153051: Numbers n>=9 such that 2*n-17 is not a prime.

The programs for A153051, the canonical program `A153051.P15552689692595928018` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153051 has offset 1).

The definition of A153051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153051.P8844157648457245490

`A153041(n+1)-1`
-/

namespace A153051.P8844157648457245490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153041 (n + 1) - 1

end

end A153051.P8844157648457245490

namespace A153051

/-- `A153041(n+1)-1` -/
def P8844157648457245490.Spec : Prop :=
  ∀ n, P8844157648457245490.a n = A153051 (n + 1)

end A153051

/-! ## A153051.P15552689692595928018

`A153049(n+1)+2`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A153051

/-- `A153049(n+1)+2` -/
def P15552689692595928018.Spec : Prop :=
  ∀ n, P15552689692595928018.a n = A153051 (n + 1)

theorem P15552689692595928018.correct : P15552689692595928018.Spec := by
  intro n
  simp only [A153051, Nat.add_sub_cancel]

end A153051

/-! ## A153051.P9443539828655618466

`A153044(n+1)+4`
-/

namespace A153051.P9443539828655618466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153044 (n + 1) + 4

end

end A153051.P9443539828655618466

namespace A153051

/-- `A153044(n+1)+4` -/
def P9443539828655618466.Spec : Prop :=
  ∀ n, P9443539828655618466.a n = A153051 (n + 1)

end A153051

/-! ## A153051.P3461451446107813375

`A153043(n+1)+7`
-/

namespace A153051.P3461451446107813375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 1) + 7

end

end A153051.P3461451446107813375

namespace A153051

/-- `A153043(n+1)+7` -/
def P3461451446107813375.Spec : Prop :=
  ∀ n, P3461451446107813375.a n = A153051 (n + 1)

end A153051

/-! ## A153051.P3335016457626759987

`A104275(n+1)+8`
-/

namespace A153051.P3335016457626759987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 1) + 8

end

end A153051.P3335016457626759987

namespace A153051

/-- `A104275(n+1)+8` -/
def P3335016457626759987.Spec : Prop :=
  ∀ n, P3335016457626759987.a n = A153051 (n + 1)

end A153051

/-! ## A153051.P15051576968183176661

`A047845(n+1)+9`
-/

namespace A153051.P15051576968183176661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 1) + 9

end

end A153051.P15051576968183176661

namespace A153051

/-- `A047845(n+1)+9` -/
def P15051576968183176661.Spec : Prop :=
  ∀ n, P15051576968183176661.a n = A153051 (n + 1)

end A153051

/-! ## A153051.P15345441793430259676

`eq[0, A101264(n)]+9`
-/

namespace A153051.P15345441793430259676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 9

end

end A153051.P15345441793430259676

namespace A153051

/-- `eq[0, A101264(n)]+9` -/
def P15345441793430259676.Spec : Prop :=
  ∀ n, (P15345441793430259676.a n : ℤ) = A153051 (n + 1)

end A153051

/-! ## A153051.P8196547947511249646

`comp[A005097(n+1)]+9`
-/

namespace A153051.P8196547947511249646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 9

end

end A153051.P8196547947511249646

namespace A153051

/-- `comp[A005097(n+1)]+9` -/
def P8196547947511249646.Spec : Prop :=
  ∀ n, (P8196547947511249646.a n : ℤ) = A153051 (n + 1)

end A153051

/-! ## A153051.P1212357663226009335

`comp[A130290(n+1)]+9`
-/

namespace A153051.P1212357663226009335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 9

end

end A153051.P1212357663226009335

namespace A153051

/-- `comp[A130290(n+1)]+9` -/
def P1212357663226009335.Spec : Prop :=
  ∀ n, (P1212357663226009335.a n : ℤ) = A153051 (n + 1)

end A153051

/-! ## A153051.P7196256632312206929

`comp[floor(A000040(n+1)/2)]+9`
-/

namespace A153051.P7196256632312206929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000040 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 9

end

end A153051.P7196256632312206929

namespace A153051

/-- `comp[floor(A000040(n+1)/2)]+9` -/
def P7196256632312206929.Spec : Prop :=
  ∀ n, (P7196256632312206929.a n : ℤ) = A153051 (n + 1)

end A153051

/-! ## A153051.P10381282762737132154

`comp[floor(record[A006530(n+2)]/2)]+9`
-/

namespace A153051.P10381282762737132154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 9

end

end A153051.P10381282762737132154

namespace A153051

/-- `comp[floor(record[A006530(n+2)]/2)]+9` -/
def P10381282762737132154.Spec : Prop :=
  ∀ n, (P10381282762737132154.a n : ℤ) = A153051 (n + 1)

end A153051

/-! ## A153051.P17096322005449321842

`lt[A006530(2*n+1), n+2]+9`
-/

namespace A153051.P17096322005449321842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 9

end

end A153051.P17096322005449321842

namespace A153051

/-- `lt[A006530(2*n+1), n+2]+9` -/
def P17096322005449321842.Spec : Prop :=
  ∀ n, (P17096322005449321842.a n : ℤ) = A153051 (n + 1)

end A153051

/-! ## A153051.P14816697416858429714

`lt[A020639(2*n+1), n+2]+9`
-/

namespace A153051.P14816697416858429714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 9

end

end A153051.P14816697416858429714

namespace A153051

/-- `lt[A020639(2*n+1), n+2]+9` -/
def P14816697416858429714.Spec : Prop :=
  ∀ n, (P14816697416858429714.a n : ℤ) = A153051 (n + 1)

end A153051

/-! ## A153051.P14861022856426467610

`A020723(A047845(n+1))`
-/

namespace A153051.P14861022856426467610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020723 (A047845 (n + 1)).toNat

end

end A153051.P14861022856426467610

namespace A153051

/-- `A020723(A047845(n+1))` -/
def P14861022856426467610.Spec : Prop :=
  ∀ n, P14861022856426467610.a n = A153051 (n + 1)

end A153051

/-! ## A153051.P15145339976076442463

`A020722(A104275(n+1))`
-/

namespace A153051.P15145339976076442463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020722 (A104275 (n + 1)).toNat

end

end A153051.P15145339976076442463

namespace A153051

/-- `A020722(A104275(n+1))` -/
def P15145339976076442463.Spec : Prop :=
  ∀ n, P15145339976076442463.a n = A153051 (n + 1)

end A153051

/-! ## A153051.P18263512744072902019

`A020719(A153043(n+1))`
-/

namespace A153051.P18263512744072902019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 (A153043 (n + 1)).toNat

end

end A153051.P18263512744072902019

namespace A153051

/-- `A020719(A153043(n+1))` -/
def P18263512744072902019.Spec : Prop :=
  ∀ n, P18263512744072902019.a n = A153051 (n + 1)

end A153051

/-! ## A153051.P11221614649291235015

`A020705(A153044(n+1))`
-/

namespace A153051.P11221614649291235015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020705 (A153044 (n + 1)).toNat

end

end A153051.P11221614649291235015

namespace A153051

/-- `A020705(A153044(n+1))` -/
def P11221614649291235015.Spec : Prop :=
  ∀ n, P11221614649291235015.a n = A153051 (n + 1)

end A153051

/-! ## A153051.P6019975317122597111

`A009056(A153049(n+1))`
-/

namespace A153051.P6019975317122597111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (A153049 (n + 1)).toNat

end

end A153051.P6019975317122597111

namespace A153051

/-- `A009056(A153049(n+1))` -/
def P6019975317122597111.Spec : Prop :=
  ∀ n, P6019975317122597111.a n = A153051 (n + 1)

end A153051

/-! ## A153051.P5399690079333331863

`A023443(A153041(n+1))`
-/

namespace A153051.P5399690079333331863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A153041 (n + 1)).toNat

end

end A153051.P5399690079333331863

namespace A153051

/-- `A023443(A153041(n+1))` -/
def P5399690079333331863.Spec : Prop :=
  ∀ n, P5399690079333331863.a n = A153051 (n + 1)

end A153051

/-! ## A153051.P14686641181442687868

`lt[A014963(2*n+1), n+2]+9`
-/

namespace A153051.P14686641181442687868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 9

end

end A153051.P14686641181442687868

namespace A153051

/-- `lt[A014963(2*n+1), n+2]+9` -/
def P14686641181442687868.Spec : Prop :=
  ∀ n, (P14686641181442687868.a n : ℤ) = A153051 (n + 1)

end A153051

/-!
# A153052: Numbers m such that 2*m + 5 is not a prime.

The programs for A153052, the canonical program `A153052.P215135875194931627` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153052 has offset 1).

The definition of A153052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153052.P14097820462202437421

`comp[A089038(n+1)]`
-/

namespace A153052.P14097820462202437421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153052.P14097820462202437421

namespace A153052

/-- `comp[A089038(n+1)]` -/
def P14097820462202437421.Spec : Prop :=
  ∀ n, (P14097820462202437421.a n : ℤ) = A153052 (n + 1)

end A153052

/-! ## A153052.P6926942894534795347

`A153053(n+1)+1`
-/

namespace A153052.P6926942894534795347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153053 (n + 1) + 1

end

end A153052.P6926942894534795347

namespace A153052

/-- `A153053(n+1)+1` -/
def P6926942894534795347.Spec : Prop :=
  ∀ n, P6926942894534795347.a n = A153052 (n + 1)

end A153052

/-! ## A153052.P2507969907876578898

`A153238(n+1)-1`
-/

namespace A153052.P2507969907876578898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1) - 1

end

end A153052.P2507969907876578898

namespace A153052

/-- `A153238(n+1)-1` -/
def P2507969907876578898.Spec : Prop :=
  ∀ n, P2507969907876578898.a n = A153052 (n + 1)

end A153052

/-! ## A153052.P12637271576476116274

`A155723(n+1)+2`
-/

namespace A153052.P12637271576476116274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155723 (n + 1) + 2

end

end A153052.P12637271576476116274

namespace A153052

/-- `A155723(n+1)+2` -/
def P12637271576476116274.Spec : Prop :=
  ∀ n, P12637271576476116274.a n = A153052 (n + 1)

end A153052

/-! ## A153052.P17718875590550141770

`A053726(n+1)-3`
-/

namespace A153052.P17718875590550141770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) - 3

end

end A153052.P17718875590550141770

namespace A153052

/-- `A053726(n+1)-3` -/
def P17718875590550141770.Spec : Prop :=
  ∀ n, P17718875590550141770.a n = A153052 (n + 1)

end A153052

/-! ## A153052.P17271828953780028182

`A104275(n+2)-3`
-/

namespace A153052.P17271828953780028182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 2) - 3

end

end A153052.P17271828953780028182

namespace A153052

/-- `A104275(n+2)-3` -/
def P17271828953780028182.Spec : Prop :=
  ∀ n, P17271828953780028182.a n = A153052 (n + 1)

end A153052

/-! ## A153052.P9185721950504834720

`A153040(n+1)-5`
-/

namespace A153052.P9185721950504834720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1) - 5

end

end A153052.P9185721950504834720

namespace A153052

/-- `A153040(n+1)-5` -/
def P9185721950504834720.Spec : Prop :=
  ∀ n, P9185721950504834720.a n = A153052 (n + 1)

end A153052

/-! ## A153052.P10785120291187526677

`A153039(n+1)-6`
-/

namespace A153052.P10785120291187526677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153039 (n + 1) - 6

end

end A153052.P10785120291187526677

namespace A153052

/-- `A153039(n+1)-6` -/
def P10785120291187526677.Spec : Prop :=
  ∀ n, P10785120291187526677.a n = A153052 (n + 1)

end A153052

/-! ## A153052.P7856236757709988530

`A153045(n+1)-8`
-/

namespace A153052.P7856236757709988530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153045 (n + 1) - 8

end

end A153052.P7856236757709988530

namespace A153052

/-- `A153045(n+1)-8` -/
def P7856236757709988530.Spec : Prop :=
  ∀ n, P7856236757709988530.a n = A153052 (n + 1)

end A153052

/-! ## A153052.P215135875194931627

`eq[0, A101264(n+2)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A153052

/-- `eq[0, A101264(n+2)]` -/
def P215135875194931627.Spec : Prop :=
  ∀ n, (P215135875194931627.a n : ℤ) = A153052 (n + 1)

theorem P215135875194931627.correct : P215135875194931627.Spec := by
  intro n
  simp only [A153052, Nat.add_sub_cancel]

end A153052

/-! ## A153052.P13192628583132426754

`A023443(n)+A008508(n+1)`
-/

namespace A153052.P13192628583132426754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 n + A008508 (n + 1)

end

end A153052.P13192628583132426754

namespace A153052

/-- `A023443(n)+A008508(n+1)` -/
def P13192628583132426754.Spec : Prop :=
  ∀ n, P13192628583132426754.a n = A153052 (n + 1)

end A153052

/-! ## A153052.P4094836501351786836

`A008508(n+1)-A024000(n)`
-/

namespace A153052.P4094836501351786836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008508 (n + 1) - A024000 n

end

end A153052.P4094836501351786836

namespace A153052

/-- `A008508(n+1)-A024000(n)` -/
def P4094836501351786836.Spec : Prop :=
  ∀ n, P4094836501351786836.a n = A153052 (n + 1)

end A153052

/-! ## A153052.P3000104233623482966

`A144411(n+1)+A047845(n+1)`
-/

namespace A153052.P3000104233623482966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144411 (n + 1) + A047845 (n + 1)

end

end A153052.P3000104233623482966

namespace A153052

/-- `A144411(n+1)+A047845(n+1)` -/
def P3000104233623482966.Spec : Prop :=
  ∀ n, P3000104233623482966.a n = A153052 (n + 1)

end A153052

/-! ## A153052.P16593589588723862735

`A336407(n+1)+A001478(n+1)`
-/

namespace A153052.P16593589588723862735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336407 (n + 1) + A001478 (n + 1)

end

end A153052.P16593589588723862735

namespace A153052

/-- `A336407(n+1)+A001478(n+1)` -/
def P16593589588723862735.Spec : Prop :=
  ∀ n, P16593589588723862735.a n = A153052 (n + 1)

end A153052

/-! ## A153052.P16161785950460600757

`A007921(n+1)%A053726(n+1)`
-/

namespace A153052.P16161785950460600757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007921 (n + 1)) (A053726 (n + 1))

end

end A153052.P16161785950460600757

namespace A153052

/-- `A007921(n+1)%A053726(n+1)` -/
def P16161785950460600757.Spec : Prop :=
  ∀ n, P16161785950460600757.a n = A153052 (n + 1)

end A153052

/-! ## A153052.P12573927766601040945

`A071904(n+1)%A153040(n+1)`
-/

namespace A153052.P12573927766601040945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071904 (n + 1)) (A153040 (n + 1))

end

end A153052.P12573927766601040945

namespace A153052

/-- `A071904(n+1)%A153040(n+1)` -/
def P12573927766601040945.Spec : Prop :=
  ∀ n, P12573927766601040945.a n = A153052 (n + 1)

end A153052

/-! ## A153052.P2727105587059377683

`A047845(n+2)-2`
-/

namespace A153052.P2727105587059377683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 2) - 2

end

end A153052.P2727105587059377683

namespace A153052

/-- `A047845(n+2)-2` -/
def P2727105587059377683.Spec : Prop :=
  ∀ n, P2727105587059377683.a n = A153052 (n + 1)

end A153052

/-! ## A153052.P4705582159163911831

`A153043(n+2)-4`
-/

namespace A153052.P4705582159163911831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 2) - 4

end

end A153052.P4705582159163911831

namespace A153052

/-- `A153043(n+2)-4` -/
def P4705582159163911831.Spec : Prop :=
  ∀ n, P4705582159163911831.a n = A153052 (n + 1)

end A153052

/-! ## A153052.P18307735801315832714

`A153044(n+2)-7`
-/

namespace A153052.P18307735801315832714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153044 (n + 2) - 7

end

end A153052.P18307735801315832714

namespace A153052

/-- `A153044(n+2)-7` -/
def P18307735801315832714.Spec : Prop :=
  ∀ n, P18307735801315832714.a n = A153052 (n + 1)

end A153052

/-! ## A153052.P5524607390660228786

`A153049(n+2)-9`
-/

namespace A153052.P5524607390660228786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153049 (n + 2) - 9

end

end A153052.P5524607390660228786

namespace A153052

/-- `A153049(n+2)-9` -/
def P5524607390660228786.Spec : Prop :=
  ∀ n, P5524607390660228786.a n = A153052 (n + 1)

end A153052

/-!
# A153053: Numbers j such that 2*j + 7 is not a prime.

The programs for A153053, the canonical program `A153053.P11375225491096847210` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153053 has offset 1).

The definition of A153053 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153053.P13035559638043096890

`comp[A105760(n+1)]`
-/

namespace A153053.P13035559638043096890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153053.P13035559638043096890

namespace A153053

/-- `comp[A105760(n+1)]` -/
def P13035559638043096890.Spec : Prop :=
  ∀ n, (P13035559638043096890.a n : ℤ) = A153053 (n + 1)

end A153053

/-! ## A153053.P3685798488439295163

`comp[A161720(n+3)]`
-/

namespace A153053.P3685798488439295163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153053.P3685798488439295163

namespace A153053

/-- `comp[A161720(n+3)]` -/
def P3685798488439295163.Spec : Prop :=
  ∀ n, (P3685798488439295163.a n : ℤ) = A153053 (n + 1)

end A153053

/-! ## A153053.P1424910808272774380

`A155723(n+1)+1`
-/

namespace A153053.P1424910808272774380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155723 (n + 1) + 1

end

end A153053.P1424910808272774380

namespace A153053

/-- `A155723(n+1)+1` -/
def P1424910808272774380.Spec : Prop :=
  ∀ n, P1424910808272774380.a n = A153053 (n + 1)

end A153053

/-! ## A153053.P11375225491096847210

`A153052(n+1)-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A153053

/-- `A153052(n+1)-1` -/
def P11375225491096847210.Spec : Prop :=
  ∀ n, P11375225491096847210.a n = A153053 (n + 1)

theorem P11375225491096847210.correct : P11375225491096847210.Spec := by
  intro n
  simp only [A153053, Nat.add_sub_cancel]

end A153053

/-! ## A153053.P6457454423691045797

`A153238(n+1)-2`
-/

namespace A153053.P6457454423691045797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 1) - 2

end

end A153053.P6457454423691045797

namespace A153053

/-- `A153238(n+1)-2` -/
def P6457454423691045797.Spec : Prop :=
  ∀ n, P6457454423691045797.a n = A153053 (n + 1)

end A153053

/-! ## A153053.P11933076285842492894

`A053726(n+1)-4`
-/

namespace A153053.P11933076285842492894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 1) - 4

end

end A153053.P11933076285842492894

namespace A153053

/-- `A053726(n+1)-4` -/
def P11933076285842492894.Spec : Prop :=
  ∀ n, P11933076285842492894.a n = A153053 (n + 1)

end A153053

/-! ## A153053.P1802851669800716304

`A104275(n+2)-4`
-/

namespace A153053.P1802851669800716304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 2) - 4

end

end A153053.P1802851669800716304

namespace A153053

/-- `A104275(n+2)-4` -/
def P1802851669800716304.Spec : Prop :=
  ∀ n, P1802851669800716304.a n = A153053 (n + 1)

end A153053

/-! ## A153053.P6270124210552195626

`A153040(n+1)-6`
-/

namespace A153053.P6270124210552195626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 1) - 6

end

end A153053.P6270124210552195626

namespace A153053

/-- `A153040(n+1)-6` -/
def P6270124210552195626.Spec : Prop :=
  ∀ n, P6270124210552195626.a n = A153053 (n + 1)

end A153053

/-! ## A153053.P190996585677384578

`A153039(n+1)-7`
-/

namespace A153053.P190996585677384578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153039 (n + 1) - 7

end

end A153053.P190996585677384578

namespace A153053

/-- `A153039(n+1)-7` -/
def P190996585677384578.Spec : Prop :=
  ∀ n, P190996585677384578.a n = A153053 (n + 1)

end A153053

/-! ## A153053.P16460180954306574552

`A153045(n+1)-9`
-/

namespace A153053.P16460180954306574552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153045 (n + 1) - 9

end

end A153053.P16460180954306574552

namespace A153053

/-- `A153045(n+1)-9` -/
def P16460180954306574552.Spec : Prop :=
  ∀ n, P16460180954306574552.a n = A153053 (n + 1)

end A153053

/-! ## A153053.P750471216211514058

`eq[0, A101264(n+3)]`
-/

namespace A153053.P750471216211514058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153053.P750471216211514058

namespace A153053

/-- `eq[0, A101264(n+3)]` -/
def P750471216211514058.Spec : Prop :=
  ∀ n, (P750471216211514058.a n : ℤ) = A153053 (n + 1)

end A153053

/-! ## A153053.P16498435034815037229

`A023444(n)+A008508(n+1)`
-/

namespace A153053.P16498435034815037229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 n + A008508 (n + 1)

end

end A153053.P16498435034815037229

namespace A153053

/-- `A023444(n)+A008508(n+1)` -/
def P16498435034815037229.Spec : Prop :=
  ∀ n, P16498435034815037229.a n = A153053 (n + 1)

end A153053

/-! ## A153053.P15287366759327035510

`A008508(n+1)-A022958(n)`
-/

namespace A153053.P15287366759327035510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008508 (n + 1) - A022958 n

end

end A153053.P15287366759327035510

namespace A153053

/-- `A008508(n+1)-A022958(n)` -/
def P15287366759327035510.Spec : Prop :=
  ∀ n, P15287366759327035510.a n = A153053 (n + 1)

end A153053

/-! ## A153053.P12971464072898222368

`A146538(n+1)%A053726(n+1)`
-/

namespace A153053.P12971464072898222368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146538 (n + 1)) (A053726 (n + 1))

end

end A153053.P12971464072898222368

namespace A153053

/-- `A146538(n+1)%A053726(n+1)` -/
def P12971464072898222368.Spec : Prop :=
  ∀ n, P12971464072898222368.a n = A153053 (n + 1)

end A153053

/-! ## A153053.P4268072377207751181

`A071904(n+1)%A153039(n+1)`
-/

namespace A153053.P4268072377207751181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071904 (n + 1)) (A153039 (n + 1))

end

end A153053.P4268072377207751181

namespace A153053

/-- `A071904(n+1)%A153039(n+1)` -/
def P4268072377207751181.Spec : Prop :=
  ∀ n, P4268072377207751181.a n = A153053 (n + 1)

end A153053

/-! ## A153053.P3800351201700764872

`A309355(n+1)%A153040(n+1)`
-/

namespace A153053.P3800351201700764872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309355 (n + 1)) (A153040 (n + 1))

end

end A153053.P3800351201700764872

namespace A153053

/-- `A309355(n+1)%A153040(n+1)` -/
def P3800351201700764872.Spec : Prop :=
  ∀ n, P3800351201700764872.a n = A153053 (n + 1)

end A153053

/-! ## A153053.P2459757598821338845

`A047845(n+2)-3`
-/

namespace A153053.P2459757598821338845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 2) - 3

end

end A153053.P2459757598821338845

namespace A153053

/-- `A047845(n+2)-3` -/
def P2459757598821338845.Spec : Prop :=
  ∀ n, P2459757598821338845.a n = A153053 (n + 1)

end A153053

/-! ## A153053.P12159329981103980114

`A153043(n+2)-5`
-/

namespace A153053.P12159329981103980114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 2) - 5

end

end A153053.P12159329981103980114

namespace A153053

/-- `A153043(n+2)-5` -/
def P12159329981103980114.Spec : Prop :=
  ∀ n, P12159329981103980114.a n = A153053 (n + 1)

end A153053

/-! ## A153053.P10633627874926241823

`A153044(n+2)-8`
-/

namespace A153053.P10633627874926241823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153044 (n + 2) - 8

end

end A153053.P10633627874926241823

namespace A153053

/-- `A153044(n+2)-8` -/
def P10633627874926241823.Spec : Prop :=
  ∀ n, P10633627874926241823.a n = A153053 (n + 1)

end A153053

/-! ## A153053.P14071595332023310004

`eq[1, A088421(n+1)]`
-/

namespace A153053.P14071595332023310004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088421 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153053.P14071595332023310004

namespace A153053

/-- `eq[1, A088421(n+1)]` -/
def P14071595332023310004.Spec : Prop :=
  ∀ n, (P14071595332023310004.a n : ℤ) = A153053 (n + 1)

end A153053

/-!
# A153056: a(0)=2, a(n) = n^2+a(n-1).

The programs for A153056, the canonical program `A153056.P5703203755138358663` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153056 has offset 0).

The definition of A153056 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+a(n-1)` (program `A153056.P5703203755138358663`, by `A153056.P5703203755138358663.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153056.P5703203755138358663

`n²+a(n-1)` with `a(0)=2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153056

/-- `n²+a(n-1)` -/
def P5703203755138358663.Spec : Prop :=
  ∀ n, (P5703203755138358663.a n : ℤ) = A153056 n

theorem P5703203755138358663.correct : P5703203755138358663.Spec := by
  intro n
  simp only [A153056]

end A153056

/-! ## A153056.P17474174946982446145

`n*(n+1)*(2*n+1)/6+2`
-/

namespace A153056.P17474174946982446145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 1) * (2 * n + 1) : ℚ) / 6 + 2

end

end A153056.P17474174946982446145

namespace A153056

/-- `n*(n+1)*(2*n+1)/6+2` -/
def P17474174946982446145.Spec : Prop :=
  ∀ n, P17474174946982446145.a n = (A153056 n : ℚ)

theorem P17474174946982446145.correct : P17474174946982446145.Spec := by
  intro n
  induction n with
  | zero => simp [A153056, A153056.P17474174946982446145.a, A153056.P5703203755138358663.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A153056, Nat.add_sub_cancel, A153056.P17474174946982446145.a, A153056.P5703203755138358663.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A153056

/-! ## A153056.P9645417510829547238

`∑[n^a((2*n)%2)]` with `a(0)=2`
-/

namespace A153056.P9645417510829547238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  n ^ f1 (2 * n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153056.P9645417510829547238

namespace A153056

/-- `∑[n^a((2*n)%2)]` -/
def P9645417510829547238.Spec : Prop :=
  ∀ n, (P9645417510829547238.a n : ℤ) = A153056 n

end A153056

/-! ## A153056.P10893312718609171329

`∑[n^a(floor(1/n))]` with `a(0)=2, a(1)=1`
-/

namespace A153056.P10893312718609171329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  n ^ f1 ⌊1 / (n : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153056.P10893312718609171329

namespace A153056

/-- `∑[n^a(floor(1/n))]` -/
def P10893312718609171329.Spec : Prop :=
  ∀ n, (P10893312718609171329.a n : ℤ) = A153056 n

end A153056

/-! ## A153056.P6586313954837797513

`∑[gcd(2*C(n, n²), n²)]`
-/

namespace A153056.P6586313954837797513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * Nat.choose n (n ^ 2)) (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153056.P6586313954837797513

namespace A153056

/-- `∑[gcd(2*C(n, n²), n²)]` -/
def P6586313954837797513.Spec : Prop :=
  ∀ n, (P6586313954837797513.a n : ℤ) = A153056 n

end A153056

/-! ## A153056.P5685606462966212052

`∑[gcd(n, 1-a(n-1))²]` with `a(0)=2`
-/

namespace A153056.P5685606462966212052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  Int.gcd (n : ℤ) (1 - (f1 (n - 1) : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153056.P5685606462966212052

namespace A153056

/-- `∑[gcd(n, 1-a(n-1))²]` -/
def P5685606462966212052.Spec : Prop :=
  ∀ n, (P5685606462966212052.a n : ℤ) = A153056 n

end A153056

/-! ## A153056.P5678097927649020839

`∑[(and(2, a(n-1))-n)²]` with `a(0)=2`
-/

namespace A153056.P5678097927649020839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (Int.land 2 (f1 (n - 1)) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153056.P5678097927649020839

namespace A153056

/-- `∑[(and(2, a(n-1))-n)²]` -/
def P5678097927649020839.Spec : Prop :=
  ∀ n, P5678097927649020839.a n = A153056 n

end A153056

/-! ## A153056.P13486720730321355287

`n*(a(n-1)/n+n)` with `a(0)=2`
-/

namespace A153056.P13486720730321355287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (n : ℚ) * (a (n - 1) / (n : ℚ) + (n : ℚ))

end

end A153056.P13486720730321355287

namespace A153056

/-- `n*(a(n-1)/n+n)` -/
def P13486720730321355287.Spec : Prop :=
  ∀ n, P13486720730321355287.a n = (A153056 n : ℚ)

end A153056

/-! ## A153056.P7930595063298012013

`∑[(n^(a(n-1)%n))²]` with `a(0)=2`
-/

namespace A153056.P7930595063298012013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2] fun n f1 =>
  (n ^ (f1 (n - 1) % n)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153056.P7930595063298012013

namespace A153056

/-- `∑[(n^(a(n-1)%n))²]` -/
def P7930595063298012013.Spec : Prop :=
  ∀ n, (P7930595063298012013.a n : ℤ) = A153056 n

end A153056

/-! ## A153056.P16053633208189068141

`∑[∑[a(n-1)+2]]` with `a(0)=2, a(1)=-1, a(2)=3`
-/

namespace A153056.P16053633208189068141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 3] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153056.P16053633208189068141

namespace A153056

/-- `∑[∑[a(n-1)+2]]` -/
def P16053633208189068141.Spec : Prop :=
  ∀ n, P16053633208189068141.a n = A153056 n

end A153056

/-! ## A153056.P12136831756150364657

`∑[(n*(-1)^a(n-1))²]` with `a(0)=2`
-/

namespace A153056.P12136831756150364657
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2] fun n f1 =>
  ((n : ℝ) * (-1 : ℝ) ^ (f1 (n - 1))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153056.P12136831756150364657

namespace A153056

/-- `∑[(n*(-1)^a(n-1))²]` -/
def P12136831756150364657.Spec : Prop :=
  ∀ n, P12136831756150364657.a n = (A153056 n : ℝ)

end A153056

/-! ## A153056.P11466972487611616077

`∑[(n/(-1)^a(n-1))²]` with `a(0)=2`
-/

namespace A153056.P11466972487611616077
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2] fun n f1 =>
  ((n : ℝ) / (-1 : ℝ) ^ (f1 (n - 1))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153056.P11466972487611616077

namespace A153056

/-- `∑[(n/(-1)^a(n-1))²]` -/
def P11466972487611616077.Spec : Prop :=
  ∀ n, P11466972487611616077.a n = (A153056 n : ℝ)

end A153056

/-! ## A153056.P11917374502197277448

`∑[(C(a(n-1), n²)-n)²]` with `a(0)=2`
-/

namespace A153056.P11917374502197277448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ((Nat.choose (f1 (n - 1)).toNat (n ^ 2) : ℤ) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153056.P11917374502197277448

namespace A153056

/-- `∑[(C(a(n-1), n²)-n)²]` -/
def P11917374502197277448.Spec : Prop :=
  ∀ n, P11917374502197277448.a n = A153056 n

end A153056

/-! ## A153056.P11188137784455472774

`∑[n²^((-1)^a(n-1))²]` with `a(0)=2`
-/

namespace A153056.P11188137784455472774
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2] fun n f1 =>
  (n ^ 2 : ℝ) ^ (((-1 : ℝ) ^ (f1 (n - 1))) ^ 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153056.P11188137784455472774

namespace A153056

/-- `∑[n²^((-1)^a(n-1))²]` -/
def P11188137784455472774.Spec : Prop :=
  ∀ n, P11188137784455472774.a n = (A153056 n : ℝ)

end A153056

/-! ## A153056.P1600164328645982203

`∑[2*n-(1-a(n-1))]` with `a(0)=2, a(1)=1`
-/

namespace A153056.P1600164328645982203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (2 * n : ℤ) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153056.P1600164328645982203

namespace A153056

/-- `∑[2*n-(1-a(n-1))]` -/
def P1600164328645982203.Spec : Prop :=
  ∀ n, P1600164328645982203.a n = A153056 n

end A153056

/-! ## A153056.P7239456642500199269

`∑[n-(1-a(n-1)-n)]` with `a(0)=2, a(1)=1`
-/

namespace A153056.P7239456642500199269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (n : ℤ) - (1 - f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153056.P7239456642500199269

namespace A153056

/-- `∑[n-(1-a(n-1)-n)]` -/
def P7239456642500199269.Spec : Prop :=
  ∀ n, P7239456642500199269.a n = A153056 n

end A153056

/-!
# A153057: a(0)=3; a(n) = n^2 + a(n-1) for n>0.

The programs for A153057, the canonical program `A153057.P10101499432001818606` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153057 has offset 0).

The definition of A153057 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+a(n-1)` (program `A153057.P10101499432001818606`, by `A153057.P10101499432001818606.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153057.P10101499432001818606

`n²+a(n-1)` with `a(0)=3`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153057

/-- `n²+a(n-1)` -/
def P10101499432001818606.Spec : Prop :=
  ∀ n, (P10101499432001818606.a n : ℤ) = A153057 n

theorem P10101499432001818606.correct : P10101499432001818606.Spec := by
  intro n
  simp only [A153057]

end A153057

/-! ## A153057.P9065620908971321044

`3+A000330(n)`
-/

namespace A153057.P9065620908971321044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 + A000330 n

end

end A153057.P9065620908971321044

namespace A153057

/-- `3+A000330(n)` -/
def P9065620908971321044.Spec : Prop :=
  ∀ n, P9065620908971321044.a n = A153057 n

end A153057

/-! ## A153057.P9239088596736465740

`∑[n²]+3`
-/

namespace A153057.P9239088596736465740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A153057.P9239088596736465740

namespace A153057

/-- `∑[n²]+3` -/
def P9239088596736465740.Spec : Prop :=
  ∀ n, (P9239088596736465740.a n : ℤ) = A153057 n

end A153057

/-! ## A153057.P12207344675580593868

`∑[ceil((n-acot(n²))²)]`
-/

namespace A153057.P12207344675580593868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n : ℝ) - SequenceMachineLib.acot (n ^ 2 : ℝ)) ^ 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153057.P12207344675580593868

namespace A153057

/-- `∑[ceil((n-acot(n²))²)]` -/
def P12207344675580593868.Spec : Prop :=
  ∀ n, P12207344675580593868.a n = A153057 n

end A153057

/-! ## A153057.P8095658756205845346

`∑[n^(2%a(2%n))]` with `a(0)=3`
-/

namespace A153057.P8095658756205845346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  n ^ (2 % f1 (2 % n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153057.P8095658756205845346

namespace A153057

/-- `∑[n^(2%a(2%n))]` -/
def P8095658756205845346.Spec : Prop :=
  ∀ n, (P8095658756205845346.a n : ℤ) = A153057 n

end A153057

/-! ## A153057.P8109943357392320299

`∑[gcd(n, 1-a(n-1))²]` with `a(0)=3`
-/

namespace A153057.P8109943357392320299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  Int.gcd (n : ℤ) (1 - (f1 (n - 1) : ℤ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153057.P8109943357392320299

namespace A153057

/-- `∑[gcd(n, 1-a(n-1))²]` -/
def P8109943357392320299.Spec : Prop :=
  ∀ n, (P8109943357392320299.a n : ℤ) = A153057 n

end A153057

/-! ## A153057.P5108569989643196865

`∑[n²%(5*a(n-1))]` with `a(0)=3`
-/

namespace A153057.P5108569989643196865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  n ^ 2 % (5 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153057.P5108569989643196865

namespace A153057

/-- `∑[n²%(5*a(n-1))]` -/
def P5108569989643196865.Spec : Prop :=
  ∀ n, (P5108569989643196865.a n : ℤ) = A153057 n

end A153057

/-! ## A153057.P11621839356567138916

`∑[(and(2, a(n-1))-n)²]` with `a(0)=3`
-/

namespace A153057.P11621839356567138916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  (Int.land 2 (f1 (n - 1)) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153057.P11621839356567138916

namespace A153057

/-- `∑[(and(2, a(n-1))-n)²]` -/
def P11621839356567138916.Spec : Prop :=
  ∀ n, P11621839356567138916.a n = A153057 n

end A153057

/-! ## A153057.P15847575347429799056

`n*(a(n-1)/n+n)` with `a(0)=3`
-/

namespace A153057.P15847575347429799056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  (n : ℚ) * (a (n - 1) / (n : ℚ) + (n : ℚ))

end

end A153057.P15847575347429799056

namespace A153057

/-- `n*(a(n-1)/n+n)` -/
def P15847575347429799056.Spec : Prop :=
  ∀ n, P15847575347429799056.a n = (A153057 n : ℚ)

end A153057

/-! ## A153057.P1541944778578298648

`abs(3-∑[n-lcm(n, n+1)])`
-/

namespace A153057.P1541944778578298648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.lcm n (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A153057.P1541944778578298648

namespace A153057

/-- `abs(3-∑[n-lcm(n, n+1)])` -/
def P1541944778578298648.Spec : Prop :=
  ∀ n, P1541944778578298648.a n = A153057 n

end A153057

/-! ## A153057.P17328127210700158274

`∑[∑[a(n-1)+2]]` with `a(0)=3, a(1)=-2, a(2)=3`
-/

namespace A153057.P17328127210700158274
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, -2, 3] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153057.P17328127210700158274

namespace A153057

/-- `∑[∑[a(n-1)+2]]` -/
def P17328127210700158274.Spec : Prop :=
  ∀ n, P17328127210700158274.a n = A153057 n

end A153057

/-! ## A153057.P470851095152037960

`∑[(n*(-1)^a(n-1))²]` with `a(0)=3`
-/

namespace A153057.P470851095152037960
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [3] fun n f1 =>
  ((n : ℝ) * (-1 : ℝ) ^ (f1 (n - 1))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153057.P470851095152037960

namespace A153057

/-- `∑[(n*(-1)^a(n-1))²]` -/
def P470851095152037960.Spec : Prop :=
  ∀ n, P470851095152037960.a n = (A153057 n : ℝ)

end A153057

/-! ## A153057.P12109446618298297721

`∑[(n/(-1)^a(n-1))²]` with `a(0)=3`
-/

namespace A153057.P12109446618298297721
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [3] fun n f1 =>
  ((n : ℝ) / (-1 : ℝ) ^ (f1 (n - 1))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153057.P12109446618298297721

namespace A153057

/-- `∑[(n/(-1)^a(n-1))²]` -/
def P12109446618298297721.Spec : Prop :=
  ∀ n, P12109446618298297721.a n = (A153057 n : ℝ)

end A153057

/-! ## A153057.P8767639352468054105

`∑[n*n%a(n-1)]` with `a(0)=3, a(1)=1, a(2)=4`
-/

namespace A153057.P8767639352468054105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 4] fun n f1 =>
  n * (n % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153057.P8767639352468054105

namespace A153057

/-- `∑[n*n%a(n-1)]` -/
def P8767639352468054105.Spec : Prop :=
  ∀ n, (P8767639352468054105.a n : ℤ) = A153057 n

end A153057

/-! ## A153057.P11467660389601938340

`∑[n^gcd(2, 2*a(n-1))]` with `a(0)=3`
-/

namespace A153057.P11467660389601938340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  n ^ Nat.gcd 2 (2 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153057.P11467660389601938340

namespace A153057

/-- `∑[n^gcd(2, 2*a(n-1))]` -/
def P11467660389601938340.Spec : Prop :=
  ∀ n, (P11467660389601938340.a n : ℤ) = A153057 n

end A153057

/-! ## A153057.P14346971613890466381

`∑[2*n-(1-a(n-1))]` with `a(0)=3, a(1)=1`
-/

namespace A153057.P14346971613890466381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  (2 * n : ℤ) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153057.P14346971613890466381

namespace A153057

/-- `∑[2*n-(1-a(n-1))]` -/
def P14346971613890466381.Spec : Prop :=
  ∀ n, P14346971613890466381.a n = A153057 n

end A153057

/-! ## A153057.P17713091448876899541

`∑[n-(1-a(n-1)-n)]` with `a(0)=3, a(1)=1`
-/

namespace A153057.P17713091448876899541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 1] fun n f1 =>
  (n : ℤ) - (1 - f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153057.P17713091448876899541

namespace A153057

/-- `∑[n-(1-a(n-1)-n)]` -/
def P17713091448876899541.Spec : Prop :=
  ∀ n, P17713091448876899541.a n = A153057 n

end A153057

/-! ## A153057.P3494037522777563610

`floor(floor(a(n-1))+n^(4/2))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A153057.P3494037522777563610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌊(a (n - 1) : ℝ) + (n : ℝ) ^ ((4 : ℚ) / 2 : ℝ)⌋

end

end A153057.P3494037522777563610

namespace A153057

/-- `floor(floor(a(n-1))+n^(4/2))` -/
def P3494037522777563610.Spec : Prop :=
  ∀ n, P3494037522777563610.a n = A153057 n

end A153057

/-! ## A153057.P12490156550857815965

`floor(a(n-1)+n*(n+1)-n)` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A153057.P12490156550857815965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (n * (n + 1) : ℤ) - (n : ℤ)

end

end A153057.P12490156550857815965

namespace A153057

/-- `floor(a(n-1)+n*(n+1)-n)` -/
def P12490156550857815965.Spec : Prop :=
  ∀ n, P12490156550857815965.a n = A153057 n

end A153057

/-! ## A153057.P13475428690650897028

`floor(n-(n*(1-n)-a(n-1)))` with `a(0)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A153057.P13475428690650897028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (n : ℤ) - ((n : ℤ) * (1 - (n : ℤ)) - a (n - 1))

end

end A153057.P13475428690650897028

namespace A153057

/-- `floor(n-(n*(1-n)-a(n-1)))` -/
def P13475428690650897028.Spec : Prop :=
  ∀ n, P13475428690650897028.a n = A153057 n

end A153057

/-!
# A153058: a(0)=4; a(n)=n^2+a(n-1) for n>0.

The programs for A153058, the canonical program `A153058.P1088634967798383694` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153058 has offset 0).

The definition of A153058 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n²+a(n-1)` (program `A153058.P1088634967798383694`, by `A153058.P1088634967798383694.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153058.P1088634967798383694

`n²+a(n-1)` with `a(0)=4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153058

/-- `n²+a(n-1)` -/
def P1088634967798383694.Spec : Prop :=
  ∀ n, (P1088634967798383694.a n : ℤ) = A153058 n

theorem P1088634967798383694.correct : P1088634967798383694.Spec := by
  intro n
  simp only [A153058]

end A153058

/-! ## A153058.P12874500111816992886

`4+A000330(n)`
-/

namespace A153058.P12874500111816992886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 + A000330 n

end

end A153058.P12874500111816992886

namespace A153058

/-- `4+A000330(n)` -/
def P12874500111816992886.Spec : Prop :=
  ∀ n, P12874500111816992886.a n = A153058 n

end A153058

/-! ## A153058.P13325270996803276998

`4+∑[n²]`
-/

namespace A153058.P13325270996803276998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153058.P13325270996803276998

namespace A153058

/-- `4+∑[n²]` -/
def P13325270996803276998.Spec : Prop :=
  ∀ n, (P13325270996803276998.a n : ℤ) = A153058 n

end A153058

/-! ## A153058.P3385289620031903241

`∑[gcd(n, 2*C(2, n))²]`
-/

namespace A153058.P3385289620031903241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * Nat.choose 2 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153058.P3385289620031903241

namespace A153058

/-- `∑[gcd(n, 2*C(2, n))²]` -/
def P3385289620031903241.Spec : Prop :=
  ∀ n, (P3385289620031903241.a n : ℤ) = A153058 n

end A153058

/-! ## A153058.P15818276752450208624

`∑[(C(2, Δ[n²])-n)²]`
-/

namespace A153058.P15818276752450208624
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose 2 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℤ) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153058.P15818276752450208624

namespace A153058

/-- `∑[(C(2, Δ[n²])-n)²]` -/
def P15818276752450208624.Spec : Prop :=
  ∀ n, P15818276752450208624.a n = A153058 n

end A153058

/-! ## A153058.P8017969553207495248

`∑[n^(a(2%n)-2)]` with `a(0)=4`
-/

namespace A153058.P8017969553207495248
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [4] fun n f1 =>
  (n : ℝ) ^ (f1 (2 % n) - 2)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153058.P8017969553207495248

namespace A153058

/-- `∑[n^(a(2%n)-2)]` -/
def P8017969553207495248.Spec : Prop :=
  ∀ n, P8017969553207495248.a n = (A153058 n : ℝ)

end A153058

/-! ## A153058.P11375637500232301539

`∑[(2*C(n, n²)-n)²]`
-/

namespace A153058.P11375637500232301539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * Nat.choose n (n ^ 2) : ℤ) - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153058.P11375637500232301539

namespace A153058

/-- `∑[(2*C(n, n²)-n)²]` -/
def P11375637500232301539.Spec : Prop :=
  ∀ n, P11375637500232301539.a n = A153058 n

end A153058

/-! ## A153058.P16304264815841656812

`∑[n²%(5*a(n-1))]` with `a(0)=4`
-/

namespace A153058.P16304264815841656812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4] fun n f1 =>
  n ^ 2 % (5 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153058.P16304264815841656812

namespace A153058

/-- `∑[n²%(5*a(n-1))]` -/
def P16304264815841656812.Spec : Prop :=
  ∀ n, (P16304264815841656812.a n : ℤ) = A153058 n

end A153058

/-! ## A153058.P9387003161111275574

`n*(a(n-1)/n+n)` with `a(0)=4`
-/

namespace A153058.P9387003161111275574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (n : ℚ) * (a (n - 1) / (n : ℚ) + (n : ℚ))

end

end A153058.P9387003161111275574

namespace A153058

/-- `n*(a(n-1)/n+n)` -/
def P9387003161111275574.Spec : Prop :=
  ∀ n, P9387003161111275574.a n = (A153058 n : ℚ)

end A153058

/-! ## A153058.P7110502286262106194

`∑[(n-lcm(n-2, C(2, n)))²]`
-/

namespace A153058.P7110502286262106194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Int.lcm ((n : ℤ) - 2) (Nat.choose 2 n : ℤ) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153058.P7110502286262106194

namespace A153058

/-- `∑[(n-lcm(n-2, C(2, n)))²]` -/
def P7110502286262106194.Spec : Prop :=
  ∀ n, P7110502286262106194.a n = A153058 n

end A153058

/-! ## A153058.P9674451895705247644

`∑[gcd(C(2, (1-n)²)², n²)]`
-/

namespace A153058.P9674451895705247644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose 2 ((1 - (n : ℤ)) ^ 2).toNat ^ 2) (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153058.P9674451895705247644

namespace A153058

/-- `∑[gcd(C(2, (1-n)²)², n²)]` -/
def P9674451895705247644.Spec : Prop :=
  ∀ n, (P9674451895705247644.a n : ℤ) = A153058 n

end A153058

/-! ## A153058.P17655111284141283467

`∑[∑[a(n-1)+2]]` with `a(0)=4, a(1)=-3, a(2)=3`
-/

namespace A153058.P17655111284141283467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4, -3, 3] fun n f2 =>
  f2 (n - 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153058.P17655111284141283467

namespace A153058

/-- `∑[∑[a(n-1)+2]]` -/
def P17655111284141283467.Spec : Prop :=
  ∀ n, P17655111284141283467.a n = A153058 n

end A153058

/-! ## A153058.P13981078130833864069

`∑[(n*(-1)^a(n-1))²]` with `a(0)=4`
-/

namespace A153058.P13981078130833864069
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [4] fun n f1 =>
  ((n : ℝ) * (-1 : ℝ) ^ (f1 (n - 1))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153058.P13981078130833864069

namespace A153058

/-- `∑[(n*(-1)^a(n-1))²]` -/
def P13981078130833864069.Spec : Prop :=
  ∀ n, P13981078130833864069.a n = (A153058 n : ℝ)

end A153058

/-! ## A153058.P7385523620242829630

`∑[(n/(-1)^a(n-1))²]` with `a(0)=4`
-/

namespace A153058.P7385523620242829630
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [4] fun n f1 =>
  ((n : ℝ) / (-1 : ℝ) ^ (f1 (n - 1))) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153058.P7385523620242829630

namespace A153058

/-- `∑[(n/(-1)^a(n-1))²]` -/
def P7385523620242829630.Spec : Prop :=
  ∀ n, P7385523620242829630.a n = (A153058 n : ℝ)

end A153058

/-! ## A153058.P13164409307395610627

`∑[n*n%a(n-1)]` with `a(0)=4, a(1)=1, a(2)=4`
-/

namespace A153058.P13164409307395610627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 1, 4] fun n f1 =>
  n * (n % f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153058.P13164409307395610627

namespace A153058

/-- `∑[n*n%a(n-1)]` -/
def P13164409307395610627.Spec : Prop :=
  ∀ n, (P13164409307395610627.a n : ℤ) = A153058 n

end A153058

/-! ## A153058.P12174052679543164427

`∑[2*n-(1-a(n-1))]` with `a(0)=4, a(1)=1`
-/

namespace A153058.P12174052679543164427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  (2 * n : ℤ) - (1 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153058.P12174052679543164427

namespace A153058

/-- `∑[2*n-(1-a(n-1))]` -/
def P12174052679543164427.Spec : Prop :=
  ∀ n, P12174052679543164427.a n = A153058 n

end A153058

/-! ## A153058.P11710409001215871873

`∑[n-(1-a(n-1)-n)]` with `a(0)=4, a(1)=1`
-/

namespace A153058.P11710409001215871873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  (n : ℤ) - (1 - f1 (n - 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A153058.P11710409001215871873

namespace A153058

/-- `∑[n-(1-a(n-1)-n)]` -/
def P11710409001215871873.Spec : Prop :=
  ∀ n, P11710409001215871873.a n = A153058 n

end A153058

/-! ## A153058.P4363813177740487062

`floor(floor(a(n-1))+n^(4/2))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A153058.P4363813177740487062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊(a (n - 1) : ℝ) + (n : ℝ) ^ ((4 : ℚ) / 2 : ℝ)⌋

end

end A153058.P4363813177740487062

namespace A153058

/-- `floor(floor(a(n-1))+n^(4/2))` -/
def P4363813177740487062.Spec : Prop :=
  ∀ n, P4363813177740487062.a n = A153058 n

end A153058

/-! ## A153058.P9681654827385379997

`floor(a(n-1)+n*(n+1)-n)` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A153058.P9681654827385379997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (n * (n + 1) : ℤ) - (n : ℤ)

end

end A153058.P9681654827385379997

namespace A153058

/-- `floor(a(n-1)+n*(n+1)-n)` -/
def P9681654827385379997.Spec : Prop :=
  ∀ n, P9681654827385379997.a n = A153058 n

end A153058

/-! ## A153058.P7270111738044747448

`floor(n-(n*(1-n)-a(n-1)))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A153058.P7270111738044747448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  (n : ℤ) - ((n : ℤ) * (1 - (n : ℤ)) - a (n - 1))

end

end A153058.P7270111738044747448

namespace A153058

/-- `floor(n-(n*(1-n)-a(n-1)))` -/
def P7270111738044747448.Spec : Prop :=
  ∀ n, P7270111738044747448.a n = A153058 n

end A153058

/-!
# A153059: a(0) = 0, a(n) = a(n-1)^2 - n.

The programs for A153059, the canonical program `A153059.P1729481051978162579` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153059 has offset 0).

The definition of A153059 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-n` (program `A153059.P1729481051978162579`, by `A153059.P1729481051978162579.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153059.P1729481051978162579

`a(n-1)²-n` with `a(0)=0, a(1)=-1, a(2)=-1, a(3)=-2, a(4)=0`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153059

/-- `a(n-1)²-n` -/
def P1729481051978162579.Spec : Prop :=
  ∀ n, P1729481051978162579.a n = A153059 n

theorem P1729481051978162579.correct : P1729481051978162579.Spec := by
  intro n
  simp only [A153059]

end A153059

/-! ## A153059.P17574471021461397993

`a(n-1)^2-n` with `a(0)=0`
-/

namespace A153059.P17574471021461397993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) ^ 2 - (n : ℤ)

end

end A153059.P17574471021461397993

namespace A153059

/-- `a(n-1)^2-n` -/
def P17574471021461397993.Spec : Prop :=
  ∀ n, P17574471021461397993.a n = A153059 n

end A153059

/-! ## A153059.P11859962446769236451

`abs(a(n-1))²-n` with `a(0)=0`
-/

namespace A153059.P11859962446769236451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |a (n - 1)| ^ 2 - (n : ℤ)

end

end A153059.P11859962446769236451

namespace A153059

/-- `abs(a(n-1))²-n` -/
def P11859962446769236451.Spec : Prop :=
  ∀ n, P11859962446769236451.a n = A153059 n

end A153059

/-! ## A153059.P2784711603053669189

`a(n-1)*a(n-1)-n` with `a(0)=0`
-/

namespace A153059.P2784711603053669189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) * a (n - 1) - (n : ℤ)

end

end A153059.P2784711603053669189

namespace A153059

/-- `a(n-1)*a(n-1)-n` -/
def P2784711603053669189.Spec : Prop :=
  ∀ n, P2784711603053669189.a n = A153059 n

end A153059

/-! ## A153059.P16617102873570413952

`floor(a(n-1)/acot(a(n-1)))-n` with `a(0)=0`
-/

namespace A153059.P16617102873570413952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℝ) / SequenceMachineLib.acot (a (n - 1) : ℝ)⌋ - (n : ℤ)

end

end A153059.P16617102873570413952

namespace A153059

/-- `floor(a(n-1)/acot(a(n-1)))-n` -/
def P16617102873570413952.Spec : Prop :=
  ∀ n, P16617102873570413952.a n = A153059 n

end A153059

/-!
# A153060: a(0)=4, a(n)=a(n-1)^2 - n for n > 0.

The programs for A153060, the canonical program `A153060.P5192061237014207920` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153060 has offset 0).

The definition of A153060 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-n` (program `A153060.P5192061237014207920`, by `A153060.P5192061237014207920.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153060.P5192061237014207920

`a(n-1)²-n` with `a(0)=4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153060

/-- `a(n-1)²-n` -/
def P5192061237014207920.Spec : Prop :=
  ∀ n, P5192061237014207920.a n = A153060 n

theorem P5192061237014207920.correct : P5192061237014207920.Spec := by
  intro n
  simp only [A153060]

end A153060

/-! ## A153060.P7957204890557726999

`a(n-1)^2-n` with `a(0)=4`
-/

namespace A153060.P7957204890557726999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) ^ 2 - (n : ℤ)

end

end A153060.P7957204890557726999

namespace A153060

/-- `a(n-1)^2-n` -/
def P7957204890557726999.Spec : Prop :=
  ∀ n, P7957204890557726999.a n = A153060 n

theorem P7957204890557726999.correct : P7957204890557726999.Spec := by
  intro n
  simp only [A153060, Nat.add_sub_cancel, A153060.P7957204890557726999.a, A153060.P5192061237014207920.a, SequenceMachineLib.memo_apply]

end A153060

/-! ## A153060.P16939655734433963748

`root(a(n-1), 1/2)-n` with `a(0)=4`
-/

namespace A153060.P16939655734433963748
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) ^ (1 / ((1 : ℚ) / 2 : ℝ)) - (n : ℝ)

end

end A153060.P16939655734433963748

namespace A153060

/-- `root(a(n-1), 1/2)-n` -/
def P16939655734433963748.Spec : Prop :=
  ∀ n, P16939655734433963748.a n = (A153060 n : ℝ)

end A153060

/-! ## A153060.P8070441139927703920

`ceil(a(n-1))*a(n-1)-n` with `a(0)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A153060.P8070441139927703920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) * a (n - 1) - (n : ℤ)

end

end A153060.P8070441139927703920

namespace A153060

/-- `ceil(a(n-1))*a(n-1)-n` -/
def P8070441139927703920.Spec : Prop :=
  ∀ n, P8070441139927703920.a n = A153060 n

theorem P8070441139927703920.correct : P8070441139927703920.Spec := by
  intro n
  simp only [A153060, Nat.add_sub_cancel, A153060.P8070441139927703920.a, A153060.P5192061237014207920.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A153060

/-!
# A153061: a(-1) = 2, a(n) = a(n-1)^2 + n.

The programs for A153061, the canonical program `A153061.P9007695195733504381` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153061 has offset 0).

The definition of A153061 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²+n` (program `A153061.P9007695195733504381`, by `A153061.P9007695195733504381.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153061.P9007695195733504381

`a(n-1)²+n` with `a(0)=4`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153061

/-- `a(n-1)²+n` -/
def P9007695195733504381.Spec : Prop :=
  ∀ n, (P9007695195733504381.a n : ℤ) = A153061 n

theorem P9007695195733504381.correct : P9007695195733504381.Spec := by
  intro n
  simp only [A153061]

end A153061

/-! ## A153061.P13522091606869040268

`a(n-1)^2+n` with `a(0)=4`
-/

namespace A153061.P13522091606869040268
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) ^ 2 + n

end

end A153061.P13522091606869040268

namespace A153061

/-- `a(n-1)^2+n` -/
def P13522091606869040268.Spec : Prop :=
  ∀ n, (P13522091606869040268.a n : ℤ) = A153061 n

theorem P13522091606869040268.correct : P13522091606869040268.Spec := by
  intro n
  simp only [A153061, Nat.add_sub_cancel, A153061.P13522091606869040268.a, A153061.P9007695195733504381.a, SequenceMachineLib.memo_apply]

end A153061

/-! ## A153061.P3508668478195139204

`ceil(a(n-1))*a(n-1)+n` with `a(0)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A153061.P3508668478195139204
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) * a (n - 1) + n

end

end A153061.P3508668478195139204

namespace A153061

/-- `ceil(a(n-1))*a(n-1)+n` -/
def P3508668478195139204.Spec : Prop :=
  ∀ n, (P3508668478195139204.a n : ℤ) = A153061 n

theorem P3508668478195139204.correct : P3508668478195139204.Spec := by
  intro n
  simp only [A153061, Nat.add_sub_cancel, A153061.P3508668478195139204.a, A153061.P9007695195733504381.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A153061

/-! ## A153061.P12496642763542402311

`a(A028310(n)-1)*a(n-1)+n` with `a(0)=4`
-/

namespace A153061.P12496642763542402311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  a (A028310 n - 1).toNat * a (n - 1) + n

end

end A153061.P12496642763542402311

namespace A153061

/-- `a(A028310(n)-1)*a(n-1)+n` -/
def P12496642763542402311.Spec : Prop :=
  ∀ n, (P12496642763542402311.a n : ℤ) = A153061 n

end A153061

/-!
# A153062: a(0)=1, a(n)=a(n-1)^2-n^2.

The programs for A153062, the canonical program `A153062.P9535236099918543447` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153062 has offset 0).

The definition of A153062 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)²-n²` (program `A153062.P9535236099918543447`, by `A153062.P9535236099918543447.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153062.P9535236099918543447

`a(n-1)²-n²` with `a(0)=1`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153062

/-- `a(n-1)²-n²` -/
def P9535236099918543447.Spec : Prop :=
  ∀ n, P9535236099918543447.a n = A153062 n

theorem P9535236099918543447.correct : P9535236099918543447.Spec := by
  intro n
  simp only [A153062]

end A153062

/-! ## A153062.P15184530025548313533

`(a(n-1)+n)*(a(n-1)-n)` with `a(0)=1`
-/

namespace A153062.P15184530025548313533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (n : ℤ)) * (a (n - 1) - (n : ℤ))

end

end A153062.P15184530025548313533

namespace A153062

/-- `(a(n-1)+n)*(a(n-1)-n)` -/
def P15184530025548313533.Spec : Prop :=
  ∀ n, P15184530025548313533.a n = A153062 n

theorem P15184530025548313533.correct : P15184530025548313533.Spec := by
  intro n
  simp only [A153062, Nat.add_sub_cancel, A153062.P15184530025548313533.a, A153062.P9535236099918543447.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A153062

/-! ## A153062.P15954117437243758751

`a(n-1)*a(n-1)-n*n` with `a(0)=1`
-/

namespace A153062.P15954117437243758751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * a (n - 1) - (n * n : ℤ)

end

end A153062.P15954117437243758751

namespace A153062

/-- `a(n-1)*a(n-1)-n*n` -/
def P15954117437243758751.Spec : Prop :=
  ∀ n, P15954117437243758751.a n = A153062 n

theorem P15954117437243758751.correct : P15954117437243758751.Spec := by
  intro n
  simp only [A153062, Nat.add_sub_cancel, A153062.P15954117437243758751.a, A153062.P9535236099918543447.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A153062

/-! ## A153062.P5339252503677229971

`(a(n-1)-n)/(a(n-1)+n)^(-1)` with `a(0)=1`
-/

namespace A153062.P5339252503677229971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) - (n : ℚ)) / (a (n - 1) + (n : ℚ)) ^ (-1 : ℤ)

end

end A153062.P5339252503677229971

namespace A153062

/-- `(a(n-1)-n)/(a(n-1)+n)^(-1)` -/
def P5339252503677229971.Spec : Prop :=
  ∀ n, P5339252503677229971.a n = (A153062 n : ℚ)

end A153062

/-! ## A153062.P5938983010638714589

`a(n-1)^2-A000290(n)` with `a(0)=1`
-/

namespace A153062.P5938983010638714589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 2 - A000290 n

end

end A153062.P5938983010638714589

namespace A153062

/-- `a(n-1)^2-A000290(n)` -/
def P5938983010638714589.Spec : Prop :=
  ∀ n, P5938983010638714589.a n = A153062 n

end A153062

/-!
# A153064: a(n) = floor(b(n)) where b(-1)=2, b(n)=b(n-1)^2-n^b(n-1).

The programs for A153064, there is no canonical definition to state claims against.
-/

/-! ## A153064.P3961573238996566217

`a(n-1)²-(5%n)^a(n-1)` with `a(0)=2`
-/

namespace A153064.P3961573238996566217
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) ^ 2 - ((5 % n : ℕ) : ℝ) ^ (a (n - 1))

end

end A153064.P3961573238996566217

/-!
# A153065: Prime numbers such that the sum of any 5 consecutive terms is a prime.

The programs for A153065, there is no canonical definition to state claims against.
-/

/-! ## A153065.P8101810414334151080

`p?[∑[A349410(A329784(n+1))]]`
-/

namespace A153065.P8101810414334151080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349410 (A329784 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153065.P8101810414334151080

/-! ## A153065.P4222732340852553597

`p?[lcm(A317198(n+2), A322407(n))]`
-/

namespace A153065.P4222732340852553597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A317198 (n + 2)) (A322407 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A153065.P4222732340852553597

/-! ## A153065.P11016305242047093759

`p?[eq[2, A251140(A088329(n+1)+1)]+2]`
-/

namespace A153065.P11016305242047093759
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251140 (A088329 (n + 1) + 1).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A153065.P11016305242047093759

/-! ## A153065.P13464150964578343074

`or(A001222(A052539(n)), A003627(n+1))`
-/

namespace A153065.P13464150964578343074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A052539 n).toNat) (A003627 (n + 1))

end

end A153065.P13464150964578343074

/-!
# A153068: Denominators of the convergents of the continued fraction for L(2, chi3), where L(s, chi3) is the Dirichlet L-function for the non-principal character modulo 3.

The programs for A153068, there is no canonical definition to state claims against.
-/

/-! ## A153068.P13740880166617645590

`A002262(A361380(n)+A132345(n+4))`
-/

namespace A153068.P13740880166617645590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A361380 n + A132345 (n + 4)).toNat

end

end A153068.P13740880166617645590

/-!
# A153070: Denominators of the convergents of the continued fraction for Catalan's constant L(2, chi4), where L(s, chi4) is the Dirichlet L-function for the non-principal character modulo 4.

The programs for A153070, there is no canonical definition to state claims against.
-/

/-! ## A153070.P18018998955606444845

`A124758(A052875(n))-A304793(n+1)`
-/

namespace A153070.P18018998955606444845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A052875 n).toNat - A304793 (n + 1)

end

end A153070.P18018998955606444845

/-! ## A153070.P11081198716995785114

`A268512(A309765(n+1))-A010051(n+1)`
-/

namespace A153070.P11081198716995785114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268512 (A309765 (n + 1)).toNat - A010051 (n + 1)

end

end A153070.P11081198716995785114

/-! ## A153070.P15312850601616498514

`A356326(n)+A341040(A201345(3*n+5))`
-/

namespace A153070.P15312850601616498514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356326 n + A341040 (A201345 (3 * n + 5)).toNat

end

end A153070.P15312850601616498514

/-!
# A153073: Numerators of the convergents of the continued fraction for L(3, chi4), where L(s, chi4) is the Dirichlet L-function for the non-principal character modulo 4.

The programs for A153073, there is no canonical definition to state claims against.
-/

/-! ## A153073.P15423203773571927490

`∪[5^(n+1), ∑[5^n]]%A162053(ceil(10^(n/6)))`
-/

namespace A153073.P15423203773571927490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℤ) (A162053 ⌈(10 : ℝ) ^ ((n : ℚ) / 6 : ℝ)⌉.toNat)

end

end A153073.P15423203773571927490

/-! ## A153073.P84309711464581964

`∪[5^(n+1), ∑[5^n]]%A304641(A000073(n+1))`
-/

namespace A153073.P84309711464581964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n : ℤ) (A304641 (A000073 (n + 1)).toNat)

end

end A153073.P84309711464581964

/-! ## A153073.P6873287286757832318

`A120071(n)%A177954(A000670(n))`
-/

namespace A153073.P6873287286757832318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120071 n) (A177954 (A000670 n).toNat)

end

end A153073.P6873287286757832318

/-!
# A153074: Denominators of the convergents of the continued fraction for L(3, chi4), where L(s, chi4) is the Dirichlet L-function for the non-principal character modulo 4.

The programs for A153074, there is no canonical definition to state claims against.
-/

/-! ## A153074.P16642087887485670670

`and(A000045(A259781(n)), A214393(n))`
-/

namespace A153074.P16642087887485670670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000045 (A259781 n).toNat) (A214393 n)

end

end A153074.P16642087887485670670

/-! ## A153074.P8148058446244640318

`and(A188678(n), A339533(A011782(n)))`
-/

namespace A153074.P8148058446244640318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A188678 n) (A339533 (A011782 n).toNat)

end

end A153074.P8148058446244640318

/-! ## A153074.P17451800045241308028

`and(A000045(A000166(n)), A062810(n+1))`
-/

namespace A153074.P17451800045241308028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000045 (A000166 n).toNat) (A062810 (n + 1))

end

end A153074.P17451800045241308028

/-!
# A153075: Increasing sequence of prime numbers such that the sum of any 3 consecutive terms is a prime and sum of any 5 consecutive terms is a prime also.

The programs for A153075, there is no canonical definition to state claims against.
-/

/-! ## A153075.P17977235896524616357

`p?[A171531(A001316(n))+A006046(n)]`
-/

namespace A153075.P17977235896524616357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171531 (A001316 n).toNat + A006046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A153075.P17977235896524616357

/-! ## A153075.P8359320632783119532

`A328603(A192490(n+1)+A007500(n+1))`
-/

namespace A153075.P8359320632783119532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328603 (A192490 (n + 1) + A007500 (n + 1)).toNat

end

end A153075.P8359320632783119532

/-!
# A153077: Largest number m such that sigma(m) = A002110(n) where A002110(n) is the product of the first n primes.

The programs for A153077, there is no canonical definition to state claims against.
-/

/-! ## A153077.P5273566823378937386

`A002110(n+2)-A099297(A318256(2*n+3))`
-/

namespace A153077.P5273566823378937386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 2) - A099297 (A318256 (2 * n + 3)).toNat

end

end A153077.P5273566823378937386

/-!
# A153079: a(n) = 13^n + 2.

The programs for A153079, the canonical program `A153079.P14027319011045439574` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153079 has offset 0).

The definition of A153079 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13^n+2` (program `A153079.P14027319011045439574`, by `A153079.P14027319011045439574.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153079.P14027319011045439574

`13^n+2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153079

/-- `13^n+2` -/
def P14027319011045439574.Spec : Prop :=
  ∀ n, (P14027319011045439574.a n : ℤ) = A153079 n

theorem P14027319011045439574.correct : P14027319011045439574.Spec := by
  intro n
  simp only [A153079]

end A153079

/-!
# A153080: a(n) = 13*n + 2.

The programs for A153080, the canonical program `A153080.P12698486162711412259` is in `Seq.B000.C022`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153080 has offset 0).

The definition of A153080 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `13*n+2` (program `A153080.P12698486162711412259`, by `A153080.P12698486162711412259.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A153080.P12698486162711412259

`13*n+2`

The canonical program, it is in `Seq.B000.C022`.
-/

namespace A153080

/-- `13*n+2` -/
def P12698486162711412259.Spec : Prop :=
  ∀ n, (P12698486162711412259.a n : ℤ) = A153080 n

theorem P12698486162711412259.correct : P12698486162711412259.Spec := by
  intro n
  simp only [A153080]

end A153080

/-!
# A153081: Nonnegative numbers k such that 2k + 13 is prime.

The programs for A153081, the canonical program `A153081.P13540850000672631907` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153081 has offset 1).

The definition of A153081 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153081.P13540850000672631907

`A101448(n+2)-1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A153081

/-- `A101448(n+2)-1` -/
def P13540850000672631907.Spec : Prop :=
  ∀ n, P13540850000672631907.a n = A153081 (n + 1)

theorem P13540850000672631907.correct : P13540850000672631907.Spec := by
  intro n
  simp only [A153081, Nat.add_sub_cancel]

end A153081

/-! ## A153081.P4020639720766684185

`A155722(n+2)-2`
-/

namespace A153081.P4020639720766684185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 2) - 2

end

end A153081.P4020639720766684185

namespace A153081

/-- `A155722(n+2)-2` -/
def P4020639720766684185.Spec : Prop :=
  ∀ n, P4020639720766684185.a n = A153081 (n + 1)

end A153081

/-! ## A153081.P846980571291737220

`A088967(n+2)/2-2`
-/

namespace A153081.P846980571291737220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088967 (n + 2) : ℚ) / 2 - 2

end

end A153081.P846980571291737220

namespace A153081

/-- `A088967(n+2)/2-2` -/
def P846980571291737220.Spec : Prop :=
  ∀ n, P846980571291737220.a n = (A153081 (n + 1) : ℚ)

end A153081

/-! ## A153081.P7920539703838459930

`A105760(n+3)-3`
-/

namespace A153081.P7920539703838459930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 3) - 3

end

end A153081.P7920539703838459930

namespace A153081

/-- `A105760(n+3)-3` -/
def P7920539703838459930.Spec : Prop :=
  ∀ n, P7920539703838459930.a n = A153081 (n + 1)

end A153081

/-! ## A153081.P8978967571301062797

`A089038(n+4)-4`
-/

namespace A153081.P8978967571301062797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 4) - 4

end

end A153081.P8978967571301062797

namespace A153081

/-- `A089038(n+4)-4` -/
def P8978967571301062797.Spec : Prop :=
  ∀ n, P8978967571301062797.a n = A153081 (n + 1)

end A153081

/-! ## A153081.P3127016916350624448

`∑[A028334(n+5)]-1`
-/

namespace A153081.P3127016916350624448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A153081.P3127016916350624448

namespace A153081

/-- `∑[A028334(n+5)]-1` -/
def P3127016916350624448.Spec : Prop :=
  ∀ n, P3127016916350624448.a n = A153081 (n + 1)

end A153081

/-! ## A153081.P10526146567939937641

`A073273(n+4)-A097338(n+3)`
-/

namespace A153081.P10526146567939937641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 4) - A097338 (n + 3)

end

end A153081.P10526146567939937641

namespace A153081

/-- `A073273(n+4)-A097338(n+3)` -/
def P10526146567939937641.Spec : Prop :=
  ∀ n, P10526146567939937641.a n = A153081 (n + 1)

end A153081

/-! ## A153081.P18387344814711038136

`A067076(n+5)-5`
-/

namespace A153081.P18387344814711038136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 5) - 5

end

end A153081.P18387344814711038136

namespace A153081

/-- `A067076(n+5)-5` -/
def P18387344814711038136.Spec : Prop :=
  ∀ n, P18387344814711038136.a n = A153081 (n + 1)

end A153081

/-! ## A153081.P15521355434131464710

`A005097(n+5)-6`
-/

namespace A153081.P15521355434131464710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 5) - 6

end

end A153081.P15521355434131464710

namespace A153081

/-- `A005097(n+5)-6` -/
def P15521355434131464710.Spec : Prop :=
  ∀ n, P15521355434131464710.a n = A153081 (n + 1)

end A153081

/-! ## A153081.P5484598235435035875

`A098090(n+5)-8`
-/

namespace A153081.P5484598235435035875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 5) - 8

end

end A153081.P5484598235435035875

namespace A153081

/-- `A098090(n+5)-8` -/
def P5484598235435035875.Spec : Prop :=
  ∀ n, P5484598235435035875.a n = A153081 (n + 1)

end A153081

/-! ## A153081.P15248215584961573301

`A089253(n+5)-9`
-/

namespace A153081.P15248215584961573301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089253 (n + 5) - 9

end

end A153081.P15248215584961573301

namespace A153081

/-- `A089253(n+5)-9` -/
def P15248215584961573301.Spec : Prop :=
  ∀ n, P15248215584961573301.a n = A153081 (n + 1)

end A153081

/-! ## A153081.P6254356302644428954

`A089192(n+5)-10`
-/

namespace A153081.P6254356302644428954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 5) - 10

end

end A153081.P6254356302644428954

namespace A153081

/-- `A089192(n+5)-10` -/
def P6254356302644428954.Spec : Prop :=
  ∀ n, P6254356302644428954.a n = A153081 (n + 1)

end A153081

/-! ## A153081.P14426643167953988970

`lt[A000005(2*n+13), 3]`
-/

namespace A153081.P14426643167953988970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 13)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153081.P14426643167953988970

namespace A153081

/-- `lt[A000005(2*n+13), 3]` -/
def P14426643167953988970.Spec : Prop :=
  ∀ n, (P14426643167953988970.a n : ℤ) = A153081 (n + 1)

end A153081

/-! ## A153081.P13514139111551028217

`eq[1, A001222(2*(n+5)+3)]`
-/

namespace A153081.P13514139111551028217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 5) + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153081.P13514139111551028217

namespace A153081

/-- `eq[1, A001222(2*(n+5)+3)]` -/
def P13514139111551028217.Spec : Prop :=
  ∀ n, (P13514139111551028217.a n : ℤ) = A153081 (n + 1)

end A153081

/-! ## A153081.P12125583224760454244

`lt[A001222(2*(n+6)+1), 2]`
-/

namespace A153081.P12125583224760454244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 6) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153081.P12125583224760454244

namespace A153081

/-- `lt[A001222(2*(n+6)+1), 2]` -/
def P12125583224760454244.Spec : Prop :=
  ∀ n, (P12125583224760454244.a n : ℤ) = A153081 (n + 1)

end A153081

/-! ## A153081.P17615099966380399826

`record[n+3-3^A000005(2*n+1)]`
-/

namespace A153081.P17615099966380399826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) - (3 : ℚ) ^ (A000005 (2 * n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153081.P17615099966380399826

namespace A153081

/-- `record[n+3-3^A000005(2*n+1)]` -/
def P17615099966380399826.Spec : Prop :=
  ∀ n, P17615099966380399826.a n = (A153081 (n + 1) : ℚ)

end A153081

/-! ## A153081.P11374485994049599899

`eq[1, A054024(2*(n+3)+7)]`
-/

namespace A153081.P11374485994049599899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054024 (2 * (n + 3) + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153081.P11374485994049599899

namespace A153081

/-- `eq[1, A054024(2*(n+3)+7)]` -/
def P11374485994049599899.Spec : Prop :=
  ∀ n, (P11374485994049599899.a n : ℤ) = A153081 (n + 1)

end A153081

/-! ## A153081.P27009801353492107

`eq[2, ∏{e}[2*n+13, #+1]]`
-/

namespace A153081.P27009801353492107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 13

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A153081.P27009801353492107

namespace A153081

/-- `eq[2, ∏{e}[2*n+13, #+1]]` -/
def P27009801353492107.Spec : Prop :=
  ∀ n, (P27009801353492107.a n : ℤ) = A153081 (n + 1)

end A153081

/-! ## A153081.P6602454192812019774

`lt[A319353(Δ[(A000027(n+1)+2)²]+6), 3]`
-/

namespace A153081.P6602454192812019774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319353 (f2 (n + 1) - f2 n + 6).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A153081.P6602454192812019774

namespace A153081

/-- `lt[A319353(Δ[(A000027(n+1)+2)²]+6), 3]` -/
def P6602454192812019774.Spec : Prop :=
  ∀ n, (P6602454192812019774.a n : ℤ) = A153081 (n + 1)

end A153081

/-! ## A153081.P10741893532663456414

`eq[3, A138479(n+2)]`
-/

namespace A153081.P10741893532663456414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138479 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153081.P10741893532663456414

namespace A153081

/-- `eq[3, A138479(n+2)]` -/
def P10741893532663456414.Spec : Prop :=
  ∀ n, (P10741893532663456414.a n : ℤ) = A153081 (n + 1)

end A153081

/-!
# A153082: Numbers k such that 2*k + 13 is not prime.

The programs for A153082, the canonical program `A153082.P14466958121128585046` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153082 has offset 1).

The definition of A153082 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153082.P5592944432410175936

`comp[A153081(n+1)]`
-/

namespace A153082.P5592944432410175936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153082.P5592944432410175936

namespace A153082

/-- `comp[A153081(n+1)]` -/
def P5592944432410175936.Spec : Prop :=
  ∀ n, (P5592944432410175936.a n : ℤ) = A153082 (n + 1)

end A153082

/-! ## A153082.P14466958121128585046

`A241571(n+1)+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A153082

/-- `A241571(n+1)+1` -/
def P14466958121128585046.Spec : Prop :=
  ∀ n, P14466958121128585046.a n = A153082 (n + 1)

theorem P14466958121128585046.correct : P14466958121128585046.Spec := by
  intro n
  simp only [A153082, Nat.add_sub_cancel]

end A153082

/-! ## A153082.P4125646960453068914

`A153083(n+1)-1`
-/

namespace A153082.P4125646960453068914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153083 (n + 1) - 1

end

end A153082.P4125646960453068914

namespace A153082

/-- `A153083(n+1)-1` -/
def P4125646960453068914.Spec : Prop :=
  ∀ n, P4125646960453068914.a n = A153082 (n + 1)

end A153082

/-! ## A153082.P3113328448866758553

`comp[A089559(n+1)]+1`
-/

namespace A153082.P3113328448866758553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A153082.P3113328448866758553

namespace A153082

/-- `comp[A089559(n+1)]+1` -/
def P3113328448866758553.Spec : Prop :=
  ∀ n, (P3113328448866758553.a n : ℤ) = A153082 (n + 1)

end A153082

/-! ## A153082.P8733856642402869933

`comp[A101448(n+1)-1]`
-/

namespace A153082.P8733856642402869933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101448 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153082.P8733856642402869933

namespace A153082

/-- `comp[A101448(n+1)-1]` -/
def P8733856642402869933.Spec : Prop :=
  ∀ n, (P8733856642402869933.a n : ℤ) = A153082 (n + 1)

end A153082

/-! ## A153082.P18426874027359720247

`comp[A155722(n+1)-2]`
-/

namespace A153082.P18426874027359720247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153082.P18426874027359720247

namespace A153082

/-- `comp[A155722(n+1)-2]` -/
def P18426874027359720247.Spec : Prop :=
  ∀ n, (P18426874027359720247.a n : ℤ) = A153082 (n + 1)

end A153082

/-! ## A153082.P13506504816423654136

`A155723(n+2)-2`
-/

namespace A153082.P13506504816423654136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155723 (n + 2) - 2

end

end A153082.P13506504816423654136

namespace A153082

/-- `A155723(n+2)-2` -/
def P13506504816423654136.Spec : Prop :=
  ∀ n, P13506504816423654136.a n = A153082 (n + 1)

end A153082

/-! ## A153082.P2947254202143080400

`A153053(n+2)-3`
-/

namespace A153082.P2947254202143080400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153053 (n + 2) - 3

end

end A153082.P2947254202143080400

namespace A153082

/-- `A153053(n+2)-3` -/
def P2947254202143080400.Spec : Prop :=
  ∀ n, P2947254202143080400.a n = A153082 (n + 1)

end A153082

/-! ## A153082.P11137488680554362698

`A153052(n+2)-4`
-/

namespace A153082.P11137488680554362698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 2) - 4

end

end A153082.P11137488680554362698

namespace A153082

/-- `A153052(n+2)-4` -/
def P11137488680554362698.Spec : Prop :=
  ∀ n, P11137488680554362698.a n = A153082 (n + 1)

end A153082

/-! ## A153082.P14999840210753085646

`A153238(n+2)-5`
-/

namespace A153082.P14999840210753085646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 2) - 5

end

end A153082.P14999840210753085646

namespace A153082

/-- `A153238(n+2)-5` -/
def P14999840210753085646.Spec : Prop :=
  ∀ n, P14999840210753085646.a n = A153082 (n + 1)

end A153082

/-! ## A153082.P17152846639754710263

`A053726(n+2)-7`
-/

namespace A153082.P17152846639754710263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 2) - 7

end

end A153082.P17152846639754710263

namespace A153082

/-- `A053726(n+2)-7` -/
def P17152846639754710263.Spec : Prop :=
  ∀ n, P17152846639754710263.a n = A153082 (n + 1)

end A153082

/-! ## A153082.P5521824282633719295

`A104275(n+3)-7`
-/

namespace A153082.P5521824282633719295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 3) - 7

end

end A153082.P5521824282633719295

namespace A153082

/-- `A104275(n+3)-7` -/
def P5521824282633719295.Spec : Prop :=
  ∀ n, P5521824282633719295.a n = A153082 (n + 1)

end A153082

/-! ## A153082.P4142411834879418819

`A153040(n+2)-9`
-/

namespace A153082.P4142411834879418819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 2) - 9

end

end A153082.P4142411834879418819

namespace A153082

/-- `A153040(n+2)-9` -/
def P4142411834879418819.Spec : Prop :=
  ∀ n, P4142411834879418819.a n = A153082 (n + 1)

end A153082

/-! ## A153082.P13921492130172806252

`∑[A196274(n+2)]-2`
-/

namespace A153082.P13921492130172806252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196274 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A153082.P13921492130172806252

namespace A153082

/-- `∑[A196274(n+2)]-2` -/
def P13921492130172806252.Spec : Prop :=
  ∀ n, P13921492130172806252.a n = A153082 (n + 1)

end A153082

/-! ## A153082.P2011261758293035122

`A155724(n+1)+A153039(n+2)-A163652(n+1)`
-/

namespace A153082.P2011261758293035122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155724 (n + 1) + (A153039 (n + 2) - A163652 (n + 1))

end

end A153082.P2011261758293035122

namespace A153082

/-- `A155724(n+1)+A153039(n+2)-A163652(n+1)` -/
def P2011261758293035122.Spec : Prop :=
  ∀ n, P2011261758293035122.a n = A153082 (n + 1)

end A153082

/-! ## A153082.P12139384901032563779

`A047845(n+3)-6`
-/

namespace A153082.P12139384901032563779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047845 (n + 3) - 6

end

end A153082.P12139384901032563779

namespace A153082

/-- `A047845(n+3)-6` -/
def P12139384901032563779.Spec : Prop :=
  ∀ n, P12139384901032563779.a n = A153082 (n + 1)

end A153082

/-! ## A153082.P7835468010311062134

`A153043(n+3)-8`
-/

namespace A153082.P7835468010311062134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153043 (n + 3) - 8

end

end A153082.P7835468010311062134

namespace A153082

/-- `A153043(n+3)-8` -/
def P7835468010311062134.Spec : Prop :=
  ∀ n, P7835468010311062134.a n = A153082 (n + 1)

end A153082

/-! ## A153082.P2114106825103109005

`eq[1, A088423(n+1)]`
-/

namespace A153082.P2114106825103109005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088423 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153082.P2114106825103109005

namespace A153082

/-- `eq[1, A088423(n+1)]` -/
def P2114106825103109005.Spec : Prop :=
  ∀ n, (P2114106825103109005.a n : ℤ) = A153082 (n + 1)

end A153082

/-! ## A153082.P12583686857327480474

`A023443(A153083(n+1))`
-/

namespace A153082.P12583686857327480474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A153083 (n + 1)).toNat

end

end A153082.P12583686857327480474

namespace A153082

/-- `A023443(A153083(n+1))` -/
def P12583686857327480474.Spec : Prop :=
  ∀ n, P12583686857327480474.a n = A153082 (n + 1)

end A153082

/-! ## A153082.P9354285438988827042

`eq[1, A088422(n+3)]`
-/

namespace A153082.P9354285438988827042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088422 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153082.P9354285438988827042

namespace A153082

/-- `eq[1, A088422(n+3)]` -/
def P9354285438988827042.Spec : Prop :=
  ∀ n, (P9354285438988827042.a n : ℤ) = A153082 (n + 1)

end A153082

/-!
# A153083: Numbers such that 2*n + 11 is not prime.

The programs for A153083, the canonical program `A153083.P10624664622328952784` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153083 has offset 1).

The definition of A153083 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153083.P11304633078443995543

`comp[A101448(n+1)]`
-/

namespace A153083.P11304633078443995543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101448 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153083.P11304633078443995543

namespace A153083

/-- `comp[A101448(n+1)]` -/
def P11304633078443995543.Spec : Prop :=
  ∀ n, (P11304633078443995543.a n : ℤ) = A153083 (n + 1)

end A153083

/-! ## A153083.P1049861783336512694

`A153082(n+1)+1`
-/

namespace A153083.P1049861783336512694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153082 (n + 1) + 1

end

end A153083.P1049861783336512694

namespace A153083

/-- `A153082(n+1)+1` -/
def P1049861783336512694.Spec : Prop :=
  ∀ n, P1049861783336512694.a n = A153083 (n + 1)

end A153083

/-! ## A153083.P15883441544966733924

`A241571(n+1)+2`
-/

namespace A153083.P15883441544966733924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241571 (n + 1) + 2

end

end A153083.P15883441544966733924

namespace A153083

/-- `A241571(n+1)+2` -/
def P15883441544966733924.Spec : Prop :=
  ∀ n, P15883441544966733924.a n = A153083 (n + 1)

end A153083

/-! ## A153083.P12790515131169410355

`comp[A153081(n+1)]+1`
-/

namespace A153083.P12790515131169410355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153081 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A153083.P12790515131169410355

namespace A153083

/-- `comp[A153081(n+1)]+1` -/
def P12790515131169410355.Spec : Prop :=
  ∀ n, (P12790515131169410355.a n : ℤ) = A153083 (n + 1)

end A153083

/-! ## A153083.P7051538306773709377

`comp[A089559(n+1)]+2`
-/

namespace A153083.P7051538306773709377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089559 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2

end

end A153083.P7051538306773709377

namespace A153083

/-- `comp[A089559(n+1)]+2` -/
def P7051538306773709377.Spec : Prop :=
  ∀ n, (P7051538306773709377.a n : ℤ) = A153083 (n + 1)

end A153083

/-! ## A153083.P12140849350933739639

`comp[A155722(n+1)-1]`
-/

namespace A153083.P12140849350933739639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153083.P12140849350933739639

namespace A153083

/-- `comp[A155722(n+1)-1]` -/
def P12140849350933739639.Spec : Prop :=
  ∀ n, (P12140849350933739639.a n : ℤ) = A153083 (n + 1)

end A153083

/-! ## A153083.P16722717185696087268

`comp[A105760(n+1)-2]`
-/

namespace A153083.P16722717185696087268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153083.P16722717185696087268

namespace A153083

/-- `comp[A105760(n+1)-2]` -/
def P16722717185696087268.Spec : Prop :=
  ∀ n, (P16722717185696087268.a n : ℤ) = A153083 (n + 1)

end A153083

/-! ## A153083.P4787065711548726665

`comp[A161720(n+3)-2]`
-/

namespace A153083.P4787065711548726665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 3) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153083.P4787065711548726665

namespace A153083

/-- `comp[A161720(n+3)-2]` -/
def P4787065711548726665.Spec : Prop :=
  ∀ n, (P4787065711548726665.a n : ℤ) = A153083 (n + 1)

end A153083

/-! ## A153083.P15807316191223359069

`A186193(n+1)/2-5`
-/

namespace A153083.P15807316191223359069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186193 (n + 1) : ℚ) / 2 - 5

end

end A153083.P15807316191223359069

namespace A153083

/-- `A186193(n+1)/2-5` -/
def P15807316191223359069.Spec : Prop :=
  ∀ n, P15807316191223359069.a n = (A153083 (n + 1) : ℚ)

end A153083

/-! ## A153083.P13441012312580900223

`comp[n-A305900(2*n+1)]`
-/

namespace A153083.P13441012312580900223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A305900 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153083.P13441012312580900223

namespace A153083

/-- `comp[n-A305900(2*n+1)]` -/
def P13441012312580900223.Spec : Prop :=
  ∀ n, (P13441012312580900223.a n : ℤ) = A153083 (n + 1)

end A153083

/-! ## A153083.P10624664622328952784

`A396571(n+1)-A153045(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A153083

/-- `A396571(n+1)-A153045(n+1)` -/
def P10624664622328952784.Spec : Prop :=
  ∀ n, P10624664622328952784.a n = A153083 (n + 1)

theorem P10624664622328952784.correct : P10624664622328952784.Spec := by
  intro n
  simp only [A153083, Nat.add_sub_cancel]

end A153083

/-! ## A153083.P12632633853116017223

`A155723(n+2)-1`
-/

namespace A153083.P12632633853116017223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155723 (n + 2) - 1

end

end A153083.P12632633853116017223

namespace A153083

/-- `A155723(n+2)-1` -/
def P12632633853116017223.Spec : Prop :=
  ∀ n, P12632633853116017223.a n = A153083 (n + 1)

end A153083

/-! ## A153083.P7550495773030730947

`A153053(n+2)-2`
-/

namespace A153083.P7550495773030730947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153053 (n + 2) - 2

end

end A153083.P7550495773030730947

namespace A153083

/-- `A153053(n+2)-2` -/
def P7550495773030730947.Spec : Prop :=
  ∀ n, P7550495773030730947.a n = A153083 (n + 1)

end A153083

/-! ## A153083.P2958294586297313662

`A153052(n+2)-3`
-/

namespace A153083.P2958294586297313662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153052 (n + 2) - 3

end

end A153083.P2958294586297313662

namespace A153083

/-- `A153052(n+2)-3` -/
def P2958294586297313662.Spec : Prop :=
  ∀ n, P2958294586297313662.a n = A153083 (n + 1)

end A153083

/-! ## A153083.P2587417254024309850

`A153238(n+2)-4`
-/

namespace A153083.P2587417254024309850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153238 (n + 2) - 4

end

end A153083.P2587417254024309850

namespace A153083

/-- `A153238(n+2)-4` -/
def P2587417254024309850.Spec : Prop :=
  ∀ n, P2587417254024309850.a n = A153083 (n + 1)

end A153083

/-! ## A153083.P6699044778754817015

`A053726(n+2)-6`
-/

namespace A153083.P6699044778754817015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053726 (n + 2) - 6

end

end A153083.P6699044778754817015

namespace A153083

/-- `A053726(n+2)-6` -/
def P6699044778754817015.Spec : Prop :=
  ∀ n, P6699044778754817015.a n = A153083 (n + 1)

end A153083

/-! ## A153083.P666179129476469608

`A104275(n+3)-6`
-/

namespace A153083.P666179129476469608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104275 (n + 3) - 6

end

end A153083.P666179129476469608

namespace A153083

/-- `A104275(n+3)-6` -/
def P666179129476469608.Spec : Prop :=
  ∀ n, P666179129476469608.a n = A153083 (n + 1)

end A153083

/-! ## A153083.P11393061261278960943

`A153040(n+2)-8`
-/

namespace A153083.P11393061261278960943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153040 (n + 2) - 8

end

end A153083.P11393061261278960943

namespace A153083

/-- `A153040(n+2)-8` -/
def P11393061261278960943.Spec : Prop :=
  ∀ n, P11393061261278960943.a n = A153083 (n + 1)

end A153083

/-! ## A153083.P12953688077816577719

`A153039(n+2)-9`
-/

namespace A153083.P12953688077816577719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153039 (n + 2) - 9

end

end A153083.P12953688077816577719

namespace A153083

/-- `A153039(n+2)-9` -/
def P12953688077816577719.Spec : Prop :=
  ∀ n, P12953688077816577719.a n = A153083 (n + 1)

end A153083

/-! ## A153083.P15543706744085504828

`∑[A196274(n+2)]-1`
-/

namespace A153083.P15543706744085504828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196274 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A153083.P15543706744085504828

namespace A153083

/-- `∑[A196274(n+2)]-1` -/
def P15543706744085504828.Spec : Prop :=
  ∀ n, P15543706744085504828.a n = A153083 (n + 1)

end A153083

/-!
# A153085: Numbers k such that 4*k + 5 is not prime.

The programs for A153085, the canonical program `A153085.P13243709957649807552` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153085 has offset 1).

The definition of A153085 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153085.P15038995484053756781

`comp[A111215(n+1)]`
-/

namespace A153085.P15038995484053756781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153085.P15038995484053756781

namespace A153085

/-- `comp[A111215(n+1)]` -/
def P15038995484053756781.Spec : Prop :=
  ∀ n, (P15038995484053756781.a n : ℤ) = A153085 (n + 1)

end A153085

/-! ## A153085.P2820152652429084909

`A153464(n+1)+1`
-/

namespace A153085.P2820152652429084909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153464 (n + 1) + 1

end

end A153085.P2820152652429084909

namespace A153085

/-- `A153464(n+1)+1` -/
def P2820152652429084909.Spec : Prop :=
  ∀ n, P2820152652429084909.a n = A153085 (n + 1)

end A153085

/-! ## A153085.P6180048999485844642

`comp[A111199(n+1)]+1`
-/

namespace A153085.P6180048999485844642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A153085.P6180048999485844642

namespace A153085

/-- `comp[A111199(n+1)]+1` -/
def P6180048999485844642.Spec : Prop :=
  ∀ n, (P6180048999485844642.a n : ℤ) = A153085 (n + 1)

end A153085

/-! ## A153085.P219096829901784475

`comp[A005098(n+1)-1]`
-/

namespace A153085.P219096829901784475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153085.P219096829901784475

namespace A153085

/-- `comp[A005098(n+1)-1]` -/
def P219096829901784475.Spec : Prop :=
  ∀ n, (P219096829901784475.a n : ℤ) = A153085 (n + 1)

end A153085

/-! ## A153085.P13243709957649807552

`eq[0, A156707(2*(n+1))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A153085

/-- `eq[0, A156707(2*(n+1))]` -/
def P13243709957649807552.Spec : Prop :=
  ∀ n, (P13243709957649807552.a n : ℤ) = A153085 (n + 1)

theorem P13243709957649807552.correct : P13243709957649807552.Spec := by
  intro n
  simp only [A153085, Nat.add_sub_cancel]

end A153085

/-! ## A153085.P16838647474024584257

`lt[1, A067760(2*n+1)]`
-/

namespace A153085.P16838647474024584257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067760 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153085.P16838647474024584257

namespace A153085

/-- `lt[1, A067760(2*n+1)]` -/
def P16838647474024584257.Spec : Prop :=
  ∀ n, (P16838647474024584257.a n : ℤ) = A153085 (n + 1)

end A153085

/-! ## A153085.P12301645716023895393

`lt[A156707(2*n+2), 1]`
-/

namespace A153085.P12301645716023895393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156707 (2 * n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153085.P12301645716023895393

namespace A153085

/-- `lt[A156707(2*n+2), 1]` -/
def P12301645716023895393.Spec : Prop :=
  ∀ n, (P12301645716023895393.a n : ℤ) = A153085 (n + 1)

end A153085

/-! ## A153085.P2600135405191770675

`A045751(n+2)-1`
-/

namespace A153085.P2600135405191770675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045751 (n + 2) - 1

end

end A153085.P2600135405191770675

namespace A153085

/-- `A045751(n+2)-1` -/
def P2600135405191770675.Spec : Prop :=
  ∀ n, P2600135405191770675.a n = A153085 (n + 1)

end A153085

/-! ## A153085.P5728312328963983382

`eq[1, A260821(n+1)]`
-/

namespace A153085.P5728312328963983382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260821 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153085.P5728312328963983382

namespace A153085

/-- `eq[1, A260821(n+1)]` -/
def P5728312328963983382.Spec : Prop :=
  ∀ n, (P5728312328963983382.a n : ℤ) = A153085 (n + 1)

end A153085

/-! ## A153085.P18213348378394813869

`lt[1, A037039(n+1)]`
-/

namespace A153085.P18213348378394813869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037039 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153085.P18213348378394813869

namespace A153085

/-- `lt[1, A037039(n+1)]` -/
def P18213348378394813869.Spec : Prop :=
  ∀ n, (P18213348378394813869.a n : ℤ) = A153085 (n + 1)

end A153085

/-! ## A153085.P5925697925720703752

`lt[1, A345468(n+1)]`
-/

namespace A153085.P5925697925720703752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345468 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153085.P5925697925720703752

namespace A153085

/-- `lt[1, A345468(n+1)]` -/
def P5925697925720703752.Spec : Prop :=
  ∀ n, (P5925697925720703752.a n : ℤ) = A153085 (n + 1)

end A153085

/-! ## A153085.P6113619951092366429

`eq[2, A218831(2*(n+1))]`
-/

namespace A153085.P6113619951092366429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218831 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153085.P6113619951092366429

namespace A153085

/-- `eq[2, A218831(2*(n+1))]` -/
def P6113619951092366429.Spec : Prop :=
  ∀ n, (P6113619951092366429.a n : ℤ) = A153085 (n + 1)

end A153085

/-! ## A153085.P7151141480760658734

`lt[2, A089367(2*(n+1))]`
-/

namespace A153085.P7151141480760658734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089367 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153085.P7151141480760658734

namespace A153085

/-- `lt[2, A089367(2*(n+1))]` -/
def P7151141480760658734.Spec : Prop :=
  ∀ n, (P7151141480760658734.a n : ℤ) = A153085 (n + 1)

end A153085

/-! ## A153085.P47254331662435116

`A023443(A045751(n+2))`
-/

namespace A153085.P47254331662435116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A045751 (n + 2)).toNat

end

end A153085.P47254331662435116

namespace A153085

/-- `A023443(A045751(n+2))` -/
def P47254331662435116.Spec : Prop :=
  ∀ n, P47254331662435116.a n = A153085 (n + 1)

end A153085

/-! ## A153085.P12933538826936655735

`lt[1, A108234(2*(n+1))]`
-/

namespace A153085.P12933538826936655735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108234 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153085.P12933538826936655735

namespace A153085

/-- `lt[1, A108234(2*(n+1))]` -/
def P12933538826936655735.Spec : Prop :=
  ∀ n, (P12933538826936655735.a n : ℤ) = A153085 (n + 1)

end A153085

/-! ## A153085.P5674859088364002224

`eq[0, A056562(2*n+1)]`
-/

namespace A153085.P5674859088364002224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056562 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153085.P5674859088364002224

namespace A153085

/-- `eq[0, A056562(2*n+1)]` -/
def P5674859088364002224.Spec : Prop :=
  ∀ n, (P5674859088364002224.a n : ℤ) = A153085 (n + 1)

end A153085

/-! ## A153085.P875697882302865021

`eq[1, A088420(2*n+1)]`
-/

namespace A153085.P875697882302865021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088420 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153085.P875697882302865021

namespace A153085

/-- `eq[1, A088420(2*n+1)]` -/
def P875697882302865021.Spec : Prop :=
  ∀ n, (P875697882302865021.a n : ℤ) = A153085 (n + 1)

end A153085

/-! ## A153085.P16023590324640187037

`eq[1, A282026(2*n+1)]`
-/

namespace A153085.P16023590324640187037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282026 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153085.P16023590324640187037

namespace A153085

/-- `eq[1, A282026(2*n+1)]` -/
def P16023590324640187037.Spec : Prop :=
  ∀ n, (P16023590324640187037.a n : ℤ) = A153085 (n + 1)

end A153085

/-! ## A153085.P2493987275133851329

`eq[1, A282194(2*n+1)]`
-/

namespace A153085.P2493987275133851329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282194 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153085.P2493987275133851329

namespace A153085

/-- `eq[1, A282194(2*n+1)]` -/
def P2493987275133851329.Spec : Prop :=
  ∀ n, (P2493987275133851329.a n : ℤ) = A153085 (n + 1)

end A153085

/-! ## A153085.P17047973854129733843

`lt[1, A016014(2*(n+1))]`
-/

namespace A153085.P17047973854129733843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153085.P17047973854129733843

namespace A153085

/-- `lt[1, A016014(2*(n+1))]` -/
def P17047973854129733843.Spec : Prop :=
  ∀ n, (P17047973854129733843.a n : ℤ) = A153085 (n + 1)

end A153085

/-!
# A153086: Numbers n such that 4*n+7 is not prime.

The programs for A153086, the canonical program `A153086.P1539337215457405017` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153086 has offset 1).

The definition of A153086 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A153086.P2952998384234397916

`comp[A089986(n+1)]`
-/

namespace A153086.P2952998384234397916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153086.P2952998384234397916

namespace A153086

/-- `comp[A089986(n+1)]` -/
def P2952998384234397916.Spec : Prop :=
  ∀ n, (P2952998384234397916.a n : ℤ) = A153086 (n + 1)

end A153086

/-! ## A153086.P1539337215457405017

`A095277(n+1)-1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A153086

/-- `A095277(n+1)-1` -/
def P1539337215457405017.Spec : Prop :=
  ∀ n, P1539337215457405017.a n = A153086 (n + 1)

theorem P1539337215457405017.correct : P1539337215457405017.Spec := by
  intro n
  simp only [A153086, Nat.add_sub_cancel]

end A153086

/-! ## A153086.P16496069937919622374

`A045752(n+1)-2`
-/

namespace A153086.P16496069937919622374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045752 (n + 1) - 2

end

end A153086.P16496069937919622374

namespace A153086

/-- `A045752(n+1)-2` -/
def P16496069937919622374.Spec : Prop :=
  ∀ n, P16496069937919622374.a n = A153086 (n + 1)

end A153086

/-! ## A153086.P16984468388499134888

`comp[A095278(n+1)-1]`
-/

namespace A153086.P16984468388499134888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A153086.P16984468388499134888

namespace A153086

/-- `comp[A095278(n+1)-1]` -/
def P16984468388499134888.Spec : Prop :=
  ∀ n, (P16984468388499134888.a n : ℤ) = A153086 (n + 1)

end A153086

/-! ## A153086.P14664640618550853176

`lt[1, A001222(4*n+7)]`
-/

namespace A153086.P14664640618550853176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153086.P14664640618550853176

namespace A153086

/-- `lt[1, A001222(4*n+7)]` -/
def P14664640618550853176.Spec : Prop :=
  ∀ n, (P14664640618550853176.a n : ℤ) = A153086 (n + 1)

end A153086

/-! ## A153086.P17530765040189864288

`lt[2, A000005(4*n+7)]`
-/

namespace A153086.P17530765040189864288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153086.P17530765040189864288

namespace A153086

/-- `lt[2, A000005(4*n+7)]` -/
def P17530765040189864288.Spec : Prop :=
  ∀ n, (P17530765040189864288.a n : ℤ) = A153086 (n + 1)

end A153086

/-! ## A153086.P6750878177449300928

`lt[3, A136019(n+1)]`
-/

namespace A153086.P6750878177449300928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136019 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153086.P6750878177449300928

namespace A153086

/-- `lt[3, A136019(n+1)]` -/
def P6750878177449300928.Spec : Prop :=
  ∀ n, (P6750878177449300928.a n : ℤ) = A153086 (n + 1)

end A153086

/-! ## A153086.P4816011418638929195

`eq[0, A080909(n+1)]`
-/

namespace A153086.P4816011418638929195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080909 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153086.P4816011418638929195

namespace A153086

/-- `eq[0, A080909(n+1)]` -/
def P4816011418638929195.Spec : Prop :=
  ∀ n, (P4816011418638929195.a n : ℤ) = A153086 (n + 1)

end A153086

/-! ## A153086.P10735425476260682758

`lt[1, A078703(n+2)]`
-/

namespace A153086.P10735425476260682758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078703 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153086.P10735425476260682758

namespace A153086

/-- `lt[1, A078703(n+2)]` -/
def P10735425476260682758.Spec : Prop :=
  ∀ n, (P10735425476260682758.a n : ℤ) = A153086 (n + 1)

end A153086

/-! ## A153086.P11704477421809646330

`lt[1, A364082(n+2)]`
-/

namespace A153086.P11704477421809646330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364082 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153086.P11704477421809646330

namespace A153086

/-- `lt[1, A364082(n+2)]` -/
def P11704477421809646330.Spec : Prop :=
  ∀ n, (P11704477421809646330.a n : ℤ) = A153086 (n + 1)

end A153086

/-! ## A153086.P5073133223650530529

`lt[1, A245203(n+1)+1]`
-/

namespace A153086.P5073133223650530529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153086.P5073133223650530529

namespace A153086

/-- `lt[1, A245203(n+1)+1]` -/
def P5073133223650530529.Spec : Prop :=
  ∀ n, (P5073133223650530529.a n : ℤ) = A153086 (n + 1)

end A153086

/-! ## A153086.P5211718106339778510

`lt[A089367(2*n+1), 1]-1`
-/

namespace A153086.P5211718106339778510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089367 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ) - 1

end

end A153086.P5211718106339778510

namespace A153086

/-- `lt[A089367(2*n+1), 1]-1` -/
def P5211718106339778510.Spec : Prop :=
  ∀ n, P5211718106339778510.a n = A153086 (n + 1)

end A153086

/-! ## A153086.P15844790858076387275

`A023443(A095277(n+1))`
-/

namespace A153086.P15844790858076387275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A095277 (n + 1)).toNat

end

end A153086.P15844790858076387275

namespace A153086

/-- `A023443(A095277(n+1))` -/
def P15844790858076387275.Spec : Prop :=
  ∀ n, P15844790858076387275.a n = A153086 (n + 1)

end A153086

/-! ## A153086.P4466777066626293956

`A023444(A045752(n+1))`
-/

namespace A153086.P4466777066626293956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A045752 (n + 1)).toNat

end

end A153086.P4466777066626293956

namespace A153086

/-- `A023444(A045752(n+1))` -/
def P4466777066626293956.Spec : Prop :=
  ∀ n, P4466777066626293956.a n = A153086 (n + 1)

end A153086

/-! ## A153086.P11838455443650141704

`eq[1, A088423(2*(n+1))]+2`
-/

namespace A153086.P11838455443650141704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088423 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A153086.P11838455443650141704

namespace A153086

/-- `eq[1, A088423(2*(n+1))]+2` -/
def P11838455443650141704.Spec : Prop :=
  ∀ n, (P11838455443650141704.a n : ℤ) = A153086 (n + 1)

end A153086

/-! ## A153086.P15585924024950389440

`eq[1, A088421(2*n+1)]`
-/

namespace A153086.P15585924024950389440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088421 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A153086.P15585924024950389440

namespace A153086

/-- `eq[1, A088421(2*n+1)]` -/
def P15585924024950389440.Spec : Prop :=
  ∀ n, (P15585924024950389440.a n : ℤ) = A153086 (n + 1)

end A153086

/-! ## A153086.P12652125406740097533

`eq[1, A282026(2*n)]-1`
-/

namespace A153086.P12652125406740097533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282026 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A153086.P12652125406740097533

namespace A153086

/-- `eq[1, A282026(2*n)]-1` -/
def P12652125406740097533.Spec : Prop :=
  ∀ n, P12652125406740097533.a n = A153086 (n + 1)

end A153086

/-! ## A153086.P17853819065634180159

`eq[1, A282194(2*n)]-1`
-/

namespace A153086.P17853819065634180159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282194 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - 1

end

end A153086.P17853819065634180159

namespace A153086

/-- `eq[1, A282194(2*n)]-1` -/
def P17853819065634180159.Spec : Prop :=
  ∀ n, P17853819065634180159.a n = A153086 (n + 1)

end A153086

/-! ## A153086.P4588132399038087661

`lt[1, A046067(n+2)]`
-/

namespace A153086.P4588132399038087661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046067 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A153086.P4588132399038087661

namespace A153086

/-- `lt[1, A046067(n+2)]` -/
def P4588132399038087661.Spec : Prop :=
  ∀ n, (P4588132399038087661.a n : ℤ) = A153086 (n + 1)

end A153086

/-! ## A153086.P1666923768426782487

`lt[1, A016014(2*n+1)]-1`
-/

namespace A153086.P1666923768426782487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016014 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A153086.P1666923768426782487

namespace A153086

/-- `lt[1, A016014(2*n+1)]-1` -/
def P1666923768426782487.Spec : Prop :=
  ∀ n, P1666923768426782487.a n = A153086 (n + 1)

end A153086

/-!
# A153087: a(n) = A051717(3n) + A051717(3n+1) + A051717(3n+2).

The programs for A153087, the canonical program `A153087.P3812379538921097872` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153087 has offset 0).

The definition of A153087 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051717, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A153087.P3812379538921097872

`A051717(3*n)+A051717(3*n+1)+A051717(3*n+2)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A153087

/-- `A051717(3*n)+A051717(3*n+1)+A051717(3*n+2)` -/
def P3812379538921097872.Spec : Prop :=
  ∀ n, P3812379538921097872.a n = A153087 n

theorem P3812379538921097872.correct : P3812379538921097872.Spec := by
  intro n
  simp only [A153087]

end A153087

/-!
# A153088: Numbers k such that 5*k - 1 is not prime.

The programs for A153088, the canonical program `A153088.P14487494430752831304` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A153088 has offset 1).

The definition of A153088 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A153343, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A153088.P14487494430752831304

`A153343(n+1)+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A153088

/-- `A153343(n+1)+1` -/
def P14487494430752831304.Spec : Prop :=
  ∀ n, P14487494430752831304.a n = A153088 (n + 1)

theorem P14487494430752831304.correct : P14487494430752831304.Spec := by
  intro n
  simp only [A153088, Nat.add_sub_cancel]

end A153088

/-! ## A153088.P8789241078025575769

`comp[A024897(n+1)]+1`
-/

namespace A153088.P8789241078025575769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A153088.P8789241078025575769

namespace A153088

/-- `comp[A024897(n+1)]+1` -/
def P8789241078025575769.Spec : Prop :=
  ∀ n, (P8789241078025575769.a n : ℤ) = A153088 (n + 1)

end A153088

/-! ## A153088.P16824434358336321124

`eq[0, A339579(5*(n+1))]+1`
-/

namespace A153088.P16824434358336321124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (5 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A153088.P16824434358336321124

namespace A153088

/-- `eq[0, A339579(5*(n+1))]+1` -/
def P16824434358336321124.Spec : Prop :=
  ∀ n, (P16824434358336321124.a n : ℤ) = A153088 (n + 1)

end A153088

/-! ## A153088.P16761409729311736034

`lt[2, A000005(5*n+4)]+1`
-/

namespace A153088.P16761409729311736034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A153088.P16761409729311736034

namespace A153088

/-- `lt[2, A000005(5*n+4)]+1` -/
def P16761409729311736034.Spec : Prop :=
  ∀ n, (P16761409729311736034.a n : ℤ) = A153088 (n + 1)

end A153088

/-! ## A153088.P10864703081871324050

`lt[1, A001222(5*(n+1)-1)]+1`
-/

namespace A153088.P10864703081871324050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * (n + 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A153088.P10864703081871324050

namespace A153088

/-- `lt[1, A001222(5*(n+1)-1)]+1` -/
def P10864703081871324050.Spec : Prop :=
  ∀ n, (P10864703081871324050.a n : ℤ) = A153088 (n + 1)

end A153088

/-! ## A153088.P9386211509547624725

`lt[2, A001222(5*n+4)+1]+1`
-/

namespace A153088.P9386211509547624725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (5 * n + 4) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A153088.P9386211509547624725

namespace A153088

/-- `lt[2, A001222(5*n+4)+1]+1` -/
def P9386211509547624725.Spec : Prop :=
  ∀ n, (P9386211509547624725.a n : ℤ) = A153088 (n + 1)

end A153088

/-! ## A153088.P16152787739195726522

`lt[1, ∑{e}[a(n-1)-5, #]]` with `a(0)=1`
-/

namespace A153088.P16152787739195726522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) - 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153088.P16152787739195726522

namespace A153088

/-- `lt[1, ∑{e}[a(n-1)-5, #]]` -/
def P16152787739195726522.Spec : Prop :=
  ∀ n, (P16152787739195726522.a n : ℤ) = A153088 (n + 1)

end A153088

/-! ## A153088.P401573735209921928

`lt[1, ∑{e}[4*n-1+n, #]]`
-/

namespace A153088.P401573735209921928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1 + (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A153088.P401573735209921928

namespace A153088

/-- `lt[1, ∑{e}[4*n-1+n, #]]` -/
def P401573735209921928.Spec : Prop :=
  ∀ n, (P401573735209921928.a n : ℤ) = A153088 (n + 1)

end A153088

/-! ## A153088.P8253530594006298244

`record[(n+1)%A018783(5*n+4)]`
-/

namespace A153088.P8253530594006298244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A018783 (5 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A153088.P8253530594006298244

namespace A153088

/-- `record[(n+1)%A018783(5*n+4)]` -/
def P8253530594006298244.Spec : Prop :=
  ∀ n, P8253530594006298244.a n = A153088 (n + 1)

end A153088

/-! ## A153088.P17025425962022170576

`lt[A014963(A016885(abs(1-n))+1), n+2]`
-/

namespace A153088.P17025425962022170576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016885 |1 - (n : ℤ)|.toNat + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A153088.P17025425962022170576

namespace A153088

/-- `lt[A014963(A016885(abs(1-n))+1), n+2]` -/
def P17025425962022170576.Spec : Prop :=
  ∀ n, (P17025425962022170576.a n : ℤ) = A153088 (n + 1)

end A153088

/-! ## A153088.P9771932482375949229

`lt[A014963(A016885(n)+1), A001358(n+1)]+1`
-/

namespace A153088.P9771932482375949229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016885 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A153088.P9771932482375949229

namespace A153088

/-- `lt[A014963(A016885(n)+1), A001358(n+1)]+1` -/
def P9771932482375949229.Spec : Prop :=
  ∀ n, (P9771932482375949229.a n : ℤ) = A153088 (n + 1)

end A153088

/-!
# A153095: Least m(n) such that k(n)*m(n)^n*(m(n)^n-1)+j is prime with j= -1 or 1 or both and least possible k(n) with 1

The programs for A153095, there is no canonical definition to state claims against.
-/

/-! ## A153095.P8964167120840643473

`A153096(3*n+2)`
-/

namespace A153095.P8964167120840643473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153096 (3 * n + 2)

end

end A153095.P8964167120840643473

/-! ## A153095.P3481999002295520547

`abs(A153096(Δ[∑[n]+n²]))`
-/

namespace A153095.P3481999002295520547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A153096 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat|

end

end A153095.P3481999002295520547

/-! ## A153095.P11754862008125395636

`dr(A153096(A016789(n)))`
-/

namespace A153095.P11754862008125395636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A153096 (A016789 n).toNat)

end

end A153095.P11754862008125395636

/-! ## A153095.P11913019027674382613

`A007318(∑[n])*A153096(A016789(n))`
-/

namespace A153095.P11913019027674382613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A153096 (A016789 n).toNat

end

end A153095.P11913019027674382613

/-! ## A153095.P6497164331693638866

`A153096(A016789(n))/A007318(C(n, 2))`
-/

namespace A153095.P6497164331693638866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153096 (A016789 n).toNat : ℚ) / (A007318 (Nat.choose n 2) : ℚ)

end

end A153095.P6497164331693638866

/-!
# A153096: Table T(n,3) read by rows: T(n,1)*T(n,2)^n*(T(n,2)^n-1)+T(n,3) is the smallest possible prime with 1

The programs for A153096, there is no canonical definition to state claims against.
-/

/-! ## A153096.P11832887895026033314

`A305936(A113536(n+5))+A101676(2*(n+2))`
-/

namespace A153096.P11832887895026033314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305936 (A113536 (n + 5)).toNat + A101676 (2 * (n + 2))

end

end A153096.P11832887895026033314

/-!
# A153097: Decimal expansion of log_21 (3).

The programs for A153097, there is no canonical definition to state claims against.
-/

/-! ## A153097.P7079787313395522774

`9-A153632(n)`
-/

namespace A153097.P7079787313395522774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153632 n

end

end A153097.P7079787313395522774

