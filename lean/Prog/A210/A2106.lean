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
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C008
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
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
# A210600: Triangle of coefficients of polynomials u(n,x) jointly generated with A210601; see the Formula section.

The programs for A210600, there is no canonical definition to state claims against.
-/

/-! ## A210600.P15966312465517824964

`(A209776(n+1)+A209775(n+1))/2`
-/

namespace A210600.P15966312465517824964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209776 (n + 1) + A209775 (n + 1) : ℚ) / 2

end

end A210600.P15966312465517824964

/-! ## A210600.P4919372600083641792

`(A210601(n+1)+A209745(n+1))/2`
-/

namespace A210600.P4919372600083641792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210601 (n + 1) + A209745 (n + 1) : ℚ) / 2

end

end A210600.P4919372600083641792

/-! ## A210600.P3918765924645058126

`A209775(n+1)+A014682(A209776(n+1)-A209775(n+1))`
-/

namespace A210600.P3918765924645058126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209775 (n + 1) + A014682 (A209776 (n + 1) - A209775 (n + 1)).toNat

end

end A210600.P3918765924645058126

/-! ## A210600.P16168800723783459908

`A273943(A209776(n+1)-A209775(n+1))+A209775(n+1)`
-/

namespace A210600.P16168800723783459908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A209776 (n + 1) - A209775 (n + 1)).toNat + A209775 (n + 1)

end

end A210600.P16168800723783459908

/-! ## A210600.P9564093699965568295

`A209745(n+1)+A014682(A210601(n+1)-A209745(n+1))`
-/

namespace A210600.P9564093699965568295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209745 (n + 1) + A014682 (A210601 (n + 1) - A209745 (n + 1)).toNat

end

end A210600.P9564093699965568295

/-! ## A210600.P15250122067069752416

`A014682(A209776(n+1)+A209775(n+1))`
-/

namespace A210600.P15250122067069752416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A209776 (n + 1) + A209775 (n + 1)).toNat

end

end A210600.P15250122067069752416

/-! ## A210600.P4477795032547932331

`A014682(A210601(n+1)+A209745(n+1))`
-/

namespace A210600.P4477795032547932331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A210601 (n + 1) + A209745 (n + 1)).toNat

end

end A210600.P4477795032547932331

/-! ## A210600.P9547866033596346602

`A273943(A209776(n+1)+A209775(n+1))`
-/

namespace A210600.P9547866033596346602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A209776 (n + 1) + A209775 (n + 1)).toNat

end

end A210600.P9547866033596346602

/-!
# A210601: Triangle of coefficients of polynomials v(n,x) jointly generated with A210600; see the Formula section.

The programs for A210601, there is no canonical definition to state claims against.
-/

/-! ## A210601.P759026042027309096

`2*A210600(n+1)-A209745(n+1)`
-/

namespace A210601.P759026042027309096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A210600 (n + 1) - A209745 (n + 1)

end

end A210601.P759026042027309096

/-! ## A210601.P9899045317472921654

`A209775(n+1)+A209776(n+1)-A209745(n+1)`
-/

namespace A210601.P9899045317472921654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209775 (n + 1) + (A209776 (n + 1) - A209745 (n + 1))

end

end A210601.P9899045317472921654

/-! ## A210601.P17165525216669806473

`A336358(A210738(n+1))`
-/

namespace A210601.P17165525216669806473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336358 (A210738 (n + 1)).toNat

end

end A210601.P17165525216669806473

/-!
# A210603: Triangle of coefficients of polynomials u(n,x) jointly generated with A210738; see the Formula section.

The programs for A210603, there is no canonical definition to state claims against.
-/

/-! ## A210603.P7313373474162235368

`A210749(n+1)+A210750(n+1)-A210738(n+1)`
-/

namespace A210603.P7313373474162235368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210749 (n + 1) + (A210750 (n + 1) - A210738 (n + 1))

end

end A210603.P7313373474162235368

/-! ## A210603.P9716733103377628150

`A210749(n+2)-Δ[A210738(n+1)]`
-/

namespace A210603.P9716733103377628150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210749 (n + 2) - (f1 (n + 1) - f1 n)

end

end A210603.P9716733103377628150

/-!
# A210604: Bisection of Recamán's sequence A005132.

The programs for A210604, there is no canonical definition to state claims against.
-/

/-! ## A210604.P13701648585802697706

`A005132(2*n)`
-/

namespace A210604.P13701648585802697706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (2 * n)

end

end A210604.P13701648585802697706

/-! ## A210604.P5500216770927191445

`A356839(n)-A210605(n+1)`
-/

namespace A210604.P5500216770927191445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356839 n - A210605 (n + 1)

end

end A210604.P5500216770927191445

/-! ## A210604.P6041965795072273512

`A209386(2*n)/2`
-/

namespace A210604.P6041965795072273512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209386 (2 * n) : ℚ) / 2

end

end A210604.P6041965795072273512

/-! ## A210604.P6771786285561462934

`A063733(Δ[n²])-1`
-/

namespace A210604.P6771786285561462934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A210604.P6771786285561462934

/-! ## A210604.P8831985108472679030

`floor(A209387(2*n)/2)`
-/

namespace A210604.P8831985108472679030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A209387 (2 * n) : ℚ) / 2⌋

end

end A210604.P8831985108472679030

/-! ## A210604.P10660389658366202906

`A334951(Δ[n²])+Δ[n²]`
-/

namespace A210604.P10660389658366202906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

end

end A210604.P10660389658366202906

/-! ## A210604.P2767533835047684268

`A334951(2*n+1)+n+1+n`
-/

namespace A210604.P2767533835047684268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334951 (2 * n + 1) + (n + 1 : ℤ) + (n : ℤ)

end

end A210604.P2767533835047684268

/-! ## A210604.P16815584451066228641

`A378120(2*n)-A377748(2*n)`
-/

namespace A210604.P16815584451066228641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378120 (2 * n) - A377748 (2 * n)

end

end A210604.P16815584451066228641

/-! ## A210604.P2742707144069478024

`A210605(n+1)-A160356(2*n+1)`
-/

namespace A210604.P2742707144069478024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210605 (n + 1) - A160356 (2 * n + 1)

end

end A210604.P2742707144069478024

/-! ## A210604.P6404768164651458845

`A382128(eq[1, val(n+1, 2)])`
-/

namespace A210604.P6404768164651458845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382128 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A210604.P6404768164651458845

/-! ## A210604.P11389682602393731598

`A382128(3*n+n+1)`
-/

namespace A210604.P11389682602393731598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382128 (3 * n + (n + 1))

end

end A210604.P11389682602393731598

/-! ## A210604.P16881953614049127272

`A001281(A209386(2*n))`
-/

namespace A210604.P16881953614049127272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A209386 (2 * n)).toNat

end

end A210604.P16881953614049127272

/-! ## A210604.P18038164426805450327

`A004524(A209387(2*n))`
-/

namespace A210604.P18038164426805450327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A209387 (2 * n)).toNat

end

end A210604.P18038164426805450327

/-!
# A210605: Bisection of Recamán's sequence A005132.

The programs for A210605, there is no canonical definition to state claims against.
-/

/-! ## A210605.P16713135792300669764

`A005132(Δ[n²])`
-/

namespace A210605.P16713135792300669764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A210605.P16713135792300669764

/-! ## A210605.P3559262487268293039

`root(A005132(2*n+1), 2)²`
-/

namespace A210605.P3559262487268293039
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A005132 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A210605.P3559262487268293039

/-! ## A210605.P6408279764729039053

`A005132(n+1+n)%(n+4)²`
-/

namespace A210605.P6408279764729039053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005132 (n + 1 + n)) ((n + 4) ^ 2 : ℤ)

end

end A210605.P6408279764729039053

/-! ## A210605.P14740871335486542178

`A000027(A005132(2*n+1))`
-/

namespace A210605.P14740871335486542178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A005132 (2 * n + 1)).toNat

end

end A210605.P14740871335486542178

/-! ## A210605.P16202307088967228381

`A356839(n)-A210604(n+1)`
-/

namespace A210605.P16202307088967228381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356839 n - A210604 (n + 1)

end

end A210605.P16202307088967228381

/-! ## A210605.P150914835633774044

`A356839(n)-A005132(2*n)`
-/

namespace A210605.P150914835633774044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356839 n - A005132 (2 * n)

end

end A210605.P150914835633774044

/-! ## A210605.P3538467836762076290

`A005132(2*n+1)^A087960(n)²`
-/

namespace A210605.P3538467836762076290
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005132 (2 * n + 1) : ℚ) ^ (A087960 n ^ 2 : ℤ)

end

end A210605.P3538467836762076290

/-! ## A210605.P9260229389302087572

`or(char[A005843(n)], A005132(2*n+1))`
-/

namespace A210605.P9260229389302087572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A005132 (2 * n + 1))

end

end A210605.P9260229389302087572

/-! ## A210605.P10467323788059200276

`A065056(2*n+1)-A065056(2*n)`
-/

namespace A210605.P10467323788059200276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065056 (2 * n + 1) - A065056 (2 * n)

end

end A210605.P10467323788059200276

/-! ## A210605.P13416352169135096882

`A005132(2*n+1)*A093178(2*n)`
-/

namespace A210605.P13416352169135096882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (2 * n + 1) * A093178 (2 * n)

end

end A210605.P13416352169135096882

/-! ## A210605.P9888525716957029003

`A005132(2*n+1)+A000007(n+1)`
-/

namespace A210605.P9888525716957029003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (2 * n + 1) + A000007 (n + 1)

end

end A210605.P9888525716957029003

/-! ## A210605.P18239736840979515315

`A005132(2*n+1)*A057427(n+1)`
-/

namespace A210605.P18239736840979515315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (2 * n + 1) * A057427 (n + 1)

end

end A210605.P18239736840979515315

/-! ## A210605.P1217459717648355617

`A209386(Δ[n²])/2`
-/

namespace A210605.P1217459717648355617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209386 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A210605.P1217459717648355617

/-! ## A210605.P6054509040608110672

`floor(A209387(Δ[n²])/2)`
-/

namespace A210605.P6054509040608110672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A209387 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌋

end

end A210605.P6054509040608110672

/-! ## A210605.P7749859855380523630

`A063733(2*(n+1))-1`
-/

namespace A210605.P7749859855380523630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (2 * (n + 1)) - 1

end

end A210605.P7749859855380523630

/-! ## A210605.P672687406490821714

`∑[or(1, Δ[A063733(2*n)])]`
-/

namespace A210605.P672687406490821714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063733 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210605.P672687406490821714

/-! ## A210605.P2711082932412142538

`floor(A209386(2*n+1)/2)`
-/

namespace A210605.P2711082932412142538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A209386 (2 * n + 1) : ℚ) / 2⌋

end

end A210605.P2711082932412142538

/-! ## A210605.P4369284987567409539

`(A209387(2*n+1)-1)/2`
-/

namespace A210605.P4369284987567409539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209387 (2 * n + 1) - 1 : ℚ) / 2

end

end A210605.P4369284987567409539

/-! ## A210605.P11028028159037728611

`A210604(n+1)+A160356(2*n+1)`
-/

namespace A210605.P11028028159037728611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210604 (n + 1) + A160356 (2 * n + 1)

end

end A210605.P11028028159037728611

/-! ## A210605.P16474524772512413489

`A005132(2*n+1)+A000035(2*n)`
-/

namespace A210605.P16474524772512413489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (2 * n + 1) + A000035 (2 * n)

end

end A210605.P16474524772512413489

/-!
# A210606: Length of the n-th edge of an L-toothpick structure which gives Recamán's sequence A005132.

The programs for A210606, there is no canonical definition to state claims against.
-/

/-! ## A210606.P15136078850444030919

`A130299(A282737(n))`
-/

namespace A210606.P15136078850444030919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130299 (A282737 n).toNat

end

end A210606.P15136078850444030919

/-! ## A210606.P12610979849512514257

`Δ[A002620(A136443(n+1)-1)]`
-/

namespace A210606.P12610979849512514257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A136443 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210606.P12610979849512514257

/-! ## A210606.P9700514120754046919

`A004526(Δ[A136443(n+1)]*A136443(n+1))`
-/

namespace A210606.P9700514120754046919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((f1 (n + 1) - f1 n) * A136443 (n + 1)).toNat

end

end A210606.P9700514120754046919

/-! ## A210606.P16054141279237865050

`A123108(Δ[A136443(n+1)]*A136443(n+1))`
-/

namespace A210606.P16054141279237865050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 ((f1 (n + 1) - f1 n) * A136443 (n + 1)).toNat

end

end A210606.P16054141279237865050

/-!
# A210607: Vertex number of an L-toothpick structure which give Recamán's sequence A005132.

The programs for A210607, there is no canonical definition to state claims against.
-/

/-! ## A210607.P9747653056316784501

`∪[2^(n+3)+4, n²]`
-/

namespace A210607.P9747653056316784501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 3) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A210607.P9747653056316784501

/-! ## A210607.P1650097328453395841

`eq[1-and(2, n), char[floor((n/2)²)]]`
-/

namespace A210607.P1650097328453395841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) / 2) ^ 2⌋

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A210607.P1650097328453395841

/-! ## A210607.P9414864664658696646

`lt[n%floor(sqrt(n+1)), 1-and(2, n)]`
-/

namespace A210607.P9414864664658696646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.sqrt (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A210607.P9414864664658696646

/-! ## A210607.P14239405118798103637

`record[(n+1)%gcd(∑{d}[n+1, #²], ∑{d}[n+1, #])]`
-/

namespace A210607.P14239405118798103637
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % Nat.gcd (∑ d ∈ Nat.divisors (f2 n), d ^ 2) (∑ d ∈ Nat.divisors (f3 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210607.P14239405118798103637

/-! ## A210607.P4315951606684236420

`record[A079904(xor(1, n))]`
-/

namespace A210607.P4315951606684236420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 (Nat.xor 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210607.P4315951606684236420

/-!
# A210608: Number of intersections after n-th stage in the structure mentioned in A210606 using semicircumferences and counting the superposed intersections several times.

The programs for A210608, there is no canonical definition to state claims against.
-/

/-! ## A210608.P15620701252432011611

`A179239(A210609(n+1))`
-/

namespace A210608.P15620701252432011611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179239 (A210609 (n + 1)).toNat

end

end A210608.P15620701252432011611

/-! ## A210608.P12041552086641085217

`A023808(A210609(n+1)+1)`
-/

namespace A210608.P12041552086641085217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023808 (A210609 (n + 1) + 1).toNat

end

end A210608.P12041552086641085217

/-! ## A210608.P10628678833589769229

`A023810(A210609(n+1)+1)`
-/

namespace A210608.P10628678833589769229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023810 (A210609 (n + 1) + 1).toNat

end

end A210608.P10628678833589769229

/-! ## A210608.P16531331222659570331

`A210609(n+1)+A011737(n)`
-/

namespace A210608.P16531331222659570331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210609 (n + 1) + A011737 n

end

end A210608.P16531331222659570331

/-! ## A210608.P8469403272493147943

`A210609(n+1)+char[A042070(n)]`
-/

namespace A210608.P8469403272493147943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042070 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210609 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A210608.P8469403272493147943

/-!
# A210609: Number of intersections after n-th stage in the structure mentioned in A210606 using semicircumferences and counting the superposed intersections only once.

The programs for A210609, there is no canonical definition to state claims against.
-/

/-! ## A210609.P1868590164175357234

`A187769(A210608(n+1))`
-/

namespace A210609.P1868590164175357234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187769 (A210608 (n + 1)).toNat

end

end A210609.P1868590164175357234

/-! ## A210609.P14460071877849147733

`A081331(A210608(n+1)+1)`
-/

namespace A210609.P14460071877849147733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081331 (A210608 (n + 1) + 1).toNat

end

end A210609.P14460071877849147733

/-! ## A210609.P8841794534671567973

`A111660(2*A210608(n+1))`
-/

namespace A210609.P8841794534671567973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (2 * A210608 (n + 1)).toNat

end

end A210609.P8841794534671567973

/-! ## A210609.P9016125899405834745

`A210608(n+1)-A011737(n)`
-/

namespace A210609.P9016125899405834745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210608 (n + 1) - A011737 n

end

end A210609.P9016125899405834745

/-! ## A210609.P13260093097600492376

`A210608(n+1)-char[A042070(n)]`
-/

namespace A210609.P13260093097600492376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042070 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210608 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A210609.P13260093097600492376

/-!
# A210610: Number of semicircumferences in the n-th spiral of the structure mentioned in A210606.

The programs for A210610, there is no canonical definition to state claims against.
-/

/-! ## A210610.P9731466777488219793

`A119632(lt[1, A119632(n+1)]+1)`
-/

namespace A210610.P9731466777488219793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119632 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A210610.P9731466777488219793

/-!
# A210611: Records in A119632.

The programs for A210611, there is no canonical definition to state claims against.
-/

/-! ## A210611.P1280794096325298085

`record[A119632(n+1)]`
-/

namespace A210611.P1280794096325298085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119632 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210611.P1280794096325298085

/-!
# A210612: Number of nonnegative integers smaller than the largest number of Recamán's A005132 after the n-th stage that are not yet in Recamán's sequence at that stage.

The programs for A210612, there is no canonical definition to state claims against.
-/

/-! ## A210612.P903835448919346318

`A005132(A187829(n+1)-A076213(n))`
-/

namespace A210612.P903835448919346318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 (A187829 (n + 1) - A076213 n).toNat

end

end A210612.P903835448919346318

/-! ## A210612.P6163146749695781781

`A118201(A187829(n+1)-A076213(n))`
-/

namespace A210612.P6163146749695781781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118201 (A187829 (n + 1) - A076213 n).toNat

end

end A210612.P6163146749695781781

/-! ## A210612.P9342024243396427776

`A277558(A187829(n+1)-A076213(n))`
-/

namespace A210612.P9342024243396427776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277558 (A187829 (n + 1) - A076213 n).toNat

end

end A210612.P9342024243396427776

/-! ## A210612.P7882914628449777232

`A378120(n)-A377748(A077168(n))`
-/

namespace A210612.P7882914628449777232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378120 n - A377748 (A077168 n).toNat

end

end A210612.P7882914628449777232

/-! ## A210612.P8421128888507977930

`A118201(A345899(n+5)%A345926(3*n+1)+n)`
-/

namespace A210612.P8421128888507977930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118201 (Int.tmod (A345899 (n + 5)) (A345926 (3 * n + 1)) + (n : ℤ)).toNat

end

end A210612.P8421128888507977930

/-!
# A210613: Records in A210612.

The programs for A210613, there is no canonical definition to state claims against.
-/

/-! ## A210613.P15422311867848946258

`record[A210612(n+1)]`
-/

namespace A210613.P15422311867848946258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210613.P15422311867848946258

/-!
# A210614: Numbers without digit 0 or 5 whose "waterfall sequence" ends in 0,0,0,...

The programs for A210614, there is no canonical definition to state claims against.
-/

/-! ## A210614.P12721844288443359384

`∩[A210652(n+1), A261189(n+1)]`
-/

namespace A210614.P12721844288443359384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261189 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210614.P12721844288443359384

/-!
# A210615: Least semiprime dividing n, or 0 if no semiprime divides n.

The programs for A210615, there is no canonical definition to state claims against.
-/

/-! ## A210615.P387744232145525842

`A061228(n+1)%(n+1)*A014673(n+1)`
-/

namespace A210615.P387744232145525842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061228 (n + 1)) (n + 1 : ℤ) * A014673 (n + 1)

end

end A210615.P387744232145525842

/-! ## A210615.P17278532510462098539

`∏{d}[A020639(n+1), A020639((n+1)/#)%(n+1)]`
-/

namespace A210615.P17278532510462098539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat) (n + 1 : ℤ)

end

end A210615.P17278532510462098539

/-! ## A210615.P10649338130388077149

`A001414(A014673(n+1))*A020639(n+1)`
-/

namespace A210615.P10649338130388077149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A014673 (n + 1)).toNat * A020639 (n + 1)

end

end A210615.P10649338130388077149

/-! ## A210615.P15684925839874773600

`A001414(A014673(n+1))*A014673(2*(n+1))`
-/

namespace A210615.P15684925839874773600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A014673 (n + 1)).toNat * A014673 (2 * (n + 1))

