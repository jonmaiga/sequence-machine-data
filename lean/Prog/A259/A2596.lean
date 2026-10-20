import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
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
import Seq.B000.C024
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
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

/-!
# A259600: Triangular array: sums of two distinct lower Wythoff numbers.

The programs for A259600, there is no canonical definition to state claims against.
-/

/-! ## A259600.P9751766936131498335

`A000201(A002260(n+1))+A000201(A003057(n+2))`
-/

namespace A259600.P9751766936131498335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (A002260 (n + 1)).toNat + A000201 (A003057 (n + 2)).toNat

end

end A259600.P9751766936131498335

/-! ## A259600.P14435822128529712971

`floor(A259601(n+2)/ϕ)`
-/

namespace A259600.P14435822128529712971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A259601 (n + 2) : ℝ) / Real.goldenRatio⌋

end

end A259600.P14435822128529712971

/-! ## A259600.P16469863617592738178

`A057363(A259601(n+2))`
-/

namespace A259600.P16469863617592738178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057363 (A259601 (n + 2)).toNat

end

end A259600.P16469863617592738178

/-! ## A259600.P16349448806119655664

`A005206(A259601(n+2)-1)`
-/

namespace A259600.P16349448806119655664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A259601 (n + 2) - 1).toNat

end

end A259600.P16349448806119655664

/-! ## A259600.P6840080234777684056

`A005378(A259601(n+2)-1)`
-/

namespace A259600.P6840080234777684056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A259601 (n + 2) - 1).toNat

end

end A259600.P6840080234777684056

/-! ## A259600.P17576689410582849718

`A005379(A259601(n+2)-1)`
-/

namespace A259600.P17576689410582849718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 (A259601 (n + 2) - 1).toNat

end

end A259600.P17576689410582849718

/-! ## A259600.P10533018600299614354

`A057361(A259601(n+2)-2)+1`
-/

namespace A259600.P10533018600299614354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057361 (A259601 (n + 2) - 2).toNat + 1

end

end A259600.P10533018600299614354

/-!
# A259601: Triangular array: sums of two distinct upper Wythoff numbers.

The programs for A259601, there is no canonical definition to state claims against.
-/

/-! ## A259601.P17941629151244641943

`A184656(A259600(n+2)+1)`
-/

namespace A259601.P17941629151244641943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184656 (A259600 (n + 2) + 1).toNat

end

end A259601.P17941629151244641943

/-! ## A259601.P6558322811455524262

`A002260(n+1)+A259600(n+2)+A003057(n+2)`
-/

namespace A259601.P6558322811455524262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A259600 (n + 2) + A003057 (n + 2))

end

end A259601.P6558322811455524262

/-! ## A259601.P2749050739071775646

`A001950(A002260(n+1))+A001950(A003057(n+2))`
-/

namespace A259601.P2749050739071775646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A002260 (n + 1)).toNat + A001950 (A003057 (n + 2)).toNat

end

end A259601.P2749050739071775646

/-! ## A259601.P13248569758393580396

`A001950(A002262(n)+1)+A001950(A003057(n+2))`
-/

namespace A259601.P13248569758393580396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (A002262 n + 1).toNat + A001950 (A003057 (n + 2)).toNat

end

end A259601.P13248569758393580396

/-! ## A259601.P1527502463198374129

`A191329(A001595(n))+A000201(A259600(n+2))`
-/

namespace A259601.P1527502463198374129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191329 (A001595 n).toNat + A000201 (A259600 (n + 2)).toNat

end

end A259601.P1527502463198374129

/-!
# A259602: (A259260(n) + A259260(n+1)) / 2.

The programs for A259602, there is no canonical definition to state claims against.
-/

/-! ## A259602.P835222913338240225

`(A259260(n+1)+A259260(n+2))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259602.P835222913338240225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259260 (n + 1) + A259260 (n + 2) : ℚ) / 2

end

end A259602.P835222913338240225

/-! ## A259602.P637692340555640655

`A004525(A259260(n+1)+A259260(n+2))`
-/

namespace A259602.P637692340555640655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A259260 (n + 1) + A259260 (n + 2)).toNat

end

end A259602.P637692340555640655

/-! ## A259602.P3763757775587729189

`A004526(A259260(n+1)+A259260(n+2))`
-/

namespace A259602.P3763757775587729189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A259260 (n + 1) + A259260 (n + 2)).toNat

end

end A259602.P3763757775587729189

/-! ## A259602.P14282699586454016669

`A025480(A259260(n+1)+A259260(n+2))`
-/

namespace A259602.P14282699586454016669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A259260 (n + 1) + A259260 (n + 2)).toNat

end

end A259602.P14282699586454016669

/-! ## A259602.P12424478206284191215

`A026741(A259260(n+1)+A259260(n+2))`
-/

namespace A259602.P12424478206284191215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A259260 (n + 1) + A259260 (n + 2)).toNat

end

end A259602.P12424478206284191215

/-! ## A259602.P2455017061132407061

`A029578(A259260(n+1)+A259260(n+2))`
-/

namespace A259602.P2455017061132407061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A259260 (n + 1) + A259260 (n + 2)).toNat

end

end A259602.P2455017061132407061

/-!
# A259603: a(n) = (A259429(n) + A259429(n+1)) / 2.

The programs for A259603, there is no canonical definition to state claims against.
-/

/-! ## A259603.P4615013435904654810

`(A259429(n+1)+A259429(n+2))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259603.P4615013435904654810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259429 (n + 1) + A259429 (n + 2) : ℚ) / 2

end

end A259603.P4615013435904654810

/-! ## A259603.P17978783607779628597

`A004525(A259429(n+1)+A259429(n+2))`
-/

namespace A259603.P17978783607779628597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A259429 (n + 1) + A259429 (n + 2)).toNat

end

end A259603.P17978783607779628597

/-! ## A259603.P7593025056365177159

`A025480(A259429(n+1)+A259429(n+2))`
-/

namespace A259603.P7593025056365177159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A259429 (n + 1) + A259429 (n + 2)).toNat

end

end A259603.P7593025056365177159

/-! ## A259603.P5152791529548118651

`A026741(A259429(n+1)+A259429(n+2))`
-/

namespace A259603.P5152791529548118651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A259429 (n + 1) + A259429 (n + 2)).toNat

end

end A259603.P5152791529548118651

/-! ## A259603.P8555197523190889836

`A029578(A259429(n+1)+A259429(n+2))`
-/

namespace A259603.P8555197523190889836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A259429 (n + 1) + A259429 (n + 2)).toNat

end

end A259603.P8555197523190889836

/-!
# A259604: (A259542(n) + A259542(n+1)) / 2.

The programs for A259604, there is no canonical definition to state claims against.
-/

/-! ## A259604.P4439366183686650941

`(A259542(n+1)+A259542(n+2))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259604.P4439366183686650941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259542 (n + 1) + A259542 (n + 2) : ℚ) / 2

end

end A259604.P4439366183686650941

/-! ## A259604.P3123223633134169226

`A004525(A259542(n+1)+A259542(n+2))`
-/

namespace A259604.P3123223633134169226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A259542 (n + 1) + A259542 (n + 2)).toNat

end

end A259604.P3123223633134169226

/-! ## A259604.P6888477029977201445

`A004526(A259542(n+1)+A259542(n+2))`
-/

namespace A259604.P6888477029977201445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A259542 (n + 1) + A259542 (n + 2)).toNat

end

end A259604.P6888477029977201445

/-! ## A259604.P13448039100235801817

`A025480(A259542(n+1)+A259542(n+2))`
-/

namespace A259604.P13448039100235801817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A259542 (n + 1) + A259542 (n + 2)).toNat

end

end A259604.P13448039100235801817

/-! ## A259604.P2276885467554031629

`A026741(A259542(n+1)+A259542(n+2))`
-/

namespace A259604.P2276885467554031629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A259542 (n + 1) + A259542 (n + 2)).toNat

end

end A259604.P2276885467554031629

/-! ## A259604.P15342286911931574909

`A029578(A259542(n+1)+A259542(n+2))`
-/

namespace A259604.P15342286911931574909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A259542 (n + 1) + A259542 (n + 2)).toNat

end

end A259604.P15342286911931574909

/-!
# A259605: (A259565(n) + A259565(n+1)) / 2.

The programs for A259605, there is no canonical definition to state claims against.
-/

/-! ## A259605.P3709270138083075529

`(A259565(n+1)+A259565(n+2))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A259605.P3709270138083075529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259565 (n + 1) + A259565 (n + 2) : ℚ) / 2

end

end A259605.P3709270138083075529

/-! ## A259605.P9147650049779528048

`A004525(A259565(n+1)+A259565(n+2))`
-/

namespace A259605.P9147650049779528048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A259565 (n + 1) + A259565 (n + 2)).toNat

end

end A259605.P9147650049779528048

/-! ## A259605.P3391370755704105072

`A004526(A259565(n+1)+A259565(n+2))`
-/

namespace A259605.P3391370755704105072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A259565 (n + 1) + A259565 (n + 2)).toNat

end

end A259605.P3391370755704105072

/-! ## A259605.P3677938119677475419

`A025480(A259565(n+1)+A259565(n+2))`
-/

namespace A259605.P3677938119677475419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A259565 (n + 1) + A259565 (n + 2)).toNat

end

end A259605.P3677938119677475419

/-! ## A259605.P12085415640863257187

`A026741(A259565(n+1)+A259565(n+2))`
-/

namespace A259605.P12085415640863257187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A259565 (n + 1) + A259565 (n + 2)).toNat

end

end A259605.P12085415640863257187

/-! ## A259605.P2568889287763689980

`A029578(A259565(n+1)+A259565(n+2))`
-/

namespace A259605.P2568889287763689980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A259565 (n + 1) + A259565 (n + 2)).toNat

end

end A259605.P2568889287763689980

/-!
# A259606: G.f. satisfies: A(x) = Series_Reversion( x - A'(x)*A(x)^2 ).

The programs for A259606, there is no canonical definition to state claims against.
-/

/-! ## A259606.P14333699233400372059

`A302102(n)-A025443(A302102(n))`
-/

namespace A259606.P14333699233400372059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302102 n - A025443 (A302102 n).toNat

end

end A259606.P14333699233400372059

/-!
# A259607: G.f. satisfies: A(x) = 1+x + x^2 * A'(x)^2 / A(x)^2.

The programs for A259607, there is no canonical definition to state claims against.
-/

/-! ## A259607.P5837062237728396256

`A008620(A002890(n)²)`
-/

namespace A259607.P5837062237728396256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A002890 n ^ 2).toNat

end

end A259607.P5837062237728396256

/-! ## A259607.P2739647739255835607

`A117910(A002890(n)²)`
-/

namespace A259607.P2739647739255835607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (A002890 n ^ 2).toNat

end

end A259607.P2739647739255835607

/-! ## A259607.P15359367870773071906

`A081753(A229046(n)²)`
-/

namespace A259607.P15359367870773071906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A229046 n ^ 2).toNat

end

end A259607.P15359367870773071906

/-!
# A259608: G.f. A(x) satisfies: A(x) = Series_Reversion( x - x^2*A(x) - x*Integral 2*A(x) dx ).

The programs for A259608, there is no canonical definition to state claims against.
-/

/-! ## A259608.P11626646804871967586

`(n+1)*A259609(n+2)`
-/

namespace A259608.P11626646804871967586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A259609 (n + 2)

end

end A259608.P11626646804871967586

/-!
# A259609: G.f. A(x) satisfies: A'(x)/2 = Series_Reversion( x - x^2*A'(x) - 2*x*A(x) ).

The programs for A259609, there is no canonical definition to state claims against.
-/

/-! ## A259609.P11694437979555936472

`A259608(n+1)/(n+1)`
-/

namespace A259609.P11694437979555936472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259608 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A259609.P11694437979555936472

/-!
# A259610: G.f. A(x) satisfies: A(x) = Series_Reversion( x - 2*x*A(x) - Integral 2*A(x) dx ).

The programs for A259610, there is no canonical definition to state claims against.
-/

/-! ## A259610.P6309220598077955257

`(n+2)*A259611(n+2)/2`
-/

namespace A259610.P6309220598077955257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A259611 (n + 2) : ℚ) / 2

end

end A259610.P6309220598077955257

/-!
# A259611: G.f. A(x) satisfies: A'(x)/2 = Series_Reversion( x - x*A'(x) - A(x) ).

The programs for A259611, there is no canonical definition to state claims against.
-/

/-! ## A259611.P6643584297121241104

`2*A259610(n+1)/(n+2)`
-/

namespace A259611.P6643584297121241104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A259610 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A259611.P6643584297121241104

/-!
# A259612: G.f. A(x) satisfies: A(x)*A'(x) = Series_Reversion( x - 2*x*A(x)*A'(x) - A(x)^2 ).

The programs for A259612, there is no canonical definition to state claims against.
-/

/-! ## A259612.P11239927956631261897

`A102440(∏[2^n]-n)`
-/

namespace A259612.P11239927956631261897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102440 (∏ j ∈ Finset.range (n + 1), f1 j - n)

end

end A259612.P11239927956631261897

/-!
# A259613: a(n) = binomial(6*n,2*n)/3, n>0, a(0)=1.

The programs for A259613, there is no canonical definition to state claims against.
-/

/-! ## A259613.P5123022672732139029

`ceil(A005809(2*n)/3)`
-/

namespace A259613.P5123022672732139029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005809 (2 * n) : ℚ) / 3⌉

end

end A259613.P5123022672732139029

/-! ## A259613.P18223158032579419768

`ceil(A051033(6*n)/3)`
-/

namespace A259613.P18223158032579419768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A051033 (6 * n) : ℚ) / 3⌉

end

end A259613.P18223158032579419768

/-! ## A259613.P10547817330978370218

`floor(A025174(2*n)+acot(n))`
-/

namespace A259613.P10547817330978370218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A025174 (2 * n) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A259613.P10547817330978370218

/-! ## A259613.P9520741162578095588

`A025174(round(1/acot(n))+n)`
-/

namespace A259613.P9520741162578095588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025174 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)).toNat

end

end A259613.P9520741162578095588

/-! ## A259613.P3698497148581387460

`A025174(or(2*n, floor(acot(n))))`
-/

