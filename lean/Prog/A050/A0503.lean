import SequenceMachineLib
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
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C030
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
# A050301: Matrix 7th power of partition triangle A008284.

The programs for A050301, there is no canonical definition to state claims against.
-/

/-! ## A050301.P9748188712136779092

`A000416((A142048(n)+1)/2)`
-/

namespace A050301.P9748188712136779092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000416 (SequenceMachineLib.roundAway ((A142048 n + 1 : ℚ) / 2)).toNat

end

end A050301.P9748188712136779092

/-! ## A050301.P4016101209402436170

`A000416(A142048(n)-A025581(n))`
-/

namespace A050301.P4016101209402436170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000416 (A142048 n - A025581 n).toNat

end

end A050301.P4016101209402436170

/-! ## A050301.P1645191675628491639

`A000416(A142048(n)-A108887(n))`
-/

namespace A050301.P1645191675628491639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000416 (A142048 n - A108887 n).toNat

end

end A050301.P1645191675628491639

/-!
# A050302: Matrix 8th power of partition triangle A008284.

The programs for A050302, there is no canonical definition to state claims against.
-/

/-! ## A050302.P10539783217097123167

`A047368(2^A142048(n))`
-/

namespace A050302.P10539783217097123167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047368 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A142048 n : ℤ))).toNat

end

end A050302.P10539783217097123167

/-! ## A050302.P10373842756717647637

`A000427(A376662(n)+A268820(n))`
-/

namespace A050302.P10373842756717647637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000427 (A376662 n + A268820 n).toNat

end

end A050302.P10373842756717647637

/-! ## A050302.P16474400159425240384

`A083597(A025581(n)^A056940(n))`
-/

namespace A050302.P16474400159425240384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083597 (SequenceMachineLib.roundAway ((A025581 n : ℚ) ^ (A056940 n : ℤ))).toNat

end

end A050302.P16474400159425240384

/-!
# A050303: Matrix 9th power of partition triangle A008284.

The programs for A050303, there is no canonical definition to state claims against.
-/

/-! ## A050303.P3190477099756766253

`A073188(19^A108887(n))`
-/

namespace A050303.P3190477099756766253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (SequenceMachineLib.roundAway ((19 : ℚ) ^ (A108887 n : ℤ))).toNat

end

end A050303.P3190477099756766253

/-! ## A050303.P3729364493545030976

`A073188(19^A350548(n))`
-/

namespace A050303.P3729364493545030976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (SequenceMachineLib.roundAway ((19 : ℚ) ^ (A350548 n : ℤ))).toNat

end

end A050303.P3729364493545030976

/-! ## A050303.P12397977180152060307

`A024209(A249821(n+1)%A128394(2*n+1))`
-/

namespace A050303.P12397977180152060307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024209 (Int.tmod (A249821 (n + 1)) (A128394 (2 * n + 1))).toNat

end

end A050303.P12397977180152060307

/-!
# A050304: Matrix 10th power of partition triangle A008284.

The programs for A050304, there is no canonical definition to state claims against.
-/

/-! ## A050304.P12946111934249455043

`A024210(A052313(n)^A051724(n))`
-/

namespace A050304.P12946111934249455043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024210 (SequenceMachineLib.roundAway ((A052313 n : ℚ) ^ (A051724 n : ℤ))).toNat

end

end A050304.P12946111934249455043

/-! ## A050304.P6071572195668489920

`A024210(A105438(n)^A051724(n))`
-/

namespace A050304.P6071572195668489920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024210 (SequenceMachineLib.roundAway ((A105438 n : ℚ) ^ (A051724 n : ℤ))).toNat

end

end A050304.P6071572195668489920

/-! ## A050304.P4805982802833776921

`A024210(A004736(n+1)^A051724(n))`
-/

namespace A050304.P4805982802833776921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024210 (SequenceMachineLib.roundAway ((A004736 (n + 1) : ℚ) ^ (A051724 n : ℤ))).toNat

end

end A050304.P4805982802833776921

/-!
# A050314: Triangle: a(n,k) = number of partitions of n whose xor-sum is k.

The programs for A050314, there is no canonical definition to state claims against.
-/

/-! ## A050314.P11832889400422649215

`A055640(A138245(n+1)*A147309(n))`
-/

namespace A050314.P11832889400422649215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 (A138245 (n + 1) * A147309 n).toNat

end

end A050314.P11832889400422649215

/-! ## A050314.P8141653109261299397

`A118458(A153585(n)+A128890(n))`
-/

namespace A050314.P8141653109261299397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118458 (A153585 n + A128890 n).toNat

end

end A050314.P8141653109261299397

/-! ## A050314.P1573508401096556059

`A069010(A156792(n)*A242653(n))`
-/

namespace A050314.P1573508401096556059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A156792 n * A242653 n).toNat

end

end A050314.P1573508401096556059

/-! ## A050314.P5322420956701437658

`A069010(A242474(n+1)*A282252(n))`
-/

namespace A050314.P5322420956701437658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A242474 (n + 1) * A282252 n).toNat

end

end A050314.P5322420956701437658

/-! ## A050314.P7804583080255019451

`A176725(A323898(n+2)*A357136(n))`
-/

namespace A050314.P7804583080255019451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176725 (A323898 (n + 2) * A357136 n).toNat

end

end A050314.P7804583080255019451

/-!
# A050315: Main diagonal of A050314.

The programs for A050315, the canonical program `A050315.P12571342608120643020` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050315 has offset 0).

The definition of A050315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050315.P9779618519270750145

`A000110(A000120(n))`
-/

namespace A050315.P9779618519270750145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A000120 n).toNat

end

end A050315.P9779618519270750145

namespace A050315

/-- `A000110(A000120(n))` -/
def P9779618519270750145.Spec : Prop :=
  ∀ n, P9779618519270750145.a n = A050315 n

end A050315

/-! ## A050315.P14725749914939444943

`A000110(∑[1-val(abs(1-n)+1, 2)])`
-/

namespace A050315.P14725749914939444943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050315.P14725749914939444943

namespace A050315

/-- `A000110(∑[1-val(abs(1-n)+1, 2)])` -/
def P14725749914939444943.Spec : Prop :=
  ∀ n, P14725749914939444943.a n = A050315 n

end A050315

/-! ## A050315.P10280819410757551446

`A000110(n-(∑[val(n+1, 2)]-val(n+1, 2)))`
-/

namespace A050315.P10280819410757551446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 ((n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (SequenceMachineLib.valuation (n + 1) 2 : ℤ))).toNat

end

end A050315.P10280819410757551446

namespace A050315

/-- `A000110(n-(∑[val(n+1, 2)]-val(n+1, 2)))` -/
def P10280819410757551446.Spec : Prop :=
  ∀ n, P10280819410757551446.a n = A050315 n

end A050315

/-! ## A050315.P6115266015429393300

`A104725(A001316(n))`
-/

namespace A050315.P6115266015429393300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104725 (A001316 n).toNat

end

end A050315.P6115266015429393300

namespace A050315

/-- `A104725(A001316(n))` -/
def P6115266015429393300.Spec : Prop :=
  ∀ n, P6115266015429393300.a n = A050315 n

end A050315

/-! ## A050315.P12571342608120643020

`A325095(A088512(n))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A050315

/-- `A325095(A088512(n))` -/
def P12571342608120643020.Spec : Prop :=
  ∀ n, P12571342608120643020.a n = A050315 n

theorem P12571342608120643020.correct : P12571342608120643020.Spec := by
  intro n
  simp only [A050315]

end A050315

/-! ## A050315.P10378942904496579064

`A000110(val(A001316(n), 2))`
-/

namespace A050315.P10378942904496579064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (SequenceMachineLib.valuation (A001316 n).toNat 2)

end

end A050315.P10378942904496579064

namespace A050315

/-- `A000110(val(A001316(n), 2))` -/
def P10378942904496579064.Spec : Prop :=
  ∀ n, P10378942904496579064.a n = A050315 n

end A050315

/-! ## A050315.P18073952983870038738

`A000110(n-A011371(n))`
-/

namespace A050315.P18073952983870038738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 ((n : ℤ) - A011371 n).toNat

end

end A050315.P18073952983870038738

namespace A050315

/-- `A000110(n-A011371(n))` -/
def P18073952983870038738.Spec : Prop :=
  ∀ n, P18073952983870038738.a n = A050315 n

end A050315

/-! ## A050315.P5915045356115896544

`A287214(2*A000120(n)²)`
-/

namespace A050315.P5915045356115896544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (2 * A000120 n ^ 2).toNat

end

end A050315.P5915045356115896544

namespace A050315

/-- `A287214(2*A000120(n)²)` -/
def P5915045356115896544.Spec : Prop :=
  ∀ n, P5915045356115896544.a n = A050315 n

end A050315

/-! ## A050315.P7304648004547578312

`A325096(2*(A088512(n)+1))`
-/

namespace A050315.P7304648004547578312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325096 (2 * (A088512 n + 1)).toNat

end

end A050315.P7304648004547578312

namespace A050315

/-- `A325096(2*(A088512(n)+1))` -/
def P7304648004547578312.Spec : Prop :=
  ∀ n, P7304648004547578312.a n = A050315 n

end A050315

/-! ## A050315.P659440878222354613

`A000110(2*n-A005187(n))`
-/

namespace A050315.P659440878222354613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 ((2 * n : ℤ) - A005187 n).toNat

end

end A050315.P659440878222354613

namespace A050315

/-- `A000110(2*n-A005187(n))` -/
def P659440878222354613.Spec : Prop :=
  ∀ n, P659440878222354613.a n = A050315 n

end A050315

/-! ## A050315.P16493383795668983411

`A000110(n-A005187(n)+n)`
-/

namespace A050315.P16493383795668983411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 ((n : ℤ) - A005187 n + (n : ℤ)).toNat

end

end A050315.P16493383795668983411

namespace A050315

/-- `A000110(n-A005187(n)+n)` -/
def P16493383795668983411.Spec : Prop :=
  ∀ n, P16493383795668983411.a n = A050315 n

end A050315

/-! ## A050315.P17183226901795975508

`A000110(n-(A005187(n)-n))`
-/

namespace A050315.P17183226901795975508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 ((n : ℤ) - (A005187 n - (n : ℤ))).toNat

end

end A050315.P17183226901795975508

namespace A050315

/-- `A000110(n-(A005187(n)-n))` -/
def P17183226901795975508.Spec : Prop :=
  ∀ n, P17183226901795975508.a n = A050315 n

end A050315

/-! ## A050315.P5103878944520067059

`A000110(∑[char[2^n]]-A080791(n))`
-/

namespace A050315.P5103878944520067059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A080791 n).toNat

end

end A050315.P5103878944520067059

namespace A050315

/-- `A000110(∑[char[2^n]]-A080791(n))` -/
def P5103878944520067059.Spec : Prop :=
  ∀ n, P5103878944520067059.a n = A050315 n

end A050315

/-! ## A050315.P2527198260179859949

`A000110(A293390(A038573(n)))`
-/

namespace A050315.P2527198260179859949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A293390 (A038573 n).toNat).toNat

end

end A050315.P2527198260179859949

namespace A050315

/-- `A000110(A293390(A038573(n)))` -/
def P2527198260179859949.Spec : Prop :=
  ∀ n, P2527198260179859949.a n = A050315 n

end A050315

/-! ## A050315.P5116352840859782721

`A000110(∑{d}[A001316(n), A001221(#)])`
-/

namespace A050315.P5116352840859782721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (∑ d ∈ Nat.divisors (f1 n).natAbs, A001221 d).toNat

end

end A050315.P5116352840859782721

namespace A050315

/-- `A000110(∑{d}[A001316(n), A001221(#)])` -/
def P5116352840859782721.Spec : Prop :=
  ∀ n, P5116352840859782721.a n = A050315 n

end A050315

/-! ## A050315.P15372451490213334891

`A325096(A088512(n)+A088512(n)+1)`
-/

namespace A050315.P15372451490213334891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325096 (A088512 n + (A088512 n + 1)).toNat

end

end A050315.P15372451490213334891

namespace A050315

/-- `A325096(A088512(n)+A088512(n)+1)` -/
def P15372451490213334891.Spec : Prop :=
  ∀ n, P15372451490213334891.a n = A050315 n

end A050315

/-! ## A050315.P11572032224045102901

`A287214(2*A000120(n)*A000120(n))`
-/

namespace A050315.P11572032224045102901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287214 (2 * A000120 n * A000120 n).toNat

end

end A050315.P11572032224045102901

namespace A050315

/-- `A287214(2*A000120(n)*A000120(n))` -/
def P11572032224045102901.Spec : Prop :=
  ∀ n, P11572032224045102901.a n = A050315 n

end A050315

/-! ## A050315.P11830687912942672254

`A000110(A324467(n)/3)`
-/

namespace A050315.P11830687912942672254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (SequenceMachineLib.roundAway ((A324467 n : ℚ) / 3)).toNat

end

end A050315.P11830687912942672254

namespace A050315

/-- `A000110(A324467(n)/3)` -/
def P11830687912942672254.Spec : Prop :=
  ∀ n, P11830687912942672254.a n = A050315 n

end A050315

/-! ## A050315.P1364887173042546319

`A011971(A000217(A000120(2*n)))`
-/

namespace A050315.P1364887173042546319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A000217 (A000120 (2 * n)).toNat).toNat

end

end A050315.P1364887173042546319

namespace A050315

/-- `A011971(A000217(A000120(2*n)))` -/
def P1364887173042546319.Spec : Prop :=
  ∀ n, P1364887173042546319.a n = A050315 n

end A050315

/-! ## A050315.P8664594795720843226

`A000110(A048881(2*n))`
-/

namespace A050315.P8664594795720843226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 (A048881 (2 * n)).toNat

end

end A050315.P8664594795720843226

namespace A050315

/-- `A000110(A048881(2*n))` -/
def P8664594795720843226.Spec : Prop :=
  ∀ n, P8664594795720843226.a n = A050315 n

end A050315

/-!
# A050316: a(n) = A050314(2n+1,1): column 1 of triangle.

The programs for A050316, there is no canonical definition to state claims against.
-/

/-! ## A050316.P13151702640676225795

`A050314(∑[4*n+1]+1)`
-/

namespace A050316.P13151702640676225795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050314 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A050316.P13151702640676225795

/-!
# A050317: Number of ways n is a product of partition numbers > 1.

The programs for A050317, there is no canonical definition to state claims against.
-/

/-! ## A050317.P3623977612238460237

`A194325(2^A002726(n+1))`
-/

namespace A050317.P3623977612238460237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194325 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A002726 (n + 1) : ℤ))).toNat

end

end A050317.P3623977612238460237

/-! ## A050317.P3773616674724591297

`A098082(A326065(n+1))%A098069(n+1)`
-/

namespace A050317.P3773616674724591297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098082 (A326065 (n + 1)).toNat) (A098069 (n + 1))

end

end A050317.P3773616674724591297

/-! ## A050317.P17991937280090942953

`A000122(A331908(n+1)%A305975(n+1))`
-/

namespace A050317.P17991937280090942953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (Int.tmod (A331908 (n + 1)) (A305975 (n + 1))).toNat

end

end A050317.P17991937280090942953

/-! ## A050317.P10626804588506937444

`A002865(A236103(n+2))%A098069(n+1)`
-/

namespace A050317.P10626804588506937444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002865 (A236103 (n + 2)).toNat) (A098069 (n + 1))

end

end A050317.P10626804588506937444

/-! ## A050317.P13184954084064840084

`A001222(A236103(n+2))%A085544(n+2)`
-/

namespace A050317.P13184954084064840084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A236103 (n + 2)).toNat) (A085544 (n + 2))

end

end A050317.P13184954084064840084

/-!
# A050318: a(n) is the number of ways to write n as an mterm, where an mterm is an unordered sum which is either 2, or 1 + an unordered product of mterms.

The programs for A050318, there is no canonical definition to state claims against.
-/

/-! ## A050318.P898245839662672875

`A050319(n+2)+a(n-1)` with `a(0)=1`
-/

namespace A050318.P898245839662672875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A050319 (n + 2) + a (n - 1)

end

end A050318.P898245839662672875

/-! ## A050318.P2153548566796892545

`∑[A050319(C(3, n²+1)+n+2)]`
-/

namespace A050318.P2153548566796892545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050319 (Nat.choose 3 (n ^ 2 + 1) + (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050318.P2153548566796892545

/-! ## A050318.P16673585301430983291

`∑[A050319(A123108(2*n)+2)]+1`
-/

namespace A050318.P16673585301430983291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050319 (A123108 (2 * n) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A050318.P16673585301430983291

/-! ## A050318.P3541451947573502876

`∑[A050319(A000007(n)+2+n)]+1`
-/

namespace A050318.P3541451947573502876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050319 (A000007 n + 2 + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A050318.P3541451947573502876

/-! ## A050318.P12884254548526640933

`∑[A050319(n+3)]+1-A050319(n+3)`
-/

namespace A050318.P12884254548526640933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050319 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A050319 (n + 3))

end

end A050318.P12884254548526640933

/-! ## A050318.P18024853950337473528

`∑[A050319(n+3)]-A023443(A050319(n+3))`
-/

namespace A050318.P18024853950337473528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050319 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A023443 (A050319 (n + 3)).toNat

end

end A050318.P18024853950337473528

/-!
# A050319: Differences of A050318.

The programs for A050319, there is no canonical definition to state claims against.
-/

/-! ## A050319.P2505706238018830074

`Δ[A050318(n+2)]`
-/

namespace A050319.P2505706238018830074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050318 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050319.P2505706238018830074

/-! ## A050319.P1778061535791735011

`A050318(n+3)-A050318(n+2)`
-/

namespace A050319.P1778061535791735011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050318 (n + 3) - A050318 (n + 2)

end

end A050319.P1778061535791735011

/-! ## A050319.P10382476310981081997

`Δ[A130841(n+1)-A335520(A335545(n))]`
-/

namespace A050319.P10382476310981081997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130841 (n + 1) - A335520 (A335545 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050319.P10382476310981081997

/-! ## A050319.P4386552700880493873

`A375359(A051190(n+2))`
-/

namespace A050319.P4386552700880493873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375359 (A051190 (n + 2)).toNat

end

end A050319.P4386552700880493873

/-! ## A050319.P5863104521264124004

`A262202(A005179(n+2))`
-/

namespace A050319.P5863104521264124004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262202 (A005179 (n + 2)).toNat

end

end A050319.P5863104521264124004

/-!
# A050320: Number of ways n is a product of squarefree numbers > 1.

The programs for A050320, there is no canonical definition to state claims against.
-/

/-! ## A050320.P14851358018424932653

`A050325(A101296(n+1))`
-/

namespace A050320.P14851358018424932653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050325 (A101296 (n + 1)).toNat

end

end A050320.P14851358018424932653

/-! ## A050320.P16642196804357324251

`∑{d}[n+1, A322075(#)]`
-/

namespace A050320.P16642196804357324251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A322075 d

end

end A050320.P16642196804357324251

/-! ## A050320.P2055258455816927737

`A318360(A181819(n+1))`
-/

namespace A050320.P2055258455816927737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318360 (A181819 (n + 1)).toNat

end

end A050320.P2055258455816927737

/-! ## A050320.P2598538782367788594

`A318360(∏{e}[n+1, A000040(#)])`
-/

namespace A050320.P2598538782367788594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318360 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A050320.P2598538782367788594

/-! ## A050320.P2203273547012449901

`A094280(A320655((n+1)²))`
-/

namespace A050320.P2203273547012449901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094280 (A320655 ((n + 1) ^ 2)).toNat

end

end A050320.P2203273547012449901

/-! ## A050320.P18037562106310205210

`A056239(2^A320655((n+1)²))`
-/

namespace A050320.P18037562106310205210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A320655 ((n + 1) ^ 2) : ℤ))).toNat

end

end A050320.P18037562106310205210

/-! ## A050320.P7954656995917111340

`A320655(A004443((n+1)²+2))`
-/

namespace A050320.P7954656995917111340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (A004443 ((n + 1) ^ 2 + 2)).toNat

end

end A050320.P7954656995917111340

/-! ## A050320.P14410143690294537666

`A320655((n+1)^(2%A000120(∑[n+1])))`
-/

namespace A050320.P14410143690294537666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (Int.tmod 2 (A000120 (∑ j ∈ Finset.range (n + 1), f1 j)) : ℤ))).toNat