end

end A210615.P15684925839874773600

/-! ## A210615.P11079875881915560116

`A020639(n+1)%(n+1)*A020639(A032742(n+1))`
-/

namespace A210615.P11079875881915560116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (n + 1)) (n + 1 : ℤ) * A020639 (A032742 (n + 1)).toNat

end

end A210615.P11079875881915560116

/-!
# A210616: Digit reversal of n-th semiprime.

The programs for A210616, there is no canonical definition to state claims against.
-/

/-! ## A210616.P17622828878934266395

`A004086(A001358(n+1))`
-/

namespace A210616.P17622828878934266395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A001358 (n + 1)).toNat

end

end A210616.P17622828878934266395

/-! ## A210616.P14072496433774370872

`A004086(A186621(n+1)+1)`
-/

namespace A210616.P14072496433774370872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A186621 (n + 1) + 1).toNat

end

end A210616.P14072496433774370872

/-! ## A210616.P10361902117902760462

`A004086(A088707(n+1)-1)`
-/

namespace A210616.P10361902117902760462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A088707 (n + 1) - 1).toNat

end

end A210616.P10361902117902760462

/-! ## A210616.P7876532045395837249

`A004086(eq[2, A001222(n+1)]+1)`
-/

namespace A210616.P7876532045395837249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A210616.P7876532045395837249

/-! ## A210616.P845720624744346831

`A004086(A100493(n+1)-(n+1))`
-/

namespace A210616.P845720624744346831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A100493 (n + 1) - (n + 1 : ℤ)).toNat

end

end A210616.P845720624744346831

/-! ## A210616.P3806994520134190524

`A004086(A176540(n+2))`
-/

namespace A210616.P3806994520134190524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A176540 (n + 2)).toNat

end

end A210616.P3806994520134190524

/-! ## A210616.P14272182226820273527

`A004086(lt[1, A105700(n)])`
-/

namespace A210616.P14272182226820273527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A210616.P14272182226820273527

/-! ## A210616.P15319992054434786146

`A004086(eq[2, A105700(n)])`
-/

namespace A210616.P15319992054434786146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210616.P15319992054434786146

/-! ## A210616.P17950636439096950806

`A004086(eq[2, A284289(n)])`
-/

namespace A210616.P17950636439096950806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A210616.P17950636439096950806

/-! ## A210616.P14998950363025156156

`A135020(A075818(n+1))`
-/

namespace A210616.P14998950363025156156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135020 (A075818 (n + 1)).toNat

end

end A210616.P14998950363025156156

/-!
# A210619: Triangle of numbers with n 1's and n 0's in their representation in base of Fibonacci numbers (A014417).

The programs for A210619, the canonical program `A210619.P17701669326897386950` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210619 has offset 1).

The definition of A210619 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210619.P2537886890649893652

`∑[A035214(n)*A328082(n+1)]`
-/

namespace A210619.P2537886890649893652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n * A328082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210619.P2537886890649893652

namespace A210619

/-- `∑[A035214(n)*A328082(n+1)]` -/
def P2537886890649893652.Spec : Prop :=
  ∀ n, P2537886890649893652.a n = A210619 (n + 1)

end A210619

/-! ## A210619.P17701669326897386950

`∑[A000045(A099375(n))*A035214(n)]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A210619

/-- `∑[A000045(A099375(n))*A035214(n)]` -/
def P17701669326897386950.Spec : Prop :=
  ∀ n, P17701669326897386950.a n = A210619 (n + 1)

theorem P17701669326897386950.correct : P17701669326897386950.Spec := by
  intro n
  simp only [A210619, Nat.add_sub_cancel]

end A210619

/-! ## A210619.P6607833087779039959

`A143061(A185870(n+1)+2)-1`
-/

namespace A210619.P6607833087779039959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A185870 (n + 1) + 2).toNat - 1

end

end A210619.P6607833087779039959

namespace A210619

/-- `A143061(A185870(n+1)+2)-1` -/
def P6607833087779039959.Spec : Prop :=
  ∀ n, P6607833087779039959.a n = A210619 (n + 1)

end A210619

/-! ## A210619.P5194054443616893478

`A143061(A185870(n+1))+A000071(A099375(n))`
-/

namespace A210619.P5194054443616893478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (A185870 (n + 1)).toNat + A000071 (A099375 n).toNat

end

end A210619.P5194054443616893478

namespace A210619

/-- `A143061(A185870(n+1))+A000071(A099375(n))` -/
def P5194054443616893478.Spec : Prop :=
  ∀ n, P5194054443616893478.a n = A210619 (n + 1)

end A210619

/-! ## A210619.P10883886312748954833

`A348953(p?[2*n+1])+A143061(A185870(n+1)+2)`
-/

namespace A210619.P10883886312748954833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348953 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + A143061 (A185870 (n + 1) + 2).toNat

end

end A210619.P10883886312748954833

namespace A210619

/-- `A348953(p?[2*n+1])+A143061(A185870(n+1)+2)` -/
def P10883886312748954833.Spec : Prop :=
  ∀ n, P10883886312748954833.a n = A210619 (n + 1)

end A210619

/-! ## A210619.P2361794538196519802

`A348953(A065091(n+1))+A143061(A185870(n+1)+2)`
-/

namespace A210619.P2361794538196519802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348953 (A065091 (n + 1)).toNat + A143061 (A185870 (n + 1) + 2).toNat

end

end A210619.P2361794538196519802

namespace A210619

/-- `A348953(A065091(n+1))+A143061(A185870(n+1)+2)` -/
def P2361794538196519802.Spec : Prop :=
  ∀ n, P2361794538196519802.a n = A210619 (n + 1)

end A210619

/-! ## A210619.P7280183382609663791

`record[A057336(2*(n+1))]`
-/

namespace A210619.P7280183382609663791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057336 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210619.P7280183382609663791

namespace A210619

/-- `record[A057336(2*(n+1))]` -/
def P7280183382609663791.Spec : Prop :=
  ∀ n, P7280183382609663791.a n = A210619 (n + 1)

end A210619

/-! ## A210619.P15055369224140556

`A057336(A043569(n+1))`
-/

namespace A210619.P15055369224140556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057336 (A043569 (n + 1)).toNat

end

end A210619.P15055369224140556

namespace A210619

/-- `A057336(A043569(n+1))` -/
def P15055369224140556.Spec : Prop :=
  ∀ n, P15055369224140556.a n = A210619 (n + 1)

end A210619

/-! ## A210619.P2847512028808274815

`A328082(n+1)+A048680(A081118(n+1))`
-/

namespace A210619.P2847512028808274815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328082 (n + 1) + A048680 (A081118 (n + 1)).toNat

end

end A210619.P2847512028808274815

namespace A210619

/-- `A328082(n+1)+A048680(A081118(n+1))` -/
def P2847512028808274815.Spec : Prop :=
  ∀ n, P2847512028808274815.a n = A210619 (n + 1)

end A210619

/-! ## A210619.P17145804026570875656

`A048680(A164874(n+1))`
-/

namespace A210619.P17145804026570875656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (A164874 (n + 1)).toNat

end

end A210619.P17145804026570875656

namespace A210619

/-- `A048680(A164874(n+1))` -/
def P17145804026570875656.Spec : Prop :=
  ∀ n, P17145804026570875656.a n = A210619 (n + 1)

end A210619

/-!
# A210622: Decimal expansion of 377/120.

The programs for A210622, the canonical program `A210622.P16719463754218995573` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210622 has offset 1).

The definition of A210622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210622.P16719463754218995573

`a(C(3, n))!` with `a(0)=3, a(1)=1, a(2)=4`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210622

/-- `a(C(3, n))!` -/
def P16719463754218995573.Spec : Prop :=
  ∀ n, (P16719463754218995573.a n : ℤ) = A210622 (n + 1)

theorem P16719463754218995573.correct : P16719463754218995573.Spec := by
  intro n
  simp only [A210622, Nat.add_sub_cancel]

end A210622

/-!
# A210625: Least semiprime dividing digit reversal of n, or 0 if no such factor.

The programs for A210625, there is no canonical definition to state claims against.
-/

/-! ## A210625.P17005654887888769870

`A210615(A004086(n+1))`
-/

namespace A210625.P17005654887888769870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210615 (A004086 (n + 1)).toNat

end

end A210625.P17005654887888769870

/-! ## A210625.P2234854545260379650

`A210615(A135020(2*(n+1)))`
-/

namespace A210625.P2234854545260379650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210615 (A135020 (2 * (n + 1))).toNat

end

end A210625.P2234854545260379650

/-! ## A210625.P8508447736806762452

`A210615(A068634(n+1)/A337927(n+1))`
-/

namespace A210625.P8508447736806762452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210615 (SequenceMachineLib.roundAway ((A068634 (n + 1) : ℚ) / (A337927 (n + 1) : ℚ))).toNat

end

end A210625.P8508447736806762452

/-! ## A210625.P18425265331726006712

`A046092(n)%A123402(A104020(n+1))`
-/

namespace A210625.P18425265331726006712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046092 n) (A123402 (A104020 (n + 1)).toNat)

end

end A210625.P18425265331726006712

/-!
# A210627: Constants r_n arising in study of polynomials of least deviation from zero in several variables.

The programs for A210627, there is no canonical definition to state claims against.
-/

/-! ## A210627.P3521964610911326043

`abs(Δ[A362693(n+3)])`
-/

namespace A210627.P3521964610911326043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362693 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A210627.P3521964610911326043

/-! ## A210627.P12551636769015283167

`(n+3)*A038049(n+3)`
-/

namespace A210627.P12551636769015283167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A038049 (n + 3)

end

end A210627.P12551636769015283167

/-! ## A210627.P16423021808975526425

`(n+3)*A216857(n+3)`
-/

namespace A210627.P16423021808975526425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A216857 (n + 3)

end

end A210627.P16423021808975526425

/-! ## A210627.P924044041242002447

`A038053(n+4)-A038049(n+3)`
-/

namespace A210627.P924044041242002447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038053 (n + 4) - A038049 (n + 3)

end

end A210627.P924044041242002447

/-! ## A210627.P3331714639137997828

`A038049(n+3)²/A349562(n+2)`
-/

namespace A210627.P3331714639137997828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038049 (n + 3) ^ 2 : ℚ) / (A349562 (n + 2) : ℚ)

end

end A210627.P3331714639137997828

/-!
# A210628: Expansion of (-1 + 2*x + sqrt( 1 - 4*x^2)) / (2*x) in powers of x.

The programs for A210628, the canonical program `A210628.P787028128316081024` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210628 has offset 0).

The definition of A210628 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097331, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A210628.P787028128316081024

`(-1)^n*A097331(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A210628

/-- `(-1)^n*A097331(n)` -/
def P787028128316081024.Spec : Prop :=
  ∀ n, P787028128316081024.a n = A210628 n

theorem P787028128316081024.correct : P787028128316081024.Spec := by
  intro n
  simp only [A210628]

end A210628

/-! ## A210628.P4951377075573194882

`A000038(n)-A097331(n)`
-/

namespace A210628.P4951377075573194882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n - A097331 n

end

end A210628.P4951377075573194882

namespace A210628

/-- `A000038(n)-A097331(n)` -/
def P4951377075573194882.Spec : Prop :=
  ∀ n, P4951377075573194882.a n = A210628 n

end A210628

/-! ## A210628.P6650880803138839063

`A057077(n)*A105523(n)`
-/

namespace A210628.P6650880803138839063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A105523 n

end

end A210628.P6650880803138839063

namespace A210628

/-- `A057077(n)*A105523(n)` -/
def P6650880803138839063.Spec : Prop :=
  ∀ n, P6650880803138839063.a n = A210628 n

end A210628

/-! ## A210628.P1599737821539653063

`A087960(n)*A090192(n)`
-/

namespace A210628.P1599737821539653063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A090192 n

end

end A210628.P1599737821539653063

namespace A210628

/-- `A087960(n)*A090192(n)` -/
def P1599737821539653063.Spec : Prop :=
  ∀ n, P1599737821539653063.a n = A210628 n

end A210628

/-! ## A210628.P5200011289376637253

`A097331(n)*A115638(n)`
-/

namespace A210628.P5200011289376637253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n * A115638 n

end

end A210628.P5200011289376637253

namespace A210628

/-- `A097331(n)*A115638(n)` -/
def P5200011289376637253.Spec : Prop :=
  ∀ n, P5200011289376637253.a n = A210628 n

end A210628

/-! ## A210628.P17854916569659174727

`A105523(n)*A117569(n)`
-/

namespace A210628.P17854916569659174727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 n * A117569 n

end

end A210628.P17854916569659174727

namespace A210628

/-- `A105523(n)*A117569(n)` -/
def P17854916569659174727.Spec : Prop :=
  ∀ n, P17854916569659174727.a n = A210628 n

end A210628

/-! ## A210628.P14913428392150421821

`A105523(n)*A121238(n)`
-/

namespace A210628.P14913428392150421821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 n * A121238 n

end

end A210628.P14913428392150421821

namespace A210628

/-- `A105523(n)*A121238(n)` -/
def P14913428392150421821.Spec : Prop :=
  ∀ n, P14913428392150421821.a n = A210628 n

end A210628

/-! ## A210628.P6066429102640641360

`A090192(n)*A145063(n)`
-/

namespace A210628.P6066429102640641360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n * A145063 n

end

end A210628.P6066429102640641360

namespace A210628

/-- `A090192(n)*A145063(n)` -/
def P6066429102640641360.Spec : Prop :=
  ∀ n, P6066429102640641360.a n = A210628 n

end A210628

/-! ## A210628.P17631773518163241336

`A090192(n)*A163805(n)`
-/

namespace A210628.P17631773518163241336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n * A163805 n

end

end A210628.P17631773518163241336

namespace A210628

/-- `A090192(n)*A163805(n)` -/
def P17631773518163241336.Spec : Prop :=
  ∀ n, P17631773518163241336.a n = A210628 n

end A210628

/-! ## A210628.P13014677656706367242

`A097331(n)*A164117(n)`
-/

namespace A210628.P13014677656706367242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n * A164117 n

end

end A210628.P13014677656706367242

namespace A210628

/-- `A097331(n)*A164117(n)` -/
def P13014677656706367242.Spec : Prop :=
  ∀ n, P13014677656706367242.a n = A210628 n

end A210628

/-! ## A210628.P4909810347565030794

`A105523(n)*A257196(n)`
-/

namespace A210628.P4909810347565030794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105523 n * A257196 n

end

end A210628.P4909810347565030794

namespace A210628

/-- `A105523(n)*A257196(n)` -/
def P4909810347565030794.Spec : Prop :=
  ∀ n, P4909810347565030794.a n = A210628 n

end A210628

/-! ## A210628.P12365233180819126169

`A097331(n)*A280193(n)`
-/

namespace A210628.P12365233180819126169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n * A280193 n

end

end A210628.P12365233180819126169

namespace A210628

/-- `A097331(n)*A280193(n)` -/
def P12365233180819126169.Spec : Prop :=
  ∀ n, P12365233180819126169.a n = A210628 n

end A210628

/-! ## A210628.P13591930882506059277

`A097331(n)*A300547(n)`
-/

namespace A210628.P13591930882506059277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n * A300547 n

end

end A210628.P13591930882506059277

namespace A210628

/-- `A097331(n)*A300547(n)` -/
def P13591930882506059277.Spec : Prop :=
  ∀ n, P13591930882506059277.a n = A210628 n

end A210628

/-! ## A210628.P5426194481145626151

`A097331(n)*A323191(n)`
-/

namespace A210628.P5426194481145626151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n * A323191 n

end

end A210628.P5426194481145626151

namespace A210628

/-- `A097331(n)*A323191(n)` -/
def P5426194481145626151.Spec : Prop :=
  ∀ n, P5426194481145626151.a n = A210628 n

end A210628

/-! ## A210628.P17748647708529004284

`A097331(n)*A323202(n)`
-/

namespace A210628.P17748647708529004284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n * A323202 n

end

end A210628.P17748647708529004284

namespace A210628

/-- `A097331(n)*A323202(n)` -/
def P17748647708529004284.Spec : Prop :=
  ∀ n, P17748647708529004284.a n = A210628 n

end A210628

/-! ## A210628.P12091054439366165116

`abs(A105523(n))*A033999(n)`
-/

namespace A210628.P12091054439366165116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A105523 n| * A033999 n

end

end A210628.P12091054439366165116

namespace A210628

/-- `abs(A105523(n))*A033999(n)` -/
def P12091054439366165116.Spec : Prop :=
  ∀ n, P12091054439366165116.a n = A210628 n

end A210628

/-! ## A210628.P14750664792566648926

`A057077(n+1)*A090192(n)`
-/

namespace A210628.P14750664792566648926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (n + 1) * A090192 n

end

end A210628.P14750664792566648926

namespace A210628

/-- `A057077(n+1)*A090192(n)` -/
def P14750664792566648926.Spec : Prop :=
  ∀ n, P14750664792566648926.a n = A210628 n

end A210628

/-! ## A210628.P2593182979954292710

`A071935(n+1)*A090192(n)`
-/

namespace A210628.P2593182979954292710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071935 (n + 1) * A090192 n

end

end A210628.P2593182979954292710

namespace A210628

/-- `A071935(n+1)*A090192(n)` -/
def P2593182979954292710.Spec : Prop :=
  ∀ n, P2593182979954292710.a n = A210628 n

end A210628

/-! ## A210628.P6498306011179771220

`A097331(n)*A153881(n+1)`
-/

namespace A210628.P6498306011179771220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 n * A153881 (n + 1)

end

end A210628.P6498306011179771220

namespace A210628

/-- `A097331(n)*A153881(n+1)` -/
def P6498306011179771220.Spec : Prop :=
  ∀ n, P6498306011179771220.a n = A210628 n

end A210628

/-! ## A210628.P13405960535077599990

`A090192(n)*A359792(n+1)`
-/

namespace A210628.P13405960535077599990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 n * A359792 (n + 1)

end

end A210628.P13405960535077599990

namespace A210628

/-- `A090192(n)*A359792(n+1)` -/
def P13405960535077599990.Spec : Prop :=
  ∀ n, P13405960535077599990.a n = A210628 n

end A210628

/-!
# A210629: Each entry is the first of four consecutive primes with equal digital sum.

The programs for A210629, there is no canonical definition to state claims against.
-/

/-! ## A210629.P7376909082877287046

`A395623(A020752(n+1))`
-/

namespace A210629.P7376909082877287046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395623 (A020752 (n + 1)).toNat

end

end A210629.P7376909082877287046

/-!
# A210632: G.f. for Ehrhart quasi-polynomials for hyperplane arrangements of type E_8.

The programs for A210632, there is no canonical definition to state claims against.
-/

/-! ## A210632.P3953453548411358465

`A048766(Δ[A034503(n+1)]²)`
-/

namespace A210632.P3953453548411358465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A210632.P3953453548411358465

/-! ## A210632.P15576816043328553370

`A108611(A034486(n+1)+A029376(n))`
-/

namespace A210632.P15576816043328553370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A034486 (n + 1) + A029376 n).toNat