namespace A259613.P3698497148581387460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025174 (Int.lor (2 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A259613.P3698497148581387460

/-! ## A259613.P4663713919580995904

`A025174(xor(2*n, floor(acot(n))))`
-/

namespace A259613.P4663713919580995904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025174 (Int.xor (2 * n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋).toNat

end

end A259613.P4663713919580995904

/-! ## A259613.P14836990321447893788

`A025174(comp[2*(n+1)]+1)`
-/

namespace A259613.P14836990321447893788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025174 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A259613.P14836990321447893788

/-! ## A259613.P6006225622695322201

`A127040(A130824(n))`
-/

namespace A259613.P6006225622695322201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127040 (A130824 n).toNat

end

end A259613.P6006225622695322201

/-! ## A259613.P9619658154513709120

`A099578(A131098(n+1))`
-/

namespace A259613.P9619658154513709120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099578 (A131098 (n + 1)).toNat

end

end A259613.P9619658154513709120

/-! ## A259613.P16335762655312651606

`A127040(A111284(n+1))`
-/

namespace A259613.P16335762655312651606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127040 (A111284 (n + 1)).toNat

end

end A259613.P16335762655312651606

/-!
# A259614: Numbers congruent to {17,29} mod 36.

The programs for A259614, the canonical program `A259614.P4298083814225706518` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259614 has offset 1).

The definition of A259614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259614.P4298083814225706518

`a(n-2)+36` with `a(0)=17, a(1)=29`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259614

/-- `a(n-2)+36` -/
def P4298083814225706518.Spec : Prop :=
  ∀ n, (P4298083814225706518.a n : ℤ) = A259614 (n + 1)

theorem P4298083814225706518.correct : P4298083814225706518.Spec := by
  intro n
  simp only [A259614, Nat.add_sub_cancel]

end A259614

/-! ## A259614.P17239791887074504157

`∑[36-a(n-1)]` with `a(0)=17, a(1)=12`
-/

namespace A259614.P17239791887074504157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [17, 12] fun n f1 =>
  36 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259614.P17239791887074504157

namespace A259614

/-- `∑[36-a(n-1)]` -/
def P17239791887074504157.Spec : Prop :=
  ∀ n, P17239791887074504157.a n = A259614 (n + 1)

end A259614

/-! ## A259614.P8598953091635772677

`3*4*comp[3*n]+5`
-/

namespace A259614.P8598953091635772677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 5

end

end A259614.P8598953091635772677

namespace A259614

/-- `3*4*comp[3*n]+5` -/
def P8598953091635772677.Spec : Prop :=
  ∀ n, (P8598953091635772677.a n : ℤ) = A259614 (n + 1)

end A259614

/-! ## A259614.P12734886019605861690

`record[lcm(3, 4*(n+1))+5]`
-/

namespace A259614.P12734886019605861690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (4 * (n + 1)) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259614.P12734886019605861690

namespace A259614

/-- `record[lcm(3, 4*(n+1))+5]` -/
def P12734886019605861690.Spec : Prop :=
  ∀ n, (P12734886019605861690.a n : ℤ) = A259614 (n + 1)

end A259614

/-! ## A259614.P5866991005708737784

`A000027(4*(A016051(n+1)+1)+1)`
-/

namespace A259614.P5866991005708737784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (4 * (A016051 (n + 1) + 1) + 1).toNat

end

end A259614.P5866991005708737784

namespace A259614

/-- `A000027(4*(A016051(n+1)+1)+1)` -/
def P5866991005708737784.Spec : Prop :=
  ∀ n, P5866991005708737784.a n = A259614 (n + 1)

end A259614

/-! ## A259614.P15496742236600285565

`Δ[A016778(n)-(gcd(2, n)²+n)]`
-/

namespace A259614.P15496742236600285565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016778 n - (Nat.gcd 2 n ^ 2 + n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A259614.P15496742236600285565

namespace A259614

/-- `Δ[A016778(n)-(gcd(2, n)²+n)]` -/
def P15496742236600285565.Spec : Prop :=
  ∀ n, P15496742236600285565.a n = A259614 (n + 1)

end A259614

/-! ## A259614.P6933509784640832546

`A017581(A001651(n+1))`
-/

namespace A259614.P6933509784640832546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (A001651 (n + 1)).toNat

end

end A259614.P6933509784640832546

namespace A259614

/-- `A017581(A001651(n+1))` -/
def P6933509784640832546.Spec : Prop :=
  ∀ n, P6933509784640832546.a n = A259614 (n + 1)

end A259614

/-! ## A259614.P5027324060724855280

`record[A105452(n+2)+A016897(n)]`
-/

namespace A259614.P5027324060724855280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105452 (n + 2) + A016897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259614.P5027324060724855280

namespace A259614

/-- `record[A105452(n+2)+A016897(n)]` -/
def P5027324060724855280.Spec : Prop :=
  ∀ n, P5027324060724855280.a n = A259614 (n + 1)

end A259614

/-! ## A259614.P6371767898285570944

`A017581(A047238(n+1)/2+1)`
-/

namespace A259614.P6371767898285570944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (SequenceMachineLib.roundAway ((A047238 (n + 1) : ℚ) / 2 + 1)).toNat

end

end A259614.P6371767898285570944

namespace A259614

/-- `A017581(A047238(n+1)/2+1)` -/
def P6371767898285570944.Spec : Prop :=
  ∀ n, P6371767898285570944.a n = A259614 (n + 1)

end A259614

/-! ## A259614.P18323558531939466627

`A017581(A001068(2*n+1)-n)`
-/

namespace A259614.P18323558531939466627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017581 (A001068 (2 * n + 1) - (n : ℤ)).toNat

end

end A259614.P18323558531939466627

namespace A259614

/-- `A017581(A001068(2*n+1)-n)` -/
def P18323558531939466627.Spec : Prop :=
  ∀ n, P18323558531939466627.a n = A259614 (n + 1)

end A259614

/-! ## A259614.P1540293288922372452

`A016969(2*comp[3*n])`
-/

namespace A259614.P1540293288922372452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 (2 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A259614.P1540293288922372452

namespace A259614

/-- `A016969(2*comp[3*n])` -/
def P1540293288922372452.Spec : Prop :=
  ∀ n, P1540293288922372452.a n = A259614 (n + 1)

end A259614

/-! ## A259614.P13660774536854052878

`A092242(A047270(n+1))`
-/

namespace A259614.P13660774536854052878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092242 (A047270 (n + 1)).toNat

end

end A259614.P13660774536854052878

namespace A259614

/-- `A092242(A047270(n+1))` -/
def P13660774536854052878.Spec : Prop :=
  ∀ n, P13660774536854052878.a n = A259614 (n + 1)

end A259614

/-! ## A259614.P18252113540737704408

`A101328(A007310(n+2))`
-/

namespace A259614.P18252113540737704408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101328 (A007310 (n + 2)).toNat

end

end A259614.P18252113540737704408

namespace A259614

/-- `A101328(A007310(n+2))` -/
def P18252113540737704408.Spec : Prop :=
  ∀ n, P18252113540737704408.a n = A259614 (n + 1)

end A259614

/-! ## A259614.P15208138081388032635

`A087445(A047233(n+2))`
-/

namespace A259614.P15208138081388032635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (A047233 (n + 2)).toNat

end

end A259614.P15208138081388032635

namespace A259614

/-- `A087445(A047233(n+2))` -/
def P15208138081388032635.Spec : Prop :=
  ∀ n, P15208138081388032635.a n = A259614 (n + 1)

end A259614

/-! ## A259614.P13229605640572897982

`A087445(A007310(n+2)-1)`
-/

namespace A259614.P13229605640572897982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (A007310 (n + 2) - 1).toNat

end

end A259614.P13229605640572897982

namespace A259614

/-- `A087445(A007310(n+2)-1)` -/
def P13229605640572897982.Spec : Prop :=
  ∀ n, P13229605640572897982.a n = A259614 (n + 1)

end A259614

/-! ## A259614.P5285981762341855986

`A087445(A047262(2*n+3))`
-/

namespace A259614.P5285981762341855986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087445 (A047262 (2 * n + 3)).toNat

end

end A259614.P5285981762341855986

namespace A259614

/-- `A087445(A047262(2*n+3))` -/
def P5285981762341855986.Spec : Prop :=
  ∀ n, P5285981762341855986.a n = A259614 (n + 1)

end A259614

/-! ## A259614.P2653014135691313192

`A004766(A125758(n+1))`
-/

namespace A259614.P2653014135691313192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004766 (A125758 (n + 1)).toNat

end

end A259614.P2653014135691313192

namespace A259614

/-- `A004766(A125758(n+1))` -/
def P2653014135691313192.Spec : Prop :=
  ∀ n, P2653014135691313192.a n = A259614 (n + 1)

end A259614

/-! ## A259614.P17723044771059732072

`A093544(A253195(n+1))`
-/

namespace A259614.P17723044771059732072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093544 (A253195 (n + 1)).toNat

end

end A259614.P17723044771059732072

namespace A259614

/-- `A093544(A253195(n+1))` -/
def P17723044771059732072.Spec : Prop :=
  ∀ n, P17723044771059732072.a n = A259614 (n + 1)

end A259614

/-! ## A259614.P1362496177898439613

`A016813(A047208(n+2)+2*n)`
-/

namespace A259614.P1362496177898439613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A047208 (n + 2) + (2 * n : ℤ)).toNat

end

end A259614.P1362496177898439613

namespace A259614

/-- `A016813(A047208(n+2)+2*n)` -/
def P1362496177898439613.Spec : Prop :=
  ∀ n, P1362496177898439613.a n = A259614 (n + 1)

end A259614

/-! ## A259614.P140942177511764343

`A166521(A092259(n+1))`
-/

namespace A259614.P140942177511764343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166521 (A092259 (n + 1)).toNat

end

end A259614.P140942177511764343

namespace A259614

/-- `A166521(A092259(n+1))` -/
def P140942177511764343.Spec : Prop :=
  ∀ n, P140942177511764343.a n = A259614 (n + 1)

end A259614

/-!
# A259621: Positive integers k with record-setting smallest values of abs(cos(k) - cos(k*Pi/180)).

The programs for A259621, there is no canonical definition to state claims against.
-/

/-! ## A259621.P16989184739571264687

`A003963(A018915(2*n)-A085059(n+1))`
-/

namespace A259621.P16989184739571264687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (A018915 (2 * n) - A085059 (n + 1)).toNat

end

end A259621.P16989184739571264687

/-!
# A259622: Primeth recurrence: a(n) = (a(n-1)+a(n-2))-th prime, with a(0)=0, a(1)=1.

The programs for A259622, there is no canonical definition to state claims against.
-/

/-! ## A259622.P6413360293789730330

`A000040(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A259622.P6413360293789730330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000040 (a (n - 1) + a (n - 2)).toNat

end

end A259622.P6413360293789730330

/-! ## A259622.P12255006590150143461

`A006093(a(n-1)+a(n-2))+1` with `a(0)=0, a(1)=1`
-/

namespace A259622.P12255006590150143461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A006093 (a (n - 1) + a (n - 2)).toNat + 1

end

end A259622.P12255006590150143461

/-! ## A259622.P14441885128081816090

`A008578(a(n-1)+a(n-2)+1)` with `a(0)=0, a(1)=1`
-/

namespace A259622.P14441885128081816090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A008578 (a (n - 1) + a (n - 2) + 1).toNat

end

end A259622.P14441885128081816090

/-! ## A259622.P11663954900621361340

`A158611(a(n-1)+a(n-2)+2)` with `a(0)=0, a(1)=1`
-/

namespace A259622.P11663954900621361340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A158611 (a (n - 1) + a (n - 2) + 2).toNat

end

end A259622.P11663954900621361340

/-! ## A259622.P5883789354738486393

`A000040(a(n-1)-floor(-a(n-2)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A259622.P5883789354738486393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A000040 (a (n - 1) - (-a (n - 2))).toNat

end

end A259622.P5883789354738486393

/-!
# A259623: Strictly increasing list of F and F + 1, where F = A000045, the Fibonacci numbers.

The programs for A259623, the canonical program `A259623.P8397012084829598686` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259623 has offset 1).

The definition of A259623 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 956 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259623.P8397012084829598686

`record[A321664(n)+1]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A259623

/-- `record[A321664(n)+1]` -/
def P8397012084829598686.Spec : Prop :=
  ∀ n, P8397012084829598686.a n = A259623 (n + 1)

theorem P8397012084829598686.correct : P8397012084829598686.Spec := by
  intro n
  simp only [A259623, Nat.add_sub_cancel]

end A259623

/-! ## A259623.P11297726229307484940

`A258085(n+1)+1`
-/

namespace A259623.P11297726229307484940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258085 (n + 1) + 1

end

end A259623.P11297726229307484940

namespace A259623

/-- `A258085(n+1)+1` -/
def P11297726229307484940.Spec : Prop :=
  ∀ n, P11297726229307484940.a n = A259623 (n + 1)

end A259623

/-! ## A259623.P12815094669166538779

`record[A327035(n)+A156595(n)]`
-/

namespace A259623.P12815094669166538779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327035 n + A156595 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259623.P12815094669166538779

namespace A259623

/-- `record[A327035(n)+A156595(n)]` -/
def P12815094669166538779.Spec : Prop :=
  ∀ n, P12815094669166538779.a n = A259623 (n + 1)

end A259623

/-! ## A259623.P2153014902359952460

`record[A103609(n+2)+A000035(n)]`
-/

namespace A259623.P2153014902359952460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (n + 2) + A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259623.P2153014902359952460

namespace A259623

/-- `record[A103609(n+2)+A000035(n)]` -/
def P2153014902359952460.Spec : Prop :=
  ∀ n, P2153014902359952460.a n = A259623 (n + 1)

end A259623

/-! ## A259623.P6342404034201874191

`record[A000045(A008619(n))+and(1, n)]`
-/

namespace A259623.P6342404034201874191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008619 n).toNat + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259623.P6342404034201874191

namespace A259623

/-- `record[A000045(A008619(n))+and(1, n)]` -/
def P6342404034201874191.Spec : Prop :=
  ∀ n, P6342404034201874191.a n = A259623 (n + 1)

end A259623

/-! ## A259623.P4296973541174993752

`record[A000045(A004526(n+1))+(n+1)%2]`
-/

namespace A259623.P4296973541174993752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A004526 (n + 1)).toNat + (((n + 1) % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259623.P4296973541174993752

namespace A259623

/-- `record[A000045(A004526(n+1))+(n+1)%2]` -/
def P4296973541174993752.Spec : Prop :=
  ∀ n, P4296973541174993752.a n = A259623 (n + 1)

end A259623

/-! ## A259623.P2649206445134675089

`A071679(A004526(n)+1)+Δ[A004526(n)]`
-/

namespace A259623.P2649206445134675089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (A004526 n + 1).toNat + (f1 (n + 1) - f1 n)

end

end A259623.P2649206445134675089

namespace A259623

/-- `A071679(A004526(n)+1)+Δ[A004526(n)]` -/
def P2649206445134675089.Spec : Prop :=
  ∀ n, P2649206445134675089.a n = A259623 (n + 1)

end A259623

/-! ## A259623.P4879215742837790958

`record[A164349(n+1)+A000045(A101402(n))]`
-/

namespace A259623.P4879215742837790958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164349 (n + 1) + A000045 (A101402 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259623.P4879215742837790958

namespace A259623

/-- `record[A164349(n+1)+A000045(A101402(n))]` -/
def P4879215742837790958.Spec : Prop :=
  ∀ n, P4879215742837790958.a n = A259623 (n + 1)

end A259623

/-! ## A259623.P1654877723042914350

`A071679(A110654(n+1))+Δ[A110654(n+1)]`
-/

namespace A259623.P1654877723042914350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (A110654 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A259623.P1654877723042914350

namespace A259623

/-- `A071679(A110654(n+1))+Δ[A110654(n+1)]` -/
def P1654877723042914350.Spec : Prop :=
  ∀ n, P1654877723042914350.a n = A259623 (n + 1)

end A259623

/-! ## A259623.P59367564305445497

`record[A056594(n+1)+A000045(A008647(2*n))]`
-/

namespace A259623.P59367564305445497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (n + 1) + A000045 (A008647 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259623.P59367564305445497

namespace A259623

/-- `record[A056594(n+1)+A000045(A008647(2*n))]` -/
def P59367564305445497.Spec : Prop :=
  ∀ n, P59367564305445497.a n = A259623 (n + 1)

end A259623

/-! ## A259623.P16672669503857918444

`record[A000045(A008647(2*n+1))-A049347(n+1)]`
-/

namespace A259623.P16672669503857918444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008647 (2 * n + 1)).toNat - A049347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259623.P16672669503857918444

namespace A259623

/-- `record[A000045(A008647(2*n+1))-A049347(n+1)]` -/
def P16672669503857918444.Spec : Prop :=
  ∀ n, P16672669503857918444.a n = A259623 (n + 1)

end A259623

/-! ## A259623.P16275252333271573251

`record[A049347(2*n)+A000045(A008647(2*n+1))]`
-/

namespace A259623.P16275252333271573251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 (2 * n) + A000045 (A008647 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259623.P16275252333271573251

namespace A259623

/-- `record[A049347(2*n)+A000045(A008647(2*n+1))]` -/
def P16275252333271573251.Spec : Prop :=
  ∀ n, P16275252333271573251.a n = A259623 (n + 1)

end A259623

/-! ## A259623.P15544117336092897012

`∪[A226271(n+1), A020695(n)]`
-/

namespace A259623.P15544117336092897012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259623.P15544117336092897012

namespace A259623

/-- `∪[A226271(n+1), A020695(n)]` -/
def P15544117336092897012.Spec : Prop :=
  ∀ n, (P15544117336092897012.a n : ℤ) = A259623 (n + 1)

end A259623

/-! ## A259623.P15267517129932833820

`∪[A071679(n+1)+1, A071679(n+1)]`
-/

namespace A259623.P15267517129932833820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071679 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259623.P15267517129932833820

namespace A259623

/-- `∪[A071679(n+1)+1, A071679(n+1)]` -/
def P15267517129932833820.Spec : Prop :=
  ∀ n, (P15267517129932833820.a n : ℤ) = A259623 (n + 1)

end A259623

/-! ## A259623.P8746513739801424188

`∪[A116470(2*n+1)+1, A116470(2*n+1)]`
-/

namespace A259623.P8746513739801424188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116470 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116470 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259623.P8746513739801424188

namespace A259623

/-- `∪[A116470(2*n+1)+1, A116470(2*n+1)]` -/
def P8746513739801424188.Spec : Prop :=
  ∀ n, (P8746513739801424188.a n : ℤ) = A259623 (n + 1)

end A259623

/-! ## A259623.P5703755506068491018

`record[A094570(n+1)+A094570(n)]`
-/

namespace A259623.P5703755506068491018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 (n + 1) + A094570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259623.P5703755506068491018

namespace A259623

/-- `record[A094570(n+1)+A094570(n)]` -/
def P5703755506068491018.Spec : Prop :=
  ∀ n, P5703755506068491018.a n = A259623 (n + 1)

end A259623

/-! ## A259623.P719035475186903887

`record[A132923(n+1)]`
-/

namespace A259623.P719035475186903887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259623.P719035475186903887

namespace A259623

/-- `record[A132923(n+1)]` -/
def P719035475186903887.Spec : Prop :=
  ∀ n, P719035475186903887.a n = A259623 (n + 1)

end A259623

/-! ## A259623.P5505481227619870077

`record[A193588(n)+A025581(n)]`
-/

namespace A259623.P5505481227619870077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193588 n + A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259623.P5505481227619870077

namespace A259623

/-- `record[A193588(n)+A025581(n)]` -/
def P5505481227619870077.Spec : Prop :=
  ∀ n, P5505481227619870077.a n = A259623 (n + 1)

end A259623

/-! ## A259623.P3817114682678053371

`record[A104763(n+1)+A025581(n)]`
-/

namespace A259623.P3817114682678053371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (n + 1) + A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259623.P3817114682678053371

namespace A259623

/-- `record[A104763(n+1)+A025581(n)]` -/
def P3817114682678053371.Spec : Prop :=
  ∀ n, P3817114682678053371.a n = A259623 (n + 1)

end A259623

/-!
# A259624: Strictly increasing list of F - 1, F, and F + 1, where F = A000045, the Fibonacci numbers.

The programs for A259624, the canonical program `A259624.P17320192781786384517` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259624 has offset 1).

The definition of A259624 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1431 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259624.P10052300558174701894

`∪[A061489(n+1), A259623(n+1)]`
-/

namespace A259624.P10052300558174701894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259624.P10052300558174701894

namespace A259624

/-- `∪[A061489(n+1), A259623(n+1)]` -/
def P10052300558174701894.Spec : Prop :=
  ∀ n, (P10052300558174701894.a n : ℤ) = A259624 (n + 1)

end A259624

/-! ## A259624.P17320192781786384517

`∪[A061489(n+1), A258085(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A259624

/-- `∪[A061489(n+1), A258085(n+1)]` -/
def P17320192781786384517.Spec : Prop :=
  ∀ n, (P17320192781786384517.a n : ℤ) = A259624 (n + 1)

theorem P17320192781786384517.correct : P17320192781786384517.Spec := by
  intro n
  simp only [A259624, Nat.add_sub_cancel]

end A259624

/-! ## A259624.P17945520994980646870

`∪[A258085(n+1), A259623(n+1)]`
-/

namespace A259624.P17945520994980646870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259624.P17945520994980646870

namespace A259624

/-- `∪[A258085(n+1), A259623(n+1)]` -/
def P17945520994980646870.Spec : Prop :=
  ∀ n, (P17945520994980646870.a n : ℤ) = A259624 (n + 1)

end A259624

/-! ## A259624.P13478437140035212807

`lt[A194029(n+1)-2, 2]`
-/

namespace A259624.P13478437140035212807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194029 (n + 1) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A259624.P13478437140035212807

namespace A259624

/-- `lt[A194029(n+1)-2, 2]` -/
def P13478437140035212807.Spec : Prop :=
  ∀ n, (P13478437140035212807.a n : ℤ) = A259624 (n + 1)

end A259624

/-! ## A259624.P7944905994785935386

`eq[A309416(n)², A309416(n)]`
-/

namespace A259624.P7944905994785935386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309416 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259624.P7944905994785935386

namespace A259624

/-- `eq[A309416(n)², A309416(n)]` -/
def P7944905994785935386.Spec : Prop :=
  ∀ n, (P7944905994785935386.a n : ℤ) = A259624 (n + 1)

end A259624

/-! ## A259624.P9751762064055051496

`eq[A194029(n+1), A353655(n+1)]`
-/

namespace A259624.P9751762064055051496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194029 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353655 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259624.P9751762064055051496

namespace A259624

/-- `eq[A194029(n+1), A353655(n+1)]` -/
def P9751762064055051496.Spec : Prop :=
  ∀ n, (P9751762064055051496.a n : ℤ) = A259624 (n + 1)

end A259624

/-!
# A259625: List of numbers L - 1 and L, where L = A000032, the Lucas numbers, sorted into increasing order and duplicates removed.

The programs for A259625, the canonical program `A259625.P16118554221174948864` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259625 has offset 1).

The definition of A259625 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259625.P5558057918990365548

`A259626(n+1)-1`
-/

namespace A259625.P5558057918990365548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259626 (n + 1) - 1

end

end A259625.P5558057918990365548

namespace A259625

/-- `A259626(n+1)-1` -/
def P5558057918990365548.Spec : Prop :=
  ∀ n, P5558057918990365548.a n = A259625 (n + 1)

end A259625

/-! ## A259625.P433273220263566783

`A000032(∑[A266719(n)])-A266719(n)`
-/

namespace A259625.P433273220263566783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266719 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A266719 n

end

end A259625.P433273220263566783

namespace A259625

/-- `A000032(∑[A266719(n)])-A266719(n)` -/
def P433273220263566783.Spec : Prop :=
  ∀ n, P433273220263566783.a n = A259625 (n + 1)

end A259625

/-! ## A259625.P16118554221174948864

`record[A000035(n)+A000032(A008621(n))]-1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A259625

/-- `record[A000035(n)+A000032(A008621(n))]-1` -/
def P16118554221174948864.Spec : Prop :=
  ∀ n, P16118554221174948864.a n = A259625 (n + 1)

theorem P16118554221174948864.correct : P16118554221174948864.Spec := by
  intro n
  simp only [A259625, Nat.add_sub_cancel]

end A259625

/-! ## A259625.P3822303858277537704

`∪[A001610(n), A169985(n)]`
-/

namespace A259625.P3822303858277537704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259625.P3822303858277537704

namespace A259625

/-- `∪[A001610(n), A169985(n)]` -/
def P3822303858277537704.Spec : Prop :=
  ∀ n, (P3822303858277537704.a n : ℤ) = A259625 (n + 1)

end A259625

/-! ## A259625.P17462086952318276245

`∪[A169985(n), A324015(n)]`
-/

namespace A259625.P17462086952318276245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324015 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259625.P17462086952318276245

namespace A259625

/-- `∪[A169985(n), A324015(n)]` -/
def P17462086952318276245.Spec : Prop :=
  ∀ n, (P17462086952318276245.a n : ℤ) = A259625 (n + 1)

end A259625

/-! ## A259625.P18163000716043121962

`∪[A000204(n+1), A001610(n)]`
-/

namespace A259625.P18163000716043121962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259625.P18163000716043121962

namespace A259625

/-- `∪[A000204(n+1), A001610(n)]` -/
def P18163000716043121962.Spec : Prop :=
  ∀ n, (P18163000716043121962.a n : ℤ) = A259625 (n + 1)

end A259625

/-! ## A259625.P13679656330918006283

`∪[A000032(n+1)-1, A000032(n+1)]`
-/

namespace A259625.P13679656330918006283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259625.P13679656330918006283

namespace A259625

/-- `∪[A000032(n+1)-1, A000032(n+1)]` -/
def P13679656330918006283.Spec : Prop :=
  ∀ n, (P13679656330918006283.a n : ℤ) = A259625 (n + 1)

end A259625

/-! ## A259625.P7336440957182538138

`∪[A090244(2*n)-1, A090244(2*n)]`
-/

namespace A259625.P7336440957182538138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (2 * n) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259625.P7336440957182538138

namespace A259625

/-- `∪[A090244(2*n)-1, A090244(2*n)]` -/
def P7336440957182538138.Spec : Prop :=
  ∀ n, (P7336440957182538138.a n : ℤ) = A259625 (n + 1)

end A259625

/-! ## A259625.P8013713333231057565

`record[A000032(A002260(n+1))-A242447(n)]`
-/

namespace A259625.P8013713333231057565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A002260 (n + 1)).toNat - A242447 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259625.P8013713333231057565

namespace A259625

/-- `record[A000032(A002260(n+1))-A242447(n)]` -/
def P8013713333231057565.Spec : Prop :=
  ∀ n, P8013713333231057565.a n = A259625 (n + 1)

end A259625

/-! ## A259625.P14211457417155484171

`record[A000032(A003056(n+1))-A050600(n+1)]`
-/

namespace A259625.P14211457417155484171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A003056 (n + 1)).toNat - A050600 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259625.P14211457417155484171

namespace A259625

/-- `record[A000032(A003056(n+1))-A050600(n+1)]` -/
def P14211457417155484171.Spec : Prop :=
  ∀ n, P14211457417155484171.a n = A259625 (n + 1)

end A259625

/-! ## A259625.P9249645050568808098

`record[A000032(A002260(n+1))-A128174(n+1)]`
-/

namespace A259625.P9249645050568808098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A002260 (n + 1)).toNat - A128174 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259625.P9249645050568808098

namespace A259625

/-- `record[A000032(A002260(n+1))-A128174(n+1)]` -/
def P9249645050568808098.Spec : Prop :=
  ∀ n, P9249645050568808098.a n = A259625 (n + 1)

end A259625

/-!
# A259626: List of numbers L and L + 1, where L = A000032, the Lucas numbers, sorted into increasing order and duplicates removed.

The programs for A259626, the canonical program `A259626.P18318315588248049035` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259626 has offset 1).

The definition of A259626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 955 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259626.P18318315588248049035

`A259625(n+1)+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A259626

/-- `A259625(n+1)+1` -/
def P18318315588248049035.Spec : Prop :=
  ∀ n, P18318315588248049035.a n = A259626 (n + 1)

theorem P18318315588248049035.correct : P18318315588248049035.Spec := by
  intro n
  simp only [A259626, Nat.add_sub_cancel]

end A259626

/-! ## A259626.P9697756809896455479

`record[A000032(A108356(n))+and(1, n)]`
-/

namespace A259626.P9697756809896455479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (A108356 n).toNat + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259626.P9697756809896455479

namespace A259626

/-- `record[A000032(A108356(n))+and(1, n)]` -/
def P9697756809896455479.Spec : Prop :=
  ∀ n, P9697756809896455479.a n = A259626 (n + 1)

end A259626

/-! ## A259626.P7987544025096622043

`record[A000035(n)+A000032(A008621(n))]`
-/

namespace A259626.P7987544025096622043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + A000032 (A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259626.P7987544025096622043

namespace A259626

/-- `record[A000035(n)+A000032(A008621(n))]` -/
def P7987544025096622043.Spec : Prop :=
  ∀ n, P7987544025096622043.a n = A259626 (n + 1)

end A259626

/-! ## A259626.P993258148978064938

`record[A014707(n)+A000032(A008621(n))]`
-/

namespace A259626.P993258148978064938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 n + A000032 (A008621 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259626.P993258148978064938

namespace A259626

/-- `record[A014707(n)+A000032(A008621(n))]` -/
def P993258148978064938.Spec : Prop :=
  ∀ n, P993258148978064938.a n = A259626 (n + 1)

end A259626

/-! ## A259626.P15008919128359614239

`record[A001610(A070098(n+1))+A000034(n)]`
-/

namespace A259626.P15008919128359614239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 (A070098 (n + 1)).toNat + A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259626.P15008919128359614239

namespace A259626

/-- `record[A001610(A070098(n+1))+A000034(n)]` -/
def P15008919128359614239.Spec : Prop :=
  ∀ n, P15008919128359614239.a n = A259626 (n + 1)

end A259626

/-! ## A259626.P18115151188367376375

`∪[A001610(n), A169985(n)]+1`
-/

namespace A259626.P18115151188367376375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A259626.P18115151188367376375

namespace A259626

/-- `∪[A001610(n), A169985(n)]+1` -/
def P18115151188367376375.Spec : Prop :=
  ∀ n, (P18115151188367376375.a n : ℤ) = A259626 (n + 1)

end A259626

/-! ## A259626.P16050714233697890718

`∪[A169985(n), A324015(n)]+1`
-/

namespace A259626.P16050714233697890718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169985 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324015 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A259626.P16050714233697890718

namespace A259626

/-- `∪[A169985(n), A324015(n)]+1` -/
def P16050714233697890718.Spec : Prop :=
  ∀ n, (P16050714233697890718.a n : ℤ) = A259626 (n + 1)

end A259626

/-! ## A259626.P16816541140580528663

`∪[A000204(n+1), A001610(n)]+1`
-/

namespace A259626.P16816541140580528663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A259626.P16816541140580528663

namespace A259626

/-- `∪[A000204(n+1), A001610(n)]+1` -/
def P16816541140580528663.Spec : Prop :=
  ∀ n, (P16816541140580528663.a n : ℤ) = A259626 (n + 1)

end A259626

/-! ## A259626.P4708738887679518014

`∪[A000032(n+1)+1, A000032(n+1)]`
-/

namespace A259626.P4708738887679518014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259626.P4708738887679518014

namespace A259626

/-- `∪[A000032(n+1)+1, A000032(n+1)]` -/
def P4708738887679518014.Spec : Prop :=
  ∀ n, (P4708738887679518014.a n : ℤ) = A259626 (n + 1)

end A259626

/-! ## A259626.P14201974596311377373

`∪[A090244(2*n)+1, A090244(2*n)]`
-/

namespace A259626.P14201974596311377373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (2 * n) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090244 (2 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259626.P14201974596311377373

namespace A259626

/-- `∪[A090244(2*n)+1, A090244(2*n)]` -/
def P14201974596311377373.Spec : Prop :=
  ∀ n, (P14201974596311377373.a n : ℤ) = A259626 (n + 1)

end A259626

/-! ## A259626.P3118658385690257684

`record[A000035(n)+A000032(A023193(n+1))]`
-/

namespace A259626.P3118658385690257684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + A000032 (A023193 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259626.P3118658385690257684

namespace A259626

/-- `record[A000035(n)+A000032(A023193(n+1))]` -/
def P3118658385690257684.Spec : Prop :=
  ∀ n, P3118658385690257684.a n = A259626 (n + 1)

end A259626

/-! ## A259626.P4853455868157536390

`record[A004736(n+1)+A001610(A002262(n))]`
-/

namespace A259626.P4853455868157536390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) + A001610 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259626.P4853455868157536390

namespace A259626

/-- `record[A004736(n+1)+A001610(A002262(n))]` -/
def P4853455868157536390.Spec : Prop :=
  ∀ n, P4853455868157536390.a n = A259626 (n + 1)

end A259626

/-! ## A259626.P15681301125367965976

`record[A023532(n)+A000032(A002260(n+1))]`
-/

namespace A259626.P15681301125367965976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n + A000032 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259626.P15681301125367965976

namespace A259626

/-- `record[A023532(n)+A000032(A002260(n+1))]` -/
def P15681301125367965976.Spec : Prop :=
  ∀ n, P15681301125367965976.a n = A259626 (n + 1)

end A259626

/-! ## A259626.P1646785147387811794

`record[A025581(n)+A000032(A002260(n+1))]`
-/

namespace A259626.P1646785147387811794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + A000032 (A002260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259626.P1646785147387811794

namespace A259626

/-- `record[A025581(n)+A000032(A002260(n+1))]` -/
def P1646785147387811794.Spec : Prop :=
  ∀ n, P1646785147387811794.a n = A259626 (n + 1)

end A259626

/-!
# A259627: List of numbers L - 1, L, and L+1, where L = A000032, the Lucas numbers, sorted into increasing order and duplicates removed.

The programs for A259627, the canonical program `A259627.P17875211191962559022` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259627 has offset 1).

The definition of A259627 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259627.P17875211191962559022

`∪[A259625(n+1), A259626(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A259627

/-- `∪[A259625(n+1), A259626(n+1)]` -/
def P17875211191962559022.Spec : Prop :=
  ∀ n, (P17875211191962559022.a n : ℤ) = A259627 (n + 1)

theorem P17875211191962559022.correct : P17875211191962559022.Spec := by
  intro n
  simp only [A259627, Nat.add_sub_cancel]

end A259627

/-! ## A259627.P3656021514499637806

`∪[A259625(n+1), A259625(n+2)+1]`
-/

namespace A259627.P3656021514499637806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259625 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259625 (n + 2) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A259627.P3656021514499637806

namespace A259627

/-- `∪[A259625(n+1), A259625(n+2)+1]` -/
def P3656021514499637806.Spec : Prop :=
  ∀ n, (P3656021514499637806.a n : ℤ) = A259627 (n + 1)

end A259627

/-! ## A259627.P17468558499688076522

`lt[n-A352717(n+1), 2]`
-/

namespace A259627.P17468558499688076522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A352717 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A259627.P17468558499688076522

namespace A259627

/-- `lt[n-A352717(n+1), 2]` -/
def P17468558499688076522.Spec : Prop :=
  ∀ n, (P17468558499688076522.a n : ℤ) = A259627 (n + 1)

end A259627

/-!
# A259629: "Near Primorial" numbers.

The programs for A259629, there is no canonical definition to state claims against.
-/

/-! ## A259629.P5182096387328738795

`A077011(A080036(n+2))`
-/

namespace A259629.P5182096387328738795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077011 (A080036 (n + 2)).toNat

end

end A259629.P5182096387328738795

/-! ## A259629.P15023984739997298757

`A077011(lt[5, A029603(n)])`
-/

namespace A259629.P15023984739997298757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077011 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A259629.P15023984739997298757

/-! ## A259629.P4172765920831886786

`A077011(A014132(n+2)+1)`
-/

namespace A259629.P4172765920831886786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077011 (A014132 (n + 2) + 1).toNat

end

end A259629.P4172765920831886786

/-! ## A259629.P2934995525184283604

`A077011(A181133(n+1)+3)`
-/

namespace A259629.P2934995525184283604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077011 (A181133 (n + 1) + 3).toNat

end

end A259629.P2934995525184283604

/-! ## A259629.P9116914707347165928

`A077011(A000037(2*n+3)-n)`
-/

namespace A259629.P9116914707347165928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077011 (A000037 (2 * n + 3) - (n : ℤ)).toNat

end

end A259629.P9116914707347165928

/-! ## A259629.P16189337806370036477

`A019565(A164874(n+2))`
-/

namespace A259629.P16189337806370036477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A164874 (n + 2)).toNat

end

end A259629.P16189337806370036477

/-! ## A259629.P9137987269221248424

`A019565(A030130(n+3))`
-/

namespace A259629.P9137987269221248424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A030130 (n + 3)).toNat

end

end A259629.P9137987269221248424

/-! ## A259629.P16572574987793166557

`A019565(record[A341522(n+1)])`
-/

namespace A259629.P16572574987793166557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A259629.P16572574987793166557

/-! ## A259629.P11381963967113577627

`record[A019565(A059009(n+2))]`
-/

namespace A259629.P11381963967113577627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A059009 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259629.P11381963967113577627

/-! ## A259629.P11312204404631081734

`record[A019565(A043687(n+3))]`
-/

namespace A259629.P11312204404631081734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A043687 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259629.P11312204404631081734

/-!
# A259630: a(n) is the smallest integer not occurring earlier such that 2^a(1) + 2^a(2) + ... + 2^a(n) is a prime.

The programs for A259630, there is no canonical definition to state claims against.
-/

/-! ## A259630.P6069870798720498483

`A059662(n)/a(C(2, (n+1)²))` with `a(0)=1`
-/

namespace A259630.P6069870798720498483
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A059662 n : ℚ) / a (Nat.choose 2 ((n + 1) ^ 2))

end

end A259630.P6069870798720498483

/-! ## A259630.P13048924792209669911

`floor(A059662(A028310(n))+acot(n))`
-/

namespace A259630.P13048924792209669911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059662 (A028310 n).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A259630.P13048924792209669911

/-! ## A259630.P6285640038699319970

`A151934(n)+A059662(round(sqrt(n²+1)))`
-/

namespace A259630.P6285640038699319970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 n + A059662 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A259630.P6285640038699319970

/-! ## A259630.P17612241701847091276

`A059662(A028310(n))+A000007(n)`
-/

namespace A259630.P17612241701847091276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059662 (A028310 n).toNat + A000007 n

end

end A259630.P17612241701847091276

/-! ## A259630.P11682421584594038635

`A059662(A028310(n))+and(1, A000010(n+2))`
-/

namespace A259630.P11682421584594038635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059662 (A028310 n).toNat + Int.land 1 (A000010 (n + 2))

end

end A259630.P11682421584594038635

/-!
# A259632: a(n) = floor(exp(H_k)*log(H_k)) - sigma(k) where k is the n-th colossally abundant number (Sequence A079526 applied to the colossally abundant numbers (A004490).)

The programs for A259632, there is no canonical definition to state claims against.
-/

/-! ## A259632.P1644823194903021002

`A079526(A002201(n+1))`
-/

namespace A259632.P1644823194903021002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079526 (A002201 (n + 1)).toNat

end

end A259632.P1644823194903021002

/-! ## A259632.P16625253326768223955

`A079526(A004490(n+1))`
-/

namespace A259632.P16625253326768223955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079526 (A004490 (n + 1)).toNat

end

end A259632.P16625253326768223955

/-! ## A259632.P13083898413510152200

`A079526(A224078(n+1))`
-/

namespace A259632.P13083898413510152200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079526 (A224078 (n + 1)).toNat

end

end A259632.P13083898413510152200

/-! ## A259632.P8724662593601620904

`A079526(A263572(n+2))`
-/

namespace A259632.P8724662593601620904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079526 (A263572 (n + 2)).toNat

end

end A259632.P8724662593601620904

/-!
# A259634: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 or 00000001.

The programs for A259634, there is no canonical definition to state claims against.
-/

/-! ## A259634.P7200401139420903940

`A260130(n+1)/2`
-/

namespace A259634.P7200401139420903940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260130 (n + 1) : ℚ) / 2

end

end A259634.P7200401139420903940

/-! ## A259634.P9223380476602949871

`A259642((n+1)²+n²)`
-/

namespace A259634.P9223380476602949871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 ((n + 1) ^ 2 + n ^ 2)

end

end A259634.P9223380476602949871

/-! ## A259634.P2682750027570347430

`A260138(A001844(n))/2`
-/

namespace A259634.P2682750027570347430
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260138 (A001844 n).toNat : ℚ) / 2

end

end A259634.P2682750027570347430

/-! ## A259634.P325130011228010073

`record[A003982(n)*A259642(n+1)]`
-/

namespace A259634.P325130011228010073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A259642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259634.P325130011228010073

/-! ## A259634.P17711692084875582495

`record[root(A259642(n+1), A331886(n))]`
-/

namespace A259634.P17711692084875582495
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A259642 (n + 1) : ℝ) ^ (1 / (A331886 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259634.P17711692084875582495

/-!
# A259635: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000000 or 00000001.

The programs for A259635, the canonical program `A259635.P4316822982236587402` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259635 has offset 1).

The definition of A259635 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 344 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259635.P4316822982236587402

`a(n-1)+3*a(n-3)+a(n-4)` with `a(0)=18, a(1)=29, a(2)=69, a(3)=133, a(4)=236`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259635

/-- `a(n-1)+3*a(n-3)+a(n-4)` -/
def P4316822982236587402.Spec : Prop :=
  ∀ n, (P4316822982236587402.a n : ℤ) = A259635 (n + 1)

theorem P4316822982236587402.correct : P4316822982236587402.Spec := by
  intro n
  simp only [A259635, Nat.add_sub_cancel]

end A259635

/-! ## A259635.P5744318028960340740

`A260131(n+1)/2`
-/

namespace A259635.P5744318028960340740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260131 (n + 1) : ℚ) / 2

end

end A259635.P5744318028960340740

namespace A259635

/-- `A260131(n+1)/2` -/
def P5744318028960340740.Spec : Prop :=
  ∀ n, P5744318028960340740.a n = (A259635 (n + 1) : ℚ)

end A259635

/-! ## A259635.P11623053610827855749

`A259642(∑[n]+1)`
-/

namespace A259635.P11623053610827855749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A259635.P11623053610827855749

namespace A259635

/-- `A259642(∑[n]+1)` -/
def P11623053610827855749.Spec : Prop :=
  ∀ n, P11623053610827855749.a n = A259635 (n + 1)

end A259635

/-! ## A259635.P18019192129622514757

`record[A010054(n)*A259642(n+1)]`
-/

namespace A259635.P18019192129622514757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A259642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259635.P18019192129622514757

namespace A259635

/-- `record[A010054(n)*A259642(n+1)]` -/
def P18019192129622514757.Spec : Prop :=
  ∀ n, P18019192129622514757.a n = A259635 (n + 1)

end A259635

/-! ## A259635.P11660271817897168083

`record[A259642(n+1)/A259697(n)]`
-/

namespace A259635.P11660271817897168083
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259642 (n + 1) : ℚ) / (A259697 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259635.P11660271817897168083

namespace A259635

/-- `record[A259642(n+1)/A259697(n)]` -/
def P11660271817897168083.Spec : Prop :=
  ∀ n, P11660271817897168083.a n = (A259635 (n + 1) : ℚ)

end A259635

/-!
# A259636: Number of (n+2) X (2+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000000 or 00000001.

The programs for A259636, there is no canonical definition to state claims against.
-/

/-! ## A259636.P10551723162246010649

`A260132(n+1)/2`
-/

namespace A259636.P10551723162246010649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260132 (n + 1) : ℚ) / 2

end

end A259636.P10551723162246010649

/-! ## A259636.P16825968305749611516

`A259642(∑[n+1]+2)`
-/

namespace A259636.P16825968305749611516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A259636.P16825968305749611516

/-! ## A259636.P4775644954488585819

`record[A010054(n)*A259642(n+2)]`
-/

namespace A259636.P4775644954488585819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A259642 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259636.P4775644954488585819

/-! ## A259636.P11447892871845514687

`or(A000007(n), A259642(A133263(n+1)))`
-/

namespace A259636.P11447892871845514687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A259642 (A133263 (n + 1)).toNat)

end

end A259636.P11447892871845514687

/-! ## A259636.P4053446520770152443

`A259642(A133263(n+1))+A000007(n+1)`
-/

namespace A259636.P4053446520770152443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (A133263 (n + 1)).toNat + A000007 (n + 1)

end

end A259636.P4053446520770152443

/-!
# A259637: Number of (n+2) X (3+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000000 or 00000001.

The programs for A259637, there is no canonical definition to state claims against.
-/

/-! ## A259637.P11835799539939967708

`A260133(n+1)/2`
-/

namespace A259637.P11835799539939967708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260133 (n + 1) : ℚ) / 2

end

end A259637.P11835799539939967708

/-! ## A259637.P12817813224733860127

`A259642(∑[n+2]+4)`
-/

namespace A259637.P12817813224733860127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A259637.P12817813224733860127

/-! ## A259637.P2191058884575047330

`or(1, A259642(A167614(n+1)))`
-/

namespace A259637.P2191058884575047330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259642 (A167614 (n + 1)).toNat)

end

end A259637.P2191058884575047330

/-! ## A259637.P13151822667468468588

`or(1, A259642(A000217(n+2)+3))`
-/

namespace A259637.P13151822667468468588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A259642 (A000217 (n + 2) + 3).toNat)

end

end A259637.P13151822667468468588

/-! ## A259637.P13056091289137892025

`A001222(A007519(n+1))*A259642(A000217(n+3)-n)`
-/

namespace A259637.P13056091289137892025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007519 (n + 1)).toNat * A259642 (A000217 (n + 3) - (n : ℤ)).toNat

end

end A259637.P13056091289137892025

/-!
# A259638: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 or 00000001.

The programs for A259638, there is no canonical definition to state claims against.
-/

/-! ## A259638.P7415280783125504257

`A260134(n+1)/2`
-/

namespace A259638.P7415280783125504257
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260134 (n + 1) : ℚ) / 2

end

end A259638.P7415280783125504257

/-! ## A259638.P9322347396027114633

`A259642(A374004(n+1))`
-/

namespace A259638.P9322347396027114633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (A374004 (n + 1)).toNat

end

end A259638.P9322347396027114633

/-! ## A259638.P11905416685313174572

`A259642(A052905(n)+9)`
-/

namespace A259638.P11905416685313174572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (A052905 n + 9).toNat

end

end A259638.P11905416685313174572

/-! ## A259638.P11887363791696002678

`A259642(A055999(n)+10)`
-/

namespace A259638.P11887363791696002678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (A055999 n + 10).toNat

end

end A259638.P11887363791696002678

/-! ## A259638.P8099730846141798923

`A259642(A167614(n+2)+1)`
-/

namespace A259638.P8099730846141798923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (A167614 (n + 2) + 1).toNat

end

end A259638.P8099730846141798923

/-!
# A259639: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 or 00000001.

The programs for A259639, there is no canonical definition to state claims against.
-/

/-! ## A259639.P13947455522172585352

`A260135(n+1)/2`
-/

namespace A259639.P13947455522172585352
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260135 (n + 1) : ℚ) / 2

end

end A259639.P13947455522172585352

/-! ## A259639.P17591084092224959286

`A259642(A374005(n+1))`
-/

namespace A259639.P17591084092224959286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (A374005 (n + 1)).toNat

end

end A259639.P17591084092224959286

/-! ## A259639.P7541963090205579912

`A259642(A167499(n+3))`
-/

namespace A259639.P7541963090205579912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (A167499 (n + 3)).toNat

end

end A259639.P7541963090205579912

/-! ## A259639.P3331096542672370688

`A259642(A000124(n+5)-(n+1))`
-/

namespace A259639.P3331096542672370688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A259639.P3331096542672370688

/-! ## A259639.P4984440059303982364

`A259642(A038722(Δ[A023545(n+1)]))`
-/

namespace A259639.P4984440059303982364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (A038722 (f1 (n + 1) - f1 n).toNat).toNat

end

end A259639.P4984440059303982364

/-!
# A259640: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 or 00000001.

The programs for A259640, there is no canonical definition to state claims against.
-/

/-! ## A259640.P11348553483130978621

`A260136(n+1)/2`
-/

namespace A259640.P11348553483130978621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260136 (n + 1) : ℚ) / 2

end

end A259640.P11348553483130978621

/-! ## A259640.P7557310581575666699

`A259642(A374007(n+1))`
-/

namespace A259640.P7557310581575666699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (A374007 (n + 1)).toNat

end

end A259640.P7557310581575666699

/-! ## A259640.P6443489483996618567

`A259642(A000124(n+5)+5)`
-/

namespace A259640.P6443489483996618567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (A000124 (n + 5) + 5).toNat

end

end A259640.P6443489483996618567

/-! ## A259640.P2532070392198075299

`A259642(A055999(n+4)-(2*n+1))`
-/

namespace A259640.P2532070392198075299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (A055999 (n + 4) - (2 * n + 1 : ℤ)).toNat

end

end A259640.P2532070392198075299

/-! ## A259640.P2607127062811699058

`A259642(Δ[A023551(n+2)]-A005408(n))`
-/

namespace A259640.P2607127062811699058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (f1 (n + 1) - f1 n - A005408 n).toNat

end

end A259640.P2607127062811699058

/-!
# A259641: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 or 00000001.

The programs for A259641, there is no canonical definition to state claims against.
-/

/-! ## A259641.P1276147445666864206

`A260137(n+1)/2`
-/

namespace A259641.P1276147445666864206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260137 (n + 1) : ℚ) / 2

end

end A259641.P1276147445666864206

/-! ## A259641.P4078569164547782705

`A259642(A374008(n+1))`
-/

namespace A259641.P4078569164547782705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (A374008 (n + 1)).toNat

end

end A259641.P4078569164547782705

/-! ## A259641.P8474468724671817812

`A259642(A000217(n+5)+n+13)`
-/

namespace A259641.P8474468724671817812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (A000217 (n + 5) + (n + 13 : ℤ)).toNat

end

end A259641.P8474468724671817812

/-! ## A259641.P17688011313341907623

`A259642(A005408(n+8)+A000124(n+4))`
-/

namespace A259641.P17688011313341907623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (A005408 (n + 8) + A000124 (n + 4)).toNat

end

end A259641.P17688011313341907623

/-! ## A259641.P3382699360511567942

`A259642(A055999(n+4))`
-/

namespace A259641.P3382699360511567942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259642 (A055999 (n + 4)).toNat

end

end A259641.P3382699360511567942

/-!
# A259642: T(n,k)=Number of (n+2)X(k+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000000 or 00000001.

The programs for A259642, there is no canonical definition to state claims against.
-/

/-! ## A259642.P6489259330340909117

`A260138(n+1)/2`
-/

namespace A259642.P6489259330340909117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260138 (n + 1) : ℚ) / 2

end

end A259642.P6489259330340909117

/-! ## A259642.P4411088756424388220

`A014682(A260138(n+1))`
-/

namespace A259642.P4411088756424388220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A260138 (n + 1)).toNat

end

end A259642.P4411088756424388220

/-! ## A259642.P13124681770458358944

`A323161(A260138(n+1)-5)`
-/

namespace A259642.P13124681770458358944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (A260138 (n + 1) - 5).toNat

end

end A259642.P13124681770458358944

/-! ## A259642.P14957995064178650216

`A273943(lcm(2, A260138(n+1)))`
-/

namespace A259642.P14957995064178650216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (Int.lcm 2 (A260138 (n + 1)))

end

end A259642.P14957995064178650216

/-! ## A259642.P5092021335111571719

`A273943(root(A260138(n+1), 2)²)`
-/

namespace A259642.P5092021335111571719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (SequenceMachineLib.roundAway (((A260138 (n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat

end

end A259642.P5092021335111571719

/-!
# A259643: Numbers k such that sum of first k odd primes divides product of first k odd primes.

The programs for A259643, there is no canonical definition to state claims against.
-/

/-! ## A259643.P10978732131423175985

`eq[0, A262807(n+1)]+1`
-/

namespace A259643.P10978732131423175985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262807 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A259643.P10978732131423175985

/-! ## A259643.P6617637887992618626

`A004442(eq[0, A262807(n+1)])`
-/

namespace A259643.P6617637887992618626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259643.P6617637887992618626

/-! ## A259643.P14191779414199786624

`A097062(eq[0, A262807(n+1)])`
-/

namespace A259643.P14191779414199786624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259643.P14191779414199786624

/-! ## A259643.P14084404012238793250

`A109613(eq[0, A262807(n+1)])`
-/

namespace A259643.P14084404012238793250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A259643.P14084404012238793250

/-! ## A259643.P10198996282849901133

`A004442(record[n-A262807(n+1)])`
-/

namespace A259643.P10198996282849901133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A262807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A259643.P10198996282849901133

/-! ## A259643.P922959063074069479

`A097062(record[n-A262807(n+1)])`
-/

namespace A259643.P922959063074069479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A262807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A259643.P922959063074069479

/-! ## A259643.P8219779761803446877

`A109613(record[n-A262807(n+1)])`
-/

namespace A259643.P8219779761803446877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A262807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A259643.P8219779761803446877

/-! ## A259643.P13053349878331301524

`record[A000265(n+1)-A262807(n+1)]`
-/

namespace A259643.P13053349878331301524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) - A262807 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259643.P13053349878331301524

/-! ## A259643.P12073000846594262750

`record[A004442(n)/(A262807(n+1)+1)]`
-/

namespace A259643.P12073000846594262750
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004442 n : ℚ) / (A262807 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259643.P12073000846594262750

/-! ## A259643.P15793223725639403646

`record[A097062(n)/(A262807(n+1)+1)]`
-/

namespace A259643.P15793223725639403646
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097062 n : ℚ) / (A262807 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259643.P15793223725639403646

/-!
# A259644: Numerators of sum(1/A112373(k): k=0..n), denominators = A112373.

The programs for A259644, there is no canonical definition to state claims against.
-/

/-! ## A259644.P3015768930874600573

`a(n-1)*A114552(n-1)+1` with `a(0)=1`
-/

namespace A259644.P3015768930874600573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A114552 (n - 1) + 1

end

end A259644.P3015768930874600573

/-!
# A259645: Numbers m such that m^2 + 1, 3*m - 1 and m^2 + m + 41 are all prime.

The programs for A259645, there is no canonical definition to state claims against.
-/

/-! ## A259645.P12204149492067595352

`A005574(lt[A288053(n), 6*n²])`
-/

namespace A259645.P12204149492067595352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288053 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A259645.P12204149492067595352

/-! ## A259645.P10610838032257827702

`A005574(lt[A173911(n), ∑{e}[n+1, #]+1])`
-/

namespace A259645.P10610838032257827702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173911 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A259645.P10610838032257827702

/-! ## A259645.P12069007437462746310

`A005574(lt[A330635(n), ∏{e}[n+1, #+1]])`
-/

namespace A259645.P12069007437462746310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330635 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), (Nat.factorization (f3 n) p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A259645.P12069007437462746310

/-! ## A259645.P2227261732011935290

`A005574(lt[A007662(n), 18^∑{e}[n+1, #]])`
-/

namespace A259645.P2227261732011935290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007662 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18 ^ (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005574 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A259645.P2227261732011935290

/-!
# A259646: Values of r(k): the smallest r such that binomial(r, k) < 2^{r-k}.

The programs for A259646, there is no canonical definition to state claims against.
-/

/-! ## A259646.P6443939347489211527

`record[Δ[(A254058(n+1)/2)²]]`
-/

namespace A259646.P6443939347489211527
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A254058 (n + 1) : ℚ) / 2) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259646.P6443939347489211527

/-! ## A259646.P5352063672917199614

`record[Δ[A002620(A254058(n+1))]]`
-/

namespace A259646.P5352063672917199614
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A254058 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259646.P5352063672917199614

/-! ## A259646.P3530403760702890343

`record[(A254058(n+1)+1)%A254058(n+2)]`
-/

namespace A259646.P3530403760702890343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254058 (n + 1) + 1) (A254058 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259646.P3530403760702890343

/-! ## A259646.P1729727851350384384

`A033810(A016789(A006137(n)))`
-/

namespace A259646.P1729727851350384384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033810 (A016789 (A006137 n).toNat).toNat

end

end A259646.P1729727851350384384

/-! ## A259646.P427390136752766544

`A345377(A000930(n))+A008574(n)`
-/

namespace A259646.P427390136752766544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345377 (A000930 n).toNat + A008574 n

end

end A259646.P427390136752766544

/-!
# A259647: Expansion of exp(x*arcsin(x)) (even powers only).

The programs for A259647, there is no canonical definition to state claims against.
-/

/-! ## A259647.P1687783835974727104

`A004277(n)*A191301(n)`
-/

namespace A259647.P1687783835974727104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n * A191301 n

end

end A259647.P1687783835974727104

/-! ## A259647.P12797871263051478314

`A028310(2*n)*A191301(n)`
-/

namespace A259647.P12797871263051478314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n) * A191301 n

end

end A259647.P12797871263051478314

/-! ## A259647.P2686179911800870087

`A003056(A001844(n))*A191301(n)`
-/

namespace A259647.P2686179911800870087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A001844 n).toNat * A191301 n

end

end A259647.P2686179911800870087

/-! ## A259647.P9625666874222722827

`A026741(A008574(n))*A191301(n)`
-/

namespace A259647.P9625666874222722827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A008574 n).toNat * A191301 n

end

end A259647.P9625666874222722827

/-! ## A259647.P11691115688951773337

`A000005(A003945(n))*A191301(n)`
-/

namespace A259647.P11691115688951773337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003945 n).toNat * A191301 n

end

end A259647.P11691115688951773337

/-!
# A259648: a(n) = floor( prime(n)^3 / (n*log(n)) ).

The programs for A259648, the canonical program `A259648.P18063920106671831620` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259648 has offset 2).

The definition of A259648 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A030078, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A259648.P18063920106671831620

`floor(A030078(n+2)/((n+2)*log(n+2)))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A259648

/-- `floor(A030078(n+2)/((n+2)*log(n+2)))` -/
def P18063920106671831620.Spec : Prop :=
  ∀ n, P18063920106671831620.a n = A259648 (n + 2)

theorem P18063920106671831620.correct : P18063920106671831620.Spec := by
  intro n
  simp only [A259648, Nat.add_sub_cancel]

end A259648

/-!
# A259649: Smallest prime factor of the n-th pentagonal number (A000326).

The programs for A259649, there is no canonical definition to state claims against.
-/

/-! ## A259649.P13621941044178076002

`A020639(A000326(n+2))`
-/

namespace A259649.P13621941044178076002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000326 (n + 2)).toNat

end

end A259649.P13621941044178076002

/-! ## A259649.P17964642826895728221

`A020639(∑[n+5]+n²)`
-/

namespace A259649.P17964642826895728221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2)

end

end A259649.P17964642826895728221

/-! ## A259649.P15095369346933409117

`p?[A000027(A020639(∑[3*n+1]))]`
-/

namespace A259649.P15095369346933409117
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A020639 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259649.P15095369346933409117

/-! ## A259649.P18304590874085708977

`p?[A304181(∑[3*n+1])]`
-/

namespace A259649.P18304590874085708977
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304181 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259649.P18304590874085708977

/-! ## A259649.P4981089319800645902

`A014673(Δ[(n+2)*(n+1)²])`
-/

namespace A259649.P4981089319800645902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A259649.P4981089319800645902

/-!
# A259650: Largest prime factor of the n-th pentagonal number (A000326).

The programs for A259650, the canonical program `A259650.P13373830699041172912` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259650 has offset 2).

The definition of A259650 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A259650.P13373830699041172912

`A006530(A000326(n+2))`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A259650

/-- `A006530(A000326(n+2))` -/
def P13373830699041172912.Spec : Prop :=
  ∀ n, P13373830699041172912.a n = A259650 (n + 2)

theorem P13373830699041172912.correct : P13373830699041172912.Spec := by
  intro n
  simp only [A259650, Nat.add_sub_cancel]

end A259650

/-! ## A259650.P9160174812972393742

`A074399(3*n+5)`
-/

namespace A259650.P9160174812972393742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (3 * n + 5)

end

end A259650.P9160174812972393742

namespace A259650

/-- `A074399(3*n+5)` -/
def P9160174812972393742.Spec : Prop :=
  ∀ n, P9160174812972393742.a n = A259650 (n + 2)

end A259650

/-! ## A259650.P11258666934325064201

`A069902(3*(n+1)+2)`
-/

namespace A259650.P11258666934325064201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069902 (3 * (n + 1) + 2)

end

end A259650.P11258666934325064201

namespace A259650

/-- `A069902(3*(n+1)+2)` -/
def P11258666934325064201.Spec : Prop :=
  ∀ n, P11258666934325064201.a n = A259650 (n + 2)

end A259650

/-! ## A259650.P14816170469334341144

`A000040(A252489(3*n+5))`
-/

namespace A259650.P14816170469334341144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A252489 (3 * n + 5)).toNat

end

end A259650.P14816170469334341144

namespace A259650

/-- `A000040(A252489(3*n+5))` -/
def P14816170469334341144.Spec : Prop :=
  ∀ n, P14816170469334341144.a n = A259650 (n + 2)

end A259650

/-! ## A259650.P13475049572212639117

`A328827(3*(3*n+4)+3)`
-/

namespace A259650.P13475049572212639117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328827 (3 * (3 * n + 4) + 3)

end

end A259650.P13475049572212639117

namespace A259650

/-- `A328827(3*(3*n+4)+3)` -/
def P13475049572212639117.Spec : Prop :=
  ∀ n, P13475049572212639117.a n = A259650 (n + 2)

end A259650

/-! ## A259650.P14613773549945858513

`A076605(6*n+11)`
-/

namespace A259650.P14613773549945858513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (6 * n + 11)

end

end A259650.P14613773549945858513

namespace A259650

/-- `A076605(6*n+11)` -/
def P14613773549945858513.Spec : Prop :=
  ∀ n, P14613773549945858513.a n = A259650 (n + 2)

end A259650

/-! ## A259650.P17163521721982148074

`A006530(A006530(n+2)*A165367(n+1))`
-/

namespace A259650.P17163521721982148074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (n + 2) * A165367 (n + 1)).toNat

end

end A259650.P17163521721982148074

namespace A259650

/-- `A006530(A006530(n+2)*A165367(n+1))` -/
def P17163521721982148074.Spec : Prop :=
  ∀ n, P17163521721982148074.a n = A259650 (n + 2)

end A259650

/-! ## A259650.P1122198711804553219

`A006530(A006530(n+2)*A075677(n+2))`
-/

namespace A259650.P1122198711804553219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (n + 2) * A075677 (n + 2)).toNat

end

end A259650.P1122198711804553219

namespace A259650

/-- `A006530(A006530(n+2)*A075677(n+2))` -/
def P1122198711804553219.Spec : Prop :=
  ∀ n, P1122198711804553219.a n = A259650 (n + 2)

end A259650

/-! ## A259650.P9820448336906495105

`A006530(A000265(3*n+5)*A006530(n+2))`
-/

namespace A259650.P9820448336906495105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000265 (3 * n + 5) * A006530 (n + 2)).toNat

end

end A259650.P9820448336906495105

namespace A259650

/-- `A006530(A000265(3*n+5)*A006530(n+2))` -/
def P9820448336906495105.Spec : Prop :=
  ∀ n, P9820448336906495105.a n = A259650 (n + 2)

end A259650

/-! ## A259650.P1353980456979337652

`A006530(∑[n+5]+n²)`
-/

namespace A259650.P1353980456979337652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2)

end

end A259650.P1353980456979337652

namespace A259650

/-- `A006530(∑[n+5]+n²)` -/
def P1353980456979337652.Spec : Prop :=
  ∀ n, P1353980456979337652.a n = A259650 (n + 2)

end A259650

/-! ## A259650.P7559273774274379142

`p?[A015053(A006530(∑[3*n+1]))]`
-/

namespace A259650.P7559273774274379142
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015053 (A006530 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259650.P7559273774274379142

namespace A259650

/-- `p?[A015053(A006530(∑[3*n+1]))]` -/
def P7559273774274379142.Spec : Prop :=
  ∀ n, P7559273774274379142.a n = A259650 (n + 2)

end A259650

/-! ## A259650.P8816611835818318537

`∏{p}[A006530(∑[A016777(n+1)]+1), #]`
-/

namespace A259650.P8816611835818318537
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A259650.P8816611835818318537

namespace A259650

/-- `∏{p}[A006530(∑[A016777(n+1)]+1), #]` -/
def P8816611835818318537.Spec : Prop :=
  ∀ n, (P8816611835818318537.a n : ℤ) = A259650 (n + 2)

end A259650

/-! ## A259650.P3871100251463688666

`or(1, A006530(A152749(2*n+3)))`
-/

namespace A259650.P3871100251463688666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (A152749 (2 * n + 3)).toNat)

end

end A259650.P3871100251463688666

namespace A259650

/-- `or(1, A006530(A152749(2*n+3)))` -/
def P3871100251463688666.Spec : Prop :=
  ∀ n, P3871100251463688666.a n = A259650 (n + 2)

end A259650

/-! ## A259650.P10710134187630561731

`A006530(A152749(2*n+3))%A152786(n+1)`
-/

namespace A259650.P10710134187630561731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A152749 (2 * n + 3)).toNat) (A152786 (n + 1))

end

end A259650.P10710134187630561731

namespace A259650

/-- `A006530(A152749(2*n+3))%A152786(n+1)` -/
def P10710134187630561731.Spec : Prop :=
  ∀ n, P10710134187630561731.a n = A259650 (n + 2)

end A259650

/-! ## A259650.P2901902214930029841

`A006530(A000217(3*n+5))%A156677(n)`
-/

namespace A259650.P2901902214930029841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A000217 (3 * n + 5)).toNat) (A156677 n)

end

end A259650.P2901902214930029841

namespace A259650

/-- `A006530(A000217(3*n+5))%A156677(n)` -/
def P2901902214930029841.Spec : Prop :=
  ∀ n, P2901902214930029841.a n = A259650 (n + 2)

end A259650

/-! ## A259650.P12344160943384160660

`or(1, A006530(A045896(3*n+4)))`
-/

namespace A259650.P12344160943384160660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A006530 (A045896 (3 * n + 4)).toNat)