end

end A050320.P14410143690294537666

/-! ## A050320.P15537031532336983210

`A320655((n+1)²-A010052(n²)+1)`
-/

namespace A050320.P15537031532336983210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320655 (((n + 1) ^ 2 : ℤ) - A010052 (n ^ 2) + 1).toNat

end

end A050320.P15537031532336983210

/-!
# A050321: k such that A050292(k) is different from A004396(k).

The programs for A050321, the canonical program `A050321.P13414595198554501131` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050321 has offset 0).

The definition of A050321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050321.P13414595198554501131

`lt[1, abs(A065359(n))]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A050321

/-- `lt[1, abs(A065359(n))]` -/
def P13414595198554501131.Spec : Prop :=
  ∀ n, (P13414595198554501131.a n : ℤ) = A050321 n

theorem P13414595198554501131.correct : P13414595198554501131.Spec := by
  intro n
  simp only [A050321]

end A050321

/-! ## A050321.P15652917115707994217

`lt[1, A065359(2*n)²]`
-/

namespace A050321.P15652917115707994217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (2 * n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050321.P15652917115707994217

namespace A050321

/-- `lt[1, A065359(2*n)²]` -/
def P15652917115707994217.Spec : Prop :=
  ∀ n, (P15652917115707994217.a n : ℤ) = A050321 n

end A050321

/-! ## A050321.P2288934791306558247

`eq[1, A043545(A065359(n)²)]`
-/

namespace A050321.P2288934791306558247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A065359 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050321.P2288934791306558247

namespace A050321

/-- `eq[1, A043545(A065359(n)²)]` -/
def P2288934791306558247.Spec : Prop :=
  ∀ n, (P2288934791306558247.a n : ℤ) = A050321 n

end A050321

/-! ## A050321.P16695260336271484080

`eq[1, A141044(A065359(n)²)]`
-/

namespace A050321.P16695260336271484080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A065359 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050321.P16695260336271484080

namespace A050321

/-- `eq[1, A141044(A065359(n)²)]` -/
def P16695260336271484080.Spec : Prop :=
  ∀ n, (P16695260336271484080.a n : ℤ) = A050321 n

end A050321

/-! ## A050321.P17627705927979929620

`lt[1-A065359(n), (1-A065359(n))*A065359(2*n)]`
-/

namespace A050321.P17627705927979929620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A065359 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A065359 n) * A065359 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050321.P17627705927979929620

namespace A050321

/-- `lt[1-A065359(n), (1-A065359(n))*A065359(2*n)]` -/
def P17627705927979929620.Spec : Prop :=
  ∀ n, (P17627705927979929620.a n : ℤ) = A050321 n

end A050321

/-! ## A050321.P16990948502451679582

`lt[A065359(2*n+1), A065359(2*n+1)*A065359(2*n)]`
-/

namespace A050321.P16990948502451679582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065359 (2 * n + 1) * A065359 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050321.P16990948502451679582

namespace A050321

/-- `lt[A065359(2*n+1), A065359(2*n+1)*A065359(2*n)]` -/
def P16990948502451679582.Spec : Prop :=
  ∀ n, (P16990948502451679582.a n : ℤ) = A050321 n

end A050321

/-! ## A050321.P18022123770109739464

`lt[1, A345927(n)²]`
-/

namespace A050321.P18022123770109739464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345927 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050321.P18022123770109739464

namespace A050321

/-- `lt[1, A345927(n)²]` -/
def P18022123770109739464.Spec : Prop :=
  ∀ n, (P18022123770109739464.a n : ℤ) = A050321 n

end A050321

/-! ## A050321.P15946233519889139049

`lt[1, abs(A160381(n)-A160382(n))]`
-/

namespace A050321.P15946233519889139049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A160381 n - A160382 n|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050321.P15946233519889139049

namespace A050321

/-- `lt[1, abs(A160381(n)-A160382(n))]` -/
def P15946233519889139049.Spec : Prop :=
  ∀ n, (P15946233519889139049.a n : ℤ) = A050321 n

end A050321

/-! ## A050321.P32131549773691683

`eq[A130706(A065359(n)²), A130706(n+1)]`
-/

namespace A050321.P32131549773691683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A065359 n ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050321.P32131549773691683

namespace A050321

/-- `eq[A130706(A065359(n)²), A130706(n+1)]` -/
def P32131549773691683.Spec : Prop :=
  ∀ n, (P32131549773691683.a n : ℤ) = A050321 n

end A050321

/-! ## A050321.P12785397530878826236

`eq[A010059(n), A131735(A174312(n))]`
-/

namespace A050321.P12785397530878826236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131735 (A174312 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050321.P12785397530878826236

namespace A050321

/-- `eq[A010059(n), A131735(A174312(n))]` -/
def P12785397530878826236.Spec : Prop :=
  ∀ n, (P12785397530878826236.a n : ℤ) = A050321 n

end A050321

/-!
# A050322: Number of factorizations indexed by prime signatures: A001055(A025487).

The programs for A050322, there is no canonical definition to state claims against.
-/

/-! ## A050322.P12412766793624373791

`A001055(A025487(n+1))`
-/

namespace A050322.P12412766793624373791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A025487 (n + 1)).toNat

end

end A050322.P12412766793624373791

/-! ## A050322.P10563237852748682894

`A331049(A331119(n+1))`
-/

namespace A050322.P10563237852748682894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331049 (A331119 (n + 1)).toNat

end

end A050322.P10563237852748682894

/-! ## A050322.P8817115820598554064

`A318284(A181820(n+1))`
-/

namespace A050322.P8817115820598554064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318284 (A181820 (n + 1)).toNat

end

end A050322.P8817115820598554064

/-! ## A050322.P362108375600611745

`A001055(record[A046523(n+1)])`
-/

namespace A050322.P362108375600611745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050322.P362108375600611745

/-! ## A050322.P5317472168327583881

`A001055(record[A329899(n+1)])`
-/

namespace A050322.P5317472168327583881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050322.P5317472168327583881

/-! ## A050322.P580161541052943172

`A001055(record[A051466(n+2)])`
-/

namespace A050322.P580161541052943172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050322.P580161541052943172

/-! ## A050322.P14215649073994860590

`A001055(A247451(n+1)*A307107(n+1))`
-/

namespace A050322.P14215649073994860590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A247451 (n + 1) * A307107 (n + 1)).toNat

end

end A050322.P14215649073994860590

/-!
# A050323: Number of factorizations into distinct factors indexed by prime signatures: A045778(A025487).

The programs for A050323, there is no canonical definition to state claims against.
-/

/-! ## A050323.P693639353034455154

`A045778(A025487(n+1))`
-/

namespace A050323.P693639353034455154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A025487 (n + 1)).toNat

end

end A050323.P693639353034455154

/-! ## A050323.P6362227769988238468

`A318286(A181820(n+1))`
-/

namespace A050323.P6362227769988238468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (A181820 (n + 1)).toNat

end

end A050323.P6362227769988238468

/-! ## A050323.P11117294801736156074

`A318286(∏{e}[A025487(n+1), A000040(#)])`
-/

namespace A050323.P11117294801736156074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318286 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A050323.P11117294801736156074

/-! ## A050323.P12191201422628553198

`A045778(record[A046523(n+1)])`
-/

namespace A050323.P12191201422628553198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050323.P12191201422628553198

/-! ## A050323.P7528971355957311928

`A045778(record[A278523(n+1)])`
-/

namespace A050323.P7528971355957311928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050323.P7528971355957311928

/-! ## A050323.P12417105709279110601

`A045778(record[A329899(n+1)])`
-/

namespace A050323.P12417105709279110601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050323.P12417105709279110601

/-! ## A050323.P2313563846489942266

`A045778(record[A051466(n+2)])`
-/

namespace A050323.P2313563846489942266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050323.P2313563846489942266

/-!
# A050324: Number of ordered factorizations indexed by prime signatures: A074206(A025487).

The programs for A050324, there is no canonical definition to state claims against.
-/

/-! ## A050324.P13775378670091793215

`A074206(A025487(n+1))`
-/

namespace A050324.P13775378670091793215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A025487 (n + 1)).toNat

end

end A050324.P13775378670091793215

/-! ## A050324.P10731881687831696717

`A002033(A025487(n+1)-1)`
-/

namespace A050324.P10731881687831696717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 (A025487 (n + 1) - 1).toNat

end

end A050324.P10731881687831696717

/-! ## A050324.P13334324860034604764

`A074206(record[A329899(n+1)])`
-/

namespace A050324.P13334324860034604764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050324.P13334324860034604764

/-! ## A050324.P13482274165527597630

`A074206(record[A051466(n+2)])`
-/

namespace A050324.P13482274165527597630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050324.P13482274165527597630

/-! ## A050324.P2240010168890127659

`A074206(∑[A178799(abs(1-n)+1)]-1)`
-/

namespace A050324.P2240010168890127659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178799 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A050324.P2240010168890127659

/-! ## A050324.P648759039704730595

`A074206(A181821(A181820(n+1)))`
-/

namespace A050324.P648759039704730595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A181821 (A181820 (n + 1)).toNat).toNat

end

end A050324.P648759039704730595

/-! ## A050324.P7746213728153984304

`A074206(A247451(n+1)*A307107(n+1))`
-/

namespace A050324.P7746213728153984304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A247451 (n + 1) * A307107 (n + 1)).toNat

end

end A050324.P7746213728153984304

/-! ## A050324.P9330663769552273290

`A074206(A181817(n+1)/A181816(n+1))`
-/

namespace A050324.P9330663769552273290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (SequenceMachineLib.roundAway ((A181817 (n + 1) : ℚ) / (A181816 (n + 1) : ℚ))).toNat

end

end A050324.P9330663769552273290

/-! ## A050324.P11308019153786248957

`A074206(record[A046523(n+1)])`
-/

namespace A050324.P11308019153786248957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050324.P11308019153786248957

/-! ## A050324.P16032664869846237352

`∑{d}[A025487(n+1), A174725(#)]`
-/

namespace A050324.P16032664869846237352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A174725 d

end

end A050324.P16032664869846237352

/-!
# A050325: Number of factorizations into squarefree factors indexed by prime signatures: A050320(A025487).

The programs for A050325, there is no canonical definition to state claims against.
-/

/-! ## A050325.P417980251133207613

`A050320(A025487(n+1))`
-/

namespace A050325.P417980251133207613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A025487 (n + 1)).toNat

end

end A050325.P417980251133207613

/-! ## A050325.P6499905623308108363

`A318360(A181820(n+1))`
-/

namespace A050325.P6499905623308108363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318360 (A181820 (n + 1)).toNat

end

end A050325.P6499905623308108363

/-! ## A050325.P18362640246764037519

`A050320(record[A046523(n+1)])`
-/

namespace A050325.P18362640246764037519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050325.P18362640246764037519

/-! ## A050325.P1962203759019829434

`A050320(record[A329899(n+1)])`
-/

namespace A050325.P1962203759019829434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050325.P1962203759019829434

/-! ## A050325.P12733777955106840473

`A050320(record[A051466(n+2)])`
-/

namespace A050325.P12733777955106840473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050325.P12733777955106840473

/-!
# A050326: Number of factorizations of n into distinct squarefree numbers > 1.

The programs for A050326, there is no canonical definition to state claims against.
-/

/-! ## A050326.P7783233658148393811

`A050327(A101296(n+1))`
-/

namespace A050326.P7783233658148393811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050327 (A101296 (n + 1)).toNat

end

end A050326.P7783233658148393811

/-! ## A050326.P5217784088055665699

`A318361(A181819(n+1))`
-/

namespace A050326.P5217784088055665699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318361 (A181819 (n + 1)).toNat

end

end A050326.P5217784088055665699

/-! ## A050326.P5758501261287485879

`A318361(∏{e}[n+1, A000040(#)])`
-/

namespace A050326.P5758501261287485879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318361 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A050326.P5758501261287485879

/-! ## A050326.P5791829084606005078

`A318361(∏{e}[n+1, A049561(#)])`
-/

namespace A050326.P5791829084606005078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318361 (∏ p ∈ Nat.primeFactors (f1 n), A049561 (Nat.factorization (f1 n) p)).toNat

end

end A050326.P5791829084606005078

/-! ## A050326.P11553718703901632406

`A050327(A320110(2*(n+1))-1)`
-/

namespace A050326.P11553718703901632406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050327 (A320110 (2 * (n + 1)) - 1).toNat

end

end A050326.P11553718703901632406

/-! ## A050326.P8207117970853421624

`A381633(A318885(n+1))`
-/

namespace A050326.P8207117970853421624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381633 (A318885 (n + 1)).toNat

end

end A050326.P8207117970853421624

/-!
# A050327: Number of factorizations into distinct squarefree factors indexed by prime signatures. A050326(A025487).

The programs for A050327, there is no canonical definition to state claims against.
-/

/-! ## A050327.P16035908646004708576

`A050326(A025487(n+1))`
-/

namespace A050327.P16035908646004708576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (A025487 (n + 1)).toNat

end

end A050327.P16035908646004708576

/-! ## A050327.P14629068635214499625

`A318361(A181820(n+1))`
-/

namespace A050327.P14629068635214499625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318361 (A181820 (n + 1)).toNat

end

end A050327.P14629068635214499625

/-! ## A050327.P17806439663729113785

`A318361(∏{e}[A025487(n+1), A000040(#)])`
-/

namespace A050327.P17806439663729113785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318361 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A050327.P17806439663729113785

/-! ## A050327.P7574795504467631524

`A050326(record[A046523(n+1)])`
-/

namespace A050327.P7574795504467631524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050327.P7574795504467631524

/-! ## A050327.P2886571996130054467

`A050326(record[A329899(n+1)])`
-/

namespace A050327.P2886571996130054467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050327.P2886571996130054467

/-! ## A050327.P2473491307256384767

`A050326(record[A051466(n+2)])`
-/

namespace A050327.P2473491307256384767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050326 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050327.P2473491307256384767

/-!
# A050328: Number of ordered factorizations of n into squarefree numbers > 1.

The programs for A050328, there is no canonical definition to state claims against.
-/

/-! ## A050328.P11317435739441037381

`abs(A114006(n+1))`
-/

namespace A050328.P11317435739441037381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114006 (n + 1)|

end

end A050328.P11317435739441037381

/-! ## A050328.P890386037953069291

`abs(∑{d}[n+1, A114005(#)])`
-/

namespace A050328.P890386037953069291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), A114005 d|

end

end A050328.P890386037953069291

/-! ## A050328.P2425940172996556279

`abs(1-2*A317581(n+1))`
-/

namespace A050328.P2425940172996556279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - 2 * A317581 (n + 1)|

end

end A050328.P2425940172996556279

/-! ## A050328.P5138219319063724300

`A050329(A101296(n+1))`
-/

namespace A050328.P5138219319063724300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050329 (A101296 (n + 1)).toNat

end

end A050328.P5138219319063724300

/-! ## A050328.P8722026947217311955

`gcd(A000038(n), A114006(n+1))`
-/

namespace A050328.P8722026947217311955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A114006 (n + 1))

end

end A050328.P8722026947217311955

/-! ## A050328.P17189558066319742614

`lcm(A020985(n), A114006(n+1))`
-/

namespace A050328.P17189558066319742614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A114006 (n + 1))

end

end A050328.P17189558066319742614

/-! ## A050328.P12276731897806516029

`∑{d}[A114006(n+1), A000010(#)]`
-/

namespace A050328.P12276731897806516029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A050328.P12276731897806516029

/-! ## A050328.P5604016586082676906

`A008836(n+1)*A114006(n+1)`
-/

namespace A050328.P5604016586082676906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A114006 (n + 1)

end

end A050328.P5604016586082676906

/-! ## A050328.P8202427024701477728

`A008833(n+1)*A114006(n+1)/A358272(n+1)`
-/

namespace A050328.P8202427024701477728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008833 (n + 1) * A114006 (n + 1) : ℚ) / (A358272 (n + 1) : ℚ)

end

end A050328.P8202427024701477728

/-! ## A050328.P10074970881295285556

`A114006(n+1)*A359154(A003961(n+1))`
-/

namespace A050328.P10074970881295285556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114006 (n + 1) * A359154 (A003961 (n + 1)).toNat

end

end A050328.P10074970881295285556

/-! ## A050328.P17768459502078593384

`A114006(A003961(n+1))/A008836(n+1)`
-/

namespace A050328.P17768459502078593384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114006 (A003961 (n + 1)).toNat : ℚ) / (A008836 (n + 1) : ℚ)

end

end A050328.P17768459502078593384

/-! ## A050328.P7309130043610944484

`gcd(A114005(n+1), A217858(n+1))`
-/

namespace A050328.P7309130043610944484
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114005 (n + 1)) (A217858 (n + 1))

end

end A050328.P7309130043610944484

/-! ## A050328.P1253508350548956777

`gcd(A114005(n+1), A133221(n))`
-/

namespace A050328.P1253508350548956777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114005 (n + 1)) (A133221 n)

end

end A050328.P1253508350548956777

/-!
# A050329: Number of ordered factorizations into squarefree factors indexed by prime signatures.

The programs for A050329, there is no canonical definition to state claims against.
-/

/-! ## A050329.P16393547880615210912

`A050328(A025487(n+1))`
-/

namespace A050329.P16393547880615210912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050328 (A025487 (n + 1)).toNat

end

end A050329.P16393547880615210912

/-! ## A050329.P5985355246814661283

`A050328(record[A046523(n+1)])`
-/

namespace A050329.P5985355246814661283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050328 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050329.P5985355246814661283

/-! ## A050329.P6303575744825184789

`A050328(record[A329899(n+1)])`
-/

namespace A050329.P6303575744825184789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050328 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050329.P6303575744825184789

/-! ## A050329.P5894769663820375011

`A050328(record[A051466(n+2)])`
-/

namespace A050329.P5894769663820375011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050328 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050329.P5894769663820375011

/-! ## A050329.P12272093848367862275

`abs(A114006(record[A329899(n+1)]))`
-/

namespace A050329.P12272093848367862275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114006 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A050329.P12272093848367862275

/-! ## A050329.P6241182919860435161

`abs(A114006(record[A051466(n+2)]))`
-/

namespace A050329.P6241182919860435161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114006 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat|

end

end A050329.P6241182919860435161

/-! ## A050329.P18167253761481286583

`abs(A114006(lcm(2, A025487(n+1))))`
-/

namespace A050329.P18167253761481286583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A114006 (Int.lcm 2 (A025487 (n + 1)))|

end

end A050329.P18167253761481286583

/-! ## A050329.P1287743291455004512

`gcd(A000038(n), A114006(A025487(n+1)))`
-/

namespace A050329.P1287743291455004512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A114006 (A025487 (n + 1)).toNat)

end

end A050329.P1287743291455004512

/-! ## A050329.P3104491274895084364

`∑{d}[A114006(A025487(n+1)), A000010(#)]`
-/

namespace A050329.P3104491274895084364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114006 (A025487 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A050329.P3104491274895084364

/-!
# A050330: Number of factorizations of n into numbers with an odd number of prime factors.

The programs for A050330, there is no canonical definition to state claims against.
-/

/-! ## A050330.P9227806511670075989

`A050331(A101296(n+1))`
-/

namespace A050330.P9227806511670075989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050331 (A101296 (n + 1)).toNat

end

end A050330.P9227806511670075989

/-! ## A050330.P18394800007407183143

`A051889(A001055(n+1)%A074075(3*(n+1)))`
-/

namespace A050330.P18394800007407183143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (Int.tmod (A001055 (n + 1)) (A074075 (3 * (n + 1)))).toNat

end

end A050330.P18394800007407183143

/-! ## A050330.P1751802082250454617

`floor((A066032(∑[n+1])+1)/4)+1`
-/

namespace A050330.P1751802082250454617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066032 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℚ) / 4⌋ + 1

end

end A050330.P1751802082250454617

/-! ## A050330.P327026075949989747