end

end A210632.P15576816043328553370

/-! ## A210632.P7962807190311424137

`A002264(A034484(n+1)%A141214(n))`
-/

namespace A210632.P7962807190311424137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.tmod (A034484 (n + 1)) (A141214 n)).toNat

end

end A210632.P7962807190311424137

/-! ## A210632.P16286390924008381791

`A102382(A034567(n+1))`
-/

namespace A210632.P16286390924008381791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102382 (A034567 (n + 1)).toNat

end

end A210632.P16286390924008381791

/-! ## A210632.P6935005121901995407

`A282290(A034529(n+1))`
-/

namespace A210632.P6935005121901995407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282290 (A034529 (n + 1)).toNat

end

end A210632.P6935005121901995407

/-!
# A210634: G.f. for Ehrhart quasi-polynomials for hyperplane arrangements of type E_6.

The programs for A210634, there is no canonical definition to state claims against.
-/

/-! ## A210634.P1254902907953449798

`∑[∑[A001222(A326626(n)!)]]`
-/

namespace A210634.P1254902907953449798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (A326626 n).toNat)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210634.P1254902907953449798

/-! ## A210634.P14133751726826953673

`∑[∑[A001222(A326628(n)!)]]`
-/

namespace A210634.P14133751726826953673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (A326628 n).toNat)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210634.P14133751726826953673

/-! ## A210634.P10305510395859828002

`∑[∑[A001222(A326629(n)!)]]`
-/

namespace A210634.P10305510395859828002
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.factorial (A326629 n).toNat)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210634.P10305510395859828002

/-! ## A210634.P7240596921863402155

`A064458(A304706(A004086(n)))`
-/

namespace A210634.P7240596921863402155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (A304706 (A004086 n).toNat).toNat

end

end A210634.P7240596921863402155

/-!
# A210635: Array read by descending antidiagonals: a(n,w) = ((w - (n mod w) - 1) + n) - (n mod w), n >= 0, w >= 1.

The programs for A210635, the canonical program `A210635.P12986531844571725851` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210635 has offset 0).

The definition of A210635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210635.P12986531844571725851

`A003056(n)-2*A051777(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A210635

/-- `A003056(n)-2*A051777(n+1)` -/
def P12986531844571725851.Spec : Prop :=
  ∀ n, P12986531844571725851.a n = A210635 n

theorem P12986531844571725851.correct : P12986531844571725851.Spec := by
  intro n
  simp only [A210635]

end A210635

/-! ## A210635.P15617933233605594476

`∑[A073424(n)]-2*A051777(n+1)`
-/

namespace A210635.P15617933233605594476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A051777 (n + 1)

end

end A210635.P15617933233605594476

namespace A210635

/-- `∑[A073424(n)]-2*A051777(n+1)` -/
def P15617933233605594476.Spec : Prop :=
  ∀ n, P15617933233605594476.a n = A210635 n

end A210635

/-! ## A210635.P9321996904450480949

`A002024(n+1)-(2*A051777(n+1)+1)`
-/

namespace A210635.P9321996904450480949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - (2 * A051777 (n + 1) + 1)

end

end A210635.P9321996904450480949

namespace A210635

/-- `A002024(n+1)-(2*A051777(n+1)+1)` -/
def P9321996904450480949.Spec : Prop :=
  ∀ n, P9321996904450480949.a n = A210635 n

end A210635

/-! ## A210635.P1435487578779268321

`A049581(A057944(n)+A051777(n+1))`
-/

namespace A210635.P1435487578779268321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A057944 n + A051777 (n + 1)).toNat

end

end A210635.P1435487578779268321

namespace A210635

/-- `A049581(A057944(n)+A051777(n+1))` -/
def P1435487578779268321.Spec : Prop :=
  ∀ n, P1435487578779268321.a n = A210635 n

end A210635

/-! ## A210635.P4622019241586606170

`A114327(A057944(n)+A051777(n+1))`
-/

namespace A210635.P4622019241586606170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A057944 n + A051777 (n + 1)).toNat

end

end A210635.P4622019241586606170

namespace A210635

/-- `A114327(A057944(n)+A051777(n+1))` -/
def P4622019241586606170.Spec : Prop :=
  ∀ n, P4622019241586606170.a n = A210635 n

end A210635

/-!
# A210638: Iterated Rényi numbers. Square array A(n,k), n>=0, k>=0, read by antidiagonals, A(n,k) = exponential transform applied n times to the constant function -1, evaluated at k.

The programs for A210638, there is no canonical definition to state claims against.
-/

/-! ## A210638.P14080497016044291878

`A164092(2^A097805(n))`
-/

namespace A210638.P14080497016044291878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164092 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A097805 n : ℤ))).toNat

end

end A210638.P14080497016044291878

/-! ## A210638.P1345833546923997337

`A316441(2^A339650(n))`
-/

namespace A210638.P1345833546923997337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A339650 n : ℤ))).toNat

end

end A210638.P1345833546923997337

/-! ## A210638.P8443689592521201552

`A016385(A097805(n)^3)`
-/

namespace A210638.P8443689592521201552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016385 (A097805 n ^ 3).toNat

end

end A210638.P8443689592521201552

/-! ## A210638.P15822422355474789029

`A330861(A330891(n+1)+7)-3`
-/

namespace A210638.P15822422355474789029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330861 (A330891 (n + 1) + 7).toNat - 3

end

end A210638.P15822422355474789029

/-!
# A210639: Nearest integer to (4/3)*Pi*n^(3/2).

The programs for A210639, the canonical program `A210639.P7634417620128025962` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210639 has offset 0).

The definition of A210639 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210639.P7634417620128025962

`round(4/3*π*n^(3/2))`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210639

/-- `round(4/3*π*n^(3/2))` -/
def P7634417620128025962.Spec : Prop :=
  ∀ n, P7634417620128025962.a n = A210639 n

theorem P7634417620128025962.correct : P7634417620128025962.Spec := by
  intro n
  simp only [A210639]

end A210639

/-! ## A210639.P1903824131464245425

`A117609(n)-A210641(n)`
-/

namespace A210639.P1903824131464245425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117609 n - A210641 n

end

end A210639.P1903824131464245425

namespace A210639

/-- `A117609(n)-A210641(n)` -/
def P1903824131464245425.Spec : Prop :=
  ∀ n, P1903824131464245425.a n = A210639 n

end A210639

/-! ## A210639.P12228854054559231442

`∑[A005875(n)]-A210641(n)`
-/

namespace A210639.P12228854054559231442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A210641 n

end

end A210639.P12228854054559231442

namespace A210639

/-- `∑[A005875(n)]-A210641(n)` -/
def P12228854054559231442.Spec : Prop :=
  ∀ n, P12228854054559231442.a n = A210639 n

end A210639

/-! ## A210639.P12640543963252047781

`∑[abs(A213384(n))]-A210641(n)`
-/

namespace A210639.P12640543963252047781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A213384 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A210641 n

end

end A210639.P12640543963252047781

namespace A210639

/-- `∑[abs(A213384(n))]-A210641(n)` -/
def P12640543963252047781.Spec : Prop :=
  ∀ n, P12640543963252047781.a n = A210639 n

end A210639

/-! ## A210639.P1091038074069522594

`∑[sqrt(A138202(n))]-A210641(n)`
-/

namespace A210639.P1091038074069522594
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A138202 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A210641 n : ℝ)

end

end A210639.P1091038074069522594

namespace A210639

/-- `∑[sqrt(A138202(n))]-A210641(n)` -/
def P1091038074069522594.Spec : Prop :=
  ∀ n, P1091038074069522594.a n = (A210639 n : ℝ)

end A210639

/-! ## A210639.P17274257144558337345

`∑[A004015(2*n)]-A210641(n)`
-/

namespace A210639.P17274257144558337345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A210641 n

end

end A210639.P17274257144558337345

namespace A210639

/-- `∑[A004015(2*n)]-A210641(n)` -/
def P17274257144558337345.Spec : Prop :=
  ∀ n, P17274257144558337345.a n = A210639 n

end A210639

/-! ## A210639.P7861789183610429998

`∑[A004013(A008586(n))]-A210641(n)`
-/

namespace A210639.P7861789183610429998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (A008586 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A210641 n

end

end A210639.P7861789183610429998

namespace A210639

/-- `∑[A004013(A008586(n))]-A210641(n)` -/
def P7861789183610429998.Spec : Prop :=
  ∀ n, P7861789183610429998.a n = A210639 n

end A210639

/-! ## A210639.P3827499454645566430

`∑[A004013(A008598(n))]-A210641(n)`
-/

namespace A210639.P3827499454645566430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (A008598 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A210641 n

end

end A210639.P3827499454645566430

namespace A210639

/-- `∑[A004013(A008598(n))]-A210641(n)` -/
def P3827499454645566430.Spec : Prop :=
  ∀ n, P3827499454645566430.a n = A210639 n

end A210639

/-!
# A210641: A117609(n)-A210639(n): Difference between number of lattice points in the ball x^2+y^2+z^2 <= n and the volume of this ball rounded to the nearest integer.

The programs for A210641, there is no canonical definition to state claims against.
-/

/-! ## A210641.P4788584593337610362

`A117609(n)-A210639(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A210641.P4788584593337610362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117609 n - A210639 n

end

end A210641.P4788584593337610362

/-! ## A210641.P11031015215022848045

`∑[A005875(n)]-A210639(n)`
-/

namespace A210641.P11031015215022848045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005875 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A210639 n

end

end A210641.P11031015215022848045

/-! ## A210641.P4298505719461127517

`∑[abs(A213384(n))]-A210639(n)`
-/

namespace A210641.P4298505719461127517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A213384 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A210639 n

end

end A210641.P4298505719461127517

/-! ## A210641.P12857329526260602420

`∑[sqrt(A138202(n))]-A210639(n)`
-/

namespace A210641.P12857329526260602420
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A138202 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A210639 n : ℝ)

end

end A210641.P12857329526260602420

/-! ## A210641.P9528299817916777506

`∑[A004015(2*n)]-A210639(n)`
-/

namespace A210641.P9528299817916777506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004015 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A210639 n

end

end A210641.P9528299817916777506

/-! ## A210641.P16415675273508871073

`∑[A014455(2*n)]-A210639(n)`
-/

namespace A210641.P16415675273508871073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014455 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A210639 n

end

end A210641.P16415675273508871073

/-! ## A210641.P17058194065267593533

`∑[A169783(4*n)]-A210639(n)`
-/

namespace A210641.P17058194065267593533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169783 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A210639 n

end

end A210641.P17058194065267593533

/-! ## A210641.P13403710355394910246

`∑[A319078(4*n)]-A210639(n)`
-/

namespace A210641.P13403710355394910246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319078 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A210639 n

end

end A210641.P13403710355394910246

/-! ## A210641.P8632900780029190843

`∑[A004013(A008586(n))]-A210639(n)`
-/

namespace A210641.P8632900780029190843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004013 (A008586 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A210639 n

end

end A210641.P8632900780029190843

/-!
# A210643: Areas A of the triangles such that A, the sides and the three altitudes are integers.

The programs for A210643, there is no canonical definition to state claims against.
-/

/-! ## A210643.P18135206008845567739

`30*A242894(2*n+1)`
-/

namespace A210643.P18135206008845567739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A242894 (2 * n + 1)

end

end A210643.P18135206008845567739

/-! ## A210643.P12670188335424425073

`A315670(∩[A315670(3*n), A216679(n+1)])`
-/

namespace A210643.P12670188335424425073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315670 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216679 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315670 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A210643.P12670188335424425073

/-!
# A210645: Area A of the triangles such that A, the sides and one of the altitudes are four consecutive integers of an arithmetic progression d.

The programs for A210645, the canonical program `A210645.P11962332448011689548` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210645 has offset 1).

The definition of A210645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210645.P11962332448011689548

`84*(n+1)²`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210645

/-- `84*(n+1)²` -/
def P11962332448011689548.Spec : Prop :=
  ∀ n, (P11962332448011689548.a n : ℤ) = A210645 (n + 1)

theorem P11962332448011689548.correct : P11962332448011689548.Spec := by
  intro n
  simp only [A210645, Nat.add_sub_cancel]

end A210645

/-! ## A210645.P17631041172168743859

`record[84*(1-n)²]`
-/