end

end A259650.P12344160943384160660

namespace A259650

/-- `or(1, A006530(A045896(3*n+4)))` -/
def P12344160943384160660.Spec : Prop :=
  ∀ n, P12344160943384160660.a n = A259650 (n + 2)

end A259650

/-! ## A259650.P11534486740839038073

`A006530(A045896(3*n+4))%A000911(n)`
-/

namespace A259650.P11534486740839038073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006530 (A045896 (3 * n + 4)).toNat) (A000911 n)

end

end A259650.P11534486740839038073

namespace A259650

/-- `A006530(A045896(3*n+4))%A000911(n)` -/
def P11534486740839038073.Spec : Prop :=
  ∀ n, P11534486740839038073.a n = A259650 (n + 2)

end A259650

/-!
# A259651: Number of distinct prime factors of the n-th pentagonal number (A000326).

The programs for A259651, the canonical program `A259651.P16463871168149686535` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259651 has offset 1).

The definition of A259651 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A259651.P16463871168149686535

`A001221(A000326(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A259651

/-- `A001221(A000326(n+1))` -/
def P16463871168149686535.Spec : Prop :=
  ∀ n, P16463871168149686535.a n = A259651 (n + 1)

theorem P16463871168149686535.correct : P16463871168149686535.Spec := by
  intro n
  simp only [A259651, Nat.add_sub_cancel]

end A259651

/-! ## A259651.P9843944183330808365

`∑{p}[∑[3*n+1], A001221(#)]`
-/

namespace A259651.P9843944183330808365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001221 p

end

end A259651.P9843944183330808365

namespace A259651

/-- `∑{p}[∑[3*n+1], A001221(#)]` -/
def P9843944183330808365.Spec : Prop :=
  ∀ n, P9843944183330808365.a n = A259651 (n + 1)

end A259651

/-! ## A259651.P15032590559622371802

`∑{p}[∑[3*n+1], A001222(#)]`
-/

namespace A259651.P15032590559622371802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A001222 p

end

end A259651.P15032590559622371802

namespace A259651

/-- `∑{p}[∑[3*n+1], A001222(#)]` -/
def P15032590559622371802.Spec : Prop :=
  ∀ n, P15032590559622371802.a n = A259651 (n + 1)

end A259651

/-! ## A259651.P8326763884482814195

`A001221(A278255(n+1))`
-/

namespace A259651.P8326763884482814195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A278255 (n + 1)).toNat

end

end A259651.P8326763884482814195

namespace A259651

/-- `A001221(A278255(n+1))` -/
def P8326763884482814195.Spec : Prop :=
  ∀ n, P8326763884482814195.a n = A259651 (n + 1)

end A259651

/-! ## A259651.P7693008752589656539

`A001222(∏{p}[∑[3*n+1], #])`
-/

namespace A259651.P7693008752589656539
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A259651.P7693008752589656539

namespace A259651

/-- `A001222(∏{p}[∑[3*n+1], #])` -/
def P7693008752589656539.Spec : Prop :=
  ∀ n, P7693008752589656539.a n = A259651 (n + 1)

end A259651

/-! ## A259651.P8298349131839832583

`A001221(Δ[n*∑[n]])`
-/

namespace A259651.P8298349131839832583
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A259651.P8298349131839832583

namespace A259651

/-- `A001221(Δ[n*∑[n]])` -/
def P8298349131839832583.Spec : Prop :=
  ∀ n, P8298349131839832583.a n = A259651 (n + 1)

end A259651

/-! ## A259651.P11073988023633553487

`dr(A001221(∑[n]+(n+1)²))`
-/

namespace A259651.P11073988023633553487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001221 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) ^ 2))