`A002265(A066032(∑[n+1])+1)+1`
-/

namespace A050330.P327026075949989747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A066032 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat + 1

end

end A050330.P327026075949989747

/-! ## A050330.P6338452127885565445

`∑{d}[A118759(n+1), A276167(A001222(#))]+1`
-/

namespace A050330.P6338452127885565445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A276167 (A001222 d).toNat + 1

end

end A050330.P6338452127885565445

/-! ## A050330.P4548949721052281525

`A001222(∏{d}[n+1, A276651(2^A001222(#)+2)])`
-/

namespace A050330.P4548949721052281525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ d ∈ Nat.divisors (f1 n), A276651 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A001222 d : ℤ) + 2)).toNat).toNat

end

end A050330.P4548949721052281525

/-! ## A050330.P8282683345648564931

`A003056(A252665(n+1)+A151878(n))`
-/

namespace A050330.P8282683345648564931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A252665 (n + 1) + A151878 n).toNat

end

end A050330.P8282683345648564931

/-! ## A050330.P16800910880969817397

`A051889(A305254(n+1))`
-/

namespace A050330.P16800910880969817397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A305254 (n + 1)).toNat

end

end A050330.P16800910880969817397

/-!
# A050331: Number of factorizations into numbers with an odd number of prime factors indexed by prime signatures. A050330(A025487).

The programs for A050331, there is no canonical definition to state claims against.
-/

/-! ## A050331.P5883588738009805634

`A050330(A025487(n+1))`
-/

namespace A050331.P5883588738009805634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050330 (A025487 (n + 1)).toNat

end

end A050331.P5883588738009805634

/-! ## A050331.P16413419740698603187

`A050330(record[A046523(n+1)])`
-/

namespace A050331.P16413419740698603187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050331.P16413419740698603187

/-! ## A050331.P14894808004622547177

`A050330(record[A083260(n+1)])`
-/

namespace A050331.P14894808004622547177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050331.P14894808004622547177

/-! ## A050331.P12632752357200950335

`A050330(record[A329899(n+1)])`
-/

namespace A050331.P12632752357200950335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050331.P12632752357200950335

/-! ## A050331.P1661884839468892332

`A050330(record[A051466(n+2)])`
-/

namespace A050331.P1661884839468892332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050330 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050331.P1661884839468892332

/-! ## A050331.P11607694282641951396

`A050330(A247451(n+1)*A307107(n+1))`
-/

namespace A050331.P11607694282641951396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050330 (A247451 (n + 1) * A307107 (n + 1)).toNat

end

end A050331.P11607694282641951396

/-!
# A050332: Number of factorizations of n into distinct numbers with an odd number of prime factors.

The programs for A050332, there is no canonical definition to state claims against.
-/

/-! ## A050332.P12871449585131585425

`A050333(A101296(n+1))`
-/

namespace A050332.P12871449585131585425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050333 (A101296 (n + 1)).toNat

end

end A050332.P12871449585131585425

/-! ## A050332.P9894782361390441922

`A050333(A320110(2*(n+1))-1)`
-/

namespace A050332.P9894782361390441922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050333 (A320110 (2 * (n + 1)) - 1).toNat

end

end A050332.P9894782361390441922

/-! ## A050332.P9797231627738967385

`A000700(A113901(n+1))%p?[A046691(n+2)]`
-/

namespace A050332.P9797231627738967385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046691 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000700 (A113901 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A050332.P9797231627738967385

/-! ## A050332.P18113712500978409113

`A000700(A113901(n+1))%A191580(A312440(n))`
-/

namespace A050332.P18113712500978409113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000700 (A113901 (n + 1)).toNat) (A191580 (A312440 n).toNat)

end

end A050332.P18113712500978409113

/-! ## A050332.P8718350905863146452

`A010051(A008255(n))+A000700(A113901(n+1))`
-/

namespace A050332.P8718350905863146452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A008255 n).toNat + A000700 (A113901 (n + 1)).toNat

end

end A050332.P8718350905863146452

/-! ## A050332.P14223799933477494351

`A000700(∑{e}[A205959(n+1), #+1])`
-/

namespace A050332.P14223799933477494351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1))

end

end A050332.P14223799933477494351

/-! ## A050332.P17104361894876771074

`A000700(A113901(n+1)%A332107(n+1))`
-/

namespace A050332.P17104361894876771074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Int.tmod (A113901 (n + 1)) (A332107 (n + 1))).toNat

end

end A050332.P17104361894876771074

/-! ## A050332.P12096497163052093472

`A000700(A113901(n+1))*A105700(A006512(n+1))`
-/

namespace A050332.P12096497163052093472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A113901 (n + 1)).toNat * A105700 (A006512 (n + 1)).toNat

end

end A050332.P12096497163052093472

/-! ## A050332.P14012648449564124444

`A000700(A113901(n+1))*A113901(A031339(n+1))`
-/

namespace A050332.P14012648449564124444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A113901 (n + 1)).toNat * A113901 (A031339 (n + 1)).toNat

end

end A050332.P14012648449564124444

/-! ## A050332.P12343010404086822836

`A000700(A113901(n+1))*A058281(A133263(n))`
-/

namespace A050332.P12343010404086822836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A113901 (n + 1)).toNat * A058281 (A133263 n).toNat

end

end A050332.P12343010404086822836

/-! ## A050332.P4475584214572195138

`A000700(A113901(n+1))*A058281(A167499(n))`
-/

namespace A050332.P4475584214572195138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A113901 (n + 1)).toNat * A058281 (A167499 n).toNat

end

end A050332.P4475584214572195138

/-! ## A050332.P363876101494688891

`A001222(A023301(n+1))*A000700(A113901(n+1))`
-/

namespace A050332.P363876101494688891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A023301 (n + 1)).toNat * A000700 (A113901 (n + 1)).toNat

end

end A050332.P363876101494688891

/-! ## A050332.P10327953620410331975

`A000700(A113901(n+1)%A198277(n))`
-/

namespace A050332.P10327953620410331975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Int.tmod (A113901 (n + 1)) (A198277 n)).toNat

end

end A050332.P10327953620410331975

/-! ## A050332.P5915757485112751140

`A000700(and(A113901(n+1), A198277(n)))`
-/

namespace A050332.P5915757485112751140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (Int.land (A113901 (n + 1)) (A198277 n)).toNat

end

end A050332.P5915757485112751140

/-! ## A050332.P17822812733765740811

`A000700(∑{e}[A062509(n+1), #])`
-/

namespace A050332.P17822812733765740811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A050332.P17822812733765740811

/-! ## A050332.P3436888763036141310

`A000700(A165560(n²)+A113901(n+1))`
-/

namespace A050332.P3436888763036141310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (A165560 (n ^ 2) + A113901 (n + 1)).toNat

end

end A050332.P3436888763036141310

/-!
# A050333: Number of factorizations into distinct numbers with an odd number of prime factors indexed by prime signatures. A050332(A025487).

The programs for A050333, there is no canonical definition to state claims against.
-/

/-! ## A050333.P9465921491832569231

`A050332(A025487(n+1))`
-/

namespace A050333.P9465921491832569231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050332 (A025487 (n + 1)).toNat

end

end A050333.P9465921491832569231

/-! ## A050333.P9154232961346762585

`A050332(record[A046523(n+1)])`
-/

namespace A050333.P9154232961346762585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050332 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050333.P9154232961346762585

/-! ## A050333.P9667214611079958576

`A050332(record[A329899(n+1)])`
-/

namespace A050333.P9667214611079958576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050332 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050333.P9667214611079958576

/-! ## A050333.P5851810108020295488

`A050332(record[A051466(n+2)])`
-/

namespace A050333.P5851810108020295488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050332 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050333.P5851810108020295488

/-! ## A050333.P17328896057117097885

`A050332(A247451(n+1)*A307107(n+1))`
-/

namespace A050333.P17328896057117097885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050332 (A247451 (n + 1) * A307107 (n + 1)).toNat

end

end A050333.P17328896057117097885

/-!
# A050334: Number of ordered factorizations of n into numbers with an odd number of prime divisors (prime factors counted with multiplicity).

The programs for A050334, there is no canonical definition to state claims against.
-/

/-! ## A050334.P17618801512757660158

`A050335(A101296(n+1))`
-/

namespace A050334.P17618801512757660158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050335 (A101296 (n + 1)).toNat

end

end A050334.P17618801512757660158

/-! ## A050334.P8048690177536258157

`A050335(A320110(2*(n+1))-1)`
-/

namespace A050334.P8048690177536258157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050335 (A320110 (2 * (n + 1)) - 1).toNat

end

end A050334.P8048690177536258157

/-! ## A050334.P14547811134896346531

`A008616(A339335(n+1)+A335434(n+1))`
-/

namespace A050334.P14547811134896346531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A339335 (n + 1) + A335434 (n + 1)).toNat

end

end A050334.P14547811134896346531

/-! ## A050334.P7270634189069110523

`A019446(A348610(A090108(n+1)))`
-/

namespace A050334.P7270634189069110523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019446 (A348610 (A090108 (n + 1)).toNat).toNat

end

end A050334.P7270634189069110523

/-! ## A050334.P16966322841128233269

`A020915(A348610(n+1)%A325415(n))`
-/

namespace A050334.P16966322841128233269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (Int.tmod (A348610 (n + 1)) (A325415 n)).toNat

end

end A050334.P16966322841128233269

/-! ## A050334.P301228987104183842

`A048766(A052816(A007425(n+1)))`
-/

namespace A050334.P301228987104183842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A052816 (A007425 (n + 1)).toNat).toNat

end

end A050334.P301228987104183842

/-! ## A050334.P7636692810911638656

`A000196(A141740(A348610(n+1)))`
-/

namespace A050334.P7636692810911638656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A141740 (A348610 (n + 1)).toNat).toNat

end

end A050334.P7636692810911638656

/-!
# A050335: Number of ordered factorizations into numbers with an odd number of prime factors indexed by prime signatures: A050334(A025487).

The programs for A050335, there is no canonical definition to state claims against.
-/

/-! ## A050335.P17522370117567849936

`A050334(A025487(n+1))`
-/

namespace A050335.P17522370117567849936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050334 (A025487 (n + 1)).toNat

end

end A050335.P17522370117567849936

/-! ## A050335.P3465574075317756052

`A050334(record[A046523(n+1)])`
-/

namespace A050335.P3465574075317756052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050334 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050335.P3465574075317756052

/-! ## A050335.P13650513229996346964

`A050334(record[A083260(n+1)])`
-/

namespace A050335.P13650513229996346964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050334 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050335.P13650513229996346964

/-! ## A050335.P5360158732822403497

`A050334(record[A329899(n+1)])`
-/

namespace A050335.P5360158732822403497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050334 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050335.P5360158732822403497

/-! ## A050335.P13892723124471612344

`A050334(record[A051466(n+2)])`
-/

namespace A050335.P13892723124471612344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050334 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050335.P13892723124471612344

/-! ## A050335.P4675703891067774128

`A050334(A247451(n+1)*A307107(n+1))`
-/

namespace A050335.P4675703891067774128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050334 (A247451 (n + 1) * A307107 (n + 1)).toNat

end

end A050335.P4675703891067774128

/-! ## A050335.P18353432811290788418

`A050334(A324577(n+1)/A324576(n+1))`
-/

namespace A050335.P18353432811290788418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050334 (SequenceMachineLib.roundAway ((A324577 (n + 1) : ℚ) / (A324576 (n + 1) : ℚ))).toNat

end

end A050335.P18353432811290788418

/-!
# A050336: Number of ways of factoring n with one level of parentheses.

The programs for A050336, there is no canonical definition to state claims against.
-/

/-! ## A050336.P17430127989097667016

`A050337(A101296(n+1))`
-/

namespace A050336.P17430127989097667016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050337 (A101296 (n + 1)).toNat

end

end A050336.P17430127989097667016

/-! ## A050336.P5541609918161818084

`A332286(A105560(n+1))+A317144(A046523(n+1))`
-/

namespace A050336.P5541609918161818084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332286 (A105560 (n + 1)).toNat + A317144 (A046523 (n + 1)).toNat

end

end A050336.P5541609918161818084

/-! ## A050336.P2472526523507641822

`A335472(∑{e}[n+1, #])+A317144(n+1)`
-/

namespace A050336.P2472526523507641822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335472 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + A317144 (n + 1)

end

end A050336.P2472526523507641822

/-! ## A050336.P7343498159717961899

`A317144(n+1)+A007326(A073093(n+1))`
-/

namespace A050336.P7343498159717961899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317144 (n + 1) + A007326 (A073093 (n + 1)).toNat

end

end A050336.P7343498159717961899

/-! ## A050336.P16208662737888060241

`A317144(n+1)+A026815(A255201(n+1))`
-/

namespace A050336.P16208662737888060241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317144 (n + 1) + A026815 (A255201 (n + 1)).toNat

end

end A050336.P16208662737888060241

/-! ## A050336.P2861802352952754990

`A317144(n+1)+A037901(A319786(n+1))`
-/

namespace A050336.P2861802352952754990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317144 (n + 1) + A037901 (A319786 (n + 1)).toNat

end

end A050336.P2861802352952754990

/-! ## A050336.P11237157667343510087

`A332286(A105560(n+1))+A317144(n+1)`
-/

namespace A050336.P11237157667343510087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332286 (A105560 (n + 1)).toNat + A317144 (n + 1)

end

end A050336.P11237157667343510087

/-! ## A050336.P2658537088206311183

`A317144(n+1)+A007326(A001222(n+1)+1)`
-/

namespace A050336.P2658537088206311183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317144 (n + 1) + A007326 (A001222 (n + 1) + 1).toNat

end

end A050336.P2658537088206311183

/-! ## A050336.P10858737990667065938

`A317144(n+1)+A185238(A061142(n+1))`
-/

namespace A050336.P10858737990667065938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317144 (n + 1) + A185238 (A061142 (n + 1)).toNat

end

end A050336.P10858737990667065938

/-! ## A050336.P1274004697107888767

`A317144(n+1)+A033665(A318472(n+1))`
-/

namespace A050336.P1274004697107888767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317144 (n + 1) + A033665 (A318472 (n + 1)).toNat

end

end A050336.P1274004697107888767

/-!
# A050337: Number of factorizations with one level of parentheses indexed by prime signatures. A050336(A025487).

The programs for A050337, there is no canonical definition to state claims against.
-/

/-! ## A050337.P9227452549431507708

`A050336(A025487(n+1))`
-/

namespace A050337.P9227452549431507708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050336 (A025487 (n + 1)).toNat

end

end A050337.P9227452549431507708

/-! ## A050337.P1928643666774749390

`A050336(A333964(n+1))`
-/

namespace A050337.P1928643666774749390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050336 (A333964 (n + 1)).toNat

end

end A050337.P1928643666774749390

/-! ## A050337.P5509955109621368466

`A050336(record[A046523(n+1)])`
-/

namespace A050337.P5509955109621368466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050336 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050337.P5509955109621368466

/-! ## A050337.P14752291255511044788

`A050336(record[A329899(n+1)])`
-/

namespace A050337.P14752291255511044788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050336 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050337.P14752291255511044788

/-! ## A050337.P11566424154745042225

`A050336(record[A051466(n+2)])`
-/

namespace A050337.P11566424154745042225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050336 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050337.P11566424154745042225

/-! ## A050337.P14230050793032870709

`A050336(A247451(n+1)*A307107(n+1))`
-/

namespace A050337.P14230050793032870709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050336 (A247451 (n + 1) * A307107 (n + 1)).toNat

end

end A050337.P14230050793032870709

/-! ## A050337.P17704136461036677758

`A050336(A181817(n+1)/A181816(n+1))`
-/

namespace A050337.P17704136461036677758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050336 (SequenceMachineLib.roundAway ((A181817 (n + 1) : ℚ) / (A181816 (n + 1) : ℚ))).toNat

end

end A050337.P17704136461036677758

/-! ## A050337.P14035544484336183946

`A050336(A324577(n+1)/A324576(n+1))`
-/

namespace A050337.P14035544484336183946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050336 (SequenceMachineLib.roundAway ((A324577 (n + 1) : ℚ) / (A324576 (n + 1) : ℚ))).toNat

end

end A050337.P14035544484336183946

/-!
# A050338: Number of ways of factoring n with 2 levels of parentheses.

The programs for A050338, there is no canonical definition to state claims against.
-/

/-! ## A050338.P8501791492684133940

`A050339(A101296(n+1))`
-/

namespace A050338.P8501791492684133940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050339 (A101296 (n + 1)).toNat

end

end A050338.P8501791492684133940

/-! ## A050338.P13599674967807312113

`A123580(A050340(n+1))`
-/

namespace A050338.P13599674967807312113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123580 (A050340 (n + 1)).toNat

end

end A050338.P13599674967807312113

/-! ## A050338.P13792512669388122455

`A132284(A301598(n+1))`
-/

namespace A050338.P13792512669388122455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132284 (A301598 (n + 1)).toNat

end

end A050338.P13792512669388122455

/-! ## A050338.P2277809631907689071

`A050339(A181819(n+1)%A192455(n+2))`
-/

namespace A050338.P2277809631907689071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050339 (Int.tmod (A181819 (n + 1)) (A192455 (n + 2))).toNat

end

end A050338.P2277809631907689071

/-! ## A050338.P12550039600893964050

`A027425(A317791(n+1)%A100436(2*n+3))`
-/

namespace A050338.P12550039600893964050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027425 (Int.tmod (A317791 (n + 1)) (A100436 (2 * n + 3))).toNat

end

end A050338.P12550039600893964050

/-!
# A050339: Number of factorizations with 2 levels of parentheses indexed by prime signatures. A050338(A025487).

The programs for A050339, there is no canonical definition to state claims against.
-/

/-! ## A050339.P14727510117158752691

`A050338(A025487(n+1))`
-/

namespace A050339.P14727510117158752691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050338 (A025487 (n + 1)).toNat

end

end A050339.P14727510117158752691

/-! ## A050339.P5508079979161359267

`A050338(A333964(n+1))`
-/

namespace A050339.P5508079979161359267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050338 (A333964 (n + 1)).toNat

end

end A050339.P5508079979161359267

/-! ## A050339.P3698903473632433173

`A050338(record[A046523(n+1)])`
-/

namespace A050339.P3698903473632433173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050338 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050339.P3698903473632433173

/-! ## A050339.P10484235038301729521

`A050338(record[A329899(n+1)])`
-/

namespace A050339.P10484235038301729521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050338 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050339.P10484235038301729521

/-! ## A050339.P10060137784115890719

`A050338(record[A051466(n+2)])`
-/

namespace A050339.P10060137784115890719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050338 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050339.P10060137784115890719

/-!
# A050340: Number of ways of factoring n with 3 levels of parentheses.

The programs for A050340, there is no canonical definition to state claims against.
-/

/-! ## A050340.P3806372250803233671

`A050341(A101296(n+1))`
-/

namespace A050340.P3806372250803233671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050341 (A101296 (n + 1)).toNat

end

end A050340.P3806372250803233671

/-! ## A050340.P2804696334708035276

`A002024(A261692(A308063(n+1)²))`
-/

namespace A050340.P2804696334708035276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A261692 (A308063 (n + 1) ^ 2).toNat).toNat

end

end A050340.P2804696334708035276

/-! ## A050340.P15003686557136365823

`A008706(A069283(A181819(n+1)!))`
-/

namespace A050340.P15003686557136365823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (A069283 (Nat.factorial (A181819 (n + 1)).toNat)).toNat

end

end A050340.P15003686557136365823

/-! ## A050340.P15227776039436363451

`A050341(A181819(n+1)%A259600(3*n+4))`
-/

namespace A050340.P15227776039436363451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050341 (Int.tmod (A181819 (n + 1)) (A259600 (3 * n + 4))).toNat

end

end A050340.P15227776039436363451

/-! ## A050340.P9851287563678601385

`A100437(A001055(n+1))%A360155(2*(n+1))`
-/

namespace A050340.P9851287563678601385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100437 (A001055 (n + 1)).toNat) (A360155 (2 * (n + 1)))

end

end A050340.P9851287563678601385