namespace A210645.P17631041172168743859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  84 * (1 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210645.P17631041172168743859

namespace A210645

/-- `record[84*(1-n)²]` -/
def P17631041172168743859.Spec : Prop :=
  ∀ n, P17631041172168743859.a n = A210645 (n + 1)

end A210645

/-! ## A210645.P10224606604421899401

`∑[84*comp[lcm(2, n)]]`
-/

namespace A210645.P10224606604421899401
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  84 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210645.P10224606604421899401

namespace A210645

/-- `∑[84*comp[lcm(2, n)]]` -/
def P10224606604421899401.Spec : Prop :=
  ∀ n, (P10224606604421899401.a n : ℤ) = A210645 (n + 1)

end A210645

/-! ## A210645.P3918181037684504700

`∑[record[84*xor(1, n)]]`
-/

namespace A210645.P3918181037684504700
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  84 * Nat.xor 1 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210645.P3918181037684504700

namespace A210645

/-- `∑[record[84*xor(1, n)]]` -/
def P3918181037684504700.Spec : Prop :=
  ∀ n, (P3918181037684504700.a n : ℤ) = A210645 (n + 1)

end A210645

/-! ## A210645.P8833673778282444041

`∑[21*or(4, 8*n)]`
-/

namespace A210645.P8833673778282444041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21 * Nat.lor 4 (8 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210645.P8833673778282444041

namespace A210645

/-- `∑[21*or(4, 8*n)]` -/
def P8833673778282444041.Spec : Prop :=
  ∀ n, (P8833673778282444041.a n : ℤ) = A210645 (n + 1)

end A210645

/-! ## A210645.P3466270109061567728

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=84, a(1)=336, a(2)=756`
-/

namespace A210645.P3466270109061567728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [84, 336, 756] fun n a =>
  3 * a (n - 1) - 3 * a (n - 2) + a (n - 3)

end

end A210645.P3466270109061567728

namespace A210645

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P3466270109061567728.Spec : Prop :=
  ∀ n, P3466270109061567728.a n = A210645 (n + 1)

theorem P3466270109061567728.correct : P3466270109061567728.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A210645, Nat.add_sub_cancel, A210645.P3466270109061567728.a, A210645.P11962332448011689548.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A210645, Nat.add_sub_cancel, A210645.P3466270109061567728.a, A210645.P11962332448011689548.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [h1, h2, h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A210645

/-! ## A210645.P11353224030777714059

`2*A158626(n+1)+2`
-/

namespace A210645.P11353224030777714059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158626 (n + 1) + 2

end

end A210645.P11353224030777714059

namespace A210645

/-- `2*A158626(n+1)+2` -/
def P11353224030777714059.Spec : Prop :=
  ∀ n, P11353224030777714059.a n = A210645 (n + 1)

theorem P11353224030777714059.correct : P11353224030777714059.Spec := by
  intro n
  simp only [A210645, Nat.add_sub_cancel, A210645.P11353224030777714059.a, A210645.P11962332448011689548.a, A158626, A158626.P2926879302269881387.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210645

/-! ## A210645.P4712815837599278869

`2*A158604(n+1)-2`
-/

namespace A210645.P4712815837599278869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A158604 (n + 1) - 2

end

end A210645.P4712815837599278869

namespace A210645

/-- `2*A158604(n+1)-2` -/
def P4712815837599278869.Spec : Prop :=
  ∀ n, P4712815837599278869.a n = A210645 (n + 1)

theorem P4712815837599278869.correct : P4712815837599278869.Spec := by
  intro n
  simp only [A210645, Nat.add_sub_cancel, A210645.P4712815837599278869.a, A210645.P11962332448011689548.a, A158604, A158604.P12131569488476952127.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210645

/-! ## A210645.P9736831123783691670

`3*A158554(n+1)+3`
-/

namespace A210645.P9736831123783691670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A158554 (n + 1) + 3

end

end A210645.P9736831123783691670

namespace A210645

/-- `3*A158554(n+1)+3` -/
def P9736831123783691670.Spec : Prop :=
  ∀ n, P9736831123783691670.a n = A210645 (n + 1)

theorem P9736831123783691670.correct : P9736831123783691670.Spec := by
  intro n
  simp only [A210645, Nat.add_sub_cancel, A210645.P9736831123783691670.a, A210645.P11962332448011689548.a, A158554, A158554.P844351326912008475.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210645

/-! ## A210645.P15944161464601227870

`A158730(n+1)+A108211(n+1)`
-/

namespace A210645.P15944161464601227870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158730 (n + 1) + A108211 (n + 1)

end

end A210645.P15944161464601227870

namespace A210645

/-- `A158730(n+1)+A108211(n+1)` -/
def P15944161464601227870.Spec : Prop :=
  ∀ n, P15944161464601227870.a n = A210645 (n + 1)

theorem P15944161464601227870.correct : P15944161464601227870.Spec := by
  intro n
  simp only [A210645, Nat.add_sub_cancel, A210645.P15944161464601227870.a, A210645.P11962332448011689548.a, A108211, A108211.P17641433821935710279.a, A158730, A158730.P13211681437165183510.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210645

/-! ## A210645.P17726252192650563752

`A158638(n+1)+A136017(n+1)`
-/

namespace A210645.P17726252192650563752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158638 (n + 1) + A136017 (n + 1)

end

end A210645.P17726252192650563752

namespace A210645

/-- `A158638(n+1)+A136017(n+1)` -/
def P17726252192650563752.Spec : Prop :=
  ∀ n, P17726252192650563752.a n = A210645 (n + 1)

theorem P17726252192650563752.correct : P17726252192650563752.Spec := by
  intro n
  simp only [A210645, Nat.add_sub_cancel, A210645.P17726252192650563752.a, A210645.P11962332448011689548.a, A136017, A136017.P15592961706062905529.a, A158638, A158638.P7332495969947453421.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210645

/-! ## A210645.P8429573984531397029

`A158588(n+1)+A157916(n+1)`
-/

namespace A210645.P8429573984531397029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158588 (n + 1) + A157916 (n + 1)

end

end A210645.P8429573984531397029

namespace A210645

/-- `A158588(n+1)+A157916(n+1)` -/
def P8429573984531397029.Spec : Prop :=
  ∀ n, P8429573984531397029.a n = A210645 (n + 1)

theorem P8429573984531397029.correct : P8429573984531397029.Spec := by
  intro n
  simp only [A210645, Nat.add_sub_cancel, A210645.P8429573984531397029.a, A210645.P11962332448011689548.a, A157916, A157916.P15741034503057197196.a, A158588, A158588.P7989450247486132535.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210645

/-! ## A210645.P11487412965730766414

`A158693(n+1)+A157889(n+1)`
-/

namespace A210645.P11487412965730766414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158693 (n + 1) + A157889 (n + 1)

end

end A210645.P11487412965730766414

namespace A210645

/-- `A158693(n+1)+A157889(n+1)` -/
def P11487412965730766414.Spec : Prop :=
  ∀ n, P11487412965730766414.a n = A210645 (n + 1)

theorem P11487412965730766414.correct : P11487412965730766414.Spec := by
  intro n
  simp only [A210645, Nat.add_sub_cancel, A210645.P11487412965730766414.a, A210645.P11962332448011689548.a, A157889, A157889.P17648701603193564117.a, A158693, A158693.P7172618368171940871.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210645

/-! ## A210645.P10730100369764771650

`A158646(n+1)+A158560(n+1)`
-/

namespace A210645.P10730100369764771650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158646 (n + 1) + A158560 (n + 1)

end

end A210645.P10730100369764771650

namespace A210645

/-- `A158646(n+1)+A158560(n+1)` -/
def P10730100369764771650.Spec : Prop :=
  ∀ n, P10730100369764771650.a n = A210645 (n + 1)

theorem P10730100369764771650.correct : P10730100369764771650.Spec := by
  intro n
  simp only [A210645, Nat.add_sub_cancel, A210645.P10730100369764771650.a, A210645.P11962332448011689548.a, A158560, A158560.P7964568299904866016.a, A158646, A158646.P4612205236885990431.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210645

/-! ## A210645.P6240396740175120666

`A158660(n+1)+A158554(n+1)`
-/

namespace A210645.P6240396740175120666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158660 (n + 1) + A158554 (n + 1)

end

end A210645.P6240396740175120666

namespace A210645

/-- `A158660(n+1)+A158554(n+1)` -/
def P6240396740175120666.Spec : Prop :=
  ∀ n, P6240396740175120666.a n = A210645 (n + 1)

theorem P6240396740175120666.correct : P6240396740175120666.Spec := by
  intro n
  simp only [A210645, Nat.add_sub_cancel, A210645.P6240396740175120666.a, A210645.P11962332448011689548.a, A158554, A158554.P844351326912008475.a, A158660, A158660.P11271612442515931679.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210645

/-! ## A210645.P17657935264039164970

`A158680(n+1)+A158537(n+1)`
-/

namespace A210645.P17657935264039164970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158680 (n + 1) + A158537 (n + 1)

end

end A210645.P17657935264039164970

namespace A210645

/-- `A158680(n+1)+A158537(n+1)` -/
def P17657935264039164970.Spec : Prop :=
  ∀ n, P17657935264039164970.a n = A210645 (n + 1)

theorem P17657935264039164970.correct : P17657935264039164970.Spec := by
  intro n
  simp only [A210645, Nat.add_sub_cancel, A210645.P17657935264039164970.a, A210645.P11962332448011689548.a, A158537, A158537.P7872366161731036146.a, A158680, A158680.P17335874925688295304.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210645

/-! ## A210645.P18265622184538741104

`A158736(n+1)+A158482(n+1)`
-/

namespace A210645.P18265622184538741104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158736 (n + 1) + A158482 (n + 1)

end

end A210645.P18265622184538741104

namespace A210645

/-- `A158736(n+1)+A158482(n+1)` -/
def P18265622184538741104.Spec : Prop :=
  ∀ n, P18265622184538741104.a n = A210645 (n + 1)

theorem P18265622184538741104.correct : P18265622184538741104.Spec := by
  intro n
  simp only [A210645, Nat.add_sub_cancel, A210645.P18265622184538741104.a, A210645.P11962332448011689548.a, A158482, A158482.P9203100436480343542.a, A158736, A158736.P1921437562563384827.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210645

/-! ## A210645.P8402507862047115319

`A158632(n+1)+A158596(n+1)`
-/

namespace A210645.P8402507862047115319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158632 (n + 1) + A158596 (n + 1)

end

end A210645.P8402507862047115319

namespace A210645

/-- `A158632(n+1)+A158596(n+1)` -/
def P8402507862047115319.Spec : Prop :=
  ∀ n, P8402507862047115319.a n = A210645 (n + 1)

theorem P8402507862047115319.correct : P8402507862047115319.Spec := by
  intro n
  simp only [A210645, Nat.add_sub_cancel, A210645.P8402507862047115319.a, A210645.P11962332448011689548.a, A158596, A158596.P944518473653823919.a, A158632, A158632.P11291645308737386721.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210645

/-! ## A210645.P16633542026418774244

`A055438(n+1)-A157474(n+1)`
-/

namespace A210645.P16633542026418774244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055438 (n + 1) - A157474 (n + 1)

end

end A210645.P16633542026418774244

namespace A210645

/-- `A055438(n+1)-A157474(n+1)` -/
def P16633542026418774244.Spec : Prop :=
  ∀ n, P16633542026418774244.a n = A210645 (n + 1)

theorem P16633542026418774244.correct : P16633542026418774244.Spec := by
  intro n
  simp only [A210645, Nat.add_sub_cancel, A210645.P16633542026418774244.a, A210645.P11962332448011689548.a, A055438, A055438.P9723371937741257450.a, A157474, A157474.P9009052472332458401.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210645

/-! ## A210645.P839852530538390049

`A157659(n+1)-A157446(n+1)`
-/

namespace A210645.P839852530538390049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157659 (n + 1) - A157446 (n + 1)

end

end A210645.P839852530538390049

namespace A210645

/-- `A157659(n+1)-A157446(n+1)` -/
def P839852530538390049.Spec : Prop :=
  ∀ n, P839852530538390049.a n = A210645 (n + 1)

theorem P839852530538390049.correct : P839852530538390049.Spec := by
  intro n
  simp only [A210645, Nat.add_sub_cancel, A210645.P839852530538390049.a, A210645.P11962332448011689548.a, A157446, A157446.P6226797554834386845.a, A157659, A157659.P9951143036320821416.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A210645

/-!
# A210646: Primes which are the sum of two numbers of the form k*(k+1)^2/2.

The programs for A210646, there is no canonical definition to state claims against.
-/

/-! ## A210646.P8993648414058733834

`A288833(A270988(n))`
-/

namespace A210646.P8993648414058733834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288833 (A270988 n).toNat

end

end A210646.P8993648414058733834

/-!
# A210647: Least nonnegative m such that k(n) + k(m) is prime, where k(n) = n*(n+1)^2/2.

The programs for A210647, there is no canonical definition to state claims against.
-/

/-! ## A210647.P11296595611835382105

`A246262(and(5*floor(10^n/9), ∑[10^n]))`
-/

namespace A210647.P11296595611835382105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246262 (Int.land (5 * ⌊(10 ^ n : ℚ) / 9⌋) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A210647.P11296595611835382105

/-!
# A210651: a(n)=least odd number k such that 3*k*2^n-1 is a prime number.

The programs for A210651, there is no canonical definition to state claims against.
-/

/-! ## A210651.P14329216038525624648

`A264097(n+1)/3`
-/

namespace A210651.P14329216038525624648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A264097 (n + 1) : ℚ) / 3

end

end A210651.P14329216038525624648

/-! ## A210651.P2471128786079368079

`2*A285808(n+1)-1`
-/

namespace A210651.P2471128786079368079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A285808 (n + 1) - 1

end

end A210651.P2471128786079368079

/-! ## A210651.P11651844415103359775

`A000265(A285808(n+1)+A285808(n+1)-1)`
-/

namespace A210651.P11651844415103359775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A285808 (n + 1) + (A285808 (n + 1) - 1)).toNat

end

end A210651.P11651844415103359775

/-! ## A210651.P5703753728806014752

`A004273(A285808(n+1))`
-/

namespace A210651.P5703753728806014752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A285808 (n + 1)).toNat

end

end A210651.P5703753728806014752

/-! ## A210651.P1264224715579044110

`A005843(A285808(n+1)-1)+1`
-/

namespace A210651.P1264224715579044110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A285808 (n + 1) - 1).toNat + 1

end

end A210651.P1264224715579044110

/-! ## A210651.P8232147613717657344

`A002264(A264097(n+1))`
-/

namespace A210651.P8232147613717657344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A264097 (n + 1)).toNat

end

end A210651.P8232147613717657344

/-! ## A210651.P5437424122584346280

`A008620(A264097(n+1)-1)`
-/

namespace A210651.P5437424122584346280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A264097 (n + 1) - 1).toNat

end

end A210651.P5437424122584346280

/-! ## A210651.P391209061162644336

`A285808(n+1)+A118759(A285808(n+1)-1)`
-/

namespace A210651.P391209061162644336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285808 (n + 1) + A118759 (A285808 (n + 1) - 1).toNat

end

end A210651.P391209061162644336

/-!
# A210652: Numbers whose waterfall sequence ends in 0,0,0,....

The programs for A210652, there is no canonical definition to state claims against.
-/

/-! ## A210652.P11916554489979432854

`A092454(A246079(n+2)^A079724(n+1))`
-/

namespace A210652.P11916554489979432854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092454 (SequenceMachineLib.roundAway ((A246079 (n + 2) : ℚ) ^ (A079724 (n + 1) : ℤ))).toNat

end

end A210652.P11916554489979432854

/-! ## A210652.P15501776463875932791

`A092454(n+2)%A038814(A374631(n))`
-/

namespace A210652.P15501776463875932791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092454 (n + 2)) (A038814 (A374631 n).toNat)

end

end A210652.P15501776463875932791

/-! ## A210652.P8336319138214446591

`lt[A054054(2*n), A031286(A370867(n+1))]`
-/

namespace A210652.P8336319138214446591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031286 (A370867 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A210652.P8336319138214446591

/-! ## A210652.P15756410249767282046

`lt[A267167(A007954(2*n)), A257480(n+1)]`
-/

namespace A210652.P15756410249767282046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267167 (A007954 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A210652.P15756410249767282046

/-! ## A210652.P15619425646592165652

`A257222(n+2)+A121373(A144799(3*(n+1)))`
-/

namespace A210652.P15619425646592165652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257222 (n + 2) + A121373 (A144799 (3 * (n + 1))).toNat

end

end A210652.P15619425646592165652

/-!
# A210654: Triangle read by rows: T(n,k) (1 <= k <= n) = number of irreducible coverings by edges of the complete bipartite graph K_{n,k}.

The programs for A210654, there is no canonical definition to state claims against.
-/

/-! ## A210654.P18259249110004382947

`A344156(A120458(n))`
-/

namespace A210654.P18259249110004382947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344156 (A120458 n).toNat

end

end A210654.P18259249110004382947

/-! ## A210654.P17332013206459498037

`A344156(A076014(n+1))`
-/

namespace A210654.P17332013206459498037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344156 (A076014 (n + 1)).toNat

end

end A210654.P17332013206459498037

/-! ## A210654.P5537780181021000962

`A052126(A156348(n+5)+A145268(n))`
-/

namespace A210654.P5537780181021000962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A156348 (n + 5) + A145268 n).toNat

end

end A210654.P5537780181021000962

/-! ## A210654.P13046626625277074579

`and(A045326(n+2), A274431(A120458(n)))`
-/

namespace A210654.P13046626625277074579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A045326 (n + 2)) (A274431 (A120458 n).toNat)

end

end A210654.P13046626625277074579

/-!
# A210655: Number of irreducible coverings by edges of the complete bipartite graph K_{n,n}; main diagonal of A210654.

The programs for A210655, there is no canonical definition to state claims against.
-/

/-! ## A210655.P7762469745277472367

`A210654(∑[n+1])`
-/

namespace A210655.P7762469745277472367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210654 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A210655.P7762469745277472367

/-! ## A210655.P16917153514310915468

`record[A210654(∑[A008621(n)])]`
-/

namespace A210655.P16917153514310915468
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210654 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210655.P16917153514310915468

/-! ## A210655.P4718396934677472289

`record[A210654(n+1)/A130534(n)]`
-/

namespace A210655.P4718396934677472289
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210654 (n + 1) : ℚ) / (A130534 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210655.P4718396934677472289

/-! ## A210655.P13897773784552386710

`record[A210654(n+1)/A180960(n)]`
-/

namespace A210655.P13897773784552386710
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210654 (n + 1) : ℚ) / (A180960 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210655.P13897773784552386710

/-! ## A210655.P3501897522262360870

`record[A210654(n+1)/A210636(n)]`
-/

namespace A210655.P3501897522262360870
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210654 (n + 1) : ℚ) / (A210636 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210655.P3501897522262360870

/-!
# A210656: Expansion of psi(x^3) * phi(-x)^2 / phi(-x^2) in power of x where phi(), psi() are Ramanujan theta functions.

The programs for A210656, there is no canonical definition to state claims against.
-/

/-! ## A210656.P2731393823244401466

`A152467(8*A001940(n))`
-/

namespace A210656.P2731393823244401466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152467 (8 * A001940 n).toNat

end

end A210656.P2731393823244401466

/-! ## A210656.P10933530872841123423

`A002265(A001936(3*n+2))`
-/

namespace A210656.P10933530872841123423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A001936 (3 * n + 2)).toNat

end

end A210656.P10933530872841123423

/-!
# A210657: a(0)=1; thereafter a(n) = -2*Sum_{k=1..n} binomial(2n,2k)*a(n-k).

The programs for A210657, there is no canonical definition to state claims against.
-/

/-! ## A210657.P17511253246174101064

`A156179(2*n)`
-/

namespace A210657.P17511253246174101064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156179 (2 * n)

end

end A210657.P17511253246174101064

/-! ## A210657.P14954893738559962447

`A156179(A004277(n))+A000038(n)`
-/

namespace A210657.P14954893738559962447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156179 (A004277 n).toNat + A000038 n

end

end A210657.P14954893738559962447

/-! ## A210657.P2059387914137143462

`A156179(A005843(n))^A062157(n)²`
-/

namespace A210657.P2059387914137143462
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156179 (A005843 n).toNat : ℚ) ^ (A062157 n ^ 2 : ℤ)

end

end A210657.P2059387914137143462

/-! ## A210657.P3522462469678497779

`A156179(A005843(n))+A000007(n+1)`
-/

namespace A210657.P3522462469678497779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156179 (A005843 n).toNat + A000007 (n + 1)

end

end A210657.P3522462469678497779

/-! ## A210657.P4813627856600140547

`A156179(A005843(n))/A001222(A078496(n+4))`
-/

namespace A210657.P4813627856600140547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A156179 (A005843 n).toNat : ℚ) / (A001222 (A078496 (n + 4)).toNat : ℚ)

end

end A210657.P4813627856600140547

/-!
# A210658: Triangle of partial sums of Catalan numbers.

The programs for A210658, there is no canonical definition to state claims against.
-/

/-! ## A210658.P17986736088097057328

`A197432(A130328(n))`
-/

namespace A210658.P17986736088097057328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197432 (A130328 n).toNat

end

end A210658.P17986736088097057328

/-!
# A210659: The smallest possible depth of an arithmetic expression for n using only +, *, parentheses and the minimum number of 1's.

The programs for A210659, there is no canonical definition to state claims against.
-/

/-! ## A210659.P4575525433873795097

`A001221(lcm(A031923(n+1), A124151(n+1)))`
-/

namespace A210659.P4575525433873795097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A031923 (n + 1)) (A124151 (n + 1)))

end

end A210659.P4575525433873795097

/-! ## A210659.P17040970605822664067

`A001221(xor(A011371(n), A199697(n+1)))`
-/

namespace A210659.P17040970605822664067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A011371 n) (A199697 (n + 1))).toNat

end

end A210659.P17040970605822664067

/-! ## A210659.P8159270539338662081

`A001221(A282803(n)-A280243(n))`
-/

namespace A210659.P8159270539338662081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A282803 n - A280243 n).toNat

end

end A210659.P8159270539338662081

/-! ## A210659.P1718896612190305756

`A001221(A300221(n+1)+A032043(n))`
-/

namespace A210659.P1718896612190305756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A300221 (n + 1) + A032043 n).toNat

end

end A210659.P1718896612190305756

/-! ## A210659.P7397895451987906789

`A001221(A378086(n+1)+A192092(n))`
-/

namespace A210659.P7397895451987906789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A378086 (n + 1) + A192092 n).toNat

end

end A210659.P7397895451987906789

/-!
# A210661: The total number of ways to linearly order the connected components of each functional digraph over all functions f:{1,2,...,n}->{1,2,...,n}.

The programs for A210661, there is no canonical definition to state claims against.
-/

/-! ## A210661.P8342490685335886379

`A249041(n^(n+1)+2)`
-/

namespace A210661.P8342490685335886379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249041 (n ^ (n + 1) + 2)

end

end A210661.P8342490685335886379

/-!
# A210662: Triangle read by rows: T(n,k) (1 <= k <= n) = number of monomer-dimer tilings of an n X k board.

The programs for A210662, there is no canonical definition to state claims against.
-/

/-! ## A210662.P15172250164606675645

`A120562(A041557(n+1))`
-/

namespace A210662.P15172250164606675645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120562 (A041557 (n + 1)).toNat

end

end A210662.P15172250164606675645

/-! ## A210662.P16355770079652659268

`A061395(A300910(n)+A260511(n+1))`
-/

namespace A210662.P16355770079652659268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A300910 n + A260511 (n + 1)).toNat

end

end A210662.P16355770079652659268

/-!
# A210663: Irregular triangle read by rows: row n gives decimal representatives for cycles in de Bruijn graph G_n.

The programs for A210663, there is no canonical definition to state claims against.
-/

/-! ## A210663.P16603774412363744212

`A308590(A261764(n+1)%A045876(3*n+4))`
-/

namespace A210663.P16603774412363744212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308590 (Int.tmod (A261764 (n + 1)) (A045876 (3 * n + 4))).toNat

end

end A210663.P16603774412363744212

/-! ## A210663.P3162675248786763618

`A094937(A211608(n+1))`
-/

namespace A210663.P3162675248786763618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094937 (A211608 (n + 1)).toNat

end

end A210663.P3162675248786763618

/-! ## A210663.P5231942344943432529

`A055778(A256069(n+1))`
-/

namespace A210663.P5231942344943432529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055778 (A256069 (n + 1)).toNat

end

end A210663.P5231942344943432529

/-! ## A210663.P1140120839659632750

`A094937(A222060(n+1))`
-/

namespace A210663.P1140120839659632750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094937 (A222060 (n + 1)).toNat

end

end A210663.P1140120839659632750

/-! ## A210663.P1397283793275460366

`A381423(A222063(n+1))`
-/

namespace A210663.P1397283793275460366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381423 (A222063 (n + 1)).toNat

end

end A210663.P1397283793275460366

/-!
# A210664: Square array read by upwards antidiagonals: T(m,n) is the number of simple 3-connected triangulations of a closed region in the plane with m+3 given external edges and 3n+m internal edges, m>=0, n>=1.

The programs for A210664, there is no canonical definition to state claims against.
-/

/-! ## A210664.P13048683831052338770

`A010879(A289207(n)^A292628(n))`
-/

namespace A210664.P13048683831052338770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (SequenceMachineLib.roundAway ((A289207 n : ℚ) ^ (A292628 n : ℤ))).toNat

end

end A210664.P13048683831052338770

/-! ## A210664.P4945922561924894315

`C(A056943(n), A303975(A091042(n)²))`
-/

namespace A210664.P4945922561924894315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A056943 n).toNat (A303975 (A091042 n ^ 2).toNat).toNat

end

end A210664.P4945922561924894315

/-! ## A210664.P17190382629045135708

`A088617(n)-A195150(A308676(n+1))`
-/

namespace A210664.P17190382629045135708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 n - A195150 (A308676 (n + 1)).toNat

end

end A210664.P17190382629045135708

/-! ## A210664.P13499965248170159096

`A054819(n+1)%A038605(A001333(n))`
-/

namespace A210664.P13499965248170159096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054819 (n + 1)) (A038605 (A001333 n).toNat)

end

end A210664.P13499965248170159096

/-! ## A210664.P15865690241412366972

`A163352(A278208(n+1)+A266042(n+1))`
-/

namespace A210664.P15865690241412366972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (A278208 (n + 1) + A266042 (n + 1)).toNat

end

end A210664.P15865690241412366972

/-!
# A210665: Least semiprime dividing digit reversal of n-th semiprime, or 0 if no such factor.

The programs for A210665, there is no canonical definition to state claims against.
-/

/-! ## A210665.P3765629332729570260

`A210615(A210616(n+1))`
-/

namespace A210665.P3765629332729570260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210615 (A210616 (n + 1)).toNat

end

end A210665.P3765629332729570260

/-! ## A210665.P8505370546961636228

`A210625(A001358(n+1))`
-/

namespace A210665.P8505370546961636228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210625 (A001358 (n + 1)).toNat

end

end A210665.P8505370546961636228

/-! ## A210665.P1516016376815004685

`A210625(A176540(n+2))`
-/

namespace A210665.P1516016376815004685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210625 (A176540 (n + 2)).toNat

end

end A210665.P1516016376815004685

/-! ## A210665.P17579847159362690759

`A210625(A186621(n+1)+1)`
-/

namespace A210665.P17579847159362690759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210625 (A186621 (n + 1) + 1).toNat

end

end A210665.P17579847159362690759

/-! ## A210665.P4894632733531170141

`A210625(eq[2, A001222(n+1)]+1)`
-/

namespace A210665.P4894632733531170141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210625 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A210665.P4894632733531170141

/-! ## A210665.P15656429575100748307

`A210615(A004086(10*A001358(n+1)))`
-/

namespace A210665.P15656429575100748307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210615 (A004086 (10 * A001358 (n + 1)).toNat).toNat

end

end A210665.P15656429575100748307

/-!
# A210666: Numbers with at least three digits in which all digits but one are the same.

The programs for A210666, there is no canonical definition to state claims against.
-/

/-! ## A210666.P8349289597325901404

`lt[A178788(n), A008683(A332550(n))²]`
-/

namespace A210666.P8349289597325901404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A332550 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A210666.P8349289597325901404

/-! ## A210666.P4587872590017997006

`eq[A001222(A332550(n)), A107846(n)]`
-/

namespace A210666.P4587872590017997006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A332550 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107846 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A210666.P4587872590017997006

/-! ## A210666.P17080129470212415401

`lt[A178788(n), A320485(A139337(n))]`
-/

namespace A210666.P17080129470212415401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320485 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A210666.P17080129470212415401

/-! ## A210666.P16256137021625912981

`A233583(A031955(n+82))+1`
-/

namespace A210666.P16256137021625912981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A031955 (n + 82)).toNat + 1

end

end A210666.P16256137021625912981

/-! ## A210666.P10091283578853686922

`A233583(comp[A266279(n+1)])+1`
-/

namespace A210666.P10091283578853686922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266279 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A210666.P10091283578853686922

/-! ## A210666.P16849213740445925176

`A233583(comp[and(n, A320485(n))])+1`
-/

namespace A210666.P16849213740445925176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A320485 n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A210666.P16849213740445925176

/-! ## A210666.P3224857689310525144

`(A031955(n+82)%A145704(A031955(n+82)))%A037029(n+1)`
-/

namespace A210666.P3224857689310525144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (A031955 (n + 82)) (A145704 (A031955 (n + 82)).toNat)) (A037029 (n + 1))

end

end A210666.P3224857689310525144

/-! ## A210666.P11463815350421162950

`eq[17, A332550(n)]`
-/

namespace A210666.P11463815350421162950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332550 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A210666.P11463815350421162950

/-! ## A210666.P4782271850643492992

`lt[sin(1), sin(A196222(n))]`
-/

namespace A210666.P4782271850643492992
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (1 : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (A196222 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A210666.P4782271850643492992

/-! ## A210666.P17819335453984847037

`eq[3, A047726(n+1)]+1`
-/

namespace A210666.P17819335453984847037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A210666.P17819335453984847037

/-! ## A210666.P16417842318592504594

`A059995(A291269(n+1))`
-/

namespace A210666.P16417842318592504594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A291269 (n + 1)).toNat

end

end A210666.P16417842318592504594

/-! ## A210666.P6540505819166802329

`eq[3, A047726(A028310(n))]`
-/

namespace A210666.P6540505819166802329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A210666.P6540505819166802329

/-! ## A210666.P10840409769596073913

`eq[5, A061602(A139337(n))]`
-/

namespace A210666.P10840409769596073913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 (A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A210666.P10840409769596073913

/-! ## A210666.P6999383167855429012

`eq[3, A047726(A233583(n+1))]`
-/

namespace A210666.P6999383167855429012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A210666.P6999383167855429012

/-! ## A210666.P12615025673025344610

`eq[1, A010888(2*A139337(n))]`
-/

namespace A210666.P12615025673025344610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (2 * A139337 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A210666.P12615025673025344610

/-! ## A210666.P249487352107803075

`eq[A154051(n+5), A196222(n)]`
-/

namespace A210666.P249487352107803075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154051 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196222 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A210666.P249487352107803075

/-! ## A210666.P17035092304579705101

`lt[A178788(n), A008683(2*A332550(n))]`
-/

namespace A210666.P17035092304579705101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178788 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (2 * A332550 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A210666.P17035092304579705101

/-! ## A210666.P11065172011379611046

`lt[n, A103609(n*A320486(A139337(n)))]`
-/

namespace A210666.P11065172011379611046
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 ((n : ℤ) * A320486 (A139337 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A210666.P11065172011379611046

/-!
# A210667: Number of equivalence classes of S_n under transformations of positionally adjacent elements of the form abc <--> acb where a

The programs for A210667, there is no canonical definition to state claims against.
-/

/-! ## A210667.P8709997268946886378

`A248148((n+1)*a(n-1))-a(n-1)` with `a(0)=1`
-/

namespace A210667.P8709997268946886378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A248148 ((n + 1 : ℤ) * a (n - 1)).toNat - a (n - 1)

end

end A210667.P8709997268946886378

/-! ## A210667.P10336286040362713830

`round(A100180(round(sqrt((n+1)!-n+1))+1)/2)`
-/

namespace A210667.P10336286040362713830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A100180 (SequenceMachineLib.roundAway (Real.sqrt ((Nat.factorial (n + 1) : ℤ) - (n : ℤ) + 1 : ℝ)) + 1).toNat : ℚ) / 2)

end

end A210667.P10336286040362713830

/-! ## A210667.P13691140732419111774

`A219652(A000255(n))`
-/

namespace A210667.P13691140732419111774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 (A000255 n).toNat

end

end A210667.P13691140732419111774

/-!
# A210668: Number of equivalence classes of S_n under transformations of positionally adjacent elements of the form abc <--> cba where a

The programs for A210668, there is no canonical definition to state claims against.
-/

/-! ## A210668.P3328420802174576231

`A279564(n)-A005070(A000142(n))`
-/

namespace A210668.P3328420802174576231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279564 n - A005070 (A000142 n).toNat

end

end A210668.P3328420802174576231

/-! ## A210668.P5974817630845455665

`A279564(n)-A184954(A184954(n))`
-/

namespace A210668.P5974817630845455665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279564 n - A184954 (A184954 n).toNat

end

end A210668.P5974817630845455665

/-! ## A210668.P11756915716941003721

`A279564(n)-A220400(A279573(n))`
-/

namespace A210668.P11756915716941003721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279564 n - A220400 (A279573 n).toNat

end

end A210668.P11756915716941003721

/-! ## A210668.P16859270023662306966

`xor(A124482(A000930(n)), A279564(n))`
-/

namespace A210668.P16859270023662306966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A124482 (A000930 n).toNat) (A279564 n)

end

end A210668.P16859270023662306966

/-!
# A210670: Central coefficients of triangle A210658.

The programs for A210670, there is no canonical definition to state claims against.
-/

/-! ## A210670.P11260659663980952011

`A129366(2*n)`
-/

namespace A210670.P11260659663980952011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129366 (2 * n)

end

end A210670.P11260659663980952011

/-! ## A210670.P7449624400110299212

`record[A129366(n)/(-1)^n]`
-/

namespace A210670.P7449624400110299212
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129366 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210670.P7449624400110299212

/-! ## A210670.P16675525806947632184

`record[A129366((n-1)^(n%2))]`
-/

namespace A210670.P16675525806947632184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129366 (((n : ℤ) - 1) ^ (n % 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210670.P16675525806947632184

/-! ## A210670.P11947844396695386827

`record[or((-1)^n, ∑[2*A000150(n)])]`
-/

namespace A210670.P11947844396695386827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000150 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((-1) ^ n) (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210670.P11947844396695386827

/-! ## A210670.P13964700135050768708

`record[Δ[A155587(A026741(n))]]`
-/

namespace A210670.P13964700135050768708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 (A026741 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210670.P13964700135050768708

/-! ## A210670.P7243302700371495604

`A155587(Δ[n²])-A155587(n)`
-/

namespace A210670.P7243302700371495604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A155587 n

end

end A210670.P7243302700371495604

/-! ## A210670.P11357757731654928612

`abs(A155587(A005408(n))-A155587(n))`
-/

namespace A210670.P11357757731654928612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155587 (A005408 n).toNat - A155587 n|

end

end A210670.P11357757731654928612

/-! ## A210670.P12177295123450276252

`record[A155587(A004442(n))]-A155587(n)`
-/

namespace A210670.P12177295123450276252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 (A004442 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A155587 n

end

end A210670.P12177295123450276252

/-! ## A210670.P15318099896501672549

`A014137(2*n)-A323224(A034856(n+1))`
-/

namespace A210670.P15318099896501672549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014137 (2 * n) - A323224 (A034856 (n + 1)).toNat

end

end A210670.P15318099896501672549

/-! ## A210670.P14731203833590833181

`A014138(2*n)+A167422(n+1)-A014138(n+1)`
-/

namespace A210670.P14731203833590833181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014138 (2 * n) + (A167422 (n + 1) - A014138 (n + 1))

end

end A210670.P14731203833590833181

/-!
# A210671: Number of equivalence classes of S_n under transformations of positionally adjacent elements of the form abc <--> acb <--> bac <--> cba, where a

The programs for A210671, there is no canonical definition to state claims against.
-/

/-! ## A210671.P3977214165122544825

`n!-A212419(n)+1`
-/

namespace A210671.P3977214165122544825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A212419 n + 1

end

end A210671.P3977214165122544825

/-! ## A210671.P3912490976237854966

`2*a(n-1)-A014963(a(n-2))` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A210671.P3912490976237854966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  2 * a (n - 1) - A014963 (a (n - 2)).toNat

end

end A210671.P3912490976237854966

/-! ## A210671.P2064799173965315490

`A290807(∑[a(n-2)+a(n-4)])` with `a(0)=1, a(1)=0, a(2)=2, a(3)=1, a(4)=1`
-/

namespace A210671.P2064799173965315490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2, 1, 1] fun n f1 =>
  f1 (n - 2) + f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290807 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A210671.P2064799173965315490

/-! ## A210671.P5940866782527456579

`∑[A000245(A003106(n))]`
-/

namespace A210671.P5940866782527456579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 (A003106 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210671.P5940866782527456579

/-! ## A210671.P8547910058882346591

`∑[A035528(A035552(n))]`
-/

namespace A210671.P8547910058882346591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035528 (A035552 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210671.P8547910058882346591

/-!
# A210672: a(0)=1; thereafter a(n) = 2*Sum_{k=1..n} binomial(2n,2k)*a(n-k).

The programs for A210672, there is no canonical definition to state claims against.
-/

/-! ## A210672.P18295972417630764841

`A050946(2*n)+or(1, A050946(2*n))`
-/

namespace A210672.P18295972417630764841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050946 (2 * n) + Int.lor 1 (A050946 (2 * n))

end

end A210672.P18295972417630764841

/-! ## A210672.P9268935334028259679

`A050946(2*n)+A050946(A004277(n))`
-/

namespace A210672.P9268935334028259679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050946 (2 * n) + A050946 (A004277 n).toNat

end

end A210672.P9268935334028259679

/-! ## A210672.P5483837661922391519

`A020639(A004277(n))*A050946(A004277(n))`
-/

namespace A210672.P5483837661922391519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A004277 n).toNat * A050946 (A004277 n).toNat

end

end A210672.P5483837661922391519

/-! ## A210672.P10991472770591830082

`record[A000557(n)/(-2)^n]`
-/

namespace A210672.P10991472770591830082
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000557 n : ℚ) / ((-2) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210672.P10991472770591830082

/-! ## A210672.P15356219772156796668

`A000557(2*n)/A000079(n)²`
-/

namespace A210672.P15356219772156796668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000557 (2 * n) : ℚ) / (A000079 n ^ 2 : ℚ)

end

end A210672.P15356219772156796668

/-!
# A210673: a(n) = a(n-1)+a(n-2)+n-4, a(0)=0, a(1)=1.

The programs for A210673, the canonical program `A210673.P16713211653767744176` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210673 has offset 0).

The definition of A210673 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+n-4` (program `A210673.P16713211653767744176`, by `A210673.P16713211653767744176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A210673.P16713211653767744176

`a(n-1)+a(n-2)+n-4` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210673

/-- `a(n-1)+a(n-2)+n-4` -/
def P16713211653767744176.Spec : Prop :=
  ∀ n, P16713211653767744176.a n = A210673 n

theorem P16713211653767744176.correct : P16713211653767744176.Spec := by
  intro n
  simp only [A210673]

end A210673

/-! ## A210673.P624160604180073939

`ogf((x-4x^2+4x^3)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A210673.P624160604180073939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -4, 4] [1, -3, 2, 1, -1] n

end

end A210673.P624160604180073939

namespace A210673

/-- `ogf((x-4x^2+4x^3)/(1-3x+2x^2+x^3-x^4))` -/
def P624160604180073939.Spec : Prop :=
  ∀ n, P624160604180073939.a n = A210673 n

end A210673

/-! ## A210673.P8073859084378803946

`a(n-1)-(4-a(n-2)-n)` with `a(0)=0, a(1)=1`
-/

namespace A210673.P8073859084378803946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (4 - a (n - 2) - (n : ℤ))

end

end A210673.P8073859084378803946

namespace A210673

/-- `a(n-1)-(4-a(n-2)-n)` -/
def P8073859084378803946.Spec : Prop :=
  ∀ n, P8073859084378803946.a n = A210673 n

theorem P8073859084378803946.correct : P8073859084378803946.Spec := by
  intro n
  simp only [A210673, Nat.add_sub_cancel, A210673.P8073859084378803946.a, A210673.P16713211653767744176.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A210673

/-! ## A210673.P16943327810677657956

`1-(A152163(n)+n)`
-/

namespace A210673.P16943327810677657956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A152163 n + (n : ℤ))

end

end A210673.P16943327810677657956

namespace A210673

/-- `1-(A152163(n)+n)` -/
def P16943327810677657956.Spec : Prop :=
  ∀ n, P16943327810677657956.a n = A210673 n

end A210673

/-! ## A210673.P17575398788386037766

`A000045(abs(2-n))-abs(1-n)`
-/

namespace A210673.P17575398788386037766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |2 - (n : ℤ)|.toNat - |1 - (n : ℤ)|

end

end A210673.P17575398788386037766

namespace A210673

/-- `A000045(abs(2-n))-abs(1-n)` -/
def P17575398788386037766.Spec : Prop :=
  ∀ n, P17575398788386037766.a n = A210673 n

end A210673

/-! ## A210673.P6412682712998139982

`A024000(n)-A152163(n)`
-/

namespace A210673.P6412682712998139982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n - A152163 n

end

end A210673.P6412682712998139982

namespace A210673

/-- `A024000(n)-A152163(n)` -/
def P6412682712998139982.Spec : Prop :=
  ∀ n, P6412682712998139982.a n = A210673 n

end A210673

/-! ## A210673.P17231439649420389051

`Δ[A212804(n)]+1-n`
-/

namespace A210673.P17231439649420389051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (1 - (n : ℤ))

end

end A210673.P17231439649420389051

namespace A210673

/-- `Δ[A212804(n)]+1-n` -/
def P17231439649420389051.Spec : Prop :=
  ∀ n, P17231439649420389051.a n = A210673 n

end A210673

/-! ## A210673.P11042328512213499523

`Δ[A037141(n)]-(n+2)`
-/

namespace A210673.P11042328512213499523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037141 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 2 : ℤ)

end

end A210673.P11042328512213499523

namespace A210673

/-- `Δ[A037141(n)]-(n+2)` -/
def P11042328512213499523.Spec : Prop :=
  ∀ n, P11042328512213499523.a n = A210673 n

end A210673

/-! ## A210673.P12153252947148645201

`Δ[A000045(gcd(1-n, n-1))]-(n-1)`
-/

namespace A210673.P12153252947148645201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.gcd (1 - (n : ℤ)) ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n : ℤ) - 1)