end

end A259651.P11073988023633553487

namespace A259651

/-- `dr(A001221(∑[n]+(n+1)²))` -/
def P11073988023633553487.Spec : Prop :=
  ∀ n, (P11073988023633553487.a n : ℤ) = A259651 (n + 1)

end A259651

/-! ## A259651.P8652887854291560916

`A001221(∑[A016777(n)])*A057427(n)`
-/

namespace A259651.P8652887854291560916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A057427 n

end

end A259651.P8652887854291560916

namespace A259651

/-- `A001221(∑[A016777(n)])*A057427(n)` -/
def P8652887854291560916.Spec : Prop :=
  ∀ n, P8652887854291560916.a n = A259651 (n + 1)

end A259651

/-! ## A259651.P3836492453625528543

`A106404(Δ[(n+1)*n²])`
-/

namespace A259651.P3836492453625528543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106404 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A259651.P3836492453625528543

namespace A259651

/-- `A106404(Δ[(n+1)*n²])` -/
def P3836492453625528543.Spec : Prop :=
  ∀ n, P3836492453625528543.a n = A259651 (n + 1)

end A259651

/-!
# A259652: Number of prime factors, with multiplicity, of the n-th pentagonal number (A000326).

The programs for A259652, the canonical program `A259652.P13757884022191385097` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259652 has offset 1).

