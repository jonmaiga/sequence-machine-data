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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
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
import Seq.B000.C035
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
# A218300: E.g.f. A(x) satisfies A( x/(exp(x)*cosh(x)) ) = exp(2*x)*cosh(2*x).

The programs for A218300, there is no canonical definition to state claims against.
-/

/-! ## A218300.P5546023760052708482

`Δ[A349562(n)]/A065475(n+1)`
-/

namespace A218300.P5546023760052708482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349562 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A065475 (n + 1) : ℚ)

end

end A218300.P5546023760052708482

/-! ## A218300.P1561538971345587541

`Δ[A349562(n)]/(2-A000007(n)+n)`
-/

namespace A218300.P1561538971345587541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349562 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (2 - A000007 n + (n : ℤ) : ℚ)

end

end A218300.P1561538971345587541

/-! ## A218300.P5958664992817811206

`Δ[A000079(n)*A007889(n)]/A065475(n+1)`
-/

namespace A218300.P5958664992817811206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A007889 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A065475 (n + 1) : ℚ)

end

end A218300.P5958664992817811206

/-! ## A218300.P5334851211582995914

`Δ[A007889(n)*A336996(n²)]/A065475(n+1)`
-/

namespace A218300.P5334851211582995914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007889 n * A336996 (n ^ 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A065475 (n + 1) : ℚ)

end

end A218300.P5334851211582995914

/-! ## A218300.P6487924598050681612

`Δ[(2-A000007(n))*A201595(n)]/A065475(n+1)`
-/

namespace A218300.P6487924598050681612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A201595 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (A065475 (n + 1) : ℚ)

end

end A218300.P6487924598050681612

/-!
# A218301: E.g.f. A(x) satisfies A( x/(exp(x)*cosh(x)) ) = exp(3*x)*cosh(3*x).

The programs for A218301, there is no canonical definition to state claims against.
-/

/-! ## A218301.P13569066161437741560

`A008486(n*∏[floor(abs(3*n-ϕ))])`
-/

namespace A218301.P13569066161437741560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|(3 * n : ℝ) - Real.goldenRatio|⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 ((n : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A218301.P13569066161437741560

/-!
# A218302: E.g.f. A(x) satisfies A( x/(exp(x)*cosh(x)) ) = exp(4*x)*cosh(4*x).

The programs for A218302, there is no canonical definition to state claims against.
-/

/-! ## A218302.P1073857076071163688

`A011782(n)*A371524(n)`
-/

namespace A218302.P1073857076071163688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A371524 n

end

end A218302.P1073857076071163688

/-! ## A218302.P7346130051847553824

`A158780(2*n+1)*A371524(n)`
-/

namespace A218302.P7346130051847553824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (2 * n + 1) * A371524 n

end

end A218302.P7346130051847553824

/-!
# A218303: E.g.f. A(x) satisfies A( x/(exp(2*x)*cosh(2*x)) ) = exp(x)*cosh(x).

The programs for A218303, there is no canonical definition to state claims against.
-/

/-! ## A218303.P12024315244114518605

`ceil(2^(n-1))*A202617(n)`
-/

namespace A218303.P12024315244114518605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A202617 n

end

end A218303.P12024315244114518605

/-! ## A218303.P7826094377842729741

`lcm(A011782(n), A202617(n))`
-/

namespace A218303.P7826094377842729741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A011782 n) (A202617 n)

end

end A218303.P7826094377842729741

/-! ## A218303.P6283016190661895453

`A202617(n)/A100526(n+1)*A214225(n+1)`
-/

namespace A218303.P6283016190661895453
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202617 n : ℚ) / (A100526 (n + 1) : ℚ) * (A214225 (n + 1) : ℚ)

end

end A218303.P6283016190661895453

/-! ## A218303.P17657609898892193995

`A202617(n)*A273943(A000079(n))`
-/

namespace A218303.P17657609898892193995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202617 n * A273943 (A000079 n).toNat

end

end A218303.P17657609898892193995

/-! ## A218303.P13819964680331662758

`A202617(n)*A296188(A008578(n+1))`
-/

namespace A218303.P13819964680331662758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202617 n * A296188 (A008578 (n + 1)).toNat

end

end A218303.P13819964680331662758

/-!
# A218304: E.g.f. A(x) satisfies A( x/(exp(2*x)*cosh(2*x)) ) = exp(3*x)*cosh(3*x).

The programs for A218304, there is no canonical definition to state claims against.
-/

/-! ## A218304.P15481875709937474255

`A222077(n)-A086520(A222062(n)+1)²`
-/

namespace A218304.P15481875709937474255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222077 n - A086520 (A222062 n + 1).toNat ^ 2

end

end A218304.P15481875709937474255

/-!
# A218305: E.g.f. A(x) satisfies A( x/(exp(3*x)*cosh(3*x)) ) = exp(x)*cosh(x).

The programs for A218305, there is no canonical definition to state claims against.
-/

/-! ## A218305.P27826987731077912

`A011782(n)*A349714(n)`
-/

namespace A218305.P27826987731077912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A349714 n

end

end A218305.P27826987731077912

/-! ## A218305.P10680364887839638996

`∑[A034008(n)]*A349714(n)`
-/

namespace A218305.P10680364887839638996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A349714 n

end

end A218305.P10680364887839638996

/-! ## A218305.P14590994622973149637

`A000010(A000079(n))*A349714(n)`
-/

namespace A218305.P14590994622973149637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000079 n).toNat * A349714 n

end

end A218305.P14590994622973149637

/-! ## A218305.P4021686438098299106

`A000010(Δ[A000225(n)])*A349714(n)`
-/

namespace A218305.P4021686438098299106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat * A349714 n

end

end A218305.P4021686438098299106

/-! ## A218305.P16920568647519192276

`A000010(record[A034008(n)])*A349714(n)`
-/

namespace A218305.P16920568647519192276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A349714 n

end

end A218305.P16920568647519192276

/-!
# A218306: E.g.f. A(x) satisfies A( x/(exp(3*x)*cosh(3*x)) ) = exp(2*x)*cosh(2*x).

The programs for A218306, there is no canonical definition to state claims against.
-/

/-! ## A218306.P7878106684891031579

`round(2^(n-1)*A372235(n))`
-/

namespace A218306.P7878106684891031579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A372235 n : ℚ))

end

end A218306.P7878106684891031579

/-! ## A218306.P14745834005510934981

`A000010(A000079(n))*A372235(n)`
-/

namespace A218306.P14745834005510934981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000079 n).toNat * A372235 n

end

end A218306.P14745834005510934981

/-! ## A218306.P16640592002948698308

`A000010(A060547(3*n+2))*A372235(n)`
-/

namespace A218306.P16640592002948698308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A060547 (3 * n + 2)).toNat * A372235 n

end

end A218306.P16640592002948698308

/-!
# A218307: E.g.f. A(x) satisfies A( x/(exp(4*x)*cosh(4*x)) ) = exp(x)*cosh(x).

The programs for A218307, there is no canonical definition to state claims against.
-/

/-! ## A218307.P8750082400172350312

`A011782(n)*A349715(n)`
-/

namespace A218307.P8750082400172350312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A349715 n

end

end A218307.P8750082400172350312

/-! ## A218307.P2212372923821484066

`∑[A034008(n)]*A349715(n)`
-/

namespace A218307.P2212372923821484066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A349715 n

end

end A218307.P2212372923821484066

/-! ## A218307.P11785390143527076327

`A000010(A000079(n))*A349715(n)`
-/

namespace A218307.P11785390143527076327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000079 n).toNat * A349715 n

end

end A218307.P11785390143527076327

/-! ## A218307.P3603285811123021667

`A000010(Δ[A000225(n)])*A349715(n)`
-/

namespace A218307.P3603285811123021667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat * A349715 n

end

end A218307.P3603285811123021667

/-! ## A218307.P5137552005651349476

`A000010(record[A034008(n)])*A349715(n)`
-/

namespace A218307.P5137552005651349476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A349715 n

end

end A218307.P5137552005651349476

/-!
# A218310: E.g.f. A(x) satisfies A( x/(exp(5*x)*cosh(5*x)) ) = exp(x)*cosh(x).

The programs for A218310, there is no canonical definition to state claims against.
-/

/-! ## A218310.P9530058992118799379

`A011782(n)*A349716(n)`
-/

namespace A218310.P9530058992118799379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A349716 n

end

end A218310.P9530058992118799379

/-! ## A218310.P8705000073328653067

`∑[A034008(n)]*A349716(n)`
-/

namespace A218310.P8705000073328653067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A349716 n

end

end A218310.P8705000073328653067

/-! ## A218310.P9965456657965002727

`A000010(A000079(n))*A349716(n)`
-/

namespace A218310.P9965456657965002727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000079 n).toNat * A349716 n

end

end A218310.P9965456657965002727

/-! ## A218310.P6329839625887761827

`A000010(Δ[A000225(n)])*A349716(n)`
-/

namespace A218310.P6329839625887761827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (n + 1) - f1 n).toNat * A349716 n

end

end A218310.P6329839625887761827

/-! ## A218310.P5461183354390700093

`A000010(record[A034008(n)])*A349716(n)`
-/

namespace A218310.P5461183354390700093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A349716 n

end

end A218310.P5461183354390700093

/-!
# A218311: Product of the nonzero digits (in base 10) of n^5.

The programs for A218311, there is no canonical definition to state claims against.
-/

/-! ## A218311.P13793985527843090211

`∏{digits}[(n+1)^5, A028310(#²)]`
-/

namespace A218311.P13793985527843090211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A028310 (x ^ 2)).prod

end

end A218311.P13793985527843090211

/-! ## A218311.P13160477214801854078

`∏{digits}[(n+1)^5, A274933(#+1)^2]`
-/

namespace A218311.P13160477214801854078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A274933 (x + 1) ^ 2).prod

end

end A218311.P13160477214801854078

/-! ## A218311.P16160055679057050940

`∏{digits}[(n+1)^5, A007318(A000124(#))²]`
-/

namespace A218311.P16160055679057050940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A007318 (A000124 x).toNat ^ 2).prod

end

end A218311.P16160055679057050940

/-!
# A218312: Hilltop maps: number of n X n binary arrays indicating the locations of corresponding elements not exceeded by any king-move neighbor in a random 0..2 n X n array.

The programs for A218312, there is no canonical definition to state claims against.
-/

/-! ## A218312.P1021691586024126167

`A218319(∑[4*n]+1)`
-/

namespace A218312.P1021691586024126167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218319 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218312.P1021691586024126167

/-! ## A218312.P16383410608686382930

`or(1, A218319(A001844(n)))`
-/

namespace A218312.P16383410608686382930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218319 (A001844 n).toNat)

end

end A218312.P16383410608686382930

/-! ## A218312.P15176671056090845352

`record[A218319(Δ[A235355(n)])]`
-/

namespace A218312.P15176671056090845352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218319 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218312.P15176671056090845352

/-! ## A218312.P719768555357188980

`record[A218319(A272267(n+1))]`
-/

namespace A218312.P719768555357188980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218319 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218312.P719768555357188980

/-!
# A218313: Hilltop maps: number of n X 2 binary arrays indicating the locations of corresponding elements not exceeded by any king-move neighbor in a random 0..2 n X 2 array.

The programs for A218313, there is no canonical definition to state claims against.
-/

/-! ## A218313.P15140400121013731986

`A218319(∑[n+1]+2)`
-/

namespace A218313.P15140400121013731986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218319 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A218313.P15140400121013731986

/-! ## A218313.P14864098202237565944

`record[A219063(A152948(n+1))]`
-/

namespace A218313.P14864098202237565944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A152948 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218313.P14864098202237565944

/-! ## A218313.P5465451219361125650

`record[A219063(A000217(n)+2)]`
-/

namespace A218313.P5465451219361125650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A000217 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218313.P5465451219361125650

/-! ## A218313.P12575772013633362275

`A219063(A133263(n)+1+n)`
-/

namespace A218313.P12575772013633362275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (A133263 n + 1 + (n : ℤ)).toNat

end

end A218313.P12575772013633362275

/-! ## A218313.P3032306897035184960

`record[A219063(Δ[A180415(n+1)])]`
-/

namespace A218313.P3032306897035184960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180415 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219063 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218313.P3032306897035184960

/-!
# A218314: Hilltop maps: number of n X 3 binary arrays indicating the locations of corresponding elements not exceeded by any king-move neighbor in a random 0..2 n X 3 array.

The programs for A218314, there is no canonical definition to state claims against.
-/

/-! ## A218314.P7270257551956585917

`sqrt(A218317(n+1))`
-/

namespace A218314.P7270257551956585917
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A218317 (n + 1) : ℝ)

end

end A218314.P7270257551956585917

/-! ## A218314.P8158720853507496445

`A218319(∑[n+2]+4)`
-/

namespace A218314.P8158720853507496445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218319 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A218314.P8158720853507496445

/-! ## A218314.P7364082429936682613

`lcm(7, A218319(A167614(n+1)))`
-/

namespace A218314.P7364082429936682613
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 7 (A218319 (A167614 (n + 1)).toNat)

end

end A218314.P7364082429936682613

/-! ## A218314.P13536216862671190797

`A218319(A167614(n+1))%A017443(n)`
-/

namespace A218314.P13536216862671190797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218319 (A167614 (n + 1)).toNat) (A017443 n)

end

end A218314.P13536216862671190797

/-! ## A218314.P6089130625242629969

`or(A000007(n), A218319(A167614(n+1)))`
-/

namespace A218314.P6089130625242629969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A218319 (A167614 (n + 1)).toNat)

end

end A218314.P6089130625242629969

/-!
# A218315: Hilltop maps: number of nX4 binary arrays indicating the locations of corresponding elements not exceeded by any king-move neighbor in a random 0..2 nX4 array.

The programs for A218315, there is no canonical definition to state claims against.
-/

/-! ## A218315.P14963333058549132452

`A218319(A374004(n+1))`
-/

namespace A218315.P14963333058549132452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218319 (A374004 (n + 1)).toNat

end

end A218315.P14963333058549132452

/-! ## A218315.P4363294711709370295

`A218319(A052905(n)+9)`
-/

namespace A218315.P4363294711709370295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218319 (A052905 n + 9).toNat

end

end A218315.P4363294711709370295

/-! ## A218315.P2516607509208303554

`A218319(A055999(n)+10)`
-/

namespace A218315.P2516607509208303554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218319 (A055999 n + 10).toNat

end

end A218315.P2516607509208303554

/-! ## A218315.P4514969992393058799

`A218319(A167614(n+2)+1)`
-/

namespace A218315.P4514969992393058799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218319 (A167614 (n + 2) + 1).toNat

end

end A218315.P4514969992393058799

/-! ## A218315.P223149074517751504

`A218319(Δ[A264443(n)-n²])`
-/

namespace A218315.P223149074517751504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218319 (f1 (n + 1) - f1 n).toNat

end

end A218315.P223149074517751504

/-!
# A218316: Hilltop maps: number of nX5 binary arrays indicating the locations of corresponding elements not exceeded by any king-move neighbor in a random 0..2 nX5 array.

The programs for A218316, there is no canonical definition to state claims against.
-/

/-! ## A218316.P4955788106755884237

`A218319(A374005(n+1))`
-/

namespace A218316.P4955788106755884237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218319 (A374005 (n + 1)).toNat

end

end A218316.P4955788106755884237

/-! ## A218316.P7008414637093395785

`A218319(A167499(n+3))`
-/

namespace A218316.P7008414637093395785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218319 (A167499 (n + 3)).toNat

end

end A218316.P7008414637093395785

/-! ## A218316.P16788569081351373417

`A218319(A155212(n)+13)`
-/

namespace A218316.P16788569081351373417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218319 (A155212 n + 13).toNat

end

end A218316.P16788569081351373417

/-! ## A218316.P12662334236671331099

`A218319(A056000(n)+15)`
-/

namespace A218316.P12662334236671331099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218319 (A056000 n + 15).toNat

end

end A218316.P12662334236671331099

/-! ## A218316.P9080985561190588864

`A218319(eq[6, A131818(n+1)])`
-/

namespace A218316.P9080985561190588864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218316.P9080985561190588864

/-!
# A218317: Hilltop maps: number of nX6 binary arrays indicating the locations of corresponding elements not exceeded by any king-move neighbor in a random 0..2 nX6 array.

The programs for A218317, there is no canonical definition to state claims against.
-/

/-! ## A218317.P11732604615889962111

`A218314(n+1)²`
-/

namespace A218317.P11732604615889962111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218314 (n + 1) ^ 2

end

end A218317.P11732604615889962111

/-! ## A218317.P1403720196898790002

`or(A000035(n), A218314(n+1))^2`
-/

namespace A218317.P1403720196898790002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A218314 (n + 1)) ^ 2

end

end A218317.P1403720196898790002

/-! ## A218317.P13728099535392750331

`or(A000038(n), A218314(n+1))^2`
-/

namespace A218317.P13728099535392750331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A218314 (n + 1)) ^ 2

end

end A218317.P13728099535392750331

/-! ## A218317.P13239590061898027913

`A218314(n+1)^A118821(A005408(n))`
-/

namespace A218317.P13239590061898027913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218314 (n + 1) : ℚ) ^ (A118821 (A005408 n).toNat : ℤ)

end

end A218317.P13239590061898027913

/-! ## A218317.P538222519373701904

`A218314(n+1)^A046523(A162565(n+1))`
-/

namespace A218317.P538222519373701904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A218314 (n + 1) : ℚ) ^ (A046523 (A162565 (n + 1)).toNat : ℤ)

end

end A218317.P538222519373701904

/-! ## A218317.P7704573702104377173

`A218314(n+1)*A218314(A005408(n)-n)`
-/

namespace A218317.P7704573702104377173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218314 (n + 1) * A218314 (A005408 n - (n : ℤ)).toNat

end

end A218317.P7704573702104377173

/-!
# A218318: Hilltop maps: number of nX7 binary arrays indicating the locations of corresponding elements not exceeded by any king-move neighbor in a random 0..2 nX7 array.

The programs for A218318, there is no canonical definition to state claims against.
-/

/-! ## A218318.P12748823831442724839

`A218319(A374008(n+1))`
-/

namespace A218318.P12748823831442724839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218319 (A374008 (n + 1)).toNat

end

end A218318.P12748823831442724839

/-! ## A218318.P7986315042039292167

`A218319(eq[8, A131818(n+1)])`
-/

namespace A218318.P7986315042039292167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218318.P7986315042039292167

/-! ## A218318.P16577708821124627783

`A218319(eq[6, A193592(n)])`
-/

namespace A218318.P16577708821124627783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218318.P16577708821124627783

/-! ## A218318.P2666311356045749013

`A218319(A000124(n+7)-7)`
-/

namespace A218318.P2666311356045749013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218319 (A000124 (n + 7) - 7).toNat

end

end A218318.P2666311356045749013

/-! ## A218318.P2949226473892650230

`A218319(eq[7, A200370(n+1)])`
-/