end

end A210673.P12153252947148645201

namespace A210673

/-- `Δ[A000045(gcd(1-n, n-1))]-(n-1)` -/
def P12153252947148645201.Spec : Prop :=
  ∀ n, P12153252947148645201.a n = A210673 n

end A210673

/-! ## A210673.P17927447104788527143

`Δ[A000045(lcm(1-n, n-1))]-(n-1)`
-/

namespace A210673.P17927447104788527143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Int.lcm (1 - (n : ℤ)) ((n : ℤ) - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n : ℤ) - 1)

end

end A210673.P17927447104788527143

namespace A210673

/-- `Δ[A000045(lcm(1-n, n-1))]-(n-1)` -/
def P17927447104788527143.Spec : Prop :=
  ∀ n, P17927447104788527143.a n = A210673 n

end A210673

/-! ## A210673.P8163005247477576614

`A024000(n)+Δ[A212804(n)]`
-/

namespace A210673.P8163005247477576614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 n + (f1 (n + 1) - f1 n)

end

end A210673.P8163005247477576614

namespace A210673

/-- `A024000(n)+Δ[A212804(n)]` -/
def P8163005247477576614.Spec : Prop :=
  ∀ n, P8163005247477576614.a n = A210673 n

end A210673

/-! ## A210673.P17489938131479170496