/-!
# A050341: Number of factorizations with 3 levels of parentheses indexed by prime signatures. A050340(A025487).

The programs for A050341, there is no canonical definition to state claims against.
-/

/-! ## A050341.P7023465218880597927

`A050340(A025487(n+1))`
-/

namespace A050341.P7023465218880597927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050340 (A025487 (n + 1)).toNat

end

end A050341.P7023465218880597927

/-! ## A050341.P16876239316835167934

`A050340(A333964(n+1))`
-/

namespace A050341.P16876239316835167934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050340 (A333964 (n + 1)).toNat

end

end A050341.P16876239316835167934

/-! ## A050341.P15216072928315607151

`A050340(record[A046523(n+1)])`
-/

namespace A050341.P15216072928315607151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050340 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050341.P15216072928315607151

/-! ## A050341.P8150818314397123804

`A050340(record[A329899(n+1)])`
-/

namespace A050341.P8150818314397123804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050340 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050341.P8150818314397123804

/-! ## A050341.P1669352154342768747

`A050340(record[A051466(n+2)])`
-/

namespace A050341.P1669352154342768747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050340 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050341.P1669352154342768747

/-!
# A050342: Expansion of Product_{m>=1} (1+x^m)^A000009(m).

The programs for A050342, there is no canonical definition to state claims against.
-/

/-! ## A050342.P858757099814171946

`A330461(∑[n+2]+3)`
-/

namespace A050342.P858757099814171946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330461 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A050342.P858757099814171946

/-! ## A050342.P3122554206671893163

`A330461(A133263(n+2))%A000244(n+2)`
-/

namespace A050342.P3122554206671893163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330461 (A133263 (n + 2)).toNat) (A000244 (n + 2))

end

end A050342.P3122554206671893163

/-! ## A050342.P8212146283994190397

`A050345(2^n)`
-/

namespace A050342.P8212146283994190397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050345 (2 ^ n)

end

end A050342.P8212146283994190397

/-! ## A050342.P2061301943623087279

`A050346(A025488(n))`
-/

namespace A050342.P2061301943623087279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050346 (A025488 n).toNat

end

end A050342.P2061301943623087279

/-! ## A050342.P3731737412073033583

`A050346(∑[A056099(n)])`
-/

namespace A050342.P3731737412073033583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056099 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050346 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050342.P3731737412073033583

/-!
# A050343: Number of partitions of n into distinct parts with 2 levels of parentheses.

The programs for A050343, there is no canonical definition to state claims against.
-/

/-! ## A050343.P1756720095354339769

`A330461(∑[n+3]+6)`
-/

namespace A050343.P1756720095354339769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330461 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A050343.P1756720095354339769

/-! ## A050343.P7301521664857407184

`A330461(A167614(n+2))%A007283(n)`
-/

namespace A050343.P7301521664857407184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330461 (A167614 (n + 2)).toNat) (A007283 n)

end

end A050343.P7301521664857407184

/-! ## A050343.P14344117338175478735

`or(A000007(n), A330461(A167614(n+2)))`
-/

namespace A050343.P14344117338175478735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A330461 (A167614 (n + 2)).toNat)

end

end A050343.P14344117338175478735

/-! ## A050343.P15613402871970680755

`lcm(A056594(2*n), A330461(A167614(n+2)))`
-/

namespace A050343.P15613402871970680755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A056594 (2 * n)) (A330461 (A167614 (n + 2)).toNat)

end

end A050343.P15613402871970680755

/-! ## A050343.P17680682896412725527

`A001511(Δ[n²])*A330461(A167614(n+2))`
-/

namespace A050343.P17680682896412725527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A330461 (A167614 (n + 2)).toNat

end

end A050343.P17680682896412725527

/-!
# A050344: Number of partitions of n into distinct parts with 3 levels of parentheses.

The programs for A050344, there is no canonical definition to state claims against.
-/

/-! ## A050344.P11829902703079901898

`A330461(eq[4, A002262(n)])`
-/

namespace A050344.P11829902703079901898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050344.P11829902703079901898

/-! ## A050344.P17035380157994873178

`A330461(eq[16, A059268(n)])`
-/

namespace A050344.P17035380157994873178
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050344.P17035380157994873178

/-! ## A050344.P686070248488170300

`A330461(A167614(n+3)+1)`
-/

namespace A050344.P686070248488170300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330461 (A167614 (n + 3) + 1).toNat

end

end A050344.P686070248488170300

/-! ## A050344.P17792425705871250743

`A330461(A000096(n+3)+5)`
-/

namespace A050344.P17792425705871250743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330461 (A000096 (n + 3) + 5).toNat

end

end A050344.P17792425705871250743

/-! ## A050344.P18075231805260730090

`A330461(A000217(n+4)+4)`
-/

namespace A050344.P18075231805260730090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330461 (A000217 (n + 4) + 4).toNat

end

end A050344.P18075231805260730090

/-!
# A050345: Number of ways to factor n into distinct factors with one level of parentheses.

The programs for A050345, there is no canonical definition to state claims against.
-/

/-! ## A050345.P8761032284612681673

`A050346(A101296(n+1))`
-/

namespace A050345.P8761032284612681673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050346 (A101296 (n + 1)).toNat

end

end A050345.P8761032284612681673

/-! ## A050345.P14115309314067276625

`A156262(2*A296120(n+1))`
-/

namespace A050345.P14115309314067276625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156262 (2 * A296120 (n + 1)).toNat

end

end A050345.P14115309314067276625

/-! ## A050345.P7787216395180564882

`A296120(n+1)+A024326(A008833(n+1))`
-/

namespace A050345.P7787216395180564882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296120 (n + 1) + A024326 (A008833 (n + 1)).toNat

end

end A050345.P7787216395180564882

/-! ## A050345.P5907868342638826036

`A296120(n+1)+A035439(A000688(n+1))`
-/

namespace A050345.P5907868342638826036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296120 (n + 1) + A035439 (A000688 (n + 1)).toNat

end

end A050345.P5907868342638826036

/-! ## A050345.P4369608771310844591

`A296120(n+1)+A000332(A046951(n+1))`
-/

namespace A050345.P4369608771310844591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296120 (n + 1) + A000332 (A046951 (n + 1)).toNat

end

end A050345.P4369608771310844591

/-! ## A050345.P15493010655033804555

`A296120(n+1)+A028422(A049419(n+1))`
-/

namespace A050345.P15493010655033804555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296120 (n + 1) + A028422 (A049419 (n + 1)).toNat

end

end A050345.P15493010655033804555

/-! ## A050345.P2685266184488758833

`A296120(n+1)+A088434(A000188(n+1))`
-/

namespace A050345.P2685266184488758833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296120 (n + 1) + A088434 (A000188 (n + 1)).toNat

end

end A050345.P2685266184488758833

/-! ## A050345.P10326799490642190541

`A296120(n+1)+A025918(A252665(n+1))`
-/

namespace A050345.P10326799490642190541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296120 (n + 1) + A025918 (A252665 (n + 1)).toNat

end

end A050345.P10326799490642190541

/-! ## A050345.P13733472449026226799

`A343023(A092265(n+1))+A296120(n+1)`
-/

namespace A050345.P13733472449026226799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343023 (A092265 (n + 1)).toNat + A296120 (n + 1)

end

end A050345.P13733472449026226799

/-!
# A050346: Number of factorizations into distinct factors with one level of parentheses indexed by prime signatures. A050345(A025487).

The programs for A050346, there is no canonical definition to state claims against.
-/

/-! ## A050346.P12816642811557922352

`A050345(A025487(n+1))`
-/

namespace A050346.P12816642811557922352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050345 (A025487 (n + 1)).toNat

end

end A050346.P12816642811557922352

/-! ## A050346.P11063321635160630784

`A050345(record[A046523(n+1)])`
-/

namespace A050346.P11063321635160630784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050345 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050346.P11063321635160630784

/-! ## A050346.P10657527008271319612

`A050345(record[A329899(n+1)])`
-/

namespace A050346.P10657527008271319612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050345 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050346.P10657527008271319612

/-! ## A050346.P3541590839923121981

`A050345(record[A051466(n+2)])`
-/

namespace A050346.P3541590839923121981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050345 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050346.P3541590839923121981

/-! ## A050346.P5449947472722392860

`A050345(∪[A364710(n+1), A070175(n)])`
-/

namespace A050346.P5449947472722392860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050345 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A050346.P5449947472722392860

/-! ## A050346.P69223011147468725

`A050345(A247451(n+1)*A307107(n+1))`
-/

namespace A050346.P69223011147468725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050345 (A247451 (n + 1) * A307107 (n + 1)).toNat

end

end A050346.P69223011147468725

/-! ## A050346.P16897925651483041444

`A050345(A181817(n+1)/A181816(n+1))`
-/

namespace A050346.P16897925651483041444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050345 (SequenceMachineLib.roundAway ((A181817 (n + 1) : ℚ) / (A181816 (n + 1) : ℚ))).toNat

end

end A050346.P16897925651483041444

/-! ## A050346.P9795976099955470518

`A050345(gcd(A181817(n+1), A324577(n+1)))`
-/

namespace A050346.P9795976099955470518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050345 (Int.gcd (A181817 (n + 1)) (A324577 (n + 1)))

end

end A050346.P9795976099955470518

/-!
# A050347: Number of ways to factor n into distinct factors with 2 levels of parentheses.

The programs for A050347, there is no canonical definition to state claims against.
-/

/-! ## A050347.P8078902492443375060

`A050348(A101296(n+1))`
-/

namespace A050347.P8078902492443375060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050348 (A101296 (n + 1)).toNat

end

end A050347.P8078902492443375060

/-! ## A050347.P1219129653481817346

`A233583(A342530(n+1))-A003557(A261248(n+1))`
-/

namespace A050347.P1219129653481817346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A342530 (n + 1)).toNat - A003557 (A261248 (n + 1)).toNat

end

end A050347.P1219129653481817346

/-! ## A050347.P5530169481119177924

`A233583(A342530(n+1))-A057979(A212122(n+1))`
-/

namespace A050347.P5530169481119177924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A342530 (n + 1)).toNat - A057979 (A212122 (n + 1)).toNat

end

end A050347.P5530169481119177924

/-! ## A050347.P10223969943593199436

`A024799(A050345(n+1)%A028749(n+1))`
-/

namespace A050347.P10223969943593199436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024799 (Int.tmod (A050345 (n + 1)) (A028749 (n + 1))).toNat

end

end A050347.P10223969943593199436

/-! ## A050347.P3189357162109562879

`A233583(A342530(n+1))-A008480(A016116(n))`
-/

namespace A050347.P3189357162109562879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A342530 (n + 1)).toNat - A008480 (A016116 n).toNat

end

end A050347.P3189357162109562879

/-!
# A050348: Number of factorizations into distinct factors with 2 levels of parentheses indexed by prime signatures. A050347(A025487).

The programs for A050348, there is no canonical definition to state claims against.
-/

/-! ## A050348.P16554074090516872679

`A050347(A025487(n+1))`
-/

namespace A050348.P16554074090516872679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050347 (A025487 (n + 1)).toNat

end

end A050348.P16554074090516872679

/-! ## A050348.P11135077380833476481

`A050347(A333964(n+1))`
-/

namespace A050348.P11135077380833476481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050347 (A333964 (n + 1)).toNat

end

end A050348.P11135077380833476481

/-! ## A050348.P11642772510009850490

`A050347(record[A046523(n+1)])`
-/

namespace A050348.P11642772510009850490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050347 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050348.P11642772510009850490

/-! ## A050348.P10040501892175709700

`A050347(record[A329899(n+1)])`
-/

namespace A050348.P10040501892175709700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050347 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050348.P10040501892175709700

/-! ## A050348.P12285560508671165158

`A050347(record[A051466(n+2)])`
-/

namespace A050348.P12285560508671165158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050347 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050348.P12285560508671165158

/-!
# A050349: Number of ways to factor n into distinct factors with 3 levels of parentheses.

The programs for A050349, there is no canonical definition to state claims against.
-/

/-! ## A050349.P8491300274257404372

`A050350(A101296(n+1))`
-/

namespace A050349.P8491300274257404372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050350 (A101296 (n + 1)).toNat

end

end A050349.P8491300274257404372

/-! ## A050349.P15235777177997128024

`A050350(A320110(2*(n+1))-1)`
-/

namespace A050349.P15235777177997128024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050350 (A320110 (2 * (n + 1)) - 1).toNat

end

end A050349.P15235777177997128024

/-! ## A050349.P8375860723449860518

`A187715(A295279(n+1))%A141214(n)`
-/

namespace A050349.P8375860723449860518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187715 (A295279 (n + 1)).toNat) (A141214 n)

end

end A050349.P8375860723449860518

/-! ## A050349.P16864431880072768098

`A187715(A295279(n+1)%A122270(n+1))`
-/

namespace A050349.P16864431880072768098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187715 (Int.tmod (A295279 (n + 1)) (A122270 (n + 1))).toNat

end

end A050349.P16864431880072768098

/-! ## A050349.P10019013307390454087

`A187715(A295279(n+1))^Δ[A004885(n+1)]`
-/

namespace A050349.P10019013307390454087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004885 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A187715 (A295279 (n + 1)).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A050349.P10019013307390454087

/-!
# A050350: Number of factorizations into distinct factors with 3 levels of parentheses indexed by prime signatures. A050349(A025487).

The programs for A050350, there is no canonical definition to state claims against.
-/

/-! ## A050350.P1199237980607056819

`A050349(A025487(n+1))`
-/

namespace A050350.P1199237980607056819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050349 (A025487 (n + 1)).toNat

end

end A050350.P1199237980607056819

/-! ## A050350.P13333916235588150393

`A050349(A333964(n+1))`
-/

namespace A050350.P13333916235588150393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050349 (A333964 (n + 1)).toNat

end

end A050350.P13333916235588150393

/-! ## A050350.P1592158200698951413

`A050349(record[A329899(n+1)])`
-/

namespace A050350.P1592158200698951413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050349 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050350.P1592158200698951413

/-! ## A050350.P9450128692627455499

`A050349(record[A051466(n+2)])`
-/

namespace A050350.P9450128692627455499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050349 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050350.P9450128692627455499

/-! ## A050350.P17496412966798077884

`A050349(∪[A364710(n+1), A070175(n)])`
-/

namespace A050350.P17496412966798077884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364710 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070175 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050349 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A050350.P17496412966798077884

/-!
# A050351: Number of 3-level labeled linear rooted trees with n leaves.

The programs for A050351, there is no canonical definition to state claims against.
-/

/-! ## A050351.P7752245680805912863

`ceil(A201339(n)/3)`
-/

namespace A050351.P7752245680805912863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A201339 n : ℚ) / 3⌉

end

end A050351.P7752245680805912863

/-! ## A050351.P1214562189806059401

`ceil(A027882(n)/6)`
-/

namespace A050351.P1214562189806059401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A027882 n : ℚ) / 6⌉

end

end A050351.P1214562189806059401

/-! ## A050351.P1098928086948535986

`ceil(A004123(n+1)/2)`
-/

namespace A050351.P1098928086948535986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004123 (n + 1) : ℚ) / 2⌉

end

end A050351.P1098928086948535986

/-! ## A050351.P4702598211004156909

`A032111(A028310(n))-1`
-/

namespace A050351.P4702598211004156909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032111 (A028310 n).toNat - 1

end

end A050351.P4702598211004156909

/-! ## A050351.P9993581333396117582

`gcd(A004123(n+1), A201339(n))`
-/

namespace A050351.P9993581333396117582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004123 (n + 1)) (A201339 n)

end

end A050351.P9993581333396117582

/-! ## A050351.P10975418408347049058

`A004123(n+1)/gcd(2, A000629(n))`
-/

namespace A050351.P10975418408347049058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004123 (n + 1) : ℚ) / (Int.gcd 2 (A000629 n) : ℚ)

end

end A050351.P10975418408347049058

/-! ## A050351.P15725376871470726153

`A004123(n+1)/A020639(A004277(n))`
-/

namespace A050351.P15725376871470726153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004123 (n + 1) : ℚ) / (A020639 (A004277 n).toNat : ℚ)

end

end A050351.P15725376871470726153

/-! ## A050351.P14497956543645376006

`A004123(n+1)/A020639(A008458(n))`
-/

namespace A050351.P14497956543645376006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004123 (n + 1) : ℚ) / (A020639 (A008458 n).toNat : ℚ)

end

end A050351.P14497956543645376006

/-! ## A050351.P7098344995991974078

`A004123(n+1)/A020639(A103517(n))`
-/

namespace A050351.P7098344995991974078
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004123 (n + 1) : ℚ) / (A020639 (A103517 n).toNat : ℚ)

end

end A050351.P7098344995991974078

/-!
# A050352: Number of 4-level labeled linear rooted trees with n leaves.

The programs for A050352, there is no canonical definition to state claims against.
-/

/-! ## A050352.P15436594014439403372

`ceil(A032033(n)/3)`
-/

namespace A050352.P15436594014439403372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032033 n : ℚ) / 3⌉

end

end A050352.P15436594014439403372

/-! ## A050352.P14451980326847708805

`ceil(A201354(n)/4)`
-/

namespace A050352.P14451980326847708805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A201354 n : ℚ) / 4⌉

end

end A050352.P14451980326847708805

/-! ## A050352.P11881449170057842817

`ceil(A032183(n+1)/12)`
-/

namespace A050352.P11881449170057842817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A032183 (n + 1) : ℚ) / 12⌉

end

end A050352.P11881449170057842817

/-! ## A050352.P5060407144390654082

`A032033(A028310(n))/3`
-/

namespace A050352.P5060407144390654082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032033 (A028310 n).toNat : ℚ) / 3

end

end A050352.P5060407144390654082

/-! ## A050352.P2534803274595126396

`gcd(A032033(n), A201354(n))`
-/

namespace A050352.P2534803274595126396
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A032033 n) (A201354 n)

end

end A050352.P2534803274595126396

/-! ## A050352.P2675919255206192309

`A201354(n)/A036453(n+1)²`
-/

namespace A050352.P2675919255206192309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201354 n : ℚ) / (A036453 (n + 1) ^ 2 : ℚ)

end

end A050352.P2675919255206192309

/-! ## A050352.P15669496561509057007

`A257565(A167614(n+2))`
-/

namespace A050352.P15669496561509057007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257565 (A167614 (n + 2)).toNat

end

end A050352.P15669496561509057007

/-!
# A050353: Number of 5-level labeled linear rooted trees with n leaves.

The programs for A050353, there is no canonical definition to state claims against.
-/

/-! ## A050353.P800230331471675021

`ceil(A094417(n)/4)`
-/

namespace A050353.P800230331471675021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A094417 n : ℚ) / 4⌉

end

end A050353.P800230331471675021

/-! ## A050353.P10513765151532592645

`ceil(A201365(n)/5)`
-/

namespace A050353.P10513765151532592645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A201365 n : ℚ) / 5⌉

end

end A050353.P10513765151532592645

/-! ## A050353.P9127033210324870303

`A094417(round(sqrt(n²+1)))/4`
-/

namespace A050353.P9127033210324870303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094417 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat : ℚ) / 4

end

end A050353.P9127033210324870303

/-! ## A050353.P16208674102341091222

`gcd(A094417(n), A201365(n))`
-/

namespace A050353.P16208674102341091222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094417 n) (A201365 n)

end

end A050353.P16208674102341091222

/-! ## A050353.P947905650254448079

`A201365(n)/gcd(5, A201367(n))`
-/

namespace A050353.P947905650254448079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201365 n : ℚ) / (Int.gcd 5 (A201367 n) : ℚ)

end

end A050353.P947905650254448079

/-!
# A050354: Number of ordered factorizations of n with one level of parentheses.

The programs for A050354, there is no canonical definition to state claims against.
-/

/-! ## A050354.P13991358272512248300

`A050355(A101296(n+1))`
-/

namespace A050354.P13991358272512248300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050355 (A101296 (n + 1)).toNat

end

end A050354.P13991358272512248300

/-! ## A050354.P5730563705869184345

`A068385(A061242(n+1))+A050355(A181819(n+1))`
-/