namespace A218318.P2949226473892650230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218318.P2949226473892650230

/-!
# A218319: T(n,k)=Hilltop maps: number of nXk binary arrays indicating the locations of corresponding elements not exceeded by any king-move neighbor in a random 0..2 nXk array.

The programs for A218319, there is no canonical definition to state claims against.
-/

/-! ## A218319.P17340866481587411815

`or(A132226(A218206(n+1)), A218206(n+1))`
-/

namespace A218319.P17340866481587411815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A132226 (A218206 (n + 1)).toNat) (A218206 (n + 1))

end

end A218319.P17340866481587411815

/-! ## A218319.P9546941651488352985

`2*A218233(A187829(n+1))-A218206(n+1)`
-/

namespace A218319.P9546941651488352985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A218233 (A187829 (n + 1)).toNat - A218206 (n + 1)

end

end A218319.P9546941651488352985

/-! ## A218319.P15252261415675919393

`A005843(A218233(n+1))-A218206(A187829(n+1))`
-/

namespace A218319.P15252261415675919393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A218233 (n + 1)).toNat - A218206 (A187829 (n + 1)).toNat

end

end A218319.P15252261415675919393

/-! ## A218319.P13826436882335183584

`A218233(A187829(n+1))+A218233(n+1)-A218206(n+1)`
-/

namespace A218319.P13826436882335183584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218233 (A187829 (n + 1)).toNat + (A218233 (n + 1) - A218206 (n + 1))

end

end A218319.P13826436882335183584

/-! ## A218319.P8658213560010540734

`or(A167040(n)!, A218206(n+1))`
-/

namespace A218319.P8658213560010540734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.factorial (A167040 n).toNat : ℤ) (A218206 (n + 1))

end

end A218319.P8658213560010540734

/-!
# A218320: Number of ways to write n as n = a*b*c*d with 1 <= a <= b <= c <= d <= n.

The programs for A218320, there is no canonical definition to state claims against.
-/

/-! ## A218320.P11588474361725455911

`A321379(n+1)+A034836(n+1)`
-/

namespace A218320.P11588474361725455911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321379 (n + 1) + A034836 (n + 1)

end

end A218320.P11588474361725455911

/-! ## A218320.P454040457845156858

`A046951(n+1)+A321379(n+1)+A088434(n+1)`
-/

namespace A218320.P454040457845156858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (n + 1) + (A321379 (n + 1) + A088434 (n + 1))

end

end A218320.P454040457845156858

/-! ## A218320.P6828005155892038603

`A038548(n+1)+A321379(n+1)+A122179(n+1)`
-/

namespace A218320.P6828005155892038603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (n + 1) + (A321379 (n + 1) + A122179 (n + 1))

end

end A218320.P6828005155892038603

/-! ## A218320.P18170965115133329728

`A321379(n+1)+A122179(n+1)+A072670(n)+1`
-/

namespace A218320.P18170965115133329728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321379 (n + 1) + (A122179 (n + 1) + (A072670 n + 1))

end

end A218320.P18170965115133329728

/-! ## A218320.P10472569034279371085

`A088433(n+1)+A321379(n+1)+A102354(n+1)`
-/

namespace A218320.P10472569034279371085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088433 (n + 1) + (A321379 (n + 1) + A102354 (n + 1))

end

end A218320.P10472569034279371085

/-! ## A218320.P9586821372120976716

`A196238(A002033(n))+A101637(n+1)`
-/

namespace A218320.P9586821372120976716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196238 (A002033 n).toNat + A101637 (n + 1)

end

end A218320.P9586821372120976716

/-! ## A218320.P18220320455988609257

`A034836(n+1)+A002266(A318559(n+1))`
-/

namespace A218320.P18220320455988609257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) + A002266 (A318559 (n + 1)).toNat

end

end A218320.P18220320455988609257

/-! ## A218320.P1462387212892288380

`A001055(n+1)-A054900(A334032(n+1))`
-/

namespace A218320.P1462387212892288380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (n + 1) - A054900 (A334032 (n + 1)).toNat

end

end A218320.P1462387212892288380

/-! ## A218320.P15563337716536576791

`A252665(n+1)-A122179(A346703(n+1))`
-/

namespace A218320.P15563337716536576791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252665 (n + 1) - A122179 (A346703 (n + 1)).toNat

end

end A218320.P15563337716536576791

/-! ## A218320.P2957746708967096080

`A285305(A165826(n+1))+A028422(n+1)`
-/

namespace A218320.P2957746708967096080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285305 (A165826 (n + 1)).toNat + A028422 (n + 1)

end

end A218320.P2957746708967096080

/-!
# A218321: Number of lattice paths from (0,0) to (n,n) which do not go above the diagonal x=y using steps (1,k), (k,1) with k>=0.

The programs for A218321, there is no canonical definition to state claims against.
-/

/-! ## A218321.P16216486455838983001

`A255070(A040014(2*n))+1`
-/

namespace A218321.P16216486455838983001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255070 (A040014 (2 * n)).toNat + 1

end

end A218321.P16216486455838983001

/-! ## A218321.P2334431046230444818

`A167439(A052542(n))+A096979(n)`
-/

namespace A218321.P2334431046230444818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A052542 n).toNat + A096979 n

end

end A218321.P2334431046230444818

/-!
# A218322: Maillet determinant for prime(n).

The programs for A218322, there is no canonical definition to state claims against.
-/

/-! ## A218322.P15484919121393313008

`Δ[A065882(A027107(n))]*A203411(n+2)`
-/

namespace A218322.P15484919121393313008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065882 (A027107 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A203411 (n + 2)

end

end A218322.P15484919121393313008

/-! ## A218322.P15667410938268775305

`(-p?[A049310(n)])^A000788(n)`
-/

namespace A218322.P15667410938268775305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) ^ (A000788 n : ℤ)

end

end A218322.P15667410938268775305

/-!
# A218323: a(n) = n^p*(n) where p*(n) is the multiplicative partition function.

The programs for A218323, there is no canonical definition to state claims against.
-/

/-! ## A218323.P8167870008023781629

`(n+1)^A001055(n+1)`
-/

namespace A218323.P8167870008023781629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A001055 (n + 1) : ℤ)

end

end A218323.P8167870008023781629

/-! ## A218323.P7143213804033816116

`(n+1)^Δ[A096276(n)]`
-/

namespace A218323.P7143213804033816116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096276 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A218323.P7143213804033816116

/-! ## A218323.P2443865032360462880

`(n+1)^(A028422(n+1)+1)`
-/

namespace A218323.P2443865032360462880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A028422 (n + 1) + 1 : ℤ)

end

end A218323.P2443865032360462880

/-! ## A218323.P18172640064524698223

`(n+1)^(A344368(n+1)/(n+1))`
-/

namespace A218323.P18172640064524698223
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ ((A344368 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)

end

end A218323.P18172640064524698223

/-! ## A218323.P17536458525598983687

`(n+1)^A050322(A101296(n+1))`
-/

namespace A218323.P17536458525598983687
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A050322 (A101296 (n + 1)).toNat : ℤ)

end

end A218323.P17536458525598983687

/-! ## A218323.P9318047631483710695

`(n+1)^A349907(A064988(n+1))`
-/

namespace A218323.P9318047631483710695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A349907 (A064988 (n + 1)).toNat : ℤ)

end

end A218323.P9318047631483710695

/-! ## A218323.P4931563714729152379

`(n+1)^A318284(A181819(n+1))`
-/

namespace A218323.P4931563714729152379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A318284 (A181819 (n + 1)).toNat : ℤ)

end

end A218323.P4931563714729152379

/-! ## A218323.P10092893468985934152

`(n+1)^(A096276(n+1)-A096276(n))`
-/

namespace A218323.P10092893468985934152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A096276 (n + 1) - A096276 n : ℤ)

end

end A218323.P10092893468985934152

/-! ## A218323.P2785677523884019607

`(n+1)^A347438((n+1)²)`
-/

namespace A218323.P2785677523884019607
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A347438 ((n + 1) ^ 2) : ℤ)

end

end A218323.P2785677523884019607

/-! ## A218323.P3114708539740242467

`(n+1)^A066032(∑[n+1])`
-/

namespace A218323.P3114708539740242467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A066032 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A218323.P3114708539740242467

/-! ## A218323.P16587409602056900628

`(n+1)^A108455(∑[n+1])`
-/

namespace A218323.P16587409602056900628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A108455 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A218323.P16587409602056900628

/-!
# A218324: Odd heptagonal pyramidal numbers.

The programs for A218324, the canonical program `A218324.P12235748189100371305` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218324 has offset 1).

The definition of A218324 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218324.P12235748189100371305