The definition of A259652 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001222, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A259652.P13757884022191385097

`A001222(A000326(n+1))`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A259652

/-- `A001222(A000326(n+1))` -/
def P13757884022191385097.Spec : Prop :=
  ∀ n, P13757884022191385097.a n = A259652 (n + 1)

theorem P13757884022191385097.correct : P13757884022191385097.Spec := by
  intro n
  simp only [A259652, Nat.add_sub_cancel]

end A259652

/-! ## A259652.P3183713597517984384

`A001222(3*n+2)+A001222(n+1)-1`
-/

namespace A259652.P3183713597517984384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * n + 2) + (A001222 (n + 1) - 1)

end

end A259652.P3183713597517984384

namespace A259652

/-- `A001222(3*n+2)+A001222(n+1)-1` -/
def P3183713597517984384.Spec : Prop :=
  ∀ n, P3183713597517984384.a n = A259652 (n + 1)

end A259652

/-! ## A259652.P8305767227246222403

`A002837(A001222(3*n+2)+A001222(n+1))`
-/

namespace A259652.P8305767227246222403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A001222 (3 * n + 2) + A001222 (n + 1)).toNat

end

end A259652.P8305767227246222403

namespace A259652

/-- `A002837(A001222(3*n+2)+A001222(n+1))` -/
def P8305767227246222403.Spec : Prop :=
  ∀ n, P8305767227246222403.a n = A259652 (n + 1)

end A259652

/-! ## A259652.P13854650643726787564

`A023443(A001222(3*n+2)+A001222(n+1))`
-/

namespace A259652.P13854650643726787564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A001222 (3 * n + 2) + A001222 (n + 1)).toNat

end

end A259652.P13854650643726787564

namespace A259652

/-- `A023443(A001222(3*n+2)+A001222(n+1))` -/
def P13854650643726787564.Spec : Prop :=
  ∀ n, P13854650643726787564.a n = A259652 (n + 1)

end A259652

/-! ## A259652.P9610201895747379894

`A033619(A001222(3*n+2)+A001222(n+1))`
-/

namespace A259652.P9610201895747379894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (A001222 (3 * n + 2) + A001222 (n + 1)).toNat

end

end A259652.P9610201895747379894

namespace A259652

/-- `A033619(A001222(3*n+2)+A001222(n+1))` -/
def P9610201895747379894.Spec : Prop :=
  ∀ n, P9610201895747379894.a n = A259652 (n + 1)

end A259652

/-! ## A259652.P9032234284672953566

`A130696(A001222(3*n+2)+A001222(n+1))`
-/

namespace A259652.P9032234284672953566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130696 (A001222 (3 * n + 2) + A001222 (n + 1)).toNat

end

end A259652.P9032234284672953566

namespace A259652

/-- `A130696(A001222(3*n+2)+A001222(n+1))` -/
def P9032234284672953566.Spec : Prop :=
  ∀ n, P9032234284672953566.a n = A259652 (n + 1)

end A259652

/-! ## A259652.P7678606802901707567

`A262065(A001222(3*n+2)+A001222(n+1))`
-/

namespace A259652.P7678606802901707567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262065 (A001222 (3 * n + 2) + A001222 (n + 1)).toNat

end

end A259652.P7678606802901707567

namespace A259652

/-- `A262065(A001222(3*n+2)+A001222(n+1))` -/
def P7678606802901707567.Spec : Prop :=
  ∀ n, P7678606802901707567.a n = A259652 (n + 1)

end A259652

/-! ## A259652.P4368818079986069742

`A069904(3*n+2)-1`
-/

namespace A259652.P4368818079986069742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069904 (3 * n + 2) - 1

end

end A259652.P4368818079986069742

namespace A259652

/-- `A069904(3*n+2)-1` -/
def P4368818079986069742.Spec : Prop :=
  ∀ n, P4368818079986069742.a n = A259652 (n + 1)

end A259652

/-! ## A259652.P9307914491922288249

`∑{e}[A278255(n+1), #]`
-/

namespace A259652.P9307914491922288249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278255 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A259652.P9307914491922288249

namespace A259652

/-- `∑{e}[A278255(n+1), #]` -/
def P9307914491922288249.Spec : Prop :=
  ∀ n, (P9307914491922288249.a n : ℤ) = A259652 (n + 1)

end A259652

/-! ## A259652.P11555506397390829299

`∑{e}[Δ[n*∑[n]], #]`
-/

namespace A259652.P11555506397390829299
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A259652.P11555506397390829299

namespace A259652

/-- `∑{e}[Δ[n*∑[n]], #]` -/
def P11555506397390829299.Spec : Prop :=
  ∀ n, (P11555506397390829299.a n : ℤ) = A259652 (n + 1)

end A259652

/-! ## A259652.P13297406670108304443

`A000027(∑{e}[∑[A016777(n)], #]+1)-1`
-/

namespace A259652.P13297406670108304443
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + 1) - 1

end

end A259652.P13297406670108304443

namespace A259652

/-- `A000027(∑{e}[∑[A016777(n)], #]+1)-1` -/
def P13297406670108304443.Spec : Prop :=
  ∀ n, P13297406670108304443.a n = A259652 (n + 1)

end A259652

/-! ## A259652.P9871063605853373761

`A001222(A278255(n+1))`
-/

namespace A259652.P9871063605853373761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278255 (n + 1)).toNat

end

end A259652.P9871063605853373761

namespace A259652

/-- `A001222(A278255(n+1))` -/
def P9871063605853373761.Spec : Prop :=
  ∀ n, P9871063605853373761.a n = A259652 (n + 1)