namespace A050354.P5730563705869184345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068385 (A061242 (n + 1)).toNat + A050355 (A181819 (n + 1)).toNat

end

end A050354.P5730563705869184345

/-! ## A050354.P4334254759673829165

`A005087(A087373(n+1))*A050355(A181819(n+1))`
-/

namespace A050354.P4334254759673829165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A087373 (n + 1)).toNat * A050355 (A181819 (n + 1)).toNat

end

end A050354.P4334254759673829165

/-! ## A050354.P8104445426776582608

`A318916(A330773(n))`
-/

namespace A050354.P8104445426776582608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318916 (A330773 n).toNat

end

end A050354.P8104445426776582608

/-! ## A050354.P18144405465243070344

`A364772(A160085(n+1))`
-/

namespace A050354.P18144405465243070344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364772 (A160085 (n + 1)).toNat

end

end A050354.P18144405465243070344

/-!
# A050355: Ordered factorizations with one level of parentheses indexed by prime signatures. A050354(A025487).

The programs for A050355, there is no canonical definition to state claims against.
-/

/-! ## A050355.P10382997595224133634

`A050354(A025487(n+1))`
-/

namespace A050355.P10382997595224133634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050354 (A025487 (n + 1)).toNat

end

end A050355.P10382997595224133634

/-! ## A050355.P2265616218577705818

`A050354(record[A046523(n+1)])`
-/

namespace A050355.P2265616218577705818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050354 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050355.P2265616218577705818

/-! ## A050355.P5243554844347526356

`A050354(record[A083260(n+1)])`
-/

namespace A050355.P5243554844347526356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050354 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050355.P5243554844347526356

/-! ## A050355.P1737492309825275823

`A050354(record[A328479(n+1)])`
-/

namespace A050355.P1737492309825275823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050354 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050355.P1737492309825275823

/-! ## A050355.P5627820388746915866

`A050354(record[A329899(n+1)])`
-/

namespace A050355.P5627820388746915866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050354 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050355.P5627820388746915866

/-! ## A050355.P6393840020040182957

`A050354(record[A051466(n+2)])`
-/

namespace A050355.P6393840020040182957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050354 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050355.P6393840020040182957

/-! ## A050355.P17809920719925090719

`A050354(A247451(n+1)*A307107(n+1))`
-/

namespace A050355.P17809920719925090719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050354 (A247451 (n + 1) * A307107 (n + 1)).toNat

end

end A050355.P17809920719925090719

/-!
# A050356: Number of ordered factorizations of n with 2 levels of parentheses.

The programs for A050356, there is no canonical definition to state claims against.
-/

/-! ## A050356.P3896692860494152802

`A050357(A101296(n+1))`
-/

namespace A050356.P3896692860494152802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050357 (A101296 (n + 1)).toNat

end

end A050356.P3896692860494152802

/-! ## A050356.P4389893010537315899

`A153883(A050354(n+1))`
-/

namespace A050356.P4389893010537315899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153883 (A050354 (n + 1)).toNat

end

end A050356.P4389893010537315899

/-! ## A050356.P4808038342815507867

`A000005(ceil(A293514(n+1)/2)^3)`
-/

namespace A050356.P4808038342815507867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (⌈(A293514 (n + 1) : ℚ) / 2⌉ ^ 3).toNat

end

end A050356.P4808038342815507867

/-! ## A050356.P17517454390598494488

`A000005(round(A293514(n+1)/2)^3)`
-/

namespace A050356.P17517454390598494488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A293514 (n + 1) : ℚ) / 2) ^ 3).toNat

end

end A050356.P17517454390598494488

/-!
# A050357: Number of ordered factorizations with 2 levels of parentheses indexed by prime signatures.

The programs for A050357, there is no canonical definition to state claims against.
-/

/-! ## A050357.P14809784937459891151

`A050356(A025487(n+1))`
-/

namespace A050357.P14809784937459891151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050356 (A025487 (n + 1)).toNat

end

end A050357.P14809784937459891151

/-! ## A050357.P11706555736908703753

`A050356(record[A046523(n+1)])`
-/

namespace A050357.P11706555736908703753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050356 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050357.P11706555736908703753

/-! ## A050357.P10873007922521815577

`A050356(record[A328479(n+1)])`
-/

namespace A050357.P10873007922521815577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050356 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050357.P10873007922521815577

/-! ## A050357.P11691833115102037713

`A050356(record[A329899(n+1)])`
-/

namespace A050357.P11691833115102037713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050356 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050357.P11691833115102037713

/-! ## A050357.P11027456889164600622

`A050356(record[A051466(n+2)])`
-/

namespace A050357.P11027456889164600622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050356 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050357.P11027456889164600622

/-! ## A050357.P6537029895821711542

`A050356(A247451(n+1)*A307107(n+1))`
-/

namespace A050357.P6537029895821711542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050356 (A247451 (n + 1) * A307107 (n + 1)).toNat

end

end A050357.P6537029895821711542

/-!
# A050358: Number of ordered factorizations of n with 3 levels of parentheses.

The programs for A050358, there is no canonical definition to state claims against.
-/

/-! ## A050358.P17734886775785497380

`A050359(A101296(n+1))`
-/

namespace A050358.P17734886775785497380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050359 (A101296 (n + 1)).toNat

end

end A050358.P17734886775785497380

/-! ## A050358.P2173539118411101075

`A373226(A050354(n+1))`
-/

namespace A050358.P2173539118411101075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373226 (A050354 (n + 1)).toNat

end

end A050358.P2173539118411101075

/-! ## A050358.P15222708436900438726

`A048691(A065033(A293514(n+1))²)`
-/

namespace A050358.P15222708436900438726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A065033 (A293514 (n + 1)).toNat ^ 2).toNat

end

end A050358.P15222708436900438726

/-! ## A050358.P8364698204975825552

`A048691((A293514(n+1)/A036453(n+1))²)`
-/

namespace A050358.P8364698204975825552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (SequenceMachineLib.roundAway (((A293514 (n + 1) : ℚ) / (A036453 (n + 1) : ℚ)) ^ 2)).toNat

end

end A050358.P8364698204975825552

/-! ## A050358.P10870968400587609788

`A050359(A181819(n+1)%A305563(2*(n+1)))`
-/

namespace A050358.P10870968400587609788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050359 (Int.tmod (A181819 (n + 1)) (A305563 (2 * (n + 1)))).toNat

end

end A050358.P10870968400587609788

/-!
# A050359: Number of ordered factorizations with 3 levels of parentheses indexed by prime signatures: A050358(A025487(n)).

The programs for A050359, there is no canonical definition to state claims against.
-/

/-! ## A050359.P3598047538799862788

`A050358(A025487(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050359.P3598047538799862788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050358 (A025487 (n + 1)).toNat

end

end A050359.P3598047538799862788

/-! ## A050359.P13226207171675323228

`A050358(record[A083260(n+1)])`
-/

namespace A050359.P13226207171675323228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050358 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050359.P13226207171675323228

/-! ## A050359.P3990019846999884171

`A050358(record[A278523(n+1)])`
-/

namespace A050359.P3990019846999884171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050358 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050359.P3990019846999884171

/-! ## A050359.P9317450579803344668

`A050358(record[A329899(n+1)])`
-/

namespace A050359.P9317450579803344668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050358 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050359.P9317450579803344668

/-! ## A050359.P1665875381099691336

`A050358(record[A051466(n+2)])`
-/

namespace A050359.P1665875381099691336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050358 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050359.P1665875381099691336

/-! ## A050359.P270726012044190907

`A050358(record[sqrt(A278254(n+1))])`
-/

namespace A050359.P270726012044190907
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A278254 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050358 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A050359.P270726012044190907

/-!
# A050360: Abelian groups (factorizations into prime powers >1) indexed by prime signatures. A000688(A025487).

The programs for A050360, there is no canonical definition to state claims against.
-/

/-! ## A050360.P1437763954716957709

`A299200(A181820(n+1))`
-/

namespace A050360.P1437763954716957709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (A181820 (n + 1)).toNat

end

end A050360.P1437763954716957709

/-! ## A050360.P5530005686075208866

`∏{e}[A025487(n+1), A000041(#)]`
-/

namespace A050360.P5530005686075208866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000041 (Nat.factorization (f1 n).natAbs p)

end

end A050360.P5530005686075208866

/-! ## A050360.P1670134720579167377

`∏{e}[A025487(n+1), A213598(#)]`
-/

namespace A050360.P1670134720579167377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A213598 (Nat.factorization (f1 n).natAbs p)

end

end A050360.P1670134720579167377

/-! ## A050360.P8748029318157881093

`∏{e}[A025487(n+1), A330642(#)]`
-/

namespace A050360.P8748029318157881093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A330642 (Nat.factorization (f1 n).natAbs p)

end

end A050360.P8748029318157881093

/-! ## A050360.P2594991128601795548

`∏{e}[A025487(n+1), A000065(#)+1]`
-/

namespace A050360.P2594991128601795548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A000065 (Nat.factorization (f1 n).natAbs p) + 1)

end

end A050360.P2594991128601795548

/-! ## A050360.P15252781362651934908

`∏{e}[A025487(n+1), A000688(A046055(#))]`
-/

namespace A050360.P15252781362651934908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000688 (A046055 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A050360.P15252781362651934908

/-! ## A050360.P8184068619812178280

`A000688(A025487(n+1))`
-/

namespace A050360.P8184068619812178280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A025487 (n + 1)).toNat

end

end A050360.P8184068619812178280

/-! ## A050360.P6674795195633099497

`A000688(record[A046523(n+1)])`
-/

namespace A050360.P6674795195633099497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050360.P6674795195633099497

/-! ## A050360.P12784751158305656656

`A000688(A329899(A329898(n+1)))`
-/

namespace A050360.P12784751158305656656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A329899 (A329898 (n + 1)).toNat).toNat

end

end A050360.P12784751158305656656

/-! ## A050360.P2160807778534833007

`A000688(A329899(A330683(n+1)))`
-/

namespace A050360.P2160807778534833007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A329899 (A330683 (n + 1)).toNat).toNat

end

end A050360.P2160807778534833007

/-!
# A050361: Number of factorizations into distinct prime powers greater than 1.

The programs for A050361, the canonical program `A050361.P4609984906141832222` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050361 has offset 1).

The definition of A050361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050361.P13292128962438969591

`A050362(A101296(n+1))`
-/

namespace A050361.P13292128962438969591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050362 (A101296 (n + 1)).toNat

end

end A050361.P13292128962438969591

namespace A050361

/-- `A050362(A101296(n+1))` -/
def P13292128962438969591.Spec : Prop :=
  ∀ n, P13292128962438969591.a n = A050361 (n + 1)

end A050361

/-! ## A050361.P7272189236223977093

`∏{e}[n+1, A000009(#)]`
-/

namespace A050361.P7272189236223977093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A000009 (Nat.factorization (f1 n) p)

end

end A050361.P7272189236223977093

namespace A050361

/-- `∏{e}[n+1, A000009(#)]` -/
def P7272189236223977093.Spec : Prop :=
  ∀ n, P7272189236223977093.a n = A050361 (n + 1)

end A050361

/-! ## A050361.P13779587269189390642

`∏{e}[n+1, A034149(#)]`
-/

namespace A050361.P13779587269189390642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A034149 (Nat.factorization (f1 n) p)

end

end A050361.P13779587269189390642

namespace A050361

/-- `∏{e}[n+1, A034149(#)]` -/
def P13779587269189390642.Spec : Prop :=
  ∀ n, P13779587269189390642.a n = A050361 (n + 1)

end A050361

/-! ## A050361.P4609984906141832222

`∏{e}[n+1, A347586(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A050361

/-- `∏{e}[n+1, A347586(#)]` -/
def P4609984906141832222.Spec : Prop :=
  ∀ n, P4609984906141832222.a n = A050361 (n + 1)

theorem P4609984906141832222.correct : P4609984906141832222.Spec := by
  intro n
  simp only [A050361, Nat.add_sub_cancel]

end A050361

/-! ## A050361.P6541198827516752144

`∏{e}[n+1, A035457(2*#)]`
-/

namespace A050361.P6541198827516752144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A035457 (2 * Nat.factorization (f1 n) p)

end

end A050361.P6541198827516752144

namespace A050361

/-- `∏{e}[n+1, A035457(2*#)]` -/
def P6541198827516752144.Spec : Prop :=
  ∀ n, P6541198827516752144.a n = A050361 (n + 1)

end A050361

/-! ## A050361.P9128690237259362797

`∑{d}[n+1, A129667(#)*A328721((n+1)/#)]`
-/

namespace A050361.P9128690237259362797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129667 d * A328721 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050361.P9128690237259362797

namespace A050361

/-- `∑{d}[n+1, A129667(#)*A328721((n+1)/#)]` -/
def P9128690237259362797.Spec : Prop :=
  ∀ n, P9128690237259362797.a n = A050361 (n + 1)

end A050361

/-! ## A050361.P6100459780784278227

`∏{e}[n+1, A086707(A086707(#²+13))]`
-/

namespace A050361.P6100459780784278227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A086707 (A086707 (Nat.factorization (f1 n) p ^ 2 + 13)).toNat

end

end A050361.P6100459780784278227

namespace A050361

/-- `∏{e}[n+1, A086707(A086707(#²+13))]` -/
def P6100459780784278227.Spec : Prop :=
  ∀ n, P6100459780784278227.a n = A050361 (n + 1)

end A050361

/-!
# A050362: Number of factorizations into distinct prime powers >1 indexed by prime signatures.

The programs for A050362, there is no canonical definition to state claims against.
-/

/-! ## A050362.P11321950685227928189

`A050361(A025487(n+1))`
-/

namespace A050362.P11321950685227928189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A025487 (n + 1)).toNat

end

end A050362.P11321950685227928189

/-! ## A050362.P13303646064678658981

`A357982(A181820(n+1))`
-/

namespace A050362.P13303646064678658981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357982 (A181820 (n + 1)).toNat

end

end A050362.P13303646064678658981

/-! ## A050362.P7809992263455517345

`∏{e}[A307107(n+1), A000009(#+1)]`
-/

namespace A050362.P7809992263455517345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000009 (Nat.factorization (f1 n).natAbs p + 1)

end

end A050362.P7809992263455517345

/-! ## A050362.P233989348397885918

`∏{e}[A025487(n+1), A000009(#)]`
-/

namespace A050362.P233989348397885918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000009 (Nat.factorization (f1 n).natAbs p)

end

end A050362.P233989348397885918

/-! ## A050362.P11831415852270416379

`∏{e}[A025487(n+1), A034149(#)]`
-/

namespace A050362.P11831415852270416379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A034149 (Nat.factorization (f1 n).natAbs p)

end

end A050362.P11831415852270416379

/-! ## A050362.P16704729593547440022

`∏{e}[A025487(n+1), A318286(A000040(#))]`
-/

namespace A050362.P16704729593547440022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A318286 (A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A050362.P16704729593547440022

/-! ## A050362.P13865341496837660416

`A050361(A233819(n+1))`
-/

namespace A050362.P13865341496837660416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (A233819 (n + 1)).toNat

end

end A050362.P13865341496837660416

/-!
# A050363: Number of ordered factorizations into prime powers greater than 1.

The programs for A050363, there is no canonical definition to state claims against.
-/

/-! ## A050363.P9284356268167930418

`A050364(A101296(n+1))`
-/

namespace A050363.P9284356268167930418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050364 (A101296 (n + 1)).toNat

end

end A050363.P9284356268167930418

/-! ## A050363.P8235641079315966880

`A308063(n+1)-A335520(A046523(n+1))`
-/

namespace A050363.P8235641079315966880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308063 (n + 1) - A335520 (A046523 (n + 1)).toNat

end

end A050363.P8235641079315966880

/-! ## A050363.P3975608087347643633

`A308063(n+1)-A335520(A062513(n+1))`
-/

namespace A050363.P3975608087347643633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308063 (n + 1) - A335520 (A062513 (n + 1)).toNat

end

end A050363.P3975608087347643633

/-! ## A050363.P15915502647108378412

`A308063(n+1)-A335520(A071364(n+1))`
-/

namespace A050363.P15915502647108378412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308063 (n + 1) - A335520 (A071364 (n + 1)).toNat

end

end A050363.P15915502647108378412

/-! ## A050363.P3312735320115688440

`A308063(n+1)-A335520(n+1)`
-/

namespace A050363.P3312735320115688440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308063 (n + 1) - A335520 (n + 1)

end

end A050363.P3312735320115688440

/-!
# A050364: Number of ordered factorizations into prime powers >1 indexed by prime signatures. A050363(A025487).

The programs for A050364, there is no canonical definition to state claims against.
-/

/-! ## A050364.P8591339587200895903

`A050363(A025487(n+1))`
-/

namespace A050364.P8591339587200895903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050363 (A025487 (n + 1)).toNat

end

end A050364.P8591339587200895903

/-! ## A050364.P3106758439661324675

`A050363(record[A046523(n+1)])`
-/

namespace A050364.P3106758439661324675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050363 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050364.P3106758439661324675

/-! ## A050364.P532818554176487640

`A050363(record[A083260(n+1)])`
-/

namespace A050364.P532818554176487640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050363 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050364.P532818554176487640

/-! ## A050364.P15296727899260498334

`A050363(record[A328479(n+1)])`
-/

namespace A050364.P15296727899260498334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050363 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050364.P15296727899260498334

/-! ## A050364.P8023761567778268549

`A050363(record[A329899(n+1)])`
-/

namespace A050364.P8023761567778268549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050363 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050364.P8023761567778268549

/-!
# A050365: a(n) is the number of ways to write n as an identity mterm, where an identity mterm is an unordered sum which is either 2, or 1 + an unordered product of distinct identity mterms.

The programs for A050365, there is no canonical definition to state claims against.
-/

/-! ## A050365.P6037412570754470062

`A048766(Δ[A238864(n)]²+1)`
-/

namespace A050365.P6037412570754470062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 ((f1 (n + 1) - f1 n) ^ 2 + 1).toNat

end

end A050365.P6037412570754470062

/-! ## A050365.P1003071985199123405

`A048766(A010000(Δ[A238864(n)]))`
-/

namespace A050365.P1003071985199123405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A010000 (f1 (n + 1) - f1 n).toNat).toNat

end

end A050365.P1003071985199123405

/-! ## A050365.P944514795512707870

`A056239(A215366(∏[A045778(n+1)]))`
-/

namespace A050365.P944514795512707870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A215366 (∏ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A050365.P944514795512707870

/-!
# A050367: Number of ways to factor n into 2 kinds of 2, 3 kinds of 3, ...

The programs for A050367, there is no canonical definition to state claims against.
-/

/-! ## A050367.P16717398112035454240

`∑{d}[n+1, A001055(#)*A328853((n+1)/#)]`
-/

namespace A050367.P16717398112035454240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A328853 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050367.P16717398112035454240

/-! ## A050367.P7918358626159619027

`∑{d}[n+1, A114592(#)*A328851((n+1)/#)]`
-/

namespace A050367.P7918358626159619027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A114592 d * A328851 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050367.P7918358626159619027

/-! ## A050367.P4771279285328987719

`∑{d}[n+1, A328709(#)*A328731((n+1)/#)]`
-/

namespace A050367.P4771279285328987719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328709 d * A328731 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050367.P4771279285328987719

/-!
# A050368: Number of ways to factor n into distinct factors with 2 kinds of 2, 3 kinds of 3, ...

The programs for A050368, there is no canonical definition to state claims against.
-/

/-! ## A050368.P3714349154670096669

`∑{d}[n+1, A045778(#)*A328877((n+1)/#)]`
-/

namespace A050368.P3714349154670096669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A045778 d * A328877 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050368.P3714349154670096669

/-! ## A050368.P8990625305008318903

`∑{d}[n+1, A316441(#)*A328876((n+1)/#)]`
-/

namespace A050368.P8990625305008318903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A316441 d * A328876 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050368.P8990625305008318903

/-! ## A050368.P14148177100908481052

`∑{d}[n+1, A328709(#)*A328730((n+1)/#)]`
-/

namespace A050368.P14148177100908481052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328709 d * A328730 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050368.P14148177100908481052

/-!
# A050369: Number of ordered factorizations of n into 2 kinds of 2, 3 kinds of 3, ...

The programs for A050369, there is no canonical definition to state claims against.
-/

/-! ## A050369.P8522557979495059348

`(n+1)*A074206(n+1)`
-/

namespace A050369.P8522557979495059348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A074206 (n + 1)

end

end A050369.P8522557979495059348

/-! ## A050369.P12384849376459168019

`(n+1)*A002033(n)`
-/

namespace A050369.P12384849376459168019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A002033 n

end

end A050369.P12384849376459168019

/-! ## A050369.P9821868632609947804

`(n+1)*Δ[A173382(n)]`
-/

namespace A050369.P9821868632609947804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173382 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A050369.P9821868632609947804

/-! ## A050369.P17033135448839985741

`(n+1)*ceil(A067824(n+1)/2)`
-/

namespace A050369.P17033135448839985741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(A067824 (n + 1) : ℚ) / 2⌉

end

end A050369.P17033135448839985741

/-! ## A050369.P17338432942237105599

`(n+1)*ceil(A253249(n+1)/4)`
-/

namespace A050369.P17338432942237105599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌈(A253249 (n + 1) : ℚ) / 4⌉

end

end A050369.P17338432942237105599

/-! ## A050369.P10114283961033950213

`(n+1)*A050324(A101296(n+1))`
-/

namespace A050369.P10114283961033950213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A050324 (A101296 (n + 1)).toNat

end

end A050369.P10114283961033950213

/-! ## A050369.P4660058212010161383

`(n+1)*(A173382(n+1)-A173382(n))`
-/

namespace A050369.P4660058212010161383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A173382 (n + 1) - A173382 n)

end

end A050369.P4660058212010161383

/-! ## A050369.P11221951103246277184

`(A174726(n+1)+A174725(n+1))*(n+1)`
-/

namespace A050369.P11221951103246277184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174726 (n + 1) + A174725 (n + 1)) * (n + 1 : ℤ)