`3*a(n-1)-3*a(n-2)+a(n-3)+320` with `a(0)=1, a(1)=115, a(2)=645`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A218324

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+320` -/
def P12235748189100371305.Spec : Prop :=
  ∀ n, P12235748189100371305.a n = A218324 (n + 1)

theorem P12235748189100371305.correct : P12235748189100371305.Spec := by
  intro n
  simp only [A218324, Nat.add_sub_cancel]

end A218324

/-! ## A218324.P16828038573442071779

`(2*(n+1)-1)*(4*(n+1)-3)*(20*(n+1)-17)/3`
-/

namespace A218324.P16828038573442071779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 1) : ℤ) - 1) * ((4 * (n + 1) : ℤ) - 3) * ((20 * (n + 1) : ℤ) - 17) : ℚ) / 3

end

end A218324.P16828038573442071779

namespace A218324

/-- `(2*(n+1)-1)*(4*(n+1)-3)*(20*(n+1)-17)/3` -/
def P16828038573442071779.Spec : Prop :=
  ∀ n, P16828038573442071779.a n = (A218324 (n + 1) : ℚ)

theorem P16828038573442071779.correct : P16828038573442071779.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A218324, Nat.add_sub_cancel, A218324.P16828038573442071779.a, A218324.P12235748189100371305.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A218324, Nat.add_sub_cancel, A218324.P16828038573442071779.a, A218324.P12235748189100371305.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A218324

/-! ## A218324.P17297267045901494560

`(4*n+1)^3-C(4*n+1, 3)`
-/

namespace A218324.P17297267045901494560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((4 * n + 1) ^ 3 : ℤ) - (Nat.choose (4 * n + 1) 3 : ℤ)

end

end A218324.P17297267045901494560

namespace A218324

/-- `(4*n+1)^3-C(4*n+1, 3)` -/
def P17297267045901494560.Spec : Prop :=
  ∀ n, P17297267045901494560.a n = A218324 (n + 1)

end A218324

/-! ## A218324.P9331136758893181430

`A016815(n)-A267031(n)`
-/

namespace A218324.P9331136758893181430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016815 n - A267031 n

end

end A218324.P9331136758893181430

namespace A218324

/-- `A016815(n)-A267031(n)` -/
def P9331136758893181430.Spec : Prop :=
  ∀ n, P9331136758893181430.a n = A218324 (n + 1)

end A218324

/-! ## A218324.P17206003503130471170

`A100161(Δ[n²])`
-/

namespace A218324.P17206003503130471170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100161 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A218324.P17206003503130471170

namespace A218324

/-- `A100161(Δ[n²])` -/
def P17206003503130471170.Spec : Prop :=
  ∀ n, P17206003503130471170.a n = A218324 (n + 1)

end A218324

/-! ## A218324.P15751299803455700175

`record[A100161(n+1)^val(or(2, n), 2)]`
-/

namespace A218324.P15751299803455700175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100161 (n + 1) ^ SequenceMachineLib.valuation (Nat.lor 2 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218324.P15751299803455700175

namespace A218324

/-- `record[A100161(n+1)^val(or(2, n), 2)]` -/
def P15751299803455700175.Spec : Prop :=
  ∀ n, P15751299803455700175.a n = A218324 (n + 1)

end A218324

/-! ## A218324.P5694183206234353077

`record[A100161(A000265(n+1))]`
-/

namespace A218324.P5694183206234353077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100161 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218324.P5694183206234353077

namespace A218324

/-- `record[A100161(A000265(n+1))]` -/
def P5694183206234353077.Spec : Prop :=
  ∀ n, P5694183206234353077.a n = A218324 (n + 1)

end A218324

/-! ## A218324.P17154997559939577182

`A011199(2*n)+A006331(2*n)`
-/

namespace A218324.P17154997559939577182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011199 (2 * n) + A006331 (2 * n)

end

end A218324.P17154997559939577182

namespace A218324

/-- `A011199(2*n)+A006331(2*n)` -/
def P17154997559939577182.Spec : Prop :=
  ∀ n, P17154997559939577182.a n = A218324 (n + 1)

end A218324

/-! ## A218324.P9117814888492765540

`A300758(2*n)+A015221(2*n)`
-/

namespace A218324.P9117814888492765540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300758 (2 * n) + A015221 (2 * n)

end

end A218324.P9117814888492765540

namespace A218324

/-- `A300758(2*n)+A015221(2*n)` -/
def P9117814888492765540.Spec : Prop :=
  ∀ n, P9117814888492765540.a n = A218324 (n + 1)

end A218324

/-! ## A218324.P7706955374089564129

`A371532(2*n)+A033954(2*n)`
-/

namespace A218324.P7706955374089564129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371532 (2 * n) + A033954 (2 * n)

end

end A218324.P7706955374089564129

namespace A218324

/-- `A371532(2*n)+A033954(2*n)` -/
def P7706955374089564129.Spec : Prop :=
  ∀ n, P7706955374089564129.a n = A218324 (n + 1)

end A218324

/-! ## A218324.P16282277014433294444

`A016755(2*n)-A000447(2*n)`
-/

namespace A218324.P16282277014433294444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016755 (2 * n) - A000447 (2 * n)

end

end A218324.P16282277014433294444

namespace A218324

/-- `A016755(2*n)-A000447(2*n)` -/
def P16282277014433294444.Spec : Prop :=
  ∀ n, P16282277014433294444.a n = A218324 (n + 1)

end A218324

/-! ## A218324.P12301566888719806133

`A079588(2*n)-A002492(2*n)`
-/

namespace A218324.P12301566888719806133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079588 (2 * n) - A002492 (2 * n)

end

end A218324.P12301566888719806133

namespace A218324

/-- `A079588(2*n)-A002492(2*n)` -/
def P12301566888719806133.Spec : Prop :=
  ∀ n, P12301566888719806133.a n = A218324 (n + 1)

end A218324

/-! ## A218324.P3091762736395576690

`A015219(2*n)-A084367(2*n)`
-/

namespace A218324.P3091762736395576690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015219 (2 * n) - A084367 (2 * n)

end

end A218324.P3091762736395576690

namespace A218324

/-- `A015219(2*n)-A084367(2*n)` -/
def P3091762736395576690.Spec : Prop :=
  ∀ n, P3091762736395576690.a n = A218324 (n + 1)

end A218324

/-! ## A218324.P6033033676280558115

`A100149(2*n+1)+A006002(2*n)`
-/

namespace A218324.P6033033676280558115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100149 (2 * n + 1) + A006002 (2 * n)

end

end A218324.P6033033676280558115

namespace A218324

/-- `A100149(2*n+1)+A006002(2*n)` -/
def P6033033676280558115.Spec : Prop :=
  ∀ n, P6033033676280558115.a n = A218324 (n + 1)

end A218324

/-! ## A218324.P2277554156976105778

`A100155(2*n+1)+A011379(2*n)`
-/

namespace A218324.P2277554156976105778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100155 (2 * n + 1) + A011379 (2 * n)

end

end A218324.P2277554156976105778

namespace A218324

/-- `A100155(2*n+1)+A011379(2*n)` -/
def P2277554156976105778.Spec : Prop :=
  ∀ n, P2277554156976105778.a n = A218324 (n + 1)

end A218324

/-! ## A218324.P9374866009680581361

`A095265(2*n+1)+A046092(2*n)`
-/

namespace A218324.P9374866009680581361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095265 (2 * n + 1) + A046092 (2 * n)

end

end A218324.P9374866009680581361

namespace A218324

/-- `A095265(2*n+1)+A046092(2*n)` -/
def P9374866009680581361.Spec : Prop :=
  ∀ n, P9374866009680581361.a n = A218324 (n + 1)

end A218324

/-! ## A218324.P6905909789844557387

`A144945(2*n+1)+A027849(2*n)`
-/

namespace A218324.P6905909789844557387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144945 (2 * n + 1) + A027849 (2 * n)

end

end A218324.P6905909789844557387

namespace A218324

/-- `A144945(2*n+1)+A027849(2*n)` -/
def P6905909789844557387.Spec : Prop :=
  ∀ n, P6905909789844557387.a n = A218324 (n + 1)

end A218324

/-! ## A218324.P13616769680645744219

`A214092(2*n+1)+A016061(2*n)`
-/

namespace A218324.P13616769680645744219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214092 (2 * n + 1) + A016061 (2 * n)

end

end A218324.P13616769680645744219

namespace A218324

/-- `A214092(2*n+1)+A016061(2*n)` -/
def P13616769680645744219.Spec : Prop :=
  ∀ n, P13616769680645744219.a n = A218324 (n + 1)

end A218324

/-! ## A218324.P12712506625272445707

`A300758(2*n)+A100157(2*n+1)`
-/

namespace A218324.P12712506625272445707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300758 (2 * n) + A100157 (2 * n + 1)

end

end A218324.P12712506625272445707

namespace A218324

/-- `A300758(2*n)+A100157(2*n+1)` -/
def P12712506625272445707.Spec : Prop :=
  ∀ n, P12712506625272445707.a n = A218324 (n + 1)

end A218324

/-! ## A218324.P10637453013897930666

`A256716(2*n+1)+A172082(2*n)`
-/

namespace A218324.P10637453013897930666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256716 (2 * n + 1) + A172082 (2 * n)

end

end A218324.P10637453013897930666

namespace A218324

/-- `A256716(2*n+1)+A172082(2*n)` -/
def P10637453013897930666.Spec : Prop :=
  ∀ n, P10637453013897930666.a n = A218324 (n + 1)

end A218324

/-!
# A218325: Even heptagonal pyramidal numbers.

The programs for A218325, the canonical program `A218325.P7787996190507047253` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218325 has offset 1).

The definition of A218325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218325.P7787996190507047253

`2*A015224(n+1)-A015220(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A218325

/-- `2*A015224(n+1)-A015220(n+1)` -/
def P7787996190507047253.Spec : Prop :=
  ∀ n, P7787996190507047253.a n = A218325 (n + 1)

theorem P7787996190507047253.correct : P7787996190507047253.Spec := by
  intro n
  simp only [A218325, Nat.add_sub_cancel]

end A218325

/-! ## A218325.P6328231834430612624

`A002413(floor(n/3)+n+2)`
-/

namespace A218325.P6328231834430612624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002413 (⌊(n : ℚ) / 3⌋ + (n + 2 : ℤ)).toNat

end

end A218325.P6328231834430612624

namespace A218325

/-- `A002413(floor(n/3)+n+2)` -/
def P6328231834430612624.Spec : Prop :=
  ∀ n, P6328231834430612624.a n = A218325 (n + 1)

end A218325

/-! ## A218325.P16299354030956622493

`record[Δ[A269428(A020986(n))]]`
-/

namespace A218325.P16299354030956622493
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269428 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218325.P16299354030956622493

namespace A218325

/-- `record[Δ[A269428(A020986(n))]]` -/
def P16299354030956622493.Spec : Prop :=
  ∀ n, P16299354030956622493.a n = A218325 (n + 1)

end A218325

/-! ## A218325.P14380002388341409562

`record[A002413(A321126(2*n+1))]`
-/

namespace A218325.P14380002388341409562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002413 (A321126 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218325.P14380002388341409562

namespace A218325

/-- `record[A002413(A321126(2*n+1))]` -/
def P14380002388341409562.Spec : Prop :=
  ∀ n, P14380002388341409562.a n = A218325 (n + 1)

end A218325

/-! ## A218325.P5983863891545266813

`record[A002413(A004736(2*(n+1)))]`
-/

namespace A218325.P5983863891545266813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002413 (A004736 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218325.P5983863891545266813

namespace A218325

/-- `record[A002413(A004736(2*(n+1)))]` -/
def P5983863891545266813.Spec : Prop :=
  ∀ n, P5983863891545266813.a n = A218325 (n + 1)

end A218325

/-!
# A218326: Odd octagonal pyramidal numbers.

The programs for A218326, the canonical program `A218326.P1667549857107495393` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218326 has offset 1).

The definition of A218326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218326.P1667549857107495393

`record[(2*n+1)*C(xor(2, n), 2)]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A218326

/-- `record[(2*n+1)*C(xor(2, n), 2)]` -/
def P1667549857107495393.Spec : Prop :=
  ∀ n, (P1667549857107495393.a n : ℤ) = A218326 (n + 1)

theorem P1667549857107495393.correct : P1667549857107495393.Spec := by
  intro n
  simp only [A218326, Nat.add_sub_cancel]

end A218326

/-! ## A218326.P9417545453343952621

`A014493(n+1)*A047471(n+1)`
-/

namespace A218326.P9417545453343952621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014493 (n + 1) * A047471 (n + 1)

end

end A218326.P9417545453343952621

namespace A218326

/-- `A014493(n+1)*A047471(n+1)` -/
def P9417545453343952621.Spec : Prop :=
  ∀ n, P9417545453343952621.a n = A218326 (n + 1)

end A218326

/-! ## A218326.P11258192666534878157

`(A042963(n+1)+A042948(n))*A014493(n+1)`
-/

namespace A218326.P11258192666534878157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A042963 (n + 1) + A042948 n) * A014493 (n + 1)

end

end A218326.P11258192666534878157

namespace A218326

/-- `(A042963(n+1)+A042948(n))*A014493(n+1)` -/
def P11258192666534878157.Spec : Prop :=
  ∀ n, P11258192666534878157.a n = A218326 (n + 1)

end A218326

/-! ## A218326.P14885948998257183262

`A002414(or(1, n)+n)`
-/

namespace A218326.P14885948998257183262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 (Nat.lor 1 n + n)

end

end A218326.P14885948998257183262

namespace A218326

/-- `A002414(or(1, n)+n)` -/
def P14885948998257183262.Spec : Prop :=
  ∀ n, P14885948998257183262.a n = A218326 (n + 1)

end A218326

/-! ## A218326.P7725670100423182992

`A002414(record[xor(2, n)-1])`
-/

namespace A218326.P7725670100423182992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A218326.P7725670100423182992

namespace A218326

/-- `A002414(record[xor(2, n)-1])` -/
def P7725670100423182992.Spec : Prop :=
  ∀ n, P7725670100423182992.a n = A218326 (n + 1)

end A218326

/-! ## A218326.P6007953694391577426

`A002414(char[2*n]+2*n)`
-/

namespace A218326.P6007953694391577426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 ((if ∃ j, f1 j = n then 1 else 0) + 2 * n)

end

end A218326.P6007953694391577426

namespace A218326

/-- `A002414(char[2*n]+2*n)` -/
def P6007953694391577426.Spec : Prop :=
  ∀ n, P6007953694391577426.a n = A218326 (n + 1)

end A218326

/-! ## A218326.P7233942560234626751

`A111384(A047621(n+1))`
-/

namespace A218326.P7233942560234626751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111384 (A047621 (n + 1)).toNat

end

end A218326.P7233942560234626751

namespace A218326

/-- `A111384(A047621(n+1))` -/
def P7233942560234626751.Spec : Prop :=
  ∀ n, P7233942560234626751.a n = A218326 (n + 1)

end A218326

/-! ## A218326.P10677511597789416058

`A178312(A047471(n+1))`
-/

namespace A218326.P10677511597789416058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178312 (A047471 (n + 1)).toNat

end

end A218326.P10677511597789416058

namespace A218326

/-- `A178312(A047471(n+1))` -/
def P10677511597789416058.Spec : Prop :=
  ∀ n, P10677511597789416058.a n = A218326 (n + 1)

end A218326

/-! ## A218326.P5960190690513657485

`record[(2*n+1)*A093178(A000217(n+1))]`
-/

namespace A218326.P5960190690513657485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A093178 (A000217 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218326.P5960190690513657485

namespace A218326

/-- `record[(2*n+1)*A093178(A000217(n+1))]` -/
def P5960190690513657485.Spec : Prop :=
  ∀ n, P5960190690513657485.a n = A218326 (n + 1)

end A218326

/-! ## A218326.P2318962188822370032

`record[(2*n+1)*A093178(A008795(2*n))]`
-/

namespace A218326.P2318962188822370032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A093178 (A008795 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218326.P2318962188822370032

namespace A218326

/-- `record[(2*n+1)*A093178(A008795(2*n))]` -/
def P2318962188822370032.Spec : Prop :=
  ∀ n, P2318962188822370032.a n = A218326 (n + 1)

end A218326

/-!
# A218327: Even octagonal pyramidal numbers (A002414).

The programs for A218327, the canonical program `A218327.P2191056422784323382` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218327 has offset 1).

The definition of A218327 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218327.P2191056422784323382

`(4*(n+1)-(-1)^(n+1)+1)*(4*(n+1)-(-1)^(n+1)+3)*(4*(n+1)-(-1)^(n+1))/8`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A218327

/-- `(4*(n+1)-(-1)^(n+1)+1)*(4*(n+1)-(-1)^(n+1)+3)*(4*(n+1)-(-1)^(n+1))/8` -/
def P2191056422784323382.Spec : Prop :=
  ∀ n, P2191056422784323382.a n = (A218327 (n + 1) : ℚ)

end A218327

/-! ## A218327.P883947141529384446

`A014738(n)-A014493(n+1)*A014494(n+1)`
-/

namespace A218327.P883947141529384446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014738 n - A014493 (n + 1) * A014494 (n + 1)

end

end A218327.P883947141529384446

namespace A218327

/-- `A014738(n)-A014493(n+1)*A014494(n+1)` -/
def P883947141529384446.Spec : Prop :=
  ∀ n, P883947141529384446.a n = A218327 (n + 1)

end A218327

/-! ## A218327.P14137144091172517226

`(A193867(n+2)-A193868(n+1))*A014494(n+1)`
-/

namespace A218327.P14137144091172517226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A193867 (n + 2) - A193868 (n + 1)) * A014494 (n + 1)

end

end A218327.P14137144091172517226

namespace A218327

/-- `(A193867(n+2)-A193868(n+1))*A014494(n+1)` -/
def P14137144091172517226.Spec : Prop :=
  ∀ n, P14137144091172517226.a n = A218327 (n + 1)

end A218327

/-! ## A218327.P7114521820395462583

`A002414(record[xor(2, n)+1])`
-/

namespace A218327.P7114521820395462583
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A218327.P7114521820395462583

namespace A218327

/-- `A002414(record[xor(2, n)+1])` -/
def P7114521820395462583.Spec : Prop :=
  ∀ n, P7114521820395462583.a n = A218327 (n + 1)

end A218327

/-! ## A218327.P6955817043237646536

`A002414(gcd(2, n)+2*n+1)`
-/

namespace A218327.P6955817043237646536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 (Nat.gcd 2 n + (2 * n + 1))

end

end A218327.P6955817043237646536

namespace A218327

/-- `A002414(gcd(2, n)+2*n+1)` -/
def P6955817043237646536.Spec : Prop :=
  ∀ n, P6955817043237646536.a n = A218327 (n + 1)

end A218327

/-! ## A218327.P12933073366704087539

`A002414(A014601(n+1))`
-/

namespace A218327.P12933073366704087539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 (A014601 (n + 1)).toNat

end

end A218327.P12933073366704087539

namespace A218327

/-- `A002414(A014601(n+1))` -/
def P12933073366704087539.Spec : Prop :=
  ∀ n, P12933073366704087539.a n = A218327 (n + 1)

end A218327

/-! ## A218327.P9308715716839543775

`A002414(A154708(n+1))`
-/

namespace A218327.P9308715716839543775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 (A154708 (n + 1)).toNat

end

end A218327.P9308715716839543775

namespace A218327

/-- `A002414(A154708(n+1))` -/
def P9308715716839543775.Spec : Prop :=
  ∀ n, P9308715716839543775.a n = A218327 (n + 1)

end A218327

/-! ## A218327.P7280299104381906058

`A002414(A042948(n)+3)`
-/

namespace A218327.P7280299104381906058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 (A042948 n + 3).toNat

end

end A218327.P7280299104381906058

namespace A218327

/-- `A002414(A042948(n)+3)` -/
def P7280299104381906058.Spec : Prop :=
  ∀ n, P7280299104381906058.a n = A218327 (n + 1)

end A218327

/-! ## A218327.P864793570313538009

`A002414(A042964(n+1)+1)`
-/

namespace A218327.P864793570313538009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 (A042964 (n + 1) + 1).toNat

end

end A218327.P864793570313538009

namespace A218327

/-- `A002414(A042964(n+1)+1)` -/
def P864793570313538009.Spec : Prop :=
  ∀ n, P864793570313538009.a n = A218327 (n + 1)

end A218327

/-! ## A218327.P4025637822123123880

`A002414(A042963(n+1)+2)`
-/

namespace A218327.P4025637822123123880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 (A042963 (n + 1) + 2).toNat

end

end A218327.P4025637822123123880

namespace A218327

/-- `A002414(A042963(n+1)+2)` -/
def P4025637822123123880.Spec : Prop :=
  ∀ n, P4025637822123123880.a n = A218327 (n + 1)

end A218327

/-! ## A218327.P16360207340003795417

`A002414(∑[A009001(2*n)+2])`
-/

namespace A218327.P16360207340003795417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218327.P16360207340003795417

namespace A218327

/-- `A002414(∑[A009001(2*n)+2])` -/
def P16360207340003795417.Spec : Prop :=
  ∀ n, P16360207340003795417.a n = A218327 (n + 1)

end A218327

/-! ## A218327.P3925114551856427424

`A002414(A008585(n)-or(1, n-3))`
-/

namespace A218327.P3925114551856427424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 (A008585 n - Int.lor 1 ((n : ℤ) - 3)).toNat

end

end A218327.P3925114551856427424

namespace A218327

/-- `A002414(A008585(n)-or(1, n-3))` -/
def P3925114551856427424.Spec : Prop :=
  ∀ n, P3925114551856427424.a n = A218327 (n + 1)

end A218327

/-! ## A218327.P15901123726464060847

`A002414(∑[A000120(7^∑[(-1)^n])])`
-/

namespace A218327.P15901123726464060847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218327.P15901123726464060847

namespace A218327

/-- `A002414(∑[A000120(7^∑[(-1)^n])])` -/
def P15901123726464060847.Spec : Prop :=
  ∀ n, P15901123726464060847.a n = A218327 (n + 1)

end A218327

/-! ## A218327.P9969009090797531741

`A002414(∑[A007318(7^∑[(-1)^n])])`
-/

namespace A218327.P9969009090797531741
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f2 j : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218327.P9969009090797531741

namespace A218327

/-- `A002414(∑[A007318(7^∑[(-1)^n])])` -/
def P9969009090797531741.Spec : Prop :=
  ∀ n, P9969009090797531741.a n = A218327 (n + 1)

end A218327

/-! ## A218327.P5962504269678812522

`A002414(A000034(n+1)+2*n+1)`
-/

namespace A218327.P5962504269678812522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002414 (A000034 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A218327.P5962504269678812522

namespace A218327

/-- `A002414(A000034(n+1)+2*n+1)` -/
def P5962504269678812522.Spec : Prop :=
  ∀ n, P5962504269678812522.a n = A218327 (n + 1)

end A218327

/-! ## A218327.P1227729839496131251

`A059722(2*n+3)-A218326(n+2)`
-/

namespace A218327.P1227729839496131251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059722 (2 * n + 3) - A218326 (n + 2)

end

end A218327.P1227729839496131251

namespace A218327

/-- `A059722(2*n+3)-A218326(n+2)` -/
def P1227729839496131251.Spec : Prop :=
  ∀ n, P1227729839496131251.a n = A218327 (n + 1)

end A218327

/-! ## A218327.P4510543097247050278

`A178312(record[or(5, n)])`
-/

namespace A218327.P4510543097247050278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178312 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A218327.P4510543097247050278

namespace A218327

/-- `A178312(record[or(5, n)])` -/
def P4510543097247050278.Spec : Prop :=
  ∀ n, P4510543097247050278.a n = A218327 (n + 1)

end A218327

/-! ## A218327.P11991703903327956032

`A178312(record[xor(5, n)])`
-/

namespace A218327.P11991703903327956032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 5 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178312 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A218327.P11991703903327956032

namespace A218327

/-- `A178312(record[xor(5, n)])` -/
def P11991703903327956032.Spec : Prop :=
  ∀ n, P11991703903327956032.a n = A218327 (n + 1)

end A218327

/-! ## A218327.P12243382273298485156

`A178312(A047550(n+1))`
-/

namespace A218327.P12243382273298485156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178312 (A047550 (n + 1)).toNat

end

end A218327.P12243382273298485156

namespace A218327

/-- `A178312(A047550(n+1))` -/
def P12243382273298485156.Spec : Prop :=
  ∀ n, P12243382273298485156.a n = A218327 (n + 1)

end A218327

/-! ## A218327.P12782610248687802968

`A111384(A047522(n+2))`
-/

namespace A218327.P12782610248687802968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111384 (A047522 (n + 2)).toNat

end

end A218327.P12782610248687802968

namespace A218327

/-- `A111384(A047522(n+2))` -/
def P12782610248687802968.Spec : Prop :=
  ∀ n, P12782610248687802968.a n = A218327 (n + 1)

end A218327

/-!
# A218328: Odd 9-gonal (nonagonal) pyramidal numbers.

The programs for A218328, the canonical program `A218328.P13046838586411393809` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218328 has offset 1).

The definition of A218328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218328.P13046838586411393809

`3*a(n-1)-3*a(n-2)+a(n-3)+448` with `a(0)=1, a(1)=155, a(2)=885`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A218328

/-- `3*a(n-1)-3*a(n-2)+a(n-3)+448` -/
def P13046838586411393809.Spec : Prop :=
  ∀ n, P13046838586411393809.a n = A218328 (n + 1)

theorem P13046838586411393809.correct : P13046838586411393809.Spec := by
  intro n
  simp only [A218328, Nat.add_sub_cancel]

end A218328

/-! ## A218328.P165601038696159380

`(2*(n+1)-1)*(4*(n+1)-3)*(28*(n+1)-25)/3`
-/

namespace A218328.P165601038696159380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((2 * (n + 1) : ℤ) - 1) * ((4 * (n + 1) : ℤ) - 3) * ((28 * (n + 1) : ℤ) - 25) : ℚ) / 3

end

end A218328.P165601038696159380

namespace A218328

/-- `(2*(n+1)-1)*(4*(n+1)-3)*(28*(n+1)-25)/3` -/
def P165601038696159380.Spec : Prop :=
  ∀ n, P165601038696159380.a n = (A218328 (n + 1) : ℚ)

theorem P165601038696159380.correct : P165601038696159380.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A218328, Nat.add_sub_cancel, A218328.P165601038696159380.a, A218328.P13046838586411393809.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A218328, Nat.add_sub_cancel, A218328.P165601038696159380.a, A218328.P13046838586411393809.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A218328

/-! ## A218328.P14984436958719810680

`A079588(2*n)+A002492(2*n)`
-/

namespace A218328.P14984436958719810680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079588 (2 * n) + A002492 (2 * n)

end

end A218328.P14984436958719810680

namespace A218328

/-- `A079588(2*n)+A002492(2*n)` -/
def P14984436958719810680.Spec : Prop :=
  ∀ n, P14984436958719810680.a n = A218328 (n + 1)

end A218328

/-! ## A218328.P6633702780156643309

`A188050(2*n)+A015221(2*n)`
-/

namespace A218328.P6633702780156643309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188050 (2 * n) + A015221 (2 * n)

end

end A218328.P6633702780156643309

namespace A218328

/-- `A188050(2*n)+A015221(2*n)` -/
def P6633702780156643309.Spec : Prop :=
  ∀ n, P6633702780156643309.a n = A218328 (n + 1)

end A218328

/-! ## A218328.P9141986989721162415

`A015219(2*n)-A000447(2*n)`
-/

namespace A218328.P9141986989721162415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015219 (2 * n) - A000447 (2 * n)

end

end A218328.P9141986989721162415

namespace A218328

/-- `A015219(2*n)-A000447(2*n)` -/
def P9141986989721162415.Spec : Prop :=
  ∀ n, P9141986989721162415.a n = A218328 (n + 1)

end A218328

/-! ## A218328.P9956947968406677716

`A100161(2*n+1)+2*A002492(2*n)`
-/

namespace A218328.P9956947968406677716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100161 (2 * n + 1) + 2 * A002492 (2 * n)

end

end A218328.P9956947968406677716

namespace A218328

/-- `A100161(2*n+1)+2*A002492(2*n)` -/
def P9956947968406677716.Spec : Prop :=
  ∀ n, P9956947968406677716.a n = A218328 (n + 1)

end A218328

/-! ## A218328.P5613678603311623536

`A213839(2*n+1)+A192796(2*n+1)/2`
-/

namespace A218328.P5613678603311623536
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213839 (2 * n + 1) : ℚ) + (A192796 (2 * n + 1) : ℚ) / 2

end

end A218328.P5613678603311623536

namespace A218328

/-- `A213839(2*n+1)+A192796(2*n+1)/2` -/
def P5613678603311623536.Spec : Prop :=
  ∀ n, P5613678603311623536.a n = (A218328 (n + 1) : ℚ)

end A218328

/-! ## A218328.P7339927595194126804

`A007584(4*n+1)`
-/

namespace A218328.P7339927595194126804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007584 (4 * n + 1)

end

end A218328.P7339927595194126804

namespace A218328

/-- `A007584(4*n+1)` -/
def P7339927595194126804.Spec : Prop :=
  ∀ n, P7339927595194126804.a n = A218328 (n + 1)

end A218328

/-! ## A218328.P8757164969627787475

`or(1, A007584(A016813(n)))`
-/

namespace A218328.P8757164969627787475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A007584 (A016813 n).toNat)

end

end A218328.P8757164969627787475

namespace A218328

/-- `or(1, A007584(A016813(n)))` -/
def P8757164969627787475.Spec : Prop :=
  ∀ n, P8757164969627787475.a n = A218328 (n + 1)

end A218328

/-! ## A218328.P10731424041050083207

`record[A007584(A004273(xor(1, n)))]`
-/

namespace A218328.P10731424041050083207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007584 (A004273 (Nat.xor 1 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218328.P10731424041050083207

namespace A218328

/-- `record[A007584(A004273(xor(1, n)))]` -/
def P10731424041050083207.Spec : Prop :=
  ∀ n, P10731424041050083207.a n = A218328 (n + 1)

end A218328

/-! ## A218328.P3249635736196021202

`A000447(4*n+1)-A000447(2*n)`
-/

namespace A218328.P3249635736196021202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (4 * n + 1) - A000447 (2 * n)

end

end A218328.P3249635736196021202

namespace A218328

/-- `A000447(4*n+1)-A000447(2*n)` -/
def P3249635736196021202.Spec : Prop :=
  ∀ n, P3249635736196021202.a n = A218328 (n + 1)

end A218328

/-! ## A218328.P8365747910541547424

`A064694(8*n+1)`
-/

namespace A218328.P8365747910541547424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064694 (8 * n + 1)

end

end A218328.P8365747910541547424

namespace A218328

/-- `A064694(8*n+1)` -/
def P8365747910541547424.Spec : Prop :=
  ∀ n, P8365747910541547424.a n = A218328 (n + 1)

end A218328

/-!
# A218329: Even 9-gonal (nonagonal) pyramidal numbers.

The programs for A218329, the canonical program `A218329.P14084442383127146810` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218329 has offset 1).

The definition of A218329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218329.P14084442383127146810

`A007584(A004772(n+2))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A218329

/-- `A007584(A004772(n+2))` -/
def P14084442383127146810.Spec : Prop :=
  ∀ n, P14084442383127146810.a n = A218329 (n + 1)

theorem P14084442383127146810.correct : P14084442383127146810.Spec := by
  intro n
  simp only [A218329, Nat.add_sub_cancel]

end A218329

/-! ## A218329.P173197736206741142

`A007584(A004773(n)+2)`
-/

namespace A218329.P173197736206741142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007584 (A004773 n + 2).toNat

end

end A218329.P173197736206741142

namespace A218329

/-- `A007584(A004773(n)+2)` -/
def P173197736206741142.Spec : Prop :=
  ∀ n, P173197736206741142.a n = A218329 (n + 1)

end A218329

/-! ## A218329.P3284317265301856243

`A007584(A319371(n+2))`
-/

namespace A218329.P3284317265301856243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007584 (A319371 (n + 2)).toNat

end

end A218329.P3284317265301856243

namespace A218329

/-- `A007584(A319371(n+2))` -/
def P3284317265301856243.Spec : Prop :=
  ∀ n, P3284317265301856243.a n = A218329 (n + 1)

end A218329

/-! ## A218329.P17885672676980671200

`A007584(A002264(n)+2+n)`
-/

namespace A218329.P17885672676980671200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007584 (A002264 n + 2 + (n : ℤ)).toNat

end

end A218329.P17885672676980671200

namespace A218329

/-- `A007584(A002264(n)+2+n)` -/
def P17885672676980671200.Spec : Prop :=
  ∀ n, P17885672676980671200.a n = A218329 (n + 1)

end A218329

/-! ## A218329.P16566990068879391995

`A007584(A004523(2*n)+2)`
-/

namespace A218329.P16566990068879391995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007584 (A004523 (2 * n) + 2).toNat

end

end A218329.P16566990068879391995

namespace A218329

/-- `A007584(A004523(2*n)+2)` -/
def P16566990068879391995.Spec : Prop :=
  ∀ n, P16566990068879391995.a n = A218329 (n + 1)

end A218329

/-! ## A218329.P17936292467470415724

`A007584(Δ[A001840(2*n)])`
-/

namespace A218329.P17936292467470415724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001840 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007584 (f1 (n + 1) - f1 n).toNat

end

end A218329.P17936292467470415724

namespace A218329

/-- `A007584(Δ[A001840(2*n)])` -/
def P17936292467470415724.Spec : Prop :=
  ∀ n, P17936292467470415724.a n = A218329 (n + 1)

end A218329

/-! ## A218329.P4897791182642872678

`A064694(A047484(n+1))`
-/

namespace A218329.P4897791182642872678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064694 (A047484 (n + 1)).toNat

end

end A218329.P4897791182642872678

namespace A218329

/-- `A064694(A047484(n+1))` -/
def P4897791182642872678.Spec : Prop :=
  ∀ n, P4897791182642872678.a n = A218329 (n + 1)

end A218329

/-!
# A218330: Odd decagonal pyramidal numbers.

The programs for A218330, the canonical program `A218330.P182954802757501446` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218330 has offset 1).

The definition of A218330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218330.P182954802757501446

`A007585(or(1, n)+n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A218330

/-- `A007585(or(1, n)+n)` -/
def P182954802757501446.Spec : Prop :=
  ∀ n, P182954802757501446.a n = A218330 (n + 1)

theorem P182954802757501446.correct : P182954802757501446.Spec := by
  intro n
  simp only [A218330, Nat.add_sub_cancel]

end A218330

/-! ## A218330.P12589372696122184766

`A007585(2*n+1-n%2)`
-/

namespace A218330.P12589372696122184766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (2 * n + 1 - n % 2)

end

end A218330.P12589372696122184766

namespace A218330

/-- `A007585(2*n+1-n%2)` -/
def P12589372696122184766.Spec : Prop :=
  ∀ n, P12589372696122184766.a n = A218330 (n + 1)

end A218330

/-! ## A218330.P9864086845415783654

`A007585(2*n+1-and(1, n))`
-/

namespace A218330.P9864086845415783654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (2 * n + 1 - Nat.land 1 n)

end

end A218330.P9864086845415783654

namespace A218330

/-- `A007585(2*n+1-and(1, n))` -/
def P9864086845415783654.Spec : Prop :=
  ∀ n, P9864086845415783654.a n = A218330 (n + 1)

end A218330

/-! ## A218330.P16760909365298555180

`record[A007585(n)^and(1, C(n+1, 2))]`
-/

namespace A218330.P16760909365298555180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 n ^ Nat.land 1 (Nat.choose (n + 1) 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218330.P16760909365298555180

namespace A218330

/-- `record[A007585(n)^and(1, C(n+1, 2))]` -/
def P16760909365298555180.Spec : Prop :=
  ∀ n, P16760909365298555180.a n = A218330 (n + 1)

end A218330

/-! ## A218330.P8287077438320509797

`A007585(ceil(xor(1, n)/2)+ceil(3*n/2))`
-/

namespace A218330.P8287077438320509797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (⌈(Nat.xor 1 n : ℚ) / 2⌉ + ⌈3 * ((n : ℚ) / 2)⌉).toNat

end

end A218330.P8287077438320509797

namespace A218330

/-- `A007585(ceil(xor(1, n)/2)+ceil(3*n/2))` -/
def P8287077438320509797.Spec : Prop :=
  ∀ n, P8287077438320509797.a n = A218330 (n + 1)

end A218330

/-! ## A218330.P4026942963237897795

`A007585(Δ[A014848(n)])`
-/

namespace A218330.P4026942963237897795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (f1 (n + 1) - f1 n).toNat

end

end A218330.P4026942963237897795

namespace A218330

/-- `A007585(Δ[A014848(n)])` -/
def P4026942963237897795.Spec : Prop :=
  ∀ n, P4026942963237897795.a n = A218330 (n + 1)

end A218330

/-! ## A218330.P2656006122735972315

`A007585(A042948(n)+1)`
-/

namespace A218330.P2656006122735972315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (A042948 n + 1).toNat

end

end A218330.P2656006122735972315

namespace A218330

/-- `A007585(A042948(n)+1)` -/
def P2656006122735972315.Spec : Prop :=
  ∀ n, P2656006122735972315.a n = A218330 (n + 1)

end A218330

/-! ## A218330.P14252282494649435912

`A007585(A042963(n+1))`
-/

namespace A218330.P14252282494649435912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (A042963 (n + 1)).toNat

end

end A218330.P14252282494649435912

namespace A218330

/-- `A007585(A042963(n+1))` -/
def P14252282494649435912.Spec : Prop :=
  ∀ n, P14252282494649435912.a n = A218330 (n + 1)

end A218330

/-! ## A218330.P15796084501432237033

`A007585(xor(1, A014601(n)))`
-/

namespace A218330.P15796084501432237033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (Int.xor 1 (A014601 n)).toNat

end

end A218330.P15796084501432237033

namespace A218330

/-- `A007585(xor(1, A014601(n)))` -/
def P15796084501432237033.Spec : Prop :=
  ∀ n, P15796084501432237033.a n = A218330 (n + 1)

end A218330

/-! ## A218330.P5225238377958776466

`A007585(record[A092486(n)-2])`
-/

namespace A218330.P5225238377958776466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A218330.P5225238377958776466

namespace A218330

/-- `A007585(record[A092486(n)-2])` -/
def P5225238377958776466.Spec : Prop :=
  ∀ n, P5225238377958776466.a n = A218330 (n + 1)

end A218330

/-! ## A218330.P3317475336269334530

`A007585(A014601(n+1)-2)`
-/

namespace A218330.P3317475336269334530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (A014601 (n + 1) - 2).toNat

end

end A218330.P3317475336269334530

namespace A218330

/-- `A007585(A014601(n+1)-2)` -/
def P3317475336269334530.Spec : Prop :=
  ∀ n, P3317475336269334530.a n = A218330 (n + 1)

end A218330

/-! ## A218330.P12302765811954683655

`A007585(A154708(n+1)-2)`
-/

namespace A218330.P12302765811954683655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (A154708 (n + 1) - 2).toNat

end

end A218330.P12302765811954683655

namespace A218330

/-- `A007585(A154708(n+1)-2)` -/
def P12302765811954683655.Spec : Prop :=
  ∀ n, P12302765811954683655.a n = A218330 (n + 1)

end A218330

/-! ## A218330.P6571183325801867836

`A007585(A052928(n)+1+n)`
-/

namespace A218330.P6571183325801867836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (A052928 n + 1 + (n : ℤ)).toNat

end

end A218330.P6571183325801867836

namespace A218330

/-- `A007585(A052928(n)+1+n)` -/
def P6571183325801867836.Spec : Prop :=
  ∀ n, P6571183325801867836.a n = A218330 (n + 1)

end A218330

/-! ## A218330.P17291829851174744731

`A007585(or(2*n, A000034(n)))`
-/

namespace A218330.P17291829851174744731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (Int.lor (2 * n : ℤ) (A000034 n)).toNat

end

end A218330.P17291829851174744731

namespace A218330

/-- `A007585(or(2*n, A000034(n)))` -/
def P17291829851174744731.Spec : Prop :=
  ∀ n, P17291829851174744731.a n = A218330 (n + 1)

end A218330

/-! ## A218330.P5804623734311116814

`A007585(2*(n+1)-A000034(n))`
-/

namespace A218330.P5804623734311116814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 ((2 * (n + 1) : ℤ) - A000034 n).toNat

end

end A218330.P5804623734311116814

namespace A218330

/-- `A007585(2*(n+1)-A000034(n))` -/
def P5804623734311116814.Spec : Prop :=
  ∀ n, P5804623734311116814.a n = A218330 (n + 1)

end A218330

/-! ## A218330.P11039935583913843393

`A007585(2*n+1-A000035(n))`
-/

namespace A218330.P11039935583913843393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 ((2 * n + 1 : ℤ) - A000035 n).toNat

end

end A218330.P11039935583913843393

namespace A218330

/-- `A007585(2*n+1-A000035(n))` -/
def P11039935583913843393.Spec : Prop :=
  ∀ n, P11039935583913843393.a n = A218330 (n + 1)

end A218330

/-! ## A218330.P9192807429574888841

`A007585(A014848(n+1)-A014848(n))`
-/

namespace A218330.P9192807429574888841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (A014848 (n + 1) - A014848 n).toNat

end

end A218330.P9192807429574888841

namespace A218330

/-- `A007585(A014848(n+1)-A014848(n))` -/
def P9192807429574888841.Spec : Prop :=
  ∀ n, P9192807429574888841.a n = A218330 (n + 1)

end A218330

/-! ## A218330.P5960861663371148854

`A023865(A047471(n+1))`
-/

namespace A218330.P5960861663371148854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023865 (A047471 (n + 1)).toNat

end

end A218330.P5960861663371148854

namespace A218330

/-- `A023865(A047471(n+1))` -/
def P5960861663371148854.Spec : Prop :=
  ∀ n, P5960861663371148854.a n = A218330 (n + 1)

end A218330

/-!
# A218331: Even, nonzero decagonal pyramidal numbers.

The programs for A218331, the canonical program `A218331.P7344082247993881640` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218331 has offset 1).

The definition of A218331 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218331.P7344082247993881640

`A007585(record[A092486(n)])`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A218331

/-- `A007585(record[A092486(n)])` -/
def P7344082247993881640.Spec : Prop :=
  ∀ n, P7344082247993881640.a n = A218331 (n + 1)

theorem P7344082247993881640.correct : P7344082247993881640.Spec := by
  intro n
  simp only [A218331, Nat.add_sub_cancel]

end A218331

/-! ## A218331.P17169758839756023228

`A007585(A014601(n+1))`
-/

namespace A218331.P17169758839756023228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (A014601 (n + 1)).toNat

end

end A218331.P17169758839756023228

namespace A218331

/-- `A007585(A014601(n+1))` -/
def P17169758839756023228.Spec : Prop :=
  ∀ n, P17169758839756023228.a n = A218331 (n + 1)

end A218331

/-! ## A218331.P11332418378791817837

`A007585(A154708(n+1))`
-/

namespace A218331.P11332418378791817837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (A154708 (n + 1)).toNat

end

end A218331.P11332418378791817837

namespace A218331

/-- `A007585(A154708(n+1))` -/
def P11332418378791817837.Spec : Prop :=
  ∀ n, P11332418378791817837.a n = A218331 (n + 1)

end A218331

/-! ## A218331.P4887793760280122291

`A007585(A042948(n)+3)`
-/

namespace A218331.P4887793760280122291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (A042948 n + 3).toNat

end

end A218331.P4887793760280122291

namespace A218331

/-- `A007585(A042948(n)+3)` -/
def P4887793760280122291.Spec : Prop :=
  ∀ n, P4887793760280122291.a n = A218331 (n + 1)

end A218331

/-! ## A218331.P10251371997830407647

`A007585(∑[A033999(n)+2])`
-/

namespace A218331.P10251371997830407647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218331.P10251371997830407647

namespace A218331

/-- `A007585(∑[A033999(n)+2])` -/
def P10251371997830407647.Spec : Prop :=
  ∀ n, P10251371997830407647.a n = A218331 (n + 1)

end A218331

/-! ## A218331.P310911794818096553

`A007585(Δ[A014848(n)]+2)`
-/

namespace A218331.P310911794818096553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (f1 (n + 1) - f1 n + 2).toNat

end

end A218331.P310911794818096553

namespace A218331

/-- `A007585(Δ[A014848(n)]+2)` -/
def P310911794818096553.Spec : Prop :=
  ∀ n, P310911794818096553.a n = A218331 (n + 1)

end A218331

/-! ## A218331.P16867155227651769317

`A007585(A042963(n+1)+2)`
-/

namespace A218331.P16867155227651769317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (A042963 (n + 1) + 2).toNat

end

end A218331.P16867155227651769317

namespace A218331

/-- `A007585(A042963(n+1)+2)` -/
def P16867155227651769317.Spec : Prop :=
  ∀ n, P16867155227651769317.a n = A218331 (n + 1)

end A218331

/-! ## A218331.P2180166798859629650

`A007585(A052928(n)+3+n)`
-/

namespace A218331.P2180166798859629650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (A052928 n + 3 + (n : ℤ)).toNat

end

end A218331.P2180166798859629650

namespace A218331

/-- `A007585(A052928(n)+3+n)` -/
def P2180166798859629650.Spec : Prop :=
  ∀ n, P2180166798859629650.a n = A218331 (n + 1)

end A218331

/-! ## A218331.P1736294437043416201

`A007585(n²-A137932(n)+3)`
-/

namespace A218331.P1736294437043416201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 ((n ^ 2 : ℤ) - A137932 n + 3).toNat

end

end A218331.P1736294437043416201

namespace A218331

/-- `A007585(n²-A137932(n)+3)` -/
def P1736294437043416201.Spec : Prop :=
  ∀ n, P1736294437043416201.a n = A218331 (n + 1)

end A218331

/-! ## A218331.P5805952770145820731

`A007585(2*n+3-A000035(n))`
-/

namespace A218331.P5805952770145820731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 ((2 * n + 3 : ℤ) - A000035 n).toNat

end

end A218331.P5805952770145820731

namespace A218331

/-- `A007585(2*n+3-A000035(n))` -/
def P5805952770145820731.Spec : Prop :=
  ∀ n, P5805952770145820731.a n = A218331 (n + 1)

end A218331

/-! ## A218331.P13731549648172574501

`A007585(xor(2*n+3, A000035(n)))`
-/

namespace A218331.P13731549648172574501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (Int.xor (2 * n + 3 : ℤ) (A000035 n)).toNat

end

end A218331.P13731549648172574501

namespace A218331

/-- `A007585(xor(2*n+3, A000035(n)))` -/
def P13731549648172574501.Spec : Prop :=
  ∀ n, P13731549648172574501.a n = A218331 (n + 1)

end A218331

/-! ## A218331.P991956368475832087

`A023865(A047550(n+1))`
-/

namespace A218331.P991956368475832087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023865 (A047550 (n + 1)).toNat

end

end A218331.P991956368475832087

namespace A218331

/-- `A023865(A047550(n+1))` -/
def P991956368475832087.Spec : Prop :=
  ∀ n, P991956368475832087.a n = A218331 (n + 1)

end A218331

/-! ## A218331.P16101947214437443174

`A007585(∑[A053381((n+1)²)])`
-/

namespace A218331.P16101947214437443174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053381 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007585 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A218331.P16101947214437443174

namespace A218331

/-- `A007585(∑[A053381((n+1)²)])` -/
def P16101947214437443174.Spec : Prop :=
  ∀ n, P16101947214437443174.a n = A218331 (n + 1)

end A218331

/-!
# A218334: Triangular array read by rows. T(n,k) is the number of simple labeled graphs on n nodes with no isolated nodes and exactly k components. n >= 2, 1 <= k < n/2.

The programs for A218334, there is no canonical definition to state claims against.
-/

/-! ## A218334.P14316514142972085118

`A275595(eq[2, A154958(n)])`
-/

namespace A218334.P14316514142972085118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218334.P14316514142972085118

/-!
# A218335: Even numbers n such that the largest value in trajectory of n under the juggler map of A094683 is greater than n.

The programs for A218335, there is no canonical definition to state claims against.
-/

/-! ## A218335.P17261688035136538410

`eq[A063772(floor(n^(1/2))%(n+1)), A168330(n+1)]`
-/

namespace A218335.P17261688035136538410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063772 (Int.tmod ⌊(n : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋ (n + 1 : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168330 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218335.P17261688035136538410

/-! ## A218335.P14061128814876475265

`eq[A060395(n²), A101666(A000196(n))]`
-/

namespace A218335.P14061128814876475265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060395 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101666 (A000196 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218335.P14061128814876475265

/-! ## A218335.P9417466486642094614

`eq[A060395(n²), A101666(A094683(n))]`
-/

namespace A218335.P9417466486642094614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060395 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101666 (A094683 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218335.P9417466486642094614

/-! ## A218335.P13974758133353083383

`eq[A063772(A000196(n)), A168330(n+1)]`
-/

namespace A218335.P13974758133353083383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063772 (A000196 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168330 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218335.P13974758133353083383

/-! ## A218335.P12278029554512718838

`eq[A063772(A094683(n)), A168330(n+1)]`
-/

namespace A218335.P12278029554512718838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063772 (A094683 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168330 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A218335.P12278029554512718838

/-!
# A218336: Triangle T(n,k) of orders of degree-n irreducible polynomials over GF(11) listed in ascending order.

The programs for A218336, there is no canonical definition to state claims against.
-/

/-! ## A218336.P10856361980046189356

`A212737(∑[n+5]+6)`
-/

namespace A218336.P10856361980046189356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A218336.P10856361980046189356

/-! ## A218336.P16509163900923536390

`or(char[2], A212737(A046691(n+3)))`
-/

namespace A218336.P16509163900923536390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A212737 (A046691 (n + 3)).toNat)

end

end A218336.P16509163900923536390

/-! ## A218336.P3593952925290181205

`or(char[2], A212737(A034856(n+4)-2))`
-/

namespace A218336.P3593952925290181205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A212737 (A034856 (n + 4) - 2).toNat)

end

end A218336.P3593952925290181205

/-! ## A218336.P8063164439926185918

`A212737(A056115(n)+11)%((n+2)^3)`
-/

namespace A218336.P8063164439926185918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212737 (A056115 n + 11).toNat) ((n + 2) ^ 3 : ℤ)

end

end A218336.P8063164439926185918

/-! ## A218336.P14191438729180915990

`A212737(A046691(n+3))%A042652(n)`
-/

namespace A218336.P14191438729180915990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212737 (A046691 (n + 3)).toNat) (A042652 n)

end

end A218336.P14191438729180915990

/-! ## A218336.P3477665701688960333

`gcd(A000038(n), A212737(A046691(n+3)))`
-/

namespace A218336.P3477665701688960333
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A212737 (A046691 (n + 3)).toNat)

end

end A218336.P3477665701688960333

/-! ## A218336.P11129945876094416547

`char[A130375(n)]*A212737(A046691(n+3))`
-/

namespace A218336.P11129945876094416547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130375 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A212737 (A046691 (n + 3)).toNat

end

end A218336.P11129945876094416547

/-! ## A218336.P12801346336464031373

`A212737(A034856(n+4)-2)%A001703(n)`
-/

namespace A218336.P12801346336464031373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212737 (A034856 (n + 4) - 2).toNat) (A001703 n)

end

end A218336.P12801346336464031373

/-! ## A218336.P758860432629635033

`lcm(A087960(2*n), A212737(A046691(n+3)))`
-/

namespace A218336.P758860432629635033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 (2 * n)) (A212737 (A046691 (n + 3)).toNat)

end

end A218336.P758860432629635033

/-! ## A218336.P12117452982021195219

`A007318(C(2, n))*A212737(A046691(n+3))`
-/

namespace A218336.P12117452982021195219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A212737 (A046691 (n + 3)).toNat

end

end A218336.P12117452982021195219

/-! ## A218336.P11915996747732937744

`A000108(C(2, 2*n))*A212737(A046691(n+3))`
-/

namespace A218336.P11915996747732937744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (2 * n)) * A212737 (A046691 (n + 3)).toNat

end

end A218336.P11915996747732937744

/-! ## A218336.P12511726067210753630

`A014963(48*n+12)*A212737(A046691(n+3))`
-/

namespace A218336.P12511726067210753630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (48 * n + 12) * A212737 (A046691 (n + 3)).toNat

end

end A218336.P12511726067210753630

/-! ## A218336.P12910889062312228080

`A000041(C(n, n+1))*A212737(A046691(n+3))`
-/

namespace A218336.P12910889062312228080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose n (n + 1)) * A212737 (A046691 (n + 3)).toNat

end

end A218336.P12910889062312228080

/-! ## A218336.P7531496941798938781

`A212737(A046691(n+3))+val(2*A000040(n+1), 33)`
-/

namespace A218336.P7531496941798938781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A046691 (n + 3)).toNat + (SequenceMachineLib.valuation (2 * A000040 (n + 1)).toNat 33 : ℤ)

end

end A218336.P7531496941798938781

/-! ## A218336.P10044445669083861181

`A212737(A046691(n+3))^(-1%A020639(n+1)+2)`
-/

namespace A218336.P10044445669083861181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212737 (A046691 (n + 3)).toNat : ℚ) ^ (Int.tmod (-1) (A020639 (n + 1)) + 2 : ℤ)

end

end A218336.P10044445669083861181

/-! ## A218336.P6009863341710603288

`A001221(A122384(n+1))*A212737(A046691(n+3))`
-/

namespace A218336.P6009863341710603288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A122384 (n + 1)).toNat * A212737 (A046691 (n + 3)).toNat

end

end A218336.P6009863341710603288

/-!
# A218337: Triangle T(n,k) of orders of degree-n irreducible polynomials over GF(13) listed in ascending order.

The programs for A218337, there is no canonical definition to state claims against.
-/

/-! ## A218337.P4806178232496347733

`A212737(A052905(n+3))`
-/

namespace A218337.P4806178232496347733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A052905 (n + 3)).toNat

end

end A218337.P4806178232496347733

/-! ## A218337.P3274341631226813159

`A212737(Δ[A023551(n+1)]+1)`
-/

namespace A218337.P3274341631226813159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (f1 (n + 1) - f1 n + 1).toNat

end

end A218337.P3274341631226813159

/-! ## A218337.P6905844611616125439

`A212737(Δ[A026054(n+3)]+1)`
-/

namespace A218337.P6905844611616125439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (f1 (n + 1) - f1 n + 1).toNat

end

end A218337.P6905844611616125439

/-! ## A218337.P5648030306659000339

`A212737(eq[5, A025581(n)]+1)`
-/

namespace A218337.P5648030306659000339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A218337.P5648030306659000339

/-!
# A218338: Triangle T(n,k) of orders of degree-n irreducible polynomials over GF(17) listed in ascending order.

The programs for A218338, there is no canonical definition to state claims against.
-/

/-! ## A218338.P3020659722054019068

`A212737(A055999(n+4))`
-/

namespace A218338.P3020659722054019068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A055999 (n + 4)).toNat

end

end A218338.P3020659722054019068

/-! ## A218338.P1536156432454141789

`A212737(Δ[A023551(n+2)])`
-/

namespace A218338.P1536156432454141789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (f1 (n + 1) - f1 n).toNat

end

end A218338.P1536156432454141789

/-! ## A218338.P6028146857694569021

`A212737(Δ[A026054(n+4)])`
-/

namespace A218338.P6028146857694569021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (f1 (n + 1) - f1 n).toNat

end

end A218338.P6028146857694569021

/-! ## A218338.P14603314319279907273

`A212737(A155212(n+3)+2)`
-/

namespace A218338.P14603314319279907273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A155212 (n + 3) + 2).toNat

end

end A218338.P14603314319279907273

/-! ## A218338.P4107027533953651817

`A212737(A052905(n+4)-1)`
-/

namespace A218338.P4107027533953651817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A052905 (n + 4) - 1).toNat

end

end A218338.P4107027533953651817

/-! ## A218338.P5533857961959742441

`A212737(A046691(n+5)-2)`
-/

namespace A218338.P5533857961959742441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A046691 (n + 5) - 2).toNat

end

end A218338.P5533857961959742441

/-! ## A218338.P16027115224367077373

`A212737(A027379(n+5)-3)`
-/

namespace A218338.P16027115224367077373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A027379 (n + 5) - 3).toNat

end

end A218338.P16027115224367077373

/-! ## A218338.P16124642010552342286

`A212737(A000124(n+7)-7)`
-/

namespace A218338.P16124642010552342286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A000124 (n + 7) - 7).toNat

end

end A218338.P16124642010552342286

/-! ## A218338.P18350092556248607825

`A212737(A167614(n+6)-9)`
-/

namespace A218338.P18350092556248607825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A167614 (n + 6) - 9).toNat

end

end A218338.P18350092556248607825

/-! ## A218338.P669298297181062982

`A212737(A000096(n+5)+n+2)`
-/

namespace A218338.P669298297181062982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A000096 (n + 5) + (n + 2 : ℤ)).toNat

end

end A218338.P669298297181062982

/-! ## A218338.P6578894554111843732

`A212737(A000217(n+6)+n+1)`
-/

namespace A218338.P6578894554111843732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A000217 (n + 6) + (n + 1 : ℤ)).toNat

end

end A218338.P6578894554111843732

/-!
# A218340: Triangle T(n,k) of orders of degree-n irreducible polynomials over GF(23) listed in ascending order.

The programs for A218340, there is no canonical definition to state claims against.
-/

/-! ## A218340.P10059586599329313630

`A212737(A155212(n+5))`
-/

namespace A218340.P10059586599329313630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A155212 (n + 5)).toNat

end

end A218340.P10059586599329313630

/-! ## A218340.P2796667583582121388

`A212737(A052905(n+6)-3)`
-/

namespace A218340.P2796667583582121388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A052905 (n + 6) - 3).toNat

end

end A218340.P2796667583582121388

/-! ## A218340.P1865260721995199183

`A212737(A046691(n+7)-4)`
-/

namespace A218340.P1865260721995199183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A046691 (n + 7) - 4).toNat

end

end A218340.P1865260721995199183

/-! ## A218340.P3971274406135840655

`A212737(A000217(n+9)-8)`
-/

namespace A218340.P3971274406135840655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A000217 (n + 9) - 8).toNat

end

end A218340.P3971274406135840655

/-! ## A218340.P17866568166465624308

`A212737(A000124(n+9)-9)`
-/

namespace A218340.P17866568166465624308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A000124 (n + 9) - 9).toNat

end

end A218340.P17866568166465624308

/-! ## A218340.P16042653856407702293

`A212737(A027379(n+6)+n+4)`
-/

namespace A218340.P16042653856407702293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212737 (A027379 (n + 6) + (n + 4 : ℤ)).toNat

end

end A218340.P16042653856407702293

/-!
# A218344: Smallest k such that k*(n-th composite)+1 is prime.

The programs for A218344, there is no canonical definition to state claims against.
-/

/-! ## A218344.P6039916748017760817

`A034693(A002808(n+1))`
-/

namespace A218344.P6039916748017760817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A002808 (n + 1)).toNat

end

end A218344.P6039916748017760817

/-! ## A218344.P17883476316715851544

`A034693(A056653(n+1))`
-/

namespace A218344.P17883476316715851544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A056653 (n + 1)).toNat

end

end A218344.P17883476316715851544

/-! ## A218344.P14871148956970475108

`A034693(A018252(n+2))`
-/

namespace A218344.P14871148956970475108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A018252 (n + 2)).toNat

end

end A218344.P14871148956970475108

/-! ## A218344.P16303063990696195071

`A034693(lt[1, A175126(n)])`
-/

namespace A218344.P16303063990696195071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A218344.P16303063990696195071

/-! ## A218344.P16171138770109668496

`A034693(A072668(n+1)+1)`
-/

namespace A218344.P16171138770109668496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A072668 (n + 1) + 1).toNat

end

end A218344.P16171138770109668496

/-! ## A218344.P9274291759622138568

`A034693(A079696(n+1)-1)`
-/

namespace A218344.P9274291759622138568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A079696 (n + 1) - 1).toNat

end

end A218344.P9274291759622138568

/-! ## A218344.P10227440912689020428

`A034693(lt[1, A034693(n+1)]+2)`
-/

namespace A218344.P10227440912689020428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A218344.P10227440912689020428

/-! ## A218344.P1093680596908388421

`A034693(A060462(n+2)+1)`
-/

namespace A218344.P1093680596908388421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A060462 (n + 2) + 1).toNat

end

end A218344.P1093680596908388421

/-! ## A218344.P16226134524646812616

`A034693(A067747(2*(n+1)))`
-/

namespace A218344.P16226134524646812616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A067747 (2 * (n + 1))).toNat

end

end A218344.P16226134524646812616

/-!
# A218345: Records in A218344.

The programs for A218345, there is no canonical definition to state claims against.
-/

/-! ## A218345.P14533079340534931453

`A218344(A354740(n+1))`
-/

namespace A218345.P14533079340534931453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218344 (A354740 (n + 1)).toNat

end

end A218345.P14533079340534931453

/-! ## A218345.P15204597480366873029

`record[A034693(A018252(n+1))]`
-/

namespace A218345.P15204597480366873029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034693 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218345.P15204597480366873029

/-! ## A218345.P9966309781767797823

`lt[A144786(n+1), 6]+1`
-/

namespace A218345.P9966309781767797823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144786 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A218345.P9966309781767797823

/-! ## A218345.P14141475711125605950

`lt[A167986(n+2), 11*n]`
-/

namespace A218345.P14141475711125605950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167986 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A218345.P14141475711125605950

/-! ## A218345.P2291791869252410108

`∑[A008480(∏[∑[(n%6)!%2]])]`
-/

namespace A218345.P2291791869252410108
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 6) % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (∏ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A218345.P2291791869252410108

/-!
# A218346: Numbers of the form a^a + b^b, with a > b > 0.

The programs for A218346, the canonical program `A218346.P7761468565434163924` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218346 has offset 1).

The definition of A218346 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1540 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218346.P7761468565434163924

`A066846(A007401(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A218346

/-- `A066846(A007401(n+1))` -/
def P7761468565434163924.Spec : Prop :=
  ∀ n, P7761468565434163924.a n = A218346 (n + 1)

theorem P7761468565434163924.correct : P7761468565434163924.Spec := by
  intro n
  simp only [A218346, Nat.add_sub_cancel]

end A218346

/-! ## A218346.P2583712550225440770

`A033918(n+1)+A000312(A003057(n+2))`
-/

namespace A218346.P2583712550225440770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033918 (n + 1) + A000312 (A003057 (n + 2)).toNat

end

end A218346.P2583712550225440770

namespace A218346

/-- `A033918(n+1)+A000312(A003057(n+2))` -/
def P2583712550225440770.Spec : Prop :=
  ∀ n, P2583712550225440770.a n = A218346 (n + 1)

end A218346

/-! ## A218346.P8846295933241291846

`A094054(A003057(n+2)²)+A033918(n+1)`
-/

namespace A218346.P8846295933241291846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094054 (A003057 (n + 2) ^ 2).toNat + A033918 (n + 1)

end

end A218346.P8846295933241291846

namespace A218346

/-- `A094054(A003057(n+2)²)+A033918(n+1)` -/
def P8846295933241291846.Spec : Prop :=
  ∀ n, P8846295933241291846.a n = A218346 (n + 1)

end A218346

/-! ## A218346.P9662240433441026196

`A095891(A127739(n+1)+1)+A033918(n+1)`
-/

namespace A218346.P9662240433441026196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095891 (A127739 (n + 1) + 1).toNat + A033918 (n + 1)

end

end A218346.P9662240433441026196

namespace A218346

/-- `A095891(A127739(n+1)+1)+A033918(n+1)` -/
def P9662240433441026196.Spec : Prop :=
  ∀ n, P9662240433441026196.a n = A218346 (n + 1)

end A218346

/-! ## A218346.P6169335305101857275

`A095891(A004736(n+1)+n+1)+A033918(n+1)`
-/

namespace A218346.P6169335305101857275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095891 (A004736 (n + 1) + (n + 1 : ℤ)).toNat + A033918 (n + 1)

end

end A218346.P6169335305101857275

namespace A218346

/-- `A095891(A004736(n+1)+n+1)+A033918(n+1)` -/
def P6169335305101857275.Spec : Prop :=
  ∀ n, P6169335305101857275.a n = A218346 (n + 1)

end A218346

/-! ## A218346.P17419568267276713894

`A000312(A002260(n+1))+A000312(A003057(n+2))`
-/

namespace A218346.P17419568267276713894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000312 (A002260 (n + 1)).toNat + A000312 (A003057 (n + 2)).toNat

end

end A218346.P17419568267276713894

namespace A218346

/-- `A000312(A002260(n+1))+A000312(A003057(n+2))` -/
def P17419568267276713894.Spec : Prop :=
  ∀ n, P17419568267276713894.a n = A218346 (n + 1)

end A218346

/-! ## A218346.P6823194989116488763

`A095891(A038722(n+1))+A000312(A003057(n+2))`
-/

namespace A218346.P6823194989116488763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095891 (A038722 (n + 1)).toNat + A000312 (A003057 (n + 2)).toNat

end

end A218346.P6823194989116488763

namespace A218346

/-- `A095891(A038722(n+1))+A000312(A003057(n+2))` -/
def P6823194989116488763.Spec : Prop :=
  ∀ n, P6823194989116488763.a n = A218346 (n + 1)

end A218346

/-!
# A218347: Numbers of the form a^a + b^b, a>=b>=0.

The programs for A218347, there is no canonical definition to state claims against.
-/

/-! ## A218347.P8177491542971794559

`∑{e}[A100851(n), #^#]`
-/

namespace A218347.P8177491542971794559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100851 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ Nat.factorization (f1 n).natAbs p

end

end A218347.P8177491542971794559

/-! ## A218347.P11851608966843121659

`∑{e}[A100852(n), #^#]`
-/

namespace A218347.P11851608966843121659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100852 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ Nat.factorization (f1 n).natAbs p

end

end A218347.P11851608966843121659

/-! ## A218347.P5074288646892083613

`A045512(A329447(n))`
-/

namespace A218347.P5074288646892083613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 (A329447 n).toNat

end

end A218347.P5074288646892083613

/-! ## A218347.P15171845591078432427

`A045512(A329818(n))`
-/

namespace A218347.P15171845591078432427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 (A329818 n).toNat

end

end A218347.P15171845591078432427

/-! ## A218347.P17096376525679549189

`A045512(comp[A180410(n+1)])`
-/

namespace A218347.P17096376525679549189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180410 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045512 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A218347.P17096376525679549189

/-!
# A218348: Number of n X 2 binary arrays with every 0 a horizontal or vertical neighbor to some 1.

The programs for A218348, the canonical program `A218348.P8017053463798429977` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218348 has offset 1).

The definition of A218348 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218348.P8017053463798429977

`3*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)-a(n-5)` with `a(0)=3, a(1)=11, a(2)=41, a(3)=149, a(4)=547`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A218348

/-- `3*a(n-1)+2*a(n-2)+2*a(n-3)-a(n-4)-a(n-5)` -/
def P8017053463798429977.Spec : Prop :=
  ∀ n, P8017053463798429977.a n = A218348 (n + 1)

theorem P8017053463798429977.correct : P8017053463798429977.Spec := by
  intro n
  simp only [A218348, Nat.add_sub_cancel]

end A218348

/-! ## A218348.P4347334946223602150

`A218354(∑[n+1]+2)`
-/

namespace A218348.P4347334946223602150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A218348.P4347334946223602150

namespace A218348

/-- `A218354(∑[n+1]+2)` -/
def P4347334946223602150.Spec : Prop :=
  ∀ n, P4347334946223602150.a n = A218348 (n + 1)

end A218348

/-! ## A218348.P3098422150934069966

`record[root(A218354(n+2), A201811(n+1))]`
-/

namespace A218348.P3098422150934069966
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A218354 (n + 2) : ℝ) ^ (1 / (A201811 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218348.P3098422150934069966

namespace A218348

/-- `record[root(A218354(n+2), A201811(n+1))]` -/
def P3098422150934069966.Spec : Prop :=
  ∀ n, P3098422150934069966.a n = (A218348 (n + 1) : ℝ)

end A218348

/-! ## A218348.P7052305703742188732

`record[A218354(eq[4, A291872(n+1)])]`
-/

namespace A218348.P7052305703742188732
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291872 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218348.P7052305703742188732

namespace A218348

/-- `record[A218354(eq[4, A291872(n+1)])]` -/
def P7052305703742188732.Spec : Prop :=
  ∀ n, P7052305703742188732.a n = A218348 (n + 1)

end A218348

/-! ## A218348.P9243178841580746867

`A286514(∑[n+1]+2)`
-/

namespace A218348.P9243178841580746867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286514 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A218348.P9243178841580746867

namespace A218348

/-- `A286514(∑[n+1]+2)` -/
def P9243178841580746867.Spec : Prop :=
  ∀ n, P9243178841580746867.a n = A218348 (n + 1)

end A218348

/-!
# A218349: Number of n X 3 binary arrays with every 0 a horizontal or vertical neighbor to some 1.

The programs for A218349, there is no canonical definition to state claims against.
-/

/-! ## A218349.P14502341486204082966

`A218354(∑[n+2]+4)`
-/

namespace A218349.P14502341486204082966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A218349.P14502341486204082966

/-! ## A218349.P5978982019635875981

`or(1, A218354(A167614(n+1)))`
-/

namespace A218349.P5978982019635875981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218354 (A167614 (n + 1)).toNat)

end

end A218349.P5978982019635875981

/-! ## A218349.P14575939964937300688

`record[gcd(A002262(n+1), A218354(n+4))]`
-/

namespace A218349.P14575939964937300688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 1)) (A218354 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218349.P14575939964937300688

/-! ## A218349.P704389008547901544

`lcm(A033999(n), A218354(A167614(n+1)))`
-/

namespace A218349.P704389008547901544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A218354 (A167614 (n + 1)).toNat)