end A259652

/-! ## A259652.P3052627032508219096

`∑{e}[(n+1)*(3*n+2), #]-1`
-/

namespace A259652.P3052627032508219096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1

end

end A259652.P3052627032508219096

namespace A259652

/-- `∑{e}[(n+1)*(3*n+2), #]-1` -/
def P3052627032508219096.Spec : Prop :=
  ∀ n, P3052627032508219096.a n = A259652 (n + 1)

end A259652

/-! ## A259652.P12574100520929204829

`A001222(Δ[n*∑[n]])`
-/

namespace A259652.P12574100520929204829
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A259652.P12574100520929204829

namespace A259652

/-- `A001222(Δ[n*∑[n]])` -/
def P12574100520929204829.Spec : Prop :=
  ∀ n, P12574100520929204829.a n = A259652 (n + 1)

end A259652

/-! ## A259652.P1386465997930656204

`A001222(Δ[(n+1)*n²])-1`
-/

namespace A259652.P1386465997930656204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A259652.P1386465997930656204

namespace A259652

/-- `A001222(Δ[(n+1)*n²])-1` -/
def P1386465997930656204.Spec : Prop :=
  ∀ n, P1386465997930656204.a n = A259652 (n + 1)

end A259652

/-!
# A259653: a(0)=0, a(1)=1, a(n) = min{3 a(k) + (3^(n-k)-1)/2, k=0..(n-1)} for n>=2.

The programs for A259653, the canonical program `A259653.P12601177065386633340` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259653 has offset 0).

The definition of A259653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259653.P8063104966960881783

`∑[3^∑[char[∑[n+1]+1]]]-1`
-/

namespace A259653.P8063104966960881783
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A259653.P8063104966960881783

namespace A259653

/-- `∑[3^∑[char[∑[n+1]+1]]]-1` -/
def P8063104966960881783.Spec : Prop :=
  ∀ n, P8063104966960881783.a n = A259653 n

end A259653

/-! ## A259653.P12601177065386633340