`A065220(n)+1-A212804(n)`
-/

namespace A210673.P17489938131479170496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + (1 - A212804 n)

end

end A210673.P17489938131479170496

namespace A210673

/-- `A065220(n)+1-A212804(n)` -/
def P17489938131479170496.Spec : Prop :=
  ∀ n, P17489938131479170496.a n = A210673 n

end A210673

/-! ## A210673.P8403585081219155982

`A001611(n)-(A212804(n)+n)`
-/

namespace A210673.P8403585081219155982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - (A212804 n + (n : ℤ))

end

end A210673.P8403585081219155982

namespace A210673

/-- `A001611(n)-(A212804(n)+n)` -/
def P8403585081219155982.Spec : Prop :=
  ∀ n, P8403585081219155982.a n = A210673 n

end A210673

/-! ## A210673.P15104122009657706034

`A065220(n)-Δ[A065220(n)]`
-/

namespace A210673.P15104122009657706034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n - (f1 (n + 1) - f1 n)

end

end A210673.P15104122009657706034

namespace A210673

/-- `A065220(n)-Δ[A065220(n)]` -/
def P15104122009657706034.Spec : Prop :=
  ∀ n, P15104122009657706034.a n = A210673 n

end A210673

/-! ## A210673.P8546546905173755414

`A001611(n)-(Δ[A000045(n)]+n)`
-/

namespace A210673.P8546546905173755414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - (f1 (n + 1) - f1 n + (n : ℤ))

end

end A210673.P8546546905173755414

namespace A210673

/-- `A001611(n)-(Δ[A000045(n)]+n)` -/
def P8546546905173755414.Spec : Prop :=
  ∀ n, P8546546905173755414.a n = A210673 n

end A210673

/-! ## A210673.P15658183796449488581

`A001611(n)+A001611(n)-A002062(n+1)`
-/

namespace A210673.P15658183796449488581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + (A001611 n - A002062 (n + 1))

end

end A210673.P15658183796449488581

namespace A210673

/-- `A001611(n)+A001611(n)-A002062(n+1)` -/
def P15658183796449488581.Spec : Prop :=
  ∀ n, P15658183796449488581.a n = A210673 n

end A210673

/-! ## A210673.P2191005894122529078

`A065220(n)+A065220(n)-A065220(n+1)`
-/

namespace A210673.P2191005894122529078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065220 n + (A065220 n - A065220 (n + 1))

end

end A210673.P2191005894122529078

namespace A210673

/-- `A065220(n)+A065220(n)-A065220(n+1)` -/
def P2191005894122529078.Spec : Prop :=
  ∀ n, P2191005894122529078.a n = A210673 n

end A210673

/-! ## A210673.P15843910436112563221

`A001588(n)-A081659(n)`
-/

namespace A210673.P15843910436112563221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n - A081659 n

end

end A210673.P15843910436112563221

namespace A210673

/-- `A001588(n)-A081659(n)` -/
def P15843910436112563221.Spec : Prop :=
  ∀ n, P15843910436112563221.a n = A210673 n

end A210673

/-! ## A210673.P15014134094009291664

`∑[A000045(n)]-(A000032(n)-2+n)`
-/

namespace A210673.P15014134094009291664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A000032 n - 2 + (n : ℤ))

end

end A210673.P15014134094009291664

namespace A210673

/-- `∑[A000045(n)]-(A000032(n)-2+n)` -/
def P15014134094009291664.Spec : Prop :=
  ∀ n, P15014134094009291664.a n = A210673 n

end A210673

/-! ## A210673.P12087957398974988518

`A048577(n)-A013915(n)`
-/

namespace A210673.P12087957398974988518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n - A013915 n

end

end A210673.P12087957398974988518

namespace A210673

/-- `A048577(n)-A013915(n)` -/
def P12087957398974988518.Spec : Prop :=
  ∀ n, P12087957398974988518.a n = A210673 n

end A210673

/-!
# A210675: a(n)=a(n-1)+a(n-2)+n+4, a(0)=0, a(1)=1.

The programs for A210675, the canonical program `A210675.P1225516485260691960` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210675 has offset 0).

The definition of A210675 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+n+4` (program `A210675.P1225516485260691960`, by `A210675.P1225516485260691960.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A210675.P1225516485260691960

`a(n-1)+a(n-2)+n+4` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210675

/-- `a(n-1)+a(n-2)+n+4` -/
def P1225516485260691960.Spec : Prop :=
  ∀ n, (P1225516485260691960.a n : ℤ) = A210675 n

theorem P1225516485260691960.correct : P1225516485260691960.Spec := by
  intro n
  simp only [A210675]

end A210675

/-! ## A210675.P2552571674791331193