end

end A050369.P11221951103246277184

/-! ## A050369.P7991727759164170978

`∑{d}[n+1, A008683(#)*A197953((n+1)/#)]`
-/

namespace A050369.P7991727759164170978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A197953 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050369.P7991727759164170978

/-! ## A050369.P6907288675069377900

`A002033(n)*A008619(2*n)`
-/

namespace A050369.P6907288675069377900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002033 n * A008619 (2 * n)

end

end A050369.P6907288675069377900

/-! ## A050369.P2940305725619856046

`(n+1)*A160413(lcm(2, A067824(n+1)))`
-/

namespace A050369.P2940305725619856046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A160413 (Int.lcm 2 (A067824 (n + 1)))

end

end A050369.P2940305725619856046

/-! ## A050369.P5183770241115991571

`(n+1)*A008621(A253249(n+1))`
-/

namespace A050369.P5183770241115991571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008621 (A253249 (n + 1)).toNat

end

end A050369.P5183770241115991571

/-! ## A050369.P2832122857015817404

`(n+1)*A345182(A003961(n+1))`
-/

namespace A050369.P2832122857015817404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A345182 (A003961 (n + 1)).toNat

end

end A050369.P2832122857015817404

/-! ## A050369.P3015287328249949504

`(n+1)*A117621(A243501(n+1))`
-/

namespace A050369.P3015287328249949504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A117621 (A243501 (n + 1)).toNat

end

end A050369.P3015287328249949504

/-! ## A050369.P11430481956622117096

`(n+1)*A345182(A332818(n+1))`
-/

namespace A050369.P11430481956622117096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A345182 (A332818 (n + 1)).toNat

end

end A050369.P11430481956622117096

/-! ## A050369.P8765262103530271719

`(n+1)*A345182(A297002(n+1))`
-/

namespace A050369.P8765262103530271719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A345182 (A297002 (n + 1)).toNat

end

end A050369.P8765262103530271719

/-!
# A050370: Number of ways to factor n into composite factors.

The programs for A050370, there is no canonical definition to state claims against.
-/

/-! ## A050370.P7651016753930595673

`A050371(A101296(n+1))`
-/

namespace A050370.P7651016753930595673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050371 (A101296 (n + 1)).toNat

end

end A050370.P7651016753930595673

/-! ## A050370.P3577086570164665566

`∑{d}[n+1, A001055(#)*A008683((n+1)/#)]`
-/

namespace A050370.P3577086570164665566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001055 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050370.P3577086570164665566

/-! ## A050370.P2346728164087839624

`∑{d}[n+1, A007427(#)*A057567((n+1)/#)]`
-/

namespace A050370.P2346728164087839624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A057567 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050370.P2346728164087839624

/-! ## A050370.P16382747492269868085

`∑{d}[n+1, A087003(#)*A371243((n+1)/#)]`
-/

namespace A050370.P16382747492269868085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A371243 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050370.P16382747492269868085

/-! ## A050370.P7416749461654466078

`∑{d}[n+1, A188585(#)*A322452((n+1)/#)]`
-/

namespace A050370.P7416749461654466078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A188585 d * A322452 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050370.P7416749461654466078

/-! ## A050370.P3324977568965774522

`∑{d}[n+1, A355688(#)*A371244((n+1)/#)]`
-/

namespace A050370.P3324977568965774522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A355688 d * A371244 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050370.P3324977568965774522

/-! ## A050370.P10781807003686546085

`A320267(n+1)-A294018(A068794(n+1))`
-/

namespace A050370.P10781807003686546085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320267 (n + 1) - A294018 (A068794 (n + 1)).toNat

end

end A050370.P10781807003686546085

/-! ## A050370.P18049090961130633793

`A320267(n+1)%(A320659(n+1)+A320266(n+1))`
-/

namespace A050370.P18049090961130633793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320267 (n + 1)) (A320659 (n + 1) + A320266 (n + 1))

end

end A050370.P18049090961130633793

/-! ## A050370.P9201730008547350502

`A320267(n+1)%A259175(n+1)`
-/

namespace A050370.P9201730008547350502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320267 (n + 1)) (A259175 (n + 1))

end

end A050370.P9201730008547350502

/-!
# A050371: Number of factorizations into composite numbers indexed by prime signatures. A050370(A025487).

The programs for A050371, there is no canonical definition to state claims against.
-/

/-! ## A050371.P249199104866839235

`A050370(A025487(n+1))`
-/

namespace A050371.P249199104866839235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (A025487 (n + 1)).toNat

end

end A050371.P249199104866839235

/-! ## A050371.P3435942765116094032

`A050370(record[A046523(n+1)])`
-/

namespace A050371.P3435942765116094032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050371.P3435942765116094032

/-! ## A050371.P15086644089099081230

`A050370(record[A083260(n+1)])`
-/

namespace A050371.P15086644089099081230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050371.P15086644089099081230

/-! ## A050371.P13984080779813790467

`A050370(record[A328479(n+1)])`
-/

namespace A050371.P13984080779813790467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050371.P13984080779813790467

/-! ## A050371.P5447122335726364195

`A050370(record[A329899(n+1)])`
-/

namespace A050371.P5447122335726364195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050371.P5447122335726364195

/-! ## A050371.P12587988195059000370

`A050370(record[A051466(n+2)])`
-/

namespace A050371.P12587988195059000370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050371.P12587988195059000370

/-! ## A050371.P272853733557494656

`A050370(A181817(n+1)/A181816(n+1))`
-/

namespace A050371.P272853733557494656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (SequenceMachineLib.roundAway ((A181817 (n + 1) : ℚ) / (A181816 (n + 1) : ℚ))).toNat

end

end A050371.P272853733557494656

/-! ## A050371.P1828949095198923138

`A050370(A324577(n+1)/A324576(n+1))`
-/

namespace A050371.P1828949095198923138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (SequenceMachineLib.roundAway ((A324577 (n + 1) : ℚ) / (A324576 (n + 1) : ℚ))).toNat

end

end A050371.P1828949095198923138

/-!
# A050372: Number of ways to factor n into distinct composite factors.

The programs for A050372, there is no canonical definition to state claims against.
-/

/-! ## A050372.P10569367850644967147

`A050373(A101296(n+1))`
-/

namespace A050372.P10569367850644967147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050373 (A101296 (n + 1)).toNat

end

end A050372.P10569367850644967147

/-! ## A050372.P2502317418281165023

`∑{d}[n+1, A008836(#)*A045778((n+1)/#)]`
-/

namespace A050372.P2502317418281165023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A045778 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050372.P2502317418281165023

/-! ## A050372.P838455481723546431

`∑{d}[n+1, A158522(#)*A342086((n+1)/#)]`
-/

namespace A050372.P838455481723546431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158522 d * A342086 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A050372.P838455481723546431

/-! ## A050372.P13660568023339481602

`A050373(A004736(A289628(n+1)))`
-/

namespace A050372.P13660568023339481602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050373 (A004736 (A289628 (n + 1)).toNat).toNat

end

end A050372.P13660568023339481602

/-! ## A050372.P11433691944344378821

`A114591(n+1)+A107279(A329602(n+1))`
-/

namespace A050372.P11433691944344378821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114591 (n + 1) + A107279 (A329602 (n + 1)).toNat

end

end A050372.P11433691944344378821

/-! ## A050372.P6734511788467496764

`A110655(A335434(n+1)+A008683(n+1))`
-/

namespace A050372.P6734511788467496764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A335434 (n + 1) + A008683 (n + 1)).toNat

end

end A050372.P6734511788467496764

/-! ## A050372.P9428320821842177695

`A002265(A335434(n+1)+A231821(n+1))`
-/

namespace A050372.P9428320821842177695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A335434 (n + 1) + A231821 (n + 1)).toNat

end

end A050372.P9428320821842177695

/-!
# A050373: Number of factorizations into distinct composite numbers indexed by prime signatures.

The programs for A050373, there is no canonical definition to state claims against.
-/

/-! ## A050373.P5749038733456138386

`A050372(A025487(n+1))`
-/

namespace A050373.P5749038733456138386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050372 (A025487 (n + 1)).toNat

end

end A050373.P5749038733456138386

/-! ## A050373.P9431041809487166974

`A050372(record[A046523(n+1)])`
-/

namespace A050373.P9431041809487166974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050372 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050373.P9431041809487166974

/-! ## A050373.P5575798358327130275

`A050372(record[A278523(n+1)])`
-/

namespace A050373.P5575798358327130275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050372 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050373.P5575798358327130275

/-! ## A050373.P4163803119052726347

`A050372(record[A328479(n+1)])`
-/

namespace A050373.P4163803119052726347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050372 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050373.P4163803119052726347

/-! ## A050373.P8427617301649736361

`A050372(record[A329899(n+1)])`
-/

namespace A050373.P8427617301649736361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050372 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050373.P8427617301649736361

/-! ## A050373.P17538439289720968589

`A050372(record[A051466(n+2)])`
-/

namespace A050373.P17538439289720968589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050372 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050373.P17538439289720968589

/-! ## A050373.P4819909648169659366

`A050372(A324577(n+1)/A324576(n+1))`
-/

namespace A050373.P4819909648169659366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050372 (SequenceMachineLib.roundAway ((A324577 (n + 1) : ℚ) / (A324576 (n + 1) : ℚ))).toNat

end

end A050373.P4819909648169659366

/-! ## A050373.P4829051040770970748

`A050372(gcd(A181817(n+1), A324577(n+1)))`
-/

namespace A050373.P4829051040770970748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050372 (Int.gcd (A181817 (n + 1)) (A324577 (n + 1)))

end

end A050373.P4829051040770970748

/-!
# A050374: Number of ordered factorizations of n into composite factors.

The programs for A050374, there is no canonical definition to state claims against.
-/

/-! ## A050374.P10574371006188419281

`A050375(A101296(n+1))`
-/

namespace A050374.P10574371006188419281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050375 (A101296 (n + 1)).toNat

end

end A050374.P10574371006188419281

/-! ## A050374.P13659808199567636001

`A235224(A050370(n+1)^A339890(n+1))`
-/

namespace A050374.P13659808199567636001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235224 (SequenceMachineLib.roundAway ((A050370 (n + 1) : ℚ) ^ (A339890 (n + 1) : ℤ))).toNat

end

end A050374.P13659808199567636001

/-! ## A050374.P7871423726315081911

`A084558(A050370(n+1)^A050370(2*(n+1)))`
-/

namespace A050374.P7871423726315081911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (SequenceMachineLib.roundAway ((A050370 (n + 1) : ℚ) ^ (A050370 (2 * (n + 1)) : ℤ))).toNat

end

end A050374.P7871423726315081911

/-! ## A050374.P8703632844335239521

`∏{e}[A007955(n+1), A045917(#)]`
-/

namespace A050374.P8703632844335239521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007955 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A045917 (Nat.factorization (f1 n).natAbs p)

end

end A050374.P8703632844335239521

/-! ## A050374.P12354492518965449913

`A087153(A317791(n+1)%A095384(n))`
-/

namespace A050374.P12354492518965449913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087153 (Int.tmod (A317791 (n + 1)) (A095384 n)).toNat

end

end A050374.P12354492518965449913

/-!
# A050375: Number of ordered factorizations into composite numbers indexed by prime signatures: A050374(A025487(n)).

The programs for A050375, there is no canonical definition to state claims against.
-/

/-! ## A050375.P3824628958639388962

`A050374(A025487(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A050375.P3824628958639388962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050374 (A025487 (n + 1)).toNat

end

end A050375.P3824628958639388962

/-! ## A050375.P14249636765522204079

`A050374(record[A329899(n+1)])`
-/

namespace A050375.P14249636765522204079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050374 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050375.P14249636765522204079

/-! ## A050375.P12120017762611030777

`A050374(record[A051466(n+2)])`
-/

namespace A050375.P12120017762611030777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050374 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050375.P12120017762611030777

/-! ## A050375.P8994076837551672365

`A050374(A247451(n+1)*A307107(n+1))`
-/

namespace A050375.P8994076837551672365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050374 (A247451 (n + 1) * A307107 (n + 1)).toNat

end

end A050375.P8994076837551672365

/-! ## A050375.P4852577139222092575

`A050374(A181817(n+1)/A181816(n+1))`
-/

namespace A050375.P4852577139222092575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050374 (SequenceMachineLib.roundAway ((A181817 (n + 1) : ℚ) / (A181816 (n + 1) : ℚ))).toNat

end

end A050375.P4852577139222092575

/-! ## A050375.P9919240778246284403

`A050374(record[A046523(n+1)])`
-/

namespace A050375.P9919240778246284403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050374 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050375.P9919240778246284403

/-!
# A050376: "Fermi-Dirac primes": numbers of the form p^(2^k) where p is prime and k >= 0.

The programs for A050376, the canonical program `A050376.P8445497075527543903` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050376 has offset 1).

The definition of A050376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050376.P11968746704421999495

`A268385(A268392(n+1))`
-/

namespace A050376.P11968746704421999495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268385 (A268392 (n + 1)).toNat

end

end A050376.P11968746704421999495

namespace A050376

/-- `A268385(A268392(n+1))` -/
def P11968746704421999495.Spec : Prop :=
  ∀ n, P11968746704421999495.a n = A050376 (n + 1)

end A050376

/-! ## A050376.P6017552768924779396

`sqrt(A082522(n+1))`
-/

namespace A050376.P6017552768924779396
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A082522 (n + 1) : ℝ)

end

end A050376.P6017552768924779396

namespace A050376

/-- `sqrt(A082522(n+1))` -/
def P6017552768924779396.Spec : Prop :=
  ∀ n, P6017552768924779396.a n = (A050376 (n + 1) : ℝ)

end A050376

/-! ## A050376.P6818906415182630762

`A240521(n)/a(n-1)` with `a(0)=2`
-/

namespace A050376.P6818906415182630762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A240521 n : ℚ) / a (n - 1)

end

end A050376.P6818906415182630762

namespace A050376

/-- `A240521(n)/a(n-1)` -/
def P6818906415182630762.Spec : Prop :=
  ∀ n, P6818906415182630762.a n = (A050376 (n + 1) : ℚ)

end A050376

/-! ## A050376.P9099686012525527087

`gcd(A082522(n+1), A240521(n+1))`
-/

namespace A050376.P9099686012525527087
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082522 (n + 1)) (A240521 (n + 1))

end

end A050376.P9099686012525527087

namespace A050376

/-- `gcd(A082522(n+1), A240521(n+1))` -/
def P9099686012525527087.Spec : Prop :=
  ∀ n, (P9099686012525527087.a n : ℤ) = A050376 (n + 1)

end A050376

/-! ## A050376.P9045329433455704409

`gcd(A240536(n+1), A268392(n+1))`
-/

namespace A050376.P9045329433455704409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A240536 (n + 1)) (A268392 (n + 1))

end

end A050376.P9045329433455704409

namespace A050376

/-- `gcd(A240536(n+1), A268392(n+1))` -/
def P9045329433455704409.Spec : Prop :=
  ∀ n, (P9045329433455704409.a n : ℤ) = A050376 (n + 1)

end A050376

/-! ## A050376.P13923683111964839870

`∪[A000040(n+1), A082522(n+1)]`
-/

namespace A050376.P13923683111964839870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A050376.P13923683111964839870

namespace A050376

/-- `∪[A000040(n+1), A082522(n+1)]` -/
def P13923683111964839870.Spec : Prop :=
  ∀ n, (P13923683111964839870.a n : ℤ) = A050376 (n + 1)

end A050376

/-! ## A050376.P8445497075527543903

`A084400(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A050376

/-- `A084400(n+2)` -/
def P8445497075527543903.Spec : Prop :=
  ∀ n, P8445497075527543903.a n = A050376 (n + 1)

theorem P8445497075527543903.correct : P8445497075527543903.Spec := by
  intro n
  simp only [A050376, Nat.add_sub_cancel]

end A050376

/-! ## A050376.P3443011467788608402

`filter[A096165(n+1), A355823(#)]`
-/

namespace A050376.P3443011467788608402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096165 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A050376.P3443011467788608402

namespace A050376

/-- `filter[A096165(n+1), A355823(#)]` -/
def P3443011467788608402.Spec : Prop :=
  ∀ n, P3443011467788608402.a n = A050376 (n + 1)

end A050376

/-! ## A050376.P5326689231293356538

`filter[A246655(n+1), A355823(#)]`
-/

namespace A050376.P5326689231293356538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A050376.P5326689231293356538

namespace A050376

/-- `filter[A246655(n+1), A355823(#)]` -/
def P5326689231293356538.Spec : Prop :=
  ∀ n, P5326689231293356538.a n = A050376 (n + 1)

end A050376

/-! ## A050376.P2754280902693857150

`filter[A000961(n+2), A355823(#)]`
-/

namespace A050376.P2754280902693857150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A050376.P2754280902693857150

namespace A050376

/-- `filter[A000961(n+2), A355823(#)]` -/
def P2754280902693857150.Spec : Prop :=
  ∀ n, P2754280902693857150.a n = A050376 (n + 1)

end A050376

/-! ## A050376.P12742133009780792417

`filter[A164336(n+2), A355823(#)]`
-/

namespace A050376.P12742133009780792417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164336 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355823 (f1 j).toNat = 1) n)

end

end A050376.P12742133009780792417

namespace A050376

/-- `filter[A164336(n+2), A355823(#)]` -/
def P12742133009780792417.Spec : Prop :=
  ∀ n, P12742133009780792417.a n = A050376 (n + 1)

end A050376

/-! ## A050376.P5974785936338534212

`∩[A096165(n+1), A222030(n)]`
-/

namespace A050376.P5974785936338534212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222030 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050376.P5974785936338534212

namespace A050376

/-- `∩[A096165(n+1), A222030(n)]` -/
def P5974785936338534212.Spec : Prop :=
  ∀ n, (P5974785936338534212.a n : ℤ) = A050376 (n + 1)

end A050376

/-! ## A050376.P5474318112811574647

`record[A340087(n+1)+1]`
-/

namespace A050376.P5474318112811574647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340087 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050376.P5474318112811574647

namespace A050376

/-- `record[A340087(n+1)+1]` -/
def P5474318112811574647.Spec : Prop :=
  ∀ n, P5474318112811574647.a n = A050376 (n + 1)