end

end A218349.P704389008547901544

/-! ## A218349.P9003651092026573560

`A218354(A167614(n+1))%A286315(n)`
-/

namespace A218349.P9003651092026573560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218354 (A167614 (n + 1)).toNat) (A286315 n)

end

end A218349.P9003651092026573560

/-!
# A218350: Number of n X 4 binary arrays with every 0 a horizontal or vertical neighbor to some 1.

The programs for A218350, there is no canonical definition to state claims against.
-/

/-! ## A218350.P348053303323083179

`A218354(A374004(n+1))`
-/

namespace A218350.P348053303323083179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (A374004 (n + 1)).toNat

end

end A218350.P348053303323083179

/-! ## A218350.P13152741524685501622

`A218354(A052905(n)+9)`
-/

namespace A218350.P13152741524685501622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (A052905 n + 9).toNat

end

end A218350.P13152741524685501622

/-! ## A218350.P1448445743035745464

`A218354(A055999(n)+10)`
-/

namespace A218350.P1448445743035745464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (A055999 n + 10).toNat

end

end A218350.P1448445743035745464

/-! ## A218350.P4437165083306176943

`A218354(A167614(n+2)+1)`
-/

namespace A218350.P4437165083306176943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (A167614 (n + 2) + 1).toNat

end