`∑[3*a(A083920(n))]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A259653

/-- `∑[3*a(A083920(n))]` -/
def P12601177065386633340.Spec : Prop :=
  ∀ n, (P12601177065386633340.a n : ℤ) = A259653 n

theorem P12601177065386633340.correct : P12601177065386633340.Spec := by
  intro n
  simp only [A259653]

end A259653

/-! ## A259653.P11762018633999063782

`∑[A140429(A123578(n))]`
-/

namespace A259653.P11762018633999063782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (A123578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259653.P11762018633999063782

namespace A259653

/-- `∑[A140429(A123578(n))]` -/
def P11762018633999063782.Spec : Prop :=
  ∀ n, P11762018633999063782.a n = A259653 n

end A259653

/-! ## A259653.P7007150239135529444

`∑[A140429(sqrt(A168038(n)))]`
-/

namespace A259653.P7007150239135529444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (SequenceMachineLib.roundAway (Real.sqrt (A168038 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259653.P7007150239135529444

namespace A259653

/-- `∑[A140429(sqrt(A168038(n)))]` -/
def P7007150239135529444.Spec : Prop :=
  ∀ n, P7007150239135529444.a n = A259653 n

end A259653

/-! ## A259653.P2800151146482733392

`∑[A140429(A000194(2*n))]`
-/

namespace A259653.P2800151146482733392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140429 (A000194 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259653.P2800151146482733392

namespace A259653

/-- `∑[A140429(A000194(2*n))]` -/
def P2800151146482733392.Spec : Prop :=
  ∀ n, P2800151146482733392.a n = A259653 n

end A259653

/-! ## A259653.P9597539898658582725

`∑[3*a(n-1-A001222(a(n-1)))]` with `a(0)=0, a(1)=1`
-/

namespace A259653.P9597539898658582725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  3 * f1 ((n : ℤ) - 1 - A001222 (f1 (n - 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259653.P9597539898658582725

namespace A259653

/-- `∑[3*a(n-1-A001222(a(n-1)))]` -/
def P9597539898658582725.Spec : Prop :=
  ∀ n, (P9597539898658582725.a n : ℤ) = A259653 n

end A259653

/-! ## A259653.P3061166428195332209

`∑[A008486(a(A083920(n)))]` with `a(0)=0`
-/

namespace A259653.P3061166428195332209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A008486 (f1 (A083920 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259653.P3061166428195332209

namespace A259653

/-- `∑[A008486(a(A083920(n)))]` -/
def P3061166428195332209.Spec : Prop :=
  ∀ n, P3061166428195332209.a n = A259653 n

end A259653

/-!
# A259654: a(n) = prime(n)^prime(n) - prime(n)^n.

The programs for A259654, there is no canonical definition to state claims against.
-/

/-! ## A259654.P10870511641020313706

`A051674(n+1)-A062457(n+1)`
-/

namespace A259654.P10870511641020313706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051674 (n + 1) - A062457 (n + 1)

end

end A259654.P10870511641020313706

/-!
# A259655: Expansion of psi(x^2) * f(-x^3)^3 / f(-x) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A259655, there is no canonical definition to state claims against.
-/

/-! ## A259655.P9514883781480652172

`A259827(A016813(n))/2`
-/

namespace A259655.P9514883781480652172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259827 (A016813 n).toNat : ℚ) / 2

end

end A259655.P9514883781480652172

/-! ## A259655.P11511878107045972893

`A259827(A008586(n)+1)/2`
-/

namespace A259655.P11511878107045972893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259827 (A008586 n + 1).toNat : ℚ) / 2

end

end A259655.P11511878107045972893

/-! ## A259655.P7388754938660195712

`A006371(6*n+3)`
-/

namespace A259655.P7388754938660195712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006371 (6 * n + 3)

end

end A259655.P7388754938660195712

/-! ## A259655.P14744585142546658667

`A058305(12*n+7)`
-/

namespace A259655.P14744585142546658667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (12 * n + 7)

end

end A259655.P14744585142546658667

/-! ## A259655.P6596346444808650549

`abs(A058305(Δ[A049453(n)]))`
-/

namespace A259655.P6596346444808650549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A058305 (f1 (n + 1) - f1 n).toNat|

end

end A259655.P6596346444808650549

/-! ## A259655.P3404805069773005801

`A130695(3*n+2)/3`
-/

namespace A259655.P3404805069773005801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130695 (3 * n + 2) : ℚ) / 3

end

end A259655.P3404805069773005801

/-! ## A259655.P4958875936918465344

`A002264(A130695(3*n+2))`
-/

namespace A259655.P4958875936918465344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A130695 (3 * n + 2)).toNat

end

end A259655.P4958875936918465344

/-!
# A259656: Let f(x) be the absolute value of the difference between x and its base-2 reversal. a(n) is the number of times f(x) must be applied starting with n for the result to be 0.

The programs for A259656, there is no canonical definition to state claims against.
-/

/-! ## A259656.P7459086989636339048

`A303536(16*16*(n+1)+n+1)`
-/

namespace A259656.P7459086989636339048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 (16 * (16 * (n + 1)) + (n + 1))

end

end A259656.P7459086989636339048

/-! ## A259656.P10921051654883489418

`dr(A303536(A020330(n+1)))`
-/

namespace A259656.P10921051654883489418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A303536 (A020330 (n + 1)).toNat)

end

end A259656.P10921051654883489418

/-! ## A259656.P12686171687486446240

`and(7, A303536((n+1)*A076877(n+1)))`
-/

namespace A259656.P12686171687486446240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A303536 ((n + 1 : ℤ) * A076877 (n + 1)).toNat)

end

end A259656.P12686171687486446240

/-! ## A259656.P14724533971146874576

`A007318(C(2, n))*A303536(A020330(n+1))`
-/

namespace A259656.P14724533971146874576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A303536 (A020330 (n + 1)).toNat

end

end A259656.P14724533971146874576

/-! ## A259656.P15932370008531747497

`or(A000038(n)/2, A303536(A020330(n+1)))`
-/

namespace A259656.P15932370008531747497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A000038 n : ℚ) / 2)) (A303536 (A020330 (n + 1)).toNat)

end

end A259656.P15932370008531747497

/-! ## A259656.P9404401819790207667

`A303536(A020330(n+1))/A000040(n+2)%2`
-/

namespace A259656.P9404401819790207667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303536 (A020330 (n + 1)).toNat : ℚ) / (Int.tmod (A000040 (n + 2)) 2 : ℚ)

end

end A259656.P9404401819790207667

/-! ## A259656.P2012872887780128206

`A303536(A020330(n+1))+C(2, A000203(n+2))`
-/

namespace A259656.P2012872887780128206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303536 (A020330 (n + 1)).toNat + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A259656.P2012872887780128206

/-! ## A259656.P15757465245498247177

`A007318(C(3, n))+A303536(A020330(n+1))-1`
-/

namespace A259656.P15757465245498247177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 n) + (A303536 (A020330 (n + 1)).toNat - 1)

end

end A259656.P15757465245498247177

/-! ## A259656.P12966114948576696956

`A303536(A020330(n+1))/A000203(abs((-1)^n))`
-/

namespace A259656.P12966114948576696956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303536 (A020330 (n + 1)).toNat : ℚ) / (A000203 |(-1) ^ n|.toNat : ℚ)

end

end A259656.P12966114948576696956

/-! ## A259656.P6821234821165621835

`lcm((-1)^A020639(n+1), A303536(A020330(n+1)))`
-/

namespace A259656.P6821234821165621835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (A020639 (n + 1) : ℤ))) (A303536 (A020330 (n + 1)).toNat)

end

end A259656.P6821234821165621835

/-!
# A259658: Let f(x) be the absolute value of the difference between x and its base-2 reversal. Let g(x) be the number of times f(x) must be applied to x for the result to be 0. a(n) is the smallest value of x for which g(x) is n.

The programs for A259658, there is no canonical definition to state claims against.
-/

/-! ## A259658.P11048689288515108100

`or(n, A056172(A135082(n)))`
-/

namespace A259658.P11048689288515108100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A056172 (A135082 n).toNat)

end

end A259658.P11048689288515108100

/-! ## A259658.P1716107514855008890

`A227125(A113153(n+1))-2`
-/

namespace A259658.P1716107514855008890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227125 (A113153 (n + 1)).toNat - 2

end

end A259658.P1716107514855008890

/-!
# A259660: Expansion of f(-x, -x^11) * psi(-x^3)^2 / psi(-x) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A259660, there is no canonical definition to state claims against.
-/

/-! ## A259660.P9317339136204707229

`A056594(A247573(n+2)%A247571(n+2))`
-/

namespace A259660.P9317339136204707229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (Int.tmod (A247573 (n + 2)) (A247571 (n + 2))).toNat

end

end A259660.P9317339136204707229

/-! ## A259660.P17674861093027615840

`A056594(A163493(n)-A117910(n))`
-/

namespace A259660.P17674861093027615840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A163493 n - A117910 n).toNat

end

end A259660.P17674861093027615840

/-! ## A259660.P12133807155806761473

`A056594(xor(A117910(n), A163493(n)))`
-/

namespace A259660.P12133807155806761473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (Int.xor (A117910 n) (A163493 n)).toNat

end

end A259660.P12133807155806761473

/-! ## A259660.P7341809510998795024

`A010892(A359907(2*n+1)+A220522(3*n))`
-/

namespace A259660.P7341809510998795024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (A359907 (2 * n + 1) + A220522 (3 * n)).toNat

end

end A259660.P7341809510998795024

/-! ## A259660.P14943555470668242115

`A356921(A000203(3*n+5))-A364046(n+1)`
-/

namespace A259660.P14943555470668242115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356921 (A000203 (3 * n + 5)).toNat - A364046 (n + 1)

end

end A259660.P14943555470668242115

/-!
# A259661: Binary representation of the middle column of the "Rule 54" elementary cellular automaton starting with a single ON (black) cell.

The programs for A259661, the canonical program `A259661.P9181825910576241245` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259661 has offset 0).

The definition of A259661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259661.P5650036259671513905

`ogf(1/(1-11x+11x^2-11x^3+10x^4))`
-/

namespace A259661.P5650036259671513905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, -11, 11, -11, 10] n

end

end A259661.P5650036259671513905

namespace A259661

/-- `ogf(1/(1-11x+11x^2-11x^3+10x^4))` -/
def P5650036259671513905.Spec : Prop :=
  ∀ n, P5650036259671513905.a n = A259661 n

end A259661

/-! ## A259661.P9181825910576241245

`∑[10^n-a(n-2)]` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A259661

/-- `∑[10^n-a(n-2)]` -/
def P9181825910576241245.Spec : Prop :=
  ∀ n, P9181825910576241245.a n = A259661 n

theorem P9181825910576241245.correct : P9181825910576241245.Spec := by
  intro n
  simp only [A259661]

end A259661

/-! ## A259661.P10397599139456135084

`char[and(2, n)+n]+10*a(n-1)` with `a(0)=1`
-/

namespace A259661.P10397599139456135084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + 10 * a (n - 1)

end

end A259661.P10397599139456135084

namespace A259661

/-- `char[and(2, n)+n]+10*a(n-1)` -/
def P10397599139456135084.Spec : Prop :=
  ∀ n, (P10397599139456135084.a n : ℤ) = A259661 n

end A259661

/-! ## A259661.P15533167259627415478

`A000042(n+1)-a(n-2)` with `a(0)=1, a(1)=11`
-/

namespace A259661.P15533167259627415478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  A000042 (n + 1) - a (n - 2)

end

end A259661.P15533167259627415478

namespace A259661

/-- `A000042(n+1)-a(n-2)` -/
def P15533167259627415478.Spec : Prop :=
  ∀ n, P15533167259627415478.a n = A259661 n

end A259661

/-! ## A259661.P1257871467509176225

`or(10*a(n-1), ∑[A056594(n)])` with `a(0)=1`
-/

namespace A259661.P1257871467509176225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor (10 * a (n - 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A259661.P1257871467509176225

namespace A259661

/-- `or(10*a(n-1), ∑[A056594(n)])` -/
def P1257871467509176225.Spec : Prop :=
  ∀ n, P1257871467509176225.a n = A259661 n

end A259661

/-! ## A259661.P223727520810488115

`or(10*a(n-1), char[A042948(n)])` with `a(0)=1`
-/

namespace A259661.P223727520810488115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lor (10 * a (n - 1)) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A259661.P223727520810488115

namespace A259661

/-- `or(10*a(n-1), char[A042948(n)])` -/
def P223727520810488115.Spec : Prop :=
  ∀ n, (P223727520810488115.a n : ℤ) = A259661 n

end A259661

/-! ## A259661.P20090830136474106

`char[Δ[A317186(n)]]+10*a(n-1)` with `a(0)=1`
-/

namespace A259661.P20090830136474106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317186 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 10 * a (n - 1)

end

end A259661.P20090830136474106

namespace A259661

/-- `char[Δ[A317186(n)]]+10*a(n-1)` -/
def P20090830136474106.Spec : Prop :=
  ∀ n, (P20090830136474106.a n : ℤ) = A259661 n

end A259661

/-! ## A259661.P7187565857894000090

`A037715(n)-(a(n-1)+a(n-1))` with `a(0)=1`
-/

namespace A259661.P7187565857894000090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A037715 (n + 1) - (a (n - 1) + a (n - 1))

end

end A259661.P7187565857894000090

namespace A259661

/-- `A037715(n)-(a(n-1)+a(n-1))` -/
def P7187565857894000090.Spec : Prop :=
  ∀ n, P7187565857894000090.a n = A259661 n

end A259661

/-! ## A259661.P957782915743860002

`A045943(n+1)%2+10*a(n-1)` with `a(0)=1`
-/

namespace A259661.P957782915743860002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (A045943 (n + 1)) 2 + 10 * a (n - 1)

end

end A259661.P957782915743860002

namespace A259661

/-- `A045943(n+1)%2+10*a(n-1)` -/
def P957782915743860002.Spec : Prop :=
  ∀ n, P957782915743860002.a n = A259661 n

end A259661

/-! ## A259661.P15833233556641171778

`xor(10*a(n-1), A000035(A008619(n)))` with `a(0)=1`
-/

namespace A259661.P15833233556641171778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (A000035 (A008619 n).toNat)

end

end A259661.P15833233556641171778

namespace A259661

/-- `xor(10*a(n-1), A000035(A008619(n)))` -/
def P15833233556641171778.Spec : Prop :=
  ∀ n, P15833233556641171778.a n = A259661 n

end A259661

/-! ## A259661.P16079264053884550385

`xor(10*a(n-1), A000035(A167499(n)+1))` with `a(0)=1`
-/

namespace A259661.P16079264053884550385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (10 * a (n - 1)) (A000035 (A167499 n + 1).toNat)

end

end A259661.P16079264053884550385

namespace A259661

/-- `xor(10*a(n-1), A000035(A167499(n)+1))` -/
def P16079264053884550385.Spec : Prop :=
  ∀ n, P16079264053884550385.a n = A259661 n

end A259661

/-!
# A259662: Expansion of phi(-q^3) / phi(-q)^3 in powers of q where phi() is a Ramanujan theta function.

The programs for A259662, there is no canonical definition to state claims against.
-/

/-! ## A259662.P1775134810977194123

`A132974(2*n)`
-/

namespace A259662.P1775134810977194123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132974 (2 * n)

end

end A259662.P1775134810977194123

/-! ## A259662.P2103859026513931267

`A132979(2*n)`
-/

namespace A259662.P2103859026513931267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132979 (2 * n)

end

end A259662.P2103859026513931267

/-! ## A259662.P4691066642861622247

`record[A132974(n-A007814(n+1))]`
-/

namespace A259662.P4691066642861622247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132974 ((n : ℤ) - A007814 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259662.P4691066642861622247

/-! ## A259662.P17033123336591650916

`record[floor(A132974(n)/(A007814(n+1)+1))]`
-/

namespace A259662.P17033123336591650916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A132974 n : ℚ) / (A007814 (n + 1) + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259662.P17033123336591650916

/-! ## A259662.P10960795814491079126

`record[A132974(A283971(n)+A004525(n))]`
-/

namespace A259662.P10960795814491079126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132974 (A283971 n + A004525 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259662.P10960795814491079126

/-! ## A259662.P10956144955895791623

`record[A132979(n)]`
-/

namespace A259662.P10956144955895791623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259662.P10956144955895791623

/-! ## A259662.P15459829900823783555

`abs(A132979(A004526(A008574(n))))`
-/

namespace A259662.P15459829900823783555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A132979 (A004526 (A008574 n).toNat).toNat|

end

end A259662.P15459829900823783555

/-!
# A259664: Expansion of f(-x^6) / (f(-x^2)^3 * phi(-x)^2) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A259664, there is no canonical definition to state claims against.
-/

/-! ## A259664.P16994934407506334065

`A132974(Δ[n²])/3`
-/

namespace A259664.P16994934407506334065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132974 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 3

end

end A259664.P16994934407506334065

/-! ## A259664.P1315581859918555146

`record[A132974(n+1)/A132974(A007814(n+1)+1)]`
-/

namespace A259664.P1315581859918555146
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132974 (n + 1) : ℚ) / (A132974 (A007814 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259664.P1315581859918555146

/-! ## A259664.P10768407841146043496

`abs(A132979(2*n+1)/3)`
-/

namespace A259664.P10768407841146043496
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A132979 (2 * n + 1) : ℚ) / 3|

end

end A259664.P10768407841146043496

/-! ## A259664.P16982682612517253459

`lcm(A010684(n+1), A132979(2*n+1))/3`
-/

namespace A259664.P16982682612517253459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A010684 (n + 1)) (A132979 (2 * n + 1)) : ℚ) / 3

end

end A259664.P16982682612517253459

/-! ## A259664.P12122654505684416705

`A132979(2*n+1)/(A033999(2*n+1)-2)`
-/

namespace A259664.P12122654505684416705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132979 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 2 : ℚ)

end

end A259664.P12122654505684416705

/-! ## A259664.P9638719015744162127

`A132979(2*n+1)/A132973(3^val(n+1, 3))`
-/

namespace A259664.P9638719015744162127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132979 (2 * n + 1) : ℚ) / (A132973 (3 ^ SequenceMachineLib.valuation (n + 1) 3) : ℚ)

end

end A259664.P9638719015744162127

/-! ## A259664.P6809733434951058295

`record[ratio[A132979(A051340(n))]]`
-/

namespace A259664.P6809733434951058295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132979 (A051340 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259664.P6809733434951058295

/-!
# A259665: a(0)=0, a(1)=1, a(n) = min{4 a(k) + (4^(n-k)-1)/3, k=0..(n-1)} for n>=2.

The programs for A259665, the canonical program `A259665.P16347607823842233365` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259665 has offset 0).

The definition of A259665 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259665.P16347607823842233365

`a(n-1)+A137688(n-1)²` with `a(0)=0`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A259665

/-- `a(n-1)+A137688(n-1)²` -/
def P16347607823842233365.Spec : Prop :=
  ∀ n, P16347607823842233365.a n = A259665 n

theorem P16347607823842233365.correct : P16347607823842233365.Spec := by
  intro n
  simp only [A259665]

end A259665

/-! ## A259665.P13045999617868960578

`∑[A131577(A123578(n))²]`
-/

namespace A259665.P13045999617868960578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A123578 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259665.P13045999617868960578

namespace A259665

/-- `∑[A131577(A123578(n))²]` -/
def P13045999617868960578.Spec : Prop :=
  ∀ n, P13045999617868960578.a n = A259665 n

end A259665

/-! ## A259665.P11537073411411546352

`∑[A034008(A123578(n)+1)²]`
-/

namespace A259665.P11537073411411546352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A123578 n + 1).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259665.P11537073411411546352

namespace A259665

/-- `∑[A034008(A123578(n)+1)²]` -/
def P11537073411411546352.Spec : Prop :=
  ∀ n, P11537073411411546352.a n = A259665 n

end A259665

/-! ## A259665.P14230954004888495994

`∑[A131577(A000194(2*n))²]`
-/

namespace A259665.P14230954004888495994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A000194 (2 * n)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259665.P14230954004888495994

namespace A259665

/-- `∑[A131577(A000194(2*n))²]` -/
def P14230954004888495994.Spec : Prop :=
  ∀ n, P14230954004888495994.a n = A259665 n

end A259665

/-! ## A259665.P14112623412796193891

`∑[A137688(n)²]-A137688(n)²`
-/

namespace A259665.P14112623412796193891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137688 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A137688 n ^ 2

end

end A259665.P14112623412796193891

namespace A259665

/-- `∑[A137688(n)²]-A137688(n)²` -/
def P14112623412796193891.Spec : Prop :=
  ∀ n, P14112623412796193891.a n = A259665 n

end A259665

/-! ## A259665.P3738923789501996487

`∑[4^(A002024(A028310(n))-1)]-1`
-/

namespace A259665.P3738923789501996487
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A002024 (A028310 n).toNat - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A259665.P3738923789501996487

namespace A259665

/-- `∑[4^(A002024(A028310(n))-1)]-1` -/
def P3738923789501996487.Spec : Prop :=
  ∀ n, P3738923789501996487.a n = (A259665 n : ℚ)

end A259665

/-! ## A259665.P10232082194657428106

`∑[4^A003056(n)]-4^A003056(n)`
-/

namespace A259665.P10232082194657428106
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (A003056 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (4 : ℚ) ^ (A003056 n : ℤ)

end

end A259665.P10232082194657428106

namespace A259665

/-- `∑[4^A003056(n)]-4^A003056(n)` -/
def P10232082194657428106.Spec : Prop :=
  ∀ n, P10232082194657428106.a n = (A259665 n : ℚ)

end A259665

/-! ## A259665.P16001990516569493742

`∑[A053644(record[A073137(n)])²]`
-/

namespace A259665.P16001990516569493742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073137 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259665.P16001990516569493742

namespace A259665

/-- `∑[A053644(record[A073137(n)])²]` -/
def P16001990516569493742.Spec : Prop :=
  ∀ n, P16001990516569493742.a n = A259665 n

end A259665

/-! ## A259665.P14119832870942394304

`∑[A053644(∑[A007318(n)]-1)^2]`
-/

namespace A259665.P14119832870942394304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (∑ j ∈ Finset.range (n + 1), f2 j - 1).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259665.P14119832870942394304

namespace A259665

/-- `∑[A053644(∑[A007318(n)]-1)^2]` -/
def P14119832870942394304.Spec : Prop :=
  ∀ n, P14119832870942394304.a n = A259665 n

end A259665

/-! ## A259665.P9233237069251097980

`∑[A053644(record[A256999(n)])²]`
-/

namespace A259665.P9233237069251097980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256999 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259665.P9233237069251097980

namespace A259665

/-- `∑[A053644(record[A256999(n)])²]` -/
def P9233237069251097980.Spec : Prop :=
  ∀ n, P9233237069251097980.a n = A259665 n

end A259665

/-!
# A259666: Number of n X n prime Tesler matrices.

The programs for A259666, there is no canonical definition to state claims against.
-/

/-! ## A259666.P8847177271026824240

`A163906(A217239(n))+A081277(n)`
-/

namespace A259666.P8847177271026824240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163906 (A217239 n).toNat + A081277 n

end

end A259666.P8847177271026824240

/-! ## A259666.P6322471216182693764

`A257808(A212722(n)+A072856(n))`
-/

namespace A259666.P6322471216182693764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257808 (A212722 n + A072856 n).toNat

end

end A259666.P6322471216182693764

/-!
# A259667: Catalan numbers mod 6.

The programs for A259667, the canonical program `A259667.P17440056628924730979` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259667 has offset 0).

The definition of A259667 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259667.P17440056628924730979

`A159989(n)%6`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A259667

/-- `A159989(n)%6` -/
def P17440056628924730979.Spec : Prop :=
  ∀ n, P17440056628924730979.a n = A259667 n

theorem P17440056628924730979.correct : P17440056628924730979.Spec := by
  intro n
  simp only [A259667]

end A259667

/-! ## A259667.P4510601227491033575

`A010875(A159989(n))`
-/

namespace A259667.P4510601227491033575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010875 (A159989 n).toNat

end

end A259667.P4510601227491033575

namespace A259667

/-- `A010875(A159989(n))` -/
def P4510601227491033575.Spec : Prop :=
  ∀ n, P4510601227491033575.a n = A259667 n

end A259667

/-! ## A259667.P8253458921858630816

`A257687(A159989(n)+6)`
-/

namespace A259667.P8253458921858630816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257687 (A159989 n + 6).toNat

end

end A259667.P8253458921858630816

namespace A259667

/-- `A257687(A159989(n)+6)` -/
def P8253458921858630816.Spec : Prop :=
  ∀ n, P8253458921858630816.a n = A259667 n

end A259667

/-! ## A259667.P10111918249798908210

`A298486(A159989(n)+15)`
-/

namespace A259667.P10111918249798908210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298486 (A159989 n + 15).toNat

end

end A259667.P10111918249798908210

namespace A259667

/-- `A298486(A159989(n)+15)` -/
def P10111918249798908210.Spec : Prop :=
  ∀ n, P10111918249798908210.a n = A259667 n

end A259667

/-! ## A259667.P13602576231993051130

`A025581(20-A159989(n))`
-/

namespace A259667.P13602576231993051130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (20 - A159989 n).toNat

end

end A259667.P13602576231993051130

namespace A259667

/-- `A025581(20-A159989(n))` -/
def P13602576231993051130.Spec : Prop :=
  ∀ n, P13602576231993051130.a n = A259667 n

end A259667

/-! ## A259667.P18299624339848816878

`A000108(n)%6`
-/

namespace A259667.P18299624339848816878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000108 n) 6

end

end A259667.P18299624339848816878

namespace A259667

/-- `A000108(n)%6` -/
def P18299624339848816878.Spec : Prop :=
  ∀ n, P18299624339848816878.a n = A259667 n

end A259667

/-! ## A259667.P13571492900767170998

`abs(A168491(n)%6)`
-/

namespace A259667.P13571492900767170998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A168491 n) 6|

end

end A259667.P13571492900767170998

namespace A259667

/-- `abs(A168491(n)%6)` -/
def P13571492900767170998.Spec : Prop :=
  ∀ n, P13571492900767170998.a n = A259667 n

end A259667

/-! ## A259667.P13656651558525850086

`A120588(n+1)%6`
-/

namespace A259667.P13656651558525850086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A120588 (n + 1)) 6

end

end A259667.P13656651558525850086

namespace A259667

/-- `A120588(n+1)%6` -/
def P13656651558525850086.Spec : Prop :=
  ∀ n, P13656651558525850086.a n = A259667 n

end A259667

/-! ## A259667.P12208909924873918781

`A028303(2*n)%6`
-/

namespace A259667.P12208909924873918781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028303 (2 * n)) 6

end

end A259667.P12208909924873918781

namespace A259667

/-- `A028303(2*n)%6` -/
def P12208909924873918781.Spec : Prop :=
  ∀ n, P12208909924873918781.a n = A259667 n

end A259667

/-! ## A259667.P10191306313619538945

`A028304(2*n)%6`
-/

namespace A259667.P10191306313619538945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028304 (2 * n)) 6

end

end A259667.P10191306313619538945

namespace A259667

/-- `A028304(2*n)%6` -/
def P10191306313619538945.Spec : Prop :=
  ∀ n, P10191306313619538945.a n = A259667 n

end A259667

/-! ## A259667.P1557789498002575254

`A126120(2*n)%6`
-/

namespace A259667.P1557789498002575254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126120 (2 * n)) 6

end

end A259667.P1557789498002575254

namespace A259667

/-- `A126120(2*n)%6` -/
def P1557789498002575254.Spec : Prop :=
  ∀ n, P1557789498002575254.a n = A259667 n

end A259667

/-! ## A259667.P15110719255419473327

`A126324(2*n)%6`
-/

namespace A259667.P15110719255419473327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126324 (2 * n)) 6

end

end A259667.P15110719255419473327

namespace A259667

/-- `A126324(2*n)%6` -/
def P15110719255419473327.Spec : Prop :=
  ∀ n, P15110719255419473327.a n = A259667 n

end A259667

/-! ## A259667.P2002946367338519295

`A208355(2*n)%6`
-/

namespace A259667.P2002946367338519295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A208355 (2 * n)) 6

end

end A259667.P2002946367338519295

namespace A259667

/-- `A208355(2*n)%6` -/
def P2002946367338519295.Spec : Prop :=
  ∀ n, P2002946367338519295.a n = A259667 n

end A259667

/-! ## A259667.P3774918642512731355

`A089408(2*n+1)%6`
-/

namespace A259667.P3774918642512731355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089408 (2 * n + 1)) 6

end

end A259667.P3774918642512731355

namespace A259667

/-- `A089408(2*n+1)%6` -/
def P3774918642512731355.Spec : Prop :=
  ∀ n, P3774918642512731355.a n = A259667 n

end A259667

/-! ## A259667.P13597585761920640969

`A097331(2*n+1)%6`
-/

namespace A259667.P13597585761920640969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097331 (2 * n + 1)) 6

end

end A259667.P13597585761920640969

namespace A259667

/-- `A097331(2*n+1)%6` -/
def P13597585761920640969.Spec : Prop :=
  ∀ n, P13597585761920640969.a n = A259667 n

end A259667

/-! ## A259667.P8491051592236770838

`abs(A182492(4*n+3))%6`
-/

namespace A259667.P8491051592236770838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A182492 (4 * n + 3)| 6

end

end A259667.P8491051592236770838

namespace A259667

/-- `abs(A182492(4*n+3))%6` -/
def P8491051592236770838.Spec : Prop :=
  ∀ n, P8491051592236770838.a n = A259667 n

end A259667

/-! ## A259667.P1119676507845403361

`A099363(2*n)%6`
-/

namespace A259667.P1119676507845403361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099363 (2 * n)) 6

end

end A259667.P1119676507845403361

namespace A259667

/-- `A099363(2*n)%6` -/
def P1119676507845403361.Spec : Prop :=
  ∀ n, P1119676507845403361.a n = A259667 n

end A259667

/-! ## A259667.P11786353165150216813

`A057977(2*n)%6`
-/

namespace A259667.P11786353165150216813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057977 (2 * n)) 6

end

end A259667.P11786353165150216813

namespace A259667

/-- `A057977(2*n)%6` -/
def P11786353165150216813.Spec : Prop :=
  ∀ n, P11786353165150216813.a n = A259667 n

end A259667

/-! ## A259667.P12896506604209738496

`A089849(2*n+1)%6`
-/

namespace A259667.P12896506604209738496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089849 (2 * n + 1)) 6

end

end A259667.P12896506604209738496

namespace A259667

/-- `A089849(2*n+1)%6` -/
def P12896506604209738496.Spec : Prop :=
  ∀ n, P12896506604209738496.a n = A259667 n

end A259667

/-! ## A259667.P12314767825024870842

`(A001405(2*n)/(n+1))%6`
-/

namespace A259667.P12314767825024870842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A001405 (2 * n) : ℚ) / (n + 1 : ℚ))) 6

end

end A259667.P12314767825024870842

namespace A259667

/-- `(A001405(2*n)/(n+1))%6` -/
def P12314767825024870842.Spec : Prop :=
  ∀ n, P12314767825024870842.a n = A259667 n

end A259667

/-!
# A259668: Expansion of psi(-x)^2 * psi(x^3)^2 / (phi(-x^4) * psi(-x^6)) in power of x where phi(), psi() are Ramanujan theta functions.

The programs for A259668, there is no canonical definition to state claims against.
-/

/-! ## A259668.P461830478156031097

`A134177(2*n)`
-/

namespace A259668.P461830478156031097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134177 (2 * n)

end

end A259668.P461830478156031097

/-! ## A259668.P16873030823528310134

`A128580(2*n)`
-/

namespace A259668.P16873030823528310134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128580 (2 * n)

end

end A259668.P16873030823528310134

/-! ## A259668.P13112735260837838666

`A115660(4*n+1)`
-/

namespace A259668.P13112735260837838666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115660 (4 * n + 1)

end

end A259668.P13112735260837838666

/-! ## A259668.P9043654270395280529

`A128581(4*n+1)`
-/

namespace A259668.P9043654270395280529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128581 (4 * n + 1)

end

end A259668.P9043654270395280529

/-! ## A259668.P14559745955268226872

`A033999(n)*A261118(n)`
-/

namespace A259668.P14559745955268226872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A261118 n

end

end A259668.P14559745955268226872

/-! ## A259668.P1764668614605244651

`(-1)^n*A129402(2*n)`
-/

namespace A259668.P1764668614605244651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A129402 (2 * n)

end

end A259668.P1764668614605244651

/-! ## A259668.P549543169767156941

`A033999(n)*A190615(2*n)`
-/

namespace A259668.P549543169767156941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A190615 (2 * n)

end

end A259668.P549543169767156941

/-! ## A259668.P8408795197785792101

`A057077(2*n)*A190615(2*n)`
-/

namespace A259668.P8408795197785792101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 (2 * n) * A190615 (2 * n)

end

end A259668.P8408795197785792101

/-! ## A259668.P1819691273808895479

`A087960(2*n)*A190615(2*n)`
-/

namespace A259668.P1819691273808895479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (2 * n) * A190615 (2 * n)

end

end A259668.P1819691273808895479

/-! ## A259668.P5447345643452232052

`A257921(3*n)`
-/

namespace A259668.P5447345643452232052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257921 (3 * n)

end

end A259668.P5447345643452232052

/-!
# A259669: a(0)=0, a(1)=1, a(n) = min{5 a(k) + (5^(n-k)-1)/4, k=0..(n-1)} for n>=2.

The programs for A259669, the canonical program `A259669.P10561607982313201112` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259669 has offset 0).

The definition of A259669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4097 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259669.P10561607982313201112

`∑[floor(5^(A123578(n)-1))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A259669

/-- `∑[floor(5^(A123578(n)-1))]` -/
def P10561607982313201112.Spec : Prop :=
  ∀ n, P10561607982313201112.a n = A259669 n

theorem P10561607982313201112.correct : P10561607982313201112.Spec := by
  intro n
  simp only [A259669]

end A259669

/-! ## A259669.P10461519688027296138

`∑[5^(A123578(n)-1)*A057427(n)]`
-/

namespace A259669.P10461519688027296138
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A123578 n - 1 : ℤ) * (A057427 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259669.P10461519688027296138

namespace A259669

/-- `∑[5^(A123578(n)-1)*A057427(n)]` -/
def P10461519688027296138.Spec : Prop :=
  ∀ n, P10461519688027296138.a n = (A259669 n : ℚ)

end A259669

/-! ## A259669.P16194221161699465281

`∑[5^A003056(n)]-5^A003056(n)`
-/

namespace A259669.P16194221161699465281
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A003056 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (5 : ℚ) ^ (A003056 n : ℤ)

end

end A259669.P16194221161699465281

namespace A259669

/-- `∑[5^A003056(n)]-5^A003056(n)` -/
def P16194221161699465281.Spec : Prop :=
  ∀ n, P16194221161699465281.a n = (A259669 n : ℚ)

end A259669

/-! ## A259669.P12343668965852628840

`∑[5^(A123578(n)-1)*A323022(A091954(n+1)+1)]`
-/

namespace A259669.P12343668965852628840
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A123578 n - 1 : ℤ) * (A323022 (A091954 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259669.P12343668965852628840

namespace A259669

/-- `∑[5^(A123578(n)-1)*A323022(A091954(n+1)+1)]` -/
def P12343668965852628840.Spec : Prop :=
  ∀ n, P12343668965852628840.a n = (A259669 n : ℚ)

end A259669

/-! ## A259669.P6875289367213930484

`∑[A033042(A131577(A123578(n)))]`
-/

namespace A259669.P6875289367213930484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (A131577 (A123578 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A259669.P6875289367213930484

namespace A259669

/-- `∑[A033042(A131577(A123578(n)))]` -/
def P6875289367213930484.Spec : Prop :=
  ∀ n, P6875289367213930484.a n = A259669 n

end A259669

/-!
# A259672: Number k such that the greatest prime divisor of k+1 is the smallest prime that is larger than the greatest prime divisor of k.

The programs for A259672, there is no canonical definition to state claims against.
-/

/-! ## A259672.P13592208128737862576

`eq[A111089(n+2), A117366(2*(n+1))]+1`
-/

namespace A259672.P13592208128737862576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111089 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A259672.P13592208128737862576

/-! ## A259672.P18237206509796274385

`eq[A117366(2*(n+1)), A284695(n+2)]+1`
-/

namespace A259672.P18237206509796274385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A259672.P18237206509796274385

/-! ## A259672.P15306681564551433679

`eq[A252735(n+2), A333352(2*(n+1))]+1`
-/

namespace A259672.P15306681564551433679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333352 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A259672.P15306681564551433679

/-! ## A259672.P16159518531656852164

`eq[A252735(n+1), A333352(A004277(n))]`
-/

namespace A259672.P16159518531656852164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333352 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259672.P16159518531656852164

/-! ## A259672.P1104742305888858509

`eq[A117366(A008574(n)), A284695(n+1)]`
-/

namespace A259672.P1104742305888858509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117366 (A008574 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284695 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A259672.P1104742305888858509

/-!
# A259673: a(n) = sigma_(prime(n))(n).

The programs for A259673, there is no canonical definition to state claims against.
-/

/-! ## A259673.P2462061228003629241

`∑{d}[n+1, #^A000040(n+1)]`
-/

namespace A259673.P2462061228003629241
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A259673.P2462061228003629241

/-! ## A259673.P1125083440938095578

`∑{d}[n+1, #^A006005(n+1)]`
-/

namespace A259673.P1125083440938095578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A006005 (n + 1) : ℤ)

end

end A259673.P1125083440938095578

/-! ## A259673.P12317187937505515260

`∑{d}[n+1, #^A055398(n+1)]`
-/

namespace A259673.P12317187937505515260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A055398 (n + 1) : ℤ)

end

end A259673.P12317187937505515260

/-! ## A259673.P3948401810199222526

`∑{d}[n+1, #^A008578(n+2)]`
-/

namespace A259673.P3948401810199222526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) ^ (A008578 (n + 2) : ℤ)

end

end A259673.P3948401810199222526

/-! ## A259673.P11438300858876207852

`∑{d}[n+1, #^sqrt(A001248(n+1))]`
-/

namespace A259673.P11438300858876207852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℝ) ^ (Real.sqrt (A001248 (n + 1) : ℝ))

end

end A259673.P11438300858876207852

/-!
# A259676: Heptagonal numbers (A000566) that are semiprimes (A001358).

The programs for A259676, the canonical program `A259676.P16720077974617783061` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A259676 has offset 1).