end A050376

/-! ## A050376.P8532487178345272624

`filter[A000961(n+1), A302777(#)]`
-/

namespace A050376.P8532487178345272624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A050376.P8532487178345272624

namespace A050376

/-- `filter[A000961(n+1), A302777(#)]` -/
def P8532487178345272624.Spec : Prop :=
  ∀ n, P8532487178345272624.a n = A050376 (n + 1)

end A050376

/-! ## A050376.P13931033050256517098

`filter[A059046(n+1), A302777(#)]`
-/

namespace A050376.P13931033050256517098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A050376.P13931033050256517098

namespace A050376

/-- `filter[A059046(n+1), A302777(#)]` -/
def P13931033050256517098.Spec : Prop :=
  ∀ n, P13931033050256517098.a n = A050376 (n + 1)

end A050376

/-! ## A050376.P9135417778669291281

`filter[A066311(n+1), A302777(#)]`
-/

namespace A050376.P9135417778669291281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A050376.P9135417778669291281

namespace A050376

/-- `filter[A066311(n+1), A302777(#)]` -/
def P9135417778669291281.Spec : Prop :=
  ∀ n, P9135417778669291281.a n = A050376 (n + 1)

end A050376

/-! ## A050376.P1641810533916498066

`filter[A069899(n+1), A302777(#)]`
-/

namespace A050376.P1641810533916498066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A050376.P1641810533916498066

namespace A050376

/-- `filter[A069899(n+1), A302777(#)]` -/
def P1641810533916498066.Spec : Prop :=
  ∀ n, P1641810533916498066.a n = A050376 (n + 1)

end A050376

/-! ## A050376.P8796029967748441110

`filter[A071139(n+1), A302777(#)]`
-/

namespace A050376.P8796029967748441110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A050376.P8796029967748441110

namespace A050376

/-- `filter[A071139(n+1), A302777(#)]` -/
def P8796029967748441110.Spec : Prop :=
  ∀ n, P8796029967748441110.a n = A050376 (n + 1)

end A050376

/-! ## A050376.P10666401440187004659

`filter[A072303(n+1), A302777(#)]`
-/

namespace A050376.P10666401440187004659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072303 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A050376.P10666401440187004659

namespace A050376

/-- `filter[A072303(n+1), A302777(#)]` -/
def P10666401440187004659.Spec : Prop :=
  ∀ n, P10666401440187004659.a n = A050376 (n + 1)

end A050376

/-!
# A050377: Number of ways to factor n into "Fermi-Dirac primes" (members of A050376).

The programs for A050377, the canonical program `A050377.P5092377049464550974` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050377 has offset 1).

The definition of A050377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050377.P13903680173893377399

`∏{e}[n+1, A008644(#)]`
-/

namespace A050377.P13903680173893377399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A008644 (Nat.factorization (f1 n) p)

end

end A050377.P13903680173893377399

namespace A050377

/-- `∏{e}[n+1, A008644(#)]` -/
def P13903680173893377399.Spec : Prop :=
  ∀ n, P13903680173893377399.a n = A050377 (n + 1)

end A050377

/-! ## A050377.P5092377049464550974

`∏{e}[n+1, A018819(#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A050377

/-- `∏{e}[n+1, A018819(#)]` -/
def P5092377049464550974.Spec : Prop :=
  ∀ n, P5092377049464550974.a n = A050377 (n + 1)

theorem P5092377049464550974.correct : P5092377049464550974.Spec := by
  intro n
  simp only [A050377, Nat.add_sub_cancel]

end A050377

/-! ## A050377.P8211139722962023471

`∏{e}[n+1, A029300(3*#)]`
-/

namespace A050377.P8211139722962023471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A029300 (3 * Nat.factorization (f1 n) p)

end

end A050377.P8211139722962023471

namespace A050377

/-- `∏{e}[n+1, A029300(3*#)]` -/
def P8211139722962023471.Spec : Prop :=
  ∀ n, P8211139722962023471.a n = A050377 (n + 1)

end A050377

/-! ## A050377.P15610279945097108292

`A050378(A101296(n+1))`
-/

namespace A050377.P15610279945097108292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050378 (A101296 (n + 1)).toNat

end

end A050377.P15610279945097108292

namespace A050377

/-- `A050378(A101296(n+1))` -/
def P15610279945097108292.Spec : Prop :=
  ∀ n, P15610279945097108292.a n = A050377 (n + 1)

end A050377

/-! ## A050377.P17469111649622866269

`∏{e}[(n+1)², A006093(A002265(#)+1)]`
-/

namespace A050377.P17469111649622866269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A006093 (A002265 (Nat.factorization (f1 n) p) + 1).toNat

end

end A050377.P17469111649622866269

namespace A050377

/-- `∏{e}[(n+1)², A006093(A002265(#)+1)]` -/
def P17469111649622866269.Spec : Prop :=
  ∀ n, P17469111649622866269.a n = A050377 (n + 1)

end A050377

/-! ## A050377.P9432243720309041101

`A050361((n+1)*A066990(n+1))`
-/

namespace A050377.P9432243720309041101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 ((n + 1 : ℤ) * A066990 (n + 1)).toNat

end

end A050377.P9432243720309041101

namespace A050377

/-- `A050361((n+1)*A066990(n+1))` -/
def P9432243720309041101.Spec : Prop :=
  ∀ n, P9432243720309041101.a n = A050377 (n + 1)

end A050377

/-! ## A050377.P10256847054148947076

`A325837(A008833(n+1)²)`
-/

namespace A050377.P10256847054148947076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A008833 (n + 1) ^ 2).toNat

end

end A050377.P10256847054148947076

namespace A050377

/-- `A325837(A008833(n+1)²)` -/
def P10256847054148947076.Spec : Prop :=
  ∀ n, P10256847054148947076.a n = A050377 (n + 1)

end A050377

/-! ## A050377.P18216896069683928984

`A365333(A008833(n+1)²)`
-/

namespace A050377.P18216896069683928984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365333 (A008833 (n + 1) ^ 2).toNat

end

end A050377.P18216896069683928984

namespace A050377

/-- `A365333(A008833(n+1)²)` -/
def P18216896069683928984.Spec : Prop :=
  ∀ n, P18216896069683928984.a n = A050377 (n + 1)

end A050377

/-! ## A050377.P14761850638666924442

`A368978(A008833(n+1)²)`
-/

namespace A050377.P14761850638666924442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368978 (A008833 (n + 1) ^ 2).toNat

end

end A050377.P14761850638666924442

namespace A050377

/-- `A368978(A008833(n+1)²)` -/
def P14761850638666924442.Spec : Prop :=
  ∀ n, P14761850638666924442.a n = A050377 (n + 1)

end A050377

/-! ## A050377.P14266290996352604519

`A046951((A057918(n+1)²+1)²)`
-/

namespace A050377.P14266290996352604519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 ((A057918 (n + 1) ^ 2 + 1) ^ 2).toNat

end

end A050377.P14266290996352604519

namespace A050377

/-- `A046951((A057918(n+1)²+1)²)` -/
def P14266290996352604519.Spec : Prop :=
  ∀ n, P14266290996352604519.a n = A050377 (n + 1)

end A050377

/-! ## A050377.P14336716869109443915

`A365333(A008835((n+1)²))`
-/

namespace A050377.P14336716869109443915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365333 (A008835 ((n + 1) ^ 2)).toNat

end

end A050377.P14336716869109443915

namespace A050377

/-- `A365333(A008835((n+1)²))` -/
def P14336716869109443915.Spec : Prop :=
  ∀ n, P14336716869109443915.a n = A050377 (n + 1)

end A050377

/-! ## A050377.P3546911792644088668

`A325837(A366905((n+1)²))`
-/

namespace A050377.P3546911792644088668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (A366905 ((n + 1) ^ 2)).toNat

end

end A050377.P3546911792644088668

namespace A050377

/-- `A325837(A366905((n+1)²))` -/
def P3546911792644088668.Spec : Prop :=
  ∀ n, P3546911792644088668.a n = A050377 (n + 1)

end A050377

/-!
# A050378: Number of factorizations into members of A050376 by prime signature. A050377(A025487).

The programs for A050378, there is no canonical definition to state claims against.
-/

/-! ## A050378.P8619770147410682413

`∏{e}[A025487(n+1), A008644(#)]`
-/

namespace A050378.P8619770147410682413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008644 (Nat.factorization (f1 n).natAbs p)

end

end A050378.P8619770147410682413

/-! ## A050378.P11419873322818562132

`∏{e}[A025487(n+1), A008645(#)]`
-/

namespace A050378.P11419873322818562132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008645 (Nat.factorization (f1 n).natAbs p)

end

end A050378.P11419873322818562132

/-! ## A050378.P12110158690986055448

`∏{e}[A025487(n+1), A018819(#)]`
-/

namespace A050378.P12110158690986055448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A018819 (Nat.factorization (f1 n).natAbs p)

end

end A050378.P12110158690986055448

/-! ## A050378.P2935940950588324808

`∏{e}[record[A051466(n+2)], A008645(#)]`
-/

namespace A050378.P2935940950588324808
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A008645 (Nat.factorization (f1 n).natAbs p)

end

end A050378.P2935940950588324808

/-! ## A050378.P9233980944130239076

`∏{e}[record[A051466(n+2)], A018819(#)]`
-/

namespace A050378.P9233980944130239076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A018819 (Nat.factorization (f1 n).natAbs p)

end

end A050378.P9233980944130239076

/-! ## A050378.P17838584124801725657

`∏{e}[A055932(A331119(n+1)), A018819(#)]`
-/

namespace A050378.P17838584124801725657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A331119 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A018819 (Nat.factorization (f1 n).natAbs p)

end

end A050378.P17838584124801725657

/-! ## A050378.P1732091987976191295

`A050377(A025487(n+1))`
-/

namespace A050378.P1732091987976191295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050377 (A025487 (n + 1)).toNat

end

end A050378.P1732091987976191295

/-! ## A050378.P6715489974373276173

`A330690(A181815(n+1))`
-/

namespace A050378.P6715489974373276173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330690 (A181815 (n + 1)).toNat

end

end A050378.P6715489974373276173

/-! ## A050378.P5020124693198568293

`A330690(A122111(A181820(n+1)))`
-/

namespace A050378.P5020124693198568293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330690 (A122111 (A181820 (n + 1)).toNat).toNat

end

end A050378.P5020124693198568293

/-! ## A050378.P8071549150642734517

`A050377(A233819(n+1))`
-/

namespace A050378.P8071549150642734517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050377 (A233819 (n + 1)).toNat

end

end A050378.P8071549150642734517

/-!
# A050379: Number of ordered factorizations of n into members of A050376.

The programs for A050379, there is no canonical definition to state claims against.
-/

/-! ## A050379.P12694621007220227140

`A050380(A101296(n+1))`
-/

namespace A050379.P12694621007220227140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050380 (A101296 (n + 1)).toNat

end

end A050379.P12694621007220227140

/-! ## A050379.P6357856019084063890

`A004526(A001055(n+1)+A349059(n+1)-A347440(n+1))`
-/

namespace A050379.P6357856019084063890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001055 (n + 1) + (A349059 (n + 1) - A347440 (n + 1))).toNat

end

end A050379.P6357856019084063890

/-! ## A050379.P9113281073051228671

`A119988(A001055(n+1))%A101112(n+5)`
-/

namespace A050379.P9113281073051228671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119988 (A001055 (n + 1)).toNat) (A101112 (n + 5))

end

end A050379.P9113281073051228671

/-! ## A050379.P16017347178331407713

`A119988(A001055(n+1))%A043955(A174544(n))`
-/

namespace A050379.P16017347178331407713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119988 (A001055 (n + 1)).toNat) (A043955 (A174544 n).toNat)

end

end A050379.P16017347178331407713

/-! ## A050379.P18099029702898476265

`A135461(A000330(n))+A119988(A001055(n+1))`
-/

namespace A050379.P18099029702898476265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135461 (A000330 n).toNat + A119988 (A001055 (n + 1)).toNat

end

end A050379.P18099029702898476265

/-!
# A050380: Number of ordered factorizations into terms of A050376 by prime signature.

The programs for A050380, there is no canonical definition to state claims against.
-/

/-! ## A050380.P1945246158430972037

`A050379(A025487(n+1))`
-/

namespace A050380.P1945246158430972037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (A025487 (n + 1)).toNat

end

end A050380.P1945246158430972037

/-! ## A050380.P15201146893026504936

`A050379(record[A329899(n+1)])`
-/

namespace A050380.P15201146893026504936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050380.P15201146893026504936

/-! ## A050380.P18126356847268480416

`A050379(record[A051466(n+2)])`
-/

namespace A050380.P18126356847268480416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050380.P18126356847268480416

/-! ## A050380.P9342281805998881604

`A050379(A247451(n+1)*A307107(n+1))`
-/

namespace A050380.P9342281805998881604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (A247451 (n + 1) * A307107 (n + 1)).toNat

end

end A050380.P9342281805998881604

/-! ## A050380.P3961039596964987117

`A050379(A181817(n+1)/A181816(n+1))`
-/

namespace A050380.P3961039596964987117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (SequenceMachineLib.roundAway ((A181817 (n + 1) : ℚ) / (A181816 (n + 1) : ℚ))).toNat

end

end A050380.P3961039596964987117

/-! ## A050380.P1381279633118841536

`A050379(record[A328479(n+1)])`
-/

namespace A050380.P1381279633118841536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050380.P1381279633118841536

/-! ## A050380.P3175781951887065980

`A050379(record[A046523(n+1)])`
-/

namespace A050380.P3175781951887065980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050380.P3175781951887065980

/-! ## A050380.P6174432404409553163

`A050379(record[sqrt(A278254(n+1))])`
-/

namespace A050380.P6174432404409553163
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A278254 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050379 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A050380.P6174432404409553163

/-!
# A050381: Number of series-reduced planted trees with n leaves of 2 colors.

The programs for A050381, there is no canonical definition to state claims against.
-/

/-! ## A050381.P725515028878826682

`A319254(∑[n+2])`
-/

namespace A050381.P725515028878826682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319254 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050381.P725515028878826682

/-! ## A050381.P15026957102596339286

`record[gcd(A292085(n+3), A319254(n+2))]`
-/