`ogf((x+4x^2-4x^3)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A210675.P2552571674791331193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, -4] [1, -3, 2, 1, -1] n

end

end A210675.P2552571674791331193

namespace A210675

/-- `ogf((x+4x^2-4x^3)/(1-3x+2x^2+x^3-x^4))` -/
def P2552571674791331193.Spec : Prop :=
  ∀ n, P2552571674791331193.a n = A210675 n

end A210675

/-! ## A210675.P16479718936120619727

`1-(a(n-3)-2*a(n-1))` with `a(0)=0, a(1)=1, a(2)=7`
-/

namespace A210675.P16479718936120619727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 7] fun n a =>
  1 - (a (n - 3) - 2 * a (n - 1))

end

end A210675.P16479718936120619727

namespace A210675

/-- `1-(a(n-3)-2*a(n-1))` -/
def P16479718936120619727.Spec : Prop :=
  ∀ n, P16479718936120619727.a n = A210675 n

end A210675

/-! ## A210675.P7358117750307137865

`A210729(n)-1`
-/

namespace A210675.P7358117750307137865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210729 n - 1

end

end A210675.P7358117750307137865

namespace A210675

/-- `A210729(n)-1` -/
def P7358117750307137865.Spec : Prop :=
  ∀ n, P7358117750307137865.a n = A210675 n

end A210675

/-! ## A210675.P2935101111303629755

`A210730(n)+A001911(n)`
-/

namespace A210675.P2935101111303629755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210730 n + A001911 n

end

end A210675.P2935101111303629755

namespace A210675

/-- `A210730(n)+A001911(n)` -/
def P2935101111303629755.Spec : Prop :=
  ∀ n, P2935101111303629755.a n = A210675 n

end A210675

/-! ## A210675.P13196847095607864393

`A210731(n)+∑[A000045(n)]`
-/

namespace A210675.P13196847095607864393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210731 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210675.P13196847095607864393

namespace A210675

/-- `A210731(n)+∑[A000045(n)]` -/
def P13196847095607864393.Spec : Prop :=
  ∀ n, P13196847095607864393.a n = A210675 n

end A210675

/-! ## A210675.P15990063154533970900

`A192762(n)+A000071(n+1)`
-/

namespace A210675.P15990063154533970900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192762 n + A000071 (n + 1)

end

end A210675.P15990063154533970900

namespace A210675

/-- `A192762(n)+A000071(n+1)` -/
def P15990063154533970900.Spec : Prop :=
  ∀ n, P15990063154533970900.a n = A210675 n

end A210675

/-! ## A210675.P13627107449056993632

`A192761(n)+A019274(n+1)`
-/

namespace A210675.P13627107449056993632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192761 n + A019274 (n + 1)

end

end A210675.P13627107449056993632

namespace A210675

/-- `A192761(n)+A019274(n+1)` -/
def P13627107449056993632.Spec : Prop :=
  ∀ n, P13627107449056993632.a n = A210675 n

end A210675

/-! ## A210675.P18192250285437730745

`A001595(n)+A192761(n)-1`
-/

namespace A210675.P18192250285437730745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n + (A192761 n - 1)

end

end A210675.P18192250285437730745

namespace A210675

/-- `A001595(n)+A192761(n)-1` -/
def P18192250285437730745.Spec : Prop :=
  ∀ n, P18192250285437730745.a n = A210675 n

end A210675

/-! ## A210675.P8011133145868762891

`A210731(n)+A000071(n+2)`
-/

namespace A210675.P8011133145868762891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210731 n + A000071 (n + 2)

end

end A210675.P8011133145868762891

namespace A210675

/-- `A210731(n)+A000071(n+2)` -/
def P8011133145868762891.Spec : Prop :=
  ∀ n, P8011133145868762891.a n = A210675 n

end A210675

/-! ## A210675.P5486079593551255144

`A001911(n)+A210677(n)-1`
-/

namespace A210675.P5486079593551255144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n + (A210677 n - 1)

end

end A210675.P5486079593551255144

namespace A210675

/-- `A001911(n)+A210677(n)-1` -/
def P5486079593551255144.Spec : Prop :=
  ∀ n, P5486079593551255144.a n = A210675 n

end A210675

/-! ## A210675.P15389439756070500275

`A111314(n)+A192760(n)-1`
-/

namespace A210675.P15389439756070500275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111314 n + (A192760 n - 1)

end

end A210675.P15389439756070500275

namespace A210675

/-- `A111314(n)+A192760(n)-1` -/
def P15389439756070500275.Spec : Prop :=
  ∀ n, P15389439756070500275.a n = A210675 n

end A210675

/-! ## A210675.P15391226089660108167

`A111733(n)+A210673(n)-1`
-/

namespace A210675.P15391226089660108167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111733 n + (A210673 n - 1)

end

end A210675.P15391226089660108167

namespace A210675

/-- `A111733(n)+A210673(n)-1` -/
def P15391226089660108167.Spec : Prop :=
  ∀ n, P15391226089660108167.a n = A210675 n

end A210675

/-! ## A210675.P5834445940072749194

`A168193(n)+A192967(n)-1`
-/

namespace A210675.P5834445940072749194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168193 n + (A192967 n - 1)

end

end A210675.P5834445940072749194

namespace A210675

/-- `A168193(n)+A192967(n)-1` -/
def P5834445940072749194.Spec : Prop :=
  ∀ n, P5834445940072749194.a n = A210675 n

end A210675

/-! ## A210675.P15689312842775081663

`A192960(n)-(A210673(n)+1)`
-/

namespace A210675.P15689312842775081663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192960 n - (A210673 n + 1)

end

end A210675.P15689312842775081663

namespace A210675

/-- `A192960(n)-(A210673(n)+1)` -/
def P15689312842775081663.Spec : Prop :=
  ∀ n, P15689312842775081663.a n = A210675 n

end A210675

/-! ## A210675.P11414518943220456985

`2*A001924(n)-A210673(n)`
-/

namespace A210675.P11414518943220456985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001924 n - A210673 n

end

end A210675.P11414518943220456985

namespace A210675

/-- `2*A001924(n)-A210673(n)` -/
def P11414518943220456985.Spec : Prop :=
  ∀ n, P11414518943220456985.a n = A210675 n

end A210675

/-! ## A210675.P10922694178640126153

`∑[A022319(n)]-(A022309(n)+1)`
-/

namespace A210675.P10922694178640126153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022319 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A022309 n + 1)

end

end A210675.P10922694178640126153

namespace A210675

/-- `∑[A022319(n)]-(A022309(n)+1)` -/
def P10922694178640126153.Spec : Prop :=
  ∀ n, P10922694178640126153.a n = A210675 n

end A210675

/-! ## A210675.P15972416570260273044

`A023548(n+1)-(A001588(n)+1)`
-/

namespace A210675.P15972416570260273044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023548 (n + 1) - (A001588 n + 1)

end

end A210675.P15972416570260273044

namespace A210675

/-- `A023548(n+1)-(A001588(n)+1)` -/
def P15972416570260273044.Spec : Prop :=
  ∀ n, P15972416570260273044.a n = A210675 n

end A210675

/-! ## A210675.P2858318882977990364

`A000071(n+1)+A210728(n)-1`
-/

namespace A210675.P2858318882977990364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + (A210728 n - 1)

end

end A210675.P2858318882977990364

namespace A210675

/-- `A000071(n+1)+A210728(n)-1` -/
def P2858318882977990364.Spec : Prop :=
  ∀ n, P2858318882977990364.a n = A210675 n

end A210675

/-! ## A210675.P1157060933717846080

`A001924(n)+A192762(n)-A104161(n)`
-/

namespace A210675.P1157060933717846080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001924 n + (A192762 n - A104161 n)

end

end A210675.P1157060933717846080

namespace A210675

/-- `A001924(n)+A192762(n)-A104161(n)` -/
def P1157060933717846080.Spec : Prop :=
  ∀ n, P1157060933717846080.a n = A210675 n

end A210675

/-!
# A210677: a(n) = a(n-1) + a(n-2) + n + 1, a(0) = a(1) = 1.

The programs for A210677, the canonical program `A210677.P3032730701818167226` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210677 has offset 0).

The definition of A210677 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+n+1` (program `A210677.P3032730701818167226`, by `A210677.P3032730701818167226.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A210677.P3032730701818167226

`a(n-1)+a(n-2)+n+1` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210677

/-- `a(n-1)+a(n-2)+n+1` -/
def P3032730701818167226.Spec : Prop :=
  ∀ n, (P3032730701818167226.a n : ℤ) = A210677 n

theorem P3032730701818167226.correct : P3032730701818167226.Spec := by
  intro n
  simp only [A210677]

end A210677

/-! ## A210677.P16899906864369363493

`ogf((1-2x+4x^2-2x^3)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A210677.P16899906864369363493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 4, -2] [1, -3, 2, 1, -1] n

end

end A210677.P16899906864369363493

namespace A210677

/-- `ogf((1-2x+4x^2-2x^3)/(1-3x+2x^2+x^3-x^4))` -/
def P16899906864369363493.Spec : Prop :=
  ∀ n, P16899906864369363493.a n = A210677 n

end A210677

/-! ## A210677.P17361192159273244278

`1-(a(n-3)-2*a(n-1))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A210677.P17361192159273244278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  1 - (a (n - 3) - 2 * a (n - 1))

end

end A210677.P17361192159273244278

namespace A210677

/-- `1-(a(n-3)-2*a(n-1))` -/
def P17361192159273244278.Spec : Prop :=
  ∀ n, P17361192159273244278.a n = A210677 n

end A210677

/-! ## A210677.P8165397172070226108

`1-(a(n-3)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=1, a(2)=5`
-/

namespace A210677.P8165397172070226108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 5] fun n a =>
  1 - (a (n - 3) - a (n - 1) - a (n - 1))

end

end A210677.P8165397172070226108

namespace A210677

/-- `1-(a(n-3)-a(n-1)-a(n-1))` -/
def P8165397172070226108.Spec : Prop :=
  ∀ n, P8165397172070226108.a n = A210677 n

end A210677

/-! ## A210677.P12198218109387155489

`A210730(n)+1`
-/

namespace A210677.P12198218109387155489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210730 n + 1

end

end A210677.P12198218109387155489

namespace A210677

/-- `A210730(n)+1` -/
def P12198218109387155489.Spec : Prop :=
  ∀ n, P12198218109387155489.a n = A210677 n

end A210677

/-! ## A210677.P1250775957176093843

`A192964(n)+n`
-/

namespace A210677.P1250775957176093843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192964 n + (n : ℤ)

end

end A210677.P1250775957176093843

namespace A210677

/-- `A192964(n)+n` -/
def P1250775957176093843.Spec : Prop :=
  ∀ n, P1250775957176093843.a n = A210677 n

end A210677

/-! ## A210677.P6144809159030504857

`A182415(n)-n`
-/

namespace A210677.P6144809159030504857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 n - (n : ℤ)

end

end A210677.P6144809159030504857

namespace A210677

/-- `A182415(n)-n` -/
def P6144809159030504857.Spec : Prop :=
  ∀ n, P6144809159030504857.a n = A210677 n

end A210677

/-! ## A210677.P11748778360927852089

`A171237(n)-(n+1)`
-/

namespace A210677.P11748778360927852089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171237 n - (n + 1 : ℤ)

end

end A210677.P11748778360927852089

namespace A210677

/-- `A171237(n)-(n+1)` -/
def P11748778360927852089.Spec : Prop :=
  ∀ n, P11748778360927852089.a n = A210677 n

end A210677

/-! ## A210677.P11774730638759743016

`A022309(n+1)-(n+3)`
-/

namespace A210677.P11774730638759743016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022309 (n + 1) - (n + 3 : ℤ)

end

end A210677.P11774730638759743016

namespace A210677

/-- `A022309(n+1)-(n+3)` -/
def P11774730638759743016.Spec : Prop :=
  ∀ n, P11774730638759743016.a n = A210677 n

end A210677

/-! ## A210677.P10126444753474271440

`A192967(n)+A001911(n)`
-/

namespace A210677.P10126444753474271440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192967 n + A001911 n

end

end A210677.P10126444753474271440

namespace A210677

/-- `A192967(n)+A001911(n)` -/
def P10126444753474271440.Spec : Prop :=
  ∀ n, P10126444753474271440.a n = A210677 n

end A210677

/-! ## A210677.P3369908972875120823

`A212804(n)+A192760(n)`
-/

namespace A210677.P3369908972875120823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A192760 n

end

end A210677.P3369908972875120823

namespace A210677

/-- `A212804(n)+A192760(n)` -/
def P3369908972875120823.Spec : Prop :=
  ∀ n, P3369908972875120823.a n = A210677 n

end A210677

/-! ## A210677.P14101979986030675116

`A192969(n)-A000045(n)`
-/

namespace A210677.P14101979986030675116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192969 n - A000045 n

end

end A210677.P14101979986030675116

namespace A210677

/-- `A192969(n)-A000045(n)` -/
def P14101979986030675116.Spec : Prop :=
  ∀ n, P14101979986030675116.a n = A210677 n

end A210677

/-! ## A210677.P11797834282494023885

`A192979(n)-A065220(n)`
-/

namespace A210677.P11797834282494023885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192979 n - A065220 n

end

end A210677.P11797834282494023885

namespace A210677

/-- `A192979(n)-A065220(n)` -/
def P11797834282494023885.Spec : Prop :=
  ∀ n, P11797834282494023885.a n = A210677 n

end A210677

/-! ## A210677.P15250550060371928947

`A030119(n)+A000071(n+1)`
-/

namespace A210677.P15250550060371928947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030119 n + A000071 (n + 1)

end

end A210677.P15250550060371928947

namespace A210677

/-- `A030119(n)+A000071(n+1)` -/
def P15250550060371928947.Spec : Prop :=
  ∀ n, P15250550060371928947.a n = A210677 n

end A210677

/-! ## A210677.P14853107580795127953

`A000032(n)+A001924(n)-1`
-/

namespace A210677.P14853107580795127953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + (A001924 n - 1)

end

end A210677.P14853107580795127953

namespace A210677

/-- `A000032(n)+A001924(n)-1` -/
def P14853107580795127953.Spec : Prop :=
  ∀ n, P14853107580795127953.a n = A210677 n

end A210677

/-! ## A210677.P4792272634204969104

`A192761(n)+1-A000045(n)`
-/

namespace A210677.P4792272634204969104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192761 n + (1 - A000045 n)

end

end A210677.P4792272634204969104

namespace A210677

/-- `A192761(n)+1-A000045(n)` -/
def P4792272634204969104.Spec : Prop :=
  ∀ n, P4792272634204969104.a n = A210677 n

end A210677

/-! ## A210677.P13512035409711346007

`A192969(n)+1-A001611(n)`
-/

namespace A210677.P13512035409711346007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192969 n + (1 - A001611 n)

end

end A210677.P13512035409711346007

namespace A210677

/-- `A192969(n)+1-A001611(n)` -/
def P13512035409711346007.Spec : Prop :=
  ∀ n, P13512035409711346007.a n = A210677 n

end A210677

/-! ## A210677.P1104888870455477299

`A210678(n)-A000071(n+1)`
-/

namespace A210677.P1104888870455477299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210678 n - A000071 (n + 1)

end

end A210677.P1104888870455477299

namespace A210677

/-- `A210678(n)-A000071(n+1)` -/
def P1104888870455477299.Spec : Prop :=
  ∀ n, P1104888870455477299.a n = A210677 n

end A210677

/-! ## A210677.P15143633817208816362

`A192760(n)-A152163(n+1)`
-/

namespace A210677.P15143633817208816362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192760 n - A152163 (n + 1)

end

end A210677.P15143633817208816362

namespace A210677

/-- `A192760(n)-A152163(n+1)` -/
def P15143633817208816362.Spec : Prop :=
  ∀ n, P15143633817208816362.a n = A210677 n

end A210677

/-! ## A210677.P7405654406913300982

`A179991(n+1)-A000045(n+2)`
-/

namespace A210677.P7405654406913300982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179991 (n + 1) - A000045 (n + 2)

end

end A210677.P7405654406913300982

namespace A210677

/-- `A179991(n+1)-A000045(n+2)` -/
def P7405654406913300982.Spec : Prop :=
  ∀ n, P7405654406913300982.a n = A210677 n

end A210677

/-!
# A210678: a(n) = a(n-1)+a(n-2)+n+2, a(0)=a(1)=1.

The programs for A210678, the canonical program `A210678.P13397637260736914319` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210678 has offset 0).

The definition of A210678 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+n+2` (program `A210678.P13397637260736914319`, by `A210678.P13397637260736914319.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A210678.P13397637260736914319

`a(n-1)+a(n-2)+n+2` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210678

/-- `a(n-1)+a(n-2)+n+2` -/
def P13397637260736914319.Spec : Prop :=
  ∀ n, (P13397637260736914319.a n : ℤ) = A210678 n

theorem P13397637260736914319.correct : P13397637260736914319.Spec := by
  intro n
  simp only [A210678]

end A210678

/-! ## A210678.P16672306365330470930

`ogf((1-2x+5x^2-3x^3)/(1-3x+2x^2+x^3-x^4))`
-/

namespace A210678.P16672306365330470930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 5, -3] [1, -3, 2, 1, -1] n

end

end A210678.P16672306365330470930

namespace A210678

/-- `ogf((1-2x+5x^2-3x^3)/(1-3x+2x^2+x^3-x^4))` -/
def P16672306365330470930.Spec : Prop :=
  ∀ n, P16672306365330470930.a n = A210678 n

end A210678

/-! ## A210678.P18161568424552309030

`1-(xor(-1, a(n-1))-a(n-2)-n)` with `a(0)=1, a(1)=1`
-/

namespace A210678.P18161568424552309030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - (Int.xor (-1) (a (n - 1)) - a (n - 2) - (n : ℤ))

end

end A210678.P18161568424552309030

namespace A210678

/-- `1-(xor(-1, a(n-1))-a(n-2)-n)` -/
def P18161568424552309030.Spec : Prop :=
  ∀ n, P18161568424552309030.a n = A210678 n

end A210678

/-! ## A210678.P8048597921048633793

`3-floor(1-a(n-1)-a(n-2)-n)` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A210678.P8048597921048633793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 - (1 - a (n - 1) - a (n - 2) - (n : ℤ))

end

end A210678.P8048597921048633793

namespace A210678

/-- `3-floor(1-a(n-1)-a(n-2)-n)` -/
def P8048597921048633793.Spec : Prop :=
  ∀ n, P8048597921048633793.a n = A210678 n

end A210678

/-! ## A210678.P13806601448614496510

`2*n-(n-2-a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A210678.P13806601448614496510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - 2 - a (n - 1) - a (n - 2))

end

end A210678.P13806601448614496510

namespace A210678

/-- `2*n-(n-2-a(n-1)-a(n-2))` -/
def P13806601448614496510.Spec : Prop :=
  ∀ n, P13806601448614496510.a n = A210678 n

end A210678

/-! ## A210678.P15192144081330421083

`A210731(n)+1`
-/

namespace A210678.P15192144081330421083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210731 n + 1

end

end A210678.P15192144081330421083

namespace A210678

/-- `A210731(n)+1` -/
def P15192144081330421083.Spec : Prop :=
  ∀ n, P15192144081330421083.a n = A210678 n

end A210678

/-! ## A210678.P7572549220158017711

`A192956(n)+n`
-/

namespace A210678.P7572549220158017711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 n + (n : ℤ)

end

end A210678.P7572549220158017711

namespace A210678

/-- `A192956(n)+n` -/
def P7572549220158017711.Spec : Prop :=
  ∀ n, P7572549220158017711.a n = A210678 n

end A210678

/-! ## A210678.P7831788135523922569

`A022310(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A210678.P7831788135523922569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A022310 (n - 1) + a (n - 1)

end

end A210678.P7831788135523922569

namespace A210678

/-- `A022310(n-1)+a(n-1)` -/
def P7831788135523922569.Spec : Prop :=
  ∀ n, P7831788135523922569.a n = A210678 n

end A210678

/-! ## A210678.P12235317581482544647

`A111721(n)+A065220(n)`
-/

namespace A210678.P12235317581482544647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111721 n + A065220 n

end

end A210678.P12235317581482544647

namespace A210678

/-- `A111721(n)+A065220(n)` -/
def P12235317581482544647.Spec : Prop :=
  ∀ n, P12235317581482544647.a n = A210678 n

end A210678

/-! ## A210678.P2433363817054016217

`A192958(n)+A002062(n)`
-/

namespace A210678.P2433363817054016217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192958 n + A002062 n

end

end A210678.P2433363817054016217

namespace A210678

/-- `A192958(n)+A002062(n)` -/
def P2433363817054016217.Spec : Prop :=
  ∀ n, P2433363817054016217.a n = A210678 n

end A210678

/-! ## A210678.P18333409567705385927

`A212804(n)+A192761(n)`
-/

namespace A210678.P18333409567705385927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A192761 n

end

end A210678.P18333409567705385927

namespace A210678

/-- `A212804(n)+A192761(n)` -/
def P18333409567705385927.Spec : Prop :=
  ∀ n, P18333409567705385927.a n = A210678 n

end A210678

/-! ## A210678.P2007118454947938120

`A210728(n)-A000045(n)`
-/

namespace A210678.P2007118454947938120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210728 n - A000045 n

end

end A210678.P2007118454947938120

namespace A210678

/-- `A210728(n)-A000045(n)` -/
def P2007118454947938120.Spec : Prop :=
  ∀ n, P2007118454947938120.a n = A210678 n

end A210678

/-! ## A210678.P5428870038928018678

`A192954(n)-A065220(n)`
-/

namespace A210678.P5428870038928018678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192954 n - A065220 n

end

end A210678.P5428870038928018678

namespace A210678

/-- `A192954(n)-A065220(n)` -/
def P5428870038928018678.Spec : Prop :=
  ∀ n, P5428870038928018678.a n = A210678 n

end A210678

/-! ## A210678.P13946517451346036925

`A030119(n)+A019274(n+1)`
-/

namespace A210678.P13946517451346036925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030119 n + A019274 (n + 1)

end

end A210678.P13946517451346036925

namespace A210678

/-- `A030119(n)+A019274(n+1)` -/
def P13946517451346036925.Spec : Prop :=
  ∀ n, P13946517451346036925.a n = A210678 n

end A210678

/-! ## A210678.P4231350408606619133

`A210677(n)+A000071(n+1)`
-/

namespace A210678.P4231350408606619133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210677 n + A000071 (n + 1)

end

end A210678.P4231350408606619133

namespace A210678

/-- `A210677(n)+A000071(n+1)` -/
def P4231350408606619133.Spec : Prop :=
  ∀ n, P4231350408606619133.a n = A210678 n

end A210678

/-! ## A210678.P714807448200871712

`A210730(n)+A000045(n+1)`
-/

namespace A210678.P714807448200871712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210730 n + A000045 (n + 1)

end

end A210678.P714807448200871712

namespace A210678

/-- `A210730(n)+A000045(n+1)` -/
def P714807448200871712.Spec : Prop :=
  ∀ n, P714807448200871712.a n = A210678 n

end A210678

/-! ## A210678.P8264173571705249883

`A182415(n)+A065220(n+1)`
-/

namespace A210678.P8264173571705249883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182415 n + A065220 (n + 1)

end

end A210678.P8264173571705249883

namespace A210678

/-- `A182415(n)+A065220(n+1)` -/
def P8264173571705249883.Spec : Prop :=
  ∀ n, P8264173571705249883.a n = A210678 n

end A210678

/-! ## A210678.P6629955515064731077

`A179991(n+1)-A001611(n)`
-/

namespace A210678.P6629955515064731077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179991 (n + 1) - A001611 n

end

end A210678.P6629955515064731077

namespace A210678

/-- `A179991(n+1)-A001611(n)` -/
def P6629955515064731077.Spec : Prop :=
  ∀ n, P6629955515064731077.a n = A210678 n

end A210678

/-! ## A210678.P890272759552072055

`A192762(n)+1-A000045(n)`
-/

namespace A210678.P890272759552072055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192762 n + (1 - A000045 n)

end

end A210678.P890272759552072055

namespace A210678

/-- `A192762(n)+1-A000045(n)` -/
def P890272759552072055.Spec : Prop :=
  ∀ n, P890272759552072055.a n = A210678 n

end A210678

/-! ## A210678.P2391262853133988590

`A210677(n)+A210677(n)-A030119(n)`
-/

namespace A210678.P2391262853133988590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210677 n + (A210677 n - A030119 n)

end

end A210678.P2391262853133988590

namespace A210678

/-- `A210677(n)+A210677(n)-A030119(n)` -/
def P2391262853133988590.Spec : Prop :=
  ∀ n, P2391262853133988590.a n = A210678 n

end A210678

/-!
# A210679: Number of distinct prime factors <= 7 of n.

The programs for A210679, the canonical program `A210679.P2698593531423726125` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210679 has offset 1).

The definition of A210679 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A210679.P2698593531423726125

`∑{p}[n+1, val(dr(#), #)]`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210679

/-- `∑{p}[n+1, val(dr(#), #)]` -/
def P2698593531423726125.Spec : Prop :=
  ∀ n, (P2698593531423726125.a n : ℤ) = A210679 (n + 1)

theorem P2698593531423726125.correct : P2698593531423726125.Spec := by
  intro n
  simp only [A210679, Nat.add_sub_cancel]

end A210679

/-!
# A210680: a(n) = (3*a(n-1)) XOR a(n-2).

The programs for A210680, the canonical program `A210680.P2556354574365546968` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210680 has offset 0).

The definition of A210680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210680.P2556354574365546968

`xor(3*a(n-1), a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210680

/-- `xor(3*a(n-1), a(n-2))` -/
def P2556354574365546968.Spec : Prop :=
  ∀ n, (P2556354574365546968.a n : ℤ) = A210680 n

theorem P2556354574365546968.correct : P2556354574365546968.Spec := by
  intro n
  simp only [A210680]

end A210680

/-! ## A210680.P12126881718935083547

`xor(a(n-1)/(1-2/3), a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A210680.P12126881718935083547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.xor (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / (1 - (2 : ℚ) / 3))) (a (n - 2))

end

end A210680.P12126881718935083547

namespace A210680

/-- `xor(a(n-1)/(1-2/3), a(n-2))` -/
def P12126881718935083547.Spec : Prop :=
  ∀ n, P12126881718935083547.a n = A210680 n

end A210680

/-! ## A210680.P16069018396469818868

`xor(a(n-1)+a(n-1)+a(n-1), a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A210680.P16069018396469818868
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.xor (a (n - 1) + (a (n - 1) + a (n - 1))) (a (n - 2))

end

end A210680.P16069018396469818868

namespace A210680

/-- `xor(a(n-1)+a(n-1)+a(n-1), a(n-2))` -/
def P16069018396469818868.Spec : Prop :=
  ∀ n, (P16069018396469818868.a n : ℤ) = A210680 n

theorem P16069018396469818868.correct : P16069018396469818868.Spec := by
  intro n
  simp only [A210680, Nat.add_sub_cancel, A210680.P16069018396469818868.a, A210680.P2556354574365546968.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A210680

/-!
# A210684: Number of primes p < 10^n such that both 2*p+1 and 4*p+1 are composite.

The programs for A210684, there is no canonical definition to state claims against.
-/

/-! ## A210684.P7658247408294032025

`A006880(n+1)-A092816(n+1)-A182265(n+1)+1`
-/

namespace A210684.P7658247408294032025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A092816 (n + 1) - A182265 (n + 1) + 1

end

end A210684.P7658247408294032025

/-!
# A210685: a(1)=-1, a(2)=2, thereafter a(n) = (1/(2n))*((7n-22)a(n-1)+2(2n-1)a(n-2)).

The programs for A210685, the canonical program `A210685.P4720577908442833481` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210685 has offset 1).

The definition of A210685 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A210685.P4720577908442833481

`1/(2*(n+1))*((7*(n+1)-22)*a(n-1)+2*(2*(n+1)-1)*a(n-2))` with `a(0)=-1, a(1)=2`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210685

/-- `1/(2*(n+1))*((7*(n+1)-22)*a(n-1)+2*(2*(n+1)-1)*a(n-2))` -/
def P4720577908442833481.Spec : Prop :=
  ∀ n, P4720577908442833481.a n = (A210685 (n + 1) : ℚ)

end A210685

/-! ## A210685.P842303158197599384

`2*A294527(n+1)-A065601(n+1)`
-/

namespace A210685.P842303158197599384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294527 (n + 1) - A065601 (n + 1)

end

end A210685.P842303158197599384

namespace A210685

/-- `2*A294527(n+1)-A065601(n+1)` -/
def P842303158197599384.Spec : Prop :=
  ∀ n, P842303158197599384.a n = A210685 (n + 1)

end A210685

/-!
# A210686: Primes p = 1 mod 6 such that all three iterations p=(6p+1) give primes = 1 mod 6.

The programs for A210686, there is no canonical definition to state claims against.
-/

/-! ## A210686.P6836963695621483938

`6*A263311(n+1)+1`
-/

namespace A210686.P6836963695621483938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A263311 (n + 1) + 1

end

end A210686.P6836963695621483938

/-! ## A210686.P14552093594987945844

`∩[A023287(n+1), A132230(n+1)]`
-/

namespace A210686.P14552093594987945844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023287 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132230 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A210686.P14552093594987945844

/-! ## A210686.P11376560211309100564

`A128470(A263311(n+1)/5)`
-/

namespace A210686.P11376560211309100564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (SequenceMachineLib.roundAway ((A263311 (n + 1) : ℚ) / 5)).toNat

end

end A210686.P11376560211309100564

/-! ## A210686.P1671713248721876862

`1+30*A181903(n+1)`
-/

namespace A210686.P1671713248721876862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 30 * A181903 (n + 1)

end

end A210686.P1671713248721876862

/-! ## A210686.P284753064244806845

`A128470(A181903(n+1))`
-/

namespace A210686.P284753064244806845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128470 (A181903 (n + 1)).toNat

end

end A210686.P284753064244806845

/-!
# A210688: The length of the Collatz (3k+1) sequence for all odd fractions and integers.

The programs for A210688, there is no canonical definition to state claims against.
-/

/-! ## A210688.P3685751943377068807

`A210516(n+1)+1`
-/

namespace A210688.P3685751943377068807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210516 (n + 1) + 1

end

end A210688.P3685751943377068807

/-!
# A210691: Modified Golomb's sequence: a(n) is the number of times n occurs, starting with a(1)=2.

The programs for A210691, there is no canonical definition to state claims against.
-/

/-! ## A210691.P2675460235568609489

`Δ[∑[A109167(n)]-A267871(n)]`
-/

namespace A210691.P2675460235568609489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109167 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A267871 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A210691.P2675460235568609489

/-! ## A210691.P2181421160926372993

`A087739(n+1)+A081316(n+2)-A081315(n+1)`
-/

namespace A210691.P2181421160926372993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087739 (n + 1) + (A081316 (n + 2) - A081315 (n + 1))

end

end A210691.P2181421160926372993

/-!
# A210692: Number of parts that are visible in one of the three views of the modular table of partitions with n regions mentioned in A210991.

The programs for A210692, there is no canonical definition to state claims against.
-/

/-! ## A210692.P2116510491590935723

`∑[C(A194446(n+1), n)]`
-/

namespace A210692.P2116510491590935723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A194446 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210692.P2116510491590935723

/-! ## A210692.P4571319102045243847

`lt[1, A196931(n)]-(n+2)`
-/

namespace A210692.P4571319102045243847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n + 2 : ℤ)

end

end A210692.P4571319102045243847

/-! ## A210692.P4513571009531410969

`eq[1, A336811(n+3)]-n`
-/

namespace A210692.P4513571009531410969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336811 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A210692.P4513571009531410969

/-! ## A210692.P2583862249910187370

`∑[(n+1)*char[A000065(n)]]`
-/

namespace A210692.P2583862249910187370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210692.P2583862249910187370

/-! ## A210692.P3536467619176209767

`∑[(n+1)*A167392(n+1)]`
-/

namespace A210692.P3536467619176209767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A167392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210692.P3536467619176209767

/-! ## A210692.P5018113751422269928

`∑[(n+1)*char[Δ[A058682(n)]]]`
-/

namespace A210692.P5018113751422269928
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058682 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210692.P5018113751422269928

/-! ## A210692.P9819929777182723587

`∑[(n+1)*A186114(∑[n]+1)]`
-/

namespace A210692.P9819929777182723587
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A186114 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210692.P9819929777182723587

/-! ## A210692.P14757289059873184377

`∑[(n+1)*A193870(∑[n+1])]`
-/

namespace A210692.P14757289059873184377
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A193870 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210692.P14757289059873184377

/-! ## A210692.P15700254663355575681

`∑[(n+1)*char[A000041(n)-1]]`
-/

namespace A210692.P15700254663355575681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210692.P15700254663355575681

/-! ## A210692.P17471827859164737514

`∑[(n+1)*char[A008640(n)-1]]`
-/

namespace A210692.P17471827859164737514
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008640 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210692.P17471827859164737514

/-!
# A210695: a(n) = 6*a(n-1) - a(n-2) + 6 with n>1, a(0)=0, a(1)=1.

The programs for A210695, the canonical program `A210695.P10142089026405393628` is in `Seq.B000.C028`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A210695 has offset 0).

The definition of A210695 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*a(n-1)-a(n-2)+6` (program `A210695.P10142089026405393628`, by `A210695.P10142089026405393628.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A210695.P10142089026405393628

`6*a(n-1)-a(n-2)+6` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C028`.
-/

namespace A210695

/-- `6*a(n-1)-a(n-2)+6` -/
def P10142089026405393628.Spec : Prop :=
  ∀ n, P10142089026405393628.a n = A210695 n

theorem P10142089026405393628.correct : P10142089026405393628.Spec := by
  intro n
  simp only [A210695]

end A210695

/-! ## A210695.P12944071803855997956

`∑[ogf((x+5x^2)/(1-6x+x^2))]`
-/

namespace A210695.P12944071803855997956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5] [1, -6, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210695.P12944071803855997956

namespace A210695

/-- `∑[ogf((x+5x^2)/(1-6x+x^2))]` -/
def P12944071803855997956.Spec : Prop :=
  ∀ n, P12944071803855997956.a n = A210695 n

end A210695

/-! ## A210695.P17131651281628775952

`ogf((x+5x^2)/(1-7x+7x^2-x^3))`
-/

namespace A210695.P17131651281628775952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 5] [1, -7, 7, -1] n

end

end A210695.P17131651281628775952

namespace A210695

/-- `ogf((x+5x^2)/(1-7x+7x^2-x^3))` -/
def P17131651281628775952.Spec : Prop :=
  ∀ n, P17131651281628775952.a n = A210695 n

end A210695

/-! ## A210695.P10176589956267904784

`6*a(n-1)-(a(n-2)-6)` with `a(0)=0, a(1)=1`
-/

namespace A210695.P10176589956267904784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  6 * a (n - 1) - (a (n - 2) - 6)

end

end A210695.P10176589956267904784

namespace A210695

/-- `6*a(n-1)-(a(n-2)-6)` -/
def P10176589956267904784.Spec : Prop :=
  ∀ n, P10176589956267904784.a n = A210695 n

theorem P10176589956267904784.correct : P10176589956267904784.Spec := by
  intro n
  simp only [A210695, Nat.add_sub_cancel, A210695.P10176589956267904784.a, A210695.P10142089026405393628.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A210695

/-! ## A210695.P14317285551313214835

`∑[lcm(6, a(n-1))-a(n-2)]` with `a(0)=0, a(1)=1, a(2)=11`
-/

namespace A210695.P14317285551313214835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 11] fun n f1 =>
  (Int.lcm 6 (f1 (n - 1)) : ℤ) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A210695.P14317285551313214835

namespace A210695

/-- `∑[lcm(6, a(n-1))-a(n-2)]` -/
def P14317285551313214835.Spec : Prop :=
  ∀ n, P14317285551313214835.a n = A210695 n

end A210695

/-! ## A210695.P1566978217382669797

`record[A111954(n)-A077921(n)]`
-/

namespace A210695.P1566978217382669797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 n - A077921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210695.P1566978217382669797

namespace A210695

/-- `record[A111954(n)-A077921(n)]` -/
def P1566978217382669797.Spec : Prop :=
  ∀ n, P1566978217382669797.a n = A210695 n

end A210695

/-! ## A210695.P7441749191508784221

`record[A123335(n)-A111352(n)]`
-/

namespace A210695.P7441749191508784221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 n - A111352 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210695.P7441749191508784221

namespace A210695

/-- `record[A123335(n)-A111352(n)]` -/
def P7441749191508784221.Spec : Prop :=
  ∀ n, P7441749191508784221.a n = A210695 n

end A210695

/-! ## A210695.P7281335591390700859

`A001541(n)-(A182435(n)+1)`
-/

namespace A210695.P7281335591390700859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n - (A182435 n + 1)

end

end A210695.P7281335591390700859

namespace A210695

/-- `A001541(n)-(A182435(n)+1)` -/
def P7281335591390700859.Spec : Prop :=
  ∀ n, P7281335591390700859.a n = A210695 n

end A210695

/-! ## A210695.P13291667842734161419

`A001541(n)-A111352(2*n)`
-/

namespace A210695.P13291667842734161419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n - A111352 (2 * n)

end

end A210695.P13291667842734161419

namespace A210695

/-- `A001541(n)-A111352(2*n)` -/
def P13291667842734161419.Spec : Prop :=
  ∀ n, P13291667842734161419.a n = A210695 n

end A210695

/-! ## A210695.P10069258571399406530

`2*A001108(n)-A182435(n)`
-/

namespace A210695.P10069258571399406530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001108 n - A182435 n

end

end A210695.P10069258571399406530

namespace A210695

/-- `2*A001108(n)-A182435(n)` -/
def P10069258571399406530.Spec : Prop :=
  ∀ n, P10069258571399406530.a n = A210695 n

end A210695

/-! ## A210695.P9867862171741929729

`A099938(n+1)-(A182435(n)+2)`
-/

namespace A210695.P9867862171741929729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099938 (n + 1) - (A182435 n + 2)

end

end A210695.P9867862171741929729

namespace A210695

/-- `A099938(n+1)-(A182435(n)+2)` -/
def P9867862171741929729.Spec : Prop :=
  ∀ n, P9867862171741929729.a n = A210695 n

end A210695

/-! ## A210695.P13184703556316871863

`A001333(2*n)-A111352(2*n)`
-/

namespace A210695.P13184703556316871863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (2 * n) - A111352 (2 * n)

end

end A210695.P13184703556316871863

namespace A210695

/-- `A001333(2*n)-A111352(2*n)` -/
def P13184703556316871863.Spec : Prop :=
  ∀ n, P13184703556316871863.a n = A210695 n

end A210695

/-! ## A210695.P12738441844505782677

`A123335(2*n)-A111352(2*n)`
-/

namespace A210695.P12738441844505782677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 (2 * n) - A111352 (2 * n)

end

end A210695.P12738441844505782677

namespace A210695

/-- `A123335(2*n)-A111352(2*n)` -/
def P12738441844505782677.Spec : Prop :=
  ∀ n, P12738441844505782677.a n = A210695 n

end A210695

/-! ## A210695.P18240383217995953774

`A215936(2*n+1)+A171842(2*n)-2`
-/

namespace A210695.P18240383217995953774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215936 (2 * n + 1) + (A171842 (2 * n) - 2)

end

end A210695.P18240383217995953774

namespace A210695

/-- `A215936(2*n+1)+A171842(2*n)-2` -/
def P18240383217995953774.Spec : Prop :=
  ∀ n, P18240383217995953774.a n = A210695 n

end A210695

/-! ## A210695.P9844672005199492344

`A001108(n)+A001541(n)-A182189(n)`
-/

namespace A210695.P9844672005199492344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n + (A001541 n - A182189 n)

end

end A210695.P9844672005199492344

namespace A210695

/-- `A001108(n)+A001541(n)-A182189(n)` -/
def P9844672005199492344.Spec : Prop :=
  ∀ n, P9844672005199492344.a n = A210695 n

end A210695

/-! ## A210695.P14463847627860921591

`A038762(n)%A046090(n)`
-/

namespace A210695.P14463847627860921591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038762 n) (A046090 n)

end

end A210695.P14463847627860921591

namespace A210695

/-- `A038762(n)%A046090(n)` -/
def P14463847627860921591.Spec : Prop :=
  ∀ n, P14463847627860921591.a n = A210695 n

end A210695

/-! ## A210695.P10790335410282351007

`∑[A054490(n)]-A054490(n)`
-/

namespace A210695.P10790335410282351007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054490 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A054490 n

end

end A210695.P10790335410282351007

namespace A210695

/-- `∑[A054490(n)]-A054490(n)` -/
def P10790335410282351007.Spec : Prop :=
  ∀ n, P10790335410282351007.a n = A210695 n

end A210695

/-! ## A210695.P7056522338875615280

`A212329(n+1)-A005319(n)`
-/

namespace A210695.P7056522338875615280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212329 (n + 1) - A005319 n

end

end A210695.P7056522338875615280

namespace A210695

/-- `A212329(n+1)-A005319(n)` -/
def P7056522338875615280.Spec : Prop :=
  ∀ n, P7056522338875615280.a n = A210695 n

end A210695

/-! ## A210695.P1996549161479800483

`A003499(n)-(A001652(n)+2)`
-/

namespace A210695.P1996549161479800483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003499 n - (A001652 n + 2)

end

end A210695.P1996549161479800483

namespace A210695

/-- `A003499(n)-(A001652(n)+2)` -/
def P1996549161479800483.Spec : Prop :=
  ∀ n, P1996549161479800483.a n = A210695 n

end A210695

/-! ## A210695.P7795704799343700020

`A001652(n)-2*A182435(n)`
-/

namespace A210695.P7795704799343700020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001652 n - 2 * A182435 n

end

end A210695.P7795704799343700020

namespace A210695

/-- `A001652(n)-2*A182435(n)` -/
def P7795704799343700020.Spec : Prop :=
  ∀ n, P7795704799343700020.a n = A210695 n

end A210695

/-!
# A210696: Triangulations of the disk, G_{1,n}.

The programs for A210696, there is no canonical definition to state claims against.
-/

/-! ## A210696.P211207072334692752

`A262586(∑[n+1]+1)`
-/

namespace A210696.P211207072334692752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262586 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A210696.P211207072334692752

/-! ## A210696.P18264502530638856671

`record[gcd(A002262(n), A262586(n+1))]`
-/

namespace A210696.P18264502530638856671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A262586 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210696.P18264502530638856671

/-! ## A210696.P15501642424149895022

`record[gcd(1-A002262(n), A262586(n))]`
-/

namespace A210696.P15501642424149895022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A002262 n) (A262586 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A210696.P15501642424149895022

/-! ## A210696.P11002602779913064981

`lcm(A131561(n), A262586(A000124(n+1)))`
-/

namespace A210696.P11002602779913064981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131561 n) (A262586 (A000124 (n + 1)).toNat)

end

end A210696.P11002602779913064981

/-! ## A210696.P12871081558358333255

`A054977(n+1)*A262586(A000124(n+1))`
-/

namespace A210696.P12871081558358333255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A262586 (A000124 (n + 1)).toNat

end

end A210696.P12871081558358333255

/-! ## A210696.P2864250923178302028

`A057427(n+1)*A262586(A000124(n+1))`
-/

namespace A210696.P2864250923178302028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A262586 (A000124 (n + 1)).toNat

end

end A210696.P2864250923178302028

/-! ## A210696.P10560085916871526763

`A014963(4*n+6)*A262586(A000124(n+1))`
-/

namespace A210696.P10560085916871526763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A262586 (A000124 (n + 1)).toNat

end

end A210696.P10560085916871526763

/-!
# A210697: Triangle read by rows, arising in study of alternating-sign matrices.

The programs for A210697, there is no canonical definition to state claims against.
-/

/-! ## A210697.P16558263908778098245

`A033676(A077288(n)+A028909(n))`
-/

namespace A210697.P16558263908778098245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (A077288 n + A028909 n).toNat

end

end A210697.P16558263908778098245

/-! ## A210697.P16029565670564903410

`A193592(A207453(n+1)+A195326(n))`
-/

namespace A210697.P16029565670564903410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A207453 (n + 1) + A195326 n).toNat

end

end A210697.P16029565670564903410

/-! ## A210697.P14865421086924432688

`A049581(A153968(n)-A024327(n+1))`
-/

namespace A210697.P14865421086924432688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (A153968 n - A024327 (n + 1)).toNat

end

end A210697.P14865421086924432688

/-! ## A210697.P3379276894121803910

`A001055(A078607(n)*A123840(n+1))`
-/

namespace A210697.P3379276894121803910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (A078607 n * A123840 (n + 1)).toNat

end

end A210697.P3379276894121803910

/-! ## A210697.P10948444490970740372

`A366189(A299682(n+1)^A112754(n+1))`
-/

namespace A210697.P10948444490970740372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366189 (SequenceMachineLib.roundAway ((A299682 (n + 1) : ℚ) ^ (A112754 (n + 1) : ℤ))).toNat

end

end A210697.P10948444490970740372

/-!
# A210698: Number of 2 X 2 matrices having all terms in {1,...,n} and determinant = 0 (mod 3).

The programs for A210698, there is no canonical definition to state claims against.
-/

/-! ## A210698.P14236762232565313382

`A352667(2*(n+2))-2^n+1`
-/

namespace A210698.P14236762232565313382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352667 (2 * (n + 2)) - (2 ^ n : ℤ) + 1

end

end A210698.P14236762232565313382