end A218350.P4437165083306176943

/-! ## A218350.P7550866506199932956

`A218354(eq[5, A131818(n+1)])`
-/

namespace A218350.P7550866506199932956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218350.P7550866506199932956

/-!
# A218351: Number of n X 5 binary arrays with every 0 a horizontal or vertical neighbor to some 1.

The programs for A218351, there is no canonical definition to state claims against.
-/

/-! ## A218351.P11373194579869021716

`A218354(A374005(n+1))`
-/

namespace A218351.P11373194579869021716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (A374005 (n + 1)).toNat

end

end A218351.P11373194579869021716

/-! ## A218351.P13664746474738493454

`or(1, A218354(A167499(n+3)))`
-/

namespace A218351.P13664746474738493454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218354 (A167499 (n + 3)).toNat)

end

end A218351.P13664746474738493454

/-! ## A218351.P15041036661228558153

`A218354(eq[6, A131818(n+1)])`
-/

namespace A218351.P15041036661228558153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218351.P15041036661228558153

/-! ## A218351.P16998404685553407322

`A218354(A167499(n+3))+A112316(n+2)`
-/

namespace A218351.P16998404685553407322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (A167499 (n + 3)).toNat + A112316 (n + 2)

end

end A218351.P16998404685553407322

/-! ## A218351.P7173322530801230603