namespace A050381.P15026957102596339286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A292085 (n + 3)) (A319254 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050381.P15026957102596339286

/-! ## A050381.P6416876922436432950

`record[A319254(A000096(A274640(n)))]`
-/

namespace A050381.P6416876922436432950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319254 (A000096 (A274640 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050381.P6416876922436432950

/-! ## A050381.P5477059031036943660

`record[A319254(A000096(A305298(n)))]`
-/

namespace A050381.P5477059031036943660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319254 (A000096 (A305298 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050381.P5477059031036943660

/-! ## A050381.P8722581261881395324

`record[A319254(A000096(A289626(n+1)))]`
-/

namespace A050381.P8722581261881395324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319254 (A000096 (A289626 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050381.P8722581261881395324

/-!
# A050382: Number of ordered factorizations of n into primes by prime signature: A008480(A025487).

The programs for A050382, there is no canonical definition to state claims against.
-/

/-! ## A050382.P9145992025905496292

`A318762(A181820(n+1))`
-/

namespace A050382.P9145992025905496292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (A181820 (n + 1)).toNat

end

end A050382.P9145992025905496292

/-! ## A050382.P3578730974708745944

`A318762(∏{e}[A025487(n+1), A000040(#)])`
-/

namespace A050382.P3578730974708745944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 (Nat.factorization (f1 n).natAbs p)).toNat

end

end A050382.P3578730974708745944

/-! ## A050382.P15851977023872879131

`A318808(2*A181820(n+1))`
-/

namespace A050382.P15851977023872879131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (2 * A181820 (n + 1)).toNat

end

end A050382.P15851977023872879131

/-! ## A050382.P7290369169623753157

`A318810(2*A181820(n+1))`
-/

namespace A050382.P7290369169623753157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318810 (2 * A181820 (n + 1)).toNat

end

end A050382.P7290369169623753157

/-! ## A050382.P1750825160482999312

`A318808(A181820(n+1)+A181820(n+1))`
-/

namespace A050382.P1750825160482999312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (A181820 (n + 1) + A181820 (n + 1)).toNat

end

end A050382.P1750825160482999312

/-! ## A050382.P3099140364078347148

`A318810(A181820(n+1)+A181820(n+1))`
-/

namespace A050382.P3099140364078347148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318810 (A181820 (n + 1) + A181820 (n + 1)).toNat

end

end A050382.P3099140364078347148

/-! ## A050382.P8779541429328265818

`A008480(A025487(n+1))`
-/

namespace A050382.P8779541429328265818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A025487 (n + 1)).toNat

end

end A050382.P8779541429328265818

/-! ## A050382.P13282503824893542753

`A008480(record[A051466(n+2)])`
-/

namespace A050382.P13282503824893542753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050382.P13282503824893542753

/-!
# A050383: Permutation rooted trees with n nodes.

The programs for A050383, there is no canonical definition to state claims against.
-/

/-! ## A050383.P417405976755208177

`A003449(n+4)+A001221(A097998(n))`
-/

namespace A050383.P417405976755208177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003449 (n + 4) + A001221 (A097998 n).toNat

end

end A050383.P417405976755208177

/-! ## A050383.P15863333917524371425

`A066490(A289670(n+1)+A049673(n+1))`
-/

namespace A050383.P15863333917524371425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066490 (A289670 (n + 1) + A049673 (n + 1)).toNat

end

end A050383.P15863333917524371425

/-! ## A050383.P9006459658863732126

`A295634(∑[n+2]+2)+A001221(A097998(n))`
-/

namespace A050383.P9006459658863732126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295634 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A001221 (A097998 n).toNat

end

end A050383.P9006459658863732126

/-!
# A050384: Nonprimes such that n and phi(n) are relatively prime.

The programs for A050384, the canonical program `A050384.P14843473006350326744` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050384 has offset 1).

The definition of A050384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6488 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050384.P14843473006350326744

`filter[A003277(n+1), A005171(#)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A050384

/-- `filter[A003277(n+1), A005171(#)]` -/
def P14843473006350326744.Spec : Prop :=
  ∀ n, P14843473006350326744.a n = A050384 (n + 1)

theorem P14843473006350326744.correct : P14843473006350326744.Spec := by
  intro n
  simp only [A050384, Nat.add_sub_cancel]

end A050384

/-! ## A050384.P8043699815756648447

`filter[A003277(n+1), A292438(#)]`
-/

namespace A050384.P8043699815756648447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A050384.P8043699815756648447

namespace A050384

/-- `filter[A003277(n+1), A292438(#)]` -/
def P8043699815756648447.Spec : Prop :=
  ∀ n, P8043699815756648447.a n = A050384 (n + 1)

end A050384

/-! ## A050384.P10610346884186061527

`filter[A003277(n+1), A354819(#)]`
-/

namespace A050384.P10610346884186061527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A050384.P10610346884186061527

namespace A050384

/-- `filter[A003277(n+1), A354819(#)]` -/
def P10610346884186061527.Spec : Prop :=
  ∀ n, P10610346884186061527.a n = A050384 (n + 1)

end A050384

/-! ## A050384.P12557827911383808809

`filter[A230918(n+1), A354819(#)]`
-/

namespace A050384.P12557827911383808809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230918 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A050384.P12557827911383808809

namespace A050384

/-- `filter[A230918(n+1), A354819(#)]` -/
def P12557827911383808809.Spec : Prop :=
  ∀ n, P12557827911383808809.a n = A050384 (n + 1)

end A050384

/-! ## A050384.P9047827239200522363

`filter[A051532(n+1), A354819(#)]`
-/

namespace A050384.P9047827239200522363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A050384.P9047827239200522363

namespace A050384

/-- `filter[A051532(n+1), A354819(#)]` -/
def P9047827239200522363.Spec : Prop :=
  ∀ n, P9047827239200522363.a n = A050384 (n + 1)

end A050384

/-! ## A050384.P11653751545988209006

`filter[A056867(n+1), A354819(#)]`
-/

namespace A050384.P11653751545988209006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056867 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A050384.P11653751545988209006

namespace A050384

/-- `filter[A056867(n+1), A354819(#)]` -/
def P11653751545988209006.Spec : Prop :=
  ∀ n, P11653751545988209006.a n = A050384 (n + 1)

end A050384

/-! ## A050384.P12636747865520467965

`∩[A003277(n+1), A014076(n+1)]`
-/

namespace A050384.P12636747865520467965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P12636747865520467965

namespace A050384

/-- `∩[A003277(n+1), A014076(n+1)]` -/
def P12636747865520467965.Spec : Prop :=
  ∀ n, (P12636747865520467965.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P17729954117205261373

`∩[A003277(n+1), A087247(n+1)]`
-/

namespace A050384.P17729954117205261373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P17729954117205261373

namespace A050384

/-- `∩[A003277(n+1), A087247(n+1)]` -/
def P17729954117205261373.Spec : Prop :=
  ∀ n, (P17729954117205261373.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P11694893874579666578

`∩[A051532(n+1), A087247(n+1)]`
-/

namespace A050384.P11694893874579666578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P11694893874579666578

namespace A050384

/-- `∩[A051532(n+1), A087247(n+1)]` -/
def P11694893874579666578.Spec : Prop :=
  ∀ n, (P11694893874579666578.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P17073576038822231756

`∩[A056867(n+1), A087247(n+1)]`
-/

namespace A050384.P17073576038822231756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056867 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P17073576038822231756

namespace A050384

/-- `∩[A056867(n+1), A087247(n+1)]` -/
def P17073576038822231756.Spec : Prop :=
  ∀ n, (P17073576038822231756.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P6031616263509964080

`∩[A087247(n+1), A230918(n+1)]`
-/

namespace A050384.P6031616263509964080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087247 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P6031616263509964080

namespace A050384

/-- `∩[A087247(n+1), A230918(n+1)]` -/
def P6031616263509964080.Spec : Prop :=
  ∀ n, (P6031616263509964080.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P926692851001316762

`∩[A000469(n+1), A003277(n+1)]`
-/

namespace A050384.P926692851001316762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P926692851001316762

namespace A050384

/-- `∩[A000469(n+1), A003277(n+1)]` -/
def P926692851001316762.Spec : Prop :=
  ∀ n, (P926692851001316762.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P7199664145898796810

`∩[A000469(n+1), A051532(n+1)]`
-/

namespace A050384.P7199664145898796810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P7199664145898796810

namespace A050384

/-- `∩[A000469(n+1), A051532(n+1)]` -/
def P7199664145898796810.Spec : Prop :=
  ∀ n, (P7199664145898796810.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P8175272316267750031

`∩[A000469(n+1), A056867(n+1)]`
-/

namespace A050384.P8175272316267750031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056867 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P8175272316267750031

namespace A050384

/-- `∩[A000469(n+1), A056867(n+1)]` -/
def P8175272316267750031.Spec : Prop :=
  ∀ n, (P8175272316267750031.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P9073463629001747133

`∩[A000469(n+1), A230918(n+1)]`
-/

namespace A050384.P9073463629001747133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230918 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P9073463629001747133

namespace A050384

/-- `∩[A000469(n+1), A230918(n+1)]` -/
def P9073463629001747133.Spec : Prop :=
  ∀ n, (P9073463629001747133.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P8151766728717947303

`∩[A003277(n+1), A067582(n+1)]`
-/

namespace A050384.P8151766728717947303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067582 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P8151766728717947303

namespace A050384

/-- `∩[A003277(n+1), A067582(n+1)]` -/
def P8151766728717947303.Spec : Prop :=
  ∀ n, (P8151766728717947303.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P8512326304245194470

`∩[A003277(n+1), A069169(n+1)]`
-/

namespace A050384.P8512326304245194470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P8512326304245194470

namespace A050384

/-- `∩[A003277(n+1), A069169(n+1)]` -/
def P8512326304245194470.Spec : Prop :=
  ∀ n, (P8512326304245194470.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P6850770787900085755

`∩[A051532(n+1), A069169(n+1)]`
-/

namespace A050384.P6850770787900085755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P6850770787900085755

namespace A050384

/-- `∩[A051532(n+1), A069169(n+1)]` -/
def P6850770787900085755.Spec : Prop :=
  ∀ n, (P6850770787900085755.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P17911860279259042408

`∩[A003277(n+1), A023883(n+1)]`
-/

namespace A050384.P17911860279259042408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P17911860279259042408

namespace A050384

/-- `∩[A003277(n+1), A023883(n+1)]` -/
def P17911860279259042408.Spec : Prop :=
  ∀ n, (P17911860279259042408.a n : ℤ) = A050384 (n + 1)

end A050384

/-! ## A050384.P6691935030357680947

`∩[A003277(n+1), A253235(n+1)]`
-/

namespace A050384.P6691935030357680947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003277 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050384.P6691935030357680947

namespace A050384

/-- `∩[A003277(n+1), A253235(n+1)]` -/
def P6691935030357680947.Spec : Prop :=
  ∀ n, (P6691935030357680947.a n : ℤ) = A050384 (n + 1)

end A050384

/-!
# A050385: Reversion of Moebius function A008683.

The programs for A050385, there is no canonical definition to state claims against.
-/

/-! ## A050385.P7173827879236783366

`A296195(n+1)-A055958(A055963(n))`
-/

namespace A050385.P7173827879236783366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296195 (n + 1) - A055958 (A055963 n).toNat

end

end A050385.P7173827879236783366

/-! ## A050385.P12715620626118291435

`A296195(n+1)-A068510(A285012(n+1))`
-/

namespace A050385.P12715620626118291435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296195 (n + 1) - A068510 (A285012 (n + 1)).toNat

end

end A050385.P12715620626118291435

/-! ## A050385.P723014125174518266

`A296195(n+1)-Δ[A011860(A292475(n+1))]`
-/

namespace A050385.P723014125174518266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011860 (A292475 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296195 (n + 1) - (f1 (n + 1) - f1 n)

end

end A050385.P723014125174518266

/-! ## A050385.P717985409923708723

`A296195(n+1)-A217156(A296207(3*n+4))`
-/

namespace A050385.P717985409923708723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296195 (n + 1) - A217156 (A296207 (3 * n + 4)).toNat

end

end A050385.P717985409923708723

/-! ## A050385.P4731636215693540042

`A296195(∑[A043564(n)])`
-/

namespace A050385.P4731636215693540042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043564 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296195 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050385.P4731636215693540042

/-!
# A050386: Exponential reversion of Moebius function A008683.

The programs for A050386, there is no canonical definition to state claims against.
-/

/-! ## A050386.P2221105192389705607

`A182665(n^n+abs(1-n)+1)`
-/

namespace A050386.P2221105192389705607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182665 ((n ^ n : ℤ) + |1 - (n : ℤ)| + 1).toNat

end

end A050386.P2221105192389705607

/-! ## A050386.P10656751516847178528

`A172474(A081682(n))+1-n`
-/

namespace A050386.P10656751516847178528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172474 (A081682 n).toNat + (1 - (n : ℤ))

end

end A050386.P10656751516847178528

/-!
# A050387: Reversion of Liouville's lambda function A008836.

The programs for A050387, there is no canonical definition to state claims against.
-/

/-! ## A050387.P12092892933613822714

`or(1, A031218(A049157(n)))`
-/

namespace A050387.P12092892933613822714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A031218 (A049157 n).toNat)

end

end A050387.P12092892933613822714

/-! ## A050387.P11117819127029162962

`A049157(n)-A005638(A049164(n))`
-/

namespace A050387.P11117819127029162962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049157 n - A005638 (A049164 n).toNat

end

end A050387.P11117819127029162962

/-! ## A050387.P1601349645353529491

`A049157(n)-A107846(A056273(n))`
-/

namespace A050387.P1601349645353529491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049157 n - A107846 (A056273 n).toNat

end

end A050387.P1601349645353529491

/-! ## A050387.P13655785236046575094

`A049157(n)-A341026(A073431(n))`
-/

namespace A050387.P13655785236046575094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049157 n - A341026 ((A073431 n).toNat + 165)

end

end A050387.P13655785236046575094

/-! ## A050387.P3566487081919960769

`A049157(n)-A024359(A072853(n+1))`
-/

namespace A050387.P3566487081919960769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049157 n - A024359 (A072853 (n + 1)).toNat

end

end A050387.P3566487081919960769

/-!
# A050388: Exponential reversion of Liouville's lambda function A008836.

The programs for A050388, there is no canonical definition to state claims against.
-/

/-! ## A050388.P7155090998371101080

`A047263(A080836(n))+2^floor(n/2)`
-/

namespace A050388.P7155090998371101080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047263 (A080836 n).toNat : ℚ) + (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A050388.P7155090998371101080

/-! ## A050388.P12032165600251175963

`A004526(A265949(n)+A096310(n))`
-/

namespace A050388.P12032165600251175963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A265949 n + A096310 n).toNat

end

end A050388.P12032165600251175963

/-!
# A050389: Reversion of divisor function A000005.

The programs for A050389, there is no canonical definition to state claims against.
-/

/-! ## A050389.P9991485972756208819

`(-1)^n*floor(root(A216693(n+1), 5))`
-/

namespace A050389.P9991485972756208819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * ⌊(A216693 (n + 1) : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A050389.P9991485972756208819

/-!
# A050397: Reversion of sequence of involutions (A000085).

The programs for A050397, there is no canonical definition to state claims against.
-/

/-! ## A050397.P5987821873651359232

`(-1)^n*A186021(A073787(n))`
-/

namespace A050397.P5987821873651359232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A186021 (A073787 n).toNat

end

end A050397.P5987821873651359232

/-! ## A050397.P15594380679376874547

`A020639(∑{digits}[n, 8^#])*A292935(n)`
-/

namespace A050397.P15594380679376874547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 8 ^ x).sum * A292935 n

end

end A050397.P15594380679376874547

/-!
# A050398: Exponential reversion of sequence of involutions (A000085).

The programs for A050398, there is no canonical definition to state claims against.
-/

/-! ## A050398.P13206873999246712915

`A077168(A007489(n))*A168491(n)`
-/

namespace A050398.P13206873999246712915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 (A007489 n).toNat * A168491 n

end

end A050398.P13206873999246712915

/-!
# A050399: Least k such that n = A009195(k) (= gcd(phi(k), k)).

The programs for A050399, the canonical program `A050399.P12166716681260273006` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050399 has offset 1).

The definition of A050399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050399.P16235938671757827088

`(n+1)²/gcd((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], ∑[(2*n+1)*(1-4/2)^n])`
-/

namespace A050399.P16235938671757827088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) * (1 - (4 : ℚ) / 2) ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ))) (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f3 j)) : ℚ)

end

end A050399.P16235938671757827088

namespace A050399

/-- `(n+1)²/gcd((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1], ∑[(2*n+1)*(1-4/2)^n])` -/
def P16235938671757827088.Spec : Prop :=
  ∀ n, P16235938671757827088.a n = (A050399 (n + 1) : ℚ)

end A050399

/-! ## A050399.P781037159133791733

`(n+1)*A109395(n+1)`
-/

namespace A050399.P781037159133791733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A109395 (n + 1)

end

end A050399.P781037159133791733

namespace A050399

/-- `(n+1)*A109395(n+1)` -/
def P781037159133791733.Spec : Prop :=
  ∀ n, P781037159133791733.a n = A050399 (n + 1)

end A050399

/-! ## A050399.P7398301806520856372

`lcm(n+1, A373319(n+1))`
-/

namespace A050399.P7398301806520856372
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A373319 (n + 1))

end

end A050399.P7398301806520856372

namespace A050399

/-- `lcm(n+1, A373319(n+1))` -/
def P7398301806520856372.Spec : Prop :=
  ∀ n, (P7398301806520856372.a n : ℤ) = A050399 (n + 1)

end A050399

/-! ## A050399.P17566396433608349729

`(n+1)²/A009195(n+1)`
-/

namespace A050399.P17566396433608349729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A009195 (n + 1) : ℚ)

end

end A050399.P17566396433608349729

namespace A050399

/-- `(n+1)²/A009195(n+1)` -/
def P17566396433608349729.Spec : Prop :=
  ∀ n, P17566396433608349729.a n = (A050399 (n + 1) : ℚ)

end A050399

/-! ## A050399.P4098712347842098098

`(n+1)*A295126(∏{p}[n+1, #])`
-/

namespace A050399.P4098712347842098098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A295126 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A050399.P4098712347842098098

namespace A050399

/-- `(n+1)*A295126(∏{p}[n+1, #])` -/
def P4098712347842098098.Spec : Prop :=
  ∀ n, P4098712347842098098.a n = A050399 (n + 1)

end A050399

/-! ## A050399.P1271232845983888346

`(n+1)*(n+1-A331176(n+1))`
-/

namespace A050399.P1271232845983888346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n + 1 : ℤ) - A331176 (n + 1))

end

end A050399.P1271232845983888346

namespace A050399

/-- `(n+1)*(n+1-A331176(n+1))` -/
def P1271232845983888346.Spec : Prop :=
  ∀ n, P1271232845983888346.a n = A050399 (n + 1)

end A050399

/-! ## A050399.P1917470921980323353

`(n+1)²/gcd(n+1, A000010(n+1))`
-/

namespace A050399.P1917470921980323353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Int.gcd (n + 1 : ℤ) (A000010 (n + 1)) : ℚ)

end

end A050399.P1917470921980323353

namespace A050399

/-- `(n+1)²/gcd(n+1, A000010(n+1))` -/
def P1917470921980323353.Spec : Prop :=
  ∀ n, P1917470921980323353.a n = (A050399 (n + 1) : ℚ)

end A050399

/-! ## A050399.P6243781648529650433

`A052106(n+1)+A009262(n+1)`
-/

namespace A050399.P6243781648529650433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052106 (n + 1) + A009262 (n + 1)

end

end A050399.P6243781648529650433

namespace A050399

/-- `A052106(n+1)+A009262(n+1)` -/
def P6243781648529650433.Spec : Prop :=
  ∀ n, P6243781648529650433.a n = A050399 (n + 1)

end A050399

/-! ## A050399.P5996678370542517386

`(n+1)*A294650(A007947(n+1))`
-/

namespace A050399.P5996678370542517386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A294650 (A007947 (n + 1)).toNat

end

end A050399.P5996678370542517386

namespace A050399

/-- `(n+1)*A294650(A007947(n+1))` -/
def P5996678370542517386.Spec : Prop :=
  ∀ n, P5996678370542517386.a n = A050399 (n + 1)

end A050399

/-! ## A050399.P4470904802623392106

`(n+1)*A225680(A322590(n+1))`
-/

namespace A050399.P4470904802623392106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A225680 (A322590 (n + 1)).toNat

end

end A050399.P4470904802623392106

namespace A050399

/-- `(n+1)*A225680(A322590(n+1))` -/
def P4470904802623392106.Spec : Prop :=
  ∀ n, P4470904802623392106.a n = A050399 (n + 1)

end A050399

/-! ## A050399.P12166716681260273006

`(n+1)*A000027((n+1)/A009195(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A050399

/-- `(n+1)*A000027((n+1)/A009195(n+1))` -/
def P12166716681260273006.Spec : Prop :=
  ∀ n, P12166716681260273006.a n = A050399 (n + 1)

theorem P12166716681260273006.correct : P12166716681260273006.Spec := by
  intro n
  simp only [A050399, Nat.add_sub_cancel]

end A050399

/-! ## A050399.P5100680927780262567

`(n+1)²/gcd(A160356(n+1), A247074(n+1))`
-/

namespace A050399.P5100680927780262567
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (Int.gcd (A160356 (n + 1)) (A247074 (n + 1)) : ℚ)

end

end A050399.P5100680927780262567

namespace A050399

/-- `(n+1)²/gcd(A160356(n+1), A247074(n+1))` -/
def P5100680927780262567.Spec : Prop :=
  ∀ n, P5100680927780262567.a n = (A050399 (n + 1) : ℚ)

end A050399

/-! ## A050399.P9736885940226929943

`A053191(n+1)/(A000010(n+1)*A009195(n+1))`
-/

namespace A050399.P9736885940226929943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053191 (n + 1) : ℚ) / (A000010 (n + 1) * A009195 (n + 1) : ℚ)

end

end A050399.P9736885940226929943

namespace A050399

/-- `A053191(n+1)/(A000010(n+1)*A009195(n+1))` -/
def P9736885940226929943.Spec : Prop :=
  ∀ n, P9736885940226929943.a n = (A050399 (n + 1) : ℚ)

end A050399

/-! ## A050399.P15645540965954801911

`A189393(n+1)/(A002618(n+1)*A009195(n+1))`
-/

namespace A050399.P15645540965954801911
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189393 (n + 1) : ℚ) / (A002618 (n + 1) * A009195 (n + 1) : ℚ)

end

end A050399.P15645540965954801911

namespace A050399

/-- `A189393(n+1)/(A002618(n+1)*A009195(n+1))` -/
def P15645540965954801911.Spec : Prop :=
  ∀ n, P15645540965954801911.a n = (A050399 (n + 1) : ℚ)

end A050399

/-! ## A050399.P16427198412059210367

`(A076512(n+1)+A076511(n+1))²*A009195(n+1)`
-/

namespace A050399.P16427198412059210367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076512 (n + 1) + A076511 (n + 1)) ^ 2 * A009195 (n + 1)

end

end A050399.P16427198412059210367

namespace A050399

/-- `(A076512(n+1)+A076511(n+1))²*A009195(n+1)` -/
def P16427198412059210367.Spec : Prop :=
  ∀ n, P16427198412059210367.a n = A050399 (n + 1)

end A050399

/-! ## A050399.P14989045478892982418

`A002618(n+1)/A000010(n+1)²*A009262(n+1)`
-/

namespace A050399.P14989045478892982418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (n + 1) : ℚ) / (A000010 (n + 1) ^ 2 : ℚ) * (A009262 (n + 1) : ℚ)

end

end A050399.P14989045478892982418

namespace A050399

/-- `A002618(n+1)/A000010(n+1)²*A009262(n+1)` -/
def P14989045478892982418.Spec : Prop :=
  ∀ n, P14989045478892982418.a n = (A050399 (n + 1) : ℚ)

end A050399

/-! ## A050399.P2752948454335991116

`lcm((n+1)², A000010((n+1)²))/A000010(n+1)`
-/

namespace A050399.P2752948454335991116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n + 1) ^ 2 : ℤ) (A000010 ((n + 1) ^ 2)) : ℚ) / (A000010 (n + 1) : ℚ)

end

end A050399.P2752948454335991116

namespace A050399

/-- `lcm((n+1)², A000010((n+1)²))/A000010(n+1)` -/
def P2752948454335991116.Spec : Prop :=
  ∀ n, P2752948454335991116.a n = (A050399 (n + 1) : ℚ)

end A050399

/-! ## A050399.P16061173389484982948

`(n+1)*A004736(A286149(n+1))`
-/

namespace A050399.P16061173389484982948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004736 (A286149 (n + 1)).toNat

end

end A050399.P16061173389484982948

namespace A050399

/-- `(n+1)*A004736(A286149(n+1))` -/
def P16061173389484982948.Spec : Prop :=
  ∀ n, P16061173389484982948.a n = A050399 (n + 1)

end A050399

/-! ## A050399.P9288821118971843946

`(n+1)*A362414((n+1)²)`
-/

namespace A050399.P9288821118971843946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A362414 ((n + 1) ^ 2)

end

end A050399.P9288821118971843946

namespace A050399

/-- `(n+1)*A362414((n+1)²)` -/
def P9288821118971843946.Spec : Prop :=
  ∀ n, P9288821118971843946.a n = A050399 (n + 1)

end A050399

/-! ## A050399.P14056575549518115108

`A355261((n+1)*A295126(n+1))`
-/

namespace A050399.P14056575549518115108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355261 ((n + 1 : ℤ) * A295126 (n + 1)).toNat

end

end A050399.P14056575549518115108

namespace A050399

/-- `A355261((n+1)*A295126(n+1))` -/
def P14056575549518115108.Spec : Prop :=
  ∀ n, P14056575549518115108.a n = A050399 (n + 1)

end A050399