The definition of A259676 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 480 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A259676.P16720077974617783061

`A000566(A114517(n+1))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A259676

/-- `A000566(A114517(n+1))` -/
def P16720077974617783061.Spec : Prop :=
  ∀ n, P16720077974617783061.a n = A259676 (n + 1)

theorem P16720077974617783061.correct : P16720077974617783061.Spec := by
  intro n
  simp only [A259676, Nat.add_sub_cancel]

end A259676

/-! ## A259676.P9046188542973242892

`A135706(eq[4, A276680(n+1)]+1)/2`
-/

namespace A259676.P9046188542973242892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276680 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135706 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 2

end

end A259676.P9046188542973242892

namespace A259676

/-- `A135706(eq[4, A276680(n+1)]+1)/2` -/
def P9046188542973242892.Spec : Prop :=
  ∀ n, P9046188542973242892.a n = (A259676 (n + 1) : ℚ)

end A259676

/-! ## A259676.P15857621587912932966

`A153784(eq[4, A276680(n+1)]+1)/4`
-/

namespace A259676.P15857621587912932966
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276680 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153784 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 4

end

end A259676.P15857621587912932966

namespace A259676

/-- `A153784(eq[4, A276680(n+1)]+1)/4` -/
def P15857621587912932966.Spec : Prop :=
  ∀ n, P15857621587912932966.a n = (A259676 (n + 1) : ℚ)

end A259676

/-! ## A259676.P13985407871748053708

`A130520(5*A114517(n+1))`
-/

namespace A259676.P13985407871748053708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130520 (5 * A114517 (n + 1)).toNat

end

end A259676.P13985407871748053708

namespace A259676

/-- `A130520(5*A114517(n+1))` -/
def P13985407871748053708.Spec : Prop :=
  ∀ n, P13985407871748053708.a n = A259676 (n + 1)

end A259676

/-! ## A259676.P10506108103973795493

`A000566(eq[2, ∑{e}[A000566(n), #]])`
-/

namespace A259676.P10506108103973795493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000566 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A259676.P10506108103973795493

namespace A259676

/-- `A000566(eq[2, ∑{e}[A000566(n), #]])` -/
def P10506108103973795493.Spec : Prop :=
  ∀ n, P10506108103973795493.a n = A259676 (n + 1)

end A259676

/-!
# A259677: Octagonal numbers (A000567) that are semiprimes (A001358).

The programs for A259677, there is no canonical definition to state claims against.
-/

/-! ## A259677.P8218255540113755964

`A088878(n+1)*A091180(n+1)`
-/

namespace A259677.P8218255540113755964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088878 (n + 1) * A091180 (n + 1)

end

end A259677.P8218255540113755964

/-! ## A259677.P1426436594454295754

`p?[A163628(n+1)-1]*A088878(n+1)`
-/

namespace A259677.P1426436594454295754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163628 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A088878 (n + 1)

end

end A259677.P1426436594454295754

/-! ## A259677.P12375736104852002710

`p?[A001748(n+1)-2]*A088878(n+1)`
-/

namespace A259677.P12375736104852002710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A088878 (n + 1)

end

end A259677.P12375736104852002710

/-! ## A259677.P8933939325893925832

`A267144(A091179(n+1))`
-/

namespace A259677.P8933939325893925832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267144 (A091179 (n + 1)).toNat

end

end A259677.P8933939325893925832

/-! ## A259677.P3642479751707887379

`A000040(A091179(n+1))*A091180(n+1)`
-/

namespace A259677.P3642479751707887379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091179 (n + 1)).toNat * A091180 (n + 1)

end

end A259677.P3642479751707887379

/-! ## A259677.P16726495433646072167

`A000040(A091181(n+1))*A088878(n+1)`
-/

namespace A259677.P16726495433646072167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A091181 (n + 1)).toNat * A088878 (n + 1)

end

end A259677.P16726495433646072167

/-! ## A259677.P11936643339838882605

`p?[(n+1)*A001222(3*n+1)]*p?[A112773(n+1)-2]`
-/

namespace A259677.P11936643339838882605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A259677.P11936643339838882605

/-! ## A259677.P1234872247817720811

`p?[3*A040976(n+1)+4]*p?[(n+1)*A001222(3*n+1)]`
-/

namespace A259677.P1234872247817720811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A040976 (n + 1) + 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A259677.P1234872247817720811

/-! ## A259677.P2320965114847213138

`p?[3*(A014689(n+2)+1+n)+1]*p?[(n+1)*A001222(3*n+1)]`
-/

namespace A259677.P2320965114847213138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A014689 (n + 2) + 1 + (n : ℤ)) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A259677.P2320965114847213138

/-! ## A259677.P14136300188449552231

`A006530(A091180(n+1)+2)*A091180(n+1)`
-/

namespace A259677.P14136300188449552231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A091180 (n + 1) + 2).toNat * A091180 (n + 1)

end

end A259677.P14136300188449552231

/-! ## A259677.P3258447510340875183

`A014641(A174100(n+1))`
-/

namespace A259677.P3258447510340875183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014641 (A174100 (n + 1)).toNat

end

end A259677.P3258447510340875183

/-! ## A259677.P17310975467858219601

`A000567(A088878(n+1))`
-/

namespace A259677.P17310975467858219601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (A088878 (n + 1)).toNat

end

end A259677.P17310975467858219601

/-! ## A259677.P16518221300440453104

`A140676(A088878(n+1)-1)+1`
-/

namespace A259677.P16518221300440453104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140676 (A088878 (n + 1) - 1).toNat + 1

end

end A259677.P16518221300440453104

/-! ## A259677.P16842796915757198267

`p?[2*A171462(n+1)+n+1]*p?[(n+1)*A001222(3*n+1)]`
-/

namespace A259677.P16842796915757198267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171462 (n + 1) + (n : ℤ) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A259677.P16842796915757198267

/-! ## A259677.P18177102798040111520

`record[A088836(3*(n+1))*A088836(n+1)]`
-/

namespace A259677.P18177102798040111520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088836 (3 * (n + 1)) * A088836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259677.P18177102798040111520

/-! ## A259677.P9784526356237095419

`A032765(A091180(n+1))`
-/

namespace A259677.P9784526356237095419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032765 (A091180 (n + 1)).toNat

end

end A259677.P9784526356237095419

/-! ## A259677.P13494160269710412612

`p?[(n+1)*A033676(3*n+1)]*p?[A112773(n+1)-2]`
-/

namespace A259677.P13494160269710412612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033676 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A259677.P13494160269710412612

/-! ## A259677.P10485475245303835155

`p?[(n+1)*A033676(3*n+1)]*p?[3*A040976(n+1)+4]`
-/

namespace A259677.P10485475245303835155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033676 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A040976 (n + 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A259677.P10485475245303835155

/-! ## A259677.P13123451170517346288

`p?[(n+1)*A033676(3*n+1)]*p?[2*A171462(n+1)+n+1]`
-/

namespace A259677.P13123451170517346288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033676 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171462 (n + 1) + (n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A259677.P13123451170517346288

/-! ## A259677.P9686617553735762997

`p?[(n+1)*A033676(3*n+1)]*p?[3*(A014689(n+2)+1+n)+1]`
-/

namespace A259677.P9686617553735762997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033676 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A014689 (n + 2) + 1 + (n : ℤ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

end

end A259677.P9686617553735762997

/-!
# A259678: Primes of the form p(k)^2 + p(m)^2, where k and m are positive integers, and p(.) is the partition function given by A000041.

The programs for A259678, there is no canonical definition to state claims against.
-/

/-! ## A259678.P9013494568921966052

`xor(Δ[A242534(n+4)], A050950(n+1))`
-/

namespace A259678.P9013494568921966052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242534 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (f1 (n + 1) - f1 n) (A050950 (n + 1))

end

end A259678.P9013494568921966052

/-! ## A259678.P7268661120343099341

`p?[or(n², A127973(3*n+2))]`
-/

namespace A259678.P7268661120343099341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n ^ 2 : ℤ) (A127973 (3 * n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A259678.P7268661120343099341

/-!
# A259688: Related to Euler numbers, expansion of e.g.f. tan(x)^2.

The programs for A259688, there is no canonical definition to state claims against.
-/

/-! ## A259688.P17000034827652330507

`record[ratio[A008308(n+1)]]`
-/

namespace A259688.P17000034827652330507
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008308 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A259688.P17000034827652330507

/-! ## A259688.P1740605219541306605

`A059419(A236453(n+1))`
-/

namespace A259688.P1740605219541306605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059419 (A236453 (n + 1)).toNat

end

end A259688.P1740605219541306605

/-! ## A259688.P2224341372158750741

`A101280(A087811(n+2))`
-/

namespace A259688.P2224341372158750741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101280 (A087811 (n + 2)).toNat

end

end A259688.P2224341372158750741

/-! ## A259688.P10009666564855383296

`A008293(A035106(n+2))`
-/

namespace A259688.P10009666564855383296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008293 (A035106 (n + 2)).toNat

end

end A259688.P10009666564855383296

/-! ## A259688.P15930183755194460790

`A008293(A140144(n+2))`
-/

namespace A259688.P15930183755194460790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008293 (A140144 (n + 2)).toNat

end

end A259688.P15930183755194460790

/-! ## A259688.P16434395176127447352

`A101343(A079524(n+1))`
-/

namespace A259688.P16434395176127447352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101343 (A079524 (n + 1)).toNat

end

end A259688.P16434395176127447352

/-! ## A259688.P8975844741598836211

`A324612(A101881(n))`
-/

namespace A259688.P8975844741598836211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324612 (A101881 n).toNat

end

end A259688.P8975844741598836211

/-! ## A259688.P14494746242250881466

`A350970(A227589(n+1))`
-/

namespace A259688.P14494746242250881466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350970 (A227589 (n + 1)).toNat

end

end A259688.P14494746242250881466

/-!
# A259691: Triangle read by rows: T(n,k) number of arrangements of non-attacking rooks on an n X n right triangular board where the top rook is in row k (n >= 0, 1 <= k <= n+1).

The programs for A259691, there is no canonical definition to state claims against.
-/

/-! ## A259691.P15359641776320308604

`A028310(A002262(n+1)*A108087(n+1))`
-/

namespace A259691.P15359641776320308604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A002262 (n + 1) * A108087 (n + 1)).toNat

end

end A259691.P15359641776320308604

/-! ## A259691.P4728301833326060362

`xor(A056857(n+1), A184964(A055807(n)))`
-/

namespace A259691.P4728301833326060362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056857 (n + 1)) (A184964 (A055807 n).toNat)

end

end A259691.P4728301833326060362

/-! ## A259691.P8782376576527027582

`xor(A056857(n+1), A186748(A107230(n)))`
-/

namespace A259691.P8782376576527027582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056857 (n + 1)) (A186748 (A107230 n).toNat)

end

end A259691.P8782376576527027582

/-! ## A259691.P11158630999934616466

`xor(A056857(n+1), A184964(A205574(n)))`
-/

namespace A259691.P11158630999934616466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A056857 (n + 1)) (A184964 (A205574 n).toNat)

end

end A259691.P11158630999934616466

/-! ## A259691.P1336810869144681366

`A056857(n+1)+A010815(A016946(n))`
-/

namespace A259691.P1336810869144681366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056857 (n + 1) + A010815 (A016946 n).toNat

end

end A259691.P1336810869144681366

/-!
# A259697: Triangle read by rows: T(n,k) = number of rook patterns on n X n board where bottom rook is in column k.

The programs for A259697, there is no canonical definition to state claims against.
-/

/-! ## A259697.P9522300410475034094

`xor(A113547(n+1), A184964(A107230(n)))`
-/

namespace A259697.P9522300410475034094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A113547 (n + 1)) (A184964 (A107230 n).toNat)

end

end A259697.P9522300410475034094

/-! ## A259697.P17229382287659371473

`A113547(n+1)+Δ[A007814(A157156(n))]`
-/

namespace A259697.P17229382287659371473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A157156 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113547 (n + 1) + (f1 (n + 1) - f1 n)

end

end A259697.P17229382287659371473

/-! ## A259697.P435705905203531759

`A113547(n+1)+Δ[A058348(A131235(n))]`
-/

namespace A259697.P435705905203531759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058348 (A131235 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113547 (n + 1) + (f1 (n + 1) - f1 n)

end

end A259697.P435705905203531759

/-! ## A259697.P4795458863288402653

`A113547(n+1)-Δ[A016389(A022166(n))]`
-/

namespace A259697.P4795458863288402653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016389 (A022166 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113547 (n + 1) - (f1 (n + 1) - f1 n)

end

end A259697.P4795458863288402653

/-!
# A259698: Triangle read by rows: T(n,k) = number of permutations without overlaps having k increasing runs.

The programs for A259698, there is no canonical definition to state claims against.
-/

/-! ## A259698.P11278602263139774462

`A161358(A117401(n))+A032775(A034328(n))`
-/

namespace A259698.P11278602263139774462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161358 (A117401 n).toNat + A032775 (A034328 n).toNat

end

end A259698.P11278602263139774462

/-! ## A259698.P10624540728604981217

`A055086(A022166(n)^A250261(n))`
-/

namespace A259698.P10624540728604981217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (SequenceMachineLib.roundAway ((A022166 n : ℚ) ^ (A250261 n : ℤ))).toNat

end

end A259698.P10624540728604981217

/-! ## A259698.P12297747154284945756

`A055086(A022166(n)^A299038(n))`
-/

namespace A259698.P12297747154284945756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (SequenceMachineLib.roundAway ((A022166 n : ℚ) ^ (A299038 n : ℤ))).toNat

end

end A259698.P12297747154284945756

/-! ## A259698.P13644512042211818111

`A055086(A022166(n)^A318753(n))`
-/

namespace A259698.P13644512042211818111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (SequenceMachineLib.roundAway ((A022166 n : ℚ) ^ (A318753 n : ℤ))).toNat

end

end A259698.P13644512042211818111

/-! ## A259698.P8374362927699057308

`A293137(A022166(n)^A250261(n))`
-/

namespace A259698.P8374362927699057308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293137 (SequenceMachineLib.roundAway ((A022166 n : ℚ) ^ (A250261 n : ℤ))).toNat

end

end A259698.P8374362927699057308