`A218354(∑[n+5]+6)`
-/

namespace A218351.P7173322530801230603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A218351.P7173322530801230603

/-!
# A218352: Number of n X 6 binary arrays with every 0 a horizontal or vertical neighbor to some 1.

The programs for A218352, there is no canonical definition to state claims against.
-/

/-! ## A218352.P10452000157837993349

`A218354(A374007(n+1))`
-/

namespace A218352.P10452000157837993349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (A374007 (n + 1)).toNat

end

end A218352.P10452000157837993349

/-! ## A218352.P17703067195298335064

`A218354(A000217(n+5)+6)`
-/

namespace A218352.P17703067195298335064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (A000217 (n + 5) + 6).toNat

end

end A218352.P17703067195298335064

/-! ## A218352.P11644994774800625743

`A218354(eq[7, A131818(n+1)])`
-/

namespace A218352.P11644994774800625743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218352.P11644994774800625743

/-! ## A218352.P14743154000250236585

`A218354(eq[5, A144328(n+1)]+1)`
-/

namespace A218352.P14743154000250236585
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A218352.P14743154000250236585

/-! ## A218352.P17457812967255277285

`A218354(A158388(n)²+A052905(n+2)+10)`
-/

namespace A218352.P17457812967255277285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (A158388 n ^ 2 + (A052905 (n + 2) + 10)).toNat

end

end A218352.P17457812967255277285

/-!
# A218353: Number of n X 7 binary arrays with every 0 a horizontal or vertical neighbor to some 1.

The programs for A218353, there is no canonical definition to state claims against.
-/

/-! ## A218353.P16791137682201383034

`A218354(A374008(n+1))`
-/

namespace A218353.P16791137682201383034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (A374008 (n + 1)).toNat

end

end A218353.P16791137682201383034

/-! ## A218353.P10186553051506924573

`A218354(A167487(n+5))`
-/

namespace A218353.P10186553051506924573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (A167487 (n + 5)).toNat

end

end A218353.P10186553051506924573

/-! ## A218353.P6054174773478224327

`A218354(A000217(n+6)+7)`
-/

namespace A218353.P6054174773478224327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (A000217 (n + 6) + 7).toNat

end

end A218353.P6054174773478224327

/-! ## A218353.P2925909822757178017

`A218354(eq[8, A131818(n+1)])`
-/

namespace A218353.P2925909822757178017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218353.P2925909822757178017

/-! ## A218353.P2075010760902970275

`A218354(eq[6, A144328(n+1)]+1)`
-/

namespace A218353.P2075010760902970275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218354 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A218353.P2075010760902970275

/-!
# A218354: T(n,k) = number of n X k binary matrices with every 0 vertically or horizontally adjacent to some 1, n >= 1, k >= 1, read by antidiagonals.

The programs for A218354, there is no canonical definition to state claims against.
-/

/-! ## A218354.P4570835265675711961

`A218426(n+1)-A140665(A118180(n))`
-/

namespace A218354.P4570835265675711961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218426 (n + 1) - A140665 (A118180 n).toNat

end

end A218354.P4570835265675711961

/-! ## A218354.P12188008951016718647

`A327755(A203362(n+1))-A140665(A118180(n))`
-/

namespace A218354.P12188008951016718647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327755 (A203362 (n + 1)).toNat - A140665 (A118180 n).toNat

end

end A218354.P12188008951016718647

/-! ## A218354.P13724732371892178479

`or(A132199(A001250(n)), A221590(n+1))`
-/

namespace A218354.P13724732371892178479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A132199 (A001250 n).toNat) (A221590 (n + 1))

end

end A218354.P13724732371892178479

/-! ## A218354.P17012172957489463602

`or(A118180(n), A221590(A070938(n+1)))`
-/

namespace A218354.P17012172957489463602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A118180 n) (A221590 (A070938 (n + 1)).toNat)

end

end A218354.P17012172957489463602

/-! ## A218354.P4803514862969860770

`or(A118180(n), A221590(A077739(n+1)))`
-/

namespace A218354.P4803514862969860770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A118180 n) (A221590 (A077739 (n + 1)).toNat)

end

end A218354.P4803514862969860770

/-!
# A218355: Number of partitions into distinct parts where all differences between consecutive parts are odd and the minimal part is even.

The programs for A218355, there is no canonical definition to state claims against.
-/

/-! ## A218355.P17649383179881750451

`A000007(n)+A179080(n)-A179049(n)`
-/

namespace A218355.P17649383179881750451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A179080 n - A179049 n)

end

end A218355.P17649383179881750451

/-! ## A218355.P12134157589193576758

`A008683(A008574(n))+A179080(n)-A179049(n)`
-/

namespace A218355.P12134157589193576758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008574 n).toNat + (A179080 n - A179049 n)

end

end A218355.P12134157589193576758

/-! ## A218355.P17935432994173172186

`A007920(A020639(n+1))+A179080(n)-A179049(n)`
-/

namespace A218355.P17935432994173172186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A020639 (n + 1)).toNat + (A179080 n - A179049 n)

end

end A218355.P17935432994173172186

/-! ## A218355.P1258013202188997974

`A179080(n)-A001221(A053585(n+1))*A179049(n)`
-/

namespace A218355.P1258013202188997974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179080 n - A001221 (A053585 (n + 1)).toNat * A179049 n

end

end A218355.P1258013202188997974

/-! ## A218355.P18133107501095401217

`A179080(n)-A179049(n)%A007096(n)`
-/

namespace A218355.P18133107501095401217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179080 n - Int.tmod (A179049 n) (A007096 n)

end

end A218355.P18133107501095401217

/-! ## A218355.P7094974181066887775

`A179080(n)-(A179049(n)+A008683(A140513(n)))`
-/

namespace A218355.P7094974181066887775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179080 n - (A179049 n + A008683 (A140513 n).toNat)

end

end A218355.P7094974181066887775

/-!
# A218356: Minimal order of degree-n irreducible polynomials over GF(3).

The programs for A218356, there is no canonical definition to state claims against.
-/

/-! ## A218356.P15284984607093526690

`A213224(∑[n+2])`
-/

namespace A218356.P15284984607093526690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A218356.P15284984607093526690

/-! ## A218356.P16591824774636437123

`or(A000007(n), A213224(A101881(2*n+1)))`
-/

namespace A218356.P16591824774636437123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A213224 (A101881 (2 * n + 1)).toNat)

end

end A218356.P16591824774636437123

/-! ## A218356.P6669614418743881006

`A213224(A101881(2*n+1))%Δ[A005058(n)]`
-/

namespace A218356.P6669614418743881006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213224 (A101881 (2 * n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A218356.P6669614418743881006

/-! ## A218356.P14170905207266974442

`A007318(A000096(n))*A213224(A101881(2*n+1))`
-/

namespace A218356.P14170905207266974442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A213224 (A101881 (2 * n + 1)).toNat

end

end A218356.P14170905207266974442

/-! ## A218356.P385784031352195709

`A007318(A000217(n))*A213224(A101881(2*n+1))`
-/

namespace A218356.P385784031352195709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A213224 (A101881 (2 * n + 1)).toNat

end

end A218356.P385784031352195709

/-!
# A218357: Minimal order of degree-n irreducible polynomials over GF(5).

The programs for A218357, there is no canonical definition to state claims against.
-/

/-! ## A218357.P9193188489863881400

`A213224(∑[n+3]+1)`
-/

namespace A218357.P9193188489863881400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218357.P9193188489863881400

/-! ## A218357.P7540706582330809124

`A213224(A055999(n)+4)%A062397(n)`
-/

namespace A218357.P7540706582330809124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213224 (A055999 n + 4).toNat) (A062397 n)

end

end A218357.P7540706582330809124

/-! ## A218357.P1411811471860858437

`lcm(A087960(n), A213224(A055999(n)+4))`
-/

namespace A218357.P1411811471860858437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A213224 (A055999 n + 4).toNat)

end

end A218357.P1411811471860858437

/-! ## A218357.P1094363991386936610

`or(A000007(n), A213224(A055999(n)+4))`
-/

namespace A218357.P1094363991386936610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A213224 (A055999 n + 4).toNat)

end

end A218357.P1094363991386936610

/-! ## A218357.P750967076096915321

`or(A019590(n+2), A213224(A055999(n)+4))`
-/

namespace A218357.P750967076096915321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A019590 (n + 2)) (A213224 (A055999 n + 4).toNat)

end

end A218357.P750967076096915321

/-!
# A218358: Minimal order of degree-n irreducible polynomials over GF(7).

The programs for A218358, there is no canonical definition to state claims against.
-/

/-! ## A218358.P6305352028915396270

`A381494((n+1)%(2*n+1))`
-/

namespace A218358.P6305352028915396270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381494 ((n + 1) % (2 * n + 1))

end

end A218358.P6305352028915396270

/-! ## A218358.P2753260105460464887

`A381494(A087156(n+1))`
-/

namespace A218358.P2753260105460464887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381494 (A087156 (n + 1)).toNat

end

end A218358.P2753260105460464887

/-! ## A218358.P1784689039136421094

`A381494(A199969(n+2))`
-/

namespace A218358.P1784689039136421094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381494 (A199969 (n + 2)).toNat

end

end A218358.P1784689039136421094

/-! ## A218358.P7711060828469172825

`A213224(A027379(n+2))`
-/

namespace A218358.P7711060828469172825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (A027379 (n + 2)).toNat

end

end A218358.P7711060828469172825

/-!
# A218359: Minimal order of degree-n irreducible polynomials over GF(11).

The programs for A218359, there is no canonical definition to state claims against.
-/

/-! ## A218359.P10013280237569256457

`A213224(A046691(n+3))`
-/

namespace A218359.P10013280237569256457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (A046691 (n + 3)).toNat

end

end A218359.P10013280237569256457

/-! ## A218359.P15801606550372269756

`A213224(eq[4, A193592(n)])`
-/

namespace A218359.P15801606550372269756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218359.P15801606550372269756

/-! ## A218359.P4430774108172454025

`A213224(Δ[A023545(n+1)])`
-/

namespace A218359.P4430774108172454025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (f1 (n + 1) - f1 n).toNat

end

end A218359.P4430774108172454025

/-! ## A218359.P11658597454785762831

`A213224(A052905(n+2)+1)`
-/

namespace A218359.P11658597454785762831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (A052905 (n + 2) + 1).toNat

end

end A218359.P11658597454785762831

/-! ## A218359.P18029028528492943811

`A213224(A055999(n+2)+2)`
-/

namespace A218359.P18029028528492943811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (A055999 (n + 2) + 2).toNat

end

end A218359.P18029028528492943811

/-!
# A218360: Minimal order of degree-n irreducible polynomials over GF(13).

The programs for A218360, there is no canonical definition to state claims against.
-/

/-! ## A218360.P17344759854505442729

`A213224(A052905(n+3))`
-/

namespace A218360.P17344759854505442729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (A052905 (n + 3)).toNat

end

end A218360.P17344759854505442729

/-! ## A218360.P1037197044281350856

`A213224(A055999(n+3)+1)`
-/

namespace A218360.P1037197044281350856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (A055999 (n + 3) + 1).toNat

end

end A218360.P1037197044281350856

/-! ## A218360.P4689543748480162001

`A213224(A000217(n+6)-5)`
-/

namespace A218360.P4689543748480162001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (A000217 (n + 6) - 5).toNat

end

end A218360.P4689543748480162001

/-! ## A218360.P7267151944525044681

`A213224(A000124(n+6)-6)`
-/

namespace A218360.P7267151944525044681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (A000124 (n + 6) - 6).toNat

end

end A218360.P7267151944525044681

/-! ## A218360.P15212873937895593397

`A213224(A133263(n+6)-7)`
-/

namespace A218360.P15212873937895593397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (A133263 (n + 6) - 7).toNat

end

end A218360.P15212873937895593397

/-!
# A218361: Minimal order of degree-n irreducible polynomials over GF(17).

The programs for A218361, there is no canonical definition to state claims against.
-/

/-! ## A218361.P4947976030474985211

`A213224(eq[4, A219347(n)])`
-/

namespace A218361.P4947976030474985211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218361.P4947976030474985211

/-! ## A218361.P1198650573934423404

`A213224(A052905(n+4)-1)`
-/

namespace A218361.P1198650573934423404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (A052905 (n + 4) - 1).toNat

end

end A218361.P1198650573934423404

/-! ## A218361.P16477994853701687628

`A213224(A000217(n+7)-6)`
-/

namespace A218361.P16477994853701687628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (A000217 (n + 7) - 6).toNat

end

end A218361.P16477994853701687628

/-! ## A218361.P10236419623329508281

`A213224(A000124(n+7)-7)`
-/

namespace A218361.P10236419623329508281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (A000124 (n + 7) - 7).toNat

end

end A218361.P10236419623329508281

/-! ## A218361.P10872288873422486110

`A213224(eq[6, A025581(n)]+1)`
-/

namespace A218361.P10872288873422486110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A218361.P10872288873422486110

/-!
# A218362: Minimal order of degree-n irreducible polynomials over GF(19).

The programs for A218362, there is no canonical definition to state claims against.
-/

/-! ## A218362.P5064021602243490132

`A213224(eq[5, A219347(n)])`
-/

namespace A218362.P5064021602243490132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218362.P5064021602243490132

/-! ## A218362.P7388607160307759834

`A213224(eq[7, A193592(n)])`
-/

namespace A218362.P7388607160307759834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218362.P7388607160307759834

/-! ## A218362.P11143933870291969534

`A213224(eq[12, A185782(n+1)])`
-/

namespace A218362.P11143933870291969534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218362.P11143933870291969534

/-! ## A218362.P1972355543363275369

`A213224(eq[64, A057728(n+1)])`
-/

namespace A218362.P1972355543363275369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218362.P1972355543363275369

/-! ## A218362.P6103688290226474887

`A213224(A167487(n+5)+A005408(n))`
-/

namespace A218362.P6103688290226474887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (A167487 (n + 5) + A005408 n).toNat

end

end A218362.P6103688290226474887

/-!
# A218363: Minimal order of degree-n irreducible polynomials over GF(23).

The programs for A218363, there is no canonical definition to state claims against.
-/

/-! ## A218363.P13126846922974485892

`A213224(A155212(n+5))`
-/

namespace A218363.P13126846922974485892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (A155212 (n + 5)).toNat

end

end A218363.P13126846922974485892

/-! ## A218363.P18326554233408951025

`A213224(eq[6, A219347(n)])`
-/

namespace A218363.P18326554233408951025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218363.P18326554233408951025

/-! ## A218363.P12444277269369125416

`A213224(eq[8, A193592(n)])`
-/

namespace A218363.P12444277269369125416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218363.P12444277269369125416

/-! ## A218363.P5403107467181424442

`A213224(eq[14, A185782(n+1)])`
-/

namespace A218363.P5403107467181424442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218363.P5403107467181424442

/-! ## A218363.P17094483217010494418

`A213224(eq[16, A243070(n+2)])`
-/

namespace A218363.P17094483217010494418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243070 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218363.P17094483217010494418

/-!
# A218364: Minimal order of degree-n irreducible polynomials over GF(29).

The programs for A218364, there is no canonical definition to state claims against.
-/

/-! ## A218364.P13965533814485170937

`A213224(eq[8, A219347(n)])`
-/

namespace A218364.P13965533814485170937
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218364.P13965533814485170937

/-! ## A218364.P4879464403794859613

`A213224(eq[9, A193592(n)])`
-/

namespace A218364.P4879464403794859613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218364.P4879464403794859613

/-! ## A218364.P9333746758196650779

`A213224(eq[10, A195663(n)]+1)`
-/

namespace A218364.P9333746758196650779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A218364.P9333746758196650779

/-! ## A218364.P17040259348439656036

`A213224(eq[16, A185782(n+1)])`
-/

namespace A218364.P17040259348439656036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218364.P17040259348439656036

/-! ## A218364.P16873955768238264715

`A213224(eq[8, log2(A057728(n+1))])`
-/

namespace A218364.P16873955768238264715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A057728 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213224 (SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n)

end

end A218364.P16873955768238264715

/-!
# A218365: Hilltop maps: number of n X n binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, vertical or antidiagonal neighbor in a random 0..3 n X n array.

The programs for A218365, there is no canonical definition to state claims against.
-/

/-! ## A218365.P5506494346204547943

`A218372(∑[4*n]+1)`
-/

namespace A218365.P5506494346204547943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A218365.P5506494346204547943

/-! ## A218365.P5267070730369545316

`or(1, A218372(A001844(n)))`
-/

namespace A218365.P5267070730369545316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218372 (A001844 n).toNat)

end

end A218365.P5267070730369545316

/-! ## A218365.P6029650424036942326

`record[A218372(A272267(n+1))]`
-/

namespace A218365.P6029650424036942326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (A272267 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218365.P6029650424036942326

/-! ## A218365.P10193275376192014348

`record[A218372(A330613(n+1))]`
-/

namespace A218365.P10193275376192014348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218365.P10193275376192014348

/-!
# A218366: Hilltop maps: number of nX2 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, vertical or antidiagonal neighbor in a random 0..3 nX2 array.

The programs for A218366, there is no canonical definition to state claims against.
-/

/-! ## A218366.P5311749371156685203

`A218372(∑[n+1]+2)`
-/

namespace A218366.P5311749371156685203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A218366.P5311749371156685203

/-! ## A218366.P3903207871315815023

`record[A218372(abs(A201163(n)))]`
-/

namespace A218366.P3903207871315815023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218366.P3903207871315815023

/-! ## A218366.P9359647252142156530

`record[A218372(Δ[A003453(n+5)])]`
-/

namespace A218366.P9359647252142156530
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218366.P9359647252142156530

/-! ## A218366.P1222372785490887908

`record[A218372(A000096(val(n+1, 2)+1))]`
-/

namespace A218366.P1222372785490887908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (A000096 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218366.P1222372785490887908

/-! ## A218366.P10399255623765003494

`A218372(A000096(n+1))%A000302(n+1)`
-/

namespace A218366.P10399255623765003494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218372 (A000096 (n + 1)).toNat) (A000302 (n + 1))

end

end A218366.P10399255623765003494

/-!
# A218367: Hilltop maps: number of nX3 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, vertical or antidiagonal neighbor in a random 0..3 nX3 array.

The programs for A218367, there is no canonical definition to state claims against.
-/

/-! ## A218367.P186785650677993598

`A218372(∑[n+2]+4)`
-/

namespace A218367.P186785650677993598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A218367.P186785650677993598

/-! ## A218367.P496112958171856327

`or(1, A218372(A167614(n+1)))`
-/

namespace A218367.P496112958171856327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A218372 (A167614 (n + 1)).toNat)

end

end A218367.P496112958171856327

/-! ## A218367.P8646503170846147679

`A218372(A167614(n+1))+A025439(n)`
-/

namespace A218367.P8646503170846147679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (A167614 (n + 1)).toNat + A025439 n

end

end A218367.P8646503170846147679

/-! ## A218367.P9609882701349118419

`A218372(A167614(n+1))+A178798(n)`
-/

namespace A218367.P9609882701349118419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (A167614 (n + 1)).toNat + A178798 n

end

end A218367.P9609882701349118419

/-! ## A218367.P3441874449735951501

`A218372(A167614(n+1))+A185238(n)`
-/

namespace A218367.P3441874449735951501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (A167614 (n + 1)).toNat + A185238 n

end

end A218367.P3441874449735951501

/-!
# A218368: Hilltop maps: number of nX4 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, vertical or antidiagonal neighbor in a random 0..3 nX4 array.

The programs for A218368, there is no canonical definition to state claims against.
-/

/-! ## A218368.P15504251495829699333

`A218372(A052905(n)+9)`
-/

namespace A218368.P15504251495829699333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (A052905 n + 9).toNat

end

end A218368.P15504251495829699333

/-! ## A218368.P13473694508670854266

`A218372(A055999(n)+10)`
-/

namespace A218368.P13473694508670854266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (A055999 n + 10).toNat

end

end A218368.P13473694508670854266

/-! ## A218368.P12419430038097914867

`A218372(A167614(n+2)+1)`
-/

namespace A218368.P12419430038097914867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (A167614 (n + 2) + 1).toNat

end

end A218368.P12419430038097914867

/-! ## A218368.P11810932613839252372

`A218372(Δ[A264443(n)-n²])`
-/

namespace A218368.P11810932613839252372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (f1 (n + 1) - f1 n).toNat

end

end A218368.P11810932613839252372

/-! ## A218368.P12401025739755054502

`A218372(Δ[A023545(n+1)-n²])`
-/

namespace A218368.P12401025739755054502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (f1 (n + 1) - f1 n).toNat

end

end A218368.P12401025739755054502

/-!
# A218369: Hilltop maps: number of nX5 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, vertical or antidiagonal neighbor in a random 0..3 nX5 array.

The programs for A218369, there is no canonical definition to state claims against.
-/

/-! ## A218369.P10546029789161202838

`A218372(A167499(n+3))`
-/

namespace A218369.P10546029789161202838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (A167499 (n + 3)).toNat

end

end A218369.P10546029789161202838

/-! ## A218369.P16724054037920552271

`A218372(A155212(n)+13)`
-/

namespace A218369.P16724054037920552271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (A155212 n + 13).toNat

end

end A218369.P16724054037920552271

/-! ## A218369.P1692112913512357742

`A218372(A056000(n)+15)`
-/

namespace A218369.P1692112913512357742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (A056000 n + 15).toNat

end

end A218369.P1692112913512357742

/-! ## A218369.P8178036843362648769

`A218372(A055998(n+3)-(n-3))`
-/

namespace A218369.P8178036843362648769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (A055998 (n + 3) - ((n : ℤ) - 3)).toNat

end

end A218369.P8178036843362648769

/-! ## A218369.P6016965584425852588

`A218372(Δ[A264443(n)])`
-/

namespace A218369.P6016965584425852588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (f1 (n + 1) - f1 n).toNat

end

end A218369.P6016965584425852588

/-!
# A218370: Hilltop maps: number of n X 6 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, vertical or antidiagonal neighbor in a random 0..3 n X 6 array.

The programs for A218370, there is no canonical definition to state claims against.
-/

/-! ## A218370.P12843906737440042366

`A218372(A374007(n+1))`
-/

namespace A218370.P12843906737440042366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (A374007 (n + 1)).toNat

end

end A218370.P12843906737440042366

/-! ## A218370.P1627696245533364531

`A218372(eq[3, A219347(n)])`
-/

namespace A218370.P1627696245533364531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218370.P1627696245533364531

/-! ## A218370.P7126476560406618259

`A218372(eq[5, A193592(n)])`
-/

namespace A218370.P7126476560406618259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218370.P7126476560406618259

/-! ## A218370.P12663274788060138696

`A218372(eq[6, A200370(n+1)])`
-/

namespace A218370.P12663274788060138696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218370.P12663274788060138696

/-! ## A218370.P4359588374733216507

`A218372(eq[8, A185782(n+1)])`
-/

namespace A218370.P4359588374733216507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218370.P4359588374733216507

/-!
# A218371: Hilltop maps: number of nX7 binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, vertical or antidiagonal neighbor in a random 0..3 nX7 array.

The programs for A218371, there is no canonical definition to state claims against.
-/

/-! ## A218371.P7926960688795690949

`A218372(eq[8, A131818(n+1)])`
-/

namespace A218371.P7926960688795690949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218371.P7926960688795690949

/-! ## A218371.P9526204487164049942

`A218372(A374008(n+1))`
-/

namespace A218371.P9526204487164049942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (A374008 (n + 1)).toNat

end

end A218371.P9526204487164049942

/-! ## A218371.P9903547818800770183

`A218372(eq[4, A219347(n)])`
-/

namespace A218371.P9903547818800770183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218371.P9903547818800770183

/-! ## A218371.P11550785579604420677

`A218372(eq[6, A193592(n)])`
-/

namespace A218371.P11550785579604420677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A218371.P11550785579604420677

/-! ## A218371.P8856787692393552921

`A218372(A155212(n+3)+2)`
-/

namespace A218371.P8856787692393552921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218372 (A155212 (n + 3) + 2).toNat

end

end A218371.P8856787692393552921

/-!
# A218372: T(n,k)=Hilltop maps: number of nXk binary arrays indicating the locations of corresponding elements not exceeded by any horizontal, vertical or antidiagonal neighbor in a random 0..3 nXk array.

The programs for A218372, there is no canonical definition to state claims against.
-/

/-! ## A218372.P5652615544880047350

`A000265(A218242(n+1)+A218196(n+1))`
-/

namespace A218372.P5652615544880047350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A218242 (n + 1) + A218196 (n + 1)).toNat

end

end A218372.P5652615544880047350

/-! ## A218372.P6519167457776228118

`A014682(A218242(n+1)+A218196(n+1))`
-/

namespace A218372.P6519167457776228118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A218242 (n + 1) + A218196 (n + 1)).toNat

end

end A218372.P6519167457776228118

/-! ## A218372.P12654142737227505052

`A273943(A218242(n+1)+A218196(n+1))`
-/

namespace A218372.P12654142737227505052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A218242 (n + 1) + A218196 (n + 1)).toNat

end

end A218372.P12654142737227505052

/-! ## A218372.P11073268890755617462

`A004525(A218242(n+1)+A218196(n+1))`
-/

namespace A218372.P11073268890755617462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A218242 (n + 1) + A218196 (n + 1)).toNat

end

end A218372.P11073268890755617462

/-! ## A218372.P5933889707831436652

`A004526(A218242(n+1)+A218196(n+1))`
-/

namespace A218372.P5933889707831436652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A218242 (n + 1) + A218196 (n + 1)).toNat

end

end A218372.P5933889707831436652

/-!
# A218374: Number of simple labeled graphs on n nodes with an even number of components.

The programs for A218374, there is no canonical definition to state claims against.
-/

/-! ## A218374.P5043563331096762167

`2^C(n, 2)-A218375(n)`
-/

namespace A218374.P5043563331096762167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose n 2 : ℤ) - A218375 n

end

end A218374.P5043563331096762167

/-! ## A218374.P16959014666407821892

`A006125(n)-A218375(n)`
-/

namespace A218374.P16959014666407821892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A218375 n

end

end A218374.P16959014666407821892

/-! ## A218374.P5526735855404311833

`∏[A011782(n)]-A218375(n)`
-/

namespace A218374.P5526735855404311833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A218375 n

end

end A218374.P5526735855404311833

/-! ## A218374.P1922216351156735118

`A157963(A000217(n))-A218375(n)`
-/

namespace A218374.P1922216351156735118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157963 (A000217 n).toNat - A218375 n

end

end A218374.P1922216351156735118

/-! ## A218374.P715392308945036691

`A157963(A179865(n+1))-A218375(n)`
-/

namespace A218374.P715392308945036691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157963 (A179865 (n + 1)).toNat - A218375 n

end

end A218374.P715392308945036691

/-!
# A218375: Number of simple labeled graphs on n nodes with an odd number of components.

The programs for A218375, there is no canonical definition to state claims against.
-/

/-! ## A218375.P6998317066401473929

`2^C(n, 2)-A218374(n)`
-/

namespace A218375.P6998317066401473929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ Nat.choose n 2 : ℤ) - A218374 n

end

end A218375.P6998317066401473929

/-! ## A218375.P17475770856116995280

`A006125(n)-A218374(n)`
-/

namespace A218375.P17475770856116995280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006125 n - A218374 n

end

end A218375.P17475770856116995280

/-! ## A218375.P13132522599390921123

`∏[A011782(n)]-A218374(n)`
-/

namespace A218375.P13132522599390921123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A218374 n

end

end A218375.P13132522599390921123

/-! ## A218375.P18282487084297052479

`A157963(A000217(n))-A218374(n)`
-/

namespace A218375.P18282487084297052479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157963 (A000217 n).toNat - A218374 n

end

end A218375.P18282487084297052479

/-! ## A218375.P5667723024624842879

`A157963(A179865(n+1))-A218374(n)`
-/

namespace A218375.P5667723024624842879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157963 (A179865 (n + 1)).toNat - A218374 n

end

end A218375.P5667723024624842879

/-!
# A218376: a(n) = 5^n*sum_{i=1..n} i^5/5^i.

The programs for A218376, the canonical program `A218376.P15950120744180533195` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218376 has offset 0).

The definition of A218376 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A218376.P15950120744180533195

`5*a(n-1)+n^5` with `a(0)=0`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A218376

/-- `5*a(n-1)+n^5` -/
def P15950120744180533195.Spec : Prop :=
  ∀ n, (P15950120744180533195.a n : ℤ) = A218376 n

theorem P15950120744180533195.correct : P15950120744180533195.Spec := by
  intro n
  simp only [A218376]

end A218376

/-! ## A218376.P15678365557749981647

`n*n²²+5*a(n-1)` with `a(0)=0`
-/

namespace A218376.P15678365557749981647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n * (n ^ 2) ^ 2 + 5 * a (n - 1)

end

end A218376.P15678365557749981647

namespace A218376

/-- `n*n²²+5*a(n-1)` -/
def P15678365557749981647.Spec : Prop :=
  ∀ n, (P15678365557749981647.a n : ℤ) = A218376 n

end A218376

/-! ## A218376.P7691182740309120113

`∑[n^5/A000351(n)]*A000351(n)`
-/

namespace A218376.P7691182740309120113
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n ^ 5 : ℚ) / (A000351 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A000351 n : ℚ)

end

end A218376.P7691182740309120113

namespace A218376

/-- `∑[n^5/A000351(n)]*A000351(n)` -/
def P7691182740309120113.Spec : Prop :=
  ∀ n, P7691182740309120113.a n = (A218376 n : ℚ)

end A218376

/-!
# A218378: Number of simple labeled graphs on n nodes with all odd size components.

The programs for A218378, there is no canonical definition to state claims against.
-/

/-! ## A218378.P8414015662907994101

`A304079(A044047(n))`
-/

namespace A218378.P8414015662907994101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304079 (A044047 n).toNat

end

end A218378.P8414015662907994101

/-! ## A218378.P7621441321246424417

`A000337(A057940(n!))`
-/

namespace A218378.P7621441321246424417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000337 (A057940 (Nat.factorial n)).toNat

end

end A218378.P7621441321246424417

/-!
# A218379: Number of partitions of n into pentagonal parts.

The programs for A218379, there is no canonical definition to state claims against.
-/

/-! ## A218379.P18065075403748174480

`A325358(A335520(3*n+5)+A057355(n))`
-/

namespace A218379.P18065075403748174480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325358 (A335520 (3 * n + 5) + A057355 n).toNat

end

end A218379.P18065075403748174480

/-!
# A218380: Number of partitions of n into distinct pentagonal parts.

The programs for A218380, there is no canonical definition to state claims against.
-/

/-! ## A218380.P13563218466103929870

`A034968(A332007(n))`
-/

namespace A218380.P13563218466103929870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A332007 n).toNat

end

end A218380.P13563218466103929870

/-! ## A218380.P10183236466552431123

`A060130(2*A332007(n))`
-/

namespace A218380.P10183236466552431123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (2 * A332007 n).toNat

end

end A218380.P10183236466552431123

/-! ## A218380.P13771352461539076032

`A060130(lcm(2, A332007(n)))`
-/

namespace A218380.P13771352461539076032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 (Int.lcm 2 (A332007 n))

end

end A218380.P13771352461539076032

/-! ## A218380.P7221196612042430299

`A060130(∑{digits}[A332007(n), #])`
-/

namespace A218380.P7221196612042430299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060130 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A218380.P7221196612042430299

/-! ## A218380.P551462996029930569

`A055091(A332007(n)%(n+2))`
-/

namespace A218380.P551462996029930569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (Int.tmod (A332007 n) (n + 2 : ℤ)).toNat

end

end A218380.P551462996029930569

/-! ## A218380.P6222627755321828067

`A001221(ceil(A332007(n)²/2)+1)`
-/

namespace A218380.P6222627755321828067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (⌈(A332007 n ^ 2 : ℚ) / 2⌉ + 1).toNat

end

end A218380.P6222627755321828067

/-! ## A218380.P17862989031773990171

`A055091(A332007(n)+A000007(n))`
-/

namespace A218380.P17862989031773990171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (A332007 n + A000007 n).toNat

end

end A218380.P17862989031773990171

/-! ## A218380.P14289677998209813037

`gcd(A000038(n), A055091(A332007(n)))`
-/

namespace A218380.P14289677998209813037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A055091 (A332007 n).toNat)

end

end A218380.P14289677998209813037

/-! ## A218380.P7479537713501187333

`A055091(or(A000007(n), A332007(n)))`
-/

namespace A218380.P7479537713501187333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055091 (Int.lor (A000007 n) (A332007 n)).toNat

end

end A218380.P7479537713501187333

/-!
# A218381: Numbers k = i*j such that i+j is a square.

The programs for A218381, the canonical program `A218381.P3083862309969667451` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218381 has offset 1).

The definition of A218381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 977 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218381.P3083862309969667451

`lt[0, A211996(n+1)]+1`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A218381

/-- `lt[0, A211996(n+1)]+1` -/
def P3083862309969667451.Spec : Prop :=
  ∀ n, (P3083862309969667451.a n : ℤ) = A218381 (n + 1)

theorem P3083862309969667451.correct : P3083862309969667451.Spec := by
  intro n
  simp only [A218381, Nat.add_sub_cancel]

end A218381

/-! ## A218381.P14196520326117324535

`lt[0, A211996(A028310(n))]`
-/

namespace A218381.P14196520326117324535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211996 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A218381.P14196520326117324535

namespace A218381

/-- `lt[0, A211996(A028310(n))]` -/
def P14196520326117324535.Spec : Prop :=
  ∀ n, (P14196520326117324535.a n : ℤ) = A218381 (n + 1)

end A218381

/-! ## A218381.P10624123246040565487

`lt[0, A211996(A233583(n+1))]`
-/

namespace A218381.P10624123246040565487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211996 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A218381.P10624123246040565487

namespace A218381

/-- `lt[0, A211996(A233583(n+1))]` -/
def P10624123246040565487.Spec : Prop :=
  ∀ n, (P10624123246040565487.a n : ℤ) = A218381 (n + 1)

end A218381

/-!
# A218382: Indices of records in A211996.

The programs for A218382, there is no canonical definition to state claims against.
-/

/-! ## A218382.P8958634987149357417

`A055034(A025167(n))*A298029(n)`
-/

namespace A218382.P8958634987149357417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A025167 n).toNat * A298029 n

end

end A218382.P8958634987149357417

/-!
# A218384: Number of nonempty subsets S of the powerset of a set of size n that have the even intersection property.

The programs for A218384, there is no canonical definition to state claims against.
-/

/-! ## A218384.P1579219712014211507

`A051179(n+1)-A305737(n+1)`
-/

namespace A218384.P1579219712014211507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051179 (n + 1) - A305737 (n + 1)

end

end A218384.P1579219712014211507

/-!
# A218385: (n-2)!/n when an integer.

The programs for A218385, there is no canonical definition to state claims against.
-/

/-! ## A218385.P13412383070057803730

`A126328(A118742(n+1))/2`
-/

namespace A218385.P13412383070057803730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126328 (A118742 (n + 1)).toNat : ℚ) / 2

end

end A218385.P13412383070057803730

/-! ## A218385.P9365643506516392385

`A126328(A072668(n+2))/2`
-/

namespace A218385.P9365643506516392385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126328 (A072668 (n + 2)).toNat : ℚ) / 2

end

end A218385.P9365643506516392385

/-! ## A218385.P15751655637335928499

`A126328(A060462(n+3))/2`
-/

namespace A218385.P15751655637335928499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126328 (A060462 (n + 3)).toNat : ℚ) / 2

end

end A218385.P15751655637335928499

/-! ## A218385.P9533214528546792436

`(A018252(n+3)-2)!/A018252(n+3)`
-/

namespace A218385.P9533214528546792436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A018252 (n + 3) - 2).toNat : ℚ) / (A018252 (n + 3) : ℚ)

end

end A218385.P9533214528546792436

/-! ## A218385.P10961706769682080614

`A108552(n+3)/2`
-/

namespace A218385.P10961706769682080614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108552 (n + 3) : ℚ) / 2

end

end A218385.P10961706769682080614

/-!
# A218386: a(n) = A215929(n) - (-1)^Fibonacci(n+1)*A218086(n).

The programs for A218386, there is no canonical definition to state claims against.
-/

/-! ## A218386.P1797967234712941922

`record[A181058(A027383(n))]`
-/

namespace A218386.P1797967234712941922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181058 (A027383 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218386.P1797967234712941922

/-!
# A218388: Bitwise OR of all divisors of n.

The programs for A218388, there is no canonical definition to state claims against.
-/

/-! ## A218388.P14633911732362064585

`or(n+1, A218403(n+1))`
-/

namespace A218388.P14633911732362064585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A218403 (n + 1))

end

end A218388.P14633911732362064585

/-! ## A218388.P18412398233185151803

`A080098(A218403(n+1)+∑[n+1])`
-/

namespace A218388.P18412398233185151803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080098 (A218403 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A218388.P18412398233185151803

/-! ## A218388.P406126674496326339

`or(n+1, A309307(A278240(n+1)))`
-/

namespace A218388.P406126674496326339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A309307 (A278240 (n + 1)).toNat)

end

end A218388.P406126674496326339

/-! ## A218388.P8100226343372693518

`or(A309307(A293214(n+1)), A318514(n+1))`
-/

namespace A218388.P8100226343372693518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A309307 (A293214 (n + 1)).toNat) (A318514 (n + 1))

end

end A218388.P8100226343372693518

/-! ## A218388.P970730618681972979

`or(A004442((n+1)^A254730(n)), A318506(n+1))`
-/

namespace A218388.P970730618681972979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004442 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A254730 n : ℤ))).toNat) (A318506 (n + 1))

end

end A218388.P970730618681972979

/-!
# A218391: Let k be the n-th odd composite, then a(n) is the smallest w*x such that w + x = (k-1)/2, y + z = (k+1)/2, and w*x = y*z.

The programs for A218391, there is no canonical definition to state claims against.
-/

/-! ## A218391.P13172205627313798326

`∩[A072389(n+1), A366188(n+1)]`
-/

namespace A218391.P13172205627313798326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366188 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218391.P13172205627313798326

/-! ## A218391.P1760869793997748906

`A072389(A052382(n+1)+Δ[A351870(n)])`
-/

namespace A218391.P1760869793997748906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072389 (A052382 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A218391.P1760869793997748906

/-! ## A218391.P2234331181063654052

`lt[A265400(2*(n+1)), A054896(A111273(n+1))]`
-/

namespace A218391.P2234331181063654052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265400 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (A111273 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A218391.P2234331181063654052

/-! ## A218391.P16121810144376692824

`A072389(A062399(n+2))`
-/

namespace A218391.P16121810144376692824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072389 (A062399 (n + 2)).toNat

end

end A218391.P16121810144376692824

/-! ## A218391.P12956394919903408671

`A072389(A351870(n+2))`
-/

namespace A218391.P12956394919903408671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072389 (A351870 (n + 2)).toNat

end

end A218391.P12956394919903408671

/-!
# A218392: Primitive triangle numbers as defined in A218243.

The programs for A218392, there is no canonical definition to state claims against.
-/

/-! ## A218392.P307877054276637014

`A218243(A006530((2*n)!))`
-/

namespace A218392.P307877054276637014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218243 (A006530 (Nat.factorial (2 * n))).toNat

end

end A218392.P307877054276637014

/-!
# A218394: Numbers such that sum(i<=n) binomial(n,i)*binomial(2*n-2*i, n-i) is not divisible by 5.

The programs for A218394, the canonical program `A218394.P7522888270796541219` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A218394 has offset 1).

The definition of A218394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A218394.P7522888270796541219

`A037453(Δ[n²])`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A218394

/-- `A037453(Δ[n²])` -/
def P7522888270796541219.Spec : Prop :=
  ∀ n, P7522888270796541219.a n = A218394 (n + 1)

theorem P7522888270796541219.correct : P7522888270796541219.Spec := by
  intro n
  simp only [A218394, Nat.add_sub_cancel]

end A218394

/-! ## A218394.P6885434833687418160

`record[A037453(n^(n%2))]`
-/

namespace A218394.P6885434833687418160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A218394.P6885434833687418160

namespace A218394

/-- `record[A037453(n^(n%2))]` -/
def P6885434833687418160.Spec : Prop :=
  ∀ n, P6885434833687418160.a n = A218394 (n + 1)

end A218394

/-! ## A218394.P115778591159269482

`or(1, A037453(2*n+1))`
-/

namespace A218394.P115778591159269482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A037453 (2 * n + 1))

end

end A218394.P115778591159269482

namespace A218394

/-- `or(1, A037453(2*n+1))` -/
def P115778591159269482.Spec : Prop :=
  ∀ n, P115778591159269482.a n = A218394 (n + 1)

end A218394

/-! ## A218394.P17578921604050542033

`filter[A037453(2*n+1), A035263(#)]`
-/

namespace A218394.P17578921604050542033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A218394.P17578921604050542033

namespace A218394

/-- `filter[A037453(2*n+1), A035263(#)]` -/
def P17578921604050542033.Spec : Prop :=
  ∀ n, P17578921604050542033.a n = A218394 (n + 1)

end A218394

/-! ## A218394.P8145861049819324297

`filter[A037453(2*n+1), A039982(#)]`
-/

namespace A218394.P8145861049819324297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A218394.P8145861049819324297

namespace A218394

/-- `filter[A037453(2*n+1), A039982(#)]` -/
def P8145861049819324297.Spec : Prop :=
  ∀ n, P8145861049819324297.a n = A218394 (n + 1)

end A218394

/-! ## A218394.P5996389114612357492

`filter[A037453(2*n+1), A093719(#)]`
-/

namespace A218394.P5996389114612357492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A218394.P5996389114612357492

namespace A218394

/-- `filter[A037453(2*n+1), A093719(#)]` -/
def P5996389114612357492.Spec : Prop :=
  ∀ n, P5996389114612357492.a n = A218394 (n + 1)

end A218394

/-! ## A218394.P8665426857412241167

`filter[A037453(2*n+1), A098725(#)]`
-/

namespace A218394.P8665426857412241167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A218394.P8665426857412241167

namespace A218394

/-- `filter[A037453(2*n+1), A098725(#)]` -/
def P8665426857412241167.Spec : Prop :=
  ∀ n, P8665426857412241167.a n = A218394 (n + 1)

end A218394

/-! ## A218394.P1809477384877212571

`filter[A037453(2*n+1), A105234(#)]`
-/

namespace A218394.P1809477384877212571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105234 (f1 j).toNat = 1) n)

end

end A218394.P1809477384877212571

namespace A218394

/-- `filter[A037453(2*n+1), A105234(#)]` -/
def P1809477384877212571.Spec : Prop :=
  ∀ n, P1809477384877212571.a n = A218394 (n + 1)

end A218394

/-! ## A218394.P8580595486037864555

`filter[A037453(2*n+1), A115971(#)]`
-/

namespace A218394.P8580595486037864555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A218394.P8580595486037864555

namespace A218394

/-- `filter[A037453(2*n+1), A115971(#)]` -/
def P8580595486037864555.Spec : Prop :=
  ∀ n, P8580595486037864555.a n = A218394 (n + 1)

end A218394

/-! ## A218394.P3428886219512764979

`filter[A037453(2*n+1), A127254(#)]`
-/

namespace A218394.P3428886219512764979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A127254 (f1 j).toNat = 1) n)

end

end A218394.P3428886219512764979

namespace A218394

/-- `filter[A037453(2*n+1), A127254(#)]` -/
def P3428886219512764979.Spec : Prop :=
  ∀ n, P3428886219512764979.a n = A218394 (n + 1)

end A218394

/-! ## A218394.P7051312059517073342

`filter[A037453(2*n+1), A152822(#)]`
-/

namespace A218394.P7051312059517073342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A152822 (f1 j).toNat = 1) n)

end

end A218394.P7051312059517073342

namespace A218394

/-- `filter[A037453(2*n+1), A152822(#)]` -/
def P7051312059517073342.Spec : Prop :=
  ∀ n, P7051312059517073342.a n = A218394 (n + 1)

end A218394

/-! ## A218394.P4704648850430249839

`filter[A037453(2*n+1), A166486(#)]`
-/

namespace A218394.P4704648850430249839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A218394.P4704648850430249839

namespace A218394

/-- `filter[A037453(2*n+1), A166486(#)]` -/
def P4704648850430249839.Spec : Prop :=
  ∀ n, P4704648850430249839.a n = A218394 (n + 1)

end A218394

/-! ## A218394.P4482130336167880728

`filter[A037453(2*n+1), A168185(#)]`
-/

namespace A218394.P4482130336167880728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A218394.P4482130336167880728

namespace A218394

/-- `filter[A037453(2*n+1), A168185(#)]` -/
def P4482130336167880728.Spec : Prop :=
  ∀ n, P4482130336167880728.a n = A218394 (n + 1)

end A218394

/-! ## A218394.P5694646286479427857

`filter[A037453(2*n+1), A254651(#)]`
-/

namespace A218394.P5694646286479427857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A254651 (f1 j).toNat = 1) n)

end

end A218394.P5694646286479427857

namespace A218394

/-- `filter[A037453(2*n+1), A254651(#)]` -/
def P5694646286479427857.Spec : Prop :=
  ∀ n, P5694646286479427857.a n = A218394 (n + 1)

end A218394

/-! ## A218394.P5533548278326933678

`A037459(A023717(2*n+1))`
-/

namespace A218394.P5533548278326933678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037459 (A023717 (2 * n + 1)).toNat

end

end A218394.P5533548278326933678

namespace A218394

/-- `A037459(A023717(2*n+1))` -/
def P5533548278326933678.Spec : Prop :=
  ∀ n, P5533548278326933678.a n = A218394 (n + 1)

end A218394

/-! ## A218394.P15606957262212397491

`A020654(A023717(2*n+1)+1)`
-/

namespace A218394.P15606957262212397491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020654 (A023717 (2 * n + 1) + 1).toNat

end

end A218394.P15606957262212397491

namespace A218394

/-- `A020654(A023717(2*n+1)+1)` -/
def P15606957262212397491.Spec : Prop :=
  ∀ n, P15606957262212397491.a n = A218394 (n + 1)

end A218394

/-! ## A218394.P9917486779250318440

`filter[A037453(2*n+1), A097325(#)]`
-/

namespace A218394.P9917486779250318440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A218394.P9917486779250318440

namespace A218394

/-- `filter[A037453(2*n+1), A097325(#)]` -/
def P9917486779250318440.Spec : Prop :=
  ∀ n, P9917486779250318440.a n = A218394 (n + 1)

end A218394

/-! ## A218394.P3172906975204353263

`∩[A037453(n+1), A004273(n)]`
-/

namespace A218394.P3172906975204353263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218394.P3172906975204353263

namespace A218394

/-- `∩[A037453(n+1), A004273(n)]` -/
def P3172906975204353263.Spec : Prop :=
  ∀ n, (P3172906975204353263.a n : ℤ) = A218394 (n + 1)

end A218394

/-! ## A218394.P8588828526036474859

`∩[A037453(n+1), A060747(n)]`
-/

namespace A218394.P8588828526036474859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A218394.P8588828526036474859

namespace A218394

/-- `∩[A037453(n+1), A060747(n)]` -/
def P8588828526036474859.Spec : Prop :=
  ∀ n, (P8588828526036474859.a n : ℤ) = A218394 (n + 1)

end A218394

/-!
# A218395: Numbers whose square is the sum of the squares of 11 consecutive integers.

The programs for A218395, there is no canonical definition to state claims against.
-/

/-! ## A218395.P9115212850731145926

`11*A198947(n+1)`
-/

namespace A218395.P9115212850731145926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A198947 (n + 1)

end

end A218395.P9115212850731145926

/-!
# A218396: Number of compositions of n into distinct (nonzero) Fibonacci numbers.

The programs for A218396, there is no canonical definition to state claims against.
-/

/-! ## A218396.P18189889762636824873

`A331922(comp[comp[floor(ϕ*n)]+n])`
-/

namespace A218396.P18189889762636824873
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331922 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A218396.P18189889762636824873

/-! ## A218396.P12451733021865490552

`filter[A331922(n), A257680(#)]`
-/

namespace A218396.P12451733021865490552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257680 (f1 j).toNat = 1) n)

end

end A218396.P12451733021865490552

/-! ## A218396.P5271372639372667529

`filter[A331922(n), A276398(#)]`
-/

namespace A218396.P5271372639372667529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A218396.P5271372639372667529

/-! ## A218396.P17027570506938385980

`and(-1, A331922(A063732(n+1)))`
-/

namespace A218396.P17027570506938385980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A331922 (A063732 (n + 1)).toNat)

end

end A218396.P17027570506938385980

/-! ## A218396.P9711783834845794023

`A331922(ceil(xor(n, -1)/ϕ)+n+n)%A000211(n)`
-/

namespace A218396.P9711783834845794023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331922 (⌈(Int.xor (n : ℤ) (-1) : ℝ) / Real.goldenRatio⌉ + (n + n : ℤ)).toNat) (A000211 n)

end

end A218396.P9711783834845794023

/-! ## A218396.P9476287374732342980

`A331922((3*n+1)%floor(ϕ*(n+1)))%A000211(n)`
-/

namespace A218396.P9476287374732342980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331922 (Int.tmod (3 * n + 1 : ℤ) ⌊Real.goldenRatio * (n + 1 : ℝ)⌋).toNat) (A000211 n)

end

end A218396.P9476287374732342980

/-! ## A218396.P5821366157037400067

`A331922(A063732(n+1))%A057534(n)`
-/

namespace A218396.P5821366157037400067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331922 (A063732 (n + 1)).toNat) (A057534 n)

end

end A218396.P5821366157037400067

/-! ## A218396.P2630297113758296069

`A007318(C(2, n))*A331922(A063732(n+1))`
-/

namespace A218396.P2630297113758296069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A331922 (A063732 (n + 1)).toNat

end

end A218396.P2630297113758296069

/-! ## A218396.P15394455256277251909

`A000040(n+2)%2*A331922(A063732(n+1))`
-/

namespace A218396.P15394455256277251909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A331922 (A063732 (n + 1)).toNat

end

end A218396.P15394455256277251909

/-! ## A218396.P10950461399854291209

`A014963(46*(n+1))*A331922(A063732(n+1))`
-/

namespace A218396.P10950461399854291209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (46 * (n + 1)) * A331922 (A063732 (n + 1)).toNat

end

end A218396.P10950461399854291209

